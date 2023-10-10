`v64tng.exe` is a Windows x86_64 executable that is an attempt at re-creating the complete 7th Guest game engine from scratch. It is written in C++ and uses SDL2 for graphics, audio, and input. The game engine is designed to work dropped into the original game directory (regardless of where you purchased it/what version you have), and it is required to be used with the original game data files.

**Table-of-Contents**
- [Disclaimer](#disclaimer)
- [Game Engine Architecture](#game-engine-architecture)
  - [RL](#rl)
  - [GJD](#gjd)
  - [VDX](#vdx)
    - [Header](#header)
    - [Chunks](#chunks)
  - [VDX Chunk Types](#vdx-chunk-types)
    - [Type 0x20 Bitmap](#type-0x20-bitmap)
  - [LZSS Compression](#lzss-compression)
    - [Algorithm Overview](#algorithm-overview)
- [Usage](#usage)
  - [Starting the Game Engine](#starting-the-game-engine)
  - [Information on .RL Files](#information-on-rl-files)
  - [Extracting PNG from .VDX Files](#extracting-png-from-vdx-files)
    - [Optional Arguments](#optional-arguments)
  - [Extracting .VDX from .GJD Files](#extracting-vdx-from-gjd-files)
- [CHANGELOG](#changelog)

# Disclaimer

This project is an academic endeavor, created as a technical study and homage to the original software The 7th Guest. It is important to clarify that this project is not officially affiliated with, connected to, or endorsed by the original creators or any of its subsidiaries or its affiliates. This project's primary aim is to serve as an educational resource and a platform for learning and research. It seeks to explore the underlying technology, software architecture, and design principles that informed the creation of The 7th Guest. In replicating the engine, it pays tribute to the groundbreaking work of the original developers and aspires to provide a springboard for further study, innovation, and appreciation within the realms of game development and computer science. This project does not intend to compete with or infringe upon the intellectual property rights of the original software or its creators. Its use, modification, and distribution are intended strictly for non-profit, educational purposes. All trademarks and registered trademarks mentioned herein are acknowledged as the property of their respective owners.

# Game Engine Architecture

## RL

The RL (Rob Landeros) file is an index file that contains information about VDX file locations inside the corresponding GJD file. The RL file format consists of a list of records, each representing a VDX file. Each record contains the following fields:

| Name        | Type     | Description                                     |
| ----------- | -------- | ----------------------------------------------- |
| Filename    | char[12] | The name of the VDX file                        |
| File Offset | uint32   | The offset of the VDX file data in the GJD file |
| File Size   | uint32   | The size of the VDX file data                   |

The following C++ code demonstrates how to parse RL and GJD files to extract the VDX file data:

```cpp
// Parse RL file to get the VDX file locations
std::vector<std::pair<size_t, size_t>> parseRLFile(const std::string &rlFilename)
{
    std::vector<std::pair<size_t, size_t>> vdxLocations;

    // Open the RL file for reading in binary mode
    std::ifstream rlFile(rlFilename, std::ios::binary);

    // Check if the file was opened successfully
    if (!rlFile)
    {
        std::cerr << "Error opening RL file: " << rlFilename << std::endl;
        return vdxLocations;
    }

    // Read the number of VDX entries
    uint32_t numVDXEntries;
    rlFile.read(reinterpret_cast<char *>(&numVDXEntries), sizeof(numVDXEntries));

    // Read the VDX file locations
    for (uint32_t i = 0; i < numVDXEntries; ++i)
    {
        uint32_t offset, length;
        rlFile.read(reinterpret_cast<char *>(&offset), sizeof(offset));
        rlFile.read(reinterpret_cast<char *>(&length), sizeof(length));

        // Store the VDX file offset and length in the vector
        vdxLocations.push_back(std::make_pair(offset, length));
    }

    // Return the VDX file locations
    return vdxLocations;
}
```

## GJD

The GJD (Graeme J Devine) file is an archive file that contains the VDX files' data. The format of the GJD file is as follows:

| Name          | Type    | Description                              |
| ------------- | ------- | ---------------------------------------- |
| VDX File Data | uint8[] | The data of a specific VDX file          |
| null Padding  | uint8   | A null byte that separates each VDX file |

The following C++ code demonstrates how to grab a VDX file out of a GJD file, and send parse RL and GJD files to extract the VDX file data:

```cpp
// Parse GJD file to get the VDX file data
void parseGJDFile(const std::string &gjdFilename, const std::string &rlFilename)
{
    // Get the VDX file locations from the RL file
    std::vector<std::pair<size_t, size_t>> vdxLocations = parseRLFile(rlFilename);

    // Open the GJD file for reading in binary mode
    std::ifstream gjdFile(gjdFilename, std::ios::binary);

    // Check if the file was opened successfully
    if (!gjdFile)
    {
        std::cerr << "Error opening GJD file: " << gjdFilename << std::endl;
        return;
    }

    // Iterate through the VDX file locations
    for (const auto &location : vdxLocations)
    {
        size_t offset = location.first;
        size_t length = location.second;

        // Read the VDX data from the GJD file
        std::vector<uint8_t> vdxData(length);
        gjdFile.seekg(offset, std::ios::beg);
        gjdFile.read(reinterpret_cast<char *>(vdxData.data()), length);

        // Process the decompressed VDX data (This function should be implemented based on the VDX file format)
        processVDXChunks(vdxData);
    }
}
```

## VDX

The VDX file format is used to store video sequences and still images. The data in a VDX file is stored in little-endian notation, and the file consists of a dedicated header followed by an arbitrary number of chunks. Video sequences within a VDX file are intended to be played at 15 frames per second.

### Header

| Name       | Type     | Description      |
| ---------- | -------- | ---------------- |
| identifier | uint16   | Should be 0x6792 |
| unknown    | uint8[6] | Unknown purpose  |

### Chunks

Each chunk in a VDX file has the following structure:

| Name       | Type    | Description                                             |
| ---------- | ------- | ------------------------------------------------------- |
| chunkType  | uint8   | Determines the type of data                             |
| unknown    | uint8   | Possibly replay or synchronization commands             |
| dataSize   | uint32  | Size of the chunk without header information            |
| lengthMask | uint8   | Compression information, non-zero if data is compressed |
| lengthBits | uint8   | Compression information, non-zero if data is compressed |
| data[]     | uint8[] | Pure chunk data, length determined by dataSize          |

The `parseVDXHeader` function first reads the header data from the buffer into the `VDXHeader` structure. It then initializes a `std::vector` of `VDXChunk` structures to store the parsed chunks.

The function iterates through each chunk in the buffer, updating the offset to keep track of the current position in the buffer. For each chunk, it reads the chunk type, data size, length mask, and length bits from the buffer into the `VDXChunk` structure. The data pointer is set to the current position in the buffer, and the offset is incremented by the data size.

Next, the function uses a switch statement to handle different chunk types (0x00, 0x20, 0x80). Depending on the chunk type, the corresponding case will be executed. The current code only includes placeholders for handling the different chunk types, which should be replaced with appropriate handling code. Finally, the parsed chunk is added to the vector of chunks.

```cpp
// Structure to store VDX header information
struct VDXHeader {
    int version;
    int numChunks;
    int width;
    int height;
    int flags;
    int reserved;
};

// Structure to store VDX chunk information
struct VDXChunk {
    int chunkType;
    int dataSize;
    int lengthMask;
    int lengthBits;
    char* data;
};

void parseVDXHeader(char* buffer) {
    // Parse the VDX header
    VDXHeader header;
    header.version = buffer[0];
    header.numChunks = buffer[1] | (buffer[2] << 8) | (buffer[3] << 16) | (buffer[4] << 24);
    header.width = buffer[5] | (buffer[6] << 8);
    header.height = buffer[7] | (buffer[8] << 8);
    header.flags = buffer[9];
    header.reserved = buffer[10] | (buffer[11] << 8) | (buffer[12] << 16) | (buffer[13] << 24);

    // Initialize a vector to store the VDX chunks
    std::vector<VDXChunk> chunks;
    int offset = 14;

    // Iterate through each chunk in the buffer
    for (int i = 0; i < header.numChunks; i++) {
        VDXChunk chunk;
        chunk.chunkType = buffer[offset];
        chunk.dataSize = buffer[offset + 1] | (buffer[offset + 2] << 8) | (buffer[offset + 3] << 16) | (buffer[offset + 4] << 24);
        chunk.lengthMask = buffer[offset + 5];
        chunk.lengthBits = buffer[offset + 6];
        offset += 7;
        chunk.data = buffer + offset;
        offset += chunk.dataSize;

        // Handle different chunk types based on the chunkType value
        switch (chunk.chunkType) {
            case 0x00:
                // Handle chunk type 0x00
                break;
            case 0x20:
                // Handle chunk type 0x20
                break;
            case 0x80:
                // Handle chunk type 0x80
                break;
            default:
                // Handle unknown chunk types
                break;
            }
            
        // Add the parsed chunk to the vector of chunks
        chunks.push_back(chunk);
    }
}
```

## VDX Chunk Types

### Type 0x20 Bitmap

The Type 0x20 Bitmap chunk represents a still image stored in a compressed format. The structure of this chunk comprises a header followed by the image data. The image data is organized into a series of 4x4 pixel blocks, allowing for efficient storage and rendering.

The header contains crucial information about the image dimensions and color depth. The number of horizontal and vertical tiles (numXTiles and numYTiles) specifies the size of the image in terms of these 4x4 pixel blocks. This information is essential for determining the layout and dimensions of the decompressed image. The color depth field specifies the number of bits used to represent each pixel's color. In practice, only 8-bit color depth has been observed, which corresponds to a 256-color palette.

| Name                                | Type      | Description                                           |
| ----------------------------------- | --------- | ----------------------------------------------------- |
| Horizontal Block Number (numXTiles) | uint16    | Number of horizontal blocks (4x4 pixels) in the image |
| Vertical Block Number (numYTiles)   | uint16    | Number of vertical blocks (4x4 pixels) in the image   |
| Colour Depth                        | uint16    | Colour depth in bits (observed as 8)                  |
| Palette Data                        | byte[768] | Palette data (R/G/B format for 256 colours)           |
| Image Data                          | byte[X]   | Compressed image data                                 |

Following the header, the palette data contains a set of RGB values that determine the colors used in the image. For an 8-bit color depth image, the palette contains 256 RGB values, each 3 bytes in size, representing red, green, and blue components.

After the palette data, the actual image data consists of a sequence of structures, one for each 4x4 pixel block. Each block is arranged sequentially, starting from the top-left corner of the image and progressing to the bottom-right corner in a row-major order.


The image data must be decompressed to convert it to a standard bitmap format. The compressed image data consists of a sequence of 4x4 pixel block structures that contain the following fields:

| Name      | Type   | Description                                                                                                                  |
| --------- | ------ | ---------------------------------------------------------------------------------------------------------------------------- |
| colour1   | uint8  | The palette index of the first color used in the 4x4 pixel block                                                             |
| colour0   | uint8  | The palette index of the second color used in the 4x4 pixel block                                                            |
| colourMap | uint16 | 16-bit map that specifies which of the two colors (colour1 or colour0) should be assigned to each pixel within the 4x4 block |

The colourMap is a bit field where each bit corresponds to a specific pixel within the 4x4 block. The pixels are indexed from 0 (top-left corner) to 15 (bottom-right corner) in a row-major order. If a bit is set to 1, the corresponding pixel is assigned the color denoted by the palette index colour1; if the bit is set to 0, the color denoted by the palette index colour0 is used instead.

When decompressing the image data, the process starts by extracting the header information to determine the image dimensions and color depth. The palette data is then parsed to build a color lookup table. Subsequently, the 4x4 pixel block structures are read sequentially, and the colourMap is used to assign the appropriate colors to each pixel within the block. This process is repeated for all blocks, resulting in a decompressed image that can be converted into a standard bitmap format.

By organizing the image data into 4x4 pixel blocks and using a compact color representation, the Type 0x20 Bitmap chunk format allows for efficient storage and rendering of still images. This format is particularly useful in cases where a limited color palette is sufficient to represent the image content, such as in older video games or multimedia applications.

Every VDX file starts with a still image that matches the full game screen dimensions. Even in pure sound files, this block contains an empty (black or uni-coloured) picture.

The Colour Map is represented as follows:

```x
```

## LZSS Compression

The chunk data can be compressed using a common variant of the LZSS algorithm. This occurs when both `lengthMask` and `lengthBits` values are not equal to zero. Decompression uses a circular history buffer and a sliding window with the following parameters:

| Variable   | Value                  |
| ---------- | ---------------------- |
| bufferSize | 1 << (16 - lengthBits) |
| windowSize | 1 << lengthBits        |
| threshold  | 3                      |

All references are relative to the current write position. Writing starts at `bufferSize - windowSize`. The `lengthMask` value of the header can be used to isolate the length portion of a buffer reference, although this information seems redundant since the number of bits used (`lengthBits`) is also known.

The Lempel-Ziv-Storer-Szymanski (LZSS) algorithm is a lossless data compression algorithm that is part of the Lempel-Ziv family of algorithms. It is a dictionary-based technique that aims to eliminate redundancies in data by replacing repeated occurrences of data with references to a single copy of that data existing earlier in the uncompressed data stream. The LZSS algorithm is particularly effective when compressing data that contains repetitive patterns.

### Algorithm Overview

The LZSS algorithm uses a sliding window approach to find repeated strings in the data. It maintains a dictionary of recently processed data, which is searched for matches to the current input data. If a match is found, the algorithm outputs a pair of values representing the position and length of the match in the dictionary. If no match is found, the algorithm outputs the original data as a literal value.

The main components of the LZSS algorithm are:

Sliding Window: A buffer of fixed size that holds the most recently processed data. The size of the sliding window (denoted as N) determines the maximum distance the algorithm can look back to find matches.
Lookahead Buffer: A buffer that holds the data currently being processed. The size of the lookahead buffer (denoted as F) determines the maximum length of a match that the algorithm can find.
Threshold: A minimum match length value (denoted as threshold) that determines when the algorithm should output a reference to the dictionary instead of a literal value. Matches shorter than the threshold are not considered, as the overhead of encoding the position and length would negate the benefits of compression.
Decompression Function

The `lzssDecompress` function takes a compressed data stream and decompresses it using the LZSS algorithm. The function accepts the following parameters:

compressedData: A vector of bytes containing the compressed data.
lengthMask: A mask value used to extract the length value from the combined offset and length value.
lengthBits: The number of bits used to represent the length value in the combined offset and length value.
The function returns a vector of bytes containing the decompressed data.

The decompression process is as follows:

1. Initialize the sliding window with zeros and set its position.
2. Iterate through the compressed data, reading one control byte at a time.
3. For each bit in the control byte:
   1. If the bit is set, read the combined offset and length value, calculate the actual offset and length, and copy the corresponding data from the sliding window to the output.
   2. If the bit is not set, read the literal byte and add it to the output and update the sliding window.
4. Repeat steps 2-3 until the end of the compressed data is reached.

The LZSS decompression algorithm effectively restores the original data by reversing the compression process, utilizing the sliding window to reconstruct repeated strings in the data based on their position and length.

```cpp
std::vector<uint8_t> lzssDecompress(const std::vector<uint8_t> &compressedData, int lengthMask, int lengthBits)
{
    // Initialize variables based on lengthBits
    const size_t N = 1 << (16 - lengthBits);
    const size_t F = 1 << lengthBits;
    const size_t threshold = 3;

    std::vector<uint8_t> decompressedData;
    std::vector<uint8_t> window(N, 0);
    size_t windowPos = N - F;

    // Iterate through the compressed data
    auto inputIter = compressedData.begin();
    while (inputIter != compressedData.end())
    {
        // Read the control byte
        uint8_t controlByte = *inputIter++;

        // Process each bit in the control byte
        for (int i = 0; i < 8 && inputIter != compressedData.end(); ++i)
        {
            // If the current bit is set
            if (controlByte & (1 << i))
            {
                // Read the offset and length combined value
                uint16_t offsetLength = *inputIter++;
                offsetLength |= static_cast<uint16_t>(*inputIter++) << 8;

                // Calculate the offset and length from the combined value
                size_t offset = (offsetLength >> lengthBits) & (N - 1);
                size_t length = (offsetLength & lengthMask) + threshold;

                // Copy bytes from the sliding window to the output
                for (size_t j = 0; j < length; ++j)
                {
                    uint8_t byte = window[(windowPos - offset) % N];
                    decompressedData.push_back(byte);
                    window[windowPos] = byte;
                    windowPos = (windowPos + 1) % N;
                }
            }
            else
            {
                // Copy the literal byte to the output and update the sliding window
                uint8_t byte = *inputIter++;
                decompressedData.push_back(byte);
                window[windowPos] = byte;
                windowPos = (windowPos + 1) % N;
            }
        }
    }

    return decompressedData;
}
```

# Usage

Below is the detailed usage guide for the command line interface.

## Starting the Game Engine

If you wish to start the game engine normally:

```cmd
v64tng.exe @
```

## Information on .RL Files

To get information about a specific .RL file:

```cmd
v64tng.exe -i [RL_FILE]
```

**Example:** `v64tng.exe -i DR.RL`

## Extracting PNG from .VDX Files

To extract PNG images from a specific .VDX file, use the following command:

```cmd
v64tng.exe -p [VDX_FILE] [OPTIONAL_ARGUMENTS]
```

### Optional Arguments

- `raw`: To extract in raw format.
- `alpha`: This flag activates the developer mode.

**Example**: `v64tng.exe -p dr_00f.vdx raw alpha`

## Extracting .VDX from .GJD Files

To extract .VDX files from a specific .GJD file:

```cmd
v64tng.exe -x [GJD_FILE]
```

**Example**: `v64tng.exe -x DR.GJD`

# CHANGELOG

x