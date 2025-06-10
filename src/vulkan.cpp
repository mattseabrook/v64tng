// vulkan.cpp

#include <stdexcept>
#include <vector>
#include <cstring>

#include <vulkan/vulkan.h>

#include "vulkan.h"
#include "game.h"
#include "config.h"
#include "window.h"
#include "raycast.h"
#include "render.h"

//
// Vulkan context structure to hold Vulkan-related resources
//
static VulkanContext ctx;

/*
===============================================================================
Function Name: createBuffer

Description:
	- Creates a Vulkan buffer and allocates memory for it.

Parameters:
	- size: Size of the buffer in bytes.
	- usage: Buffer usage flags (e.g., VK_BUFFER_USAGE_VERTEX_BUFFER_BIT).
	- properties: Memory property flags (e.g., VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT).
	- buffer: Reference to the created buffer.
	- bufferMemory: Reference to the allocated device memory for the buffer.
===============================================================================
*/
static void createBuffer(VkDeviceSize size, VkBufferUsageFlags usage, VkMemoryPropertyFlags properties,
						 VkBuffer &buffer, VkDeviceMemory &bufferMemory)
{
	VkBufferCreateInfo bufferInfo{};
	bufferInfo.sType = VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO;
	bufferInfo.size = size;
	bufferInfo.usage = usage;
	bufferInfo.sharingMode = VK_SHARING_MODE_EXCLUSIVE;

	if (vkCreateBuffer(ctx.device, &bufferInfo, nullptr, &buffer) != VK_SUCCESS)
		throw std::runtime_error("Failed to create buffer");

	VkMemoryRequirements memRequirements;
	vkGetBufferMemoryRequirements(ctx.device, buffer, &memRequirements);

	VkMemoryAllocateInfo allocInfo{};
	allocInfo.sType = VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO;
	allocInfo.allocationSize = memRequirements.size;
	allocInfo.memoryTypeIndex = findMemoryType(memRequirements.memoryTypeBits, properties);

	if (vkAllocateMemory(ctx.device, &allocInfo, nullptr, &bufferMemory) != VK_SUCCESS)
		throw std::runtime_error("Failed to allocate buffer memory");

	vkBindBufferMemory(ctx.device, buffer, bufferMemory, 0);
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
	imageInfo.tiling = VK_IMAGE_TILING_OPTIMAL;
	imageInfo.usage = VK_IMAGE_USAGE_SAMPLED_BIT | VK_IMAGE_USAGE_TRANSFER_DST_BIT;
	imageInfo.sharingMode = VK_SHARING_MODE_EXCLUSIVE;
	imageInfo.initialLayout = VK_IMAGE_LAYOUT_UNDEFINED;

	vkCreateImage(ctx.device, &imageInfo, nullptr, &ctx.textureImage);

	VkMemoryRequirements memReq;
	vkGetImageMemoryRequirements(ctx.device, ctx.textureImage, &memReq);

	VkMemoryAllocateInfo allocInfo{};
	allocInfo.sType = VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO;
	allocInfo.allocationSize = memReq.size;
	allocInfo.memoryTypeIndex = findMemoryType(memReq.memoryTypeBits, VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT);

	vkAllocateMemory(ctx.device, &allocInfo, nullptr, &ctx.textureImageMemory);
	vkBindImageMemory(ctx.device, ctx.textureImage, ctx.textureImageMemory, 0);

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
	VkDeviceSize imageSize = static_cast<VkDeviceSize>(width) * height * 4;

	VkBuffer stagingBuffer;
	VkDeviceMemory stagingBufferMemory;
	createBuffer(imageSize, VK_BUFFER_USAGE_TRANSFER_SRC_BIT,
				 VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT | VK_MEMORY_PROPERTY_HOST_COHERENT_BIT,
				 stagingBuffer, stagingBufferMemory);

	void *mapped;
	vkMapMemory(ctx.device, stagingBufferMemory, 0, imageSize, 0, &mapped);
	std::memcpy(mapped, data, static_cast<size_t>(imageSize));
	vkUnmapMemory(ctx.device, stagingBufferMemory);

	VkCommandBufferAllocateInfo allocInfo{};
	allocInfo.sType = VK_STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO;
	allocInfo.level = VK_COMMAND_BUFFER_LEVEL_PRIMARY;
	allocInfo.commandPool = ctx.commandPool;
	allocInfo.commandBufferCount = 1;

	VkCommandBuffer cmd;
	vkAllocateCommandBuffers(ctx.device, &allocInfo, &cmd);

	VkCommandBufferBeginInfo beginInfo{};
	beginInfo.sType = VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO;
	beginInfo.flags = VK_COMMAND_BUFFER_USAGE_ONE_TIME_SUBMIT_BIT;

	vkBeginCommandBuffer(cmd, &beginInfo);

	VkBufferImageCopy region{};
	region.bufferOffset = 0;
	region.imageSubresource.aspectMask = VK_IMAGE_ASPECT_COLOR_BIT;
	region.imageSubresource.mipLevel = 0;
	region.imageSubresource.baseArrayLayer = 0;
	region.imageSubresource.layerCount = 1;
	region.imageOffset = {0, static_cast<int32_t>(rowOffset), 0};
	region.imageExtent = {width, height, 1};

	vkCmdCopyBufferToImage(cmd, stagingBuffer, ctx.textureImage,
						   VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL, 1, &region);

	vkEndCommandBuffer(cmd);

	VkSubmitInfo submitInfo{};
	submitInfo.sType = VK_STRUCTURE_TYPE_SUBMIT_INFO;
	submitInfo.commandBufferCount = 1;
	submitInfo.pCommandBuffers = &cmd;

	vkQueueSubmit(ctx.graphicsQueue, 1, &submitInfo, VK_NULL_HANDLE);
	vkQueueWaitIdle(ctx.graphicsQueue);

	vkFreeCommandBuffers(ctx.device, ctx.commandPool, 1, &cmd);
	vkDestroyBuffer(ctx.device, stagingBuffer, nullptr);
	vkFreeMemory(ctx.device, stagingBufferMemory, nullptr);
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
	appInfo.applicationVersion = VK_MAKE_VERSION(1, 0, 0);
	appInfo.pEngineName = "v64tng";
	appInfo.engineVersion = VK_MAKE_VERSION(1, 0, 0);
	appInfo.apiVersion = VK_API_VERSION_1_0;

	VkInstanceCreateInfo createInfo{};
	createInfo.sType = VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO;
	createInfo.pApplicationInfo = &appInfo;

	std::vector<const char *> extensions = {VK_KHR_SURFACE_EXTENSION_NAME};
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

	vkCreateDevice(ctx.physicalDevice, &deviceInfo, nullptr, &ctx.device);
	vkGetDeviceQueue(ctx.device, ctx.graphicsQueueFamily, 0, &ctx.graphicsQueue);

	VkCommandPoolCreateInfo poolInfo{};
	poolInfo.sType = VK_STRUCTURE_TYPE_COMMAND_POOL_CREATE_INFO;
	poolInfo.queueFamilyIndex = ctx.graphicsQueueFamily;
	poolInfo.flags = VK_COMMAND_POOL_CREATE_RESET_COMMAND_BUFFER_BIT;

	vkCreateCommandPool(ctx.device, &poolInfo, nullptr, &ctx.commandPool);

	resizeVulkanTexture(MIN_CLIENT_WIDTH, MIN_CLIENT_HEIGHT);
	scaleFactor = static_cast<float>(state.ui.width) / MIN_CLIENT_WIDTH;
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
	auto changedRows = prepareBGRABuffer(pixelData, MIN_CLIENT_WIDTH, MIN_CLIENT_HEIGHT,
										 bgraBuffer, previousFrameData, forceFullUpdate);
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

	if (!state.transient_animation_name.empty())
	{
		auto it = std::ranges::find(state.VDXFiles, state.transient_animation_name, &VDXFile::filename);
		if (it != state.VDXFiles.end())
		{
			vdx_to_render = &(*it);
			frame_index = state.transient_frame_index;
		}
		else
		{
			throw std::runtime_error("Transient animation VDX not found: " + state.transient_animation_name);
		}
	}
	else if (state.currentVDX)
	{
		vdx_to_render = state.currentVDX;
		frame_index = state.currentFrameIndex;
	}
	else
	{
		return;
	}

	updateFrameTexture(vdx_to_render->chunks[frame_index].data);
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
	const auto &map = *state.raycast.map;
	const RaycastPlayer &player = state.raycast.player;

	renderRaycastView(map, player, bgraBuffer.data(), MIN_CLIENT_WIDTH, MIN_CLIENT_HEIGHT);
	uploadToTexture(bgraBuffer.data(), MIN_CLIENT_WIDTH, MIN_CLIENT_HEIGHT);
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
	if (ctx.commandPool)
		vkDestroyCommandPool(ctx.device, ctx.commandPool, nullptr);
	if (ctx.device)
		vkDestroyDevice(ctx.device, nullptr);
	if (ctx.instance)
		vkDestroyInstance(ctx.instance, nullptr);

	ctx = {};
}