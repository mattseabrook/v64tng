// PNG export performs no quantization, gamma conversion or alpha premultiplication.
#include "extract.h"
#include <array>
#include <cstdio>
#include <limits>
#include <stdexcept>

void savePNG(const std::string &filename, const std::vector<uint8_t> &imageData,
    int width, int height, bool hasAlpha, std::span<const RGBColor> palette)
{
    const bool indexed = !palette.empty();
    const size_t channels = indexed ? 1 : (hasAlpha ? 4 : 3);
    if (width <= 0 || height <= 0 || (indexed && (palette.size() != 256 || hasAlpha)) ||
        size_t(width) > std::numeric_limits<size_t>::max() / size_t(height) / channels ||
        imageData.size() != size_t(width) * size_t(height) * channels)
        throw std::runtime_error("Invalid PNG geometry, pixel buffer or palette");
    // Construct C++ owners before setjmp; libpng errors must not bypass them.
    std::vector<png_bytep> rows(height);
    for (int y = 0; y < height; ++y)
        rows[y] = const_cast<uint8_t*>(imageData.data() + size_t(y) * width * channels);
    std::array<png_color, 256> colors{};
    if (indexed)
        for (size_t i = 0; i < colors.size(); ++i)
            colors[i] = {palette[i].r, palette[i].g, palette[i].b};

    FILE *file = nullptr;
#ifdef _WIN32
    fopen_s(&file, filename.c_str(), "wb");
#else
    file = std::fopen(filename.c_str(), "wb");
#endif
    if (!file) throw std::runtime_error("Cannot open PNG: " + filename);
    png_structp png = png_create_write_struct(PNG_LIBPNG_VER_STRING, nullptr, nullptr, nullptr);
    if (!png) { std::fclose(file); throw std::runtime_error("png_create_write_struct failed"); }
    png_infop info = png_create_info_struct(png);
    if (!info) {
        png_destroy_write_struct(&png, nullptr); std::fclose(file);
        throw std::runtime_error("png_create_info_struct failed");
    }
    if (setjmp(png_jmpbuf(png))) {
        png_destroy_write_struct(&png, &info); std::fclose(file);
        throw std::runtime_error("PNG write failed: " + filename);
    }
    png_init_io(png, file);
#ifdef PNG_USER_LIMITS_SUPPORTED
    png_set_user_limits(png, 0x7fffffffU, 0x7fffffffU);
#endif
    png_set_IHDR(png, info, width, height, 8,
        indexed ? PNG_COLOR_TYPE_PALETTE : (hasAlpha ? PNG_COLOR_TYPE_RGBA : PNG_COLOR_TYPE_RGB),
        PNG_INTERLACE_NONE, PNG_COMPRESSION_TYPE_DEFAULT, PNG_FILTER_TYPE_DEFAULT);
    if (indexed) png_set_PLTE(png, info, colors.data(), 256);
    png_write_info(png, info);
    png_write_image(png, rows.data());
    png_write_end(png, nullptr);
    png_destroy_write_struct(&png, &info);
    if (std::fclose(file) != 0) throw std::runtime_error("Cannot finish PNG: " + filename);
}

// Keep the original RGB/RGBA entry point for existing callers.
void savePNG(const std::string &filename, const std::vector<uint8_t> &imageData,
    int width, int height, bool hasAlpha)
{
    savePNG(filename, imageData, width, height, hasAlpha, {});
}
