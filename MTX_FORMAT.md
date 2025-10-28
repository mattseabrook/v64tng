# MTX Format Specification

## Overview
`.mtx` is a custom compressed archive format for storing sparse monochrome alpha megatexture tiles. Optimized for tiles that are mostly transparent with thin opaque veins.

## File Extension
`.mtx` - MegaTexture eXtended

## Compression Strategy
- **Alpha-only RLE**: Stores run-length encoded alpha channel
- **Constant RGB**: Mortar color stored once in header (3 bytes total vs 3 bytes per pixel)
- **Sparse optimization**: Long runs of transparent pixels compress to 3 bytes each

## Binary Format

```
┌─────────────────────────────────────────────────────────┐
│ MTX Header (64 bytes)                                   │
├─────────────────────────────────────────────────────────┤
│ Offset  Size  Type      Description                     │
│ 0       4     char[4]   Magic: "MTX1"                   │
│ 4       4     uint32    Version: 1                      │
│ 8       4     uint32    Tile size: 1024                 │
│ 12      4     uint32    Tile count                      │
│ 16      3     uint8[3]  Mortar RGB (constant)           │
│ 19      4     uint32    Generation seed                 │
│ 23      41    uint8[]   Reserved (zeros)                │
├─────────────────────────────────────────────────────────┤
│ Tile Offset Table (tileCount × 8 bytes)                 │
├─────────────────────────────────────────────────────────┤
│ Offset  Size     Type     Description                   │
│ 64      8        uint64   Tile 0 file offset            │
│ 72      8        uint64   Tile 1 file offset            │
│ ...     ...      ...      ...                           │
│ 64+N×8  8        uint64   Tile N-1 file offset          │
├─────────────────────────────────────────────────────────┤
│ Tile Data (variable size per tile)                      │
├─────────────────────────────────────────────────────────┤
│ Per Tile:                                                │
│   4 bytes:  uint32 - compressed size (bytes)            │
│   N bytes:  RLE-compressed alpha stream                 │
└─────────────────────────────────────────────────────────┘
```

## RLE Encoding Format

Each tile's alpha channel is encoded as a sequence of RLE pairs:

```
RLE Pair (3 bytes):
  Byte 0:    uint8  - Alpha value (0-255)
  Byte 1-2:  uint16 - Run length (little-endian, 1-65535)
```

**Example**:
```
Alpha=0,   Run=10240  → Transparent run of 10,240 pixels
Alpha=128, Run=3      → Semi-transparent run of 3 pixels
Alpha=255, Run=1      → Fully opaque single pixel
```

## Decompression Algorithm

```cpp
for each RLE pair:
    read alpha (1 byte)
    read run_length (2 bytes, little-endian)
    for j = 0 to run_length-1:
        pixel[pos] = RGBA(mortarR, mortarG, mortarB, alpha)
        pos++
```

## Compression Ratios

Based on typical vein-texture tiles (2-5% coverage):

| Format           | Size per Tile | Compression |
|------------------|---------------|-------------|
| Raw RGBA         | 4,194,304 B   | 0% (baseline) |
| PNG (optimized)  | ~43,000 B     | 98.97% |
| MTX (RLE-alpha)  | ~15,000 B     | 99.64% |

**Overall**: ~280× smaller than raw RGBA for sparse tiles.

## CLI Usage

### Generate + Pack
```bash
v64tng.exe -megatexture
```
**Output**:
- `megatexture/` - Individual PNG tiles (debug)
- `megatexture.mtx` - Compressed archive

### Decode for Validation
```bash
v64tng.exe -decodemtx megatexture.mtx [output_dir]
```
**Output**:
- `megatexture_decoded/tile_00000.png` ... (bit-exact copies)

### Verify Bit-Exactness
```bash
# Windows PowerShell
fc.exe /b megatexture\tile_00000.png megatexture_decoded\tile_00000.png
```

## Runtime Loading (Future)

When statically linked into executable:
```cpp
// Embedded MTX data (linked via .rc or objcopy)
extern const uint8_t g_megatexture_mtx[];
extern const size_t g_megatexture_mtx_size;

// Load tile on-demand
std::vector<uint8_t> GetTile(int tileIdx) {
    // Parse header from g_megatexture_mtx
    // Seek to tile offset
    // Decompress RLE -> RGBA
    return tileRGBA;
}
```

## Format Version History

- **Version 1** (Current): Initial release
  - Alpha-only RLE
  - Constant RGB in header
  - uint16 run lengths
  - 1024×1024 tile size

## Notes

- **Endianness**: Little-endian (x86/x64)
- **Alignment**: Packed structs (`#pragma pack(push, 1)`)
- **Max tile size**: 1024×1024 (hardcoded in version 1)
- **Max tiles**: 4,294,967,295 (uint32 limit)
- **Max run length**: 65,535 pixels per RLE pair

## Why Not PNG?

1. **PNG overhead**: 43KB per tile includes DEFLATE, filters, CRC
2. **Monochrome optimization**: MTX stores RGB once (3 bytes total)
3. **Simple decoder**: RLE is trivial to implement, no zlib dependency
4. **Obfuscation**: Custom format discourages casual modding
5. **Streaming friendly**: Can decompress single tiles without full parse

## Future Enhancements

- **Delta encoding**: Store difference from previous alpha value
- **Bit-packing**: 4-bit alpha if gradient precision allows
- **Tile LOD**: Pre-downsampled mipmap levels
- **GPU formats**: BC4/BC5 compressed alpha
