`v64tng.exe` is a Windows x86_64 executable that is an attempt at re-creating the complete 7th Guest game engine from scratch. It is written in C++ and uses SDL2 for graphics, audio, and input. The game engine is designed to work dropped into the original game directory (regardless of where you purchased it/what version you have), and it is required to be used with the original game data files.

**Table-of-Contents**
- [Disclaimer](#disclaimer)
- [Game Engine Architecture](#game-engine-architecture)
  - [RL](#rl)
  - [GJD](#gjd)
  - [VDX](#vdx)
    - [Header](#header)
    - [Chunk Header](#chunk-header)
    - [Chunk Types](#chunk-types)
      - [0x20 Bitmap](#0x20-bitmap)
      - [0x25 Delta Bitmap](#0x25-delta-bitmap)
        - [Opcodes](#opcodes)
          - [0x??](#0x)
      - [Notes](#notes)
  - [LZSS](#lzss)
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

The RL (Rob Landeros) file is an index file that contains information about VDX file locations inside the corresponding `*.GJD` file. The RL file format consists of a list of records, each representing a VDX file. Each entry in the RL file is 20 bytes long:

- The first 12 bytes correspond to the filename.
- The next 4 bytes correspond to the offset.
- The final 4 bytes correspond to the length.

| Name     | Type               | Description                                 |
| -------- | ------------------ | ------------------------------------------- |
| Filename | char[12]           | Filename (null-terminated string)           |
| Offset   | uint32_t (4 bytes) | Unsigned integer indicating VDX file offset |
| Length   | uint32_t (4 bytes) | Unsigned integer indicating VDX file length |

## GJD

The GJD (Graeme J Devine) file is an archive file format that is essentially a collection of VDX data blobs, with their structure and location determined by the corresponding `*.RL` file.

It doesn't have a fixed header structure but rather uses the `*.RL` file as an index. Using the `offset` and `length` from the `*.RL` file, the VDX data is read from the GJD file.

| Name     | Type            | Description                                                                |
| -------- | --------------- | -------------------------------------------------------------------------- |
| VDX Data | uint8_t[length] | VDX data blob, length and offset determined by corresponding RL file entry |

## VDX

The VDX file format is used to store video sequences and still images. The data in a VDX file consists of a dedicated header followed by an arbitrary number of chunks with their own header. 

### Header

| Name       | Type     | Description      |
| ---------- | -------- | ---------------- |
| identifier | uint16   | Should be 0x6792 |
| unknown    | uint8[6] | Unknown purpose  |

### Chunk Header

| Name       | Type   | Description                                                |
| ---------- | ------ | ---------------------------------------------------------- |
| ChunkType  | uint8  | Determines the type of data                                |
| Unknown    | uint8  | Probably related to replay or synchronization commands     |
| DataSize   | uint32 | Size of the chunk without the header information           |
| LengthMask | uint8  | Compression information (not zero when data is compressed) |
| LengthBits | uint8  | Compression information (not zero when data is compressed) |
| Data       | uint[] | Pure chunk data with length determined by `DataSize`       |

### Chunk Types

#### 0x20 Bitmap

This chunk, as processed by the function `getBitmapData`, contains a compressed bitmap image following a header:

| Name        | Type          | Description                                               |
| ----------- | ------------- | --------------------------------------------------------- |
| numXTiles   | uint16_t      | Number of tiles in the horizontal direction.              |
| numYTiles   | uint16_t      | Number of tiles in the vertical direction.                |
| colourDepth | uint16_t      | Colour depth in bits. (In the code, only 8 is observed).  |
| palette     | RGBColor[768] | RGB values required for a palette implied by colourDepth. |
| image       | uint8_t[]     | Sequence of structures describing the image.              |

The image is split into tiles, each measuring 4x4 pixels. Each tile structure within the image data is as follows:

| Name      | Type     | Description                                                                                                                                               |
| --------- | -------- | --------------------------------------------------------------------------------------------------------------------------------------------------------- |
| colour1   | uint8_t  | Palette index used when the respective bit in the colourMap is set to 1.                                                                                  |
| colour0   | uint8_t  | Palette index used when the respective bit in the colourMap is set to 0.                                                                                  |
| colourMap | uint16_t | Field of 16 bits determining the colors of the pixels within the 4x4 tile. The colourMap is processed in the function to extract individual pixel colors. |

The `colourMap` is a 16-bit field determining the colors of the pixels within the 4x4 tile. A pixel will be colored as indicated by the palette index `colour1` if and only if the respective bit is set to 1. Otherwise, `colour0` is used:

```
                                +----+----+----+----+
                                | 15 | 14 | 13 | 12 |
 LSB (0)        MSB (15)        +----+----+----+----+
   |              |             | 11 | 10 |  9 |  8 |
   XXXXXXXXXXXXXXXX      -->    +----+----+----+----+
                                |  7 |  6 |  5 |  4 |
                                +----+----+----+----+
                                |  3 |  2 |  1 |  0 |
                                +----+----+----+----+
```

#### 0x25 Delta Bitmap

These blocks contain animated (i.e., video) sequences. LZSS Decompressed data is transformed into an 8-bit RGB raw bitmap data structure. A fresh image/frame is meticulously constructed using the delta bitmap data. In the context of a VDX file that contains a video sequence, the initial frame is always represented by the picture contained in the `0x20` chunk. All subsequent frames leverage the 0x25 chunk type, outlining the modifications to be applied to the prior frame and its associated palette. Each `0x25` chunk has the following header:

| Name           | Type                    | Description                                                                                                               |
| -------------- | ----------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| `localPalSize` | `uint16_t`              | Determines the number of palette entries that need alteration for this frame. If set to zero, the header concludes here.  |
| `palBitField`  | `uint16_t[16]`          | A 256-bit field that specifies which palette entries are subject to change.                                               |
| `localColours` | `std::vector<RGBColor>` | An array of RGB values, equivalent in size to the number of bits set in `palBitField`. Designates the new palette colors. |
| `image`        | `std::vector<uint8_t>`  | A series of byte opcodes, each followed by a variable count of byte parameters, encapsulating the delta information.      |

The first value, localPalSize, always exists. The next two fields (palBitField and localColours) only appear when the localPalSize is greater than zero.

The current palette is altered according to the palBitField. Each position in this 256-bit wide field represents one palette entry. If a bit is set, the new colors for the referenced palette entry can be found in the localColours, which is a sequence of RGB colors following the bit field. Note that there are exactly as many bits set as there are RGB values following the bit field.

After adapting the palette, the previous frame can be modified according to the image data. This data consists of a sequence of byte opcodes and a varying number of parameters following each opcode. Similar to the still image in the chunk of type 0x20, changes are performed on a picture divided into 4x4 pixel blocks. The changes start at the top-left block.

##### Opcodes

Opcodes are byte-sized instructions dictating how the image should be adapted. The initial documentation provides a comprehensive breakdown of these opcodes, from 0x00 to 0xff, and their associated behaviors.

In the function `getDeltaBitmapData`, the buffer is parsed, and each opcode is processed according to its defined behavior.

###### 0x??

x

#### Notes

- Video sequences within a VDX file are intended to be played at 15 frames per second.

## LZSS

VDX chunks can optionally be compressed using a common variant of the LZSS algorithm. The chunks are compressed if, and only if, both `lengthMask` and `lengthBits` are not equal to zero. Decompression will occur using a circular history buffer (`his_buf`) and a sliding window with the following parameters:

```
N (buffer size) = 1 ≪ (16 − lengthBits)
F (window size) = 1 ≪ lengthBits
threshold = 3
```

All references are relative to the current write position in the history buffer, which is tracked by `his_buf_pos`. Initially, writing begins at `N - F`. The `lengthMask` value from the Chunk Header can isolate the length portion of a buffer reference, though this seems a bit redundant since the number of bits used (`lengthBits`) is also specified.

During decompression, the function `lzssDecompress` reads and processes each byte from the input `compressedData` and populates the output `decompressedData` vector. The history buffer (`his_buf`) is used to store previous data, facilitating the LZSS decompression process.

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
- `alpha`: This flag activates a visible alpha channel that is set to: `RGBColor colorKey = { 255, 0, 255 }; // Fuscia`.

**Example**: `v64tng.exe -p dr_00f.vdx raw alpha`

Note that these optionals do not need to be used concurrently. 

## Extracting .VDX from .GJD Files

To extract .VDX files from a specific .GJD file:

```cmd
v64tng.exe -x [GJD_FILE]
```

**Example**: `v64tng.exe -x DR.GJD`

# CHANGELOG

x