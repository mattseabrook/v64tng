`v64tng.exe` is a Windows x86_64 executable that is an attempt at re-creating the complete 7th Guest game engine from scratch. It is written in C++ 23 and uses `VULKAN` or `DirectX` for graphics, `TBD` for audio, and `TBD` for input. The game engine is designed to work placed into the original game directory (*regardless of where you purchased it/what version you have*), and it is required to be used with the original game data files.

---

**Quick Navigation:**

- **Want to play the game?** → [Running the Game](#running-the-game)
- **Building from source?** → [Quick Start Guide](#quick-start-guide)
- **Understanding the data formats?** → [Game Engine Architecture](#game-engine-architecture)
- **Need detailed build documentation?** → [Developers](#developers)

---

**Table-of-Contents**
- [Disclaimer](#disclaimer)
- [Usage](#usage)
  - [Running the Game](#running-the-game)
  - [Command Line Utilities](#command-line-utilities)
    - [`-c <FILE>`](#-c-file)
    - [`-g <RL_FILE>`](#-g-rl_file)
    - [`-p <VDX_FILE> [raw] [alpha] [video]`](#-p-vdx_file-raw-alpha-video)
    - [`-r <RL_FILE>`](#-r-rl_file)
    - [`-v <FILE>`](#-v-file)
    - [`-x <SONG> [play|extract]`](#-x-song-playextract)
    - [`-raycast`](#-raycast)
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
      - [0x00 Frame Duplication](#0x00-frame-duplication)
      - [Notes](#notes)
  - [XMI](#xmi)
    - [XMI Data Storage](#xmi-data-storage)
    - [XMI to MIDI Conversion](#xmi-to-midi-conversion)
      - [XMI File Structure](#xmi-file-structure)
      - [Key Differences Between XMI and MIDI](#key-differences-between-xmi-and-midi)
      - [Conversion Algorithm](#conversion-algorithm)
      - [MIDI Header Structure](#midi-header-structure)
    - [OPL Synthesis via libADLMIDI](#opl-synthesis-via-libadlmidi)
      - [Emulator Selection](#emulator-selection)
      - [Bank Selection and 4-Op Configuration](#bank-selection-and-4-op-configuration)
      - [Real-Time Audio Rendering](#real-time-audio-rendering)
    - [Music State Management](#music-state-management)
      - [Song Types](#song-types)
      - [State Tracking](#state-tracking)
      - [Song Stack Operations](#song-stack-operations)
    - [Configuration Options](#configuration-options)
    - [XMI Song Index](#xmi-song-index)
  - [Cursors](#cursors)
    - [ROB.GJD Structure](#robgjd-structure)
    - [Cursor Blob Metadata](#cursor-blob-metadata)
    - [Cursor Compression](#cursor-compression)
    - [Cursor Blob Format](#cursor-blob-format)
    - [Palette Structure](#palette-structure)
    - [Cursor Animation System](#cursor-animation-system)
    - [Integration with Game Engine](#integration-with-game-engine)
    - [Technical Notes](#technical-notes)
  - [LZSS](#lzss)
- [Developers](#developers)
  - [Build System Overview](#build-system-overview)
    - [Key Features](#key-features)
  - [Prerequisites](#prerequisites)
    - [Linux Development Environment](#linux-development-environment)
    - [Third-Party Dependencies](#third-party-dependencies)
  - [Linux Cross-Compilation Build System](#linux-cross-compilation-build-system)
    - [Architecture Overview](#architecture-overview)
    - [Windows SDK Acquisition](#windows-sdk-acquisition)
      - [Method 1: xwin (Recommended for Linux)](#method-1-xwin-recommended-for-linux)
      - [Method 2: Native Windows SDK (For Build Validation)](#method-2-native-windows-sdk-for-build-validation)
    - [Build Process Walkthrough](#build-process-walkthrough)
      - [1. Windows SDK Setup](#1-windows-sdk-setup)
      - [2. Resource Compilation](#2-resource-compilation)
      - [3. Shader Compilation](#3-shader-compilation)
      - [4. Source File Scanning](#4-source-file-scanning)
      - [5. Compiler Flags Construction](#5-compiler-flags-construction)
      - [6. Parallel Compilation](#6-parallel-compilation)
      - [7. Linking](#7-linking)
      - [8. Deployment](#8-deployment)
    - [Build Invocation](#build-invocation)
  - [Third-Party Library Builder](#third-party-library-builder)
    - [Architecture](#architecture)
    - [Toolchain File Generation](#toolchain-file-generation)
    - [Library Build Processes](#library-build-processes)
      - [zlib 1.3.1](#zlib-131)
      - [libpng 1.6.50 (Manual Compilation)](#libpng-1650-manual-compilation)
      - [libADLMIDI (Latest from Git)](#libadlmidi-latest-from-git)
    - [Cross-Compilation Testing](#cross-compilation-testing)
    - [Build Script Usage](#build-script-usage)
    - [Vulkan SDK Installation](#vulkan-sdk-installation)
  - [Quick Start Guide](#quick-start-guide)
    - [Step 1: Install Prerequisites](#step-1-install-prerequisites)
    - [Step 2: Download Windows SDK](#step-2-download-windows-sdk)
    - [Step 3: Build Third-Party Libraries](#step-3-build-third-party-libraries)
    - [Step 4: Install Vulkan SDK](#step-4-install-vulkan-sdk)
    - [Step 5: Build the Engine](#step-5-build-the-engine)
    - [Step 6: Deploy and Test](#step-6-deploy-and-test)
    - [Advanced Topics](#advanced-topics)
    - [Build System Architecture](#build-system-architecture)

# Disclaimer

This project is an academic endeavor, created as a technical study and homage to the original software The 7th Guest. It is important to clarify that this project is not officially affiliated with, connected to, or endorsed by the original creators or any of its subsidiaries or its affiliates. This project's primary aim is to serve as an educational resource and a platform for learning and research. It seeks to explore the underlying technology, software architecture, and design principles that informed the creation of The 7th Guest. In replicating the engine, it pays tribute to the groundbreaking work of the original developers and aspires to provide a springboard for further study, innovation, and appreciation within the realms of game development and computer science. This project does not intend to compete with or infringe upon the intellectual property rights of the original software or its creators. Its use, modification, and distribution are intended strictly for non-profit, educational purposes. All trademarks and registered trademarks mentioned herein are acknowledged as the property of their respective owners.

# Usage

## Running the Game

Running `v64tng.exe` with no arguments opens a small system information window displaying detected graphics capabilities and configuration details. To start the game itself, launch the executable with an exclamation mark:

```cmd
v64tng.exe !
```

The engine must be placed in the original 7th Guest game directory alongside the game's data files (`.GJD`, `.RL`, etc.). It is compatible with all known releases of The 7th Guest, regardless of where purchased (Steam, GOG, original CD-ROM).

## Command Line Utilities

The engine includes several command-line utilities for extracting, analyzing, and debugging game assets. These tools are invaluable for developers and researchers studying the game's data formats.

### `-c <FILE>`
Extracts all cursor animations from the `ROB.GJD` file. Each cursor is written as a sequence of numbered PNG images, one per animation frame. This is useful for examining the game's cursor artwork or creating custom cursor graphics.

```cmd
v64tng.exe -c CURSORS.ROB
```

**Output**: Creates a directory structure containing PNG files for each cursor type and frame.

### `-g <RL_FILE>`
Extracts every `.VDX` file referenced by the given `.RL` index file. The matching `.GJD` archive must be located alongside the `.RL` file. This batch extraction tool is useful for analyzing entire rooms or asset collections.

```cmd
v64tng.exe -g DR.RL
```

**Output**: Extracts all VDX files listed in the RL index, preserving their original filenames.

### `-p <VDX_FILE> [raw] [alpha] [video]`
Extracts frames from a VDX file with various output options:
- **Default**: Saves frames as PNG images with proper color mapping
- **`raw`**: Dumps raw pixel data without conversion (useful for analysis)
- **`alpha`**: Enables a visible magenta transparency key for development/debugging
- **`video`**: Generates an MKV movie file from the extracted frames at 15 FPS

```cmd
v64tng.exe -p f_1bb.vdx raw alpha video
```

**Output**: Frame images and/or video file depending on options specified.

### `-r <RL_FILE>`
Displays the contents of an RL index file in human-readable format, listing each entry's filename, byte offset, and length within the associated GJD archive. Useful for understanding archive structure and locating specific assets.

```cmd
v64tng.exe -r DR.RL
```

**Output**: Console output showing the complete RL index table.

### `-v <FILE>`
Shows detailed information about a VDX resource or GJD archive:
- For VDX files: Header details, chunk types, dimensions, frame count, compression info
- For GJD files (when used with an RL file): Complete archive structure analysis

```cmd
v64tng.exe -v f_1bc.vdx
```

**Output**: Comprehensive technical information about the file's internal structure.

### `-x <SONG> [play|extract]`
Looks up a song by name inside `XMI.RL` and either plays it using OPL emulation or extracts the raw XMI file to disk. The song name should be given without the `.XMI` extension.

```cmd
v64tng.exe -x agu50 play     # Play "Tad's Theme"
v64tng.exe -x gu39 extract   # Extract title screen music
```

**Output**: Real-time playback or extracted XMI file depending on mode.

### `-raycast`
Starts the engine in development raycasting mode. This is a debug mode used for testing the 3D navigation system and render pipeline independently from game logic.

```cmd
v64tng.exe -raycast
```

**Output**: Opens a window with real-time raycasting renderer for development testing.

# Game Engine Architecture

The 7th Guest uses a sophisticated data packaging system designed by Rob Landeros (RL files) and Graeme J Devine (GJD files). The game's assets—video sequences, still images, music, and cursors—are stored in compressed archive formats indexed by external metadata files. Understanding this architecture is essential for extracting, viewing, or modifying game content.

## RL

The RL (Rob Landeros) file is an index file that contains information about VDX file locations inside the corresponding `*.GJD` file. The RL file format consists of a list of records, each representing a VDX file entry. Each entry in the RL file is exactly 20 bytes long with no header or trailer:

- The first 12 bytes correspond to the filename (null-terminated, but may use all 12 bytes for long names).
- The next 4 bytes correspond to the byte offset within the GJD file (little-endian).
- The final 4 bytes correspond to the length in bytes of the VDX data (little-endian).

| Name     | Type               | Description                                      |
| -------- | ------------------ | ------------------------------------------------ |
| Filename | char[12]           | Filename (null-padded or null-terminated string) |
| Offset   | uint32_t (4 bytes) | Little-endian unsigned integer (VDX byte offset) |
| Length   | uint32_t (4 bytes) | Little-endian unsigned integer (VDX data length) |

The total file size divided by 20 gives the number of entries. The engine reads RL files sequentially, parsing 20-byte blocks until EOF. Each filename typically includes a file extension (e.g., `.VDX`) but the engine may strip this extension during lookup operations.

## GJD

The GJD (Graeme J Devine) file is an archive file format that is essentially a collection of VDX data blobs concatenated together, with their structure and location determined by the corresponding `*.RL` index file.

It doesn't have a fixed header structure, footer, or internal metadata—it is simply a flat binary concatenation of VDX files. The `*.RL` file acts as the external index that maps filenames to byte ranges within the GJD archive. Using the `offset` and `length` from each `*.RL` entry, the VDX data is read directly from the GJD file.

| Component | Type            | Description                                                                     |
| --------- | --------------- | ------------------------------------------------------------------------------- |
| VDX Data  | uint8_t[length] | VDX file data blob, length and offset determined by corresponding RL file entry |
| ...       | ...             | Additional VDX data blobs, concatenated without delimiters or padding           |

The engine uses memory-mapped I/O (on both Windows and Unix systems) for zero-copy access to GJD files, as they can be quite large. Each VDX blob within a GJD file begins with the standard VDX header (identifier `0x6792`) followed by chunk data.

## VDX

The VDX file format is used to store video sequences and still images in The 7th Guest. The data in a VDX file consists of a dedicated header followed by an arbitrary number of chunks, each with its own header. VDX files can contain a mix of image data (0x20 static bitmaps, 0x25 delta frames, 0x00 frame duplication) and audio data (0x80 raw WAV), allowing synchronized audio-visual playback.

### Header

| Name       | Type     | Description                                          |
| ---------- | -------- | ---------------------------------------------------- |
| identifier | uint16   | Magic number, always 0x6792 (little-endian)          |
| unknown    | uint8[6] | Unknown purpose (possibly version or reserved space) |

The VDX header is always 8 bytes total. The identifier value `0x6792` is stored in little-endian format (bytes `0x92 0x67` in the file). The purpose of the 6-byte unknown field has not been determined—it varies across different VDX files but does not appear to affect decoding.

### Chunk Header

Each chunk following the VDX header has an 8-byte header followed by the chunk data:

| Offset | Type    | Field      | Description                                                            |
| ------ | ------- | ---------- | ---------------------------------------------------------------------- |
| 0      | uint8   | ChunkType  | Determines the type of data (0x20, 0x25, 0x80, 0x00, etc.)             |
| 1      | uint8   | Unknown    | Purpose unknown (possibly related to replay or synchronization)        |
| 2-5    | uint32  | DataSize   | Size of chunk data in bytes (little-endian, excludes 8-byte header)    |
| 6      | uint8   | LengthMask | LZSS parameter: bitmask for isolating length field (0 if uncompressed) |
| 7      | uint8   | LengthBits | LZSS parameter: bits used for length encoding (0 if uncompressed)      |
| 8+     | uint8[] | Data       | Chunk data payload with length determined by `DataSize`                |

**Compression Detection**: If both `LengthMask` and `LengthBits` are **non-zero**, the chunk data is LZSS-compressed and must be decompressed before further processing. If either value is zero, the data is uncompressed and can be processed directly.

### Chunk Types

#### 0x20 Bitmap

This chunk, as processed by the function `getBitmapData`, contains a static bitmap image. The chunk data (after LZSS decompression if necessary) has the following structure:

| Offset | Type       | Size (bytes) | Field       | Description                                                       |
| ------ | ---------- | ------------ | ----------- | ----------------------------------------------------------------- |
| 0-1    | uint16_t   | 2            | numXTiles   | Number of 4×4 pixel tiles horizontally (little-endian)            |
| 2-3    | uint16_t   | 2            | numYTiles   | Number of 4×4 pixel tiles vertically (little-endian)              |
| 4-5    | uint16_t   | 2            | colourDepth | Bits per pixel (always 8 in practice, meaning 256-color palette)  |
| 6+     | RGBColor[] | varies       | palette     | RGB color entries: `(1 << colourDepth) * 3` bytes (768 for 8-bit) |
| varies | uint8_t[]  | varies       | image       | Tile data: 4 bytes per tile (colour1, colour0, colourMap[2])      |

The overall bitmap dimensions are derived from these tile counts. Width is `numXTiles * 4` pixels and height is `numYTiles * 4` pixels. Most assets measure 640×320 pixels (160×80 tiles), but `Vielogo.vdx` from the Windows release uses 640×480 pixels (160×120 tiles).

The palette contains `(1 << colourDepth)` RGB triplets. For 8-bit color depth, this is 256 colors × 3 bytes = 768 bytes.

The image is split into tiles, each measuring 4×4 pixels (16 pixels total). Tiles are stored in row-major order (left-to-right, top-to-bottom). Each tile structure within the image data is as follows:

| Offset | Type     | Field     | Description                                                           |
| ------ | -------- | --------- | --------------------------------------------------------------------- |
| 0      | uint8_t  | colour1   | Palette index used when the colourMap bit is 1                        |
| 1      | uint8_t  | colour0   | Palette index used when the colourMap bit is 0                        |
| 2-3    | uint16_t | colourMap | 16-bit field (little-endian) mapping each pixel to colour1 or colour0 |

The `colourMap` is a 16-bit little-endian value determining which of the two palette entries to use for each pixel. The bits are mapped to pixels using MSB-first ordering within the 4×4 tile:

```
                                +----+----+----+----+
                                | 15 | 14 | 13 | 12 |  ← MSB (bit 15)
 Little-endian uint16_t:        +----+----+----+----+
 [byte0][byte1]                 | 11 | 10 |  9 |  8 |
   LSB    MSB                    +----+----+----+----+
                                |  7 |  6 |  5 |  4 |
   Bit ordering:                +----+----+----+----+
   - Bit 15 (MSB) → pixel 0     |  3 |  2 |  1 |  0 |  ← LSB (bit 0)
   - Bit 0 (LSB) → pixel 15     +----+----+----+----+
```

For each pixel `i` (0-15):
- **Bit set to 1** (`colourMap & (0x8000 >> i)`): Use `colour1` palette entry
- **Bit set to 0**: Use `colour0` palette entry

This 2-color-per-tile encoding provides efficient compression while allowing relatively rich detail through careful color selection per tile.

#### 0x25 Delta Bitmap

These chunks contain animated (video) sequences. After LZSS decompression (if applicable), delta bitmap data describes modifications to apply to the previous frame's pixel data and palette. In VDX video sequences, the first frame is always a `0x20` chunk (complete static bitmap), and all subsequent frames use `0x25` chunks to encode only the changes from the prior frame.

Each `0x25` chunk has the following structure:

| Offset | Size (bytes) | Field        | Description                                                          |
| ------ | ------------ | ------------ | -------------------------------------------------------------------- |
| 0-1    | 2            | localPalSize | Number of palette entries to update (little-endian, 0 if no changes) |
| 2-33   | 32           | palBitField  | 256-bit field (16×uint16_t) specifying which palette entries change  |
| 34+    | 3×N          | localColours | N RGB triplets, where N = number of bits set in palBitField          |
| varies | varies       | image        | Opcode stream encoding pixel modifications                           |

**Palette Update Process:**

1. If `localPalSize == 0`, skip directly to the image opcodes (no palette changes).
2. Otherwise, parse the `palBitField` as 16 little-endian uint16_t values forming a 256-bit array.
3. For each bit position `i` (0-255) in the bit field:
   - If bit `i` is set, read the next RGB triplet from `localColours` and update `palette[i]`.
   - The bit field is processed in groups of 16 bits (paletteGroup 0-15), with bit 15 (MSB) of each group corresponding to the first palette entry in that group.
4. The number of RGB triplets in `localColours` always equals the number of set bits in `palBitField`.

**Example:** If bits 0, 3, and 255 are set in `palBitField`, then `localColours` contains exactly 3 RGB triplets that update palette entries 0, 3, and 255 respectively.

After updating the palette, the frame's pixel data is modified according to the image opcode stream. This data consists of a sequence of byte opcodes, each followed by zero or more parameter bytes. Similar to the static bitmap in chunk type `0x20`, modifications are performed on the image organized as 4×4 pixel tiles. Processing begins at the top-left tile (coordinates `x=0, y=0`) and proceeds according to opcode instructions.

##### Opcodes

Opcodes are byte-sized instructions that dictate how tiles should be modified. The opcode encoding is designed for efficient compression, with common operations (skipping tiles, filling with solid colors) using minimal bytes. The current tile position (`xPos`, `yPos`) is maintained throughout processing and updated by each opcode.

In the function `getDeltaBitmapData`, the opcode stream is parsed sequentially, and each opcode updates the frame buffer according to its defined behavior. All tile-based operations use the previously updated palette, allowing palette animation effects.

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

These VDX chunks contain raw PCM audio data without a WAV header. The audio format is always:
- **Format**: Uncompressed PCM
- **Sample Rate**: 22050 Hz
- **Bit Depth**: 8-bit unsigned
- **Channels**: Mono (1 channel)

When extracting or playing audio, the engine prepends a standard WAV header to the raw PCM data. The WAV header structure is statically defined, with `chunkSize` and `subchunk2Size` calculated dynamically based on the audio data length:

```cpp
struct WAVHeader {
    char     chunkID[4] = {'R', 'I', 'F', 'F'};
    uint32_t chunkSize = 0;                      // Set to: dataSize + 36
    char     format[4] = {'W', 'A', 'V', 'E'};

    char     subchunk1ID[4] = {'f', 'm', 't', ' '};
    uint32_t subchunk1Size = 16;                 // PCM format chunk size
    uint16_t audioFormat = 1;                    // 1 = PCM
    uint16_t numChannels = 1;                    // Mono
    uint32_t sampleRate = 22050;                 // 22.05 kHz
    uint32_t byteRate = 22050;                   // sampleRate × numChannels × (bitsPerSample/8)
    uint16_t blockAlign = 1;                     // numChannels × (bitsPerSample/8)
    uint16_t bitsPerSample = 8;                  // 8-bit samples

    char     subchunk2ID[4] = {'d', 'a', 't', 'a'};
    uint32_t subchunk2Size = 0;                  // Set to: dataSize
};
```

Multiple `0x80` chunks in a single VDX file are concatenated to form one continuous audio stream. VDX files with audio are played at 15 FPS to maintain audio-video synchronization.

**Note**: Full audio playback functionality is currently under development. The header structure and extraction are implemented, but integration with the Windows audio API for VDX audio playback is pending completion.

#### 0x00 Frame Duplication

This chunk type indicates that the previous frame should be duplicated without modification. This is an optimization technique used in VDX files to represent static frames in video sequences without storing redundant data. When a 0x00 chunk is encountered, the engine simply copies the last frame in the `frameData` vector to create a new frame entry.

This chunk type has no data payload—only the chunk header exists.

#### Notes

- Video sequences within a VDX file are intended to be played at 15 frames per second.
- The first frame in any VDX video sequence is always a 0x20 chunk (full bitmap).
- All subsequent frames use 0x25 chunks (delta bitmap) to encode changes from the previous frame.
- Chunk type 0x00 (frame duplication) is used to extend the duration of a static frame without storing redundant pixel data.

## XMI

The 7th Guest uses Extended MIDI (XMI) format for its music, which was developed by Miles Sound System for early 1990s games. XMI is an extension of the standard MIDI format that includes additional timing information and simplified branching support, making it ideal for adaptive game music. The engine converts XMI data to standard MIDI Format 0 in memory, then synthesizes it using OPL2/OPL3 emulation via the libADLMIDI library.

### XMI Data Storage

XMI files are stored in `XMI.GJD` and indexed by `XMI.RL`. The RL file maps song names (without the `.XMI` extension) to their offset and length within the GJD archive. Unlike VDX files, XMI files do not have a unique container format header—they are raw XMI data blobs that follow the Extended MIDI specification.

### XMI to MIDI Conversion

The engine's `xmiConverter` function performs a complete XMI-to-MIDI conversion in memory before playback. This conversion process is complex and handles several XMI-specific features:

#### XMI File Structure

An XMI file begins with several header chunks:
1. **TIMB Chunk**: Contains timbre/instrument bank information (skipped after reading length)
2. **RBRN Chunk** (optional): Branch information for interactive music (skipped if present)
3. **EVNT Chunk**: The core event data containing note and control information

The converter skips directly to the EVNT chunk, which contains the musical event data that needs translation to MIDI.

#### Key Differences Between XMI and MIDI

**Note Duration Encoding:**
- **MIDI**: Uses separate Note On and Note Off events with delta times between them
- **XMI**: Embeds duration directly in the Note On event as a variable-length value immediately following the note parameters
- The converter must extract these durations and schedule corresponding Note Off events

**Timing Format:**
- **XMI**: Uses a fixed timebase of 120 ticks per beat
- **MIDI**: Supports arbitrary timebase values (the converter uses 960 ticks per beat for higher precision)
- All delta times must be scaled proportionally when converting

**Delta Time Representation:**
- **XMI**: Uses `0x7F` bytes to represent delays of 127 ticks, which can be chained (e.g., `0x7F 0x7F 0x20` = 127 + 127 + 32 = 286 ticks)
- **MIDI**: Uses variable-length quantity (VLQ) encoding where the MSB indicates continuation

#### Conversion Algorithm

The conversion process operates in two passes:

**Pass 1: XMI Event Decoding**

The decoder maintains a priority queue of pending Note Off events sorted by delta time:

1. **Read Delta Times**: Parse XMI delta format (handle `0x7F` chaining)
2. **Process Pending Note Offs**: Before each new event, emit any Note Off events whose delta time has expired
3. **Parse MIDI Event Types**:
   - `0x90` (Note On): Extract note, velocity, and **duration**, schedule a Note Off event
   - `0x80` (Note Off): Copy directly (rare in XMI)
   - `0xA0-0xE0`: Standard MIDI events (pressure, control change, program change, pitch bend)
   - `0xFF`: Meta events (tempo, text, end-of-track)
   - `0xF0/0xF7`: System Exclusive messages
4. **Note Off Queue Management**: When a Note On is encountered, create a Note Off event with the specified duration and insert it into the sorted queue
5. **Flush Remaining Note Offs**: After the end-of-track marker, emit all pending Note Off events

**Pass 2: MIDI Formatting and Timebase Conversion**

The second pass converts the decoded event stream to standard MIDI:

1. **Delta Time Scaling**: Apply formula to convert from XMI timebase (120) to MIDI timebase (960):
   ```
   new_delta = old_delta × (midi_timebase × default_qnlen) / (xmi_freq × current_qnlen)
   ```
   where `xmi_freq = 120`, `default_qnlen = 500000` (microseconds per quarter note at 120 BPM)

2. **Variable-Length Quantity Encoding**: Convert scaled delta times to MIDI VLQ format
3. **Tempo Meta Events**: Track tempo changes (`FF 51`) to adjust subsequent delta time scaling dynamically
4. **Write MIDI Header**: 
   - Format 0 (single track)
   - Division: 960 ticks per quarter note
5. **Write Track Chunk**: Complete event stream with proper VLQ encoding

#### MIDI Header Structure

```cpp
const std::array<uint8_t, 18> midiHeader = {
    'M', 'T', 'h', 'd',    // Chunk ID
    0, 0, 0, 6,            // Header length (6 bytes)
    0, 0,                  // Format 0 (single track)
    0, 1,                  // Number of tracks (1)
    0, 60,                 // Division (timebase, replaced with 960)
    'M', 'T', 'r', 'k'     // Track chunk ID
};
```

### OPL Synthesis via libADLMIDI

After conversion, the MIDI data is synthesized using libADLMIDI, which provides cycle-accurate emulation of Yamaha OPL2 and OPL3 FM synthesis chips:

#### Emulator Selection

The engine supports multiple emulation modes configured via `config.json`:

- **`opl2` or `opl`**: Single OPL2 chip (9 channels, 2-operator sounds)
- **`dual_opl2`**: Two OPL2 chips (18 channels)
- **`opl3`** (default): Single OPL3 chip (18 channels, 2-operator and 4-operator sounds)

The emulator core is selected at runtime:
```cpp
V64TNG_EMU_OPL2  // Prefers YMFM_OPL2, falls back to MAME_OPL2, then DOSBOX
V64TNG_EMU_OPL3  // Prefers YMFM_OPL3, falls back to NUKED, then DOSBOX
```

#### Bank Selection and 4-Op Configuration

- **MIDI Bank**: The `midiBank` configuration selects the instrument bank (default: 0)
- **4-Op Channels**: In OPL3 mode, six channels are configured for 4-operator synthesis, enabling richer instrument sounds
- Banks are applied before MIDI data is loaded to ensure correct instrument mapping

#### Real-Time Audio Rendering

The `PlayMIDI` function implements real-time audio playback using the Windows Audio API (WASAPI):

1. **Audio Format**: 16-bit stereo PCM at 44.1 kHz (falls back to 48 kHz if unsupported)
2. **Buffer Management**: Uses a shared-mode audio client with a 500ms buffer
3. **Rendering Loop**:
   - Queries available buffer space (`GetCurrentPadding`)
   - Generates PCM samples via `adl_play` (libADLMIDI renders MIDI → OPL → PCM)
   - Applies gain (6.0× multiplication) and volume scaling
   - Applies fade-in (500ms) for main songs after the first song plays
   - Writes samples to the audio endpoint
4. **Position Tracking**: For main (non-transient) songs, saves playback position when paused to enable resume functionality

### Music State Management

The engine maintains sophisticated music state to support layered playback:

#### Song Types

- **Main Songs**: Background music that persists across scenes, resumable from saved position
- **Transient Songs**: Short music cues that interrupt the main song and always play from the beginning

#### State Tracking

```cpp
state.current_song        // Name of the main background song
state.transient_song      // Name of the currently playing transient song
state.main_song_position  // Playback position (seconds) for main song resume
state.song_stack          // Stack of (song_name, position) pairs for nested music
state.music_playing       // Flag indicating if music thread is active
state.music_thread        // Background thread handle for music playback
```

#### Song Stack Operations

- **`pushMainSong(songName)`**: Saves current song state to stack, starts new main song
- **`popMainSong()`**: Restores previous song from stack, resumes from saved position
- **`xmiPlay(songName, isTransient)`**: Stops current music, starts new song (transient or main)

The stack system enables complex music transitions, such as playing a special theme when entering a room, then returning to the main house theme when leaving.

### Configuration Options

The following settings in `config.json` control music playback:

```json
{
  "midiEnabled": true,           // Enable/disable music
  "midiVolume": 100,              // Volume (0-100)
  "midiMode": "opl3",             // Emulation mode: "opl2", "dual_opl2", "opl3"
  "midiBank": 0                   // MIDI instrument bank (0-73+ depending on libADLMIDI version)
}
```

### XMI Song Index

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

The 7th Guest uses animated cursors stored in the `ROB.GJD` file. This file contains nine distinct cursor animations, each serving a specific purpose in the game's user interface. The cursor system is a sophisticated component that provides visual feedback and enhances the game's atmospheric presentation.

### ROB.GJD Structure

The `ROB.GJD` file is a specialized archive containing compressed cursor image data and their associated color palettes. Unlike the VDX-based GJD files, ROB.GJD does not use an external RL index file. Instead, the cursor metadata is hardcoded in the engine, specifying the exact byte offset of each cursor blob within the file.

The file contains:
- **Nine cursor animation blobs** at fixed offsets
- **Seven color palettes** stored at the end of the file (each 96 bytes / 0x60 bytes)
- Each cursor blob is independently compressed using a custom LZSS-variant compression scheme

### Cursor Blob Metadata

Each cursor is identified by a `CursorBlobInfo` structure containing:

| Field      | Type     | Description                                   |
| ---------- | -------- | --------------------------------------------- |
| offset     | uint32_t | Byte offset of the cursor blob within ROB.GJD |
| paletteIdx | uint8_t  | Index (0-6) identifying which palette to use  |

The nine cursors and their purposes are:

| Index | Offset  | Palette | Cursor Type      | Purpose                                     |
| ----- | ------- | ------- | ---------------- | ------------------------------------------- |
| 0     | 0x00000 | 0       | Skeleton Hand    | Default cursor (waving "no" gesture)        |
| 1     | 0x0182F | 2       | Theatre Mask     | Indicates a Full Motion Video (FMV) hotspot |
| 2     | 0x03B6D | 1       | Brain            | Puzzle interaction cursor                   |
| 3     | 0x050CC | 0       | Skeleton Hand    | Pointing forward (move forward)             |
| 4     | 0x06E79 | 0       | Skeleton Hand    | Turn right navigation                       |
| 5     | 0x0825D | 0       | Skeleton Hand    | Turn left navigation                        |
| 6     | 0x096D7 | 3       | Chattering Teeth | Easter egg indicator                        |
| 7     | 0x0A455 | 5       | Pyramid          | Special puzzle cursor                       |
| 8     | 0x0A776 | 4       | Eyeball          | Puzzle action/examination cursor            |

### Cursor Compression

Each cursor blob uses a custom LZSS-based compression algorithm optimized for small image data. The decompression algorithm (`decompressCursorBlob`) processes the data as follows:

1. **Control Bytes**: Each control byte contains 8 flag bits (processed LSB to MSB)
2. **Flag Bit = 1**: Copy the next byte literally to output
3. **Flag Bit = 0**: Read two bytes forming a back-reference:
   - First byte (`var_8`): Low 8 bits of offset
   - Second byte (`offsetLen`): High 4 bits contain upper offset bits, low 4 bits contain length
   - **Length**: `(offsetLen & 0x0F) + 3` (minimum 3, maximum 18 bytes)
   - **Offset**: `((offsetLen >> 4) << 8) + var_8` (back-reference into output buffer)
4. **Termination**: The sequence `0x00 0x00` signals the end of compressed data

### Cursor Blob Format

Once decompressed, each cursor blob has the following structure:

| Offset | Size    | Field      | Description                                        |
| ------ | ------- | ---------- | -------------------------------------------------- |
| 0      | 1 byte  | width      | Width of cursor in pixels                          |
| 1      | 1 byte  | height     | Height of cursor in pixels                         |
| 2      | 1 byte  | frames     | Number of animation frames                         |
| 3-4    | 2 bytes | (reserved) | Purpose unknown, typically 0x00                    |
| 5+     | varies  | pixel data | Indexed pixel data (width × height × frames bytes) |

The pixel data is stored as a linear array of palette indices. Each byte represents one pixel using a 5-bit palette index (0-31). Index 0 is reserved for transparency.

### Palette Structure

The seven palettes are stored at the end of `ROB.GJD` starting at offset:
```
palette_block_offset = file_size - (96 * 7)
```

Each palette is exactly 96 bytes (0x60) containing 32 RGB triplets:

| Offset        | Field        | Description                   |
| ------------- | ------------ | ----------------------------- |
| paletteIdx×96 | RGB triplets | 32 colors × 3 bytes (R, G, B) |

To access a specific palette:
```
palette_offset = palette_block_offset + (paletteIdx * 96)
```

### Cursor Animation System

The cursor system maintains state for all loaded cursors and handles animation timing:

1. **Initialization** (`initCursors`):
   - Reads the entire `ROB.GJD` file into memory
   - Decompresses all nine cursor blobs
   - Converts each frame from indexed color to RGBA format (with alpha channel)
   - Creates Windows cursor handles (`HCURSOR`) for each frame
   - Applies scaling based on the configured UI scale factor

2. **Frame Conversion** (`cursorFrameToRGBA`):
   - Reads each pixel's palette index (masked to 5 bits)
   - Looks up RGB values from the cursor's associated palette
   - Sets alpha to 0x00 for index 0 (transparent), 0xFF for all other indices
   - Produces a 32-bit RGBA bitmap suitable for Windows cursor creation

3. **Windows Cursor Creation** (`createWindowsCursor`):
   - Creates a `BITMAPV5HEADER` with 32-bit BGRA format
   - Converts RGBA data to BGRA (Windows native format)
   - Generates a monochrome mask bitmap based on alpha channel
   - Sets hotspot to the center of the cursor (width/2, height/2)
   - Uses `CreateIconIndirect` to create the final cursor handle

4. **Animation** (`updateCursorAnimation`):
   - Runs at 15 FPS (same as VDX video playback)
   - Advances `currentFrame` for the active cursor
   - Wraps around when reaching the last frame
   - Only animates cursors with multiple frames

5. **Cursor Selection** (`getCurrentCursor`):
   - Returns the appropriate `HCURSOR` for the current frame
   - Returns a transparent 1×1 cursor during VDX playback or raycasting
   - Falls back to Windows system arrow if cursors fail to initialize

6. **Dynamic Scaling** (`recreateScaledCursors`):
   - Destroys existing cursor handles
   - Resamples RGBA data using nearest-neighbor scaling
   - Recreates Windows cursors at the new scale
   - Called when UI scale factor changes

### Integration with Game Engine

The cursor system integrates with the main game loop through:

- **Window Message Handler**: Responds to `WM_SETCURSOR` messages to update the displayed cursor
- **Timer Events**: `WM_TIMER` triggers cursor animation updates every frame
- **State Management**: Hides cursor during animations (`state.animation.isPlaying`) by displaying a transparent cursor
- **Cleanup**: `cleanupCursors()` destroys all cursor handles when the application exits

### Technical Notes

- All cursor animations in the original game run at 15 frames per second, matching the VDX video framerate
- The first cursor (skeleton hand waving) is also used for the application icon (`icon.ico`)
- The 5-bit palette index limitation means only 32 colors per cursor, with index 0 reserved for transparency
- Cursor scaling uses nearest-neighbor interpolation to preserve the pixelated retro aesthetic
- The transparent cursor technique (1×1 fully transparent pixel) is used instead of hiding the cursor to maintain better compatibility with Windows window management
  
## LZSS

VDX chunks can optionally be compressed using a common variant of the LZSS algorithm. The chunks are compressed if, and only if, both `lengthMask` and `lengthBits` are not equal to zero. Decompression will occur using a circular history buffer (`his_buf`) and a sliding window with the following parameters:

```
N (buffer size) = 1 << (16 - lengthBits)
F (window size) = 1 << lengthBits
THRESHOLD = 3
```

All references are relative to the current write position in the history buffer, which is tracked by `his_buf_pos`. Initially, writing begins at `N - F`. The `lengthMask` value from the Chunk Header can isolate the length portion of a buffer reference, though this seems a bit redundant since the number of bits used (`lengthBits`) is also specified.

During decompression, the function `lzssDecompress` reads and processes each byte from the input `compressedData` and populates the output buffer. The algorithm works as follows:

1. Read a control byte (`flags`) containing 8 flag bits
2. For each bit (processed LSB to MSB):
   - **Bit = 1**: Copy next byte literally to output and history buffer
   - **Bit = 0**: Read 2-byte back-reference:
     - `low_byte` and `high_byte` form `ofs_len = low_byte | (high_byte << 8)`
     - If `ofs_len == 0`, this is an **end marker**—decompression terminates
     - Otherwise:
       - `offset = (his_buf_pos - (ofs_len >> lengthBits)) & (N - 1)`
       - `length = (ofs_len & lengthMask) + THRESHOLD`
       - Copy `length` bytes from history buffer at `offset` to output
3. Update `his_buf_pos` after each byte written using circular wrap: `(his_buf_pos + 1) & (N - 1)`

The history buffer (`his_buf`) is used to store previous data, facilitating the LZSS decompression process. The compression scheme is well-suited for VDX data, which often contains repeated 4×4 pixel tiles.

# Developers

This project features a sophisticated, production-grade build system designed from scratch to support modern C++23 development with cross-platform Windows targeting. The build infrastructure demonstrates advanced compiler toolchain integration, parallel compilation strategies, and automated dependency management—techniques employed at top-tier software companies.

## Build System Overview

The v64tng engine uses three custom-built Bash scripts forming a complete build pipeline:

1. **`build.sh`**: Primary build system for Linux→Windows cross-compilation using Clang/LLVM
2. **`build_windows_libs.sh`**: Automated third-party library builder for Windows static libraries
3. **`build.ps1`**: Native Windows build system using PowerShell (legacy, still maintained)

All build scripts are designed for **zero-configuration builds** on supported platforms. The system automatically detects SDK paths, validates toolchain components, manages dependencies, and produces deployment-ready executables.

### Key Features

- **Incremental Compilation**: Dependency tracking with change detection, only rebuilds modified files
- **Parallel Compilation**: Multi-threaded builds utilizing all available CPU cores
- **Automatic Shader Compilation**: Vulkan SPIR-V and DirectX HLSL shaders compiled and embedded
- **Resource Compilation**: Windows resources (icons, manifests) integrated via MinGW windres
- **Smart Caching**: Object files, shaders, and resources cached to minimize rebuild times
- **Build Logging**: Warnings and errors logged to `build.log` for post-build analysis
- **Memory-Mapped I/O**: Library builder uses zero-copy techniques for Windows SDK access
- **Cross-Platform SDK Detection**: Automatically finds and configures Windows SDK from xwin or native installations

## Prerequisites

### Linux Development Environment

The v64tng engine is built exclusively on Linux, cross-compiling to Windows executables. The recommended distribution is Arch Linux (or derivatives like Manjaro), though any distribution with a modern Clang/LLVM toolchain will work.

```bash
# Core compilation toolchain
sudo pacman -S clang lld llvm

# MinGW windres (for Windows resource compilation only - we don't use MinGW's linker/stdlib)
sudo pacman -S mingw-w64-binutils

# Build utilities
sudo pacman -S cmake ninja git wget xxd

# Shader compilation
sudo pacman -S vulkan-tools shaderc

# Rust toolchain for xwin (Windows SDK downloader)
sudo pacman -S rust cargo
cargo install xwin
```

**Note**: For non-Arch distributions, install equivalent packages through your package manager (apt, dnf, zypper, etc.).

### Third-Party Dependencies

The engine requires these third-party libraries, all built as Windows static libraries:

- **zlib 1.3.1**: Compression library (for PNG support)
- **libpng 1.6.50**: PNG image encoding/decoding
- **libADLMIDI**: OPL2/OPL3 FM synthesis for MIDI playback
- **Vulkan SDK 1.4.313.2**: Graphics API headers and runtime

The `build_windows_libs.sh` script automates building these from source. See [Build Script Usage](#build-script-usage) for details.

## Linux Cross-Compilation Build System

The `build.sh` script implements a complete Linux→Windows cross-compilation pipeline using Clang with Microsoft ABI compatibility. This approach provides the best of both worlds: Linux development speed with Windows binary compatibility.

### Architecture Overview

The build system uses **clang-cl** (Clang's MSVC-compatible driver) targeting `x86_64-pc-windows-msvc`. This produces authentic Windows PE executables with proper MSVC ABI calling conventions, exception handling, and name mangling—fully compatible with Windows SDK libraries.

**Key Design Principles:**

1. **Authentic Windows Binaries**: Uses `clang-cl` + `lld-link` for byte-perfect Windows PE/COFF output
2. **Zero Host Dependencies**: No MinGW runtime libraries—only MSVC CRT and Windows SDK
3. **Parallel Everything**: Compilation, shader processing, and resource building run concurrently
4. **Smart Dependency Tracking**: `.d` files track header dependencies, trigger rebuilds only when needed
5. **Modular Architecture**: Clean separation between compilation, linking, shader processing, and deployment

### Windows SDK Acquisition

The build system requires the Windows SDK for headers and import libraries. Two acquisition methods are supported:

#### Method 1: xwin (Recommended for Linux)

[xwin](https://github.com/Jake-Shadle/xwin) is a Rust tool that downloads official Microsoft SDK components:

```bash
# Install xwin
cargo install xwin

# Download Windows SDK to /opt/winsdk
sudo mkdir -p /opt/winsdk
sudo chown $USER:$USER /opt/winsdk
xwin --accept-license splat --output /opt/winsdk
```

**What xwin downloads:**
- Windows SDK headers (ucrt, um, shared, winrt)
- MSVC CRT headers and static libraries
- Import libraries for Windows system DLLs
- Total size: ~500 MB

The build script automatically detects the xwin directory structure:
```
/opt/winsdk/
├── crt/
│   ├── include/          # MSVC C++ stdlib headers
│   └── lib/x86_64/       # Static CRT libs (libcmt.lib, etc.)
└── sdk/
    ├── include/
    │   ├── ucrt/         # Universal CRT headers
    │   ├── um/           # User-mode API headers
    │   ├── shared/       # Shared headers
    │   └── winrt/        # WinRT headers
    └── lib/
        ├── ucrt/x86_64/  # Universal CRT libs
        └── um/x86_64/    # SDK import libs
```

#### Method 2: Native Windows SDK (For Build Validation)

If you have access to a Windows machine, you can copy an existing SDK installation. The build script detects traditional Windows SDK layouts as well.

### Build Process Walkthrough

#### 1. Windows SDK Setup

The `setup_winsdk()` function performs intelligent SDK detection:

```bash
# Detect SDK structure (xwin vs traditional)
# Find include directories: ucrt, um, shared, winrt
# Find library directories: ucrt/x86_64, um/x86_64
# Detect SDK version (e.g., 10.0.22621.0 or 10.0.26100)
# Validate critical paths exist
# Export environment variables for compiler
```

**Auto-Detection Logic:**
- Scans `/opt/winsdk` for known structures
- Tries both flat (xwin) and versioned (traditional) layouts
- Validates presence of critical headers: `windows.h`, `d3d11.h`, `vulkan.h`
- Verifies import libraries: `kernel32.lib`, `user32.lib`, `libucrt.lib`
- Falls back gracefully if paths are missing

**Environment Variables Set:**
```bash
export DETECTED_SDK_INCLUDE="/opt/winsdk/sdk/include"
export DETECTED_SDK_LIB="/opt/winsdk/sdk/lib"
export DETECTED_CRT_INCLUDE="/opt/winsdk/crt/include"
export DETECTED_CRT_LIB="/opt/winsdk/crt/lib"
export DETECTED_SDK_VERSION="10.0.26100"
export DETECTED_LIB_ARCH="x86_64"
```

#### 2. Resource Compilation

Windows resources (icons, version info, manifests) are compiled using MinGW's `windres`:

```bash
x86_64-w64-mingw32-windres \
    -I "$DETECTED_SDK_INCLUDE/$DETECTED_SDK_VERSION/um" \
    -I "$DETECTED_SDK_INCLUDE/$DETECTED_SDK_VERSION/shared" \
    -o "$BUILD_DIR/resource.res" \
    "resource.rc"
```

**Why MinGW windres?**
- Only MinGW component we use (we don't link against MinGW libraries)
- LLVM's llvm-rc is not mature enough for complex resource scripts
- Produces standard COFF `.res` files compatible with any Windows linker

**Resource Caching**: Only recompiled if `resource.rc` is newer than `resource.res`.

#### 3. Shader Compilation

Shaders are compiled into embeddable C++ headers:

**Vulkan (SPIR-V Binary Embedding):**
```bash
glslc -fshader-stage=compute shaders/vk_raycast.comp -o build/vk_raycast.spv
xxd -i build/vk_raycast.spv > build/vk_raycast_spv.h
```

**DirectX (HLSL Source Embedding):**
```bash
# Embed HLSL source as raw string literal
# Compiled at runtime with D3DCompile API
cat shaders/d3d11_raycast.hlsl | embed_as_cpp > build/d3d11_raycast.h
```

**Why Different Approaches?**
- **Vulkan**: SPIR-V is platform-independent binary, compile once at build time
- **DirectX**: HLSL requires D3DCompiler at runtime (ships with Windows), embed source

**Shader Caching**: Regenerates headers only if source files change.

#### 4. Source File Scanning

The build system discovers all C++ source files and generates corresponding object file paths:

```bash
SOURCES=($(find src -name "*.cpp" | sort))
for src in "${SOURCES[@]}"; do
    obj_name="$(basename "${src%.cpp}").o"
    OBJECTS+=("$BUILD_DIR/$obj_name")
done
```

**Design Note**: Object files use flat naming (basename only) to avoid deep directory structures in the build folder.

#### 5. Compiler Flags Construction

The build system constructs sophisticated compiler flag arrays:

```bash
SYSTEM_INCLUDES=(
    "-imsvc$DETECTED_CRT_INCLUDE"
    "-imsvc$DETECTED_SDK_INCLUDE/$DETECTED_SDK_VERSION/ucrt"
    "-imsvc$DETECTED_SDK_INCLUDE/$DETECTED_SDK_VERSION/um"
    "-imsvc$DETECTED_SDK_INCLUDE/$DETECTED_SDK_VERSION/shared"
)

USER_INCLUDES=(
    "-I./include"
    "-I$BUILD_DIR"
    "-I/opt/windows-libs/zlib/include"
    "-I/opt/windows-libs/libpng/include"
    "-I/opt/windows-libs/ADLMIDI/include"
    "-I/opt/VulkanSDK/1.4.313.2/Include"
)

COMMON_FLAGS=(
    "--target=x86_64-pc-windows-msvc"
    "-fuse-ld=lld-link"
    "/std:c++latest"         # C++23 mode
    "/EHsc"                  # Exception handling
    "/MT"                    # Static CRT linkage
    "-fopenmp"               # OpenMP support
    "-msse4.2"               # SSE optimizations
    "-Wall" "-Wextra"        # Warning levels
    "-fms-compatibility"     # MSVC ABI compat
)
```

**MSVC Compatibility Flags:**
- `/std:c++latest`: Enables C++23 features
- `/MT`: Links static CRT (libcmt.lib) for standalone executables
- `-fms-compatibility-version=19.37`: Targets MSVC 19.37 (VS 2022) ABI
- `-fuse-ld=lld-link`: Uses LLVM's Windows-compatible linker

**Optimization Flags (Release):**
```bash
-O3                    # Aggressive optimization
-DNDEBUG               # Disable assertions
-fno-rtti              # No RTTI (smaller binary)
```

**Debug Flags:**
```bash
-O0                    # No optimization
-g -gcodeview          # CodeView debug info (for Visual Studio debuggers)
```

#### 6. Parallel Compilation

The `compile_batch()` function implements intelligent parallel compilation:

```bash
compile_batch() {
    local batch_sources=("$@")
    local pids=()
    
    for src in "${batch_sources[@]}"; do
        obj="$BUILD_DIR/$(basename "${src%.cpp}").o"
        
        # Skip if up-to-date
        if needs_compile "$src" "$obj"; then
            # Compile in background
            {
                clang-cl -c "$src" -o "$obj" "${CLANG_FLAGS[@]}" 2>"$temp_out"
            } &
            pids+=($!)
        else
            echo "  ≡ $(basename "$src") (cached)"
        fi
    done
    
    # Wait for batch completion
    for pid in "${pids[@]}"; do
        wait "$pid"
    done
}
```

**Dependency Detection (`needs_compile()`):**
1. Check if object file exists
2. Check if source is newer than object
3. Parse `.d` dependency file for header changes
4. Check for zero-byte objects (failed previous builds)

**Batch Processing:**
- Sources split into batches of size = CPU core count
- Each batch compiles in parallel
- Wait for batch completion before starting next batch
- Prevents system overload while maximizing throughput

**Output Filtering:**
- Suppresses noise from third-party libraries (nlohmann/json.hpp)
- Logs all warnings/errors to `build.log`
- Shows real-time compilation status with Unicode symbols: ✓ (success), ✗ (failure), ≡ (cached)

#### 7. Linking

The linking phase combines object files, libraries, and resources into the final executable:

```bash
LINKER_ARGS=(
    "/subsystem:windows"                    # GUI application
    "/defaultlib:libcmt"                    # Static MSVC CRT
    "/defaultlib:libucrt"                   # Static Universal CRT
    "/nodefaultlib:msvcrt.lib"              # Exclude dynamic CRT
    "/libpath:$ZLIB_DIR/lib"
    "/libpath:$LIBPNG_DIR/lib"
    "/libpath:$ADLMIDI_DIR/lib"
    "/libpath:$VULKAN_DIR/Lib"
    "/libpath:$DETECTED_SDK_LIB/um/$DETECTED_LIB_ARCH"
    "/libpath:$DETECTED_SDK_LIB/ucrt/$DETECTED_LIB_ARCH"
    "/libpath:$DETECTED_CRT_LIB/$DETECTED_LIB_ARCH"
    "zlib.lib"
    "libpng.lib"
    "ADLMIDI.lib"
    "vulkan-1.lib"
    "user32.lib"
    "gdi32.lib"
    "d2d1.lib"
    "d3d11.lib"
    "dxgi.lib"
    "d3dcompiler.lib"
    "winmm.lib"
    "ole32.lib"
)

clang-cl "${OBJECTS[@]}" "$RESOURCE_RES" -o "$OUTPUT_EXE" /link "${LINKER_ARGS[@]}"
```

**Static Linking Strategy:**
- All third-party libraries linked statically (zlib, libpng, ADLMIDI)
- MSVC CRT linked statically (`/MT` flag)
- Results in standalone executable with no DLL dependencies (except system DLLs)

**Link Order Matters:**
1. Object files first
2. Resource file
3. Static libraries (third-party)
4. System import libraries (Windows APIs)

**Debug vs Release Linking:**
- **Release**: `/opt:ref` (removes unreferenced functions)
- **Debug**: `/debug:full` (generates PDB symbols for debugging)

#### 8. Deployment

The final step copies the executable to the target directory:

```bash
mkdir -p /mnt/T7G
sudo cp v64tng.exe /mnt/T7G/
```

**Why `sudo`?** The deployment target (`/mnt/T7G`) is the mounted 7th Guest game directory, typically owned by root.

### Build Invocation

```bash
# Release build (optimized, no debug symbols)
./build.sh

# Debug build (no optimization, full debug info)
./build.sh debug

# Clean all build artifacts
./build.sh clean
```

**Typical Build Times** (on AMD Ryzen 9 5950X, 16 cores):
- **Full build**: ~3-5 seconds
- **Incremental (1 file changed)**: ~0.5 seconds
- **Clean rebuild**: ~4-6 seconds

## Third-Party Library Builder

The `build_windows_libs.sh` script is a sophisticated automated build system for compiling Windows static libraries from source using Clang cross-compilation. This eliminates the need for prebuilt binaries and ensures ABI compatibility with the main project.

### Architecture

The library builder uses **CMake toolchain files** to configure cross-compilation for each library. The approach is portable and works with any library that uses CMake as its build system.

**Design Goals:**
1. **Reproducible Builds**: Identical library binaries regardless of build machine
2. **Static Linking**: All libraries built as `.lib` files (no DLLs)
3. **MSVC ABI**: Full compatibility with Windows SDK and MSVC libraries
4. **Zero Manual Configuration**: Automatic SDK detection and path configuration
5. **Verification**: Built-in symbol checking to detect DLL import issues

### Toolchain File Generation

The `create_toolchain_file()` function generates a CMake toolchain that mirrors the main build system's compiler configuration:

```cmake
set(CMAKE_SYSTEM_NAME Windows)
set(CMAKE_SYSTEM_PROCESSOR AMD64)

set(CMAKE_C_COMPILER clang-cl)
set(CMAKE_CXX_COMPILER clang-cl)
set(CMAKE_C_COMPILER_TARGET x86_64-pc-windows-msvc)
set(CMAKE_CXX_COMPILER_TARGET x86_64-pc-windows-msvc)

set(CMAKE_AR llvm-lib)
set(CMAKE_C_ARCHIVE_CREATE "<CMAKE_AR> /OUT:<TARGET> <OBJECTS>")

set(CMAKE_C_FLAGS_INIT "-fuse-ld=lld-link [includes] /MT -fms-compatibility")
set(CMAKE_CXX_FLAGS_INIT "-fuse-ld=lld-link [includes] /MT -fms-compatibility")

set(CMAKE_MSVC_RUNTIME_LIBRARY "MultiThreaded")
set(CMAKE_EXE_LINKER_FLAGS_INIT "[windows libs] -DEFAULTLIB:libcmt.lib")
```

**Key Configurations:**
- `CMAKE_AR llvm-lib`: Uses LLVM's library archiver instead of Microsoft's `lib.exe`
- `/MT`: Static CRT linkage (essential for standalone libraries)
- `-fms-compatibility`: Enables MSVC-specific extensions and ABI rules
- Archive flags use Windows syntax (`/OUT:<TARGET>`) for proper library creation

### Library Build Processes

#### zlib 1.3.1

zlib is the foundation—needed for PNG support. The build is straightforward via CMake:

```bash
cmake .. \
    -DCMAKE_TOOLCHAIN_FILE=windows-cross.cmake \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_PREFIX="/opt/windows-libs/zlib" \
    -DBUILD_SHARED_LIBS=OFF \
    -DZLIB_WINAPI=OFF \
    -DCMAKE_C_FLAGS="-DZLIB_STATIC -D_CRT_DECLARE_NONSTDC_NAMES=0"

make zlibstatic -j$(nproc)
cp zlibstatic.lib /opt/windows-libs/zlib/lib/zlib.lib
```

**Critical Flags:**
- `-DZLIB_STATIC`: Prevents generation of `__declspec(dllimport)` symbols
- `-D_CRT_DECLARE_NONSTDC_NAMES=0`: Disables POSIX function aliases (fixes link errors)
- `zlibstatic` target: Builds only static library, skips shared library and examples

#### libpng 1.6.50 (Manual Compilation)

libpng requires special handling because its CMake build system has DLL import issues. The script uses **manual compilation** to ensure pure static library output:

```bash
# Use pre-built pnglibconf.h from Visual Studio projects
cp ../projects/vstudio/pnglibconf.h ./

# Compile each source file individually
for src in png.c pngerror.c pngget.c pngmem.c pngread.c pngwrite.c ...; do
    clang-cl --target=x86_64-pc-windows-msvc \
        -fuse-ld=lld-link \
        /MT \
        -DPNG_STATIC -DPNG_USE_DLL=0 -DPNG_NO_DLL=1 \
        -I. -I../. -I/opt/windows-libs/zlib/include \
        [SDK includes] \
        -c "$src" -o "${src%.c}.o"
done

# Archive into static library
llvm-lib /OUT:libpng_static.lib png.o pngerror.o pngget.o ...
```

**Why Manual Compilation?**
- CMake's FindPNG incorrectly generates `__declspec(dllimport)` even when building static
- Manual compilation gives complete control over preprocessor defines
- Ensures no DLL linkage symbols leak into the library

**Verification:**
```bash
# Check for DLL import symbols (should be ZERO)
llvm-objdump --syms libpng.lib | grep -i "dllimport\|__imp__"
# Exit code 1 = good (no matches)
```

**Key Defines:**
- `-DPNG_STATIC`: Core define for static linking
- `-DPNG_USE_DLL=0`, `-DPNG_NO_DLL=1`: Redundant guards to prevent DLL code paths
- Using pre-built `pnglibconf.h`: Avoids complex configure step, uses battle-tested VS config

#### libADLMIDI (Latest from Git)

ADLMIDI is cloned fresh from GitHub to get the latest OPL emulation improvements:

```bash
git clone https://github.com/Wohlstand/libADLMIDI.git

cmake .. \
    -DCMAKE_TOOLCHAIN_FILE=windows-cross.cmake \
    -DCMAKE_INSTALL_PREFIX="/opt/windows-libs/ADLMIDI" \
    -DlibADLMIDI_STATIC=ON \
    -DlibADLMIDI_SHARED=OFF \
    -DWITH_UNIT_TESTS=OFF \
    -DWITH_MIDIPLAY=OFF \
    -DCMAKE_BUILD_TYPE=Release

make ADLMIDI_static -j$(nproc)
```

**Configuration:**
- Disables shared library builds entirely
- Skips unit tests and example player (not needed)
- Builds only the core static library target

### Cross-Compilation Testing

The `test_cross_compilation()` function validates the toolchain before building libraries:

```bash
# Create test program
cat > test_cross.c << 'EOF'
#include <windows.h>
#include <stdio.h>

int main() {
    printf("Hello from Windows cross-compilation!\n");
    return 0;
}
EOF

# Compile and link
clang-cl --target=x86_64-pc-windows-msvc \
    -fuse-ld=lld-link \
    /MT \
    [includes] \
    test_cross.c -o test_cross.exe \
    /link [lib paths] \
    kernel32.lib user32.lib libucrt.lib libcmt.lib
```

**Success Criteria:**
- Produces valid Windows PE executable
- Links against static CRT (no MSVCRT.DLL dependency)
- Uses correct Windows subsystem

### Build Script Usage

```bash
# Setup Windows SDK (run once)
./build_windows_libs.sh setup

# Test cross-compilation toolchain
./build_windows_libs.sh test

# Build individual libraries
./build_windows_libs.sh zlib
./build_windows_libs.sh libpng
./build_windows_libs.sh adlmidi

# Build everything
./build_windows_libs.sh all
```

**Output Locations:**
```
/opt/windows-libs/
├── zlib/
│   ├── include/
│   │   ├── zlib.h
│   │   └── zconf.h
│   └── lib/
│       └── zlib.lib
├── libpng/
│   ├── include/
│   │   ├── png.h
│   │   ├── pngconf.h
│   │   └── pnglibconf.h
│   └── lib/
│       └── libpng.lib
└── ADLMIDI/
    ├── include/
    │   └── adlmidi.h
    └── lib/
        └── ADLMIDI.lib
```

### Vulkan SDK Installation

Vulkan SDK must be installed separately (not built from source):

```bash
# Download Vulkan SDK from LunarG
wget https://sdk.lunarg.com/sdk/download/1.4.313.2/linux/vulkansdk-linux-x86_64-1.4.313.2.tar.xz

# Extract to /opt
sudo tar -xf vulkansdk-linux-x86_64-1.4.313.2.tar.xz -C /opt
sudo mv /opt/1.4.313.2 /opt/VulkanSDK/1.4.313.2
```

**Required Components:**
- Headers: `Include/vulkan/vulkan.h`
- Import library: `Lib/vulkan-1.lib` (Windows version!)

## Quick Start Guide

This guide will get you from a fresh Linux system to a working build in under 10 minutes. Each step links to detailed documentation if you want to understand what's happening under the hood.

### Step 1: Install Prerequisites

```bash
# Install core toolchain (Arch Linux - adjust for your distro)
sudo pacman -S clang lld llvm mingw-w64-binutils cmake ninja git wget xxd vulkan-tools shaderc

# Install Rust toolchain for xwin
sudo pacman -S rust cargo
cargo install xwin
```

**What this does**: Installs the Clang/LLVM cross-compiler, build tools, and xwin for downloading the Windows SDK.  
**More info**: [Prerequisites](#prerequisites)

### Step 2: Download Windows SDK

```bash
# Install Windows SDK via xwin (~500 MB download)
sudo mkdir -p /opt/winsdk
sudo chown $USER:$USER /opt/winsdk
xwin --accept-license splat --output /opt/winsdk
```

**What this does**: Downloads official Microsoft Windows SDK headers and libraries needed for Windows API calls.  
**More info**: [Windows SDK Acquisition](#windows-sdk-acquisition)

### Step 3: Build Third-Party Libraries

```bash
# Clone the repository
git clone https://github.com/yourusername/v64tng.git
cd v64tng

# Build all required libraries (takes ~5 minutes)
./build_windows_libs.sh all
```

**What this does**: Compiles zlib, libpng, and libADLMIDI as Windows static libraries.  
**More info**: [Third-Party Library Builder](#third-party-library-builder)

### Step 4: Install Vulkan SDK

```bash
# Download and extract Vulkan SDK
wget https://sdk.lunarg.com/sdk/download/1.4.313.2/linux/vulkansdk-linux-x86_64-1.4.313.2.tar.xz
sudo tar -xf vulkansdk-linux-x86_64-1.4.313.2.tar.xz -C /opt
sudo mv /opt/1.4.313.2 /opt/VulkanSDK/1.4.313.2
```

**What this does**: Installs Vulkan headers and libraries for graphics API support.  
**More info**: [Vulkan SDK Installation](#vulkan-sdk-installation)

### Step 5: Build the Engine

```bash
# Build release version
./build.sh

# Or build debug version with symbols
./build.sh debug
```

**What this does**: Compiles all source files, links libraries, embeds shaders, and produces `v64tng.exe`.  
**Build time**: 3-5 seconds on modern hardware (incremental builds ~0.5s)  
**More info**: [Build Process Walkthrough](#build-process-walkthrough)

### Step 6: Deploy and Test

```bash
# Copy to your 7th Guest installation directory
# (Adjust path to your game installation)
sudo cp v64tng.exe /mnt/T7G/

# Test the executable
cd /mnt/T7G
./v64tng.exe !
```

**What this does**: Copies the executable to your game directory and launches it.

### Advanced Topics

For deeper understanding of the build system internals:

- **Detailed build process**: [Build Process Walkthrough](#build-process-walkthrough)
- **Library compilation details**: [Library Build Processes](#library-build-processes)
- **Compiler flag explanations**: [Compiler Flags Construction](#5-compiler-flags-construction)
- **Parallel compilation strategy**: [Parallel Compilation](#6-parallel-compilation)
- **SDK detection logic**: [Windows SDK Setup](#1-windows-sdk-setup)

### Build System Architecture

The build system demonstrates enterprise-grade practices:

- **Modularity**: Independent build phases (compilation, linking, shader processing)
- **Reproducibility**: Identical inputs produce identical outputs across machines
- **Scalability**: Efficiently handles hundreds of source files
- **Zero-Configuration**: Automatic detection and validation of all dependencies
- **Maintainability**: Clear separation of concerns with extensive inline documentation

These techniques mirror those used in AAA game studios and major software companies for maintaining rapid iteration on large codebases.