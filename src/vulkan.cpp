// vulkan.cpp

#include <windows.h>
#include <stdexcept>
#include <vector>
#include <span>
#include <cstring>
#include <cstdint>

#include <vulkan/vulkan.h>
#include <vulkan/vulkan_win32.h>

#include "vulkan.h"
#include "game.h"
#include "config.h"
#include "window.h"
#include "raycast.h"
#include "render.h"

// Vulkan context structure to hold Vulkan-related resources
static VulkanContext ctx;

static std::vector<uint8_t> bgraBuffer;
static std::vector<uint8_t> previousFrameData;
static bool forceFullUpdate = true;

//////////////////////////////////////////////////////////////////////////
// Utility Functions
//////////////////////////////////////////////////////////////////////////

//
// Make a version number from major, minor, and patch components
//
constexpr uint32_t makeVersion(uint32_t major, uint32_t minor, uint32_t patch)
{
	return (major << 22) | (minor << 12) | patch;
}

constexpr uint32_t makeAPIVersion(uint32_t variant,
								  uint32_t major,
								  uint32_t minor,
								  uint32_t patch)
{
	return (variant << 29) | (major << 22) | (minor << 12) | patch;
}

//
// Locate a suitable memory type
//
static uint32_t findMemoryType(uint32_t typeFilter,
							   VkMemoryPropertyFlags properties)
{
	VkPhysicalDeviceMemoryProperties memProperties;
	vkGetPhysicalDeviceMemoryProperties(ctx.physicalDevice, &memProperties);

	for (uint32_t i = 0; i < memProperties.memoryTypeCount; ++i)
	{
		if ((typeFilter & (1u << i)) &&
			(memProperties.memoryTypes[i].propertyFlags & properties) == properties)
		{
			return i;
		}
	}
	throw std::runtime_error("Failed to find suitable memory type");
}

/*
===============================================================================
Function Name: createVulkanTexture

Description:
	- Creates a Vulkan texture image and its associated resources.
	- Initializes the texture with a specified width and height.

Parameters:
	- width: Width of the texture.
	- height: Height of the texture.
===============================================================================
*/
static void createVulkanTexture(uint32_t width, uint32_t height)
{
	VkImageCreateInfo imageInfo{};
	imageInfo.sType = VK_STRUCTURE_TYPE_IMAGE_CREATE_INFO;
	imageInfo.imageType = VK_IMAGE_TYPE_2D;
	imageInfo.format = VK_FORMAT_B8G8R8A8_UNORM;
	imageInfo.extent.width = width;
	imageInfo.extent.height = height;
	imageInfo.extent.depth = 1;
	imageInfo.mipLevels = 1;
	imageInfo.arrayLayers = 1;
	imageInfo.samples = VK_SAMPLE_COUNT_1_BIT;
	imageInfo.tiling = VK_IMAGE_TILING_LINEAR;
	imageInfo.usage = VK_IMAGE_USAGE_SAMPLED_BIT |
					  VK_IMAGE_USAGE_TRANSFER_SRC_BIT |
					  VK_IMAGE_USAGE_TRANSFER_DST_BIT;
	imageInfo.sharingMode = VK_SHARING_MODE_EXCLUSIVE;
	imageInfo.initialLayout = VK_IMAGE_LAYOUT_GENERAL;

	vkCreateImage(ctx.device, &imageInfo, nullptr, &ctx.textureImage);

	VkMemoryRequirements memReq;
	vkGetImageMemoryRequirements(ctx.device, ctx.textureImage, &memReq);

	VkMemoryAllocateInfo allocInfo{};
	allocInfo.sType = VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO;
	allocInfo.allocationSize = memReq.size;
	allocInfo.memoryTypeIndex = findMemoryType(
		memReq.memoryTypeBits,
		VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT | VK_MEMORY_PROPERTY_HOST_COHERENT_BIT);

	vkAllocateMemory(ctx.device, &allocInfo, nullptr, &ctx.textureImageMemory);
	vkBindImageMemory(ctx.device, ctx.textureImage, ctx.textureImageMemory, 0);

	VkImageSubresource subresource{VK_IMAGE_ASPECT_COLOR_BIT, 0, 0};
	VkSubresourceLayout layout{};
	vkGetImageSubresourceLayout(ctx.device, ctx.textureImage, &subresource, &layout);
	ctx.textureRowPitch = layout.rowPitch;
	vkMapMemory(ctx.device, ctx.textureImageMemory, 0, VK_WHOLE_SIZE, 0, &ctx.mappedTextureData);

	VkImageViewCreateInfo viewInfo{};
	viewInfo.sType = VK_STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO;
	viewInfo.image = ctx.textureImage;
	viewInfo.viewType = VK_IMAGE_VIEW_TYPE_2D;
	viewInfo.format = VK_FORMAT_B8G8R8A8_UNORM;
	viewInfo.subresourceRange.aspectMask = VK_IMAGE_ASPECT_COLOR_BIT;
	viewInfo.subresourceRange.levelCount = 1;
	viewInfo.subresourceRange.layerCount = 1;

	vkCreateImageView(ctx.device, &viewInfo, nullptr, &ctx.textureImageView);

	VkSamplerCreateInfo samplerInfo{};
	samplerInfo.sType = VK_STRUCTURE_TYPE_SAMPLER_CREATE_INFO;
	samplerInfo.magFilter = VK_FILTER_NEAREST;
	samplerInfo.minFilter = VK_FILTER_NEAREST;
	samplerInfo.addressModeU = VK_SAMPLER_ADDRESS_MODE_CLAMP_TO_EDGE;
	samplerInfo.addressModeV = VK_SAMPLER_ADDRESS_MODE_CLAMP_TO_EDGE;
	samplerInfo.addressModeW = VK_SAMPLER_ADDRESS_MODE_CLAMP_TO_EDGE;
	samplerInfo.maxAnisotropy = 1.0f;
	samplerInfo.borderColor = VK_BORDER_COLOR_INT_OPAQUE_BLACK;

	vkCreateSampler(ctx.device, &samplerInfo, nullptr, &ctx.textureSampler);
}

/*
===============================================================================
Function Name: destroyTexture

Description:
	- Destroys the Vulkan texture and its associated resources.
===============================================================================
*/
static void destroyTexture()
{
	if (ctx.mappedTextureData)
		vkUnmapMemory(ctx.device, ctx.textureImageMemory);
	if (ctx.textureSampler)
		vkDestroySampler(ctx.device, ctx.textureSampler, nullptr);
	if (ctx.textureImageView)
		vkDestroyImageView(ctx.device, ctx.textureImageView, nullptr);
	if (ctx.textureImage)
		vkDestroyImage(ctx.device, ctx.textureImage, nullptr);
	if (ctx.textureImageMemory)
		vkFreeMemory(ctx.device, ctx.textureImageMemory, nullptr);

	ctx.textureSampler = VK_NULL_HANDLE;
	ctx.textureImageView = VK_NULL_HANDLE;
	ctx.textureImage = VK_NULL_HANDLE;
	ctx.textureImageMemory = VK_NULL_HANDLE;
	ctx.mappedTextureData = nullptr;
	ctx.textureRowPitch = 0;
}

/*
===============================================================================
Function Name: uploadToTexture

Description:
	- Uploads pixel data to a Vulkan texture image.

Parameters:
	- data: Pointer to the pixel data.
	- width: Width of the texture.
	- height: Height of the texture.
	- rowOffset: Optional row offset for multi-row textures (default is 0).
===============================================================================
*/
static void uploadToTexture(const uint8_t *data, uint32_t width, uint32_t height, uint32_t rowOffset = 0)
{
	if (!ctx.mappedTextureData)
		return;

	uint8_t *dst = static_cast<uint8_t *>(ctx.mappedTextureData) + rowOffset * ctx.textureRowPitch;
	for (uint32_t y = 0; y < height; ++y)
	{
		std::memcpy(dst + y * ctx.textureRowPitch, data + y * width * 4, width * 4);
	}
}

////////////////////////////////////////////////////////////////////////
// Public API
////////////////////////////////////////////////////////////////////////

/*
===============================================================================
Function Name: resizeVulkanTexture

Description:
	- Resizes the Vulkan texture and updates the frame buffers.

Parameters:
	- width: New width of the texture.
	- height: New height of the texture.
===============================================================================
*/
void resizeVulkanTexture(uint32_t width, uint32_t height)
{
	destroyTexture();
	createVulkanTexture(width, height);
	resizeFrameBuffers(bgraBuffer, previousFrameData, forceFullUpdate, width, height);
}

/*
===============================================================================
Function Name: recreateSwapchain

Description:
	- Recreates the Vulkan swapchain with the specified dimensions.

Parameters:
	- width: New width of the swapchain.
	- height: New height of the swapchain.
===============================================================================
*/
void recreateSwapchain(uint32_t width, uint32_t height)
{
	if (ctx.swapchain)
		vkDestroySwapchainKHR(ctx.device, ctx.swapchain, nullptr);

	VkSurfaceCapabilitiesKHR surfaceCapabilities;
	vkGetPhysicalDeviceSurfaceCapabilitiesKHR(ctx.physicalDevice, ctx.surface, &surfaceCapabilities);

	ctx.swapchainExtent = {width, height};

	VkSwapchainCreateInfoKHR swapchainInfo{};
	swapchainInfo.sType = VK_STRUCTURE_TYPE_SWAPCHAIN_CREATE_INFO_KHR;
	swapchainInfo.surface = ctx.surface;
	swapchainInfo.minImageCount = 2;
	swapchainInfo.imageFormat = VK_FORMAT_B8G8R8A8_UNORM;
	swapchainInfo.imageColorSpace = VK_COLOR_SPACE_SRGB_NONLINEAR_KHR;
	swapchainInfo.imageExtent = ctx.swapchainExtent;
	swapchainInfo.imageArrayLayers = 1;
	swapchainInfo.imageUsage = VK_IMAGE_USAGE_TRANSFER_DST_BIT;
	swapchainInfo.imageSharingMode = VK_SHARING_MODE_EXCLUSIVE;
	swapchainInfo.preTransform = surfaceCapabilities.currentTransform;
	swapchainInfo.compositeAlpha = VK_COMPOSITE_ALPHA_OPAQUE_BIT_KHR;
	swapchainInfo.presentMode = VK_PRESENT_MODE_FIFO_KHR;
	swapchainInfo.clipped = VK_TRUE;
	vkCreateSwapchainKHR(ctx.device, &swapchainInfo, nullptr, &ctx.swapchain);

	uint32_t imageCount = 0;
	vkGetSwapchainImagesKHR(ctx.device, ctx.swapchain, &imageCount, nullptr);
	ctx.swapchainImages.resize(imageCount);
	vkGetSwapchainImagesKHR(ctx.device, ctx.swapchain, &imageCount, ctx.swapchainImages.data());
	ctx.swapchainFormat = VK_FORMAT_B8G8R8A8_UNORM;
}

/*
===============================================================================
Function Name: initializeVulkan

Description:
	- Initializes Vulkan and creates the necessary resources for rendering.
===============================================================================
*/
void initializeVulkan()
{
	VkApplicationInfo appInfo{};
	appInfo.sType = VK_STRUCTURE_TYPE_APPLICATION_INFO;
	appInfo.pApplicationName = "Vulkan Renderer";
	appInfo.applicationVersion = makeVersion(1, 0, 0);
	appInfo.pEngineName = "v64tng";
	appInfo.engineVersion = makeVersion(1, 0, 0);
	appInfo.apiVersion = makeAPIVersion(0, 1, 0, 0);

	VkInstanceCreateInfo createInfo{};
	createInfo.sType = VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO;
	createInfo.pApplicationInfo = &appInfo;

	std::vector<const char *> extensions = {
		VK_KHR_SURFACE_EXTENSION_NAME,
		VK_KHR_WIN32_SURFACE_EXTENSION_NAME};
	createInfo.enabledExtensionCount = static_cast<uint32_t>(extensions.size());
	createInfo.ppEnabledExtensionNames = extensions.data();

	vkCreateInstance(&createInfo, nullptr, &ctx.instance);

	uint32_t deviceCount = 0;
	vkEnumeratePhysicalDevices(ctx.instance, &deviceCount, nullptr);
	std::vector<VkPhysicalDevice> devices(deviceCount);
	vkEnumeratePhysicalDevices(ctx.instance, &deviceCount, devices.data());
	ctx.physicalDevice = devices[0];

	uint32_t queueFamilyCount = 0;
	vkGetPhysicalDeviceQueueFamilyProperties(ctx.physicalDevice, &queueFamilyCount, nullptr);
	std::vector<VkQueueFamilyProperties> queueFamilies(queueFamilyCount);
	vkGetPhysicalDeviceQueueFamilyProperties(ctx.physicalDevice, &queueFamilyCount, queueFamilies.data());
	for (uint32_t i = 0; i < queueFamilyCount; ++i)
	{
		if (queueFamilies[i].queueFlags & VK_QUEUE_GRAPHICS_BIT)
		{
			ctx.graphicsQueueFamily = i;
			break;
		}
	}

	float queuePriority = 1.0f;
	VkDeviceQueueCreateInfo queueCreateInfo{};
	queueCreateInfo.sType = VK_STRUCTURE_TYPE_DEVICE_QUEUE_CREATE_INFO;
	queueCreateInfo.queueFamilyIndex = ctx.graphicsQueueFamily;
	queueCreateInfo.queueCount = 1;
	queueCreateInfo.pQueuePriorities = &queuePriority;

	VkDeviceCreateInfo deviceInfo{};
	deviceInfo.sType = VK_STRUCTURE_TYPE_DEVICE_CREATE_INFO;
	deviceInfo.queueCreateInfoCount = 1;
	deviceInfo.pQueueCreateInfos = &queueCreateInfo;
	const char *deviceExtensions[] = {VK_KHR_SWAPCHAIN_EXTENSION_NAME};
	deviceInfo.enabledExtensionCount = 1;
	deviceInfo.ppEnabledExtensionNames = deviceExtensions;

	vkCreateDevice(ctx.physicalDevice, &deviceInfo, nullptr, &ctx.device);
	vkGetDeviceQueue(ctx.device, ctx.graphicsQueueFamily, 0, &ctx.graphicsQueue);

	VkWin32SurfaceCreateInfoKHR surfaceInfo{};
	surfaceInfo.sType = VK_STRUCTURE_TYPE_WIN32_SURFACE_CREATE_INFO_KHR;
	surfaceInfo.hwnd = g_hwnd;
	surfaceInfo.hinstance = GetModuleHandle(nullptr);
	vkCreateWin32SurfaceKHR(ctx.instance, &surfaceInfo, nullptr, &ctx.surface);

	VkBool32 supported;
	vkGetPhysicalDeviceSurfaceSupportKHR(ctx.physicalDevice, ctx.graphicsQueueFamily, ctx.surface, &supported);

	VkSurfaceCapabilitiesKHR surfaceCapabilities;
	vkGetPhysicalDeviceSurfaceCapabilitiesKHR(ctx.physicalDevice, ctx.surface, &surfaceCapabilities);

	ctx.swapchainExtent = surfaceCapabilities.currentExtent;

	VkSwapchainCreateInfoKHR swapchainInfo{};
	swapchainInfo.sType = VK_STRUCTURE_TYPE_SWAPCHAIN_CREATE_INFO_KHR;
	swapchainInfo.surface = ctx.surface;
	swapchainInfo.minImageCount = 2;
	swapchainInfo.imageFormat = VK_FORMAT_B8G8R8A8_UNORM;
	swapchainInfo.imageColorSpace = VK_COLOR_SPACE_SRGB_NONLINEAR_KHR;
	swapchainInfo.imageExtent = ctx.swapchainExtent;
	swapchainInfo.imageArrayLayers = 1;
	swapchainInfo.imageUsage = VK_IMAGE_USAGE_TRANSFER_DST_BIT;
	swapchainInfo.imageSharingMode = VK_SHARING_MODE_EXCLUSIVE;
	swapchainInfo.preTransform = surfaceCapabilities.currentTransform;
	swapchainInfo.compositeAlpha = VK_COMPOSITE_ALPHA_OPAQUE_BIT_KHR;
	swapchainInfo.presentMode = VK_PRESENT_MODE_FIFO_KHR;
	swapchainInfo.clipped = VK_TRUE;
	vkCreateSwapchainKHR(ctx.device, &swapchainInfo, nullptr, &ctx.swapchain);

	uint32_t imageCount = 0;
	vkGetSwapchainImagesKHR(ctx.device, ctx.swapchain, &imageCount, nullptr);
	ctx.swapchainImages.resize(imageCount);
	vkGetSwapchainImagesKHR(ctx.device, ctx.swapchain, &imageCount, ctx.swapchainImages.data());
	ctx.swapchainFormat = VK_FORMAT_B8G8R8A8_UNORM;

	VkSemaphoreCreateInfo semaphoreInfo{};
	semaphoreInfo.sType = VK_STRUCTURE_TYPE_SEMAPHORE_CREATE_INFO;
	vkCreateSemaphore(ctx.device, &semaphoreInfo, nullptr, &ctx.imageAvailableSemaphore);
	vkCreateSemaphore(ctx.device, &semaphoreInfo, nullptr, &ctx.renderFinishedSemaphore);

	VkFenceCreateInfo fenceInfo{};
	fenceInfo.sType = VK_STRUCTURE_TYPE_FENCE_CREATE_INFO;
	fenceInfo.flags = VK_FENCE_CREATE_SIGNALED_BIT;
	vkCreateFence(ctx.device, &fenceInfo, nullptr, &ctx.inFlightFence);

	VkCommandPoolCreateInfo poolInfo{};
	poolInfo.sType = VK_STRUCTURE_TYPE_COMMAND_POOL_CREATE_INFO;
	poolInfo.queueFamilyIndex = ctx.graphicsQueueFamily;
	poolInfo.flags = VK_COMMAND_POOL_CREATE_RESET_COMMAND_BUFFER_BIT;

	vkCreateCommandPool(ctx.device, &poolInfo, nullptr, &ctx.commandPool);

	if (state.raycast.enabled)
	{
		resizeVulkanTexture(static_cast<uint32_t>(state.ui.width),
							static_cast<uint32_t>(state.ui.height));
		scaleFactor = 1.0f;
	}
	else
	{
		resizeVulkanTexture(MIN_CLIENT_WIDTH, MIN_CLIENT_HEIGHT);
		scaleFactor = static_cast<float>(state.ui.width) / MIN_CLIENT_WIDTH;
	}
}

/*
===============================================================================
Function Name: updateFrameTexture

Description:
	- Updates the Vulkan texture with new pixel data.
	- Converts RGB pixel data to BGRA format and uploads it to the texture.

Parameters:
	- pixelData: Span of pixel data in RGB format.
===============================================================================
*/
static void updateFrameTexture(std::span<const uint8_t> pixelData)
{
	// Force full update for transient animations to avoid change detection issues
	bool forceUpdate = forceFullUpdate || !state.transient_animation_name.empty();

	auto changedRows = prepareBGRABuffer(pixelData, MIN_CLIENT_WIDTH, MIN_CLIENT_HEIGHT, bgraBuffer, previousFrameData, forceUpdate);
	if (changedRows.size() == static_cast<size_t>(MIN_CLIENT_HEIGHT))
	{
		uploadToTexture(bgraBuffer.data(), MIN_CLIENT_WIDTH, MIN_CLIENT_HEIGHT);
	}
	else
	{
		for (size_t y : changedRows)
		{
			uploadToTexture(&bgraBuffer[y * MIN_CLIENT_WIDTH * 4], MIN_CLIENT_WIDTH, 1, static_cast<uint32_t>(y));
		}
	}
}

/*
===============================================================================
Function Name: renderFrameVk

Description:
	- Renders a frame using Vulkan.
	- It retrieves the current VDX file and frame index, updates the texture with the pixel data,
	  and prepares the frame for rendering.
===============================================================================
*/
void renderFrameVk()
{
	const VDXFile *vdx_to_render = nullptr;
	size_t frame_index = 0;

	// Prioritize transient animation (even if stopped, use its last frame)
	if (!state.transient_animation_name.empty())
	{
		auto it = std::ranges::find(state.VDXFiles, state.transient_animation_name, &VDXFile::filename);
		if (it != state.VDXFiles.end())
		{
			vdx_to_render = &(*it);
			frame_index = state.transient_frame_index;
		}
	}
	// Fallback to current VDX if no transient is active
	else if (state.currentVDX)
	{
		vdx_to_render = state.currentVDX;
		frame_index = state.currentFrameIndex;
	}
	else
	{
		return; // Nothing to render
	}

	std::span<const uint8_t> pixelData = vdx_to_render->frameData[frame_index];
	updateFrameTexture(pixelData);
	presentFrame();
}

/*
===============================================================================
Function Name: renderFrameRaycastVk

Description:
	- Renders a frame using the Raycast engine with Vulkan.
	- It retrieves the current Raycast map and player state, renders the view,
	  and uploads the rendered image to the Vulkan texture.
===============================================================================
*/
void renderFrameRaycastVk()
{
	const auto &tileMap = *state.raycast.map;
	const RaycastPlayer &player = state.raycast.player;

	const uint32_t rw = static_cast<uint32_t>(state.ui.width);
	const uint32_t rh = static_cast<uint32_t>(state.ui.height);

	renderRaycastView(
		tileMap,
		player,
		bgraBuffer.data(),
		static_cast<int>(rw),
		static_cast<int>(rh),
		config.value("raycastSupersample", 1));
	uploadToTexture(bgraBuffer.data(), rw, rh);
	presentFrame();
}

/*
==============================================================================
Function Name: presentFrame

Description:
		- Presents the prepared texture image to the swapchain.
==============================================================================
*/
void presentFrame()
{
	vkWaitForFences(ctx.device, 1, &ctx.inFlightFence, VK_TRUE, UINT64_MAX);
	vkResetFences(ctx.device, 1, &ctx.inFlightFence);

	uint32_t imageIndex;
	vkAcquireNextImageKHR(ctx.device, ctx.swapchain, UINT64_MAX, ctx.imageAvailableSemaphore, VK_NULL_HANDLE, &imageIndex);

	VkCommandBufferAllocateInfo allocInfo{};
	allocInfo.sType = VK_STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO;
	allocInfo.commandPool = ctx.commandPool;
	allocInfo.level = VK_COMMAND_BUFFER_LEVEL_PRIMARY;
	allocInfo.commandBufferCount = 1;

	VkCommandBuffer commandBuffer;
	vkAllocateCommandBuffers(ctx.device, &allocInfo, &commandBuffer);

	VkCommandBufferBeginInfo beginInfo{};
	beginInfo.sType = VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO;
	beginInfo.flags = VK_COMMAND_BUFFER_USAGE_ONE_TIME_SUBMIT_BIT;
	vkBeginCommandBuffer(commandBuffer, &beginInfo);

	VkImageMemoryBarrier barrier{};
	barrier.sType = VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER;
	barrier.srcAccessMask = 0;
	barrier.dstAccessMask = VK_ACCESS_TRANSFER_WRITE_BIT;
	barrier.oldLayout = VK_IMAGE_LAYOUT_UNDEFINED;
	barrier.newLayout = VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL;
	barrier.image = ctx.swapchainImages[imageIndex];
	barrier.subresourceRange.aspectMask = VK_IMAGE_ASPECT_COLOR_BIT;
	barrier.subresourceRange.baseMipLevel = 0;
	barrier.subresourceRange.levelCount = 1;
	barrier.subresourceRange.baseArrayLayer = 0;
	barrier.subresourceRange.layerCount = 1;
	vkCmdPipelineBarrier(commandBuffer, VK_PIPELINE_STAGE_TOP_OF_PIPE_BIT, VK_PIPELINE_STAGE_TRANSFER_BIT, 0,
						 0, nullptr, 0, nullptr, 1, &barrier);

	VkImageMemoryBarrier texBarrier{};
	texBarrier.sType = VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER;
	texBarrier.srcAccessMask = VK_ACCESS_HOST_WRITE_BIT;
	texBarrier.dstAccessMask = VK_ACCESS_TRANSFER_READ_BIT;
	texBarrier.oldLayout = VK_IMAGE_LAYOUT_GENERAL;
	texBarrier.newLayout = VK_IMAGE_LAYOUT_GENERAL;
	texBarrier.image = ctx.textureImage;
	texBarrier.subresourceRange.aspectMask = VK_IMAGE_ASPECT_COLOR_BIT;
	texBarrier.subresourceRange.baseMipLevel = 0;
	texBarrier.subresourceRange.levelCount = 1;
	texBarrier.subresourceRange.baseArrayLayer = 0;
	texBarrier.subresourceRange.layerCount = 1;
	vkCmdPipelineBarrier(commandBuffer, VK_PIPELINE_STAGE_HOST_BIT, VK_PIPELINE_STAGE_TRANSFER_BIT, 0,
						 0, nullptr, 0, nullptr, 1, &texBarrier);

	VkImageBlit blitRegion{};
	blitRegion.srcSubresource.aspectMask = VK_IMAGE_ASPECT_COLOR_BIT;
	blitRegion.srcSubresource.mipLevel = 0;
	blitRegion.srcSubresource.baseArrayLayer = 0;
	blitRegion.srcSubresource.layerCount = 1;
	uint32_t texW = state.raycast.enabled ? static_cast<uint32_t>(state.ui.width) : MIN_CLIENT_WIDTH;
	uint32_t texH = state.raycast.enabled ? static_cast<uint32_t>(state.ui.height) : MIN_CLIENT_HEIGHT;
	blitRegion.srcOffsets[1].x = texW;
	blitRegion.srcOffsets[1].y = texH;
	blitRegion.srcOffsets[1].z = 1;
	blitRegion.dstSubresource.aspectMask = VK_IMAGE_ASPECT_COLOR_BIT;
	blitRegion.dstSubresource.mipLevel = 0;
	blitRegion.dstSubresource.baseArrayLayer = 0;
	blitRegion.dstSubresource.layerCount = 1;
	if (state.raycast.enabled)
	{
		blitRegion.dstOffsets[0].x = 0;
		blitRegion.dstOffsets[0].y = 0;
		blitRegion.dstOffsets[0].z = 0;
		blitRegion.dstOffsets[1].x = static_cast<int32_t>(ctx.swapchainExtent.width);
		blitRegion.dstOffsets[1].y = static_cast<int32_t>(ctx.swapchainExtent.height);
		blitRegion.dstOffsets[1].z = 1;
	}
	else
	{
		float scaledHeight = MIN_CLIENT_HEIGHT * scaleFactor;
		int32_t offsetY = static_cast<int32_t>((ctx.swapchainExtent.height - scaledHeight) * 0.5f);
		blitRegion.dstOffsets[0].x = 0;
		blitRegion.dstOffsets[0].y = offsetY;
		blitRegion.dstOffsets[0].z = 0;
		blitRegion.dstOffsets[1].x = static_cast<int32_t>(ctx.swapchainExtent.width);
		blitRegion.dstOffsets[1].y = offsetY + static_cast<int32_t>(scaledHeight);
		blitRegion.dstOffsets[1].z = 1;
	}

	vkCmdBlitImage(commandBuffer,
				   ctx.textureImage, VK_IMAGE_LAYOUT_GENERAL,
				   ctx.swapchainImages[imageIndex], VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL,
				   1, &blitRegion, VK_FILTER_NEAREST);

	barrier.srcAccessMask = VK_ACCESS_TRANSFER_WRITE_BIT;
	barrier.dstAccessMask = VK_ACCESS_MEMORY_READ_BIT;
	barrier.oldLayout = VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL;
	barrier.newLayout = VK_IMAGE_LAYOUT_PRESENT_SRC_KHR;
	vkCmdPipelineBarrier(commandBuffer, VK_PIPELINE_STAGE_TRANSFER_BIT, VK_PIPELINE_STAGE_BOTTOM_OF_PIPE_BIT, 0,
						 0, nullptr, 0, nullptr, 1, &barrier);

	vkEndCommandBuffer(commandBuffer);

	VkPipelineStageFlags waitStage = VK_PIPELINE_STAGE_TRANSFER_BIT;
	VkSubmitInfo submitInfo{};
	submitInfo.sType = VK_STRUCTURE_TYPE_SUBMIT_INFO;
	submitInfo.waitSemaphoreCount = 1;
	submitInfo.pWaitSemaphores = &ctx.imageAvailableSemaphore;
	submitInfo.pWaitDstStageMask = &waitStage;
	submitInfo.commandBufferCount = 1;
	submitInfo.pCommandBuffers = &commandBuffer;
	submitInfo.signalSemaphoreCount = 1;
	submitInfo.pSignalSemaphores = &ctx.renderFinishedSemaphore;

	vkQueueSubmit(ctx.graphicsQueue, 1, &submitInfo, ctx.inFlightFence);

	VkPresentInfoKHR presentInfo{};
	presentInfo.sType = VK_STRUCTURE_TYPE_PRESENT_INFO_KHR;
	presentInfo.waitSemaphoreCount = 1;
	presentInfo.pWaitSemaphores = &ctx.renderFinishedSemaphore;
	presentInfo.swapchainCount = 1;
	presentInfo.pSwapchains = &ctx.swapchain;
	presentInfo.pImageIndices = &imageIndex;
	vkQueuePresentKHR(ctx.graphicsQueue, &presentInfo);

	vkFreeCommandBuffers(ctx.device, ctx.commandPool, 1, &commandBuffer);
}

/*
===============================================================================
Function Name: cleanupVulkan

Description:
	- Cleans up Vulkan resources and destroys the Vulkan context.
===============================================================================
*/
void cleanupVulkan()
{
	destroyTexture();
	if (ctx.swapchain)
		vkDestroySwapchainKHR(ctx.device, ctx.swapchain, nullptr);
	if (ctx.surface)
		vkDestroySurfaceKHR(ctx.instance, ctx.surface, nullptr);
	if (ctx.imageAvailableSemaphore)
		vkDestroySemaphore(ctx.device, ctx.imageAvailableSemaphore, nullptr);
	if (ctx.renderFinishedSemaphore)
		vkDestroySemaphore(ctx.device, ctx.renderFinishedSemaphore, nullptr);
	if (ctx.inFlightFence)
		vkDestroyFence(ctx.device, ctx.inFlightFence, nullptr);
	if (ctx.commandPool)
		vkDestroyCommandPool(ctx.device, ctx.commandPool, nullptr);
	if (ctx.device)
		vkDestroyDevice(ctx.device, nullptr);
	if (ctx.instance)
		vkDestroyInstance(ctx.instance, nullptr);

	ctx = {};
}