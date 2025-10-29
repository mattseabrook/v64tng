// vulkan.cpp

#include <stdexcept>
#include <cstring>
#include <string>

#ifdef _WIN32
#include <Windows.h>
#ifdef min
#undef min
#endif
#ifdef max
#undef max
#endif
#endif

#include <vulkan/vulkan.h>
#include <vulkan/vulkan_win32.h>

#include "vulkan.h"
#include "game.h"
#include "config.h"
#include "window.h"
#include "raycast.h"
#include "render.h"
#include "megatexture.h"
#include "../build/rgb_to_bgra_spv.h"
#include "../build/vk_raycast_spv.h"

//
// Vulkan context
//
VulkanContext vkCtx;

// Forward declarations used by buffer allocation helpers below
static uint32_t findMemoryType(uint32_t typeFilter, VkMemoryPropertyFlags properties);
static void createBuffer(VkDeviceSize size, VkBufferUsageFlags usage, VkMemoryPropertyFlags props, VkBuffer &buffer, VkDeviceMemory &memory);

static void destroyCompute()
{
	if (vkCtx.mappedRGBInput)
	{
		vkUnmapMemory(vkCtx.device, vkCtx.rgbInputBufferMemory);
		vkCtx.mappedRGBInput = nullptr;
	}
	if (vkCtx.rgbInputBuffer)
	{
		vkDestroyBuffer(vkCtx.device, vkCtx.rgbInputBuffer, nullptr);
		vkCtx.rgbInputBuffer = VK_NULL_HANDLE;
	}
	if (vkCtx.rgbInputBufferMemory)
	{
		vkFreeMemory(vkCtx.device, vkCtx.rgbInputBufferMemory, nullptr);
		vkCtx.rgbInputBufferMemory = VK_NULL_HANDLE;
	}
	if (vkCtx.computeDescPool)
	{
		vkDestroyDescriptorPool(vkCtx.device, vkCtx.computeDescPool, nullptr);
		vkCtx.computeDescPool = VK_NULL_HANDLE;
	}
	if (vkCtx.computePipeline)
	{
		vkDestroyPipeline(vkCtx.device, vkCtx.computePipeline, nullptr);
		vkCtx.computePipeline = VK_NULL_HANDLE;
	}
	if (vkCtx.computePipelineLayout)
	{
		vkDestroyPipelineLayout(vkCtx.device, vkCtx.computePipelineLayout, nullptr);
		vkCtx.computePipelineLayout = VK_NULL_HANDLE;
	}
	if (vkCtx.computeDescSetLayout)
	{
		vkDestroyDescriptorSetLayout(vkCtx.device, vkCtx.computeDescSetLayout, nullptr);
		vkCtx.computeDescSetLayout = VK_NULL_HANDLE;
	}
	
	// Raycast pipeline cleanup
	if (vkCtx.tileMapBuffer)
	{
		vkDestroyBuffer(vkCtx.device, vkCtx.tileMapBuffer, nullptr);
		vkCtx.tileMapBuffer = VK_NULL_HANDLE;
	}
	if (vkCtx.tileMapBufferMemory)
	{
		vkFreeMemory(vkCtx.device, vkCtx.tileMapBufferMemory, nullptr);
		vkCtx.tileMapBufferMemory = VK_NULL_HANDLE;
	}
	if (vkCtx.raycastDescPool)
	{
		vkDestroyDescriptorPool(vkCtx.device, vkCtx.raycastDescPool, nullptr);
		vkCtx.raycastDescPool = VK_NULL_HANDLE;
	}
	if (vkCtx.raycastPipeline)
	{
		vkDestroyPipeline(vkCtx.device, vkCtx.raycastPipeline, nullptr);
		vkCtx.raycastPipeline = VK_NULL_HANDLE;
	}
	if (vkCtx.raycastPipelineLayout)
	{
		vkDestroyPipelineLayout(vkCtx.device, vkCtx.raycastPipelineLayout, nullptr);
		vkCtx.raycastPipelineLayout = VK_NULL_HANDLE;
	}
	if (vkCtx.raycastDescSetLayout)
	{
		vkDestroyDescriptorSetLayout(vkCtx.device, vkCtx.raycastDescSetLayout, nullptr);
		vkCtx.raycastDescSetLayout = VK_NULL_HANDLE;
	}
}

static void createOrResizeRGBInputBuffer(uint32_t width, uint32_t height)
{
	// Destroy old
	if (vkCtx.mappedRGBInput)
	{
		vkUnmapMemory(vkCtx.device, vkCtx.rgbInputBufferMemory);
		vkCtx.mappedRGBInput = nullptr;
	}
	if (vkCtx.rgbInputBuffer)
	{
		vkDestroyBuffer(vkCtx.device, vkCtx.rgbInputBuffer, nullptr);
		vkCtx.rgbInputBuffer = VK_NULL_HANDLE;
	}
	if (vkCtx.rgbInputBufferMemory)
	{
		vkFreeMemory(vkCtx.device, vkCtx.rgbInputBufferMemory, nullptr);
		vkCtx.rgbInputBufferMemory = VK_NULL_HANDLE;
	}

	vkCtx.rgbInputBufferSize = static_cast<VkDeviceSize>(width) * height * 3ull; // RGB24
	VkBufferCreateInfo info{ };
	info.sType = VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO;
	info.size = vkCtx.rgbInputBufferSize;
	info.usage = VK_BUFFER_USAGE_STORAGE_BUFFER_BIT;
	info.sharingMode = VK_SHARING_MODE_EXCLUSIVE;
	vkCreateBuffer(vkCtx.device, &info, nullptr, &vkCtx.rgbInputBuffer);

	VkMemoryRequirements req{ };
	vkGetBufferMemoryRequirements(vkCtx.device, vkCtx.rgbInputBuffer, &req);

	VkMemoryAllocateInfo alloc{ };
	alloc.sType = VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO;
	alloc.allocationSize = req.size;
	alloc.memoryTypeIndex = findMemoryType(req.memoryTypeBits, VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT | VK_MEMORY_PROPERTY_HOST_COHERENT_BIT);
	vkAllocateMemory(vkCtx.device, &alloc, nullptr, &vkCtx.rgbInputBufferMemory);
	vkBindBufferMemory(vkCtx.device, vkCtx.rgbInputBuffer, vkCtx.rgbInputBufferMemory, 0);
	vkMapMemory(vkCtx.device, vkCtx.rgbInputBufferMemory, 0, VK_WHOLE_SIZE, 0, &vkCtx.mappedRGBInput);
}

static void updateComputeDescriptors()
{
	if (!vkCtx.computeDescSet) return;
	// storage buffer
	VkDescriptorBufferInfo buf{};
	buf.buffer = vkCtx.rgbInputBuffer;
	buf.offset = 0;
	buf.range = vkCtx.rgbInputBufferSize;
	// storage image
	VkDescriptorImageInfo img{};
	img.imageView = vkCtx.textureImageView;
	img.imageLayout = VK_IMAGE_LAYOUT_GENERAL;

	VkWriteDescriptorSet writes[2]{};
	writes[0].sType = VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET;
	writes[0].dstSet = vkCtx.computeDescSet;
	writes[0].dstBinding = 0;
	writes[0].descriptorType = VK_DESCRIPTOR_TYPE_STORAGE_BUFFER;
	writes[0].descriptorCount = 1;
	writes[0].pBufferInfo = &buf;

	writes[1].sType = VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET;
	writes[1].dstSet = vkCtx.computeDescSet;
	writes[1].dstBinding = 1;
	writes[1].descriptorType = VK_DESCRIPTOR_TYPE_STORAGE_IMAGE;
	writes[1].descriptorCount = 1;
	writes[1].pImageInfo = &img;

	vkUpdateDescriptorSets(vkCtx.device, 2, writes, 0, nullptr);
}

static void createComputePipeline()
{
	// Descriptor set layout: binding0 storage buffer, binding1 storage image
	VkDescriptorSetLayoutBinding bindings[2]{};
	bindings[0].binding = 0;
	bindings[0].descriptorType = VK_DESCRIPTOR_TYPE_STORAGE_BUFFER;
	bindings[0].descriptorCount = 1;
	bindings[0].stageFlags = VK_SHADER_STAGE_COMPUTE_BIT;
	bindings[1].binding = 1;
	bindings[1].descriptorType = VK_DESCRIPTOR_TYPE_STORAGE_IMAGE;
	bindings[1].descriptorCount = 1;
	bindings[1].stageFlags = VK_SHADER_STAGE_COMPUTE_BIT;

	VkDescriptorSetLayoutCreateInfo dsl{};
	dsl.sType = VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO;
	dsl.bindingCount = 2;
	dsl.pBindings = bindings;
	vkCreateDescriptorSetLayout(vkCtx.device, &dsl, nullptr, &vkCtx.computeDescSetLayout);

	VkPushConstantRange pc{};
	pc.stageFlags = VK_SHADER_STAGE_COMPUTE_BIT;
	pc.offset = 0;
	pc.size = sizeof(uint32_t) * 2; // width, height

	VkPipelineLayoutCreateInfo pl{};
	pl.sType = VK_STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO;
	pl.setLayoutCount = 1;
	pl.pSetLayouts = &vkCtx.computeDescSetLayout;
	pl.pushConstantRangeCount = 1;
	pl.pPushConstantRanges = &pc;
	vkCreatePipelineLayout(vkCtx.device, &pl, nullptr, &vkCtx.computePipelineLayout);

	// Create shader module from embedded SPIR-V
	VkShaderModuleCreateInfo sm{};
	sm.sType = VK_STRUCTURE_TYPE_SHADER_MODULE_CREATE_INFO;
	sm.codeSize = build_rgb_to_bgra_spv_len;
	sm.pCode = reinterpret_cast<const uint32_t*>(build_rgb_to_bgra_spv);
	VkShaderModule module;
	vkCreateShaderModule(vkCtx.device, &sm, nullptr, &module);

	VkPipelineShaderStageCreateInfo stage{};
	stage.sType = VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO;
	stage.stage = VK_SHADER_STAGE_COMPUTE_BIT;
	stage.module = module;
	stage.pName = "main";

	VkComputePipelineCreateInfo cp{};
	cp.sType = VK_STRUCTURE_TYPE_COMPUTE_PIPELINE_CREATE_INFO;
	cp.stage = stage;
	cp.layout = vkCtx.computePipelineLayout;
	vkCreateComputePipelines(vkCtx.device, VK_NULL_HANDLE, 1, &cp, nullptr, &vkCtx.computePipeline);

	vkDestroyShaderModule(vkCtx.device, module, nullptr);

	// Descriptor pool and set
	VkDescriptorPoolSize poolSizes[2]{};
	poolSizes[0].type = VK_DESCRIPTOR_TYPE_STORAGE_BUFFER;
	poolSizes[0].descriptorCount = 1;
	poolSizes[1].type = VK_DESCRIPTOR_TYPE_STORAGE_IMAGE;
	poolSizes[1].descriptorCount = 1;

	VkDescriptorPoolCreateInfo dp{};
	dp.sType = VK_STRUCTURE_TYPE_DESCRIPTOR_POOL_CREATE_INFO;
	dp.maxSets = 1;
	dp.poolSizeCount = 2;
	dp.pPoolSizes = poolSizes;
	vkCreateDescriptorPool(vkCtx.device, &dp, nullptr, &vkCtx.computeDescPool);

	VkDescriptorSetAllocateInfo ai{};
	ai.sType = VK_STRUCTURE_TYPE_DESCRIPTOR_SET_ALLOCATE_INFO;
	ai.descriptorPool = vkCtx.computeDescPool;
	ai.descriptorSetCount = 1;
	ai.pSetLayouts = &vkCtx.computeDescSetLayout;
	vkAllocateDescriptorSets(vkCtx.device, &ai, &vkCtx.computeDescSet);

	updateComputeDescriptors();
}

//==============================================================================
// GPU Raycasting Pipeline
//==============================================================================

// SPIR-V bytecode arrays from generated header
extern unsigned char build_vk_raycast_spv[];
extern unsigned int build_vk_raycast_spv_len;

static void createTileMapBuffer(const std::vector<std::vector<uint8_t>>& tileMap)
{
	if (tileMap.empty() || tileMap[0].empty())
		return;
	
	uint32_t mapHeight = static_cast<uint32_t>(tileMap.size());
	uint32_t mapWidth = static_cast<uint32_t>(tileMap[0].size());
	
	// Check if we need to recreate
	if (vkCtx.tileMapBuffer && vkCtx.lastMapWidth == mapWidth && vkCtx.lastMapHeight == mapHeight)
		return;  // Already created with correct size
	
	// Clean up old buffer
	if (vkCtx.tileMapBuffer)
	{
		vkDestroyBuffer(vkCtx.device, vkCtx.tileMapBuffer, nullptr);
		vkFreeMemory(vkCtx.device, vkCtx.tileMapBufferMemory, nullptr);
		vkCtx.tileMapBuffer = VK_NULL_HANDLE;
		vkCtx.tileMapBufferMemory = VK_NULL_HANDLE;
	}
	
	// Flatten tile map
	std::vector<uint8_t> flatMap(mapWidth * mapHeight);
	for (uint32_t y = 0; y < mapHeight; y++)
	{
		for (uint32_t x = 0; x < mapWidth; x++)
		{
			flatMap[y * mapWidth + x] = tileMap[y][x];
		}
	}
	
	// Create staging buffer
	VkDeviceSize bufferSize = flatMap.size();
	VkBuffer stagingBuffer;
	VkDeviceMemory stagingMemory;
	
	createBuffer(bufferSize,
		VK_BUFFER_USAGE_TRANSFER_SRC_BIT,
		VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT | VK_MEMORY_PROPERTY_HOST_COHERENT_BIT,
		stagingBuffer, stagingMemory);
	
	// Copy data to staging
	void* data;
	vkMapMemory(vkCtx.device, stagingMemory, 0, bufferSize, 0, &data);
	memcpy(data, flatMap.data(), bufferSize);
	vkUnmapMemory(vkCtx.device, stagingMemory);
	
	// Create device-local buffer
	createBuffer(bufferSize,
		VK_BUFFER_USAGE_TRANSFER_DST_BIT | VK_BUFFER_USAGE_STORAGE_BUFFER_BIT,
		VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT,
		vkCtx.tileMapBuffer, vkCtx.tileMapBufferMemory);
	
	// Copy staging to device-local
	VkCommandBuffer cmdBuf = vkCtx.commandBuffers[vkCtx.currentFrame];
	VkCommandBufferBeginInfo beginInfo{};
	beginInfo.sType = VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO;
	beginInfo.flags = VK_COMMAND_BUFFER_USAGE_ONE_TIME_SUBMIT_BIT;
	
	vkBeginCommandBuffer(cmdBuf, &beginInfo);
	
	VkBufferCopy copyRegion{};
	copyRegion.size = bufferSize;
	vkCmdCopyBuffer(cmdBuf, stagingBuffer, vkCtx.tileMapBuffer, 1, &copyRegion);
	
	vkEndCommandBuffer(cmdBuf);
	
	VkSubmitInfo submitInfo{};
	submitInfo.sType = VK_STRUCTURE_TYPE_SUBMIT_INFO;
	submitInfo.commandBufferCount = 1;
	submitInfo.pCommandBuffers = &cmdBuf;
	
	vkQueueSubmit(vkCtx.graphicsQueue, 1, &submitInfo, VK_NULL_HANDLE);
	vkQueueWaitIdle(vkCtx.graphicsQueue);
	
	// Clean up staging
	vkDestroyBuffer(vkCtx.device, stagingBuffer, nullptr);
	vkFreeMemory(vkCtx.device, stagingMemory, nullptr);
	
	vkCtx.tileMapBufferSize = bufferSize;
	vkCtx.lastMapWidth = mapWidth;
	vkCtx.lastMapHeight = mapHeight;
}

// Build and upload edge offset lookup buffer: ((y*mapWidth + x)*4 + side) -> offset in pixels
static void createOrUpdateEdgeOffsetsBuffer(const std::vector<std::vector<uint8_t>>& tileMap)
{
	if (tileMap.empty() || tileMap[0].empty()) return;
	uint32_t mapHeight = static_cast<uint32_t>(tileMap.size());
	uint32_t mapWidth = static_cast<uint32_t>(tileMap[0].size());

	// Create CPU-side table of triplets: [offset,width,dirFlag]
	const size_t count = static_cast<size_t>(mapWidth) * mapHeight * 4ull;
	std::vector<uint32_t> table(count * 3ull, 0u);

	// Fill from analyzed edges (computed on CPU at init)
	for (const auto& e : megatex.edges)
	{
		if (e.cellX < 0 || e.cellY < 0) continue;
		if (e.cellX >= static_cast<int>(mapWidth) || e.cellY >= static_cast<int>(mapHeight)) continue;
		size_t idx = (static_cast<size_t>(e.cellY) * mapWidth + static_cast<size_t>(e.cellX)) * 4ull + static_cast<size_t>(e.side & 3);
		size_t idx3 = idx * 3ull;
		if (idx3 + 2 < table.size()) {
			table[idx3 + 0] = static_cast<uint32_t>(e.xOffsetPixels);
			table[idx3 + 1] = static_cast<uint32_t>(std::max(1, e.pixelWidth));
			table[idx3 + 2] = static_cast<uint32_t>(e.direction < 0 ? 1u : 0u);
		}
	}

	// Create or resize GPU buffer
	VkDeviceSize bufferSize = static_cast<VkDeviceSize>(table.size() * sizeof(uint32_t));
	bool needRecreate = (!vkCtx.edgeOffsetsBuffer) || (vkCtx.edgeOffsetsBufferSize != bufferSize);
	if (needRecreate)
	{
		if (vkCtx.edgeOffsetsBuffer)
		{
			vkDestroyBuffer(vkCtx.device, vkCtx.edgeOffsetsBuffer, nullptr);
			vkFreeMemory(vkCtx.device, vkCtx.edgeOffsetsBufferMemory, nullptr);
			vkCtx.edgeOffsetsBuffer = VK_NULL_HANDLE;
			vkCtx.edgeOffsetsBufferMemory = VK_NULL_HANDLE;
		}
		createBuffer(bufferSize,
					 VK_BUFFER_USAGE_TRANSFER_DST_BIT | VK_BUFFER_USAGE_STORAGE_BUFFER_BIT,
					 VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT,
					 vkCtx.edgeOffsetsBuffer, vkCtx.edgeOffsetsBufferMemory);
		vkCtx.edgeOffsetsBufferSize = bufferSize;
	}

	// Staging upload
	VkBuffer staging;
	VkDeviceMemory stagingMem;
	createBuffer(bufferSize,
				 VK_BUFFER_USAGE_TRANSFER_SRC_BIT,
				 VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT | VK_MEMORY_PROPERTY_HOST_COHERENT_BIT,
				 staging, stagingMem);

	void* data = nullptr;
	vkMapMemory(vkCtx.device, stagingMem, 0, bufferSize, 0, &data);
	std::memcpy(data, table.data(), static_cast<size_t>(bufferSize));
	vkUnmapMemory(vkCtx.device, stagingMem);

	VkCommandBuffer cmdBuf = vkCtx.commandBuffers[vkCtx.currentFrame];
	VkCommandBufferBeginInfo beginInfo{};
	beginInfo.sType = VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO;
	beginInfo.flags = VK_COMMAND_BUFFER_USAGE_ONE_TIME_SUBMIT_BIT;
	vkBeginCommandBuffer(cmdBuf, &beginInfo);

	VkBufferCopy copy{ };
	copy.size = bufferSize;
	vkCmdCopyBuffer(cmdBuf, staging, vkCtx.edgeOffsetsBuffer, 1, &copy);
	vkEndCommandBuffer(cmdBuf);

	VkSubmitInfo submit{};
	submit.sType = VK_STRUCTURE_TYPE_SUBMIT_INFO;
	submit.commandBufferCount = 1;
	submit.pCommandBuffers = &cmdBuf;
	vkQueueSubmit(vkCtx.graphicsQueue, 1, &submit, VK_NULL_HANDLE);
	vkQueueWaitIdle(vkCtx.graphicsQueue);

	vkDestroyBuffer(vkCtx.device, staging, nullptr);
	vkFreeMemory(vkCtx.device, stagingMem, nullptr);
}

static void updateRaycastDescriptors()
{
	if (!vkCtx.raycastDescSet || !vkCtx.tileMapBuffer)
		return;
	
	// Binding 0: tile map storage buffer
	VkDescriptorBufferInfo bufInfo{};
	bufInfo.buffer = vkCtx.tileMapBuffer;
	bufInfo.offset = 0;
	bufInfo.range = vkCtx.tileMapBufferSize;
	
	// Binding 1: output storage image
	VkDescriptorImageInfo imgInfo{};
	imgInfo.imageView = vkCtx.textureImageView;
	imgInfo.imageLayout = VK_IMAGE_LAYOUT_GENERAL;
	// Binding 2: edge offsets storage buffer
	VkDescriptorBufferInfo offsetsInfo{};
	offsetsInfo.buffer = vkCtx.edgeOffsetsBuffer;
	offsetsInfo.offset = 0;
	offsetsInfo.range = vkCtx.edgeOffsetsBufferSize;

	VkWriteDescriptorSet writes[3]{};
	writes[0].sType = VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET;
	writes[0].dstSet = vkCtx.raycastDescSet;
	writes[0].dstBinding = 0;
	writes[0].descriptorType = VK_DESCRIPTOR_TYPE_STORAGE_BUFFER;
	writes[0].descriptorCount = 1;
	writes[0].pBufferInfo = &bufInfo;
	
	writes[1].sType = VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET;
	writes[1].dstSet = vkCtx.raycastDescSet;
	writes[1].dstBinding = 1;
	writes[1].descriptorType = VK_DESCRIPTOR_TYPE_STORAGE_IMAGE;
	writes[1].descriptorCount = 1;
	writes[1].pImageInfo = &imgInfo;

	if (vkCtx.edgeOffsetsBuffer)
	{
		writes[2].sType = VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET;
		writes[2].dstSet = vkCtx.raycastDescSet;
		writes[2].dstBinding = 2;
		writes[2].descriptorType = VK_DESCRIPTOR_TYPE_STORAGE_BUFFER;
		writes[2].descriptorCount = 1;
		writes[2].pBufferInfo = &offsetsInfo;
		vkUpdateDescriptorSets(vkCtx.device, 3, writes, 0, nullptr);
	}
	else
	{
		vkUpdateDescriptorSets(vkCtx.device, 2, writes, 0, nullptr);
	}
}

static void createRaycastPipeline()
{
	try {
		// Descriptor set layout: binding0 storage buffer (tile map), binding1 storage image (output), binding2 storage buffer (edge offsets)
		VkDescriptorSetLayoutBinding bindings[3]{};
		bindings[0].binding = 0;
		bindings[0].descriptorType = VK_DESCRIPTOR_TYPE_STORAGE_BUFFER;
		bindings[0].descriptorCount = 1;
		bindings[0].stageFlags = VK_SHADER_STAGE_COMPUTE_BIT;
		bindings[1].binding = 1;
		bindings[1].descriptorType = VK_DESCRIPTOR_TYPE_STORAGE_IMAGE;
		bindings[1].descriptorCount = 1;
		bindings[1].stageFlags = VK_SHADER_STAGE_COMPUTE_BIT;
		bindings[2].binding = 2;
		bindings[2].descriptorType = VK_DESCRIPTOR_TYPE_STORAGE_BUFFER;
		bindings[2].descriptorCount = 1;
		bindings[2].stageFlags = VK_SHADER_STAGE_COMPUTE_BIT;
		
		VkDescriptorSetLayoutCreateInfo dslInfo{};
		dslInfo.sType = VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO;
		dslInfo.bindingCount = 3;
		dslInfo.pBindings = bindings;
		vkCreateDescriptorSetLayout(vkCtx.device, &dslInfo, nullptr, &vkCtx.raycastDescSetLayout);
		
		// Push constants for raycast parameters
		VkPushConstantRange pcRange{};
		pcRange.stageFlags = VK_SHADER_STAGE_COMPUTE_BIT;
		pcRange.offset = 0;
		pcRange.size = sizeof(float) * 16;  // Match shader layout
		
		VkPipelineLayoutCreateInfo plInfo{};
		plInfo.sType = VK_STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO;
		plInfo.setLayoutCount = 1;
		plInfo.pSetLayouts = &vkCtx.raycastDescSetLayout;
		plInfo.pushConstantRangeCount = 1;
		plInfo.pPushConstantRanges = &pcRange;
		vkCreatePipelineLayout(vkCtx.device, &plInfo, nullptr, &vkCtx.raycastPipelineLayout);
		
		// Load shader module from embedded SPIR-V
		VkShaderModuleCreateInfo smInfo{};
		smInfo.sType = VK_STRUCTURE_TYPE_SHADER_MODULE_CREATE_INFO;
		smInfo.codeSize = build_vk_raycast_spv_len;
		smInfo.pCode = reinterpret_cast<const uint32_t*>(build_vk_raycast_spv);
		VkShaderModule module;
		VkResult result = vkCreateShaderModule(vkCtx.device, &smInfo, nullptr, &module);
		if (result != VK_SUCCESS)
			throw std::runtime_error("Failed to create raycast shader module");
		
		VkPipelineShaderStageCreateInfo stageInfo{};
		stageInfo.sType = VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO;
		stageInfo.stage = VK_SHADER_STAGE_COMPUTE_BIT;
		stageInfo.module = module;
		stageInfo.pName = "main";
		
		VkComputePipelineCreateInfo cpInfo{};
		cpInfo.sType = VK_STRUCTURE_TYPE_COMPUTE_PIPELINE_CREATE_INFO;
		cpInfo.stage = stageInfo;
		cpInfo.layout = vkCtx.raycastPipelineLayout;
		vkCreateComputePipelines(vkCtx.device, VK_NULL_HANDLE, 1, &cpInfo, nullptr, &vkCtx.raycastPipeline);
		
		vkDestroyShaderModule(vkCtx.device, module, nullptr);
		
		// Descriptor pool and set
	VkDescriptorPoolSize poolSizes[3]{};
	poolSizes[0].type = VK_DESCRIPTOR_TYPE_STORAGE_BUFFER; // tile map
	poolSizes[0].descriptorCount = 1;
	poolSizes[1].type = VK_DESCRIPTOR_TYPE_STORAGE_IMAGE;  // output
	poolSizes[1].descriptorCount = 1;
	poolSizes[2].type = VK_DESCRIPTOR_TYPE_STORAGE_BUFFER; // edge offsets
	poolSizes[2].descriptorCount = 1;
		
		VkDescriptorPoolCreateInfo dpInfo{};
		dpInfo.sType = VK_STRUCTURE_TYPE_DESCRIPTOR_POOL_CREATE_INFO;
		dpInfo.maxSets = 1;
	dpInfo.poolSizeCount = 3;
		dpInfo.pPoolSizes = poolSizes;
		vkCreateDescriptorPool(vkCtx.device, &dpInfo, nullptr, &vkCtx.raycastDescPool);
		
		VkDescriptorSetAllocateInfo allocInfo{};
		allocInfo.sType = VK_STRUCTURE_TYPE_DESCRIPTOR_SET_ALLOCATE_INFO;
		allocInfo.descriptorPool = vkCtx.raycastDescPool;
		allocInfo.descriptorSetCount = 1;
		allocInfo.pSetLayouts = &vkCtx.raycastDescSetLayout;
		vkAllocateDescriptorSets(vkCtx.device, &allocInfo, &vkCtx.raycastDescSet);
		
		OutputDebugStringA("Vulkan raycast GPU pipeline created successfully\n");
	}
	catch (const std::exception& e) {
		OutputDebugStringA("Warning: Failed to create raycast pipeline: ");
		OutputDebugStringA(e.what());
		OutputDebugStringA("\n");
		// Not fatal - will fall back to CPU rendering
	}
}

/*
===============================================================================
Function Name: findMemoryType

Description:
	- Finds a suitable memory type for the Vulkan texture.
	- This is called during texture creation.

Parameters:
	- typeFilter: Bitmask of memory types to consider.
	- properties: Desired memory properties.

Returns:
	- The index of the suitable memory type.
===============================================================================
*/
static uint32_t findMemoryType(uint32_t typeFilter, VkMemoryPropertyFlags properties)
{
	VkPhysicalDeviceMemoryProperties memProps;
	vkGetPhysicalDeviceMemoryProperties(vkCtx.physicalDevice, &memProps);
	for (uint32_t i = 0; i < memProps.memoryTypeCount; ++i)
	{
		if ((typeFilter & (1u << i)) && (memProps.memoryTypes[i].propertyFlags & properties) == properties)
			return i;
	}
	throw std::runtime_error("Failed memory type");
}

/*
===============================================================================
Function Name: createVulkanTexture

Description:
	- Creates the Vulkan texture and related resources.
	- This is called when initializing the Vulkan context.

Parameters:
	- width: New width of the texture.
	- height: New height of the texture.
===============================================================================
*/


// Helper: create buffer
static void createBuffer(VkDeviceSize size, VkBufferUsageFlags usage, VkMemoryPropertyFlags props, VkBuffer &buffer, VkDeviceMemory &memory)
{
	VkBufferCreateInfo info{};
	info.sType = VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO;
	info.size = size;
	info.usage = usage;
	info.sharingMode = VK_SHARING_MODE_EXCLUSIVE;
	vkCreateBuffer(vkCtx.device, &info, nullptr, &buffer);

	VkMemoryRequirements req{};
	vkGetBufferMemoryRequirements(vkCtx.device, buffer, &req);

	VkMemoryAllocateInfo alloc{};
	alloc.sType = VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO;
	alloc.allocationSize = req.size;
	alloc.memoryTypeIndex = findMemoryType(req.memoryTypeBits, props);
	vkAllocateMemory(vkCtx.device, &alloc, nullptr, &memory);
	vkBindBufferMemory(vkCtx.device, buffer, memory, 0);
}

static void destroyStaging()
{
	if (vkCtx.mappedStagingData)
	{
		vkUnmapMemory(vkCtx.device, vkCtx.stagingBufferMemory);
		vkCtx.mappedStagingData = nullptr;
	}
	if (vkCtx.stagingBuffer)
	{
		vkDestroyBuffer(vkCtx.device, vkCtx.stagingBuffer, nullptr);
		vkCtx.stagingBuffer = VK_NULL_HANDLE;
	}
	if (vkCtx.stagingBufferMemory)
	{
		vkFreeMemory(vkCtx.device, vkCtx.stagingBufferMemory, nullptr);
		vkCtx.stagingBufferMemory = VK_NULL_HANDLE;
	}
}

static void destroyTexture()
{
	if (vkCtx.textureSampler)
		vkDestroySampler(vkCtx.device, vkCtx.textureSampler, nullptr), vkCtx.textureSampler = VK_NULL_HANDLE;
	if (vkCtx.textureImageView)
		vkDestroyImageView(vkCtx.device, vkCtx.textureImageView, nullptr), vkCtx.textureImageView = VK_NULL_HANDLE;
	if (vkCtx.textureImage)
		vkDestroyImage(vkCtx.device, vkCtx.textureImage, nullptr), vkCtx.textureImage = VK_NULL_HANDLE;
	if (vkCtx.textureImageMemory)
		vkFreeMemory(vkCtx.device, vkCtx.textureImageMemory, nullptr), vkCtx.textureImageMemory = VK_NULL_HANDLE;
	vkCtx.textureImageLayout = VK_IMAGE_LAYOUT_UNDEFINED;
}

static void createVulkanTexture(uint32_t width, uint32_t height)
{
	VkImageCreateInfo imageInfo = {};
	imageInfo.sType = VK_STRUCTURE_TYPE_IMAGE_CREATE_INFO;
	imageInfo.imageType = VK_IMAGE_TYPE_2D;
	imageInfo.format = VK_FORMAT_B8G8R8A8_UNORM;
	imageInfo.extent = {width, height, 1};
	imageInfo.mipLevels = 1;
	imageInfo.arrayLayers = 1;
	imageInfo.samples = VK_SAMPLE_COUNT_1_BIT;
	imageInfo.tiling = VK_IMAGE_TILING_OPTIMAL; // device-local optimal
	// Allow storage writes from compute as well as transfer ops
	imageInfo.usage = VK_IMAGE_USAGE_TRANSFER_SRC_BIT | VK_IMAGE_USAGE_TRANSFER_DST_BIT | VK_IMAGE_USAGE_STORAGE_BIT;
	imageInfo.initialLayout = VK_IMAGE_LAYOUT_UNDEFINED;

	vkCreateImage(vkCtx.device, &imageInfo, nullptr, &vkCtx.textureImage);

	VkMemoryRequirements memReq;
	vkGetImageMemoryRequirements(vkCtx.device, vkCtx.textureImage, &memReq);

	VkMemoryAllocateInfo allocInfo = {};
	allocInfo.sType = VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO;
	allocInfo.allocationSize = memReq.size;
	allocInfo.memoryTypeIndex = findMemoryType(memReq.memoryTypeBits, VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT);
	vkAllocateMemory(vkCtx.device, &allocInfo, nullptr, &vkCtx.textureImageMemory);
	vkBindImageMemory(vkCtx.device, vkCtx.textureImage, vkCtx.textureImageMemory, 0);

	VkImageViewCreateInfo viewInfo = {};
	viewInfo.sType = VK_STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO;
	viewInfo.image = vkCtx.textureImage;
	viewInfo.viewType = VK_IMAGE_VIEW_TYPE_2D;
	viewInfo.format = VK_FORMAT_B8G8R8A8_UNORM;
	viewInfo.subresourceRange.aspectMask = VK_IMAGE_ASPECT_COLOR_BIT;
	viewInfo.subresourceRange.levelCount = 1;
	viewInfo.subresourceRange.layerCount = 1;

	vkCreateImageView(vkCtx.device, &viewInfo, nullptr, &vkCtx.textureImageView);

	VkSamplerCreateInfo samplerInfo = {};
	samplerInfo.sType = VK_STRUCTURE_TYPE_SAMPLER_CREATE_INFO;
	samplerInfo.magFilter = samplerInfo.minFilter = VK_FILTER_NEAREST;
	samplerInfo.addressModeU = samplerInfo.addressModeV = samplerInfo.addressModeW = VK_SAMPLER_ADDRESS_MODE_CLAMP_TO_EDGE;
	samplerInfo.maxAnisotropy = 1.0f;
	samplerInfo.borderColor = VK_BORDER_COLOR_INT_OPAQUE_BLACK;

	vkCreateSampler(vkCtx.device, &samplerInfo, nullptr, &vkCtx.textureSampler);

	// Create staging buffer (host visible, persistent map)
	destroyStaging();
	VkDeviceSize size = static_cast<VkDeviceSize>(width) * height * 4;
	createBuffer(size, VK_BUFFER_USAGE_TRANSFER_SRC_BIT, VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT | VK_MEMORY_PROPERTY_HOST_COHERENT_BIT, vkCtx.stagingBuffer, vkCtx.stagingBufferMemory);
	vkMapMemory(vkCtx.device, vkCtx.stagingBufferMemory, 0, VK_WHOLE_SIZE, 0, &vkCtx.mappedStagingData);
	vkCtx.stagingRowPitch = static_cast<VkDeviceSize>(width) * 4;

    // Create or resize RGB input storage buffer for compute path
    createOrResizeRGBInputBuffer(width, height);
    // Create compute pipeline and descriptors once
    if (!vkCtx.computePipeline)
        createComputePipeline();
    // Update descriptors to point to the current image/buffer
    updateComputeDescriptors();
    
    // Create raycast GPU pipeline once
    if (!vkCtx.raycastPipeline)
        createRaycastPipeline();

	vkCtx.rowBuffer.resize(width * 4);
	vkCtx.previousFrameData.resize(width * height * 3);
	vkCtx.forceFullUpdate = true;
	vkCtx.textureWidth = width;
	vkCtx.textureHeight = height;
	vkCtx.textureImageLayout = VK_IMAGE_LAYOUT_UNDEFINED;
}

/*
===============================================================================
Function Name: destroyTexture

Description:
	- Destroys the Vulkan texture and related resources.
	- This is called when cleaning up the Vulkan context.
===============================================================================
*/
// destroyTexture now defined above (refactored)

/*
===============================================================================
Function Name: resizeVulkanTexture

Description:
	- Resizes the Vulkan texture to the specified dimensions.
	- This is called when the window size changes or when the texture needs to be updated.

Parameters:
	- width: New width of the texture.
	- height: New height of the texture.
===============================================================================
*/
void resizeVulkanTexture(uint32_t width, uint32_t height)
{
	destroyTexture();
	destroyStaging();
	createVulkanTexture(width, height);
}

/*
===============================================================================
Function Name: recreateSwapchain

Description:
	- Recreates the Vulkan swapchain with the new dimensions.

Parameters:
	- width: New width of the swapchain.
	- height: New height of the swapchain.
===============================================================================
*/
void recreateSwapchain(uint32_t width, uint32_t height)
{
	if (vkCtx.swapchain)
		vkDestroySwapchainKHR(vkCtx.device, vkCtx.swapchain, nullptr);

	VkSurfaceCapabilitiesKHR caps;
	vkGetPhysicalDeviceSurfaceCapabilitiesKHR(vkCtx.physicalDevice, vkCtx.surface, &caps);

	vkCtx.swapchainExtent = {width, height};

	VkSwapchainCreateInfoKHR swapInfo = {};
	swapInfo.sType = VK_STRUCTURE_TYPE_SWAPCHAIN_CREATE_INFO_KHR;
	swapInfo.surface = vkCtx.surface;
	swapInfo.minImageCount = 2;
	swapInfo.imageFormat = VK_FORMAT_B8G8R8A8_UNORM;
	swapInfo.imageColorSpace = VK_COLOR_SPACE_SRGB_NONLINEAR_KHR;
	swapInfo.imageExtent = vkCtx.swapchainExtent;
	swapInfo.imageArrayLayers = 1;
	swapInfo.imageUsage = VK_IMAGE_USAGE_TRANSFER_DST_BIT;
	swapInfo.preTransform = caps.currentTransform;
	swapInfo.compositeAlpha = VK_COMPOSITE_ALPHA_OPAQUE_BIT_KHR;
	swapInfo.presentMode = VK_PRESENT_MODE_FIFO_KHR;
	swapInfo.clipped = VK_TRUE;
	vkCreateSwapchainKHR(vkCtx.device, &swapInfo, nullptr, &vkCtx.swapchain);

	uint32_t count = 0;
	vkGetSwapchainImagesKHR(vkCtx.device, vkCtx.swapchain, &count, nullptr);
	vkCtx.swapchainImages.resize(count);
	vkGetSwapchainImagesKHR(vkCtx.device, vkCtx.swapchain, &count, vkCtx.swapchainImages.data());
	vkCtx.swapchainFormat = VK_FORMAT_B8G8R8A8_UNORM;
}

void handleResizeVulkan(uint32_t newW, uint32_t newH)
{
	if (!vkCtx.swapchain)
		return; // Renderer not initialized yet
	recreateSwapchain(newW, newH);
	if (state.raycast.enabled)
		resizeVulkanTexture(newW, newH);
	// For 2D/FMVs, texture remains MIN_CLIENT size; present scaling handles letterboxing
}

/*
===============================================================================
Function Name: initializeVulkan

Description:
	- Initializes the Vulkan context and creates necessary resources.
===============================================================================
*/
void initializeVulkan()
{
	VkApplicationInfo appInfo = {};
	appInfo.sType = VK_STRUCTURE_TYPE_APPLICATION_INFO;
	appInfo.pApplicationName = "Vulkan Renderer";
	appInfo.applicationVersion = (1 << 22);
	appInfo.pEngineName = "v64tng";
	appInfo.engineVersion = (1 << 22);
	appInfo.apiVersion = (1 << 22);

	VkInstanceCreateInfo instInfo = {};
	instInfo.sType = VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO;
	instInfo.pApplicationInfo = &appInfo;

	const char *exts[] = {VK_KHR_SURFACE_EXTENSION_NAME, VK_KHR_WIN32_SURFACE_EXTENSION_NAME};
	instInfo.enabledExtensionCount = 2;
	instInfo.ppEnabledExtensionNames = exts;

	vkCreateInstance(&instInfo, nullptr, &vkCtx.instance);

	uint32_t devCount = 0;
	vkEnumeratePhysicalDevices(vkCtx.instance, &devCount, nullptr);
	std::vector<VkPhysicalDevice> devs(devCount);
	vkEnumeratePhysicalDevices(vkCtx.instance, &devCount, devs.data());
	vkCtx.physicalDevice = devs[0];

	uint32_t qFamilyCount = 0;
	vkGetPhysicalDeviceQueueFamilyProperties(vkCtx.physicalDevice, &qFamilyCount, nullptr);
	std::vector<VkQueueFamilyProperties> qFamilies(qFamilyCount);
	vkGetPhysicalDeviceQueueFamilyProperties(vkCtx.physicalDevice, &qFamilyCount, qFamilies.data());
	for (uint32_t i = 0; i < qFamilyCount; ++i)
	{
		if (qFamilies[i].queueFlags & VK_QUEUE_GRAPHICS_BIT)
		{
			vkCtx.graphicsQueueFamily = i;
			break;
		}
	}

	float qPriority = 1.0f;
	VkDeviceQueueCreateInfo qInfo = {};
	qInfo.sType = VK_STRUCTURE_TYPE_DEVICE_QUEUE_CREATE_INFO;
	qInfo.queueFamilyIndex = vkCtx.graphicsQueueFamily;
	qInfo.queueCount = 1;
	qInfo.pQueuePriorities = &qPriority;

	VkDeviceCreateInfo devInfo = {};
	devInfo.sType = VK_STRUCTURE_TYPE_DEVICE_CREATE_INFO;
	devInfo.queueCreateInfoCount = 1;
	devInfo.pQueueCreateInfos = &qInfo;
	const char *devExts[] = {VK_KHR_SWAPCHAIN_EXTENSION_NAME};
	devInfo.enabledExtensionCount = 1;
	devInfo.ppEnabledExtensionNames = devExts;

	vkCreateDevice(vkCtx.physicalDevice, &devInfo, nullptr, &vkCtx.device);
	vkGetDeviceQueue(vkCtx.device, vkCtx.graphicsQueueFamily, 0, &vkCtx.graphicsQueue);

	VkWin32SurfaceCreateInfoKHR surfInfo = {};
	surfInfo.sType = VK_STRUCTURE_TYPE_WIN32_SURFACE_CREATE_INFO_KHR;
	surfInfo.hwnd = g_hwnd;
	surfInfo.hinstance = GetModuleHandle(nullptr);

	// Load vkCreateWin32SurfaceKHR function pointer
	auto pfnCreateWin32SurfaceKHR = reinterpret_cast<PFN_vkCreateWin32SurfaceKHR>(
		vkGetInstanceProcAddr(vkCtx.instance, "vkCreateWin32SurfaceKHR"));
	if (!pfnCreateWin32SurfaceKHR)
		throw std::runtime_error("Failed to load vkCreateWin32SurfaceKHR");
	pfnCreateWin32SurfaceKHR(vkCtx.instance, &surfInfo, nullptr, &vkCtx.surface);

	VkBool32 supported;
	vkGetPhysicalDeviceSurfaceSupportKHR(vkCtx.physicalDevice, vkCtx.graphicsQueueFamily, vkCtx.surface, &supported);

	recreateSwapchain(state.ui.width, state.ui.height);

	VkCommandPoolCreateInfo poolInfo = {};
	poolInfo.sType = VK_STRUCTURE_TYPE_COMMAND_POOL_CREATE_INFO;
	poolInfo.queueFamilyIndex = vkCtx.graphicsQueueFamily;
	poolInfo.flags = VK_COMMAND_POOL_CREATE_RESET_COMMAND_BUFFER_BIT;

	vkCreateCommandPool(vkCtx.device, &poolInfo, nullptr, &vkCtx.commandPool);

	// Allocate per-frame command buffers
	VkCommandBufferAllocateInfo allocInfo = {};
	allocInfo.sType = VK_STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO;
	allocInfo.commandPool = vkCtx.commandPool;
	allocInfo.level = VK_COMMAND_BUFFER_LEVEL_PRIMARY;
	allocInfo.commandBufferCount = VulkanContext::MAX_FRAMES_IN_FLIGHT;
	vkAllocateCommandBuffers(vkCtx.device, &allocInfo, vkCtx.commandBuffers);

	// Create per-frame semaphores and fences
	VkSemaphoreCreateInfo semInfo = {};
	semInfo.sType = VK_STRUCTURE_TYPE_SEMAPHORE_CREATE_INFO;
	VkFenceCreateInfo fenceInfo = {};
	fenceInfo.sType = VK_STRUCTURE_TYPE_FENCE_CREATE_INFO;
	fenceInfo.flags = VK_FENCE_CREATE_SIGNALED_BIT;
	for (uint32_t i = 0; i < VulkanContext::MAX_FRAMES_IN_FLIGHT; ++i)
	{
		vkCreateSemaphore(vkCtx.device, &semInfo, nullptr, &vkCtx.imageAvailableSemaphores[i]);
		vkCreateSemaphore(vkCtx.device, &semInfo, nullptr, &vkCtx.renderFinishedSemaphores[i]);
		vkCreateFence(vkCtx.device, &fenceInfo, nullptr, &vkCtx.inFlightFences[i]);
	}

	uint32_t texW = state.raycast.enabled ? state.ui.width : MIN_CLIENT_WIDTH;
	uint32_t texH = state.raycast.enabled ? state.ui.height : MIN_CLIENT_HEIGHT;
	resizeVulkanTexture(texW, texH);
	scaleFactor = state.raycast.enabled ? 1.0f : static_cast<float>(state.ui.width) / MIN_CLIENT_WIDTH;
}

/*
===============================================================================
Function Name: renderFrameVk

Description:
	- Renders the current frame using Vulkan.
===============================================================================
*/
void renderFrameVk()
{
	const VDXFile *vdx = state.transientVDX ? state.transientVDX : state.currentVDX;
	size_t frameIdx = state.transientVDX ? state.transient_frame_index : state.currentFrameIndex;
	if (!vdx)
		return;

	std::span<const uint8_t> pixels = vdx->frameData[frameIdx];

	uint8_t *dst = static_cast<uint8_t *>(vkCtx.mappedStagingData);
	size_t pitch = static_cast<size_t>(vkCtx.stagingRowPitch);

	auto changed = getChangedRowsAndUpdatePrevious(pixels, vkCtx.previousFrameData, MIN_CLIENT_WIDTH, MIN_CLIENT_HEIGHT, vkCtx.forceFullUpdate || !state.transient_animation_name.empty());
	vkCtx.forceFullUpdate = false;

	// Heuristic for Auto mode
	const float changedRatio = MIN_CLIENT_HEIGHT ? (static_cast<float>(changed.size()) / static_cast<float>(MIN_CLIENT_HEIGHT)) : 1.0f;
	bool preferGPU = (state.renderMode == GameState::RenderMode::GPU);
	if (state.renderMode == GameState::RenderMode::Auto)
	{
		preferGPU = (changedRatio >= 0.4f) || (static_cast<int>(MIN_CLIENT_HEIGHT) >= 1080);
	}

	vkCtx.doCompute = preferGPU;
	vkCtx.pendingCopyRegions.clear();
	if (vkCtx.doCompute)
	{
		// Upload entire RGB frame into storage buffer for compute
		std::memcpy(vkCtx.mappedRGBInput, pixels.data(), static_cast<size_t>(vkCtx.rgbInputBufferSize));
	}
	else
	{
		// CPU path: Update staging with only changed rows and prepare copy regions
		for (size_t y : changed)
		{
			convertRGBRowToBGRA(pixels.data() + y * MIN_CLIENT_WIDTH * 3, vkCtx.rowBuffer.data(), MIN_CLIENT_WIDTH);
			std::memcpy(dst + y * pitch, vkCtx.rowBuffer.data(), MIN_CLIENT_WIDTH * 4);
		}
		if (!changed.empty())
		{
			size_t runStart = changed[0];
			size_t prev = changed[0];
			for (size_t i = 1; i < changed.size(); ++i)
			{
				if (changed[i] != prev + 1)
				{
					VkBufferImageCopy region{};
					region.bufferOffset = static_cast<VkDeviceSize>(runStart * pitch);
					region.bufferRowLength = 0; // tightly packed
					region.bufferImageHeight = 0;
					region.imageSubresource.aspectMask = VK_IMAGE_ASPECT_COLOR_BIT;
					region.imageSubresource.mipLevel = 0;
					region.imageSubresource.baseArrayLayer = 0;
					region.imageSubresource.layerCount = 1;
					region.imageOffset = {0, static_cast<int32_t>(runStart), 0};
					region.imageExtent = {vkCtx.textureWidth, static_cast<uint32_t>(prev - runStart + 1), 1};
					vkCtx.pendingCopyRegions.push_back(region);
					runStart = changed[i];
				}
				prev = changed[i];
			}
			VkBufferImageCopy region{};
			region.bufferOffset = static_cast<VkDeviceSize>(runStart * pitch);
			region.bufferRowLength = 0;
			region.bufferImageHeight = 0;
			region.imageSubresource.aspectMask = VK_IMAGE_ASPECT_COLOR_BIT;
			region.imageSubresource.mipLevel = 0;
			region.imageSubresource.baseArrayLayer = 0;
			region.imageSubresource.layerCount = 1;
			region.imageOffset = {0, static_cast<int32_t>(runStart), 0};
			region.imageExtent = {vkCtx.textureWidth, static_cast<uint32_t>(prev - runStart + 1), 1};
			vkCtx.pendingCopyRegions.push_back(region);
		}
	}

	presentFrame();
}

/*
===============================================================================
Function Name: renderFrameRaycastVk

Description:
	- Renders the current frame using raycasting with Vulkan.
	- This function assumes the raycast view is enabled and uses the current map and player state
===============================================================================
*/
void renderFrameRaycastVk()
{
	const auto &map = *state.raycast.map;
	const RaycastPlayer &player = state.raycast.player;

	uint8_t *dst = static_cast<uint8_t *>(vkCtx.mappedStagingData);
	size_t pitch = static_cast<size_t>(vkCtx.stagingRowPitch);

	// Assume modified to use pitch
	renderRaycastView(map, player, dst, pitch, state.ui.width, state.ui.height);

	// Full-image copy region
	vkCtx.pendingCopyRegions.clear();
	VkBufferImageCopy region{};
	region.bufferOffset = 0;
	region.bufferRowLength = 0;
	region.bufferImageHeight = 0;
	region.imageSubresource.aspectMask = VK_IMAGE_ASPECT_COLOR_BIT;
	region.imageSubresource.mipLevel = 0;
	region.imageSubresource.baseArrayLayer = 0;
	region.imageSubresource.layerCount = 1;
	region.imageOffset = {0, 0, 0};
	region.imageExtent = {vkCtx.textureWidth, vkCtx.textureHeight, 1};
	vkCtx.pendingCopyRegions.push_back(region);

	presentFrame();
}

/*
===============================================================================
Function Name: renderFrameRaycastVkGPU

Description:
	- Renders the raycaster view using GPU compute shader (Vulkan).
	- This function dispatches the GPU raycast compute shader and presents the result.
===============================================================================
*/
void renderFrameRaycastVkGPU()
{
	// Check render mode preference
	bool useGPU = (state.renderMode == GameState::RenderMode::GPU || 
	               state.renderMode == GameState::RenderMode::Auto);
	
	if (!useGPU || !vkCtx.raycastPipeline)
	{
		// Fall back to CPU rendering if mode is CPU or GPU pipeline not available
		renderFrameRaycastVk();
		return;
	}
	
	const auto& map = *state.raycast.map;
	const RaycastPlayer& player = state.raycast.player;
	
	// Upload tile map to GPU if needed
	createTileMapBuffer(map);
	// Upload edge offsets table (built from megatex.edges)
	createOrUpdateEdgeOffsetsBuffer(map);
	
	// Update descriptors if needed
	if (vkCtx.tileMapBuffer)
		updateRaycastDescriptors();
	
	// Prepare push constants
	struct RaycastConstants
	{
		float playerX;
		float playerY;
		float playerAngle;
		float playerFOV;
		uint32_t screenWidth;
		uint32_t screenHeight;
		uint32_t mapWidth;
		uint32_t mapHeight;
		float visualScale;
		float torchRange;
		float falloffMul;
		float fovMul;
		uint32_t supersample;
		float wallHeightUnits; // vertical scale of mortar/world vs width
		float padding[2];
	};
	
	RaycastConstants constants{};
	constants.playerX = player.x;
	constants.playerY = player.y;
	constants.playerAngle = player.angle;
	constants.playerFOV = player.fov;
	constants.screenWidth = state.ui.width;
	constants.screenHeight = state.ui.height;
	constants.mapWidth = static_cast<uint32_t>(map[0].size());
	constants.mapHeight = static_cast<uint32_t>(map.size());
	constants.visualScale = config.contains("raycastScale") ? config["raycastScale"].get<float>() : 3.0f;
	float baseTorchRange = 16.0f;
	constants.torchRange = baseTorchRange * constants.visualScale;
	constants.falloffMul = config.contains("raycastFalloffMul") ? config["raycastFalloffMul"].get<float>() : 0.85f;
	constants.fovMul = config.contains("raycastFovMul") ? config["raycastFovMul"].get<float>() : 1.0f;
	constants.supersample = config.contains("raycastSupersample") ? config["raycastSupersample"].get<uint32_t>() : 1;
	// Vertical scale: 1 wall unit per 1024px (horizontal anisotropy handled in content/shader)
	constants.wallHeightUnits = 1.0f;
	
	// Present frame with compute shader execution
	uint32_t frame = vkCtx.currentFrame;
	vkWaitForFences(vkCtx.device, 1, &vkCtx.inFlightFences[frame], VK_TRUE, UINT64_MAX);
	vkResetFences(vkCtx.device, 1, &vkCtx.inFlightFences[frame]);
	
	uint32_t imgIdx;
	vkAcquireNextImageKHR(vkCtx.device, vkCtx.swapchain, UINT64_MAX, vkCtx.imageAvailableSemaphores[frame], VK_NULL_HANDLE, &imgIdx);
	
	VkCommandBuffer cmdBuf = vkCtx.commandBuffers[frame];
	vkResetCommandBuffer(cmdBuf, 0);
	
	VkCommandBufferBeginInfo beginInfo{};
	beginInfo.sType = VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO;
	beginInfo.flags = VK_COMMAND_BUFFER_USAGE_ONE_TIME_SUBMIT_BIT;
	vkBeginCommandBuffer(cmdBuf, &beginInfo);
	
	// Transition texture to GENERAL layout for compute shader write
	if (vkCtx.textureImageLayout != VK_IMAGE_LAYOUT_GENERAL)
	{
		VkImageMemoryBarrier barrier{};
		barrier.sType = VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER;
		barrier.oldLayout = vkCtx.textureImageLayout;
		barrier.newLayout = VK_IMAGE_LAYOUT_GENERAL;
		barrier.srcQueueFamilyIndex = VK_QUEUE_FAMILY_IGNORED;
		barrier.dstQueueFamilyIndex = VK_QUEUE_FAMILY_IGNORED;
		barrier.image = vkCtx.textureImage;
		barrier.subresourceRange.aspectMask = VK_IMAGE_ASPECT_COLOR_BIT;
		barrier.subresourceRange.levelCount = 1;
		barrier.subresourceRange.layerCount = 1;
		barrier.srcAccessMask = 0;
		barrier.dstAccessMask = VK_ACCESS_SHADER_WRITE_BIT;
		
		vkCmdPipelineBarrier(cmdBuf,
			VK_PIPELINE_STAGE_TOP_OF_PIPE_BIT,
			VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT,
			0, 0, nullptr, 0, nullptr, 1, &barrier);
		
		vkCtx.textureImageLayout = VK_IMAGE_LAYOUT_GENERAL;
	}
	
	// Bind raycast compute pipeline
	vkCmdBindPipeline(cmdBuf, VK_PIPELINE_BIND_POINT_COMPUTE, vkCtx.raycastPipeline);
	vkCmdBindDescriptorSets(cmdBuf, VK_PIPELINE_BIND_POINT_COMPUTE, vkCtx.raycastPipelineLayout, 0, 1, &vkCtx.raycastDescSet, 0, nullptr);
	vkCmdPushConstants(cmdBuf, vkCtx.raycastPipelineLayout, VK_SHADER_STAGE_COMPUTE_BIT, 0, sizeof(constants), &constants);
	
	// Dispatch compute shader
	uint32_t dispatchX = (state.ui.width + 7) / 8;
	uint32_t dispatchY = (state.ui.height + 7) / 8;
	vkCmdDispatch(cmdBuf, dispatchX, dispatchY, 1);
	
	// Barrier before copy to swapchain
	VkImageMemoryBarrier computeBarrier{};
	computeBarrier.sType = VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER;
	computeBarrier.oldLayout = VK_IMAGE_LAYOUT_GENERAL;
	computeBarrier.newLayout = VK_IMAGE_LAYOUT_TRANSFER_SRC_OPTIMAL;
	computeBarrier.srcQueueFamilyIndex = VK_QUEUE_FAMILY_IGNORED;
	computeBarrier.dstQueueFamilyIndex = VK_QUEUE_FAMILY_IGNORED;
	computeBarrier.image = vkCtx.textureImage;
	computeBarrier.subresourceRange.aspectMask = VK_IMAGE_ASPECT_COLOR_BIT;
	computeBarrier.subresourceRange.levelCount = 1;
	computeBarrier.subresourceRange.layerCount = 1;
	computeBarrier.srcAccessMask = VK_ACCESS_SHADER_WRITE_BIT;
	computeBarrier.dstAccessMask = VK_ACCESS_TRANSFER_READ_BIT;
	
	vkCmdPipelineBarrier(cmdBuf,
		VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT,
		VK_PIPELINE_STAGE_TRANSFER_BIT,
		0, 0, nullptr, 0, nullptr, 1, &computeBarrier);
	
	vkCtx.textureImageLayout = VK_IMAGE_LAYOUT_TRANSFER_SRC_OPTIMAL;
	
	// Transition swapchain image to TRANSFER_DST
	VkImage swapImg = vkCtx.swapchainImages[imgIdx];
	VkImageMemoryBarrier swapBarrier{};
	swapBarrier.sType = VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER;
	swapBarrier.oldLayout = VK_IMAGE_LAYOUT_UNDEFINED;
	swapBarrier.newLayout = VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL;
	swapBarrier.srcQueueFamilyIndex = VK_QUEUE_FAMILY_IGNORED;
	swapBarrier.dstQueueFamilyIndex = VK_QUEUE_FAMILY_IGNORED;
	swapBarrier.image = swapImg;
	swapBarrier.subresourceRange.aspectMask = VK_IMAGE_ASPECT_COLOR_BIT;
	swapBarrier.subresourceRange.levelCount = 1;
	swapBarrier.subresourceRange.layerCount = 1;
	swapBarrier.srcAccessMask = 0;
	swapBarrier.dstAccessMask = VK_ACCESS_TRANSFER_WRITE_BIT;
	
	vkCmdPipelineBarrier(cmdBuf,
		VK_PIPELINE_STAGE_TOP_OF_PIPE_BIT,
		VK_PIPELINE_STAGE_TRANSFER_BIT,
		0, 0, nullptr, 0, nullptr, 1, &swapBarrier);
	
	// Copy texture to swapchain
	VkImageBlit blit{};
	blit.srcSubresource.aspectMask = VK_IMAGE_ASPECT_COLOR_BIT;
	blit.srcSubresource.layerCount = 1;
	blit.dstSubresource.aspectMask = VK_IMAGE_ASPECT_COLOR_BIT;
	blit.dstSubresource.layerCount = 1;
	blit.srcOffsets[1] = {static_cast<int32_t>(vkCtx.textureWidth), static_cast<int32_t>(vkCtx.textureHeight), 1};
	blit.dstOffsets[1] = {static_cast<int32_t>(vkCtx.swapchainExtent.width), static_cast<int32_t>(vkCtx.swapchainExtent.height), 1};
	
	vkCmdBlitImage(cmdBuf,
		vkCtx.textureImage, VK_IMAGE_LAYOUT_TRANSFER_SRC_OPTIMAL,
		swapImg, VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL,
		1, &blit, VK_FILTER_NEAREST);
	
	// Transition swapchain to PRESENT
	swapBarrier.oldLayout = VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL;
	swapBarrier.newLayout = VK_IMAGE_LAYOUT_PRESENT_SRC_KHR;
	swapBarrier.srcAccessMask = VK_ACCESS_TRANSFER_WRITE_BIT;
	swapBarrier.dstAccessMask = 0;
	
	vkCmdPipelineBarrier(cmdBuf,
		VK_PIPELINE_STAGE_TRANSFER_BIT,
		VK_PIPELINE_STAGE_BOTTOM_OF_PIPE_BIT,
		0, 0, nullptr, 0, nullptr, 1, &swapBarrier);
	
	vkEndCommandBuffer(cmdBuf);
	
	VkSubmitInfo submitInfo{};
	submitInfo.sType = VK_STRUCTURE_TYPE_SUBMIT_INFO;
	VkPipelineStageFlags waitStage = VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT;
	submitInfo.waitSemaphoreCount = 1;
	submitInfo.pWaitSemaphores = &vkCtx.imageAvailableSemaphores[frame];
	submitInfo.pWaitDstStageMask = &waitStage;
	submitInfo.commandBufferCount = 1;
	submitInfo.pCommandBuffers = &cmdBuf;
	submitInfo.signalSemaphoreCount = 1;
	submitInfo.pSignalSemaphores = &vkCtx.renderFinishedSemaphores[frame];
	
	vkQueueSubmit(vkCtx.graphicsQueue, 1, &submitInfo, vkCtx.inFlightFences[frame]);
	
	VkPresentInfoKHR presentInfo{};
	presentInfo.sType = VK_STRUCTURE_TYPE_PRESENT_INFO_KHR;
	presentInfo.waitSemaphoreCount = 1;
	presentInfo.pWaitSemaphores = &vkCtx.renderFinishedSemaphores[frame];
	presentInfo.swapchainCount = 1;
	presentInfo.pSwapchains = &vkCtx.swapchain;
	presentInfo.pImageIndices = &imgIdx;
	
	vkQueuePresentKHR(vkCtx.graphicsQueue, &presentInfo);
	
	vkCtx.currentFrame = (vkCtx.currentFrame + 1) % VulkanContext::MAX_FRAMES_IN_FLIGHT;
}

/*
===============================================================================
Function Name: presentFrame

Description:
	- Presents the rendered frame to the swapchain.
	- This function waits for the previous frame to finish before presenting the new frame.
===============================================================================
*/
void presentFrame()
{
	uint32_t frame = vkCtx.currentFrame;
	vkWaitForFences(vkCtx.device, 1, &vkCtx.inFlightFences[frame], VK_TRUE, UINT64_MAX);
	vkResetFences(vkCtx.device, 1, &vkCtx.inFlightFences[frame]);

	uint32_t imgIdx;
	vkAcquireNextImageKHR(vkCtx.device, vkCtx.swapchain, UINT64_MAX, vkCtx.imageAvailableSemaphores[frame], VK_NULL_HANDLE, &imgIdx);

	VkCommandBuffer cmdBuf = vkCtx.commandBuffers[frame];
	vkResetCommandBuffer(cmdBuf, 0);

	VkCommandBufferBeginInfo beginInfo = {};
	beginInfo.sType = VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO;
	beginInfo.flags = VK_COMMAND_BUFFER_USAGE_ONE_TIME_SUBMIT_BIT;
	vkBeginCommandBuffer(cmdBuf, &beginInfo);

	VkImageMemoryBarrier barrier = {};
	barrier.sType = VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER;
	barrier.dstAccessMask = VK_ACCESS_TRANSFER_WRITE_BIT;
	barrier.oldLayout = VK_IMAGE_LAYOUT_UNDEFINED;
	barrier.newLayout = VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL;
	barrier.image = vkCtx.swapchainImages[imgIdx];
	barrier.subresourceRange.aspectMask = VK_IMAGE_ASPECT_COLOR_BIT;
	barrier.subresourceRange.levelCount = 1;
	barrier.subresourceRange.layerCount = 1;
	vkCmdPipelineBarrier(cmdBuf, VK_PIPELINE_STAGE_TOP_OF_PIPE_BIT, VK_PIPELINE_STAGE_TRANSFER_BIT, 0, 0, nullptr, 0, nullptr, 1, &barrier);

	// Prepare texture depending on path (compute vs CPU copy)
	VkImageMemoryBarrier texBarrier = {};
	texBarrier.sType = VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER;
	texBarrier.image = vkCtx.textureImage;
	texBarrier.subresourceRange.aspectMask = VK_IMAGE_ASPECT_COLOR_BIT;
	texBarrier.subresourceRange.levelCount = 1;
	texBarrier.subresourceRange.layerCount = 1;

	if (vkCtx.doCompute)
	{
		// Transition to GENERAL for compute shader writes
		texBarrier.srcAccessMask = (vkCtx.textureImageLayout == VK_IMAGE_LAYOUT_TRANSFER_SRC_OPTIMAL) ? VK_ACCESS_TRANSFER_READ_BIT : 0;
		texBarrier.dstAccessMask = VK_ACCESS_SHADER_WRITE_BIT;
		texBarrier.oldLayout = vkCtx.textureImageLayout;
		texBarrier.newLayout = VK_IMAGE_LAYOUT_GENERAL;
		vkCmdPipelineBarrier(cmdBuf,
							 (vkCtx.textureImageLayout == VK_IMAGE_LAYOUT_TRANSFER_SRC_OPTIMAL) ? VK_PIPELINE_STAGE_TRANSFER_BIT : VK_PIPELINE_STAGE_TOP_OF_PIPE_BIT,
							 VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT, 0, 0, nullptr, 0, nullptr, 1, &texBarrier);

		// Dispatch compute
		vkCmdBindPipeline(cmdBuf, VK_PIPELINE_BIND_POINT_COMPUTE, vkCtx.computePipeline);
		vkCmdBindDescriptorSets(cmdBuf, VK_PIPELINE_BIND_POINT_COMPUTE, vkCtx.computePipelineLayout, 0, 1, &vkCtx.computeDescSet, 0, nullptr);
		uint32_t pcVals[2] = {vkCtx.textureWidth, vkCtx.textureHeight};
		vkCmdPushConstants(cmdBuf, vkCtx.computePipelineLayout, VK_SHADER_STAGE_COMPUTE_BIT, 0, sizeof(pcVals), pcVals);
		uint32_t gx = (vkCtx.textureWidth + 7u) / 8u;
		uint32_t gy = (vkCtx.textureHeight + 7u) / 8u;
		vkCmdDispatch(cmdBuf, gx, gy, 1);

		// Barrier to make image available for transfer read
		texBarrier.srcAccessMask = VK_ACCESS_SHADER_WRITE_BIT;
		texBarrier.dstAccessMask = VK_ACCESS_TRANSFER_READ_BIT;
		texBarrier.oldLayout = VK_IMAGE_LAYOUT_GENERAL;
		texBarrier.newLayout = VK_IMAGE_LAYOUT_TRANSFER_SRC_OPTIMAL;
		vkCmdPipelineBarrier(cmdBuf, VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT, VK_PIPELINE_STAGE_TRANSFER_BIT, 0, 0, nullptr, 0, nullptr, 1, &texBarrier);
		vkCtx.textureImageLayout = VK_IMAGE_LAYOUT_TRANSFER_SRC_OPTIMAL;
	}
	else
	{
		// CPU path: buffer->image copy
		texBarrier.srcAccessMask = (vkCtx.textureImageLayout == VK_IMAGE_LAYOUT_TRANSFER_SRC_OPTIMAL) ? VK_ACCESS_TRANSFER_READ_BIT : 0;
		texBarrier.dstAccessMask = VK_ACCESS_TRANSFER_WRITE_BIT;
		texBarrier.oldLayout = vkCtx.textureImageLayout;
		texBarrier.newLayout = VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL;
		vkCmdPipelineBarrier(cmdBuf,
							 (vkCtx.textureImageLayout == VK_IMAGE_LAYOUT_TRANSFER_SRC_OPTIMAL) ? VK_PIPELINE_STAGE_TRANSFER_BIT : VK_PIPELINE_STAGE_TOP_OF_PIPE_BIT,
							 VK_PIPELINE_STAGE_TRANSFER_BIT, 0, 0, nullptr, 0, nullptr, 1, &texBarrier);

		if (!vkCtx.pendingCopyRegions.empty())
		{
			vkCmdCopyBufferToImage(cmdBuf, vkCtx.stagingBuffer, vkCtx.textureImage, VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL,
								   static_cast<uint32_t>(vkCtx.pendingCopyRegions.size()),
								   vkCtx.pendingCopyRegions.data());
		}

		// Transition to TRANSFER_SRC for blit/copy
		texBarrier.srcAccessMask = VK_ACCESS_TRANSFER_WRITE_BIT;
		texBarrier.dstAccessMask = VK_ACCESS_TRANSFER_READ_BIT;
		texBarrier.oldLayout = VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL;
		texBarrier.newLayout = VK_IMAGE_LAYOUT_TRANSFER_SRC_OPTIMAL;
		vkCmdPipelineBarrier(cmdBuf, VK_PIPELINE_STAGE_TRANSFER_BIT, VK_PIPELINE_STAGE_TRANSFER_BIT, 0, 0, nullptr, 0, nullptr, 1, &texBarrier);
		vkCtx.textureImageLayout = VK_IMAGE_LAYOUT_TRANSFER_SRC_OPTIMAL;
	}

	VkImageBlit blit = {};
	blit.srcSubresource.aspectMask = VK_IMAGE_ASPECT_COLOR_BIT;
	blit.srcSubresource.layerCount = 1;
	blit.srcOffsets[1] = {static_cast<int32_t>(vkCtx.textureWidth), static_cast<int32_t>(vkCtx.textureHeight), 1};
	blit.dstSubresource.aspectMask = VK_IMAGE_ASPECT_COLOR_BIT;
	blit.dstSubresource.layerCount = 1;
	bool sameSize = state.raycast.enabled && vkCtx.textureWidth == vkCtx.swapchainExtent.width && vkCtx.textureHeight == vkCtx.swapchainExtent.height;
	if (state.raycast.enabled)
	{
		blit.dstOffsets[1] = {static_cast<int32_t>(vkCtx.swapchainExtent.width), static_cast<int32_t>(vkCtx.swapchainExtent.height), 1};
	}
	else
	{
		float scaledH = MIN_CLIENT_HEIGHT * scaleFactor;
		int32_t offsetY = static_cast<int32_t>((vkCtx.swapchainExtent.height - scaledH) * 0.5f);
		blit.dstOffsets[0].y = offsetY;
		blit.dstOffsets[1].x = static_cast<int32_t>(vkCtx.swapchainExtent.width);
		blit.dstOffsets[1].y = offsetY + static_cast<int32_t>(scaledH);
		blit.dstOffsets[1].z = 1;
	}

	if (sameSize)
	{
		VkImageCopy imgCopy{};
		imgCopy.srcSubresource.aspectMask = VK_IMAGE_ASPECT_COLOR_BIT;
		imgCopy.srcSubresource.layerCount = 1;
		imgCopy.dstSubresource.aspectMask = VK_IMAGE_ASPECT_COLOR_BIT;
		imgCopy.dstSubresource.layerCount = 1;
		imgCopy.extent = {vkCtx.textureWidth, vkCtx.textureHeight, 1};
		vkCmdCopyImage(cmdBuf, vkCtx.textureImage, VK_IMAGE_LAYOUT_TRANSFER_SRC_OPTIMAL, vkCtx.swapchainImages[imgIdx], VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL, 1, &imgCopy);
	}
	else
	{
		vkCmdBlitImage(cmdBuf, vkCtx.textureImage, VK_IMAGE_LAYOUT_TRANSFER_SRC_OPTIMAL, vkCtx.swapchainImages[imgIdx], VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL, 1, &blit, VK_FILTER_NEAREST);
	}

	barrier.srcAccessMask = VK_ACCESS_TRANSFER_WRITE_BIT;
	barrier.oldLayout = VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL;
	barrier.newLayout = VK_IMAGE_LAYOUT_PRESENT_SRC_KHR;
	vkCmdPipelineBarrier(cmdBuf, VK_PIPELINE_STAGE_TRANSFER_BIT, VK_PIPELINE_STAGE_BOTTOM_OF_PIPE_BIT, 0, 0, nullptr, 0, nullptr, 1, &barrier);

	vkEndCommandBuffer(cmdBuf);

	VkPipelineStageFlags waitStage = VK_PIPELINE_STAGE_TRANSFER_BIT;
	VkSubmitInfo submit = {};
	submit.sType = VK_STRUCTURE_TYPE_SUBMIT_INFO;
	submit.waitSemaphoreCount = 1;
	submit.pWaitSemaphores = &vkCtx.imageAvailableSemaphores[frame];
	submit.pWaitDstStageMask = &waitStage;
	submit.commandBufferCount = 1;
	submit.pCommandBuffers = &cmdBuf;
	submit.signalSemaphoreCount = 1;
	submit.pSignalSemaphores = &vkCtx.renderFinishedSemaphores[frame];

	vkQueueSubmit(vkCtx.graphicsQueue, 1, &submit, vkCtx.inFlightFences[frame]);

	VkPresentInfoKHR present = {};
	present.sType = VK_STRUCTURE_TYPE_PRESENT_INFO_KHR;
	present.waitSemaphoreCount = 1;
	present.pWaitSemaphores = &vkCtx.renderFinishedSemaphores[frame];
	present.swapchainCount = 1;
	present.pSwapchains = &vkCtx.swapchain;
	present.pImageIndices = &imgIdx;
	vkQueuePresentKHR(vkCtx.graphicsQueue, &present);

	vkCtx.currentFrame = (vkCtx.currentFrame + 1) % VulkanContext::MAX_FRAMES_IN_FLIGHT;
}

/*
===============================================================================
Function Name: cleanupVulkan

Description:
	- Cleans up the Vulkan resources and resets the Vulkan context.
	- This is called when the application is shutting down or when the window is destroyed.
===============================================================================
*/
void cleanupVulkan()
{
	destroyCompute();
	destroyTexture();
	destroyStaging();
	if (vkCtx.swapchain)
		vkDestroySwapchainKHR(vkCtx.device, vkCtx.swapchain, nullptr);
	if (vkCtx.surface)
		vkDestroySurfaceKHR(vkCtx.instance, vkCtx.surface, nullptr);
	for (uint32_t i = 0; i < VulkanContext::MAX_FRAMES_IN_FLIGHT; ++i)
	{
		if (vkCtx.imageAvailableSemaphores[i]) vkDestroySemaphore(vkCtx.device, vkCtx.imageAvailableSemaphores[i], nullptr);
		if (vkCtx.renderFinishedSemaphores[i]) vkDestroySemaphore(vkCtx.device, vkCtx.renderFinishedSemaphores[i], nullptr);
		if (vkCtx.inFlightFences[i]) vkDestroyFence(vkCtx.device, vkCtx.inFlightFences[i], nullptr);
	}
	if (vkCtx.commandPool)
		vkDestroyCommandPool(vkCtx.device, vkCtx.commandPool, nullptr);
	if (vkCtx.device)
		vkDestroyDevice(vkCtx.device, nullptr);
	if (vkCtx.instance)
		vkDestroyInstance(vkCtx.instance, nullptr);

	vkCtx = {};
}