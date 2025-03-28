// vulkan.cpp

#include <stdexcept>
#include <array>

#include "vulkan.h"
#include "game.h"

static VulkanContext ctx;
static VkCommandBuffer commandBuffer;

//
// Find a suitable memory type
//
static uint32_t findMemoryType(uint32_t typeFilter, VkMemoryPropertyFlags properties) {
	VkPhysicalDeviceMemoryProperties memProperties;
	vkGetPhysicalDeviceMemoryProperties(ctx.physicalDevice, &memProperties);

	for (uint32_t i = 0; i < memProperties.memoryTypeCount; i++) {
		if ((typeFilter & (1 << i)) && (memProperties.memoryTypes[i].propertyFlags & properties) == properties) {
			return i;
		}
	}

	throw std::runtime_error("Failed to find suitable memory type!");
}

//
// Create a buffer and allocate memory for it
//
static void createBuffer(VkDeviceSize size, VkBufferUsageFlags usage, VkMemoryPropertyFlags properties,
	VkBuffer& buffer, VkDeviceMemory& bufferMemory) {
	VkBufferCreateInfo bufferInfo{};
	bufferInfo.sType = VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO;
	bufferInfo.size = size;
	bufferInfo.usage = usage;
	bufferInfo.sharingMode = VK_SHARING_MODE_EXCLUSIVE;

	if (vkCreateBuffer(ctx.device, &bufferInfo, nullptr, &buffer) != VK_SUCCESS) {
		throw std::runtime_error("Failed to create buffer");
	}

	VkMemoryRequirements memRequirements;
	vkGetBufferMemoryRequirements(ctx.device, buffer, &memRequirements);

	VkMemoryAllocateInfo allocInfo{};
	allocInfo.sType = VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO;
	allocInfo.allocationSize = memRequirements.size;
	allocInfo.memoryTypeIndex = findMemoryType(memRequirements.memoryTypeBits, properties);

	if (vkAllocateMemory(ctx.device, &allocInfo, nullptr, &bufferMemory) != VK_SUCCESS) {
		throw std::runtime_error("Failed to allocate buffer memory");
	}

	vkBindBufferMemory(ctx.device, buffer, bufferMemory, 0);
}

//
// Initialize Vulkan
//
void initializeVulkan() {
	VkApplicationInfo appInfo{};
	appInfo.sType = VK_STRUCTURE_TYPE_APPLICATION_INFO;
	appInfo.pApplicationName = "Vulkan Renderer";
	appInfo.applicationVersion = VK_MAKE_VERSION(1, 0, 0);
	appInfo.pEngineName = "No Engine";
	appInfo.engineVersion = VK_MAKE_VERSION(1, 0, 0);
	appInfo.apiVersion = VK_API_VERSION_1_0;

	VkInstanceCreateInfo createInfo{};
	createInfo.sType = VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO;
	createInfo.pApplicationInfo = &appInfo;

	std::vector<const char*> extensions = { VK_KHR_SURFACE_EXTENSION_NAME };
	createInfo.enabledExtensionCount = static_cast<uint32_t>(extensions.size());
	createInfo.ppEnabledExtensionNames = extensions.data();

	vkCreateInstance(&createInfo, nullptr, &ctx.instance);

	// Physical device
	uint32_t deviceCount = 0;
	vkEnumeratePhysicalDevices(ctx.instance, &deviceCount, nullptr);
	std::vector<VkPhysicalDevice> devices(deviceCount);
	vkEnumeratePhysicalDevices(ctx.instance, &deviceCount, devices.data());
	ctx.physicalDevice = devices[0];

	// Queue family
	uint32_t queueFamilyCount = 0;
	vkGetPhysicalDeviceQueueFamilyProperties(ctx.physicalDevice, &queueFamilyCount, nullptr);
	std::vector<VkQueueFamilyProperties> queueFamilies(queueFamilyCount);
	vkGetPhysicalDeviceQueueFamilyProperties(ctx.physicalDevice, &queueFamilyCount, queueFamilies.data());

	for (uint32_t i = 0; i < queueFamilyCount; i++) {
		if (queueFamilies[i].queueFlags & VK_QUEUE_GRAPHICS_BIT) {
			ctx.graphicsQueueFamily = i;
			break;
		}
	}

	// Logical device
	float queuePriority = 1.0f;
	VkDeviceQueueCreateInfo queueCreateInfo{};
	queueCreateInfo.sType = VK_STRUCTURE_TYPE_DEVICE_QUEUE_CREATE_INFO;
	queueCreateInfo.queueFamilyIndex = ctx.graphicsQueueFamily;
	queueCreateInfo.queueCount = 1;
	queueCreateInfo.pQueuePriorities = &queuePriority;

	VkPhysicalDeviceFeatures deviceFeatures{};

	VkDeviceCreateInfo deviceInfo{};
	deviceInfo.sType = VK_STRUCTURE_TYPE_DEVICE_CREATE_INFO;
	deviceInfo.queueCreateInfoCount = 1;
	deviceInfo.pQueueCreateInfos = &queueCreateInfo;
	deviceInfo.pEnabledFeatures = &deviceFeatures;
	deviceInfo.enabledExtensionCount = 0;

	vkCreateDevice(ctx.physicalDevice, &deviceInfo, nullptr, &ctx.device);
	vkGetDeviceQueue(ctx.device, ctx.graphicsQueueFamily, 0, &ctx.graphicsQueue);

	// Command pool
	VkCommandPoolCreateInfo poolInfo{};
	poolInfo.sType = VK_STRUCTURE_TYPE_COMMAND_POOL_CREATE_INFO;
	poolInfo.queueFamilyIndex = ctx.graphicsQueueFamily;
	poolInfo.flags = VK_COMMAND_POOL_CREATE_RESET_COMMAND_BUFFER_BIT;
	vkCreateCommandPool(ctx.device, &poolInfo, nullptr, &ctx.commandPool);

	// Create initial texture
	createVulkanTexture(nullptr, MIN_CLIENT_WIDTH, MIN_CLIENT_HEIGHT);
}

//
// Create a texture from pixel data
//
void createVulkanTexture(const uint8_t* pixels, uint32_t width, uint32_t height) {
	(void)pixels;
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

	VkMemoryRequirements memRequirements;
	vkGetImageMemoryRequirements(ctx.device, ctx.textureImage, &memRequirements);

	VkMemoryAllocateInfo allocInfo{};
	allocInfo.sType = VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO;
	allocInfo.allocationSize = memRequirements.size;
	allocInfo.memoryTypeIndex = findMemoryType(memRequirements.memoryTypeBits,
		VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT);

	vkAllocateMemory(ctx.device, &allocInfo, nullptr, &ctx.textureImageMemory);
	vkBindImageMemory(ctx.device, ctx.textureImage, ctx.textureImageMemory, 0);

	VkImageViewCreateInfo viewInfo{};
	viewInfo.sType = VK_STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO;
	viewInfo.image = ctx.textureImage;
	viewInfo.viewType = VK_IMAGE_VIEW_TYPE_2D;
	viewInfo.format = VK_FORMAT_B8G8R8A8_UNORM;
	viewInfo.subresourceRange.aspectMask = VK_IMAGE_ASPECT_COLOR_BIT;
	viewInfo.subresourceRange.baseMipLevel = 0;
	viewInfo.subresourceRange.levelCount = 1;
	viewInfo.subresourceRange.baseArrayLayer = 0;
	viewInfo.subresourceRange.layerCount = 1;

	vkCreateImageView(ctx.device, &viewInfo, nullptr, &ctx.textureImageView);

	VkSamplerCreateInfo samplerInfo{};
	samplerInfo.sType = VK_STRUCTURE_TYPE_SAMPLER_CREATE_INFO;
	samplerInfo.magFilter = VK_FILTER_NEAREST;
	samplerInfo.minFilter = VK_FILTER_NEAREST;
	samplerInfo.addressModeU = VK_SAMPLER_ADDRESS_MODE_CLAMP_TO_EDGE;
	samplerInfo.addressModeV = VK_SAMPLER_ADDRESS_MODE_CLAMP_TO_EDGE;
	samplerInfo.addressModeW = VK_SAMPLER_ADDRESS_MODE_CLAMP_TO_EDGE;
	samplerInfo.anisotropyEnable = VK_FALSE;
	samplerInfo.maxAnisotropy = 1.0f;
	samplerInfo.borderColor = VK_BORDER_COLOR_INT_OPAQUE_BLACK;
	samplerInfo.unnormalizedCoordinates = VK_FALSE;
	samplerInfo.compareEnable = VK_FALSE;
	samplerInfo.compareOp = VK_COMPARE_OP_ALWAYS;
	samplerInfo.mipmapMode = VK_SAMPLER_MIPMAP_MODE_NEAREST;
	samplerInfo.mipLodBias = 0.0f;
	samplerInfo.minLod = 0.0f;
	samplerInfo.maxLod = 0.0f;

	vkCreateSampler(ctx.device, &samplerInfo, nullptr, &ctx.textureSampler);
}

//
// Render a frame using Vulkan
//
void renderFrameVk() {
	// Convert RGB to BGRA
	std::span<const uint8_t> pixelData = state.currentVDX->chunks[state.currentFrameIndex].data;
	std::vector<uint8_t> bgraData(MIN_CLIENT_WIDTH * MIN_CLIENT_HEIGHT * 4);

	for (size_t i = 0, j = 0; i < pixelData.size(); i += 3, j += 4) {
		bgraData[j] = pixelData[i + 2];     // Blue
		bgraData[j + 1] = pixelData[i + 1]; // Green
		bgraData[j + 2] = pixelData[i];     // Red
		bgraData[j + 3] = 255;              // Alpha
	}

	// Update texture
	VkBuffer stagingBuffer;
	VkDeviceMemory stagingBufferMemory;
	VkDeviceSize imageSize = MIN_CLIENT_WIDTH * MIN_CLIENT_HEIGHT * 4;

	createBuffer(imageSize, VK_BUFFER_USAGE_TRANSFER_SRC_BIT,
		VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT | VK_MEMORY_PROPERTY_HOST_COHERENT_BIT,
		stagingBuffer, stagingBufferMemory);

	void* data;
	vkMapMemory(ctx.device, stagingBufferMemory, 0, imageSize, 0, &data);
	memcpy(data, bgraData.data(), static_cast<size_t>(imageSize));
	vkUnmapMemory(ctx.device, stagingBufferMemory);

	// Copy to texture
	VkCommandBufferAllocateInfo allocInfo{};
	allocInfo.sType = VK_STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO;
	allocInfo.level = VK_COMMAND_BUFFER_LEVEL_PRIMARY;
	allocInfo.commandPool = ctx.commandPool;
	allocInfo.commandBufferCount = 1;

	VkCommandBuffer localCommandBuffer;
	vkAllocateCommandBuffers(ctx.device, &allocInfo, &localCommandBuffer);

	VkCommandBufferBeginInfo beginInfo{};
	beginInfo.sType = VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO;
	beginInfo.flags = VK_COMMAND_BUFFER_USAGE_ONE_TIME_SUBMIT_BIT;

	vkBeginCommandBuffer(localCommandBuffer, &beginInfo);

	VkBufferImageCopy region{};
	region.bufferOffset = 0;
	region.bufferRowLength = 0;
	region.bufferImageHeight = 0;
	region.imageSubresource.aspectMask = VK_IMAGE_ASPECT_COLOR_BIT;
	region.imageSubresource.mipLevel = 0;
	region.imageSubresource.baseArrayLayer = 0;
	region.imageSubresource.layerCount = 1;
	region.imageOffset = { 0, 0, 0 };
	region.imageExtent = { static_cast<uint32_t>(MIN_CLIENT_WIDTH), static_cast<uint32_t>(MIN_CLIENT_HEIGHT), 1 };

	vkCmdCopyBufferToImage(localCommandBuffer, stagingBuffer, ctx.textureImage,
		VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL, 1, &region);

	vkEndCommandBuffer(localCommandBuffer);

	VkSubmitInfo submitInfo{};
	submitInfo.sType = VK_STRUCTURE_TYPE_SUBMIT_INFO;
	submitInfo.commandBufferCount = 1;
	submitInfo.pCommandBuffers = &localCommandBuffer;

	vkQueueSubmit(ctx.graphicsQueue, 1, &submitInfo, VK_NULL_HANDLE);
	vkQueueWaitIdle(ctx.graphicsQueue);

	vkFreeCommandBuffers(ctx.device, ctx.commandPool, 1, &localCommandBuffer);
	vkDestroyBuffer(ctx.device, stagingBuffer, nullptr);
	vkFreeMemory(ctx.device, stagingBufferMemory, nullptr);
}

//
// Cleanup Vulkan resources
//
void cleanupVulkan() {
	vkDestroySampler(ctx.device, ctx.textureSampler, nullptr);
	vkDestroyImageView(ctx.device, ctx.textureImageView, nullptr);
	vkDestroyImage(ctx.device, ctx.textureImage, nullptr);
	vkFreeMemory(ctx.device, ctx.textureImageMemory, nullptr);
	vkDestroyCommandPool(ctx.device, ctx.commandPool, nullptr);
	vkDestroyDevice(ctx.device, nullptr);
	vkDestroyInstance(ctx.instance, nullptr);
}