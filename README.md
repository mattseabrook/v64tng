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

#### Notes

- Video sequences within a VDX file are intended to be played at 15 frames per second.

## LZSS

The VDX chunks can optionally be compressed by a common variant of the LZSS alogrithm. This is the case if and only if both of the values `lengthMask` and `lengthBits` are not equal to zero. Decompression will take place using a circular history buffer and a sliding window with the following parameters:

```
 bufferSize = 1 << (16 - lengthBits)
 windowSize = 1 << lengthBits
 threshold = 3
```

All references are relative to the current write position. Initially, writing starts at `bufferSize - windowSize`. The `lengthMask` value of the Chunk Header can be used to isolate the length portion of a buffer reference, though this information seems a bit redundant since the number of bits used (`lengthBits`) is also known.

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