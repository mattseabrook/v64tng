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
	imageInfo.tiling = VK_IMAGE_TILING_LINEAR;
	imageInfo.usage = VK_IMAGE_USAGE_SAMPLED_BIT | VK_IMAGE_USAGE_TRANSFER_SRC_BIT | VK_IMAGE_USAGE_TRANSFER_DST_BIT;
	imageInfo.initialLayout = VK_IMAGE_LAYOUT_GENERAL;

	vkCreateImage(vkCtx.device, &imageInfo, nullptr, &vkCtx.textureImage);

	VkMemoryRequirements memReq;
	vkGetImageMemoryRequirements(vkCtx.device, vkCtx.textureImage, &memReq);

	VkMemoryAllocateInfo allocInfo = {};
	allocInfo.sType = VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO;
	allocInfo.allocationSize = memReq.size;
	allocInfo.memoryTypeIndex = findMemoryType(memReq.memoryTypeBits, VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT | VK_MEMORY_PROPERTY_HOST_COHERENT_BIT);

	vkAllocateMemory(vkCtx.device, &allocInfo, nullptr, &vkCtx.textureImageMemory);
	vkBindImageMemory(vkCtx.device, vkCtx.textureImage, vkCtx.textureImageMemory, 0);

	VkImageSubresource subres = {VK_IMAGE_ASPECT_COLOR_BIT, 0, 0};
	VkSubresourceLayout layout = {};
	vkGetImageSubresourceLayout(vkCtx.device, vkCtx.textureImage, &subres, &layout);
	vkCtx.textureRowPitch = layout.rowPitch;
	vkMapMemory(vkCtx.device, vkCtx.textureImageMemory, 0, VK_WHOLE_SIZE, 0, &vkCtx.mappedTextureData);

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

	vkCtx.rowBuffer.resize(width * 4);
	vkCtx.previousFrameData.resize(width * height * 3);
	vkCtx.forceFullUpdate = true;
	vkCtx.textureWidth = width;
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
	destroyTexture();
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

	VkSemaphoreCreateInfo semInfo = {};
	semInfo.sType = VK_STRUCTURE_TYPE_SEMAPHORE_CREATE_INFO;
	vkCreateSemaphore(vkCtx.device, &semInfo, nullptr, &vkCtx.imageAvailableSemaphore);
	vkCreateSemaphore(vkCtx.device, &semInfo, nullptr, &vkCtx.renderFinishedSemaphore);

	VkFenceCreateInfo fenceInfo = {};
	fenceInfo.sType = VK_STRUCTURE_TYPE_FENCE_CREATE_INFO;
	fenceInfo.flags = VK_FENCE_CREATE_SIGNALED_BIT;
	vkCreateFence(vkCtx.device, &fenceInfo, nullptr, &vkCtx.inFlightFence);

	VkCommandPoolCreateInfo poolInfo = {};
	poolInfo.sType = VK_STRUCTURE_TYPE_COMMAND_POOL_CREATE_INFO;
	poolInfo.queueFamilyIndex = vkCtx.graphicsQueueFamily;
	poolInfo.flags = VK_COMMAND_POOL_CREATE_RESET_COMMAND_BUFFER_BIT;

	vkCreateCommandPool(vkCtx.device, &poolInfo, nullptr, &vkCtx.commandPool);

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

	uint8_t *dst = static_cast<uint8_t *>(vkCtx.mappedTextureData);
	size_t pitch = vkCtx.textureRowPitch;

	auto changed = getChangedRowsAndUpdatePrevious(pixels, vkCtx.previousFrameData, MIN_CLIENT_WIDTH, MIN_CLIENT_HEIGHT, vkCtx.forceFullUpdate || !state.transient_animation_name.empty());
	vkCtx.forceFullUpdate = false;

	for (size_t y : changed)
	{
		convertRGBRowToBGRA_SSE(pixels.data() + y * MIN_CLIENT_WIDTH * 3, vkCtx.rowBuffer.data(), MIN_CLIENT_WIDTH);
		std::memcpy(dst + y * pitch, vkCtx.rowBuffer.data(), MIN_CLIENT_WIDTH * 4);
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

	uint8_t *dst = static_cast<uint8_t *>(vkCtx.mappedTextureData);
	size_t pitch = vkCtx.textureRowPitch;

	// Assume modified to use pitch
	renderRaycastView(map, player, dst, pitch, state.ui.width, state.ui.height);

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
	vkWaitForFences(vkCtx.device, 1, &vkCtx.inFlightFence, VK_TRUE, UINT64_MAX);
	vkResetFences(vkCtx.device, 1, &vkCtx.inFlightFence);

	uint32_t imgIdx;
	vkAcquireNextImageKHR(vkCtx.device, vkCtx.swapchain, UINT64_MAX, vkCtx.imageAvailableSemaphore, VK_NULL_HANDLE, &imgIdx);

	VkCommandBufferAllocateInfo allocInfo = {};
	allocInfo.sType = VK_STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO;
	allocInfo.commandPool = vkCtx.commandPool;
	allocInfo.level = VK_COMMAND_BUFFER_LEVEL_PRIMARY;
	allocInfo.commandBufferCount = 1;

	VkCommandBuffer cmdBuf;
	vkAllocateCommandBuffers(vkCtx.device, &allocInfo, &cmdBuf);

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
	vkCmdPipelineBarrier(cmdBuf, VK_PIPELINE_STAGE_HOST_BIT, VK_PIPELINE_STAGE_TRANSFER_BIT, 0, 0, nullptr, 0, nullptr, 1, &texBarrier);

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
		float scaledH = MIN_CLIENT_HEIGHT * scaleFactor;
		int32_t offsetY = static_cast<int32_t>((vkCtx.swapchainExtent.height - scaledH) * 0.5f);
		blit.dstOffsets[0].y = offsetY;
		blit.dstOffsets[1].x = static_cast<int32_t>(vkCtx.swapchainExtent.width);
		blit.dstOffsets[1].y = offsetY + static_cast<int32_t>(scaledH);
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
	vkQueuePresentKHR(vkCtx.graphicsQueue, &present);

	vkFreeCommandBuffers(vkCtx.device, vkCtx.commandPool, 1, &cmdBuf);
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
	if (vkCtx.commandPool)
		vkDestroyCommandPool(vkCtx.device, vkCtx.commandPool, nullptr);
	if (vkCtx.device)
		vkDestroyDevice(vkCtx.device, nullptr);
	if (vkCtx.instance)
		vkDestroyInstance(vkCtx.instance, nullptr);

	vkCtx = {};
}