// vulkan.cpp

#include <stdexcept>
#include <cstring>

#ifdef _WIN32
#include <Windows.h>
#endif

#include <vulkan/vulkan.h>
#include <vulkan/vulkan_win32.h>

#include "vulkan.h"
#include "game.h"
#include "config.h"
#include "window.h"
#include "raycast.h"
#include "render.h"

//
// Vulkan context
//
VulkanContext vkCtx;

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
static uint32_t findMemoryType(uint32_t typeFilter, VkMemoryPropertyFlags properties);

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
	imageInfo.usage = VK_IMAGE_USAGE_TRANSFER_SRC_BIT | VK_IMAGE_USAGE_TRANSFER_DST_BIT;
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

	// For now, GPU compute expansion is not implemented; fallback to CPU conversion regardless
	(void)preferGPU;

	// Update staging with only changed rows
	for (size_t y : changed)
	{
		convertRGBRowToBGRA(pixels.data() + y * MIN_CLIENT_WIDTH * 3, vkCtx.rowBuffer.data(), MIN_CLIENT_WIDTH);
		std::memcpy(dst + y * pitch, vkCtx.rowBuffer.data(), MIN_CLIENT_WIDTH * 4);
	}

	// Build batched buffer->image copy regions (merge contiguous rows into bands)
	vkCtx.pendingCopyRegions.clear();
	if (!changed.empty())
	{
		// Collapse contiguous rows
		size_t runStart = changed[0];
		size_t prev = changed[0];
		for (size_t i = 1; i < changed.size(); ++i)
		{
			if (changed[i] != prev + 1)
			{
				// Emit band [runStart, prev]
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
		// Tail band
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

	// Transition texture image to TRANSFER_DST_OPTIMAL
	VkImageMemoryBarrier texBarrier = {};
	texBarrier.sType = VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER;
	texBarrier.srcAccessMask = (vkCtx.textureImageLayout == VK_IMAGE_LAYOUT_TRANSFER_SRC_OPTIMAL) ? VK_ACCESS_TRANSFER_READ_BIT : 0;
	texBarrier.dstAccessMask = VK_ACCESS_TRANSFER_WRITE_BIT;
	texBarrier.oldLayout = vkCtx.textureImageLayout;
	texBarrier.newLayout = VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL;
	texBarrier.image = vkCtx.textureImage;
	texBarrier.subresourceRange.aspectMask = VK_IMAGE_ASPECT_COLOR_BIT;
	texBarrier.subresourceRange.levelCount = 1;
	texBarrier.subresourceRange.layerCount = 1;
	vkCmdPipelineBarrier(cmdBuf, (vkCtx.textureImageLayout == VK_IMAGE_LAYOUT_TRANSFER_SRC_OPTIMAL) ? VK_PIPELINE_STAGE_TRANSFER_BIT : VK_PIPELINE_STAGE_TOP_OF_PIPE_BIT,
						 VK_PIPELINE_STAGE_TRANSFER_BIT, 0, 0, nullptr, 0, nullptr, 1, &texBarrier);

	// Copy buffer -> image using prepared regions (row-batched). If none prepared, skip.
	if (!vkCtx.pendingCopyRegions.empty())
	{
		vkCmdCopyBufferToImage(cmdBuf, vkCtx.stagingBuffer, vkCtx.textureImage, VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL,
							   static_cast<uint32_t>(vkCtx.pendingCopyRegions.size()),
							   vkCtx.pendingCopyRegions.data());
	}

	// Transition texture to TRANSFER_SRC for blit/copy
	texBarrier.srcAccessMask = VK_ACCESS_TRANSFER_WRITE_BIT;
	texBarrier.dstAccessMask = VK_ACCESS_TRANSFER_READ_BIT;
	texBarrier.oldLayout = VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL;
	texBarrier.newLayout = VK_IMAGE_LAYOUT_TRANSFER_SRC_OPTIMAL;
	vkCmdPipelineBarrier(cmdBuf, VK_PIPELINE_STAGE_TRANSFER_BIT, VK_PIPELINE_STAGE_TRANSFER_BIT, 0, 0, nullptr, 0, nullptr, 1, &texBarrier);
	vkCtx.textureImageLayout = VK_IMAGE_LAYOUT_TRANSFER_SRC_OPTIMAL;

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