// vulkan.cpp

#include <stdexcept>
#include <cstring>
#include <cstdint>
#include <span>
#include <chrono>
#include <algorithm>
#include <array>
#include <cstddef>
#include <cmath>

#ifdef _WIN32
#include <windows.h>
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
#include "system.h"
#include "pvx.h"
#include "project_overrides.h"
#include "../resource.h"

// GPU raycast compute shader (kept local to Engine/include/shaders)
#include "shaders/vk_raycast_spv.h"
#include "shaders/vk_raycast_model_vert_spv.h"
#include "shaders/vk_raycast_model_frag_spv.h"

#ifdef _WIN32
#define DBG_LOG(msg) OutputDebugStringA("[Phantom:Vulkan] " msg "\n")
#define DBG_LOGF(fmt, ...) do { char _dbg_buf[4096]; snprintf(_dbg_buf, sizeof(_dbg_buf), "[Phantom:Vulkan] " fmt "\n", __VA_ARGS__); OutputDebugStringA(_dbg_buf); } while(0)
#else
#define DBG_LOG(msg) ((void)0)
#define DBG_LOGF(fmt, ...) ((void)0)
#endif

//
// Vulkan context
//
VulkanContext vkCtx;
static bool g_fragmentStoresAndAtomicsEnabled = false;

static unsigned char* menuTitleImage = nullptr;
static int menuTitleW = 0, menuTitleH = 0, menuTitleC = 0;

static uint32_t packRaycastColor(const std::array<uint8_t, 3>& color)
{
	return static_cast<uint32_t>(color[0]) |
		(static_cast<uint32_t>(color[1]) << 8u) |
		(static_cast<uint32_t>(color[2]) << 16u);
}

static void ensureMenuTitleImageLoaded()
{
	if (menuTitleImage)
		return;

	menuTitleImage = RenderTextImageFromTTFResource(
		IDR_MENU_TITLE_TTF,
		phantom::project_overrides::kMenuTitleText.data(),
		phantom::project_overrides::kMenuTitleFontPixelHeight,
		phantom::project_overrides::kMenuTitleColorR,
		phantom::project_overrides::kMenuTitleColorG,
		phantom::project_overrides::kMenuTitleColorB,
		&menuTitleW,
		&menuTitleH,
		&menuTitleC);
	if (menuTitleImage)
	{
		char buf[256];
		snprintf(buf, sizeof(buf), "[Vulkan] Built menu title image lazily: %dx%d %d channels\n", menuTitleW, menuTitleH, menuTitleC);
		OutputDebugStringA(buf);
	}
	else
	{
		OutputDebugStringA("[Vulkan] Failed to build menu title image from TTF\n");
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

static bool createBuffer(VkDeviceSize size,
	VkBufferUsageFlags usage,
	VkMemoryPropertyFlags properties,
	VkBuffer &buffer,
	VkDeviceMemory &bufferMemory)
{
	VkBufferCreateInfo bufferInfo{};
	bufferInfo.sType = VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO;
	bufferInfo.size = size;
	bufferInfo.usage = usage;
	bufferInfo.sharingMode = VK_SHARING_MODE_EXCLUSIVE;

	if (vkCreateBuffer(vkCtx.device, &bufferInfo, nullptr, &buffer) != VK_SUCCESS)
		return false;

	VkMemoryRequirements memRequirements{};
	vkGetBufferMemoryRequirements(vkCtx.device, buffer, &memRequirements);

	VkMemoryAllocateInfo allocInfo{};
	allocInfo.sType = VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO;
	allocInfo.allocationSize = memRequirements.size;
	allocInfo.memoryTypeIndex = findMemoryType(memRequirements.memoryTypeBits, properties);

	if (vkAllocateMemory(vkCtx.device, &allocInfo, nullptr, &bufferMemory) != VK_SUCCESS)
		return false;

	vkBindBufferMemory(vkCtx.device, buffer, bufferMemory, 0);
	return true;
}

static bool beginSingleUseCommandBuffer(VkCommandBuffer &cmdBuf)
{
	cmdBuf = VK_NULL_HANDLE;
	if (!vkCtx.commandPool || !vkCtx.device)
		return false;

	VkCommandBufferAllocateInfo allocInfo{};
	allocInfo.sType = VK_STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO;
	allocInfo.commandPool = vkCtx.commandPool;
	allocInfo.level = VK_COMMAND_BUFFER_LEVEL_PRIMARY;
	allocInfo.commandBufferCount = 1;
	if (vkAllocateCommandBuffers(vkCtx.device, &allocInfo, &cmdBuf) != VK_SUCCESS)
		return false;

	VkCommandBufferBeginInfo beginInfo{};
	beginInfo.sType = VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO;
	beginInfo.flags = VK_COMMAND_BUFFER_USAGE_ONE_TIME_SUBMIT_BIT;
	if (vkBeginCommandBuffer(cmdBuf, &beginInfo) != VK_SUCCESS)
	{
		vkFreeCommandBuffers(vkCtx.device, vkCtx.commandPool, 1, &cmdBuf);
		cmdBuf = VK_NULL_HANDLE;
		return false;
	}

	return true;
}

static bool submitSingleUseCommandBuffer(VkCommandBuffer cmdBuf)
{
	if (cmdBuf == VK_NULL_HANDLE)
		return false;

	if (vkEndCommandBuffer(cmdBuf) != VK_SUCCESS)
	{
		vkFreeCommandBuffers(vkCtx.device, vkCtx.commandPool, 1, &cmdBuf);
		return false;
	}

	VkSubmitInfo submitInfo{};
	submitInfo.sType = VK_STRUCTURE_TYPE_SUBMIT_INFO;
	submitInfo.commandBufferCount = 1;
	submitInfo.pCommandBuffers = &cmdBuf;
	if (vkQueueSubmit(vkCtx.graphicsQueue, 1, &submitInfo, VK_NULL_HANDLE) != VK_SUCCESS)
	{
		vkFreeCommandBuffers(vkCtx.device, vkCtx.commandPool, 1, &cmdBuf);
		return false;
	}

	VkResult waitRes = vkQueueWaitIdle(vkCtx.graphicsQueue);
	vkFreeCommandBuffers(vkCtx.device, vkCtx.commandPool, 1, &cmdBuf);
	return waitRes == VK_SUCCESS;
}

static bool uploadDeviceLocalBuffer(VkBuffer destination, const void *data, VkDeviceSize size)
{
	if (!destination || !data || size == 0)
		return false;

	VkBuffer stagingBuffer = VK_NULL_HANDLE;
	VkDeviceMemory stagingMemory = VK_NULL_HANDLE;
	if (!createBuffer(size,
		VK_BUFFER_USAGE_TRANSFER_SRC_BIT,
		VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT | VK_MEMORY_PROPERTY_HOST_COHERENT_BIT,
		stagingBuffer,
		stagingMemory))
		return false;

	void *mapped = nullptr;
	bool ok = vkMapMemory(vkCtx.device, stagingMemory, 0, size, 0, &mapped) == VK_SUCCESS;
	if (ok)
	{
		std::memcpy(mapped, data, static_cast<size_t>(size));
		vkUnmapMemory(vkCtx.device, stagingMemory);

		VkCommandBuffer commandBuffer = VK_NULL_HANDLE;
		ok = beginSingleUseCommandBuffer(commandBuffer);
		if (ok)
		{
			VkBufferCopy copy{};
			copy.size = size;
			vkCmdCopyBuffer(commandBuffer, stagingBuffer, destination, 1, &copy);
			ok = submitSingleUseCommandBuffer(commandBuffer);
		}
	}

	vkDestroyBuffer(vkCtx.device, stagingBuffer, nullptr);
	vkFreeMemory(vkCtx.device, stagingMemory, nullptr);
	return ok;
}

static bool transitionMegatexImageLayout(VkImage image,
	uint32_t layerCount,
	VkImageLayout oldLayout,
	VkImageLayout newLayout,
	VkAccessFlags srcAccessMask,
	VkAccessFlags dstAccessMask,
	VkPipelineStageFlags srcStage,
	VkPipelineStageFlags dstStage)
{
	VkCommandBuffer cmdBuf = VK_NULL_HANDLE;
	if (!beginSingleUseCommandBuffer(cmdBuf))
		return false;

	VkImageMemoryBarrier barrier{};
	barrier.sType = VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER;
	barrier.oldLayout = oldLayout;
	barrier.newLayout = newLayout;
	barrier.srcQueueFamilyIndex = VK_QUEUE_FAMILY_IGNORED;
	barrier.dstQueueFamilyIndex = VK_QUEUE_FAMILY_IGNORED;
	barrier.image = image;
	barrier.subresourceRange.aspectMask = VK_IMAGE_ASPECT_COLOR_BIT;
	barrier.subresourceRange.baseMipLevel = 0;
	barrier.subresourceRange.levelCount = 1;
	barrier.subresourceRange.baseArrayLayer = 0;
	barrier.subresourceRange.layerCount = layerCount;
	barrier.srcAccessMask = srcAccessMask;
	barrier.dstAccessMask = dstAccessMask;

	vkCmdPipelineBarrier(cmdBuf,
		srcStage,
		dstStage,
		0,
		0, nullptr,
		0, nullptr,
		1, &barrier);

	return submitSingleUseCommandBuffer(cmdBuf);
}

static bool copyMegatexBatchToImage(VkBuffer stagingBuffer,
	uint32_t firstLayer,
	uint32_t layerCount,
	uint32_t tileWidth,
	uint32_t tileHeight,
	size_t bytesPerTile)
{
	VkCommandBuffer cmdBuf = VK_NULL_HANDLE;
	if (!beginSingleUseCommandBuffer(cmdBuf))
		return false;

	std::vector<VkBufferImageCopy> regions(layerCount);
	for (uint32_t i = 0; i < layerCount; ++i)
	{
		VkBufferImageCopy &region = regions[i];
		region.bufferOffset = static_cast<VkDeviceSize>(i) * static_cast<VkDeviceSize>(bytesPerTile);
		region.bufferRowLength = 0;
		region.bufferImageHeight = 0;
		region.imageSubresource.aspectMask = VK_IMAGE_ASPECT_COLOR_BIT;
		region.imageSubresource.mipLevel = 0;
		region.imageSubresource.baseArrayLayer = firstLayer + i;
		region.imageSubresource.layerCount = 1;
		region.imageOffset = {0, 0, 0};
		region.imageExtent = {tileWidth, tileHeight, 1};
	}

	vkCmdCopyBufferToImage(cmdBuf,
		stagingBuffer,
		vkCtx.megatexImage,
		VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL,
		layerCount,
		regions.data());

	return submitSingleUseCommandBuffer(cmdBuf);
}

static void destroyRaycastResources()
{
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
	if (vkCtx.edgeOffsetsBuffer)
	{
		vkDestroyBuffer(vkCtx.device, vkCtx.edgeOffsetsBuffer, nullptr);
		vkCtx.edgeOffsetsBuffer = VK_NULL_HANDLE;
	}
	if (vkCtx.edgeOffsetsBufferMemory)
	{
		vkFreeMemory(vkCtx.device, vkCtx.edgeOffsetsBufferMemory, nullptr);
		vkCtx.edgeOffsetsBufferMemory = VK_NULL_HANDLE;
	}
	if (vkCtx.megatexSampler)
	{
		vkDestroySampler(vkCtx.device, vkCtx.megatexSampler, nullptr);
		vkCtx.megatexSampler = VK_NULL_HANDLE;
	}
	if (vkCtx.megatexImageView)
	{
		vkDestroyImageView(vkCtx.device, vkCtx.megatexImageView, nullptr);
		vkCtx.megatexImageView = VK_NULL_HANDLE;
	}
	if (vkCtx.megatexImage)
	{
		vkDestroyImage(vkCtx.device, vkCtx.megatexImage, nullptr);
		vkCtx.megatexImage = VK_NULL_HANDLE;
	}
	if (vkCtx.megatexImageMemory)
	{
		vkFreeMemory(vkCtx.device, vkCtx.megatexImageMemory, nullptr);
		vkCtx.megatexImageMemory = VK_NULL_HANDLE;
	}
	if (vkCtx.raycastDescPool)
	{
		vkDestroyDescriptorPool(vkCtx.device, vkCtx.raycastDescPool, nullptr);
		vkCtx.raycastDescPool = VK_NULL_HANDLE;
	}
	if (vkCtx.raycastModelDescPool)
	{
		vkDestroyDescriptorPool(vkCtx.device, vkCtx.raycastModelDescPool, nullptr);
		vkCtx.raycastModelDescPool = VK_NULL_HANDLE;
	}
	if (vkCtx.raycastModelPipeline)
	{
		vkDestroyPipeline(vkCtx.device, vkCtx.raycastModelPipeline, nullptr);
		vkCtx.raycastModelPipeline = VK_NULL_HANDLE;
	}
	if (vkCtx.raycastModelPipelineLayout)
	{
		vkDestroyPipelineLayout(vkCtx.device, vkCtx.raycastModelPipelineLayout, nullptr);
		vkCtx.raycastModelPipelineLayout = VK_NULL_HANDLE;
	}
	if (vkCtx.raycastModelDescSetLayout)
	{
		vkDestroyDescriptorSetLayout(vkCtx.device, vkCtx.raycastModelDescSetLayout, nullptr);
		vkCtx.raycastModelDescSetLayout = VK_NULL_HANDLE;
	}
	if (vkCtx.raycastModelFramebuffer)
	{
		vkDestroyFramebuffer(vkCtx.device, vkCtx.raycastModelFramebuffer, nullptr);
		vkCtx.raycastModelFramebuffer = VK_NULL_HANDLE;
	}
	if (vkCtx.raycastModelRenderPass)
	{
		vkDestroyRenderPass(vkCtx.device, vkCtx.raycastModelRenderPass, nullptr);
		vkCtx.raycastModelRenderPass = VK_NULL_HANDLE;
	}
	if (vkCtx.raycastModelVertexBuffer)
	{
		vkDestroyBuffer(vkCtx.device, vkCtx.raycastModelVertexBuffer, nullptr);
		vkCtx.raycastModelVertexBuffer = VK_NULL_HANDLE;
	}
	if (vkCtx.raycastModelVertexBufferMemory)
	{
		vkFreeMemory(vkCtx.device, vkCtx.raycastModelVertexBufferMemory, nullptr);
		vkCtx.raycastModelVertexBufferMemory = VK_NULL_HANDLE;
	}
	if (vkCtx.raycastModelIndexBuffer)
	{
		vkDestroyBuffer(vkCtx.device, vkCtx.raycastModelIndexBuffer, nullptr);
		vkCtx.raycastModelIndexBuffer = VK_NULL_HANDLE;
	}
	if (vkCtx.raycastModelIndexBufferMemory)
	{
		vkFreeMemory(vkCtx.device, vkCtx.raycastModelIndexBufferMemory, nullptr);
		vkCtx.raycastModelIndexBufferMemory = VK_NULL_HANDLE;
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
	if (vkCtx.raycastImageView)
	{
		vkDestroyImageView(vkCtx.device, vkCtx.raycastImageView, nullptr);
		vkCtx.raycastImageView = VK_NULL_HANDLE;
	}
	if (vkCtx.raycastImage)
	{
		vkDestroyImage(vkCtx.device, vkCtx.raycastImage, nullptr);
		vkCtx.raycastImage = VK_NULL_HANDLE;
	}
	if (vkCtx.raycastImageMemory)
	{
		vkFreeMemory(vkCtx.device, vkCtx.raycastImageMemory, nullptr);
		vkCtx.raycastImageMemory = VK_NULL_HANDLE;
	}
	if (vkCtx.raycastDepthImageView)
	{
		vkDestroyImageView(vkCtx.device, vkCtx.raycastDepthImageView, nullptr);
		vkCtx.raycastDepthImageView = VK_NULL_HANDLE;
	}
	if (vkCtx.raycastDepthImage)
	{
		vkDestroyImage(vkCtx.device, vkCtx.raycastDepthImage, nullptr);
		vkCtx.raycastDepthImage = VK_NULL_HANDLE;
	}
	if (vkCtx.raycastDepthImageMemory)
	{
		vkFreeMemory(vkCtx.device, vkCtx.raycastDepthImageMemory, nullptr);
		vkCtx.raycastDepthImageMemory = VK_NULL_HANDLE;
	}
	vkCtx.raycastImageLayout = VK_IMAGE_LAYOUT_UNDEFINED;
	vkCtx.raycastDepthImageLayout = VK_IMAGE_LAYOUT_UNDEFINED;
	vkCtx.raycastModelDescSet = VK_NULL_HANDLE;
	vkCtx.raycastModelVertexBufferSize = 0;
	vkCtx.raycastModelIndexBufferSize = 0;
	vkCtx.raycastModelIndexCount = 0;
	vkCtx.raycastModelGeometryVersion = 0;
	vkCtx.tileMapBufferSize = 0;
	vkCtx.edgeOffsetsBufferSize = 0;
	vkCtx.megatexImageLayout = VK_IMAGE_LAYOUT_UNDEFINED;
	vkCtx.megatexTileWidth = 0;
	vkCtx.megatexTileHeight = 0;
	vkCtx.megatexLayerCount = 0;
	vkCtx.lastMapWidth = 0;
	vkCtx.lastMapHeight = 0;
	vkCtx.edgeOffsetsDirty = true;
	vkCtx.lastEdgeCount = 0;
	vkCtx.tileMapUploadCache.clear();
	vkCtx.edgeOffsetsUploadCache.clear();
	vkCtx.lastMegatexVersion = 0;
	vkCtx.hasMegatexVersion = false;
	vkCtx.uploadedMapRevision = 0;
	vkCtx.uploadedExploredRevision = 0;
	vkCtx.uploadedEdgeVersion = 0;
	vkCtx.raycastDescriptorsDirty = true;
	vkCtx.raycastModelDescriptorsDirty = true;
}

static bool ensureRaycastImage(uint32_t width, uint32_t height)
{
	if (vkCtx.raycastImage && vkCtx.raycastImageView && vkCtx.textureWidth == width && vkCtx.textureHeight == height)
		return true;
	if (vkCtx.raycastImage)
		vkQueueWaitIdle(vkCtx.graphicsQueue);

	// Recreate raycast resources that depend on image size
	if (vkCtx.raycastImageView)
	{
		vkDestroyImageView(vkCtx.device, vkCtx.raycastImageView, nullptr);
		vkCtx.raycastImageView = VK_NULL_HANDLE;
	}
	if (vkCtx.raycastImage)
	{
		vkDestroyImage(vkCtx.device, vkCtx.raycastImage, nullptr);
		vkCtx.raycastImage = VK_NULL_HANDLE;
	}
	if (vkCtx.raycastImageMemory)
	{
		vkFreeMemory(vkCtx.device, vkCtx.raycastImageMemory, nullptr);
		vkCtx.raycastImageMemory = VK_NULL_HANDLE;
	}
	
	VkImageCreateInfo imageInfo{};
	imageInfo.sType = VK_STRUCTURE_TYPE_IMAGE_CREATE_INFO;
	imageInfo.imageType = VK_IMAGE_TYPE_2D;
	imageInfo.format = VK_FORMAT_B8G8R8A8_UNORM;
	imageInfo.extent = {width, height, 1};
	imageInfo.mipLevels = 1;
	imageInfo.arrayLayers = 1;
	imageInfo.samples = VK_SAMPLE_COUNT_1_BIT;
	imageInfo.tiling = VK_IMAGE_TILING_OPTIMAL;
	imageInfo.usage = VK_IMAGE_USAGE_TRANSFER_SRC_BIT | VK_IMAGE_USAGE_TRANSFER_DST_BIT | VK_IMAGE_USAGE_STORAGE_BIT;
	imageInfo.initialLayout = VK_IMAGE_LAYOUT_UNDEFINED;

	if (vkCreateImage(vkCtx.device, &imageInfo, nullptr, &vkCtx.raycastImage) != VK_SUCCESS)
		return false;

	VkMemoryRequirements memReq{};
	vkGetImageMemoryRequirements(vkCtx.device, vkCtx.raycastImage, &memReq);

	VkMemoryAllocateInfo allocInfo{};
	allocInfo.sType = VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO;
	allocInfo.allocationSize = memReq.size;
	allocInfo.memoryTypeIndex = findMemoryType(memReq.memoryTypeBits, VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT);
	if (vkAllocateMemory(vkCtx.device, &allocInfo, nullptr, &vkCtx.raycastImageMemory) != VK_SUCCESS)
		return false;

	vkBindImageMemory(vkCtx.device, vkCtx.raycastImage, vkCtx.raycastImageMemory, 0);

	VkImageViewCreateInfo viewInfo{};
	viewInfo.sType = VK_STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO;
	viewInfo.image = vkCtx.raycastImage;
	viewInfo.viewType = VK_IMAGE_VIEW_TYPE_2D;
	viewInfo.format = VK_FORMAT_B8G8R8A8_UNORM;
	viewInfo.subresourceRange.aspectMask = VK_IMAGE_ASPECT_COLOR_BIT;
	viewInfo.subresourceRange.levelCount = 1;
	viewInfo.subresourceRange.layerCount = 1;

	if (vkCreateImageView(vkCtx.device, &viewInfo, nullptr, &vkCtx.raycastImageView) != VK_SUCCESS)
		return false;

	vkCtx.raycastImageLayout = VK_IMAGE_LAYOUT_UNDEFINED;
	vkCtx.raycastDescriptorsDirty = true;
	vkCtx.raycastModelDescriptorsDirty = true;
	return true;
}

static bool ensureRaycastDepthImage(uint32_t width, uint32_t height)
{
	if (vkCtx.raycastDepthImage && vkCtx.raycastDepthImageView && vkCtx.textureWidth == width && vkCtx.textureHeight == height)
		return true;
	if (vkCtx.raycastDepthImage)
		vkQueueWaitIdle(vkCtx.graphicsQueue);

	if (vkCtx.raycastDepthImageView)
	{
		vkDestroyImageView(vkCtx.device, vkCtx.raycastDepthImageView, nullptr);
		vkCtx.raycastDepthImageView = VK_NULL_HANDLE;
	}
	if (vkCtx.raycastDepthImage)
	{
		vkDestroyImage(vkCtx.device, vkCtx.raycastDepthImage, nullptr);
		vkCtx.raycastDepthImage = VK_NULL_HANDLE;
	}
	if (vkCtx.raycastDepthImageMemory)
	{
		vkFreeMemory(vkCtx.device, vkCtx.raycastDepthImageMemory, nullptr);
		vkCtx.raycastDepthImageMemory = VK_NULL_HANDLE;
	}
	if (vkCtx.raycastModelFramebuffer)
	{
		vkDestroyFramebuffer(vkCtx.device, vkCtx.raycastModelFramebuffer, nullptr);
		vkCtx.raycastModelFramebuffer = VK_NULL_HANDLE;
	}

	VkImageCreateInfo imageInfo{};
	imageInfo.sType = VK_STRUCTURE_TYPE_IMAGE_CREATE_INFO;
	imageInfo.imageType = VK_IMAGE_TYPE_2D;
	imageInfo.format = VK_FORMAT_R32_UINT;
	imageInfo.extent = {width, height, 1};
	imageInfo.mipLevels = 1;
	imageInfo.arrayLayers = 1;
	imageInfo.samples = VK_SAMPLE_COUNT_1_BIT;
	imageInfo.tiling = VK_IMAGE_TILING_OPTIMAL;
	imageInfo.usage = VK_IMAGE_USAGE_STORAGE_BIT;
	imageInfo.initialLayout = VK_IMAGE_LAYOUT_UNDEFINED;

	if (vkCreateImage(vkCtx.device, &imageInfo, nullptr, &vkCtx.raycastDepthImage) != VK_SUCCESS)
		return false;

	VkMemoryRequirements memReq{};
	vkGetImageMemoryRequirements(vkCtx.device, vkCtx.raycastDepthImage, &memReq);

	VkMemoryAllocateInfo allocInfo{};
	allocInfo.sType = VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO;
	allocInfo.allocationSize = memReq.size;
	allocInfo.memoryTypeIndex = findMemoryType(memReq.memoryTypeBits, VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT);
	if (vkAllocateMemory(vkCtx.device, &allocInfo, nullptr, &vkCtx.raycastDepthImageMemory) != VK_SUCCESS)
		return false;

	vkBindImageMemory(vkCtx.device, vkCtx.raycastDepthImage, vkCtx.raycastDepthImageMemory, 0);

	VkImageViewCreateInfo viewInfo{};
	viewInfo.sType = VK_STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO;
	viewInfo.image = vkCtx.raycastDepthImage;
	viewInfo.viewType = VK_IMAGE_VIEW_TYPE_2D;
	viewInfo.format = VK_FORMAT_R32_UINT;
	viewInfo.subresourceRange.aspectMask = VK_IMAGE_ASPECT_COLOR_BIT;
	viewInfo.subresourceRange.levelCount = 1;
	viewInfo.subresourceRange.layerCount = 1;
	if (vkCreateImageView(vkCtx.device, &viewInfo, nullptr, &vkCtx.raycastDepthImageView) != VK_SUCCESS)
		return false;

	vkCtx.raycastDepthImageLayout = VK_IMAGE_LAYOUT_UNDEFINED;
	vkCtx.raycastDescriptorsDirty = true;
	vkCtx.raycastModelDescriptorsDirty = true;
	return true;
}

static bool ensureTileMapBuffer(const TileMap &tileMap)
{
	if (tileMap.empty() || tileMap[0].empty())
		return false;

	uint32_t mapHeight = static_cast<uint32_t>(tileMap.size());
	uint32_t mapWidth = static_cast<uint32_t>(tileMap[0].size());
	const size_t tileCount = static_cast<size_t>(mapWidth) * mapHeight;

	if (vkCtx.tileMapBuffer &&
		vkCtx.lastMapWidth == mapWidth &&
		vkCtx.lastMapHeight == mapHeight &&
		vkCtx.uploadedMapRevision == state.raycast.mapRevision &&
		vkCtx.uploadedExploredRevision == state.raycast.exploredRevision)
		return true;

	// Buffer holds tiles + explored flags (double the tile data)
	bool needRecreate = !vkCtx.tileMapBuffer || vkCtx.lastMapWidth != mapWidth || vkCtx.lastMapHeight != mapHeight;
	if (needRecreate)
	{
		if (vkCtx.tileMapBuffer)
			vkQueueWaitIdle(vkCtx.graphicsQueue);
		// Destroy old buffer
		if (vkCtx.tileMapBuffer)
		{
			vkDestroyBuffer(vkCtx.device, vkCtx.tileMapBuffer, nullptr);
			vkFreeMemory(vkCtx.device, vkCtx.tileMapBufferMemory, nullptr);
			vkCtx.tileMapBuffer = VK_NULL_HANDLE;
			vkCtx.tileMapBufferMemory = VK_NULL_HANDLE;
		}
	}

	vkCtx.edgeOffsetsDirty = true;
	vkCtx.tileMapUploadCache.resize(tileCount * 2ull);
	for (uint32_t y = 0; y < mapHeight; ++y)
		std::memcpy(vkCtx.tileMapUploadCache.data() + static_cast<size_t>(y) * mapWidth,
			tileMap[y].data(),
			mapWidth);

	if (state.raycast.exploredMap.size() == tileCount)
		std::memcpy(vkCtx.tileMapUploadCache.data() + tileCount,
			state.raycast.exploredMap.data(),
			tileCount);
	else
		std::memset(vkCtx.tileMapUploadCache.data() + tileCount, 0, tileCount);

	VkDeviceSize bufferSize = static_cast<VkDeviceSize>((vkCtx.tileMapUploadCache.size() + 3ull) & ~3ull);
	if (needRecreate)
	{
		if (!createBuffer(bufferSize,
			VK_BUFFER_USAGE_STORAGE_BUFFER_BIT | VK_BUFFER_USAGE_TRANSFER_DST_BIT,
			VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT,
			vkCtx.tileMapBuffer,
			vkCtx.tileMapBufferMemory))
			return false;
		vkCtx.tileMapBufferSize = bufferSize;
		vkCtx.raycastDescriptorsDirty = true;
	}

	vkCtx.tileMapUploadCache.resize(static_cast<size_t>(bufferSize), 0);
	if (!uploadDeviceLocalBuffer(vkCtx.tileMapBuffer,
		vkCtx.tileMapUploadCache.data(),
		bufferSize))
		return false;

	vkCtx.lastMapWidth = mapWidth;
	vkCtx.lastMapHeight = mapHeight;
	vkCtx.uploadedMapRevision = state.raycast.mapRevision;
	vkCtx.uploadedExploredRevision = state.raycast.exploredRevision;
	return true;
}

static bool ensureEdgeOffsetsBuffer(const TileMap &tileMap)
{
	if (tileMap.empty() || tileMap[0].empty())
		return false;

	uint32_t mapHeight = static_cast<uint32_t>(tileMap.size());
	uint32_t mapWidth = static_cast<uint32_t>(tileMap[0].size());
	const size_t count = static_cast<size_t>(mapWidth) * mapHeight * 4ull;
	VkDeviceSize bufferSize = static_cast<VkDeviceSize>(count * 3ull * sizeof(uint32_t));
	bool needRecreate = (!vkCtx.edgeOffsetsBuffer) || (vkCtx.edgeOffsetsBufferSize != bufferSize);
	if (vkCtx.lastEdgeCount != megatex.edges.size())
		vkCtx.edgeOffsetsDirty = true;
	if (vkCtx.lastMapWidth != mapWidth || vkCtx.lastMapHeight != mapHeight)
		vkCtx.edgeOffsetsDirty = true;

	const bool edgeUnchanged = (vkCtx.lastMapWidth == mapWidth &&
								vkCtx.lastMapHeight == mapHeight &&
								vkCtx.uploadedEdgeVersion == megatex.version &&
								vkCtx.lastEdgeCount == megatex.edges.size());
	if (!needRecreate && edgeUnchanged)
	{
		vkCtx.edgeOffsetsDirty = false;
		vkCtx.lastEdgeCount = megatex.edges.size();
		return true;
	}

	vkCtx.edgeOffsetsUploadCache.assign(count * 3ull, 0u);
	for (const auto &e : megatex.edges)
	{
		if (e.cellX < 0 || e.cellY < 0)
			continue;
		if (e.cellX >= static_cast<int>(mapWidth) || e.cellY >= static_cast<int>(mapHeight))
			continue;
		size_t idx = (static_cast<size_t>(e.cellY) * mapWidth + static_cast<size_t>(e.cellX)) * 4ull + static_cast<size_t>(e.side & 3);
		size_t idx3 = idx * 3ull;
		if (idx3 + 2 < vkCtx.edgeOffsetsUploadCache.size())
		{
			vkCtx.edgeOffsetsUploadCache[idx3 + 0] = static_cast<uint32_t>(e.xOffsetPixels);
			vkCtx.edgeOffsetsUploadCache[idx3 + 1] = static_cast<uint32_t>(std::max(1, e.pixelWidth));
			vkCtx.edgeOffsetsUploadCache[idx3 + 2] = static_cast<uint32_t>(e.direction < 0 ? 1u : 0u);
		}
	}

	if (needRecreate)
	{
		if (vkCtx.edgeOffsetsBuffer)
			vkQueueWaitIdle(vkCtx.graphicsQueue);
		if (vkCtx.edgeOffsetsBuffer)
		{
			vkDestroyBuffer(vkCtx.device, vkCtx.edgeOffsetsBuffer, nullptr);
			vkFreeMemory(vkCtx.device, vkCtx.edgeOffsetsBufferMemory, nullptr);
			vkCtx.edgeOffsetsBuffer = VK_NULL_HANDLE;
			vkCtx.edgeOffsetsBufferMemory = VK_NULL_HANDLE;
		}
		if (!createBuffer(bufferSize,
			VK_BUFFER_USAGE_STORAGE_BUFFER_BIT | VK_BUFFER_USAGE_TRANSFER_DST_BIT,
			VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT,
			vkCtx.edgeOffsetsBuffer,
			vkCtx.edgeOffsetsBufferMemory))
			return false;
		vkCtx.edgeOffsetsBufferSize = bufferSize;
		vkCtx.raycastDescriptorsDirty = true;
	}

	if (!uploadDeviceLocalBuffer(vkCtx.edgeOffsetsBuffer,
		vkCtx.edgeOffsetsUploadCache.data(),
		bufferSize))
		return false;
	vkCtx.uploadedEdgeVersion = megatex.version;
	vkCtx.edgeOffsetsDirty = false;
	vkCtx.lastEdgeCount = megatex.edges.size();

	return true;
}

static bool ensureMegatexImage()
{
	const bool hasMegatex = state.raycast.useMegatexture &&
		megatex.loaded &&
		megatex.tileWidth > 0 &&
		megatex.tileHeight > 0 &&
		!megatex.tileCache.empty();
	const uint32_t tileWidth = hasMegatex ? static_cast<uint32_t>(megatex.tileWidth) : 1u;
	const uint32_t tileHeight = hasMegatex ? static_cast<uint32_t>(megatex.tileHeight) : 1u;
	const uint32_t tileCount = hasMegatex ? static_cast<uint32_t>(megatex.tileCache.size()) : 1u;
	const uint64_t targetVersion = hasMegatex ? megatex.version : 0u;

	VkPhysicalDeviceProperties devProps{};
	vkGetPhysicalDeviceProperties(vkCtx.physicalDevice, &devProps);
	if (tileCount > devProps.limits.maxImageArrayLayers)
		return false;

	const bool needRecreate = (!vkCtx.megatexImage) ||
		(vkCtx.megatexTileWidth != tileWidth) ||
		(vkCtx.megatexTileHeight != tileHeight) ||
		(vkCtx.megatexLayerCount != tileCount);
	const bool unchanged = (!needRecreate &&
		vkCtx.hasMegatexVersion &&
		vkCtx.lastMegatexVersion == targetVersion);
	if (unchanged)
		return true;

	if (needRecreate)
	{
		if (vkCtx.megatexImage)
			vkQueueWaitIdle(vkCtx.graphicsQueue);
		if (vkCtx.megatexSampler)
		{
			vkDestroySampler(vkCtx.device, vkCtx.megatexSampler, nullptr);
			vkCtx.megatexSampler = VK_NULL_HANDLE;
		}
		if (vkCtx.megatexImageView)
		{
			vkDestroyImageView(vkCtx.device, vkCtx.megatexImageView, nullptr);
			vkCtx.megatexImageView = VK_NULL_HANDLE;
		}
		if (vkCtx.megatexImage)
		{
			vkDestroyImage(vkCtx.device, vkCtx.megatexImage, nullptr);
			vkCtx.megatexImage = VK_NULL_HANDLE;
		}
		if (vkCtx.megatexImageMemory)
		{
			vkFreeMemory(vkCtx.device, vkCtx.megatexImageMemory, nullptr);
			vkCtx.megatexImageMemory = VK_NULL_HANDLE;
		}

		VkImageCreateInfo imageInfo{};
		imageInfo.sType = VK_STRUCTURE_TYPE_IMAGE_CREATE_INFO;
		imageInfo.imageType = VK_IMAGE_TYPE_2D;
		imageInfo.format = VK_FORMAT_R8G8B8A8_UNORM;
		imageInfo.extent = {tileWidth, tileHeight, 1};
		imageInfo.mipLevels = 1;
		imageInfo.arrayLayers = tileCount;
		imageInfo.samples = VK_SAMPLE_COUNT_1_BIT;
		imageInfo.tiling = VK_IMAGE_TILING_OPTIMAL;
		imageInfo.usage = VK_IMAGE_USAGE_TRANSFER_DST_BIT | VK_IMAGE_USAGE_SAMPLED_BIT;
		imageInfo.initialLayout = VK_IMAGE_LAYOUT_UNDEFINED;
		if (vkCreateImage(vkCtx.device, &imageInfo, nullptr, &vkCtx.megatexImage) != VK_SUCCESS)
			return false;

		VkMemoryRequirements memReq{};
		vkGetImageMemoryRequirements(vkCtx.device, vkCtx.megatexImage, &memReq);

		VkMemoryAllocateInfo allocInfo{};
		allocInfo.sType = VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO;
		allocInfo.allocationSize = memReq.size;
		allocInfo.memoryTypeIndex = findMemoryType(memReq.memoryTypeBits, VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT);
		if (vkAllocateMemory(vkCtx.device, &allocInfo, nullptr, &vkCtx.megatexImageMemory) != VK_SUCCESS)
			return false;

		vkBindImageMemory(vkCtx.device, vkCtx.megatexImage, vkCtx.megatexImageMemory, 0);

		VkImageViewCreateInfo viewInfo{};
		viewInfo.sType = VK_STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO;
		viewInfo.image = vkCtx.megatexImage;
		viewInfo.viewType = VK_IMAGE_VIEW_TYPE_2D_ARRAY;
		viewInfo.format = VK_FORMAT_R8G8B8A8_UNORM;
		viewInfo.subresourceRange.aspectMask = VK_IMAGE_ASPECT_COLOR_BIT;
		viewInfo.subresourceRange.baseMipLevel = 0;
		viewInfo.subresourceRange.levelCount = 1;
		viewInfo.subresourceRange.baseArrayLayer = 0;
		viewInfo.subresourceRange.layerCount = tileCount;
		if (vkCreateImageView(vkCtx.device, &viewInfo, nullptr, &vkCtx.megatexImageView) != VK_SUCCESS)
			return false;

		VkSamplerCreateInfo samplerInfo{};
		samplerInfo.sType = VK_STRUCTURE_TYPE_SAMPLER_CREATE_INFO;
		samplerInfo.magFilter = VK_FILTER_NEAREST;
		samplerInfo.minFilter = VK_FILTER_NEAREST;
		samplerInfo.mipmapMode = VK_SAMPLER_MIPMAP_MODE_NEAREST;
		samplerInfo.addressModeU = VK_SAMPLER_ADDRESS_MODE_CLAMP_TO_EDGE;
		samplerInfo.addressModeV = VK_SAMPLER_ADDRESS_MODE_CLAMP_TO_EDGE;
		samplerInfo.addressModeW = VK_SAMPLER_ADDRESS_MODE_CLAMP_TO_EDGE;
		samplerInfo.maxAnisotropy = 1.0f;
		samplerInfo.borderColor = VK_BORDER_COLOR_INT_OPAQUE_BLACK;
		if (vkCreateSampler(vkCtx.device, &samplerInfo, nullptr, &vkCtx.megatexSampler) != VK_SUCCESS)
			return false;

		vkCtx.megatexImageLayout = VK_IMAGE_LAYOUT_UNDEFINED;
		vkCtx.raycastDescriptorsDirty = true;
	}

	if (vkCtx.megatexImageLayout != VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL)
	{
		if (!transitionMegatexImageLayout(vkCtx.megatexImage,
			tileCount,
			vkCtx.megatexImageLayout,
			VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL,
			0,
			VK_ACCESS_TRANSFER_WRITE_BIT,
			vkCtx.megatexImageLayout == VK_IMAGE_LAYOUT_UNDEFINED ? VK_PIPELINE_STAGE_TOP_OF_PIPE_BIT : VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT,
			VK_PIPELINE_STAGE_TRANSFER_BIT))
			return false;
		vkCtx.megatexImageLayout = VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL;
	}

	const size_t bytesPerTile = static_cast<size_t>(tileWidth) * static_cast<size_t>(tileHeight) * 4ull;
	const size_t targetBatchBytes = 64ull * 1024ull * 1024ull;
	const uint32_t batchLayers = std::max(1u, std::min(tileCount,
		static_cast<uint32_t>(std::max<size_t>(1, targetBatchBytes / std::max<size_t>(1, bytesPerTile)))));
	const size_t stagingBytes = bytesPerTile * static_cast<size_t>(batchLayers);

	VkBuffer stagingBuffer = VK_NULL_HANDLE;
	VkDeviceMemory stagingMemory = VK_NULL_HANDLE;
	void *mappedStaging = nullptr;
	if (!createBuffer(static_cast<VkDeviceSize>(stagingBytes),
		VK_BUFFER_USAGE_TRANSFER_SRC_BIT,
		VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT | VK_MEMORY_PROPERTY_HOST_COHERENT_BIT,
		stagingBuffer,
		stagingMemory))
		return false;
	if (vkMapMemory(vkCtx.device, stagingMemory, 0, static_cast<VkDeviceSize>(stagingBytes), 0, &mappedStaging) != VK_SUCCESS)
	{
		vkDestroyBuffer(vkCtx.device, stagingBuffer, nullptr);
		vkFreeMemory(vkCtx.device, stagingMemory, nullptr);
		return false;
	}

	bool uploadOk = true;
	for (uint32_t baseLayer = 0; baseLayer < tileCount; baseLayer += batchLayers)
	{
		const uint32_t layerBatchCount = std::min(batchLayers, tileCount - baseLayer);
		std::memset(mappedStaging, 0, bytesPerTile * static_cast<size_t>(layerBatchCount));
		if (hasMegatex)
		{
			for (uint32_t i = 0; i < layerBatchCount; ++i)
			{
				const auto &tile = megatex.tileCache[static_cast<size_t>(baseLayer + i)];
				const size_t copySize = std::min(bytesPerTile, tile.size());
				if (copySize > 0)
					std::memcpy(static_cast<uint8_t *>(mappedStaging) + bytesPerTile * static_cast<size_t>(i), tile.data(), copySize);
			}
		}

		if (!copyMegatexBatchToImage(stagingBuffer, baseLayer, layerBatchCount, tileWidth, tileHeight, bytesPerTile))
		{
			uploadOk = false;
			break;
		}
	}

	vkUnmapMemory(vkCtx.device, stagingMemory);
	vkDestroyBuffer(vkCtx.device, stagingBuffer, nullptr);
	vkFreeMemory(vkCtx.device, stagingMemory, nullptr);
	if (!uploadOk)
		return false;

	if (!transitionMegatexImageLayout(vkCtx.megatexImage,
		tileCount,
		VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL,
		VK_IMAGE_LAYOUT_SHADER_READ_ONLY_OPTIMAL,
		VK_ACCESS_TRANSFER_WRITE_BIT,
		VK_ACCESS_SHADER_READ_BIT,
		VK_PIPELINE_STAGE_TRANSFER_BIT,
		VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT))
		return false;

	vkCtx.megatexImageLayout = VK_IMAGE_LAYOUT_SHADER_READ_ONLY_OPTIMAL;
	vkCtx.megatexTileWidth = tileWidth;
	vkCtx.megatexTileHeight = tileHeight;
	vkCtx.megatexLayerCount = tileCount;
	vkCtx.lastMegatexVersion = targetVersion;
	vkCtx.hasMegatexVersion = true;
	return true;
}

static void updateRaycastDescriptors()
{
	if (!vkCtx.raycastDescriptorsDirty)
		return;
	if (!vkCtx.raycastDescSet || !vkCtx.tileMapBuffer || !vkCtx.raycastImageView || !vkCtx.raycastDepthImageView ||
		!vkCtx.edgeOffsetsBuffer || !vkCtx.megatexImageView || !vkCtx.megatexSampler)
		return;

	VkDescriptorBufferInfo tileBuf{};
	tileBuf.buffer = vkCtx.tileMapBuffer;
	tileBuf.offset = 0;
	tileBuf.range = vkCtx.tileMapBufferSize;

	VkDescriptorImageInfo outImg{};
	outImg.imageView = vkCtx.raycastImageView;
	outImg.imageLayout = VK_IMAGE_LAYOUT_GENERAL;

	VkDescriptorBufferInfo offsetsBuf{};
	offsetsBuf.buffer = vkCtx.edgeOffsetsBuffer;
	offsetsBuf.offset = 0;
	offsetsBuf.range = vkCtx.edgeOffsetsBufferSize;

	VkDescriptorImageInfo megatexImg{};
	megatexImg.sampler = vkCtx.megatexSampler;
	megatexImg.imageView = vkCtx.megatexImageView;
	megatexImg.imageLayout = VK_IMAGE_LAYOUT_SHADER_READ_ONLY_OPTIMAL;

	VkDescriptorImageInfo depthImg{};
	depthImg.imageView = vkCtx.raycastDepthImageView;
	depthImg.imageLayout = VK_IMAGE_LAYOUT_GENERAL;

	VkWriteDescriptorSet writes[5]{};
	writes[0].sType = VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET;
	writes[0].dstSet = vkCtx.raycastDescSet;
	writes[0].dstBinding = 0;
	writes[0].descriptorType = VK_DESCRIPTOR_TYPE_STORAGE_BUFFER;
	writes[0].descriptorCount = 1;
	writes[0].pBufferInfo = &tileBuf;

	writes[1].sType = VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET;
	writes[1].dstSet = vkCtx.raycastDescSet;
	writes[1].dstBinding = 1;
	writes[1].descriptorType = VK_DESCRIPTOR_TYPE_STORAGE_IMAGE;
	writes[1].descriptorCount = 1;
	writes[1].pImageInfo = &outImg;

	writes[2].sType = VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET;
	writes[2].dstSet = vkCtx.raycastDescSet;
	writes[2].dstBinding = 2;
	writes[2].descriptorType = VK_DESCRIPTOR_TYPE_STORAGE_BUFFER;
	writes[2].descriptorCount = 1;
	writes[2].pBufferInfo = &offsetsBuf;

	writes[3].sType = VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET;
	writes[3].dstSet = vkCtx.raycastDescSet;
	writes[3].dstBinding = 3;
	writes[3].descriptorType = VK_DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER;
	writes[3].descriptorCount = 1;
	writes[3].pImageInfo = &megatexImg;

	writes[4].sType = VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET;
	writes[4].dstSet = vkCtx.raycastDescSet;
	writes[4].dstBinding = 4;
	writes[4].descriptorType = VK_DESCRIPTOR_TYPE_STORAGE_IMAGE;
	writes[4].descriptorCount = 1;
	writes[4].pImageInfo = &depthImg;

	vkUpdateDescriptorSets(vkCtx.device, 5, writes, 0, nullptr);
	vkCtx.raycastDescriptorsDirty = false;
}

static bool ensureRaycastPipeline()
{
	if (vkCtx.raycastPipeline)
		return true;

	VkDescriptorSetLayoutBinding bindings[5]{};
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
	bindings[3].binding = 3;
	bindings[3].descriptorType = VK_DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER;
	bindings[3].descriptorCount = 1;
	bindings[3].stageFlags = VK_SHADER_STAGE_COMPUTE_BIT;
	bindings[4].binding = 4;
	bindings[4].descriptorType = VK_DESCRIPTOR_TYPE_STORAGE_IMAGE;
	bindings[4].descriptorCount = 1;
	bindings[4].stageFlags = VK_SHADER_STAGE_COMPUTE_BIT;

	VkDescriptorSetLayoutCreateInfo dslInfo{};
	dslInfo.sType = VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO;
	dslInfo.bindingCount = 5;
	dslInfo.pBindings = bindings;
	if (vkCreateDescriptorSetLayout(vkCtx.device, &dslInfo, nullptr, &vkCtx.raycastDescSetLayout) != VK_SUCCESS)
		return false;

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
		float wallHeightUnits;
		uint32_t useMegatexture;
		float mapOverlayZoom;
		uint32_t ceilingColorPacked;
		uint32_t floorColorPacked;
		uint32_t wallColorPacked;
		uint32_t wallLineColorPacked;
		uint32_t renderFlags;
		float ambientLight;
		float lightX;
		float lightY;
		float lightZ;
		uint32_t reserved0;
		uint32_t reserved1;
		uint32_t reserved2;
	};
	static_assert(sizeof(RaycastConstants) == 112, "RaycastConstants must match shader push constant size");

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
	if (vkCreatePipelineLayout(vkCtx.device, &plInfo, nullptr, &vkCtx.raycastPipelineLayout) != VK_SUCCESS)
		return false;

	VkShaderModuleCreateInfo smInfo{};
	smInfo.sType = VK_STRUCTURE_TYPE_SHADER_MODULE_CREATE_INFO;
	smInfo.codeSize = shaders_vk_raycast_spv_len;
	smInfo.pCode = reinterpret_cast<const uint32_t *>(shaders_vk_raycast_spv);
	VkShaderModule module = VK_NULL_HANDLE;
	if (vkCreateShaderModule(vkCtx.device, &smInfo, nullptr, &module) != VK_SUCCESS)
		return false;

	VkPipelineShaderStageCreateInfo stageInfo{};
	stageInfo.sType = VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO;
	stageInfo.stage = VK_SHADER_STAGE_COMPUTE_BIT;
	stageInfo.module = module;
	stageInfo.pName = "main";

	VkComputePipelineCreateInfo cpInfo{};
	cpInfo.sType = VK_STRUCTURE_TYPE_COMPUTE_PIPELINE_CREATE_INFO;
	cpInfo.stage = stageInfo;
	cpInfo.layout = vkCtx.raycastPipelineLayout;
	VkResult cpRes = vkCreateComputePipelines(vkCtx.device, VK_NULL_HANDLE, 1, &cpInfo, nullptr, &vkCtx.raycastPipeline);
	vkDestroyShaderModule(vkCtx.device, module, nullptr);
	if (cpRes != VK_SUCCESS)
		return false;

	VkDescriptorPoolSize poolSizes[3]{};
	poolSizes[0].type = VK_DESCRIPTOR_TYPE_STORAGE_BUFFER;
	poolSizes[0].descriptorCount = 2;
	poolSizes[1].type = VK_DESCRIPTOR_TYPE_STORAGE_IMAGE;
	poolSizes[1].descriptorCount = 2;
	poolSizes[2].type = VK_DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER;
	poolSizes[2].descriptorCount = 1;

	VkDescriptorPoolCreateInfo dpInfo{};
	dpInfo.sType = VK_STRUCTURE_TYPE_DESCRIPTOR_POOL_CREATE_INFO;
	dpInfo.maxSets = 1;
	dpInfo.poolSizeCount = 3;
	dpInfo.pPoolSizes = poolSizes;
	if (vkCreateDescriptorPool(vkCtx.device, &dpInfo, nullptr, &vkCtx.raycastDescPool) != VK_SUCCESS)
		return false;

	VkDescriptorSetAllocateInfo allocInfo{};
	allocInfo.sType = VK_STRUCTURE_TYPE_DESCRIPTOR_SET_ALLOCATE_INFO;
	allocInfo.descriptorPool = vkCtx.raycastDescPool;
	allocInfo.descriptorSetCount = 1;
	allocInfo.pSetLayouts = &vkCtx.raycastDescSetLayout;
	if (vkAllocateDescriptorSets(vkCtx.device, &allocInfo, &vkCtx.raycastDescSet) != VK_SUCCESS)
		return false;

	vkCtx.raycastDescriptorsDirty = true;
	updateRaycastDescriptors();
	return true;
}

struct RaycastModelConstants
{
	float player[4];
	float screen[4];
	float tuning[4];
	float light[4];
};

static bool ensureDeviceRaycastBuffer(VkBuffer &buffer,
	VkDeviceMemory &memory,
	VkDeviceSize &capacity,
	VkDeviceSize required,
	VkBufferUsageFlags usage)
{
	if (required == 0)
		return false;
	if (buffer && memory && capacity >= required)
		return true;

	if (buffer)
	{
		vkQueueWaitIdle(vkCtx.graphicsQueue);
		vkDestroyBuffer(vkCtx.device, buffer, nullptr);
		buffer = VK_NULL_HANDLE;
	}
	if (memory)
	{
		vkFreeMemory(vkCtx.device, memory, nullptr);
		memory = VK_NULL_HANDLE;
	}

	if (!createBuffer(required,
		usage | VK_BUFFER_USAGE_TRANSFER_DST_BIT,
		VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT,
		buffer,
		memory))
		return false;

	capacity = required;
	return true;
}

static bool uploadRaycastModelGeometry()
{
	const uint64_t geometryVersion = getRaycastModelGeometryVersion();
	if (geometryVersion != 0 && geometryVersion == vkCtx.raycastModelGeometryVersion &&
		vkCtx.raycastModelVertexBuffer && vkCtx.raycastModelIndexBuffer &&
		vkCtx.raycastModelIndexCount > 0)
		return true;

	static std::vector<RaycastGpuModelVertex> vertices;
	static std::vector<uint32_t> indices;
	if (!buildRaycastGpuModelGeometry(vertices, indices))
	{
		vkCtx.raycastModelIndexCount = 0;
		return false;
	}

	const VkDeviceSize vertexBytes = static_cast<VkDeviceSize>(vertices.size() * sizeof(RaycastGpuModelVertex));
	const VkDeviceSize indexBytes = static_cast<VkDeviceSize>(indices.size() * sizeof(uint32_t));
	if (!ensureDeviceRaycastBuffer(vkCtx.raycastModelVertexBuffer,
		vkCtx.raycastModelVertexBufferMemory,
		vkCtx.raycastModelVertexBufferSize,
		vertexBytes,
		VK_BUFFER_USAGE_VERTEX_BUFFER_BIT))
		return false;
	if (!ensureDeviceRaycastBuffer(vkCtx.raycastModelIndexBuffer,
		vkCtx.raycastModelIndexBufferMemory,
		vkCtx.raycastModelIndexBufferSize,
		indexBytes,
		VK_BUFFER_USAGE_INDEX_BUFFER_BIT))
		return false;

	const VkDeviceSize stagingBytes = vertexBytes + indexBytes;
	VkBuffer stagingBuffer = VK_NULL_HANDLE;
	VkDeviceMemory stagingMemory = VK_NULL_HANDLE;
	if (!createBuffer(stagingBytes,
		VK_BUFFER_USAGE_TRANSFER_SRC_BIT,
		VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT | VK_MEMORY_PROPERTY_HOST_COHERENT_BIT,
		stagingBuffer,
		stagingMemory))
		return false;

	void* mapped = nullptr;
	if (vkMapMemory(vkCtx.device, stagingMemory, 0, stagingBytes, 0, &mapped) != VK_SUCCESS)
	{
		vkDestroyBuffer(vkCtx.device, stagingBuffer, nullptr);
		vkFreeMemory(vkCtx.device, stagingMemory, nullptr);
		return false;
	}
	std::memcpy(mapped, vertices.data(), static_cast<size_t>(vertexBytes));
	std::memcpy(static_cast<uint8_t*>(mapped) + vertexBytes, indices.data(), static_cast<size_t>(indexBytes));
	vkUnmapMemory(vkCtx.device, stagingMemory);

	VkCommandBuffer uploadCommands = VK_NULL_HANDLE;
	bool uploaded = beginSingleUseCommandBuffer(uploadCommands);
	if (uploaded)
	{
		VkBufferCopy vertexCopy{0, 0, vertexBytes};
		VkBufferCopy indexCopy{vertexBytes, 0, indexBytes};
		vkCmdCopyBuffer(uploadCommands, stagingBuffer, vkCtx.raycastModelVertexBuffer, 1, &vertexCopy);
		vkCmdCopyBuffer(uploadCommands, stagingBuffer, vkCtx.raycastModelIndexBuffer, 1, &indexCopy);
		uploaded = submitSingleUseCommandBuffer(uploadCommands);
	}
	vkDestroyBuffer(vkCtx.device, stagingBuffer, nullptr);
	vkFreeMemory(vkCtx.device, stagingMemory, nullptr);
	if (!uploaded)
		return false;

	vkCtx.raycastModelIndexCount = static_cast<uint32_t>(indices.size());
	vkCtx.raycastModelGeometryVersion = geometryVersion;
	return vkCtx.raycastModelIndexCount > 0;
}

static void updateRaycastModelDescriptors()
{
	if (!vkCtx.raycastModelDescriptorsDirty)
		return;
	if (!vkCtx.raycastModelDescSet || !vkCtx.raycastImageView || !vkCtx.raycastDepthImageView)
		return;

	VkDescriptorImageInfo outImg{};
	outImg.imageView = vkCtx.raycastImageView;
	outImg.imageLayout = VK_IMAGE_LAYOUT_GENERAL;

	VkDescriptorImageInfo depthImg{};
	depthImg.imageView = vkCtx.raycastDepthImageView;
	depthImg.imageLayout = VK_IMAGE_LAYOUT_GENERAL;

	VkWriteDescriptorSet writes[2]{};
	writes[0].sType = VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET;
	writes[0].dstSet = vkCtx.raycastModelDescSet;
	writes[0].dstBinding = 0;
	writes[0].descriptorType = VK_DESCRIPTOR_TYPE_STORAGE_IMAGE;
	writes[0].descriptorCount = 1;
	writes[0].pImageInfo = &outImg;
	writes[1].sType = VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET;
	writes[1].dstSet = vkCtx.raycastModelDescSet;
	writes[1].dstBinding = 1;
	writes[1].descriptorType = VK_DESCRIPTOR_TYPE_STORAGE_IMAGE;
	writes[1].descriptorCount = 1;
	writes[1].pImageInfo = &depthImg;
	vkUpdateDescriptorSets(vkCtx.device, 2, writes, 0, nullptr);
	vkCtx.raycastModelDescriptorsDirty = false;
}

static bool ensureRaycastModelFramebuffer(uint32_t width, uint32_t height)
{
	if (vkCtx.raycastModelFramebuffer)
		return true;
	if (!vkCtx.raycastModelRenderPass)
		return false;

	VkFramebufferCreateInfo fbInfo{};
	fbInfo.sType = VK_STRUCTURE_TYPE_FRAMEBUFFER_CREATE_INFO;
	fbInfo.renderPass = vkCtx.raycastModelRenderPass;
	fbInfo.attachmentCount = 0;
	fbInfo.width = width;
	fbInfo.height = height;
	fbInfo.layers = 1;
	return vkCreateFramebuffer(vkCtx.device, &fbInfo, nullptr, &vkCtx.raycastModelFramebuffer) == VK_SUCCESS;
}

static bool ensureRaycastModelPipeline()
{
	if (vkCtx.raycastModelPipeline)
		return true;
	if (!g_fragmentStoresAndAtomicsEnabled)
		return false;

	VkDescriptorSetLayoutBinding bindings[2]{};
	bindings[0].binding = 0;
	bindings[0].descriptorType = VK_DESCRIPTOR_TYPE_STORAGE_IMAGE;
	bindings[0].descriptorCount = 1;
	bindings[0].stageFlags = VK_SHADER_STAGE_FRAGMENT_BIT;
	bindings[1].binding = 1;
	bindings[1].descriptorType = VK_DESCRIPTOR_TYPE_STORAGE_IMAGE;
	bindings[1].descriptorCount = 1;
	bindings[1].stageFlags = VK_SHADER_STAGE_FRAGMENT_BIT;

	VkDescriptorSetLayoutCreateInfo dslInfo{};
	dslInfo.sType = VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO;
	dslInfo.bindingCount = 2;
	dslInfo.pBindings = bindings;
	if (vkCreateDescriptorSetLayout(vkCtx.device, &dslInfo, nullptr, &vkCtx.raycastModelDescSetLayout) != VK_SUCCESS)
		return false;

	VkPushConstantRange pcRange{};
	pcRange.stageFlags = VK_SHADER_STAGE_VERTEX_BIT | VK_SHADER_STAGE_FRAGMENT_BIT;
	pcRange.offset = 0;
	pcRange.size = sizeof(RaycastModelConstants);

	VkPipelineLayoutCreateInfo plInfo{};
	plInfo.sType = VK_STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO;
	plInfo.setLayoutCount = 1;
	plInfo.pSetLayouts = &vkCtx.raycastModelDescSetLayout;
	plInfo.pushConstantRangeCount = 1;
	plInfo.pPushConstantRanges = &pcRange;
	if (vkCreatePipelineLayout(vkCtx.device, &plInfo, nullptr, &vkCtx.raycastModelPipelineLayout) != VK_SUCCESS)
		return false;

	VkSubpassDescription subpass{};
	subpass.pipelineBindPoint = VK_PIPELINE_BIND_POINT_GRAPHICS;
	VkRenderPassCreateInfo rpInfo{};
	rpInfo.sType = VK_STRUCTURE_TYPE_RENDER_PASS_CREATE_INFO;
	rpInfo.subpassCount = 1;
	rpInfo.pSubpasses = &subpass;
	if (vkCreateRenderPass(vkCtx.device, &rpInfo, nullptr, &vkCtx.raycastModelRenderPass) != VK_SUCCESS)
		return false;

	auto createShaderModule = [](const unsigned char *bytes, unsigned int len, VkShaderModule &module) {
		VkShaderModuleCreateInfo smInfo{};
		smInfo.sType = VK_STRUCTURE_TYPE_SHADER_MODULE_CREATE_INFO;
		smInfo.codeSize = len;
		smInfo.pCode = reinterpret_cast<const uint32_t *>(bytes);
		return vkCreateShaderModule(vkCtx.device, &smInfo, nullptr, &module) == VK_SUCCESS;
	};

	VkShaderModule vertModule = VK_NULL_HANDLE;
	VkShaderModule fragModule = VK_NULL_HANDLE;
	if (!createShaderModule(shaders_vk_raycast_model_vert_spv, shaders_vk_raycast_model_vert_spv_len, vertModule) ||
		!createShaderModule(shaders_vk_raycast_model_frag_spv, shaders_vk_raycast_model_frag_spv_len, fragModule))
	{
		if (vertModule) vkDestroyShaderModule(vkCtx.device, vertModule, nullptr);
		if (fragModule) vkDestroyShaderModule(vkCtx.device, fragModule, nullptr);
		return false;
	}

	VkPipelineShaderStageCreateInfo stages[2]{};
	stages[0].sType = VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO;
	stages[0].stage = VK_SHADER_STAGE_VERTEX_BIT;
	stages[0].module = vertModule;
	stages[0].pName = "main";
	stages[1].sType = VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO;
	stages[1].stage = VK_SHADER_STAGE_FRAGMENT_BIT;
	stages[1].module = fragModule;
	stages[1].pName = "main";

	VkVertexInputBindingDescription binding{};
	binding.binding = 0;
	binding.stride = sizeof(RaycastGpuModelVertex);
	binding.inputRate = VK_VERTEX_INPUT_RATE_VERTEX;
	VkVertexInputAttributeDescription attributes[2]{};
	attributes[0].location = 0;
	attributes[0].binding = 0;
	attributes[0].format = VK_FORMAT_R32G32B32_SFLOAT;
	attributes[0].offset = offsetof(RaycastGpuModelVertex, x);
	attributes[1].location = 1;
	attributes[1].binding = 0;
	attributes[1].format = VK_FORMAT_R32G32B32_SFLOAT;
	attributes[1].offset = offsetof(RaycastGpuModelVertex, r);
	VkVertexInputAttributeDescription modelAttributes[3]{};
	modelAttributes[0] = attributes[0];
	modelAttributes[1].location = 1;
	modelAttributes[1].binding = 0;
	modelAttributes[1].format = VK_FORMAT_R32G32B32_SFLOAT;
	modelAttributes[1].offset = offsetof(RaycastGpuModelVertex, nx);
	modelAttributes[2].location = 2;
	modelAttributes[2].binding = 0;
	modelAttributes[2].format = VK_FORMAT_R32G32B32_SFLOAT;
	modelAttributes[2].offset = offsetof(RaycastGpuModelVertex, r);

	VkPipelineVertexInputStateCreateInfo vertexInput{};
	vertexInput.sType = VK_STRUCTURE_TYPE_PIPELINE_VERTEX_INPUT_STATE_CREATE_INFO;
	vertexInput.vertexBindingDescriptionCount = 1;
	vertexInput.pVertexBindingDescriptions = &binding;
	vertexInput.vertexAttributeDescriptionCount = 3;
	vertexInput.pVertexAttributeDescriptions = modelAttributes;

	VkPipelineInputAssemblyStateCreateInfo inputAssembly{};
	inputAssembly.sType = VK_STRUCTURE_TYPE_PIPELINE_INPUT_ASSEMBLY_STATE_CREATE_INFO;
	inputAssembly.topology = VK_PRIMITIVE_TOPOLOGY_TRIANGLE_LIST;

	VkPipelineViewportStateCreateInfo viewportState{};
	viewportState.sType = VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_STATE_CREATE_INFO;
	viewportState.viewportCount = 1;
	viewportState.scissorCount = 1;

	VkPipelineRasterizationStateCreateInfo raster{};
	raster.sType = VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_CREATE_INFO;
	raster.polygonMode = VK_POLYGON_MODE_FILL;
	raster.cullMode = VK_CULL_MODE_NONE;
	raster.frontFace = VK_FRONT_FACE_COUNTER_CLOCKWISE;
	raster.lineWidth = 1.0f;

	VkPipelineMultisampleStateCreateInfo multisample{};
	multisample.sType = VK_STRUCTURE_TYPE_PIPELINE_MULTISAMPLE_STATE_CREATE_INFO;
	multisample.rasterizationSamples = VK_SAMPLE_COUNT_1_BIT;

	VkPipelineColorBlendStateCreateInfo colorBlend{};
	colorBlend.sType = VK_STRUCTURE_TYPE_PIPELINE_COLOR_BLEND_STATE_CREATE_INFO;
	colorBlend.attachmentCount = 0;

	VkDynamicState dynamicStates[2] = {VK_DYNAMIC_STATE_VIEWPORT, VK_DYNAMIC_STATE_SCISSOR};
	VkPipelineDynamicStateCreateInfo dynamicState{};
	dynamicState.sType = VK_STRUCTURE_TYPE_PIPELINE_DYNAMIC_STATE_CREATE_INFO;
	dynamicState.dynamicStateCount = 2;
	dynamicState.pDynamicStates = dynamicStates;

	VkGraphicsPipelineCreateInfo pipeInfo{};
	pipeInfo.sType = VK_STRUCTURE_TYPE_GRAPHICS_PIPELINE_CREATE_INFO;
	pipeInfo.stageCount = 2;
	pipeInfo.pStages = stages;
	pipeInfo.pVertexInputState = &vertexInput;
	pipeInfo.pInputAssemblyState = &inputAssembly;
	pipeInfo.pViewportState = &viewportState;
	pipeInfo.pRasterizationState = &raster;
	pipeInfo.pMultisampleState = &multisample;
	pipeInfo.pColorBlendState = &colorBlend;
	pipeInfo.pDynamicState = &dynamicState;
	pipeInfo.layout = vkCtx.raycastModelPipelineLayout;
	pipeInfo.renderPass = vkCtx.raycastModelRenderPass;

	VkResult pipelineRes = vkCreateGraphicsPipelines(vkCtx.device, VK_NULL_HANDLE, 1, &pipeInfo, nullptr, &vkCtx.raycastModelPipeline);
	vkDestroyShaderModule(vkCtx.device, vertModule, nullptr);
	vkDestroyShaderModule(vkCtx.device, fragModule, nullptr);
	if (pipelineRes != VK_SUCCESS)
		return false;

	VkDescriptorPoolSize poolSize{};
	poolSize.type = VK_DESCRIPTOR_TYPE_STORAGE_IMAGE;
	poolSize.descriptorCount = 2;
	VkDescriptorPoolCreateInfo dpInfo{};
	dpInfo.sType = VK_STRUCTURE_TYPE_DESCRIPTOR_POOL_CREATE_INFO;
	dpInfo.maxSets = 1;
	dpInfo.poolSizeCount = 1;
	dpInfo.pPoolSizes = &poolSize;
	if (vkCreateDescriptorPool(vkCtx.device, &dpInfo, nullptr, &vkCtx.raycastModelDescPool) != VK_SUCCESS)
		return false;

	VkDescriptorSetAllocateInfo allocInfo{};
	allocInfo.sType = VK_STRUCTURE_TYPE_DESCRIPTOR_SET_ALLOCATE_INFO;
	allocInfo.descriptorPool = vkCtx.raycastModelDescPool;
	allocInfo.descriptorSetCount = 1;
	allocInfo.pSetLayouts = &vkCtx.raycastModelDescSetLayout;
	if (vkAllocateDescriptorSets(vkCtx.device, &allocInfo, &vkCtx.raycastModelDescSet) != VK_SUCCESS)
		return false;

	vkCtx.raycastModelDescriptorsDirty = true;
	updateRaycastModelDescriptors();
	return true;
}

static void recordRaycastModelPass(VkCommandBuffer cmdBuf,
	uint32_t width,
	uint32_t height,
	const RaycastModelConstants &constants)
{
	if (!vkCtx.raycastModelPipeline || !vkCtx.raycastModelFramebuffer ||
		!vkCtx.raycastModelVertexBuffer || !vkCtx.raycastModelIndexBuffer ||
		!vkCtx.raycastModelDescSet || vkCtx.raycastModelIndexCount == 0)
		return;

	VkRenderPassBeginInfo rpBegin{};
	rpBegin.sType = VK_STRUCTURE_TYPE_RENDER_PASS_BEGIN_INFO;
	rpBegin.renderPass = vkCtx.raycastModelRenderPass;
	rpBegin.framebuffer = vkCtx.raycastModelFramebuffer;
	rpBegin.renderArea.extent = {width, height};
	vkCmdBeginRenderPass(cmdBuf, &rpBegin, VK_SUBPASS_CONTENTS_INLINE);

	VkViewport viewport{};
	viewport.x = 0.0f;
	viewport.y = 0.0f;
	viewport.width = static_cast<float>(width);
	viewport.height = static_cast<float>(height);
	viewport.minDepth = 0.0f;
	viewport.maxDepth = 1.0f;
	vkCmdSetViewport(cmdBuf, 0, 1, &viewport);

	VkRect2D scissor{};
	scissor.extent = {width, height};
	vkCmdSetScissor(cmdBuf, 0, 1, &scissor);

	vkCmdBindPipeline(cmdBuf, VK_PIPELINE_BIND_POINT_GRAPHICS, vkCtx.raycastModelPipeline);
	vkCmdBindDescriptorSets(cmdBuf,
		VK_PIPELINE_BIND_POINT_GRAPHICS,
		vkCtx.raycastModelPipelineLayout,
		0,
		1,
		&vkCtx.raycastModelDescSet,
		0,
		nullptr);
	VkDeviceSize vertexOffset = 0;
	vkCmdBindVertexBuffers(cmdBuf, 0, 1, &vkCtx.raycastModelVertexBuffer, &vertexOffset);
	vkCmdBindIndexBuffer(cmdBuf, vkCtx.raycastModelIndexBuffer, 0, VK_INDEX_TYPE_UINT32);
	vkCmdPushConstants(cmdBuf,
		vkCtx.raycastModelPipelineLayout,
		VK_SHADER_STAGE_VERTEX_BIT | VK_SHADER_STAGE_FRAGMENT_BIT,
		0,
		sizeof(constants),
		&constants);
	vkCmdDrawIndexed(cmdBuf, vkCtx.raycastModelIndexCount, 1, 0, 0, 0);
	vkCmdEndRenderPass(cmdBuf);
}

static void renderFrameRaycastVkCPU()
{
	const auto &tileMap = *state.raycast.map;
	const RaycastPlayer &ply = state.raycast.player;

	// Wait for previous frame's GPU blit to finish before writing to the mapped texture
	vkWaitForFences(vkCtx.device, 1, &vkCtx.inFlightFence, VK_TRUE, UINT64_MAX);

	uint8_t *dst = static_cast<uint8_t *>(vkCtx.mappedTextureData);
	size_t pitch = vkCtx.textureRowPitch;

	renderRaycastView(tileMap, ply, dst, pitch, state.ui.width, state.ui.height);
	presentFrame();
}

static void renderFrameRaycastVkGPU()
{
	const auto &tileMap = *state.raycast.map;
	const RaycastPlayer &ply = state.raycast.player;
	const uint32_t screenWidth = static_cast<uint32_t>(state.ui.width);
	const uint32_t screenHeight = static_cast<uint32_t>(state.ui.height);
	if (raycastMapHasArchitecturalFeatures(tileMap))
	{
		renderFrameRaycastVkCPU();
		return;
	}

	prepareRaycastFrameConfig();
	const RaycastFrameConfig frameConfig = getRaycastFrameConfig();
	updateFogOfWar();

	if (!ensureRaycastPipeline())
	{
		renderFrameRaycastVkCPU();
		return;
	}
	if (!ensureRaycastImage(screenWidth, screenHeight) || !ensureRaycastDepthImage(screenWidth, screenHeight))
	{
		renderFrameRaycastVkCPU();
		return;
	}
	if (!ensureTileMapBuffer(tileMap) || !ensureEdgeOffsetsBuffer(tileMap) || !ensureMegatexImage())
	{
		renderFrameRaycastVkCPU();
		return;
	}
	updateRaycastDescriptors();
	refreshRaycastModelInstances();

	const bool drawModels = raycastHasActiveModels();
	if (drawModels)
	{
		if (!ensureRaycastModelPipeline() ||
			!ensureRaycastModelFramebuffer(screenWidth, screenHeight) ||
			!uploadRaycastModelGeometry())
		{
			renderFrameRaycastVkCPU();
			return;
		}
		updateRaycastModelDescriptors();
	}

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
		float wallHeightUnits;
		uint32_t useMegatexture;
		float mapOverlayZoom;
		uint32_t ceilingColorPacked;
		uint32_t floorColorPacked;
		uint32_t wallColorPacked;
		uint32_t wallLineColorPacked;
		uint32_t renderFlags;
		float ambientLight;
		float lightX;
		float lightY;
		float lightZ;
		uint32_t reserved0;
		uint32_t reserved1;
		uint32_t reserved2;
	};
	static_assert(sizeof(RaycastConstants) == 112, "RaycastConstants must match shader push constant size");
	RaycastConstants constants{};
	constants.playerX = ply.x;
	constants.playerY = ply.y;
	constants.playerAngle = ply.angle;
	constants.playerFOV = ply.fov;
	constants.screenWidth = screenWidth;
	constants.screenHeight = screenHeight;
	constants.mapWidth = static_cast<uint32_t>(tileMap[0].size());
	constants.mapHeight = static_cast<uint32_t>(tileMap.size());
	constants.visualScale = frameConfig.visualScale;
	constants.torchRange = frameConfig.baseTorchRange * constants.visualScale;
	constants.falloffMul = frameConfig.falloffMul;
	constants.fovMul = frameConfig.fovMul;
	uint32_t supersample = static_cast<uint32_t>(std::max(1, frameConfig.supersample));
	const uint64_t pixelCount = static_cast<uint64_t>(screenWidth) * static_cast<uint64_t>(screenHeight);
	if (pixelCount >= kPixelCount1080p)
		supersample = std::min(supersample, 1u);
	else if (pixelCount >= kPixelCount720p)
		supersample = std::min(supersample, 2u);
	constants.supersample = supersample;
	constants.wallHeightUnits = frameConfig.wallHeightUnits;
	constants.useMegatexture = state.raycast.useMegatexture ? 1u : 0u;
	constants.mapOverlayZoom = state.raycast.showMapOverlay ? state.raycast.mapOverlayZoom : 0.0f;
	constants.ceilingColorPacked = packRaycastColor(frameConfig.ceilingColor);
	constants.floorColorPacked = packRaycastColor(frameConfig.floorColor);
	constants.wallColorPacked = packRaycastColor(frameConfig.wallColor);
	constants.wallLineColorPacked = packRaycastColor(frameConfig.wallLineColor);
	constants.renderFlags = 0u;
	constants.ambientLight = frameConfig.ambientLight;
	constants.lightX = ply.x;
	constants.lightY = ply.y;
	constants.lightZ = 0.55f;
	constants.reserved1 = static_cast<uint32_t>(std::clamp(
		static_cast<int>(std::lround(state.frameTiming.measuredFPS)), 0, 999));
	if (frameConfig.flatCeiling)
		constants.renderFlags |= 0x1u;
	if (frameConfig.flatFloor)
		constants.renderFlags |= 0x2u;
	if (raycastMapHasSolidBlackWalls(tileMap))
	{
		constants.ceilingColorPacked = 0u;
		constants.wallColorPacked = 0u;
		constants.wallLineColorPacked = 0u;
		constants.renderFlags |= 0x1u;
	}
	if (frameConfig.blackBoundaryWalls)
		constants.renderFlags |= 0x8u;
	if (frameConfig.modelLight && !state.raycast.models.empty())
	{
		const RaycastModelInstance &lightModel = state.raycast.models.front();
		constants.renderFlags |= 0x4u;
		constants.lightX = lightModel.x;
		constants.lightY = lightModel.y;
		constants.lightZ = lightModel.z + frameConfig.modelLightHeight;
	}

	RaycastModelConstants modelConstants{};
	modelConstants.player[0] = ply.x;
	modelConstants.player[1] = ply.y;
	modelConstants.player[2] = ply.angle;
	modelConstants.player[3] = ply.fov;
	modelConstants.screen[0] = static_cast<float>(screenWidth);
	modelConstants.screen[1] = static_cast<float>(screenHeight);
	modelConstants.screen[2] = constants.visualScale;
	modelConstants.screen[3] = constants.torchRange;
	modelConstants.tuning[0] = constants.fovMul;
	modelConstants.tuning[1] = 0.55f;
	modelConstants.tuning[2] = 65536.0f;
	modelConstants.tuning[3] = (constants.renderFlags & 0x4u) ? 1.0f : 0.0f;
	modelConstants.light[0] = constants.lightX;
	modelConstants.light[1] = constants.lightY;
	modelConstants.light[2] = constants.lightZ;
	modelConstants.light[3] = constants.ambientLight;

	const uint32_t frameSlot = vkCtx.raycastFrameIndex % VulkanContext::kRaycastFramesInFlight;
	VkFence frameFence = vkCtx.raycastInFlightFences[frameSlot];
	VkSemaphore imageAvailable = vkCtx.raycastImageAvailableSemaphores[frameSlot];
	VkSemaphore renderFinished = vkCtx.raycastRenderFinishedSemaphores[frameSlot];
	VkCommandBuffer cmdBuf = vkCtx.raycastCommandBuffers[frameSlot];
	// Throttle only when reusing a slot from two frames ago. The CPU can build
	// the next frame while the immediately preceding GPU submission is active.
	vkWaitForFences(vkCtx.device, 1, &frameFence, VK_TRUE, UINT64_MAX);

	uint32_t imgIdx = 0;
	VkResult acquireRes = vkAcquireNextImageKHR(vkCtx.device, vkCtx.swapchain, UINT64_MAX, imageAvailable, VK_NULL_HANDLE, &imgIdx);
	if (acquireRes == VK_ERROR_OUT_OF_DATE_KHR)
	{
		recreateSwapchain(static_cast<uint32_t>(state.ui.width), static_cast<uint32_t>(state.ui.height));
		return;
	}
	if (acquireRes != VK_SUCCESS && acquireRes != VK_SUBOPTIMAL_KHR)
	{
		return;
	}
	if (cmdBuf == VK_NULL_HANDLE)
		return;
	vkResetCommandBuffer(cmdBuf, 0);

	VkCommandBufferBeginInfo beginInfo{};
	beginInfo.sType = VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO;
	beginInfo.flags = VK_COMMAND_BUFFER_USAGE_ONE_TIME_SUBMIT_BIT;
	vkBeginCommandBuffer(cmdBuf, &beginInfo);

	{
		std::array<VkImageMemoryBarrier, 2> barriers{};
		uint32_t barrierCount = 0;
		auto addGeneralBarrier = [&](VkImage image, VkImageLayout oldLayout, VkImageLayout &trackedLayout) {
			VkImageMemoryBarrier &barrier = barriers[barrierCount++];
			barrier.sType = VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER;
			barrier.oldLayout = oldLayout;
			barrier.newLayout = VK_IMAGE_LAYOUT_GENERAL;
			barrier.srcQueueFamilyIndex = VK_QUEUE_FAMILY_IGNORED;
			barrier.dstQueueFamilyIndex = VK_QUEUE_FAMILY_IGNORED;
			barrier.image = image;
			barrier.subresourceRange.aspectMask = VK_IMAGE_ASPECT_COLOR_BIT;
			barrier.subresourceRange.levelCount = 1;
			barrier.subresourceRange.layerCount = 1;
			barrier.srcAccessMask = oldLayout == VK_IMAGE_LAYOUT_UNDEFINED
				? 0
				: (VK_ACCESS_SHADER_WRITE_BIT | VK_ACCESS_TRANSFER_READ_BIT);
			barrier.dstAccessMask = VK_ACCESS_SHADER_WRITE_BIT;
			trackedLayout = VK_IMAGE_LAYOUT_GENERAL;
		};
		addGeneralBarrier(vkCtx.raycastImage, vkCtx.raycastImageLayout, vkCtx.raycastImageLayout);
		addGeneralBarrier(vkCtx.raycastDepthImage, vkCtx.raycastDepthImageLayout, vkCtx.raycastDepthImageLayout);
		if (barrierCount > 0)
		{
			vkCmdPipelineBarrier(cmdBuf,
				VK_PIPELINE_STAGE_ALL_COMMANDS_BIT,
				VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT,
				0,
				0,
				nullptr,
				0,
				nullptr,
				barrierCount,
				barriers.data());
		}
	}

	// Bind and dispatch
	vkCmdBindPipeline(cmdBuf, VK_PIPELINE_BIND_POINT_COMPUTE, vkCtx.raycastPipeline);
	vkCmdBindDescriptorSets(cmdBuf, VK_PIPELINE_BIND_POINT_COMPUTE, vkCtx.raycastPipelineLayout, 0, 1, &vkCtx.raycastDescSet, 0, nullptr);
	vkCmdPushConstants(cmdBuf, vkCtx.raycastPipelineLayout, VK_SHADER_STAGE_COMPUTE_BIT, 0, sizeof(constants), &constants);
	uint32_t dispatchX = (constants.screenWidth + 7u) / 8u;
	uint32_t dispatchY = (constants.screenHeight + 7u) / 8u;
	vkCmdDispatch(cmdBuf, dispatchX, dispatchY, 1);

	if (drawModels)
	{
		VkImageMemoryBarrier barriers[2]{};
		for (VkImageMemoryBarrier &barrier : barriers)
		{
			barrier.sType = VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER;
			barrier.oldLayout = VK_IMAGE_LAYOUT_GENERAL;
			barrier.newLayout = VK_IMAGE_LAYOUT_GENERAL;
			barrier.srcQueueFamilyIndex = VK_QUEUE_FAMILY_IGNORED;
			barrier.dstQueueFamilyIndex = VK_QUEUE_FAMILY_IGNORED;
			barrier.subresourceRange.aspectMask = VK_IMAGE_ASPECT_COLOR_BIT;
			barrier.subresourceRange.levelCount = 1;
			barrier.subresourceRange.layerCount = 1;
			barrier.srcAccessMask = VK_ACCESS_SHADER_WRITE_BIT;
			barrier.dstAccessMask = VK_ACCESS_SHADER_READ_BIT | VK_ACCESS_SHADER_WRITE_BIT;
		}
		barriers[0].image = vkCtx.raycastImage;
		barriers[1].image = vkCtx.raycastDepthImage;
		vkCmdPipelineBarrier(cmdBuf,
			VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT,
			VK_PIPELINE_STAGE_FRAGMENT_SHADER_BIT,
			0,
			0,
			nullptr,
			0,
			nullptr,
			2,
			barriers);

		recordRaycastModelPass(cmdBuf, screenWidth, screenHeight, modelConstants);
	}

	// Barrier to make the composited raycast image available for transfer read.
	{
		VkImageMemoryBarrier barrier{};
		barrier.sType = VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER;
		barrier.oldLayout = VK_IMAGE_LAYOUT_GENERAL;
		barrier.newLayout = VK_IMAGE_LAYOUT_TRANSFER_SRC_OPTIMAL;
		barrier.srcQueueFamilyIndex = VK_QUEUE_FAMILY_IGNORED;
		barrier.dstQueueFamilyIndex = VK_QUEUE_FAMILY_IGNORED;
		barrier.image = vkCtx.raycastImage;
		barrier.subresourceRange.aspectMask = VK_IMAGE_ASPECT_COLOR_BIT;
		barrier.subresourceRange.levelCount = 1;
		barrier.subresourceRange.layerCount = 1;
		barrier.srcAccessMask = VK_ACCESS_SHADER_WRITE_BIT;
		barrier.dstAccessMask = VK_ACCESS_TRANSFER_READ_BIT;
		vkCmdPipelineBarrier(cmdBuf,
			drawModels ? VK_PIPELINE_STAGE_FRAGMENT_SHADER_BIT : VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT,
			VK_PIPELINE_STAGE_TRANSFER_BIT,
			0,
			0,
			nullptr,
			0,
			nullptr,
			1,
			&barrier);
		vkCtx.raycastImageLayout = VK_IMAGE_LAYOUT_TRANSFER_SRC_OPTIMAL;
	}

	// Transition swapchain image to TRANSFER_DST
	VkImageMemoryBarrier swapBarrier{};
	swapBarrier.sType = VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER;
	swapBarrier.oldLayout = VK_IMAGE_LAYOUT_UNDEFINED;
	swapBarrier.newLayout = VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL;
	swapBarrier.srcQueueFamilyIndex = VK_QUEUE_FAMILY_IGNORED;
	swapBarrier.dstQueueFamilyIndex = VK_QUEUE_FAMILY_IGNORED;
	swapBarrier.image = vkCtx.swapchainImages[imgIdx];
	swapBarrier.subresourceRange.aspectMask = VK_IMAGE_ASPECT_COLOR_BIT;
	swapBarrier.subresourceRange.levelCount = 1;
	swapBarrier.subresourceRange.layerCount = 1;
	swapBarrier.srcAccessMask = 0;
	swapBarrier.dstAccessMask = VK_ACCESS_TRANSFER_WRITE_BIT;
	vkCmdPipelineBarrier(cmdBuf,
		VK_PIPELINE_STAGE_TOP_OF_PIPE_BIT,
		VK_PIPELINE_STAGE_TRANSFER_BIT,
		0,
		0,
		nullptr,
		0,
		nullptr,
		1,
		&swapBarrier);

	VkImageBlit blit{};
	blit.srcSubresource.aspectMask = VK_IMAGE_ASPECT_COLOR_BIT;
	blit.srcSubresource.layerCount = 1;
	blit.srcOffsets[1] = {static_cast<int32_t>(constants.screenWidth), static_cast<int32_t>(constants.screenHeight), 1};
	blit.dstSubresource.aspectMask = VK_IMAGE_ASPECT_COLOR_BIT;
	blit.dstSubresource.layerCount = 1;
	blit.dstOffsets[1] = {static_cast<int32_t>(vkCtx.swapchainExtent.width), static_cast<int32_t>(vkCtx.swapchainExtent.height), 1};

	vkCmdBlitImage(cmdBuf,
		vkCtx.raycastImage,
		VK_IMAGE_LAYOUT_TRANSFER_SRC_OPTIMAL,
		vkCtx.swapchainImages[imgIdx],
		VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL,
		1,
		&blit,
		VK_FILTER_LINEAR);

	// Transition swapchain to PRESENT
	swapBarrier.oldLayout = VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL;
	swapBarrier.newLayout = VK_IMAGE_LAYOUT_PRESENT_SRC_KHR;
	swapBarrier.srcAccessMask = VK_ACCESS_TRANSFER_WRITE_BIT;
	swapBarrier.dstAccessMask = 0;
	vkCmdPipelineBarrier(cmdBuf,
		VK_PIPELINE_STAGE_TRANSFER_BIT,
		VK_PIPELINE_STAGE_BOTTOM_OF_PIPE_BIT,
		0,
		0,
		nullptr,
		0,
		nullptr,
		1,
		&swapBarrier);

	vkEndCommandBuffer(cmdBuf);

	VkPipelineStageFlags waitStage = VK_PIPELINE_STAGE_TRANSFER_BIT;
	VkSubmitInfo submit{};
	submit.sType = VK_STRUCTURE_TYPE_SUBMIT_INFO;
	submit.waitSemaphoreCount = 1;
	submit.pWaitSemaphores = &imageAvailable;
	submit.pWaitDstStageMask = &waitStage;
	submit.commandBufferCount = 1;
	submit.pCommandBuffers = &cmdBuf;
	submit.signalSemaphoreCount = 1;
	submit.pSignalSemaphores = &renderFinished;
	vkResetFences(vkCtx.device, 1, &frameFence);
	if (vkQueueSubmit(vkCtx.graphicsQueue, 1, &submit, frameFence) != VK_SUCCESS)
		throw std::runtime_error("Failed to submit Vulkan raycast frame");

	VkPresentInfoKHR present{};
	present.sType = VK_STRUCTURE_TYPE_PRESENT_INFO_KHR;
	present.waitSemaphoreCount = 1;
	present.pWaitSemaphores = &renderFinished;
	present.swapchainCount = 1;
	present.pSwapchains = &vkCtx.swapchain;
	present.pImageIndices = &imgIdx;
	VkResult presentRes = vkQueuePresentKHR(vkCtx.graphicsQueue, &present);
	if (presentRes == VK_ERROR_OUT_OF_DATE_KHR || presentRes == VK_SUBOPTIMAL_KHR)
	{
		recreateSwapchain(static_cast<uint32_t>(state.ui.width), static_cast<uint32_t>(state.ui.height));
	}
	vkCtx.raycastFrameIndex = (frameSlot + 1u) % VulkanContext::kRaycastFramesInFlight;

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
static void createVulkanTexture(uint32_t width, uint32_t height)
{
	VkImageCreateInfo imageInfo{
		.sType         = VK_STRUCTURE_TYPE_IMAGE_CREATE_INFO,
		.imageType     = VK_IMAGE_TYPE_2D,
		.format        = VK_FORMAT_B8G8R8A8_UNORM,
		.extent        = {width, height, 1},
		.mipLevels     = 1,
		.arrayLayers   = 1,
		.samples       = VK_SAMPLE_COUNT_1_BIT,
		.tiling        = VK_IMAGE_TILING_LINEAR,
		.usage         = VK_IMAGE_USAGE_SAMPLED_BIT | VK_IMAGE_USAGE_TRANSFER_SRC_BIT | VK_IMAGE_USAGE_TRANSFER_DST_BIT,
		.initialLayout = VK_IMAGE_LAYOUT_GENERAL
	};
	vkCreateImage(vkCtx.device, &imageInfo, nullptr, &vkCtx.textureImage);

	VkMemoryRequirements memReq{};
	vkGetImageMemoryRequirements(vkCtx.device, vkCtx.textureImage, &memReq);

	VkMemoryAllocateInfo allocInfo{
		.sType           = VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO,
		.allocationSize  = memReq.size,
		.memoryTypeIndex = findMemoryType(memReq.memoryTypeBits,
			VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT | VK_MEMORY_PROPERTY_HOST_COHERENT_BIT)
	};
	vkAllocateMemory(vkCtx.device, &allocInfo, nullptr, &vkCtx.textureImageMemory);
	vkBindImageMemory(vkCtx.device, vkCtx.textureImage, vkCtx.textureImageMemory, 0);

	VkImageSubresource subres{VK_IMAGE_ASPECT_COLOR_BIT, 0, 0};
	VkSubresourceLayout layout{};
	vkGetImageSubresourceLayout(vkCtx.device, vkCtx.textureImage, &subres, &layout);
	vkCtx.textureRowPitch = layout.rowPitch;
	vkMapMemory(vkCtx.device, vkCtx.textureImageMemory, 0, VK_WHOLE_SIZE, 0, &vkCtx.mappedTextureData);

	VkImageViewCreateInfo viewInfo{
		.sType            = VK_STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO,
		.image            = vkCtx.textureImage,
		.viewType         = VK_IMAGE_VIEW_TYPE_2D,
		.format           = VK_FORMAT_B8G8R8A8_UNORM,
		.subresourceRange = {VK_IMAGE_ASPECT_COLOR_BIT, 0, 1, 0, 1}
	};
	vkCreateImageView(vkCtx.device, &viewInfo, nullptr, &vkCtx.textureImageView);

	VkSamplerCreateInfo samplerInfo{
		.sType        = VK_STRUCTURE_TYPE_SAMPLER_CREATE_INFO,
		.magFilter    = VK_FILTER_NEAREST,
		.minFilter    = VK_FILTER_NEAREST,
		.addressModeU = VK_SAMPLER_ADDRESS_MODE_CLAMP_TO_EDGE,
		.addressModeV = VK_SAMPLER_ADDRESS_MODE_CLAMP_TO_EDGE,
		.addressModeW = VK_SAMPLER_ADDRESS_MODE_CLAMP_TO_EDGE,
		.maxAnisotropy = 1.0f,
		.borderColor  = VK_BORDER_COLOR_INT_OPAQUE_BLACK
	};
	vkCreateSampler(vkCtx.device, &samplerInfo, nullptr, &vkCtx.textureSampler);

	vkCtx.rowBuffer.resize(width * 4);
	vkCtx.previousFrameData.resize(width * height * 3);
	vkCtx.forceFullUpdate = true;
	vkCtx.textureWidth  = width;
	vkCtx.textureHeight = height;
}

/*
===============================================================================
Function Name: destroyTexture

Description:
	- Destroys the Vulkan texture and related resources.
	- This is called when cleaning up the Vulkan context.
===============================================================================
*/
static void destroyTexture()
{
	if (vkCtx.mappedTextureData)
		vkUnmapMemory(vkCtx.device, vkCtx.textureImageMemory);
	if (vkCtx.textureSampler)
		vkDestroySampler(vkCtx.device, vkCtx.textureSampler, nullptr);
	if (vkCtx.textureImageView)
		vkDestroyImageView(vkCtx.device, vkCtx.textureImageView, nullptr);
	if (vkCtx.textureImage)
		vkDestroyImage(vkCtx.device, vkCtx.textureImage, nullptr);
	if (vkCtx.textureImageMemory)
		vkFreeMemory(vkCtx.device, vkCtx.textureImageMemory, nullptr);

	vkCtx.textureSampler = VK_NULL_HANDLE;
	vkCtx.textureImageView = VK_NULL_HANDLE;
	vkCtx.textureImage = VK_NULL_HANDLE;
	vkCtx.textureImageMemory = VK_NULL_HANDLE;
	vkCtx.mappedTextureData = nullptr;
	vkCtx.textureRowPitch = 0;
}

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
	if (vkCtx.device)
		vkDeviceWaitIdle(vkCtx.device);
	destroyTexture();
	createVulkanTexture(width, height);
	// Raycast GPU output image is separate; recreate lazily on next frame.
	if (vkCtx.raycastImage)
	{
		vkDestroyImageView(vkCtx.device, vkCtx.raycastImageView, nullptr);
		vkDestroyImage(vkCtx.device, vkCtx.raycastImage, nullptr);
		vkFreeMemory(vkCtx.device, vkCtx.raycastImageMemory, nullptr);
		vkCtx.raycastImageView = VK_NULL_HANDLE;
		vkCtx.raycastImage = VK_NULL_HANDLE;
		vkCtx.raycastImageMemory = VK_NULL_HANDLE;
		vkCtx.raycastImageLayout = VK_IMAGE_LAYOUT_UNDEFINED;
		vkCtx.raycastDescriptorsDirty = true;
		vkCtx.raycastModelDescriptorsDirty = true;
	}
	if (vkCtx.raycastDepthImage)
	{
		vkDestroyImageView(vkCtx.device, vkCtx.raycastDepthImageView, nullptr);
		vkDestroyImage(vkCtx.device, vkCtx.raycastDepthImage, nullptr);
		vkFreeMemory(vkCtx.device, vkCtx.raycastDepthImageMemory, nullptr);
		vkCtx.raycastDepthImageView = VK_NULL_HANDLE;
		vkCtx.raycastDepthImage = VK_NULL_HANDLE;
		vkCtx.raycastDepthImageMemory = VK_NULL_HANDLE;
		vkCtx.raycastDepthImageLayout = VK_IMAGE_LAYOUT_UNDEFINED;
		vkCtx.raycastDescriptorsDirty = true;
		vkCtx.raycastModelDescriptorsDirty = true;
	}
	if (vkCtx.raycastModelFramebuffer)
	{
		vkDestroyFramebuffer(vkCtx.device, vkCtx.raycastModelFramebuffer, nullptr);
		vkCtx.raycastModelFramebuffer = VK_NULL_HANDLE;
	}
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
	if (!vkCtx.device || !vkCtx.surface || width == 0 || height == 0)
		return;

	vkDeviceWaitIdle(vkCtx.device);

	VkSurfaceCapabilitiesKHR caps{};
	if (vkGetPhysicalDeviceSurfaceCapabilitiesKHR(vkCtx.physicalDevice, vkCtx.surface, &caps) != VK_SUCCESS)
		return;

	VkExtent2D targetExtent = caps.currentExtent;
	if (targetExtent.width == UINT32_MAX) {
		targetExtent.width  = (std::max)(caps.minImageExtent.width,  (std::min)(caps.maxImageExtent.width,  width));
		targetExtent.height = (std::max)(caps.minImageExtent.height, (std::min)(caps.maxImageExtent.height, height));
	}

	if (vkCtx.swapchain &&
		vkCtx.swapchainExtent.width  == targetExtent.width &&
		vkCtx.swapchainExtent.height == targetExtent.height)
		return;

	uint32_t imageCount = (std::max)(2u, caps.minImageCount + 1u);
	if (caps.maxImageCount > 0)
		imageCount = (std::min)(imageCount, caps.maxImageCount);

	VkSwapchainCreateInfoKHR swapInfo{
		.sType            = VK_STRUCTURE_TYPE_SWAPCHAIN_CREATE_INFO_KHR,
		.surface          = vkCtx.surface,
		.minImageCount    = imageCount,
		.imageFormat      = VK_FORMAT_B8G8R8A8_UNORM,
		.imageColorSpace  = VK_COLOR_SPACE_SRGB_NONLINEAR_KHR,
		.imageExtent      = targetExtent,
		.imageArrayLayers = 1,
		.imageUsage       = VK_IMAGE_USAGE_TRANSFER_DST_BIT,
		.imageSharingMode = VK_SHARING_MODE_EXCLUSIVE,
		.preTransform     = caps.currentTransform,
		.compositeAlpha   = VK_COMPOSITE_ALPHA_OPAQUE_BIT_KHR,
		.presentMode      = VK_PRESENT_MODE_FIFO_KHR,
		.clipped          = VK_TRUE,
		.oldSwapchain     = vkCtx.swapchain
	};

	VkSwapchainKHR newSwapchain = VK_NULL_HANDLE;
	if (vkCreateSwapchainKHR(vkCtx.device, &swapInfo, nullptr, &newSwapchain) != VK_SUCCESS)
		return;

	if (vkCtx.swapchain)
		vkDestroySwapchainKHR(vkCtx.device, vkCtx.swapchain, nullptr);

	vkCtx.swapchain       = newSwapchain;
	vkCtx.swapchainExtent = targetExtent;
	vkCtx.swapchainFormat = VK_FORMAT_B8G8R8A8_UNORM;

	uint32_t count = 0;
	vkGetSwapchainImagesKHR(vkCtx.device, vkCtx.swapchain, &count, nullptr);
	vkCtx.swapchainImages.resize(count);
	vkGetSwapchainImagesKHR(vkCtx.device, vkCtx.swapchain, &count, vkCtx.swapchainImages.data());
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
    VkApplicationInfo appInfo{
        .sType = VK_STRUCTURE_TYPE_APPLICATION_INFO,
        .pApplicationName = "Vulkan Renderer",
        .applicationVersion = (1 << 22),
        .pEngineName = "Phantom Engine",
        .engineVersion = (1 << 22),
        .apiVersion = (1 << 22)
    };

    const char* exts[] = { VK_KHR_SURFACE_EXTENSION_NAME, VK_KHR_WIN32_SURFACE_EXTENSION_NAME };
    VkInstanceCreateInfo instInfo{
        .sType = VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO,
        .pApplicationInfo = &appInfo,
        .enabledExtensionCount = 2,
        .ppEnabledExtensionNames = exts
    };
    if (vkCreateInstance(&instInfo, nullptr, &vkCtx.instance) != VK_SUCCESS)
        throw std::runtime_error("Failed to create Vulkan instance");

    VkWin32SurfaceCreateInfoKHR surfInfo{
        .sType = VK_STRUCTURE_TYPE_WIN32_SURFACE_CREATE_INFO_KHR,
        .hinstance = GetModuleHandle(nullptr),
        .hwnd = g_hwnd
    };
    auto pfnCreateWin32Surface = reinterpret_cast<PFN_vkCreateWin32SurfaceKHR>(
        vkGetInstanceProcAddr(vkCtx.instance, "vkCreateWin32SurfaceKHR"));
    if (!pfnCreateWin32Surface ||
        pfnCreateWin32Surface(vkCtx.instance, &surfInfo, nullptr, &vkCtx.surface) != VK_SUCCESS)
        throw std::runtime_error("Failed to create Win32 Vulkan surface");

    uint32_t devCount = 0;
    if (vkEnumeratePhysicalDevices(vkCtx.instance, &devCount, nullptr) != VK_SUCCESS || devCount == 0)
        throw std::runtime_error("No Vulkan-capable GPU found");
    std::vector<VkPhysicalDevice> devs(devCount);
    vkEnumeratePhysicalDevices(vkCtx.instance, &devCount, devs.data());
    const auto scoreDevice = [&](VkPhysicalDevice device) {
        uint32_t queueCount = 0;
        vkGetPhysicalDeviceQueueFamilyProperties(device, &queueCount, nullptr);
        std::vector<VkQueueFamilyProperties> queues(queueCount);
        vkGetPhysicalDeviceQueueFamilyProperties(device, &queueCount, queues.data());
        bool hasGraphicsPresentQueue = false;
        for (uint32_t i = 0; i < queueCount; ++i)
        {
            VkBool32 presentSupported = VK_FALSE;
            vkGetPhysicalDeviceSurfaceSupportKHR(device, i, vkCtx.surface, &presentSupported);
            hasGraphicsPresentQueue |=
                (queues[i].queueFlags & VK_QUEUE_GRAPHICS_BIT) && presentSupported == VK_TRUE;
        }

        uint32_t extensionCount = 0;
        vkEnumerateDeviceExtensionProperties(device, nullptr, &extensionCount, nullptr);
        std::vector<VkExtensionProperties> extensions(extensionCount);
        vkEnumerateDeviceExtensionProperties(device, nullptr, &extensionCount, extensions.data());
        const bool hasSwapchain = std::any_of(extensions.begin(), extensions.end(),
            [](const VkExtensionProperties &extension) {
                return std::strcmp(extension.extensionName, VK_KHR_SWAPCHAIN_EXTENSION_NAME) == 0;
            });
        if (!hasGraphicsPresentQueue || !hasSwapchain)
            return uint64_t{0};

        VkPhysicalDeviceProperties properties{};
        vkGetPhysicalDeviceProperties(device, &properties);
        VkPhysicalDeviceMemoryProperties memory{};
        vkGetPhysicalDeviceMemoryProperties(device, &memory);
        uint64_t localBytes = 0;
        for (uint32_t i = 0; i < memory.memoryHeapCount; ++i)
        {
            if (memory.memoryHeaps[i].flags & VK_MEMORY_HEAP_DEVICE_LOCAL_BIT)
                localBytes += memory.memoryHeaps[i].size;
        }

        uint64_t value = properties.limits.maxImageDimension2D;
        value += (localBytes / (1024ull * 1024ull)) * 1'000'000ull;
        if (properties.vendorID == 0x10DE)
            value += 4'000'000'000'000ull;
        if (properties.deviceType == VK_PHYSICAL_DEVICE_TYPE_DISCRETE_GPU)
            value += 2'000'000'000'000ull;
        else if (properties.deviceType == VK_PHYSICAL_DEVICE_TYPE_INTEGRATED_GPU)
            value += 100'000'000'000ull;
        return value;
    };
    vkCtx.physicalDevice = *std::max_element(devs.begin(), devs.end(),
        [&](VkPhysicalDevice lhs, VkPhysicalDevice rhs) {
            return scoreDevice(lhs) < scoreDevice(rhs);
        });
    if (scoreDevice(vkCtx.physicalDevice) == 0)
        throw std::runtime_error("No Vulkan GPU supports graphics and presentation");
    VkPhysicalDeviceProperties selectedProperties{};
    vkGetPhysicalDeviceProperties(vkCtx.physicalDevice, &selectedProperties);
    DBG_LOGF("Selected high-performance Vulkan adapter: %s", selectedProperties.deviceName);

    uint32_t qFamilyCount = 0;
    vkGetPhysicalDeviceQueueFamilyProperties(vkCtx.physicalDevice, &qFamilyCount, nullptr);
    if (qFamilyCount == 0)
        throw std::runtime_error("No Vulkan queue families found");
    std::vector<VkQueueFamilyProperties> qFamilies(qFamilyCount);
    vkGetPhysicalDeviceQueueFamilyProperties(vkCtx.physicalDevice, &qFamilyCount, qFamilies.data());

    vkCtx.graphicsQueueFamily = UINT32_MAX;
    for (uint32_t i = 0; i < qFamilyCount; ++i) {
        VkBool32 presentSupported = VK_FALSE;
        vkGetPhysicalDeviceSurfaceSupportKHR(vkCtx.physicalDevice, i, vkCtx.surface, &presentSupported);
        if ((qFamilies[i].queueFlags & VK_QUEUE_GRAPHICS_BIT) && presentSupported == VK_TRUE) {
            vkCtx.graphicsQueueFamily = i;
            break;
        }
    }
    if (vkCtx.graphicsQueueFamily == UINT32_MAX)
        throw std::runtime_error("Failed to find Vulkan graphics queue family");

    float qPriority = 1.0f;
    VkDeviceQueueCreateInfo qInfo{
        .sType = VK_STRUCTURE_TYPE_DEVICE_QUEUE_CREATE_INFO,
        .queueFamilyIndex = vkCtx.graphicsQueueFamily,
        .queueCount = 1,
        .pQueuePriorities = &qPriority
    };

    const char* devExts[] = { VK_KHR_SWAPCHAIN_EXTENSION_NAME };
    VkPhysicalDeviceFeatures supported{}, enabled{};
    vkGetPhysicalDeviceFeatures(vkCtx.physicalDevice, &supported);
    enabled.fragmentStoresAndAtomics = supported.fragmentStoresAndAtomics;
    g_fragmentStoresAndAtomicsEnabled = enabled.fragmentStoresAndAtomics == VK_TRUE;

    VkDeviceCreateInfo devInfo{
        .sType = VK_STRUCTURE_TYPE_DEVICE_CREATE_INFO,
        .queueCreateInfoCount = 1,
        .pQueueCreateInfos = &qInfo,
        .enabledExtensionCount = 1,
        .ppEnabledExtensionNames = devExts,
        .pEnabledFeatures = &enabled
    };
    if (vkCreateDevice(vkCtx.physicalDevice, &devInfo, nullptr, &vkCtx.device) != VK_SUCCESS)
        throw std::runtime_error("Failed to create Vulkan logical device");
    vkGetDeviceQueue(vkCtx.device, vkCtx.graphicsQueueFamily, 0, &vkCtx.graphicsQueue);

    VkBool32 presentSupported = VK_FALSE;
    if (vkGetPhysicalDeviceSurfaceSupportKHR(vkCtx.physicalDevice, vkCtx.graphicsQueueFamily, vkCtx.surface, &presentSupported) != VK_SUCCESS || !presentSupported)
        throw std::runtime_error("Graphics queue does not support presentation");

    recreateSwapchain(state.ui.width, state.ui.height);
    if (!vkCtx.swapchain)
        throw std::runtime_error("Failed to create Vulkan swapchain");

    VkSemaphoreCreateInfo semInfo{ .sType = VK_STRUCTURE_TYPE_SEMAPHORE_CREATE_INFO };
    if (vkCreateSemaphore(vkCtx.device, &semInfo, nullptr, &vkCtx.imageAvailableSemaphore) != VK_SUCCESS ||
        vkCreateSemaphore(vkCtx.device, &semInfo, nullptr, &vkCtx.renderFinishedSemaphore) != VK_SUCCESS)
        throw std::runtime_error("Failed to create Vulkan semaphores");

    VkFenceCreateInfo fenceInfo{
        .sType = VK_STRUCTURE_TYPE_FENCE_CREATE_INFO,
        .flags = VK_FENCE_CREATE_SIGNALED_BIT
    };
    if (vkCreateFence(vkCtx.device, &fenceInfo, nullptr, &vkCtx.inFlightFence) != VK_SUCCESS)
        throw std::runtime_error("Failed to create Vulkan in-flight fence");
    for (uint32_t i = 0; i < VulkanContext::kRaycastFramesInFlight; ++i)
    {
        if (vkCreateSemaphore(vkCtx.device, &semInfo, nullptr, &vkCtx.raycastImageAvailableSemaphores[i]) != VK_SUCCESS ||
            vkCreateSemaphore(vkCtx.device, &semInfo, nullptr, &vkCtx.raycastRenderFinishedSemaphores[i]) != VK_SUCCESS ||
            vkCreateFence(vkCtx.device, &fenceInfo, nullptr, &vkCtx.raycastInFlightFences[i]) != VK_SUCCESS)
            throw std::runtime_error("Failed to create Vulkan raycast frame synchronization");
    }

    VkCommandPoolCreateInfo poolInfo{
        .sType = VK_STRUCTURE_TYPE_COMMAND_POOL_CREATE_INFO,
        .flags = VK_COMMAND_POOL_CREATE_RESET_COMMAND_BUFFER_BIT,
        .queueFamilyIndex = vkCtx.graphicsQueueFamily
    };
    if (vkCreateCommandPool(vkCtx.device, &poolInfo, nullptr, &vkCtx.commandPool) != VK_SUCCESS)
        throw std::runtime_error("Failed to create Vulkan command pool");

    VkCommandBufferAllocateInfo cmdAlloc{
        .sType = VK_STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO,
        .commandPool = vkCtx.commandPool,
        .level = VK_COMMAND_BUFFER_LEVEL_PRIMARY,
        .commandBufferCount = 1
    };
    if (vkAllocateCommandBuffers(vkCtx.device, &cmdAlloc, &vkCtx.frameCommandBuffer) != VK_SUCCESS)
        throw std::runtime_error("Failed to allocate Vulkan frame command buffer");
    cmdAlloc.commandBufferCount = VulkanContext::kRaycastFramesInFlight;
    if (vkAllocateCommandBuffers(vkCtx.device, &cmdAlloc, vkCtx.raycastCommandBuffers.data()) != VK_SUCCESS)
        throw std::runtime_error("Failed to allocate Vulkan raycast frame command buffers");

    uint32_t texW = state.raycast.enabled ? state.ui.width : CONTENT_WIDTH;
    uint32_t texH = state.raycast.enabled ? state.ui.height : CONTENT_HEIGHT;
    resizeVulkanTexture(texW, texH);
    scaleFactor = state.raycast.enabled ? 1.0f : static_cast<float>(state.ui.width) / CONTENT_WIDTH;
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
	const PVXFile *vdx = state.transientPVX ? state.transientPVX : state.currentPVX;
	size_t frameIdx = state.transientPVX ? state.transient_frame_index : state.currentFrameIndex;
	if (!vdx) return;

	if (frameIdx >= vdx->frameData.size()) {
		DBG_LOGF("renderFrameVk: frame %zu out of range for '%s' (%zu frames)",
			frameIdx, vdx->filename.c_str(), vdx->frameData.size());
		return;
	}

	vkWaitForFences(vkCtx.device, 1, &vkCtx.inFlightFence, VK_TRUE, UINT64_MAX);

	std::span<const uint8_t> pixels = vdx->frameData[frameIdx];
	const size_t expectedBytes = static_cast<size_t>(vkCtx.textureWidth) * vkCtx.textureHeight * 3ull;
	if (pixels.size() < expectedBytes) {
		DBG_LOGF("renderFrameVk: frame buffer too small for '%s' frame=%zu bytes=%zu expected=%zu texture=%ux%u source=%dx%d",
			vdx->filename.c_str(), frameIdx, pixels.size(), expectedBytes,
			vkCtx.textureWidth, vkCtx.textureHeight, vdx->width, vdx->height);
		return;
	}

	uint8_t *dst = static_cast<uint8_t *>(vkCtx.mappedTextureData);
	size_t pitch = vkCtx.textureRowPitch;
	const int texW = vkCtx.textureWidth;
	const int texH = vkCtx.textureHeight;

	auto changed = getChangedRowsAndUpdatePrevious(pixels, vkCtx.previousFrameData, texW, texH,
					vkCtx.forceFullUpdate || !state.transient_animation_name.empty());
	vkCtx.forceFullUpdate = false;

	for (size_t y : changed) {
		convertRGBRowToBGRA(pixels.data() + y * texW * 3, vkCtx.rowBuffer.data(), texW);
		std::memcpy(dst + y * pitch, vkCtx.rowBuffer.data(), static_cast<size_t>(texW) * 4);
	}
	// The FPS panel changes independently of video damage tracking. Restore its
	// source rows before drawing so old digits never accumulate in mapped memory.
	for (int y = 0; y < std::min(texH, 40); ++y) {
		convertRGBRowToBGRA(pixels.data() + static_cast<size_t>(y) * texW * 3u, vkCtx.rowBuffer.data(), texW);
		std::memcpy(dst + static_cast<size_t>(y) * pitch, vkCtx.rowBuffer.data(), static_cast<size_t>(texW) * 4u);
	}
	drawMeasuredFpsOverlay(dst, pitch, texW, texH);

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
	// Prefer GPU raycast in Auto/GPU mode for parity with v64tng performance.
	bool useGPU = (state.renderMode == GameState::RenderMode::GPU || state.renderMode == GameState::RenderMode::Auto);
	if (useGPU && state.raycast.map && !raycastMapHasArchitecturalFeatures(*state.raycast.map))
	{
		renderFrameRaycastVkGPU();
		return;
	}

	renderFrameRaycastVkCPU();
}

/*
===============================================================================
Function Name: renderSimpleText

Description:
	- Simple software text rendering function for menu text.
	- Uses a basic 8x16 bitmap font approach for simplicity.
===============================================================================
*/
void renderSimpleText(uint8_t* framebuffer, size_t pitch, int width, int height,
				  const char* text, int x, int y, uint32_t color, int scale, uint32_t shadowColor)
{
	extern const uint8_t g_font8x8[37][8];
	const uint8_t (*font8x8)[8] = g_font8x8;

	const int glyphW = 8 * scale;
	const int glyphH = 8 * scale;
	const int charSpacing = glyphW + scale * 2;
	const int len = static_cast<int>(strlen(text));
	const int startX = x - (len * charSpacing - scale) / 2;
	const int so = (scale / 2) > 0 ? (scale / 2) : 1;

	auto drawChar = [&](int charX, int charY, uint32_t drawColor) {
		for (int i = 0; i < len; ++i) {
			const char c = text[i];
			const int idx = (c == ' ') ? 0 : (c >= 'A' && c <= 'Z') ? c - 'A' + 1 :
			                (c >= '0' && c <= '9') ? c - '0' + 27 : -1;
			if (idx < 0) continue;
			const uint8_t* glyph = font8x8[idx];
			for (int row = 0; row < 8; ++row) {
				const uint8_t bits = glyph[row];
				if (!bits) continue;
				for (int col = 0; col < 8; ++col) {
					if (!(bits & (1 << col))) continue;
					const int bx = charX + i * charSpacing + col * scale;
					const int by = charY + row * scale - glyphH / 2;
					const int x0 = (std::max)(bx, 0), x1 = (std::min)(bx + scale, width);
					const int y0 = (std::max)(by, 0), y1 = (std::min)(by + scale, height);
					for (int py = y0; py < y1; ++py) {
						uint32_t* row32 = reinterpret_cast<uint32_t*>(framebuffer + py * pitch);
						for (int px = x0; px < x1; ++px) row32[px] = drawColor;
					}
				}
			}
		}
	};

	drawChar(startX + so,     y + so,     shadowColor);
	drawChar(startX + so + 2, y + so,     shadowColor);
	drawChar(startX + so,     y + so + 2, shadowColor);
	drawChar(startX + so + 2, y + so + 2, shadowColor);
	drawChar(startX, y, color);
}

/*
===============================================================================
Function Name: renderFrameMenuVk

Description:
	- Renders the menu frame using Vulkan.
	- Renders menu.pvx background and overlays text using software rendering.
===============================================================================
*/
void renderFrameMenuVk()
{
	if (!state.menu.currentFrame || state.menu.currentFrame->empty())
		return;

	vkWaitForFences(vkCtx.device, 1, &vkCtx.inFlightFence, VK_TRUE, UINT64_MAX);

	std::span<const uint8_t> pixels(*state.menu.currentFrame);
	ensureMenuTitleImageLoaded();

	const int texW = static_cast<int>(vkCtx.textureWidth);
	const int texH = static_cast<int>(vkCtx.textureHeight);
	const size_t stagePitch = static_cast<size_t>(texW) * 4;

	static std::vector<uint8_t> stagingBuffer;
	if (stagingBuffer.size() < stagePitch * texH)
		stagingBuffer.resize(stagePitch * texH);
	uint8_t* stage = stagingBuffer.data();

	convertRGBRowToBGRA(pixels.data(), stage, static_cast<size_t>(texW) * texH);

	namespace po = phantom::project_overrides;
	const int menuY = static_cast<int>(texH * po::kMenuYRatio);

	if (menuTitleImage && menuTitleH > 0 && menuTitleW > 0)
	{
		const int paddingTop = static_cast<int>(texH * po::kMenuTitlePaddingTopRatio);
		const int gapPad = po::kMenuTitleGapPadPx;
		int availH = menuY - paddingTop - gapPad;
		if (availH < 0) availH = 0;

		int targetH = std::clamp(availH, po::kMenuTitleMinHeightPx, po::kMenuTitleMaxHeightPx);
		int targetW = (menuTitleW * targetH) / menuTitleH;
		const int maxW = static_cast<int>(texW * po::kMenuTitleMaxWidthRatio);
		if (targetW > maxW) {
			targetW = maxW;
			targetH = (menuTitleH * targetW) / menuTitleW;
		}

		const int startX = static_cast<int>(texW * po::kMenuTitleXRatio) - targetW / 2;
		const int startY = paddingTop;

		const int yStart = (std::max)(0, -startY);
		const int yEnd   = (std::min)(targetH, texH - startY);
		const int xStart = (std::max)(0, -startX);
		const int xEnd   = (std::min)(targetW, texW - startX);

		for (int y = yStart; y < yEnd; ++y)
		{
			const int dstY = startY + y;
			const int srcY = (y * menuTitleH) / targetH;
			uint8_t* dstRow = stage + static_cast<size_t>(dstY) * stagePitch;
			const uint8_t* srcRow = menuTitleImage + static_cast<size_t>(srcY) * menuTitleW * 4;

			for (int x = xStart; x < xEnd; ++x)
			{
				const int srcX = (x * menuTitleW) / targetW;
				const uint8_t* sp = srcRow + srcX * 4;
				const unsigned a = sp[3];
				if (a == 0) continue;

				uint8_t* dp = dstRow + static_cast<size_t>(startX + x) * 4;
				if (a == 255) {
					dp[0] = sp[2]; dp[1] = sp[1]; dp[2] = sp[0]; dp[3] = 255;
				} else {
					const unsigned ia = 255 - a;
					dp[0] = static_cast<uint8_t>((sp[2]*a + dp[0]*ia + 128) >> 8);
					dp[1] = static_cast<uint8_t>((sp[1]*a + dp[1]*ia + 128) >> 8);
					dp[2] = static_cast<uint8_t>((sp[0]*a + dp[2]*ia + 128) >> 8);
					dp[3] = 255;
				}
			}
		}
	}
	else
	{
		const int titleMaxW = static_cast<int>(texW * po::kMenuTitleMaxWidthRatio);
		const int tlen = static_cast<int>(po::kMenuTitleText.size());
		const int tscale = (std::max)(1, (std::min)(32, titleMaxW / (std::max)(1, tlen * 10)));
		const int titleY = static_cast<int>(texH * po::kMenuTitlePaddingTopRatio) + tscale * 5;
		renderSimpleText(stage, stagePitch, texW, texH,
						 po::kMenuTitleText.data(),
						 static_cast<int>(texW * po::kMenuTitleXRatio),
						 titleY, 0xFFFF0000u, tscale, po::kMenuShadowColor);
	}

	const int menuCount = po::kMenuItemCount;
	const int itemH = po::kMenuItemHeightPx;
	const int cx = static_cast<int>(texW * po::kMenuXRatio);

	using namespace std::chrono;
	const int fms = (std::max)(25, po::kMenuHighlightFlickerMs);
	const bool fphase = (duration_cast<milliseconds>(steady_clock::now().time_since_epoch()).count() / fms) % 2 == 0;
	const uint32_t hlCol = fphase ? po::kMenuHighlightColorA : po::kMenuHighlightColorB;

	for (int i = 0; i < menuCount; ++i)
	{
		const int ty = menuY + i * itemH;
		const bool sel = (state.menu.selectedItem == i);
		const int tscale = sel ? po::kMenuSelectedScale : po::kMenuNormalScale;
		const uint32_t col = sel ? hlCol : po::kMenuTextColor;
		renderSimpleText(stage, stagePitch, texW, texH,
					po::kMenuItems[static_cast<size_t>(i)].data(),
					cx, ty, col, tscale, po::kMenuShadowColor);
	}
	drawMeasuredFpsOverlay(stage, stagePitch, texW, texH);

	{
		uint8_t* dst = static_cast<uint8_t*>(vkCtx.mappedTextureData);
		const size_t pitch = vkCtx.textureRowPitch;
		if (pitch == stagePitch)
			std::memcpy(dst, stage, stagePitch * texH);
		else
			for (int y = 0; y < texH; ++y)
				std::memcpy(dst + y * pitch, stage + y * stagePitch, stagePitch);
	}

	presentFrame();
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
	// NOTE: The fence wait happens BEFORE host writes in renderFrameVk/renderFrameMenuVk
	// to prevent GPU read / CPU write races. By the time we get here, the fence is
	// already signaled, so this wait is a fast no-op that just confirms readiness.
	vkWaitForFences(vkCtx.device, 1, &vkCtx.inFlightFence, VK_TRUE, UINT64_MAX);

	uint32_t imgIdx;
	VkResult acquireRes = vkAcquireNextImageKHR(vkCtx.device, vkCtx.swapchain, UINT64_MAX, vkCtx.imageAvailableSemaphore, VK_NULL_HANDLE, &imgIdx);
	if (acquireRes == VK_ERROR_OUT_OF_DATE_KHR)
	{
		recreateSwapchain(static_cast<uint32_t>(state.ui.width), static_cast<uint32_t>(state.ui.height));
		return;
	}
	if (acquireRes != VK_SUCCESS && acquireRes != VK_SUBOPTIMAL_KHR)
	{
		return;
	}
	vkResetFences(vkCtx.device, 1, &vkCtx.inFlightFence);

	VkCommandBuffer cmdBuf = vkCtx.frameCommandBuffer;
	if (cmdBuf == VK_NULL_HANDLE)
		return;
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

	VkImageMemoryBarrier texBarrier = {};
	texBarrier.sType = VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER;
	texBarrier.srcAccessMask = VK_ACCESS_HOST_WRITE_BIT;
	texBarrier.dstAccessMask = VK_ACCESS_TRANSFER_READ_BIT;
	texBarrier.oldLayout = texBarrier.newLayout = VK_IMAGE_LAYOUT_GENERAL;
	texBarrier.image = vkCtx.textureImage;
	texBarrier.subresourceRange.aspectMask = VK_IMAGE_ASPECT_COLOR_BIT;
	texBarrier.subresourceRange.levelCount = 1;
	texBarrier.subresourceRange.layerCount = 1;

	// Also add a global memory barrier to flush all host writes before the transfer read.
	// This prevents partial framebuffer reads that cause flickering/tearing on the menu.
	VkMemoryBarrier memBarrier = {};
	memBarrier.sType = VK_STRUCTURE_TYPE_MEMORY_BARRIER;
	memBarrier.srcAccessMask = VK_ACCESS_HOST_WRITE_BIT;
	memBarrier.dstAccessMask = VK_ACCESS_TRANSFER_READ_BIT;

	vkCmdPipelineBarrier(cmdBuf, VK_PIPELINE_STAGE_HOST_BIT, VK_PIPELINE_STAGE_TRANSFER_BIT, 0, 1, &memBarrier, 0, nullptr, 1, &texBarrier);

	// Clear swapchain image to black for letterboxing
	{
		VkClearColorValue clearColor = {{0.0f, 0.0f, 0.0f, 1.0f}};
		VkImageSubresourceRange clearRange = {};
		clearRange.aspectMask = VK_IMAGE_ASPECT_COLOR_BIT;
		clearRange.levelCount = 1;
		clearRange.layerCount = 1;
		vkCmdClearColorImage(cmdBuf, vkCtx.swapchainImages[imgIdx], VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL, &clearColor, 1, &clearRange);
	}

	VkImageBlit blit = {};
	blit.srcSubresource.aspectMask = VK_IMAGE_ASPECT_COLOR_BIT;
	blit.srcSubresource.layerCount = 1;
	blit.srcOffsets[1] = {static_cast<int32_t>(vkCtx.textureWidth), static_cast<int32_t>(vkCtx.textureHeight), 1};
	blit.dstSubresource.aspectMask = VK_IMAGE_ASPECT_COLOR_BIT;
	blit.dstSubresource.layerCount = 1;
	if (state.raycast.enabled)
	{
		blit.dstOffsets[1] = {static_cast<int32_t>(vkCtx.swapchainExtent.width), static_cast<int32_t>(vkCtx.swapchainExtent.height), 1};
	}
	else
	{
		const float viewportW = static_cast<float>(vkCtx.swapchainExtent.width);
		const float viewportH = static_cast<float>(vkCtx.swapchainExtent.height);
		const float sourceW = static_cast<float>(vkCtx.textureWidth ? vkCtx.textureWidth : CONTENT_WIDTH);
		const float sourceH = static_cast<float>(vkCtx.textureHeight ? vkCtx.textureHeight : CONTENT_HEIGHT);
		const float scale = (std::min)(viewportW / sourceW, viewportH / sourceH);
		const int32_t destW = static_cast<int32_t>(sourceW * scale);
		const int32_t destH = static_cast<int32_t>(sourceH * scale);
		const int32_t offsetX = static_cast<int32_t>((viewportW - destW) * 0.5f);
		const int32_t offsetY = static_cast<int32_t>((viewportH - destH) * 0.5f);
		blit.dstOffsets[0].x = offsetX;
		blit.dstOffsets[0].y = offsetY;
		blit.dstOffsets[1].x = offsetX + destW;
		blit.dstOffsets[1].y = offsetY + destH;
		blit.dstOffsets[1].z = 1;
	}

	vkCmdBlitImage(cmdBuf, vkCtx.textureImage, VK_IMAGE_LAYOUT_GENERAL, vkCtx.swapchainImages[imgIdx], VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL, 1, &blit, VK_FILTER_NEAREST);

	barrier.srcAccessMask = VK_ACCESS_TRANSFER_WRITE_BIT;
	barrier.oldLayout = VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL;
	barrier.newLayout = VK_IMAGE_LAYOUT_PRESENT_SRC_KHR;
	vkCmdPipelineBarrier(cmdBuf, VK_PIPELINE_STAGE_TRANSFER_BIT, VK_PIPELINE_STAGE_BOTTOM_OF_PIPE_BIT, 0, 0, nullptr, 0, nullptr, 1, &barrier);

	vkEndCommandBuffer(cmdBuf);

	VkPipelineStageFlags waitStage = VK_PIPELINE_STAGE_TRANSFER_BIT;
	VkSubmitInfo submit = {};
	submit.sType = VK_STRUCTURE_TYPE_SUBMIT_INFO;
	submit.waitSemaphoreCount = 1;
	submit.pWaitSemaphores = &vkCtx.imageAvailableSemaphore;
	submit.pWaitDstStageMask = &waitStage;
	submit.commandBufferCount = 1;
	submit.pCommandBuffers = &cmdBuf;
	submit.signalSemaphoreCount = 1;
	submit.pSignalSemaphores = &vkCtx.renderFinishedSemaphore;

	vkQueueSubmit(vkCtx.graphicsQueue, 1, &submit, vkCtx.inFlightFence);

	VkPresentInfoKHR present = {};
	present.sType = VK_STRUCTURE_TYPE_PRESENT_INFO_KHR;
	present.waitSemaphoreCount = 1;
	present.pWaitSemaphores = &vkCtx.renderFinishedSemaphore;
	present.swapchainCount = 1;
	present.pSwapchains = &vkCtx.swapchain;
	present.pImageIndices = &imgIdx;
	VkResult presentRes = vkQueuePresentKHR(vkCtx.graphicsQueue, &present);
	if (presentRes == VK_ERROR_OUT_OF_DATE_KHR || presentRes == VK_SUBOPTIMAL_KHR)
	{
		recreateSwapchain(static_cast<uint32_t>(state.ui.width), static_cast<uint32_t>(state.ui.height));
	}

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
	destroyRaycastResources();
	destroyTexture();
	if (vkCtx.swapchain)
		vkDestroySwapchainKHR(vkCtx.device, vkCtx.swapchain, nullptr);
	if (vkCtx.surface)
		vkDestroySurfaceKHR(vkCtx.instance, vkCtx.surface, nullptr);
	if (vkCtx.imageAvailableSemaphore)
		vkDestroySemaphore(vkCtx.device, vkCtx.imageAvailableSemaphore, nullptr);
	if (vkCtx.renderFinishedSemaphore)
		vkDestroySemaphore(vkCtx.device, vkCtx.renderFinishedSemaphore, nullptr);
	if (vkCtx.inFlightFence)
		vkDestroyFence(vkCtx.device, vkCtx.inFlightFence, nullptr);
	for (uint32_t i = 0; i < VulkanContext::kRaycastFramesInFlight; ++i)
	{
		if (vkCtx.raycastImageAvailableSemaphores[i])
			vkDestroySemaphore(vkCtx.device, vkCtx.raycastImageAvailableSemaphores[i], nullptr);
		if (vkCtx.raycastRenderFinishedSemaphores[i])
			vkDestroySemaphore(vkCtx.device, vkCtx.raycastRenderFinishedSemaphores[i], nullptr);
		if (vkCtx.raycastInFlightFences[i])
			vkDestroyFence(vkCtx.device, vkCtx.raycastInFlightFences[i], nullptr);
	}
	if (vkCtx.frameCommandBuffer && vkCtx.commandPool)
		vkFreeCommandBuffers(vkCtx.device, vkCtx.commandPool, 1, &vkCtx.frameCommandBuffer);
	if (vkCtx.raycastCommandBuffers[0] && vkCtx.commandPool)
		vkFreeCommandBuffers(vkCtx.device, vkCtx.commandPool,
			VulkanContext::kRaycastFramesInFlight, vkCtx.raycastCommandBuffers.data());
	if (vkCtx.commandPool)
		vkDestroyCommandPool(vkCtx.device, vkCtx.commandPool, nullptr);
	if (vkCtx.device)
		vkDestroyDevice(vkCtx.device, nullptr);
	if (vkCtx.instance)
		vkDestroyInstance(vkCtx.instance, nullptr);
	if (menuTitleImage)
	{
		FreeImage(menuTitleImage);
		menuTitleImage = nullptr;
		menuTitleW = menuTitleH = menuTitleC = 0;
	}

	vkCtx = {};
}
