#ifndef VULKAN_H
#define VULKAN_H

#include <vector>
#include <string>

#define VK_USE_PLATFORM_WIN32_KHR
#define GLFW_INCLUDE_VULKAN
#include <GLFW/glfw3.h>

/*
===============================================================================

    7th Guest - Windowing with GLFW and Vulkan

    This is the main entry point for the game engine. It will handle the
    windowing and Vulkan initialization.

===============================================================================
*/

extern GLFWwindow* window;

/*
extern VkBuffer vertexBuffer;
extern VkDeviceMemory vertexBufferMemory;
extern VkBuffer indexBuffer;
extern VkDeviceMemory indexBufferMemory;
*/

// Function prototypes
void initializeVulkan();
void createInstance();
void createSurface();
void pickPhysicalDevice();
void createLogicalDevice();
void createSwapChain();
void createImageViews();
void createRenderPass();
VkShaderModule createShaderModule(const std::string& filename);
void createGraphicsPipeline();
void createFramebuffers();
void createCommandPool();
void createTextureImage(const uint8_t* bitmapData, uint32_t width, uint32_t height);
void createTextureImageView();
void createTextureSampler();
void createVertexBuffer();
void createIndexBuffer();
void createCommandBuffer();
void recordCommandBuffer();
void createSyncObjects();
void drawFrame();
void createBuffer(VkDeviceSize size, VkBufferUsageFlags usage, VkMemoryPropertyFlags properties, VkBuffer& buffer, VkDeviceMemory& bufferMemory);
void copyBuffer(VkBuffer srcBuffer, VkBuffer dstBuffer, VkDeviceSize size);
uint32_t findMemoryType(uint32_t typeFilter, VkMemoryPropertyFlags properties);
void transitionImageLayout(VkImage image, VkFormat format, VkImageLayout oldLayout, VkImageLayout newLayout);
void copyBufferToImage(VkBuffer buffer, VkImage image, uint32_t width, uint32_t height);
void renderFrameVk();
void cleanupVulkan();

#endif // VULKAN_H