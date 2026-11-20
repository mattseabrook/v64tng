// vulkan.cpp

#include <stdexcept>
#include <algorithm>
#include <cstring>
#include <string>
#include <limits>

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
#include "version.h"
#include "window.h"
#include "raycast.h"
#include "render.h"
#include "megatexture.h"
#include "basement.h"
#include "../build/rgb_to_bgra_spv.h"
#include "../build/vk_raycast_spv.h"

#define VK_CHECK(expr)                                              \
    do                                                              \
    {                                                               \
        VkResult _vkResult = (expr);                                \
        if (_vkResult != VK_SUCCESS)                                \
        {                                                           \
            throw std::runtime_error("Vulkan call failed: " #expr " (VkResult=" + std::to_string(_vkResult) + ")"); \
        }                                                           \
    } while (0)

void recreateSwapchain(uint32_t width, uint32_t height);

// Present/acquire may report OUT_OF_DATE on resize; handle instead of aborting.
static void vkCheckPresent(VkResult result)
{
	if (result == VK_SUCCESS) return;
	if (result == VK_SUBOPTIMAL_KHR || result == VK_ERROR_OUT_OF_DATE_KHR)
	{ vkCtx.swapchainNeedsRebuild = true; return; }
	throw std::runtime_error("Vulkan presentation failed: " + std::to_string(result));
}

// Acquire before touching mapped frame slots. An out-of-date acquire has no
// image index and must leave the frame fence signaled for the next attempt.
static bool beginVulkanFrame()
{
	if (!vkCtx.swapchain || state.ui.width <= 0 || state.ui.height <= 0 || IsIconic(g_hwnd))
		return false;
	const uint32_t frame = vkCtx.currentFrame;
	VK_CHECK(vkWaitForFences(vkCtx.device, 1, &vkCtx.inFlightFences[frame], VK_TRUE, UINT64_MAX));
	const VkResult result = vkAcquireNextImageKHR(vkCtx.device, vkCtx.swapchain, UINT64_MAX,
		vkCtx.imageAvailableSemaphores[frame], VK_NULL_HANDLE, &vkCtx.acquiredImageIndex);
	if (result == VK_ERROR_OUT_OF_DATE_KHR)
	{ handleResizeVulkan(state.ui.width, state.ui.height); return false; }
	if (result != VK_SUCCESS && result != VK_SUBOPTIMAL_KHR)
		throw std::runtime_error("Vulkan acquisition failed: " + std::to_string(result));
	vkCtx.swapchainNeedsRebuild |= result == VK_SUBOPTIMAL_KHR;
	return true;
}

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
	
	if (vkCtx.mappedRaycastUpload) vkUnmapMemory(vkCtx.device, vkCtx.raycastUploadMemory);
	if (vkCtx.raycastUploadBuffer) vkDestroyBuffer(vkCtx.device, vkCtx.raycastUploadBuffer, nullptr);
	if (vkCtx.raycastUploadMemory) vkFreeMemory(vkCtx.device, vkCtx.raycastUploadMemory, nullptr);
	if (vkCtx.edgeOffsetsBuffer) vkDestroyBuffer(vkCtx.device, vkCtx.edgeOffsetsBuffer, nullptr);
	if (vkCtx.edgeOffsetsBufferMemory) vkFreeMemory(vkCtx.device, vkCtx.edgeOffsetsBufferMemory, nullptr);
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
	VkPhysicalDeviceProperties properties{};
	vkGetPhysicalDeviceProperties(vkCtx.physicalDevice, &properties);
	const VkDeviceSize alignment = std::max<VkDeviceSize>(4, properties.limits.minStorageBufferOffsetAlignment);
	vkCtx.rgbInputFrameStride = (vkCtx.rgbInputBufferSize + alignment - 1) & ~(alignment - 1);
	info.size = vkCtx.rgbInputFrameStride * VulkanContext::MAX_FRAMES_IN_FLIGHT;
	info.usage = VK_BUFFER_USAGE_STORAGE_BUFFER_BIT;
	info.sharingMode = VK_SHARING_MODE_EXCLUSIVE;
	VK_CHECK(vkCreateBuffer(vkCtx.device, &info, nullptr, &vkCtx.rgbInputBuffer));

	VkMemoryRequirements req{ };
	vkGetBufferMemoryRequirements(vkCtx.device, vkCtx.rgbInputBuffer, &req);

	VkMemoryAllocateInfo alloc{ };
	alloc.sType = VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO;
	alloc.allocationSize = req.size;
	alloc.memoryTypeIndex = findMemoryType(req.memoryTypeBits, VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT | VK_MEMORY_PROPERTY_HOST_COHERENT_BIT);
	VK_CHECK(vkAllocateMemory(vkCtx.device, &alloc, nullptr, &vkCtx.rgbInputBufferMemory));
	VK_CHECK(vkBindBufferMemory(vkCtx.device, vkCtx.rgbInputBuffer, vkCtx.rgbInputBufferMemory, 0));
	VK_CHECK(vkMapMemory(vkCtx.device, vkCtx.rgbInputBufferMemory, 0, VK_WHOLE_SIZE, 0, &vkCtx.mappedRGBInput));
}

static void updateComputeDescriptors()
{
	if (!vkCtx.computeDescSets[0]) return;
	for (uint32_t frame = 0; frame < VulkanContext::MAX_FRAMES_IN_FLIGHT; ++frame)
	{
		// storage buffer
		VkDescriptorBufferInfo buf{};
		buf.buffer = vkCtx.rgbInputBuffer;
		buf.offset = frame * vkCtx.rgbInputFrameStride;
		buf.range = vkCtx.rgbInputBufferSize;
		// storage image
		VkDescriptorImageInfo img{};
		img.imageView = vkCtx.textureImageView;
		img.imageLayout = VK_IMAGE_LAYOUT_GENERAL;

		VkWriteDescriptorSet writes[2]{};
		writes[0].sType = VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET;
		writes[0].dstSet = vkCtx.computeDescSets[frame];
		writes[0].dstBinding = 0;
		writes[0].descriptorType = VK_DESCRIPTOR_TYPE_STORAGE_BUFFER;
		writes[0].descriptorCount = 1;
		writes[0].pBufferInfo = &buf;

		writes[1].sType = VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET;
		writes[1].dstSet = vkCtx.computeDescSets[frame];
		writes[1].dstBinding = 1;
		writes[1].descriptorType = VK_DESCRIPTOR_TYPE_STORAGE_IMAGE;
		writes[1].descriptorCount = 1;
		writes[1].pImageInfo = &img;

		vkUpdateDescriptorSets(vkCtx.device, 2, writes, 0, nullptr);
	}
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
	VK_CHECK(vkCreateDescriptorSetLayout(vkCtx.device, &dsl, nullptr, &vkCtx.computeDescSetLayout));

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
	VK_CHECK(vkCreatePipelineLayout(vkCtx.device, &pl, nullptr, &vkCtx.computePipelineLayout));

	// Create shader module from embedded SPIR-V
	VkShaderModuleCreateInfo sm{};
	sm.sType = VK_STRUCTURE_TYPE_SHADER_MODULE_CREATE_INFO;
	sm.codeSize = build_rgb_to_bgra_spv_len;
	sm.pCode = reinterpret_cast<const uint32_t*>(build_rgb_to_bgra_spv);
	VkShaderModule module;
	VK_CHECK(vkCreateShaderModule(vkCtx.device, &sm, nullptr, &module));

	VkPipelineShaderStageCreateInfo stage{};
	stage.sType = VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO;
	stage.stage = VK_SHADER_STAGE_COMPUTE_BIT;
	stage.module = module;
	stage.pName = "main";

	VkComputePipelineCreateInfo cp{};
	cp.sType = VK_STRUCTURE_TYPE_COMPUTE_PIPELINE_CREATE_INFO;
	cp.stage = stage;
	cp.layout = vkCtx.computePipelineLayout;
	const VkResult pipelineResult = vkCreateComputePipelines(vkCtx.device, VK_NULL_HANDLE, 1, &cp, nullptr, &vkCtx.computePipeline);
	vkDestroyShaderModule(vkCtx.device, module, nullptr);
	VK_CHECK(pipelineResult);

	// Descriptor pool and set
	VkDescriptorPoolSize poolSizes[2]{};
	poolSizes[0].type = VK_DESCRIPTOR_TYPE_STORAGE_BUFFER;
	poolSizes[0].descriptorCount = VulkanContext::MAX_FRAMES_IN_FLIGHT;
	poolSizes[1].type = VK_DESCRIPTOR_TYPE_STORAGE_IMAGE;
	poolSizes[1].descriptorCount = VulkanContext::MAX_FRAMES_IN_FLIGHT;

	VkDescriptorPoolCreateInfo dp{};
	dp.sType = VK_STRUCTURE_TYPE_DESCRIPTOR_POOL_CREATE_INFO;
	dp.maxSets = VulkanContext::MAX_FRAMES_IN_FLIGHT;
	dp.poolSizeCount = 2;
	dp.pPoolSizes = poolSizes;
	VK_CHECK(vkCreateDescriptorPool(vkCtx.device, &dp, nullptr, &vkCtx.computeDescPool));

	VkDescriptorSetAllocateInfo ai{};
	ai.sType = VK_STRUCTURE_TYPE_DESCRIPTOR_SET_ALLOCATE_INFO;
	ai.descriptorPool = vkCtx.computeDescPool;
	VkDescriptorSetLayout layouts[VulkanContext::MAX_FRAMES_IN_FLIGHT];
	std::fill(std::begin(layouts), std::end(layouts), vkCtx.computeDescSetLayout);
	ai.descriptorSetCount = VulkanContext::MAX_FRAMES_IN_FLIGHT;
	ai.pSetLayouts = layouts;
	VK_CHECK(vkAllocateDescriptorSets(vkCtx.device, &ai, vkCtx.computeDescSets));

	updateComputeDescriptors();
}

//==============================================================================
// GPU Raycasting Pipeline
//==============================================================================

// Upload directly into a persistent frame slot and record copies in the same
// command buffer as the raycast dispatch. Queue barriers order prior readers;
// the frame fence protects host writes without draining the graphics queue.
static void uploadRaycastBuffers(const TileMap &tileMap, VkCommandBuffer cmdBuf)
{
	const uint32_t mapHeight = static_cast<uint32_t>(tileMap.size());
	const uint32_t mapWidth = static_cast<uint32_t>(tileMap[0].size());
	const bool tileMapCurrent = vkCtx.tileMapBuffer && vkCtx.uploadedMap == &tileMap &&
		vkCtx.lastMapWidth == mapWidth && vkCtx.lastMapHeight == mapHeight &&
		vkCtx.uploadedExploredRevision == state.raycast.exploredRevision;
	const bool active = raycastIntroActive();
	const auto &edgeTable = raycastEntityPixels();
	const VkDeviceSize edgeSize = std::max<VkDeviceSize>(4, edgeTable.size() * sizeof(uint32_t));
	if (tileMapCurrent && vkCtx.edgeOffsetsBuffer && vkCtx.edgeOffsetsBufferSize == edgeSize &&
		!active && !vkCtx.raycastIntroWasActive) return;
	vkCtx.raycastIntroWasActive = active;
	const VkDeviceSize tileCount = static_cast<VkDeviceSize>(mapWidth) * mapHeight;
	const VkDeviceSize mapSize = (tileCount * 2 + 3) & ~VkDeviceSize{3};
	const VkDeviceSize uploadSize = mapSize + edgeSize;
	const bool resizeMap = vkCtx.tileMapBufferSize != mapSize;
	const bool resizeEdges = vkCtx.edgeOffsetsBufferSize != edgeSize;
	if (resizeMap || resizeEdges || vkCtx.raycastUploadStride < uploadSize)
	{
		// Capacity changes retire shared device buffers and descriptor bindings.
		// This is an exceptional allocation path, never a per-frame upload wait.
		VK_CHECK(vkDeviceWaitIdle(vkCtx.device));
		auto resizeBuffer = [](VkDeviceSize size, VkBuffer &buffer, VkDeviceMemory &memory) {
			if (buffer) vkDestroyBuffer(vkCtx.device, buffer, nullptr);
			if (memory) vkFreeMemory(vkCtx.device, memory, nullptr);
			buffer = VK_NULL_HANDLE; memory = VK_NULL_HANDLE;
			createBuffer(size, VK_BUFFER_USAGE_TRANSFER_DST_BIT | VK_BUFFER_USAGE_STORAGE_BUFFER_BIT,
				VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT, buffer, memory);
		};
		if (resizeMap) { resizeBuffer(mapSize, vkCtx.tileMapBuffer, vkCtx.tileMapBufferMemory); vkCtx.tileMapBufferSize = mapSize; }
		if (resizeEdges) { resizeBuffer(edgeSize, vkCtx.edgeOffsetsBuffer, vkCtx.edgeOffsetsBufferMemory); vkCtx.edgeOffsetsBufferSize = edgeSize; }
		if (vkCtx.raycastUploadStride < uploadSize)
		{
			if (vkCtx.mappedRaycastUpload) vkUnmapMemory(vkCtx.device, vkCtx.raycastUploadMemory);
			if (vkCtx.raycastUploadBuffer) vkDestroyBuffer(vkCtx.device, vkCtx.raycastUploadBuffer, nullptr);
			if (vkCtx.raycastUploadMemory) vkFreeMemory(vkCtx.device, vkCtx.raycastUploadMemory, nullptr);
			vkCtx.mappedRaycastUpload = nullptr; vkCtx.raycastUploadBuffer = VK_NULL_HANDLE; vkCtx.raycastUploadMemory = VK_NULL_HANDLE;
			vkCtx.raycastUploadStride = uploadSize;
			createBuffer(uploadSize * VulkanContext::MAX_FRAMES_IN_FLIGHT, VK_BUFFER_USAGE_TRANSFER_SRC_BIT,
				VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT | VK_MEMORY_PROPERTY_HOST_COHERENT_BIT,
				vkCtx.raycastUploadBuffer, vkCtx.raycastUploadMemory);
			VK_CHECK(vkMapMemory(vkCtx.device, vkCtx.raycastUploadMemory, 0, VK_WHOLE_SIZE, 0, &vkCtx.mappedRaycastUpload));
		}
		vkCtx.raycastDescriptorsDirty = true;
	}
	const VkDeviceSize offset = vkCtx.currentFrame * vkCtx.raycastUploadStride;
	auto *mapped = static_cast<uint8_t *>(vkCtx.mappedRaycastUpload) + offset;
	if (!tileMapCurrent || resizeMap)
	{
		std::memset(mapped, 0, static_cast<size_t>(mapSize));
		for (uint32_t y = 0; y < mapHeight; ++y)
			std::memcpy(mapped + static_cast<size_t>(y) * mapWidth, tileMap[y].data(), mapWidth);
		if (state.raycast.exploredMap.size() == tileCount)
			std::memcpy(mapped + tileCount, state.raycast.exploredMap.data(), static_cast<size_t>(tileCount));
	}
	std::memset(mapped + mapSize, 0, static_cast<size_t>(edgeSize));
	if (!edgeTable.empty()) std::memcpy(mapped + mapSize, edgeTable.data(), edgeTable.size() * sizeof(uint32_t));
	VkMemoryBarrier barrier{};
	barrier.sType = VK_STRUCTURE_TYPE_MEMORY_BARRIER;
	barrier.srcAccessMask = VK_ACCESS_SHADER_READ_BIT;
	barrier.dstAccessMask = VK_ACCESS_TRANSFER_WRITE_BIT;
	vkCmdPipelineBarrier(cmdBuf, VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT, VK_PIPELINE_STAGE_TRANSFER_BIT,
		0, 1, &barrier, 0, nullptr, 0, nullptr);
	if (!tileMapCurrent || resizeMap)
	{
		VkBufferCopy copy{offset, 0, mapSize};
		vkCmdCopyBuffer(cmdBuf, vkCtx.raycastUploadBuffer, vkCtx.tileMapBuffer, 1, &copy);
		vkCtx.uploadedMap = &tileMap;
		vkCtx.lastMapWidth = mapWidth; vkCtx.lastMapHeight = mapHeight;
		vkCtx.uploadedExploredRevision = state.raycast.exploredRevision;
	}
	VkBufferCopy copy{offset + mapSize, 0, edgeSize};
	vkCmdCopyBuffer(cmdBuf, vkCtx.raycastUploadBuffer, vkCtx.edgeOffsetsBuffer, 1, &copy);
	barrier.srcAccessMask = VK_ACCESS_TRANSFER_WRITE_BIT;
	barrier.dstAccessMask = VK_ACCESS_SHADER_READ_BIT;
	vkCmdPipelineBarrier(cmdBuf, VK_PIPELINE_STAGE_TRANSFER_BIT, VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT,
		0, 1, &barrier, 0, nullptr, 0, nullptr);
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
		VK_CHECK(vkCreateDescriptorSetLayout(vkCtx.device, &dslInfo, nullptr, &vkCtx.raycastDescSetLayout));
		
		// Push constants for raycast parameters
		VkPushConstantRange pcRange{};
		pcRange.stageFlags = VK_SHADER_STAGE_COMPUTE_BIT;
		pcRange.offset = 0;
		pcRange.size = sizeof(RaycastConstants);
		
		VkPipelineLayoutCreateInfo plInfo{};
		plInfo.sType = VK_STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO;
		plInfo.setLayoutCount = 1;
		plInfo.pSetLayouts = &vkCtx.raycastDescSetLayout;
		plInfo.pushConstantRangeCount = 1;
		plInfo.pPushConstantRanges = &pcRange;
		VK_CHECK(vkCreatePipelineLayout(vkCtx.device, &plInfo, nullptr, &vkCtx.raycastPipelineLayout));
		
		// Load shader module from embedded SPIR-V
		VkShaderModuleCreateInfo smInfo{};
		smInfo.sType = VK_STRUCTURE_TYPE_SHADER_MODULE_CREATE_INFO;
		smInfo.codeSize = build_vk_raycast_spv_len;
		smInfo.pCode = reinterpret_cast<const uint32_t*>(build_vk_raycast_spv);
		VkShaderModule module;
		VK_CHECK(vkCreateShaderModule(vkCtx.device, &smInfo, nullptr, &module));
		
		VkPipelineShaderStageCreateInfo stageInfo{};
		stageInfo.sType = VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO;
		stageInfo.stage = VK_SHADER_STAGE_COMPUTE_BIT;
		stageInfo.module = module;
		stageInfo.pName = "main";
		
		VkComputePipelineCreateInfo cpInfo{};
		cpInfo.sType = VK_STRUCTURE_TYPE_COMPUTE_PIPELINE_CREATE_INFO;
		cpInfo.stage = stageInfo;
		cpInfo.layout = vkCtx.raycastPipelineLayout;
		const VkResult pipelineResult = vkCreateComputePipelines(vkCtx.device, VK_NULL_HANDLE, 1, &cpInfo, nullptr, &vkCtx.raycastPipeline);
		vkDestroyShaderModule(vkCtx.device, module, nullptr);
		VK_CHECK(pipelineResult);
		
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
		VK_CHECK(vkCreateDescriptorPool(vkCtx.device, &dpInfo, nullptr, &vkCtx.raycastDescPool));
		
		VkDescriptorSetAllocateInfo allocInfo{};
		allocInfo.sType = VK_STRUCTURE_TYPE_DESCRIPTOR_SET_ALLOCATE_INFO;
		allocInfo.descriptorPool = vkCtx.raycastDescPool;
		allocInfo.descriptorSetCount = 1;
		allocInfo.pSetLayouts = &vkCtx.raycastDescSetLayout;
		VK_CHECK(vkAllocateDescriptorSets(vkCtx.device, &allocInfo, &vkCtx.raycastDescSet));
		
		OutputDebugStringA("Vulkan raycast GPU pipeline created successfully\n");
	}
	catch (const std::exception& e) {
		OutputDebugStringA("Warning: Failed to create raycast pipeline: ");
		OutputDebugStringA(e.what());
		OutputDebugStringA("\n");
		// Retire partial creation before enabling the compatibility fallback.
		if (vkCtx.raycastDescPool) vkDestroyDescriptorPool(vkCtx.device, vkCtx.raycastDescPool, nullptr);
		if (vkCtx.raycastPipeline) vkDestroyPipeline(vkCtx.device, vkCtx.raycastPipeline, nullptr);
		if (vkCtx.raycastPipelineLayout) vkDestroyPipelineLayout(vkCtx.device, vkCtx.raycastPipelineLayout, nullptr);
		if (vkCtx.raycastDescSetLayout) vkDestroyDescriptorSetLayout(vkCtx.device, vkCtx.raycastDescSetLayout, nullptr);
		vkCtx.raycastDescPool = VK_NULL_HANDLE;
		vkCtx.raycastPipeline = VK_NULL_HANDLE;
		vkCtx.raycastPipelineLayout = VK_NULL_HANDLE;
		vkCtx.raycastDescSetLayout = VK_NULL_HANDLE;
		vkCtx.raycastDescSet = VK_NULL_HANDLE;
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
	const auto &memProps = vkCtx.memoryProperties;
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
	VK_CHECK(vkCreateBuffer(vkCtx.device, &info, nullptr, &buffer));

	VkMemoryRequirements req{};
	vkGetBufferMemoryRequirements(vkCtx.device, buffer, &req);

	VkMemoryAllocateInfo alloc{};
	alloc.sType = VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO;
	alloc.allocationSize = req.size;
	alloc.memoryTypeIndex = findMemoryType(req.memoryTypeBits, props);
	VK_CHECK(vkAllocateMemory(vkCtx.device, &alloc, nullptr, &memory));
	VK_CHECK(vkBindBufferMemory(vkCtx.device, buffer, memory, 0));
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
	imageInfo.format = VK_FORMAT_R8G8B8A8_UNORM;
	imageInfo.extent = {width, height, 1};
	imageInfo.mipLevels = 1;
	imageInfo.arrayLayers = 1;
	imageInfo.samples = VK_SAMPLE_COUNT_1_BIT;
	imageInfo.tiling = VK_IMAGE_TILING_OPTIMAL; // device-local optimal
	// Allow storage writes from compute as well as transfer ops
	imageInfo.usage = VK_IMAGE_USAGE_TRANSFER_SRC_BIT | VK_IMAGE_USAGE_TRANSFER_DST_BIT | VK_IMAGE_USAGE_STORAGE_BIT;
	imageInfo.initialLayout = VK_IMAGE_LAYOUT_UNDEFINED;

	VK_CHECK(vkCreateImage(vkCtx.device, &imageInfo, nullptr, &vkCtx.textureImage));

	VkMemoryRequirements memReq;
	vkGetImageMemoryRequirements(vkCtx.device, vkCtx.textureImage, &memReq);

	VkMemoryAllocateInfo allocInfo = {};
	allocInfo.sType = VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO;
	allocInfo.allocationSize = memReq.size;
	allocInfo.memoryTypeIndex = findMemoryType(memReq.memoryTypeBits, VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT);
	VK_CHECK(vkAllocateMemory(vkCtx.device, &allocInfo, nullptr, &vkCtx.textureImageMemory));
	VK_CHECK(vkBindImageMemory(vkCtx.device, vkCtx.textureImage, vkCtx.textureImageMemory, 0));

	VkImageViewCreateInfo viewInfo = {};
	viewInfo.sType = VK_STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO;
	viewInfo.image = vkCtx.textureImage;
	viewInfo.viewType = VK_IMAGE_VIEW_TYPE_2D;
	viewInfo.format = VK_FORMAT_R8G8B8A8_UNORM;
	viewInfo.subresourceRange.aspectMask = VK_IMAGE_ASPECT_COLOR_BIT;
	viewInfo.subresourceRange.levelCount = 1;
	viewInfo.subresourceRange.layerCount = 1;

	VK_CHECK(vkCreateImageView(vkCtx.device, &viewInfo, nullptr, &vkCtx.textureImageView));

	// BGRA upload storage is needed only by the emergency CPU raycaster.
	destroyStaging();
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
    {
        createRaycastPipeline();
    }

	for (uint32_t i = 0; i < VulkanContext::MAX_FRAMES_IN_FLIGHT; ++i)
	{
		vkCtx.previousFrameData[i].resize(static_cast<size_t>(width) * height * 3);
		vkCtx.forceFullUpdate[i] = true;
	}
	vkCtx.raycastDescriptorsDirty = true;
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
	if (!width || !height) return;
	if (vkCtx.textureImage) VK_CHECK(vkDeviceWaitIdle(vkCtx.device));
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
	if (!width || !height) return;
	if (vkCtx.swapchain) VK_CHECK(vkDeviceWaitIdle(vkCtx.device));
	VkSurfaceCapabilitiesKHR caps{};
	VK_CHECK(vkGetPhysicalDeviceSurfaceCapabilitiesKHR(vkCtx.physicalDevice, vkCtx.surface, &caps));
	if (!(caps.supportedUsageFlags & VK_IMAGE_USAGE_TRANSFER_DST_BIT))
		throw std::runtime_error("Vulkan surface does not support transfer presentation");
	uint32_t formatCount = 0;
	VK_CHECK(vkGetPhysicalDeviceSurfaceFormatsKHR(vkCtx.physicalDevice, vkCtx.surface, &formatCount, nullptr));
	if (!formatCount) throw std::runtime_error("No Vulkan surface formats");
	std::vector<VkSurfaceFormatKHR> formats(formatCount);
	VK_CHECK(vkGetPhysicalDeviceSurfaceFormatsKHR(vkCtx.physicalDevice, vkCtx.surface, &formatCount, formats.data()));
	VkSurfaceFormatKHR format{};
	bool foundFormat = false;
	for (auto candidate : formats)
	{
		if (candidate.format == VK_FORMAT_UNDEFINED) candidate.format = VK_FORMAT_B8G8R8A8_UNORM;
		if (candidate.format != VK_FORMAT_B8G8R8A8_UNORM && candidate.format != VK_FORMAT_R8G8B8A8_UNORM) continue;
		VkFormatProperties properties{};
		vkGetPhysicalDeviceFormatProperties(vkCtx.physicalDevice, candidate.format, &properties);
		if (!(properties.optimalTilingFeatures & VK_FORMAT_FEATURE_BLIT_DST_BIT)) continue;
		format = candidate; foundFormat = true;
		if (candidate.format == VK_FORMAT_B8G8R8A8_UNORM && candidate.colorSpace == VK_COLOR_SPACE_SRGB_NONLINEAR_KHR) break;
	}
	if (!foundFormat) throw std::runtime_error("No Vulkan UNORM surface supports image blitting");
	VkExtent2D extent = caps.currentExtent;
	if (extent.width == std::numeric_limits<uint32_t>::max())
		extent = {std::clamp(width, caps.minImageExtent.width, caps.maxImageExtent.width),
			std::clamp(height, caps.minImageExtent.height, caps.maxImageExtent.height)};
	if (!extent.width || !extent.height) return;
	uint32_t count = std::max(2u, caps.minImageCount);
	if (caps.maxImageCount) count = std::min(count, caps.maxImageCount);
	VkCompositeAlphaFlagBitsKHR alpha = VK_COMPOSITE_ALPHA_OPAQUE_BIT_KHR;
	for (const auto candidate : {VK_COMPOSITE_ALPHA_OPAQUE_BIT_KHR, VK_COMPOSITE_ALPHA_PRE_MULTIPLIED_BIT_KHR,
		VK_COMPOSITE_ALPHA_POST_MULTIPLIED_BIT_KHR, VK_COMPOSITE_ALPHA_INHERIT_BIT_KHR})
		if (caps.supportedCompositeAlpha & candidate) { alpha = candidate; break; }
	VkSwapchainCreateInfoKHR info{};
	info.sType = VK_STRUCTURE_TYPE_SWAPCHAIN_CREATE_INFO_KHR;
	info.surface = vkCtx.surface;
	info.minImageCount = count;
	info.imageFormat = format.format;
	info.imageColorSpace = format.colorSpace;
	info.imageExtent = extent;
	info.imageArrayLayers = 1;
	info.imageUsage = VK_IMAGE_USAGE_TRANSFER_DST_BIT;
	info.imageSharingMode = VK_SHARING_MODE_EXCLUSIVE;
	info.preTransform = caps.currentTransform;
	info.compositeAlpha = alpha;
	info.presentMode = VK_PRESENT_MODE_FIFO_KHR;
	info.clipped = VK_TRUE;
	info.oldSwapchain = vkCtx.swapchain;
	VkSwapchainKHR swapchain = VK_NULL_HANDLE;
	VK_CHECK(vkCreateSwapchainKHR(vkCtx.device, &info, nullptr, &swapchain));
	if (vkCtx.swapchain) vkDestroySwapchainKHR(vkCtx.device, vkCtx.swapchain, nullptr);
	vkCtx.swapchain = swapchain;
	vkCtx.swapchainExtent = extent;
	vkCtx.swapchainFormat = format.format;
	VK_CHECK(vkGetSwapchainImagesKHR(vkCtx.device, swapchain, &count, nullptr));
	vkCtx.swapchainImages.resize(count);
	VK_CHECK(vkGetSwapchainImagesKHR(vkCtx.device, swapchain, &count, vkCtx.swapchainImages.data()));
	for (auto semaphore : vkCtx.renderFinishedSemaphores)
		if (semaphore) vkDestroySemaphore(vkCtx.device, semaphore, nullptr);
	vkCtx.renderFinishedSemaphores.assign(count, VK_NULL_HANDLE);
	VkSemaphoreCreateInfo semaphoreInfo{};
	semaphoreInfo.sType = VK_STRUCTURE_TYPE_SEMAPHORE_CREATE_INFO;
	for (auto &semaphore : vkCtx.renderFinishedSemaphores)
		VK_CHECK(vkCreateSemaphore(vkCtx.device, &semaphoreInfo, nullptr, &semaphore));
	vkCtx.swapchainNeedsRebuild = false;
}

void handleResizeVulkan(uint32_t newW, uint32_t newH)
{
	if (!vkCtx.swapchain || !newW || !newH) return;
	recreateSwapchain(newW, newH);
	if (state.raycast.enabled)
		resizeVulkanTexture(vkCtx.swapchainExtent.width, vkCtx.swapchainExtent.height);
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
	appInfo.pApplicationName = "v64tng " V64TNG_VERSION_STRING;
	appInfo.applicationVersion = VK_MAKE_API_VERSION(
		0, V64TNG_VERSION_MAJOR, V64TNG_VERSION_MINOR,
		V64TNG_VERSION_DATE_CODE);
	appInfo.pEngineName = "v64tng " V64TNG_VERSION_STRING;
	appInfo.engineVersion = VK_MAKE_API_VERSION(
		0, V64TNG_VERSION_MAJOR, V64TNG_VERSION_MINOR,
		V64TNG_VERSION_DATE_CODE);
	appInfo.apiVersion = VK_API_VERSION_1_0; // Keep the existing driver compatibility floor.

	VkInstanceCreateInfo instInfo = {};
	instInfo.sType = VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO;
	instInfo.pApplicationInfo = &appInfo;

	const char *exts[] = {VK_KHR_SURFACE_EXTENSION_NAME, VK_KHR_WIN32_SURFACE_EXTENSION_NAME};
	instInfo.enabledExtensionCount = 2;
	instInfo.ppEnabledExtensionNames = exts;

	VK_CHECK(vkCreateInstance(&instInfo, nullptr, &vkCtx.instance));

	VkWin32SurfaceCreateInfoKHR surfInfo = {};
	surfInfo.sType = VK_STRUCTURE_TYPE_WIN32_SURFACE_CREATE_INFO_KHR;
	surfInfo.hwnd = g_hwnd;
	surfInfo.hinstance = GetModuleHandle(nullptr);
	auto pfnCreateWin32SurfaceKHR =
		reinterpret_cast<PFN_vkCreateWin32SurfaceKHR>(
			vkGetInstanceProcAddr(vkCtx.instance, "vkCreateWin32SurfaceKHR"));
	if (!pfnCreateWin32SurfaceKHR)
		throw std::runtime_error("Failed to get vkCreateWin32SurfaceKHR");
	VK_CHECK(pfnCreateWin32SurfaceKHR(vkCtx.instance, &surfInfo, nullptr, &vkCtx.surface));

	uint32_t devCount = 0;
	VK_CHECK(vkEnumeratePhysicalDevices(vkCtx.instance, &devCount, nullptr));
	if (devCount == 0)
		throw std::runtime_error("No Vulkan-capable GPU found");
	std::vector<VkPhysicalDevice> devs(devCount);
	VK_CHECK(vkEnumeratePhysicalDevices(vkCtx.instance, &devCount, devs.data()));

	const auto scoreDevice = [&](VkPhysicalDevice device) {
		uint32_t queueCount = 0;
		vkGetPhysicalDeviceQueueFamilyProperties(device, &queueCount, nullptr);
		std::vector<VkQueueFamilyProperties> queues(queueCount);
		vkGetPhysicalDeviceQueueFamilyProperties(
			device, &queueCount, queues.data());

		bool hasGraphicsPresentQueue = false;
		for (uint32_t i = 0; i < queueCount; ++i)
		{
			VkBool32 presentSupported = VK_FALSE;
			vkGetPhysicalDeviceSurfaceSupportKHR(
				device, i, vkCtx.surface, &presentSupported);
			hasGraphicsPresentQueue |=
				(queues[i].queueFlags & (VK_QUEUE_GRAPHICS_BIT | VK_QUEUE_COMPUTE_BIT)) ==
				(VK_QUEUE_GRAPHICS_BIT | VK_QUEUE_COMPUTE_BIT) &&
				presentSupported == VK_TRUE;
		}

		uint32_t extensionCount = 0;
		vkEnumerateDeviceExtensionProperties(
			device, nullptr, &extensionCount, nullptr);
		std::vector<VkExtensionProperties> extensions(extensionCount);
		vkEnumerateDeviceExtensionProperties(
			device, nullptr, &extensionCount, extensions.data());
		const bool hasSwapchain = std::any_of(
			extensions.begin(), extensions.end(),
			[](const VkExtensionProperties &extension) {
				return std::strcmp(
					extension.extensionName,
					VK_KHR_SWAPCHAIN_EXTENSION_NAME) == 0;
			});
		VkFormatProperties imageFormat{};
		vkGetPhysicalDeviceFormatProperties(device, VK_FORMAT_R8G8B8A8_UNORM, &imageFormat);
		constexpr VkFormatFeatureFlags required = VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT | VK_FORMAT_FEATURE_BLIT_SRC_BIT;
		if (!hasGraphicsPresentQueue || !hasSwapchain || (imageFormat.optimalTilingFeatures & required) != required)
			return uint64_t{0};

		VkPhysicalDeviceProperties properties{};
		vkGetPhysicalDeviceProperties(device, &properties);
		VkPhysicalDeviceMemoryProperties memory{};
		vkGetPhysicalDeviceMemoryProperties(device, &memory);
		uint64_t localBytes = 0;
		for (uint32_t i = 0; i < memory.memoryHeapCount; ++i)
		{
			if (memory.memoryHeaps[i].flags &
				VK_MEMORY_HEAP_DEVICE_LOCAL_BIT)
			{
				localBytes += memory.memoryHeaps[i].size;
			}
		}

		uint64_t value = properties.limits.maxImageDimension2D;
		value += (localBytes / (1024ull * 1024ull)) * 1'000'000ull;
		if (properties.vendorID == 0x10DE)
			value += 4'000'000'000'000ull;
		if (properties.deviceType == VK_PHYSICAL_DEVICE_TYPE_DISCRETE_GPU)
			value += 2'000'000'000'000ull;
		else if (properties.deviceType ==
				 VK_PHYSICAL_DEVICE_TYPE_INTEGRATED_GPU)
			value += 100'000'000'000ull;
		return value;
	};

	vkCtx.physicalDevice = *std::max_element(
		devs.begin(), devs.end(),
		[&](VkPhysicalDevice lhs, VkPhysicalDevice rhs) {
			return scoreDevice(lhs) < scoreDevice(rhs);
		});
	if (scoreDevice(vkCtx.physicalDevice) == 0)
		throw std::runtime_error(
			"No Vulkan GPU supports graphics and presentation");

	VkPhysicalDeviceProperties selectedProperties{};
	vkGetPhysicalDeviceProperties(
		vkCtx.physicalDevice, &selectedProperties);
	vkGetPhysicalDeviceMemoryProperties(vkCtx.physicalDevice, &vkCtx.memoryProperties);
	OutputDebugStringA("Selected high-performance Vulkan adapter: ");
	OutputDebugStringA(selectedProperties.deviceName);
	OutputDebugStringA("\n");

	uint32_t qFamilyCount = 0;
	vkGetPhysicalDeviceQueueFamilyProperties(vkCtx.physicalDevice, &qFamilyCount, nullptr);
	std::vector<VkQueueFamilyProperties> qFamilies(qFamilyCount);
	vkGetPhysicalDeviceQueueFamilyProperties(vkCtx.physicalDevice, &qFamilyCount, qFamilies.data());
	for (uint32_t i = 0; i < qFamilyCount; ++i)
	{
		VkBool32 presentSupported = VK_FALSE;
		vkGetPhysicalDeviceSurfaceSupportKHR(
			vkCtx.physicalDevice, i, vkCtx.surface, &presentSupported);
		if ((qFamilies[i].queueFlags & (VK_QUEUE_GRAPHICS_BIT | VK_QUEUE_COMPUTE_BIT)) ==
			(VK_QUEUE_GRAPHICS_BIT | VK_QUEUE_COMPUTE_BIT) &&
			presentSupported == VK_TRUE)
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

	VK_CHECK(vkCreateDevice(vkCtx.physicalDevice, &devInfo, nullptr, &vkCtx.device));
	vkGetDeviceQueue(vkCtx.device, vkCtx.graphicsQueueFamily, 0, &vkCtx.graphicsQueue);

	recreateSwapchain(state.ui.width, state.ui.height);

	VkCommandPoolCreateInfo poolInfo = {};
	poolInfo.sType = VK_STRUCTURE_TYPE_COMMAND_POOL_CREATE_INFO;
	poolInfo.queueFamilyIndex = vkCtx.graphicsQueueFamily;
	poolInfo.flags = VK_COMMAND_POOL_CREATE_RESET_COMMAND_BUFFER_BIT;

	VK_CHECK(vkCreateCommandPool(vkCtx.device, &poolInfo, nullptr, &vkCtx.commandPool));

	// Allocate per-frame command buffers
	VkCommandBufferAllocateInfo allocInfo = {};
	allocInfo.sType = VK_STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO;
	allocInfo.commandPool = vkCtx.commandPool;
	allocInfo.level = VK_COMMAND_BUFFER_LEVEL_PRIMARY;
	allocInfo.commandBufferCount = VulkanContext::MAX_FRAMES_IN_FLIGHT;
	VK_CHECK(vkAllocateCommandBuffers(vkCtx.device, &allocInfo, vkCtx.commandBuffers));

	// Create per-frame semaphores and fences
	VkSemaphoreCreateInfo semInfo = {};
	semInfo.sType = VK_STRUCTURE_TYPE_SEMAPHORE_CREATE_INFO;
	VkFenceCreateInfo fenceInfo = {};
	fenceInfo.sType = VK_STRUCTURE_TYPE_FENCE_CREATE_INFO;
	fenceInfo.flags = VK_FENCE_CREATE_SIGNALED_BIT;
	for (uint32_t i = 0; i < VulkanContext::MAX_FRAMES_IN_FLIGHT; ++i)
	{
		VK_CHECK(vkCreateSemaphore(vkCtx.device, &semInfo, nullptr, &vkCtx.imageAvailableSemaphores[i]));
		VK_CHECK(vkCreateFence(vkCtx.device, &fenceInfo, nullptr, &vkCtx.inFlightFences[i]));
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
	const VDXFile *vdx = state.transientVDX ? state.transientVDX.get() : state.currentVDX.get();
	size_t frameIdx = state.transientVDX ? state.transient_frame_index : state.currentFrameIndex;
	if (!vdx || vdx->frameData.empty()) return;
	frameIdx = std::min(frameIdx, vdx->frameData.size() - 1);
	const auto pixels = presentationPixels(vdx, frameIdx);
	if (!beginVulkanFrame()) return;
	const uint32_t frame = vkCtx.currentFrame;
	auto &previous = vkCtx.previousFrameData[frame];
	const auto changed = getChangedRowsAndUpdatePrevious(pixels, previous, MIN_CLIENT_WIDTH, MIN_CLIENT_HEIGHT,
		vkCtx.forceFullUpdate[frame] || !state.transient_animation_name.empty());
	vkCtx.forceFullUpdate[frame] = false;
	vkCtx.doCompute = true;
	vkCtx.pendingCopyRegions.clear();
	const size_t rowBytes = static_cast<size_t>(vkCtx.textureWidth) * 3;
	auto *dst = static_cast<uint8_t *>(vkCtx.mappedRGBInput) + frame * vkCtx.rgbInputFrameStride;
	if (!changed.empty())
	{
		size_t start = changed[0], end = start;
		auto copy = [&](size_t first, size_t last) {
			std::memcpy(dst + first * rowBytes, previous.data() + first * rowBytes, (last - first + 1) * rowBytes);
		};
		for (size_t i = 1; i < changed.size(); ++i)
		{
			if (changed[i] != end + 1) { copy(start, end); start = changed[i]; }
			end = changed[i];
		}
		copy(start, end);
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
	if (!beginVulkanFrame()) return;
	vkCtx.doCompute = false;
	const VkDeviceSize imageSize = vkCtx.stagingRowPitch * vkCtx.textureHeight;
	if (!vkCtx.stagingBuffer)
	{
		createBuffer(imageSize * VulkanContext::MAX_FRAMES_IN_FLIGHT, VK_BUFFER_USAGE_TRANSFER_SRC_BIT,
			VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT | VK_MEMORY_PROPERTY_HOST_COHERENT_BIT,
			vkCtx.stagingBuffer, vkCtx.stagingBufferMemory);
		VK_CHECK(vkMapMemory(vkCtx.device, vkCtx.stagingBufferMemory, 0, VK_WHOLE_SIZE, 0, &vkCtx.mappedStagingData));
	}
	const auto &tileMap = *state.raycast.map;
	const RaycastPlayer &player = state.raycast.player;

	uint8_t *dst = static_cast<uint8_t *>(vkCtx.mappedStagingData) + vkCtx.currentFrame * imageSize;
	size_t pitch = static_cast<size_t>(vkCtx.stagingRowPitch);

	// Assume modified to use pitch
	renderRaycastView(tileMap, player, dst, pitch, vkCtx.textureWidth, vkCtx.textureHeight);
	// The compatibility CPU renderer emits BGRA; storage shaders use RGBA8.
	for (size_t i = 0; i < static_cast<size_t>(imageSize); i += 4) std::swap(dst[i], dst[i + 2]);

	// Full-image copy region
	vkCtx.pendingCopyRegions.clear();
	VkBufferImageCopy region{};
	region.bufferOffset = vkCtx.currentFrame * imageSize;
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
	if (!vkCtx.raycastPipeline)
	{
		// Emergency compatibility fallback when GPU pipeline creation failed.
		renderFrameRaycastVk();
		return;
	}

	// Keep fog-of-war exploration current before uploading the tile map
	updateFogOfWar();
	
	const auto& tileMap = *state.raycast.map;
	const auto constants = makeRaycastConstants(tileMap, vkCtx.textureWidth, vkCtx.textureHeight);

	// Present frame with compute shader execution
	if (!beginVulkanFrame()) return;
	uint32_t frame = vkCtx.currentFrame;
	
	const uint32_t imgIdx = vkCtx.acquiredImageIndex;
	
	VkCommandBuffer cmdBuf = vkCtx.commandBuffers[frame];
	VK_CHECK(vkResetCommandBuffer(cmdBuf, 0));
	
	VkCommandBufferBeginInfo beginInfo{};
	beginInfo.sType = VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO;
	beginInfo.flags = VK_COMMAND_BUFFER_USAGE_ONE_TIME_SUBMIT_BIT;
	VK_CHECK(vkBeginCommandBuffer(cmdBuf, &beginInfo));
	uploadRaycastBuffers(tileMap, cmdBuf);
	if (vkCtx.raycastDescriptorsDirty)
	{ updateRaycastDescriptors(); vkCtx.raycastDescriptorsDirty = false; }

	
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
		barrier.srcAccessMask = vkCtx.textureImageLayout == VK_IMAGE_LAYOUT_TRANSFER_SRC_OPTIMAL ? VK_ACCESS_TRANSFER_READ_BIT : 0;
		barrier.dstAccessMask = VK_ACCESS_SHADER_WRITE_BIT;
		
		vkCmdPipelineBarrier(cmdBuf,
			vkCtx.textureImageLayout == VK_IMAGE_LAYOUT_TRANSFER_SRC_OPTIMAL ? VK_PIPELINE_STAGE_TRANSFER_BIT : VK_PIPELINE_STAGE_TOP_OF_PIPE_BIT,
			VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT,
			0, 0, nullptr, 0, nullptr, 1, &barrier);
		
		vkCtx.textureImageLayout = VK_IMAGE_LAYOUT_GENERAL;
	}
	
	// Bind raycast compute pipeline
	vkCmdBindPipeline(cmdBuf, VK_PIPELINE_BIND_POINT_COMPUTE, vkCtx.raycastPipeline);
	vkCmdBindDescriptorSets(cmdBuf, VK_PIPELINE_BIND_POINT_COMPUTE, vkCtx.raycastPipelineLayout, 0, 1, &vkCtx.raycastDescSet, 0, nullptr);
	vkCmdPushConstants(cmdBuf, vkCtx.raycastPipelineLayout, VK_SHADER_STAGE_COMPUTE_BIT, 0, sizeof(constants), &constants);
	
	// Dispatch compute shader
	uint32_t dispatchX = (vkCtx.textureWidth + 7) / 8;
	uint32_t dispatchY = (vkCtx.textureHeight + 7) / 8;
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
	
	VK_CHECK(vkEndCommandBuffer(cmdBuf));
	
	VkSubmitInfo submitInfo{};
	submitInfo.sType = VK_STRUCTURE_TYPE_SUBMIT_INFO;
	VkPipelineStageFlags waitStage = VK_PIPELINE_STAGE_TRANSFER_BIT;
	submitInfo.waitSemaphoreCount = 1;
	submitInfo.pWaitSemaphores = &vkCtx.imageAvailableSemaphores[frame];
	submitInfo.pWaitDstStageMask = &waitStage;
	submitInfo.commandBufferCount = 1;
	submitInfo.pCommandBuffers = &cmdBuf;
	submitInfo.signalSemaphoreCount = 1;
	submitInfo.pSignalSemaphores = &vkCtx.renderFinishedSemaphores[imgIdx];
	
	VK_CHECK(vkResetFences(vkCtx.device, 1, &vkCtx.inFlightFences[frame]));
	VK_CHECK(vkQueueSubmit(vkCtx.graphicsQueue, 1, &submitInfo, vkCtx.inFlightFences[frame]));
	
	VkPresentInfoKHR presentInfo{};
	presentInfo.sType = VK_STRUCTURE_TYPE_PRESENT_INFO_KHR;
	presentInfo.waitSemaphoreCount = 1;
	presentInfo.pWaitSemaphores = &vkCtx.renderFinishedSemaphores[imgIdx];
	presentInfo.swapchainCount = 1;
	presentInfo.pSwapchains = &vkCtx.swapchain;
	presentInfo.pImageIndices = &imgIdx;
	
	vkCheckPresent(vkQueuePresentKHR(vkCtx.graphicsQueue, &presentInfo));
	
	vkCtx.currentFrame = (vkCtx.currentFrame + 1) % VulkanContext::MAX_FRAMES_IN_FLIGHT;
	if (vkCtx.swapchainNeedsRebuild) handleResizeVulkan(state.ui.width, state.ui.height);
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
	const uint32_t imgIdx = vkCtx.acquiredImageIndex;

	VkCommandBuffer cmdBuf = vkCtx.commandBuffers[frame];
	VK_CHECK(vkResetCommandBuffer(cmdBuf, 0));

	VkCommandBufferBeginInfo beginInfo = {};
	beginInfo.sType = VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO;
	beginInfo.flags = VK_COMMAND_BUFFER_USAGE_ONE_TIME_SUBMIT_BIT;
	VK_CHECK(vkBeginCommandBuffer(cmdBuf, &beginInfo));

	VkImageMemoryBarrier barrier = {};
	barrier.sType = VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER;
	barrier.srcQueueFamilyIndex = barrier.dstQueueFamilyIndex = VK_QUEUE_FAMILY_IGNORED;
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
	texBarrier.srcQueueFamilyIndex = texBarrier.dstQueueFamilyIndex = VK_QUEUE_FAMILY_IGNORED;
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
		vkCmdBindDescriptorSets(cmdBuf, VK_PIPELINE_BIND_POINT_COMPUTE, vkCtx.computePipelineLayout, 0, 1, &vkCtx.computeDescSets[frame], 0, nullptr);
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
	const bool sameSize = vkCtx.textureWidth == vkCtx.swapchainExtent.width &&
		vkCtx.textureHeight == vkCtx.swapchainExtent.height && vkCtx.swapchainFormat == VK_FORMAT_R8G8B8A8_UNORM;
	if (state.raycast.enabled)
		blit.dstOffsets[1] = {static_cast<int32_t>(vkCtx.swapchainExtent.width), static_cast<int32_t>(vkCtx.swapchainExtent.height), 1};
	else
	{
		const float scale = std::min(static_cast<float>(vkCtx.swapchainExtent.width) / vkCtx.textureWidth,
			static_cast<float>(vkCtx.swapchainExtent.height) / vkCtx.textureHeight);
		const int32_t width = std::max(1, static_cast<int32_t>(vkCtx.textureWidth * scale));
		const int32_t height = std::max(1, static_cast<int32_t>(vkCtx.textureHeight * scale));
		const int32_t x = (static_cast<int32_t>(vkCtx.swapchainExtent.width) - width) / 2;
		const int32_t y = (static_cast<int32_t>(vkCtx.swapchainExtent.height) - height) / 2;
		blit.dstOffsets[0] = {x, y, 0};
		blit.dstOffsets[1] = {x + width, y + height, 1};
		if (width != static_cast<int32_t>(vkCtx.swapchainExtent.width) || height != static_cast<int32_t>(vkCtx.swapchainExtent.height))
		{
			VkClearColorValue black{};
			vkCmdClearColorImage(cmdBuf, vkCtx.swapchainImages[imgIdx], VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL,
				&black, 1, &barrier.subresourceRange);
			VkMemoryBarrier clearBarrier{};
			clearBarrier.sType = VK_STRUCTURE_TYPE_MEMORY_BARRIER;
			clearBarrier.srcAccessMask = clearBarrier.dstAccessMask = VK_ACCESS_TRANSFER_WRITE_BIT;
			vkCmdPipelineBarrier(cmdBuf, VK_PIPELINE_STAGE_TRANSFER_BIT, VK_PIPELINE_STAGE_TRANSFER_BIT,
				0, 1, &clearBarrier, 0, nullptr, 0, nullptr);
		}
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

	VK_CHECK(vkEndCommandBuffer(cmdBuf));

	VkPipelineStageFlags waitStage = VK_PIPELINE_STAGE_TRANSFER_BIT;
	VkSubmitInfo submit = {};
	submit.sType = VK_STRUCTURE_TYPE_SUBMIT_INFO;
	submit.waitSemaphoreCount = 1;
	submit.pWaitSemaphores = &vkCtx.imageAvailableSemaphores[frame];
	submit.pWaitDstStageMask = &waitStage;
	submit.commandBufferCount = 1;
	submit.pCommandBuffers = &cmdBuf;
	submit.signalSemaphoreCount = 1;
	submit.pSignalSemaphores = &vkCtx.renderFinishedSemaphores[imgIdx];

	VK_CHECK(vkResetFences(vkCtx.device, 1, &vkCtx.inFlightFences[frame]));
	VK_CHECK(vkQueueSubmit(vkCtx.graphicsQueue, 1, &submit, vkCtx.inFlightFences[frame]));

	VkPresentInfoKHR present = {};
	present.sType = VK_STRUCTURE_TYPE_PRESENT_INFO_KHR;
	present.waitSemaphoreCount = 1;
	present.pWaitSemaphores = &vkCtx.renderFinishedSemaphores[imgIdx];
	present.swapchainCount = 1;
	present.pSwapchains = &vkCtx.swapchain;
	present.pImageIndices = &imgIdx;
	vkCheckPresent(vkQueuePresentKHR(vkCtx.graphicsQueue, &present));

	vkCtx.currentFrame = (vkCtx.currentFrame + 1) % VulkanContext::MAX_FRAMES_IN_FLIGHT;
	if (vkCtx.swapchainNeedsRebuild) handleResizeVulkan(state.ui.width, state.ui.height);
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
	if (vkCtx.device)
		vkDeviceWaitIdle(vkCtx.device);

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
		if (vkCtx.inFlightFences[i]) vkDestroyFence(vkCtx.device, vkCtx.inFlightFences[i], nullptr);
	}
	for (auto semaphore : vkCtx.renderFinishedSemaphores)
		if (semaphore) vkDestroySemaphore(vkCtx.device, semaphore, nullptr);
	if (vkCtx.commandPool)
		vkDestroyCommandPool(vkCtx.device, vkCtx.commandPool, nullptr);
	if (vkCtx.device)
		vkDestroyDevice(vkCtx.device, nullptr);
	if (vkCtx.instance)
		vkDestroyInstance(vkCtx.instance, nullptr);

	vkCtx = {};
}
