#ifndef VULKAN_H
#define VULKAN_H

#include <vector>
#include <vulkan/vulkan.h>

//
// Context for Vulkan rendering
//
struct VulkanContext
{
    VkInstance instance{};
    VkPhysicalDevice physicalDevice{};
    VkDevice device{};
    VkQueue graphicsQueue{};
    VkCommandPool commandPool{};
    VkSurfaceKHR surface{};
    VkSwapchainKHR swapchain{};
    std::vector<VkImage> swapchainImages;
    VkFormat swapchainFormat{};
    VkExtent2D swapchainExtent{};
    VkSemaphore imageAvailableSemaphore{};
    VkSemaphore renderFinishedSemaphore{};
    VkFence inFlightFence{};
    VkImage textureImage{};
    VkDeviceMemory textureImageMemory{};
    VkImageView textureImageView{};
    VkSampler textureSampler{};
    void *mappedTextureData{};
    VkDeviceSize textureRowPitch{};
    uint32_t graphicsQueueFamily = 0;
    std::vector<uint8_t> rowBuffer;
    std::vector<uint8_t> previousFrameData;
    bool forceFullUpdate = true;
    uint32_t textureWidth = 0;
    uint32_t textureHeight = 0;
};

extern VulkanContext vkCtx;

//==========================================================

// Function prototypes

void initializeVulkan();
void resizeVulkanTexture(uint32_t width, uint32_t height);
void recreateSwapchain(uint32_t width, uint32_t height);
void *mapVulkanTexture();
void unmapVulkanTexture();
void renderFrameVk();
void renderFrameRaycastVk();
void presentFrame();
void cleanupVulkan();

#endif