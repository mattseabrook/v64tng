#ifndef VULKAN_H
#define VULKAN_H

#include <vector>
#include <string>
#include <vulkan/vulkan.h>

struct VulkanContext {
    VkInstance instance;
    VkPhysicalDevice physicalDevice;
    VkDevice device;
    VkQueue graphicsQueue;
    VkCommandPool commandPool;

    VkImage textureImage;
    VkDeviceMemory textureImageMemory;
    VkImageView textureImageView;
    VkSampler textureSampler;

    VkPipelineLayout pipelineLayout;
    VkPipeline graphicsPipeline;
    VkRenderPass renderPass;

    VkBuffer vertexBuffer;
    VkDeviceMemory vertexBufferMemory;
    VkBuffer indexBuffer;
    VkDeviceMemory indexBufferMemory;

    uint32_t graphicsQueueFamily;
};

void initializeVulkan();
void createVulkanTexture(const uint8_t* pixels, uint32_t width, uint32_t height);
void renderFrameVk();
void cleanupVulkan();

#endif