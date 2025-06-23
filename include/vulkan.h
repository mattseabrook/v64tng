#ifndef VULKAN_H
#define VULKAN_H

#include <vector>
#include <string>

#include <vulkan/vulkan.h>

//
// VulkanContext structure to hold Vulkan-related resources
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
};

// Function prototypes for Vulkan rendering

void initializeVulkan();
void resizeVulkanTexture(uint32_t width, uint32_t height);
void recreateSwapchain(uint32_t width, uint32_t height);
void renderFrameVk();
void renderFrameRaycastVk();
void presentFrame();
void cleanupVulkan();

#endif