// extract.cpp

#include "extract.h"

#include <png.h>

#include <cstdio>
#include <stdexcept>

void savePNG(const std::string &filename, const std::vector<uint8_t> &imageData, int width, int height, bool hasAlpha)
{
    if (width <= 0 || height <= 0)
        throw std::runtime_error("Invalid PNG dimensions");

    FILE *fp;
#if defined(_WIN32)
    if (fopen_s(&fp, filename.c_str(), "wb") || !fp)
        throw std::runtime_error("Failed to open " + filename);
#else
    fp = std::fopen(filename.c_str(), "wb");
    if (!fp)
        throw std::runtime_error("Failed to open " + filename);
#endif

    png_structp png_ptr = png_create_write_struct(PNG_LIBPNG_VER_STRING, nullptr, nullptr, nullptr);
    if (!png_ptr)
    {
        std::fclose(fp);
        throw std::runtime_error("png_create_write_struct");
    }

    png_infop info_ptr = png_create_info_struct(png_ptr);
    if (!info_ptr)
    {
        std::fclose(fp);
        png_destroy_write_struct(&png_ptr, nullptr);
        throw std::runtime_error("png_create_info_struct");
    }

    if (setjmp(png_jmpbuf(png_ptr)))
    {
        std::fclose(fp);
        png_destroy_write_struct(&png_ptr, &info_ptr);
        throw std::runtime_error("libpng error");
    }

    png_init_io(png_ptr, fp);

    int color_type = hasAlpha ? PNG_COLOR_TYPE_RGBA : PNG_COLOR_TYPE_RGB;
    png_set_IHDR(png_ptr,
                 info_ptr,
                 static_cast<png_uint_32>(width),
                 static_cast<png_uint_32>(height),
                 8,
                 color_type,
                 PNG_INTERLACE_NONE,
                 PNG_COMPRESSION_TYPE_DEFAULT,
                 PNG_FILTER_TYPE_DEFAULT);
    png_write_info(png_ptr, info_ptr);

    const size_t bytesPerPixel = hasAlpha ? 4u : 3u;
    std::vector<png_bytep> row_pointers(static_cast<size_t>(height));
    for (int y = 0; y < height; y++)
    {
        auto *row = const_cast<uint8_t *>(imageData.data()) +
                    static_cast<size_t>(y) * static_cast<size_t>(width) * bytesPerPixel;
        row_pointers[static_cast<size_t>(y)] = reinterpret_cast<png_bytep>(row);
    }

    png_write_image(png_ptr, row_pointers.data());
    png_write_end(png_ptr, nullptr);

    png_destroy_write_struct(&png_ptr, &info_ptr);
    std::fclose(fp);
}

std::vector<uint8_t> loadPNG(const std::string &filename, int &width, int &height)
{
    FILE *fp;
#if defined(_WIN32)
    if (fopen_s(&fp, filename.c_str(), "rb") || !fp)
        throw std::runtime_error("Failed to open " + filename);
#else
    fp = std::fopen(filename.c_str(), "rb");
    if (!fp)
        throw std::runtime_error("Failed to open " + filename);
#endif

    png_structp png_ptr = png_create_read_struct(PNG_LIBPNG_VER_STRING, nullptr, nullptr, nullptr);
    if (!png_ptr)
    {
        std::fclose(fp);
        throw std::runtime_error("png_create_read_struct");
    }

    png_infop info_ptr = png_create_info_struct(png_ptr);
    if (!info_ptr)
    {
        std::fclose(fp);
        png_destroy_read_struct(&png_ptr, nullptr, nullptr);
        throw std::runtime_error("png_create_info_struct");
    }

    if (setjmp(png_jmpbuf(png_ptr)))
    {
        std::fclose(fp);
        png_destroy_read_struct(&png_ptr, &info_ptr, nullptr);
        throw std::runtime_error("libpng error");
    }

    png_init_io(png_ptr, fp);
    png_read_info(png_ptr, info_ptr);

    width = static_cast<int>(png_get_image_width(png_ptr, info_ptr));
    height = static_cast<int>(png_get_image_height(png_ptr, info_ptr));

    const png_byte color_type = png_get_color_type(png_ptr, info_ptr);
    const png_byte bit_depth = png_get_bit_depth(png_ptr, info_ptr);

    if (bit_depth == 16)
        png_set_strip_16(png_ptr);
    if (color_type == PNG_COLOR_TYPE_PALETTE)
        png_set_palette_to_rgb(png_ptr);
    if (color_type == PNG_COLOR_TYPE_GRAY && bit_depth < 8)
        png_set_expand_gray_1_2_4_to_8(png_ptr);
    if (png_get_valid(png_ptr, info_ptr, PNG_INFO_tRNS))
        png_set_tRNS_to_alpha(png_ptr);

    if (color_type == PNG_COLOR_TYPE_RGB || color_type == PNG_COLOR_TYPE_GRAY || color_type == PNG_COLOR_TYPE_PALETTE)
        png_set_filler(png_ptr, 0xFF, PNG_FILLER_AFTER);
    if (color_type == PNG_COLOR_TYPE_GRAY || color_type == PNG_COLOR_TYPE_GRAY_ALPHA)
        png_set_gray_to_rgb(png_ptr);

    png_read_update_info(png_ptr, info_ptr);

    std::vector<uint8_t> image(static_cast<size_t>(width) * static_cast<size_t>(height) * 4);
    std::vector<png_bytep> row_pointers(static_cast<size_t>(height));
    for (int y = 0; y < height; y++)
        row_pointers[static_cast<size_t>(y)] = reinterpret_cast<png_bytep>(image.data() + static_cast<size_t>(y) * static_cast<size_t>(width) * 4);

    png_read_image(png_ptr, row_pointers.data());

    png_destroy_read_struct(&png_ptr, &info_ptr, nullptr);
    std::fclose(fp);
    return image;
}
