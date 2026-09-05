#ifndef VULKAN_H
#define VULKAN_H

#include <vector>
#include <array>
#include <cstdint>
#include <vulkan/vulkan.h>

//
// Context for Vulkan rendering
//
struct VulkanContext
{
    static constexpr uint32_t kRaycastFramesInFlight = 2;
    VkInstance instance{};
    VkPhysicalDevice physicalDevice{};
    VkDevice device{};
    VkQueue graphicsQueue{};
    VkCommandPool commandPool{};
    VkCommandBuffer frameCommandBuffer{};
    VkSurfaceKHR surface{};
    VkSwapchainKHR swapchain{};
    std::vector<VkImage> swapchainImages;
    VkFormat swapchainFormat{};
    VkExtent2D swapchainExtent{};
    VkSemaphore imageAvailableSemaphore{};
    VkSemaphore renderFinishedSemaphore{};
    VkFence inFlightFence{};
    std::array<VkCommandBuffer, kRaycastFramesInFlight> raycastCommandBuffers{};
    std::array<VkSemaphore, kRaycastFramesInFlight> raycastImageAvailableSemaphores{};
    std::array<VkSemaphore, kRaycastFramesInFlight> raycastRenderFinishedSemaphores{};
    std::array<VkFence, kRaycastFramesInFlight> raycastInFlightFences{};
    uint32_t raycastFrameIndex = 0;
    VkImage textureImage{};
    VkDeviceMemory textureImageMemory{};
    VkImageView textureImageView{};
    VkSampler textureSampler{};
    void *mappedTextureData{};
    VkDeviceSize textureRowPitch{};

    // GPU raycast resources (optional; used when raycast is enabled and renderMode != CPU)
    VkImage raycastImage{};
    VkDeviceMemory raycastImageMemory{};
    VkImageView raycastImageView{};
    VkImageLayout raycastImageLayout = VK_IMAGE_LAYOUT_UNDEFINED;
    VkImage raycastDepthImage{};
    VkDeviceMemory raycastDepthImageMemory{};
    VkImageView raycastDepthImageView{};
    VkImageLayout raycastDepthImageLayout = VK_IMAGE_LAYOUT_UNDEFINED;

    VkDescriptorSetLayout raycastDescSetLayout{};
    VkPipelineLayout raycastPipelineLayout{};
    VkPipeline raycastPipeline{};
    VkDescriptorPool raycastDescPool{};
    VkDescriptorSet raycastDescSet{};
    VkDescriptorSetLayout raycastModelDescSetLayout{};
    VkPipelineLayout raycastModelPipelineLayout{};
    VkPipeline raycastModelPipeline{};
    VkDescriptorPool raycastModelDescPool{};
    VkDescriptorSet raycastModelDescSet{};
    VkRenderPass raycastModelRenderPass{};
    VkFramebuffer raycastModelFramebuffer{};

    VkBuffer raycastModelVertexBuffer{};
    VkDeviceMemory raycastModelVertexBufferMemory{};
    VkDeviceSize raycastModelVertexBufferSize{};
    VkBuffer raycastModelIndexBuffer{};
    VkDeviceMemory raycastModelIndexBufferMemory{};
    VkDeviceSize raycastModelIndexBufferSize{};
    uint32_t raycastModelIndexCount = 0;
    uint64_t raycastModelGeometryVersion = 0;

    VkBuffer tileMapBuffer{};
    VkDeviceMemory tileMapBufferMemory{};
    VkDeviceSize tileMapBufferSize{};
    uint32_t lastMapWidth = 0;
    uint32_t lastMapHeight = 0;
    std::vector<uint8_t> tileMapUploadCache;
    uint64_t uploadedMapRevision = 0;
    uint64_t uploadedExploredRevision = 0;

    VkBuffer edgeOffsetsBuffer{};
    VkDeviceMemory edgeOffsetsBufferMemory{};
    VkDeviceSize edgeOffsetsBufferSize{};
    bool edgeOffsetsDirty = true;
    size_t lastEdgeCount = 0;
    std::vector<uint32_t> edgeOffsetsUploadCache;
    uint64_t uploadedEdgeVersion = 0;

    VkImage megatexImage{};
    VkDeviceMemory megatexImageMemory{};
    VkImageView megatexImageView{};
    VkSampler megatexSampler{};
    VkImageLayout megatexImageLayout = VK_IMAGE_LAYOUT_UNDEFINED;
    uint32_t megatexTileWidth = 0;
    uint32_t megatexTileHeight = 0;
    uint32_t megatexLayerCount = 0;
    uint64_t lastMegatexVersion = 0;
    bool hasMegatexVersion = false;
    bool raycastDescriptorsDirty = true;
    bool raycastModelDescriptorsDirty = true;

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
void renderFrameMenuVk();
void renderSimpleText(uint8_t* framebuffer, size_t pitch, int width, int height,
					  const char* text, int x, int y, uint32_t color, int scale, uint32_t shadowColor);
void presentFrame();
void cleanupVulkan();

#endif
