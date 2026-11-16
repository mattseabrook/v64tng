# Vulkan renderer

The renderer calls the native Vulkan C API directly. It uses device-local
optimal images, explicit memory allocation and barriers, persistent host upload
mappings, precompiled SPIR-V compute pipelines and transfer presentation. No
rendering framework, runtime GLSL compiler or extra allocator layer is required.
The driver and Windows presentation system still manage the actual hardware;
this is explicit graphics API programming, not bypassing the operating system.

## Frame resources

Two frames may be in flight. RGB upload storage has two slices aligned to the
physical device's storage-buffer offset requirement. Each slice has its own
compute descriptor and dirty-row history. A frame's fence is waited before its
slice is written. Rows unchanged relative to that slot's previous contents do
not need another host copy.

The device-local output image uses `VK_FORMAT_R8G8B8A8_UNORM`, matching the
shaders' `rgba8` storage declaration. Presentation blits perform any required
conversion to the surface's advertised UNORM format. The normal RGB path does
not allocate an unused BGRA staging buffer or sampler. Emergency CPU raycasting
allocates its own two-slot staging buffer on demand and converts its BGRA
output to RGBA before transfer.

## Raycast uploads

Tile/fog and actor/edge data use a persistently mapped two-slot upload ring.
Copies are recorded in the same command buffer as the compute dispatch.
Explicit compute-read/transfer-write barriers protect shared device buffers;
transfer-write/compute-read barriers make updated data visible to the shader.
The submit's frame fence controls reuse of the host upload slot.

Ordinary uploads do not allocate temporary staging resources, perform a second
queue submission or call `vkQueueWaitIdle`. Capacity changes may wait for the
device before replacing shared buffers or descriptor bindings. Swapchain and
texture replacement and final shutdown also retain waits for resource safety.

## Acquisition and presentation

Acquisition handles `VK_ERROR_OUT_OF_DATE_KHR` by rebuilding and skipping that
frame. It does not use an undefined image index or reset a fence that will never
be submitted. A frame fence is reset only immediately before queue submission.
Suboptimal/out-of-date presentation schedules rebuilding after the submission.
Minimized windows skip acquisition and presentation.

Acquire semaphores and command buffers belong to frame slots. Present wait
semaphores belong to swapchain images, so re-acquisition orders their reuse.
This follows the [Khronos semaphore reuse guidance](https://docs.vulkan.org/guide/latest/swapchain_semaphore_reuse.html).

Swapchain creation negotiates supported UNORM formats, extent, image count,
composite alpha and transfer usage. FIFO presentation remains the default.
Resize retires in-flight work before replacing its resources. FMVs fit inside
both window dimensions and clear the uncovered area to black. Raycasting uses
the swapchain extent. Exact-size, matching-format presentation can copy the
image directly; other presentations use nearest-neighbour blits.

## Adapter and build requirements

Adapter selection requires a queue supporting graphics, compute and presentation,
the swapchain extension and storage/blit support for the RGBA8 output format.
Physical memory properties are cached for allocation decisions. Cleanup retires
all upload and edge buffers, including resources previously omitted at shutdown.
Partial raycast pipeline creation is cleaned before using the CPU fallback.

The build uses current stable Vulkan SDK headers and native shaderc, while
retaining the existing Vulkan 1.0 API floor. Shader modules use aligned SPIR-V
arrays generated ahead of time. Updating build dependencies does not turn on
validation layers or add runtime shader compilation.

No GPU runs, performance measurements or renderer validation were performed for
this change, as requested. No performance improvement is claimed from measurements.
