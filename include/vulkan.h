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
    // Per-frame synchronization and command buffers
    static constexpr uint32_t MAX_FRAMES_IN_FLIGHT = 2;
    VkSemaphore imageAvailableSemaphores[MAX_FRAMES_IN_FLIGHT]{};
    // Presentation lifetime follows acquired swapchain images, not frame fences.
    std::vector<VkSemaphore> renderFinishedSemaphores;
    VkFence inFlightFences[MAX_FRAMES_IN_FLIGHT]{};
    VkCommandBuffer commandBuffers[MAX_FRAMES_IN_FLIGHT]{};
    uint32_t currentFrame = 0;
    uint32_t acquiredImageIndex = 0;
    bool swapchainNeedsRebuild = false;
    VkPhysicalDeviceMemoryProperties memoryProperties{};

    // Device-local RGBA8 texture; CPU fallback staging is allocated on demand
    VkImage textureImage{};                 // device-local, optimal tiling
    VkDeviceMemory textureImageMemory{};    // device-local
    VkImageView textureImageView{};
    VkBuffer stagingBuffer{};               // host-visible, persistent map
    VkDeviceMemory stagingBufferMemory{};
    void *mappedStagingData{};
    VkDeviceSize stagingRowPitch{};
    VkImageLayout textureImageLayout = VK_IMAGE_LAYOUT_UNDEFINED;
    uint32_t graphicsQueueFamily = 0;
    std::vector<uint8_t> previousFrameData[MAX_FRAMES_IN_FLIGHT];
    bool forceFullUpdate[MAX_FRAMES_IN_FLIGHT] = {true, true};
    uint32_t textureWidth = 0;
    uint32_t textureHeight = 0;
    // Prepared copy regions for this frame (row-batched when possible)
    std::vector<VkBufferImageCopy> pendingCopyRegions;

    // --- GPU compute pipeline for RGB24 -> RGBA8 ---
    VkDescriptorSetLayout computeDescSetLayout{};
    VkPipelineLayout computePipelineLayout{};
    VkPipeline computePipeline{};
    VkDescriptorPool computeDescPool{};
    VkDescriptorSet computeDescSets[MAX_FRAMES_IN_FLIGHT]{};
    VkBuffer rgbInputBuffer{};               // host-visible storage buffer (RGB24)
    VkDeviceMemory rgbInputBufferMemory{};
    void* mappedRGBInput{};
    VkDeviceSize rgbInputBufferSize{};
    VkDeviceSize rgbInputFrameStride{};
    bool doCompute = false;                 // set per-frame if compute should run
    
    // --- GPU raycasting pipeline ---
    VkDescriptorSetLayout raycastDescSetLayout{};
    VkPipelineLayout raycastPipelineLayout{};
    VkPipeline raycastPipeline{};
    VkDescriptorPool raycastDescPool{};
    VkDescriptorSet raycastDescSet{};
    VkBuffer tileMapBuffer{};                // device-local storage buffer for tile map
    VkDeviceMemory tileMapBufferMemory{};
    VkDeviceSize tileMapBufferSize{};
    uint32_t lastMapWidth = 0;
    uint32_t lastMapHeight = 0;
    // Buffer holds tiles + fog-of-war explored flags (double the tile data);
    // revision tracking avoids redundant re-uploads.
    uint64_t uploadedExploredRevision = 0;

    // Persistent upload ring; each slot is writable only after its frame fence.
    VkBuffer raycastUploadBuffer{};
    VkDeviceMemory raycastUploadMemory{};
    void *mappedRaycastUpload{};
    VkDeviceSize raycastUploadStride{};
    const void *uploadedMap = nullptr;
    bool raycastIntroWasActive = false;

    // Megatexture edge-offset lookup (mapWidth*mapHeight*4 entries of uint32)
    VkBuffer edgeOffsetsBuffer{};
    VkDeviceMemory edgeOffsetsBufferMemory{};
    VkDeviceSize edgeOffsetsBufferSize{};
    bool raycastDescriptorsDirty = true;
};

extern VulkanContext vkCtx;

//==========================================================

// Function prototypes

void initializeVulkan();
void resizeVulkanTexture(uint32_t width, uint32_t height);
void recreateSwapchain(uint32_t width, uint32_t height);
void renderFrameVk();
void renderFrameRaycastVk();
void renderFrameRaycastVkGPU();
void presentFrame();
void cleanupVulkan();

// Renderer-specific resize entry (called from window.cpp)
void handleResizeVulkan(uint32_t newW, uint32_t newH);

#endif
