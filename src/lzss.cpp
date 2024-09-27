#include <vector>
#include <iostream>

#include "lzss.h"

//
// LZSS Compression
//
std::vector<uint8_t> lzssCompress(const std::vector<uint8_t>& inputData, uint8_t lengthMask, uint8_t lengthBits)
{
	const uint16_t N = 1 << (16 - lengthBits);
	const uint16_t F = 1 << lengthBits;
	const int threshold = 3;

	std::vector<uint8_t> compressedData;
	std::vector<uint8_t> his_buf(N, 0);
	int32_t his_buf_pos = N - F;
	int32_t pos = 0;

	while (pos < static_cast<int32_t>(inputData.size()))
	{
		uint8_t flags = 0;
		size_t flags_pos = compressedData.size();
		compressedData.push_back(0);

		for (int i = 0; i < 8 && pos < static_cast<int32_t>(inputData.size()); ++i)
		{
			int max_match_length = 0;
			int match_offset = 0;

			for (int j = 1; j <= N; ++j)
			{
				int k = (his_buf_pos - j + N) % N;
				int match_length = 0;

				while (match_length < F && pos + match_length < static_cast<int32_t>(inputData.size()) &&
					his_buf[(k + match_length) % N] == inputData[pos + match_length])
				{
					++match_length;
				}

				if (match_length > max_match_length)
				{
					max_match_length = match_length;
					match_offset = (his_buf_pos - k) & (N - 1);
				}

				if (max_match_length == F)
					break;
			}

			if (max_match_length >= threshold)
			{
				uint16_t length = max_match_length - threshold;
				uint16_t ofs_len = (match_offset << lengthBits) | length;
				compressedData.push_back(ofs_len & 0xFF);
				compressedData.push_back((ofs_len >> 8) & 0xFF);
				flags |= (0 << i);

				for (int j = 0; j < max_match_length; ++j)
				{
					his_buf[his_buf_pos] = inputData[pos];
					his_buf_pos = (his_buf_pos + 1) % N;
					++pos;
				}
			}
			else
			{
				uint8_t b = inputData[pos++];
				compressedData.push_back(b);
				his_buf[his_buf_pos] = b;
				his_buf_pos = (his_buf_pos + 1) % N;
				flags |= (1 << i);
			}
		}

		compressedData[flags_pos] = flags;
	}

	compressedData.push_back(0);
	compressedData.push_back(0);

	return compressedData;
}

//
// LZSS Decompression
//
std::vector<uint8_t> lzssDecompress(const std::vector<uint8_t>& compressedData, uint8_t lengthMask, uint8_t lengthBits)
{
	const uint16_t N = 1 << (16 - lengthBits);
	const uint16_t F = 1 << lengthBits;
	const uint8_t threshold = 3;

	std::vector<uint8_t> decompressedData;
	std::vector<uint8_t> his_buf(N);
	size_t his_buf_pos = N - F;
	size_t in_buf_pos = 0;

	while (in_buf_pos < compressedData.size())
	{
		uint8_t flags = compressedData[in_buf_pos++];

		for (int i = 0; i < 8 && in_buf_pos < compressedData.size(); ++i, flags >>= 1)
		{
			if (flags & 1)
			{
				uint8_t b = compressedData[in_buf_pos++];
				decompressedData.push_back(b);
				his_buf[his_buf_pos] = b;
				his_buf_pos = (his_buf_pos + 1) % N;
			}
			else
			{
				if (in_buf_pos + 1 >= compressedData.size())
					break;

				uint16_t ofs_len = compressedData[in_buf_pos++] | (compressedData[in_buf_pos++] << 8);
				if (ofs_len == 0)
					return decompressedData;

				uint16_t offset = (his_buf_pos - (ofs_len >> lengthBits)) % N;
				uint16_t length = (ofs_len & lengthMask) + threshold;

				for (uint16_t j = 0; j < length; ++j)
				{
					uint8_t b = his_buf[(offset + j) % N];
					decompressedData.push_back(b);
					his_buf[his_buf_pos] = b;
					his_buf_pos = (his_buf_pos + 1) % N;
				}
			}
		}
	}

	return decompressedData;
}


/*
std::vector<uint8_t> lzssDecompress(const std::vector<uint8_t>& compressedData, uint8_t lengthMask, uint8_t lengthBits)
{
	const uint16_t N = 1 << (16 - lengthBits);
	const uint16_t F = 1 << lengthBits;
	const int threshold = 3;

	std::vector<uint8_t> decompressedData;
	std::vector<uint8_t> his_buf(N, 0);
	int32_t his_buf_pos = N - F;

	int32_t in_buf_pos = 0;

	std::string input;

	while (in_buf_pos < compressedData.size())
	{
		uint8_t flags = compressedData[in_buf_pos++];

		for (int32_t i = 1; i <= 8; ++i)
		{
			if (in_buf_pos >= compressedData.size())
				break;

			if ((flags & 1) == 0)
			{
				uint16_t ofs_len = compressedData[in_buf_pos] | (compressedData[in_buf_pos + 1] << 8);
				in_buf_pos += 2;

				if (ofs_len == 0)
				{
					break;
				}

				int32_t length = (ofs_len & lengthMask) + threshold;
				int32_t offset = (his_buf_pos - (ofs_len >> lengthBits)) & (N - 1);

				decompressedData.reserve(decompressedData.size() + length);
				for (uint16_t j = 0; j < length; ++j)
				{
					uint8_t b = his_buf[(offset + j) & (N - 1)];
					decompressedData.push_back(b);
					his_buf[his_buf_pos] = b;
					his_buf_pos = (his_buf_pos + 1) & (N - 1);
				}
			}
			else
			{
				uint8_t b = compressedData[in_buf_pos++];
				decompressedData.reserve(decompressedData.size() + 1);
				decompressedData.push_back(b);
				his_buf[his_buf_pos] = b;
				his_buf_pos = (his_buf_pos + 1) & (N - 1);
			}
			flags >>= 1;
		}
	}

	return decompressedData;
}
*/