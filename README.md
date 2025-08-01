`v64tng.exe` is a Windows x86_64 executable that is an attempt at re-creating the complete 7th Guest game engine from scratch. It is written in C++ 23 and uses `VULKAN` or `DirectX` for graphics, `TBD` for audio, and `TBD` for input. The game engine is designed to work placed into the original game directory (*regardless of where you purchased it/what version you have*), and it is required to be used with the original game data files.

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
          - [Tile Alteration Using Predefined Map (0x00 - 0x5F)](#tile-alteration-using-predefined-map-0x00---0x5f)
          - [Tile Fill Using Individual Palette Entries (0x60)](#tile-fill-using-individual-palette-entries-0x60)
          - [Line Skip and Tile Reset (0x61)](#line-skip-and-tile-reset-0x61)
          - [Tile Skipping within a Line (0x62 - 0x6B)](#tile-skipping-within-a-line-0x62---0x6b)
          - [Solid Tile Filling with a Single Color (0x6C - 0x75)](#solid-tile-filling-with-a-single-color-0x6c---0x75)
          - [Multiple Tile Filling with Different Colors (0x76 - 0x7F)](#multiple-tile-filling-with-different-colors-0x76---0x7f)
          - [Variable Palette Tile Coloring (0x80 - 0xFF)](#variable-palette-tile-coloring-0x80---0xff)
      - [0x80 Raw WAV data](#0x80-raw-wav-data)
      - [Notes](#notes)
  - [XMI](#xmi)
  - [Cursors](#cursors)
  - [LZSS](#lzss)
- [Usage](#usage)
  - [`-c <FILE>`](#-c-file)
  - [`-g <RL_FILE>`](#-g-rl_file)
  - [`-p <VDX_FILE> [raw] [alpha] [video]`](#-p-vdx_file-raw-alpha-video)
  - [`-r <RL_FILE>`](#-r-rl_file)
  - [`-v <FILE>`](#-v-file)
  - [`-x <SONG> [play|extract]`](#-x-song-playextract)
- [Developers](#developers)
  - [Windows SDK on Linux](#windows-sdk-on-linux)
  - [Libraries](#libraries)
  - [Legacy](#legacy)
    - [`-raycast`](#-raycast)

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

The overall bitmap dimensions are derived from these tile counts. Width is `numXTiles * 4` pixels and height is `numYTiles * 4` pixels. Most assets measure 640x320 pixels (160x80 tiles), but `Vielogo.vdx` from the Windows release uses 640x480 pixels (160x120 tiles).

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

These blocks contain animated (i.e., video) sequences. LZSS decompressed data is transformed into an 8-bit RGB raw bitmap data structure. A fresh image/frame is meticulously constructed using the delta bitmap data. In the context of a VDX file that contains a video sequence, the initial frame is always represented by the picture contained in the `0x20` chunk. All subsequent frames leverage the `0x25` chunk type, outlining the modifications to be applied to the prior frame and its associated palette. Each `0x25` chunk has the following header:

| Name         | Type                    | Description                                                                                                               |
| ------------ | ----------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| localPalSize | `uint16_t`              | Determines the number of palette entries that need alteration for this frame. If set to zero, the header concludes here.  |
| palBitField  | `uint16_t[16]`          | A 256-bit field that specifies which palette entries are subject to change.                                               |
| localColours | `std::vector<RGBColor>` | An array of RGB values, equivalent in size to the number of bits set in `palBitField`. Designates the new palette colors. |
| image        | `std::vector<uint8_t>`  | A series of byte opcodes, each followed by a variable count of byte parameters, encapsulating the delta information.      |

The first value, `localPalSize`, always exists. The next two fields (`palBitField` and `localColours`) only appear when the `localPalSize` is greater than zero.

The current palette is altered according to the `palBitField`. Each position in this 256-bit wide field represents one palette entry. If a bit is set, the new colors for the referenced palette entry can be found in the `localColours`, which is a sequence of RGB colors following the bit field. Note that there are exactly as many bits set as there are RGB values following the bit field.

After adapting the palette, the previous frame can be modified according to the image data. This data consists of a sequence of byte opcodes and a varying number of parameters following each opcode. Similar to the still image in the chunk of type `0x20`, changes are performed on a picture divided into 4x4 pixel blocks. The changes start at the top-left block.

##### Opcodes

Opcodes are byte-sized instructions dictating how the image should be adapted. The initial documentation provides a comprehensive breakdown of these opcodes, from `0x00` to `0xff`, and their associated behaviors.

In the function `getDeltaBitmapData`, the buffer is parsed, and each opcode is processed according to its defined behavior.

###### Tile Alteration Using Predefined Map (0x00 - 0x5F)

When an opcode within this range is encountered, the process uses a predefined mapping to determine how the current 4x4 pixel tile will be altered.

- Iterating over the 16 pixels of the 4x4 tile, the bit value from the Map (starting from the most significant bit) determines the color of each pixel.
  - If the current bit is 0, the pixel is colored with `colour0`.
  - If the current bit is 1, the pixel is colored with `colour1`.
- The RGB values of the chosen color are fetched from the palette using the color index (`colour1` or `colour0`) and are used to update the delta frame at the corresponding position.
- After processing each bit, the Map undergoes a left shift operation, moving to the next bit for the subsequent pixel.
- Post processing the 4x4 tile, the x-coordinate is incremented by 4, moving the processing to the next tile on the same line.

| Parameter | Description                                                                                              |
| --------- | -------------------------------------------------------------------------------------------------------- |
| colour1   | The next byte after the opcode. It represents one of the two colors used in the current tile alteration. |
| colour0   | The byte following `colour1`. It represents the second color used in the current tile alteration.        |

**Color Map:**
```
 0x00, 0xc8, 0x80, 0xec, 0xc8, 0xfe, 0xec, 0xff, 0xfe, 0xff, 0x00, 0x31, 0x10, 0x73, 0x31, 0xf7,
 0x73, 0xff, 0xf7, 0xff, 0x80, 0x6c, 0xc8, 0x36, 0x6c, 0x13, 0x10, 0x63, 0x31, 0xc6, 0x63, 0x8c,
 0x00, 0xf0, 0x00, 0xff, 0xf0, 0xff, 0x11, 0x11, 0x33, 0x33, 0x77, 0x77, 0x66, 0x66, 0xcc, 0xcc,
 0xf0, 0x0f, 0xff, 0x00, 0xcc, 0xff, 0x76, 0x00, 0x33, 0xff, 0xe6, 0x0e, 0xff, 0xcc, 0x70, 0x67,
 0xff, 0x33, 0xe0, 0x6e, 0x00, 0x48, 0x80, 0x24, 0x48, 0x12, 0x24, 0x00, 0x12, 0x00, 0x00, 0x21,
 0x10, 0x42, 0x21, 0x84, 0x42, 0x00, 0x84, 0x00, 0x88, 0xf8, 0x44, 0x00, 0x32, 0x00, 0x1f, 0x11,
 0xe0, 0x22, 0x00, 0x4c, 0x8f, 0x88, 0x70, 0x44, 0x00, 0x23, 0x11, 0xf1, 0x22, 0x0e, 0xc4, 0x00,
 0x3f, 0xf3, 0xcf, 0xfc, 0x99, 0xff, 0xff, 0x99, 0x44, 0x44, 0x22, 0x22, 0xee, 0xcc, 0x33, 0x77,
 0xf8, 0x00, 0xf1, 0x00, 0xbb, 0x00, 0xdd, 0x0c, 0x0f, 0x0f, 0x88, 0x0f, 0xf1, 0x13, 0xb3, 0x19,
 0x80, 0x1f, 0x6f, 0x22, 0xec, 0x27, 0x77, 0x30, 0x67, 0x32, 0xe4, 0x37, 0xe3, 0x38, 0x90, 0x3f,
 0xcf, 0x44, 0xd9, 0x4c, 0x99, 0x4c, 0x55, 0x55, 0x3f, 0x60, 0x77, 0x60, 0x37, 0x62, 0xc9, 0x64,
 0xcd, 0x64, 0xd9, 0x6c, 0xef, 0x70, 0x00, 0x0f, 0xf0, 0x00, 0x00, 0x00, 0x44, 0x44, 0x22, 0x22
 ```

###### Tile Fill Using Individual Palette Entries (0x60)

The opcode `0x60` is dedicated to fill the current 4x4 pixel tile using individual palette entries. Each pixel in the tile gets its color from a distinct palette entry, ensuring maximum flexibility in defining the tile's appearance. The 16 subsequent bytes to the opcode each represent a palette entry index, and they collectively decide the colors for the entire 4x4 tile.

- Each of the 16 palette entry indices correspond to a pixel in the 4x4 tile.
- The palette entry index is used to fetch the RGB values from the palette.
- The RGB values are then used to update the delta frame at the position corresponding to the current pixel.
- This process is repeated for all 16 pixels in the tile.
Once the 4x4 tile is processed, the x-coordinate is incremented by 4, transitioning the operation to the next tile on the same line.

###### Line Skip and Tile Reset (0x61)

The opcode `0x61` is employed to transition to the start of the next line. It acts as a marker to indicate that the subsequent tiles should be filled starting from the beginning of the new line, aligning with the left border of the frame. This opcode stands alone and doesn't need any additional parameters to function.

- The y-coordinate (representing the vertical position in the frame) is incremented by 4 pixels, equating to the height of one tile. This moves the processing to the next line.
- The x-coordinate (representing the horizontal position) is reset to 0, placing the focus at the left-most position on the new line.

###### Tile Skipping within a Line (0x62 - 0x6B)

opcodes ranging from `0x62` to `0x6B` are used to skip a specific number of tiles within the current line. This provides a way to efficiently move horizontally across a frame without altering the pixels. These opcodes are self-contained and don't require additional parameters.

- Based on the opcode's value, a certain number of tiles (each tile being 4 pixels wide) on the current line are skipped. The x-coordinate (representing the horizontal position in the frame) is incremented accordingly.
- Specifically, the number of tiles to skip is determined by the formula (`Opcode - 0x62`). Notably, when the opcode is `0x62`, no tiles are skipped, effectively serving as a no-operation (NOP) instruction in this context.

###### Solid Tile Filling with a Single Color (0x6C - 0x75)

Opcodes within the range `0x6C` to `0x75` are used to fill consecutive tiles with a solid color. This feature provides an efficient method to apply a uniform color to multiple tiles without the need to specify the color for each pixel separately.

- The opcode determines the number of tiles to be filled with the specified color. Specifically, the number of tiles is given by (`Opcode - 0x6B`).
- Each tile consists of 16 pixels (arranged in a 4x4 grid). All the pixels in these tiles will be filled with the same color.

| Parameter  | Description                                                                                                                       |
| ---------- | --------------------------------------------------------------------------------------------------------------------------------- |
| colorIndex | A single byte representing the palette entry index. This index is used to fetch the RGB color from the palette to fill the tiles. |

###### Multiple Tile Filling with Different Colors (0x76 - 0x7F)

Opcodes within the range `0x76` to `0x7F` are designed to fill multiple tiles with distinct colors. This allows for the efficient coloring of consecutive tiles, each with its own solid color, without the need to provide separate opcodes for each tile. A sequence of bytes, with the length determined by (`Opcode - 0x75`) represents a palette entry index that is used to fetch an RGB color from the palette to fill its respective tile.

- The opcode determines the number of consecutive tiles to be filled, each with a distinct color. Specifically, the number of tiles (and palette entry parameters) is given by (`Opcode - 0x75`).
- Each tile consists of 16 pixels (arranged in a 4x4 grid). Each tile will be filled with the color specified by its respective palette entry parameter.

###### Variable Palette Tile Coloring (0x80 - 0xFF)

For opcodes in the range `0x80` to `0xFF` within the VDX file's delta frame processing, the sequence allows for flexible and detailed coloring of individual tiles. Using a combination of a color map and two selected palette entries, tiles can have intricate patterns and combinations.

- The 16-bit color map, formed by the opcode and the next byte, dictates the coloring pattern of the 16 pixels in the tile.
- For each bit in the color map, starting from the most significant bit:
  - If the bit is set, the pixel is colored with `colour1`.
  - If the bit is unset, the pixel is colored with `colour0`.
- This mechanism allows for a variety of pixel combinations within a single tile, based on the color map and the two selected colors.

| Parameters | Description                                                           |
| ---------- | --------------------------------------------------------------------- |
| Map        | opcode byte and the subsequent byte together form a 16-bit color map. |
| colour1    | opcode + 2 palette entry index                                        |
| colour0    | opcode + 3 palette entry index                                        |

#### 0x80 Raw WAV data

These VDX chunks are just a stream of raw *.WAV file data that is 8-bit, mono, 22050 Hz in specification.

In the new game engine, the WAV Header is statically defined, the `chunkSize` and `subchunk2Size` are calculated dynamically, and the entire structure is prepended to the appropriate `std::vector<uint8_t> wavData`.

```cpp
struct WAVHeader {
    char     chunkID[4] = "RIFF";
    uint32_t chunkSize;  // This value will be set later
    char     format[4] = "WAVE";

    char     subchunk1ID[4] = "fmt ";
    uint32_t subchunk1Size = 16;
    uint16_t audioFormat = 1;
    uint16_t numChannels = 1;
    uint32_t sampleRate = 22050;
    uint32_t byteRate = 22050;
    uint16_t blockAlign = 1;
    uint16_t bitsPerSample = 8;

    char     subchunk2ID[4] = "data";
    uint32_t subchunk2Size;  // This value will be set later
};
```

#### Notes

- Video sequences within a VDX file are intended to be played at 15 frames per second.

## XMI

Here is the table of how the original songs are packed in `XMI.GJD`:

| XMI File Name | Offset | Size (bytes) | Song Name              | Notes                                                       |
| ------------- | ------ | ------------ | ---------------------- | ----------------------------------------------------------- |
| agu32         | 7299   | 4832         | Skeletons in my closet |                                                             |
| agu38         | 12132  | 4288         | Skeletons in my closet | Mix w/ percussion and sped up                               |
| agu50         | 16421  | 13268        | Tad's theme            | Main jingle / riff                                          |
| gu5           | 29690  | 2186         | Circus theme           | Cutlery animation in Dining Room                            |
| gu6           | 31877  | 5608         |                        | Heart-beat, rain, thunder etc                               |
| gu8           | 37486  | 1022         |                        | Stauf's dialog after solving Library telescope puzzle       |
| gu9           | 38509  | 2308         |                        | Martine and Edward in Dining Room after solving cake puzzle |
| gu11a         | 40818  | 406          |                        | Seems to be part of the Dining Room song                    |
| gu11b         | 41225  | 402          |                        | Same as above                                               |
| gu12          | 41628  | 1762         |                        | Puzzle Zoom-In song                                         |
| gu15          | 43391  | 1532         |                        | Basement music                                              |
| gu16          | 44924  | 12764        |                        | - Common House Music used in a lot of areas                 |
| gu16b         | 57689  | 2794         |                        |                                                             |
| gu17          | 60484  | 968          |                        |                                                             |
| gu18          | 61453  | 3754         |                        |                                                             |
| gu19          | 65208  | 1984         |                        |                                                             |
| gu20          | 67193  | 2344         |                        |                                                             |
| gu21          | 69538  | 5724         |                        |                                                             |
| gu22          | 75263  | 1904         |                        |                                                             |
| gu23          | 77168  | 6140         | Coffin Dance           | Crypt Puzzle                                                |
| gu24          | 83309  | 2096         |                        |                                                             |
| gu25          | 85406  | 2812         |                        |                                                             |
| gu26          | 88219  | 714          |                        |                                                             |
| gu27          | 88934  | 328          |                        |                                                             |
| gu28          | 89263  | 2730         |                        |                                                             |
| gu29          | 91994  | 1356         |                        |                                                             |
| gu30          | 93351  | 3398         |                        |                                                             |
| gu31          | 96750  | 5756         |                        |                                                             |
| gu32          | 102507 | 5008         |                        |                                                             |
| gu33          | 107516 | 5760         |                        |                                                             |
| gu34          | 113277 | 1482         |                        |                                                             |
| gu35          | 114760 | 560          |                        |                                                             |
| gu36          | 115321 | 1996         |                        |                                                             |
| gu37          | 117318 | 1864         |                        |                                                             |
| gu38          | 119183 | 4578         |                        |                                                             |
| gu39          | 123762 | 3986         | Title Screen           |                                                             |
| gu40          | 127749 | 2638         |                        |                                                             |
| gu41          | 130388 | 8572         |                        |                                                             |
| gu42          | 138961 | 870          |                        |                                                             |
| gu43          | 139832 | 2230         |                        |                                                             |
| gu44          | 142063 | 4314         |                        |                                                             |
| gu45          | 146378 | 1226         | Chapel                 |                                                             |
| gu46          | 147605 | 1410         |                        |                                                             |
| gu47          | 149016 | 2504         |                        |                                                             |
| gu48          | 151521 | 1024         |                        |                                                             |
| gu49          | 152546 | 3028         |                        |                                                             |
| gu50          | 155575 | 13614        |                        |                                                             |
| gu51          | 169190 | 10006        |                        |                                                             |
| gu52          | 179197 | 1128         |                        |                                                             |
| gu53          | 180326 | 5070         |                        |                                                             |
| gu54          | 185397 | 1036         |                        |                                                             |
| gu55          | 186434 | 2232         |                        |                                                             |
| gu56          | 188667 | 13614        | Ghost of Bo            | Main Foyer                                                  |
| gu58          | 202282 | 4572         | Edward & Martine       |                                                             |
| gu59          | 206855 | 1292         |                        |                                                             |
| gu60          | 208148 | 2286         |                        |                                                             |
| gu61          | 210435 | 4342         |                        | Intro Screen                                                |
| gu63          | 214778 | 9146         | Love Supreme           |                                                             |
| gu67          | 223925 | 1078         |                        |                                                             |
| gu68          | 225004 | 340          |                        |                                                             |
| gu69          | 225345 | 600          |                        |                                                             |
| gu70          | 225946 | 666          |                        |                                                             |
| gu71          | 226613 | 5094         |                        | Puzzle Zoom-In?                                             |
| gu72          | 231708 | 4820         |                        | Puzzle Zoom-In?                                             |
| gu73          | 236529 | 5238         |                        | Puzzle Zoom-In?                                             |
| gu74          | 241768 | 342          |                        | Puzzle Zoom-In?                                             |
| gu75          | 242111 | 4214         |                        | End Game?                                                   |
| gu76          | 246326 | 1688         |                        | End Game?                                                   |
| ini_mt_o      | 248015 | 900          |                        |                                                             |
| ini_sci       | 248916 | 8334         |                        |                                                             |

## Cursors

- `ROB.GJD`
  
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

Running `v64tng.exe` with no arguments opens a small system information window. To start the
game itself, launch the executable with an exclamation mark:

```cmd
v64tng.exe !
```

The program also provides several command line utilities.

## `-c <FILE>`
Extracts all cursor animations from the `ROB.GJD` file. Each cursor
is written as a sequence of numbered PNG images.

```cmd
v64tng.exe -c CURSORS.ROB
```

## `-g <RL_FILE>`
Extracts every `.VDX` referenced by the given `.RL` file. The matching `.GJD`
archive must be located alongside the `.RL` file.

```cmd
v64tng.exe -g DR.RL
```

## `-p <VDX_FILE> [raw] [alpha] [video]`
Extracts frames from a VDX file. Frames are saved as PNG images by default.
`raw` dumps the pixel data without conversion. The `alpha` flag enables a
visible magenta transparency key for development. Adding `video` generates a
MKV movie from the extracted frames.

```cmd
v64tng.exe -p f_1bb.vdx raw alpha video
```

## `-r <RL_FILE>`
Displays the contents of an RL index file, listing each entry's offset and
length inside the associated GJD archive.

```cmd
v64tng.exe -r DR.RL
```

## `-v <FILE>`
Shows detailed information about a VDX resource or about how data is organised
within a GJD archive.

```cmd
v64tng.exe -v f_1bc.vdx
```

## `-x <SONG> [play|extract]`
Looks up a song by name inside `XMI.RL` and either plays it or writes the raw XMI
file to disk. The song name should be given without the `.XMI` extension.

```cmd
v64tng.exe -x agu16 play
```

# Developers

x

## Windows SDK on Linux

x

```bash
# Windows SDK
yay -S xwin
sudo xwin --accept-license splat --output /opt/winsdk

#
sudo pacman -S parallel
```

## Libraries

Feel free to just run `build_windows_libs.sh all`, but remember that `VULKAN` lorem ipsum

## Legacy

The current build system is a PowerShell script called `build.ps1`. It uses
`clang++` and the LLVM linker to build the project on Windows. Invoke the script
from a developer command prompt:

```powershell
./build.ps1         # Release build (default)
./build.ps1 debug   # Debug build with symbols
./build.ps1 clean   # Remove all build artifacts
```

The script expects several third‑party libraries to exist in fixed locations.
Only Windows builds are supported at this time.

### `-raycast`
Starts the engine in a development raycasting mode.

```cmd
v64tng.exe -raycast
```