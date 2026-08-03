# Retail GRV input loops and hotspots

Scene candidates are a static control-flow approximation of the most
recent video instructions which can reach each loop. Dynamic returns,
variable values, and parent/subscript state require runtime execution for
an exact result.
Dynamic resource-name interpolation is preserved symbolically.

## AT.GRV

Input loops: 6

### Loop `0x0080`–`0x00E1`

Nearest preceding video in file order: VIDEO_TRANSITION_REF@0x007D 0x0017 (AT[23]=atpb81.vdx)

Scene candidates: VIDEO_TRANSITION_REF@0x007D 0x0017 (AT[23]=atpb81.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0081` | `HOTSPOT_RECT` | left=0x00A7, top=0x014A, right=0x00C7, bottom=0x016C, target=0x0894, cursor=0x0A |
| `0x008D` | `HOTSPOT_RECT` | left=0x00CF, top=0x0146, right=0x00E7, bottom=0x017E, target=0x0921, cursor=0x09 |
| `0x0099` | `HOTSPOT_RECT` | left=0x00F6, top=0x014C, right=0x010D, bottom=0x0184, target=0x09AE, cursor=0x0A |
| `0x00A5` | `HOTSPOT_RECT` | left=0x011D, top=0x014E, right=0x0138, bottom=0x0188, target=0x0A3B, cursor=0x09 |
| `0x00B1` | `HOTSPOT_RECT` | left=0x0143, top=0x0153, right=0x0168, bottom=0x0186, target=0x0AC8, cursor=0x0A |
| `0x00BD` | `HOTSPOT_RECT` | left=0x016D, top=0x014F, right=0x0191, bottom=0x0183, target=0x0B40, cursor=0x09 |
| `0x00C9` | `HOTSPOT_RECT` | left=0x019B, top=0x0149, right=0x01B0, bottom=0x017E, target=0x0BAC, cursor=0x0A |
| `0x00D5` | `HOTSPOT_RECT` | left=0x01BA, top=0x014C, right=0x01D8, bottom=0x016B, target=0x0C00, cursor=0x09 |

### Loop `0x010F`–`0x0158`

Nearest preceding video in file order: VIDEO_TRANSITION_REF@0x010C 0x0016 (AT[22]=atpb61.vdx)

Scene candidates: VIDEO_TRANSITION_REF@0x010C 0x0016 (AT[22]=atpb61.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0110` | `HOTSPOT_RECT` | left=0x00B2, top=0x013B, right=0x00D0, bottom=0x0180, target=0x0894, cursor=0x0A |
| `0x011C` | `HOTSPOT_RECT` | left=0x00E0, top=0x013F, right=0x00FE, bottom=0x0187, target=0x0921, cursor=0x09 |
| `0x0128` | `HOTSPOT_RECT` | left=0x010C, top=0x0147, right=0x013C, bottom=0x0189, target=0x09AE, cursor=0x0A |
| `0x0134` | `HOTSPOT_RECT` | left=0x014D, top=0x0142, right=0x016D, bottom=0x018E, target=0x0A3B, cursor=0x09 |
| `0x0140` | `HOTSPOT_RECT` | left=0x0183, top=0x013E, right=0x01A1, bottom=0x0187, target=0x0AC8, cursor=0x0A |
| `0x014C` | `HOTSPOT_RECT` | left=0x01AB, top=0x013D, right=0x01D3, bottom=0x017A, target=0x0B40, cursor=0x09 |

### Loop `0x0196`–`0x01C7`

Nearest preceding video in file order: VIDEO_TRANSITION_REF@0x0193 0x0015 (AT[21]=atpb41.vdx)

Scene candidates: VIDEO_TRANSITION_REF@0x0193 0x0015 (AT[21]=atpb41.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0197` | `HOTSPOT_RECT` | left=0x00EE, top=0x0146, right=0x010D, bottom=0x0175, target=0x0894, cursor=0x0A |
| `0x01A3` | `HOTSPOT_RECT` | left=0x0115, top=0x014C, right=0x013A, bottom=0x0181, target=0x0921, cursor=0x09 |
| `0x01AF` | `HOTSPOT_RECT` | left=0x0145, top=0x0153, right=0x016B, bottom=0x0177, target=0x09AE, cursor=0x0A |
| `0x01BB` | `HOTSPOT_RECT` | left=0x0177, top=0x0143, right=0x0190, bottom=0x017A, target=0x0A3B, cursor=0x09 |

### Loop `0x01CE`–`0x0477`

Nearest preceding video in file order: VIDEO_TRANSITION_REF@0x0193 0x0015 (AT[21]=atpb41.vdx)

Scene candidates: VIDEO_TRANSITION_REF@0x007D 0x0017 (AT[23]=atpb81.vdx); VIDEO_TRANSITION_REF@0x010C 0x0016 (AT[22]=atpb61.vdx); VIDEO_TRANSITION_REF@0x0193 0x0015 (AT[21]=atpb41.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x01D4` | `HOTSPOT_RECT` | left=0x00A7, top=0x014A, right=0x00C7, bottom=0x016C, target=0x0894, cursor=0x09 |
| `0x01E5` | `HOTSPOT_RECT` | left=0x00CF, top=0x0146, right=0x00E7, bottom=0x017E, target=0x0921, cursor=0x0A |
| `0x01F6` | `HOTSPOT_RECT` | left=0x00F6, top=0x014C, right=0x010D, bottom=0x0184, target=0x09AE, cursor=0x09 |
| `0x0207` | `HOTSPOT_RECT` | left=0x011D, top=0x014E, right=0x0138, bottom=0x0188, target=0x0A3B, cursor=0x0A |
| `0x0218` | `HOTSPOT_RECT` | left=0x0143, top=0x0153, right=0x0168, bottom=0x0186, target=0x0AC8, cursor=0x09 |
| `0x0229` | `HOTSPOT_RECT` | left=0x016D, top=0x014F, right=0x0191, bottom=0x0183, target=0x0B40, cursor=0x0A |
| `0x023A` | `HOTSPOT_RECT` | left=0x019B, top=0x0149, right=0x01B0, bottom=0x017E, target=0x0BAC, cursor=0x09 |
| `0x024B` | `HOTSPOT_RECT` | left=0x01BA, top=0x014C, right=0x01D8, bottom=0x016B, target=0x0C00, cursor=0x0A |
| `0x025C` | `HOTSPOT_RECT` | left=0x00A9, top=0x0110, right=0x00C6, bottom=0x013D, target=0x0C54, cursor=0x09 |
| `0x026D` | `HOTSPOT_RECT` | left=0x00CE, top=0x010D, right=0x00E8, bottom=0x0144, target=0x0CE1, cursor=0x0A |
| `0x027E` | `HOTSPOT_RECT` | left=0x00F4, top=0x010F, right=0x010E, bottom=0x0149, target=0x0D6E, cursor=0x09 |
| `0x028F` | `HOTSPOT_RECT` | left=0x011D, top=0x0110, right=0x0139, bottom=0x014C, target=0x0DFB, cursor=0x0A |
| `0x02A0` | `HOTSPOT_RECT` | left=0x014A, top=0x0112, right=0x0164, bottom=0x014C, target=0x0E88, cursor=0x09 |
| `0x02B1` | `HOTSPOT_RECT` | left=0x016E, top=0x0119, right=0x0191, bottom=0x013A, target=0x0F00, cursor=0x0A |
| `0x02C2` | `HOTSPOT_RECT` | left=0x0196, top=0x0118, right=0x01B5, bottom=0x0136, target=0x0F78, cursor=0x09 |
| `0x02D3` | `HOTSPOT_RECT` | left=0x01BA, top=0x0110, right=0x01D8, bottom=0x013B, target=0x0FCC, cursor=0x0A |
| `0x02E4` | `HOTSPOT_RECT` | left=0x00A9, top=0x00DE, right=0x00C7, bottom=0x00FD, target=0x1020, cursor=0x09 |
| `0x02F5` | `HOTSPOT_RECT` | left=0x00CB, top=0x00D8, right=0x00EB, bottom=0x0106, target=0x10B6, cursor=0x0A |
| `0x0306` | `HOTSPOT_RECT` | left=0x00F0, top=0x00DE, right=0x0112, bottom=0x00FC, target=0x114C, cursor=0x09 |
| `0x0317` | `HOTSPOT_RECT` | left=0x011E, top=0x00D4, right=0x0136, bottom=0x010C, target=0x11D3, cursor=0x0A |
| `0x0328` | `HOTSPOT_RECT` | left=0x0149, top=0x00D2, right=0x0164, bottom=0x010D, target=0x1269, cursor=0x09 |
| `0x0339` | `HOTSPOT_RECT` | left=0x0172, top=0x00D4, right=0x018D, bottom=0x010B, target=0x12E1, cursor=0x0A |
| `0x034A` | `HOTSPOT_RECT` | left=0x0196, top=0x00D8, right=0x01B5, bottom=0x0106, target=0x1359, cursor=0x09 |
| `0x035B` | `HOTSPOT_RECT` | left=0x01BD, top=0x00D5, right=0x01D4, bottom=0x010A, target=0x13AD, cursor=0x0A |
| `0x036C` | `HOTSPOT_RECT` | left=0x00AF, top=0x00A0, right=0x00C2, bottom=0x00D3, target=0x1401, cursor=0x09 |
| `0x037D` | `HOTSPOT_RECT` | left=0x00CB, top=0x00A5, right=0x00EA, bottom=0x00C3, target=0x1482, cursor=0x0A |
| `0x038E` | `HOTSPOT_RECT` | left=0x00F0, top=0x009D, right=0x0112, bottom=0x00CB, target=0x14F7, cursor=0x09 |
| `0x039F` | `HOTSPOT_RECT` | left=0x0117, top=0x0097, right=0x013C, bottom=0x00CA, target=0x1578, cursor=0x0A |
| `0x03B0` | `HOTSPOT_RECT` | left=0x0143, top=0x009E, right=0x016A, bottom=0x00C1, target=0x15F9, cursor=0x09 |
| `0x03C1` | `HOTSPOT_RECT` | left=0x0174, top=0x0099, right=0x018B, bottom=0x00D0, target=0x167A, cursor=0x0A |
| `0x03D2` | `HOTSPOT_RECT` | left=0x0196, top=0x009E, right=0x01B5, bottom=0x00CD, target=0x16FB, cursor=0x09 |
| `0x03E3` | `HOTSPOT_RECT` | left=0x01BE, top=0x00A0, right=0x01D4, bottom=0x00D3, target=0x174F, cursor=0x0A |
| `0x03F4` | `HOTSPOT_RECT` | left=0x00AE, top=0x006B, right=0x00C2, bottom=0x009B, target=0x17A3, cursor=0x09 |
| `0x0405` | `HOTSPOT_RECT` | left=0x00CB, top=0x0067, right=0x00EB, bottom=0x0092, target=0x17F7, cursor=0x0A |
| `0x0416` | `HOTSPOT_RECT` | left=0x00F5, top=0x0061, right=0x010D, bottom=0x0094, target=0x184B, cursor=0x09 |
| `0x0427` | `HOTSPOT_RECT` | left=0x011F, top=0x0057, right=0x0137, bottom=0x0090, target=0x189F, cursor=0x0A |
| `0x0438` | `HOTSPOT_RECT` | left=0x014B, top=0x0058, right=0x0164, bottom=0x0092, target=0x18F3, cursor=0x09 |
| `0x0449` | `HOTSPOT_RECT` | left=0x0173, top=0x005F, right=0x018D, bottom=0x0095, target=0x1947, cursor=0x0A |
| `0x045A` | `HOTSPOT_RECT` | left=0x019A, top=0x0064, right=0x01B2, bottom=0x009A, target=0x199B, cursor=0x09 |
| `0x046B` | `HOTSPOT_RECT` | left=0x01BA, top=0x006A, right=0x01D7, bottom=0x0096, target=0x19EF, cursor=0x0A |

### Loop `0x0481`–`0x061A`

Nearest preceding video in file order: VIDEO_TRANSITION_REF@0x0193 0x0015 (AT[21]=atpb41.vdx)

Scene candidates: VIDEO_TRANSITION_REF@0x007D 0x0017 (AT[23]=atpb81.vdx); VIDEO_TRANSITION_REF@0x010C 0x0016 (AT[22]=atpb61.vdx); VIDEO_TRANSITION_REF@0x0193 0x0015 (AT[21]=atpb41.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0487` | `HOTSPOT_RECT` | left=0x00B2, top=0x013B, right=0x00D0, bottom=0x0180, target=0x0894, cursor=0x09 |
| `0x0498` | `HOTSPOT_RECT` | left=0x00E0, top=0x013F, right=0x00FE, bottom=0x0187, target=0x0921, cursor=0x0A |
| `0x04A9` | `HOTSPOT_RECT` | left=0x010C, top=0x0147, right=0x013C, bottom=0x0189, target=0x09AE, cursor=0x09 |
| `0x04BA` | `HOTSPOT_RECT` | left=0x014D, top=0x0142, right=0x016D, bottom=0x018E, target=0x0A3B, cursor=0x0A |
| `0x04CB` | `HOTSPOT_RECT` | left=0x0183, top=0x013E, right=0x01A1, bottom=0x0187, target=0x0AC8, cursor=0x09 |
| `0x04DC` | `HOTSPOT_RECT` | left=0x01AB, top=0x013D, right=0x01D3, bottom=0x017A, target=0x0B40, cursor=0x0A |
| `0x04ED` | `HOTSPOT_RECT` | left=0x00AD, top=0x00F5, right=0x00D5, bottom=0x0132, target=0x0C54, cursor=0x09 |
| `0x04FE` | `HOTSPOT_RECT` | left=0x00E0, top=0x00F1, right=0x0100, bottom=0x013A, target=0x0CE1, cursor=0x0A |
| `0x050F` | `HOTSPOT_RECT` | left=0x0113, top=0x00F1, right=0x0135, bottom=0x013E, target=0x0D6E, cursor=0x09 |
| `0x0520` | `HOTSPOT_RECT` | left=0x0145, top=0x0100, right=0x0174, bottom=0x012B, target=0x0DFB, cursor=0x0A |
| `0x0531` | `HOTSPOT_RECT` | left=0x017B, top=0x00F6, right=0x01A5, bottom=0x0134, target=0x0E88, cursor=0x09 |
| `0x0542` | `HOTSPOT_RECT` | left=0x01AC, top=0x00F6, right=0x01D3, bottom=0x0130, target=0x0F00, cursor=0x0A |
| `0x0553` | `HOTSPOT_RECT` | left=0x00AE, top=0x00B6, right=0x00D4, bottom=0x00DC, target=0x1020, cursor=0x09 |
| `0x0564` | `HOTSPOT_RECT` | left=0x00DA, top=0x00AA, right=0x0105, bottom=0x00E8, target=0x10B6, cursor=0x0A |
| `0x0575` | `HOTSPOT_RECT` | left=0x010D, top=0x00AF, right=0x013C, bottom=0x00DC, target=0x114C, cursor=0x09 |
| `0x0586` | `HOTSPOT_RECT` | left=0x014D, top=0x00A3, right=0x016D, bottom=0x00EE, target=0x11D3, cursor=0x0A |
| `0x0597` | `HOTSPOT_RECT` | left=0x017A, top=0x00AA, right=0x01A6, bottom=0x00E8, target=0x1269, cursor=0x09 |
| `0x05A8` | `HOTSPOT_RECT` | left=0x01B2, top=0x00AC, right=0x01CD, bottom=0x00ED, target=0x12E1, cursor=0x0A |
| `0x05B9` | `HOTSPOT_RECT` | left=0x00B2, top=0x0069, right=0x00CF, bottom=0x00A5, target=0x1401, cursor=0x09 |
| `0x05CA` | `HOTSPOT_RECT` | left=0x00DB, top=0x0067, right=0x0106, bottom=0x008F, target=0x1482, cursor=0x0A |
| `0x05DB` | `HOTSPOT_RECT` | left=0x0115, top=0x005A, right=0x0134, bottom=0x009C, target=0x14F7, cursor=0x09 |
| `0x05EC` | `HOTSPOT_RECT` | left=0x014B, top=0x0056, right=0x016F, bottom=0x009E, target=0x1578, cursor=0x0A |
| `0x05FD` | `HOTSPOT_RECT` | left=0x017C, top=0x005F, right=0x01A5, bottom=0x009C, target=0x15F9, cursor=0x09 |
| `0x060E` | `HOTSPOT_RECT` | left=0x01B1, top=0x0065, right=0x01CF, bottom=0x00A7, target=0x167A, cursor=0x0A |

### Loop `0x0624`–`0x06F1`

Nearest preceding video in file order: VIDEO_TRANSITION_REF@0x0193 0x0015 (AT[21]=atpb41.vdx)

Scene candidates: VIDEO_TRANSITION_REF@0x007D 0x0017 (AT[23]=atpb81.vdx); VIDEO_TRANSITION_REF@0x010C 0x0016 (AT[22]=atpb61.vdx); VIDEO_TRANSITION_REF@0x0193 0x0015 (AT[21]=atpb41.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x062A` | `HOTSPOT_RECT` | left=0x00EE, top=0x0146, right=0x010D, bottom=0x0175, target=0x0894, cursor=0x09 |
| `0x063B` | `HOTSPOT_RECT` | left=0x0115, top=0x014C, right=0x013A, bottom=0x0181, target=0x0921, cursor=0x0A |
| `0x064C` | `HOTSPOT_RECT` | left=0x0145, top=0x0153, right=0x016B, bottom=0x0177, target=0x09AE, cursor=0x09 |
| `0x065D` | `HOTSPOT_RECT` | left=0x0177, top=0x0143, right=0x0190, bottom=0x017A, target=0x0A3B, cursor=0x0A |
| `0x066E` | `HOTSPOT_RECT` | left=0x00F3, top=0x0102, right=0x010A, bottom=0x013D, target=0x0C54, cursor=0x09 |
| `0x067F` | `HOTSPOT_RECT` | left=0x0114, top=0x010D, right=0x013E, bottom=0x0136, target=0x0CE1, cursor=0x0A |
| `0x0690` | `HOTSPOT_RECT` | left=0x0142, top=0x0106, right=0x016D, bottom=0x013D, target=0x0D6E, cursor=0x09 |
| `0x06A1` | `HOTSPOT_RECT` | left=0x0176, top=0x0101, right=0x0192, bottom=0x013D, target=0x0DFB, cursor=0x0A |
| `0x06B2` | `HOTSPOT_RECT` | left=0x00EE, top=0x00CB, right=0x010D, bottom=0x00F6, target=0x1020, cursor=0x09 |
| `0x06C3` | `HOTSPOT_RECT` | left=0x0116, top=0x00CB, right=0x013C, bottom=0x00EE, target=0x10B6, cursor=0x0A |
| `0x06D4` | `HOTSPOT_RECT` | left=0x0145, top=0x00CB, right=0x016B, bottom=0x00F0, target=0x114C, cursor=0x09 |
| `0x06E5` | `HOTSPOT_RECT` | left=0x0173, top=0x00CD, right=0x0193, bottom=0x00F5, target=0x11D3, cursor=0x0A |

## B.GRV

Input loops: 1

### Loop `0x0325`–`0x04CF`

Nearest preceding video in file order: VIDEOREF@0x00A0 0x505A (GAMWAV[90]=16_e_1.vdx)

Scene candidates: VIDEOREF@0x0041 0x040E (B[14]=b_pf.vdx); VIDEOREF@0x006C 0x5060 (GAMWAV[96]=16_s_2.vdx); VIDEOREF@0x0086 0x505B (GAMWAV[91]=16_e_2.vdx); VIDEOREF@0x00A0 0x505A (GAMWAV[90]=16_e_1.vdx); VIDEO_NAME@0x05E2 "{grid:0,1}{v019}b"; VIDEO_NAME@0x0605 "{grid:0,2}{v019}b"; VIDEO_NAME@0x0628 "{grid:0,3}{v019}b"; VIDEO_NAME@0x064B "{grid:0,4}{v019}b"; VIDEO_NAME@0x066E "{grid:0,5}{v019}b"; VIDEO_NAME@0x0691 "{grid:0,6}{v019}b"; VIDEO_NAME@0x06B4 "{grid:0,7}{v019}b"; VIDEO_NAME@0x06D7 "{grid:0,8}{v019}b"; VIDEO_NAME@0x06FA "{grid:0,9}{v019}b"; VIDEO_NAME@0x071D "{grid:1,0}{v019}b"; VIDEO_NAME@0x0740 "{grid:1,1}{v019}b"; VIDEO_NAME@0x0763 "{grid:1,2}{v019}b"; VIDEO_NAME@0x0786 "{grid:1,3}{v019}b"; VIDEO_NAME@0x07A9 "{grid:1,4}{v019}b"; VIDEO_NAME@0x07CC "{grid:1,5}{v019}b"; VIDEO_NAME@0x07EF "{grid:1,6}{v019}b"; VIDEO_NAME@0x0812 "{grid:1,7}{v019}b"; VIDEO_NAME@0x0835 "{grid:1,8}{v019}b"; VIDEO_NAME@0x0858 "{grid:1,9}{v019}b"; VIDEO_NAME@0x087B "{grid:2,0}{v019}b"; VIDEO_NAME@0x089E "{grid:2,1}{v019}b"; VIDEO_NAME@0x08C1 "{grid:2,2}{v019}b"; VIDEO_NAME@0x08E4 "{grid:2,3}{v019}b"; VIDEO_NAME@0x0907 "{grid:2,4}{v019}b"; VIDEO_NAME@0x092A "{grid:2,5}{v019}b"

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x032B` | `HOTSPOT_RECT` | left=0x00AA, top=0x0129, right=0x00DD, bottom=0x0162, target=0x05D7, cursor=0x09 |
| `0x033C` | `HOTSPOT_RECT` | left=0x00EA, top=0x0129, right=0x0125, bottom=0x0163, target=0x05FA, cursor=0x0A |
| `0x034D` | `HOTSPOT_RECT` | left=0x012A, top=0x0129, right=0x0166, bottom=0x0162, target=0x061D, cursor=0x09 |
| `0x035E` | `HOTSPOT_RECT` | left=0x016E, top=0x012A, right=0x01A6, bottom=0x0163, target=0x0640, cursor=0x0A |
| `0x036F` | `HOTSPOT_RECT` | left=0x01B3, top=0x012A, right=0x01EC, bottom=0x0162, target=0x0663, cursor=0x09 |
| `0x0380` | `HOTSPOT_RECT` | left=0x00AF, top=0x00F8, right=0x00E8, bottom=0x0126, target=0x0686, cursor=0x09 |
| `0x0391` | `HOTSPOT_RECT` | left=0x00F3, top=0x00F8, right=0x0125, bottom=0x0126, target=0x06A9, cursor=0x0A |
| `0x03A2` | `HOTSPOT_RECT` | left=0x012C, top=0x00F8, right=0x0163, bottom=0x0126, target=0x06CC, cursor=0x09 |
| `0x03B3` | `HOTSPOT_RECT` | left=0x0169, top=0x00F7, right=0x019C, bottom=0x0126, target=0x06EF, cursor=0x09 |
| `0x03C4` | `HOTSPOT_RECT` | left=0x01A7, top=0x00F8, right=0x01DA, bottom=0x0127, target=0x0712, cursor=0x0A |
| `0x03D5` | `HOTSPOT_RECT` | left=0x00C3, top=0x00CE, right=0x00F0, bottom=0x00F5, target=0x0735, cursor=0x09 |
| `0x03E6` | `HOTSPOT_RECT` | left=0x00FA, top=0x00CE, right=0x0129, bottom=0x00F5, target=0x0758, cursor=0x09 |
| `0x03F7` | `HOTSPOT_RECT` | left=0x012E, top=0x00CD, right=0x0160, bottom=0x00F4, target=0x077B, cursor=0x0A |
| `0x0408` | `HOTSPOT_RECT` | left=0x0165, top=0x00CD, right=0x0196, bottom=0x00F6, target=0x079E, cursor=0x09 |
| `0x0419` | `HOTSPOT_RECT` | left=0x019E, top=0x00CD, right=0x01CE, bottom=0x00F5, target=0x07C1, cursor=0x09 |
| `0x042A` | `HOTSPOT_RECT` | left=0x00CE, top=0x00AB, right=0x00F7, bottom=0x00CC, target=0x07E4, cursor=0x0A |
| `0x043B` | `HOTSPOT_RECT` | left=0x00FF, top=0x00AB, right=0x0129, bottom=0x00CC, target=0x0807, cursor=0x09 |
| `0x044C` | `HOTSPOT_RECT` | left=0x0131, top=0x00AC, right=0x015D, bottom=0x00CC, target=0x082A, cursor=0x09 |
| `0x045D` | `HOTSPOT_RECT` | left=0x0162, top=0x00AA, right=0x018E, bottom=0x00CB, target=0x084D, cursor=0x0A |
| `0x046E` | `HOTSPOT_RECT` | left=0x0195, top=0x00AA, right=0x01BF, bottom=0x00CB, target=0x0870, cursor=0x09 |
| `0x047F` | `HOTSPOT_RECT` | left=0x00D6, top=0x008D, right=0x00FE, bottom=0x00AA, target=0x0893, cursor=0x09 |
| `0x0490` | `HOTSPOT_RECT` | left=0x0105, top=0x008D, right=0x012C, bottom=0x00A8, target=0x08B6, cursor=0x0A |
| `0x04A1` | `HOTSPOT_RECT` | left=0x0132, top=0x008E, right=0x015B, bottom=0x00A9, target=0x08D9, cursor=0x09 |
| `0x04B2` | `HOTSPOT_RECT` | left=0x015F, top=0x008D, right=0x018A, bottom=0x00A9, target=0x08FC, cursor=0x0A |
| `0x04C3` | `HOTSPOT_RECT` | left=0x018E, top=0x008D, right=0x01B9, bottom=0x00AA, target=0x091F, cursor=0x09 |

## CH.GRV

Input loops: 29

### Loop `0x0168`–`0x017A`

Nearest preceding video in file order: VIDEOREF@0x0141 0x503D (GAMWAV[61]=9_e_2.vdx)

Scene candidates: VIDEOREF@0x00F0 0x084D (CH[77]=chpuz30_.vdx); VIDEOREF@0x010D 0x503C (GAMWAV[60]=9_e_1.vdx); VIDEOREF@0x0127 0x501D (GAMWAV[29]=6_e_3.vdx); VIDEOREF@0x0141 0x503D (GAMWAV[61]=9_e_2.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x016E` | `HOTSPOT_RECT` | left=0x00C4, top=0x0071, right=0x00F4, bottom=0x008E, target=0x0AFE, cursor=0x09 |

### Loop `0x0192`–`0x01D7`

Nearest preceding video in file order: VIDEOREF@0x0141 0x503D (GAMWAV[61]=9_e_2.vdx)

Scene candidates: VIDEOREF@0x00F0 0x084D (CH[77]=chpuz30_.vdx); VIDEOREF@0x010D 0x503C (GAMWAV[60]=9_e_1.vdx); VIDEOREF@0x0127 0x501D (GAMWAV[29]=6_e_3.vdx); VIDEOREF@0x0141 0x503D (GAMWAV[61]=9_e_2.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0198` | `HOTSPOT_RECT` | left=0x0094, top=0x0064, right=0x00C3, bottom=0x007F, target=0x0AE3, cursor=0x09 |
| `0x01A9` | `HOTSPOT_RECT` | left=0x00F8, top=0x0062, right=0x0128, bottom=0x007F, target=0x0B19, cursor=0x09 |
| `0x01BA` | `HOTSPOT_RECT` | left=0x00BE, top=0x008F, right=0x00F0, bottom=0x00AF, target=0x0B9E, cursor=0x09 |
| `0x01CB` | `HOTSPOT_RECT` | left=0x00F5, top=0x007F, right=0x0128, bottom=0x009E, target=0x0BB9, cursor=0x09 |

### Loop `0x01EF`–`0x0223`

Nearest preceding video in file order: VIDEOREF@0x0141 0x503D (GAMWAV[61]=9_e_2.vdx)

Scene candidates: VIDEOREF@0x00F0 0x084D (CH[77]=chpuz30_.vdx); VIDEOREF@0x010D 0x503C (GAMWAV[60]=9_e_1.vdx); VIDEOREF@0x0127 0x501D (GAMWAV[29]=6_e_3.vdx); VIDEOREF@0x0141 0x503D (GAMWAV[61]=9_e_2.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x01F5` | `HOTSPOT_RECT` | left=0x00C4, top=0x0071, right=0x00F4, bottom=0x008E, target=0x0AFE, cursor=0x09 |
| `0x0206` | `HOTSPOT_RECT` | left=0x012A, top=0x0070, right=0x015B, bottom=0x008F, target=0x0B34, cursor=0x09 |
| `0x0217` | `HOTSPOT_RECT` | left=0x00F5, top=0x007F, right=0x0128, bottom=0x009E, target=0x0BB9, cursor=0x09 |

### Loop `0x023B`–`0x0280`

Nearest preceding video in file order: VIDEOREF@0x0141 0x503D (GAMWAV[61]=9_e_2.vdx)

Scene candidates: VIDEOREF@0x00F0 0x084D (CH[77]=chpuz30_.vdx); VIDEOREF@0x010D 0x503C (GAMWAV[60]=9_e_1.vdx); VIDEOREF@0x0127 0x501D (GAMWAV[29]=6_e_3.vdx); VIDEOREF@0x0141 0x503D (GAMWAV[61]=9_e_2.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0241` | `HOTSPOT_RECT` | left=0x00F8, top=0x0062, right=0x0128, bottom=0x007F, target=0x0B19, cursor=0x09 |
| `0x0252` | `HOTSPOT_RECT` | left=0x015C, top=0x0064, right=0x018E, bottom=0x007F, target=0x0B4F, cursor=0x09 |
| `0x0263` | `HOTSPOT_RECT` | left=0x00F5, top=0x007F, right=0x0128, bottom=0x009E, target=0x0BB9, cursor=0x09 |
| `0x0274` | `HOTSPOT_RECT` | left=0x015D, top=0x007F, right=0x0191, bottom=0x009F, target=0x0BD4, cursor=0x09 |

### Loop `0x0298`–`0x02CC`

Nearest preceding video in file order: VIDEOREF@0x0141 0x503D (GAMWAV[61]=9_e_2.vdx)

Scene candidates: VIDEOREF@0x00F0 0x084D (CH[77]=chpuz30_.vdx); VIDEOREF@0x010D 0x503C (GAMWAV[60]=9_e_1.vdx); VIDEOREF@0x0127 0x501D (GAMWAV[29]=6_e_3.vdx); VIDEOREF@0x0141 0x503D (GAMWAV[61]=9_e_2.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x029E` | `HOTSPOT_RECT` | left=0x012A, top=0x0070, right=0x015B, bottom=0x008F, target=0x0B34, cursor=0x09 |
| `0x02AF` | `HOTSPOT_RECT` | left=0x018F, top=0x0070, right=0x01C2, bottom=0x008E, target=0x0B6A, cursor=0x09 |
| `0x02C0` | `HOTSPOT_RECT` | left=0x015D, top=0x007F, right=0x0191, bottom=0x009F, target=0x0BD4, cursor=0x09 |

### Loop `0x02E4`–`0x0329`

Nearest preceding video in file order: VIDEOREF@0x0141 0x503D (GAMWAV[61]=9_e_2.vdx)

Scene candidates: VIDEOREF@0x00F0 0x084D (CH[77]=chpuz30_.vdx); VIDEOREF@0x010D 0x503C (GAMWAV[60]=9_e_1.vdx); VIDEOREF@0x0127 0x501D (GAMWAV[29]=6_e_3.vdx); VIDEOREF@0x0141 0x503D (GAMWAV[61]=9_e_2.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x02EA` | `HOTSPOT_RECT` | left=0x015C, top=0x0064, right=0x018E, bottom=0x007F, target=0x0B4F, cursor=0x09 |
| `0x02FB` | `HOTSPOT_RECT` | left=0x01BF, top=0x0064, right=0x01F4, bottom=0x0081, target=0x0B85, cursor=0x09 |
| `0x030C` | `HOTSPOT_RECT` | left=0x015D, top=0x007F, right=0x0191, bottom=0x009F, target=0x0BD4, cursor=0x09 |
| `0x031D` | `HOTSPOT_RECT` | left=0x0193, top=0x008F, right=0x01CA, bottom=0x00B0, target=0x0BEF, cursor=0x09 |

### Loop `0x0352`–`0x0397`

Nearest preceding video in file order: VIDEOREF@0x0141 0x503D (GAMWAV[61]=9_e_2.vdx)

Scene candidates: VIDEOREF@0x00F0 0x084D (CH[77]=chpuz30_.vdx); VIDEOREF@0x010D 0x503C (GAMWAV[60]=9_e_1.vdx); VIDEOREF@0x0127 0x501D (GAMWAV[29]=6_e_3.vdx); VIDEOREF@0x0141 0x503D (GAMWAV[61]=9_e_2.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0358` | `HOTSPOT_RECT` | left=0x00C4, top=0x0071, right=0x00F4, bottom=0x008E, target=0x0AFE, cursor=0x09 |
| `0x0369` | `HOTSPOT_RECT` | left=0x00F5, top=0x007F, right=0x0128, bottom=0x009E, target=0x0BB9, cursor=0x09 |
| `0x037A` | `HOTSPOT_RECT` | left=0x0084, top=0x009F, right=0x00B6, bottom=0x00C3, target=0x0C0A, cursor=0x09 |
| `0x038B` | `HOTSPOT_RECT` | left=0x00B7, top=0x00B1, right=0x00EC, bottom=0x00D5, target=0x0C40, cursor=0x09 |

### Loop `0x03AF`–`0x03F4`

Nearest preceding video in file order: VIDEOREF@0x0141 0x503D (GAMWAV[61]=9_e_2.vdx)

Scene candidates: VIDEOREF@0x00F0 0x084D (CH[77]=chpuz30_.vdx); VIDEOREF@0x010D 0x503C (GAMWAV[60]=9_e_1.vdx); VIDEOREF@0x0127 0x501D (GAMWAV[29]=6_e_3.vdx); VIDEOREF@0x0141 0x503D (GAMWAV[61]=9_e_2.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x03B5` | `HOTSPOT_RECT` | left=0x00C4, top=0x0071, right=0x00F4, bottom=0x008E, target=0x0AFE, cursor=0x09 |
| `0x03C6` | `HOTSPOT_RECT` | left=0x00F8, top=0x0062, right=0x0128, bottom=0x007F, target=0x0B19, cursor=0x09 |
| `0x03D7` | `HOTSPOT_RECT` | left=0x012A, top=0x0070, right=0x015B, bottom=0x008F, target=0x0B34, cursor=0x09 |
| `0x03E8` | `HOTSPOT_RECT` | left=0x00BE, top=0x008F, right=0x00F0, bottom=0x00AF, target=0x0B9E, cursor=0x09 |

### Loop `0x040C`–`0x0451`

Nearest preceding video in file order: VIDEOREF@0x0141 0x503D (GAMWAV[61]=9_e_2.vdx)

Scene candidates: VIDEOREF@0x00F0 0x084D (CH[77]=chpuz30_.vdx); VIDEOREF@0x010D 0x503C (GAMWAV[60]=9_e_1.vdx); VIDEOREF@0x0127 0x501D (GAMWAV[29]=6_e_3.vdx); VIDEOREF@0x0141 0x503D (GAMWAV[61]=9_e_2.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0412` | `HOTSPOT_RECT` | left=0x012A, top=0x0070, right=0x015B, bottom=0x008F, target=0x0B34, cursor=0x09 |
| `0x0423` | `HOTSPOT_RECT` | left=0x015C, top=0x0064, right=0x018E, bottom=0x007F, target=0x0B4F, cursor=0x09 |
| `0x0434` | `HOTSPOT_RECT` | left=0x018F, top=0x0070, right=0x01C2, bottom=0x008E, target=0x0B6A, cursor=0x09 |
| `0x0445` | `HOTSPOT_RECT` | left=0x0193, top=0x008F, right=0x01CA, bottom=0x00B0, target=0x0BEF, cursor=0x09 |

### Loop `0x0469`–`0x04AE`

Nearest preceding video in file order: VIDEOREF@0x0141 0x503D (GAMWAV[61]=9_e_2.vdx)

Scene candidates: VIDEOREF@0x00F0 0x084D (CH[77]=chpuz30_.vdx); VIDEOREF@0x010D 0x503C (GAMWAV[60]=9_e_1.vdx); VIDEOREF@0x0127 0x501D (GAMWAV[29]=6_e_3.vdx); VIDEOREF@0x0141 0x503D (GAMWAV[61]=9_e_2.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x046F` | `HOTSPOT_RECT` | left=0x018F, top=0x0070, right=0x01C2, bottom=0x008E, target=0x0B6A, cursor=0x09 |
| `0x0480` | `HOTSPOT_RECT` | left=0x015D, top=0x007F, right=0x0191, bottom=0x009F, target=0x0BD4, cursor=0x09 |
| `0x0491` | `HOTSPOT_RECT` | left=0x01CB, top=0x00A0, right=0x0204, bottom=0x00C2, target=0x0C25, cursor=0x09 |
| `0x04A2` | `HOTSPOT_RECT` | left=0x0196, top=0x00B0, right=0x01D1, bottom=0x00D4, target=0x0C5B, cursor=0x09 |

### Loop `0x04C6`–`0x04E9`

Nearest preceding video in file order: VIDEOREF@0x0141 0x503D (GAMWAV[61]=9_e_2.vdx)

Scene candidates: VIDEOREF@0x00F0 0x084D (CH[77]=chpuz30_.vdx); VIDEOREF@0x010D 0x503C (GAMWAV[60]=9_e_1.vdx); VIDEOREF@0x0127 0x501D (GAMWAV[29]=6_e_3.vdx); VIDEOREF@0x0141 0x503D (GAMWAV[61]=9_e_2.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x04CC` | `HOTSPOT_RECT` | left=0x00BE, top=0x008F, right=0x00F0, bottom=0x00AF, target=0x0B9E, cursor=0x09 |
| `0x04DD` | `HOTSPOT_RECT` | left=0x00B7, top=0x00B1, right=0x00EC, bottom=0x00D5, target=0x0C40, cursor=0x09 |

### Loop `0x0501`–`0x0524`

Nearest preceding video in file order: VIDEOREF@0x0141 0x503D (GAMWAV[61]=9_e_2.vdx)

Scene candidates: VIDEOREF@0x00F0 0x084D (CH[77]=chpuz30_.vdx); VIDEOREF@0x010D 0x503C (GAMWAV[60]=9_e_1.vdx); VIDEOREF@0x0127 0x501D (GAMWAV[29]=6_e_3.vdx); VIDEOREF@0x0141 0x503D (GAMWAV[61]=9_e_2.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0507` | `HOTSPOT_RECT` | left=0x0193, top=0x008F, right=0x01CA, bottom=0x00B0, target=0x0BEF, cursor=0x09 |
| `0x0518` | `HOTSPOT_RECT` | left=0x0196, top=0x00B0, right=0x01D1, bottom=0x00D4, target=0x0C5B, cursor=0x09 |

### Loop `0x053C`–`0x0570`

Nearest preceding video in file order: VIDEOREF@0x0141 0x503D (GAMWAV[61]=9_e_2.vdx)

Scene candidates: VIDEOREF@0x00F0 0x084D (CH[77]=chpuz30_.vdx); VIDEOREF@0x010D 0x503C (GAMWAV[60]=9_e_1.vdx); VIDEOREF@0x0127 0x501D (GAMWAV[29]=6_e_3.vdx); VIDEOREF@0x0141 0x503D (GAMWAV[61]=9_e_2.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0542` | `HOTSPOT_RECT` | left=0x00BE, top=0x008F, right=0x00F0, bottom=0x00AF, target=0x0B9E, cursor=0x09 |
| `0x0553` | `HOTSPOT_RECT` | left=0x0084, top=0x009F, right=0x00B6, bottom=0x00C3, target=0x0C0A, cursor=0x09 |
| `0x0564` | `HOTSPOT_RECT` | left=0x00AF, top=0x00D5, right=0x00E7, bottom=0x00FC, target=0x0C76, cursor=0x09 |

### Loop `0x0588`–`0x05BC`

Nearest preceding video in file order: VIDEOREF@0x0141 0x503D (GAMWAV[61]=9_e_2.vdx)

Scene candidates: VIDEOREF@0x00F0 0x084D (CH[77]=chpuz30_.vdx); VIDEOREF@0x010D 0x503C (GAMWAV[60]=9_e_1.vdx); VIDEOREF@0x0127 0x501D (GAMWAV[29]=6_e_3.vdx); VIDEOREF@0x0141 0x503D (GAMWAV[61]=9_e_2.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x058E` | `HOTSPOT_RECT` | left=0x0193, top=0x008F, right=0x01CA, bottom=0x00B0, target=0x0BEF, cursor=0x09 |
| `0x059F` | `HOTSPOT_RECT` | left=0x01CB, top=0x00A0, right=0x0204, bottom=0x00C2, target=0x0C25, cursor=0x09 |
| `0x05B0` | `HOTSPOT_RECT` | left=0x019B, top=0x00D6, right=0x01D8, bottom=0x00FD, target=0x0C91, cursor=0x09 |

### Loop `0x05D4`–`0x0619`

Nearest preceding video in file order: VIDEOREF@0x0141 0x503D (GAMWAV[61]=9_e_2.vdx)

Scene candidates: VIDEOREF@0x00F0 0x084D (CH[77]=chpuz30_.vdx); VIDEOREF@0x010D 0x503C (GAMWAV[60]=9_e_1.vdx); VIDEOREF@0x0127 0x501D (GAMWAV[29]=6_e_3.vdx); VIDEOREF@0x0141 0x503D (GAMWAV[61]=9_e_2.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x05DA` | `HOTSPOT_RECT` | left=0x00B7, top=0x00B1, right=0x00EC, bottom=0x00D5, target=0x0C40, cursor=0x09 |
| `0x05EB` | `HOTSPOT_RECT` | left=0x006F, top=0x00E9, right=0x00A4, bottom=0x0113, target=0x0CAC, cursor=0x09 |
| `0x05FC` | `HOTSPOT_RECT` | left=0x00A8, top=0x00FF, right=0x00E1, bottom=0x012B, target=0x0CC7, cursor=0x09 |
| `0x060D` | `HOTSPOT_RECT` | left=0x00E9, top=0x00E9, right=0x0123, bottom=0x0113, target=0x0CE2, cursor=0x09 |

### Loop `0x0631`–`0x0676`

Nearest preceding video in file order: VIDEOREF@0x0141 0x503D (GAMWAV[61]=9_e_2.vdx)

Scene candidates: VIDEOREF@0x00F0 0x084D (CH[77]=chpuz30_.vdx); VIDEOREF@0x010D 0x503C (GAMWAV[60]=9_e_1.vdx); VIDEOREF@0x0127 0x501D (GAMWAV[29]=6_e_3.vdx); VIDEOREF@0x0141 0x503D (GAMWAV[61]=9_e_2.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0637` | `HOTSPOT_RECT` | left=0x0196, top=0x00B0, right=0x01D1, bottom=0x00D4, target=0x0C5B, cursor=0x09 |
| `0x0648` | `HOTSPOT_RECT` | left=0x0162, top=0x00E9, right=0x019E, bottom=0x0114, target=0x0D18, cursor=0x09 |
| `0x0659` | `HOTSPOT_RECT` | left=0x01A2, top=0x00FE, right=0x01E2, bottom=0x012B, target=0x0D33, cursor=0x09 |
| `0x066A` | `HOTSPOT_RECT` | left=0x01DB, top=0x00E9, right=0x021A, bottom=0x0113, target=0x0D4E, cursor=0x09 |

### Loop `0x068E`–`0x06B1`

Nearest preceding video in file order: VIDEOREF@0x0141 0x503D (GAMWAV[61]=9_e_2.vdx)

Scene candidates: VIDEOREF@0x00F0 0x084D (CH[77]=chpuz30_.vdx); VIDEOREF@0x010D 0x503C (GAMWAV[60]=9_e_1.vdx); VIDEOREF@0x0127 0x501D (GAMWAV[29]=6_e_3.vdx); VIDEOREF@0x0141 0x503D (GAMWAV[61]=9_e_2.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0694` | `HOTSPOT_RECT` | left=0x00AF, top=0x00D5, right=0x00E7, bottom=0x00FC, target=0x0C76, cursor=0x09 |
| `0x06A5` | `HOTSPOT_RECT` | left=0x00A8, top=0x00FF, right=0x00E1, bottom=0x012B, target=0x0CC7, cursor=0x09 |

### Loop `0x06C9`–`0x071F`

Nearest preceding video in file order: VIDEOREF@0x0141 0x503D (GAMWAV[61]=9_e_2.vdx)

Scene candidates: VIDEOREF@0x00F0 0x084D (CH[77]=chpuz30_.vdx); VIDEOREF@0x010D 0x503C (GAMWAV[60]=9_e_1.vdx); VIDEOREF@0x0127 0x501D (GAMWAV[29]=6_e_3.vdx); VIDEOREF@0x0141 0x503D (GAMWAV[61]=9_e_2.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x06CF` | `HOTSPOT_RECT` | left=0x00AF, top=0x00D5, right=0x00E7, bottom=0x00FC, target=0x0C76, cursor=0x09 |
| `0x06E0` | `HOTSPOT_RECT` | left=0x006F, top=0x00E9, right=0x00A4, bottom=0x0113, target=0x0CAC, cursor=0x09 |
| `0x06F1` | `HOTSPOT_RECT` | left=0x00E9, top=0x00E9, right=0x0123, bottom=0x0113, target=0x0CE2, cursor=0x09 |
| `0x0702` | `HOTSPOT_RECT` | left=0x009E, top=0x012D, right=0x00DB, bottom=0x015C, target=0x0D69, cursor=0x09 |
| `0x0713` | `HOTSPOT_RECT` | left=0x0061, top=0x0114, right=0x0120, bottom=0x0143, target=0x0D84, cursor=0x09 |

### Loop `0x0737`–`0x077C`

Nearest preceding video in file order: VIDEOREF@0x0141 0x503D (GAMWAV[61]=9_e_2.vdx)

Scene candidates: VIDEOREF@0x00F0 0x084D (CH[77]=chpuz30_.vdx); VIDEOREF@0x010D 0x503C (GAMWAV[60]=9_e_1.vdx); VIDEOREF@0x0127 0x501D (GAMWAV[29]=6_e_3.vdx); VIDEOREF@0x0141 0x503D (GAMWAV[61]=9_e_2.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x073D` | `HOTSPOT_RECT` | left=0x00AF, top=0x00D5, right=0x00E7, bottom=0x00FC, target=0x0C76, cursor=0x09 |
| `0x074E` | `HOTSPOT_RECT` | left=0x00A8, top=0x00FF, right=0x00E1, bottom=0x012B, target=0x0CC7, cursor=0x09 |
| `0x075F` | `HOTSPOT_RECT` | left=0x0124, top=0x00FE, right=0x0160, bottom=0x012B, target=0x0CFD, cursor=0x09 |
| `0x0770` | `HOTSPOT_RECT` | left=0x0061, top=0x0114, right=0x0120, bottom=0x0143, target=0x0D84, cursor=0x09 |

### Loop `0x0794`–`0x07EA`

Nearest preceding video in file order: VIDEOREF@0x0141 0x503D (GAMWAV[61]=9_e_2.vdx)

Scene candidates: VIDEOREF@0x00F0 0x084D (CH[77]=chpuz30_.vdx); VIDEOREF@0x010D 0x503C (GAMWAV[60]=9_e_1.vdx); VIDEOREF@0x0127 0x501D (GAMWAV[29]=6_e_3.vdx); VIDEOREF@0x0141 0x503D (GAMWAV[61]=9_e_2.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x079A` | `HOTSPOT_RECT` | left=0x00E9, top=0x00E9, right=0x0123, bottom=0x0113, target=0x0CE2, cursor=0x09 |
| `0x07AB` | `HOTSPOT_RECT` | left=0x0162, top=0x00E9, right=0x019E, bottom=0x0114, target=0x0D18, cursor=0x09 |
| `0x07BC` | `HOTSPOT_RECT` | left=0x0061, top=0x0114, right=0x0120, bottom=0x0143, target=0x0D84, cursor=0x09 |
| `0x07CD` | `HOTSPOT_RECT` | left=0x0123, top=0x012D, right=0x0164, bottom=0x015E, target=0x0D9F, cursor=0x09 |
| `0x07DE` | `HOTSPOT_RECT` | left=0x0165, top=0x0114, right=0x01A6, bottom=0x0146, target=0x0DBA, cursor=0x09 |

### Loop `0x0802`–`0x0847`

Nearest preceding video in file order: VIDEOREF@0x0141 0x503D (GAMWAV[61]=9_e_2.vdx)

Scene candidates: VIDEOREF@0x00F0 0x084D (CH[77]=chpuz30_.vdx); VIDEOREF@0x010D 0x503C (GAMWAV[60]=9_e_1.vdx); VIDEOREF@0x0127 0x501D (GAMWAV[29]=6_e_3.vdx); VIDEOREF@0x0141 0x503D (GAMWAV[61]=9_e_2.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0808` | `HOTSPOT_RECT` | left=0x019B, top=0x00D6, right=0x01D8, bottom=0x00FD, target=0x0C91, cursor=0x09 |
| `0x0819` | `HOTSPOT_RECT` | left=0x0124, top=0x00FE, right=0x0160, bottom=0x012B, target=0x0CFD, cursor=0x09 |
| `0x082A` | `HOTSPOT_RECT` | left=0x01A2, top=0x00FE, right=0x01E2, bottom=0x012B, target=0x0D33, cursor=0x09 |
| `0x083B` | `HOTSPOT_RECT` | left=0x0165, top=0x0114, right=0x01A6, bottom=0x0146, target=0x0DBA, cursor=0x09 |

### Loop `0x085F`–`0x08B5`

Nearest preceding video in file order: VIDEOREF@0x0141 0x503D (GAMWAV[61]=9_e_2.vdx)

Scene candidates: VIDEOREF@0x00F0 0x084D (CH[77]=chpuz30_.vdx); VIDEOREF@0x010D 0x503C (GAMWAV[60]=9_e_1.vdx); VIDEOREF@0x0127 0x501D (GAMWAV[29]=6_e_3.vdx); VIDEOREF@0x0141 0x503D (GAMWAV[61]=9_e_2.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0865` | `HOTSPOT_RECT` | left=0x019B, top=0x00D6, right=0x01D8, bottom=0x00FD, target=0x0C91, cursor=0x09 |
| `0x0876` | `HOTSPOT_RECT` | left=0x0162, top=0x00E9, right=0x019E, bottom=0x0114, target=0x0D18, cursor=0x09 |
| `0x0887` | `HOTSPOT_RECT` | left=0x01DB, top=0x00E9, right=0x021A, bottom=0x0113, target=0x0D4E, cursor=0x09 |
| `0x0898` | `HOTSPOT_RECT` | left=0x0165, top=0x0114, right=0x01A6, bottom=0x0146, target=0x0DBA, cursor=0x09 |
| `0x08A9` | `HOTSPOT_RECT` | left=0x01A6, top=0x012C, right=0x01E9, bottom=0x015E, target=0x0DD5, cursor=0x09 |

### Loop `0x08CD`–`0x08F0`

Nearest preceding video in file order: VIDEOREF@0x0141 0x503D (GAMWAV[61]=9_e_2.vdx)

Scene candidates: VIDEOREF@0x00F0 0x084D (CH[77]=chpuz30_.vdx); VIDEOREF@0x010D 0x503C (GAMWAV[60]=9_e_1.vdx); VIDEOREF@0x0127 0x501D (GAMWAV[29]=6_e_3.vdx); VIDEOREF@0x0141 0x503D (GAMWAV[61]=9_e_2.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x08D3` | `HOTSPOT_RECT` | left=0x019B, top=0x00D6, right=0x01D8, bottom=0x00FD, target=0x0C91, cursor=0x09 |
| `0x08E4` | `HOTSPOT_RECT` | left=0x01A2, top=0x00FE, right=0x01E2, bottom=0x012B, target=0x0D33, cursor=0x09 |

### Loop `0x0908`–`0x093C`

Nearest preceding video in file order: VIDEOREF@0x0141 0x503D (GAMWAV[61]=9_e_2.vdx)

Scene candidates: VIDEOREF@0x00F0 0x084D (CH[77]=chpuz30_.vdx); VIDEOREF@0x010D 0x503C (GAMWAV[60]=9_e_1.vdx); VIDEOREF@0x0127 0x501D (GAMWAV[29]=6_e_3.vdx); VIDEOREF@0x0141 0x503D (GAMWAV[61]=9_e_2.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x090E` | `HOTSPOT_RECT` | left=0x00A8, top=0x00FF, right=0x00E1, bottom=0x012B, target=0x0CC7, cursor=0x09 |
| `0x091F` | `HOTSPOT_RECT` | left=0x0061, top=0x0114, right=0x0120, bottom=0x0143, target=0x0D84, cursor=0x09 |
| `0x0930` | `HOTSPOT_RECT` | left=0x0055, top=0x0144, right=0x0095, bottom=0x017C, target=0x0DF0, cursor=0x09 |

### Loop `0x0954`–`0x09AA`

Nearest preceding video in file order: VIDEOREF@0x0141 0x503D (GAMWAV[61]=9_e_2.vdx)

Scene candidates: VIDEOREF@0x00F0 0x084D (CH[77]=chpuz30_.vdx); VIDEOREF@0x010D 0x503C (GAMWAV[60]=9_e_1.vdx); VIDEOREF@0x0127 0x501D (GAMWAV[29]=6_e_3.vdx); VIDEOREF@0x0141 0x503D (GAMWAV[61]=9_e_2.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x095A` | `HOTSPOT_RECT` | left=0x00A8, top=0x00FF, right=0x00E1, bottom=0x012B, target=0x0CC7, cursor=0x09 |
| `0x096B` | `HOTSPOT_RECT` | left=0x00E9, top=0x00E9, right=0x0123, bottom=0x0113, target=0x0CE2, cursor=0x09 |
| `0x097C` | `HOTSPOT_RECT` | left=0x0124, top=0x00FE, right=0x0160, bottom=0x012B, target=0x0CFD, cursor=0x09 |
| `0x098D` | `HOTSPOT_RECT` | left=0x009E, top=0x012D, right=0x00DB, bottom=0x015C, target=0x0D69, cursor=0x09 |
| `0x099E` | `HOTSPOT_RECT` | left=0x0123, top=0x012D, right=0x0164, bottom=0x015E, target=0x0D9F, cursor=0x09 |

### Loop `0x09C2`–`0x09F6`

Nearest preceding video in file order: VIDEOREF@0x0141 0x503D (GAMWAV[61]=9_e_2.vdx)

Scene candidates: VIDEOREF@0x00F0 0x084D (CH[77]=chpuz30_.vdx); VIDEOREF@0x010D 0x503C (GAMWAV[60]=9_e_1.vdx); VIDEOREF@0x0127 0x501D (GAMWAV[29]=6_e_3.vdx); VIDEOREF@0x0141 0x503D (GAMWAV[61]=9_e_2.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x09C8` | `HOTSPOT_RECT` | left=0x0124, top=0x00FE, right=0x0160, bottom=0x012B, target=0x0CFD, cursor=0x09 |
| `0x09D9` | `HOTSPOT_RECT` | left=0x0061, top=0x0114, right=0x0120, bottom=0x0143, target=0x0D84, cursor=0x09 |
| `0x09EA` | `HOTSPOT_RECT` | left=0x0165, top=0x0114, right=0x01A6, bottom=0x0146, target=0x0DBA, cursor=0x09 |

### Loop `0x0A0E`–`0x0A64`

Nearest preceding video in file order: VIDEOREF@0x0141 0x503D (GAMWAV[61]=9_e_2.vdx)

Scene candidates: VIDEOREF@0x00F0 0x084D (CH[77]=chpuz30_.vdx); VIDEOREF@0x010D 0x503C (GAMWAV[60]=9_e_1.vdx); VIDEOREF@0x0127 0x501D (GAMWAV[29]=6_e_3.vdx); VIDEOREF@0x0141 0x503D (GAMWAV[61]=9_e_2.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0A14` | `HOTSPOT_RECT` | left=0x0124, top=0x00FE, right=0x0160, bottom=0x012B, target=0x0CFD, cursor=0x09 |
| `0x0A25` | `HOTSPOT_RECT` | left=0x0162, top=0x00E9, right=0x019E, bottom=0x0114, target=0x0D18, cursor=0x09 |
| `0x0A36` | `HOTSPOT_RECT` | left=0x01A2, top=0x00FE, right=0x01E2, bottom=0x012B, target=0x0D33, cursor=0x09 |
| `0x0A47` | `HOTSPOT_RECT` | left=0x0123, top=0x012D, right=0x0164, bottom=0x015E, target=0x0D9F, cursor=0x09 |
| `0x0A58` | `HOTSPOT_RECT` | left=0x01A6, top=0x012C, right=0x01E9, bottom=0x015E, target=0x0DD5, cursor=0x09 |

### Loop `0x0A7C`–`0x0AB0`

Nearest preceding video in file order: VIDEOREF@0x0141 0x503D (GAMWAV[61]=9_e_2.vdx)

Scene candidates: VIDEOREF@0x00F0 0x084D (CH[77]=chpuz30_.vdx); VIDEOREF@0x010D 0x503C (GAMWAV[60]=9_e_1.vdx); VIDEOREF@0x0127 0x501D (GAMWAV[29]=6_e_3.vdx); VIDEOREF@0x0141 0x503D (GAMWAV[61]=9_e_2.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0A82` | `HOTSPOT_RECT` | left=0x01A2, top=0x00FE, right=0x01E2, bottom=0x012B, target=0x0D33, cursor=0x09 |
| `0x0A93` | `HOTSPOT_RECT` | left=0x0165, top=0x0114, right=0x01A6, bottom=0x0146, target=0x0DBA, cursor=0x09 |
| `0x0AA4` | `HOTSPOT_RECT` | left=0x01EF, top=0x0148, right=0x023A, bottom=0x017A, target=0x0E0B, cursor=0x09 |

### Loop `0x0AC8`–`0x0ADA`

Nearest preceding video in file order: VIDEOREF@0x0141 0x503D (GAMWAV[61]=9_e_2.vdx)

Scene candidates: VIDEOREF@0x00F0 0x084D (CH[77]=chpuz30_.vdx); VIDEOREF@0x010D 0x503C (GAMWAV[60]=9_e_1.vdx); VIDEOREF@0x0127 0x501D (GAMWAV[29]=6_e_3.vdx); VIDEOREF@0x0141 0x503D (GAMWAV[61]=9_e_2.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0ACE` | `HOTSPOT_RECT` | left=0x009E, top=0x012D, right=0x00DB, bottom=0x015C, target=0x0D69, cursor=0x09 |

## CR.GRV

Input loops: 1

### Loop `0x0159`–`0x01C6`

Nearest preceding video in file order: VIDEOREF@0x0145 0x502C (GAMWAV[44]=8_e_6.vdx)

Scene candidates: VIDEOREF@0x002B 0x502D (GAMWAV[45]=8_s_1.vdx); VIDEOREF@0x00D5 0x502F (GAMWAV[47]=8_s_3.vdx); VIDEOREF@0x00EF 0x502E (GAMWAV[46]=8_s_2.vdx); VIDEOREF@0x010D 0x502A (GAMWAV[42]=8_e_4.vdx); VIDEOREF@0x0127 0x502B (GAMWAV[43]=8_e_5.vdx); VIDEOREF@0x0145 0x502C (GAMWAV[44]=8_e_6.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x015A` | `HOTSPOT_RECT` | left=0x00FD, top=0x00B2, right=0x0129, bottom=0x00D4, target=0x01E3, cursor=0x09 |
| `0x0166` | `HOTSPOT_RECT` | left=0x0145, top=0x00B0, right=0x017B, bottom=0x00CB, target=0x01F3, cursor=0x09 |
| `0x0172` | `HOTSPOT_RECT` | left=0x0188, top=0x00AC, right=0x01C9, bottom=0x00C5, target=0x0200, cursor=0x09 |
| `0x017E` | `HOTSPOT_RECT` | left=0x00FF, top=0x00DD, right=0x0136, bottom=0x010F, target=0x0210, cursor=0x09 |
| `0x018A` | `HOTSPOT_RECT` | left=0x015B, top=0x00D6, right=0x01A8, bottom=0x0106, target=0x021D, cursor=0x09 |
| `0x0196` | `HOTSPOT_RECT` | left=0x01AF, top=0x00D0, right=0x0211, bottom=0x00FC, target=0x0230, cursor=0x09 |
| `0x01A2` | `HOTSPOT_RECT` | left=0x00FE, top=0x0129, right=0x0150, bottom=0x018F, target=0x023D, cursor=0x09 |
| `0x01AE` | `HOTSPOT_RECT` | left=0x017F, top=0x011C, right=0x01FD, bottom=0x0188, target=0x024D, cursor=0x09 |
| `0x01BA` | `HOTSPOT_RECT` | left=0x01F3, top=0x0111, right=0x027F, bottom=0x0161, target=0x025A, cursor=0x09 |

## D.GRV

Input loops: 1

### Loop `0x0082`–`0x0113`

Nearest preceding video in file order: VIDEOREF@0x003C 0x5031 (GAMWAV[49]=8_s_5.vdx)

Scene candidates: VIDEOREF@0x0022 0x509B (GAMWAV[155]=gen_s_4.vdx); VIDEOREF@0x002F 0x50AA (GAMWAV[170]=gen_s_19.vdx); VIDEOREF@0x003C 0x5031 (GAMWAV[49]=8_s_5.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0083` | `HOTSPOT_RECT` | left=0x00D2, top=0x0050, right=0x00F1, bottom=0x006F, target=0x012F, cursor=0x09 |
| `0x008F` | `HOTSPOT_RECT` | left=0x0130, top=0x0050, right=0x0151, bottom=0x006F, target=0x0135, cursor=0x0A |
| `0x009B` | `HOTSPOT_RECT` | left=0x018B, top=0x0050, right=0x01B0, bottom=0x006F, target=0x013B, cursor=0x09 |
| `0x00A7` | `HOTSPOT_RECT` | left=0x0094, top=0x006E, right=0x00BA, bottom=0x0092, target=0x0141, cursor=0x0A |
| `0x00B3` | `HOTSPOT_RECT` | left=0x01C1, top=0x006E, right=0x01F2, bottom=0x0092, target=0x0147, cursor=0x09 |
| `0x00BF` | `HOTSPOT_RECT` | left=0x0073, top=0x00B3, right=0x00A4, bottom=0x00DC, target=0x014D, cursor=0x0A |
| `0x00CB` | `HOTSPOT_RECT` | left=0x01DB, top=0x00B1, right=0x0211, bottom=0x00DC, target=0x0153, cursor=0x09 |
| `0x00D7` | `HOTSPOT_RECT` | left=0x0048, top=0x011A, right=0x007E, bottom=0x014A, target=0x0159, cursor=0x0A |
| `0x00E3` | `HOTSPOT_RECT` | left=0x0205, top=0x011C, right=0x023D, bottom=0x014A, target=0x015F, cursor=0x09 |
| `0x00EF` | `HOTSPOT_RECT` | left=0x0085, top=0x0165, right=0x00B2, bottom=0x0190, target=0x0165, cursor=0x0A |
| `0x00FB` | `HOTSPOT_RECT` | left=0x0128, top=0x0165, right=0x0159, bottom=0x0190, target=0x016B, cursor=0x09 |
| `0x0107` | `HOTSPOT_RECT` | left=0x01CB, top=0x0166, right=0x01FD, bottom=0x0190, target=0x0171, cursor=0x0A |

## DEMO.GRV

Input loops: 0

## DR.GRV

Input loops: 1

### Loop `0x00DD`–`0x0372`

Nearest preceding video in file order: VIDEOREF@0x009B 0x500A (GAMWAV[10]=3_e_2.vdx)

Scene candidates: VIDEOREF@0x0019 0x500D (GAMWAV[13]=3_s_2.vdx); VIDEOREF@0x0028 0x500C (GAMWAV[12]=3_s_1.vdx); VIDEOREF@0x0077 0x100C (DR[12]=dr2.vdx); VIDEOREF@0x0089 0x5091 (GAMWAV[145]=gen_e_11.vdx); VIDEOREF@0x009B 0x500A (GAMWAV[10]=3_e_2.vdx); VIDEOREF@0x038E 0x1003 (DR[3]=dr00df.vdx); VIDEOREF@0x039D 0x1002 (DR[2]=dr00db.vdx); VIDEOREF@0x03AF 0x1006 (DR[6]=dr01df.vdx); VIDEOREF@0x03BE 0x1005 (DR[5]=dr01db.vdx); VIDEOREF@0x03D0 0x100A (DR[10]=dr02df.vdx); VIDEOREF@0x03DF 0x1009 (DR[9]=dr02db.vdx); VIDEOREF@0x03F1 0x100F (DR[15]=dr03df.vdx); VIDEOREF@0x0400 0x100E (DR[14]=dr03db.vdx); VIDEOREF@0x0412 0x1012 (DR[18]=dr04df.vdx); VIDEOREF@0x0421 0x1011 (DR[17]=dr04db.vdx); VIDEOREF@0x0433 0x1015 (DR[21]=dr05df.vdx); VIDEOREF@0x0442 0x1014 (DR[20]=dr05db.vdx); VIDEOREF@0x0454 0x1018 (DR[24]=dr06df.vdx); VIDEOREF@0x0463 0x1017 (DR[23]=dr06db.vdx); VIDEOREF@0x0475 0x101B (DR[27]=dr07df.vdx); VIDEOREF@0x0484 0x101A (DR[26]=dr07db.vdx); VIDEOREF@0x0496 0x101E (DR[30]=dr08df.vdx); VIDEOREF@0x04A5 0x101D (DR[29]=dr08db.vdx); VIDEOREF@0x04B7 0x1021 (DR[33]=dr09df.vdx); VIDEOREF@0x04C6 0x1020 (DR[32]=dr09db.vdx); VIDEOREF@0x04D8 0x1024 (DR[36]=dr10df.vdx); VIDEOREF@0x04E7 0x1023 (DR[35]=dr10db.vdx); VIDEOREF@0x04F9 0x1027 (DR[39]=dr11df.vdx); VIDEOREF@0x0508 0x1026 (DR[38]=dr11db.vdx); VIDEOREF@0x051A 0x102A (DR[42]=dr12df.vdx); VIDEOREF@0x0529 0x1029 (DR[41]=dr12db.vdx); VIDEOREF@0x053B 0x102D (DR[45]=dr13df.vdx); VIDEOREF@0x054A 0x102C (DR[44]=dr13db.vdx); VIDEOREF@0x055C 0x1030 (DR[48]=dr14df.vdx); VIDEOREF@0x056B 0x102F (DR[47]=dr14db.vdx); VIDEOREF@0x057D 0x1033 (DR[51]=dr15df.vdx); VIDEOREF@0x058C 0x1032 (DR[50]=dr15db.vdx); VIDEOREF@0x059E 0x1036 (DR[54]=dr16df.vdx); VIDEOREF@0x05AD 0x1035 (DR[53]=dr16db.vdx); VIDEOREF@0x05BF 0x1039 (DR[57]=dr17df.vdx); VIDEOREF@0x05CE 0x1038 (DR[56]=dr17db.vdx); VIDEOREF@0x05E0 0x103C (DR[60]=dr18df.vdx); VIDEOREF@0x05EF 0x103B (DR[59]=dr18db.vdx); VIDEOREF@0x0601 0x103F (DR[63]=dr19df.vdx); VIDEOREF@0x0610 0x103E (DR[62]=dr19db.vdx); VIDEOREF@0x0622 0x1042 (DR[66]=dr20df.vdx); VIDEOREF@0x0631 0x1041 (DR[65]=dr20db.vdx); VIDEOREF@0x0643 0x1045 (DR[69]=dr21df.vdx); VIDEOREF@0x0652 0x1044 (DR[68]=dr21db.vdx); VIDEOREF@0x0664 0x1048 (DR[72]=dr22df.vdx); VIDEOREF@0x0673 0x1047 (DR[71]=dr22db.vdx); VIDEOREF@0x0685 0x104B (DR[75]=dr23df.vdx); VIDEOREF@0x0694 0x104A (DR[74]=dr23db.vdx); VIDEOREF@0x06A6 0x104E (DR[78]=dr24df.vdx); VIDEOREF@0x06B5 0x104D (DR[77]=dr24db.vdx); VIDEOREF@0x06C7 0x1051 (DR[81]=dr25df.vdx); VIDEOREF@0x06D6 0x1050 (DR[80]=dr25db.vdx); VIDEOREF@0x06E8 0x1054 (DR[84]=dr26df.vdx); VIDEOREF@0x06F7 0x1053 (DR[83]=dr26db.vdx); VIDEOREF@0x0709 0x1057 (DR[87]=dr27df.vdx); VIDEOREF@0x0718 0x1056 (DR[86]=dr27db.vdx); VIDEOREF@0x072A 0x105A (DR[90]=dr28df.vdx); VIDEOREF@0x0739 0x1059 (DR[89]=dr28db.vdx); VIDEOREF@0x074B 0x105D (DR[93]=dr29df.vdx); VIDEOREF@0x075A 0x105C (DR[92]=dr29db.vdx); VIDEOREF@0x1066 0x1001 (DR[1]=dr00cf.vdx); VIDEOREF@0x1074 0x1004 (DR[4]=dr01cf.vdx); VIDEOREF@0x1082 0x1008 (DR[8]=dr02cf.vdx); VIDEOREF@0x1090 0x100D (DR[13]=dr03cf.vdx); VIDEOREF@0x109E 0x1010 (DR[16]=dr04cf.vdx); VIDEOREF@0x10AC 0x1013 (DR[19]=dr05cf.vdx); VIDEOREF@0x10BA 0x1016 (DR[22]=dr06cf.vdx); VIDEOREF@0x10C8 0x1019 (DR[25]=dr07cf.vdx); VIDEOREF@0x10D6 0x101C (DR[28]=dr08cf.vdx); VIDEOREF@0x10E4 0x101F (DR[31]=dr09cf.vdx); VIDEOREF@0x10F2 0x1022 (DR[34]=dr10cf.vdx); VIDEOREF@0x1100 0x1025 (DR[37]=dr11cf.vdx); VIDEOREF@0x110E 0x1028 (DR[40]=dr12cf.vdx); VIDEOREF@0x111C 0x102B (DR[43]=dr13cf.vdx); VIDEOREF@0x112A 0x102E (DR[46]=dr14cf.vdx); VIDEOREF@0x1138 0x1031 (DR[49]=dr15cf.vdx); VIDEOREF@0x1146 0x1034 (DR[52]=dr16cf.vdx); VIDEOREF@0x1154 0x1037 (DR[55]=dr17cf.vdx); VIDEOREF@0x1162 0x103A (DR[58]=dr18cf.vdx); VIDEOREF@0x1170 0x103D (DR[61]=dr19cf.vdx); VIDEOREF@0x117E 0x1040 (DR[64]=dr20cf.vdx); VIDEOREF@0x118C 0x1043 (DR[67]=dr21cf.vdx); VIDEOREF@0x119A 0x1046 (DR[70]=dr22cf.vdx); VIDEOREF@0x11A8 0x1049 (DR[73]=dr23cf.vdx); VIDEOREF@0x11B6 0x104C (DR[76]=dr24cf.vdx); VIDEOREF@0x11C4 0x104F (DR[79]=dr25cf.vdx); VIDEOREF@0x11D2 0x1052 (DR[82]=dr26cf.vdx); VIDEOREF@0x11E0 0x1055 (DR[85]=dr27cf.vdx); VIDEOREF@0x11EE 0x1058 (DR[88]=dr28cf.vdx); VIDEOREF@0x11FC 0x105B (DR[91]=dr29cf.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x00E8` | `HOTSPOT_RECT` | left=0x0091, top=0x007B, right=0x00BE, bottom=0x0095, target=0x0386, cursor=0x09 |
| `0x00FE` | `HOTSPOT_RECT` | left=0x00C6, top=0x0079, right=0x00EC, bottom=0x0092, target=0x042B, cursor=0x0A |
| `0x0114` | `HOTSPOT_RECT` | left=0x00EF, top=0x0078, right=0x0118, bottom=0x0090, target=0x04D0, cursor=0x09 |
| `0x012A` | `HOTSPOT_RECT` | left=0x011B, top=0x0077, right=0x0143, bottom=0x008F, target=0x0575, cursor=0x0A |
| `0x0140` | `HOTSPOT_RECT` | left=0x0147, top=0x0074, right=0x016D, bottom=0x008C, target=0x061A, cursor=0x09 |
| `0x0156` | `HOTSPOT_RECT` | left=0x0172, top=0x0072, right=0x019A, bottom=0x008A, target=0x06BF, cursor=0x0A |
| `0x016C` | `HOTSPOT_RECT` | left=0x008B, top=0x0096, right=0x00B0, bottom=0x00B2, target=0x03A7, cursor=0x0A |
| `0x0182` | `HOTSPOT_RECT` | left=0x00BD, top=0x0094, right=0x00E5, bottom=0x00AF, target=0x044C, cursor=0x09 |
| `0x0198` | `HOTSPOT_RECT` | left=0x00EB, top=0x0091, right=0x0119, bottom=0x00AC, target=0x04F1, cursor=0x0A |
| `0x01AE` | `HOTSPOT_RECT` | left=0x0119, top=0x008F, right=0x0147, bottom=0x00AA, target=0x0596, cursor=0x09 |
| `0x01C4` | `HOTSPOT_RECT` | left=0x014B, top=0x008D, right=0x0177, bottom=0x00A7, target=0x063B, cursor=0x0A |
| `0x01DA` | `HOTSPOT_RECT` | left=0x017B, top=0x008B, right=0x01A9, bottom=0x00A4, target=0x06E0, cursor=0x09 |
| `0x01F0` | `HOTSPOT_RECT` | left=0x006B, top=0x00B4, right=0x00A2, bottom=0x00D7, target=0x03C8, cursor=0x09 |
| `0x0206` | `HOTSPOT_RECT` | left=0x00AE, top=0x00B1, right=0x00DD, bottom=0x00D4, target=0x046D, cursor=0x0A |
| `0x021C` | `HOTSPOT_RECT` | left=0x00E5, top=0x00AE, right=0x0118, bottom=0x00D0, target=0x0512, cursor=0x09 |
| `0x0232` | `HOTSPOT_RECT` | left=0x0118, top=0x00AC, right=0x014E, bottom=0x00CC, target=0x05B7, cursor=0x0A |
| `0x0248` | `HOTSPOT_RECT` | left=0x014F, top=0x00A9, right=0x0181, bottom=0x00CA, target=0x065C, cursor=0x09 |
| `0x025E` | `HOTSPOT_RECT` | left=0x0180, top=0x00A6, right=0x01BA, bottom=0x00C6, target=0x0701, cursor=0x0A |
| `0x0274` | `HOTSPOT_RECT` | left=0x004D, top=0x00D9, right=0x0090, bottom=0x0107, target=0x03E9, cursor=0x0A |
| `0x028A` | `HOTSPOT_RECT` | left=0x00A2, top=0x00D6, right=0x00D4, bottom=0x0102, target=0x048E, cursor=0x09 |
| `0x02A0` | `HOTSPOT_RECT` | left=0x00DD, top=0x00D3, right=0x0116, bottom=0x00FE, target=0x0533, cursor=0x0A |
| `0x02B6` | `HOTSPOT_RECT` | left=0x0117, top=0x00D0, right=0x0155, bottom=0x00FA, target=0x05D8, cursor=0x09 |
| `0x02CC` | `HOTSPOT_RECT` | left=0x0156, top=0x00CB, right=0x018E, bottom=0x00F6, target=0x067D, cursor=0x0A |
| `0x02E2` | `HOTSPOT_RECT` | left=0x0197, top=0x00C8, right=0x01D4, bottom=0x00F1, target=0x0722, cursor=0x09 |
| `0x02F8` | `HOTSPOT_RECT` | left=0x0025, top=0x010B, right=0x007A, bottom=0x0149, target=0x040A, cursor=0x09 |
| `0x030E` | `HOTSPOT_RECT` | left=0x008F, top=0x0107, right=0x00C7, bottom=0x0142, target=0x04AF, cursor=0x0A |
| `0x0324` | `HOTSPOT_RECT` | left=0x00D3, top=0x0101, right=0x0115, bottom=0x013D, target=0x0554, cursor=0x09 |
| `0x033A` | `HOTSPOT_RECT` | left=0x0116, top=0x00FE, right=0x015E, bottom=0x0136, target=0x05F9, cursor=0x0A |
| `0x0350` | `HOTSPOT_RECT` | left=0x0162, top=0x00F9, right=0x019E, bottom=0x0133, target=0x069E, cursor=0x09 |
| `0x0366` | `HOTSPOT_RECT` | left=0x01AA, top=0x00F2, right=0x01F3, bottom=0x012F, target=0x0743, cursor=0x0A |

## EK.GRV

Input loops: 2

### Loop `0x006B`–`0x01C0`

Nearest preceding video in file order: VIDEOREF@0x0028 0x509E (GAMWAV[158]=gen_s_7.vdx)

Scene candidates: VIDEOREF@0x0003 0x2886 (JHEK[134]=ekbu.vdx); VIDEOREF@0x0010 0x509A (GAMWAV[154]=gen_s_3.vdx); VIDEOREF@0x001C 0x50AA (GAMWAV[170]=gen_s_19.vdx); VIDEOREF@0x0028 0x509E (GAMWAV[158]=gen_s_7.vdx); VIDEOREF@0x065E 0x508E (GAMWAV[142]=gen_e_8.vdx); VIDEOREF@0x0BAA 0x1C06 (HDISK[6]=wo_s.vdx); VIDEOREF@0x0BBF 0x1C07 (HDISK[7]=ws_o.vdx); VIDEO_NAME@0x0BC6 "{v002}{v000}{v001}_{v005}{v006}"

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0071` | `HOTSPOT_RECT` | left=0x009F, top=0x013A, right=0x00D8, bottom=0x0183, target=0x01C1, cursor=0x09 |
| `0x0082` | `HOTSPOT_RECT` | left=0x00DF, top=0x0139, right=0x011C, bottom=0x0184, target=0x01CC, cursor=0x0A |
| `0x0093` | `HOTSPOT_RECT` | left=0x011F, top=0x013A, right=0x0160, bottom=0x0184, target=0x01D7, cursor=0x09 |
| `0x00A4` | `HOTSPOT_RECT` | left=0x0162, top=0x013A, right=0x01A0, bottom=0x0184, target=0x01E2, cursor=0x0A |
| `0x00B5` | `HOTSPOT_RECT` | left=0x01A8, top=0x013A, right=0x01E2, bottom=0x0184, target=0x01ED, cursor=0x09 |
| `0x00C6` | `HOTSPOT_RECT` | left=0x00A9, top=0x00F8, right=0x00DF, bottom=0x013A, target=0x01F8, cursor=0x0A |
| `0x00D7` | `HOTSPOT_RECT` | left=0x00E6, top=0x00F8, right=0x011E, bottom=0x0139, target=0x0203, cursor=0x09 |
| `0x00E8` | `HOTSPOT_RECT` | left=0x0122, top=0x00F8, right=0x015D, bottom=0x0139, target=0x020E, cursor=0x0A |
| `0x00F9` | `HOTSPOT_RECT` | left=0x0160, top=0x00F8, right=0x019A, bottom=0x013A, target=0x0219, cursor=0x09 |
| `0x010A` | `HOTSPOT_RECT` | left=0x01A0, top=0x00F8, right=0x01D8, bottom=0x0139, target=0x0224, cursor=0x0A |
| `0x011B` | `HOTSPOT_RECT` | left=0x00B2, top=0x00BE, right=0x00E6, bottom=0x00F8, target=0x022F, cursor=0x09 |
| `0x012C` | `HOTSPOT_RECT` | left=0x00EC, top=0x00BE, right=0x0122, bottom=0x00F8, target=0x023A, cursor=0x0A |
| `0x013D` | `HOTSPOT_RECT` | left=0x0123, top=0x00BE, right=0x015B, bottom=0x00F8, target=0x0245, cursor=0x09 |
| `0x014E` | `HOTSPOT_RECT` | left=0x015D, top=0x00BD, right=0x0194, bottom=0x00F7, target=0x0250, cursor=0x0A |
| `0x015F` | `HOTSPOT_RECT` | left=0x019C, top=0x00BE, right=0x01CE, bottom=0x00F8, target=0x025B, cursor=0x09 |
| `0x0170` | `HOTSPOT_RECT` | left=0x00BC, top=0x008D, right=0x00EB, bottom=0x00BE, target=0x0266, cursor=0x0A |
| `0x0181` | `HOTSPOT_RECT` | left=0x00F1, top=0x008D, right=0x0123, bottom=0x00BE, target=0x0271, cursor=0x09 |
| `0x0192` | `HOTSPOT_RECT` | left=0x0125, top=0x008D, right=0x0159, bottom=0x00BE, target=0x027C, cursor=0x0A |
| `0x01A3` | `HOTSPOT_RECT` | left=0x015C, top=0x008D, right=0x0190, bottom=0x00BE, target=0x0287, cursor=0x09 |
| `0x01B4` | `HOTSPOT_RECT` | left=0x0195, top=0x008D, right=0x01C7, bottom=0x00BE, target=0x0292, cursor=0x0A |

### Loop `0x0662`–`0x07B7`

Nearest preceding video in file order: VIDEOREF@0x065E 0x508E (GAMWAV[142]=gen_e_8.vdx)

Scene candidates: VIDEOREF@0x065E 0x508E (GAMWAV[142]=gen_e_8.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0668` | `HOTSPOT_RECT` | left=0x009F, top=0x013A, right=0x00D8, bottom=0x0183, target=0x07B8, cursor=0x07 |
| `0x0679` | `HOTSPOT_RECT` | left=0x00DF, top=0x0139, right=0x011C, bottom=0x0184, target=0x07C7, cursor=0x07 |
| `0x068A` | `HOTSPOT_RECT` | left=0x011F, top=0x013A, right=0x0160, bottom=0x0184, target=0x07D6, cursor=0x07 |
| `0x069B` | `HOTSPOT_RECT` | left=0x0162, top=0x013A, right=0x01A0, bottom=0x0184, target=0x07E5, cursor=0x07 |
| `0x06AC` | `HOTSPOT_RECT` | left=0x01A8, top=0x013A, right=0x01E2, bottom=0x0184, target=0x07F4, cursor=0x07 |
| `0x06BD` | `HOTSPOT_RECT` | left=0x00A9, top=0x00F8, right=0x00DF, bottom=0x013A, target=0x0803, cursor=0x07 |
| `0x06CE` | `HOTSPOT_RECT` | left=0x00E6, top=0x00F8, right=0x011E, bottom=0x0139, target=0x0812, cursor=0x07 |
| `0x06DF` | `HOTSPOT_RECT` | left=0x0122, top=0x00F8, right=0x015D, bottom=0x0139, target=0x0821, cursor=0x07 |
| `0x06F0` | `HOTSPOT_RECT` | left=0x0160, top=0x00F8, right=0x019A, bottom=0x013A, target=0x0830, cursor=0x07 |
| `0x0701` | `HOTSPOT_RECT` | left=0x01A0, top=0x00F8, right=0x01D8, bottom=0x0139, target=0x083F, cursor=0x07 |
| `0x0712` | `HOTSPOT_RECT` | left=0x00B2, top=0x00BE, right=0x00E6, bottom=0x00F8, target=0x084E, cursor=0x07 |
| `0x0723` | `HOTSPOT_RECT` | left=0x00EC, top=0x00BE, right=0x0122, bottom=0x00F8, target=0x085D, cursor=0x07 |
| `0x0734` | `HOTSPOT_RECT` | left=0x0123, top=0x00BE, right=0x015B, bottom=0x00F8, target=0x086C, cursor=0x07 |
| `0x0745` | `HOTSPOT_RECT` | left=0x015D, top=0x00BD, right=0x0194, bottom=0x00F7, target=0x087B, cursor=0x07 |
| `0x0756` | `HOTSPOT_RECT` | left=0x019C, top=0x00BE, right=0x01CE, bottom=0x00F8, target=0x088A, cursor=0x07 |
| `0x0767` | `HOTSPOT_RECT` | left=0x00BC, top=0x008D, right=0x00EB, bottom=0x00BE, target=0x0899, cursor=0x07 |
| `0x0778` | `HOTSPOT_RECT` | left=0x00F1, top=0x008D, right=0x0123, bottom=0x00BE, target=0x08A8, cursor=0x07 |
| `0x0789` | `HOTSPOT_RECT` | left=0x0125, top=0x008D, right=0x0159, bottom=0x00BE, target=0x08B7, cursor=0x07 |
| `0x079A` | `HOTSPOT_RECT` | left=0x015C, top=0x008D, right=0x0190, bottom=0x00BE, target=0x08C6, cursor=0x07 |
| `0x07AB` | `HOTSPOT_RECT` | left=0x0195, top=0x008D, right=0x01C7, bottom=0x00BE, target=0x08D5, cursor=0x07 |

## F.GRV

Input loops: 9

### Loop `0x0143`–`0x027C`

Nearest preceding video in file order: VIDEOREF@0x007B 0x5008 (GAMWAV[8]=2_s_3.vdx)

Scene candidates: VIDEOREF@0x0018 0x5007 (GAMWAV[7]=2_s_2.vdx); VIDEOREF@0x0045 0x5004 (GAMWAV[4]=2_e_3.vdx); VIDEOREF@0x0060 0x5005 (GAMWAV[5]=2_e_4.vdx); VIDEOREF@0x007B 0x5008 (GAMWAV[8]=2_s_3.vdx); VIDEOREF@0x02B6 0x1449 (FH[73]=f_a_d.vdx); VIDEOREF@0x02C2 0x144A (FH[74]=f_a_f.vdx); VIDEOREF@0x0309 0x144B (FH[75]=f_b_e.vdx); VIDEOREF@0x0315 0x144C (FH[76]=f_b_g.vdx); VIDEOREF@0x0359 0x144E (FH[78]=f_c_h.vdx); VIDEOREF@0x0365 0x144D (FH[77]=f_c_f.vdx); VIDEOREF@0x03A9 0x144F (FH[79]=f_d_a.vdx); VIDEOREF@0x03B5 0x1450 (FH[80]=f_d_g.vdx); VIDEOREF@0x03F9 0x1451 (FH[81]=f_e_b.vdx); VIDEOREF@0x0405 0x1452 (FH[82]=f_e_h.vdx); VIDEOREF@0x0449 0x1453 (FH[83]=f_f_a.vdx); VIDEOREF@0x0455 0x1454 (FH[84]=f_f_c.vdx); VIDEOREF@0x0499 0x1455 (FH[85]=f_g_b.vdx); VIDEOREF@0x04A5 0x1456 (FH[86]=f_g_d.vdx); VIDEOREF@0x04E9 0x1457 (FH[87]=f_h_c.vdx); VIDEOREF@0x04F5 0x1458 (FH[88]=f_h_e.vdx); VIDEO_TRANSITION_REF@0x0509 0x1405 (FH[5]=f1_pb.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x014E` | `HOTSPOT_RECT` | left=0x0123, top=0x0063, right=0x014E, bottom=0x0095, target=0x027D, cursor=0x09 |
| `0x015F` | `HOTSPOT_RECT` | left=0x0123, top=0x0063, right=0x014E, bottom=0x0095, target=0x027D, cursor=0x09 |
| `0x0175` | `HOTSPOT_RECT` | left=0x00CF, top=0x0083, right=0x00F9, bottom=0x00B3, target=0x02CD, cursor=0x09 |
| `0x0186` | `HOTSPOT_RECT` | left=0x00CF, top=0x0083, right=0x00F9, bottom=0x00AA, target=0x02CD, cursor=0x09 |
| `0x019C` | `HOTSPOT_RECT` | left=0x00A0, top=0x00D1, right=0x00DC, bottom=0x0100, target=0x031D, cursor=0x09 |
| `0x01AD` | `HOTSPOT_RECT` | left=0x00A0, top=0x00D1, right=0x00DC, bottom=0x0100, target=0x031D, cursor=0x09 |
| `0x01C3` | `HOTSPOT_RECT` | left=0x00C6, top=0x0124, right=0x00F4, bottom=0x015D, target=0x036D, cursor=0x09 |
| `0x01D4` | `HOTSPOT_RECT` | left=0x00C6, top=0x0124, right=0x00F4, bottom=0x015D, target=0x036D, cursor=0x09 |
| `0x01EA` | `HOTSPOT_RECT` | left=0x0113, top=0x0140, right=0x0149, bottom=0x017A, target=0x03BD, cursor=0x09 |
| `0x01FB` | `HOTSPOT_RECT` | left=0x0113, top=0x0140, right=0x0149, bottom=0x017A, target=0x03BD, cursor=0x09 |
| `0x0211` | `HOTSPOT_RECT` | left=0x0179, top=0x0126, right=0x01AC, bottom=0x015D, target=0x040D, cursor=0x09 |
| `0x0222` | `HOTSPOT_RECT` | left=0x0115, top=0x0126, right=0x01AC, bottom=0x015D, target=0x040D, cursor=0x09 |
| `0x0238` | `HOTSPOT_RECT` | left=0x0199, top=0x00D1, right=0x01CC, bottom=0x0106, target=0x045D, cursor=0x09 |
| `0x0249` | `HOTSPOT_RECT` | left=0x0199, top=0x00D1, right=0x01CC, bottom=0x0106, target=0x045D, cursor=0x09 |
| `0x025F` | `HOTSPOT_RECT` | left=0x0174, top=0x007F, right=0x01A9, bottom=0x00B8, target=0x04AD, cursor=0x09 |
| `0x0270` | `HOTSPOT_RECT` | left=0x0174, top=0x007F, right=0x01A9, bottom=0x00B8, target=0x04AD, cursor=0x09 |

### Loop `0x028F`–`0x02A8`

Nearest preceding video in file order: VIDEOREF@0x028C 0x508E (GAMWAV[142]=gen_e_8.vdx)

Scene candidates: VIDEOREF@0x028C 0x508E (GAMWAV[142]=gen_e_8.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0290` | `HOTSPOT_RECT` | left=0x00C6, top=0x0124, right=0x00F4, bottom=0x015D, target=0x02B5, cursor=0x0A |
| `0x029C` | `HOTSPOT_RECT` | left=0x0179, top=0x0126, right=0x01AC, bottom=0x015D, target=0x02C1, cursor=0x0A |

### Loop `0x02DF`–`0x02F8`

Nearest preceding video in file order: VIDEOREF@0x02DC 0x508E (GAMWAV[142]=gen_e_8.vdx)

Scene candidates: VIDEOREF@0x02DC 0x508E (GAMWAV[142]=gen_e_8.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x02E0` | `HOTSPOT_RECT` | left=0x011D, top=0x014A, right=0x0153, bottom=0x0184, target=0x0305, cursor=0x0A |
| `0x02EC` | `HOTSPOT_RECT` | left=0x0199, top=0x00D1, right=0x01CC, bottom=0x0106, target=0x0311, cursor=0x0A |

### Loop `0x032F`–`0x0348`

Nearest preceding video in file order: VIDEOREF@0x032C 0x508E (GAMWAV[142]=gen_e_8.vdx)

Scene candidates: VIDEOREF@0x032C 0x508E (GAMWAV[142]=gen_e_8.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0330` | `HOTSPOT_RECT` | left=0x0174, top=0x007F, right=0x01A9, bottom=0x00B8, target=0x0355, cursor=0x0A |
| `0x033C` | `HOTSPOT_RECT` | left=0x0179, top=0x0126, right=0x01AC, bottom=0x015D, target=0x0361, cursor=0x0A |

### Loop `0x037F`–`0x0398`

Nearest preceding video in file order: VIDEOREF@0x037C 0x508E (GAMWAV[142]=gen_e_8.vdx)

Scene candidates: VIDEOREF@0x037C 0x508E (GAMWAV[142]=gen_e_8.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0380` | `HOTSPOT_RECT` | left=0x0123, top=0x0063, right=0x014E, bottom=0x0095, target=0x03A5, cursor=0x0A |
| `0x038C` | `HOTSPOT_RECT` | left=0x0199, top=0x00D1, right=0x01CC, bottom=0x0106, target=0x03B1, cursor=0x0A |

### Loop `0x03CF`–`0x03E8`

Nearest preceding video in file order: VIDEOREF@0x03CC 0x508E (GAMWAV[142]=gen_e_8.vdx)

Scene candidates: VIDEOREF@0x03CC 0x508E (GAMWAV[142]=gen_e_8.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x03D0` | `HOTSPOT_RECT` | left=0x00CF, top=0x0083, right=0x00F9, bottom=0x00B3, target=0x03F5, cursor=0x0A |
| `0x03DC` | `HOTSPOT_RECT` | left=0x0174, top=0x007F, right=0x01A9, bottom=0x00B8, target=0x0401, cursor=0x0A |

### Loop `0x041F`–`0x0438`

Nearest preceding video in file order: VIDEOREF@0x041C 0x508E (GAMWAV[142]=gen_e_8.vdx)

Scene candidates: VIDEOREF@0x041C 0x508E (GAMWAV[142]=gen_e_8.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0420` | `HOTSPOT_RECT` | left=0x0123, top=0x0063, right=0x014E, bottom=0x0095, target=0x0445, cursor=0x0A |
| `0x042C` | `HOTSPOT_RECT` | left=0x00A0, top=0x00D1, right=0x00DC, bottom=0x0100, target=0x0451, cursor=0x0A |

### Loop `0x046F`–`0x0488`

Nearest preceding video in file order: VIDEOREF@0x046C 0x508E (GAMWAV[142]=gen_e_8.vdx)

Scene candidates: VIDEOREF@0x046C 0x508E (GAMWAV[142]=gen_e_8.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0470` | `HOTSPOT_RECT` | left=0x00CF, top=0x0083, right=0x00F9, bottom=0x00B3, target=0x0495, cursor=0x0A |
| `0x047C` | `HOTSPOT_RECT` | left=0x00C6, top=0x0124, right=0x00F4, bottom=0x015D, target=0x04A1, cursor=0x0A |

### Loop `0x04BF`–`0x04D8`

Nearest preceding video in file order: VIDEOREF@0x04BC 0x508E (GAMWAV[142]=gen_e_8.vdx)

Scene candidates: VIDEOREF@0x04BC 0x508E (GAMWAV[142]=gen_e_8.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x04C0` | `HOTSPOT_RECT` | left=0x00A0, top=0x00D1, right=0x00DC, bottom=0x0100, target=0x04E5, cursor=0x0A |
| `0x04CC` | `HOTSPOT_RECT` | left=0x011D, top=0x014A, right=0x0153, bottom=0x0184, target=0x04F1, cursor=0x0A |

## GA.GRV

Input loops: 1

### Loop `0x006E`–`0x03BD`

Nearest preceding video in file order: VIDEO_TRANSITION_REF@0x0054 0x180A (GA[10]=gaback.vdx)

Scene candidates: VIDEO_TRANSITION_REF@0x004C 0x180A (GA[10]=gaback.vdx); VIDEOREF@0x0385 0x504D (GAMWAV[77]=12_e_4.vdx); VIDEOREF@0x039F 0x5049 (GAMWAV[73]=11_s_5.vdx); VIDEOREF@0x03B9 0x504C (GAMWAV[76]=12_e_3.vdx); VIDEO_NAME@0x0874 "gat-{v017}{v018}f"

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x006F` | `HOTSPOT_RECT` | left=0x0088, top=0x0147, right=0x00B2, bottom=0x0173, target=0x03F5, cursor=0x0A |
| `0x007B` | `HOTSPOT_RECT` | left=0x0093, top=0x011C, right=0x00B9, bottom=0x0146, target=0x03FC, cursor=0x09 |
| `0x0087` | `HOTSPOT_RECT` | left=0x009C, top=0x00F7, right=0x00C0, bottom=0x011C, target=0x0403, cursor=0x0A |
| `0x0093` | `HOTSPOT_RECT` | left=0x00A4, top=0x00D3, right=0x00C7, bottom=0x00F6, target=0x040A, cursor=0x09 |
| `0x009F` | `HOTSPOT_RECT` | left=0x00AB, top=0x00B5, right=0x00CC, bottom=0x00D4, target=0x0411, cursor=0x0A |
| `0x00AB` | `HOTSPOT_RECT` | left=0x00B3, top=0x0099, right=0x00D2, bottom=0x00B5, target=0x0418, cursor=0x09 |
| `0x00B7` | `HOTSPOT_RECT` | left=0x00B8, top=0x0080, right=0x00D7, bottom=0x0099, target=0x041F, cursor=0x0A |
| `0x00C3` | `HOTSPOT_RECT` | left=0x00BE, top=0x0067, right=0x00DC, bottom=0x007F, target=0x0426, cursor=0x09 |
| `0x00CF` | `HOTSPOT_RECT` | left=0x00B9, top=0x0146, right=0x00E4, bottom=0x0173, target=0x042D, cursor=0x09 |
| `0x00DB` | `HOTSPOT_RECT` | left=0x00C1, top=0x011C, right=0x00E9, bottom=0x0146, target=0x0434, cursor=0x0A |
| `0x00E7` | `HOTSPOT_RECT` | left=0x00C7, top=0x00F5, right=0x00EE, bottom=0x011C, target=0x043B, cursor=0x09 |
| `0x00F3` | `HOTSPOT_RECT` | left=0x00CE, top=0x00D4, right=0x00F3, bottom=0x00F6, target=0x0442, cursor=0x0A |
| `0x00FF` | `HOTSPOT_RECT` | left=0x00D3, top=0x00B5, right=0x00F6, bottom=0x00D4, target=0x0449, cursor=0x09 |
| `0x010B` | `HOTSPOT_RECT` | left=0x00D8, top=0x0099, right=0x00F9, bottom=0x00B5, target=0x0450, cursor=0x0A |
| `0x0117` | `HOTSPOT_RECT` | left=0x00DC, top=0x007F, right=0x00FD, bottom=0x0099, target=0x0457, cursor=0x09 |
| `0x0123` | `HOTSPOT_RECT` | left=0x00E2, top=0x0068, right=0x00FF, bottom=0x007F, target=0x045E, cursor=0x0A |
| `0x012F` | `HOTSPOT_RECT` | left=0x00EA, top=0x0146, right=0x0117, bottom=0x0172, target=0x0465, cursor=0x0A |
| `0x013B` | `HOTSPOT_RECT` | left=0x00EE, top=0x011B, right=0x011A, bottom=0x0147, target=0x046C, cursor=0x09 |
| `0x0147` | `HOTSPOT_RECT` | left=0x00F3, top=0x00F7, right=0x011B, bottom=0x011C, target=0x0473, cursor=0x0A |
| `0x0153` | `HOTSPOT_RECT` | left=0x00F6, top=0x00D4, right=0x011D, bottom=0x00F6, target=0x047A, cursor=0x09 |
| `0x015F` | `HOTSPOT_RECT` | left=0x00FA, top=0x00B5, right=0x011F, bottom=0x00D3, target=0x0481, cursor=0x0A |
| `0x016B` | `HOTSPOT_RECT` | left=0x00FD, top=0x0099, right=0x0121, bottom=0x00B5, target=0x0488, cursor=0x09 |
| `0x0177` | `HOTSPOT_RECT` | left=0x0101, top=0x007F, right=0x0122, bottom=0x0099, target=0x048F, cursor=0x0A |
| `0x0183` | `HOTSPOT_RECT` | left=0x0103, top=0x0067, right=0x0123, bottom=0x007F, target=0x0496, cursor=0x09 |
| `0x018F` | `HOTSPOT_RECT` | left=0x011A, top=0x0146, right=0x014A, bottom=0x0172, target=0x049D, cursor=0x09 |
| `0x019B` | `HOTSPOT_RECT` | left=0x011C, top=0x011C, right=0x0148, bottom=0x0146, target=0x04A4, cursor=0x0A |
| `0x01A7` | `HOTSPOT_RECT` | left=0x011E, top=0x00F6, right=0x0149, bottom=0x011C, target=0x04AB, cursor=0x09 |
| `0x01B3` | `HOTSPOT_RECT` | left=0x0120, top=0x00D4, right=0x0147, bottom=0x00F6, target=0x04B2, cursor=0x0A |
| `0x01BF` | `HOTSPOT_RECT` | left=0x0122, top=0x00B5, right=0x0147, bottom=0x00D4, target=0x04B9, cursor=0x09 |
| `0x01CB` | `HOTSPOT_RECT` | left=0x0123, top=0x0099, right=0x0148, bottom=0x00B5, target=0x04C0, cursor=0x0A |
| `0x01D7` | `HOTSPOT_RECT` | left=0x0123, top=0x007F, right=0x0147, bottom=0x0099, target=0x04C7, cursor=0x09 |
| `0x01E3` | `HOTSPOT_RECT` | left=0x0125, top=0x0068, right=0x0147, bottom=0x007F, target=0x04CE, cursor=0x0A |
| `0x01EF` | `HOTSPOT_RECT` | left=0x014A, top=0x0146, right=0x017A, bottom=0x0172, target=0x04D5, cursor=0x0A |
| `0x01FB` | `HOTSPOT_RECT` | left=0x014A, top=0x011C, right=0x0179, bottom=0x0146, target=0x04DC, cursor=0x09 |
| `0x0207` | `HOTSPOT_RECT` | left=0x014A, top=0x00F6, right=0x0175, bottom=0x011C, target=0x04E3, cursor=0x0A |
| `0x0213` | `HOTSPOT_RECT` | left=0x0149, top=0x00D4, right=0x0171, bottom=0x00F6, target=0x04EA, cursor=0x09 |
| `0x021F` | `HOTSPOT_RECT` | left=0x0149, top=0x00B5, right=0x0170, bottom=0x00D4, target=0x04F1, cursor=0x0A |
| `0x022B` | `HOTSPOT_RECT` | left=0x0148, top=0x0098, right=0x016E, bottom=0x00B5, target=0x04F8, cursor=0x09 |
| `0x0237` | `HOTSPOT_RECT` | left=0x0148, top=0x007E, right=0x016B, bottom=0x0099, target=0x04FF, cursor=0x0A |
| `0x0243` | `HOTSPOT_RECT` | left=0x0148, top=0x0068, right=0x016B, bottom=0x007F, target=0x0506, cursor=0x09 |
| `0x024F` | `HOTSPOT_RECT` | left=0x017D, top=0x0146, right=0x01AB, bottom=0x0172, target=0x050D, cursor=0x09 |
| `0x025B` | `HOTSPOT_RECT` | left=0x017A, top=0x011C, right=0x01A3, bottom=0x0146, target=0x0514, cursor=0x0A |
| `0x0267` | `HOTSPOT_RECT` | left=0x0177, top=0x00F6, right=0x01A0, bottom=0x011C, target=0x051B, cursor=0x09 |
| `0x0273` | `HOTSPOT_RECT` | left=0x0174, top=0x00D4, right=0x019C, bottom=0x00F6, target=0x0522, cursor=0x0A |
| `0x027F` | `HOTSPOT_RECT` | left=0x0172, top=0x00B6, right=0x0196, bottom=0x00D3, target=0x0529, cursor=0x09 |
| `0x028B` | `HOTSPOT_RECT` | left=0x016F, top=0x0099, right=0x0192, bottom=0x00B5, target=0x0530, cursor=0x0A |
| `0x0297` | `HOTSPOT_RECT` | left=0x016D, top=0x007F, right=0x018F, bottom=0x0099, target=0x0537, cursor=0x09 |
| `0x02A3` | `HOTSPOT_RECT` | left=0x016C, top=0x0068, right=0x018C, bottom=0x007F, target=0x053E, cursor=0x0A |
| `0x02AF` | `HOTSPOT_RECT` | left=0x01B1, top=0x0146, right=0x01DB, bottom=0x0172, target=0x0545, cursor=0x0A |
| `0x02BB` | `HOTSPOT_RECT` | left=0x01AA, top=0x011B, right=0x01D3, bottom=0x0146, target=0x054C, cursor=0x09 |
| `0x02C7` | `HOTSPOT_RECT` | left=0x01A4, top=0x00F6, right=0x01CA, bottom=0x011C, target=0x0553, cursor=0x0A |
| `0x02D3` | `HOTSPOT_RECT` | left=0x019F, top=0x00D3, right=0x01C4, bottom=0x00F6, target=0x055A, cursor=0x09 |
| `0x02DF` | `HOTSPOT_RECT` | left=0x019A, top=0x00B4, right=0x01BE, bottom=0x00D4, target=0x0561, cursor=0x0A |
| `0x02EB` | `HOTSPOT_RECT` | left=0x0196, top=0x0098, right=0x01B8, bottom=0x00B5, target=0x0568, cursor=0x09 |
| `0x02F7` | `HOTSPOT_RECT` | left=0x0193, top=0x007F, right=0x01B3, bottom=0x0099, target=0x056F, cursor=0x0A |
| `0x0303` | `HOTSPOT_RECT` | left=0x018F, top=0x0067, right=0x01AE, bottom=0x007F, target=0x0576, cursor=0x09 |
| `0x030F` | `HOTSPOT_RECT` | left=0x01E3, top=0x0146, right=0x0218, bottom=0x0171, target=0x057D, cursor=0x09 |
| `0x031B` | `HOTSPOT_RECT` | left=0x01DA, top=0x011B, right=0x020B, bottom=0x0145, target=0x0584, cursor=0x0A |
| `0x0327` | `HOTSPOT_RECT` | left=0x01D2, top=0x00F6, right=0x01FF, bottom=0x011C, target=0x058B, cursor=0x09 |
| `0x0333` | `HOTSPOT_RECT` | left=0x01CB, top=0x00D4, right=0x01F6, bottom=0x00F6, target=0x0592, cursor=0x0A |
| `0x033F` | `HOTSPOT_RECT` | left=0x01C4, top=0x00B5, right=0x01ED, bottom=0x00D4, target=0x0599, cursor=0x09 |
| `0x034B` | `HOTSPOT_RECT` | left=0x01BD, top=0x0099, right=0x01E6, bottom=0x00B6, target=0x05A0, cursor=0x0A |
| `0x0357` | `HOTSPOT_RECT` | left=0x01B8, top=0x007E, right=0x01DD, bottom=0x0099, target=0x05A7, cursor=0x09 |
| `0x0363` | `HOTSPOT_RECT` | left=0x01B3, top=0x0067, right=0x01D7, bottom=0x007F, target=0x05AE, cursor=0x0A |

## GRATE.GRV

Input loops: 1

### Loop `0x00AC`–`0x0113`

Nearest preceding video in file order: VIDEOREF@0x008E 0x5032 (GAMWAV[50]=8_s_6.vdx)

Scene candidates: VIDEO_TRANSITION_REF@0x0041 0x3C2E (MC[46]=mgpuzbkd.vdx); VIDEOREF@0x005A 0x5027 (GAMWAV[39]=8_e_1.vdx); VIDEOREF@0x0074 0x5028 (GAMWAV[40]=8_e_2.vdx); VIDEOREF@0x008E 0x5032 (GAMWAV[50]=8_s_6.vdx); VIDEOREF@0x011C 0x5087 (GAMWAV[135]=gen_e_1.vdx); VIDEOREF@0x013C 0x3C1C (MC[28]=gx_1-2.vdx); VIDEOREF@0x0149 0x3C00 (MC[0]=ga_1-2.vdx); VIDEOREF@0x0156 0x3C0E (MC[14]=gu_1-2.vdx); VIDEOREF@0x0163 0x3C1D (MC[29]=gx_1-4.vdx); VIDEOREF@0x0170 0x3C01 (MC[1]=ga_1-4.vdx); VIDEOREF@0x017D 0x3C0F (MC[15]=gu_1-4.vdx); VIDEOREF@0x01A1 0x3C1E (MC[30]=gx_2-1.vdx); VIDEOREF@0x01AE 0x3C02 (MC[2]=ga_2-1.vdx); VIDEOREF@0x01BB 0x3C10 (MC[16]=gu_2-1.vdx); VIDEOREF@0x01C8 0x3C1F (MC[31]=gx_2-3.vdx); VIDEOREF@0x01D5 0x3C03 (MC[3]=ga_2-3.vdx); VIDEOREF@0x01E2 0x3C11 (MC[17]=gu_2-3.vdx); VIDEOREF@0x01EF 0x3C20 (MC[32]=gx_2-5.vdx); VIDEOREF@0x01FC 0x3C04 (MC[4]=ga_2-5.vdx); VIDEOREF@0x0209 0x3C12 (MC[18]=gu_2-5.vdx); VIDEOREF@0x0236 0x3C21 (MC[33]=gx_3-2.vdx); VIDEOREF@0x0243 0x3C05 (MC[5]=ga_3-2.vdx); VIDEOREF@0x0250 0x3C13 (MC[19]=gu_3-2.vdx); VIDEOREF@0x025D 0x3C54 (MC[84]=stkb.vdx); VIDEOREF@0x026C 0x3C22 (MC[34]=gx_3-6.vdx); VIDEOREF@0x0279 0x3C06 (MC[6]=ga_3-6.vdx); VIDEOREF@0x0286 0x3C14 (MC[20]=gu_3-6.vdx); VIDEOREF@0x02AA 0x3C23 (MC[35]=gx_4-1.vdx); VIDEOREF@0x02B7 0x3C07 (MC[7]=ga_4-1.vdx); VIDEOREF@0x02C4 0x3C15 (MC[21]=gu_4-1.vdx); VIDEOREF@0x02D1 0x3C24 (MC[36]=gx_4-5.vdx); VIDEOREF@0x02DE 0x3C08 (MC[8]=ga_4-5.vdx); VIDEOREF@0x02EB 0x3C16 (MC[22]=gu_4-5.vdx); VIDEOREF@0x030F 0x3C25 (MC[37]=gx_5-2.vdx); VIDEOREF@0x031C 0x3C09 (MC[9]=ga_5-2.vdx); VIDEOREF@0x0329 0x3C17 (MC[23]=gu_5-2.vdx); VIDEOREF@0x0336 0x3C26 (MC[38]=gx_5-4.vdx); VIDEOREF@0x0343 0x3C0A (MC[10]=ga_5-4.vdx); VIDEOREF@0x0350 0x3C18 (MC[24]=gu_5-4.vdx); VIDEOREF@0x035D 0x3C54 (MC[84]=stkb.vdx); VIDEOREF@0x036C 0x3C27 (MC[39]=gx_5-6.vdx); VIDEOREF@0x0379 0x3C0B (MC[11]=ga_5-6.vdx); VIDEOREF@0x0386 0x3C19 (MC[25]=gu_5-6.vdx); VIDEOREF@0x03B3 0x3C28 (MC[40]=gx_6-3.vdx); VIDEOREF@0x03C0 0x3C0C (MC[12]=ga_6-3.vdx); VIDEOREF@0x03CD 0x3C1A (MC[26]=gu_6-3.vdx); VIDEOREF@0x03DA 0x3C29 (MC[41]=gx_6-5.vdx); VIDEOREF@0x03E7 0x3C0D (MC[13]=ga_6-5.vdx); VIDEOREF@0x03F4 0x3C1B (MC[27]=gu_6-5.vdx); VIDEOREF@0x0415 0x3C55 (MC[85]=stkf.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x00B2` | `HOTSPOT_RECT` | left=0x0036, top=0x009A, right=0x00E8, bottom=0x00F0, target=0x0130, cursor=0x09 |
| `0x00C3` | `HOTSPOT_RECT` | left=0x00E8, top=0x009A, right=0x0197, bottom=0x00F0, target=0x0195, cursor=0x0A |
| `0x00D4` | `HOTSPOT_RECT` | left=0x019C, top=0x009A, right=0x024B, bottom=0x00F0, target=0x022A, cursor=0x09 |
| `0x00E5` | `HOTSPOT_RECT` | left=0x0036, top=0x00F3, right=0x00E8, bottom=0x0147, target=0x029E, cursor=0x0A |
| `0x00F6` | `HOTSPOT_RECT` | left=0x00E8, top=0x00F3, right=0x0197, bottom=0x0147, target=0x0303, cursor=0x09 |
| `0x0107` | `HOTSPOT_RECT` | left=0x019C, top=0x00F3, right=0x024B, bottom=0x0147, target=0x03A7, cursor=0x0A |

## H.GRV

Input loops: 3

### Loop `0x0081`–`0x0148`

Nearest preceding video in file order: VIDEOREF@0x0033 0x14B1 (FH[177]=h_p2af.vdx)

Scene candidates: VIDEOREF@0x0033 0x14B1 (FH[177]=h_p2af.vdx); VIDEOREF@0x0098 0x5049 (GAMWAV[73]=11_s_5.vdx); VIDEOREF@0x00B2 0x506A (GAMWAV[106]=21_e_1.vdx); VIDEOREF@0x00CC 0x506B (GAMWAV[107]=21_e_2.vdx); VIDEOREF@0x0A29 0x14B0 (FH[176]=h_p2ab.vdx); VIDEOREF@0x0A32 0x14B1 (FH[177]=h_p2af.vdx); VIDEOREF@0x0A61 0x14B2 (FH[178]=h_p2bb.vdx); VIDEOREF@0x0A6A 0x14B3 (FH[179]=h_p2bf.vdx); VIDEOREF@0x0A99 0x14B4 (FH[180]=h_p2cb.vdx); VIDEOREF@0x0AA2 0x14B5 (FH[181]=h_p2cf.vdx); VIDEOREF@0x0AD1 0x14B6 (FH[182]=h_p2db.vdx); VIDEOREF@0x0ADA 0x14B7 (FH[183]=h_p2df.vdx); VIDEOREF@0x0B09 0x14B8 (FH[184]=h_p2eb.vdx); VIDEOREF@0x0B12 0x14B9 (FH[185]=h_p2ef.vdx); VIDEOREF@0x0B41 0x14BA (FH[186]=h_p2fb.vdx); VIDEOREF@0x0B4A 0x14BB (FH[187]=h_p2ff.vdx); VIDEOREF@0x0B79 0x14BC (FH[188]=h_p2gb.vdx); VIDEOREF@0x0B82 0x14BD (FH[189]=h_p2gf.vdx); VIDEOREF@0x0BB1 0x14BE (FH[190]=h_p2hb.vdx); VIDEOREF@0x0BBA 0x14BF (FH[191]=h_p2hf.vdx); VIDEOREF@0x0BE9 0x14C0 (FH[192]=h_p2ib.vdx); VIDEOREF@0x0BF2 0x14C1 (FH[193]=h_p2if.vdx); VIDEOREF@0x0C21 0x14C2 (FH[194]=h_p2jb.vdx); VIDEOREF@0x0C2A 0x14C3 (FH[195]=h_p2jf.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x00D0` | `HOTSPOT_RECT` | left=0x012E, top=0x0064, right=0x0147, bottom=0x0076, target=0x0A04, cursor=0x0A |
| `0x00DC` | `HOTSPOT_RECT` | left=0x0141, top=0x007E, right=0x0154, bottom=0x0090, target=0x0A3C, cursor=0x09 |
| `0x00E8` | `HOTSPOT_RECT` | left=0x016A, top=0x007E, right=0x0186, bottom=0x0092, target=0x0A74, cursor=0x09 |
| `0x00F4` | `HOTSPOT_RECT` | left=0x014B, top=0x0093, right=0x015F, bottom=0x00A5, target=0x0AAC, cursor=0x0A |
| `0x0100` | `HOTSPOT_RECT` | left=0x015E, top=0x00AF, right=0x0171, bottom=0x00C9, target=0x0AE4, cursor=0x0A |
| `0x010C` | `HOTSPOT_RECT` | left=0x012E, top=0x00A0, right=0x0146, bottom=0x00B2, target=0x0B1C, cursor=0x09 |
| `0x0118` | `HOTSPOT_RECT` | left=0x0104, top=0x00B0, right=0x011A, bottom=0x00C7, target=0x0B54, cursor=0x09 |
| `0x0124` | `HOTSPOT_RECT` | left=0x0118, top=0x0091, right=0x0128, bottom=0x00A2, target=0x0B8C, cursor=0x0A |
| `0x0130` | `HOTSPOT_RECT` | left=0x00F2, top=0x007C, right=0x0105, bottom=0x0096, target=0x0BC4, cursor=0x0A |
| `0x013C` | `HOTSPOT_RECT` | left=0x011F, top=0x007C, right=0x0133, bottom=0x008F, target=0x0BFC, cursor=0x09 |

### Loop `0x030E`–`0x052B`

Nearest preceding video in file order: VIDEOREF@0x017A 0x14AF (FH[175]=h_p_dn.vdx)

Scene candidates: VIDEOREF@0x0033 0x14B1 (FH[177]=h_p2af.vdx); VIDEOREF@0x0A29 0x14B0 (FH[176]=h_p2ab.vdx); VIDEOREF@0x0A32 0x14B1 (FH[177]=h_p2af.vdx); VIDEOREF@0x0A61 0x14B2 (FH[178]=h_p2bb.vdx); VIDEOREF@0x0A6A 0x14B3 (FH[179]=h_p2bf.vdx); VIDEOREF@0x0A99 0x14B4 (FH[180]=h_p2cb.vdx); VIDEOREF@0x0AA2 0x14B5 (FH[181]=h_p2cf.vdx); VIDEOREF@0x0AD1 0x14B6 (FH[182]=h_p2db.vdx); VIDEOREF@0x0ADA 0x14B7 (FH[183]=h_p2df.vdx); VIDEOREF@0x0B09 0x14B8 (FH[184]=h_p2eb.vdx); VIDEOREF@0x0B12 0x14B9 (FH[185]=h_p2ef.vdx); VIDEOREF@0x0B41 0x14BA (FH[186]=h_p2fb.vdx); VIDEOREF@0x0B4A 0x14BB (FH[187]=h_p2ff.vdx); VIDEOREF@0x0B79 0x14BC (FH[188]=h_p2gb.vdx); VIDEOREF@0x0B82 0x14BD (FH[189]=h_p2gf.vdx); VIDEOREF@0x0BB1 0x14BE (FH[190]=h_p2hb.vdx); VIDEOREF@0x0BBA 0x14BF (FH[191]=h_p2hf.vdx); VIDEOREF@0x0BE9 0x14C0 (FH[192]=h_p2ib.vdx); VIDEOREF@0x0BF2 0x14C1 (FH[193]=h_p2if.vdx); VIDEOREF@0x0C21 0x14C2 (FH[194]=h_p2jb.vdx); VIDEOREF@0x0C2A 0x14C3 (FH[195]=h_p2jf.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x031E` | `HOTSPOT_RECT` | left=0x012E, top=0x0064, right=0x0147, bottom=0x0076, target=0x0A04, cursor=0x0A |
| `0x0339` | `HOTSPOT_RECT` | left=0x012E, top=0x0064, right=0x0147, bottom=0x0076, target=0x0A04, cursor=0x0A |
| `0x0354` | `HOTSPOT_RECT` | left=0x0141, top=0x007E, right=0x0154, bottom=0x0090, target=0x0A3C, cursor=0x09 |
| `0x036F` | `HOTSPOT_RECT` | left=0x0141, top=0x007E, right=0x0154, bottom=0x0090, target=0x0A3C, cursor=0x09 |
| `0x038A` | `HOTSPOT_RECT` | left=0x016A, top=0x007E, right=0x0186, bottom=0x0092, target=0x0A74, cursor=0x09 |
| `0x03A5` | `HOTSPOT_RECT` | left=0x016A, top=0x007E, right=0x0186, bottom=0x0092, target=0x0A74, cursor=0x09 |
| `0x03C0` | `HOTSPOT_RECT` | left=0x014B, top=0x0093, right=0x015F, bottom=0x00A5, target=0x0AAC, cursor=0x0A |
| `0x03DB` | `HOTSPOT_RECT` | left=0x014B, top=0x0093, right=0x015F, bottom=0x00A5, target=0x0AAC, cursor=0x0A |
| `0x03F6` | `HOTSPOT_RECT` | left=0x015E, top=0x00AF, right=0x0171, bottom=0x00C9, target=0x0AE4, cursor=0x0A |
| `0x0411` | `HOTSPOT_RECT` | left=0x015E, top=0x00AF, right=0x0171, bottom=0x00C9, target=0x0AE4, cursor=0x0A |
| `0x042C` | `HOTSPOT_RECT` | left=0x012E, top=0x00A0, right=0x0146, bottom=0x00B2, target=0x0B1C, cursor=0x09 |
| `0x0447` | `HOTSPOT_RECT` | left=0x012E, top=0x00A0, right=0x0146, bottom=0x00B2, target=0x0B1C, cursor=0x09 |
| `0x0462` | `HOTSPOT_RECT` | left=0x0104, top=0x00B0, right=0x011A, bottom=0x00C7, target=0x0B54, cursor=0x09 |
| `0x047D` | `HOTSPOT_RECT` | left=0x0104, top=0x00B0, right=0x011A, bottom=0x00C7, target=0x0B54, cursor=0x09 |
| `0x0498` | `HOTSPOT_RECT` | left=0x0118, top=0x0091, right=0x0128, bottom=0x00A2, target=0x0B8C, cursor=0x0A |
| `0x04B3` | `HOTSPOT_RECT` | left=0x0118, top=0x0091, right=0x0128, bottom=0x00A2, target=0x0B8C, cursor=0x0A |
| `0x04CE` | `HOTSPOT_RECT` | left=0x00F2, top=0x007C, right=0x0105, bottom=0x0096, target=0x0BC4, cursor=0x0A |
| `0x04E9` | `HOTSPOT_RECT` | left=0x00F2, top=0x007C, right=0x0105, bottom=0x0096, target=0x0BC4, cursor=0x0A |
| `0x0504` | `HOTSPOT_RECT` | left=0x011F, top=0x007C, right=0x0133, bottom=0x008F, target=0x0BFC, cursor=0x09 |
| `0x051F` | `HOTSPOT_RECT` | left=0x011F, top=0x007C, right=0x0133, bottom=0x008F, target=0x0BFC, cursor=0x09 |

### Loop `0x071E`–`0x093B`

Nearest preceding video in file order: VIDEOREF@0x071B 0x508E (GAMWAV[142]=gen_e_8.vdx)

Scene candidates: VIDEOREF@0x0033 0x14B1 (FH[177]=h_p2af.vdx); VIDEOREF@0x071B 0x508E (GAMWAV[142]=gen_e_8.vdx); VIDEOREF@0x0A29 0x14B0 (FH[176]=h_p2ab.vdx); VIDEOREF@0x0A32 0x14B1 (FH[177]=h_p2af.vdx); VIDEOREF@0x0A61 0x14B2 (FH[178]=h_p2bb.vdx); VIDEOREF@0x0A6A 0x14B3 (FH[179]=h_p2bf.vdx); VIDEOREF@0x0A99 0x14B4 (FH[180]=h_p2cb.vdx); VIDEOREF@0x0AA2 0x14B5 (FH[181]=h_p2cf.vdx); VIDEOREF@0x0AD1 0x14B6 (FH[182]=h_p2db.vdx); VIDEOREF@0x0ADA 0x14B7 (FH[183]=h_p2df.vdx); VIDEOREF@0x0B09 0x14B8 (FH[184]=h_p2eb.vdx); VIDEOREF@0x0B12 0x14B9 (FH[185]=h_p2ef.vdx); VIDEOREF@0x0B41 0x14BA (FH[186]=h_p2fb.vdx); VIDEOREF@0x0B4A 0x14BB (FH[187]=h_p2ff.vdx); VIDEOREF@0x0B79 0x14BC (FH[188]=h_p2gb.vdx); VIDEOREF@0x0B82 0x14BD (FH[189]=h_p2gf.vdx); VIDEOREF@0x0BB1 0x14BE (FH[190]=h_p2hb.vdx); VIDEOREF@0x0BBA 0x14BF (FH[191]=h_p2hf.vdx); VIDEOREF@0x0BE9 0x14C0 (FH[192]=h_p2ib.vdx); VIDEOREF@0x0BF2 0x14C1 (FH[193]=h_p2if.vdx); VIDEOREF@0x0C21 0x14C2 (FH[194]=h_p2jb.vdx); VIDEOREF@0x0C2A 0x14C3 (FH[195]=h_p2jf.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x072E` | `HOTSPOT_RECT` | left=0x0118, top=0x0091, right=0x0128, bottom=0x00A2, target=0x0B8C, cursor=0x0A |
| `0x0749` | `HOTSPOT_RECT` | left=0x014B, top=0x0093, right=0x015F, bottom=0x00A5, target=0x0AAC, cursor=0x0A |
| `0x0764` | `HOTSPOT_RECT` | left=0x00F2, top=0x007C, right=0x0105, bottom=0x0096, target=0x0BC4, cursor=0x0A |
| `0x077F` | `HOTSPOT_RECT` | left=0x015E, top=0x00AF, right=0x0171, bottom=0x00C9, target=0x0AE4, cursor=0x0A |
| `0x079A` | `HOTSPOT_RECT` | left=0x011F, top=0x007C, right=0x0133, bottom=0x008F, target=0x0BFC, cursor=0x09 |
| `0x07B5` | `HOTSPOT_RECT` | left=0x012E, top=0x00A0, right=0x0146, bottom=0x00B2, target=0x0B1C, cursor=0x09 |
| `0x07D0` | `HOTSPOT_RECT` | left=0x0104, top=0x00B0, right=0x011A, bottom=0x00C7, target=0x0B54, cursor=0x09 |
| `0x07EB` | `HOTSPOT_RECT` | left=0x012E, top=0x0064, right=0x0147, bottom=0x0076, target=0x0A04, cursor=0x0A |
| `0x0806` | `HOTSPOT_RECT` | left=0x0141, top=0x007E, right=0x0154, bottom=0x0090, target=0x0A3C, cursor=0x09 |
| `0x0821` | `HOTSPOT_RECT` | left=0x0118, top=0x0091, right=0x0128, bottom=0x00A2, target=0x0B8C, cursor=0x0A |
| `0x083C` | `HOTSPOT_RECT` | left=0x016A, top=0x007E, right=0x0186, bottom=0x0092, target=0x0A74, cursor=0x09 |
| `0x0857` | `HOTSPOT_RECT` | left=0x00F2, top=0x007C, right=0x0105, bottom=0x0096, target=0x0BC4, cursor=0x0A |
| `0x0872` | `HOTSPOT_RECT` | left=0x014B, top=0x0093, right=0x015F, bottom=0x00A5, target=0x0AAC, cursor=0x0A |
| `0x088D` | `HOTSPOT_RECT` | left=0x011F, top=0x007C, right=0x0133, bottom=0x008F, target=0x0BFC, cursor=0x09 |
| `0x08A8` | `HOTSPOT_RECT` | left=0x012E, top=0x0064, right=0x0147, bottom=0x0076, target=0x0A04, cursor=0x0A |
| `0x08C3` | `HOTSPOT_RECT` | left=0x015E, top=0x00AF, right=0x0171, bottom=0x00C9, target=0x0AE4, cursor=0x0A |
| `0x08DE` | `HOTSPOT_RECT` | left=0x012E, top=0x00A0, right=0x0146, bottom=0x00B2, target=0x0B1C, cursor=0x09 |
| `0x08F9` | `HOTSPOT_RECT` | left=0x0141, top=0x007E, right=0x0154, bottom=0x0090, target=0x0A3C, cursor=0x09 |
| `0x0914` | `HOTSPOT_RECT` | left=0x0104, top=0x00B0, right=0x011A, bottom=0x00C7, target=0x0B54, cursor=0x09 |
| `0x092F` | `HOTSPOT_RECT` | left=0x016A, top=0x007E, right=0x0186, bottom=0x0092, target=0x0A74, cursor=0x09 |

## HM.GRV

Input loops: 4

### Loop `0x091A`–`0x0A09`

Nearest preceding video in file order: VIDEOREF@0x0916 0x505D (GAMWAV[93]=16_e_4.vdx)

Scene candidates: VIDEOREF@0x00B4 0x509D (GAMWAV[157]=gen_s_6.vdx); VIDEO_TRANSITION_REF@0x0106 0x2005 (HTBD[5]=ht2pb.vdx); VIDEO_TRANSITION_REF@0x0144 0x2001 (HTBD[1]=ht1pb.vdx); VIDEO_TRANSITION_REF@0x0182 0x206D (HTBD[109]=bd1pb.vdx); VIDEO_TRANSITION_REF@0x01C0 0x2070 (HTBD[112]=bd2pb.vdx); VIDEOREF@0x03D9 0x2005 (HTBD[5]=ht2pb.vdx); VIDEOREF@0x0404 0x2070 (HTBD[112]=bd2pb.vdx); VIDEOREF@0x08F8 0x5021 (GAMWAV[33]=6_s_4.vdx); VIDEOREF@0x0916 0x505D (GAMWAV[93]=16_e_4.vdx); VIDEOREF@0x0B1A 0x505E (GAMWAV[94]=16_e_5.vdx); VIDEOREF@0x0B34 0x505C (GAMWAV[92]=16_e_3.vdx); VIDEO_NAME@0x0DB0 "htba{v018}"; VIDEO_NAME@0x0DC0 "bd2h{v018}"; VIDEO_NAME@0x0DDF "htba{v018}"; VIDEO_NAME@0x0DFE "htaa{v018}"; VIDEO_NAME@0x0E11 "htba{v018}"; VIDEO_NAME@0x0E22 "bd1h{v018}"; VIDEO_NAME@0x0E41 "htba{v018}"; VIDEO_NAME@0x0E52 "bd1h{v018}"; VIDEO_NAME@0x0E6E "bd2h{v018}"; VIDEO_NAME@0x0E8D "htab{v018}"; VIDEO_NAME@0x0EA0 "htbb{v018}"; VIDEO_NAME@0x0EB1 "bd1h{v018}"; VIDEO_NAME@0x0EC1 "bd2h{v018}"; VIDEO_NAME@0x0EE0 "htab{v018}"; VIDEO_NAME@0x0EFF "htab{v018}"; VIDEO_NAME@0x0F10 "bd1h{v018}"; VIDEO_NAME@0x0F2F "htbb{v018}"; VIDEO_NAME@0x0F4C "bd1h{v018}"; VIDEO_NAME@0x0F6B "htaa{v018}"; VIDEO_NAME@0x0F7B "bd2h{v018}"; VIDEO_NAME@0x0F9A "htaa{v018}"; VIDEO_NAME@0x0FAD "htba{v018}"; VIDEO_NAME@0x0FBD "bd2h{v018}"; VIDEO_NAME@0x0FDC "htaa{v018}"; VIDEO_NAME@0x0FEC "bd2h{v018}"; VIDEO_NAME@0x100B "htaa{v018}"; VIDEO_NAME@0x101C "bd1h{v018}"; VIDEO_NAME@0x103B "htaa{v018}"; VIDEO_NAME@0x105A "htba{v018}"; VIDEO_NAME@0x1077 "bd1h{v018}"; VIDEO_NAME@0x1094 "bd1h{v018}"; VIDEO_NAME@0x10A4 "bd2h{v018}"; VIDEO_NAME@0x10C3 "htab{v018}"; VIDEO_NAME@0x10D6 "htbb{v018}"; VIDEO_NAME@0x10E7 "bd1h{v018}"; VIDEO_NAME@0x10F7 "bd2h{v018}"; VIDEO_NAME@0x1116 "htab{v018}"; VIDEO_NAME@0x1127 "bd1h{v018}"; VIDEO_NAME@0x1137 "bd2h{v018}"; VIDEO_NAME@0x1156 "htab{v018}"; VIDEO_NAME@0x1167 "bd1h{v018}"; VIDEO_NAME@0x1177 "bd2h{v018}"; VIDEO_NAME@0x1196 "htbb{v018}"; VIDEO_NAME@0x11A7 "bd1h{v018}"; VIDEO_NAME@0x11C4 "bd1h{v018}"; VIDEO_NAME@0x11E1 "bd1h{v018}"; VIDEO_NAME@0x1200 "htaa{v018}"; VIDEO_NAME@0x1213 "htba{v018}"; VIDEO_NAME@0x1224 "bd1h{v018}"; VIDEO_NAME@0x1243 "htba{v018}"; VIDEO_NAME@0x1253 "bd2h{v018}"; VIDEO_NAME@0x1272 "htba{v018}"; VIDEO_NAME@0x1282 "bd2h{v018}"; VIDEO_NAME@0x12A1 "htba{v018}"; VIDEO_NAME@0x12B2 "bd1h{v018}"; VIDEO_NAME@0x12C2 "bd2h{v018}"; VIDEO_NAME@0x12E1 "htaa{v018}"; VIDEO_NAME@0x12FE "bd1h{v018}"; VIDEO_NAME@0x131A "bd2h{v018}"; VIDEO_NAME@0x1337 "bd1h{v018}"; VIDEO_NAME@0x1347 "bd2h{v018}"; VIDEO_NAME@0x1364 "bd1h{v018}"; VIDEO_NAME@0x1381 "bd1h{v018}"; VIDEO_NAME@0x139E "bd1h{v018}"; VIDEOREF@0x13E4 0x508B (GAMWAV[139]=gen_e_5.vdx); VIDEO_TRANSITION_REF@0x13ED 0x2001 (HTBD[1]=ht1pb.vdx); VIDEO_TRANSITION_REF@0x13F5 0x2005 (HTBD[5]=ht2pb.vdx); VIDEO_TRANSITION_REF@0x13FD 0x206D (HTBD[109]=bd1pb.vdx); VIDEO_TRANSITION_REF@0x1405 0x2070 (HTBD[112]=bd2pb.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0920` | `HOTSPOT_RECT` | left=0x012A, top=0x0056, right=0x0154, bottom=0x0089, target=0x0DF3, cursor=0x09 |
| `0x0931` | `HOTSPOT_RECT` | left=0x00F8, top=0x008B, right=0x0125, bottom=0x00C0, target=0x0E82, cursor=0x0A |
| `0x0942` | `HOTSPOT_RECT` | left=0x0129, top=0x008C, right=0x0154, bottom=0x00C0, target=0x0ED5, cursor=0x09 |
| `0x0953` | `HOTSPOT_RECT` | left=0x0159, top=0x008C, right=0x0185, bottom=0x00BF, target=0x0EF4, cursor=0x0A |
| `0x0964` | `HOTSPOT_RECT` | left=0x00C2, top=0x00C4, right=0x00F2, bottom=0x00FC, target=0x0F60, cursor=0x09 |
| `0x0975` | `HOTSPOT_RECT` | left=0x00F7, top=0x00C4, right=0x0123, bottom=0x00FC, target=0x0F8F, cursor=0x0A |
| `0x0986` | `HOTSPOT_RECT` | left=0x0129, top=0x00C5, right=0x0154, bottom=0x00FC, target=0x0FD1, cursor=0x09 |
| `0x0997` | `HOTSPOT_RECT` | left=0x015B, top=0x00C5, right=0x0187, bottom=0x00FC, target=0x1000, cursor=0x0A |
| `0x09A8` | `HOTSPOT_RECT` | left=0x018C, top=0x00C5, right=0x01BA, bottom=0x00FC, target=0x1030, cursor=0x09 |
| `0x09B9` | `HOTSPOT_RECT` | left=0x00F2, top=0x0102, right=0x0121, bottom=0x013E, target=0x10B8, cursor=0x0A |
| `0x09CA` | `HOTSPOT_RECT` | left=0x0127, top=0x0102, right=0x0155, bottom=0x013E, target=0x110B, cursor=0x09 |
| `0x09DB` | `HOTSPOT_RECT` | left=0x015C, top=0x0103, right=0x018B, bottom=0x013F, target=0x114B, cursor=0x0A |
| `0x09EC` | `HOTSPOT_RECT` | left=0x00B7, top=0x0146, right=0x00EA, bottom=0x0188, target=0x11F5, cursor=0x09 |
| `0x09FD` | `HOTSPOT_RECT` | left=0x0196, top=0x0145, right=0x01C6, bottom=0x0188, target=0x12D6, cursor=0x0A |

### Loop `0x0A0F`–`0x0AFE`

Nearest preceding video in file order: VIDEOREF@0x0916 0x505D (GAMWAV[93]=16_e_4.vdx)

Scene candidates: VIDEOREF@0x00B4 0x509D (GAMWAV[157]=gen_s_6.vdx); VIDEO_TRANSITION_REF@0x0106 0x2005 (HTBD[5]=ht2pb.vdx); VIDEO_TRANSITION_REF@0x0144 0x2001 (HTBD[1]=ht1pb.vdx); VIDEO_TRANSITION_REF@0x0182 0x206D (HTBD[109]=bd1pb.vdx); VIDEO_TRANSITION_REF@0x01C0 0x2070 (HTBD[112]=bd2pb.vdx); VIDEOREF@0x03D9 0x2005 (HTBD[5]=ht2pb.vdx); VIDEOREF@0x0404 0x2070 (HTBD[112]=bd2pb.vdx); VIDEOREF@0x08F8 0x5021 (GAMWAV[33]=6_s_4.vdx); VIDEOREF@0x0916 0x505D (GAMWAV[93]=16_e_4.vdx); VIDEOREF@0x0B1A 0x505E (GAMWAV[94]=16_e_5.vdx); VIDEOREF@0x0B34 0x505C (GAMWAV[92]=16_e_3.vdx); VIDEO_NAME@0x0DB0 "htba{v018}"; VIDEO_NAME@0x0DC0 "bd2h{v018}"; VIDEO_NAME@0x0DDF "htba{v018}"; VIDEO_NAME@0x0DFE "htaa{v018}"; VIDEO_NAME@0x0E11 "htba{v018}"; VIDEO_NAME@0x0E22 "bd1h{v018}"; VIDEO_NAME@0x0E41 "htba{v018}"; VIDEO_NAME@0x0E52 "bd1h{v018}"; VIDEO_NAME@0x0E6E "bd2h{v018}"; VIDEO_NAME@0x0E8D "htab{v018}"; VIDEO_NAME@0x0EA0 "htbb{v018}"; VIDEO_NAME@0x0EB1 "bd1h{v018}"; VIDEO_NAME@0x0EC1 "bd2h{v018}"; VIDEO_NAME@0x0EE0 "htab{v018}"; VIDEO_NAME@0x0EFF "htab{v018}"; VIDEO_NAME@0x0F10 "bd1h{v018}"; VIDEO_NAME@0x0F2F "htbb{v018}"; VIDEO_NAME@0x0F4C "bd1h{v018}"; VIDEO_NAME@0x0F6B "htaa{v018}"; VIDEO_NAME@0x0F7B "bd2h{v018}"; VIDEO_NAME@0x0F9A "htaa{v018}"; VIDEO_NAME@0x0FAD "htba{v018}"; VIDEO_NAME@0x0FBD "bd2h{v018}"; VIDEO_NAME@0x0FDC "htaa{v018}"; VIDEO_NAME@0x0FEC "bd2h{v018}"; VIDEO_NAME@0x100B "htaa{v018}"; VIDEO_NAME@0x101C "bd1h{v018}"; VIDEO_NAME@0x103B "htaa{v018}"; VIDEO_NAME@0x105A "htba{v018}"; VIDEO_NAME@0x1077 "bd1h{v018}"; VIDEO_NAME@0x1094 "bd1h{v018}"; VIDEO_NAME@0x10A4 "bd2h{v018}"; VIDEO_NAME@0x10C3 "htab{v018}"; VIDEO_NAME@0x10D6 "htbb{v018}"; VIDEO_NAME@0x10E7 "bd1h{v018}"; VIDEO_NAME@0x10F7 "bd2h{v018}"; VIDEO_NAME@0x1116 "htab{v018}"; VIDEO_NAME@0x1127 "bd1h{v018}"; VIDEO_NAME@0x1137 "bd2h{v018}"; VIDEO_NAME@0x1156 "htab{v018}"; VIDEO_NAME@0x1167 "bd1h{v018}"; VIDEO_NAME@0x1177 "bd2h{v018}"; VIDEO_NAME@0x1196 "htbb{v018}"; VIDEO_NAME@0x11A7 "bd1h{v018}"; VIDEO_NAME@0x11C4 "bd1h{v018}"; VIDEO_NAME@0x11E1 "bd1h{v018}"; VIDEO_NAME@0x1200 "htaa{v018}"; VIDEO_NAME@0x1213 "htba{v018}"; VIDEO_NAME@0x1224 "bd1h{v018}"; VIDEO_NAME@0x1243 "htba{v018}"; VIDEO_NAME@0x1253 "bd2h{v018}"; VIDEO_NAME@0x1272 "htba{v018}"; VIDEO_NAME@0x1282 "bd2h{v018}"; VIDEO_NAME@0x12A1 "htba{v018}"; VIDEO_NAME@0x12B2 "bd1h{v018}"; VIDEO_NAME@0x12C2 "bd2h{v018}"; VIDEO_NAME@0x12E1 "htaa{v018}"; VIDEO_NAME@0x12FE "bd1h{v018}"; VIDEO_NAME@0x131A "bd2h{v018}"; VIDEO_NAME@0x1337 "bd1h{v018}"; VIDEO_NAME@0x1347 "bd2h{v018}"; VIDEO_NAME@0x1364 "bd1h{v018}"; VIDEO_NAME@0x1381 "bd1h{v018}"; VIDEO_NAME@0x139E "bd1h{v018}"; VIDEOREF@0x13E4 0x508B (GAMWAV[139]=gen_e_5.vdx); VIDEO_TRANSITION_REF@0x13ED 0x2001 (HTBD[1]=ht1pb.vdx); VIDEO_TRANSITION_REF@0x13F5 0x2005 (HTBD[5]=ht2pb.vdx); VIDEO_TRANSITION_REF@0x13FD 0x206D (HTBD[109]=bd1pb.vdx); VIDEO_TRANSITION_REF@0x1405 0x2070 (HTBD[112]=bd2pb.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0A15` | `HOTSPOT_RECT` | left=0x00EA, top=0x0058, right=0x0113, bottom=0x0087, target=0x0DA5, cursor=0x09 |
| `0x0A26` | `HOTSPOT_RECT` | left=0x0118, top=0x0058, right=0x0141, bottom=0x0087, target=0x0DD4, cursor=0x0A |
| `0x0A37` | `HOTSPOT_RECT` | left=0x0147, top=0x0059, right=0x016E, bottom=0x0086, target=0x0DF3, cursor=0x09 |
| `0x0A48` | `HOTSPOT_RECT` | left=0x0174, top=0x0058, right=0x019D, bottom=0x0087, target=0x0E36, cursor=0x0A |
| `0x0A59` | `HOTSPOT_RECT` | left=0x0116, top=0x008C, right=0x0142, bottom=0x00BF, target=0x0E82, cursor=0x09 |
| `0x0A6A` | `HOTSPOT_RECT` | left=0x01A5, top=0x008C, right=0x01D3, bottom=0x00BF, target=0x0F24, cursor=0x0A |
| `0x0A7B` | `HOTSPOT_RECT` | left=0x0114, top=0x00C5, right=0x0142, bottom=0x00FC, target=0x0F8F, cursor=0x09 |
| `0x0A8C` | `HOTSPOT_RECT` | left=0x01D9, top=0x00C5, right=0x020D, bottom=0x00FC, target=0x104F, cursor=0x0A |
| `0x0A9D` | `HOTSPOT_RECT` | left=0x0112, top=0x0102, right=0x0141, bottom=0x013F, target=0x10B8, cursor=0x09 |
| `0x0AAE` | `HOTSPOT_RECT` | left=0x01AD, top=0x0102, right=0x01E1, bottom=0x013F, target=0x118B, cursor=0x0A |
| `0x0ABF` | `HOTSPOT_RECT` | left=0x00D8, top=0x0146, right=0x010B, bottom=0x0189, target=0x11F5, cursor=0x09 |
| `0x0AD0` | `HOTSPOT_RECT` | left=0x0110, top=0x0146, right=0x0140, bottom=0x0188, target=0x1238, cursor=0x0A |
| `0x0AE1` | `HOTSPOT_RECT` | left=0x0148, top=0x0146, right=0x0179, bottom=0x0188, target=0x1267, cursor=0x09 |
| `0x0AF2` | `HOTSPOT_RECT` | left=0x017E, top=0x0146, right=0x01B0, bottom=0x0188, target=0x1296, cursor=0x0A |

### Loop `0x0B38`–`0x0C9E`

Nearest preceding video in file order: VIDEOREF@0x0B34 0x505C (GAMWAV[92]=16_e_3.vdx)

Scene candidates: VIDEOREF@0x00B4 0x509D (GAMWAV[157]=gen_s_6.vdx); VIDEO_TRANSITION_REF@0x0106 0x2005 (HTBD[5]=ht2pb.vdx); VIDEO_TRANSITION_REF@0x0144 0x2001 (HTBD[1]=ht1pb.vdx); VIDEO_TRANSITION_REF@0x0182 0x206D (HTBD[109]=bd1pb.vdx); VIDEO_TRANSITION_REF@0x01C0 0x2070 (HTBD[112]=bd2pb.vdx); VIDEOREF@0x03D9 0x2005 (HTBD[5]=ht2pb.vdx); VIDEOREF@0x0404 0x2070 (HTBD[112]=bd2pb.vdx); VIDEOREF@0x08F8 0x5021 (GAMWAV[33]=6_s_4.vdx); VIDEOREF@0x0916 0x505D (GAMWAV[93]=16_e_4.vdx); VIDEOREF@0x0B1A 0x505E (GAMWAV[94]=16_e_5.vdx); VIDEOREF@0x0B34 0x505C (GAMWAV[92]=16_e_3.vdx); VIDEO_NAME@0x0DB0 "htba{v018}"; VIDEO_NAME@0x0DC0 "bd2h{v018}"; VIDEO_NAME@0x0DDF "htba{v018}"; VIDEO_NAME@0x0DFE "htaa{v018}"; VIDEO_NAME@0x0E11 "htba{v018}"; VIDEO_NAME@0x0E22 "bd1h{v018}"; VIDEO_NAME@0x0E41 "htba{v018}"; VIDEO_NAME@0x0E52 "bd1h{v018}"; VIDEO_NAME@0x0E6E "bd2h{v018}"; VIDEO_NAME@0x0E8D "htab{v018}"; VIDEO_NAME@0x0EA0 "htbb{v018}"; VIDEO_NAME@0x0EB1 "bd1h{v018}"; VIDEO_NAME@0x0EC1 "bd2h{v018}"; VIDEO_NAME@0x0EE0 "htab{v018}"; VIDEO_NAME@0x0EFF "htab{v018}"; VIDEO_NAME@0x0F10 "bd1h{v018}"; VIDEO_NAME@0x0F2F "htbb{v018}"; VIDEO_NAME@0x0F4C "bd1h{v018}"; VIDEO_NAME@0x0F6B "htaa{v018}"; VIDEO_NAME@0x0F7B "bd2h{v018}"; VIDEO_NAME@0x0F9A "htaa{v018}"; VIDEO_NAME@0x0FAD "htba{v018}"; VIDEO_NAME@0x0FBD "bd2h{v018}"; VIDEO_NAME@0x0FDC "htaa{v018}"; VIDEO_NAME@0x0FEC "bd2h{v018}"; VIDEO_NAME@0x100B "htaa{v018}"; VIDEO_NAME@0x101C "bd1h{v018}"; VIDEO_NAME@0x103B "htaa{v018}"; VIDEO_NAME@0x105A "htba{v018}"; VIDEO_NAME@0x1077 "bd1h{v018}"; VIDEO_NAME@0x1094 "bd1h{v018}"; VIDEO_NAME@0x10A4 "bd2h{v018}"; VIDEO_NAME@0x10C3 "htab{v018}"; VIDEO_NAME@0x10D6 "htbb{v018}"; VIDEO_NAME@0x10E7 "bd1h{v018}"; VIDEO_NAME@0x10F7 "bd2h{v018}"; VIDEO_NAME@0x1116 "htab{v018}"; VIDEO_NAME@0x1127 "bd1h{v018}"; VIDEO_NAME@0x1137 "bd2h{v018}"; VIDEO_NAME@0x1156 "htab{v018}"; VIDEO_NAME@0x1167 "bd1h{v018}"; VIDEO_NAME@0x1177 "bd2h{v018}"; VIDEO_NAME@0x1196 "htbb{v018}"; VIDEO_NAME@0x11A7 "bd1h{v018}"; VIDEO_NAME@0x11C4 "bd1h{v018}"; VIDEO_NAME@0x11E1 "bd1h{v018}"; VIDEO_NAME@0x1200 "htaa{v018}"; VIDEO_NAME@0x1213 "htba{v018}"; VIDEO_NAME@0x1224 "bd1h{v018}"; VIDEO_NAME@0x1243 "htba{v018}"; VIDEO_NAME@0x1253 "bd2h{v018}"; VIDEO_NAME@0x1272 "htba{v018}"; VIDEO_NAME@0x1282 "bd2h{v018}"; VIDEO_NAME@0x12A1 "htba{v018}"; VIDEO_NAME@0x12B2 "bd1h{v018}"; VIDEO_NAME@0x12C2 "bd2h{v018}"; VIDEO_NAME@0x12E1 "htaa{v018}"; VIDEO_NAME@0x12FE "bd1h{v018}"; VIDEO_NAME@0x131A "bd2h{v018}"; VIDEO_NAME@0x1337 "bd1h{v018}"; VIDEO_NAME@0x1347 "bd2h{v018}"; VIDEO_NAME@0x1364 "bd1h{v018}"; VIDEO_NAME@0x1381 "bd1h{v018}"; VIDEO_NAME@0x139E "bd1h{v018}"; VIDEOREF@0x13E4 0x508B (GAMWAV[139]=gen_e_5.vdx); VIDEO_TRANSITION_REF@0x13ED 0x2001 (HTBD[1]=ht1pb.vdx); VIDEO_TRANSITION_REF@0x13F5 0x2005 (HTBD[5]=ht2pb.vdx); VIDEO_TRANSITION_REF@0x13FD 0x206D (HTBD[109]=bd1pb.vdx); VIDEO_TRANSITION_REF@0x1405 0x2070 (HTBD[112]=bd2pb.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0B3E` | `HOTSPOT_RECT` | left=0x0104, top=0x005E, right=0x0127, bottom=0x0082, target=0x0DF3, cursor=0x09 |
| `0x0B4F` | `HOTSPOT_RECT` | left=0x012E, top=0x005D, right=0x0153, bottom=0x0084, target=0x0E36, cursor=0x0A |
| `0x0B60` | `HOTSPOT_RECT` | left=0x00D9, top=0x0088, right=0x00FE, bottom=0x00AD, target=0x0E82, cursor=0x09 |
| `0x0B71` | `HOTSPOT_RECT` | left=0x012E, top=0x0088, right=0x0151, bottom=0x00AC, target=0x0EF4, cursor=0x0A |
| `0x0B82` | `HOTSPOT_RECT` | left=0x0183, top=0x0088, right=0x01A6, bottom=0x00AC, target=0x0F43, cursor=0x09 |
| `0x0B93` | `HOTSPOT_RECT` | left=0x012F, top=0x00B2, right=0x0152, bottom=0x00D7, target=0x1000, cursor=0x0A |
| `0x0BA4` | `HOTSPOT_RECT` | left=0x01AD, top=0x00B3, right=0x01D2, bottom=0x00D8, target=0x106E, cursor=0x09 |
| `0x0BB5` | `HOTSPOT_RECT` | left=0x00AE, top=0x00DC, right=0x00D3, bottom=0x0102, target=0x108B, cursor=0x0A |
| `0x0BC6` | `HOTSPOT_RECT` | left=0x00D9, top=0x00DD, right=0x00FC, bottom=0x0101, target=0x10B8, cursor=0x09 |
| `0x0BD7` | `HOTSPOT_RECT` | left=0x0103, top=0x00DD, right=0x0127, bottom=0x0101, target=0x110B, cursor=0x0A |
| `0x0BE8` | `HOTSPOT_RECT` | left=0x012F, top=0x00DE, right=0x0152, bottom=0x0100, target=0x114B, cursor=0x09 |
| `0x0BF9` | `HOTSPOT_RECT` | left=0x0158, top=0x00DC, right=0x017B, bottom=0x0101, target=0x118B, cursor=0x0A |
| `0x0C0A` | `HOTSPOT_RECT` | left=0x0183, top=0x00DC, right=0x01A7, bottom=0x0102, target=0x11BB, cursor=0x09 |
| `0x0C1B` | `HOTSPOT_RECT` | left=0x01AC, top=0x00DD, right=0x01D2, bottom=0x0102, target=0x11D8, cursor=0x0A |
| `0x0C2C` | `HOTSPOT_RECT` | left=0x00AE, top=0x0107, right=0x00D2, bottom=0x012C, target=0x11F5, cursor=0x09 |
| `0x0C3D` | `HOTSPOT_RECT` | left=0x012E, top=0x0107, right=0x0151, bottom=0x012B, target=0x1296, cursor=0x0A |
| `0x0C4E` | `HOTSPOT_RECT` | left=0x00D9, top=0x0132, right=0x00FD, bottom=0x0157, target=0x12F5, cursor=0x09 |
| `0x0C5F` | `HOTSPOT_RECT` | left=0x012D, top=0x0132, right=0x0151, bottom=0x0157, target=0x132E, cursor=0x0A |
| `0x0C70` | `HOTSPOT_RECT` | left=0x0183, top=0x0132, right=0x01A7, bottom=0x0156, target=0x135B, cursor=0x09 |
| `0x0C81` | `HOTSPOT_RECT` | left=0x012E, top=0x015C, right=0x0152, bottom=0x0182, target=0x1378, cursor=0x0A |
| `0x0C92` | `HOTSPOT_RECT` | left=0x0158, top=0x015D, right=0x017E, bottom=0x0183, target=0x1395, cursor=0x09 |

### Loop `0x0CA4`–`0x0DA4`

Nearest preceding video in file order: VIDEOREF@0x0B34 0x505C (GAMWAV[92]=16_e_3.vdx)

Scene candidates: VIDEOREF@0x00B4 0x509D (GAMWAV[157]=gen_s_6.vdx); VIDEO_TRANSITION_REF@0x0106 0x2005 (HTBD[5]=ht2pb.vdx); VIDEO_TRANSITION_REF@0x0144 0x2001 (HTBD[1]=ht1pb.vdx); VIDEO_TRANSITION_REF@0x0182 0x206D (HTBD[109]=bd1pb.vdx); VIDEO_TRANSITION_REF@0x01C0 0x2070 (HTBD[112]=bd2pb.vdx); VIDEOREF@0x03D9 0x2005 (HTBD[5]=ht2pb.vdx); VIDEOREF@0x0404 0x2070 (HTBD[112]=bd2pb.vdx); VIDEOREF@0x08F8 0x5021 (GAMWAV[33]=6_s_4.vdx); VIDEOREF@0x0916 0x505D (GAMWAV[93]=16_e_4.vdx); VIDEOREF@0x0B1A 0x505E (GAMWAV[94]=16_e_5.vdx); VIDEOREF@0x0B34 0x505C (GAMWAV[92]=16_e_3.vdx); VIDEO_NAME@0x0DB0 "htba{v018}"; VIDEO_NAME@0x0DC0 "bd2h{v018}"; VIDEO_NAME@0x0DDF "htba{v018}"; VIDEO_NAME@0x0DFE "htaa{v018}"; VIDEO_NAME@0x0E11 "htba{v018}"; VIDEO_NAME@0x0E22 "bd1h{v018}"; VIDEO_NAME@0x0E41 "htba{v018}"; VIDEO_NAME@0x0E52 "bd1h{v018}"; VIDEO_NAME@0x0E6E "bd2h{v018}"; VIDEO_NAME@0x0E8D "htab{v018}"; VIDEO_NAME@0x0EA0 "htbb{v018}"; VIDEO_NAME@0x0EB1 "bd1h{v018}"; VIDEO_NAME@0x0EC1 "bd2h{v018}"; VIDEO_NAME@0x0EE0 "htab{v018}"; VIDEO_NAME@0x0EFF "htab{v018}"; VIDEO_NAME@0x0F10 "bd1h{v018}"; VIDEO_NAME@0x0F2F "htbb{v018}"; VIDEO_NAME@0x0F4C "bd1h{v018}"; VIDEO_NAME@0x0F6B "htaa{v018}"; VIDEO_NAME@0x0F7B "bd2h{v018}"; VIDEO_NAME@0x0F9A "htaa{v018}"; VIDEO_NAME@0x0FAD "htba{v018}"; VIDEO_NAME@0x0FBD "bd2h{v018}"; VIDEO_NAME@0x0FDC "htaa{v018}"; VIDEO_NAME@0x0FEC "bd2h{v018}"; VIDEO_NAME@0x100B "htaa{v018}"; VIDEO_NAME@0x101C "bd1h{v018}"; VIDEO_NAME@0x103B "htaa{v018}"; VIDEO_NAME@0x105A "htba{v018}"; VIDEO_NAME@0x1077 "bd1h{v018}"; VIDEO_NAME@0x1094 "bd1h{v018}"; VIDEO_NAME@0x10A4 "bd2h{v018}"; VIDEO_NAME@0x10C3 "htab{v018}"; VIDEO_NAME@0x10D6 "htbb{v018}"; VIDEO_NAME@0x10E7 "bd1h{v018}"; VIDEO_NAME@0x10F7 "bd2h{v018}"; VIDEO_NAME@0x1116 "htab{v018}"; VIDEO_NAME@0x1127 "bd1h{v018}"; VIDEO_NAME@0x1137 "bd2h{v018}"; VIDEO_NAME@0x1156 "htab{v018}"; VIDEO_NAME@0x1167 "bd1h{v018}"; VIDEO_NAME@0x1177 "bd2h{v018}"; VIDEO_NAME@0x1196 "htbb{v018}"; VIDEO_NAME@0x11A7 "bd1h{v018}"; VIDEO_NAME@0x11C4 "bd1h{v018}"; VIDEO_NAME@0x11E1 "bd1h{v018}"; VIDEO_NAME@0x1200 "htaa{v018}"; VIDEO_NAME@0x1213 "htba{v018}"; VIDEO_NAME@0x1224 "bd1h{v018}"; VIDEO_NAME@0x1243 "htba{v018}"; VIDEO_NAME@0x1253 "bd2h{v018}"; VIDEO_NAME@0x1272 "htba{v018}"; VIDEO_NAME@0x1282 "bd2h{v018}"; VIDEO_NAME@0x12A1 "htba{v018}"; VIDEO_NAME@0x12B2 "bd1h{v018}"; VIDEO_NAME@0x12C2 "bd2h{v018}"; VIDEO_NAME@0x12E1 "htaa{v018}"; VIDEO_NAME@0x12FE "bd1h{v018}"; VIDEO_NAME@0x131A "bd2h{v018}"; VIDEO_NAME@0x1337 "bd1h{v018}"; VIDEO_NAME@0x1347 "bd2h{v018}"; VIDEO_NAME@0x1364 "bd1h{v018}"; VIDEO_NAME@0x1381 "bd1h{v018}"; VIDEO_NAME@0x139E "bd1h{v018}"; VIDEOREF@0x13E4 0x508B (GAMWAV[139]=gen_e_5.vdx); VIDEO_TRANSITION_REF@0x13ED 0x2001 (HTBD[1]=ht1pb.vdx); VIDEO_TRANSITION_REF@0x13F5 0x2005 (HTBD[5]=ht2pb.vdx); VIDEO_TRANSITION_REF@0x13FD 0x206D (HTBD[109]=bd1pb.vdx); VIDEO_TRANSITION_REF@0x1405 0x2070 (HTBD[112]=bd2pb.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0CAA` | `HOTSPOT_RECT` | left=0x00EE, top=0x0074, right=0x0112, bottom=0x0099, target=0x0DA5, cursor=0x09 |
| `0x0CBB` | `HOTSPOT_RECT` | left=0x00EC, top=0x009D, right=0x0111, bottom=0x00C2, target=0x0E66, cursor=0x0A |
| `0x0CCC` | `HOTSPOT_RECT` | left=0x0118, top=0x009E, right=0x013C, bottom=0x00C2, target=0x0E82, cursor=0x09 |
| `0x0CDD` | `HOTSPOT_RECT` | left=0x00ED, top=0x00C8, right=0x0111, bottom=0x00EC, target=0x0F60, cursor=0x0A |
| `0x0CEE` | `HOTSPOT_RECT` | left=0x0118, top=0x00C8, right=0x013B, bottom=0x00EB, target=0x0F8F, cursor=0x09 |
| `0x0CFF` | `HOTSPOT_RECT` | left=0x0142, top=0x00C8, right=0x0165, bottom=0x00EB, target=0x0FD1, cursor=0x0A |
| `0x0D10` | `HOTSPOT_RECT` | left=0x00EE, top=0x00F2, right=0x0111, bottom=0x0116, target=0x108B, cursor=0x09 |
| `0x0D21` | `HOTSPOT_RECT` | left=0x0117, top=0x00F3, right=0x013C, bottom=0x0115, target=0x10B8, cursor=0x0A |
| `0x0D32` | `HOTSPOT_RECT` | left=0x0142, top=0x00F3, right=0x0165, bottom=0x0116, target=0x110B, cursor=0x09 |
| `0x0D43` | `HOTSPOT_RECT` | left=0x016B, top=0x00F3, right=0x0190, bottom=0x0115, target=0x114B, cursor=0x0A |
| `0x0D54` | `HOTSPOT_RECT` | left=0x0117, top=0x011C, right=0x013B, bottom=0x0140, target=0x1238, cursor=0x09 |
| `0x0D65` | `HOTSPOT_RECT` | left=0x0144, top=0x011D, right=0x0165, bottom=0x0140, target=0x1267, cursor=0x0A |
| `0x0D76` | `HOTSPOT_RECT` | left=0x016C, top=0x011E, right=0x018E, bottom=0x0141, target=0x1296, cursor=0x09 |
| `0x0D87` | `HOTSPOT_RECT` | left=0x0142, top=0x0147, right=0x0166, bottom=0x016C, target=0x1312, cursor=0x0A |
| `0x0D98` | `HOTSPOT_RECT` | left=0x016C, top=0x0146, right=0x0191, bottom=0x016C, target=0x132E, cursor=0x09 |

## JH.GRV

Input loops: 1

### Loop `0x00E3`–`0x0258`

Nearest preceding video in file order: VIDEOREF@0x00DA 0x509C (GAMWAV[156]=gen_s_5.vdx)

Scene candidates: VIDEOREF@0x0025 0x5069 (GAMWAV[105]=20_s_1.vdx); VIDEOREF@0x00AE 0x5068 (GAMWAV[104]=20_e_3.vdx); VIDEOREF@0x00C4 0x5039 (GAMWAV[57]=8_s_13.vdx); VIDEOREF@0x00DA 0x509C (GAMWAV[156]=gen_s_5.vdx); VIDEOREF@0x025E 0x281E (JHEK[30]=jh1a.vdx); VIDEOREF@0x0267 0x2800 (JHEK[0]=jh0a.vdx); VIDEOREF@0x0275 0x2820 (JHEK[32]=jh1b.vdx); VIDEOREF@0x027E 0x2802 (JHEK[2]=jh0b.vdx); VIDEOREF@0x028C 0x2822 (JHEK[34]=jh1c.vdx); VIDEOREF@0x0295 0x2804 (JHEK[4]=jh0c.vdx); VIDEOREF@0x02A3 0x2824 (JHEK[36]=jh1d.vdx); VIDEOREF@0x02AC 0x2806 (JHEK[6]=jh0d.vdx); VIDEOREF@0x02BA 0x2826 (JHEK[38]=jh1e.vdx); VIDEOREF@0x02C3 0x2808 (JHEK[8]=jh0e.vdx); VIDEOREF@0x02D1 0x2827 (JHEK[39]=jh1f.vdx); VIDEOREF@0x02DA 0x2809 (JHEK[9]=jh0f.vdx); VIDEOREF@0x02E8 0x2828 (JHEK[40]=jh1g.vdx); VIDEOREF@0x02F1 0x280A (JHEK[10]=jh0g.vdx); VIDEOREF@0x02FF 0x2829 (JHEK[41]=jh1h.vdx); VIDEOREF@0x0308 0x280B (JHEK[11]=jh0h.vdx); VIDEOREF@0x0316 0x282A (JHEK[42]=jh1i.vdx); VIDEOREF@0x031F 0x280C (JHEK[12]=jh0i.vdx); VIDEOREF@0x032D 0x282B (JHEK[43]=jh1j.vdx); VIDEOREF@0x0336 0x280D (JHEK[13]=jh0j.vdx); VIDEOREF@0x0344 0x282C (JHEK[44]=jh1k.vdx); VIDEOREF@0x034D 0x280E (JHEK[14]=jh0k.vdx); VIDEOREF@0x035B 0x282D (JHEK[45]=jh1l.vdx); VIDEOREF@0x0364 0x280F (JHEK[15]=jh0l.vdx); VIDEOREF@0x0372 0x282E (JHEK[46]=jh1m.vdx); VIDEOREF@0x037B 0x2810 (JHEK[16]=jh0m.vdx); VIDEOREF@0x0389 0x282F (JHEK[47]=jh1n.vdx); VIDEOREF@0x0392 0x2811 (JHEK[17]=jh0n.vdx); VIDEOREF@0x03A0 0x2830 (JHEK[48]=jh1o.vdx); VIDEOREF@0x03A9 0x2812 (JHEK[18]=jh0o.vdx); VIDEOREF@0x03B7 0x2831 (JHEK[49]=jh1p.vdx); VIDEOREF@0x03C0 0x2813 (JHEK[19]=jh0p.vdx); VIDEOREF@0x03CE 0x2832 (JHEK[50]=jh1q.vdx); VIDEOREF@0x03D7 0x2814 (JHEK[20]=jh0q.vdx); VIDEOREF@0x03E5 0x2833 (JHEK[51]=jh1r.vdx); VIDEOREF@0x03EE 0x2815 (JHEK[21]=jh0r.vdx); VIDEOREF@0x03FC 0x2834 (JHEK[52]=jh1s.vdx); VIDEOREF@0x0405 0x2816 (JHEK[22]=jh0s.vdx); VIDEOREF@0x0413 0x2835 (JHEK[53]=jh1t.vdx); VIDEOREF@0x041C 0x2817 (JHEK[23]=jh0t.vdx); VIDEOREF@0x042A 0x2836 (JHEK[54]=jh1u.vdx); VIDEOREF@0x0433 0x2818 (JHEK[24]=jh0u.vdx); VIDEOREF@0x0441 0x2837 (JHEK[55]=jh1v.vdx); VIDEOREF@0x044A 0x2819 (JHEK[25]=jh0v.vdx); VIDEOREF@0x0458 0x2838 (JHEK[56]=jh1w.vdx); VIDEOREF@0x0461 0x281A (JHEK[26]=jh0w.vdx); VIDEOREF@0x046F 0x2839 (JHEK[57]=jh1x.vdx); VIDEOREF@0x0478 0x281B (JHEK[27]=jh0x.vdx); VIDEOREF@0x0486 0x283A (JHEK[58]=jh1y.vdx); VIDEOREF@0x048F 0x281C (JHEK[28]=jh0y.vdx); VIDEOREF@0x049D 0x283B (JHEK[59]=jh1z.vdx); VIDEOREF@0x04A6 0x281D (JHEK[29]=jh0z.vdx); VIDEOREF@0x04B4 0x281F (JHEK[31]=jh1aa.vdx); VIDEOREF@0x04BD 0x2801 (JHEK[1]=jh0aa.vdx); VIDEOREF@0x04CB 0x2821 (JHEK[33]=jh1bb.vdx); VIDEOREF@0x04D4 0x2803 (JHEK[3]=jh0bb.vdx); VIDEOREF@0x04E2 0x2823 (JHEK[35]=jh1cc.vdx); VIDEOREF@0x04EB 0x2805 (JHEK[5]=jh0cc.vdx); VIDEOREF@0x04F9 0x2825 (JHEK[37]=jh1dd.vdx); VIDEOREF@0x0502 0x2807 (JHEK[7]=jh0dd.vdx); VIDEO_TRANSITION_REF@0x0C39 0x2872 (JHEK[114]=jhfout.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x00E4` | `HOTSPOT_RECT` | left=0x006A, top=0x00A5, right=0x0093, bottom=0x00E7, target=0x0A7E, cursor=0x07 |
| `0x00F0` | `HOTSPOT_RECT` | left=0x0133, top=0x007F, right=0x0147, bottom=0x0090, target=0x0259, cursor=0x09 |
| `0x00FC` | `HOTSPOT_RECT` | left=0x0155, top=0x007D, right=0x0169, bottom=0x0091, target=0x0270, cursor=0x0A |
| `0x0108` | `HOTSPOT_RECT` | left=0x0177, top=0x007D, right=0x018E, bottom=0x0090, target=0x0287, cursor=0x09 |
| `0x0114` | `HOTSPOT_RECT` | left=0x00EC, top=0x00A0, right=0x0104, bottom=0x00B2, target=0x029E, cursor=0x0A |
| `0x0120` | `HOTSPOT_RECT` | left=0x010D, top=0x009F, right=0x0123, bottom=0x00B2, target=0x02B5, cursor=0x09 |
| `0x012C` | `HOTSPOT_RECT` | left=0x0132, top=0x00A0, right=0x014A, bottom=0x00B3, target=0x02CC, cursor=0x0A |
| `0x0138` | `HOTSPOT_RECT` | left=0x0155, top=0x00A1, right=0x0167, bottom=0x00B2, target=0x02E3, cursor=0x09 |
| `0x0144` | `HOTSPOT_RECT` | left=0x0178, top=0x009F, right=0x018D, bottom=0x00B2, target=0x02FA, cursor=0x0A |
| `0x0150` | `HOTSPOT_RECT` | left=0x0199, top=0x009E, right=0x01AD, bottom=0x00B0, target=0x0311, cursor=0x09 |
| `0x015C` | `HOTSPOT_RECT` | left=0x00C9, top=0x00C1, right=0x00E0, bottom=0x00D9, target=0x0328, cursor=0x0A |
| `0x0168` | `HOTSPOT_RECT` | left=0x00EC, top=0x00C1, right=0x0100, bottom=0x00D6, target=0x033F, cursor=0x09 |
| `0x0174` | `HOTSPOT_RECT` | left=0x010F, top=0x00C1, right=0x0124, bottom=0x00D5, target=0x0356, cursor=0x0A |
| `0x0180` | `HOTSPOT_RECT` | left=0x012E, top=0x00C1, right=0x0146, bottom=0x00D3, target=0x036D, cursor=0x09 |
| `0x018C` | `HOTSPOT_RECT` | left=0x0155, top=0x00C1, right=0x016A, bottom=0x00D5, target=0x0384, cursor=0x0A |
| `0x0198` | `HOTSPOT_RECT` | left=0x0178, top=0x00C2, right=0x018E, bottom=0x00D5, target=0x039B, cursor=0x09 |
| `0x01A4` | `HOTSPOT_RECT` | left=0x019A, top=0x00C1, right=0x01AE, bottom=0x00D6, target=0x03B2, cursor=0x0A |
| `0x01B0` | `HOTSPOT_RECT` | left=0x00C8, top=0x00E2, right=0x00DD, bottom=0x00F7, target=0x03C9, cursor=0x09 |
| `0x01BC` | `HOTSPOT_RECT` | left=0x0177, top=0x00E4, right=0x018B, bottom=0x00F9, target=0x03E0, cursor=0x0A |
| `0x01C8` | `HOTSPOT_RECT` | left=0x00C9, top=0x0108, right=0x00DE, bottom=0x011C, target=0x03F7, cursor=0x09 |
| `0x01D4` | `HOTSPOT_RECT` | left=0x00EC, top=0x0109, right=0x0101, bottom=0x011C, target=0x040E, cursor=0x0A |
| `0x01E0` | `HOTSPOT_RECT` | left=0x010F, top=0x010A, right=0x0124, bottom=0x011C, target=0x0425, cursor=0x09 |
| `0x01EC` | `HOTSPOT_RECT` | left=0x0176, top=0x0109, right=0x018D, bottom=0x011D, target=0x043C, cursor=0x0A |
| `0x01F8` | `HOTSPOT_RECT` | left=0x00CA, top=0x0128, right=0x00DF, bottom=0x013E, target=0x0453, cursor=0x09 |
| `0x0204` | `HOTSPOT_RECT` | left=0x010E, top=0x012A, right=0x0124, bottom=0x013F, target=0x046A, cursor=0x0A |
| `0x0210` | `HOTSPOT_RECT` | left=0x0131, top=0x012A, right=0x0146, bottom=0x013F, target=0x0481, cursor=0x09 |
| `0x021C` | `HOTSPOT_RECT` | left=0x0178, top=0x012C, right=0x018A, bottom=0x013E, target=0x0498, cursor=0x0A |
| `0x0228` | `HOTSPOT_RECT` | left=0x019A, top=0x012C, right=0x01AD, bottom=0x0140, target=0x04AF, cursor=0x09 |
| `0x0234` | `HOTSPOT_RECT` | left=0x00EB, top=0x014E, right=0x0102, bottom=0x0163, target=0x04C6, cursor=0x0A |
| `0x0240` | `HOTSPOT_RECT` | left=0x010F, top=0x014C, right=0x0125, bottom=0x0161, target=0x04DD, cursor=0x09 |
| `0x024C` | `HOTSPOT_RECT` | left=0x0178, top=0x014C, right=0x018E, bottom=0x0164, target=0x04F4, cursor=0x0A |

## K.GRV

Input loops: 2

### Loop `0x00C8`–`0x0255`

Nearest preceding video in file order: VIDEOREF@0x00C4 0x5016 (GAMWAV[22]=5_e_3.vdx)

Scene candidates: VIDEOREF@0x0023 0x5018 (GAMWAV[24]=5_s_1.vdx); VIDEOREF@0x00AA 0x5019 (GAMWAV[25]=5_s_2.vdx); VIDEOREF@0x00C4 0x5016 (GAMWAV[22]=5_e_3.vdx); VIDEO_NAME@0x0559 "{grid:v[0x002],v[0x003]}{v000}{v001}b"

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x00C9` | `HOTSPOT_RECT` | left=0x0150, top=0x0058, right=0x016E, bottom=0x0085, target=0x0571, cursor=0x09 |
| `0x00D5` | `HOTSPOT_RECT` | left=0x012B, top=0x0058, right=0x0147, bottom=0x0085, target=0x057F, cursor=0x0A |
| `0x00E1` | `HOTSPOT_RECT` | left=0x0105, top=0x0058, right=0x0123, bottom=0x0085, target=0x058D, cursor=0x09 |
| `0x00ED` | `HOTSPOT_RECT` | left=0x01EB, top=0x0099, right=0x0210, bottom=0x00C9, target=0x059B, cursor=0x0A |
| `0x00F9` | `HOTSPOT_RECT` | left=0x01C7, top=0x0099, right=0x01EA, bottom=0x00C9, target=0x05A9, cursor=0x09 |
| `0x0105` | `HOTSPOT_RECT` | left=0x01A2, top=0x0099, right=0x01C3, bottom=0x00C9, target=0x05B7, cursor=0x0A |
| `0x0111` | `HOTSPOT_RECT` | left=0x017E, top=0x0099, right=0x019F, bottom=0x00C9, target=0x05C5, cursor=0x09 |
| `0x011D` | `HOTSPOT_RECT` | left=0x0158, top=0x0099, right=0x0176, bottom=0x00C9, target=0x05D3, cursor=0x0A |
| `0x0129` | `HOTSPOT_RECT` | left=0x0110, top=0x0099, right=0x012E, bottom=0x00C9, target=0x05E1, cursor=0x09 |
| `0x0135` | `HOTSPOT_RECT` | left=0x00EB, top=0x0099, right=0x010A, bottom=0x00C9, target=0x05EF, cursor=0x0A |
| `0x0141` | `HOTSPOT_RECT` | left=0x00C3, top=0x0099, right=0x00E2, bottom=0x00C9, target=0x05FD, cursor=0x09 |
| `0x014D` | `HOTSPOT_RECT` | left=0x009D, top=0x0099, right=0x00BF, bottom=0x00C9, target=0x060B, cursor=0x0A |
| `0x0159` | `HOTSPOT_RECT` | left=0x0075, top=0x0099, right=0x0098, bottom=0x00C9, target=0x0619, cursor=0x09 |
| `0x0165` | `HOTSPOT_RECT` | left=0x01FD, top=0x00DD, right=0x0220, bottom=0x0110, target=0x0627, cursor=0x0A |
| `0x0171` | `HOTSPOT_RECT` | left=0x01D5, top=0x00DD, right=0x01F9, bottom=0x0110, target=0x0635, cursor=0x09 |
| `0x017D` | `HOTSPOT_RECT` | left=0x01AE, top=0x00DD, right=0x01D2, bottom=0x0110, target=0x0643, cursor=0x0A |
| `0x0189` | `HOTSPOT_RECT` | left=0x0187, top=0x00DD, right=0x01AA, bottom=0x0110, target=0x0651, cursor=0x09 |
| `0x0195` | `HOTSPOT_RECT` | left=0x0160, top=0x00DD, right=0x0181, bottom=0x0110, target=0x065F, cursor=0x0A |
| `0x01A1` | `HOTSPOT_RECT` | left=0x011B, top=0x00DD, right=0x013B, bottom=0x0110, target=0x066D, cursor=0x09 |
| `0x01AD` | `HOTSPOT_RECT` | left=0x00F5, top=0x00DD, right=0x0115, bottom=0x0110, target=0x067B, cursor=0x0A |
| `0x01B9` | `HOTSPOT_RECT` | left=0x00CE, top=0x00DD, right=0x00EE, bottom=0x0110, target=0x0689, cursor=0x09 |
| `0x01C5` | `HOTSPOT_RECT` | left=0x00A8, top=0x00DD, right=0x00C9, bottom=0x0110, target=0x0697, cursor=0x0A |
| `0x01D1` | `HOTSPOT_RECT` | left=0x007C, top=0x00DD, right=0x009F, bottom=0x0110, target=0x06A5, cursor=0x09 |
| `0x01DD` | `HOTSPOT_RECT` | left=0x0052, top=0x00DD, right=0x0077, bottom=0x0110, target=0x06B3, cursor=0x0A |
| `0x01E9` | `HOTSPOT_RECT` | left=0x01F5, top=0x0122, right=0x021D, bottom=0x0158, target=0x06C1, cursor=0x09 |
| `0x01F5` | `HOTSPOT_RECT` | left=0x01CD, top=0x0122, right=0x01F3, bottom=0x0158, target=0x06CF, cursor=0x0A |
| `0x0201` | `HOTSPOT_RECT` | left=0x01A2, top=0x0122, right=0x01C9, bottom=0x0158, target=0x06DD, cursor=0x09 |
| `0x020D` | `HOTSPOT_RECT` | left=0x017C, top=0x0122, right=0x01A0, bottom=0x0158, target=0x06EB, cursor=0x0A |
| `0x0219` | `HOTSPOT_RECT` | left=0x0155, top=0x0122, right=0x0178, bottom=0x0158, target=0x06F9, cursor=0x09 |
| `0x0225` | `HOTSPOT_RECT` | left=0x00FE, top=0x0122, right=0x0121, bottom=0x0158, target=0x0707, cursor=0x0A |
| `0x0231` | `HOTSPOT_RECT` | left=0x00D2, top=0x0122, right=0x00F4, bottom=0x0158, target=0x0715, cursor=0x09 |
| `0x023D` | `HOTSPOT_RECT` | left=0x008B, top=0x0122, right=0x00AD, bottom=0x0158, target=0x0723, cursor=0x0A |
| `0x0249` | `HOTSPOT_RECT` | left=0x0061, top=0x0122, right=0x0087, bottom=0x0158, target=0x0731, cursor=0x09 |

### Loop `0x025D`–`0x04D6`

Nearest preceding video in file order: VIDEOREF@0x00C4 0x5016 (GAMWAV[22]=5_e_3.vdx)

Scene candidates: VIDEO_TRANSITION_NAME@0x050A "z{grid:v[0x000],v[0x001]}"

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0265` | `HOTSPOT_RECT` | left=0x0150, top=0x0058, right=0x016E, bottom=0x0085, target=0x0578, cursor=0x0A |
| `0x0278` | `HOTSPOT_RECT` | left=0x012B, top=0x0058, right=0x0147, bottom=0x0085, target=0x0586, cursor=0x09 |
| `0x028B` | `HOTSPOT_RECT` | left=0x0105, top=0x0058, right=0x0123, bottom=0x0085, target=0x0594, cursor=0x0A |
| `0x029E` | `HOTSPOT_RECT` | left=0x01EB, top=0x0099, right=0x0210, bottom=0x00C9, target=0x05A2, cursor=0x09 |
| `0x02B1` | `HOTSPOT_RECT` | left=0x01C7, top=0x0099, right=0x01EA, bottom=0x00C9, target=0x05B0, cursor=0x0A |
| `0x02C4` | `HOTSPOT_RECT` | left=0x01A2, top=0x0099, right=0x01C3, bottom=0x00C9, target=0x05BE, cursor=0x09 |
| `0x02D7` | `HOTSPOT_RECT` | left=0x017E, top=0x0099, right=0x019F, bottom=0x00C9, target=0x05CC, cursor=0x0A |
| `0x02EA` | `HOTSPOT_RECT` | left=0x0158, top=0x0099, right=0x0176, bottom=0x00C9, target=0x05DA, cursor=0x09 |
| `0x02FD` | `HOTSPOT_RECT` | left=0x0110, top=0x0099, right=0x012E, bottom=0x00C9, target=0x05E8, cursor=0x0A |
| `0x0310` | `HOTSPOT_RECT` | left=0x00EB, top=0x0099, right=0x010A, bottom=0x00C9, target=0x05F6, cursor=0x09 |
| `0x0323` | `HOTSPOT_RECT` | left=0x00C3, top=0x0099, right=0x00E2, bottom=0x00C9, target=0x0604, cursor=0x0A |
| `0x0336` | `HOTSPOT_RECT` | left=0x009D, top=0x0099, right=0x00BF, bottom=0x00C9, target=0x0612, cursor=0x09 |
| `0x034E` | `HOTSPOT_RECT` | left=0x0075, top=0x0099, right=0x0098, bottom=0x00C9, target=0x0620, cursor=0x0A |
| `0x0361` | `HOTSPOT_RECT` | left=0x01FD, top=0x00DD, right=0x0220, bottom=0x0110, target=0x062E, cursor=0x09 |
| `0x0374` | `HOTSPOT_RECT` | left=0x01D5, top=0x00DD, right=0x01F9, bottom=0x0110, target=0x063C, cursor=0x0A |
| `0x0387` | `HOTSPOT_RECT` | left=0x01AE, top=0x00DD, right=0x01D2, bottom=0x0110, target=0x064A, cursor=0x09 |
| `0x039A` | `HOTSPOT_RECT` | left=0x0187, top=0x00DD, right=0x01AA, bottom=0x0110, target=0x0658, cursor=0x0A |
| `0x03AD` | `HOTSPOT_RECT` | left=0x0160, top=0x00DD, right=0x0181, bottom=0x0110, target=0x0666, cursor=0x09 |
| `0x03C0` | `HOTSPOT_RECT` | left=0x011B, top=0x00DD, right=0x013B, bottom=0x0110, target=0x0674, cursor=0x0A |
| `0x03D3` | `HOTSPOT_RECT` | left=0x00F5, top=0x00DD, right=0x0115, bottom=0x0110, target=0x0682, cursor=0x09 |
| `0x03E6` | `HOTSPOT_RECT` | left=0x00CE, top=0x00DD, right=0x00EE, bottom=0x0110, target=0x0690, cursor=0x0A |
| `0x03F9` | `HOTSPOT_RECT` | left=0x00A8, top=0x00DD, right=0x00C9, bottom=0x0110, target=0x069E, cursor=0x09 |
| `0x040C` | `HOTSPOT_RECT` | left=0x007C, top=0x00DD, right=0x009F, bottom=0x0110, target=0x06AC, cursor=0x0A |
| `0x041F` | `HOTSPOT_RECT` | left=0x0052, top=0x00DD, right=0x0077, bottom=0x0110, target=0x06BA, cursor=0x09 |
| `0x0432` | `HOTSPOT_RECT` | left=0x01F5, top=0x0122, right=0x021D, bottom=0x0158, target=0x06C8, cursor=0x0A |
| `0x0445` | `HOTSPOT_RECT` | left=0x01CD, top=0x0122, right=0x01F3, bottom=0x0158, target=0x06D6, cursor=0x09 |
| `0x0458` | `HOTSPOT_RECT` | left=0x01A2, top=0x0122, right=0x01C9, bottom=0x0158, target=0x06E4, cursor=0x0A |
| `0x046B` | `HOTSPOT_RECT` | left=0x017C, top=0x0122, right=0x01A0, bottom=0x0158, target=0x06F2, cursor=0x09 |
| `0x047E` | `HOTSPOT_RECT` | left=0x0155, top=0x0122, right=0x0178, bottom=0x0158, target=0x0700, cursor=0x0A |
| `0x0491` | `HOTSPOT_RECT` | left=0x00FE, top=0x0122, right=0x0121, bottom=0x0158, target=0x070E, cursor=0x09 |
| `0x04A4` | `HOTSPOT_RECT` | left=0x00D2, top=0x0122, right=0x00F4, bottom=0x0158, target=0x071C, cursor=0x0A |
| `0x04B7` | `HOTSPOT_RECT` | left=0x008B, top=0x0122, right=0x00AD, bottom=0x0158, target=0x072A, cursor=0x09 |
| `0x04CA` | `HOTSPOT_RECT` | left=0x0061, top=0x0122, right=0x0087, bottom=0x0158, target=0x0738, cursor=0x0A |

## LA.GRV

Input loops: 2

### Loop `0x089E`–`0x0BE0`

Nearest preceding video in file order: VIDEOREF@0x00DD 0x5090 (GAMWAV[144]=gen_e_10.vdx)

Scene candidates: VIDEOREF@0x0063 0x3047 (LA[71]=la_r40.vdx); VIDEOREF@0x006E 0x5062 (GAMWAV[98]=17_e_2.vdx); VIDEOREF@0x14C9 0x508A (GAMWAV[138]=gen_e_4.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x08A4` | `HOTSPOT_RECT` | left=0x00B4, top=0x0063, right=0x00DA, bottom=0x0089, target=0x0BE1, cursor=0x09 |
| `0x08B5` | `HOTSPOT_RECT` | left=0x00DC, top=0x0063, right=0x0102, bottom=0x0089, target=0x0BE8, cursor=0x0A |
| `0x08C6` | `HOTSPOT_RECT` | left=0x0104, top=0x0063, right=0x012A, bottom=0x0089, target=0x0BEF, cursor=0x09 |
| `0x08D7` | `HOTSPOT_RECT` | left=0x012C, top=0x0063, right=0x0152, bottom=0x0089, target=0x0BF6, cursor=0x0A |
| `0x08E8` | `HOTSPOT_RECT` | left=0x0154, top=0x0063, right=0x017A, bottom=0x0089, target=0x0BFD, cursor=0x09 |
| `0x08F9` | `HOTSPOT_RECT` | left=0x017C, top=0x0063, right=0x01A2, bottom=0x0089, target=0x0C04, cursor=0x0A |
| `0x090A` | `HOTSPOT_RECT` | left=0x01A4, top=0x0063, right=0x01CA, bottom=0x0089, target=0x0C0B, cursor=0x09 |
| `0x091B` | `HOTSPOT_RECT` | left=0x00B4, top=0x008B, right=0x00DA, bottom=0x00B1, target=0x0C12, cursor=0x0A |
| `0x092C` | `HOTSPOT_RECT` | left=0x00DC, top=0x008B, right=0x0102, bottom=0x00B1, target=0x0C19, cursor=0x09 |
| `0x093D` | `HOTSPOT_RECT` | left=0x0104, top=0x008B, right=0x012A, bottom=0x00B1, target=0x0C20, cursor=0x0A |
| `0x094E` | `HOTSPOT_RECT` | left=0x012C, top=0x008B, right=0x0152, bottom=0x00B1, target=0x0C27, cursor=0x09 |
| `0x095F` | `HOTSPOT_RECT` | left=0x0154, top=0x008B, right=0x017A, bottom=0x00B1, target=0x0C2E, cursor=0x0A |
| `0x0970` | `HOTSPOT_RECT` | left=0x017C, top=0x008B, right=0x01A2, bottom=0x00B1, target=0x0C35, cursor=0x09 |
| `0x0981` | `HOTSPOT_RECT` | left=0x01A4, top=0x008B, right=0x01CA, bottom=0x00B1, target=0x0C3C, cursor=0x0A |
| `0x0992` | `HOTSPOT_RECT` | left=0x00B4, top=0x00B3, right=0x00DA, bottom=0x00D9, target=0x0C43, cursor=0x09 |
| `0x09A3` | `HOTSPOT_RECT` | left=0x00DC, top=0x00B3, right=0x0102, bottom=0x00D9, target=0x0C4A, cursor=0x0A |
| `0x09B4` | `HOTSPOT_RECT` | left=0x0104, top=0x00B3, right=0x012A, bottom=0x00D9, target=0x0C51, cursor=0x09 |
| `0x09C5` | `HOTSPOT_RECT` | left=0x012C, top=0x00B3, right=0x0152, bottom=0x00D9, target=0x0C58, cursor=0x0A |
| `0x09D6` | `HOTSPOT_RECT` | left=0x0154, top=0x00B3, right=0x017A, bottom=0x00D9, target=0x0C5F, cursor=0x09 |
| `0x09E7` | `HOTSPOT_RECT` | left=0x017C, top=0x00B3, right=0x01A2, bottom=0x00D9, target=0x0C66, cursor=0x0A |
| `0x09F8` | `HOTSPOT_RECT` | left=0x01A4, top=0x00B3, right=0x01CA, bottom=0x00D9, target=0x0C6D, cursor=0x09 |
| `0x0A09` | `HOTSPOT_RECT` | left=0x00B4, top=0x00DB, right=0x00DA, bottom=0x0101, target=0x0C74, cursor=0x0A |
| `0x0A1A` | `HOTSPOT_RECT` | left=0x00DC, top=0x00DB, right=0x0102, bottom=0x0101, target=0x0C7B, cursor=0x09 |
| `0x0A2B` | `HOTSPOT_RECT` | left=0x0104, top=0x00DB, right=0x012A, bottom=0x0101, target=0x0C82, cursor=0x0A |
| `0x0A3C` | `HOTSPOT_RECT` | left=0x012C, top=0x00DB, right=0x0152, bottom=0x0101, target=0x0C89, cursor=0x09 |
| `0x0A4D` | `HOTSPOT_RECT` | left=0x0154, top=0x00DB, right=0x017A, bottom=0x0101, target=0x0C90, cursor=0x0A |
| `0x0A5E` | `HOTSPOT_RECT` | left=0x017C, top=0x00DB, right=0x01A2, bottom=0x0101, target=0x0C97, cursor=0x09 |
| `0x0A6F` | `HOTSPOT_RECT` | left=0x01A4, top=0x00DB, right=0x01CA, bottom=0x0101, target=0x0C9E, cursor=0x0A |
| `0x0A80` | `HOTSPOT_RECT` | left=0x00B4, top=0x0103, right=0x00DA, bottom=0x0129, target=0x0CA5, cursor=0x09 |
| `0x0A91` | `HOTSPOT_RECT` | left=0x00DC, top=0x0103, right=0x0102, bottom=0x0129, target=0x0CAC, cursor=0x0A |
| `0x0AA2` | `HOTSPOT_RECT` | left=0x0104, top=0x0103, right=0x012A, bottom=0x0129, target=0x0CB3, cursor=0x09 |
| `0x0AB3` | `HOTSPOT_RECT` | left=0x012C, top=0x0103, right=0x0152, bottom=0x0129, target=0x0CBA, cursor=0x0A |
| `0x0AC4` | `HOTSPOT_RECT` | left=0x0154, top=0x0103, right=0x017A, bottom=0x0129, target=0x0CC1, cursor=0x09 |
| `0x0AD5` | `HOTSPOT_RECT` | left=0x017C, top=0x0103, right=0x01A2, bottom=0x0129, target=0x0CC8, cursor=0x0A |
| `0x0AE6` | `HOTSPOT_RECT` | left=0x01A4, top=0x0103, right=0x01CA, bottom=0x0129, target=0x0CCF, cursor=0x09 |
| `0x0AF7` | `HOTSPOT_RECT` | left=0x00B4, top=0x012B, right=0x00DA, bottom=0x0151, target=0x0CD6, cursor=0x0A |
| `0x0B08` | `HOTSPOT_RECT` | left=0x00DC, top=0x012B, right=0x0102, bottom=0x0151, target=0x0CDD, cursor=0x09 |
| `0x0B19` | `HOTSPOT_RECT` | left=0x0104, top=0x012B, right=0x012A, bottom=0x0151, target=0x0CE4, cursor=0x0A |
| `0x0B2A` | `HOTSPOT_RECT` | left=0x012C, top=0x012B, right=0x0152, bottom=0x0151, target=0x0CEB, cursor=0x09 |
| `0x0B3B` | `HOTSPOT_RECT` | left=0x0154, top=0x012B, right=0x017A, bottom=0x0151, target=0x0CF2, cursor=0x0A |
| `0x0B4C` | `HOTSPOT_RECT` | left=0x017C, top=0x012B, right=0x01A2, bottom=0x0151, target=0x0CF9, cursor=0x09 |
| `0x0B5D` | `HOTSPOT_RECT` | left=0x01A4, top=0x012B, right=0x01CA, bottom=0x0151, target=0x0D00, cursor=0x0A |
| `0x0B6E` | `HOTSPOT_RECT` | left=0x00B4, top=0x0153, right=0x00DA, bottom=0x0179, target=0x0D07, cursor=0x09 |
| `0x0B7F` | `HOTSPOT_RECT` | left=0x00DC, top=0x0153, right=0x0102, bottom=0x0179, target=0x0D0E, cursor=0x0A |
| `0x0B90` | `HOTSPOT_RECT` | left=0x0104, top=0x0153, right=0x012A, bottom=0x0179, target=0x0D15, cursor=0x09 |
| `0x0BA1` | `HOTSPOT_RECT` | left=0x012C, top=0x0153, right=0x0152, bottom=0x0179, target=0x0D1C, cursor=0x0A |
| `0x0BB2` | `HOTSPOT_RECT` | left=0x0154, top=0x0153, right=0x017A, bottom=0x0179, target=0x0D23, cursor=0x09 |
| `0x0BC3` | `HOTSPOT_RECT` | left=0x017C, top=0x0153, right=0x01A2, bottom=0x0179, target=0x0D2A, cursor=0x0A |
| `0x0BD4` | `HOTSPOT_RECT` | left=0x01A4, top=0x0153, right=0x01CA, bottom=0x0179, target=0x0D31, cursor=0x09 |

### Loop `0x0E08`–`0x114A`

Nearest preceding video in file order: VIDEOREF@0x00DD 0x5090 (GAMWAV[144]=gen_e_10.vdx)

Scene candidates: VIDEOREF@0x0063 0x3047 (LA[71]=la_r40.vdx); VIDEOREF@0x006E 0x5062 (GAMWAV[98]=17_e_2.vdx); VIDEOREF@0x14C9 0x508A (GAMWAV[138]=gen_e_4.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0E0E` | `HOTSPOT_RECT` | left=0x00B4, top=0x0063, right=0x00DA, bottom=0x0089, target=0x114B, cursor=0x0A |
| `0x0E1F` | `HOTSPOT_RECT` | left=0x00DC, top=0x0063, right=0x0102, bottom=0x0089, target=0x1152, cursor=0x09 |
| `0x0E30` | `HOTSPOT_RECT` | left=0x0104, top=0x0063, right=0x012A, bottom=0x0089, target=0x1159, cursor=0x0A |
| `0x0E41` | `HOTSPOT_RECT` | left=0x012C, top=0x0063, right=0x0152, bottom=0x0089, target=0x1160, cursor=0x09 |
| `0x0E52` | `HOTSPOT_RECT` | left=0x0154, top=0x0063, right=0x017A, bottom=0x0089, target=0x1167, cursor=0x0A |
| `0x0E63` | `HOTSPOT_RECT` | left=0x017C, top=0x0063, right=0x01A2, bottom=0x0089, target=0x116E, cursor=0x09 |
| `0x0E74` | `HOTSPOT_RECT` | left=0x01A4, top=0x0063, right=0x01CA, bottom=0x0089, target=0x1175, cursor=0x0A |
| `0x0E85` | `HOTSPOT_RECT` | left=0x00B4, top=0x008B, right=0x00DA, bottom=0x00B1, target=0x117C, cursor=0x09 |
| `0x0E96` | `HOTSPOT_RECT` | left=0x00DC, top=0x008B, right=0x0102, bottom=0x00B1, target=0x1183, cursor=0x0A |
| `0x0EA7` | `HOTSPOT_RECT` | left=0x0104, top=0x008B, right=0x012A, bottom=0x00B1, target=0x118A, cursor=0x09 |
| `0x0EB8` | `HOTSPOT_RECT` | left=0x012C, top=0x008B, right=0x0152, bottom=0x00B1, target=0x1191, cursor=0x0A |
| `0x0EC9` | `HOTSPOT_RECT` | left=0x0154, top=0x008B, right=0x017A, bottom=0x00B1, target=0x1198, cursor=0x09 |
| `0x0EDA` | `HOTSPOT_RECT` | left=0x017C, top=0x008B, right=0x01A2, bottom=0x00B1, target=0x119F, cursor=0x0A |
| `0x0EEB` | `HOTSPOT_RECT` | left=0x01A4, top=0x008B, right=0x01CA, bottom=0x00B1, target=0x11A6, cursor=0x09 |
| `0x0EFC` | `HOTSPOT_RECT` | left=0x00B4, top=0x00B3, right=0x00DA, bottom=0x00D9, target=0x11AD, cursor=0x0A |
| `0x0F0D` | `HOTSPOT_RECT` | left=0x00DC, top=0x00B3, right=0x0102, bottom=0x00D9, target=0x11B4, cursor=0x09 |
| `0x0F1E` | `HOTSPOT_RECT` | left=0x0104, top=0x00B3, right=0x012A, bottom=0x00D9, target=0x11BB, cursor=0x0A |
| `0x0F2F` | `HOTSPOT_RECT` | left=0x012C, top=0x00B3, right=0x0152, bottom=0x00D9, target=0x11C2, cursor=0x09 |
| `0x0F40` | `HOTSPOT_RECT` | left=0x0154, top=0x00B3, right=0x017A, bottom=0x00D9, target=0x11C9, cursor=0x0A |
| `0x0F51` | `HOTSPOT_RECT` | left=0x017C, top=0x00B3, right=0x01A2, bottom=0x00D9, target=0x11D0, cursor=0x09 |
| `0x0F62` | `HOTSPOT_RECT` | left=0x01A4, top=0x00B3, right=0x01CA, bottom=0x00D9, target=0x11D7, cursor=0x0A |
| `0x0F73` | `HOTSPOT_RECT` | left=0x00B4, top=0x00DB, right=0x00DA, bottom=0x0101, target=0x11DE, cursor=0x09 |
| `0x0F84` | `HOTSPOT_RECT` | left=0x00DC, top=0x00DB, right=0x0102, bottom=0x0101, target=0x11E5, cursor=0x0A |
| `0x0F95` | `HOTSPOT_RECT` | left=0x0104, top=0x00DB, right=0x012A, bottom=0x0101, target=0x11EC, cursor=0x09 |
| `0x0FA6` | `HOTSPOT_RECT` | left=0x012C, top=0x00DB, right=0x0152, bottom=0x0101, target=0x11F3, cursor=0x0A |
| `0x0FB7` | `HOTSPOT_RECT` | left=0x0154, top=0x00DB, right=0x017A, bottom=0x0101, target=0x11FA, cursor=0x09 |
| `0x0FC8` | `HOTSPOT_RECT` | left=0x017C, top=0x00DB, right=0x01A2, bottom=0x0101, target=0x1201, cursor=0x0A |
| `0x0FD9` | `HOTSPOT_RECT` | left=0x01A4, top=0x00DB, right=0x01CA, bottom=0x0101, target=0x1208, cursor=0x09 |
| `0x0FEA` | `HOTSPOT_RECT` | left=0x00B4, top=0x0103, right=0x00DA, bottom=0x0129, target=0x120F, cursor=0x0A |
| `0x0FFB` | `HOTSPOT_RECT` | left=0x00DC, top=0x0103, right=0x0102, bottom=0x0129, target=0x1216, cursor=0x09 |
| `0x100C` | `HOTSPOT_RECT` | left=0x0104, top=0x0103, right=0x012A, bottom=0x0129, target=0x121D, cursor=0x0A |
| `0x101D` | `HOTSPOT_RECT` | left=0x012C, top=0x0103, right=0x0152, bottom=0x0129, target=0x1224, cursor=0x09 |
| `0x102E` | `HOTSPOT_RECT` | left=0x0154, top=0x0103, right=0x017A, bottom=0x0129, target=0x122B, cursor=0x0A |
| `0x103F` | `HOTSPOT_RECT` | left=0x017C, top=0x0103, right=0x01A2, bottom=0x0129, target=0x1232, cursor=0x09 |
| `0x1050` | `HOTSPOT_RECT` | left=0x01A4, top=0x0103, right=0x01CA, bottom=0x0129, target=0x1239, cursor=0x0A |
| `0x1061` | `HOTSPOT_RECT` | left=0x00B4, top=0x012B, right=0x00DA, bottom=0x0151, target=0x1240, cursor=0x09 |
| `0x1072` | `HOTSPOT_RECT` | left=0x00DC, top=0x012B, right=0x0102, bottom=0x0151, target=0x1247, cursor=0x0A |
| `0x1083` | `HOTSPOT_RECT` | left=0x0104, top=0x012B, right=0x012A, bottom=0x0151, target=0x124E, cursor=0x09 |
| `0x1094` | `HOTSPOT_RECT` | left=0x012C, top=0x012B, right=0x0152, bottom=0x0151, target=0x1255, cursor=0x0A |
| `0x10A5` | `HOTSPOT_RECT` | left=0x0154, top=0x012B, right=0x017A, bottom=0x0151, target=0x125C, cursor=0x09 |
| `0x10B6` | `HOTSPOT_RECT` | left=0x017C, top=0x012B, right=0x01A2, bottom=0x0151, target=0x1263, cursor=0x0A |
| `0x10C7` | `HOTSPOT_RECT` | left=0x01A4, top=0x012B, right=0x01CA, bottom=0x0151, target=0x126A, cursor=0x09 |
| `0x10D8` | `HOTSPOT_RECT` | left=0x00B4, top=0x0153, right=0x00DA, bottom=0x0179, target=0x1271, cursor=0x0A |
| `0x10E9` | `HOTSPOT_RECT` | left=0x00DC, top=0x0153, right=0x0102, bottom=0x0179, target=0x1278, cursor=0x09 |
| `0x10FA` | `HOTSPOT_RECT` | left=0x0104, top=0x0153, right=0x012A, bottom=0x0179, target=0x127F, cursor=0x0A |
| `0x110B` | `HOTSPOT_RECT` | left=0x012C, top=0x0153, right=0x0152, bottom=0x0179, target=0x1286, cursor=0x09 |
| `0x111C` | `HOTSPOT_RECT` | left=0x0154, top=0x0153, right=0x017A, bottom=0x0179, target=0x128D, cursor=0x0A |
| `0x112D` | `HOTSPOT_RECT` | left=0x017C, top=0x0153, right=0x01A2, bottom=0x0179, target=0x1294, cursor=0x09 |
| `0x113E` | `HOTSPOT_RECT` | left=0x01A4, top=0x0153, right=0x01CA, bottom=0x0179, target=0x129B, cursor=0x0A |

## LI.GRV

Input loops: 20

### Loop `0x00C8`–`0x00D5`

Nearest preceding video in file order: VIDEOREF@0x00BE 0x5023 (GAMWAV[35]=7_e_1.vdx)

Scene candidates: VIDEOREF@0x0024 0x5026 (GAMWAV[38]=7_s_1.vdx); VIDEOREF@0x0070 0x5090 (GAMWAV[144]=gen_e_10.vdx); VIDEOREF@0x008A 0x509B (GAMWAV[155]=gen_s_4.vdx); VIDEOREF@0x00A4 0x5024 (GAMWAV[36]=7_e_2.vdx); VIDEOREF@0x00BE 0x5023 (GAMWAV[35]=7_e_1.vdx); VIDEO_TRANSITION_REF@0x0642 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x065B 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0674 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x068D 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x06A6 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x06BF 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x06D8 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x06F1 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x070A 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0723 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x073C 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0755 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x076E 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0787 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x07A0 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x07B9 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x07D2 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x07EB 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0804 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x081D 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x084E 0x3411 (LI[17]=li_pz_ot.vdx); VIDEO_TRANSITION_REF@0x085D 0x3411 (LI[17]=li_pz_ot.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x00C9` | `HOTSPOT_RECT` | left=0x0144, top=0x0151, right=0x015F, bottom=0x016B, target=0x0634, cursor=0x09 |

### Loop `0x00DE`–`0x0101`

Nearest preceding video in file order: VIDEOREF@0x00BE 0x5023 (GAMWAV[35]=7_e_1.vdx)

Scene candidates: VIDEOREF@0x0024 0x5026 (GAMWAV[38]=7_s_1.vdx); VIDEOREF@0x0070 0x5090 (GAMWAV[144]=gen_e_10.vdx); VIDEOREF@0x008A 0x509B (GAMWAV[155]=gen_s_4.vdx); VIDEOREF@0x00A4 0x5024 (GAMWAV[36]=7_e_2.vdx); VIDEOREF@0x00BE 0x5023 (GAMWAV[35]=7_e_1.vdx); VIDEO_TRANSITION_REF@0x0642 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x065B 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0674 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x068D 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x06A6 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x06BF 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x06D8 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x06F1 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x070A 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0723 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x073C 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0755 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x076E 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0787 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x07A0 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x07B9 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x07D2 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x07EB 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0804 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x081D 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x084E 0x3411 (LI[17]=li_pz_ot.vdx); VIDEO_TRANSITION_REF@0x085D 0x3411 (LI[17]=li_pz_ot.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x00E4` | `HOTSPOT_RECT` | left=0x0115, top=0x014A, right=0x012A, bottom=0x015E, target=0x0651, cursor=0x09 |
| `0x00F5` | `HOTSPOT_RECT` | left=0x0189, top=0x0140, right=0x019F, bottom=0x0155, target=0x0848, cursor=0x0A |

### Loop `0x010A`–`0x0160`

Nearest preceding video in file order: VIDEOREF@0x00BE 0x5023 (GAMWAV[35]=7_e_1.vdx)

Scene candidates: VIDEOREF@0x0024 0x5026 (GAMWAV[38]=7_s_1.vdx); VIDEOREF@0x0070 0x5090 (GAMWAV[144]=gen_e_10.vdx); VIDEOREF@0x008A 0x509B (GAMWAV[155]=gen_s_4.vdx); VIDEOREF@0x00A4 0x5024 (GAMWAV[36]=7_e_2.vdx); VIDEOREF@0x00BE 0x5023 (GAMWAV[35]=7_e_1.vdx); VIDEO_TRANSITION_REF@0x0642 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x065B 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0674 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x068D 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x06A6 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x06BF 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x06D8 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x06F1 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x070A 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0723 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x073C 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0755 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x076E 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0787 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x07A0 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x07B9 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x07D2 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x07EB 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0804 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x081D 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x084E 0x3411 (LI[17]=li_pz_ot.vdx); VIDEO_TRANSITION_REF@0x085D 0x3411 (LI[17]=li_pz_ot.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0110` | `HOTSPOT_RECT` | left=0x012F, top=0x00EE, right=0x0145, bottom=0x0103, target=0x066A, cursor=0x0A |
| `0x0121` | `HOTSPOT_RECT` | left=0x0146, top=0x0154, right=0x015E, bottom=0x016A, target=0x0848, cursor=0x09 |
| `0x0132` | `HOTSPOT_RECT` | left=0x0109, top=0x00EF, right=0x011F, bottom=0x0105, target=0x0848, cursor=0x09 |
| `0x0143` | `HOTSPOT_RECT` | left=0x00F5, top=0x0118, right=0x0108, bottom=0x012F, target=0x0848, cursor=0x09 |
| `0x0154` | `HOTSPOT_RECT` | left=0x00D2, top=0x00FA, right=0x00E8, bottom=0x010F, target=0x0848, cursor=0x09 |

### Loop `0x0169`–`0x019D`

Nearest preceding video in file order: VIDEOREF@0x00BE 0x5023 (GAMWAV[35]=7_e_1.vdx)

Scene candidates: VIDEOREF@0x0024 0x5026 (GAMWAV[38]=7_s_1.vdx); VIDEOREF@0x0070 0x5090 (GAMWAV[144]=gen_e_10.vdx); VIDEOREF@0x008A 0x509B (GAMWAV[155]=gen_s_4.vdx); VIDEOREF@0x00A4 0x5024 (GAMWAV[36]=7_e_2.vdx); VIDEOREF@0x00BE 0x5023 (GAMWAV[35]=7_e_1.vdx); VIDEO_TRANSITION_REF@0x0642 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x065B 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0674 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x068D 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x06A6 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x06BF 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x06D8 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x06F1 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x070A 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0723 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x073C 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0755 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x076E 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0787 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x07A0 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x07B9 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x07D2 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x07EB 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0804 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x081D 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x084E 0x3411 (LI[17]=li_pz_ot.vdx); VIDEO_TRANSITION_REF@0x085D 0x3411 (LI[17]=li_pz_ot.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x016F` | `HOTSPOT_RECT` | left=0x0115, top=0x014A, right=0x012A, bottom=0x015E, target=0x0848, cursor=0x09 |
| `0x0180` | `HOTSPOT_RECT` | left=0x0128, top=0x012C, right=0x013E, bottom=0x013F, target=0x0683, cursor=0x0A |
| `0x0191` | `HOTSPOT_RECT` | left=0x0109, top=0x00EF, right=0x011F, bottom=0x0105, target=0x0848, cursor=0x09 |

### Loop `0x01A6`–`0x01DA`

Nearest preceding video in file order: VIDEOREF@0x00BE 0x5023 (GAMWAV[35]=7_e_1.vdx)

Scene candidates: VIDEOREF@0x0024 0x5026 (GAMWAV[38]=7_s_1.vdx); VIDEOREF@0x0070 0x5090 (GAMWAV[144]=gen_e_10.vdx); VIDEOREF@0x008A 0x509B (GAMWAV[155]=gen_s_4.vdx); VIDEOREF@0x00A4 0x5024 (GAMWAV[36]=7_e_2.vdx); VIDEOREF@0x00BE 0x5023 (GAMWAV[35]=7_e_1.vdx); VIDEO_TRANSITION_REF@0x0642 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x065B 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0674 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x068D 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x06A6 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x06BF 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x06D8 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x06F1 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x070A 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0723 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x073C 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0755 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x076E 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0787 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x07A0 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x07B9 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x07D2 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x07EB 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0804 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x081D 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x084E 0x3411 (LI[17]=li_pz_ot.vdx); VIDEO_TRANSITION_REF@0x085D 0x3411 (LI[17]=li_pz_ot.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x01AC` | `HOTSPOT_RECT` | left=0x0153, top=0x00AF, right=0x0168, bottom=0x00C3, target=0x069C, cursor=0x0A |
| `0x01BD` | `HOTSPOT_RECT` | left=0x0130, top=0x00ED, right=0x0145, bottom=0x0103, target=0x0848, cursor=0x09 |
| `0x01CE` | `HOTSPOT_RECT` | left=0x0109, top=0x00EF, right=0x011F, bottom=0x0105, target=0x0848, cursor=0x09 |

### Loop `0x01E3`–`0x0217`

Nearest preceding video in file order: VIDEOREF@0x00BE 0x5023 (GAMWAV[35]=7_e_1.vdx)

Scene candidates: VIDEOREF@0x0024 0x5026 (GAMWAV[38]=7_s_1.vdx); VIDEOREF@0x0070 0x5090 (GAMWAV[144]=gen_e_10.vdx); VIDEOREF@0x008A 0x509B (GAMWAV[155]=gen_s_4.vdx); VIDEOREF@0x00A4 0x5024 (GAMWAV[36]=7_e_2.vdx); VIDEOREF@0x00BE 0x5023 (GAMWAV[35]=7_e_1.vdx); VIDEO_TRANSITION_REF@0x0642 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x065B 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0674 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x068D 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x06A6 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x06BF 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x06D8 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x06F1 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x070A 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0723 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x073C 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0755 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x076E 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0787 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x07A0 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x07B9 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x07D2 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x07EB 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0804 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x081D 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x084E 0x3411 (LI[17]=li_pz_ot.vdx); VIDEO_TRANSITION_REF@0x085D 0x3411 (LI[17]=li_pz_ot.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x01E9` | `HOTSPOT_RECT` | left=0x0109, top=0x00F0, right=0x011F, bottom=0x0105, target=0x06B5, cursor=0x09 |
| `0x01FA` | `HOTSPOT_RECT` | left=0x0128, top=0x0129, right=0x013F, bottom=0x0140, target=0x0848, cursor=0x09 |
| `0x020B` | `HOTSPOT_RECT` | left=0x0155, top=0x0123, right=0x016C, bottom=0x013B, target=0x0848, cursor=0x09 |

### Loop `0x0220`–`0x0287`

Nearest preceding video in file order: VIDEOREF@0x00BE 0x5023 (GAMWAV[35]=7_e_1.vdx)

Scene candidates: VIDEOREF@0x0024 0x5026 (GAMWAV[38]=7_s_1.vdx); VIDEOREF@0x0070 0x5090 (GAMWAV[144]=gen_e_10.vdx); VIDEOREF@0x008A 0x509B (GAMWAV[155]=gen_s_4.vdx); VIDEOREF@0x00A4 0x5024 (GAMWAV[36]=7_e_2.vdx); VIDEOREF@0x00BE 0x5023 (GAMWAV[35]=7_e_1.vdx); VIDEO_TRANSITION_REF@0x0642 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x065B 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0674 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x068D 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x06A6 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x06BF 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x06D8 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x06F1 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x070A 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0723 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x073C 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0755 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x076E 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0787 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x07A0 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x07B9 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x07D2 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x07EB 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0804 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x081D 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x084E 0x3411 (LI[17]=li_pz_ot.vdx); VIDEO_TRANSITION_REF@0x085D 0x3411 (LI[17]=li_pz_ot.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0226` | `HOTSPOT_RECT` | left=0x012A, top=0x0090, right=0x0140, bottom=0x00A5, target=0x06CE, cursor=0x0A |
| `0x0237` | `HOTSPOT_RECT` | left=0x0114, top=0x0149, right=0x012A, bottom=0x015E, target=0x0848, cursor=0x09 |
| `0x0248` | `HOTSPOT_RECT` | left=0x0130, top=0x00ED, right=0x0145, bottom=0x0103, target=0x0848, cursor=0x09 |
| `0x0259` | `HOTSPOT_RECT` | left=0x0128, top=0x0129, right=0x013F, bottom=0x0140, target=0x0848, cursor=0x09 |
| `0x026A` | `HOTSPOT_RECT` | left=0x0152, top=0x00AF, right=0x016A, bottom=0x00C3, target=0x0848, cursor=0x09 |
| `0x027B` | `HOTSPOT_RECT` | left=0x0174, top=0x0108, right=0x018B, bottom=0x011F, target=0x0848, cursor=0x09 |

### Loop `0x0290`–`0x02C4`

Nearest preceding video in file order: VIDEOREF@0x00BE 0x5023 (GAMWAV[35]=7_e_1.vdx)

Scene candidates: VIDEOREF@0x0024 0x5026 (GAMWAV[38]=7_s_1.vdx); VIDEOREF@0x0070 0x5090 (GAMWAV[144]=gen_e_10.vdx); VIDEOREF@0x008A 0x509B (GAMWAV[155]=gen_s_4.vdx); VIDEOREF@0x00A4 0x5024 (GAMWAV[36]=7_e_2.vdx); VIDEOREF@0x00BE 0x5023 (GAMWAV[35]=7_e_1.vdx); VIDEO_TRANSITION_REF@0x0642 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x065B 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0674 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x068D 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x06A6 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x06BF 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x06D8 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x06F1 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x070A 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0723 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x073C 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0755 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x076E 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0787 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x07A0 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x07B9 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x07D2 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x07EB 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0804 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x081D 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x084E 0x3411 (LI[17]=li_pz_ot.vdx); VIDEO_TRANSITION_REF@0x085D 0x3411 (LI[17]=li_pz_ot.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0296` | `HOTSPOT_RECT` | left=0x00F4, top=0x0119, right=0x0108, bottom=0x012D, target=0x06E7, cursor=0x09 |
| `0x02A7` | `HOTSPOT_RECT` | left=0x0109, top=0x00EF, right=0x011F, bottom=0x0105, target=0x0848, cursor=0x09 |
| `0x02B8` | `HOTSPOT_RECT` | left=0x017E, top=0x0090, right=0x0194, bottom=0x00A4, target=0x0848, cursor=0x09 |

### Loop `0x02CD`–`0x0334`

Nearest preceding video in file order: VIDEOREF@0x00BE 0x5023 (GAMWAV[35]=7_e_1.vdx)

Scene candidates: VIDEOREF@0x0024 0x5026 (GAMWAV[38]=7_s_1.vdx); VIDEOREF@0x0070 0x5090 (GAMWAV[144]=gen_e_10.vdx); VIDEOREF@0x008A 0x509B (GAMWAV[155]=gen_s_4.vdx); VIDEOREF@0x00A4 0x5024 (GAMWAV[36]=7_e_2.vdx); VIDEOREF@0x00BE 0x5023 (GAMWAV[35]=7_e_1.vdx); VIDEO_TRANSITION_REF@0x0642 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x065B 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0674 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x068D 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x06A6 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x06BF 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x06D8 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x06F1 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x070A 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0723 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x073C 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0755 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x076E 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0787 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x07A0 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x07B9 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x07D2 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x07EB 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0804 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x081D 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x084E 0x3411 (LI[17]=li_pz_ot.vdx); VIDEO_TRANSITION_REF@0x085D 0x3411 (LI[17]=li_pz_ot.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x02D3` | `HOTSPOT_RECT` | left=0x00D3, top=0x00F9, right=0x00E8, bottom=0x010E, target=0x0700, cursor=0x09 |
| `0x02E4` | `HOTSPOT_RECT` | left=0x00E0, top=0x00A3, right=0x00F6, bottom=0x00B9, target=0x0848, cursor=0x09 |
| `0x02F5` | `HOTSPOT_RECT` | left=0x0118, top=0x006E, right=0x012E, bottom=0x0084, target=0x0848, cursor=0x09 |
| `0x0306` | `HOTSPOT_RECT` | left=0x0146, top=0x0068, right=0x015C, bottom=0x007D, target=0x0848, cursor=0x09 |
| `0x0317` | `HOTSPOT_RECT` | left=0x012D, top=0x0091, right=0x013F, bottom=0x00A6, target=0x0848, cursor=0x09 |
| `0x0328` | `HOTSPOT_RECT` | left=0x0114, top=0x0149, right=0x012A, bottom=0x015E, target=0x0848, cursor=0x09 |

### Loop `0x033D`–`0x0371`

Nearest preceding video in file order: VIDEOREF@0x00BE 0x5023 (GAMWAV[35]=7_e_1.vdx)

Scene candidates: VIDEOREF@0x0024 0x5026 (GAMWAV[38]=7_s_1.vdx); VIDEOREF@0x0070 0x5090 (GAMWAV[144]=gen_e_10.vdx); VIDEOREF@0x008A 0x509B (GAMWAV[155]=gen_s_4.vdx); VIDEOREF@0x00A4 0x5024 (GAMWAV[36]=7_e_2.vdx); VIDEOREF@0x00BE 0x5023 (GAMWAV[35]=7_e_1.vdx); VIDEO_TRANSITION_REF@0x0642 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x065B 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0674 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x068D 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x06A6 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x06BF 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x06D8 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x06F1 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x070A 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0723 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x073C 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0755 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x076E 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0787 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x07A0 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x07B9 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x07D2 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x07EB 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0804 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x081D 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x084E 0x3411 (LI[17]=li_pz_ot.vdx); VIDEO_TRANSITION_REF@0x085D 0x3411 (LI[17]=li_pz_ot.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0343` | `HOTSPOT_RECT` | left=0x00E0, top=0x00A5, right=0x00F5, bottom=0x00B8, target=0x0719, cursor=0x09 |
| `0x0354` | `HOTSPOT_RECT` | left=0x0114, top=0x0149, right=0x012A, bottom=0x015E, target=0x0848, cursor=0x09 |
| `0x0365` | `HOTSPOT_RECT` | left=0x00F5, top=0x0118, right=0x0108, bottom=0x012F, target=0x0848, cursor=0x09 |

### Loop `0x037A`–`0x03AE`

Nearest preceding video in file order: VIDEOREF@0x00BE 0x5023 (GAMWAV[35]=7_e_1.vdx)

Scene candidates: VIDEOREF@0x0024 0x5026 (GAMWAV[38]=7_s_1.vdx); VIDEOREF@0x0070 0x5090 (GAMWAV[144]=gen_e_10.vdx); VIDEOREF@0x008A 0x509B (GAMWAV[155]=gen_s_4.vdx); VIDEOREF@0x00A4 0x5024 (GAMWAV[36]=7_e_2.vdx); VIDEOREF@0x00BE 0x5023 (GAMWAV[35]=7_e_1.vdx); VIDEO_TRANSITION_REF@0x0642 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x065B 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0674 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x068D 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x06A6 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x06BF 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x06D8 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x06F1 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x070A 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0723 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x073C 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0755 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x076E 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0787 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x07A0 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x07B9 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x07D2 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x07EB 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0804 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x081D 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x084E 0x3411 (LI[17]=li_pz_ot.vdx); VIDEO_TRANSITION_REF@0x085D 0x3411 (LI[17]=li_pz_ot.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0380` | `HOTSPOT_RECT` | left=0x0119, top=0x006E, right=0x0136, bottom=0x0084, target=0x0732, cursor=0x0A |
| `0x0391` | `HOTSPOT_RECT` | left=0x00F5, top=0x0118, right=0x0108, bottom=0x012F, target=0x0848, cursor=0x09 |
| `0x03A2` | `HOTSPOT_RECT` | left=0x00D2, top=0x00FA, right=0x00E8, bottom=0x010F, target=0x0848, cursor=0x09 |

### Loop `0x03B7`–`0x03EB`

Nearest preceding video in file order: VIDEOREF@0x00BE 0x5023 (GAMWAV[35]=7_e_1.vdx)

Scene candidates: VIDEOREF@0x0024 0x5026 (GAMWAV[38]=7_s_1.vdx); VIDEOREF@0x0070 0x5090 (GAMWAV[144]=gen_e_10.vdx); VIDEOREF@0x008A 0x509B (GAMWAV[155]=gen_s_4.vdx); VIDEOREF@0x00A4 0x5024 (GAMWAV[36]=7_e_2.vdx); VIDEOREF@0x00BE 0x5023 (GAMWAV[35]=7_e_1.vdx); VIDEO_TRANSITION_REF@0x0642 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x065B 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0674 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x068D 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x06A6 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x06BF 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x06D8 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x06F1 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x070A 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0723 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x073C 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0755 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x076E 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0787 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x07A0 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x07B9 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x07D2 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x07EB 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0804 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x081D 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x084E 0x3411 (LI[17]=li_pz_ot.vdx); VIDEO_TRANSITION_REF@0x085D 0x3411 (LI[17]=li_pz_ot.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x03BD` | `HOTSPOT_RECT` | left=0x0145, top=0x0066, right=0x015B, bottom=0x007D, target=0x074B, cursor=0x09 |
| `0x03CE` | `HOTSPOT_RECT` | left=0x00F5, top=0x0118, right=0x0108, bottom=0x012F, target=0x0848, cursor=0x09 |
| `0x03DF` | `HOTSPOT_RECT` | left=0x00E0, top=0x00A3, right=0x00F6, bottom=0x00B9, target=0x0848, cursor=0x09 |

### Loop `0x03F4`–`0x0439`

Nearest preceding video in file order: VIDEOREF@0x00BE 0x5023 (GAMWAV[35]=7_e_1.vdx)

Scene candidates: VIDEOREF@0x0024 0x5026 (GAMWAV[38]=7_s_1.vdx); VIDEOREF@0x0070 0x5090 (GAMWAV[144]=gen_e_10.vdx); VIDEOREF@0x008A 0x509B (GAMWAV[155]=gen_s_4.vdx); VIDEOREF@0x00A4 0x5024 (GAMWAV[36]=7_e_2.vdx); VIDEOREF@0x00BE 0x5023 (GAMWAV[35]=7_e_1.vdx); VIDEO_TRANSITION_REF@0x0642 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x065B 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0674 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x068D 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x06A6 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x06BF 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x06D8 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x06F1 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x070A 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0723 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x073C 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0755 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x076E 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0787 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x07A0 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x07B9 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x07D2 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x07EB 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0804 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x081D 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x084E 0x3411 (LI[17]=li_pz_ot.vdx); VIDEO_TRANSITION_REF@0x085D 0x3411 (LI[17]=li_pz_ot.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x03FA` | `HOTSPOT_RECT` | left=0x01B6, top=0x00B2, right=0x01CC, bottom=0x00C7, target=0x0764, cursor=0x09 |
| `0x040B` | `HOTSPOT_RECT` | left=0x00F5, top=0x0118, right=0x0108, bottom=0x012F, target=0x0848, cursor=0x09 |
| `0x041C` | `HOTSPOT_RECT` | left=0x0118, top=0x006E, right=0x012E, bottom=0x0084, target=0x0848, cursor=0x09 |
| `0x042D` | `HOTSPOT_RECT` | left=0x017E, top=0x0090, right=0x0194, bottom=0x00A4, target=0x0848, cursor=0x09 |

### Loop `0x0442`–`0x0476`

Nearest preceding video in file order: VIDEOREF@0x00BE 0x5023 (GAMWAV[35]=7_e_1.vdx)

Scene candidates: VIDEOREF@0x0024 0x5026 (GAMWAV[38]=7_s_1.vdx); VIDEOREF@0x0070 0x5090 (GAMWAV[144]=gen_e_10.vdx); VIDEOREF@0x008A 0x509B (GAMWAV[155]=gen_s_4.vdx); VIDEOREF@0x00A4 0x5024 (GAMWAV[36]=7_e_2.vdx); VIDEOREF@0x00BE 0x5023 (GAMWAV[35]=7_e_1.vdx); VIDEO_TRANSITION_REF@0x0642 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x065B 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0674 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x068D 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x06A6 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x06BF 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x06D8 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x06F1 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x070A 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0723 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x073C 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0755 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x076E 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0787 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x07A0 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x07B9 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x07D2 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x07EB 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0804 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x081D 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x084E 0x3411 (LI[17]=li_pz_ot.vdx); VIDEO_TRANSITION_REF@0x085D 0x3411 (LI[17]=li_pz_ot.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0448` | `HOTSPOT_RECT` | left=0x01B2, top=0x0111, right=0x01C8, bottom=0x0127, target=0x077D, cursor=0x0A |
| `0x0459` | `HOTSPOT_RECT` | left=0x0146, top=0x0068, right=0x015C, bottom=0x007D, target=0x0848, cursor=0x09 |
| `0x046A` | `HOTSPOT_RECT` | left=0x017E, top=0x0090, right=0x0194, bottom=0x00A4, target=0x0848, cursor=0x09 |

### Loop `0x047F`–`0x04B3`

Nearest preceding video in file order: VIDEOREF@0x00BE 0x5023 (GAMWAV[35]=7_e_1.vdx)

Scene candidates: VIDEOREF@0x0024 0x5026 (GAMWAV[38]=7_s_1.vdx); VIDEOREF@0x0070 0x5090 (GAMWAV[144]=gen_e_10.vdx); VIDEOREF@0x008A 0x509B (GAMWAV[155]=gen_s_4.vdx); VIDEOREF@0x00A4 0x5024 (GAMWAV[36]=7_e_2.vdx); VIDEOREF@0x00BE 0x5023 (GAMWAV[35]=7_e_1.vdx); VIDEO_TRANSITION_REF@0x0642 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x065B 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0674 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x068D 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x06A6 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x06BF 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x06D8 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x06F1 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x070A 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0723 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x073C 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0755 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x076E 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0787 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x07A0 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x07B9 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x07D2 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x07EB 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0804 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x081D 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x084E 0x3411 (LI[17]=li_pz_ot.vdx); VIDEO_TRANSITION_REF@0x085D 0x3411 (LI[17]=li_pz_ot.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0485` | `HOTSPOT_RECT` | left=0x017E, top=0x008F, right=0x0194, bottom=0x00A4, target=0x0796, cursor=0x0A |
| `0x0496` | `HOTSPOT_RECT` | left=0x01B7, top=0x00B0, right=0x01CD, bottom=0x00C7, target=0x0848, cursor=0x09 |
| `0x04A7` | `HOTSPOT_RECT` | left=0x0189, top=0x013F, right=0x01A0, bottom=0x0156, target=0x0848, cursor=0x09 |

### Loop `0x04BC`–`0x0523`

Nearest preceding video in file order: VIDEOREF@0x00BE 0x5023 (GAMWAV[35]=7_e_1.vdx)

Scene candidates: VIDEOREF@0x0024 0x5026 (GAMWAV[38]=7_s_1.vdx); VIDEOREF@0x0070 0x5090 (GAMWAV[144]=gen_e_10.vdx); VIDEOREF@0x008A 0x509B (GAMWAV[155]=gen_s_4.vdx); VIDEOREF@0x00A4 0x5024 (GAMWAV[36]=7_e_2.vdx); VIDEOREF@0x00BE 0x5023 (GAMWAV[35]=7_e_1.vdx); VIDEO_TRANSITION_REF@0x0642 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x065B 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0674 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x068D 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x06A6 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x06BF 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x06D8 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x06F1 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x070A 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0723 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x073C 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0755 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x076E 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0787 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x07A0 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x07B9 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x07D2 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x07EB 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0804 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x081D 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x084E 0x3411 (LI[17]=li_pz_ot.vdx); VIDEO_TRANSITION_REF@0x085D 0x3411 (LI[17]=li_pz_ot.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x04C2` | `HOTSPOT_RECT` | left=0x0182, top=0x00D2, right=0x0198, bottom=0x00E8, target=0x07AF, cursor=0x0A |
| `0x04D3` | `HOTSPOT_RECT` | left=0x0146, top=0x0068, right=0x015C, bottom=0x007D, target=0x0848, cursor=0x09 |
| `0x04E4` | `HOTSPOT_RECT` | left=0x01B7, top=0x00B0, right=0x01CD, bottom=0x00C7, target=0x0848, cursor=0x09 |
| `0x04F5` | `HOTSPOT_RECT` | left=0x01B0, top=0x0111, right=0x01C9, bottom=0x0127, target=0x0848, cursor=0x09 |
| `0x0506` | `HOTSPOT_RECT` | left=0x0189, top=0x013F, right=0x01A0, bottom=0x0156, target=0x0848, cursor=0x09 |
| `0x0517` | `HOTSPOT_RECT` | left=0x012D, top=0x0091, right=0x013F, bottom=0x00A6, target=0x0848, cursor=0x09 |

### Loop `0x052C`–`0x0560`

Nearest preceding video in file order: VIDEOREF@0x00BE 0x5023 (GAMWAV[35]=7_e_1.vdx)

Scene candidates: VIDEOREF@0x0024 0x5026 (GAMWAV[38]=7_s_1.vdx); VIDEOREF@0x0070 0x5090 (GAMWAV[144]=gen_e_10.vdx); VIDEOREF@0x008A 0x509B (GAMWAV[155]=gen_s_4.vdx); VIDEOREF@0x00A4 0x5024 (GAMWAV[36]=7_e_2.vdx); VIDEOREF@0x00BE 0x5023 (GAMWAV[35]=7_e_1.vdx); VIDEO_TRANSITION_REF@0x0642 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x065B 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0674 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x068D 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x06A6 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x06BF 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x06D8 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x06F1 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x070A 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0723 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x073C 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0755 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x076E 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0787 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x07A0 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x07B9 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x07D2 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x07EB 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0804 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x081D 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x084E 0x3411 (LI[17]=li_pz_ot.vdx); VIDEO_TRANSITION_REF@0x085D 0x3411 (LI[17]=li_pz_ot.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0532` | `HOTSPOT_RECT` | left=0x0174, top=0x0108, right=0x018A, bottom=0x011F, target=0x07C8, cursor=0x0A |
| `0x0543` | `HOTSPOT_RECT` | left=0x017E, top=0x0090, right=0x0194, bottom=0x00A4, target=0x0848, cursor=0x09 |
| `0x0554` | `HOTSPOT_RECT` | left=0x0155, top=0x0123, right=0x016C, bottom=0x013B, target=0x0848, cursor=0x09 |

### Loop `0x0569`–`0x059D`

Nearest preceding video in file order: VIDEOREF@0x00BE 0x5023 (GAMWAV[35]=7_e_1.vdx)

Scene candidates: VIDEOREF@0x0024 0x5026 (GAMWAV[38]=7_s_1.vdx); VIDEOREF@0x0070 0x5090 (GAMWAV[144]=gen_e_10.vdx); VIDEOREF@0x008A 0x509B (GAMWAV[155]=gen_s_4.vdx); VIDEOREF@0x00A4 0x5024 (GAMWAV[36]=7_e_2.vdx); VIDEOREF@0x00BE 0x5023 (GAMWAV[35]=7_e_1.vdx); VIDEO_TRANSITION_REF@0x0642 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x065B 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0674 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x068D 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x06A6 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x06BF 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x06D8 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x06F1 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x070A 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0723 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x073C 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0755 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x076E 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0787 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x07A0 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x07B9 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x07D2 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x07EB 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0804 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x081D 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x084E 0x3411 (LI[17]=li_pz_ot.vdx); VIDEO_TRANSITION_REF@0x085D 0x3411 (LI[17]=li_pz_ot.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x056F` | `HOTSPOT_RECT` | left=0x0156, top=0x0125, right=0x016A, bottom=0x013B, target=0x07E1, cursor=0x0A |
| `0x0580` | `HOTSPOT_RECT` | left=0x0181, top=0x00D2, right=0x0198, bottom=0x00EA, target=0x0848, cursor=0x09 |
| `0x0591` | `HOTSPOT_RECT` | left=0x0109, top=0x00EF, right=0x011F, bottom=0x0105, target=0x0848, cursor=0x09 |

### Loop `0x05A6`–`0x05FC`

Nearest preceding video in file order: VIDEOREF@0x00BE 0x5023 (GAMWAV[35]=7_e_1.vdx)

Scene candidates: VIDEOREF@0x0024 0x5026 (GAMWAV[38]=7_s_1.vdx); VIDEOREF@0x0070 0x5090 (GAMWAV[144]=gen_e_10.vdx); VIDEOREF@0x008A 0x509B (GAMWAV[155]=gen_s_4.vdx); VIDEOREF@0x00A4 0x5024 (GAMWAV[36]=7_e_2.vdx); VIDEOREF@0x00BE 0x5023 (GAMWAV[35]=7_e_1.vdx); VIDEO_TRANSITION_REF@0x0642 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x065B 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0674 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x068D 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x06A6 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x06BF 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x06D8 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x06F1 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x070A 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0723 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x073C 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0755 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x076E 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0787 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x07A0 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x07B9 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x07D2 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x07EB 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0804 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x081D 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x084E 0x3411 (LI[17]=li_pz_ot.vdx); VIDEO_TRANSITION_REF@0x085D 0x3411 (LI[17]=li_pz_ot.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x05AC` | `HOTSPOT_RECT` | left=0x013E, top=0x013C, right=0x0153, bottom=0x0151, target=0x07FA, cursor=0x09 |
| `0x05BD` | `HOTSPOT_RECT` | left=0x0152, top=0x00AF, right=0x016A, bottom=0x00C3, target=0x0848, cursor=0x09 |
| `0x05CE` | `HOTSPOT_RECT` | left=0x0181, top=0x00D2, right=0x0198, bottom=0x00EA, target=0x0848, cursor=0x09 |
| `0x05DF` | `HOTSPOT_RECT` | left=0x0174, top=0x0108, right=0x018B, bottom=0x011F, target=0x0848, cursor=0x09 |
| `0x05F0` | `HOTSPOT_RECT` | left=0x0189, top=0x013F, right=0x01A0, bottom=0x0156, target=0x0848, cursor=0x09 |

### Loop `0x0605`–`0x0628`

Nearest preceding video in file order: VIDEOREF@0x00BE 0x5023 (GAMWAV[35]=7_e_1.vdx)

Scene candidates: VIDEOREF@0x0024 0x5026 (GAMWAV[38]=7_s_1.vdx); VIDEOREF@0x0070 0x5090 (GAMWAV[144]=gen_e_10.vdx); VIDEOREF@0x008A 0x509B (GAMWAV[155]=gen_s_4.vdx); VIDEOREF@0x00A4 0x5024 (GAMWAV[36]=7_e_2.vdx); VIDEOREF@0x00BE 0x5023 (GAMWAV[35]=7_e_1.vdx); VIDEO_TRANSITION_REF@0x0642 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x065B 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0674 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x068D 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x06A6 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x06BF 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x06D8 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x06F1 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x070A 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0723 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x073C 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0755 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x076E 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0787 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x07A0 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x07B9 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x07D2 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x07EB 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x0804 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x081D 0x3426 (LI[38]=li_nolet.vdx); VIDEO_TRANSITION_REF@0x084E 0x3411 (LI[17]=li_pz_ot.vdx); VIDEO_TRANSITION_REF@0x085D 0x3411 (LI[17]=li_pz_ot.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x060B` | `HOTSPOT_RECT` | left=0x0189, top=0x0140, right=0x019F, bottom=0x0155, target=0x0813, cursor=0x0A |
| `0x061C` | `HOTSPOT_RECT` | left=0x0155, top=0x0123, right=0x016C, bottom=0x013B, target=0x0848, cursor=0x09 |

## MAZE.GRV

Input loops: 128

### Loop `0x0028`–`0x002C`

Nearest preceding video in file order: VIDEOREF@0x0025 0x5035 (GAMWAV[53]=8_s_9.vdx)

Scene candidates: VIDEOREF@0x0025 0x5035 (GAMWAV[53]=8_s_9.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0029` | `HOTSPOT_LEFT` | target=0x002D |

### Loop `0x0044`–`0x004B`

Nearest preceding video in file order: VIDEOREF@0x0041 0x3C4A (MC[74]=mt_l_st.vdx)

Scene candidates: VIDEOREF@0x0041 0x3C4A (MC[74]=mt_l_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0045` | `HOTSPOT_CENTER_2` | target=0x0056 |
| `0x0048` | `HOTSPOT_LEFT` | target=0x004C |

### Loop `0x005F`–`0x0066`

Nearest preceding video in file order: VIDEOREF@0x005C 0x3C4E (MC[78]=mt_r_st.vdx)

Scene candidates: VIDEOREF@0x005C 0x3C4E (MC[78]=mt_r_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0060` | `HOTSPOT_RIGHT` | target=0x006D |
| `0x0063` | `HOTSPOT_CENTER_2` | target=0x0067 |

### Loop `0x0076`–`0x007D`

Nearest preceding video in file order: VIDEOREF@0x0073 0x3C38 (MC[56]=mh_l_st.vdx)

Scene candidates: VIDEOREF@0x0073 0x3C38 (MC[56]=mh_l_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0077` | `HOTSPOT_LEFT` | target=0x007E |
| `0x007A` | `HOTSPOT_CENTER_2` | target=0x0088 |

### Loop `0x009D`–`0x00A4`

Nearest preceding video in file order: VIDEOREF@0x009A 0x3C3C (MC[60]=mh_r_st.vdx)

Scene candidates: VIDEOREF@0x009A 0x3C3C (MC[60]=mh_r_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x009E` | `HOTSPOT_RIGHT` | target=0x00AB |
| `0x00A1` | `HOTSPOT_CENTER_2` | target=0x00A5 |

### Loop `0x00AE`–`0x00B5`

Nearest preceding video in file order: VIDEOREF@0x00AB 0x3C3D (MC[61]=mh_r_tu.vdx)

Scene candidates: VIDEOREF@0x0082 0x5038 (GAMWAV[56]=8_s_12.vdx); VIDEOREF@0x00AB 0x3C3D (MC[61]=mh_r_tu.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x00AF` | `HOTSPOT_RIGHT` | target=0x00BC |
| `0x00B2` | `HOTSPOT_LEFT` | target=0x00B6 |

### Loop `0x00C5`–`0x00CC`

Nearest preceding video in file order: VIDEOREF@0x00C2 0x3C38 (MC[56]=mh_l_st.vdx)

Scene candidates: VIDEOREF@0x00C2 0x3C38 (MC[56]=mh_l_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x00C6` | `HOTSPOT_LEFT` | target=0x00CD |
| `0x00C9` | `HOTSPOT_CENTER_2` | target=0x00D7 |

### Loop `0x00E0`–`0x00E7`

Nearest preceding video in file order: VIDEOREF@0x00DD 0x3C3C (MC[60]=mh_r_st.vdx)

Scene candidates: VIDEOREF@0x00DD 0x3C3C (MC[60]=mh_r_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x00E1` | `HOTSPOT_RIGHT` | target=0x00EE |
| `0x00E4` | `HOTSPOT_CENTER_2` | target=0x00E8 |

### Loop `0x00F1`–`0x00F8`

Nearest preceding video in file order: VIDEOREF@0x00EE 0x3C3D (MC[61]=mh_r_tu.vdx)

Scene candidates: VIDEOREF@0x00D1 0x3C39 (MC[57]=mh_l_tu.vdx); VIDEOREF@0x00EE 0x3C3D (MC[61]=mh_r_tu.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x00F2` | `HOTSPOT_LEFT` | target=0x00F9 |
| `0x00F5` | `HOTSPOT_RIGHT` | target=0x00FF |

### Loop `0x0108`–`0x010F`

Nearest preceding video in file order: VIDEOREF@0x0105 0x3C50 (MC[80]=mt_stop.vdx)

Scene candidates: VIDEOREF@0x0105 0x3C50 (MC[80]=mt_stop.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0109` | `HOTSPOT_LEFT` | target=0x0110 |
| `0x010C` | `HOTSPOT_RIGHT` | target=0x0116 |

### Loop `0x011C`–`0x0123`

Nearest preceding video in file order: VIDEOREF@0x0119 0x3C4A (MC[74]=mt_l_st.vdx)

Scene candidates: VIDEOREF@0x0119 0x3C4A (MC[74]=mt_l_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x011D` | `HOTSPOT_CENTER_2` | target=0x012E |
| `0x0120` | `HOTSPOT_LEFT` | target=0x0124 |

### Loop `0x0134`–`0x013B`

Nearest preceding video in file order: VIDEOREF@0x0131 0x3C4E (MC[78]=mt_r_st.vdx)

Scene candidates: VIDEOREF@0x0131 0x3C4E (MC[78]=mt_r_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0135` | `HOTSPOT_RIGHT` | target=0x0142 |
| `0x0138` | `HOTSPOT_CENTER_2` | target=0x013C |

### Loop `0x014B`–`0x0152`

Nearest preceding video in file order: VIDEOREF@0x0148 0x3C3C (MC[60]=mh_r_st.vdx)

Scene candidates: VIDEOREF@0x0148 0x3C3C (MC[60]=mh_r_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x014C` | `HOTSPOT_RIGHT` | target=0x0159 |
| `0x014F` | `HOTSPOT_CENTER_2` | target=0x0153 |

### Loop `0x015C`–`0x0163`

Nearest preceding video in file order: VIDEOREF@0x0159 0x3C3D (MC[61]=mh_r_tu.vdx)

Scene candidates: VIDEOREF@0x0159 0x3C3D (MC[61]=mh_r_tu.vdx); VIDEOREF@0x01CA 0x3C39 (MC[57]=mh_l_tu.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x015D` | `HOTSPOT_RIGHT` | target=0x016A |
| `0x0160` | `HOTSPOT_LEFT` | target=0x0164 |

### Loop `0x0173`–`0x017A`

Nearest preceding video in file order: VIDEOREF@0x0170 0x3C38 (MC[56]=mh_l_st.vdx)

Scene candidates: VIDEOREF@0x0170 0x3C38 (MC[56]=mh_l_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0174` | `HOTSPOT_LEFT` | target=0x017B |
| `0x0177` | `HOTSPOT_CENTER_2` | target=0x0185 |

### Loop `0x018E`–`0x0195`

Nearest preceding video in file order: VIDEOREF@0x018B 0x3C3C (MC[60]=mh_r_st.vdx)

Scene candidates: VIDEOREF@0x018B 0x3C3C (MC[60]=mh_r_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x018F` | `HOTSPOT_CENTER_2` | target=0x0196 |
| `0x0192` | `HOTSPOT_RIGHT` | target=0x019C |

### Loop `0x019F`–`0x01A6`

Nearest preceding video in file order: VIDEOREF@0x019C 0x3C3D (MC[61]=mh_r_tu.vdx)

Scene candidates: VIDEOREF@0x017F 0x3C39 (MC[57]=mh_l_tu.vdx); VIDEOREF@0x019C 0x3C3D (MC[61]=mh_r_tu.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x01A0` | `HOTSPOT_RIGHT` | target=0x01AD |
| `0x01A3` | `HOTSPOT_LEFT` | target=0x01A7 |

### Loop `0x01C2`–`0x01C9`

Nearest preceding video in file order: VIDEOREF@0x01BF 0x3C38 (MC[56]=mh_l_st.vdx)

Scene candidates: VIDEOREF@0x01BF 0x3C38 (MC[56]=mh_l_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x01C3` | `HOTSPOT_LEFT` | target=0x01CA |
| `0x01C6` | `HOTSPOT_CENTER_2` | target=0x01D0 |

### Loop `0x01DD`–`0x01E4`

Nearest preceding video in file order: VIDEOREF@0x01DA 0x3C50 (MC[80]=mt_stop.vdx)

Scene candidates: VIDEOREF@0x01DA 0x3C50 (MC[80]=mt_stop.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x01DE` | `HOTSPOT_LEFT` | target=0x01E5 |
| `0x01E1` | `HOTSPOT_RIGHT` | target=0x01EB |

### Loop `0x01F6`–`0x01FD`

Nearest preceding video in file order: VIDEOREF@0x01F3 0x3C4A (MC[74]=mt_l_st.vdx)

Scene candidates: VIDEOREF@0x01F3 0x3C4A (MC[74]=mt_l_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x01F7` | `HOTSPOT_CENTER_2` | target=0x0204 |
| `0x01FA` | `HOTSPOT_LEFT` | target=0x01FE |

### Loop `0x020F`–`0x0216`

Nearest preceding video in file order: VIDEOREF@0x020C 0x3C4A (MC[74]=mt_l_st.vdx)

Scene candidates: VIDEOREF@0x020C 0x3C4A (MC[74]=mt_l_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0210` | `HOTSPOT_CENTER_2` | target=0x021D |
| `0x0213` | `HOTSPOT_LEFT` | target=0x0217 |

### Loop `0x0226`–`0x022D`

Nearest preceding video in file order: VIDEOREF@0x0223 0x3C4E (MC[78]=mt_r_st.vdx)

Scene candidates: VIDEOREF@0x0223 0x3C4E (MC[78]=mt_r_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0227` | `HOTSPOT_RIGHT` | target=0x0234 |
| `0x022A` | `HOTSPOT_CENTER_2` | target=0x022E |

### Loop `0x0267`–`0x026E`

Nearest preceding video in file order: VIDEOREF@0x0264 0x3C50 (MC[80]=mt_stop.vdx)

Scene candidates: VIDEOREF@0x0264 0x3C50 (MC[80]=mt_stop.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0268` | `HOTSPOT_RIGHT` | target=0x0275 |
| `0x026B` | `HOTSPOT_LEFT` | target=0x026F |

### Loop `0x0280`–`0x0287`

Nearest preceding video in file order: VIDEOREF@0x027D 0x3C4A (MC[74]=mt_l_st.vdx)

Scene candidates: VIDEOREF@0x027D 0x3C4A (MC[74]=mt_l_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0281` | `HOTSPOT_CENTER_2` | target=0x028E |
| `0x0284` | `HOTSPOT_LEFT` | target=0x0288 |

### Loop `0x0297`–`0x029E`

Nearest preceding video in file order: VIDEOREF@0x0294 0x3C4E (MC[78]=mt_r_st.vdx)

Scene candidates: VIDEOREF@0x0294 0x3C4E (MC[78]=mt_r_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0298` | `HOTSPOT_RIGHT` | target=0x02A5 |
| `0x029B` | `HOTSPOT_CENTER_2` | target=0x029F |

### Loop `0x02B0`–`0x02B7`

Nearest preceding video in file order: VIDEOREF@0x02AD 0x3C3C (MC[60]=mh_r_st.vdx)

Scene candidates: VIDEOREF@0x02AD 0x3C3C (MC[60]=mh_r_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x02B1` | `HOTSPOT_CENTER_2` | target=0x02B8 |
| `0x02B4` | `HOTSPOT_RIGHT` | target=0x02BE |

### Loop `0x02C1`–`0x02C8`

Nearest preceding video in file order: VIDEOREF@0x02BE 0x3C3D (MC[61]=mh_r_tu.vdx)

Scene candidates: VIDEOREF@0x02BE 0x3C3D (MC[61]=mh_r_tu.vdx); VIDEOREF@0x0349 0x3C39 (MC[57]=mh_l_tu.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x02C2` | `HOTSPOT_LEFT` | target=0x02C9 |
| `0x02C5` | `HOTSPOT_RIGHT` | target=0x02CF |

### Loop `0x02DE`–`0x02E5`

Nearest preceding video in file order: VIDEOREF@0x02DB 0x3C38 (MC[56]=mh_l_st.vdx)

Scene candidates: VIDEOREF@0x02DB 0x3C38 (MC[56]=mh_l_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x02DF` | `HOTSPOT_LEFT` | target=0x02E6 |
| `0x02E2` | `HOTSPOT_CENTER_2` | target=0x02EC |

### Loop `0x02FF`–`0x0306`

Nearest preceding video in file order: VIDEOREF@0x02FC 0x3C3C (MC[60]=mh_r_st.vdx)

Scene candidates: VIDEOREF@0x02FC 0x3C3C (MC[60]=mh_r_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0300` | `HOTSPOT_RIGHT` | target=0x030D |
| `0x0303` | `HOTSPOT_CENTER_2` | target=0x0307 |

### Loop `0x0310`–`0x0317`

Nearest preceding video in file order: VIDEOREF@0x030D 0x3C3D (MC[61]=mh_r_tu.vdx)

Scene candidates: VIDEOREF@0x02E6 0x3C39 (MC[57]=mh_l_tu.vdx); VIDEOREF@0x030D 0x3C3D (MC[61]=mh_r_tu.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0311` | `HOTSPOT_RIGHT` | target=0x031E |
| `0x0314` | `HOTSPOT_LEFT` | target=0x0318 |

### Loop `0x0341`–`0x0348`

Nearest preceding video in file order: VIDEOREF@0x033E 0x3C38 (MC[56]=mh_l_st.vdx)

Scene candidates: VIDEOREF@0x033E 0x3C38 (MC[56]=mh_l_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0342` | `HOTSPOT_LEFT` | target=0x0349 |
| `0x0345` | `HOTSPOT_CENTER_2` | target=0x034F |

### Loop `0x035A`–`0x0361`

Nearest preceding video in file order: VIDEOREF@0x0357 0x3C50 (MC[80]=mt_stop.vdx)

Scene candidates: VIDEOREF@0x0357 0x3C50 (MC[80]=mt_stop.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x035B` | `HOTSPOT_RIGHT` | target=0x0368 |
| `0x035E` | `HOTSPOT_LEFT` | target=0x0362 |

### Loop `0x0371`–`0x0378`

Nearest preceding video in file order: VIDEOREF@0x036E 0x3C4E (MC[78]=mt_r_st.vdx)

Scene candidates: VIDEOREF@0x036E 0x3C4E (MC[78]=mt_r_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0372` | `HOTSPOT_RIGHT` | target=0x037F |
| `0x0375` | `HOTSPOT_CENTER_2` | target=0x0379 |

### Loop `0x038A`–`0x0391`

Nearest preceding video in file order: VIDEOREF@0x0387 0x3C38 (MC[56]=mh_l_st.vdx)

Scene candidates: VIDEOREF@0x0387 0x3C38 (MC[56]=mh_l_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x038B` | `HOTSPOT_LEFT` | target=0x0392 |
| `0x038E` | `HOTSPOT_CENTER_2` | target=0x0398 |

### Loop `0x03A3`–`0x03AA`

Nearest preceding video in file order: VIDEOREF@0x03A0 0x3C50 (MC[80]=mt_stop.vdx)

Scene candidates: VIDEOREF@0x03A0 0x3C50 (MC[80]=mt_stop.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x03A4` | `HOTSPOT_LEFT` | target=0x03AB |
| `0x03A7` | `HOTSPOT_RIGHT` | target=0x03B1 |

### Loop `0x03BC`–`0x03C3`

Nearest preceding video in file order: VIDEOREF@0x03B9 0x3C4E (MC[78]=mt_r_st.vdx)

Scene candidates: VIDEOREF@0x03B9 0x3C4E (MC[78]=mt_r_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x03BD` | `HOTSPOT_RIGHT` | target=0x03CA |
| `0x03C0` | `HOTSPOT_CENTER_2` | target=0x03C4 |

### Loop `0x03DB`–`0x03E2`

Nearest preceding video in file order: VIDEOREF@0x03D8 0x3C3C (MC[60]=mh_r_st.vdx)

Scene candidates: VIDEOREF@0x03D8 0x3C3C (MC[60]=mh_r_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x03DC` | `HOTSPOT_RIGHT` | target=0x03E9 |
| `0x03DF` | `HOTSPOT_CENTER_2` | target=0x03E3 |

### Loop `0x03EC`–`0x03F3`

Nearest preceding video in file order: VIDEOREF@0x03E9 0x3C3D (MC[61]=mh_r_tu.vdx)

Scene candidates: VIDEOREF@0x03E9 0x3C3D (MC[61]=mh_r_tu.vdx); VIDEOREF@0x0650 0x3C39 (MC[57]=mh_l_tu.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x03ED` | `HOTSPOT_LEFT` | target=0x03F4 |
| `0x03F0` | `HOTSPOT_RIGHT` | target=0x03FA |

### Loop `0x0409`–`0x0410`

Nearest preceding video in file order: VIDEOREF@0x0406 0x3C38 (MC[56]=mh_l_st.vdx)

Scene candidates: VIDEOREF@0x0406 0x3C38 (MC[56]=mh_l_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x040A` | `HOTSPOT_LEFT` | target=0x0411 |
| `0x040D` | `HOTSPOT_CENTER_2` | target=0x0417 |

### Loop `0x042A`–`0x0431`

Nearest preceding video in file order: VIDEOREF@0x0427 0x3C4E (MC[78]=mt_r_st.vdx)

Scene candidates: VIDEOREF@0x0427 0x3C4E (MC[78]=mt_r_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x042B` | `HOTSPOT_CENTER_2` | target=0x0432 |
| `0x042E` | `HOTSPOT_RIGHT` | target=0x0438 |

### Loop `0x044F`–`0x0456`

Nearest preceding video in file order: VIDEOREF@0x044C 0x3C38 (MC[56]=mh_l_st.vdx)

Scene candidates: VIDEOREF@0x044C 0x3C38 (MC[56]=mh_l_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0450` | `HOTSPOT_LEFT` | target=0x0457 |
| `0x0453` | `HOTSPOT_CENTER_2` | target=0x045D |

### Loop `0x0471`–`0x0478`

Nearest preceding video in file order: VIDEOREF@0x046E 0x3C3C (MC[60]=mh_r_st.vdx)

Scene candidates: VIDEOREF@0x046E 0x3C3C (MC[60]=mh_r_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0472` | `HOTSPOT_CENTER_2` | target=0x0479 |
| `0x0475` | `HOTSPOT_RIGHT` | target=0x047F |

### Loop `0x0482`–`0x0489`

Nearest preceding video in file order: VIDEOREF@0x047F 0x3C3D (MC[61]=mh_r_tu.vdx)

Scene candidates: VIDEOREF@0x047F 0x3C3D (MC[61]=mh_r_tu.vdx); VIDEOREF@0x052F 0x3C39 (MC[57]=mh_l_tu.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0483` | `HOTSPOT_LEFT` | target=0x048A |
| `0x0486` | `HOTSPOT_RIGHT` | target=0x0494 |

### Loop `0x04A1`–`0x04A8`

Nearest preceding video in file order: VIDEOREF@0x049E 0x3C38 (MC[56]=mh_l_st.vdx)

Scene candidates: VIDEOREF@0x049E 0x3C38 (MC[56]=mh_l_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x04A2` | `HOTSPOT_LEFT` | target=0x04A9 |
| `0x04A5` | `HOTSPOT_CENTER_2` | target=0x04B3 |

### Loop `0x04F5`–`0x04FC`

Nearest preceding video in file order: VIDEOREF@0x04F2 0x3C3C (MC[60]=mh_r_st.vdx)

Scene candidates: No statically reachable preceding video

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x04F6` | `HOTSPOT_CENTER_2` | target=0x04FD |
| `0x04F9` | `HOTSPOT_RIGHT` | target=0x0503 |

### Loop `0x0506`–`0x050D`

Nearest preceding video in file order: VIDEOREF@0x0503 0x3C3D (MC[61]=mh_r_tu.vdx)

Scene candidates: VIDEOREF@0x04AD 0x3C39 (MC[57]=mh_l_tu.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0507` | `HOTSPOT_RIGHT` | target=0x0514 |
| `0x050A` | `HOTSPOT_LEFT` | target=0x050E |

### Loop `0x0527`–`0x052E`

Nearest preceding video in file order: VIDEOREF@0x0524 0x3C38 (MC[56]=mh_l_st.vdx)

Scene candidates: VIDEOREF@0x0524 0x3C38 (MC[56]=mh_l_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0528` | `HOTSPOT_LEFT` | target=0x052F |
| `0x052B` | `HOTSPOT_CENTER_2` | target=0x0535 |

### Loop `0x0549`–`0x0550`

Nearest preceding video in file order: VIDEOREF@0x0546 0x3C3C (MC[60]=mh_r_st.vdx)

Scene candidates: VIDEOREF@0x0546 0x3C3C (MC[60]=mh_r_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x054A` | `HOTSPOT_RIGHT` | target=0x0557 |
| `0x054D` | `HOTSPOT_CENTER_2` | target=0x0551 |

### Loop `0x055A`–`0x0561`

Nearest preceding video in file order: VIDEOREF@0x0557 0x3C3D (MC[61]=mh_r_tu.vdx)

Scene candidates: VIDEOREF@0x0457 0x3C39 (MC[57]=mh_l_tu.vdx); VIDEOREF@0x0557 0x3C3D (MC[61]=mh_r_tu.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x055B` | `HOTSPOT_RIGHT` | target=0x0568 |
| `0x055E` | `HOTSPOT_LEFT` | target=0x0562 |

### Loop `0x0577`–`0x057E`

Nearest preceding video in file order: VIDEOREF@0x0574 0x3C38 (MC[56]=mh_l_st.vdx)

Scene candidates: VIDEOREF@0x0574 0x3C38 (MC[56]=mh_l_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0578` | `HOTSPOT_LEFT` | target=0x057F |
| `0x057B` | `HOTSPOT_CENTER_2` | target=0x0585 |

### Loop `0x058E`–`0x0595`

Nearest preceding video in file order: VIDEOREF@0x058B 0x3C3C (MC[60]=mh_r_st.vdx)

Scene candidates: VIDEOREF@0x058B 0x3C3C (MC[60]=mh_r_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x058F` | `HOTSPOT_RIGHT` | target=0x059C |
| `0x0592` | `HOTSPOT_CENTER_2` | target=0x0596 |

### Loop `0x059F`–`0x05A6`

Nearest preceding video in file order: VIDEOREF@0x059C 0x3C3D (MC[61]=mh_r_tu.vdx)

Scene candidates: VIDEOREF@0x057F 0x3C39 (MC[57]=mh_l_tu.vdx); VIDEOREF@0x059C 0x3C3D (MC[61]=mh_r_tu.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x05A0` | `HOTSPOT_LEFT` | target=0x05A7 |
| `0x05A3` | `HOTSPOT_RIGHT` | target=0x05AD |

### Loop `0x05C4`–`0x05CB`

Nearest preceding video in file order: VIDEOREF@0x05C1 0x3C50 (MC[80]=mt_stop.vdx)

Scene candidates: VIDEOREF@0x05C1 0x3C50 (MC[80]=mt_stop.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x05C5` | `HOTSPOT_RIGHT` | target=0x05D2 |
| `0x05C8` | `HOTSPOT_LEFT` | target=0x05CC |

### Loop `0x05F5`–`0x05FC`

Nearest preceding video in file order: VIDEOREF@0x05F2 0x3C4A (MC[74]=mt_l_st.vdx)

Scene candidates: VIDEOREF@0x05F2 0x3C4A (MC[74]=mt_l_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x05F6` | `HOTSPOT_LEFT` | target=0x05FD |
| `0x05F9` | `HOTSPOT_CENTER_2` | target=0x0603 |

### Loop `0x0616`–`0x061D`

Nearest preceding video in file order: VIDEOREF@0x0613 0x3C3C (MC[60]=mh_r_st.vdx)

Scene candidates: VIDEOREF@0x0613 0x3C3C (MC[60]=mh_r_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0617` | `HOTSPOT_RIGHT` | target=0x0624 |
| `0x061A` | `HOTSPOT_CENTER_2` | target=0x061E |

### Loop `0x0627`–`0x062E`

Nearest preceding video in file order: VIDEOREF@0x0624 0x3C3D (MC[61]=mh_r_tu.vdx)

Scene candidates: VIDEOREF@0x0411 0x3C39 (MC[57]=mh_l_tu.vdx); VIDEOREF@0x0624 0x3C3D (MC[61]=mh_r_tu.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0628` | `HOTSPOT_RIGHT` | target=0x0635 |
| `0x062B` | `HOTSPOT_LEFT` | target=0x062F |

### Loop `0x0648`–`0x064F`

Nearest preceding video in file order: VIDEOREF@0x0645 0x3C38 (MC[56]=mh_l_st.vdx)

Scene candidates: VIDEOREF@0x0645 0x3C38 (MC[56]=mh_l_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0649` | `HOTSPOT_LEFT` | target=0x0650 |
| `0x064C` | `HOTSPOT_CENTER_2` | target=0x0656 |

### Loop `0x0667`–`0x066E`

Nearest preceding video in file order: VIDEOREF@0x0664 0x3C50 (MC[80]=mt_stop.vdx)

Scene candidates: VIDEOREF@0x0664 0x3C50 (MC[80]=mt_stop.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0668` | `HOTSPOT_RIGHT` | target=0x0675 |
| `0x066B` | `HOTSPOT_LEFT` | target=0x066F |

### Loop `0x0688`–`0x068F`

Nearest preceding video in file order: VIDEOREF@0x0685 0x3C4A (MC[74]=mt_l_st.vdx)

Scene candidates: VIDEOREF@0x0685 0x3C4A (MC[74]=mt_l_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0689` | `HOTSPOT_CENTER_2` | target=0x0696 |
| `0x068C` | `HOTSPOT_LEFT` | target=0x0690 |

### Loop `0x06A1`–`0x06A8`

Nearest preceding video in file order: VIDEOREF@0x069E 0x3C4A (MC[74]=mt_l_st.vdx)

Scene candidates: VIDEOREF@0x069E 0x3C4A (MC[74]=mt_l_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x06A2` | `HOTSPOT_CENTER_2` | target=0x06AF |
| `0x06A5` | `HOTSPOT_LEFT` | target=0x06A9 |

### Loop `0x06C2`–`0x06C9`

Nearest preceding video in file order: VIDEOREF@0x06BF 0x3C4E (MC[78]=mt_r_st.vdx)

Scene candidates: VIDEOREF@0x06BF 0x3C4E (MC[78]=mt_r_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x06C3` | `HOTSPOT_CENTER_2` | target=0x06CA |
| `0x06C6` | `HOTSPOT_RIGHT` | target=0x06D0 |

### Loop `0x06DB`–`0x06E2`

Nearest preceding video in file order: VIDEOREF@0x06D8 0x3C3C (MC[60]=mh_r_st.vdx)

Scene candidates: VIDEOREF@0x06D8 0x3C3C (MC[60]=mh_r_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x06DC` | `HOTSPOT_CENTER_2` | target=0x06E3 |
| `0x06DF` | `HOTSPOT_RIGHT` | target=0x06E9 |

### Loop `0x06EC`–`0x06F3`

Nearest preceding video in file order: VIDEOREF@0x06E9 0x3C3D (MC[61]=mh_r_tu.vdx)

Scene candidates: VIDEOREF@0x0392 0x3C39 (MC[57]=mh_l_tu.vdx); VIDEOREF@0x06E9 0x3C3D (MC[61]=mh_r_tu.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x06ED` | `HOTSPOT_RIGHT` | target=0x06FA |
| `0x06F0` | `HOTSPOT_LEFT` | target=0x06F4 |

### Loop `0x070D`–`0x0714`

Nearest preceding video in file order: VIDEOREF@0x070A 0x3C38 (MC[56]=mh_l_st.vdx)

Scene candidates: VIDEOREF@0x070A 0x3C38 (MC[56]=mh_l_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x070E` | `HOTSPOT_LEFT` | target=0x0715 |
| `0x0711` | `HOTSPOT_CENTER_2` | target=0x071B |

### Loop `0x072A`–`0x0731`

Nearest preceding video in file order: VIDEOREF@0x0727 0x3C3C (MC[60]=mh_r_st.vdx)

Scene candidates: VIDEOREF@0x0727 0x3C3C (MC[60]=mh_r_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x072B` | `HOTSPOT_CENTER_2` | target=0x0732 |
| `0x072E` | `HOTSPOT_RIGHT` | target=0x0738 |

### Loop `0x073B`–`0x0742`

Nearest preceding video in file order: VIDEOREF@0x0738 0x3C3D (MC[61]=mh_r_tu.vdx)

Scene candidates: VIDEOREF@0x0715 0x3C39 (MC[57]=mh_l_tu.vdx); VIDEOREF@0x0738 0x3C3D (MC[61]=mh_r_tu.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x073C` | `HOTSPOT_LEFT` | target=0x0743 |
| `0x073F` | `HOTSPOT_RIGHT` | target=0x0749 |

### Loop `0x0754`–`0x075B`

Nearest preceding video in file order: VIDEOREF@0x0751 0x3C50 (MC[80]=mt_stop.vdx)

Scene candidates: VIDEOREF@0x0751 0x3C50 (MC[80]=mt_stop.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0755` | `HOTSPOT_RIGHT` | target=0x0762 |
| `0x0758` | `HOTSPOT_LEFT` | target=0x075C |

### Loop `0x076B`–`0x0772`

Nearest preceding video in file order: VIDEOREF@0x0768 0x3C50 (MC[80]=mt_stop.vdx)

Scene candidates: VIDEOREF@0x0768 0x3C50 (MC[80]=mt_stop.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x076C` | `HOTSPOT_RIGHT` | target=0x0779 |
| `0x076F` | `HOTSPOT_LEFT` | target=0x0773 |

### Loop `0x078C`–`0x0793`

Nearest preceding video in file order: VIDEOREF@0x0789 0x3C4A (MC[74]=mt_l_st.vdx)

Scene candidates: VIDEOREF@0x0789 0x3C4A (MC[74]=mt_l_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x078D` | `HOTSPOT_LEFT` | target=0x0794 |
| `0x0790` | `HOTSPOT_CENTER_2` | target=0x079A |

### Loop `0x07A5`–`0x07AC`

Nearest preceding video in file order: VIDEOREF@0x07A2 0x3C38 (MC[56]=mh_l_st.vdx)

Scene candidates: VIDEOREF@0x07A2 0x3C38 (MC[56]=mh_l_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x07A6` | `HOTSPOT_LEFT` | target=0x07AD |
| `0x07A9` | `HOTSPOT_CENTER_2` | target=0x07B3 |

### Loop `0x07E2`–`0x07E9`

Nearest preceding video in file order: VIDEOREF@0x07DF 0x3C3C (MC[60]=mh_r_st.vdx)

Scene candidates: VIDEOREF@0x07DF 0x3C3C (MC[60]=mh_r_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x07E3` | `HOTSPOT_RIGHT` | target=0x07F0 |
| `0x07E6` | `HOTSPOT_CENTER_2` | target=0x07EA |

### Loop `0x07F3`–`0x07FA`

Nearest preceding video in file order: VIDEOREF@0x07F0 0x3C3D (MC[61]=mh_r_tu.vdx)

Scene candidates: VIDEOREF@0x07AD 0x3C39 (MC[57]=mh_l_tu.vdx); VIDEOREF@0x07F0 0x3C3D (MC[61]=mh_r_tu.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x07F4` | `HOTSPOT_LEFT` | target=0x07FB |
| `0x07F7` | `HOTSPOT_RIGHT` | target=0x0801 |

### Loop `0x0810`–`0x0817`

Nearest preceding video in file order: VIDEOREF@0x080D 0x3C38 (MC[56]=mh_l_st.vdx)

Scene candidates: VIDEOREF@0x080D 0x3C38 (MC[56]=mh_l_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0811` | `HOTSPOT_LEFT` | target=0x0818 |
| `0x0814` | `HOTSPOT_CENTER_2` | target=0x081E |

### Loop `0x0827`–`0x082E`

Nearest preceding video in file order: VIDEOREF@0x0824 0x3C3C (MC[60]=mh_r_st.vdx)

Scene candidates: VIDEOREF@0x0824 0x3C3C (MC[60]=mh_r_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0828` | `HOTSPOT_RIGHT` | target=0x0835 |
| `0x082B` | `HOTSPOT_CENTER_2` | target=0x082F |

### Loop `0x0838`–`0x083F`

Nearest preceding video in file order: VIDEOREF@0x0835 0x3C3D (MC[61]=mh_r_tu.vdx)

Scene candidates: VIDEOREF@0x0835 0x3C3D (MC[61]=mh_r_tu.vdx); VIDEOREF@0x08A0 0x3C39 (MC[57]=mh_l_tu.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0839` | `HOTSPOT_LEFT` | target=0x0840 |
| `0x083C` | `HOTSPOT_RIGHT` | target=0x0846 |

### Loop `0x0859`–`0x0860`

Nearest preceding video in file order: VIDEOREF@0x0856 0x3C38 (MC[56]=mh_l_st.vdx)

Scene candidates: VIDEOREF@0x0856 0x3C38 (MC[56]=mh_l_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x085A` | `HOTSPOT_CENTER_2` | target=0x0867 |
| `0x085D` | `HOTSPOT_LEFT` | target=0x0861 |

### Loop `0x0870`–`0x0877`

Nearest preceding video in file order: VIDEOREF@0x086D 0x3C3C (MC[60]=mh_r_st.vdx)

Scene candidates: VIDEOREF@0x086D 0x3C3C (MC[60]=mh_r_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0871` | `HOTSPOT_RIGHT` | target=0x087E |
| `0x0874` | `HOTSPOT_CENTER_2` | target=0x0878 |

### Loop `0x0881`–`0x0888`

Nearest preceding video in file order: VIDEOREF@0x087E 0x3C3D (MC[61]=mh_r_tu.vdx)

Scene candidates: VIDEOREF@0x0861 0x3C39 (MC[57]=mh_l_tu.vdx); VIDEOREF@0x087E 0x3C3D (MC[61]=mh_r_tu.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0882` | `HOTSPOT_RIGHT` | target=0x088F |
| `0x0885` | `HOTSPOT_LEFT` | target=0x0889 |

### Loop `0x0898`–`0x089F`

Nearest preceding video in file order: VIDEOREF@0x0895 0x3C38 (MC[56]=mh_l_st.vdx)

Scene candidates: VIDEOREF@0x0895 0x3C38 (MC[56]=mh_l_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0899` | `HOTSPOT_LEFT` | target=0x08A0 |
| `0x089C` | `HOTSPOT_CENTER_2` | target=0x08A6 |

### Loop `0x08AF`–`0x08B6`

Nearest preceding video in file order: VIDEOREF@0x08AC 0x3C3C (MC[60]=mh_r_st.vdx)

Scene candidates: VIDEOREF@0x08AC 0x3C3C (MC[60]=mh_r_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x08B0` | `HOTSPOT_RIGHT` | target=0x08BD |
| `0x08B3` | `HOTSPOT_CENTER_2` | target=0x08B7 |

### Loop `0x08C0`–`0x08C7`

Nearest preceding video in file order: VIDEOREF@0x08BD 0x3C3D (MC[61]=mh_r_tu.vdx)

Scene candidates: VIDEOREF@0x0818 0x3C39 (MC[57]=mh_l_tu.vdx); VIDEOREF@0x08BD 0x3C3D (MC[61]=mh_r_tu.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x08C1` | `HOTSPOT_RIGHT` | target=0x08CE |
| `0x08C4` | `HOTSPOT_LEFT` | target=0x08C8 |

### Loop `0x08D9`–`0x08E0`

Nearest preceding video in file order: VIDEOREF@0x08D6 0x3C4E (MC[78]=mt_r_st.vdx)

Scene candidates: VIDEOREF@0x08D6 0x3C4E (MC[78]=mt_r_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x08DA` | `HOTSPOT_RIGHT` | target=0x08E7 |
| `0x08DD` | `HOTSPOT_CENTER_2` | target=0x08E1 |

### Loop `0x08F0`–`0x08F7`

Nearest preceding video in file order: VIDEOREF@0x08ED 0x3C4A (MC[74]=mt_l_st.vdx)

Scene candidates: VIDEOREF@0x08ED 0x3C4A (MC[74]=mt_l_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x08F1` | `HOTSPOT_LEFT` | target=0x08F8 |
| `0x08F4` | `HOTSPOT_CENTER_2` | target=0x08FE |

### Loop `0x0907`–`0x090E`

Nearest preceding video in file order: VIDEOREF@0x0904 0x3C4A (MC[74]=mt_l_st.vdx)

Scene candidates: VIDEOREF@0x0904 0x3C4A (MC[74]=mt_l_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0908` | `HOTSPOT_LEFT` | target=0x090F |
| `0x090B` | `HOTSPOT_CENTER_2` | target=0x0915 |

### Loop `0x091E`–`0x0925`

Nearest preceding video in file order: VIDEOREF@0x091B 0x3C4E (MC[78]=mt_r_st.vdx)

Scene candidates: VIDEOREF@0x091B 0x3C4E (MC[78]=mt_r_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x091F` | `HOTSPOT_CENTER_2` | target=0x0926 |
| `0x0922` | `HOTSPOT_RIGHT` | target=0x092C |

### Loop `0x0945`–`0x094C`

Nearest preceding video in file order: VIDEOREF@0x0942 0x3C3C (MC[60]=mh_r_st.vdx)

Scene candidates: VIDEOREF@0x0942 0x3C3C (MC[60]=mh_r_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0946` | `HOTSPOT_CENTER_2` | target=0x094D |
| `0x0949` | `HOTSPOT_RIGHT` | target=0x0953 |

### Loop `0x0956`–`0x095D`

Nearest preceding video in file order: VIDEOREF@0x0953 0x3C3D (MC[61]=mh_r_tu.vdx)

Scene candidates: VIDEOREF@0x0953 0x3C3D (MC[61]=mh_r_tu.vdx); VIDEOREF@0x0A21 0x3C39 (MC[57]=mh_l_tu.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0957` | `HOTSPOT_RIGHT` | target=0x0964 |
| `0x095A` | `HOTSPOT_LEFT` | target=0x095E |

### Loop `0x0973`–`0x097A`

Nearest preceding video in file order: VIDEOREF@0x0970 0x3C38 (MC[56]=mh_l_st.vdx)

Scene candidates: VIDEOREF@0x0970 0x3C38 (MC[56]=mh_l_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0974` | `HOTSPOT_LEFT` | target=0x097B |
| `0x0977` | `HOTSPOT_CENTER_2` | target=0x0981 |

### Loop `0x098C`–`0x0993`

Nearest preceding video in file order: VIDEOREF@0x0989 0x3C50 (MC[80]=mt_stop.vdx)

Scene candidates: VIDEOREF@0x0989 0x3C50 (MC[80]=mt_stop.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x098D` | `HOTSPOT_RIGHT` | target=0x099A |
| `0x0990` | `HOTSPOT_LEFT` | target=0x0994 |

### Loop `0x09AD`–`0x09B4`

Nearest preceding video in file order: VIDEOREF@0x09AA 0x3C4A (MC[74]=mt_l_st.vdx)

Scene candidates: VIDEOREF@0x09AA 0x3C4A (MC[74]=mt_l_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x09AE` | `HOTSPOT_LEFT` | target=0x09B5 |
| `0x09B1` | `HOTSPOT_CENTER_2` | target=0x09BB |

### Loop `0x09CE`–`0x09D5`

Nearest preceding video in file order: VIDEOREF@0x09CB 0x3C4E (MC[78]=mt_r_st.vdx)

Scene candidates: VIDEOREF@0x09CB 0x3C4E (MC[78]=mt_r_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x09CF` | `HOTSPOT_CENTER_2` | target=0x09D6 |
| `0x09D2` | `HOTSPOT_RIGHT` | target=0x09DC |

### Loop `0x09E7`–`0x09EE`

Nearest preceding video in file order: VIDEOREF@0x09E4 0x3C3C (MC[60]=mh_r_st.vdx)

Scene candidates: VIDEOREF@0x09E4 0x3C3C (MC[60]=mh_r_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x09E8` | `HOTSPOT_CENTER_2` | target=0x09EF |
| `0x09EB` | `HOTSPOT_RIGHT` | target=0x09F5 |

### Loop `0x09F8`–`0x09FF`

Nearest preceding video in file order: VIDEOREF@0x09F5 0x3C3D (MC[61]=mh_r_tu.vdx)

Scene candidates: VIDEOREF@0x097B 0x3C39 (MC[57]=mh_l_tu.vdx); VIDEOREF@0x09F5 0x3C3D (MC[61]=mh_r_tu.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x09F9` | `HOTSPOT_LEFT` | target=0x0A00 |
| `0x09FC` | `HOTSPOT_RIGHT` | target=0x0A06 |

### Loop `0x0A19`–`0x0A20`

Nearest preceding video in file order: VIDEOREF@0x0A16 0x3C38 (MC[56]=mh_l_st.vdx)

Scene candidates: VIDEOREF@0x0A16 0x3C38 (MC[56]=mh_l_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0A1A` | `HOTSPOT_CENTER_2` | target=0x0A27 |
| `0x0A1D` | `HOTSPOT_LEFT` | target=0x0A21 |

### Loop `0x0A40`–`0x0A47`

Nearest preceding video in file order: VIDEOREF@0x0A3D 0x3C50 (MC[80]=mt_stop.vdx)

Scene candidates: VIDEOREF@0x0A3D 0x3C50 (MC[80]=mt_stop.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0A41` | `HOTSPOT_RIGHT` | target=0x0A4E |
| `0x0A44` | `HOTSPOT_LEFT` | target=0x0A48 |

### Loop `0x0A59`–`0x0A60`

Nearest preceding video in file order: VIDEOREF@0x0A56 0x3C4A (MC[74]=mt_l_st.vdx)

Scene candidates: VIDEOREF@0x0A56 0x3C4A (MC[74]=mt_l_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0A5A` | `HOTSPOT_LEFT` | target=0x0A61 |
| `0x0A5D` | `HOTSPOT_CENTER_2` | target=0x0A67 |

### Loop `0x0A70`–`0x0A77`

Nearest preceding video in file order: VIDEOREF@0x0A6D 0x3C4E (MC[78]=mt_r_st.vdx)

Scene candidates: VIDEOREF@0x0A6D 0x3C4E (MC[78]=mt_r_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0A71` | `HOTSPOT_CENTER_2` | target=0x0A78 |
| `0x0A74` | `HOTSPOT_RIGHT` | target=0x0A7E |

### Loop `0x0A89`–`0x0A90`

Nearest preceding video in file order: VIDEOREF@0x0A86 0x3C38 (MC[56]=mh_l_st.vdx)

Scene candidates: VIDEOREF@0x0A86 0x3C38 (MC[56]=mh_l_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0A8A` | `HOTSPOT_LEFT` | target=0x0A91 |
| `0x0A8D` | `HOTSPOT_CENTER_2` | target=0x0A97 |

### Loop `0x0AD6`–`0x0ADD`

Nearest preceding video in file order: VIDEOREF@0x0AD3 0x3C3C (MC[60]=mh_r_st.vdx)

Scene candidates: VIDEOREF@0x0AD3 0x3C3C (MC[60]=mh_r_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0AD7` | `HOTSPOT_RIGHT` | target=0x0AE4 |
| `0x0ADA` | `HOTSPOT_CENTER_2` | target=0x0ADE |

### Loop `0x0AE7`–`0x0AEE`

Nearest preceding video in file order: VIDEOREF@0x0AE4 0x3C3D (MC[61]=mh_r_tu.vdx)

Scene candidates: VIDEOREF@0x0A91 0x3C39 (MC[57]=mh_l_tu.vdx); VIDEOREF@0x0AE4 0x3C3D (MC[61]=mh_r_tu.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0AE8` | `HOTSPOT_LEFT` | target=0x0AEF |
| `0x0AEB` | `HOTSPOT_RIGHT` | target=0x0AF5 |

### Loop `0x0B04`–`0x0B0B`

Nearest preceding video in file order: VIDEOREF@0x0B01 0x3C38 (MC[56]=mh_l_st.vdx)

Scene candidates: VIDEOREF@0x0B01 0x3C38 (MC[56]=mh_l_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0B05` | `HOTSPOT_LEFT` | target=0x0B0C |
| `0x0B08` | `HOTSPOT_CENTER_2` | target=0x0B12 |

### Loop `0x0B21`–`0x0B28`

Nearest preceding video in file order: VIDEOREF@0x0B1E 0x3C3C (MC[60]=mh_r_st.vdx)

Scene candidates: VIDEOREF@0x0B1E 0x3C3C (MC[60]=mh_r_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0B22` | `HOTSPOT_CENTER_2` | target=0x0B29 |
| `0x0B25` | `HOTSPOT_RIGHT` | target=0x0B2F |

### Loop `0x0B32`–`0x0B39`

Nearest preceding video in file order: VIDEOREF@0x0B2F 0x3C3D (MC[61]=mh_r_tu.vdx)

Scene candidates: VIDEOREF@0x0B0C 0x3C39 (MC[57]=mh_l_tu.vdx); VIDEOREF@0x0B2F 0x3C3D (MC[61]=mh_r_tu.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0B33` | `HOTSPOT_RIGHT` | target=0x0B40 |
| `0x0B36` | `HOTSPOT_LEFT` | target=0x0B3A |

### Loop `0x0B4B`–`0x0B52`

Nearest preceding video in file order: VIDEOREF@0x0B48 0x3C50 (MC[80]=mt_stop.vdx)

Scene candidates: VIDEOREF@0x0B48 0x3C50 (MC[80]=mt_stop.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0B4C` | `HOTSPOT_RIGHT` | target=0x0B59 |
| `0x0B4F` | `HOTSPOT_LEFT` | target=0x0B53 |

### Loop `0x0B64`–`0x0B6B`

Nearest preceding video in file order: VIDEOREF@0x0B61 0x3C4E (MC[78]=mt_r_st.vdx)

Scene candidates: VIDEOREF@0x0B61 0x3C4E (MC[78]=mt_r_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0B65` | `HOTSPOT_CENTER_2` | target=0x0B6C |
| `0x0B68` | `HOTSPOT_RIGHT` | target=0x0B72 |

### Loop `0x0BB5`–`0x0BBC`

Nearest preceding video in file order: VIDEOREF@0x0BB2 0x3C50 (MC[80]=mt_stop.vdx)

Scene candidates: VIDEOREF@0x0BB2 0x3C50 (MC[80]=mt_stop.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0BB6` | `HOTSPOT_RIGHT` | target=0x0BC3 |
| `0x0BB9` | `HOTSPOT_LEFT` | target=0x0BBD |

### Loop `0x0BCE`–`0x0BD5`

Nearest preceding video in file order: VIDEOREF@0x0BCB 0x3C4A (MC[74]=mt_l_st.vdx)

Scene candidates: VIDEOREF@0x0BCB 0x3C4A (MC[74]=mt_l_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0BCF` | `HOTSPOT_CENTER_2` | target=0x0BDC |
| `0x0BD2` | `HOTSPOT_LEFT` | target=0x0BD6 |

### Loop `0x0BE2`–`0x0BE9`

Nearest preceding video in file order: VIDEOREF@0x0BDF 0x3C4E (MC[78]=mt_r_st.vdx)

Scene candidates: VIDEOREF@0x0BDF 0x3C4E (MC[78]=mt_r_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0BE3` | `HOTSPOT_CENTER_2` | target=0x0BEA |
| `0x0BE6` | `HOTSPOT_RIGHT` | target=0x0BF0 |

### Loop `0x0C1B`–`0x0C22`

Nearest preceding video in file order: VIDEOREF@0x0C18 0x3C50 (MC[80]=mt_stop.vdx)

Scene candidates: VIDEOREF@0x0C18 0x3C50 (MC[80]=mt_stop.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0C1C` | `HOTSPOT_LEFT` | target=0x0C23 |
| `0x0C1F` | `HOTSPOT_RIGHT` | target=0x0C29 |

### Loop `0x0C32`–`0x0C39`

Nearest preceding video in file order: VIDEOREF@0x0C2F 0x3C4A (MC[74]=mt_l_st.vdx)

Scene candidates: VIDEOREF@0x0C2F 0x3C4A (MC[74]=mt_l_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0C33` | `HOTSPOT_CENTER_2` | target=0x0C40 |
| `0x0C36` | `HOTSPOT_LEFT` | target=0x0C3A |

### Loop `0x0C49`–`0x0C50`

Nearest preceding video in file order: VIDEOREF@0x0C46 0x3C4E (MC[78]=mt_r_st.vdx)

Scene candidates: VIDEOREF@0x0C46 0x3C4E (MC[78]=mt_r_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0C4A` | `HOTSPOT_RIGHT` | target=0x0C57 |
| `0x0C4D` | `HOTSPOT_CENTER_2` | target=0x0C51 |

### Loop `0x0C6B`–`0x0C72`

Nearest preceding video in file order: VIDEOREF@0x0C68 0x3C3C (MC[60]=mh_r_st.vdx)

Scene candidates: VIDEOREF@0x0C68 0x3C3C (MC[60]=mh_r_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0C6C` | `HOTSPOT_RIGHT` | target=0x0C79 |
| `0x0C6F` | `HOTSPOT_CENTER_2` | target=0x0C73 |

### Loop `0x0C7C`–`0x0C83`

Nearest preceding video in file order: VIDEOREF@0x0C79 0x3C3D (MC[61]=mh_r_tu.vdx)

Scene candidates: VIDEOREF@0x0C79 0x3C3D (MC[61]=mh_r_tu.vdx); VIDEOREF@0x0DE7 0x3C39 (MC[57]=mh_l_tu.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0C7D` | `HOTSPOT_RIGHT` | target=0x0C8A |
| `0x0C80` | `HOTSPOT_LEFT` | target=0x0C84 |

### Loop `0x0C93`–`0x0C9A`

Nearest preceding video in file order: VIDEOREF@0x0C90 0x3C38 (MC[56]=mh_l_st.vdx)

Scene candidates: VIDEOREF@0x0C90 0x3C38 (MC[56]=mh_l_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0C94` | `HOTSPOT_LEFT` | target=0x0C9B |
| `0x0C97` | `HOTSPOT_CENTER_2` | target=0x0CA1 |

### Loop `0x0CAA`–`0x0CB1`

Nearest preceding video in file order: VIDEOREF@0x0CA7 0x3C50 (MC[80]=mt_stop.vdx)

Scene candidates: VIDEOREF@0x0CA7 0x3C50 (MC[80]=mt_stop.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0CAB` | `HOTSPOT_RIGHT` | target=0x0CB8 |
| `0x0CAE` | `HOTSPOT_LEFT` | target=0x0CB2 |

### Loop `0x0CC1`–`0x0CC8`

Nearest preceding video in file order: VIDEOREF@0x0CBE 0x3C38 (MC[56]=mh_l_st.vdx)

Scene candidates: VIDEOREF@0x0CBE 0x3C38 (MC[56]=mh_l_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0CC2` | `HOTSPOT_CENTER_2` | target=0x0CCF |
| `0x0CC5` | `HOTSPOT_LEFT` | target=0x0CC9 |

### Loop `0x0CD8`–`0x0CDF`

Nearest preceding video in file order: VIDEOREF@0x0CD5 0x3C3C (MC[60]=mh_r_st.vdx)

Scene candidates: VIDEOREF@0x0CD5 0x3C3C (MC[60]=mh_r_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0CD9` | `HOTSPOT_RIGHT` | target=0x0CE6 |
| `0x0CDC` | `HOTSPOT_CENTER_2` | target=0x0CE0 |

### Loop `0x0CE9`–`0x0CF0`

Nearest preceding video in file order: VIDEOREF@0x0CE6 0x3C3D (MC[61]=mh_r_tu.vdx)

Scene candidates: VIDEOREF@0x0CC9 0x3C39 (MC[57]=mh_l_tu.vdx); VIDEOREF@0x0CE6 0x3C3D (MC[61]=mh_r_tu.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0CEA` | `HOTSPOT_RIGHT` | target=0x0CF7 |
| `0x0CED` | `HOTSPOT_LEFT` | target=0x0CF1 |

### Loop `0x0D16`–`0x0D1D`

Nearest preceding video in file order: VIDEOREF@0x0D13 0x3C38 (MC[56]=mh_l_st.vdx)

Scene candidates: VIDEOREF@0x0D13 0x3C38 (MC[56]=mh_l_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0D17` | `HOTSPOT_LEFT` | target=0x0D1E |
| `0x0D1A` | `HOTSPOT_CENTER_2` | target=0x0D24 |

### Loop `0x0D57`–`0x0D5E`

Nearest preceding video in file order: VIDEOREF@0x0D54 0x3C3C (MC[60]=mh_r_st.vdx)

Scene candidates: VIDEOREF@0x0D54 0x3C3C (MC[60]=mh_r_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0D58` | `HOTSPOT_CENTER_2` | target=0x0D5F |
| `0x0D5B` | `HOTSPOT_RIGHT` | target=0x0D65 |

### Loop `0x0D68`–`0x0D6F`

Nearest preceding video in file order: VIDEOREF@0x0D65 0x3C3D (MC[61]=mh_r_tu.vdx)

Scene candidates: VIDEOREF@0x0D1E 0x3C39 (MC[57]=mh_l_tu.vdx); VIDEOREF@0x0D65 0x3C3D (MC[61]=mh_r_tu.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0D69` | `HOTSPOT_LEFT` | target=0x0D70 |
| `0x0D6C` | `HOTSPOT_RIGHT` | target=0x0D76 |

### Loop `0x0D7F`–`0x0D86`

Nearest preceding video in file order: VIDEOREF@0x0D7C 0x3C4A (MC[74]=mt_l_st.vdx)

Scene candidates: VIDEOREF@0x0D7C 0x3C4A (MC[74]=mt_l_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0D80` | `HOTSPOT_CENTER_2` | target=0x0D8D |
| `0x0D83` | `HOTSPOT_LEFT` | target=0x0D87 |

### Loop `0x0DA0`–`0x0DA7`

Nearest preceding video in file order: VIDEOREF@0x0D9D 0x3C4E (MC[78]=mt_r_st.vdx)

Scene candidates: VIDEOREF@0x0D9D 0x3C4E (MC[78]=mt_r_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0DA1` | `HOTSPOT_RIGHT` | target=0x0DAE |
| `0x0DA4` | `HOTSPOT_CENTER_2` | target=0x0DA8 |

### Loop `0x0DB7`–`0x0DBE`

Nearest preceding video in file order: VIDEOREF@0x0DB4 0x3C3C (MC[60]=mh_r_st.vdx)

Scene candidates: VIDEOREF@0x0DB4 0x3C3C (MC[60]=mh_r_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0DB8` | `HOTSPOT_CENTER_2` | target=0x0DBF |
| `0x0DBB` | `HOTSPOT_RIGHT` | target=0x0DC5 |

### Loop `0x0DC8`–`0x0DCF`

Nearest preceding video in file order: VIDEOREF@0x0DC5 0x3C3D (MC[61]=mh_r_tu.vdx)

Scene candidates: VIDEOREF@0x0C9B 0x3C39 (MC[57]=mh_l_tu.vdx); VIDEOREF@0x0DC5 0x3C3D (MC[61]=mh_r_tu.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0DC9` | `HOTSPOT_LEFT` | target=0x0DD0 |
| `0x0DCC` | `HOTSPOT_RIGHT` | target=0x0DD6 |

### Loop `0x0DDF`–`0x0DE6`

Nearest preceding video in file order: VIDEOREF@0x0DDC 0x3C38 (MC[56]=mh_l_st.vdx)

Scene candidates: VIDEOREF@0x0DDC 0x3C38 (MC[56]=mh_l_st.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0DE0` | `HOTSPOT_LEFT` | target=0x0DE7 |
| `0x0DE3` | `HOTSPOT_CENTER_2` | target=0x0DED |

### Loop `0x0E01`–`0x0E08`

Nearest preceding video in file order: VIDEOREF@0x0DFE 0x3C50 (MC[80]=mt_stop.vdx)

Scene candidates: VIDEOREF@0x0DFE 0x3C50 (MC[80]=mt_stop.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0E02` | `HOTSPOT_RIGHT` | target=0x0E0F |
| `0x0E05` | `HOTSPOT_LEFT` | target=0x0E09 |

### Loop `0x0E15`–`0x0E1C`

Nearest preceding video in file order: VIDEOREF@0x0E12 0x3C30 (MC[48]=mg_exit.vdx)

Scene candidates: VIDEOREF@0x0E12 0x3C30 (MC[48]=mg_exit.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0E16` | `HOTSPOT_LEFT` | target=0x0E1D |
| `0x0E19` | `HOTSPOT_CENTER_2` | target=0x0E23 |

## MB.GRV

Input loops: 37

### Loop `0x00CC`–`0x00EF`

Nearest preceding video in file order: VIDEOREF@0x00B6 0x5054 (GAMWAV[84]=13_e_5.vdx)

Scene candidates: VIDEOREF@0x0035 0x5055 (GAMWAV[85]=13_s_1.vdx); VIDEOREF@0x0080 0x5052 (GAMWAV[82]=13_e_3.vdx); VIDEOREF@0x0097 0x5053 (GAMWAV[83]=13_e_4.vdx); VIDEOREF@0x00B6 0x5054 (GAMWAV[84]=13_e_5.vdx); VIDEO_TRANSITION_REF@0x0AA6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0AC7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0AE8 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B09 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B2A 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B4B 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B6C 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B8D 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BAE 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BCF 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BF0 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C11 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C32 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C53 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C74 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C95 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CB6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CD7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CF8 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D19 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D3A 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D5B 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D7C 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D9D 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0DBE 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0DDF 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E00 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E21 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E42 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E63 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E84 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EA5 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EC6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EE7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0F08 0x3800 (MB[0]=mb1p.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x00D2` | `HOTSPOT_RECT` | left=0x0121, top=0x007E, right=0x0136, bottom=0x0092, target=0x0AB8, cursor=0x09 |
| `0x00E3` | `HOTSPOT_RECT` | left=0x0150, top=0x0082, right=0x0166, bottom=0x0096, target=0x0AFA, cursor=0x09 |

### Loop `0x00FB`–`0x011E`

Nearest preceding video in file order: VIDEOREF@0x00B6 0x5054 (GAMWAV[84]=13_e_5.vdx)

Scene candidates: VIDEOREF@0x0035 0x5055 (GAMWAV[85]=13_s_1.vdx); VIDEOREF@0x0080 0x5052 (GAMWAV[82]=13_e_3.vdx); VIDEOREF@0x0097 0x5053 (GAMWAV[83]=13_e_4.vdx); VIDEOREF@0x00B6 0x5054 (GAMWAV[84]=13_e_5.vdx); VIDEO_TRANSITION_REF@0x0AA6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0AC7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0AE8 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B09 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B2A 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B4B 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B6C 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B8D 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BAE 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BCF 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BF0 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C11 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C32 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C53 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C74 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C95 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CB6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CD7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CF8 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D19 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D3A 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D5B 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D7C 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D9D 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0DBE 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0DDF 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E00 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E21 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E42 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E63 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E84 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EA5 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EC6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EE7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0F08 0x3800 (MB[0]=mb1p.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0101` | `HOTSPOT_RECT` | left=0x0150, top=0x0082, right=0x0166, bottom=0x0096, target=0x0AFA, cursor=0x09 |
| `0x0112` | `HOTSPOT_RECT` | left=0x0175, top=0x0097, right=0x018D, bottom=0x00AC, target=0x0B1B, cursor=0x09 |

### Loop `0x012A`–`0x013C`

Nearest preceding video in file order: VIDEOREF@0x00B6 0x5054 (GAMWAV[84]=13_e_5.vdx)

Scene candidates: VIDEOREF@0x0035 0x5055 (GAMWAV[85]=13_s_1.vdx); VIDEOREF@0x0080 0x5052 (GAMWAV[82]=13_e_3.vdx); VIDEOREF@0x0097 0x5053 (GAMWAV[83]=13_e_4.vdx); VIDEOREF@0x00B6 0x5054 (GAMWAV[84]=13_e_5.vdx); VIDEO_TRANSITION_REF@0x0AA6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0AC7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0AE8 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B09 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B2A 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B4B 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B6C 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B8D 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BAE 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BCF 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BF0 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C11 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C32 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C53 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C74 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C95 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CB6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CD7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CF8 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D19 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D3A 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D5B 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D7C 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D9D 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0DBE 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0DDF 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E00 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E21 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E42 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E63 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E84 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EA5 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EC6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EE7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0F08 0x3800 (MB[0]=mb1p.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0130` | `HOTSPOT_RECT` | left=0x018D, top=0x009C, right=0x01A4, bottom=0x00AF, target=0x0B3C, cursor=0x09 |

### Loop `0x0148`–`0x016B`

Nearest preceding video in file order: VIDEOREF@0x00B6 0x5054 (GAMWAV[84]=13_e_5.vdx)

Scene candidates: VIDEOREF@0x0035 0x5055 (GAMWAV[85]=13_s_1.vdx); VIDEOREF@0x0080 0x5052 (GAMWAV[82]=13_e_3.vdx); VIDEOREF@0x0097 0x5053 (GAMWAV[83]=13_e_4.vdx); VIDEOREF@0x00B6 0x5054 (GAMWAV[84]=13_e_5.vdx); VIDEO_TRANSITION_REF@0x0AA6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0AC7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0AE8 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B09 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B2A 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B4B 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B6C 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B8D 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BAE 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BCF 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BF0 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C11 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C32 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C53 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C74 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C95 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CB6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CD7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CF8 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D19 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D3A 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D5B 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D7C 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D9D 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0DBE 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0DDF 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E00 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E21 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E42 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E63 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E84 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EA5 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EC6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EE7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0F08 0x3800 (MB[0]=mb1p.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x014E` | `HOTSPOT_RECT` | left=0x0175, top=0x0097, right=0x018D, bottom=0x00AC, target=0x0B1B, cursor=0x09 |
| `0x015F` | `HOTSPOT_RECT` | left=0x0195, top=0x00B2, right=0x01AA, bottom=0x00C6, target=0x0B5D, cursor=0x09 |

### Loop `0x0177`–`0x019A`

Nearest preceding video in file order: VIDEOREF@0x00B6 0x5054 (GAMWAV[84]=13_e_5.vdx)

Scene candidates: VIDEOREF@0x0035 0x5055 (GAMWAV[85]=13_s_1.vdx); VIDEOREF@0x0080 0x5052 (GAMWAV[82]=13_e_3.vdx); VIDEOREF@0x0097 0x5053 (GAMWAV[83]=13_e_4.vdx); VIDEOREF@0x00B6 0x5054 (GAMWAV[84]=13_e_5.vdx); VIDEO_TRANSITION_REF@0x0AA6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0AC7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0AE8 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B09 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B2A 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B4B 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B6C 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B8D 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BAE 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BCF 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BF0 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C11 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C32 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C53 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C74 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C95 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CB6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CD7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CF8 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D19 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D3A 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D5B 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D7C 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D9D 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0DBE 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0DDF 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E00 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E21 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E42 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E63 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E84 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EA5 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EC6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EE7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0F08 0x3800 (MB[0]=mb1p.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x017D` | `HOTSPOT_RECT` | left=0x018D, top=0x009C, right=0x01A4, bottom=0x00AF, target=0x0B3C, cursor=0x09 |
| `0x018E` | `HOTSPOT_RECT` | left=0x010A, top=0x0077, right=0x0120, bottom=0x008B, target=0x0A97, cursor=0x09 |

### Loop `0x01A6`–`0x01DA`

Nearest preceding video in file order: VIDEOREF@0x00B6 0x5054 (GAMWAV[84]=13_e_5.vdx)

Scene candidates: VIDEOREF@0x0035 0x5055 (GAMWAV[85]=13_s_1.vdx); VIDEOREF@0x0080 0x5052 (GAMWAV[82]=13_e_3.vdx); VIDEOREF@0x0097 0x5053 (GAMWAV[83]=13_e_4.vdx); VIDEOREF@0x00B6 0x5054 (GAMWAV[84]=13_e_5.vdx); VIDEO_TRANSITION_REF@0x0AA6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0AC7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0AE8 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B09 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B2A 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B4B 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B6C 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B8D 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BAE 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BCF 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BF0 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C11 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C32 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C53 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C74 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C95 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CB6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CD7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CF8 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D19 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D3A 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D5B 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D7C 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D9D 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0DBE 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0DDF 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E00 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E21 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E42 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E63 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E84 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EA5 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EC6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EE7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0F08 0x3800 (MB[0]=mb1p.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x01AC` | `HOTSPOT_RECT` | left=0x010A, top=0x0077, right=0x0120, bottom=0x008B, target=0x0A97, cursor=0x09 |
| `0x01BD` | `HOTSPOT_RECT` | left=0x0136, top=0x0083, right=0x014C, bottom=0x0098, target=0x0AD9, cursor=0x09 |
| `0x01CE` | `HOTSPOT_RECT` | left=0x01A6, top=0x00F4, right=0x01BF, bottom=0x010B, target=0x0B9F, cursor=0x09 |

### Loop `0x01E6`–`0x022B`

Nearest preceding video in file order: VIDEOREF@0x00B6 0x5054 (GAMWAV[84]=13_e_5.vdx)

Scene candidates: VIDEOREF@0x0035 0x5055 (GAMWAV[85]=13_s_1.vdx); VIDEOREF@0x0080 0x5052 (GAMWAV[82]=13_e_3.vdx); VIDEOREF@0x0097 0x5053 (GAMWAV[83]=13_e_4.vdx); VIDEOREF@0x00B6 0x5054 (GAMWAV[84]=13_e_5.vdx); VIDEO_TRANSITION_REF@0x0AA6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0AC7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0AE8 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B09 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B2A 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B4B 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B6C 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B8D 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BAE 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BCF 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BF0 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C11 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C32 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C53 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C74 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C95 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CB6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CD7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CF8 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D19 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D3A 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D5B 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D7C 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D9D 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0DBE 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0DDF 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E00 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E21 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E42 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E63 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E84 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EA5 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EC6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EE7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0F08 0x3800 (MB[0]=mb1p.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x01EC` | `HOTSPOT_RECT` | left=0x0121, top=0x007E, right=0x0136, bottom=0x0092, target=0x0AB8, cursor=0x09 |
| `0x01FD` | `HOTSPOT_RECT` | left=0x0150, top=0x0082, right=0x0166, bottom=0x0096, target=0x0AFA, cursor=0x09 |
| `0x020E` | `HOTSPOT_RECT` | left=0x019C, top=0x00DA, right=0x01B4, bottom=0x00F0, target=0x0B7E, cursor=0x09 |
| `0x021F` | `HOTSPOT_RECT` | left=0x019C, top=0x0109, right=0x01B4, bottom=0x0122, target=0x0BC0, cursor=0x09 |

### Loop `0x0237`–`0x026B`

Nearest preceding video in file order: VIDEOREF@0x00B6 0x5054 (GAMWAV[84]=13_e_5.vdx)

Scene candidates: VIDEOREF@0x0035 0x5055 (GAMWAV[85]=13_s_1.vdx); VIDEOREF@0x0080 0x5052 (GAMWAV[82]=13_e_3.vdx); VIDEOREF@0x0097 0x5053 (GAMWAV[83]=13_e_4.vdx); VIDEOREF@0x00B6 0x5054 (GAMWAV[84]=13_e_5.vdx); VIDEO_TRANSITION_REF@0x0AA6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0AC7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0AE8 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B09 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B2A 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B4B 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B6C 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B8D 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BAE 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BCF 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BF0 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C11 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C32 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C53 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C74 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C95 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CB6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CD7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CF8 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D19 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D3A 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D5B 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D7C 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D9D 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0DBE 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0DDF 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E00 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E21 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E42 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E63 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E84 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EA5 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EC6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EE7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0F08 0x3800 (MB[0]=mb1p.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x023D` | `HOTSPOT_RECT` | left=0x0136, top=0x0083, right=0x014C, bottom=0x0098, target=0x0AD9, cursor=0x09 |
| `0x024E` | `HOTSPOT_RECT` | left=0x01A6, top=0x00F4, right=0x01BF, bottom=0x010B, target=0x0B9F, cursor=0x09 |
| `0x025F` | `HOTSPOT_RECT` | left=0x019D, top=0x0123, right=0x01B7, bottom=0x013C, target=0x0BE1, cursor=0x09 |

### Loop `0x0277`–`0x02AB`

Nearest preceding video in file order: VIDEOREF@0x00B6 0x5054 (GAMWAV[84]=13_e_5.vdx)

Scene candidates: VIDEOREF@0x0035 0x5055 (GAMWAV[85]=13_s_1.vdx); VIDEOREF@0x0080 0x5052 (GAMWAV[82]=13_e_3.vdx); VIDEOREF@0x0097 0x5053 (GAMWAV[83]=13_e_4.vdx); VIDEOREF@0x00B6 0x5054 (GAMWAV[84]=13_e_5.vdx); VIDEO_TRANSITION_REF@0x0AA6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0AC7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0AE8 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B09 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B2A 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B4B 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B6C 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B8D 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BAE 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BCF 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BF0 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C11 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C32 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C53 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C74 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C95 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CB6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CD7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CF8 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D19 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D3A 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D5B 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D7C 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D9D 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0DBE 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0DDF 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E00 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E21 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E42 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E63 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E84 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EA5 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EC6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EE7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0F08 0x3800 (MB[0]=mb1p.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x027D` | `HOTSPOT_RECT` | left=0x018D, top=0x009C, right=0x01A4, bottom=0x00AF, target=0x0B3C, cursor=0x09 |
| `0x028E` | `HOTSPOT_RECT` | left=0x019D, top=0x0123, right=0x01B7, bottom=0x013C, target=0x0BE1, cursor=0x09 |
| `0x029F` | `HOTSPOT_RECT` | left=0x016F, top=0x0135, right=0x0187, bottom=0x014E, target=0x0C23, cursor=0x09 |

### Loop `0x02B7`–`0x02FC`

Nearest preceding video in file order: VIDEOREF@0x00B6 0x5054 (GAMWAV[84]=13_e_5.vdx)

Scene candidates: VIDEOREF@0x0035 0x5055 (GAMWAV[85]=13_s_1.vdx); VIDEOREF@0x0080 0x5052 (GAMWAV[82]=13_e_3.vdx); VIDEOREF@0x0097 0x5053 (GAMWAV[83]=13_e_4.vdx); VIDEOREF@0x00B6 0x5054 (GAMWAV[84]=13_e_5.vdx); VIDEO_TRANSITION_REF@0x0AA6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0AC7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0AE8 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B09 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B2A 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B4B 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B6C 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B8D 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BAE 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BCF 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BF0 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C11 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C32 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C53 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C74 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C95 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CB6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CD7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CF8 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D19 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D3A 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D5B 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D7C 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D9D 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0DBE 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0DDF 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E00 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E21 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E42 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E63 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E84 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EA5 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EC6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EE7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0F08 0x3800 (MB[0]=mb1p.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x02BD` | `HOTSPOT_RECT` | left=0x0175, top=0x0097, right=0x018D, bottom=0x00AC, target=0x0B1B, cursor=0x09 |
| `0x02CE` | `HOTSPOT_RECT` | left=0x0195, top=0x00B2, right=0x01AA, bottom=0x00C6, target=0x0B5D, cursor=0x09 |
| `0x02DF` | `HOTSPOT_RECT` | left=0x018C, top=0x0135, right=0x01A2, bottom=0x014C, target=0x0C02, cursor=0x09 |
| `0x02F0` | `HOTSPOT_RECT` | left=0x0155, top=0x0138, right=0x016C, bottom=0x0151, target=0x0C44, cursor=0x09 |

### Loop `0x0308`–`0x033C`

Nearest preceding video in file order: VIDEOREF@0x00B6 0x5054 (GAMWAV[84]=13_e_5.vdx)

Scene candidates: VIDEOREF@0x0035 0x5055 (GAMWAV[85]=13_s_1.vdx); VIDEOREF@0x0080 0x5052 (GAMWAV[82]=13_e_3.vdx); VIDEOREF@0x0097 0x5053 (GAMWAV[83]=13_e_4.vdx); VIDEOREF@0x00B6 0x5054 (GAMWAV[84]=13_e_5.vdx); VIDEO_TRANSITION_REF@0x0AA6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0AC7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0AE8 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B09 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B2A 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B4B 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B6C 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B8D 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BAE 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BCF 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BF0 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C11 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C32 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C53 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C74 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C95 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CB6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CD7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CF8 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D19 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D3A 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D5B 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D7C 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D9D 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0DBE 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0DDF 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E00 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E21 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E42 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E63 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E84 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EA5 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EC6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EE7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0F08 0x3800 (MB[0]=mb1p.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x030E` | `HOTSPOT_RECT` | left=0x018D, top=0x009C, right=0x01A4, bottom=0x00AF, target=0x0B3C, cursor=0x09 |
| `0x031F` | `HOTSPOT_RECT` | left=0x016F, top=0x0135, right=0x0187, bottom=0x014E, target=0x0C23, cursor=0x09 |
| `0x0330` | `HOTSPOT_RECT` | left=0x013D, top=0x0144, right=0x0154, bottom=0x015A, target=0x0C65, cursor=0x09 |

### Loop `0x0348`–`0x038D`

Nearest preceding video in file order: VIDEOREF@0x00B6 0x5054 (GAMWAV[84]=13_e_5.vdx)

Scene candidates: VIDEOREF@0x0035 0x5055 (GAMWAV[85]=13_s_1.vdx); VIDEOREF@0x0080 0x5052 (GAMWAV[82]=13_e_3.vdx); VIDEOREF@0x0097 0x5053 (GAMWAV[83]=13_e_4.vdx); VIDEOREF@0x00B6 0x5054 (GAMWAV[84]=13_e_5.vdx); VIDEO_TRANSITION_REF@0x0AA6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0AC7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0AE8 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B09 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B2A 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B4B 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B6C 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B8D 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BAE 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BCF 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BF0 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C11 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C32 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C53 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C74 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C95 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CB6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CD7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CF8 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D19 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D3A 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D5B 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D7C 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D9D 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0DBE 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0DDF 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E00 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E21 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E42 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E63 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E84 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EA5 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EC6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EE7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0F08 0x3800 (MB[0]=mb1p.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x034E` | `HOTSPOT_RECT` | left=0x0195, top=0x00B2, right=0x01AA, bottom=0x00C6, target=0x0B5D, cursor=0x09 |
| `0x035F` | `HOTSPOT_RECT` | left=0x019C, top=0x00DA, right=0x01B4, bottom=0x00F0, target=0x0B7E, cursor=0x09 |
| `0x0370` | `HOTSPOT_RECT` | left=0x0155, top=0x0138, right=0x016C, bottom=0x0151, target=0x0C44, cursor=0x09 |
| `0x0381` | `HOTSPOT_RECT` | left=0x0123, top=0x0136, right=0x013B, bottom=0x014F, target=0x0C86, cursor=0x09 |

### Loop `0x0399`–`0x03CD`

Nearest preceding video in file order: VIDEOREF@0x00B6 0x5054 (GAMWAV[84]=13_e_5.vdx)

Scene candidates: VIDEOREF@0x0035 0x5055 (GAMWAV[85]=13_s_1.vdx); VIDEOREF@0x0080 0x5052 (GAMWAV[82]=13_e_3.vdx); VIDEOREF@0x0097 0x5053 (GAMWAV[83]=13_e_4.vdx); VIDEOREF@0x00B6 0x5054 (GAMWAV[84]=13_e_5.vdx); VIDEO_TRANSITION_REF@0x0AA6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0AC7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0AE8 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B09 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B2A 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B4B 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B6C 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B8D 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BAE 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BCF 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BF0 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C11 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C32 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C53 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C74 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C95 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CB6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CD7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CF8 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D19 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D3A 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D5B 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D7C 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D9D 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0DBE 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0DDF 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E00 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E21 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E42 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E63 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E84 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EA5 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EC6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EE7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0F08 0x3800 (MB[0]=mb1p.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x039F` | `HOTSPOT_RECT` | left=0x01A6, top=0x00F4, right=0x01BF, bottom=0x010B, target=0x0B9F, cursor=0x09 |
| `0x03B0` | `HOTSPOT_RECT` | left=0x013D, top=0x0144, right=0x0154, bottom=0x015A, target=0x0C65, cursor=0x09 |
| `0x03C1` | `HOTSPOT_RECT` | left=0x010A, top=0x012E, right=0x0122, bottom=0x0148, target=0x0CA7, cursor=0x09 |

### Loop `0x03D9`–`0x040D`

Nearest preceding video in file order: VIDEOREF@0x00B6 0x5054 (GAMWAV[84]=13_e_5.vdx)

Scene candidates: VIDEOREF@0x0035 0x5055 (GAMWAV[85]=13_s_1.vdx); VIDEOREF@0x0080 0x5052 (GAMWAV[82]=13_e_3.vdx); VIDEOREF@0x0097 0x5053 (GAMWAV[83]=13_e_4.vdx); VIDEOREF@0x00B6 0x5054 (GAMWAV[84]=13_e_5.vdx); VIDEO_TRANSITION_REF@0x0AA6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0AC7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0AE8 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B09 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B2A 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B4B 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B6C 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B8D 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BAE 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BCF 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BF0 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C11 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C32 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C53 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C74 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C95 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CB6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CD7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CF8 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D19 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D3A 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D5B 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D7C 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D9D 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0DBE 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0DDF 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E00 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E21 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E42 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E63 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E84 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EA5 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EC6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EE7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0F08 0x3800 (MB[0]=mb1p.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x03DF` | `HOTSPOT_RECT` | left=0x019C, top=0x00DA, right=0x01B4, bottom=0x00F0, target=0x0B7E, cursor=0x09 |
| `0x03F0` | `HOTSPOT_RECT` | left=0x019C, top=0x0109, right=0x01B4, bottom=0x0122, target=0x0BC0, cursor=0x09 |
| `0x0401` | `HOTSPOT_RECT` | left=0x0123, top=0x0136, right=0x013B, bottom=0x014F, target=0x0C86, cursor=0x09 |

### Loop `0x0419`–`0x045E`

Nearest preceding video in file order: VIDEOREF@0x00B6 0x5054 (GAMWAV[84]=13_e_5.vdx)

Scene candidates: VIDEOREF@0x0035 0x5055 (GAMWAV[85]=13_s_1.vdx); VIDEOREF@0x0080 0x5052 (GAMWAV[82]=13_e_3.vdx); VIDEOREF@0x0097 0x5053 (GAMWAV[83]=13_e_4.vdx); VIDEOREF@0x00B6 0x5054 (GAMWAV[84]=13_e_5.vdx); VIDEO_TRANSITION_REF@0x0AA6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0AC7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0AE8 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B09 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B2A 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B4B 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B6C 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B8D 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BAE 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BCF 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BF0 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C11 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C32 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C53 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C74 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C95 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CB6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CD7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CF8 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D19 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D3A 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D5B 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D7C 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D9D 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0DBE 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0DDF 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E00 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E21 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E42 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E63 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E84 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EA5 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EC6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EE7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0F08 0x3800 (MB[0]=mb1p.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x041F` | `HOTSPOT_RECT` | left=0x01A6, top=0x00F4, right=0x01BF, bottom=0x010B, target=0x0B9F, cursor=0x09 |
| `0x0430` | `HOTSPOT_RECT` | left=0x019D, top=0x0123, right=0x01B7, bottom=0x013C, target=0x0BE1, cursor=0x09 |
| `0x0441` | `HOTSPOT_RECT` | left=0x010A, top=0x012E, right=0x0122, bottom=0x0148, target=0x0CA7, cursor=0x09 |
| `0x0452` | `HOTSPOT_RECT` | left=0x00DA, top=0x012B, right=0x00F1, bottom=0x0147, target=0x0CC8, cursor=0x09 |

### Loop `0x046A`–`0x049E`

Nearest preceding video in file order: VIDEOREF@0x00B6 0x5054 (GAMWAV[84]=13_e_5.vdx)

Scene candidates: VIDEOREF@0x0035 0x5055 (GAMWAV[85]=13_s_1.vdx); VIDEOREF@0x0080 0x5052 (GAMWAV[82]=13_e_3.vdx); VIDEOREF@0x0097 0x5053 (GAMWAV[83]=13_e_4.vdx); VIDEOREF@0x00B6 0x5054 (GAMWAV[84]=13_e_5.vdx); VIDEO_TRANSITION_REF@0x0AA6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0AC7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0AE8 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B09 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B2A 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B4B 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B6C 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B8D 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BAE 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BCF 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BF0 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C11 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C32 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C53 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C74 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C95 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CB6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CD7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CF8 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D19 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D3A 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D5B 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D7C 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D9D 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0DBE 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0DDF 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E00 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E21 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E42 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E63 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E84 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EA5 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EC6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EE7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0F08 0x3800 (MB[0]=mb1p.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0470` | `HOTSPOT_RECT` | left=0x019C, top=0x0109, right=0x01B4, bottom=0x0122, target=0x0BC0, cursor=0x09 |
| `0x0481` | `HOTSPOT_RECT` | left=0x018C, top=0x0135, right=0x01A2, bottom=0x014C, target=0x0C02, cursor=0x09 |
| `0x0492` | `HOTSPOT_RECT` | left=0x00CA, top=0x0117, right=0x00E3, bottom=0x0130, target=0x0CE9, cursor=0x09 |

### Loop `0x04AA`–`0x04EF`

Nearest preceding video in file order: VIDEOREF@0x00B6 0x5054 (GAMWAV[84]=13_e_5.vdx)

Scene candidates: VIDEOREF@0x0035 0x5055 (GAMWAV[85]=13_s_1.vdx); VIDEOREF@0x0080 0x5052 (GAMWAV[82]=13_e_3.vdx); VIDEOREF@0x0097 0x5053 (GAMWAV[83]=13_e_4.vdx); VIDEOREF@0x00B6 0x5054 (GAMWAV[84]=13_e_5.vdx); VIDEO_TRANSITION_REF@0x0AA6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0AC7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0AE8 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B09 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B2A 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B4B 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B6C 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B8D 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BAE 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BCF 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BF0 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C11 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C32 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C53 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C74 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C95 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CB6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CD7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CF8 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D19 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D3A 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D5B 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D7C 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D9D 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0DBE 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0DDF 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E00 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E21 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E42 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E63 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E84 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EA5 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EC6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EE7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0F08 0x3800 (MB[0]=mb1p.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x04B0` | `HOTSPOT_RECT` | left=0x019D, top=0x0123, right=0x01B7, bottom=0x013C, target=0x0BE1, cursor=0x09 |
| `0x04C1` | `HOTSPOT_RECT` | left=0x016F, top=0x0135, right=0x0187, bottom=0x014E, target=0x0C23, cursor=0x09 |
| `0x04D2` | `HOTSPOT_RECT` | left=0x00DA, top=0x012B, right=0x00F1, bottom=0x0147, target=0x0CC8, cursor=0x09 |
| `0x04E3` | `HOTSPOT_RECT` | left=0x00CE, top=0x00FE, right=0x00E6, bottom=0x0116, target=0x0D0A, cursor=0x09 |

### Loop `0x04FB`–`0x0540`

Nearest preceding video in file order: VIDEOREF@0x00B6 0x5054 (GAMWAV[84]=13_e_5.vdx)

Scene candidates: VIDEOREF@0x0035 0x5055 (GAMWAV[85]=13_s_1.vdx); VIDEOREF@0x0080 0x5052 (GAMWAV[82]=13_e_3.vdx); VIDEOREF@0x0097 0x5053 (GAMWAV[83]=13_e_4.vdx); VIDEOREF@0x00B6 0x5054 (GAMWAV[84]=13_e_5.vdx); VIDEO_TRANSITION_REF@0x0AA6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0AC7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0AE8 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B09 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B2A 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B4B 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B6C 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B8D 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BAE 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BCF 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BF0 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C11 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C32 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C53 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C74 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C95 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CB6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CD7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CF8 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D19 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D3A 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D5B 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D7C 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D9D 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0DBE 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0DDF 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E00 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E21 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E42 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E63 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E84 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EA5 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EC6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EE7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0F08 0x3800 (MB[0]=mb1p.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0501` | `HOTSPOT_RECT` | left=0x018C, top=0x0135, right=0x01A2, bottom=0x014C, target=0x0C02, cursor=0x09 |
| `0x0512` | `HOTSPOT_RECT` | left=0x0155, top=0x0138, right=0x016C, bottom=0x0151, target=0x0C44, cursor=0x09 |
| `0x0523` | `HOTSPOT_RECT` | left=0x00CA, top=0x0117, right=0x00E3, bottom=0x0130, target=0x0CE9, cursor=0x09 |
| `0x0534` | `HOTSPOT_RECT` | left=0x00D1, top=0x00E7, right=0x00E9, bottom=0x00FD, target=0x0D2B, cursor=0x09 |

### Loop `0x054C`–`0x0591`

Nearest preceding video in file order: VIDEOREF@0x00B6 0x5054 (GAMWAV[84]=13_e_5.vdx)

Scene candidates: VIDEOREF@0x0035 0x5055 (GAMWAV[85]=13_s_1.vdx); VIDEOREF@0x0080 0x5052 (GAMWAV[82]=13_e_3.vdx); VIDEOREF@0x0097 0x5053 (GAMWAV[83]=13_e_4.vdx); VIDEOREF@0x00B6 0x5054 (GAMWAV[84]=13_e_5.vdx); VIDEO_TRANSITION_REF@0x0AA6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0AC7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0AE8 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B09 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B2A 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B4B 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B6C 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B8D 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BAE 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BCF 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BF0 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C11 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C32 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C53 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C74 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C95 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CB6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CD7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CF8 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D19 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D3A 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D5B 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D7C 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D9D 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0DBE 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0DDF 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E00 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E21 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E42 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E63 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E84 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EA5 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EC6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EE7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0F08 0x3800 (MB[0]=mb1p.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0552` | `HOTSPOT_RECT` | left=0x0155, top=0x0138, right=0x016C, bottom=0x0151, target=0x0C44, cursor=0x09 |
| `0x0563` | `HOTSPOT_RECT` | left=0x0123, top=0x0136, right=0x013B, bottom=0x014F, target=0x0C86, cursor=0x09 |
| `0x0574` | `HOTSPOT_RECT` | left=0x00D1, top=0x00E7, right=0x00E9, bottom=0x00FD, target=0x0D2B, cursor=0x09 |
| `0x0585` | `HOTSPOT_RECT` | left=0x00DE, top=0x00B9, right=0x00F4, bottom=0x00D0, target=0x0D6D, cursor=0x09 |

### Loop `0x059D`–`0x05E2`

Nearest preceding video in file order: VIDEOREF@0x00B6 0x5054 (GAMWAV[84]=13_e_5.vdx)

Scene candidates: VIDEOREF@0x0035 0x5055 (GAMWAV[85]=13_s_1.vdx); VIDEOREF@0x0080 0x5052 (GAMWAV[82]=13_e_3.vdx); VIDEOREF@0x0097 0x5053 (GAMWAV[83]=13_e_4.vdx); VIDEOREF@0x00B6 0x5054 (GAMWAV[84]=13_e_5.vdx); VIDEO_TRANSITION_REF@0x0AA6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0AC7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0AE8 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B09 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B2A 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B4B 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B6C 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B8D 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BAE 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BCF 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BF0 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C11 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C32 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C53 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C74 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C95 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CB6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CD7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CF8 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D19 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D3A 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D5B 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D7C 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D9D 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0DBE 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0DDF 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E00 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E21 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E42 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E63 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E84 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EA5 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EC6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EE7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0F08 0x3800 (MB[0]=mb1p.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x05A3` | `HOTSPOT_RECT` | left=0x013D, top=0x0144, right=0x0154, bottom=0x015A, target=0x0C65, cursor=0x09 |
| `0x05B4` | `HOTSPOT_RECT` | left=0x010A, top=0x012E, right=0x0122, bottom=0x0148, target=0x0CA7, cursor=0x09 |
| `0x05C5` | `HOTSPOT_RECT` | left=0x00D7, top=0x00CF, right=0x00EE, bottom=0x00E6, target=0x0D4C, cursor=0x09 |
| `0x05D6` | `HOTSPOT_RECT` | left=0x00F1, top=0x00AC, right=0x0108, bottom=0x00C2, target=0x0D8E, cursor=0x09 |

### Loop `0x05EE`–`0x0622`

Nearest preceding video in file order: VIDEOREF@0x00B6 0x5054 (GAMWAV[84]=13_e_5.vdx)

Scene candidates: VIDEOREF@0x0035 0x5055 (GAMWAV[85]=13_s_1.vdx); VIDEOREF@0x0080 0x5052 (GAMWAV[82]=13_e_3.vdx); VIDEOREF@0x0097 0x5053 (GAMWAV[83]=13_e_4.vdx); VIDEOREF@0x00B6 0x5054 (GAMWAV[84]=13_e_5.vdx); VIDEO_TRANSITION_REF@0x0AA6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0AC7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0AE8 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B09 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B2A 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B4B 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B6C 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B8D 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BAE 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BCF 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BF0 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C11 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C32 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C53 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C74 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C95 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CB6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CD7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CF8 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D19 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D3A 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D5B 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D7C 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D9D 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0DBE 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0DDF 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E00 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E21 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E42 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E63 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E84 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EA5 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EC6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EE7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0F08 0x3800 (MB[0]=mb1p.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x05F4` | `HOTSPOT_RECT` | left=0x0123, top=0x0136, right=0x013B, bottom=0x014F, target=0x0C86, cursor=0x09 |
| `0x0605` | `HOTSPOT_RECT` | left=0x00DE, top=0x00B9, right=0x00F4, bottom=0x00D0, target=0x0D6D, cursor=0x09 |
| `0x0616` | `HOTSPOT_RECT` | left=0x0108, top=0x009C, right=0x011C, bottom=0x00B2, target=0x0DAF, cursor=0x09 |

### Loop `0x062E`–`0x0673`

Nearest preceding video in file order: VIDEOREF@0x00B6 0x5054 (GAMWAV[84]=13_e_5.vdx)

Scene candidates: VIDEOREF@0x0035 0x5055 (GAMWAV[85]=13_s_1.vdx); VIDEOREF@0x0080 0x5052 (GAMWAV[82]=13_e_3.vdx); VIDEOREF@0x0097 0x5053 (GAMWAV[83]=13_e_4.vdx); VIDEOREF@0x00B6 0x5054 (GAMWAV[84]=13_e_5.vdx); VIDEO_TRANSITION_REF@0x0AA6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0AC7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0AE8 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B09 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B2A 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B4B 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B6C 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B8D 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BAE 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BCF 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BF0 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C11 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C32 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C53 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C74 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C95 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CB6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CD7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CF8 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D19 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D3A 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D5B 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D7C 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D9D 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0DBE 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0DDF 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E00 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E21 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E42 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E63 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E84 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EA5 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EC6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EE7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0F08 0x3800 (MB[0]=mb1p.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0634` | `HOTSPOT_RECT` | left=0x010A, top=0x012E, right=0x0122, bottom=0x0148, target=0x0CA7, cursor=0x09 |
| `0x0645` | `HOTSPOT_RECT` | left=0x00DA, top=0x012B, right=0x00F1, bottom=0x0147, target=0x0CC8, cursor=0x09 |
| `0x0656` | `HOTSPOT_RECT` | left=0x00F1, top=0x00AC, right=0x0108, bottom=0x00C2, target=0x0D8E, cursor=0x09 |
| `0x0667` | `HOTSPOT_RECT` | left=0x011C, top=0x00A8, right=0x0131, bottom=0x00BF, target=0x0DD0, cursor=0x09 |

### Loop `0x067F`–`0x06B3`

Nearest preceding video in file order: VIDEOREF@0x00B6 0x5054 (GAMWAV[84]=13_e_5.vdx)

Scene candidates: VIDEOREF@0x0035 0x5055 (GAMWAV[85]=13_s_1.vdx); VIDEOREF@0x0080 0x5052 (GAMWAV[82]=13_e_3.vdx); VIDEOREF@0x0097 0x5053 (GAMWAV[83]=13_e_4.vdx); VIDEOREF@0x00B6 0x5054 (GAMWAV[84]=13_e_5.vdx); VIDEO_TRANSITION_REF@0x0AA6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0AC7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0AE8 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B09 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B2A 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B4B 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B6C 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B8D 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BAE 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BCF 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BF0 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C11 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C32 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C53 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C74 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C95 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CB6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CD7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CF8 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D19 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D3A 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D5B 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D7C 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D9D 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0DBE 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0DDF 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E00 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E21 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E42 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E63 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E84 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EA5 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EC6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EE7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0F08 0x3800 (MB[0]=mb1p.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0685` | `HOTSPOT_RECT` | left=0x00CA, top=0x0117, right=0x00E3, bottom=0x0130, target=0x0CE9, cursor=0x09 |
| `0x0696` | `HOTSPOT_RECT` | left=0x0108, top=0x009C, right=0x011C, bottom=0x00B2, target=0x0DAF, cursor=0x09 |
| `0x06A7` | `HOTSPOT_RECT` | left=0x0131, top=0x00AE, right=0x0148, bottom=0x00C4, target=0x0DF1, cursor=0x09 |

### Loop `0x06BF`–`0x0704`

Nearest preceding video in file order: VIDEOREF@0x00B6 0x5054 (GAMWAV[84]=13_e_5.vdx)

Scene candidates: VIDEOREF@0x0035 0x5055 (GAMWAV[85]=13_s_1.vdx); VIDEOREF@0x0080 0x5052 (GAMWAV[82]=13_e_3.vdx); VIDEOREF@0x0097 0x5053 (GAMWAV[83]=13_e_4.vdx); VIDEOREF@0x00B6 0x5054 (GAMWAV[84]=13_e_5.vdx); VIDEO_TRANSITION_REF@0x0AA6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0AC7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0AE8 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B09 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B2A 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B4B 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B6C 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B8D 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BAE 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BCF 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BF0 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C11 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C32 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C53 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C74 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C95 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CB6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CD7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CF8 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D19 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D3A 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D5B 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D7C 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D9D 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0DBE 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0DDF 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E00 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E21 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E42 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E63 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E84 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EA5 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EC6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EE7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0F08 0x3800 (MB[0]=mb1p.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x06C5` | `HOTSPOT_RECT` | left=0x00DA, top=0x012B, right=0x00F1, bottom=0x0147, target=0x0CC8, cursor=0x09 |
| `0x06D6` | `HOTSPOT_RECT` | left=0x00CE, top=0x00FE, right=0x00E6, bottom=0x0116, target=0x0D0A, cursor=0x09 |
| `0x06E7` | `HOTSPOT_RECT` | left=0x011C, top=0x00A8, right=0x0131, bottom=0x00BF, target=0x0DD0, cursor=0x09 |
| `0x06F8` | `HOTSPOT_RECT` | left=0x0148, top=0x00B5, right=0x015F, bottom=0x00CC, target=0x0E12, cursor=0x09 |

### Loop `0x0710`–`0x0755`

Nearest preceding video in file order: VIDEOREF@0x00B6 0x5054 (GAMWAV[84]=13_e_5.vdx)

Scene candidates: VIDEOREF@0x0035 0x5055 (GAMWAV[85]=13_s_1.vdx); VIDEOREF@0x0080 0x5052 (GAMWAV[82]=13_e_3.vdx); VIDEOREF@0x0097 0x5053 (GAMWAV[83]=13_e_4.vdx); VIDEOREF@0x00B6 0x5054 (GAMWAV[84]=13_e_5.vdx); VIDEO_TRANSITION_REF@0x0AA6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0AC7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0AE8 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B09 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B2A 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B4B 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B6C 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B8D 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BAE 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BCF 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BF0 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C11 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C32 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C53 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C74 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C95 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CB6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CD7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CF8 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D19 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D3A 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D5B 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D7C 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D9D 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0DBE 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0DDF 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E00 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E21 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E42 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E63 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E84 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EA5 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EC6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EE7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0F08 0x3800 (MB[0]=mb1p.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0716` | `HOTSPOT_RECT` | left=0x00CA, top=0x0117, right=0x00E3, bottom=0x0130, target=0x0CE9, cursor=0x09 |
| `0x0727` | `HOTSPOT_RECT` | left=0x00D1, top=0x00E7, right=0x00E9, bottom=0x00FD, target=0x0D2B, cursor=0x09 |
| `0x0738` | `HOTSPOT_RECT` | left=0x0131, top=0x00AE, right=0x0148, bottom=0x00C4, target=0x0DF1, cursor=0x09 |
| `0x0749` | `HOTSPOT_RECT` | left=0x0165, top=0x00B4, right=0x017A, bottom=0x00C8, target=0x0E33, cursor=0x09 |

### Loop `0x0761`–`0x07A6`

Nearest preceding video in file order: VIDEOREF@0x00B6 0x5054 (GAMWAV[84]=13_e_5.vdx)

Scene candidates: VIDEOREF@0x0035 0x5055 (GAMWAV[85]=13_s_1.vdx); VIDEOREF@0x0080 0x5052 (GAMWAV[82]=13_e_3.vdx); VIDEOREF@0x0097 0x5053 (GAMWAV[83]=13_e_4.vdx); VIDEOREF@0x00B6 0x5054 (GAMWAV[84]=13_e_5.vdx); VIDEO_TRANSITION_REF@0x0AA6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0AC7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0AE8 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B09 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B2A 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B4B 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B6C 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B8D 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BAE 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BCF 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BF0 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C11 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C32 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C53 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C74 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C95 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CB6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CD7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CF8 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D19 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D3A 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D5B 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D7C 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D9D 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0DBE 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0DDF 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E00 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E21 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E42 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E63 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E84 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EA5 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EC6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EE7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0F08 0x3800 (MB[0]=mb1p.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0767` | `HOTSPOT_RECT` | left=0x00CE, top=0x00FE, right=0x00E6, bottom=0x0116, target=0x0D0A, cursor=0x09 |
| `0x0778` | `HOTSPOT_RECT` | left=0x00D7, top=0x00CF, right=0x00EE, bottom=0x00E6, target=0x0D4C, cursor=0x09 |
| `0x0789` | `HOTSPOT_RECT` | left=0x0148, top=0x00B5, right=0x015F, bottom=0x00CC, target=0x0E12, cursor=0x09 |
| `0x079A` | `HOTSPOT_RECT` | left=0x0171, top=0x00C7, right=0x0188, bottom=0x00DB, target=0x0E54, cursor=0x09 |

### Loop `0x07B2`–`0x07F7`

Nearest preceding video in file order: VIDEOREF@0x00B6 0x5054 (GAMWAV[84]=13_e_5.vdx)

Scene candidates: VIDEOREF@0x0035 0x5055 (GAMWAV[85]=13_s_1.vdx); VIDEOREF@0x0080 0x5052 (GAMWAV[82]=13_e_3.vdx); VIDEOREF@0x0097 0x5053 (GAMWAV[83]=13_e_4.vdx); VIDEOREF@0x00B6 0x5054 (GAMWAV[84]=13_e_5.vdx); VIDEO_TRANSITION_REF@0x0AA6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0AC7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0AE8 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B09 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B2A 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B4B 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B6C 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B8D 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BAE 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BCF 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BF0 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C11 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C32 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C53 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C74 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C95 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CB6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CD7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CF8 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D19 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D3A 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D5B 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D7C 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D9D 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0DBE 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0DDF 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E00 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E21 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E42 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E63 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E84 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EA5 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EC6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EE7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0F08 0x3800 (MB[0]=mb1p.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x07B8` | `HOTSPOT_RECT` | left=0x00D1, top=0x00E7, right=0x00E9, bottom=0x00FD, target=0x0D2B, cursor=0x09 |
| `0x07C9` | `HOTSPOT_RECT` | left=0x0165, top=0x00B4, right=0x017A, bottom=0x00C8, target=0x0E33, cursor=0x09 |
| `0x07DA` | `HOTSPOT_RECT` | left=0x0178, top=0x00DC, right=0x0190, bottom=0x00F2, target=0x0E75, cursor=0x09 |
| `0x07EB` | `HOTSPOT_RECT` | left=0x00DE, top=0x00B9, right=0x00F4, bottom=0x00D0, target=0x0D6D, cursor=0x09 |

### Loop `0x0803`–`0x0848`

Nearest preceding video in file order: VIDEOREF@0x00B6 0x5054 (GAMWAV[84]=13_e_5.vdx)

Scene candidates: VIDEOREF@0x0035 0x5055 (GAMWAV[85]=13_s_1.vdx); VIDEOREF@0x0080 0x5052 (GAMWAV[82]=13_e_3.vdx); VIDEOREF@0x0097 0x5053 (GAMWAV[83]=13_e_4.vdx); VIDEOREF@0x00B6 0x5054 (GAMWAV[84]=13_e_5.vdx); VIDEO_TRANSITION_REF@0x0AA6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0AC7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0AE8 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B09 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B2A 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B4B 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B6C 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B8D 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BAE 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BCF 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BF0 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C11 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C32 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C53 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C74 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C95 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CB6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CD7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CF8 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D19 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D3A 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D5B 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D7C 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D9D 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0DBE 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0DDF 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E00 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E21 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E42 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E63 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E84 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EA5 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EC6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EE7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0F08 0x3800 (MB[0]=mb1p.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0809` | `HOTSPOT_RECT` | left=0x00D7, top=0x00CF, right=0x00EE, bottom=0x00E6, target=0x0D4C, cursor=0x09 |
| `0x081A` | `HOTSPOT_RECT` | left=0x00F1, top=0x00AC, right=0x0108, bottom=0x00C2, target=0x0D8E, cursor=0x09 |
| `0x082B` | `HOTSPOT_RECT` | left=0x0171, top=0x00C7, right=0x0188, bottom=0x00DB, target=0x0E54, cursor=0x09 |
| `0x083C` | `HOTSPOT_RECT` | left=0x0170, top=0x00F6, right=0x0188, bottom=0x010F, target=0x0E96, cursor=0x09 |

### Loop `0x0854`–`0x0899`

Nearest preceding video in file order: VIDEOREF@0x00B6 0x5054 (GAMWAV[84]=13_e_5.vdx)

Scene candidates: VIDEOREF@0x0035 0x5055 (GAMWAV[85]=13_s_1.vdx); VIDEOREF@0x0080 0x5052 (GAMWAV[82]=13_e_3.vdx); VIDEOREF@0x0097 0x5053 (GAMWAV[83]=13_e_4.vdx); VIDEOREF@0x00B6 0x5054 (GAMWAV[84]=13_e_5.vdx); VIDEO_TRANSITION_REF@0x0AA6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0AC7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0AE8 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B09 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B2A 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B4B 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B6C 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B8D 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BAE 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BCF 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BF0 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C11 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C32 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C53 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C74 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C95 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CB6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CD7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CF8 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D19 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D3A 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D5B 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D7C 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D9D 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0DBE 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0DDF 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E00 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E21 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E42 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E63 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E84 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EA5 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EC6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EE7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0F08 0x3800 (MB[0]=mb1p.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x085A` | `HOTSPOT_RECT` | left=0x0108, top=0x009C, right=0x011C, bottom=0x00B2, target=0x0DAF, cursor=0x09 |
| `0x086B` | `HOTSPOT_RECT` | left=0x0178, top=0x00DC, right=0x0190, bottom=0x00F2, target=0x0E75, cursor=0x09 |
| `0x087C` | `HOTSPOT_RECT` | left=0x00DE, top=0x00B9, right=0x00F4, bottom=0x00D0, target=0x0D6D, cursor=0x09 |
| `0x088D` | `HOTSPOT_RECT` | left=0x0159, top=0x010E, right=0x0173, bottom=0x0129, target=0x0EB7, cursor=0x09 |

### Loop `0x08A5`–`0x08EA`

Nearest preceding video in file order: VIDEOREF@0x00B6 0x5054 (GAMWAV[84]=13_e_5.vdx)

Scene candidates: VIDEOREF@0x0035 0x5055 (GAMWAV[85]=13_s_1.vdx); VIDEOREF@0x0080 0x5052 (GAMWAV[82]=13_e_3.vdx); VIDEOREF@0x0097 0x5053 (GAMWAV[83]=13_e_4.vdx); VIDEOREF@0x00B6 0x5054 (GAMWAV[84]=13_e_5.vdx); VIDEO_TRANSITION_REF@0x0AA6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0AC7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0AE8 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B09 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B2A 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B4B 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B6C 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B8D 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BAE 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BCF 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BF0 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C11 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C32 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C53 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C74 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C95 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CB6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CD7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CF8 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D19 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D3A 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D5B 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D7C 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D9D 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0DBE 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0DDF 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E00 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E21 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E42 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E63 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E84 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EA5 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EC6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EE7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0F08 0x3800 (MB[0]=mb1p.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x08AB` | `HOTSPOT_RECT` | left=0x00F1, top=0x00AC, right=0x0108, bottom=0x00C2, target=0x0D8E, cursor=0x09 |
| `0x08BC` | `HOTSPOT_RECT` | left=0x011C, top=0x00A8, right=0x0131, bottom=0x00BF, target=0x0DD0, cursor=0x09 |
| `0x08CD` | `HOTSPOT_RECT` | left=0x0170, top=0x00F6, right=0x0188, bottom=0x010F, target=0x0E96, cursor=0x09 |
| `0x08DE` | `HOTSPOT_RECT` | left=0x0140, top=0x010A, right=0x0159, bottom=0x0122, target=0x0ED8, cursor=0x09 |

### Loop `0x08F6`–`0x093B`

Nearest preceding video in file order: VIDEOREF@0x00B6 0x5054 (GAMWAV[84]=13_e_5.vdx)

Scene candidates: VIDEOREF@0x0035 0x5055 (GAMWAV[85]=13_s_1.vdx); VIDEOREF@0x0080 0x5052 (GAMWAV[82]=13_e_3.vdx); VIDEOREF@0x0097 0x5053 (GAMWAV[83]=13_e_4.vdx); VIDEOREF@0x00B6 0x5054 (GAMWAV[84]=13_e_5.vdx); VIDEO_TRANSITION_REF@0x0AA6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0AC7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0AE8 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B09 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B2A 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B4B 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B6C 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B8D 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BAE 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BCF 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BF0 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C11 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C32 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C53 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C74 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C95 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CB6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CD7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CF8 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D19 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D3A 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D5B 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D7C 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D9D 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0DBE 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0DDF 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E00 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E21 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E42 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E63 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E84 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EA5 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EC6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EE7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0F08 0x3800 (MB[0]=mb1p.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x08FC` | `HOTSPOT_RECT` | left=0x0108, top=0x009C, right=0x011C, bottom=0x00B2, target=0x0DAF, cursor=0x09 |
| `0x090D` | `HOTSPOT_RECT` | left=0x0131, top=0x00AE, right=0x0148, bottom=0x00C4, target=0x0DF1, cursor=0x09 |
| `0x091E` | `HOTSPOT_RECT` | left=0x0159, top=0x010E, right=0x0173, bottom=0x0129, target=0x0EB7, cursor=0x09 |
| `0x092F` | `HOTSPOT_RECT` | left=0x0125, top=0x0110, right=0x013D, bottom=0x012C, target=0x0EF9, cursor=0x09 |

### Loop `0x0947`–`0x097B`

Nearest preceding video in file order: VIDEOREF@0x00B6 0x5054 (GAMWAV[84]=13_e_5.vdx)

Scene candidates: VIDEOREF@0x0035 0x5055 (GAMWAV[85]=13_s_1.vdx); VIDEOREF@0x0080 0x5052 (GAMWAV[82]=13_e_3.vdx); VIDEOREF@0x0097 0x5053 (GAMWAV[83]=13_e_4.vdx); VIDEOREF@0x00B6 0x5054 (GAMWAV[84]=13_e_5.vdx); VIDEO_TRANSITION_REF@0x0AA6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0AC7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0AE8 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B09 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B2A 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B4B 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B6C 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B8D 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BAE 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BCF 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BF0 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C11 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C32 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C53 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C74 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C95 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CB6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CD7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CF8 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D19 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D3A 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D5B 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D7C 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D9D 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0DBE 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0DDF 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E00 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E21 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E42 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E63 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E84 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EA5 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EC6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EE7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0F08 0x3800 (MB[0]=mb1p.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x094D` | `HOTSPOT_RECT` | left=0x011C, top=0x00A8, right=0x0131, bottom=0x00BF, target=0x0DD0, cursor=0x09 |
| `0x095E` | `HOTSPOT_RECT` | left=0x0148, top=0x00B5, right=0x015F, bottom=0x00CC, target=0x0E12, cursor=0x09 |
| `0x096F` | `HOTSPOT_RECT` | left=0x0140, top=0x010A, right=0x0159, bottom=0x0122, target=0x0ED8, cursor=0x09 |

### Loop `0x0987`–`0x09BB`

Nearest preceding video in file order: VIDEOREF@0x00B6 0x5054 (GAMWAV[84]=13_e_5.vdx)

Scene candidates: VIDEOREF@0x0035 0x5055 (GAMWAV[85]=13_s_1.vdx); VIDEOREF@0x0080 0x5052 (GAMWAV[82]=13_e_3.vdx); VIDEOREF@0x0097 0x5053 (GAMWAV[83]=13_e_4.vdx); VIDEOREF@0x00B6 0x5054 (GAMWAV[84]=13_e_5.vdx); VIDEO_TRANSITION_REF@0x0AA6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0AC7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0AE8 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B09 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B2A 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B4B 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B6C 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B8D 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BAE 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BCF 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BF0 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C11 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C32 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C53 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C74 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C95 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CB6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CD7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CF8 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D19 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D3A 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D5B 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D7C 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D9D 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0DBE 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0DDF 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E00 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E21 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E42 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E63 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E84 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EA5 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EC6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EE7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0F08 0x3800 (MB[0]=mb1p.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x098D` | `HOTSPOT_RECT` | left=0x0131, top=0x00AE, right=0x0148, bottom=0x00C4, target=0x0DF1, cursor=0x09 |
| `0x099E` | `HOTSPOT_RECT` | left=0x0165, top=0x00B4, right=0x017A, bottom=0x00C8, target=0x0E33, cursor=0x09 |
| `0x09AF` | `HOTSPOT_RECT` | left=0x0125, top=0x0110, right=0x013D, bottom=0x012C, target=0x0EF9, cursor=0x09 |

### Loop `0x09C7`–`0x09FB`

Nearest preceding video in file order: VIDEOREF@0x00B6 0x5054 (GAMWAV[84]=13_e_5.vdx)

Scene candidates: VIDEOREF@0x0035 0x5055 (GAMWAV[85]=13_s_1.vdx); VIDEOREF@0x0080 0x5052 (GAMWAV[82]=13_e_3.vdx); VIDEOREF@0x0097 0x5053 (GAMWAV[83]=13_e_4.vdx); VIDEOREF@0x00B6 0x5054 (GAMWAV[84]=13_e_5.vdx); VIDEO_TRANSITION_REF@0x0AA6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0AC7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0AE8 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B09 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B2A 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B4B 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B6C 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B8D 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BAE 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BCF 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BF0 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C11 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C32 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C53 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C74 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C95 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CB6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CD7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CF8 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D19 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D3A 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D5B 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D7C 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D9D 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0DBE 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0DDF 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E00 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E21 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E42 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E63 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E84 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EA5 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EC6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EE7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0F08 0x3800 (MB[0]=mb1p.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x09CD` | `HOTSPOT_RECT` | left=0x0148, top=0x00B5, right=0x015F, bottom=0x00CC, target=0x0E12, cursor=0x09 |
| `0x09DE` | `HOTSPOT_RECT` | left=0x0171, top=0x00C7, right=0x0188, bottom=0x00DB, target=0x0E54, cursor=0x09 |
| `0x09EF` | `HOTSPOT_RECT` | left=0x0103, top=0x00D3, right=0x011C, bottom=0x00EB, target=0x0F1A, cursor=0x09 |

### Loop `0x0A07`–`0x0A2A`

Nearest preceding video in file order: VIDEOREF@0x00B6 0x5054 (GAMWAV[84]=13_e_5.vdx)

Scene candidates: VIDEOREF@0x0035 0x5055 (GAMWAV[85]=13_s_1.vdx); VIDEOREF@0x0080 0x5052 (GAMWAV[82]=13_e_3.vdx); VIDEOREF@0x0097 0x5053 (GAMWAV[83]=13_e_4.vdx); VIDEOREF@0x00B6 0x5054 (GAMWAV[84]=13_e_5.vdx); VIDEO_TRANSITION_REF@0x0AA6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0AC7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0AE8 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B09 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B2A 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B4B 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B6C 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B8D 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BAE 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BCF 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BF0 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C11 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C32 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C53 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C74 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C95 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CB6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CD7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CF8 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D19 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D3A 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D5B 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D7C 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D9D 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0DBE 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0DDF 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E00 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E21 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E42 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E63 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E84 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EA5 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EC6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EE7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0F08 0x3800 (MB[0]=mb1p.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0A0D` | `HOTSPOT_RECT` | left=0x0165, top=0x00B4, right=0x017A, bottom=0x00C8, target=0x0E33, cursor=0x09 |
| `0x0A1E` | `HOTSPOT_RECT` | left=0x0178, top=0x00DC, right=0x0190, bottom=0x00F2, target=0x0E75, cursor=0x09 |

### Loop `0x0A36`–`0x0A6A`

Nearest preceding video in file order: VIDEOREF@0x00B6 0x5054 (GAMWAV[84]=13_e_5.vdx)

Scene candidates: VIDEOREF@0x0035 0x5055 (GAMWAV[85]=13_s_1.vdx); VIDEOREF@0x0080 0x5052 (GAMWAV[82]=13_e_3.vdx); VIDEOREF@0x0097 0x5053 (GAMWAV[83]=13_e_4.vdx); VIDEOREF@0x00B6 0x5054 (GAMWAV[84]=13_e_5.vdx); VIDEO_TRANSITION_REF@0x0AA6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0AC7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0AE8 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B09 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B2A 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B4B 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B6C 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B8D 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BAE 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BCF 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BF0 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C11 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C32 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C53 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C74 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C95 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CB6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CD7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CF8 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D19 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D3A 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D5B 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D7C 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D9D 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0DBE 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0DDF 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E00 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E21 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E42 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E63 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E84 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EA5 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EC6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EE7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0F08 0x3800 (MB[0]=mb1p.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0A3C` | `HOTSPOT_RECT` | left=0x0171, top=0x00C7, right=0x0188, bottom=0x00DB, target=0x0E54, cursor=0x09 |
| `0x0A4D` | `HOTSPOT_RECT` | left=0x0170, top=0x00F6, right=0x0188, bottom=0x010F, target=0x0E96, cursor=0x09 |
| `0x0A5E` | `HOTSPOT_RECT` | left=0x0103, top=0x00D3, right=0x011C, bottom=0x00EB, target=0x0F1A, cursor=0x09 |

### Loop `0x0A73`–`0x0A96`

Nearest preceding video in file order: VIDEOREF@0x00B6 0x5054 (GAMWAV[84]=13_e_5.vdx)

Scene candidates: VIDEOREF@0x0035 0x5055 (GAMWAV[85]=13_s_1.vdx); VIDEOREF@0x0080 0x5052 (GAMWAV[82]=13_e_3.vdx); VIDEOREF@0x0097 0x5053 (GAMWAV[83]=13_e_4.vdx); VIDEOREF@0x00B6 0x5054 (GAMWAV[84]=13_e_5.vdx); VIDEO_TRANSITION_REF@0x0AA6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0AC7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0AE8 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B09 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B2A 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B4B 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B6C 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0B8D 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BAE 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BCF 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0BF0 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C11 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C32 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C53 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C74 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0C95 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CB6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CD7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0CF8 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D19 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D3A 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D5B 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D7C 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0D9D 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0DBE 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0DDF 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E00 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E21 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E42 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E63 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0E84 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EA5 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EC6 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0EE7 0x3800 (MB[0]=mb1p.vdx); VIDEO_TRANSITION_REF@0x0F08 0x3800 (MB[0]=mb1p.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0A79` | `HOTSPOT_RECT` | left=0x0159, top=0x010E, right=0x0173, bottom=0x0129, target=0x0EB7, cursor=0x09 |
| `0x0A8A` | `HOTSPOT_RECT` | left=0x0125, top=0x0110, right=0x013D, bottom=0x012C, target=0x0EF9, cursor=0x09 |

## MU.GRV

Input loops: 1

### Loop `0x00A5`–`0x01D5`

Nearest preceding video in file order: VIDEOREF@0x0085 0x501D (GAMWAV[29]=6_e_3.vdx)

Scene candidates: VIDEOREF@0x0045 0x4011 (MU[17]=keyboard.vdx); VIDEOREF@0x0059 0x501B (GAMWAV[27]=6_e_1.vdx); VIDEOREF@0x006F 0x501C (GAMWAV[28]=6_e_2.vdx); VIDEOREF@0x0085 0x501D (GAMWAV[29]=6_e_3.vdx); VIDEOREF@0x01D9 0x4012 (MU[18]=key00.vdx); VIDEOREF@0x01E4 0x4013 (MU[19]=key01.vdx); VIDEOREF@0x01EF 0x4014 (MU[20]=key02.vdx); VIDEOREF@0x01FA 0x4015 (MU[21]=key03.vdx); VIDEOREF@0x0205 0x4016 (MU[22]=key04.vdx); VIDEOREF@0x0210 0x4017 (MU[23]=key05.vdx); VIDEOREF@0x021B 0x4018 (MU[24]=key06.vdx); VIDEOREF@0x0226 0x4019 (MU[25]=key07.vdx); VIDEOREF@0x0231 0x401A (MU[26]=key08.vdx); VIDEOREF@0x023C 0x401B (MU[27]=key09.vdx); VIDEOREF@0x0247 0x401C (MU[28]=key10.vdx); VIDEOREF@0x0252 0x401D (MU[29]=key11.vdx); VIDEOREF@0x025D 0x401E (MU[30]=key12.vdx); VIDEOREF@0x0268 0x401F (MU[31]=key13.vdx); VIDEOREF@0x0273 0x4020 (MU[32]=key14.vdx); VIDEOREF@0x027E 0x4021 (MU[33]=key15.vdx); VIDEOREF@0x0289 0x4022 (MU[34]=key16.vdx); VIDEOREF@0x0294 0x4023 (MU[35]=key17.vdx); VIDEOREF@0x029F 0x4024 (MU[36]=key18.vdx); VIDEOREF@0x02AA 0x4025 (MU[37]=key19.vdx); VIDEOREF@0x02B5 0x4026 (MU[38]=key20.vdx); VIDEOREF@0x02C0 0x4027 (MU[39]=key21.vdx); VIDEOREF@0x02CB 0x4028 (MU[40]=key22.vdx); VIDEOREF@0x02D6 0x4029 (MU[41]=key23.vdx); VIDEOREF@0x02E1 0x402A (MU[42]=key24.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x00A6` | `HOTSPOT_RECT` | left=0x0022, top=0x010E, right=0x003A, bottom=0x0138, target=0x01D8, cursor=0x09 |
| `0x00B2` | `HOTSPOT_RECT` | left=0x0045, top=0x00D8, right=0x0059, bottom=0x00F4, target=0x01E3, cursor=0x0A |
| `0x00BE` | `HOTSPOT_RECT` | left=0x0047, top=0x0111, right=0x0061, bottom=0x0137, target=0x01EE, cursor=0x09 |
| `0x00CA` | `HOTSPOT_RECT` | left=0x0070, top=0x00DA, right=0x007F, bottom=0x00F6, target=0x01F9, cursor=0x0A |
| `0x00D6` | `HOTSPOT_RECT` | left=0x006D, top=0x0110, right=0x008B, bottom=0x0136, target=0x0204, cursor=0x09 |
| `0x00E2` | `HOTSPOT_RECT` | left=0x0095, top=0x010C, right=0x00B2, bottom=0x0136, target=0x020F, cursor=0x0A |
| `0x00EE` | `HOTSPOT_RECT` | left=0x00B7, top=0x00DC, right=0x00C3, bottom=0x00F3, target=0x021A, cursor=0x09 |
| `0x00FA` | `HOTSPOT_RECT` | left=0x00BA, top=0x0110, right=0x00DB, bottom=0x0135, target=0x0225, cursor=0x0A |
| `0x0106` | `HOTSPOT_RECT` | left=0x00DE, top=0x00D8, right=0x00EC, bottom=0x00F8, target=0x0230, cursor=0x09 |
| `0x0112` | `HOTSPOT_RECT` | left=0x00E1, top=0x0113, right=0x0104, bottom=0x0137, target=0x023B, cursor=0x0A |
| `0x011E` | `HOTSPOT_RECT` | left=0x0106, top=0x00DA, right=0x0117, bottom=0x00F9, target=0x0246, cursor=0x09 |
| `0x012A` | `HOTSPOT_RECT` | left=0x0106, top=0x0114, right=0x012C, bottom=0x0138, target=0x0251, cursor=0x0A |
| `0x0136` | `HOTSPOT_RECT` | left=0x012D, top=0x0113, right=0x0153, bottom=0x0136, target=0x025C, cursor=0x09 |
| `0x0142` | `HOTSPOT_RECT` | left=0x0148, top=0x00DD, right=0x0159, bottom=0x00F6, target=0x0267, cursor=0x0A |
| `0x014E` | `HOTSPOT_RECT` | left=0x0154, top=0x0119, right=0x017A, bottom=0x0138, target=0x0272, cursor=0x09 |
| `0x015A` | `HOTSPOT_RECT` | left=0x0171, top=0x00DE, right=0x0180, bottom=0x00F2, target=0x027D, cursor=0x0A |
| `0x0166` | `HOTSPOT_RECT` | left=0x017B, top=0x0113, right=0x01A2, bottom=0x0137, target=0x0288, cursor=0x09 |
| `0x0172` | `HOTSPOT_RECT` | left=0x01A4, top=0x0111, right=0x01C8, bottom=0x0137, target=0x0293, cursor=0x0A |
| `0x017E` | `HOTSPOT_RECT` | left=0x01B2, top=0x00DC, right=0x01C5, bottom=0x00FC, target=0x029E, cursor=0x09 |
| `0x018A` | `HOTSPOT_RECT` | left=0x01CD, top=0x0110, right=0x01EE, bottom=0x0138, target=0x02A9, cursor=0x0A |
| `0x0196` | `HOTSPOT_RECT` | left=0x01DB, top=0x00DC, right=0x01ED, bottom=0x00F9, target=0x02B4, cursor=0x09 |
| `0x01A2` | `HOTSPOT_RECT` | left=0x01F7, top=0x010F, right=0x0214, bottom=0x0137, target=0x02BF, cursor=0x0A |
| `0x01AE` | `HOTSPOT_RECT` | left=0x0203, top=0x00DC, right=0x0217, bottom=0x00FB, target=0x02CA, cursor=0x09 |
| `0x01BA` | `HOTSPOT_RECT` | left=0x021D, top=0x010F, right=0x023C, bottom=0x0137, target=0x02D5, cursor=0x0A |
| `0x01C6` | `HOTSPOT_RECT` | left=0x0248, top=0x010D, right=0x0267, bottom=0x0137, target=0x02E0, cursor=0x09 |
| `0x01D2` | `HOTSPOT_RIGHT` | target=0x0548 |

## N.GRV

Input loops: 1

### Loop `0x00DA`–`0x016B`

Nearest preceding video in file order: VIDEOREF@0x00D6 0x500F (GAMWAV[15]=4_e_2.vdx)

Scene candidates: VIDEOREF@0x004E 0x4412 (N[18]=npuzb.vdx); VIDEOREF@0x0088 0x5049 (GAMWAV[73]=11_s_5.vdx); VIDEOREF@0x00A2 0x5010 (GAMWAV[16]=4_e_3.vdx); VIDEOREF@0x00BC 0x5011 (GAMWAV[17]=4_e_4.vdx); VIDEOREF@0x00D6 0x500F (GAMWAV[15]=4_e_2.vdx); VIDEO_NAME@0x0194 "g{v006}{v000}"; VIDEO_NAME@0x01B7 "h{v007}{v001}"; VIDEO_NAME@0x01DA "i{v008}{v002}"; VIDEO_NAME@0x01FD "c{v002}{v000}"; VIDEO_NAME@0x0220 "a{v000}{v002}"; VIDEO_NAME@0x0243 "f{v005}{v003}"; VIDEO_NAME@0x0266 "d{v003}{v005}"; VIDEO_NAME@0x0289 "i{v008}{v006}"; VIDEO_NAME@0x02AC "g{v006}{v008}"; VIDEO_NAME@0x02CF "a{v000}{v006}"; VIDEO_NAME@0x02F2 "b{v001}{v007}"; VIDEO_NAME@0x0315 "c{v002}{v008}"

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x00DB` | `HOTSPOT_RECT` | left=0x00B0, top=0x0053, right=0x0103, bottom=0x0067, target=0x0183, cursor=0x09 |
| `0x00E7` | `HOTSPOT_RECT` | left=0x0116, top=0x0053, right=0x0168, bottom=0x0082, target=0x01A6, cursor=0x0A |
| `0x00F3` | `HOTSPOT_RECT` | left=0x017A, top=0x0053, right=0x01CC, bottom=0x0072, target=0x01C9, cursor=0x09 |
| `0x00FF` | `HOTSPOT_RECT` | left=0x008C, top=0x0064, right=0x00B5, bottom=0x00AE, target=0x01EC, cursor=0x0A |
| `0x010B` | `HOTSPOT_RECT` | left=0x01C7, top=0x0066, right=0x01F0, bottom=0x00AD, target=0x020F, cursor=0x09 |
| `0x0117` | `HOTSPOT_RECT` | left=0x0083, top=0x00C0, right=0x00AF, bottom=0x0114, target=0x0232, cursor=0x0A |
| `0x0123` | `HOTSPOT_RECT` | left=0x01CF, top=0x00C2, right=0x0201, bottom=0x0113, target=0x0255, cursor=0x09 |
| `0x012F` | `HOTSPOT_RECT` | left=0x007D, top=0x0128, right=0x00AB, bottom=0x017D, target=0x0278, cursor=0x0A |
| `0x013B` | `HOTSPOT_RECT` | left=0x01D6, top=0x0128, right=0x020B, bottom=0x0180, target=0x029B, cursor=0x09 |
| `0x0147` | `HOTSPOT_RECT` | left=0x00A9, top=0x0176, right=0x00F4, bottom=0x0192, target=0x02BE, cursor=0x0A |
| `0x0153` | `HOTSPOT_RECT` | left=0x0114, top=0x016F, right=0x0168, bottom=0x0193, target=0x02E1, cursor=0x09 |
| `0x015F` | `HOTSPOT_RECT` | left=0x0183, top=0x016D, right=0x01D8, bottom=0x0192, target=0x0304, cursor=0x0A |

## P.GRV

Input loops: 1

### Loop `0x01BB`–`0x0228`

Nearest preceding video in file order: VIDEOREF@0x01B7 0x5056 (GAMWAV[86]=15_e_1.vdx)

Scene candidates: VIDEO_TRANSITION_REF@0x004B 0x482A (P[42]=pstauf.vdx); VIDEOREF@0x0155 0x5098 (GAMWAV[152]=gen_s_1.vdx); VIDEOREF@0x0183 0x5058 (GAMWAV[88]=15_e_3.vdx); VIDEOREF@0x019D 0x5057 (GAMWAV[87]=15_e_2.vdx); VIDEOREF@0x01B7 0x5056 (GAMWAV[86]=15_e_1.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x01BC` | `HOTSPOT_RECT` | left=0x0106, top=0x007C, right=0x0135, bottom=0x00D3, target=0x023F, cursor=0x09 |
| `0x01C8` | `HOTSPOT_RECT` | left=0x0136, top=0x007C, right=0x0165, bottom=0x00D3, target=0x024E, cursor=0x0A |
| `0x01D4` | `HOTSPOT_RECT` | left=0x0166, top=0x007C, right=0x0195, bottom=0x00D3, target=0x025A, cursor=0x09 |
| `0x01E0` | `HOTSPOT_RECT` | left=0x0106, top=0x00D4, right=0x0135, bottom=0x0135, target=0x0269, cursor=0x0A |
| `0x01EC` | `HOTSPOT_RECT` | left=0x0136, top=0x00D4, right=0x0165, bottom=0x0135, target=0x0275, cursor=0x09 |
| `0x01F8` | `HOTSPOT_RECT` | left=0x0166, top=0x00D4, right=0x0195, bottom=0x0135, target=0x0287, cursor=0x0A |
| `0x0204` | `HOTSPOT_RECT` | left=0x0106, top=0x012C, right=0x0135, bottom=0x0183, target=0x0293, cursor=0x09 |
| `0x0210` | `HOTSPOT_RECT` | left=0x0136, top=0x012C, right=0x0165, bottom=0x0183, target=0x02A2, cursor=0x0A |
| `0x021C` | `HOTSPOT_RECT` | left=0x0166, top=0x012C, right=0x0195, bottom=0x0183, target=0x02AE, cursor=0x09 |

## SCRIPT.GRV

Input loops: 124

### Loop `0x0059`–`0x0164`

Nearest preceding video in file order: VIDEOREF@0x0055 0x50AA (GAMWAV[170]=gen_s_19.vdx)

Scene candidates: VIDEOREF@0x004F 0x50A9 (GAMWAV[169]=gen_s_18.vdx); VIDEOREF@0x0055 0x50AA (GAMWAV[170]=gen_s_19.vdx); VIDEOREF@0x0173 0x2431 (INTRO[49]=groovie.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0060` | `KEYACTION` | key=0x5A, target=0x0165 |
| `0x006A` | `KEYACTION` | key=0x61, target=0x0165 |
| `0x0074` | `KEYACTION` | key=0x70, target=0x0165 |
| `0x007E` | `KEYACTION` | key=0x68, target=0x0165 |
| `0x0088` | `KEYACTION` | key=0x6F, target=0x0165 |
| `0x0092` | `KEYACTION` | key=0x64, target=0x0165 |
| `0x009C` | `KEYACTION` | key=0x20, target=0x0165 |
| `0x00A6` | `KEYACTION` | key=0x42, target=0x0165 |
| `0x00B0` | `KEYACTION` | key=0x65, target=0x0165 |
| `0x00BA` | `KEYACTION` | key=0x65, target=0x0165 |
| `0x00C4` | `KEYACTION` | key=0x62, target=0x0165 |
| `0x00CE` | `KEYACTION` | key=0x6C, target=0x0165 |
| `0x00D8` | `KEYACTION` | key=0x65, target=0x0165 |
| `0x00E2` | `KEYACTION` | key=0x62, target=0x0165 |
| `0x00EC` | `KEYACTION` | key=0x72, target=0x0165 |
| `0x00F6` | `KEYACTION` | key=0x6F, target=0x0165 |
| `0x0100` | `KEYACTION` | key=0x78, target=0x016B |
| `0x010A` | `HOTSPOT_RECT` | left=0x0064, top=0x009B, right=0x00B8, bottom=0x00CC, target=0x1AA0, cursor=0x07 |
| `0x0116` | `HOTSPOT_RECT` | left=0x01C2, top=0x009D, right=0x021E, bottom=0x00C9, target=0x1AA0, cursor=0x07 |
| `0x0122` | `HOTSPOT_RECT` | left=0x002A, top=0x012B, right=0x00B2, bottom=0x0185, target=0x1AA0, cursor=0x07 |
| `0x012E` | `HOTSPOT_RECT` | left=0x01D6, top=0x012C, right=0x0259, bottom=0x0185, target=0x1AA0, cursor=0x07 |
| `0x0140` | `HOTSPOT_RECT` | left=0x0103, top=0x00F5, right=0x017D, bottom=0x011C, target=0x0179, cursor=0x08 |
| `0x014C` | `HOTSPOT_RECT` | left=0x00CB, top=0x012A, right=0x01B2, bottom=0x0147, target=0x03E8, cursor=0x08 |
| `0x0158` | `HOTSPOT_RECT` | left=0x00D5, top=0x0161, right=0x01AA, bottom=0x0176, target=0x02AC, cursor=0x08 |

### Loop `0x0189`–`0x024A`

Nearest preceding video in file order: VIDEOREF@0x0186 0x2429 (INTRO[41]=sphprm3i.vdx)

Scene candidates: VIDEOREF@0x0186 0x2429 (INTRO[41]=sphprm3i.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x018F` | `HOTSPOT_SAVE_SLOT` | slot=0x01, left=0x00B2, top=0x0136, right=0x00C1, bottom=0x014D, target=0x024B, cursor=0x08 |
| `0x01A1` | `HOTSPOT_SAVE_SLOT` | slot=0x02, left=0x00C5, top=0x0136, right=0x00DE, bottom=0x014D, target=0x0251, cursor=0x08 |
| `0x01B3` | `HOTSPOT_SAVE_SLOT` | slot=0x03, left=0x00E4, top=0x0136, right=0x00FE, bottom=0x014D, target=0x0257, cursor=0x08 |
| `0x01C5` | `HOTSPOT_SAVE_SLOT` | slot=0x04, left=0x0104, top=0x0136, right=0x011F, bottom=0x014D, target=0x025D, cursor=0x08 |
| `0x01D7` | `HOTSPOT_SAVE_SLOT` | slot=0x05, left=0x0124, top=0x0136, right=0x013E, bottom=0x014D, target=0x0263, cursor=0x08 |
| `0x01E9` | `HOTSPOT_SAVE_SLOT` | slot=0x06, left=0x0141, top=0x0136, right=0x015A, bottom=0x014D, target=0x0269, cursor=0x08 |
| `0x01FB` | `HOTSPOT_SAVE_SLOT` | slot=0x07, left=0x015E, top=0x0136, right=0x0177, bottom=0x014D, target=0x026F, cursor=0x08 |
| `0x020D` | `HOTSPOT_SAVE_SLOT` | slot=0x08, left=0x017C, top=0x0136, right=0x0196, bottom=0x014D, target=0x0275, cursor=0x08 |
| `0x021F` | `HOTSPOT_SAVE_SLOT` | slot=0x09, left=0x0199, top=0x0136, right=0x01B3, bottom=0x014D, target=0x027B, cursor=0x08 |
| `0x0231` | `HOTSPOT_SAVE_SLOT` | slot=0x00, left=0x01B5, top=0x0136, right=0x01D2, bottom=0x014D, target=0x0281, cursor=0x08 |
| `0x023E` | `HOTSPOT_RECT` | left=0x00D5, top=0x0161, right=0x01AA, bottom=0x0176, target=0x0015, cursor=0x08 |

### Loop `0x02B8`–`0x02DD`

Nearest preceding video in file order: VIDEOREF@0x02B5 0x2427 (INTRO[39]=sphprm2i.vdx)

Scene candidates: VIDEOREF@0x02B5 0x2427 (INTRO[39]=sphprm2i.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x02B9` | `HOTSPOT_RECT` | left=0x0054, top=0x00B3, right=0x00B2, bottom=0x00F7, target=0x02DE, cursor=0x08 |
| `0x02C5` | `HOTSPOT_RECT` | left=0x01CB, top=0x00B6, right=0x022C, bottom=0x00ED, target=0x02EA, cursor=0x08 |
| `0x02D1` | `HOTSPOT_RECT` | left=0x00D5, top=0x0161, right=0x01AA, bottom=0x0176, target=0x02DE, cursor=0x08 |

### Loop `0x033D`–`0x0341`

Nearest preceding video in file order: VIDEOREF@0x033A 0x1C01 (HDISK[1]=pid2.vdx)

Scene candidates: VIDEOREF@0x033A 0x1C01 (HDISK[1]=pid2.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x033E` | `HOTSPOT_CURRENT` | target=0x0342 |

### Loop `0x038F`–`0x0393`

Nearest preceding video in file order: VIDEOREF@0x038C 0x1C00 (HDISK[0]=pid1.vdx)

Scene candidates: VIDEOREF@0x038C 0x1C00 (HDISK[0]=pid1.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0390` | `HOTSPOT_CURRENT` | target=0x0394 |

### Loop `0x04FD`–`0x0547`

Nearest preceding video in file order: VIDEOREF@0x04F9 0x5001 (GAMWAV[1]=1_e_2.vdx)

Scene candidates: VIDEOREF@0x03E2 0x1403 (FH[3]=f1_6.vdx); VIDEOREF@0x04F9 0x5001 (GAMWAV[1]=1_e_2.vdx); VIDEOREF@0x06A1 0x1426 (FH[38]=f_1fb.vdx); VIDEOREF@0x06B3 0x1423 (FH[35]=f_1bc.vdx); VIDEOREF@0x29F5 0x1422 (FH[34]=f_1bb.vdx); VIDEOREF@0x3ABA 0x1426 (FH[38]=f_1fb.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0504` | `HOTSPOT_BOTTOM_4` | target=0x3912 |
| `0x0507` | `HOTSPOT_RECT` | left=0x0000, top=0x00DE, right=0x0068, bottom=0x0154, target=0x0551, cursor=0x00 |
| `0x0513` | `HOTSPOT_RECT` | left=0x01CA, top=0x00F2, right=0x0233, bottom=0x0152, target=0x0557, cursor=0x00 |
| `0x051F` | `HOTSPOT_RECT` | left=0x0123, top=0x0050, right=0x01A8, bottom=0x00C0, target=0x0560, cursor=0x00 |
| `0x0535` | `HOTSPOT_RECT` | left=0x00C8, top=0x012C, right=0x01B8, bottom=0x0190, target=0x0548, cursor=0x07 |
| `0x0541` | `HOTSPOT_LEFT` | target=0x068F |
| `0x0544` | `HOTSPOT_RIGHT` | target=0x0695 |

### Loop `0x0566`–`0x0579`

Nearest preceding video in file order: VIDEOREF@0x0560 0x1403 (FH[3]=f1_6.vdx)

Scene candidates: VIDEOREF@0x068F 0x1422 (FH[34]=f_1bb.vdx); VIDEOREF@0x06AD 0x1425 (FH[37]=f_1fa.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0567` | `HOTSPOT_RECT` | left=0x0213, top=0x00D4, right=0x027F, bottom=0x0154, target=0x057A, cursor=0x00 |
| `0x0573` | `HOTSPOT_LEFT` | target=0x069B |
| `0x0576` | `HOTSPOT_RIGHT` | target=0x06A1 |

### Loop `0x0583`–`0x05DF`

Nearest preceding video in file order: VIDEOREF@0x057D 0x1401 (FH[1]=f1_2.vdx)

Scene candidates: VIDEOREF@0x03E2 0x1403 (FH[3]=f1_6.vdx); VIDEOREF@0x04F9 0x5001 (GAMWAV[1]=1_e_2.vdx); VIDEOREF@0x0651 0x1405 (FH[5]=f1_pb.vdx); VIDEOREF@0x069B 0x1421 (FH[33]=f_1ba.vdx); VIDEOREF@0x06A1 0x1426 (FH[38]=f_1fb.vdx); VIDEOREF@0x06B3 0x1423 (FH[35]=f_1bc.vdx); VIDEOREF@0x06B9 0x1428 (FH[40]=f_1fd.vdx); VIDEOREF@0x0704 0x140A (FH[10]=f2_1.vdx); VIDEOREF@0x08A6 0x1415 (FH[21]=f5_1.vdx); VIDEOREF@0x0957 0x105F (DR[95]=dr_mi.vdx); VIDEOREF@0x09DF 0x1000 (DR[0]=come.vdx); VIDEOREF@0x09FB 0x106A (DR[106]=dr_vb.vdx); VIDEOREF@0x0A04 0x1063 (DR[99]=dr_r.vdx); VIDEOREF@0x0A1C 0x2C0C (K[12]=k_1ba.vdx); VIDEOREF@0x0A39 0x2C0E (K[14]=k_1tb.vdx); VIDEOREF@0x0AA6 0x2C0D (K[13]=k_1fa.vdx); VIDEOREF@0x0B7C 0x2C14 (K[20]=k_2fa.vdx); VIDEOREF@0x0B82 0x2C11 (K[17]=k_2bb.vdx); VIDEOREF@0x0BA8 0x2C05 (K[5]=k2_7b.vdx); VIDEOREF@0x0BE7 0x4001 (MU[1]=muab.vdx); VIDEOREF@0x0CA0 0x4002 (MU[2]=muabb.vdx); VIDEOREF@0x0CA6 0x4003 (MU[3]=mucd.vdx); VIDEOREF@0x0CB6 0x400A (MU[10]=mupib.vdx); VIDEOREF@0x0D3F 0x4007 (MU[7]=mugrb.vdx); VIDEOREF@0x0D52 0x2072 (HTBD[114]=bdab.vdx); VIDEOREF@0x0D59 0x207A (HTBD[122]=bdplb.vdx); VIDEOREF@0x0E25 0x206F (HTBD[111]=bd2p.vdx); VIDEOREF@0x0E45 0x2074 (HTBD[116]=bdcd.vdx); VIDEOREF@0x0E4B 0x2073 (HTBD[115]=bdabb.vdx); VIDEOREF@0x0F56 0x1418 (FH[24]=f6_1.vdx); VIDEOREF@0x0F89 0x1472 (FH[114]=h_1bb.vdx); VIDEOREF@0x0F9C 0x1477 (FH[119]=h_1fc.vdx); VIDEOREF@0x0FBB 0x1474 (FH[116]=h_1bd.vdx); VIDEOREF@0x0FC1 0x1475 (FH[117]=h_1fa.vdx); VIDEOREF@0x1027 0x145C (FH[92]=h2_1.vdx); VIDEOREF@0x1086 0x146B (FH[107]=h8_1.vdx); VIDEOREF@0x12CB 0x2007 (HTBD[7]=htab.vdx); VIDEOREF@0x1322 0x2004 (HTBD[4]=ht2p.vdx); VIDEOREF@0x132B 0x2008 (HTBD[8]=ht_mess.vdx); VIDEOREF@0x1337 0x2009 (HTBD[9]=htcd.vdx); VIDEOREF@0x1395 0x1808 (GA[8]=gaab.vdx); VIDEOREF@0x1456 0x1801 (GA[1]=ga1pb.vdx); VIDEOREF@0x145C 0x1801 (GA[1]=ga1pb.vdx); VIDEOREF@0x148B 0x1809 (GA[9]=gaabb.vdx); VIDEOREF@0x1491 0x180B (GA[11]=gacd.vdx); VIDEOREF@0x149D 0x2869 (JHEK[105]=jhab.vdx); VIDEOREF@0x1556 0x2877 (JHEK[119]=jhpub.vdx); VIDEOREF@0x1583 0x2875 (JHEK[117]=jhmib.vdx); VIDEOREF@0x159F 0x2875 (JHEK[117]=jhmib.vdx); VIDEOREF@0x15C5 0x286A (JHEK[106]=jhabb.vdx); VIDEOREF@0x15CB 0x286D (JHEK[109]=jhcd.vdx); VIDEOREF@0x15F4 0x4803 (P[3]=pfa.vdx); VIDEOREF@0x1635 0x480A (P[10]=pfdb.vdx); VIDEOREF@0x1661 0x4809 (P[9]=pfd.vdx); VIDEOREF@0x1672 0x480C (P[12]=pmu.vdx); VIDEOREF@0x1682 0x4807 (P[7]=pfc.vdx); VIDEOREF@0x16B3 0x4804 (P[4]=pfab.vdx); VIDEOREF@0x2185 0x3400 (LI[0]=l1_2.vdx); VIDEOREF@0x2935 0x3402 (LI[2]=l1_cb.vdx); VIDEOREF@0x29F5 0x1422 (FH[34]=f_1bb.vdx); VIDEOREF@0x2A19 0x3402 (LI[2]=l1_cb.vdx); VIDEOREF@0x2A5F 0x3428 (LI[40]=l_1ba.vdx); VIDEOREF@0x2A65 0x342B (LI[43]=l_1fc.vdx); VIDEOREF@0x2AE8 0x3406 (LI[6]=l2_3b.vdx); VIDEOREF@0x2AFB 0x342F (LI[47]=l_2bd.vdx); VIDEOREF@0x2B4D 0x3432 (LI[50]=l_2fc.vdx); VIDEOREF@0x2B5F 0x342F (LI[47]=l_2bd.vdx); VIDEOREF@0x2D0C 0x2881 (JHEK[129]=ekab.vdx); VIDEOREF@0x2D99 0x287B (JHEK[123]=ek1pb.vdx); VIDEOREF@0x2D9F 0x287B (JHEK[123]=ek1pb.vdx); VIDEOREF@0x2DCE 0x288C (JHEK[140]=ekmbb.vdx); VIDEOREF@0x2DD7 0x2883 (JHEK[131]=ekbc.vdx); VIDEOREF@0x2E24 0x2887 (JHEK[135]=ekcd.vdx); VIDEOREF@0x2E2D 0x2882 (JHEK[130]=ekabb.vdx); VIDEOREF@0x2E33 0x2888 (JHEK[136]=ekcdb.vdx); VIDEOREF@0x2E50 0x0807 (CH[7]=chab.vdx); VIDEOREF@0x2EB2 0x080A (CH[10]=chcd.vdx); VIDEOREF@0x2EB8 0x0808 (CH[8]=chabb.vdx); VIDEOREF@0x2ECC 0x0811 (CH[17]=chpub.vdx); VIDEOREF@0x2ED2 0x0809 (CH[9]=chal.vdx); VIDEOREF@0x2F34 0x080F (CH[15]=chorb.vdx); VIDEOREF@0x2F4A 0x4406 (N[6]=nab.vdx); VIDEOREF@0x3004 0x4408 (N[8]=ncd.vdx); VIDEOREF@0x300A 0x4407 (N[7]=nabb.vdx); VIDEOREF@0x301B 0x440A (N[10]=ncri.vdx); VIDEOREF@0x303C 0x440B (N[11]=ncrib.vdx); VIDEOREF@0x3074 0x4410 (N[16]=njacb.vdx); VIDEOREF@0x3084 0x4412 (N[18]=npuzb.vdx); VIDEOREF@0x3096 0x3010 (LA[16]=la_1fa.vdx); VIDEOREF@0x3165 0x300C (LA[12]=la_1ba.vdx); VIDEOREF@0x318F 0x3013 (LA[19]=la_1fd.vdx); VIDEOREF@0x3254 0x3803 (MB[3]=mbab.vdx); VIDEOREF@0x325C 0x383D (MB[61]=mb_warp.vdx); VIDEOREF@0x32BE 0x383F (MB[63]=sexbed.vdx); VIDEOREF@0x32F4 0x3809 (MB[9]=mbpub.vdx); VIDEOREF@0x330E 0x3804 (MB[4]=mbabb.vdx); VIDEOREF@0x3314 0x3805 (MB[5]=mbcd.vdx); VIDEOREF@0x3345 0x0C09 (D[9]=d_1fa.vdx); VIDEOREF@0x33D0 0x0C03 (D[3]=d1_3b.vdx); VIDEOREF@0x33F3 0x0C07 (D[7]=d_1ba.vdx); VIDEOREF@0x33F9 0x0C0A (D[10]=d_1fc.vdx); VIDEOREF@0x3944 0x2875 (JHEK[117]=jhmib.vdx); VIDEOREF@0x39BA 0x383D (MB[61]=mb_warp.vdx); VIDEOREF@0x3ABA 0x1426 (FH[38]=f_1fb.vdx); VIDEOREF@0x3AEC 0x2C05 (K[5]=k2_7b.vdx); VIDEOREF@0x3B22 0x2C0E (K[14]=k_1tb.vdx); VIDEOREF@0x3B88 0x1405 (FH[5]=f1_pb.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0584` | `HOTSPOT_LEFT` | target=0x06A7 |
| `0x0587` | `HOTSPOT_RIGHT` | target=0x06AD |
| `0x0599` | `HOTSPOT_RECT` | left=0x00AC, top=0x003A, right=0x018F, bottom=0x0113, target=0x05FF, cursor=0x06 |
| `0x05AB` | `HOTSPOT_RECT` | left=0x00AC, top=0x003A, right=0x018F, bottom=0x0113, target=0x05FF, cursor=0x06 |
| `0x05C2` | `HOTSPOT_BOTTOM_4` | target=0x3912 |
| `0x05CB` | `HOTSPOT_BOTTOM_4` | target=0x3912 |
| `0x05D3` | `HOTSPOT_RECT` | left=0x00C8, top=0x0050, right=0x01B8, bottom=0x018F, target=0x05E0, cursor=0x04 |

### Loop `0x0657`–`0x0676`

Nearest preceding video in file order: VIDEOREF@0x0651 0x1405 (FH[5]=f1_pb.vdx)

Scene candidates: VIDEOREF@0x0695 0x1427 (FH[39]=f_1fc.vdx); VIDEOREF@0x06A7 0x1424 (FH[36]=f_1bd.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0658` | `HOTSPOT_RECT` | left=0x0000, top=0x00C9, right=0x0050, bottom=0x0147, target=0x0677, cursor=0x00 |
| `0x0664` | `HOTSPOT_RECT` | left=0x00AC, top=0x00CC, right=0x00E8, bottom=0x014F, target=0x0683, cursor=0x00 |
| `0x0670` | `HOTSPOT_LEFT` | target=0x06B3 |
| `0x0673` | `HOTSPOT_RIGHT` | target=0x06B9 |

### Loop `0x06BF`–`0x06D2`

Nearest preceding video in file order: VIDEOREF@0x06B9 0x1428 (FH[40]=f_1fd.vdx)

Scene candidates: VIDEOREF@0x071C 0x142E (FH[46]=f_2fb.vdx); VIDEOREF@0x072E 0x142B (FH[43]=f_2bc.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x06C0` | `HOTSPOT_RECT` | left=0x011C, top=0x006D, right=0x0188, bottom=0x0135, target=0x06D3, cursor=0x00 |
| `0x06CC` | `HOTSPOT_LEFT` | target=0x070A |
| `0x06CF` | `HOTSPOT_RIGHT` | target=0x0710 |

### Loop `0x06D9`–`0x06E3`

Nearest preceding video in file order: VIDEOREF@0x06D3 0x140B (FH[11]=f2_3.vdx)

Scene candidates: VIDEOREF@0x0551 0x1401 (FH[1]=f1_2.vdx); VIDEOREF@0x057D 0x1401 (FH[1]=f1_2.vdx); VIDEOREF@0x070A 0x142A (FH[42]=f_2bb.vdx); VIDEOREF@0x0728 0x142D (FH[45]=f_2fa.vdx); VIDEOREF@0x076A 0x142D (FH[45]=f_2fa.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x06DA` | `HOTSPOT_LEFT` | target=0x0716 |
| `0x06DD` | `HOTSPOT_RIGHT` | target=0x071C |
| `0x06E0` | `HOTSPOT_CENTER` | target=0x08F6 |

### Loop `0x06E4`–`0x06EB`

Nearest preceding video in file order: VIDEOREF@0x06D3 0x140B (FH[11]=f2_3.vdx)

Scene candidates: VIDEOREF@0x0716 0x1429 (FH[41]=f_2ba.vdx); VIDEOREF@0x0734 0x1430 (FH[48]=f_2fd.vdx); VIDEOREF@0x077F 0x140E (FH[14]=f3_2.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x06E5` | `HOTSPOT_LEFT` | target=0x0722 |
| `0x06E8` | `HOTSPOT_RIGHT` | target=0x0728 |

### Loop `0x06F0`–`0x0703`

Nearest preceding video in file order: VIDEOREF@0x06D3 0x140B (FH[11]=f2_3.vdx)

Scene candidates: VIDEOREF@0x0710 0x142F (FH[47]=f_2fc.vdx); VIDEOREF@0x0722 0x142C (FH[44]=f_2bd.vdx); VIDEOREF@0x094A 0x142B (FH[43]=f_2bc.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x06F1` | `HOTSPOT_RECT` | left=0x01BB, top=0x00B3, right=0x021B, bottom=0x0113, target=0x0704, cursor=0x00 |
| `0x06FD` | `HOTSPOT_LEFT` | target=0x072E |
| `0x0700` | `HOTSPOT_RIGHT` | target=0x0734 |

### Loop `0x073A`–`0x0749`

Nearest preceding video in file order: VIDEOREF@0x0734 0x1430 (FH[48]=f_2fd.vdx)

Scene candidates: VIDEOREF@0x06D3 0x140B (FH[11]=f2_3.vdx); VIDEOREF@0x07BE 0x1436 (FH[54]=f_3fb.vdx); VIDEOREF@0x07D0 0x1433 (FH[51]=f_3bc.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x073B` | `HOTSPOT_LEFT` | target=0x07AC |
| `0x0743` | `HOTSPOT_CENTER` | target=0x074A |
| `0x0746` | `HOTSPOT_RIGHT` | target=0x07B2 |

### Loop `0x0750`–`0x0763`

Nearest preceding video in file order: VIDEOREF@0x074A 0x1412 (FH[18]=f3_d.vdx)

Scene candidates: VIDEOREF@0x07AC 0x1432 (FH[50]=f_3bb.vdx); VIDEOREF@0x07CA 0x1435 (FH[53]=f_3fa.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0751` | `HOTSPOT_RECT` | left=0x0042, top=0x0052, right=0x00E6, bottom=0x016E, target=0x0764, cursor=0x00 |
| `0x075D` | `HOTSPOT_LEFT` | target=0x07B8 |
| `0x0760` | `HOTSPOT_RIGHT` | target=0x07BE |

### Loop `0x0774`–`0x077E`

Nearest preceding video in file order: VIDEOREF@0x076A 0x142D (FH[45]=f_2fa.vdx)

Scene candidates: VIDEOREF@0x07B8 0x1431 (FH[49]=f_3ba.vdx); VIDEOREF@0x07D6 0x1438 (FH[56]=f_3fd.vdx); VIDEOREF@0x0AB9 0x1435 (FH[53]=f_3fa.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0775` | `HOTSPOT_LEFT` | target=0x07C4 |
| `0x0778` | `HOTSPOT_RIGHT` | target=0x07CA |
| `0x077B` | `HOTSPOT_CENTER_2` | target=0x077F |

### Loop `0x0785`–`0x0798`

Nearest preceding video in file order: VIDEOREF@0x077F 0x140E (FH[14]=f3_2.vdx)

Scene candidates: VIDEOREF@0x07A3 0x1410 (FH[16]=f3_cmb.vdx); VIDEOREF@0x07B2 0x1437 (FH[55]=f_3fc.vdx); VIDEOREF@0x07C4 0x1434 (FH[52]=f_3bd.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0786` | `HOTSPOT_LEFT` | target=0x07D0 |
| `0x0789` | `HOTSPOT_RIGHT` | target=0x07D6 |
| `0x078C` | `HOTSPOT_RECT` | left=0x00EE, top=0x0055, right=0x0139, bottom=0x017C, target=0x0799, cursor=0x07 |

### Loop `0x07DC`–`0x07F5`

Nearest preceding video in file order: VIDEOREF@0x07D6 0x1438 (FH[56]=f_3fd.vdx)

Scene candidates: VIDEOREF@0x055A 0x1416 (FH[22]=f5_4.vdx); VIDEOREF@0x067D 0x1416 (FH[22]=f5_4.vdx); VIDEOREF@0x084E 0x143E (FH[62]=f_4fb.vdx); VIDEOREF@0x0860 0x143B (FH[59]=f_4bc.vdx); VIDEOREF@0x0880 0x1416 (FH[22]=f5_4.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x07DD` | `HOTSPOT_LEFT` | target=0x083C |
| `0x07EF` | `HOTSPOT_CENTER` | target=0x0BDE |
| `0x07F2` | `HOTSPOT_RIGHT` | target=0x0842 |

### Loop `0x07FC`–`0x0803`

Nearest preceding video in file order: VIDEOREF@0x07F6 0x1413 (FH[19]=f4_5.vdx)

Scene candidates: VIDEOREF@0x083C 0x143A (FH[58]=f_4bb.vdx); VIDEOREF@0x085A 0x143D (FH[61]=f_4fa.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x07FD` | `HOTSPOT_LEFT` | target=0x0848 |
| `0x0800` | `HOTSPOT_RIGHT` | target=0x084E |

### Loop `0x0808`–`0x081B`

Nearest preceding video in file order: VIDEOREF@0x07F6 0x1413 (FH[19]=f4_5.vdx)

Scene candidates: VIDEOREF@0x0848 0x1439 (FH[57]=f_4ba.vdx); VIDEOREF@0x0866 0x1440 (FH[64]=f_4fd.vdx); VIDEOREF@0x0D20 0x143D (FH[61]=f_4fa.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0809` | `HOTSPOT_RECT` | left=0x0114, top=0x00B2, right=0x015C, bottom=0x0110, target=0x07F6, cursor=0x00 |
| `0x0815` | `HOTSPOT_LEFT` | target=0x0854 |
| `0x0818` | `HOTSPOT_RIGHT` | target=0x085A |

### Loop `0x081C`–`0x082F`

Nearest preceding video in file order: VIDEOREF@0x07F6 0x1413 (FH[19]=f4_5.vdx)

Scene candidates: VIDEOREF@0x0842 0x143F (FH[63]=f_4fc.vdx); VIDEOREF@0x0854 0x143C (FH[60]=f_4bd.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x081D` | `HOTSPOT_RECT` | left=0x01FC, top=0x0050, right=0x024A, bottom=0x0155, target=0x0830, cursor=0x00 |
| `0x0829` | `HOTSPOT_LEFT` | target=0x0860 |
| `0x082C` | `HOTSPOT_RIGHT` | target=0x0866 |

### Loop `0x086C`–`0x087F`

Nearest preceding video in file order: VIDEOREF@0x0866 0x1440 (FH[64]=f_4fd.vdx)

Scene candidates: VIDEOREF@0x08D8 0x1446 (FH[70]=f_5fb.vdx); VIDEOREF@0x08EA 0x1443 (FH[67]=f_5bc.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x086D` | `HOTSPOT_RECT` | left=0x007C, top=0x0051, right=0x0151, bottom=0x0157, target=0x0880, cursor=0x00 |
| `0x0879` | `HOTSPOT_LEFT` | target=0x08C6 |
| `0x087C` | `HOTSPOT_RIGHT` | target=0x08CC |

### Loop `0x088A`–`0x0891`

Nearest preceding video in file order: VIDEOREF@0x0880 0x1416 (FH[22]=f5_4.vdx)

Scene candidates: VIDEOREF@0x08C6 0x1442 (FH[66]=f_5bb.vdx); VIDEOREF@0x08E4 0x1445 (FH[69]=f_5fa.vdx); VIDEOREF@0x2A40 0x1446 (FH[70]=f_5fb.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x088B` | `HOTSPOT_LEFT` | target=0x08D2 |
| `0x088E` | `HOTSPOT_RIGHT` | target=0x08D8 |

### Loop `0x0892`–`0x08A5`

Nearest preceding video in file order: VIDEOREF@0x0880 0x1416 (FH[22]=f5_4.vdx)

Scene candidates: VIDEOREF@0x07F6 0x1413 (FH[19]=f4_5.vdx); VIDEOREF@0x08D2 0x1441 (FH[65]=f_5ba.vdx); VIDEOREF@0x08F0 0x1448 (FH[72]=f_5fd.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0893` | `HOTSPOT_RECT` | left=0x0105, top=0x009D, right=0x015D, bottom=0x0117, target=0x08A6, cursor=0x00 |
| `0x089F` | `HOTSPOT_LEFT` | target=0x08DE |
| `0x08A2` | `HOTSPOT_RIGHT` | target=0x08E4 |

### Loop `0x08AC`–`0x08BF`

Nearest preceding video in file order: VIDEOREF@0x08A6 0x1415 (FH[21]=f5_1.vdx)

Scene candidates: VIDEOREF@0x0689 0x1447 (FH[71]=f_5fc.vdx); VIDEOREF@0x0836 0x1444 (FH[68]=f_5bd.vdx); VIDEOREF@0x08CC 0x1447 (FH[71]=f_5fc.vdx); VIDEOREF@0x08DE 0x1444 (FH[68]=f_5bd.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x08AD` | `HOTSPOT_RECT` | left=0x00D4, top=0x0059, right=0x01F0, bottom=0x018D, target=0x08C0, cursor=0x00 |
| `0x08B9` | `HOTSPOT_LEFT` | target=0x08EA |
| `0x08BC` | `HOTSPOT_RIGHT` | target=0x08F0 |

### Loop `0x090E`–`0x0918`

Nearest preceding video in file order: VIDEOREF@0x08FF 0x1064 (DR[100]=dr_tba.vdx)

Scene candidates: VIDEOREF@0x08FF 0x1064 (DR[100]=dr_tba.vdx); VIDEOREF@0x0939 0x1065 (DR[101]=dr_tbc.vdx); VIDEOREF@0x093F 0x1066 (DR[102]=dr_tfa.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x090F` | `HOTSPOT_LEFT` | target=0x0919 |
| `0x0912` | `HOTSPOT_RIGHT` | target=0x091F |
| `0x0915` | `HOTSPOT_CENTER_2` | target=0x0957 |

### Loop `0x0925`–`0x0938`

Nearest preceding video in file order: VIDEOREF@0x091F 0x1067 (DR[103]=dr_tfc.vdx)

Scene candidates: VIDEOREF@0x0919 0x1064 (DR[100]=dr_tba.vdx); VIDEOREF@0x091F 0x1067 (DR[103]=dr_tfc.vdx); VIDEOREF@0x0A10 0x1060 (DR[96]=dr_mo.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0926` | `HOTSPOT_RIGHT` | target=0x093F |
| `0x0929` | `HOTSPOT_LEFT` | target=0x0939 |
| `0x092C` | `HOTSPOT_RECT` | left=0x0024, top=0x0073, right=0x025C, bottom=0x0180, target=0x0945, cursor=0x00 |

### Loop `0x0980`–`0x09DB`

Nearest preceding video in file order: VIDEOREF@0x0957 0x105F (DR[95]=dr_mi.vdx)

Scene candidates: VIDEOREF@0x03E2 0x1403 (FH[3]=f1_6.vdx); VIDEOREF@0x04F9 0x5001 (GAMWAV[1]=1_e_2.vdx); VIDEOREF@0x0651 0x1405 (FH[5]=f1_pb.vdx); VIDEOREF@0x069B 0x1421 (FH[33]=f_1ba.vdx); VIDEOREF@0x06A1 0x1426 (FH[38]=f_1fb.vdx); VIDEOREF@0x06B3 0x1423 (FH[35]=f_1bc.vdx); VIDEOREF@0x06B9 0x1428 (FH[40]=f_1fd.vdx); VIDEOREF@0x0704 0x140A (FH[10]=f2_1.vdx); VIDEOREF@0x08A6 0x1415 (FH[21]=f5_1.vdx); VIDEOREF@0x0957 0x105F (DR[95]=dr_mi.vdx); VIDEOREF@0x09DF 0x1000 (DR[0]=come.vdx); VIDEOREF@0x09FB 0x106A (DR[106]=dr_vb.vdx); VIDEOREF@0x0A04 0x1063 (DR[99]=dr_r.vdx); VIDEOREF@0x0A1C 0x2C0C (K[12]=k_1ba.vdx); VIDEOREF@0x0A39 0x2C0E (K[14]=k_1tb.vdx); VIDEOREF@0x0AA6 0x2C0D (K[13]=k_1fa.vdx); VIDEOREF@0x0B7C 0x2C14 (K[20]=k_2fa.vdx); VIDEOREF@0x0B82 0x2C11 (K[17]=k_2bb.vdx); VIDEOREF@0x0BA8 0x2C05 (K[5]=k2_7b.vdx); VIDEOREF@0x0BE7 0x4001 (MU[1]=muab.vdx); VIDEOREF@0x0CA0 0x4002 (MU[2]=muabb.vdx); VIDEOREF@0x0CA6 0x4003 (MU[3]=mucd.vdx); VIDEOREF@0x0CB6 0x400A (MU[10]=mupib.vdx); VIDEOREF@0x0D3F 0x4007 (MU[7]=mugrb.vdx); VIDEOREF@0x0D52 0x2072 (HTBD[114]=bdab.vdx); VIDEOREF@0x0D59 0x207A (HTBD[122]=bdplb.vdx); VIDEOREF@0x0E25 0x206F (HTBD[111]=bd2p.vdx); VIDEOREF@0x0E45 0x2074 (HTBD[116]=bdcd.vdx); VIDEOREF@0x0E4B 0x2073 (HTBD[115]=bdabb.vdx); VIDEOREF@0x0F56 0x1418 (FH[24]=f6_1.vdx); VIDEOREF@0x0F89 0x1472 (FH[114]=h_1bb.vdx); VIDEOREF@0x0F9C 0x1477 (FH[119]=h_1fc.vdx); VIDEOREF@0x0FBB 0x1474 (FH[116]=h_1bd.vdx); VIDEOREF@0x0FC1 0x1475 (FH[117]=h_1fa.vdx); VIDEOREF@0x1027 0x145C (FH[92]=h2_1.vdx); VIDEOREF@0x1086 0x146B (FH[107]=h8_1.vdx); VIDEOREF@0x12CB 0x2007 (HTBD[7]=htab.vdx); VIDEOREF@0x1322 0x2004 (HTBD[4]=ht2p.vdx); VIDEOREF@0x132B 0x2008 (HTBD[8]=ht_mess.vdx); VIDEOREF@0x1337 0x2009 (HTBD[9]=htcd.vdx); VIDEOREF@0x1395 0x1808 (GA[8]=gaab.vdx); VIDEOREF@0x1456 0x1801 (GA[1]=ga1pb.vdx); VIDEOREF@0x145C 0x1801 (GA[1]=ga1pb.vdx); VIDEOREF@0x148B 0x1809 (GA[9]=gaabb.vdx); VIDEOREF@0x1491 0x180B (GA[11]=gacd.vdx); VIDEOREF@0x149D 0x2869 (JHEK[105]=jhab.vdx); VIDEOREF@0x1556 0x2877 (JHEK[119]=jhpub.vdx); VIDEOREF@0x1583 0x2875 (JHEK[117]=jhmib.vdx); VIDEOREF@0x159F 0x2875 (JHEK[117]=jhmib.vdx); VIDEOREF@0x15C5 0x286A (JHEK[106]=jhabb.vdx); VIDEOREF@0x15CB 0x286D (JHEK[109]=jhcd.vdx); VIDEOREF@0x15F4 0x4803 (P[3]=pfa.vdx); VIDEOREF@0x1635 0x480A (P[10]=pfdb.vdx); VIDEOREF@0x1661 0x4809 (P[9]=pfd.vdx); VIDEOREF@0x1672 0x480C (P[12]=pmu.vdx); VIDEOREF@0x1682 0x4807 (P[7]=pfc.vdx); VIDEOREF@0x16B3 0x4804 (P[4]=pfab.vdx); VIDEOREF@0x2185 0x3400 (LI[0]=l1_2.vdx); VIDEOREF@0x2935 0x3402 (LI[2]=l1_cb.vdx); VIDEOREF@0x29F5 0x1422 (FH[34]=f_1bb.vdx); VIDEOREF@0x2A19 0x3402 (LI[2]=l1_cb.vdx); VIDEOREF@0x2A5F 0x3428 (LI[40]=l_1ba.vdx); VIDEOREF@0x2A65 0x342B (LI[43]=l_1fc.vdx); VIDEOREF@0x2AE8 0x3406 (LI[6]=l2_3b.vdx); VIDEOREF@0x2AFB 0x342F (LI[47]=l_2bd.vdx); VIDEOREF@0x2B4D 0x3432 (LI[50]=l_2fc.vdx); VIDEOREF@0x2B5F 0x342F (LI[47]=l_2bd.vdx); VIDEOREF@0x2D0C 0x2881 (JHEK[129]=ekab.vdx); VIDEOREF@0x2D99 0x287B (JHEK[123]=ek1pb.vdx); VIDEOREF@0x2D9F 0x287B (JHEK[123]=ek1pb.vdx); VIDEOREF@0x2DCE 0x288C (JHEK[140]=ekmbb.vdx); VIDEOREF@0x2DD7 0x2883 (JHEK[131]=ekbc.vdx); VIDEOREF@0x2E24 0x2887 (JHEK[135]=ekcd.vdx); VIDEOREF@0x2E2D 0x2882 (JHEK[130]=ekabb.vdx); VIDEOREF@0x2E33 0x2888 (JHEK[136]=ekcdb.vdx); VIDEOREF@0x2E50 0x0807 (CH[7]=chab.vdx); VIDEOREF@0x2EB2 0x080A (CH[10]=chcd.vdx); VIDEOREF@0x2EB8 0x0808 (CH[8]=chabb.vdx); VIDEOREF@0x2ECC 0x0811 (CH[17]=chpub.vdx); VIDEOREF@0x2ED2 0x0809 (CH[9]=chal.vdx); VIDEOREF@0x2F34 0x080F (CH[15]=chorb.vdx); VIDEOREF@0x2F4A 0x4406 (N[6]=nab.vdx); VIDEOREF@0x3004 0x4408 (N[8]=ncd.vdx); VIDEOREF@0x300A 0x4407 (N[7]=nabb.vdx); VIDEOREF@0x301B 0x440A (N[10]=ncri.vdx); VIDEOREF@0x303C 0x440B (N[11]=ncrib.vdx); VIDEOREF@0x3074 0x4410 (N[16]=njacb.vdx); VIDEOREF@0x3084 0x4412 (N[18]=npuzb.vdx); VIDEOREF@0x3096 0x3010 (LA[16]=la_1fa.vdx); VIDEOREF@0x3165 0x300C (LA[12]=la_1ba.vdx); VIDEOREF@0x318F 0x3013 (LA[19]=la_1fd.vdx); VIDEOREF@0x3254 0x3803 (MB[3]=mbab.vdx); VIDEOREF@0x325C 0x383D (MB[61]=mb_warp.vdx); VIDEOREF@0x32BE 0x383F (MB[63]=sexbed.vdx); VIDEOREF@0x32F4 0x3809 (MB[9]=mbpub.vdx); VIDEOREF@0x330E 0x3804 (MB[4]=mbabb.vdx); VIDEOREF@0x3314 0x3805 (MB[5]=mbcd.vdx); VIDEOREF@0x3345 0x0C09 (D[9]=d_1fa.vdx); VIDEOREF@0x33D0 0x0C03 (D[3]=d1_3b.vdx); VIDEOREF@0x33F3 0x0C07 (D[7]=d_1ba.vdx); VIDEOREF@0x33F9 0x0C0A (D[10]=d_1fc.vdx); VIDEOREF@0x3944 0x2875 (JHEK[117]=jhmib.vdx); VIDEOREF@0x39BA 0x383D (MB[61]=mb_warp.vdx); VIDEOREF@0x3ABA 0x1426 (FH[38]=f_1fb.vdx); VIDEOREF@0x3AEC 0x2C05 (K[5]=k2_7b.vdx); VIDEOREF@0x3B22 0x2C0E (K[14]=k_1tb.vdx); VIDEOREF@0x3B88 0x1405 (FH[5]=f1_pb.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0987` | `HOTSPOT_BOTTOM_4` | target=0x3912 |
| `0x098F` | `HOTSPOT_RECT` | left=0x0102, top=0x00F8, right=0x0173, bottom=0x013A, target=0x09E8, cursor=0x06 |
| `0x09A1` | `HOTSPOT_RECT` | left=0x0102, top=0x00F8, right=0x0173, bottom=0x013A, target=0x09E8, cursor=0x06 |
| `0x09AD` | `HOTSPOT_RIGHT` | target=0x0A0D |
| `0x09B0` | `HOTSPOT_RECT` | left=0x006C, top=0x010B, right=0x0248, bottom=0x0131, target=0x0A01, cursor=0x07 |
| `0x09C1` | `HOTSPOT_RECT` | left=0x0037, top=0x0095, right=0x004F, bottom=0x013F, target=0x09DC, cursor=0x04 |
| `0x09D8` | `HOTSPOT_BOTTOM_4` | target=0x3912 |

### Loop `0x0A3C`–`0x0A85`

Nearest preceding video in file order: VIDEOREF@0x0A39 0x2C0E (K[14]=k_1tb.vdx)

Scene candidates: VIDEOREF@0x03E2 0x1403 (FH[3]=f1_6.vdx); VIDEOREF@0x04F9 0x5001 (GAMWAV[1]=1_e_2.vdx); VIDEOREF@0x0651 0x1405 (FH[5]=f1_pb.vdx); VIDEOREF@0x069B 0x1421 (FH[33]=f_1ba.vdx); VIDEOREF@0x06A1 0x1426 (FH[38]=f_1fb.vdx); VIDEOREF@0x06B3 0x1423 (FH[35]=f_1bc.vdx); VIDEOREF@0x06B9 0x1428 (FH[40]=f_1fd.vdx); VIDEOREF@0x0704 0x140A (FH[10]=f2_1.vdx); VIDEOREF@0x08A6 0x1415 (FH[21]=f5_1.vdx); VIDEOREF@0x0957 0x105F (DR[95]=dr_mi.vdx); VIDEOREF@0x09DF 0x1000 (DR[0]=come.vdx); VIDEOREF@0x09FB 0x106A (DR[106]=dr_vb.vdx); VIDEOREF@0x0A04 0x1063 (DR[99]=dr_r.vdx); VIDEOREF@0x0A1C 0x2C0C (K[12]=k_1ba.vdx); VIDEOREF@0x0A39 0x2C0E (K[14]=k_1tb.vdx); VIDEOREF@0x0AA6 0x2C0D (K[13]=k_1fa.vdx); VIDEOREF@0x0B7C 0x2C14 (K[20]=k_2fa.vdx); VIDEOREF@0x0B82 0x2C11 (K[17]=k_2bb.vdx); VIDEOREF@0x0BA8 0x2C05 (K[5]=k2_7b.vdx); VIDEOREF@0x0BE7 0x4001 (MU[1]=muab.vdx); VIDEOREF@0x0CA0 0x4002 (MU[2]=muabb.vdx); VIDEOREF@0x0CA6 0x4003 (MU[3]=mucd.vdx); VIDEOREF@0x0CB6 0x400A (MU[10]=mupib.vdx); VIDEOREF@0x0D3F 0x4007 (MU[7]=mugrb.vdx); VIDEOREF@0x0D52 0x2072 (HTBD[114]=bdab.vdx); VIDEOREF@0x0D59 0x207A (HTBD[122]=bdplb.vdx); VIDEOREF@0x0E25 0x206F (HTBD[111]=bd2p.vdx); VIDEOREF@0x0E45 0x2074 (HTBD[116]=bdcd.vdx); VIDEOREF@0x0E4B 0x2073 (HTBD[115]=bdabb.vdx); VIDEOREF@0x0F56 0x1418 (FH[24]=f6_1.vdx); VIDEOREF@0x0F89 0x1472 (FH[114]=h_1bb.vdx); VIDEOREF@0x0F9C 0x1477 (FH[119]=h_1fc.vdx); VIDEOREF@0x0FBB 0x1474 (FH[116]=h_1bd.vdx); VIDEOREF@0x0FC1 0x1475 (FH[117]=h_1fa.vdx); VIDEOREF@0x1027 0x145C (FH[92]=h2_1.vdx); VIDEOREF@0x1086 0x146B (FH[107]=h8_1.vdx); VIDEOREF@0x12CB 0x2007 (HTBD[7]=htab.vdx); VIDEOREF@0x1322 0x2004 (HTBD[4]=ht2p.vdx); VIDEOREF@0x132B 0x2008 (HTBD[8]=ht_mess.vdx); VIDEOREF@0x1337 0x2009 (HTBD[9]=htcd.vdx); VIDEOREF@0x1395 0x1808 (GA[8]=gaab.vdx); VIDEOREF@0x1456 0x1801 (GA[1]=ga1pb.vdx); VIDEOREF@0x145C 0x1801 (GA[1]=ga1pb.vdx); VIDEOREF@0x148B 0x1809 (GA[9]=gaabb.vdx); VIDEOREF@0x1491 0x180B (GA[11]=gacd.vdx); VIDEOREF@0x149D 0x2869 (JHEK[105]=jhab.vdx); VIDEOREF@0x1556 0x2877 (JHEK[119]=jhpub.vdx); VIDEOREF@0x1583 0x2875 (JHEK[117]=jhmib.vdx); VIDEOREF@0x159F 0x2875 (JHEK[117]=jhmib.vdx); VIDEOREF@0x15C5 0x286A (JHEK[106]=jhabb.vdx); VIDEOREF@0x15CB 0x286D (JHEK[109]=jhcd.vdx); VIDEOREF@0x15F4 0x4803 (P[3]=pfa.vdx); VIDEOREF@0x1635 0x480A (P[10]=pfdb.vdx); VIDEOREF@0x1661 0x4809 (P[9]=pfd.vdx); VIDEOREF@0x1672 0x480C (P[12]=pmu.vdx); VIDEOREF@0x1682 0x4807 (P[7]=pfc.vdx); VIDEOREF@0x16B3 0x4804 (P[4]=pfab.vdx); VIDEOREF@0x2185 0x3400 (LI[0]=l1_2.vdx); VIDEOREF@0x2935 0x3402 (LI[2]=l1_cb.vdx); VIDEOREF@0x29F5 0x1422 (FH[34]=f_1bb.vdx); VIDEOREF@0x2A19 0x3402 (LI[2]=l1_cb.vdx); VIDEOREF@0x2A5F 0x3428 (LI[40]=l_1ba.vdx); VIDEOREF@0x2A65 0x342B (LI[43]=l_1fc.vdx); VIDEOREF@0x2AE8 0x3406 (LI[6]=l2_3b.vdx); VIDEOREF@0x2AFB 0x342F (LI[47]=l_2bd.vdx); VIDEOREF@0x2B4D 0x3432 (LI[50]=l_2fc.vdx); VIDEOREF@0x2B5F 0x342F (LI[47]=l_2bd.vdx); VIDEOREF@0x2D0C 0x2881 (JHEK[129]=ekab.vdx); VIDEOREF@0x2D99 0x287B (JHEK[123]=ek1pb.vdx); VIDEOREF@0x2D9F 0x287B (JHEK[123]=ek1pb.vdx); VIDEOREF@0x2DCE 0x288C (JHEK[140]=ekmbb.vdx); VIDEOREF@0x2DD7 0x2883 (JHEK[131]=ekbc.vdx); VIDEOREF@0x2E24 0x2887 (JHEK[135]=ekcd.vdx); VIDEOREF@0x2E2D 0x2882 (JHEK[130]=ekabb.vdx); VIDEOREF@0x2E33 0x2888 (JHEK[136]=ekcdb.vdx); VIDEOREF@0x2E50 0x0807 (CH[7]=chab.vdx); VIDEOREF@0x2EB2 0x080A (CH[10]=chcd.vdx); VIDEOREF@0x2EB8 0x0808 (CH[8]=chabb.vdx); VIDEOREF@0x2ECC 0x0811 (CH[17]=chpub.vdx); VIDEOREF@0x2ED2 0x0809 (CH[9]=chal.vdx); VIDEOREF@0x2F34 0x080F (CH[15]=chorb.vdx); VIDEOREF@0x2F4A 0x4406 (N[6]=nab.vdx); VIDEOREF@0x3004 0x4408 (N[8]=ncd.vdx); VIDEOREF@0x300A 0x4407 (N[7]=nabb.vdx); VIDEOREF@0x301B 0x440A (N[10]=ncri.vdx); VIDEOREF@0x303C 0x440B (N[11]=ncrib.vdx); VIDEOREF@0x3074 0x4410 (N[16]=njacb.vdx); VIDEOREF@0x3084 0x4412 (N[18]=npuzb.vdx); VIDEOREF@0x3096 0x3010 (LA[16]=la_1fa.vdx); VIDEOREF@0x3165 0x300C (LA[12]=la_1ba.vdx); VIDEOREF@0x318F 0x3013 (LA[19]=la_1fd.vdx); VIDEOREF@0x3254 0x3803 (MB[3]=mbab.vdx); VIDEOREF@0x325C 0x383D (MB[61]=mb_warp.vdx); VIDEOREF@0x32BE 0x383F (MB[63]=sexbed.vdx); VIDEOREF@0x32F4 0x3809 (MB[9]=mbpub.vdx); VIDEOREF@0x330E 0x3804 (MB[4]=mbabb.vdx); VIDEOREF@0x3314 0x3805 (MB[5]=mbcd.vdx); VIDEOREF@0x3345 0x0C09 (D[9]=d_1fa.vdx); VIDEOREF@0x33D0 0x0C03 (D[3]=d1_3b.vdx); VIDEOREF@0x33F3 0x0C07 (D[7]=d_1ba.vdx); VIDEOREF@0x33F9 0x0C0A (D[10]=d_1fc.vdx); VIDEOREF@0x3944 0x2875 (JHEK[117]=jhmib.vdx); VIDEOREF@0x39BA 0x383D (MB[61]=mb_warp.vdx); VIDEOREF@0x3ABA 0x1426 (FH[38]=f_1fb.vdx); VIDEOREF@0x3AEC 0x2C05 (K[5]=k2_7b.vdx); VIDEOREF@0x3B22 0x2C0E (K[14]=k_1tb.vdx); VIDEOREF@0x3B88 0x1405 (FH[5]=f1_pb.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0A43` | `HOTSPOT_BOTTOM_4` | target=0x3912 |
| `0x0A46` | `HOTSPOT_LEFT` | target=0x0AA0 |
| `0x0A4E` | `HOTSPOT_RECT` | left=0x00E7, top=0x00AA, right=0x018C, bottom=0x0149, target=0x0A86, cursor=0x04 |
| `0x0A5F` | `HOTSPOT_CENTER_2` | target=0x0AD1 |
| `0x0A67` | `HOTSPOT_RECT` | left=0x01BE, top=0x00E5, right=0x0229, bottom=0x0124, target=0x0A93, cursor=0x04 |
| `0x0A79` | `HOTSPOT_BOTTOM_4` | target=0x3912 |
| `0x0A82` | `HOTSPOT_BOTTOM_4` | target=0x3912 |

### Loop `0x0AAC`–`0x0AB3`

Nearest preceding video in file order: VIDEOREF@0x0AA6 0x2C0D (K[13]=k_1fa.vdx)

Scene candidates: VIDEOREF@0x0AA0 0x2C0C (K[12]=k_1ba.vdx); VIDEOREF@0x0BD8 0x2C02 (K[2]=k2_1.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0AAD` | `HOTSPOT_RIGHT` | target=0x0AA6 |
| `0x0AB0` | `HOTSPOT_CENTER` | target=0x0AB4 |

### Loop `0x0AE7`–`0x0B16`

Nearest preceding video in file order: VIDEOREF@0x0AE4 0x2C13 (K[19]=k_2bd.vdx)

Scene candidates: VIDEOREF@0x0AD1 0x2C00 (K[0]=k1_2.vdx); VIDEOREF@0x0AD8 0x2C18 (K[24]=k_st.vdx); VIDEOREF@0x0ADE 0x2C16 (K[22]=k_2fc.vdx); VIDEOREF@0x0AE4 0x2C13 (K[19]=k_2bd.vdx); VIDEOREF@0x0B4C 0x2C17 (K[23]=k_2fd.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0AE8` | `HOTSPOT_LEFT` | target=0x0B52 |
| `0x0AEB` | `HOTSPOT_RIGHT` | target=0x0B63 |
| `0x0AF8` | `HOTSPOT_RECT` | left=0x0065, top=0x0077, right=0x021F, bottom=0x0169, target=0x0B17, cursor=0x06 |
| `0x0B0A` | `HOTSPOT_RECT` | left=0x0065, top=0x0077, right=0x021F, bottom=0x0169, target=0x0B17, cursor=0x06 |

### Loop `0x0B5B`–`0x0B62`

Nearest preceding video in file order: VIDEOREF@0x0B58 0x2C15 (K[21]=k_2fb.vdx)

Scene candidates: VIDEOREF@0x0B52 0x2C12 (K[18]=k_2bc.vdx); VIDEOREF@0x0B58 0x2C15 (K[21]=k_2fb.vdx); VIDEOREF@0x1725 0x2C11 (K[17]=k_2bb.vdx); VIDEOREF@0x17A1 0x2C11 (K[17]=k_2bb.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0B5C` | `HOTSPOT_LEFT` | target=0x0B82 |
| `0x0B5F` | `HOTSPOT_RIGHT` | target=0x0ADE |

### Loop `0x0B6C`–`0x0B7B`

Nearest preceding video in file order: VIDEOREF@0x0B69 0x2C10 (K[16]=k_2ba.vdx)

Scene candidates: VIDEOREF@0x0B63 0x2C17 (K[23]=k_2fd.vdx); VIDEOREF@0x0B69 0x2C10 (K[16]=k_2ba.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0B6D` | `HOTSPOT_LEFT` | target=0x0AE4 |
| `0x0B75` | `HOTSPOT_CENTER` | target=0x0AC6 |
| `0x0B78` | `HOTSPOT_RIGHT` | target=0x0B7C |

### Loop `0x0BAE`–`0x0BD7`

Nearest preceding video in file order: VIDEOREF@0x0BA8 0x2C05 (K[5]=k2_7b.vdx)

Scene candidates: VIDEOREF@0x0B7C 0x2C14 (K[20]=k_2fa.vdx); VIDEOREF@0x0B82 0x2C11 (K[17]=k_2bb.vdx); VIDEOREF@0x0BA8 0x2C05 (K[5]=k2_7b.vdx); VIDEOREF@0x3AEC 0x2C05 (K[5]=k2_7b.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0BB5` | `HOTSPOT_BOTTOM_4` | target=0x3912 |
| `0x0BB8` | `HOTSPOT_LEFT` | target=0x0B69 |
| `0x0BC5` | `HOTSPOT_RECT` | left=0x0090, top=0x00DA, right=0x00E0, bottom=0x011C, target=0x0B88, cursor=0x04 |
| `0x0BD1` | `HOTSPOT_CENTER_2` | target=0x0BD8 |
| `0x0BD4` | `HOTSPOT_RIGHT` | target=0x0B58 |

### Loop `0x0C07`–`0x0C7F`

Nearest preceding video in file order: VIDEOREF@0x0BE7 0x4001 (MU[1]=muab.vdx)

Scene candidates: VIDEOREF@0x03E2 0x1403 (FH[3]=f1_6.vdx); VIDEOREF@0x04F9 0x5001 (GAMWAV[1]=1_e_2.vdx); VIDEOREF@0x0651 0x1405 (FH[5]=f1_pb.vdx); VIDEOREF@0x069B 0x1421 (FH[33]=f_1ba.vdx); VIDEOREF@0x06A1 0x1426 (FH[38]=f_1fb.vdx); VIDEOREF@0x06B3 0x1423 (FH[35]=f_1bc.vdx); VIDEOREF@0x06B9 0x1428 (FH[40]=f_1fd.vdx); VIDEOREF@0x0704 0x140A (FH[10]=f2_1.vdx); VIDEOREF@0x08A6 0x1415 (FH[21]=f5_1.vdx); VIDEOREF@0x0957 0x105F (DR[95]=dr_mi.vdx); VIDEOREF@0x09DF 0x1000 (DR[0]=come.vdx); VIDEOREF@0x09FB 0x106A (DR[106]=dr_vb.vdx); VIDEOREF@0x0A04 0x1063 (DR[99]=dr_r.vdx); VIDEOREF@0x0A1C 0x2C0C (K[12]=k_1ba.vdx); VIDEOREF@0x0A39 0x2C0E (K[14]=k_1tb.vdx); VIDEOREF@0x0AA6 0x2C0D (K[13]=k_1fa.vdx); VIDEOREF@0x0B7C 0x2C14 (K[20]=k_2fa.vdx); VIDEOREF@0x0B82 0x2C11 (K[17]=k_2bb.vdx); VIDEOREF@0x0BA8 0x2C05 (K[5]=k2_7b.vdx); VIDEOREF@0x0BE7 0x4001 (MU[1]=muab.vdx); VIDEOREF@0x0CA0 0x4002 (MU[2]=muabb.vdx); VIDEOREF@0x0CA6 0x4003 (MU[3]=mucd.vdx); VIDEOREF@0x0CB6 0x400A (MU[10]=mupib.vdx); VIDEOREF@0x0D3F 0x4007 (MU[7]=mugrb.vdx); VIDEOREF@0x0D52 0x2072 (HTBD[114]=bdab.vdx); VIDEOREF@0x0D59 0x207A (HTBD[122]=bdplb.vdx); VIDEOREF@0x0E25 0x206F (HTBD[111]=bd2p.vdx); VIDEOREF@0x0E45 0x2074 (HTBD[116]=bdcd.vdx); VIDEOREF@0x0E4B 0x2073 (HTBD[115]=bdabb.vdx); VIDEOREF@0x0F56 0x1418 (FH[24]=f6_1.vdx); VIDEOREF@0x0F89 0x1472 (FH[114]=h_1bb.vdx); VIDEOREF@0x0F9C 0x1477 (FH[119]=h_1fc.vdx); VIDEOREF@0x0FBB 0x1474 (FH[116]=h_1bd.vdx); VIDEOREF@0x0FC1 0x1475 (FH[117]=h_1fa.vdx); VIDEOREF@0x1027 0x145C (FH[92]=h2_1.vdx); VIDEOREF@0x1086 0x146B (FH[107]=h8_1.vdx); VIDEOREF@0x12CB 0x2007 (HTBD[7]=htab.vdx); VIDEOREF@0x1322 0x2004 (HTBD[4]=ht2p.vdx); VIDEOREF@0x132B 0x2008 (HTBD[8]=ht_mess.vdx); VIDEOREF@0x1337 0x2009 (HTBD[9]=htcd.vdx); VIDEOREF@0x1395 0x1808 (GA[8]=gaab.vdx); VIDEOREF@0x1456 0x1801 (GA[1]=ga1pb.vdx); VIDEOREF@0x145C 0x1801 (GA[1]=ga1pb.vdx); VIDEOREF@0x148B 0x1809 (GA[9]=gaabb.vdx); VIDEOREF@0x1491 0x180B (GA[11]=gacd.vdx); VIDEOREF@0x149D 0x2869 (JHEK[105]=jhab.vdx); VIDEOREF@0x1556 0x2877 (JHEK[119]=jhpub.vdx); VIDEOREF@0x1583 0x2875 (JHEK[117]=jhmib.vdx); VIDEOREF@0x159F 0x2875 (JHEK[117]=jhmib.vdx); VIDEOREF@0x15C5 0x286A (JHEK[106]=jhabb.vdx); VIDEOREF@0x15CB 0x286D (JHEK[109]=jhcd.vdx); VIDEOREF@0x15F4 0x4803 (P[3]=pfa.vdx); VIDEOREF@0x1635 0x480A (P[10]=pfdb.vdx); VIDEOREF@0x1661 0x4809 (P[9]=pfd.vdx); VIDEOREF@0x1672 0x480C (P[12]=pmu.vdx); VIDEOREF@0x1682 0x4807 (P[7]=pfc.vdx); VIDEOREF@0x16B3 0x4804 (P[4]=pfab.vdx); VIDEOREF@0x2185 0x3400 (LI[0]=l1_2.vdx); VIDEOREF@0x2935 0x3402 (LI[2]=l1_cb.vdx); VIDEOREF@0x29F5 0x1422 (FH[34]=f_1bb.vdx); VIDEOREF@0x2A19 0x3402 (LI[2]=l1_cb.vdx); VIDEOREF@0x2A5F 0x3428 (LI[40]=l_1ba.vdx); VIDEOREF@0x2A65 0x342B (LI[43]=l_1fc.vdx); VIDEOREF@0x2AE8 0x3406 (LI[6]=l2_3b.vdx); VIDEOREF@0x2AFB 0x342F (LI[47]=l_2bd.vdx); VIDEOREF@0x2B4D 0x3432 (LI[50]=l_2fc.vdx); VIDEOREF@0x2B5F 0x342F (LI[47]=l_2bd.vdx); VIDEOREF@0x2D0C 0x2881 (JHEK[129]=ekab.vdx); VIDEOREF@0x2D99 0x287B (JHEK[123]=ek1pb.vdx); VIDEOREF@0x2D9F 0x287B (JHEK[123]=ek1pb.vdx); VIDEOREF@0x2DCE 0x288C (JHEK[140]=ekmbb.vdx); VIDEOREF@0x2DD7 0x2883 (JHEK[131]=ekbc.vdx); VIDEOREF@0x2E24 0x2887 (JHEK[135]=ekcd.vdx); VIDEOREF@0x2E2D 0x2882 (JHEK[130]=ekabb.vdx); VIDEOREF@0x2E33 0x2888 (JHEK[136]=ekcdb.vdx); VIDEOREF@0x2E50 0x0807 (CH[7]=chab.vdx); VIDEOREF@0x2EB2 0x080A (CH[10]=chcd.vdx); VIDEOREF@0x2EB8 0x0808 (CH[8]=chabb.vdx); VIDEOREF@0x2ECC 0x0811 (CH[17]=chpub.vdx); VIDEOREF@0x2ED2 0x0809 (CH[9]=chal.vdx); VIDEOREF@0x2F34 0x080F (CH[15]=chorb.vdx); VIDEOREF@0x2F4A 0x4406 (N[6]=nab.vdx); VIDEOREF@0x3004 0x4408 (N[8]=ncd.vdx); VIDEOREF@0x300A 0x4407 (N[7]=nabb.vdx); VIDEOREF@0x301B 0x440A (N[10]=ncri.vdx); VIDEOREF@0x303C 0x440B (N[11]=ncrib.vdx); VIDEOREF@0x3074 0x4410 (N[16]=njacb.vdx); VIDEOREF@0x3084 0x4412 (N[18]=npuzb.vdx); VIDEOREF@0x3096 0x3010 (LA[16]=la_1fa.vdx); VIDEOREF@0x3165 0x300C (LA[12]=la_1ba.vdx); VIDEOREF@0x318F 0x3013 (LA[19]=la_1fd.vdx); VIDEOREF@0x3254 0x3803 (MB[3]=mbab.vdx); VIDEOREF@0x325C 0x383D (MB[61]=mb_warp.vdx); VIDEOREF@0x32BE 0x383F (MB[63]=sexbed.vdx); VIDEOREF@0x32F4 0x3809 (MB[9]=mbpub.vdx); VIDEOREF@0x330E 0x3804 (MB[4]=mbabb.vdx); VIDEOREF@0x3314 0x3805 (MB[5]=mbcd.vdx); VIDEOREF@0x3345 0x0C09 (D[9]=d_1fa.vdx); VIDEOREF@0x33D0 0x0C03 (D[3]=d1_3b.vdx); VIDEOREF@0x33F3 0x0C07 (D[7]=d_1ba.vdx); VIDEOREF@0x33F9 0x0C0A (D[10]=d_1fc.vdx); VIDEOREF@0x3944 0x2875 (JHEK[117]=jhmib.vdx); VIDEOREF@0x39BA 0x383D (MB[61]=mb_warp.vdx); VIDEOREF@0x3ABA 0x1426 (FH[38]=f_1fb.vdx); VIDEOREF@0x3AEC 0x2C05 (K[5]=k2_7b.vdx); VIDEOREF@0x3B22 0x2C0E (K[14]=k_1tb.vdx); VIDEOREF@0x3B88 0x1405 (FH[5]=f1_pb.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0C0E` | `HOTSPOT_BOTTOM_4` | target=0x3912 |
| `0x0C17` | `HOTSPOT_BOTTOM_4` | target=0x3912 |
| `0x0C20` | `HOTSPOT_BOTTOM_4` | target=0x3912 |
| `0x0C23` | `HOTSPOT_LEFT` | target=0x0CD1 |
| `0x0C30` | `HOTSPOT_RECT` | left=0x00C8, top=0x00F0, right=0x0127, bottom=0x011D, target=0x0CAC, cursor=0x06 |
| `0x0C42` | `HOTSPOT_RECT` | left=0x00C8, top=0x00F0, right=0x0127, bottom=0x011D, target=0x0CAC, cursor=0x06 |
| `0x0C53` | `HOTSPOT_RECT` | left=0x00C8, top=0x00F0, right=0x0127, bottom=0x011D, target=0x0C80, cursor=0x04 |
| `0x0C64` | `HOTSPOT_RECT` | left=0x0068, top=0x0083, right=0x00B8, bottom=0x0109, target=0x0C90, cursor=0x04 |
| `0x0C70` | `HOTSPOT_RECT` | left=0x01C6, top=0x0082, right=0x0222, bottom=0x0130, target=0x0CBC, cursor=0x07 |
| `0x0C7C` | `HOTSPOT_RIGHT` | target=0x0CD7 |

### Loop `0x0CDD`–`0x0D1A`

Nearest preceding video in file order: VIDEOREF@0x0CD7 0x4001 (MU[1]=muab.vdx)

Scene candidates: VIDEOREF@0x0CD1 0x4004 (MU[4]=mucdb.vdx); VIDEOREF@0x0CD7 0x4001 (MU[1]=muab.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0CE3` | `HOTSPOT_RECT` | left=0x0012, top=0x009C, right=0x007E, bottom=0x00F9, target=0x0D2A, cursor=0x07 |
| `0x0CF4` | `HOTSPOT_RECT` | left=0x0012, top=0x009C, right=0x007E, bottom=0x00F9, target=0x0D30, cursor=0x07 |
| `0x0D05` | `HOTSPOT_RECT` | left=0x0012, top=0x009C, right=0x007E, bottom=0x00F9, target=0x0D36, cursor=0x07 |
| `0x0D11` | `HOTSPOT_RIGHT` | target=0x0CA6 |
| `0x0D14` | `HOTSPOT_LEFT` | target=0x0CA0 |
| `0x0D17` | `HOTSPOT_CENTER` | target=0x0D1B |

### Loop `0x0D74`–`0x0E0A`

Nearest preceding video in file order: VIDEOREF@0x0D59 0x207A (HTBD[122]=bdplb.vdx)

Scene candidates: VIDEOREF@0x03E2 0x1403 (FH[3]=f1_6.vdx); VIDEOREF@0x04F9 0x5001 (GAMWAV[1]=1_e_2.vdx); VIDEOREF@0x0651 0x1405 (FH[5]=f1_pb.vdx); VIDEOREF@0x069B 0x1421 (FH[33]=f_1ba.vdx); VIDEOREF@0x06A1 0x1426 (FH[38]=f_1fb.vdx); VIDEOREF@0x06B3 0x1423 (FH[35]=f_1bc.vdx); VIDEOREF@0x06B9 0x1428 (FH[40]=f_1fd.vdx); VIDEOREF@0x0704 0x140A (FH[10]=f2_1.vdx); VIDEOREF@0x08A6 0x1415 (FH[21]=f5_1.vdx); VIDEOREF@0x0957 0x105F (DR[95]=dr_mi.vdx); VIDEOREF@0x09DF 0x1000 (DR[0]=come.vdx); VIDEOREF@0x09FB 0x106A (DR[106]=dr_vb.vdx); VIDEOREF@0x0A04 0x1063 (DR[99]=dr_r.vdx); VIDEOREF@0x0A1C 0x2C0C (K[12]=k_1ba.vdx); VIDEOREF@0x0A39 0x2C0E (K[14]=k_1tb.vdx); VIDEOREF@0x0AA6 0x2C0D (K[13]=k_1fa.vdx); VIDEOREF@0x0B7C 0x2C14 (K[20]=k_2fa.vdx); VIDEOREF@0x0B82 0x2C11 (K[17]=k_2bb.vdx); VIDEOREF@0x0BA8 0x2C05 (K[5]=k2_7b.vdx); VIDEOREF@0x0BE7 0x4001 (MU[1]=muab.vdx); VIDEOREF@0x0CA0 0x4002 (MU[2]=muabb.vdx); VIDEOREF@0x0CA6 0x4003 (MU[3]=mucd.vdx); VIDEOREF@0x0CB6 0x400A (MU[10]=mupib.vdx); VIDEOREF@0x0D3F 0x4007 (MU[7]=mugrb.vdx); VIDEOREF@0x0D52 0x2072 (HTBD[114]=bdab.vdx); VIDEOREF@0x0D59 0x207A (HTBD[122]=bdplb.vdx); VIDEOREF@0x0E25 0x206F (HTBD[111]=bd2p.vdx); VIDEOREF@0x0E45 0x2074 (HTBD[116]=bdcd.vdx); VIDEOREF@0x0E4B 0x2073 (HTBD[115]=bdabb.vdx); VIDEOREF@0x0F56 0x1418 (FH[24]=f6_1.vdx); VIDEOREF@0x0F89 0x1472 (FH[114]=h_1bb.vdx); VIDEOREF@0x0F9C 0x1477 (FH[119]=h_1fc.vdx); VIDEOREF@0x0FBB 0x1474 (FH[116]=h_1bd.vdx); VIDEOREF@0x0FC1 0x1475 (FH[117]=h_1fa.vdx); VIDEOREF@0x1027 0x145C (FH[92]=h2_1.vdx); VIDEOREF@0x1086 0x146B (FH[107]=h8_1.vdx); VIDEOREF@0x12CB 0x2007 (HTBD[7]=htab.vdx); VIDEOREF@0x1322 0x2004 (HTBD[4]=ht2p.vdx); VIDEOREF@0x132B 0x2008 (HTBD[8]=ht_mess.vdx); VIDEOREF@0x1337 0x2009 (HTBD[9]=htcd.vdx); VIDEOREF@0x1395 0x1808 (GA[8]=gaab.vdx); VIDEOREF@0x1456 0x1801 (GA[1]=ga1pb.vdx); VIDEOREF@0x145C 0x1801 (GA[1]=ga1pb.vdx); VIDEOREF@0x148B 0x1809 (GA[9]=gaabb.vdx); VIDEOREF@0x1491 0x180B (GA[11]=gacd.vdx); VIDEOREF@0x149D 0x2869 (JHEK[105]=jhab.vdx); VIDEOREF@0x1556 0x2877 (JHEK[119]=jhpub.vdx); VIDEOREF@0x1583 0x2875 (JHEK[117]=jhmib.vdx); VIDEOREF@0x159F 0x2875 (JHEK[117]=jhmib.vdx); VIDEOREF@0x15C5 0x286A (JHEK[106]=jhabb.vdx); VIDEOREF@0x15CB 0x286D (JHEK[109]=jhcd.vdx); VIDEOREF@0x15F4 0x4803 (P[3]=pfa.vdx); VIDEOREF@0x1635 0x480A (P[10]=pfdb.vdx); VIDEOREF@0x1661 0x4809 (P[9]=pfd.vdx); VIDEOREF@0x1672 0x480C (P[12]=pmu.vdx); VIDEOREF@0x1682 0x4807 (P[7]=pfc.vdx); VIDEOREF@0x16B3 0x4804 (P[4]=pfab.vdx); VIDEOREF@0x2185 0x3400 (LI[0]=l1_2.vdx); VIDEOREF@0x2935 0x3402 (LI[2]=l1_cb.vdx); VIDEOREF@0x29F5 0x1422 (FH[34]=f_1bb.vdx); VIDEOREF@0x2A19 0x3402 (LI[2]=l1_cb.vdx); VIDEOREF@0x2A5F 0x3428 (LI[40]=l_1ba.vdx); VIDEOREF@0x2A65 0x342B (LI[43]=l_1fc.vdx); VIDEOREF@0x2AE8 0x3406 (LI[6]=l2_3b.vdx); VIDEOREF@0x2AFB 0x342F (LI[47]=l_2bd.vdx); VIDEOREF@0x2B4D 0x3432 (LI[50]=l_2fc.vdx); VIDEOREF@0x2B5F 0x342F (LI[47]=l_2bd.vdx); VIDEOREF@0x2D0C 0x2881 (JHEK[129]=ekab.vdx); VIDEOREF@0x2D99 0x287B (JHEK[123]=ek1pb.vdx); VIDEOREF@0x2D9F 0x287B (JHEK[123]=ek1pb.vdx); VIDEOREF@0x2DCE 0x288C (JHEK[140]=ekmbb.vdx); VIDEOREF@0x2DD7 0x2883 (JHEK[131]=ekbc.vdx); VIDEOREF@0x2E24 0x2887 (JHEK[135]=ekcd.vdx); VIDEOREF@0x2E2D 0x2882 (JHEK[130]=ekabb.vdx); VIDEOREF@0x2E33 0x2888 (JHEK[136]=ekcdb.vdx); VIDEOREF@0x2E50 0x0807 (CH[7]=chab.vdx); VIDEOREF@0x2EB2 0x080A (CH[10]=chcd.vdx); VIDEOREF@0x2EB8 0x0808 (CH[8]=chabb.vdx); VIDEOREF@0x2ECC 0x0811 (CH[17]=chpub.vdx); VIDEOREF@0x2ED2 0x0809 (CH[9]=chal.vdx); VIDEOREF@0x2F34 0x080F (CH[15]=chorb.vdx); VIDEOREF@0x2F4A 0x4406 (N[6]=nab.vdx); VIDEOREF@0x3004 0x4408 (N[8]=ncd.vdx); VIDEOREF@0x300A 0x4407 (N[7]=nabb.vdx); VIDEOREF@0x301B 0x440A (N[10]=ncri.vdx); VIDEOREF@0x303C 0x440B (N[11]=ncrib.vdx); VIDEOREF@0x3074 0x4410 (N[16]=njacb.vdx); VIDEOREF@0x3084 0x4412 (N[18]=npuzb.vdx); VIDEOREF@0x3096 0x3010 (LA[16]=la_1fa.vdx); VIDEOREF@0x3165 0x300C (LA[12]=la_1ba.vdx); VIDEOREF@0x318F 0x3013 (LA[19]=la_1fd.vdx); VIDEOREF@0x3254 0x3803 (MB[3]=mbab.vdx); VIDEOREF@0x325C 0x383D (MB[61]=mb_warp.vdx); VIDEOREF@0x32BE 0x383F (MB[63]=sexbed.vdx); VIDEOREF@0x32F4 0x3809 (MB[9]=mbpub.vdx); VIDEOREF@0x330E 0x3804 (MB[4]=mbabb.vdx); VIDEOREF@0x3314 0x3805 (MB[5]=mbcd.vdx); VIDEOREF@0x3345 0x0C09 (D[9]=d_1fa.vdx); VIDEOREF@0x33D0 0x0C03 (D[3]=d1_3b.vdx); VIDEOREF@0x33F3 0x0C07 (D[7]=d_1ba.vdx); VIDEOREF@0x33F9 0x0C0A (D[10]=d_1fc.vdx); VIDEOREF@0x3944 0x2875 (JHEK[117]=jhmib.vdx); VIDEOREF@0x39BA 0x383D (MB[61]=mb_warp.vdx); VIDEOREF@0x3ABA 0x1426 (FH[38]=f_1fb.vdx); VIDEOREF@0x3AEC 0x2C05 (K[5]=k2_7b.vdx); VIDEOREF@0x3B22 0x2C0E (K[14]=k_1tb.vdx); VIDEOREF@0x3B88 0x1405 (FH[5]=f1_pb.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0D75` | `HOTSPOT_RIGHT` | target=0x0E37 |
| `0x0D7D` | `HOTSPOT_RECT` | left=0x0117, top=0x00E6, right=0x016C, bottom=0x0119, target=0x0E22, cursor=0x06 |
| `0x0D8F` | `HOTSPOT_RECT` | left=0x0117, top=0x00E6, right=0x016C, bottom=0x0119, target=0x0E22, cursor=0x06 |
| `0x0DAA` | `HOTSPOT_RECT` | left=0x0022, top=0x005F, right=0x005A, bottom=0x0159, target=0x0E60, cursor=0x04 |
| `0x0DB9` | `HOTSPOT_RECT` | left=0x0022, top=0x005F, right=0x005A, bottom=0x0159, target=0x0E0B, cursor=0x00 |
| `0x0DCB` | `HOTSPOT_BOTTOM_4` | target=0x3912 |
| `0x0DD8` | `HOTSPOT_RECT` | left=0x0211, top=0x00DC, right=0x0253, bottom=0x015A, target=0x0E75, cursor=0x07 |
| `0x0DE9` | `HOTSPOT_RECT` | left=0x01E6, top=0x00F4, right=0x0209, bottom=0x0129, target=0x0E15, cursor=0x04 |
| `0x0DFB` | `HOTSPOT_BOTTOM_4` | target=0x3912 |
| `0x0E04` | `HOTSPOT_BOTTOM_4` | target=0x3912 |
| `0x0E07` | `HOTSPOT_LEFT` | target=0x0E31 |

### Loop `0x0E3A`–`0x0E44`

Nearest preceding video in file order: VIDEOREF@0x0E37 0x2072 (HTBD[114]=bdab.vdx)

Scene candidates: VIDEOREF@0x0E31 0x2075 (HTBD[117]=bdcdb.vdx); VIDEOREF@0x0E37 0x2072 (HTBD[114]=bdab.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0E3B` | `HOTSPOT_LEFT` | target=0x0E4B |
| `0x0E3E` | `HOTSPOT_CENTER` | target=0x0E51 |
| `0x0E41` | `HOTSPOT_RIGHT` | target=0x0E45 |

### Loop `0x0E87`–`0x0E9A`

Nearest preceding video in file order: VIDEOREF@0x0E7C 0x2079 (HTBD[121]=bdpl.vdx)

Scene candidates: VIDEOREF@0x03D3 0x14AB (FH[171]=h_morph.vdx); VIDEOREF@0x0560 0x1403 (FH[3]=f1_6.vdx); VIDEOREF@0x0E9F 0x14AB (FH[171]=h_morph.vdx); VIDEOREF@0x0FB5 0x1476 (FH[118]=h_1fb.vdx); VIDEOREF@0x0FC7 0x1473 (FH[115]=h_1bc.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0E88` | `HOTSPOT_RECT` | left=0x00D4, top=0x0088, right=0x0218, bottom=0x016F, target=0x0E9B, cursor=0x07 |
| `0x0E94` | `HOTSPOT_LEFT` | target=0x0F89 |
| `0x0E97` | `HOTSPOT_RIGHT` | target=0x0F9C |

### Loop `0x0F0D`–`0x0F44`

Nearest preceding video in file order: VIDEOREF@0x0E9F 0x14AB (FH[171]=h_morph.vdx)

Scene candidates: VIDEOREF@0x03E2 0x1403 (FH[3]=f1_6.vdx); VIDEOREF@0x04F9 0x5001 (GAMWAV[1]=1_e_2.vdx); VIDEOREF@0x0651 0x1405 (FH[5]=f1_pb.vdx); VIDEOREF@0x069B 0x1421 (FH[33]=f_1ba.vdx); VIDEOREF@0x06A1 0x1426 (FH[38]=f_1fb.vdx); VIDEOREF@0x06B3 0x1423 (FH[35]=f_1bc.vdx); VIDEOREF@0x06B9 0x1428 (FH[40]=f_1fd.vdx); VIDEOREF@0x0704 0x140A (FH[10]=f2_1.vdx); VIDEOREF@0x08A6 0x1415 (FH[21]=f5_1.vdx); VIDEOREF@0x0957 0x105F (DR[95]=dr_mi.vdx); VIDEOREF@0x09DF 0x1000 (DR[0]=come.vdx); VIDEOREF@0x09FB 0x106A (DR[106]=dr_vb.vdx); VIDEOREF@0x0A04 0x1063 (DR[99]=dr_r.vdx); VIDEOREF@0x0A1C 0x2C0C (K[12]=k_1ba.vdx); VIDEOREF@0x0A39 0x2C0E (K[14]=k_1tb.vdx); VIDEOREF@0x0AA6 0x2C0D (K[13]=k_1fa.vdx); VIDEOREF@0x0B7C 0x2C14 (K[20]=k_2fa.vdx); VIDEOREF@0x0B82 0x2C11 (K[17]=k_2bb.vdx); VIDEOREF@0x0BA8 0x2C05 (K[5]=k2_7b.vdx); VIDEOREF@0x0BE7 0x4001 (MU[1]=muab.vdx); VIDEOREF@0x0CA0 0x4002 (MU[2]=muabb.vdx); VIDEOREF@0x0CA6 0x4003 (MU[3]=mucd.vdx); VIDEOREF@0x0CB6 0x400A (MU[10]=mupib.vdx); VIDEOREF@0x0D3F 0x4007 (MU[7]=mugrb.vdx); VIDEOREF@0x0D52 0x2072 (HTBD[114]=bdab.vdx); VIDEOREF@0x0D59 0x207A (HTBD[122]=bdplb.vdx); VIDEOREF@0x0E25 0x206F (HTBD[111]=bd2p.vdx); VIDEOREF@0x0E45 0x2074 (HTBD[116]=bdcd.vdx); VIDEOREF@0x0E4B 0x2073 (HTBD[115]=bdabb.vdx); VIDEOREF@0x0F56 0x1418 (FH[24]=f6_1.vdx); VIDEOREF@0x0F89 0x1472 (FH[114]=h_1bb.vdx); VIDEOREF@0x0F9C 0x1477 (FH[119]=h_1fc.vdx); VIDEOREF@0x0FBB 0x1474 (FH[116]=h_1bd.vdx); VIDEOREF@0x0FC1 0x1475 (FH[117]=h_1fa.vdx); VIDEOREF@0x1027 0x145C (FH[92]=h2_1.vdx); VIDEOREF@0x1086 0x146B (FH[107]=h8_1.vdx); VIDEOREF@0x12CB 0x2007 (HTBD[7]=htab.vdx); VIDEOREF@0x1322 0x2004 (HTBD[4]=ht2p.vdx); VIDEOREF@0x132B 0x2008 (HTBD[8]=ht_mess.vdx); VIDEOREF@0x1337 0x2009 (HTBD[9]=htcd.vdx); VIDEOREF@0x1395 0x1808 (GA[8]=gaab.vdx); VIDEOREF@0x1456 0x1801 (GA[1]=ga1pb.vdx); VIDEOREF@0x145C 0x1801 (GA[1]=ga1pb.vdx); VIDEOREF@0x148B 0x1809 (GA[9]=gaabb.vdx); VIDEOREF@0x1491 0x180B (GA[11]=gacd.vdx); VIDEOREF@0x149D 0x2869 (JHEK[105]=jhab.vdx); VIDEOREF@0x1556 0x2877 (JHEK[119]=jhpub.vdx); VIDEOREF@0x1583 0x2875 (JHEK[117]=jhmib.vdx); VIDEOREF@0x159F 0x2875 (JHEK[117]=jhmib.vdx); VIDEOREF@0x15C5 0x286A (JHEK[106]=jhabb.vdx); VIDEOREF@0x15CB 0x286D (JHEK[109]=jhcd.vdx); VIDEOREF@0x15F4 0x4803 (P[3]=pfa.vdx); VIDEOREF@0x1635 0x480A (P[10]=pfdb.vdx); VIDEOREF@0x1661 0x4809 (P[9]=pfd.vdx); VIDEOREF@0x1672 0x480C (P[12]=pmu.vdx); VIDEOREF@0x1682 0x4807 (P[7]=pfc.vdx); VIDEOREF@0x16B3 0x4804 (P[4]=pfab.vdx); VIDEOREF@0x2185 0x3400 (LI[0]=l1_2.vdx); VIDEOREF@0x2935 0x3402 (LI[2]=l1_cb.vdx); VIDEOREF@0x29F5 0x1422 (FH[34]=f_1bb.vdx); VIDEOREF@0x2A19 0x3402 (LI[2]=l1_cb.vdx); VIDEOREF@0x2A5F 0x3428 (LI[40]=l_1ba.vdx); VIDEOREF@0x2A65 0x342B (LI[43]=l_1fc.vdx); VIDEOREF@0x2AE8 0x3406 (LI[6]=l2_3b.vdx); VIDEOREF@0x2AFB 0x342F (LI[47]=l_2bd.vdx); VIDEOREF@0x2B4D 0x3432 (LI[50]=l_2fc.vdx); VIDEOREF@0x2B5F 0x342F (LI[47]=l_2bd.vdx); VIDEOREF@0x2D0C 0x2881 (JHEK[129]=ekab.vdx); VIDEOREF@0x2D99 0x287B (JHEK[123]=ek1pb.vdx); VIDEOREF@0x2D9F 0x287B (JHEK[123]=ek1pb.vdx); VIDEOREF@0x2DCE 0x288C (JHEK[140]=ekmbb.vdx); VIDEOREF@0x2DD7 0x2883 (JHEK[131]=ekbc.vdx); VIDEOREF@0x2E24 0x2887 (JHEK[135]=ekcd.vdx); VIDEOREF@0x2E2D 0x2882 (JHEK[130]=ekabb.vdx); VIDEOREF@0x2E33 0x2888 (JHEK[136]=ekcdb.vdx); VIDEOREF@0x2E50 0x0807 (CH[7]=chab.vdx); VIDEOREF@0x2EB2 0x080A (CH[10]=chcd.vdx); VIDEOREF@0x2EB8 0x0808 (CH[8]=chabb.vdx); VIDEOREF@0x2ECC 0x0811 (CH[17]=chpub.vdx); VIDEOREF@0x2ED2 0x0809 (CH[9]=chal.vdx); VIDEOREF@0x2F34 0x080F (CH[15]=chorb.vdx); VIDEOREF@0x2F4A 0x4406 (N[6]=nab.vdx); VIDEOREF@0x3004 0x4408 (N[8]=ncd.vdx); VIDEOREF@0x300A 0x4407 (N[7]=nabb.vdx); VIDEOREF@0x301B 0x440A (N[10]=ncri.vdx); VIDEOREF@0x303C 0x440B (N[11]=ncrib.vdx); VIDEOREF@0x3074 0x4410 (N[16]=njacb.vdx); VIDEOREF@0x3084 0x4412 (N[18]=npuzb.vdx); VIDEOREF@0x3096 0x3010 (LA[16]=la_1fa.vdx); VIDEOREF@0x3165 0x300C (LA[12]=la_1ba.vdx); VIDEOREF@0x318F 0x3013 (LA[19]=la_1fd.vdx); VIDEOREF@0x3254 0x3803 (MB[3]=mbab.vdx); VIDEOREF@0x325C 0x383D (MB[61]=mb_warp.vdx); VIDEOREF@0x32BE 0x383F (MB[63]=sexbed.vdx); VIDEOREF@0x32F4 0x3809 (MB[9]=mbpub.vdx); VIDEOREF@0x330E 0x3804 (MB[4]=mbabb.vdx); VIDEOREF@0x3314 0x3805 (MB[5]=mbcd.vdx); VIDEOREF@0x3345 0x0C09 (D[9]=d_1fa.vdx); VIDEOREF@0x33D0 0x0C03 (D[3]=d1_3b.vdx); VIDEOREF@0x33F3 0x0C07 (D[7]=d_1ba.vdx); VIDEOREF@0x33F9 0x0C0A (D[10]=d_1fc.vdx); VIDEOREF@0x3944 0x2875 (JHEK[117]=jhmib.vdx); VIDEOREF@0x39BA 0x383D (MB[61]=mb_warp.vdx); VIDEOREF@0x3ABA 0x1426 (FH[38]=f_1fb.vdx); VIDEOREF@0x3AEC 0x2C05 (K[5]=k2_7b.vdx); VIDEOREF@0x3B22 0x2C0E (K[14]=k_1tb.vdx); VIDEOREF@0x3B88 0x1405 (FH[5]=f1_pb.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0F0E` | `HOTSPOT_CENTER_2` | target=0x0F45 |
| `0x0F11` | `HOTSPOT_LEFT` | target=0x0FAF |
| `0x0F14` | `HOTSPOT_RIGHT` | target=0x0FB5 |
| `0x0F1D` | `HOTSPOT_BOTTOM_4` | target=0x3912 |
| `0x0F26` | `HOTSPOT_BOTTOM_4` | target=0x3912 |
| `0x0F2F` | `HOTSPOT_BOTTOM_4` | target=0x3912 |
| `0x0F38` | `HOTSPOT_BOTTOM_4` | target=0x3912 |
| `0x0F41` | `HOTSPOT_BOTTOM_4` | target=0x3912 |

### Loop `0x0F4B`–`0x0F55`

Nearest preceding video in file order: VIDEOREF@0x0F45 0x1459 (FH[89]=h1_2.vdx)

Scene candidates: VIDEOREF@0x0FAF 0x1471 (FH[113]=h_1ba.vdx); VIDEOREF@0x0FCD 0x1478 (FH[120]=h_1fd.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0F4C` | `HOTSPOT_CENTER_2` | target=0x0F56 |
| `0x0F4F` | `HOTSPOT_LEFT` | target=0x0FBB |
| `0x0F52` | `HOTSPOT_RIGHT` | target=0x0FC1 |

### Loop `0x0F6F`–`0x0F82`

Nearest preceding video in file order: VIDEOREF@0x0F56 0x1418 (FH[24]=f6_1.vdx)

Scene candidates: VIDEOREF@0x03E2 0x1403 (FH[3]=f1_6.vdx); VIDEOREF@0x04F9 0x5001 (GAMWAV[1]=1_e_2.vdx); VIDEOREF@0x0651 0x1405 (FH[5]=f1_pb.vdx); VIDEOREF@0x069B 0x1421 (FH[33]=f_1ba.vdx); VIDEOREF@0x06A1 0x1426 (FH[38]=f_1fb.vdx); VIDEOREF@0x06B3 0x1423 (FH[35]=f_1bc.vdx); VIDEOREF@0x06B9 0x1428 (FH[40]=f_1fd.vdx); VIDEOREF@0x0704 0x140A (FH[10]=f2_1.vdx); VIDEOREF@0x08A6 0x1415 (FH[21]=f5_1.vdx); VIDEOREF@0x0957 0x105F (DR[95]=dr_mi.vdx); VIDEOREF@0x09DF 0x1000 (DR[0]=come.vdx); VIDEOREF@0x09FB 0x106A (DR[106]=dr_vb.vdx); VIDEOREF@0x0A04 0x1063 (DR[99]=dr_r.vdx); VIDEOREF@0x0A1C 0x2C0C (K[12]=k_1ba.vdx); VIDEOREF@0x0A39 0x2C0E (K[14]=k_1tb.vdx); VIDEOREF@0x0AA6 0x2C0D (K[13]=k_1fa.vdx); VIDEOREF@0x0B7C 0x2C14 (K[20]=k_2fa.vdx); VIDEOREF@0x0B82 0x2C11 (K[17]=k_2bb.vdx); VIDEOREF@0x0BA8 0x2C05 (K[5]=k2_7b.vdx); VIDEOREF@0x0BE7 0x4001 (MU[1]=muab.vdx); VIDEOREF@0x0CA0 0x4002 (MU[2]=muabb.vdx); VIDEOREF@0x0CA6 0x4003 (MU[3]=mucd.vdx); VIDEOREF@0x0CB6 0x400A (MU[10]=mupib.vdx); VIDEOREF@0x0D3F 0x4007 (MU[7]=mugrb.vdx); VIDEOREF@0x0D52 0x2072 (HTBD[114]=bdab.vdx); VIDEOREF@0x0D59 0x207A (HTBD[122]=bdplb.vdx); VIDEOREF@0x0E25 0x206F (HTBD[111]=bd2p.vdx); VIDEOREF@0x0E45 0x2074 (HTBD[116]=bdcd.vdx); VIDEOREF@0x0E4B 0x2073 (HTBD[115]=bdabb.vdx); VIDEOREF@0x0F56 0x1418 (FH[24]=f6_1.vdx); VIDEOREF@0x0F89 0x1472 (FH[114]=h_1bb.vdx); VIDEOREF@0x0F9C 0x1477 (FH[119]=h_1fc.vdx); VIDEOREF@0x0FBB 0x1474 (FH[116]=h_1bd.vdx); VIDEOREF@0x0FC1 0x1475 (FH[117]=h_1fa.vdx); VIDEOREF@0x1027 0x145C (FH[92]=h2_1.vdx); VIDEOREF@0x1086 0x146B (FH[107]=h8_1.vdx); VIDEOREF@0x12CB 0x2007 (HTBD[7]=htab.vdx); VIDEOREF@0x1322 0x2004 (HTBD[4]=ht2p.vdx); VIDEOREF@0x132B 0x2008 (HTBD[8]=ht_mess.vdx); VIDEOREF@0x1337 0x2009 (HTBD[9]=htcd.vdx); VIDEOREF@0x1395 0x1808 (GA[8]=gaab.vdx); VIDEOREF@0x1456 0x1801 (GA[1]=ga1pb.vdx); VIDEOREF@0x145C 0x1801 (GA[1]=ga1pb.vdx); VIDEOREF@0x148B 0x1809 (GA[9]=gaabb.vdx); VIDEOREF@0x1491 0x180B (GA[11]=gacd.vdx); VIDEOREF@0x149D 0x2869 (JHEK[105]=jhab.vdx); VIDEOREF@0x1556 0x2877 (JHEK[119]=jhpub.vdx); VIDEOREF@0x1583 0x2875 (JHEK[117]=jhmib.vdx); VIDEOREF@0x159F 0x2875 (JHEK[117]=jhmib.vdx); VIDEOREF@0x15C5 0x286A (JHEK[106]=jhabb.vdx); VIDEOREF@0x15CB 0x286D (JHEK[109]=jhcd.vdx); VIDEOREF@0x15F4 0x4803 (P[3]=pfa.vdx); VIDEOREF@0x1635 0x480A (P[10]=pfdb.vdx); VIDEOREF@0x1661 0x4809 (P[9]=pfd.vdx); VIDEOREF@0x1672 0x480C (P[12]=pmu.vdx); VIDEOREF@0x1682 0x4807 (P[7]=pfc.vdx); VIDEOREF@0x16B3 0x4804 (P[4]=pfab.vdx); VIDEOREF@0x2185 0x3400 (LI[0]=l1_2.vdx); VIDEOREF@0x2935 0x3402 (LI[2]=l1_cb.vdx); VIDEOREF@0x29F5 0x1422 (FH[34]=f_1bb.vdx); VIDEOREF@0x2A19 0x3402 (LI[2]=l1_cb.vdx); VIDEOREF@0x2A5F 0x3428 (LI[40]=l_1ba.vdx); VIDEOREF@0x2A65 0x342B (LI[43]=l_1fc.vdx); VIDEOREF@0x2AE8 0x3406 (LI[6]=l2_3b.vdx); VIDEOREF@0x2AFB 0x342F (LI[47]=l_2bd.vdx); VIDEOREF@0x2B4D 0x3432 (LI[50]=l_2fc.vdx); VIDEOREF@0x2B5F 0x342F (LI[47]=l_2bd.vdx); VIDEOREF@0x2D0C 0x2881 (JHEK[129]=ekab.vdx); VIDEOREF@0x2D99 0x287B (JHEK[123]=ek1pb.vdx); VIDEOREF@0x2D9F 0x287B (JHEK[123]=ek1pb.vdx); VIDEOREF@0x2DCE 0x288C (JHEK[140]=ekmbb.vdx); VIDEOREF@0x2DD7 0x2883 (JHEK[131]=ekbc.vdx); VIDEOREF@0x2E24 0x2887 (JHEK[135]=ekcd.vdx); VIDEOREF@0x2E2D 0x2882 (JHEK[130]=ekabb.vdx); VIDEOREF@0x2E33 0x2888 (JHEK[136]=ekcdb.vdx); VIDEOREF@0x2E50 0x0807 (CH[7]=chab.vdx); VIDEOREF@0x2EB2 0x080A (CH[10]=chcd.vdx); VIDEOREF@0x2EB8 0x0808 (CH[8]=chabb.vdx); VIDEOREF@0x2ECC 0x0811 (CH[17]=chpub.vdx); VIDEOREF@0x2ED2 0x0809 (CH[9]=chal.vdx); VIDEOREF@0x2F34 0x080F (CH[15]=chorb.vdx); VIDEOREF@0x2F4A 0x4406 (N[6]=nab.vdx); VIDEOREF@0x3004 0x4408 (N[8]=ncd.vdx); VIDEOREF@0x300A 0x4407 (N[7]=nabb.vdx); VIDEOREF@0x301B 0x440A (N[10]=ncri.vdx); VIDEOREF@0x303C 0x440B (N[11]=ncrib.vdx); VIDEOREF@0x3074 0x4410 (N[16]=njacb.vdx); VIDEOREF@0x3084 0x4412 (N[18]=npuzb.vdx); VIDEOREF@0x3096 0x3010 (LA[16]=la_1fa.vdx); VIDEOREF@0x3165 0x300C (LA[12]=la_1ba.vdx); VIDEOREF@0x318F 0x3013 (LA[19]=la_1fd.vdx); VIDEOREF@0x3254 0x3803 (MB[3]=mbab.vdx); VIDEOREF@0x325C 0x383D (MB[61]=mb_warp.vdx); VIDEOREF@0x32BE 0x383F (MB[63]=sexbed.vdx); VIDEOREF@0x32F4 0x3809 (MB[9]=mbpub.vdx); VIDEOREF@0x330E 0x3804 (MB[4]=mbabb.vdx); VIDEOREF@0x3314 0x3805 (MB[5]=mbcd.vdx); VIDEOREF@0x3345 0x0C09 (D[9]=d_1fa.vdx); VIDEOREF@0x33D0 0x0C03 (D[3]=d1_3b.vdx); VIDEOREF@0x33F3 0x0C07 (D[7]=d_1ba.vdx); VIDEOREF@0x33F9 0x0C0A (D[10]=d_1fc.vdx); VIDEOREF@0x3944 0x2875 (JHEK[117]=jhmib.vdx); VIDEOREF@0x39BA 0x383D (MB[61]=mb_warp.vdx); VIDEOREF@0x3ABA 0x1426 (FH[38]=f_1fb.vdx); VIDEOREF@0x3AEC 0x2C05 (K[5]=k2_7b.vdx); VIDEOREF@0x3B22 0x2C0E (K[14]=k_1tb.vdx); VIDEOREF@0x3B88 0x1405 (FH[5]=f1_pb.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0F76` | `HOTSPOT_BOTTOM_4` | target=0x3912 |
| `0x0F79` | `HOTSPOT_CENTER_2` | target=0x0F83 |
| `0x0F7C` | `HOTSPOT_LEFT` | target=0x0FC7 |
| `0x0F7F` | `HOTSPOT_RIGHT` | target=0x0FCD |

### Loop `0x0FD7`–`0x0FE6`

Nearest preceding video in file order: VIDEOREF@0x0FCD 0x1478 (FH[120]=h_1fd.vdx)

Scene candidates: VIDEOREF@0x103F 0x147E (FH[126]=h_2fb.vdx); VIDEOREF@0x1051 0x147B (FH[123]=h_2bc.vdx); VIDEOREF@0x3335 0x147F (FH[127]=h_2fc.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0FDD` | `HOTSPOT_CENTER` | target=0x1010 |
| `0x0FE0` | `HOTSPOT_LEFT` | target=0x102D |
| `0x0FE3` | `HOTSPOT_RIGHT` | target=0x1033 |

### Loop `0x0FF1`–`0x0FFB`

Nearest preceding video in file order: VIDEOREF@0x0FE7 0x145E (FH[94]=h2_e.vdx)

Scene candidates: VIDEOREF@0x0F45 0x1459 (FH[89]=h1_2.vdx); VIDEOREF@0x102D 0x147A (FH[122]=h_2bb.vdx); VIDEOREF@0x104B 0x147D (FH[125]=h_2fa.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x0FF2` | `HOTSPOT_CENTER_2` | target=0x1021 |
| `0x0FF5` | `HOTSPOT_LEFT` | target=0x1039 |
| `0x0FF8` | `HOTSPOT_RIGHT` | target=0x103F |

### Loop `0x1000`–`0x100F`

Nearest preceding video in file order: VIDEOREF@0x0FE7 0x145E (FH[94]=h2_e.vdx)

Scene candidates: VIDEOREF@0x1039 0x1479 (FH[121]=h_2ba.vdx); VIDEOREF@0x1057 0x1480 (FH[128]=h_2fd.vdx); VIDEOREF@0x2E1E 0x147D (FH[125]=h_2fa.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x1006` | `HOTSPOT_CENTER` | target=0x0FE7 |
| `0x1009` | `HOTSPOT_LEFT` | target=0x1045 |
| `0x100C` | `HOTSPOT_RIGHT` | target=0x104B |

### Loop `0x1016`–`0x1020`

Nearest preceding video in file order: VIDEOREF@0x1010 0x145F (FH[95]=h2_g.vdx)

Scene candidates: VIDEOREF@0x1033 0x147F (FH[127]=h_2fc.vdx); VIDEOREF@0x1045 0x147C (FH[124]=h_2bd.vdx); VIDEOREF@0x1132 0x1460 (FH[96]=h3_2.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x1017` | `HOTSPOT_CENTER_2` | target=0x1027 |
| `0x101A` | `HOTSPOT_LEFT` | target=0x1051 |
| `0x101D` | `HOTSPOT_RIGHT` | target=0x1057 |

### Loop `0x1061`–`0x1070`

Nearest preceding video in file order: VIDEOREF@0x1057 0x1480 (FH[128]=h_2fd.vdx)

Scene candidates: VIDEOREF@0x10D2 0x149A (FH[154]=h_8fb.vdx); VIDEOREF@0x10E4 0x1497 (FH[151]=h_8bc.vdx); VIDEOREF@0x137E 0x149B (FH[155]=h_8fc.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x1062` | `HOTSPOT_LEFT` | target=0x10C0 |
| `0x1065` | `HOTSPOT_RIGHT` | target=0x10C6 |
| `0x106D` | `HOTSPOT_CENTER` | target=0x1071 |

### Loop `0x107B`–`0x1085`

Nearest preceding video in file order: VIDEOREF@0x1071 0x146C (FH[108]=h8_u.vdx)

Scene candidates: VIDEOREF@0x10C0 0x1496 (FH[150]=h_8bb.vdx); VIDEOREF@0x10DE 0x1499 (FH[153]=h_8fa.vdx); VIDEOREF@0x1481 0x149A (FH[154]=h_8fb.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x107C` | `HOTSPOT_CENTER_2` | target=0x1086 |
| `0x107F` | `HOTSPOT_LEFT` | target=0x10CC |
| `0x1082` | `HOTSPOT_RIGHT` | target=0x10D2 |

### Loop `0x1090`–`0x109F`

Nearest preceding video in file order: VIDEOREF@0x1086 0x146B (FH[107]=h8_1.vdx)

Scene candidates: VIDEOREF@0x10CC 0x1495 (FH[149]=h_8ba.vdx); VIDEOREF@0x10EA 0x149C (FH[156]=h_8fd.vdx); VIDEOREF@0x15D7 0x1499 (FH[153]=h_8fa.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x1096` | `HOTSPOT_CENTER` | target=0x10A0 |
| `0x1099` | `HOTSPOT_LEFT` | target=0x10D8 |
| `0x109C` | `HOTSPOT_RIGHT` | target=0x10DE |

### Loop `0x10AA`–`0x10B9`

Nearest preceding video in file order: VIDEOREF@0x10A0 0x146D (FH[109]=h8_w.vdx)

Scene candidates: VIDEOREF@0x0F83 0x145A (FH[90]=h1_8.vdx); VIDEOREF@0x10C6 0x149B (FH[155]=h_8fc.vdx); VIDEOREF@0x10D8 0x1498 (FH[152]=h_8bd.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x10B0` | `HOTSPOT_CENTER` | target=0x10BA |
| `0x10B3` | `HOTSPOT_LEFT` | target=0x10E4 |
| `0x10B6` | `HOTSPOT_RIGHT` | target=0x10EA |

### Loop `0x10F4`–`0x1103`

Nearest preceding video in file order: VIDEOREF@0x10EA 0x149C (FH[156]=h_8fd.vdx)

Scene candidates: VIDEOREF@0x114A 0x1486 (FH[134]=h_3fb.vdx); VIDEOREF@0x115C 0x1483 (FH[131]=h_3bc.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x10FA` | `HOTSPOT_CENTER` | target=0x1104 |
| `0x10FD` | `HOTSPOT_LEFT` | target=0x1138 |
| `0x1100` | `HOTSPOT_RIGHT` | target=0x113E |

### Loop `0x110A`–`0x1114`

Nearest preceding video in file order: VIDEOREF@0x1104 0x1462 (FH[98]=h3_k.vdx)

Scene candidates: VIDEOREF@0x1021 0x145D (FH[93]=h2_3.vdx); VIDEOREF@0x1138 0x1482 (FH[130]=h_3bb.vdx); VIDEOREF@0x1156 0x1485 (FH[133]=h_3fa.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x110B` | `HOTSPOT_CENTER_2` | target=0x1115 |
| `0x110E` | `HOTSPOT_LEFT` | target=0x1144 |
| `0x1111` | `HOTSPOT_RIGHT` | target=0x114A |

### Loop `0x111F`–`0x1126`

Nearest preceding video in file order: VIDEOREF@0x1115 0x1461 (FH[97]=h3_4.vdx)

Scene candidates: VIDEOREF@0x1144 0x1481 (FH[129]=h_3ba.vdx); VIDEOREF@0x1162 0x1488 (FH[136]=h_3fd.vdx); VIDEOREF@0x2C0A 0x1485 (FH[133]=h_3fa.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x1120` | `HOTSPOT_LEFT` | target=0x1150 |
| `0x1123` | `HOTSPOT_RIGHT` | target=0x1156 |

### Loop `0x1127`–`0x1131`

Nearest preceding video in file order: VIDEOREF@0x1115 0x1461 (FH[97]=h3_4.vdx)

Scene candidates: VIDEOREF@0x113E 0x1487 (FH[135]=h_3fc.vdx); VIDEOREF@0x1150 0x1484 (FH[132]=h_3bd.vdx); VIDEOREF@0x1205 0x1463 (FH[99]=h4_3.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x1128` | `HOTSPOT_CENTER_2` | target=0x1132 |
| `0x112B` | `HOTSPOT_LEFT` | target=0x115C |
| `0x112E` | `HOTSPOT_RIGHT` | target=0x1162 |

### Loop `0x116C`–`0x11B1`

Nearest preceding video in file order: VIDEOREF@0x1162 0x1488 (FH[136]=h_3fd.vdx)

Scene candidates: VIDEOREF@0x0E56 0x148F (FH[143]=h_4fc.vdx); VIDEOREF@0x121D 0x148E (FH[142]=h_4fb.vdx); VIDEOREF@0x122F 0x148B (FH[139]=h_4bc.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x116D` | `HOTSPOT_LEFT` | target=0x120B |
| `0x1170` | `HOTSPOT_RIGHT` | target=0x1211 |
| `0x11A5` | `HOTSPOT_CENTER_2` | target=0x11B2 |
| `0x11AE` | `HOTSPOT_CENTER_2` | target=0x11B2 |

### Loop `0x11BC`–`0x11C6`

Nearest preceding video in file order: VIDEOREF@0x11B2 0x1465 (FH[101]=h4_7.vdx)

Scene candidates: VIDEOREF@0x1115 0x1461 (FH[97]=h3_4.vdx); VIDEOREF@0x120B 0x148A (FH[138]=h_4bb.vdx); VIDEOREF@0x1229 0x148D (FH[141]=h_4fa.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x11BD` | `HOTSPOT_CENTER_2` | target=0x11C7 |
| `0x11C0` | `HOTSPOT_LEFT` | target=0x1217 |
| `0x11C3` | `HOTSPOT_RIGHT` | target=0x121D |

### Loop `0x11D1`–`0x11E0`

Nearest preceding video in file order: VIDEOREF@0x11C7 0x1464 (FH[100]=h4_5.vdx)

Scene candidates: VIDEOREF@0x1217 0x1489 (FH[137]=h_4ba.vdx); VIDEOREF@0x1235 0x1490 (FH[144]=h_4fd.vdx); VIDEOREF@0x12BF 0x1469 (FH[105]=h7_4.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x11D7` | `HOTSPOT_CENTER` | target=0x11E1 |
| `0x11DA` | `HOTSPOT_LEFT` | target=0x1223 |
| `0x11DD` | `HOTSPOT_RIGHT` | target=0x1229 |

### Loop `0x11FA`–`0x1204`

Nearest preceding video in file order: VIDEOREF@0x11E1 0x1466 (FH[102]=h4_m.vdx)

Scene candidates: VIDEOREF@0x1211 0x148F (FH[143]=h_4fc.vdx); VIDEOREF@0x1223 0x148C (FH[140]=h_4bd.vdx); VIDEOREF@0x126C 0x1467 (FH[103]=h5_4.vdx); VIDEOREF@0x3015 0x1490 (FH[144]=h_4fd.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x11FB` | `HOTSPOT_CENTER_2` | target=0x1205 |
| `0x11FE` | `HOTSPOT_LEFT` | target=0x122F |
| `0x1201` | `HOTSPOT_RIGHT` | target=0x1235 |

### Loop `0x123F`–`0x1250`

Nearest preceding video in file order: VIDEOREF@0x1235 0x1490 (FH[144]=h_4fd.vdx)

Scene candidates: VIDEOREF@0x11C7 0x1464 (FH[100]=h4_5.vdx); VIDEOREF@0x1266 0x1491 (FH[145]=h_5b.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x124A` | `HOTSPOT_CENTER` | target=0x1251 |
| `0x124D` | `HOTSPOT_LEFT` | target=0x1257 |

### Loop `0x125E`–`0x1265`

Nearest preceding video in file order: VIDEOREF@0x1257 0x1492 (FH[146]=h_5f.vdx)

Scene candidates: VIDEOREF@0x1257 0x1492 (FH[146]=h_5f.vdx); VIDEOREF@0x3404 0x1491 (FH[145]=h_5b.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x125F` | `HOTSPOT_RIGHT` | target=0x1266 |
| `0x1262` | `HOTSPOT_CENTER_2` | target=0x126C |

### Loop `0x1276`–`0x127D`

Nearest preceding video in file order: VIDEOREF@0x126C 0x1467 (FH[103]=h5_4.vdx)

Scene candidates: VIDEOREF@0x11B2 0x1465 (FH[101]=h4_7.vdx); VIDEOREF@0x12B9 0x1494 (FH[148]=h_7f.vdx); VIDEOREF@0x2990 0x1493 (FH[147]=h_7b.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x1277` | `HOTSPOT_LEFT` | target=0x129C |
| `0x127A` | `HOTSPOT_CENTER` | target=0x127E |

### Loop `0x128E`–`0x1292`

Nearest preceding video in file order: VIDEOREF@0x128B 0x0001 (AT[1]=as_u.vdx)

Scene candidates: VIDEOREF@0x128B 0x0001 (AT[1]=as_u.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x128F` | `HOTSPOT_CENTER_2` | target=0x15E1 |

### Loop `0x12A3`–`0x12AA`

Nearest preceding video in file order: VIDEOREF@0x129C 0x1493 (FH[147]=h_7b.vdx)

Scene candidates: VIDEOREF@0x129C 0x1493 (FH[147]=h_7b.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x12A4` | `HOTSPOT_RIGHT` | target=0x12B9 |
| `0x12A7` | `HOTSPOT_CENTER_2` | target=0x12BF |

### Loop `0x12B4`–`0x12B8`

Nearest preceding video in file order: VIDEOREF@0x12AD 0x1494 (FH[148]=h_7f.vdx)

Scene candidates: VIDEOREF@0x12AD 0x1494 (FH[148]=h_7f.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x12B5` | `HOTSPOT_CENTER_2` | target=0x12BF |

### Loop `0x12DB`–`0x130E`

Nearest preceding video in file order: VIDEOREF@0x12CB 0x2007 (HTBD[7]=htab.vdx)

Scene candidates: VIDEOREF@0x03E2 0x1403 (FH[3]=f1_6.vdx); VIDEOREF@0x04F9 0x5001 (GAMWAV[1]=1_e_2.vdx); VIDEOREF@0x0651 0x1405 (FH[5]=f1_pb.vdx); VIDEOREF@0x069B 0x1421 (FH[33]=f_1ba.vdx); VIDEOREF@0x06A1 0x1426 (FH[38]=f_1fb.vdx); VIDEOREF@0x06B3 0x1423 (FH[35]=f_1bc.vdx); VIDEOREF@0x06B9 0x1428 (FH[40]=f_1fd.vdx); VIDEOREF@0x0704 0x140A (FH[10]=f2_1.vdx); VIDEOREF@0x08A6 0x1415 (FH[21]=f5_1.vdx); VIDEOREF@0x0957 0x105F (DR[95]=dr_mi.vdx); VIDEOREF@0x09DF 0x1000 (DR[0]=come.vdx); VIDEOREF@0x09FB 0x106A (DR[106]=dr_vb.vdx); VIDEOREF@0x0A04 0x1063 (DR[99]=dr_r.vdx); VIDEOREF@0x0A1C 0x2C0C (K[12]=k_1ba.vdx); VIDEOREF@0x0A39 0x2C0E (K[14]=k_1tb.vdx); VIDEOREF@0x0AA6 0x2C0D (K[13]=k_1fa.vdx); VIDEOREF@0x0B7C 0x2C14 (K[20]=k_2fa.vdx); VIDEOREF@0x0B82 0x2C11 (K[17]=k_2bb.vdx); VIDEOREF@0x0BA8 0x2C05 (K[5]=k2_7b.vdx); VIDEOREF@0x0BE7 0x4001 (MU[1]=muab.vdx); VIDEOREF@0x0CA0 0x4002 (MU[2]=muabb.vdx); VIDEOREF@0x0CA6 0x4003 (MU[3]=mucd.vdx); VIDEOREF@0x0CB6 0x400A (MU[10]=mupib.vdx); VIDEOREF@0x0D3F 0x4007 (MU[7]=mugrb.vdx); VIDEOREF@0x0D52 0x2072 (HTBD[114]=bdab.vdx); VIDEOREF@0x0D59 0x207A (HTBD[122]=bdplb.vdx); VIDEOREF@0x0E25 0x206F (HTBD[111]=bd2p.vdx); VIDEOREF@0x0E45 0x2074 (HTBD[116]=bdcd.vdx); VIDEOREF@0x0E4B 0x2073 (HTBD[115]=bdabb.vdx); VIDEOREF@0x0F56 0x1418 (FH[24]=f6_1.vdx); VIDEOREF@0x0F89 0x1472 (FH[114]=h_1bb.vdx); VIDEOREF@0x0F9C 0x1477 (FH[119]=h_1fc.vdx); VIDEOREF@0x0FBB 0x1474 (FH[116]=h_1bd.vdx); VIDEOREF@0x0FC1 0x1475 (FH[117]=h_1fa.vdx); VIDEOREF@0x1027 0x145C (FH[92]=h2_1.vdx); VIDEOREF@0x1086 0x146B (FH[107]=h8_1.vdx); VIDEOREF@0x12CB 0x2007 (HTBD[7]=htab.vdx); VIDEOREF@0x1322 0x2004 (HTBD[4]=ht2p.vdx); VIDEOREF@0x132B 0x2008 (HTBD[8]=ht_mess.vdx); VIDEOREF@0x1337 0x2009 (HTBD[9]=htcd.vdx); VIDEOREF@0x1395 0x1808 (GA[8]=gaab.vdx); VIDEOREF@0x1456 0x1801 (GA[1]=ga1pb.vdx); VIDEOREF@0x145C 0x1801 (GA[1]=ga1pb.vdx); VIDEOREF@0x148B 0x1809 (GA[9]=gaabb.vdx); VIDEOREF@0x1491 0x180B (GA[11]=gacd.vdx); VIDEOREF@0x149D 0x2869 (JHEK[105]=jhab.vdx); VIDEOREF@0x1556 0x2877 (JHEK[119]=jhpub.vdx); VIDEOREF@0x1583 0x2875 (JHEK[117]=jhmib.vdx); VIDEOREF@0x159F 0x2875 (JHEK[117]=jhmib.vdx); VIDEOREF@0x15C5 0x286A (JHEK[106]=jhabb.vdx); VIDEOREF@0x15CB 0x286D (JHEK[109]=jhcd.vdx); VIDEOREF@0x15F4 0x4803 (P[3]=pfa.vdx); VIDEOREF@0x1635 0x480A (P[10]=pfdb.vdx); VIDEOREF@0x1661 0x4809 (P[9]=pfd.vdx); VIDEOREF@0x1672 0x480C (P[12]=pmu.vdx); VIDEOREF@0x1682 0x4807 (P[7]=pfc.vdx); VIDEOREF@0x16B3 0x4804 (P[4]=pfab.vdx); VIDEOREF@0x2185 0x3400 (LI[0]=l1_2.vdx); VIDEOREF@0x2935 0x3402 (LI[2]=l1_cb.vdx); VIDEOREF@0x29F5 0x1422 (FH[34]=f_1bb.vdx); VIDEOREF@0x2A19 0x3402 (LI[2]=l1_cb.vdx); VIDEOREF@0x2A5F 0x3428 (LI[40]=l_1ba.vdx); VIDEOREF@0x2A65 0x342B (LI[43]=l_1fc.vdx); VIDEOREF@0x2AE8 0x3406 (LI[6]=l2_3b.vdx); VIDEOREF@0x2AFB 0x342F (LI[47]=l_2bd.vdx); VIDEOREF@0x2B4D 0x3432 (LI[50]=l_2fc.vdx); VIDEOREF@0x2B5F 0x342F (LI[47]=l_2bd.vdx); VIDEOREF@0x2D0C 0x2881 (JHEK[129]=ekab.vdx); VIDEOREF@0x2D99 0x287B (JHEK[123]=ek1pb.vdx); VIDEOREF@0x2D9F 0x287B (JHEK[123]=ek1pb.vdx); VIDEOREF@0x2DCE 0x288C (JHEK[140]=ekmbb.vdx); VIDEOREF@0x2DD7 0x2883 (JHEK[131]=ekbc.vdx); VIDEOREF@0x2E24 0x2887 (JHEK[135]=ekcd.vdx); VIDEOREF@0x2E2D 0x2882 (JHEK[130]=ekabb.vdx); VIDEOREF@0x2E33 0x2888 (JHEK[136]=ekcdb.vdx); VIDEOREF@0x2E50 0x0807 (CH[7]=chab.vdx); VIDEOREF@0x2EB2 0x080A (CH[10]=chcd.vdx); VIDEOREF@0x2EB8 0x0808 (CH[8]=chabb.vdx); VIDEOREF@0x2ECC 0x0811 (CH[17]=chpub.vdx); VIDEOREF@0x2ED2 0x0809 (CH[9]=chal.vdx); VIDEOREF@0x2F34 0x080F (CH[15]=chorb.vdx); VIDEOREF@0x2F4A 0x4406 (N[6]=nab.vdx); VIDEOREF@0x3004 0x4408 (N[8]=ncd.vdx); VIDEOREF@0x300A 0x4407 (N[7]=nabb.vdx); VIDEOREF@0x301B 0x440A (N[10]=ncri.vdx); VIDEOREF@0x303C 0x440B (N[11]=ncrib.vdx); VIDEOREF@0x3074 0x4410 (N[16]=njacb.vdx); VIDEOREF@0x3084 0x4412 (N[18]=npuzb.vdx); VIDEOREF@0x3096 0x3010 (LA[16]=la_1fa.vdx); VIDEOREF@0x3165 0x300C (LA[12]=la_1ba.vdx); VIDEOREF@0x318F 0x3013 (LA[19]=la_1fd.vdx); VIDEOREF@0x3254 0x3803 (MB[3]=mbab.vdx); VIDEOREF@0x325C 0x383D (MB[61]=mb_warp.vdx); VIDEOREF@0x32BE 0x383F (MB[63]=sexbed.vdx); VIDEOREF@0x32F4 0x3809 (MB[9]=mbpub.vdx); VIDEOREF@0x330E 0x3804 (MB[4]=mbabb.vdx); VIDEOREF@0x3314 0x3805 (MB[5]=mbcd.vdx); VIDEOREF@0x3345 0x0C09 (D[9]=d_1fa.vdx); VIDEOREF@0x33D0 0x0C03 (D[3]=d1_3b.vdx); VIDEOREF@0x33F3 0x0C07 (D[7]=d_1ba.vdx); VIDEOREF@0x33F9 0x0C0A (D[10]=d_1fc.vdx); VIDEOREF@0x3944 0x2875 (JHEK[117]=jhmib.vdx); VIDEOREF@0x39BA 0x383D (MB[61]=mb_warp.vdx); VIDEOREF@0x3ABA 0x1426 (FH[38]=f_1fb.vdx); VIDEOREF@0x3AEC 0x2C05 (K[5]=k2_7b.vdx); VIDEOREF@0x3B22 0x2C0E (K[14]=k_1tb.vdx); VIDEOREF@0x3B88 0x1405 (FH[5]=f1_pb.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x12E2` | `HOTSPOT_BOTTOM_4` | target=0x3912 |
| `0x12EA` | `HOTSPOT_RECT` | left=0x021C, top=0x014A, right=0x027F, bottom=0x018F, target=0x131C, cursor=0x06 |
| `0x12FC` | `HOTSPOT_RECT` | left=0x021C, top=0x014A, right=0x027F, bottom=0x018F, target=0x131C, cursor=0x06 |
| `0x1308` | `HOTSPOT_LEFT` | target=0x1331 |
| `0x130B` | `HOTSPOT_RIGHT` | target=0x133D |

### Loop `0x1340`–`0x136B`

Nearest preceding video in file order: VIDEOREF@0x133D 0x2007 (HTBD[7]=htab.vdx)

Scene candidates: VIDEOREF@0x1331 0x200A (HTBD[10]=htcdb.vdx); VIDEOREF@0x133D 0x2007 (HTBD[7]=htab.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x1341` | `HOTSPOT_RECT` | left=0x002D, top=0x00AA, right=0x0088, bottom=0x0158, target=0x136C, cursor=0x03 |
| `0x134D` | `HOTSPOT_RECT` | left=0x00BA, top=0x00AA, right=0x0115, bottom=0x0158, target=0x1379, cursor=0x03 |
| `0x1359` | `HOTSPOT_RECT` | left=0x01F5, top=0x00AA, right=0x024F, bottom=0x0158, target=0x1388, cursor=0x03 |
| `0x1365` | `HOTSPOT_RIGHT` | target=0x1337 |
| `0x1368` | `HOTSPOT_LEFT` | target=0x132B |

### Loop `0x13BB`–`0x141E`

Nearest preceding video in file order: VIDEOREF@0x1395 0x1808 (GA[8]=gaab.vdx)

Scene candidates: VIDEOREF@0x03E2 0x1403 (FH[3]=f1_6.vdx); VIDEOREF@0x04F9 0x5001 (GAMWAV[1]=1_e_2.vdx); VIDEOREF@0x0651 0x1405 (FH[5]=f1_pb.vdx); VIDEOREF@0x069B 0x1421 (FH[33]=f_1ba.vdx); VIDEOREF@0x06A1 0x1426 (FH[38]=f_1fb.vdx); VIDEOREF@0x06B3 0x1423 (FH[35]=f_1bc.vdx); VIDEOREF@0x06B9 0x1428 (FH[40]=f_1fd.vdx); VIDEOREF@0x0704 0x140A (FH[10]=f2_1.vdx); VIDEOREF@0x08A6 0x1415 (FH[21]=f5_1.vdx); VIDEOREF@0x0957 0x105F (DR[95]=dr_mi.vdx); VIDEOREF@0x09DF 0x1000 (DR[0]=come.vdx); VIDEOREF@0x09FB 0x106A (DR[106]=dr_vb.vdx); VIDEOREF@0x0A04 0x1063 (DR[99]=dr_r.vdx); VIDEOREF@0x0A1C 0x2C0C (K[12]=k_1ba.vdx); VIDEOREF@0x0A39 0x2C0E (K[14]=k_1tb.vdx); VIDEOREF@0x0AA6 0x2C0D (K[13]=k_1fa.vdx); VIDEOREF@0x0B7C 0x2C14 (K[20]=k_2fa.vdx); VIDEOREF@0x0B82 0x2C11 (K[17]=k_2bb.vdx); VIDEOREF@0x0BA8 0x2C05 (K[5]=k2_7b.vdx); VIDEOREF@0x0BE7 0x4001 (MU[1]=muab.vdx); VIDEOREF@0x0CA0 0x4002 (MU[2]=muabb.vdx); VIDEOREF@0x0CA6 0x4003 (MU[3]=mucd.vdx); VIDEOREF@0x0CB6 0x400A (MU[10]=mupib.vdx); VIDEOREF@0x0D3F 0x4007 (MU[7]=mugrb.vdx); VIDEOREF@0x0D52 0x2072 (HTBD[114]=bdab.vdx); VIDEOREF@0x0D59 0x207A (HTBD[122]=bdplb.vdx); VIDEOREF@0x0E25 0x206F (HTBD[111]=bd2p.vdx); VIDEOREF@0x0E45 0x2074 (HTBD[116]=bdcd.vdx); VIDEOREF@0x0E4B 0x2073 (HTBD[115]=bdabb.vdx); VIDEOREF@0x0F56 0x1418 (FH[24]=f6_1.vdx); VIDEOREF@0x0F89 0x1472 (FH[114]=h_1bb.vdx); VIDEOREF@0x0F9C 0x1477 (FH[119]=h_1fc.vdx); VIDEOREF@0x0FBB 0x1474 (FH[116]=h_1bd.vdx); VIDEOREF@0x0FC1 0x1475 (FH[117]=h_1fa.vdx); VIDEOREF@0x1027 0x145C (FH[92]=h2_1.vdx); VIDEOREF@0x1086 0x146B (FH[107]=h8_1.vdx); VIDEOREF@0x12CB 0x2007 (HTBD[7]=htab.vdx); VIDEOREF@0x1322 0x2004 (HTBD[4]=ht2p.vdx); VIDEOREF@0x132B 0x2008 (HTBD[8]=ht_mess.vdx); VIDEOREF@0x1337 0x2009 (HTBD[9]=htcd.vdx); VIDEOREF@0x1395 0x1808 (GA[8]=gaab.vdx); VIDEOREF@0x1456 0x1801 (GA[1]=ga1pb.vdx); VIDEOREF@0x145C 0x1801 (GA[1]=ga1pb.vdx); VIDEOREF@0x148B 0x1809 (GA[9]=gaabb.vdx); VIDEOREF@0x1491 0x180B (GA[11]=gacd.vdx); VIDEOREF@0x149D 0x2869 (JHEK[105]=jhab.vdx); VIDEOREF@0x1556 0x2877 (JHEK[119]=jhpub.vdx); VIDEOREF@0x1583 0x2875 (JHEK[117]=jhmib.vdx); VIDEOREF@0x159F 0x2875 (JHEK[117]=jhmib.vdx); VIDEOREF@0x15C5 0x286A (JHEK[106]=jhabb.vdx); VIDEOREF@0x15CB 0x286D (JHEK[109]=jhcd.vdx); VIDEOREF@0x15F4 0x4803 (P[3]=pfa.vdx); VIDEOREF@0x1635 0x480A (P[10]=pfdb.vdx); VIDEOREF@0x1661 0x4809 (P[9]=pfd.vdx); VIDEOREF@0x1672 0x480C (P[12]=pmu.vdx); VIDEOREF@0x1682 0x4807 (P[7]=pfc.vdx); VIDEOREF@0x16B3 0x4804 (P[4]=pfab.vdx); VIDEOREF@0x2185 0x3400 (LI[0]=l1_2.vdx); VIDEOREF@0x2935 0x3402 (LI[2]=l1_cb.vdx); VIDEOREF@0x29F5 0x1422 (FH[34]=f_1bb.vdx); VIDEOREF@0x2A19 0x3402 (LI[2]=l1_cb.vdx); VIDEOREF@0x2A5F 0x3428 (LI[40]=l_1ba.vdx); VIDEOREF@0x2A65 0x342B (LI[43]=l_1fc.vdx); VIDEOREF@0x2AE8 0x3406 (LI[6]=l2_3b.vdx); VIDEOREF@0x2AFB 0x342F (LI[47]=l_2bd.vdx); VIDEOREF@0x2B4D 0x3432 (LI[50]=l_2fc.vdx); VIDEOREF@0x2B5F 0x342F (LI[47]=l_2bd.vdx); VIDEOREF@0x2D0C 0x2881 (JHEK[129]=ekab.vdx); VIDEOREF@0x2D99 0x287B (JHEK[123]=ek1pb.vdx); VIDEOREF@0x2D9F 0x287B (JHEK[123]=ek1pb.vdx); VIDEOREF@0x2DCE 0x288C (JHEK[140]=ekmbb.vdx); VIDEOREF@0x2DD7 0x2883 (JHEK[131]=ekbc.vdx); VIDEOREF@0x2E24 0x2887 (JHEK[135]=ekcd.vdx); VIDEOREF@0x2E2D 0x2882 (JHEK[130]=ekabb.vdx); VIDEOREF@0x2E33 0x2888 (JHEK[136]=ekcdb.vdx); VIDEOREF@0x2E50 0x0807 (CH[7]=chab.vdx); VIDEOREF@0x2EB2 0x080A (CH[10]=chcd.vdx); VIDEOREF@0x2EB8 0x0808 (CH[8]=chabb.vdx); VIDEOREF@0x2ECC 0x0811 (CH[17]=chpub.vdx); VIDEOREF@0x2ED2 0x0809 (CH[9]=chal.vdx); VIDEOREF@0x2F34 0x080F (CH[15]=chorb.vdx); VIDEOREF@0x2F4A 0x4406 (N[6]=nab.vdx); VIDEOREF@0x3004 0x4408 (N[8]=ncd.vdx); VIDEOREF@0x300A 0x4407 (N[7]=nabb.vdx); VIDEOREF@0x301B 0x440A (N[10]=ncri.vdx); VIDEOREF@0x303C 0x440B (N[11]=ncrib.vdx); VIDEOREF@0x3074 0x4410 (N[16]=njacb.vdx); VIDEOREF@0x3084 0x4412 (N[18]=npuzb.vdx); VIDEOREF@0x3096 0x3010 (LA[16]=la_1fa.vdx); VIDEOREF@0x3165 0x300C (LA[12]=la_1ba.vdx); VIDEOREF@0x318F 0x3013 (LA[19]=la_1fd.vdx); VIDEOREF@0x3254 0x3803 (MB[3]=mbab.vdx); VIDEOREF@0x325C 0x383D (MB[61]=mb_warp.vdx); VIDEOREF@0x32BE 0x383F (MB[63]=sexbed.vdx); VIDEOREF@0x32F4 0x3809 (MB[9]=mbpub.vdx); VIDEOREF@0x330E 0x3804 (MB[4]=mbabb.vdx); VIDEOREF@0x3314 0x3805 (MB[5]=mbcd.vdx); VIDEOREF@0x3345 0x0C09 (D[9]=d_1fa.vdx); VIDEOREF@0x33D0 0x0C03 (D[3]=d1_3b.vdx); VIDEOREF@0x33F3 0x0C07 (D[7]=d_1ba.vdx); VIDEOREF@0x33F9 0x0C0A (D[10]=d_1fc.vdx); VIDEOREF@0x3944 0x2875 (JHEK[117]=jhmib.vdx); VIDEOREF@0x39BA 0x383D (MB[61]=mb_warp.vdx); VIDEOREF@0x3ABA 0x1426 (FH[38]=f_1fb.vdx); VIDEOREF@0x3AEC 0x2C05 (K[5]=k2_7b.vdx); VIDEOREF@0x3B22 0x2C0E (K[14]=k_1tb.vdx); VIDEOREF@0x3B88 0x1405 (FH[5]=f1_pb.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x13C2` | `HOTSPOT_BOTTOM_4` | target=0x3912 |
| `0x13C5` | `HOTSPOT_RIGHT` | target=0x1468 |
| `0x13CD` | `HOTSPOT_RECT` | left=0x01A3, top=0x00F8, right=0x027F, bottom=0x0144, target=0x1431, cursor=0x07 |
| `0x13E3` | `HOTSPOT_RECT` | left=0x0000, top=0x010B, right=0x0082, bottom=0x017E, target=0x143B, cursor=0x06 |
| `0x13F5` | `HOTSPOT_RECT` | left=0x0000, top=0x010B, right=0x0082, bottom=0x017E, target=0x143B, cursor=0x06 |
| `0x1406` | `HOTSPOT_RECT` | left=0x00DF, top=0x009E, right=0x0101, bottom=0x00D5, target=0x141F, cursor=0x04 |
| `0x1412` | `HOTSPOT_LEFT` | target=0x146E |
| `0x141B` | `HOTSPOT_BOTTOM_4` | target=0x3912 |

### Loop `0x1471`–`0x147B`

Nearest preceding video in file order: VIDEOREF@0x146E 0x180C (GA[12]=gacdb.vdx)

Scene candidates: VIDEOREF@0x1468 0x1808 (GA[8]=gaab.vdx); VIDEOREF@0x146E 0x180C (GA[12]=gacdb.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x1472` | `HOTSPOT_RIGHT` | target=0x1491 |
| `0x1475` | `HOTSPOT_CENTER` | target=0x147C |
| `0x1478` | `HOTSPOT_LEFT` | target=0x148B |

### Loop `0x14CC`–`0x1531`

Nearest preceding video in file order: VIDEOREF@0x149D 0x2869 (JHEK[105]=jhab.vdx)

Scene candidates: VIDEOREF@0x03E2 0x1403 (FH[3]=f1_6.vdx); VIDEOREF@0x04F9 0x5001 (GAMWAV[1]=1_e_2.vdx); VIDEOREF@0x0651 0x1405 (FH[5]=f1_pb.vdx); VIDEOREF@0x069B 0x1421 (FH[33]=f_1ba.vdx); VIDEOREF@0x06A1 0x1426 (FH[38]=f_1fb.vdx); VIDEOREF@0x06B3 0x1423 (FH[35]=f_1bc.vdx); VIDEOREF@0x06B9 0x1428 (FH[40]=f_1fd.vdx); VIDEOREF@0x0704 0x140A (FH[10]=f2_1.vdx); VIDEOREF@0x08A6 0x1415 (FH[21]=f5_1.vdx); VIDEOREF@0x0957 0x105F (DR[95]=dr_mi.vdx); VIDEOREF@0x09DF 0x1000 (DR[0]=come.vdx); VIDEOREF@0x09FB 0x106A (DR[106]=dr_vb.vdx); VIDEOREF@0x0A04 0x1063 (DR[99]=dr_r.vdx); VIDEOREF@0x0A1C 0x2C0C (K[12]=k_1ba.vdx); VIDEOREF@0x0A39 0x2C0E (K[14]=k_1tb.vdx); VIDEOREF@0x0AA6 0x2C0D (K[13]=k_1fa.vdx); VIDEOREF@0x0B7C 0x2C14 (K[20]=k_2fa.vdx); VIDEOREF@0x0B82 0x2C11 (K[17]=k_2bb.vdx); VIDEOREF@0x0BA8 0x2C05 (K[5]=k2_7b.vdx); VIDEOREF@0x0BE7 0x4001 (MU[1]=muab.vdx); VIDEOREF@0x0CA0 0x4002 (MU[2]=muabb.vdx); VIDEOREF@0x0CA6 0x4003 (MU[3]=mucd.vdx); VIDEOREF@0x0CB6 0x400A (MU[10]=mupib.vdx); VIDEOREF@0x0D3F 0x4007 (MU[7]=mugrb.vdx); VIDEOREF@0x0D52 0x2072 (HTBD[114]=bdab.vdx); VIDEOREF@0x0D59 0x207A (HTBD[122]=bdplb.vdx); VIDEOREF@0x0E25 0x206F (HTBD[111]=bd2p.vdx); VIDEOREF@0x0E45 0x2074 (HTBD[116]=bdcd.vdx); VIDEOREF@0x0E4B 0x2073 (HTBD[115]=bdabb.vdx); VIDEOREF@0x0F56 0x1418 (FH[24]=f6_1.vdx); VIDEOREF@0x0F89 0x1472 (FH[114]=h_1bb.vdx); VIDEOREF@0x0F9C 0x1477 (FH[119]=h_1fc.vdx); VIDEOREF@0x0FBB 0x1474 (FH[116]=h_1bd.vdx); VIDEOREF@0x0FC1 0x1475 (FH[117]=h_1fa.vdx); VIDEOREF@0x1027 0x145C (FH[92]=h2_1.vdx); VIDEOREF@0x1086 0x146B (FH[107]=h8_1.vdx); VIDEOREF@0x12CB 0x2007 (HTBD[7]=htab.vdx); VIDEOREF@0x1322 0x2004 (HTBD[4]=ht2p.vdx); VIDEOREF@0x132B 0x2008 (HTBD[8]=ht_mess.vdx); VIDEOREF@0x1337 0x2009 (HTBD[9]=htcd.vdx); VIDEOREF@0x1395 0x1808 (GA[8]=gaab.vdx); VIDEOREF@0x1456 0x1801 (GA[1]=ga1pb.vdx); VIDEOREF@0x145C 0x1801 (GA[1]=ga1pb.vdx); VIDEOREF@0x148B 0x1809 (GA[9]=gaabb.vdx); VIDEOREF@0x1491 0x180B (GA[11]=gacd.vdx); VIDEOREF@0x149D 0x2869 (JHEK[105]=jhab.vdx); VIDEOREF@0x1556 0x2877 (JHEK[119]=jhpub.vdx); VIDEOREF@0x1583 0x2875 (JHEK[117]=jhmib.vdx); VIDEOREF@0x159F 0x2875 (JHEK[117]=jhmib.vdx); VIDEOREF@0x15C5 0x286A (JHEK[106]=jhabb.vdx); VIDEOREF@0x15CB 0x286D (JHEK[109]=jhcd.vdx); VIDEOREF@0x15F4 0x4803 (P[3]=pfa.vdx); VIDEOREF@0x1635 0x480A (P[10]=pfdb.vdx); VIDEOREF@0x1661 0x4809 (P[9]=pfd.vdx); VIDEOREF@0x1672 0x480C (P[12]=pmu.vdx); VIDEOREF@0x1682 0x4807 (P[7]=pfc.vdx); VIDEOREF@0x16B3 0x4804 (P[4]=pfab.vdx); VIDEOREF@0x2185 0x3400 (LI[0]=l1_2.vdx); VIDEOREF@0x2935 0x3402 (LI[2]=l1_cb.vdx); VIDEOREF@0x29F5 0x1422 (FH[34]=f_1bb.vdx); VIDEOREF@0x2A19 0x3402 (LI[2]=l1_cb.vdx); VIDEOREF@0x2A5F 0x3428 (LI[40]=l_1ba.vdx); VIDEOREF@0x2A65 0x342B (LI[43]=l_1fc.vdx); VIDEOREF@0x2AE8 0x3406 (LI[6]=l2_3b.vdx); VIDEOREF@0x2AFB 0x342F (LI[47]=l_2bd.vdx); VIDEOREF@0x2B4D 0x3432 (LI[50]=l_2fc.vdx); VIDEOREF@0x2B5F 0x342F (LI[47]=l_2bd.vdx); VIDEOREF@0x2D0C 0x2881 (JHEK[129]=ekab.vdx); VIDEOREF@0x2D99 0x287B (JHEK[123]=ek1pb.vdx); VIDEOREF@0x2D9F 0x287B (JHEK[123]=ek1pb.vdx); VIDEOREF@0x2DCE 0x288C (JHEK[140]=ekmbb.vdx); VIDEOREF@0x2DD7 0x2883 (JHEK[131]=ekbc.vdx); VIDEOREF@0x2E24 0x2887 (JHEK[135]=ekcd.vdx); VIDEOREF@0x2E2D 0x2882 (JHEK[130]=ekabb.vdx); VIDEOREF@0x2E33 0x2888 (JHEK[136]=ekcdb.vdx); VIDEOREF@0x2E50 0x0807 (CH[7]=chab.vdx); VIDEOREF@0x2EB2 0x080A (CH[10]=chcd.vdx); VIDEOREF@0x2EB8 0x0808 (CH[8]=chabb.vdx); VIDEOREF@0x2ECC 0x0811 (CH[17]=chpub.vdx); VIDEOREF@0x2ED2 0x0809 (CH[9]=chal.vdx); VIDEOREF@0x2F34 0x080F (CH[15]=chorb.vdx); VIDEOREF@0x2F4A 0x4406 (N[6]=nab.vdx); VIDEOREF@0x3004 0x4408 (N[8]=ncd.vdx); VIDEOREF@0x300A 0x4407 (N[7]=nabb.vdx); VIDEOREF@0x301B 0x440A (N[10]=ncri.vdx); VIDEOREF@0x303C 0x440B (N[11]=ncrib.vdx); VIDEOREF@0x3074 0x4410 (N[16]=njacb.vdx); VIDEOREF@0x3084 0x4412 (N[18]=npuzb.vdx); VIDEOREF@0x3096 0x3010 (LA[16]=la_1fa.vdx); VIDEOREF@0x3165 0x300C (LA[12]=la_1ba.vdx); VIDEOREF@0x318F 0x3013 (LA[19]=la_1fd.vdx); VIDEOREF@0x3254 0x3803 (MB[3]=mbab.vdx); VIDEOREF@0x325C 0x383D (MB[61]=mb_warp.vdx); VIDEOREF@0x32BE 0x383F (MB[63]=sexbed.vdx); VIDEOREF@0x32F4 0x3809 (MB[9]=mbpub.vdx); VIDEOREF@0x330E 0x3804 (MB[4]=mbabb.vdx); VIDEOREF@0x3314 0x3805 (MB[5]=mbcd.vdx); VIDEOREF@0x3345 0x0C09 (D[9]=d_1fa.vdx); VIDEOREF@0x33D0 0x0C03 (D[3]=d1_3b.vdx); VIDEOREF@0x33F3 0x0C07 (D[7]=d_1ba.vdx); VIDEOREF@0x33F9 0x0C0A (D[10]=d_1fc.vdx); VIDEOREF@0x3944 0x2875 (JHEK[117]=jhmib.vdx); VIDEOREF@0x39BA 0x383D (MB[61]=mb_warp.vdx); VIDEOREF@0x3ABA 0x1426 (FH[38]=f_1fb.vdx); VIDEOREF@0x3AEC 0x2C05 (K[5]=k2_7b.vdx); VIDEOREF@0x3B22 0x2C0E (K[14]=k_1tb.vdx); VIDEOREF@0x3B88 0x1405 (FH[5]=f1_pb.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x14D3` | `HOTSPOT_BOTTOM_4` | target=0x3912 |
| `0x14DC` | `HOTSPOT_BOTTOM_4` | target=0x3912 |
| `0x14E5` | `HOTSPOT_BOTTOM_4` | target=0x3912 |
| `0x14ED` | `HOTSPOT_RECT` | left=0x0032, top=0x0050, right=0x00C0, bottom=0x0147, target=0x155C, cursor=0x04 |
| `0x14FC` | `HOTSPOT_RECT` | left=0x0032, top=0x0050, right=0x00C0, bottom=0x0147, target=0x155C, cursor=0x00 |
| `0x150D` | `HOTSPOT_RECT` | left=0x014A, top=0x015C, right=0x027F, bottom=0x018F, target=0x1532, cursor=0x06 |
| `0x151F` | `HOTSPOT_RECT` | left=0x014A, top=0x015C, right=0x027F, bottom=0x018F, target=0x1532, cursor=0x06 |
| `0x152B` | `HOTSPOT_LEFT` | target=0x15A5 |
| `0x152E` | `HOTSPOT_RIGHT` | target=0x15AB |

### Loop `0x1597`–`0x159E`

Nearest preceding video in file order: VIDEOREF@0x1583 0x2875 (JHEK[117]=jhmib.vdx)

Scene candidates: VIDEOREF@0x155C 0x2874 (JHEK[116]=jhmi.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x1598` | `HOTSPOT_LEFT` | target=0x159F |
| `0x159B` | `HOTSPOT_RIGHT` | target=0x159F |

### Loop `0x15B1`–`0x15C4`

Nearest preceding video in file order: VIDEOREF@0x15AB 0x2869 (JHEK[105]=jhab.vdx)

Scene candidates: VIDEOREF@0x15A5 0x286E (JHEK[110]=jhcdb.vdx); VIDEOREF@0x15AB 0x2869 (JHEK[105]=jhab.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x15B2` | `HOTSPOT_RECT` | left=0x01D2, top=0x0065, right=0x0257, bottom=0x0176, target=0x15D1, cursor=0x00 |
| `0x15BE` | `HOTSPOT_RIGHT` | target=0x15CB |
| `0x15C1` | `HOTSPOT_LEFT` | target=0x15C5 |

### Loop `0x1606`–`0x162E`

Nearest preceding video in file order: VIDEOREF@0x15F4 0x4803 (P[3]=pfa.vdx)

Scene candidates: VIDEOREF@0x03E2 0x1403 (FH[3]=f1_6.vdx); VIDEOREF@0x04F9 0x5001 (GAMWAV[1]=1_e_2.vdx); VIDEOREF@0x0651 0x1405 (FH[5]=f1_pb.vdx); VIDEOREF@0x069B 0x1421 (FH[33]=f_1ba.vdx); VIDEOREF@0x06A1 0x1426 (FH[38]=f_1fb.vdx); VIDEOREF@0x06B3 0x1423 (FH[35]=f_1bc.vdx); VIDEOREF@0x06B9 0x1428 (FH[40]=f_1fd.vdx); VIDEOREF@0x0704 0x140A (FH[10]=f2_1.vdx); VIDEOREF@0x08A6 0x1415 (FH[21]=f5_1.vdx); VIDEOREF@0x0957 0x105F (DR[95]=dr_mi.vdx); VIDEOREF@0x09DF 0x1000 (DR[0]=come.vdx); VIDEOREF@0x09FB 0x106A (DR[106]=dr_vb.vdx); VIDEOREF@0x0A04 0x1063 (DR[99]=dr_r.vdx); VIDEOREF@0x0A1C 0x2C0C (K[12]=k_1ba.vdx); VIDEOREF@0x0A39 0x2C0E (K[14]=k_1tb.vdx); VIDEOREF@0x0AA6 0x2C0D (K[13]=k_1fa.vdx); VIDEOREF@0x0B7C 0x2C14 (K[20]=k_2fa.vdx); VIDEOREF@0x0B82 0x2C11 (K[17]=k_2bb.vdx); VIDEOREF@0x0BA8 0x2C05 (K[5]=k2_7b.vdx); VIDEOREF@0x0BE7 0x4001 (MU[1]=muab.vdx); VIDEOREF@0x0CA0 0x4002 (MU[2]=muabb.vdx); VIDEOREF@0x0CA6 0x4003 (MU[3]=mucd.vdx); VIDEOREF@0x0CB6 0x400A (MU[10]=mupib.vdx); VIDEOREF@0x0D3F 0x4007 (MU[7]=mugrb.vdx); VIDEOREF@0x0D52 0x2072 (HTBD[114]=bdab.vdx); VIDEOREF@0x0D59 0x207A (HTBD[122]=bdplb.vdx); VIDEOREF@0x0E25 0x206F (HTBD[111]=bd2p.vdx); VIDEOREF@0x0E45 0x2074 (HTBD[116]=bdcd.vdx); VIDEOREF@0x0E4B 0x2073 (HTBD[115]=bdabb.vdx); VIDEOREF@0x0F56 0x1418 (FH[24]=f6_1.vdx); VIDEOREF@0x0F89 0x1472 (FH[114]=h_1bb.vdx); VIDEOREF@0x0F9C 0x1477 (FH[119]=h_1fc.vdx); VIDEOREF@0x0FBB 0x1474 (FH[116]=h_1bd.vdx); VIDEOREF@0x0FC1 0x1475 (FH[117]=h_1fa.vdx); VIDEOREF@0x1027 0x145C (FH[92]=h2_1.vdx); VIDEOREF@0x1086 0x146B (FH[107]=h8_1.vdx); VIDEOREF@0x12CB 0x2007 (HTBD[7]=htab.vdx); VIDEOREF@0x1322 0x2004 (HTBD[4]=ht2p.vdx); VIDEOREF@0x132B 0x2008 (HTBD[8]=ht_mess.vdx); VIDEOREF@0x1337 0x2009 (HTBD[9]=htcd.vdx); VIDEOREF@0x1395 0x1808 (GA[8]=gaab.vdx); VIDEOREF@0x1456 0x1801 (GA[1]=ga1pb.vdx); VIDEOREF@0x145C 0x1801 (GA[1]=ga1pb.vdx); VIDEOREF@0x148B 0x1809 (GA[9]=gaabb.vdx); VIDEOREF@0x1491 0x180B (GA[11]=gacd.vdx); VIDEOREF@0x149D 0x2869 (JHEK[105]=jhab.vdx); VIDEOREF@0x1556 0x2877 (JHEK[119]=jhpub.vdx); VIDEOREF@0x1583 0x2875 (JHEK[117]=jhmib.vdx); VIDEOREF@0x159F 0x2875 (JHEK[117]=jhmib.vdx); VIDEOREF@0x15C5 0x286A (JHEK[106]=jhabb.vdx); VIDEOREF@0x15CB 0x286D (JHEK[109]=jhcd.vdx); VIDEOREF@0x15F4 0x4803 (P[3]=pfa.vdx); VIDEOREF@0x1635 0x480A (P[10]=pfdb.vdx); VIDEOREF@0x1661 0x4809 (P[9]=pfd.vdx); VIDEOREF@0x1672 0x480C (P[12]=pmu.vdx); VIDEOREF@0x1682 0x4807 (P[7]=pfc.vdx); VIDEOREF@0x16B3 0x4804 (P[4]=pfab.vdx); VIDEOREF@0x2185 0x3400 (LI[0]=l1_2.vdx); VIDEOREF@0x2935 0x3402 (LI[2]=l1_cb.vdx); VIDEOREF@0x29F5 0x1422 (FH[34]=f_1bb.vdx); VIDEOREF@0x2A19 0x3402 (LI[2]=l1_cb.vdx); VIDEOREF@0x2A5F 0x3428 (LI[40]=l_1ba.vdx); VIDEOREF@0x2A65 0x342B (LI[43]=l_1fc.vdx); VIDEOREF@0x2AE8 0x3406 (LI[6]=l2_3b.vdx); VIDEOREF@0x2AFB 0x342F (LI[47]=l_2bd.vdx); VIDEOREF@0x2B4D 0x3432 (LI[50]=l_2fc.vdx); VIDEOREF@0x2B5F 0x342F (LI[47]=l_2bd.vdx); VIDEOREF@0x2D0C 0x2881 (JHEK[129]=ekab.vdx); VIDEOREF@0x2D99 0x287B (JHEK[123]=ek1pb.vdx); VIDEOREF@0x2D9F 0x287B (JHEK[123]=ek1pb.vdx); VIDEOREF@0x2DCE 0x288C (JHEK[140]=ekmbb.vdx); VIDEOREF@0x2DD7 0x2883 (JHEK[131]=ekbc.vdx); VIDEOREF@0x2E24 0x2887 (JHEK[135]=ekcd.vdx); VIDEOREF@0x2E2D 0x2882 (JHEK[130]=ekabb.vdx); VIDEOREF@0x2E33 0x2888 (JHEK[136]=ekcdb.vdx); VIDEOREF@0x2E50 0x0807 (CH[7]=chab.vdx); VIDEOREF@0x2EB2 0x080A (CH[10]=chcd.vdx); VIDEOREF@0x2EB8 0x0808 (CH[8]=chabb.vdx); VIDEOREF@0x2ECC 0x0811 (CH[17]=chpub.vdx); VIDEOREF@0x2ED2 0x0809 (CH[9]=chal.vdx); VIDEOREF@0x2F34 0x080F (CH[15]=chorb.vdx); VIDEOREF@0x2F4A 0x4406 (N[6]=nab.vdx); VIDEOREF@0x3004 0x4408 (N[8]=ncd.vdx); VIDEOREF@0x300A 0x4407 (N[7]=nabb.vdx); VIDEOREF@0x301B 0x440A (N[10]=ncri.vdx); VIDEOREF@0x303C 0x440B (N[11]=ncrib.vdx); VIDEOREF@0x3074 0x4410 (N[16]=njacb.vdx); VIDEOREF@0x3084 0x4412 (N[18]=npuzb.vdx); VIDEOREF@0x3096 0x3010 (LA[16]=la_1fa.vdx); VIDEOREF@0x3165 0x300C (LA[12]=la_1ba.vdx); VIDEOREF@0x318F 0x3013 (LA[19]=la_1fd.vdx); VIDEOREF@0x3254 0x3803 (MB[3]=mbab.vdx); VIDEOREF@0x325C 0x383D (MB[61]=mb_warp.vdx); VIDEOREF@0x32BE 0x383F (MB[63]=sexbed.vdx); VIDEOREF@0x32F4 0x3809 (MB[9]=mbpub.vdx); VIDEOREF@0x330E 0x3804 (MB[4]=mbabb.vdx); VIDEOREF@0x3314 0x3805 (MB[5]=mbcd.vdx); VIDEOREF@0x3345 0x0C09 (D[9]=d_1fa.vdx); VIDEOREF@0x33D0 0x0C03 (D[3]=d1_3b.vdx); VIDEOREF@0x33F3 0x0C07 (D[7]=d_1ba.vdx); VIDEOREF@0x33F9 0x0C0A (D[10]=d_1fc.vdx); VIDEOREF@0x3944 0x2875 (JHEK[117]=jhmib.vdx); VIDEOREF@0x39BA 0x383D (MB[61]=mb_warp.vdx); VIDEOREF@0x3ABA 0x1426 (FH[38]=f_1fb.vdx); VIDEOREF@0x3AEC 0x2C05 (K[5]=k2_7b.vdx); VIDEOREF@0x3B22 0x2C0E (K[14]=k_1tb.vdx); VIDEOREF@0x3B88 0x1405 (FH[5]=f1_pb.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x1607` | `HOTSPOT_RECT` | left=0x0027, top=0x0055, right=0x00F8, bottom=0x00FF, target=0x16E6, cursor=0x04 |
| `0x1613` | `HOTSPOT_RECT` | left=0x0206, top=0x00BA, right=0x023E, bottom=0x0104, target=0x16F3, cursor=0x04 |
| `0x161F` | `HOTSPOT_RIGHT` | target=0x162F |
| `0x1622` | `HOTSPOT_LEFT` | target=0x1635 |
| `0x162B` | `HOTSPOT_BOTTOM_4` | target=0x3912 |

### Loop `0x164A`–`0x165A`

Nearest preceding video in file order: VIDEOREF@0x1635 0x480A (P[10]=pfdb.vdx)

Scene candidates: VIDEOREF@0x03E2 0x1403 (FH[3]=f1_6.vdx); VIDEOREF@0x04F9 0x5001 (GAMWAV[1]=1_e_2.vdx); VIDEOREF@0x0651 0x1405 (FH[5]=f1_pb.vdx); VIDEOREF@0x069B 0x1421 (FH[33]=f_1ba.vdx); VIDEOREF@0x06A1 0x1426 (FH[38]=f_1fb.vdx); VIDEOREF@0x06B3 0x1423 (FH[35]=f_1bc.vdx); VIDEOREF@0x06B9 0x1428 (FH[40]=f_1fd.vdx); VIDEOREF@0x0704 0x140A (FH[10]=f2_1.vdx); VIDEOREF@0x08A6 0x1415 (FH[21]=f5_1.vdx); VIDEOREF@0x0957 0x105F (DR[95]=dr_mi.vdx); VIDEOREF@0x09DF 0x1000 (DR[0]=come.vdx); VIDEOREF@0x09FB 0x106A (DR[106]=dr_vb.vdx); VIDEOREF@0x0A04 0x1063 (DR[99]=dr_r.vdx); VIDEOREF@0x0A1C 0x2C0C (K[12]=k_1ba.vdx); VIDEOREF@0x0A39 0x2C0E (K[14]=k_1tb.vdx); VIDEOREF@0x0AA6 0x2C0D (K[13]=k_1fa.vdx); VIDEOREF@0x0B7C 0x2C14 (K[20]=k_2fa.vdx); VIDEOREF@0x0B82 0x2C11 (K[17]=k_2bb.vdx); VIDEOREF@0x0BA8 0x2C05 (K[5]=k2_7b.vdx); VIDEOREF@0x0BE7 0x4001 (MU[1]=muab.vdx); VIDEOREF@0x0CA0 0x4002 (MU[2]=muabb.vdx); VIDEOREF@0x0CA6 0x4003 (MU[3]=mucd.vdx); VIDEOREF@0x0CB6 0x400A (MU[10]=mupib.vdx); VIDEOREF@0x0D3F 0x4007 (MU[7]=mugrb.vdx); VIDEOREF@0x0D52 0x2072 (HTBD[114]=bdab.vdx); VIDEOREF@0x0D59 0x207A (HTBD[122]=bdplb.vdx); VIDEOREF@0x0E25 0x206F (HTBD[111]=bd2p.vdx); VIDEOREF@0x0E45 0x2074 (HTBD[116]=bdcd.vdx); VIDEOREF@0x0E4B 0x2073 (HTBD[115]=bdabb.vdx); VIDEOREF@0x0F56 0x1418 (FH[24]=f6_1.vdx); VIDEOREF@0x0F89 0x1472 (FH[114]=h_1bb.vdx); VIDEOREF@0x0F9C 0x1477 (FH[119]=h_1fc.vdx); VIDEOREF@0x0FBB 0x1474 (FH[116]=h_1bd.vdx); VIDEOREF@0x0FC1 0x1475 (FH[117]=h_1fa.vdx); VIDEOREF@0x1027 0x145C (FH[92]=h2_1.vdx); VIDEOREF@0x1086 0x146B (FH[107]=h8_1.vdx); VIDEOREF@0x12CB 0x2007 (HTBD[7]=htab.vdx); VIDEOREF@0x1322 0x2004 (HTBD[4]=ht2p.vdx); VIDEOREF@0x132B 0x2008 (HTBD[8]=ht_mess.vdx); VIDEOREF@0x1337 0x2009 (HTBD[9]=htcd.vdx); VIDEOREF@0x1395 0x1808 (GA[8]=gaab.vdx); VIDEOREF@0x1456 0x1801 (GA[1]=ga1pb.vdx); VIDEOREF@0x145C 0x1801 (GA[1]=ga1pb.vdx); VIDEOREF@0x148B 0x1809 (GA[9]=gaabb.vdx); VIDEOREF@0x1491 0x180B (GA[11]=gacd.vdx); VIDEOREF@0x149D 0x2869 (JHEK[105]=jhab.vdx); VIDEOREF@0x1556 0x2877 (JHEK[119]=jhpub.vdx); VIDEOREF@0x1583 0x2875 (JHEK[117]=jhmib.vdx); VIDEOREF@0x159F 0x2875 (JHEK[117]=jhmib.vdx); VIDEOREF@0x15C5 0x286A (JHEK[106]=jhabb.vdx); VIDEOREF@0x15CB 0x286D (JHEK[109]=jhcd.vdx); VIDEOREF@0x15F4 0x4803 (P[3]=pfa.vdx); VIDEOREF@0x1635 0x480A (P[10]=pfdb.vdx); VIDEOREF@0x1661 0x4809 (P[9]=pfd.vdx); VIDEOREF@0x1672 0x480C (P[12]=pmu.vdx); VIDEOREF@0x1682 0x4807 (P[7]=pfc.vdx); VIDEOREF@0x16B3 0x4804 (P[4]=pfab.vdx); VIDEOREF@0x2185 0x3400 (LI[0]=l1_2.vdx); VIDEOREF@0x2935 0x3402 (LI[2]=l1_cb.vdx); VIDEOREF@0x29F5 0x1422 (FH[34]=f_1bb.vdx); VIDEOREF@0x2A19 0x3402 (LI[2]=l1_cb.vdx); VIDEOREF@0x2A5F 0x3428 (LI[40]=l_1ba.vdx); VIDEOREF@0x2A65 0x342B (LI[43]=l_1fc.vdx); VIDEOREF@0x2AE8 0x3406 (LI[6]=l2_3b.vdx); VIDEOREF@0x2AFB 0x342F (LI[47]=l_2bd.vdx); VIDEOREF@0x2B4D 0x3432 (LI[50]=l_2fc.vdx); VIDEOREF@0x2B5F 0x342F (LI[47]=l_2bd.vdx); VIDEOREF@0x2D0C 0x2881 (JHEK[129]=ekab.vdx); VIDEOREF@0x2D99 0x287B (JHEK[123]=ek1pb.vdx); VIDEOREF@0x2D9F 0x287B (JHEK[123]=ek1pb.vdx); VIDEOREF@0x2DCE 0x288C (JHEK[140]=ekmbb.vdx); VIDEOREF@0x2DD7 0x2883 (JHEK[131]=ekbc.vdx); VIDEOREF@0x2E24 0x2887 (JHEK[135]=ekcd.vdx); VIDEOREF@0x2E2D 0x2882 (JHEK[130]=ekabb.vdx); VIDEOREF@0x2E33 0x2888 (JHEK[136]=ekcdb.vdx); VIDEOREF@0x2E50 0x0807 (CH[7]=chab.vdx); VIDEOREF@0x2EB2 0x080A (CH[10]=chcd.vdx); VIDEOREF@0x2EB8 0x0808 (CH[8]=chabb.vdx); VIDEOREF@0x2ECC 0x0811 (CH[17]=chpub.vdx); VIDEOREF@0x2ED2 0x0809 (CH[9]=chal.vdx); VIDEOREF@0x2F34 0x080F (CH[15]=chorb.vdx); VIDEOREF@0x2F4A 0x4406 (N[6]=nab.vdx); VIDEOREF@0x3004 0x4408 (N[8]=ncd.vdx); VIDEOREF@0x300A 0x4407 (N[7]=nabb.vdx); VIDEOREF@0x301B 0x440A (N[10]=ncri.vdx); VIDEOREF@0x303C 0x440B (N[11]=ncrib.vdx); VIDEOREF@0x3074 0x4410 (N[16]=njacb.vdx); VIDEOREF@0x3084 0x4412 (N[18]=npuzb.vdx); VIDEOREF@0x3096 0x3010 (LA[16]=la_1fa.vdx); VIDEOREF@0x3165 0x300C (LA[12]=la_1ba.vdx); VIDEOREF@0x318F 0x3013 (LA[19]=la_1fd.vdx); VIDEOREF@0x3254 0x3803 (MB[3]=mbab.vdx); VIDEOREF@0x325C 0x383D (MB[61]=mb_warp.vdx); VIDEOREF@0x32BE 0x383F (MB[63]=sexbed.vdx); VIDEOREF@0x32F4 0x3809 (MB[9]=mbpub.vdx); VIDEOREF@0x330E 0x3804 (MB[4]=mbabb.vdx); VIDEOREF@0x3314 0x3805 (MB[5]=mbcd.vdx); VIDEOREF@0x3345 0x0C09 (D[9]=d_1fa.vdx); VIDEOREF@0x33D0 0x0C03 (D[3]=d1_3b.vdx); VIDEOREF@0x33F3 0x0C07 (D[7]=d_1ba.vdx); VIDEOREF@0x33F9 0x0C0A (D[10]=d_1fc.vdx); VIDEOREF@0x3944 0x2875 (JHEK[117]=jhmib.vdx); VIDEOREF@0x39BA 0x383D (MB[61]=mb_warp.vdx); VIDEOREF@0x3ABA 0x1426 (FH[38]=f_1fb.vdx); VIDEOREF@0x3AEC 0x2C05 (K[5]=k2_7b.vdx); VIDEOREF@0x3B22 0x2C0E (K[14]=k_1tb.vdx); VIDEOREF@0x3B88 0x1405 (FH[5]=f1_pb.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x164B` | `HOTSPOT_LEFT` | target=0x165B |
| `0x164E` | `HOTSPOT_RIGHT` | target=0x1661 |
| `0x1657` | `HOTSPOT_BOTTOM_4` | target=0x3912 |

### Loop `0x1667`–`0x1671`

Nearest preceding video in file order: VIDEOREF@0x1661 0x4809 (P[9]=pfd.vdx)

Scene candidates: VIDEOREF@0x165B 0x4808 (P[8]=pfcb.vdx); VIDEOREF@0x16B9 0x4805 (P[5]=pfb.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x1668` | `HOTSPOT_CENTER` | target=0x1672 |
| `0x166B` | `HOTSPOT_LEFT` | target=0x167C |
| `0x166E` | `HOTSPOT_RIGHT` | target=0x1682 |

### Loop `0x1688`–`0x16B2`

Nearest preceding video in file order: VIDEOREF@0x1682 0x4807 (P[7]=pfc.vdx)

Scene candidates: VIDEOREF@0x162F 0x4803 (P[3]=pfa.vdx); VIDEOREF@0x167C 0x4806 (P[6]=pfbb.vdx); VIDEOREF@0x16D8 0x4802 (P[2]=p1_2b.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x1689` | `HOTSPOT_LEFT` | target=0x16B3 |
| `0x168C` | `HOTSPOT_RIGHT` | target=0x16B9 |
| `0x1694` | `HOTSPOT_RECT` | left=0x00CE, top=0x004E, right=0x01C4, bottom=0x0189, target=0x16CC, cursor=0x06 |
| `0x16A6` | `HOTSPOT_RECT` | left=0x00CE, top=0x004E, right=0x01C4, bottom=0x0189, target=0x16CC, cursor=0x06 |

### Loop `0x178D`–`0x1791`

Nearest preceding video in file order: VIDEOREF@0x178A 0x3C6D (MC[109]=creb.vdx)

Scene candidates: VIDEOREF@0x178A 0x3C6D (MC[109]=creb.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x178E` | `HOTSPOT_CENTER_2` | target=0x1792 |

### Loop `0x17D4`–`0x1847`

Nearest preceding video in file order: VIDEOREF@0x17D1 0x2425 (INTRO[37]=sphprm1i.vdx)

Scene candidates: VIDEOREF@0x17D1 0x2425 (INTRO[37]=sphprm1i.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x17D5` | `HOTSPOT_RECT` | left=0x010F, top=0x00F0, right=0x0171, bottom=0x0108, target=0x1DBE, cursor=0x08 |
| `0x17E1` | `HOTSPOT_RECT` | left=0x0112, top=0x0109, right=0x016F, bottom=0x0124, target=0x1848, cursor=0x08 |
| `0x17ED` | `HOTSPOT_RECT` | left=0x00FB, top=0x0124, right=0x018E, bottom=0x013D, target=0x1C55, cursor=0x08 |
| `0x17F9` | `HOTSPOT_RECT` | left=0x00F4, top=0x0140, right=0x0195, bottom=0x015D, target=0x0015, cursor=0x08 |
| `0x1805` | `HOTSPOT_RECT` | left=0x00D5, top=0x0161, right=0x01AA, bottom=0x0176, target=0x1D7B, cursor=0x08 |
| `0x1817` | `HOTSPOT_RECT` | left=0x0064, top=0x009B, right=0x00B8, bottom=0x00CC, target=0x1AA0, cursor=0x07 |
| `0x1823` | `HOTSPOT_RECT` | left=0x01C2, top=0x009D, right=0x021E, bottom=0x00C9, target=0x1AA0, cursor=0x07 |
| `0x182F` | `HOTSPOT_RECT` | left=0x002A, top=0x012B, right=0x00B2, bottom=0x0185, target=0x1AA0, cursor=0x07 |
| `0x183B` | `HOTSPOT_RECT` | left=0x01D6, top=0x012C, right=0x0259, bottom=0x0185, target=0x1AA0, cursor=0x07 |

### Loop `0x18D9`–`0x1903`

Nearest preceding video in file order: VIDEOREF@0x18D5 0x243A (INTRO[58]=04b.vdx)

Scene candidates: VIDEOREF@0x1858 0x2433 (INTRO[51]=00c.vdx); VIDEOREF@0x185E 0x2432 (INTRO[50]=00b.vdx); VIDEOREF@0x1868 0x2435 (INTRO[53]=01c.vdx); VIDEOREF@0x1872 0x243F (INTRO[63]=06c.vdx); VIDEOREF@0x188B 0x2437 (INTRO[55]=02c.vdx); VIDEOREF@0x1891 0x2436 (INTRO[54]=02b.vdx); VIDEOREF@0x18A0 0x2439 (INTRO[57]=03c.vdx); VIDEOREF@0x18A6 0x2438 (INTRO[56]=03b.vdx); VIDEOREF@0x18BA 0x243D (INTRO[61]=05c.vdx); VIDEOREF@0x18C0 0x243C (INTRO[60]=05b.vdx); VIDEOREF@0x18CF 0x243B (INTRO[59]=04c.vdx); VIDEOREF@0x18D5 0x243A (INTRO[58]=04b.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x18DA` | `HOTSPOT_RECT` | left=0x0139, top=0x00F6, right=0x017B, bottom=0x013C, target=0x1953, cursor=0x08 |
| `0x18EB` | `HOTSPOT_RECT` | left=0x0134, top=0x00C6, right=0x015E, bottom=0x00E6, target=0x1904, cursor=0x08 |
| `0x18F7` | `HOTSPOT_RECT` | left=0x00D5, top=0x0161, right=0x01AA, bottom=0x0176, target=0x17AB, cursor=0x08 |

### Loop `0x1939`–`0x1952`

Nearest preceding video in file order: VIDEOREF@0x1936 0x245A (INTRO[90]=20b.vdx)

Scene candidates: VIDEOREF@0x191A 0x245C (INTRO[92]=21b.vdx); VIDEOREF@0x192A 0x245F (INTRO[95]=22c.vdx); VIDEOREF@0x1930 0x245E (INTRO[94]=22b.vdx); VIDEOREF@0x1936 0x245A (INTRO[90]=20b.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x193A` | `HOTSPOT_RECT` | left=0x00A1, top=0x00C1, right=0x01E8, bottom=0x0148, target=0x184C, cursor=0x08 |
| `0x1946` | `HOTSPOT_RECT` | left=0x00D5, top=0x0161, right=0x01AA, bottom=0x0176, target=0x17AB, cursor=0x08 |

### Loop `0x1A86`–`0x1A9F`

Nearest preceding video in file order: VIDEOREF@0x1A83 0x2458 (INTRO[88]=19b.vdx)

Scene candidates: VIDEOREF@0x195A 0x2440 (INTRO[64]=07b.vdx); VIDEOREF@0x1969 0x2443 (INTRO[67]=08c.vdx); VIDEOREF@0x196F 0x2442 (INTRO[66]=08b.vdx); VIDEOREF@0x197E 0x2445 (INTRO[69]=09c.vdx); VIDEOREF@0x1984 0x2444 (INTRO[68]=09b.vdx); VIDEOREF@0x1993 0x2447 (INTRO[71]=10c.vdx); VIDEOREF@0x1999 0x2446 (INTRO[70]=10b.vdx); VIDEOREF@0x19A8 0x2449 (INTRO[73]=11c.vdx); VIDEOREF@0x19AE 0x2448 (INTRO[72]=11b.vdx); VIDEOREF@0x19EA 0x244B (INTRO[75]=12c.vdx); VIDEOREF@0x19F0 0x244A (INTRO[74]=12b.vdx); VIDEOREF@0x19FF 0x244F (INTRO[79]=14c.vdx); VIDEOREF@0x1A05 0x244E (INTRO[78]=14b.vdx); VIDEOREF@0x1A14 0x244D (INTRO[77]=13c.vdx); VIDEOREF@0x1A1A 0x244C (INTRO[76]=13b.vdx); VIDEOREF@0x1A29 0x2455 (INTRO[85]=17c.vdx); VIDEOREF@0x1A2F 0x2454 (INTRO[84]=17b.vdx); VIDEOREF@0x1A3E 0x2453 (INTRO[83]=16c.vdx); VIDEOREF@0x1A44 0x2452 (INTRO[82]=16b.vdx); VIDEOREF@0x1A53 0x2451 (INTRO[81]=15c.vdx); VIDEOREF@0x1A59 0x2450 (INTRO[80]=15b.vdx); VIDEOREF@0x1A68 0x2457 (INTRO[87]=18c.vdx); VIDEOREF@0x1A6E 0x2456 (INTRO[86]=18b.vdx); VIDEOREF@0x1A7D 0x2459 (INTRO[89]=19c.vdx); VIDEOREF@0x1A83 0x2458 (INTRO[88]=19b.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x1A87` | `HOTSPOT_RECT` | left=0x0164, top=0x0109, right=0x01A2, bottom=0x0153, target=0x184C, cursor=0x08 |
| `0x1A93` | `HOTSPOT_RECT` | left=0x00D5, top=0x0161, right=0x01AA, bottom=0x0176, target=0x17AB, cursor=0x08 |

### Loop `0x1AB5`–`0x1BCA`

Nearest preceding video in file order: VIDEOREF@0x1AB2 0x2400 (INTRO[0]=house.vdx)

Scene candidates: VIDEOREF@0x1AB2 0x2400 (INTRO[0]=house.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x1AB6` | `HOTSPOT_RECT` | left=0x0000, top=0x0050, right=0x007F, bottom=0x0090, target=0x1C49, cursor=0x07 |
| `0x1AC2` | `HOTSPOT_RECT` | left=0x0080, top=0x0050, right=0x00FF, bottom=0x0090, target=0x1BCB, cursor=0x09 |
| `0x1ACE` | `HOTSPOT_RECT` | left=0x0100, top=0x0050, right=0x017F, bottom=0x0090, target=0x1BD1, cursor=0x0A |
| `0x1ADA` | `HOTSPOT_RECT` | left=0x0180, top=0x0050, right=0x01FF, bottom=0x0090, target=0x1BD7, cursor=0x07 |
| `0x1AE6` | `HOTSPOT_RECT` | left=0x0200, top=0x0050, right=0x027F, bottom=0x0090, target=0x1BDD, cursor=0x09 |
| `0x1AF2` | `HOTSPOT_RECT` | left=0x0000, top=0x0091, right=0x007F, bottom=0x00D1, target=0x1BE3, cursor=0x0A |
| `0x1AFE` | `HOTSPOT_RECT` | left=0x0080, top=0x0091, right=0x00FF, bottom=0x00D1, target=0x1BE9, cursor=0x07 |
| `0x1B0A` | `HOTSPOT_RECT` | left=0x0100, top=0x0091, right=0x017F, bottom=0x00D1, target=0x1BEF, cursor=0x09 |
| `0x1B16` | `HOTSPOT_RECT` | left=0x0180, top=0x0091, right=0x0200, bottom=0x00D1, target=0x1BF5, cursor=0x0A |
| `0x1B22` | `HOTSPOT_RECT` | left=0x0200, top=0x0091, right=0x027F, bottom=0x00D1, target=0x1BFB, cursor=0x07 |
| `0x1B2E` | `HOTSPOT_RECT` | left=0x0000, top=0x00D2, right=0x007F, bottom=0x0112, target=0x1C01, cursor=0x09 |
| `0x1B3A` | `HOTSPOT_RECT` | left=0x0080, top=0x00D2, right=0x00FF, bottom=0x0112, target=0x1C07, cursor=0x0A |
| `0x1B46` | `HOTSPOT_RECT` | left=0x0100, top=0x00D2, right=0x017F, bottom=0x0112, target=0x1C0D, cursor=0x07 |
| `0x1B52` | `HOTSPOT_RECT` | left=0x0180, top=0x00D2, right=0x01FF, bottom=0x0112, target=0x1C13, cursor=0x09 |
| `0x1B5E` | `HOTSPOT_RECT` | left=0x0200, top=0x00D2, right=0x027F, bottom=0x0112, target=0x1C19, cursor=0x0A |
| `0x1B6A` | `HOTSPOT_RECT` | left=0x0000, top=0x0113, right=0x007F, bottom=0x0152, target=0x1C1F, cursor=0x07 |
| `0x1B76` | `HOTSPOT_RECT` | left=0x0080, top=0x0113, right=0x00FF, bottom=0x0152, target=0x1C25, cursor=0x09 |
| `0x1B82` | `HOTSPOT_RECT` | left=0x0100, top=0x0113, right=0x017F, bottom=0x0152, target=0x1C2B, cursor=0x0A |
| `0x1B8E` | `HOTSPOT_RECT` | left=0x0180, top=0x0113, right=0x01FF, bottom=0x0152, target=0x1C31, cursor=0x07 |
| `0x1B9A` | `HOTSPOT_RECT` | left=0x0200, top=0x0113, right=0x027F, bottom=0x0152, target=0x1C4F, cursor=0x09 |
| `0x1BA6` | `HOTSPOT_RECT` | left=0x0000, top=0x0153, right=0x007F, bottom=0x0190, target=0x1C37, cursor=0x0A |
| `0x1BB2` | `HOTSPOT_RECT` | left=0x0080, top=0x0153, right=0x00FF, bottom=0x0190, target=0x1C3D, cursor=0x07 |
| `0x1BBE` | `HOTSPOT_RECT` | left=0x0100, top=0x0153, right=0x017F, bottom=0x0190, target=0x1C43, cursor=0x09 |

### Loop `0x1D87`–`0x1DAC`

Nearest preceding video in file order: VIDEOREF@0x1D84 0x2427 (INTRO[39]=sphprm2i.vdx)

Scene candidates: VIDEOREF@0x1D84 0x2427 (INTRO[39]=sphprm2i.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x1D88` | `HOTSPOT_RECT` | left=0x0054, top=0x00B3, right=0x00B2, bottom=0x00F7, target=0x1DAD, cursor=0x08 |
| `0x1D94` | `HOTSPOT_RECT` | left=0x01CB, top=0x00B6, right=0x022C, bottom=0x00ED, target=0x1DB7, cursor=0x08 |
| `0x1DA0` | `HOTSPOT_RECT` | left=0x00D5, top=0x0161, right=0x01AA, bottom=0x0176, target=0x1DAD, cursor=0x08 |

### Loop `0x1DCE`–`0x1E5D`

Nearest preceding video in file order: VIDEOREF@0x1DCB 0x2429 (INTRO[41]=sphprm3i.vdx)

Scene candidates: VIDEOREF@0x1DCB 0x2429 (INTRO[41]=sphprm3i.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x1DCF` | `HOTSPOT_SAVE_SLOT` | slot=0x01, left=0x00B2, top=0x0136, right=0x00C1, bottom=0x014D, target=0x1E5E, cursor=0x08 |
| `0x1DDC` | `HOTSPOT_SAVE_SLOT` | slot=0x02, left=0x00C5, top=0x0136, right=0x00DE, bottom=0x014D, target=0x1E64, cursor=0x08 |
| `0x1DE9` | `HOTSPOT_SAVE_SLOT` | slot=0x03, left=0x00E4, top=0x0136, right=0x00FE, bottom=0x014D, target=0x1E6A, cursor=0x08 |
| `0x1DF6` | `HOTSPOT_SAVE_SLOT` | slot=0x04, left=0x0104, top=0x0136, right=0x011F, bottom=0x014D, target=0x1E70, cursor=0x08 |
| `0x1E03` | `HOTSPOT_SAVE_SLOT` | slot=0x05, left=0x0124, top=0x0136, right=0x013E, bottom=0x014D, target=0x1E76, cursor=0x08 |
| `0x1E10` | `HOTSPOT_SAVE_SLOT` | slot=0x06, left=0x0141, top=0x0136, right=0x015A, bottom=0x014D, target=0x1E7C, cursor=0x08 |
| `0x1E1D` | `HOTSPOT_SAVE_SLOT` | slot=0x07, left=0x015E, top=0x0136, right=0x0177, bottom=0x014D, target=0x1E82, cursor=0x08 |
| `0x1E2A` | `HOTSPOT_SAVE_SLOT` | slot=0x08, left=0x017C, top=0x0136, right=0x0196, bottom=0x014D, target=0x1E88, cursor=0x08 |
| `0x1E37` | `HOTSPOT_SAVE_SLOT` | slot=0x09, left=0x0199, top=0x0136, right=0x01B3, bottom=0x014D, target=0x1E8E, cursor=0x08 |
| `0x1E44` | `HOTSPOT_SAVE_SLOT` | slot=0x00, left=0x01B5, top=0x0136, right=0x01D2, bottom=0x014D, target=0x1E94, cursor=0x08 |
| `0x1E51` | `HOTSPOT_RECT` | left=0x00D5, top=0x0161, right=0x01AA, bottom=0x0176, target=0x17AB, cursor=0x08 |

### Loop `0x1ED3`–`0x2098`

Nearest preceding video in file order: VIDEOREF@0x1E9F 0x242B (INTRO[43]=sphprm4i.vdx)

Scene candidates: VIDEOREF@0x1E9F 0x242B (INTRO[43]=sphprm4i.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x1ED4` | `KEYACTION` | key=0x61, target=0x20AC |
| `0x1ED8` | `KEYACTION` | key=0x62, target=0x20B2 |
| `0x1EDC` | `KEYACTION` | key=0x63, target=0x20B8 |
| `0x1EE0` | `KEYACTION` | key=0x64, target=0x20BE |
| `0x1EE4` | `KEYACTION` | key=0x65, target=0x20C4 |
| `0x1EE8` | `KEYACTION` | key=0x66, target=0x20CA |
| `0x1EEC` | `KEYACTION` | key=0x67, target=0x20D0 |
| `0x1EF0` | `KEYACTION` | key=0x68, target=0x20D6 |
| `0x1EF4` | `KEYACTION` | key=0x69, target=0x20DC |
| `0x1EF8` | `KEYACTION` | key=0x6A, target=0x20E2 |
| `0x1EFC` | `KEYACTION` | key=0x6B, target=0x20E8 |
| `0x1F00` | `KEYACTION` | key=0x6C, target=0x20EE |
| `0x1F04` | `KEYACTION` | key=0x6D, target=0x20F4 |
| `0x1F08` | `KEYACTION` | key=0x6E, target=0x20FA |
| `0x1F0C` | `KEYACTION` | key=0x6F, target=0x2100 |
| `0x1F10` | `KEYACTION` | key=0x70, target=0x2106 |
| `0x1F14` | `KEYACTION` | key=0x71, target=0x210C |
| `0x1F18` | `KEYACTION` | key=0x72, target=0x2112 |
| `0x1F1C` | `KEYACTION` | key=0x73, target=0x2118 |
| `0x1F20` | `KEYACTION` | key=0x74, target=0x211E |
| `0x1F24` | `KEYACTION` | key=0x75, target=0x2124 |
| `0x1F28` | `KEYACTION` | key=0x76, target=0x212A |
| `0x1F2C` | `KEYACTION` | key=0x77, target=0x2130 |
| `0x1F30` | `KEYACTION` | key=0x78, target=0x2136 |
| `0x1F34` | `KEYACTION` | key=0x79, target=0x213C |
| `0x1F38` | `KEYACTION` | key=0x7A, target=0x2142 |
| `0x1F3C` | `KEYACTION` | key=0x20, target=0x20A6 |
| `0x1F40` | `HOTSPOT_RECT` | left=0x007C, top=0x00F1, right=0x0098, bottom=0x0104, target=0x20AC, cursor=0x08 |
| `0x1F4C` | `HOTSPOT_RECT` | left=0x009F, top=0x00F1, right=0x00B9, bottom=0x0104, target=0x20B2, cursor=0x08 |
| `0x1F58` | `HOTSPOT_RECT` | left=0x00BD, top=0x00F2, right=0x00D4, bottom=0x0104, target=0x20B8, cursor=0x08 |
| `0x1F64` | `HOTSPOT_RECT` | left=0x00DA, top=0x00F1, right=0x00F5, bottom=0x0104, target=0x20BE, cursor=0x08 |
| `0x1F70` | `HOTSPOT_RECT` | left=0x00FA, top=0x00F1, right=0x0112, bottom=0x0104, target=0x20C4, cursor=0x08 |
| `0x1F7C` | `HOTSPOT_RECT` | left=0x0116, top=0x00F1, right=0x012C, bottom=0x0104, target=0x20CA, cursor=0x08 |
| `0x1F88` | `HOTSPOT_RECT` | left=0x0130, top=0x00F1, right=0x014A, bottom=0x0104, target=0x20D0, cursor=0x08 |
| `0x1F94` | `HOTSPOT_RECT` | left=0x0150, top=0x00F1, right=0x016B, bottom=0x0104, target=0x20D6, cursor=0x08 |
| `0x1FA0` | `HOTSPOT_RECT` | left=0x016E, top=0x00F1, right=0x017F, bottom=0x0104, target=0x20DC, cursor=0x08 |
| `0x1FAC` | `HOTSPOT_RECT` | left=0x0181, top=0x00F1, right=0x0195, bottom=0x0104, target=0x20E2, cursor=0x08 |
| `0x1FB8` | `HOTSPOT_RECT` | left=0x019A, top=0x00F1, right=0x01B7, bottom=0x0104, target=0x20E8, cursor=0x08 |
| `0x1FC4` | `HOTSPOT_RECT` | left=0x01BD, top=0x00F1, right=0x01D5, bottom=0x0104, target=0x20EE, cursor=0x08 |
| `0x1FD0` | `HOTSPOT_RECT` | left=0x01D8, top=0x00F1, right=0x0205, bottom=0x0104, target=0x20F4, cursor=0x08 |
| `0x1FDC` | `HOTSPOT_RECT` | left=0x0065, top=0x0111, right=0x0085, bottom=0x0125, target=0x20FA, cursor=0x08 |
| `0x1FE8` | `HOTSPOT_RECT` | left=0x0088, top=0x0111, right=0x00A4, bottom=0x0125, target=0x2100, cursor=0x08 |
| `0x1FF4` | `HOTSPOT_RECT` | left=0x00A7, top=0x0111, right=0x00C2, bottom=0x0125, target=0x2106, cursor=0x08 |
| `0x2000` | `HOTSPOT_RECT` | left=0x00C5, top=0x0111, right=0x00E1, bottom=0x0125, target=0x210C, cursor=0x08 |
| `0x200C` | `HOTSPOT_RECT` | left=0x00E6, top=0x0111, right=0x0105, bottom=0x0125, target=0x2112, cursor=0x08 |
| `0x2018` | `HOTSPOT_RECT` | left=0x010B, top=0x0111, right=0x0124, bottom=0x0125, target=0x2118, cursor=0x08 |
| `0x2024` | `HOTSPOT_RECT` | left=0x0129, top=0x0111, right=0x0146, bottom=0x0125, target=0x211E, cursor=0x08 |
| `0x2030` | `HOTSPOT_RECT` | left=0x0149, top=0x0111, right=0x0166, bottom=0x0125, target=0x2124, cursor=0x08 |
| `0x203C` | `HOTSPOT_RECT` | left=0x016A, top=0x0111, right=0x0188, bottom=0x0125, target=0x212A, cursor=0x08 |
| `0x2048` | `HOTSPOT_RECT` | left=0x018D, top=0x0111, right=0x01B3, bottom=0x0125, target=0x2130, cursor=0x08 |
| `0x2054` | `HOTSPOT_RECT` | left=0x01BA, top=0x0111, right=0x01D8, bottom=0x0125, target=0x2136, cursor=0x08 |
| `0x2060` | `HOTSPOT_RECT` | left=0x01DC, top=0x0111, right=0x01FB, bottom=0x0125, target=0x213C, cursor=0x08 |
| `0x206C` | `HOTSPOT_RECT` | left=0x01FE, top=0x0111, right=0x021F, bottom=0x0125, target=0x2142, cursor=0x08 |
| `0x2078` | `HOTSPOT_RECT` | left=0x00D5, top=0x0161, right=0x01AA, bottom=0x0176, target=0x17AB, cursor=0x08 |
| `0x2084` | `HOTSPOT_RECT` | left=0x00E6, top=0x00B7, right=0x019E, bottom=0x00CF, target=0x2156, cursor=0x08 |
| `0x2090` | `KEYACTION` | key=0x0D, target=0x2156 |
| `0x2094` | `KEYACTION` | key=0x08, target=0x2099 |

### Loop `0x21AE`–`0x21E8`

Nearest preceding video in file order: VIDEOREF@0x2185 0x3400 (LI[0]=l1_2.vdx)

Scene candidates: VIDEOREF@0x03E2 0x1403 (FH[3]=f1_6.vdx); VIDEOREF@0x04F9 0x5001 (GAMWAV[1]=1_e_2.vdx); VIDEOREF@0x0651 0x1405 (FH[5]=f1_pb.vdx); VIDEOREF@0x069B 0x1421 (FH[33]=f_1ba.vdx); VIDEOREF@0x06A1 0x1426 (FH[38]=f_1fb.vdx); VIDEOREF@0x06B3 0x1423 (FH[35]=f_1bc.vdx); VIDEOREF@0x06B9 0x1428 (FH[40]=f_1fd.vdx); VIDEOREF@0x0704 0x140A (FH[10]=f2_1.vdx); VIDEOREF@0x08A6 0x1415 (FH[21]=f5_1.vdx); VIDEOREF@0x0957 0x105F (DR[95]=dr_mi.vdx); VIDEOREF@0x09DF 0x1000 (DR[0]=come.vdx); VIDEOREF@0x09FB 0x106A (DR[106]=dr_vb.vdx); VIDEOREF@0x0A04 0x1063 (DR[99]=dr_r.vdx); VIDEOREF@0x0A1C 0x2C0C (K[12]=k_1ba.vdx); VIDEOREF@0x0A39 0x2C0E (K[14]=k_1tb.vdx); VIDEOREF@0x0AA6 0x2C0D (K[13]=k_1fa.vdx); VIDEOREF@0x0B7C 0x2C14 (K[20]=k_2fa.vdx); VIDEOREF@0x0B82 0x2C11 (K[17]=k_2bb.vdx); VIDEOREF@0x0BA8 0x2C05 (K[5]=k2_7b.vdx); VIDEOREF@0x0BE7 0x4001 (MU[1]=muab.vdx); VIDEOREF@0x0CA0 0x4002 (MU[2]=muabb.vdx); VIDEOREF@0x0CA6 0x4003 (MU[3]=mucd.vdx); VIDEOREF@0x0CB6 0x400A (MU[10]=mupib.vdx); VIDEOREF@0x0D3F 0x4007 (MU[7]=mugrb.vdx); VIDEOREF@0x0D52 0x2072 (HTBD[114]=bdab.vdx); VIDEOREF@0x0D59 0x207A (HTBD[122]=bdplb.vdx); VIDEOREF@0x0E25 0x206F (HTBD[111]=bd2p.vdx); VIDEOREF@0x0E45 0x2074 (HTBD[116]=bdcd.vdx); VIDEOREF@0x0E4B 0x2073 (HTBD[115]=bdabb.vdx); VIDEOREF@0x0F56 0x1418 (FH[24]=f6_1.vdx); VIDEOREF@0x0F89 0x1472 (FH[114]=h_1bb.vdx); VIDEOREF@0x0F9C 0x1477 (FH[119]=h_1fc.vdx); VIDEOREF@0x0FBB 0x1474 (FH[116]=h_1bd.vdx); VIDEOREF@0x0FC1 0x1475 (FH[117]=h_1fa.vdx); VIDEOREF@0x1027 0x145C (FH[92]=h2_1.vdx); VIDEOREF@0x1086 0x146B (FH[107]=h8_1.vdx); VIDEOREF@0x12CB 0x2007 (HTBD[7]=htab.vdx); VIDEOREF@0x1322 0x2004 (HTBD[4]=ht2p.vdx); VIDEOREF@0x132B 0x2008 (HTBD[8]=ht_mess.vdx); VIDEOREF@0x1337 0x2009 (HTBD[9]=htcd.vdx); VIDEOREF@0x1395 0x1808 (GA[8]=gaab.vdx); VIDEOREF@0x1456 0x1801 (GA[1]=ga1pb.vdx); VIDEOREF@0x145C 0x1801 (GA[1]=ga1pb.vdx); VIDEOREF@0x148B 0x1809 (GA[9]=gaabb.vdx); VIDEOREF@0x1491 0x180B (GA[11]=gacd.vdx); VIDEOREF@0x149D 0x2869 (JHEK[105]=jhab.vdx); VIDEOREF@0x1556 0x2877 (JHEK[119]=jhpub.vdx); VIDEOREF@0x1583 0x2875 (JHEK[117]=jhmib.vdx); VIDEOREF@0x159F 0x2875 (JHEK[117]=jhmib.vdx); VIDEOREF@0x15C5 0x286A (JHEK[106]=jhabb.vdx); VIDEOREF@0x15CB 0x286D (JHEK[109]=jhcd.vdx); VIDEOREF@0x15F4 0x4803 (P[3]=pfa.vdx); VIDEOREF@0x1635 0x480A (P[10]=pfdb.vdx); VIDEOREF@0x1661 0x4809 (P[9]=pfd.vdx); VIDEOREF@0x1672 0x480C (P[12]=pmu.vdx); VIDEOREF@0x1682 0x4807 (P[7]=pfc.vdx); VIDEOREF@0x16B3 0x4804 (P[4]=pfab.vdx); VIDEOREF@0x2185 0x3400 (LI[0]=l1_2.vdx); VIDEOREF@0x2935 0x3402 (LI[2]=l1_cb.vdx); VIDEOREF@0x29F5 0x1422 (FH[34]=f_1bb.vdx); VIDEOREF@0x2A19 0x3402 (LI[2]=l1_cb.vdx); VIDEOREF@0x2A5F 0x3428 (LI[40]=l_1ba.vdx); VIDEOREF@0x2A65 0x342B (LI[43]=l_1fc.vdx); VIDEOREF@0x2AE8 0x3406 (LI[6]=l2_3b.vdx); VIDEOREF@0x2AFB 0x342F (LI[47]=l_2bd.vdx); VIDEOREF@0x2B4D 0x3432 (LI[50]=l_2fc.vdx); VIDEOREF@0x2B5F 0x342F (LI[47]=l_2bd.vdx); VIDEOREF@0x2D0C 0x2881 (JHEK[129]=ekab.vdx); VIDEOREF@0x2D99 0x287B (JHEK[123]=ek1pb.vdx); VIDEOREF@0x2D9F 0x287B (JHEK[123]=ek1pb.vdx); VIDEOREF@0x2DCE 0x288C (JHEK[140]=ekmbb.vdx); VIDEOREF@0x2DD7 0x2883 (JHEK[131]=ekbc.vdx); VIDEOREF@0x2E24 0x2887 (JHEK[135]=ekcd.vdx); VIDEOREF@0x2E2D 0x2882 (JHEK[130]=ekabb.vdx); VIDEOREF@0x2E33 0x2888 (JHEK[136]=ekcdb.vdx); VIDEOREF@0x2E50 0x0807 (CH[7]=chab.vdx); VIDEOREF@0x2EB2 0x080A (CH[10]=chcd.vdx); VIDEOREF@0x2EB8 0x0808 (CH[8]=chabb.vdx); VIDEOREF@0x2ECC 0x0811 (CH[17]=chpub.vdx); VIDEOREF@0x2ED2 0x0809 (CH[9]=chal.vdx); VIDEOREF@0x2F34 0x080F (CH[15]=chorb.vdx); VIDEOREF@0x2F4A 0x4406 (N[6]=nab.vdx); VIDEOREF@0x3004 0x4408 (N[8]=ncd.vdx); VIDEOREF@0x300A 0x4407 (N[7]=nabb.vdx); VIDEOREF@0x301B 0x440A (N[10]=ncri.vdx); VIDEOREF@0x303C 0x440B (N[11]=ncrib.vdx); VIDEOREF@0x3074 0x4410 (N[16]=njacb.vdx); VIDEOREF@0x3084 0x4412 (N[18]=npuzb.vdx); VIDEOREF@0x3096 0x3010 (LA[16]=la_1fa.vdx); VIDEOREF@0x3165 0x300C (LA[12]=la_1ba.vdx); VIDEOREF@0x318F 0x3013 (LA[19]=la_1fd.vdx); VIDEOREF@0x3254 0x3803 (MB[3]=mbab.vdx); VIDEOREF@0x325C 0x383D (MB[61]=mb_warp.vdx); VIDEOREF@0x32BE 0x383F (MB[63]=sexbed.vdx); VIDEOREF@0x32F4 0x3809 (MB[9]=mbpub.vdx); VIDEOREF@0x330E 0x3804 (MB[4]=mbabb.vdx); VIDEOREF@0x3314 0x3805 (MB[5]=mbcd.vdx); VIDEOREF@0x3345 0x0C09 (D[9]=d_1fa.vdx); VIDEOREF@0x33D0 0x0C03 (D[3]=d1_3b.vdx); VIDEOREF@0x33F3 0x0C07 (D[7]=d_1ba.vdx); VIDEOREF@0x33F9 0x0C0A (D[10]=d_1fc.vdx); VIDEOREF@0x3944 0x2875 (JHEK[117]=jhmib.vdx); VIDEOREF@0x39BA 0x383D (MB[61]=mb_warp.vdx); VIDEOREF@0x3ABA 0x1426 (FH[38]=f_1fb.vdx); VIDEOREF@0x3AEC 0x2C05 (K[5]=k2_7b.vdx); VIDEOREF@0x3B22 0x2C0E (K[14]=k_1tb.vdx); VIDEOREF@0x3B88 0x1405 (FH[5]=f1_pb.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x21B5` | `HOTSPOT_BOTTOM_4` | target=0x3912 |
| `0x21BE` | `HOTSPOT_RECT` | left=0x0074, top=0x0111, right=0x0113, bottom=0x017A, target=0x2203, cursor=0x06 |
| `0x21CA` | `HOTSPOT_RECT` | left=0x00DC, top=0x008C, right=0x0118, bottom=0x00DC, target=0x21E9, cursor=0x00 |
| `0x21D6` | `HOTSPOT_RECT` | left=0x015E, top=0x0050, right=0x01F4, bottom=0x018F, target=0x2A4D, cursor=0x00 |
| `0x21E2` | `HOTSPOT_LEFT` | target=0x2A53 |
| `0x21E5` | `HOTSPOT_RIGHT` | target=0x2A59 |

### Loop `0x21EC`–`0x21F3`

Nearest preceding video in file order: VIDEOREF@0x21E9 0x3401 (LI[1]=l1_4f.vdx)

Scene candidates: VIDEOREF@0x21E9 0x3401 (LI[1]=l1_4f.vdx); VIDEOREF@0x21F7 0x340A (LI[10]=l4_db.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x21ED` | `HOTSPOT_CENTER` | target=0x21F4 |
| `0x21F0` | `HOTSPOT_RIGHT` | target=0x21FD |

### Loop `0x2921`–`0x2931`

Nearest preceding video in file order: VIDEOREF@0x291E 0x3462 (LI[98]=solv_in.vdx)

Scene candidates: VIDEOREF@0x291E 0x3462 (LI[98]=solv_in.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x2922` | `HOTSPOT_RECT` | left=0x0060, top=0x0076, right=0x0279, bottom=0x0174, target=0x294C, cursor=0x06 |
| `0x292E` | `HOTSPOT_LEFT` | target=0x2932 |

### Loop `0x293B`–`0x294B`

Nearest preceding video in file order: VIDEOREF@0x2935 0x3402 (LI[2]=l1_cb.vdx)

Scene candidates: VIDEOREF@0x220F 0x3403 (LI[3]=l1_cf.vdx); VIDEO_NAME@0x2268 "cl{v001}{v002}{v000}out"; VIDEO_NAME@0x22BE "cl{v001}{v002}{v000}out"; VIDEO_NAME@0x2313 "cl{v001}{v002}{v000}out"; VIDEO_NAME@0x2369 "cl{v001}{v002}{v000}out"; VIDEO_NAME@0x23BF "cl{v001}{v002}{v000}out"; VIDEO_NAME@0x2414 "cl{v001}{v002}{v000}out"; VIDEO_NAME@0x246B "cl{v001}{v000}out"; VIDEO_NAME@0x24C0 "cl{v001}{v000}out"; VIDEO_NAME@0x2514 "cl{v001}{v002}{v000}out"; VIDEO_NAME@0x256A "cl{v001}{v002}{v000}out"; VIDEO_NAME@0x25C0 "cl{v001}{v002}{v000}out"; VIDEO_NAME@0x2616 "cl{v001}{v002}{v000}out"; VIDEO_NAME@0x266D "cl{v001}{v000}out"; VIDEO_NAME@0x26C1 "cl{v001}{v002}{v000}out"; VIDEO_NAME@0x2718 "cl{v001}{v000}out"; VIDEO_NAME@0x2798 "cl{v001}{v000}bout"; VIDEO_NAME@0x27AA "cl{v001}{v000}out"; VIDEO_NAME@0x2802 "cl{v001}{v000}out"; VIDEO_NAME@0x2856 "cl{v001}{v002}{v000}out"; VIDEO_NAME@0x28AD "cl{v001}{v000}out"; VIDEO_NAME@0x2901 "clbm{v000}out"

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x293C` | `HOTSPOT_RECT` | left=0x0060, top=0x0076, right=0x0279, bottom=0x0174, target=0x294C, cursor=0x06 |
| `0x2948` | `HOTSPOT_LEFT` | target=0x2A16 |

### Loop `0x2A27`–`0x2A3A`

Nearest preceding video in file order: VIDEO_TRANSITION_REF@0x2A1F 0x3435 (LI[53]=l_cf.vdx)

Scene candidates: VIDEOREF@0x2A53 0x3429 (LI[41]=l_1bc.vdx); VIDEOREF@0x2A59 0x342A (LI[42]=l_1fa.vdx); VIDEOREF@0x2B41 0x3405 (LI[5]=l2_1.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x2A28` | `HOTSPOT_LEFT` | target=0x2A5F |
| `0x2A2B` | `HOTSPOT_RIGHT` | target=0x2A65 |
| `0x2A2E` | `HOTSPOT_RECT` | left=0x0036, top=0x0056, right=0x013A, bottom=0x018D, target=0x2A3B, cursor=0x00 |

### Loop `0x2A6B`–`0x2A75`

Nearest preceding video in file order: VIDEOREF@0x2A65 0x342B (LI[43]=l_1fc.vdx)

Scene candidates: VIDEOREF@0x2B59 0x3431 (LI[49]=l_2fb.vdx); VIDEOREF@0x2B6B 0x342E (LI[46]=l_2bc.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x2A6C` | `HOTSPOT_LEFT` | target=0x2B47 |
| `0x2A6F` | `HOTSPOT_CENTER_2` | target=0x2B41 |
| `0x2A72` | `HOTSPOT_RIGHT` | target=0x2B4D |

### Loop `0x2A76`–`0x2A80`

Nearest preceding video in file order: VIDEOREF@0x2A65 0x342B (LI[43]=l_1fc.vdx)

Scene candidates: VIDEOREF@0x21FD 0x3409 (LI[9]=l4_2f.vdx); VIDEOREF@0x2B47 0x342D (LI[45]=l_2bb.vdx); VIDEOREF@0x2B65 0x3430 (LI[48]=l_2fa.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x2A77` | `HOTSPOT_LEFT` | target=0x2B53 |
| `0x2A7A` | `HOTSPOT_CENTER_2` | target=0x2B3A |
| `0x2A7D` | `HOTSPOT_RIGHT` | target=0x2B59 |

### Loop `0x2A90`–`0x2ABA`

Nearest preceding video in file order: VIDEOREF@0x2A65 0x342B (LI[43]=l_1fc.vdx)

Scene candidates: VIDEOREF@0x29B9 0x3407 (LI[7]=l2_3f.vdx); VIDEOREF@0x2A4D 0x3400 (LI[0]=l1_2.vdx); VIDEOREF@0x2AE8 0x3406 (LI[6]=l2_3b.vdx); VIDEOREF@0x2B53 0x342C (LI[44]=l_2ba.vdx); VIDEOREF@0x2B71 0x3433 (LI[51]=l_2fd.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x2A91` | `HOTSPOT_LEFT` | target=0x2B5F |
| `0x2A94` | `HOTSPOT_RIGHT` | target=0x2B65 |
| `0x2A9C` | `HOTSPOT_RECT` | left=0x0105, top=0x00A3, right=0x0193, bottom=0x00E9, target=0x2ABB, cursor=0x06 |
| `0x2AAE` | `HOTSPOT_RECT` | left=0x0105, top=0x00A3, right=0x0193, bottom=0x00E9, target=0x2ABB, cursor=0x06 |

### Loop `0x2B0B`–`0x2B2C`

Nearest preceding video in file order: VIDEOREF@0x2AFB 0x342F (LI[47]=l_2bd.vdx)

Scene candidates: VIDEOREF@0x03E2 0x1403 (FH[3]=f1_6.vdx); VIDEOREF@0x04F9 0x5001 (GAMWAV[1]=1_e_2.vdx); VIDEOREF@0x0651 0x1405 (FH[5]=f1_pb.vdx); VIDEOREF@0x069B 0x1421 (FH[33]=f_1ba.vdx); VIDEOREF@0x06A1 0x1426 (FH[38]=f_1fb.vdx); VIDEOREF@0x06B3 0x1423 (FH[35]=f_1bc.vdx); VIDEOREF@0x06B9 0x1428 (FH[40]=f_1fd.vdx); VIDEOREF@0x0704 0x140A (FH[10]=f2_1.vdx); VIDEOREF@0x08A6 0x1415 (FH[21]=f5_1.vdx); VIDEOREF@0x0957 0x105F (DR[95]=dr_mi.vdx); VIDEOREF@0x09DF 0x1000 (DR[0]=come.vdx); VIDEOREF@0x09FB 0x106A (DR[106]=dr_vb.vdx); VIDEOREF@0x0A04 0x1063 (DR[99]=dr_r.vdx); VIDEOREF@0x0A1C 0x2C0C (K[12]=k_1ba.vdx); VIDEOREF@0x0A39 0x2C0E (K[14]=k_1tb.vdx); VIDEOREF@0x0AA6 0x2C0D (K[13]=k_1fa.vdx); VIDEOREF@0x0B7C 0x2C14 (K[20]=k_2fa.vdx); VIDEOREF@0x0B82 0x2C11 (K[17]=k_2bb.vdx); VIDEOREF@0x0BA8 0x2C05 (K[5]=k2_7b.vdx); VIDEOREF@0x0BE7 0x4001 (MU[1]=muab.vdx); VIDEOREF@0x0CA0 0x4002 (MU[2]=muabb.vdx); VIDEOREF@0x0CA6 0x4003 (MU[3]=mucd.vdx); VIDEOREF@0x0CB6 0x400A (MU[10]=mupib.vdx); VIDEOREF@0x0D3F 0x4007 (MU[7]=mugrb.vdx); VIDEOREF@0x0D52 0x2072 (HTBD[114]=bdab.vdx); VIDEOREF@0x0D59 0x207A (HTBD[122]=bdplb.vdx); VIDEOREF@0x0E25 0x206F (HTBD[111]=bd2p.vdx); VIDEOREF@0x0E45 0x2074 (HTBD[116]=bdcd.vdx); VIDEOREF@0x0E4B 0x2073 (HTBD[115]=bdabb.vdx); VIDEOREF@0x0F56 0x1418 (FH[24]=f6_1.vdx); VIDEOREF@0x0F89 0x1472 (FH[114]=h_1bb.vdx); VIDEOREF@0x0F9C 0x1477 (FH[119]=h_1fc.vdx); VIDEOREF@0x0FBB 0x1474 (FH[116]=h_1bd.vdx); VIDEOREF@0x0FC1 0x1475 (FH[117]=h_1fa.vdx); VIDEOREF@0x1027 0x145C (FH[92]=h2_1.vdx); VIDEOREF@0x1086 0x146B (FH[107]=h8_1.vdx); VIDEOREF@0x12CB 0x2007 (HTBD[7]=htab.vdx); VIDEOREF@0x1322 0x2004 (HTBD[4]=ht2p.vdx); VIDEOREF@0x132B 0x2008 (HTBD[8]=ht_mess.vdx); VIDEOREF@0x1337 0x2009 (HTBD[9]=htcd.vdx); VIDEOREF@0x1395 0x1808 (GA[8]=gaab.vdx); VIDEOREF@0x1456 0x1801 (GA[1]=ga1pb.vdx); VIDEOREF@0x145C 0x1801 (GA[1]=ga1pb.vdx); VIDEOREF@0x148B 0x1809 (GA[9]=gaabb.vdx); VIDEOREF@0x1491 0x180B (GA[11]=gacd.vdx); VIDEOREF@0x149D 0x2869 (JHEK[105]=jhab.vdx); VIDEOREF@0x1556 0x2877 (JHEK[119]=jhpub.vdx); VIDEOREF@0x1583 0x2875 (JHEK[117]=jhmib.vdx); VIDEOREF@0x159F 0x2875 (JHEK[117]=jhmib.vdx); VIDEOREF@0x15C5 0x286A (JHEK[106]=jhabb.vdx); VIDEOREF@0x15CB 0x286D (JHEK[109]=jhcd.vdx); VIDEOREF@0x15F4 0x4803 (P[3]=pfa.vdx); VIDEOREF@0x1635 0x480A (P[10]=pfdb.vdx); VIDEOREF@0x1661 0x4809 (P[9]=pfd.vdx); VIDEOREF@0x1672 0x480C (P[12]=pmu.vdx); VIDEOREF@0x1682 0x4807 (P[7]=pfc.vdx); VIDEOREF@0x16B3 0x4804 (P[4]=pfab.vdx); VIDEOREF@0x2185 0x3400 (LI[0]=l1_2.vdx); VIDEOREF@0x2935 0x3402 (LI[2]=l1_cb.vdx); VIDEOREF@0x29F5 0x1422 (FH[34]=f_1bb.vdx); VIDEOREF@0x2A19 0x3402 (LI[2]=l1_cb.vdx); VIDEOREF@0x2A5F 0x3428 (LI[40]=l_1ba.vdx); VIDEOREF@0x2A65 0x342B (LI[43]=l_1fc.vdx); VIDEOREF@0x2AE8 0x3406 (LI[6]=l2_3b.vdx); VIDEOREF@0x2AFB 0x342F (LI[47]=l_2bd.vdx); VIDEOREF@0x2B4D 0x3432 (LI[50]=l_2fc.vdx); VIDEOREF@0x2B5F 0x342F (LI[47]=l_2bd.vdx); VIDEOREF@0x2D0C 0x2881 (JHEK[129]=ekab.vdx); VIDEOREF@0x2D99 0x287B (JHEK[123]=ek1pb.vdx); VIDEOREF@0x2D9F 0x287B (JHEK[123]=ek1pb.vdx); VIDEOREF@0x2DCE 0x288C (JHEK[140]=ekmbb.vdx); VIDEOREF@0x2DD7 0x2883 (JHEK[131]=ekbc.vdx); VIDEOREF@0x2E24 0x2887 (JHEK[135]=ekcd.vdx); VIDEOREF@0x2E2D 0x2882 (JHEK[130]=ekabb.vdx); VIDEOREF@0x2E33 0x2888 (JHEK[136]=ekcdb.vdx); VIDEOREF@0x2E50 0x0807 (CH[7]=chab.vdx); VIDEOREF@0x2EB2 0x080A (CH[10]=chcd.vdx); VIDEOREF@0x2EB8 0x0808 (CH[8]=chabb.vdx); VIDEOREF@0x2ECC 0x0811 (CH[17]=chpub.vdx); VIDEOREF@0x2ED2 0x0809 (CH[9]=chal.vdx); VIDEOREF@0x2F34 0x080F (CH[15]=chorb.vdx); VIDEOREF@0x2F4A 0x4406 (N[6]=nab.vdx); VIDEOREF@0x3004 0x4408 (N[8]=ncd.vdx); VIDEOREF@0x300A 0x4407 (N[7]=nabb.vdx); VIDEOREF@0x301B 0x440A (N[10]=ncri.vdx); VIDEOREF@0x303C 0x440B (N[11]=ncrib.vdx); VIDEOREF@0x3074 0x4410 (N[16]=njacb.vdx); VIDEOREF@0x3084 0x4412 (N[18]=npuzb.vdx); VIDEOREF@0x3096 0x3010 (LA[16]=la_1fa.vdx); VIDEOREF@0x3165 0x300C (LA[12]=la_1ba.vdx); VIDEOREF@0x318F 0x3013 (LA[19]=la_1fd.vdx); VIDEOREF@0x3254 0x3803 (MB[3]=mbab.vdx); VIDEOREF@0x325C 0x383D (MB[61]=mb_warp.vdx); VIDEOREF@0x32BE 0x383F (MB[63]=sexbed.vdx); VIDEOREF@0x32F4 0x3809 (MB[9]=mbpub.vdx); VIDEOREF@0x330E 0x3804 (MB[4]=mbabb.vdx); VIDEOREF@0x3314 0x3805 (MB[5]=mbcd.vdx); VIDEOREF@0x3345 0x0C09 (D[9]=d_1fa.vdx); VIDEOREF@0x33D0 0x0C03 (D[3]=d1_3b.vdx); VIDEOREF@0x33F3 0x0C07 (D[7]=d_1ba.vdx); VIDEOREF@0x33F9 0x0C0A (D[10]=d_1fc.vdx); VIDEOREF@0x3944 0x2875 (JHEK[117]=jhmib.vdx); VIDEOREF@0x39BA 0x383D (MB[61]=mb_warp.vdx); VIDEOREF@0x3ABA 0x1426 (FH[38]=f_1fb.vdx); VIDEOREF@0x3AEC 0x2C05 (K[5]=k2_7b.vdx); VIDEOREF@0x3B22 0x2C0E (K[14]=k_1tb.vdx); VIDEOREF@0x3B88 0x1405 (FH[5]=f1_pb.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x2B11` | `HOTSPOT_RECT` | left=0x005C, top=0x00AF, right=0x0133, bottom=0x015C, target=0x2B2D, cursor=0x04 |
| `0x2B23` | `HOTSPOT_BOTTOM_4` | target=0x3912 |
| `0x2B26` | `HOTSPOT_LEFT` | target=0x2B6B |
| `0x2B29` | `HOTSPOT_RIGHT` | target=0x2B71 |

### Loop `0x2B9A`–`0x2BD0`

Nearest preceding video in file order: VIDEOREF@0x2B97 0x040B (B[11]=b_fb.vdx)

Scene candidates: VIDEOREF@0x2B7D 0x0408 (B[8]=b_1bf.vdx); VIDEOREF@0x2B97 0x040B (B[11]=b_fb.vdx); VIDEOREF@0x2BDB 0x0401 (B[1]=b1_2b.vdx); VIDEOREF@0x2C14 0x0407 (B[7]=b_1bb.vdx); VIDEOREF@0x2C1A 0x0405 (B[5]=b_1ab.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x2B9B` | `HOTSPOT_RIGHT` | target=0x2BF7 |
| `0x2B9E` | `HOTSPOT_LEFT` | target=0x2BF1 |
| `0x2BA1` | `HOTSPOT_RECT` | left=0x005F, top=0x00E0, right=0x00E2, bottom=0x0115, target=0x2BE1, cursor=0x07 |
| `0x2BB2` | `HOTSPOT_RECT` | left=0x004F, top=0x0150, right=0x0130, bottom=0x018F, target=0x2BD1, cursor=0x06 |
| `0x2BC4` | `HOTSPOT_RECT` | left=0x004F, top=0x0150, right=0x0130, bottom=0x018F, target=0x2BD1, cursor=0x06 |

### Loop `0x2BFA`–`0x2C04`

Nearest preceding video in file order: VIDEOREF@0x2BF7 0x0406 (B[6]=b_1af.vdx)

Scene candidates: VIDEOREF@0x2BF1 0x0408 (B[8]=b_1bf.vdx); VIDEOREF@0x2BF7 0x0406 (B[6]=b_1af.vdx); VIDEOREF@0x2E3D 0x0404 (B[4]=b4_1.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x2BFB` | `HOTSPOT_RIGHT` | target=0x2C14 |
| `0x2BFE` | `HOTSPOT_LEFT` | target=0x2C1A |
| `0x2C01` | `HOTSPOT_CENTER` | target=0x2C05 |

### Loop `0x2C2C`–`0x2C79`

Nearest preceding video in file order: VIDEOREF@0x2C29 0x0011 (AT[17]=atab.vdx)

Scene candidates: VIDEOREF@0x2C29 0x0011 (AT[17]=atab.vdx); VIDEOREF@0x2CA1 0x0004 (AT[4]=at1pb.vdx); VIDEOREF@0x2CC6 0x0006 (AT[6]=at1sb.vdx); VIDEOREF@0x2CFA 0x0013 (AT[19]=atcd.vdx); VIDEOREF@0x2D00 0x0012 (AT[18]=atabb.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x2C32` | `HOTSPOT_RECT` | left=0x00FB, top=0x0122, right=0x0185, bottom=0x017B, target=0x2CB2, cursor=0x07 |
| `0x2C44` | `HOTSPOT_RECT` | left=0x0129, top=0x0094, right=0x0156, bottom=0x00EB, target=0x2CCC, cursor=0x00 |
| `0x2C55` | `HOTSPOT_RECT` | left=0x0206, top=0x0088, right=0x0266, bottom=0x0158, target=0x2C7A, cursor=0x06 |
| `0x2C67` | `HOTSPOT_RECT` | left=0x0206, top=0x0088, right=0x0266, bottom=0x0158, target=0x2C7A, cursor=0x06 |
| `0x2C73` | `HOTSPOT_RIGHT` | target=0x2CE3 |
| `0x2C76` | `HOTSPOT_LEFT` | target=0x2CDD |

### Loop `0x2CD2`–`0x2CD6`

Nearest preceding video in file order: VIDEOREF@0x2CCC 0x0002 (AT[2]=at1f.vdx)

Scene candidates: VIDEOREF@0x2CCC 0x0002 (AT[2]=at1f.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x2CD3` | `HOTSPOT_LEFT` | target=0x2CD7 |

### Loop `0x2CE9`–`0x2CF3`

Nearest preceding video in file order: VIDEOREF@0x2CE3 0x0011 (AT[17]=atab.vdx)

Scene candidates: VIDEOREF@0x2CDD 0x0014 (AT[20]=atcdb.vdx); VIDEOREF@0x2CE3 0x0011 (AT[17]=atab.vdx); VIDEOREF@0x2CF4 0x001A (AT[26]=atdwarp.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x2CEA` | `HOTSPOT_CENTER_2` | target=0x2CF4 |
| `0x2CED` | `HOTSPOT_RIGHT` | target=0x2CFA |
| `0x2CF0` | `HOTSPOT_LEFT` | target=0x2D00 |

### Loop `0x2D1E`–`0x2D57`

Nearest preceding video in file order: VIDEOREF@0x2D0C 0x2881 (JHEK[129]=ekab.vdx)

Scene candidates: VIDEOREF@0x03E2 0x1403 (FH[3]=f1_6.vdx); VIDEOREF@0x04F9 0x5001 (GAMWAV[1]=1_e_2.vdx); VIDEOREF@0x0651 0x1405 (FH[5]=f1_pb.vdx); VIDEOREF@0x069B 0x1421 (FH[33]=f_1ba.vdx); VIDEOREF@0x06A1 0x1426 (FH[38]=f_1fb.vdx); VIDEOREF@0x06B3 0x1423 (FH[35]=f_1bc.vdx); VIDEOREF@0x06B9 0x1428 (FH[40]=f_1fd.vdx); VIDEOREF@0x0704 0x140A (FH[10]=f2_1.vdx); VIDEOREF@0x08A6 0x1415 (FH[21]=f5_1.vdx); VIDEOREF@0x0957 0x105F (DR[95]=dr_mi.vdx); VIDEOREF@0x09DF 0x1000 (DR[0]=come.vdx); VIDEOREF@0x09FB 0x106A (DR[106]=dr_vb.vdx); VIDEOREF@0x0A04 0x1063 (DR[99]=dr_r.vdx); VIDEOREF@0x0A1C 0x2C0C (K[12]=k_1ba.vdx); VIDEOREF@0x0A39 0x2C0E (K[14]=k_1tb.vdx); VIDEOREF@0x0AA6 0x2C0D (K[13]=k_1fa.vdx); VIDEOREF@0x0B7C 0x2C14 (K[20]=k_2fa.vdx); VIDEOREF@0x0B82 0x2C11 (K[17]=k_2bb.vdx); VIDEOREF@0x0BA8 0x2C05 (K[5]=k2_7b.vdx); VIDEOREF@0x0BE7 0x4001 (MU[1]=muab.vdx); VIDEOREF@0x0CA0 0x4002 (MU[2]=muabb.vdx); VIDEOREF@0x0CA6 0x4003 (MU[3]=mucd.vdx); VIDEOREF@0x0CB6 0x400A (MU[10]=mupib.vdx); VIDEOREF@0x0D3F 0x4007 (MU[7]=mugrb.vdx); VIDEOREF@0x0D52 0x2072 (HTBD[114]=bdab.vdx); VIDEOREF@0x0D59 0x207A (HTBD[122]=bdplb.vdx); VIDEOREF@0x0E25 0x206F (HTBD[111]=bd2p.vdx); VIDEOREF@0x0E45 0x2074 (HTBD[116]=bdcd.vdx); VIDEOREF@0x0E4B 0x2073 (HTBD[115]=bdabb.vdx); VIDEOREF@0x0F56 0x1418 (FH[24]=f6_1.vdx); VIDEOREF@0x0F89 0x1472 (FH[114]=h_1bb.vdx); VIDEOREF@0x0F9C 0x1477 (FH[119]=h_1fc.vdx); VIDEOREF@0x0FBB 0x1474 (FH[116]=h_1bd.vdx); VIDEOREF@0x0FC1 0x1475 (FH[117]=h_1fa.vdx); VIDEOREF@0x1027 0x145C (FH[92]=h2_1.vdx); VIDEOREF@0x1086 0x146B (FH[107]=h8_1.vdx); VIDEOREF@0x12CB 0x2007 (HTBD[7]=htab.vdx); VIDEOREF@0x1322 0x2004 (HTBD[4]=ht2p.vdx); VIDEOREF@0x132B 0x2008 (HTBD[8]=ht_mess.vdx); VIDEOREF@0x1337 0x2009 (HTBD[9]=htcd.vdx); VIDEOREF@0x1395 0x1808 (GA[8]=gaab.vdx); VIDEOREF@0x1456 0x1801 (GA[1]=ga1pb.vdx); VIDEOREF@0x145C 0x1801 (GA[1]=ga1pb.vdx); VIDEOREF@0x148B 0x1809 (GA[9]=gaabb.vdx); VIDEOREF@0x1491 0x180B (GA[11]=gacd.vdx); VIDEOREF@0x149D 0x2869 (JHEK[105]=jhab.vdx); VIDEOREF@0x1556 0x2877 (JHEK[119]=jhpub.vdx); VIDEOREF@0x1583 0x2875 (JHEK[117]=jhmib.vdx); VIDEOREF@0x159F 0x2875 (JHEK[117]=jhmib.vdx); VIDEOREF@0x15C5 0x286A (JHEK[106]=jhabb.vdx); VIDEOREF@0x15CB 0x286D (JHEK[109]=jhcd.vdx); VIDEOREF@0x15F4 0x4803 (P[3]=pfa.vdx); VIDEOREF@0x1635 0x480A (P[10]=pfdb.vdx); VIDEOREF@0x1661 0x4809 (P[9]=pfd.vdx); VIDEOREF@0x1672 0x480C (P[12]=pmu.vdx); VIDEOREF@0x1682 0x4807 (P[7]=pfc.vdx); VIDEOREF@0x16B3 0x4804 (P[4]=pfab.vdx); VIDEOREF@0x2185 0x3400 (LI[0]=l1_2.vdx); VIDEOREF@0x2935 0x3402 (LI[2]=l1_cb.vdx); VIDEOREF@0x29F5 0x1422 (FH[34]=f_1bb.vdx); VIDEOREF@0x2A19 0x3402 (LI[2]=l1_cb.vdx); VIDEOREF@0x2A5F 0x3428 (LI[40]=l_1ba.vdx); VIDEOREF@0x2A65 0x342B (LI[43]=l_1fc.vdx); VIDEOREF@0x2AE8 0x3406 (LI[6]=l2_3b.vdx); VIDEOREF@0x2AFB 0x342F (LI[47]=l_2bd.vdx); VIDEOREF@0x2B4D 0x3432 (LI[50]=l_2fc.vdx); VIDEOREF@0x2B5F 0x342F (LI[47]=l_2bd.vdx); VIDEOREF@0x2D0C 0x2881 (JHEK[129]=ekab.vdx); VIDEOREF@0x2D99 0x287B (JHEK[123]=ek1pb.vdx); VIDEOREF@0x2D9F 0x287B (JHEK[123]=ek1pb.vdx); VIDEOREF@0x2DCE 0x288C (JHEK[140]=ekmbb.vdx); VIDEOREF@0x2DD7 0x2883 (JHEK[131]=ekbc.vdx); VIDEOREF@0x2E24 0x2887 (JHEK[135]=ekcd.vdx); VIDEOREF@0x2E2D 0x2882 (JHEK[130]=ekabb.vdx); VIDEOREF@0x2E33 0x2888 (JHEK[136]=ekcdb.vdx); VIDEOREF@0x2E50 0x0807 (CH[7]=chab.vdx); VIDEOREF@0x2EB2 0x080A (CH[10]=chcd.vdx); VIDEOREF@0x2EB8 0x0808 (CH[8]=chabb.vdx); VIDEOREF@0x2ECC 0x0811 (CH[17]=chpub.vdx); VIDEOREF@0x2ED2 0x0809 (CH[9]=chal.vdx); VIDEOREF@0x2F34 0x080F (CH[15]=chorb.vdx); VIDEOREF@0x2F4A 0x4406 (N[6]=nab.vdx); VIDEOREF@0x3004 0x4408 (N[8]=ncd.vdx); VIDEOREF@0x300A 0x4407 (N[7]=nabb.vdx); VIDEOREF@0x301B 0x440A (N[10]=ncri.vdx); VIDEOREF@0x303C 0x440B (N[11]=ncrib.vdx); VIDEOREF@0x3074 0x4410 (N[16]=njacb.vdx); VIDEOREF@0x3084 0x4412 (N[18]=npuzb.vdx); VIDEOREF@0x3096 0x3010 (LA[16]=la_1fa.vdx); VIDEOREF@0x3165 0x300C (LA[12]=la_1ba.vdx); VIDEOREF@0x318F 0x3013 (LA[19]=la_1fd.vdx); VIDEOREF@0x3254 0x3803 (MB[3]=mbab.vdx); VIDEOREF@0x325C 0x383D (MB[61]=mb_warp.vdx); VIDEOREF@0x32BE 0x383F (MB[63]=sexbed.vdx); VIDEOREF@0x32F4 0x3809 (MB[9]=mbpub.vdx); VIDEOREF@0x330E 0x3804 (MB[4]=mbabb.vdx); VIDEOREF@0x3314 0x3805 (MB[5]=mbcd.vdx); VIDEOREF@0x3345 0x0C09 (D[9]=d_1fa.vdx); VIDEOREF@0x33D0 0x0C03 (D[3]=d1_3b.vdx); VIDEOREF@0x33F3 0x0C07 (D[7]=d_1ba.vdx); VIDEOREF@0x33F9 0x0C0A (D[10]=d_1fc.vdx); VIDEOREF@0x3944 0x2875 (JHEK[117]=jhmib.vdx); VIDEOREF@0x39BA 0x383D (MB[61]=mb_warp.vdx); VIDEOREF@0x3ABA 0x1426 (FH[38]=f_1fb.vdx); VIDEOREF@0x3AEC 0x2C05 (K[5]=k2_7b.vdx); VIDEOREF@0x3B22 0x2C0E (K[14]=k_1tb.vdx); VIDEOREF@0x3B88 0x1405 (FH[5]=f1_pb.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x2D1F` | `HOTSPOT_RECT` | left=0x0032, top=0x0050, right=0x0096, bottom=0x00C8, target=0x2DA5, cursor=0x00 |
| `0x2D2B` | `HOTSPOT_RIGHT` | target=0x2DD4 |
| `0x2D2E` | `HOTSPOT_LEFT` | target=0x2E33 |
| `0x2D36` | `HOTSPOT_RECT` | left=0x00FA, top=0x00B4, right=0x015E, bottom=0x0118, target=0x2E39, cursor=0x03 |
| `0x2D42` | `HOTSPOT_RECT` | left=0x00C8, top=0x012C, right=0x01B7, bottom=0x018F, target=0x2D58, cursor=0x06 |
| `0x2D54` | `HOTSPOT_BOTTOM_4` | target=0x3912 |

### Loop `0x2D5B`–`0x2D8B`

Nearest preceding video in file order: VIDEOREF@0x2D58 0x287A (JHEK[122]=ek1p.vdx)

Scene candidates: VIDEOREF@0x2D58 0x287A (JHEK[122]=ek1p.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x2D61` | `HOTSPOT_RECT` | left=0x0000, top=0x0050, right=0x027F, bottom=0x0118, target=0x2D8C, cursor=0x06 |
| `0x2D73` | `HOTSPOT_RECT` | left=0x0000, top=0x0050, right=0x027F, bottom=0x0118, target=0x2D8C, cursor=0x06 |
| `0x2D7F` | `HOTSPOT_RECT` | left=0x0000, top=0x012C, right=0x027F, bottom=0x018F, target=0x2D9F, cursor=0x00 |

### Loop `0x2DBD`–`0x2DCD`

Nearest preceding video in file order: VIDEOREF@0x2DB7 0x2878 (JHEK[120]=ek1n.vdx)

Scene candidates: VIDEOREF@0x2DA5 0x288B (JHEK[139]=ekmb.vdx); VIDEOREF@0x2DB7 0x2878 (JHEK[120]=ek1n.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x2DBE` | `HOTSPOT_RECT` | left=0x00C8, top=0x0050, right=0x01B7, bottom=0x018F, target=0x2DAB, cursor=0x07 |
| `0x2DCA` | `HOTSPOT_LEFT` | target=0x2DCE |

### Loop `0x2DDA`–`0x2E07`

Nearest preceding video in file order: VIDEOREF@0x2DD7 0x2883 (JHEK[131]=ekbc.vdx)

Scene candidates: VIDEOREF@0x03E2 0x1403 (FH[3]=f1_6.vdx); VIDEOREF@0x04F9 0x5001 (GAMWAV[1]=1_e_2.vdx); VIDEOREF@0x0651 0x1405 (FH[5]=f1_pb.vdx); VIDEOREF@0x069B 0x1421 (FH[33]=f_1ba.vdx); VIDEOREF@0x06A1 0x1426 (FH[38]=f_1fb.vdx); VIDEOREF@0x06B3 0x1423 (FH[35]=f_1bc.vdx); VIDEOREF@0x06B9 0x1428 (FH[40]=f_1fd.vdx); VIDEOREF@0x0704 0x140A (FH[10]=f2_1.vdx); VIDEOREF@0x08A6 0x1415 (FH[21]=f5_1.vdx); VIDEOREF@0x0957 0x105F (DR[95]=dr_mi.vdx); VIDEOREF@0x09DF 0x1000 (DR[0]=come.vdx); VIDEOREF@0x09FB 0x106A (DR[106]=dr_vb.vdx); VIDEOREF@0x0A04 0x1063 (DR[99]=dr_r.vdx); VIDEOREF@0x0A1C 0x2C0C (K[12]=k_1ba.vdx); VIDEOREF@0x0A39 0x2C0E (K[14]=k_1tb.vdx); VIDEOREF@0x0AA6 0x2C0D (K[13]=k_1fa.vdx); VIDEOREF@0x0B7C 0x2C14 (K[20]=k_2fa.vdx); VIDEOREF@0x0B82 0x2C11 (K[17]=k_2bb.vdx); VIDEOREF@0x0BA8 0x2C05 (K[5]=k2_7b.vdx); VIDEOREF@0x0BE7 0x4001 (MU[1]=muab.vdx); VIDEOREF@0x0CA0 0x4002 (MU[2]=muabb.vdx); VIDEOREF@0x0CA6 0x4003 (MU[3]=mucd.vdx); VIDEOREF@0x0CB6 0x400A (MU[10]=mupib.vdx); VIDEOREF@0x0D3F 0x4007 (MU[7]=mugrb.vdx); VIDEOREF@0x0D52 0x2072 (HTBD[114]=bdab.vdx); VIDEOREF@0x0D59 0x207A (HTBD[122]=bdplb.vdx); VIDEOREF@0x0E25 0x206F (HTBD[111]=bd2p.vdx); VIDEOREF@0x0E45 0x2074 (HTBD[116]=bdcd.vdx); VIDEOREF@0x0E4B 0x2073 (HTBD[115]=bdabb.vdx); VIDEOREF@0x0F56 0x1418 (FH[24]=f6_1.vdx); VIDEOREF@0x0F89 0x1472 (FH[114]=h_1bb.vdx); VIDEOREF@0x0F9C 0x1477 (FH[119]=h_1fc.vdx); VIDEOREF@0x0FBB 0x1474 (FH[116]=h_1bd.vdx); VIDEOREF@0x0FC1 0x1475 (FH[117]=h_1fa.vdx); VIDEOREF@0x1027 0x145C (FH[92]=h2_1.vdx); VIDEOREF@0x1086 0x146B (FH[107]=h8_1.vdx); VIDEOREF@0x12CB 0x2007 (HTBD[7]=htab.vdx); VIDEOREF@0x1322 0x2004 (HTBD[4]=ht2p.vdx); VIDEOREF@0x132B 0x2008 (HTBD[8]=ht_mess.vdx); VIDEOREF@0x1337 0x2009 (HTBD[9]=htcd.vdx); VIDEOREF@0x1395 0x1808 (GA[8]=gaab.vdx); VIDEOREF@0x1456 0x1801 (GA[1]=ga1pb.vdx); VIDEOREF@0x145C 0x1801 (GA[1]=ga1pb.vdx); VIDEOREF@0x148B 0x1809 (GA[9]=gaabb.vdx); VIDEOREF@0x1491 0x180B (GA[11]=gacd.vdx); VIDEOREF@0x149D 0x2869 (JHEK[105]=jhab.vdx); VIDEOREF@0x1556 0x2877 (JHEK[119]=jhpub.vdx); VIDEOREF@0x1583 0x2875 (JHEK[117]=jhmib.vdx); VIDEOREF@0x159F 0x2875 (JHEK[117]=jhmib.vdx); VIDEOREF@0x15C5 0x286A (JHEK[106]=jhabb.vdx); VIDEOREF@0x15CB 0x286D (JHEK[109]=jhcd.vdx); VIDEOREF@0x15F4 0x4803 (P[3]=pfa.vdx); VIDEOREF@0x1635 0x480A (P[10]=pfdb.vdx); VIDEOREF@0x1661 0x4809 (P[9]=pfd.vdx); VIDEOREF@0x1672 0x480C (P[12]=pmu.vdx); VIDEOREF@0x1682 0x4807 (P[7]=pfc.vdx); VIDEOREF@0x16B3 0x4804 (P[4]=pfab.vdx); VIDEOREF@0x2185 0x3400 (LI[0]=l1_2.vdx); VIDEOREF@0x2935 0x3402 (LI[2]=l1_cb.vdx); VIDEOREF@0x29F5 0x1422 (FH[34]=f_1bb.vdx); VIDEOREF@0x2A19 0x3402 (LI[2]=l1_cb.vdx); VIDEOREF@0x2A5F 0x3428 (LI[40]=l_1ba.vdx); VIDEOREF@0x2A65 0x342B (LI[43]=l_1fc.vdx); VIDEOREF@0x2AE8 0x3406 (LI[6]=l2_3b.vdx); VIDEOREF@0x2AFB 0x342F (LI[47]=l_2bd.vdx); VIDEOREF@0x2B4D 0x3432 (LI[50]=l_2fc.vdx); VIDEOREF@0x2B5F 0x342F (LI[47]=l_2bd.vdx); VIDEOREF@0x2D0C 0x2881 (JHEK[129]=ekab.vdx); VIDEOREF@0x2D99 0x287B (JHEK[123]=ek1pb.vdx); VIDEOREF@0x2D9F 0x287B (JHEK[123]=ek1pb.vdx); VIDEOREF@0x2DCE 0x288C (JHEK[140]=ekmbb.vdx); VIDEOREF@0x2DD7 0x2883 (JHEK[131]=ekbc.vdx); VIDEOREF@0x2E24 0x2887 (JHEK[135]=ekcd.vdx); VIDEOREF@0x2E2D 0x2882 (JHEK[130]=ekabb.vdx); VIDEOREF@0x2E33 0x2888 (JHEK[136]=ekcdb.vdx); VIDEOREF@0x2E50 0x0807 (CH[7]=chab.vdx); VIDEOREF@0x2EB2 0x080A (CH[10]=chcd.vdx); VIDEOREF@0x2EB8 0x0808 (CH[8]=chabb.vdx); VIDEOREF@0x2ECC 0x0811 (CH[17]=chpub.vdx); VIDEOREF@0x2ED2 0x0809 (CH[9]=chal.vdx); VIDEOREF@0x2F34 0x080F (CH[15]=chorb.vdx); VIDEOREF@0x2F4A 0x4406 (N[6]=nab.vdx); VIDEOREF@0x3004 0x4408 (N[8]=ncd.vdx); VIDEOREF@0x300A 0x4407 (N[7]=nabb.vdx); VIDEOREF@0x301B 0x440A (N[10]=ncri.vdx); VIDEOREF@0x303C 0x440B (N[11]=ncrib.vdx); VIDEOREF@0x3074 0x4410 (N[16]=njacb.vdx); VIDEOREF@0x3084 0x4412 (N[18]=npuzb.vdx); VIDEOREF@0x3096 0x3010 (LA[16]=la_1fa.vdx); VIDEOREF@0x3165 0x300C (LA[12]=la_1ba.vdx); VIDEOREF@0x318F 0x3013 (LA[19]=la_1fd.vdx); VIDEOREF@0x3254 0x3803 (MB[3]=mbab.vdx); VIDEOREF@0x325C 0x383D (MB[61]=mb_warp.vdx); VIDEOREF@0x32BE 0x383F (MB[63]=sexbed.vdx); VIDEOREF@0x32F4 0x3809 (MB[9]=mbpub.vdx); VIDEOREF@0x330E 0x3804 (MB[4]=mbabb.vdx); VIDEOREF@0x3314 0x3805 (MB[5]=mbcd.vdx); VIDEOREF@0x3345 0x0C09 (D[9]=d_1fa.vdx); VIDEOREF@0x33D0 0x0C03 (D[3]=d1_3b.vdx); VIDEOREF@0x33F3 0x0C07 (D[7]=d_1ba.vdx); VIDEOREF@0x33F9 0x0C0A (D[10]=d_1fc.vdx); VIDEOREF@0x3944 0x2875 (JHEK[117]=jhmib.vdx); VIDEOREF@0x39BA 0x383D (MB[61]=mb_warp.vdx); VIDEOREF@0x3ABA 0x1426 (FH[38]=f_1fb.vdx); VIDEOREF@0x3AEC 0x2C05 (K[5]=k2_7b.vdx); VIDEOREF@0x3B22 0x2C0E (K[14]=k_1tb.vdx); VIDEOREF@0x3B88 0x1405 (FH[5]=f1_pb.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x2DE0` | `HOTSPOT_RECT` | left=0x017A, top=0x006B, right=0x021C, bottom=0x018B, target=0x2E08, cursor=0x04 |
| `0x2DF2` | `HOTSPOT_BOTTOM_4` | target=0x3912 |
| `0x2DF5` | `HOTSPOT_LEFT` | target=0x2E2A |
| `0x2DF8` | `HOTSPOT_RIGHT` | target=0x2E24 |
| `0x2DFB` | `HOTSPOT_RECT` | left=0x001F, top=0x005C, right=0x00F5, bottom=0x0191, target=0x2E15, cursor=0x00 |

### Loop `0x2E62`–`0x2E9D`

Nearest preceding video in file order: VIDEOREF@0x2E50 0x0807 (CH[7]=chab.vdx)

Scene candidates: VIDEOREF@0x03E2 0x1403 (FH[3]=f1_6.vdx); VIDEOREF@0x04F9 0x5001 (GAMWAV[1]=1_e_2.vdx); VIDEOREF@0x0651 0x1405 (FH[5]=f1_pb.vdx); VIDEOREF@0x069B 0x1421 (FH[33]=f_1ba.vdx); VIDEOREF@0x06A1 0x1426 (FH[38]=f_1fb.vdx); VIDEOREF@0x06B3 0x1423 (FH[35]=f_1bc.vdx); VIDEOREF@0x06B9 0x1428 (FH[40]=f_1fd.vdx); VIDEOREF@0x0704 0x140A (FH[10]=f2_1.vdx); VIDEOREF@0x08A6 0x1415 (FH[21]=f5_1.vdx); VIDEOREF@0x0957 0x105F (DR[95]=dr_mi.vdx); VIDEOREF@0x09DF 0x1000 (DR[0]=come.vdx); VIDEOREF@0x09FB 0x106A (DR[106]=dr_vb.vdx); VIDEOREF@0x0A04 0x1063 (DR[99]=dr_r.vdx); VIDEOREF@0x0A1C 0x2C0C (K[12]=k_1ba.vdx); VIDEOREF@0x0A39 0x2C0E (K[14]=k_1tb.vdx); VIDEOREF@0x0AA6 0x2C0D (K[13]=k_1fa.vdx); VIDEOREF@0x0B7C 0x2C14 (K[20]=k_2fa.vdx); VIDEOREF@0x0B82 0x2C11 (K[17]=k_2bb.vdx); VIDEOREF@0x0BA8 0x2C05 (K[5]=k2_7b.vdx); VIDEOREF@0x0BE7 0x4001 (MU[1]=muab.vdx); VIDEOREF@0x0CA0 0x4002 (MU[2]=muabb.vdx); VIDEOREF@0x0CA6 0x4003 (MU[3]=mucd.vdx); VIDEOREF@0x0CB6 0x400A (MU[10]=mupib.vdx); VIDEOREF@0x0D3F 0x4007 (MU[7]=mugrb.vdx); VIDEOREF@0x0D52 0x2072 (HTBD[114]=bdab.vdx); VIDEOREF@0x0D59 0x207A (HTBD[122]=bdplb.vdx); VIDEOREF@0x0E25 0x206F (HTBD[111]=bd2p.vdx); VIDEOREF@0x0E45 0x2074 (HTBD[116]=bdcd.vdx); VIDEOREF@0x0E4B 0x2073 (HTBD[115]=bdabb.vdx); VIDEOREF@0x0F56 0x1418 (FH[24]=f6_1.vdx); VIDEOREF@0x0F89 0x1472 (FH[114]=h_1bb.vdx); VIDEOREF@0x0F9C 0x1477 (FH[119]=h_1fc.vdx); VIDEOREF@0x0FBB 0x1474 (FH[116]=h_1bd.vdx); VIDEOREF@0x0FC1 0x1475 (FH[117]=h_1fa.vdx); VIDEOREF@0x1027 0x145C (FH[92]=h2_1.vdx); VIDEOREF@0x1086 0x146B (FH[107]=h8_1.vdx); VIDEOREF@0x12CB 0x2007 (HTBD[7]=htab.vdx); VIDEOREF@0x1322 0x2004 (HTBD[4]=ht2p.vdx); VIDEOREF@0x132B 0x2008 (HTBD[8]=ht_mess.vdx); VIDEOREF@0x1337 0x2009 (HTBD[9]=htcd.vdx); VIDEOREF@0x1395 0x1808 (GA[8]=gaab.vdx); VIDEOREF@0x1456 0x1801 (GA[1]=ga1pb.vdx); VIDEOREF@0x145C 0x1801 (GA[1]=ga1pb.vdx); VIDEOREF@0x148B 0x1809 (GA[9]=gaabb.vdx); VIDEOREF@0x1491 0x180B (GA[11]=gacd.vdx); VIDEOREF@0x149D 0x2869 (JHEK[105]=jhab.vdx); VIDEOREF@0x1556 0x2877 (JHEK[119]=jhpub.vdx); VIDEOREF@0x1583 0x2875 (JHEK[117]=jhmib.vdx); VIDEOREF@0x159F 0x2875 (JHEK[117]=jhmib.vdx); VIDEOREF@0x15C5 0x286A (JHEK[106]=jhabb.vdx); VIDEOREF@0x15CB 0x286D (JHEK[109]=jhcd.vdx); VIDEOREF@0x15F4 0x4803 (P[3]=pfa.vdx); VIDEOREF@0x1635 0x480A (P[10]=pfdb.vdx); VIDEOREF@0x1661 0x4809 (P[9]=pfd.vdx); VIDEOREF@0x1672 0x480C (P[12]=pmu.vdx); VIDEOREF@0x1682 0x4807 (P[7]=pfc.vdx); VIDEOREF@0x16B3 0x4804 (P[4]=pfab.vdx); VIDEOREF@0x2185 0x3400 (LI[0]=l1_2.vdx); VIDEOREF@0x2935 0x3402 (LI[2]=l1_cb.vdx); VIDEOREF@0x29F5 0x1422 (FH[34]=f_1bb.vdx); VIDEOREF@0x2A19 0x3402 (LI[2]=l1_cb.vdx); VIDEOREF@0x2A5F 0x3428 (LI[40]=l_1ba.vdx); VIDEOREF@0x2A65 0x342B (LI[43]=l_1fc.vdx); VIDEOREF@0x2AE8 0x3406 (LI[6]=l2_3b.vdx); VIDEOREF@0x2AFB 0x342F (LI[47]=l_2bd.vdx); VIDEOREF@0x2B4D 0x3432 (LI[50]=l_2fc.vdx); VIDEOREF@0x2B5F 0x342F (LI[47]=l_2bd.vdx); VIDEOREF@0x2D0C 0x2881 (JHEK[129]=ekab.vdx); VIDEOREF@0x2D99 0x287B (JHEK[123]=ek1pb.vdx); VIDEOREF@0x2D9F 0x287B (JHEK[123]=ek1pb.vdx); VIDEOREF@0x2DCE 0x288C (JHEK[140]=ekmbb.vdx); VIDEOREF@0x2DD7 0x2883 (JHEK[131]=ekbc.vdx); VIDEOREF@0x2E24 0x2887 (JHEK[135]=ekcd.vdx); VIDEOREF@0x2E2D 0x2882 (JHEK[130]=ekabb.vdx); VIDEOREF@0x2E33 0x2888 (JHEK[136]=ekcdb.vdx); VIDEOREF@0x2E50 0x0807 (CH[7]=chab.vdx); VIDEOREF@0x2EB2 0x080A (CH[10]=chcd.vdx); VIDEOREF@0x2EB8 0x0808 (CH[8]=chabb.vdx); VIDEOREF@0x2ECC 0x0811 (CH[17]=chpub.vdx); VIDEOREF@0x2ED2 0x0809 (CH[9]=chal.vdx); VIDEOREF@0x2F34 0x080F (CH[15]=chorb.vdx); VIDEOREF@0x2F4A 0x4406 (N[6]=nab.vdx); VIDEOREF@0x3004 0x4408 (N[8]=ncd.vdx); VIDEOREF@0x300A 0x4407 (N[7]=nabb.vdx); VIDEOREF@0x301B 0x440A (N[10]=ncri.vdx); VIDEOREF@0x303C 0x440B (N[11]=ncrib.vdx); VIDEOREF@0x3074 0x4410 (N[16]=njacb.vdx); VIDEOREF@0x3084 0x4412 (N[18]=npuzb.vdx); VIDEOREF@0x3096 0x3010 (LA[16]=la_1fa.vdx); VIDEOREF@0x3165 0x300C (LA[12]=la_1ba.vdx); VIDEOREF@0x318F 0x3013 (LA[19]=la_1fd.vdx); VIDEOREF@0x3254 0x3803 (MB[3]=mbab.vdx); VIDEOREF@0x325C 0x383D (MB[61]=mb_warp.vdx); VIDEOREF@0x32BE 0x383F (MB[63]=sexbed.vdx); VIDEOREF@0x32F4 0x3809 (MB[9]=mbpub.vdx); VIDEOREF@0x330E 0x3804 (MB[4]=mbabb.vdx); VIDEOREF@0x3314 0x3805 (MB[5]=mbcd.vdx); VIDEOREF@0x3345 0x0C09 (D[9]=d_1fa.vdx); VIDEOREF@0x33D0 0x0C03 (D[3]=d1_3b.vdx); VIDEOREF@0x33F3 0x0C07 (D[7]=d_1ba.vdx); VIDEOREF@0x33F9 0x0C0A (D[10]=d_1fc.vdx); VIDEOREF@0x3944 0x2875 (JHEK[117]=jhmib.vdx); VIDEOREF@0x39BA 0x383D (MB[61]=mb_warp.vdx); VIDEOREF@0x3ABA 0x1426 (FH[38]=f_1fb.vdx); VIDEOREF@0x3AEC 0x2C05 (K[5]=k2_7b.vdx); VIDEOREF@0x3B22 0x2C0E (K[14]=k_1tb.vdx); VIDEOREF@0x3B88 0x1405 (FH[5]=f1_pb.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x2E63` | `HOTSPOT_RIGHT` | target=0x2EA4 |
| `0x2E66` | `HOTSPOT_LEFT` | target=0x2E9E |
| `0x2E6E` | `HOTSPOT_RECT` | left=0x00E2, top=0x015F, right=0x018B, bottom=0x01A3, target=0x2EBE, cursor=0x06 |
| `0x2E80` | `HOTSPOT_RECT` | left=0x00E2, top=0x015F, right=0x018B, bottom=0x01A3, target=0x2EBE, cursor=0x06 |
| `0x2E92` | `HOTSPOT_BOTTOM_4` | target=0x3912 |
| `0x2E9A` | `HOTSPOT_CENTER` | target=0x2ED2 |

### Loop `0x2EAA`–`0x2EB1`

Nearest preceding video in file order: VIDEOREF@0x2EA4 0x0807 (CH[7]=chab.vdx)

Scene candidates: VIDEOREF@0x2E9E 0x080C (CH[12]=chcdb.vdx); VIDEOREF@0x2EA4 0x0807 (CH[7]=chab.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x2EAB` | `HOTSPOT_RIGHT` | target=0x2EB2 |
| `0x2EAE` | `HOTSPOT_LEFT` | target=0x2EB8 |

### Loop `0x2EE7`–`0x2EF7`

Nearest preceding video in file order: VIDEOREF@0x2ED2 0x0809 (CH[9]=chal.vdx)

Scene candidates: VIDEOREF@0x03E2 0x1403 (FH[3]=f1_6.vdx); VIDEOREF@0x04F9 0x5001 (GAMWAV[1]=1_e_2.vdx); VIDEOREF@0x0651 0x1405 (FH[5]=f1_pb.vdx); VIDEOREF@0x069B 0x1421 (FH[33]=f_1ba.vdx); VIDEOREF@0x06A1 0x1426 (FH[38]=f_1fb.vdx); VIDEOREF@0x06B3 0x1423 (FH[35]=f_1bc.vdx); VIDEOREF@0x06B9 0x1428 (FH[40]=f_1fd.vdx); VIDEOREF@0x0704 0x140A (FH[10]=f2_1.vdx); VIDEOREF@0x08A6 0x1415 (FH[21]=f5_1.vdx); VIDEOREF@0x0957 0x105F (DR[95]=dr_mi.vdx); VIDEOREF@0x09DF 0x1000 (DR[0]=come.vdx); VIDEOREF@0x09FB 0x106A (DR[106]=dr_vb.vdx); VIDEOREF@0x0A04 0x1063 (DR[99]=dr_r.vdx); VIDEOREF@0x0A1C 0x2C0C (K[12]=k_1ba.vdx); VIDEOREF@0x0A39 0x2C0E (K[14]=k_1tb.vdx); VIDEOREF@0x0AA6 0x2C0D (K[13]=k_1fa.vdx); VIDEOREF@0x0B7C 0x2C14 (K[20]=k_2fa.vdx); VIDEOREF@0x0B82 0x2C11 (K[17]=k_2bb.vdx); VIDEOREF@0x0BA8 0x2C05 (K[5]=k2_7b.vdx); VIDEOREF@0x0BE7 0x4001 (MU[1]=muab.vdx); VIDEOREF@0x0CA0 0x4002 (MU[2]=muabb.vdx); VIDEOREF@0x0CA6 0x4003 (MU[3]=mucd.vdx); VIDEOREF@0x0CB6 0x400A (MU[10]=mupib.vdx); VIDEOREF@0x0D3F 0x4007 (MU[7]=mugrb.vdx); VIDEOREF@0x0D52 0x2072 (HTBD[114]=bdab.vdx); VIDEOREF@0x0D59 0x207A (HTBD[122]=bdplb.vdx); VIDEOREF@0x0E25 0x206F (HTBD[111]=bd2p.vdx); VIDEOREF@0x0E45 0x2074 (HTBD[116]=bdcd.vdx); VIDEOREF@0x0E4B 0x2073 (HTBD[115]=bdabb.vdx); VIDEOREF@0x0F56 0x1418 (FH[24]=f6_1.vdx); VIDEOREF@0x0F89 0x1472 (FH[114]=h_1bb.vdx); VIDEOREF@0x0F9C 0x1477 (FH[119]=h_1fc.vdx); VIDEOREF@0x0FBB 0x1474 (FH[116]=h_1bd.vdx); VIDEOREF@0x0FC1 0x1475 (FH[117]=h_1fa.vdx); VIDEOREF@0x1027 0x145C (FH[92]=h2_1.vdx); VIDEOREF@0x1086 0x146B (FH[107]=h8_1.vdx); VIDEOREF@0x12CB 0x2007 (HTBD[7]=htab.vdx); VIDEOREF@0x1322 0x2004 (HTBD[4]=ht2p.vdx); VIDEOREF@0x132B 0x2008 (HTBD[8]=ht_mess.vdx); VIDEOREF@0x1337 0x2009 (HTBD[9]=htcd.vdx); VIDEOREF@0x1395 0x1808 (GA[8]=gaab.vdx); VIDEOREF@0x1456 0x1801 (GA[1]=ga1pb.vdx); VIDEOREF@0x145C 0x1801 (GA[1]=ga1pb.vdx); VIDEOREF@0x148B 0x1809 (GA[9]=gaabb.vdx); VIDEOREF@0x1491 0x180B (GA[11]=gacd.vdx); VIDEOREF@0x149D 0x2869 (JHEK[105]=jhab.vdx); VIDEOREF@0x1556 0x2877 (JHEK[119]=jhpub.vdx); VIDEOREF@0x1583 0x2875 (JHEK[117]=jhmib.vdx); VIDEOREF@0x159F 0x2875 (JHEK[117]=jhmib.vdx); VIDEOREF@0x15C5 0x286A (JHEK[106]=jhabb.vdx); VIDEOREF@0x15CB 0x286D (JHEK[109]=jhcd.vdx); VIDEOREF@0x15F4 0x4803 (P[3]=pfa.vdx); VIDEOREF@0x1635 0x480A (P[10]=pfdb.vdx); VIDEOREF@0x1661 0x4809 (P[9]=pfd.vdx); VIDEOREF@0x1672 0x480C (P[12]=pmu.vdx); VIDEOREF@0x1682 0x4807 (P[7]=pfc.vdx); VIDEOREF@0x16B3 0x4804 (P[4]=pfab.vdx); VIDEOREF@0x2185 0x3400 (LI[0]=l1_2.vdx); VIDEOREF@0x2935 0x3402 (LI[2]=l1_cb.vdx); VIDEOREF@0x29F5 0x1422 (FH[34]=f_1bb.vdx); VIDEOREF@0x2A19 0x3402 (LI[2]=l1_cb.vdx); VIDEOREF@0x2A5F 0x3428 (LI[40]=l_1ba.vdx); VIDEOREF@0x2A65 0x342B (LI[43]=l_1fc.vdx); VIDEOREF@0x2AE8 0x3406 (LI[6]=l2_3b.vdx); VIDEOREF@0x2AFB 0x342F (LI[47]=l_2bd.vdx); VIDEOREF@0x2B4D 0x3432 (LI[50]=l_2fc.vdx); VIDEOREF@0x2B5F 0x342F (LI[47]=l_2bd.vdx); VIDEOREF@0x2D0C 0x2881 (JHEK[129]=ekab.vdx); VIDEOREF@0x2D99 0x287B (JHEK[123]=ek1pb.vdx); VIDEOREF@0x2D9F 0x287B (JHEK[123]=ek1pb.vdx); VIDEOREF@0x2DCE 0x288C (JHEK[140]=ekmbb.vdx); VIDEOREF@0x2DD7 0x2883 (JHEK[131]=ekbc.vdx); VIDEOREF@0x2E24 0x2887 (JHEK[135]=ekcd.vdx); VIDEOREF@0x2E2D 0x2882 (JHEK[130]=ekabb.vdx); VIDEOREF@0x2E33 0x2888 (JHEK[136]=ekcdb.vdx); VIDEOREF@0x2E50 0x0807 (CH[7]=chab.vdx); VIDEOREF@0x2EB2 0x080A (CH[10]=chcd.vdx); VIDEOREF@0x2EB8 0x0808 (CH[8]=chabb.vdx); VIDEOREF@0x2ECC 0x0811 (CH[17]=chpub.vdx); VIDEOREF@0x2ED2 0x0809 (CH[9]=chal.vdx); VIDEOREF@0x2F34 0x080F (CH[15]=chorb.vdx); VIDEOREF@0x2F4A 0x4406 (N[6]=nab.vdx); VIDEOREF@0x3004 0x4408 (N[8]=ncd.vdx); VIDEOREF@0x300A 0x4407 (N[7]=nabb.vdx); VIDEOREF@0x301B 0x440A (N[10]=ncri.vdx); VIDEOREF@0x303C 0x440B (N[11]=ncrib.vdx); VIDEOREF@0x3074 0x4410 (N[16]=njacb.vdx); VIDEOREF@0x3084 0x4412 (N[18]=npuzb.vdx); VIDEOREF@0x3096 0x3010 (LA[16]=la_1fa.vdx); VIDEOREF@0x3165 0x300C (LA[12]=la_1ba.vdx); VIDEOREF@0x318F 0x3013 (LA[19]=la_1fd.vdx); VIDEOREF@0x3254 0x3803 (MB[3]=mbab.vdx); VIDEOREF@0x325C 0x383D (MB[61]=mb_warp.vdx); VIDEOREF@0x32BE 0x383F (MB[63]=sexbed.vdx); VIDEOREF@0x32F4 0x3809 (MB[9]=mbpub.vdx); VIDEOREF@0x330E 0x3804 (MB[4]=mbabb.vdx); VIDEOREF@0x3314 0x3805 (MB[5]=mbcd.vdx); VIDEOREF@0x3345 0x0C09 (D[9]=d_1fa.vdx); VIDEOREF@0x33D0 0x0C03 (D[3]=d1_3b.vdx); VIDEOREF@0x33F3 0x0C07 (D[7]=d_1ba.vdx); VIDEOREF@0x33F9 0x0C0A (D[10]=d_1fc.vdx); VIDEOREF@0x3944 0x2875 (JHEK[117]=jhmib.vdx); VIDEOREF@0x39BA 0x383D (MB[61]=mb_warp.vdx); VIDEOREF@0x3ABA 0x1426 (FH[38]=f_1fb.vdx); VIDEOREF@0x3AEC 0x2C05 (K[5]=k2_7b.vdx); VIDEOREF@0x3B22 0x2C0E (K[14]=k_1tb.vdx); VIDEOREF@0x3B88 0x1405 (FH[5]=f1_pb.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x2EEE` | `HOTSPOT_BOTTOM_4` | target=0x3912 |
| `0x2EF1` | `HOTSPOT_LEFT` | target=0x2EF8 |
| `0x2EF4` | `HOTSPOT_RIGHT` | target=0x2F3A |

### Loop `0x2EFE`–`0x2F0E`

Nearest preceding video in file order: VIDEOREF@0x2EF8 0x080E (CH[14]=chor.vdx)

Scene candidates: VIDEOREF@0x2EF8 0x080E (CH[14]=chor.vdx); VIDEOREF@0x2F2B 0x0806 (CH[6]=ch4kb.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x2EFF` | `HOTSPOT_RECT` | left=0x00C8, top=0x0050, right=0x01B8, bottom=0x018F, target=0x2F0F, cursor=0x04 |
| `0x2F0B` | `HOTSPOT_RIGHT` | target=0x2F34 |

### Loop `0x2F61`–`0x2FDF`

Nearest preceding video in file order: VIDEOREF@0x2F4A 0x4406 (N[6]=nab.vdx)

Scene candidates: VIDEOREF@0x03E2 0x1403 (FH[3]=f1_6.vdx); VIDEOREF@0x04F9 0x5001 (GAMWAV[1]=1_e_2.vdx); VIDEOREF@0x0651 0x1405 (FH[5]=f1_pb.vdx); VIDEOREF@0x069B 0x1421 (FH[33]=f_1ba.vdx); VIDEOREF@0x06A1 0x1426 (FH[38]=f_1fb.vdx); VIDEOREF@0x06B3 0x1423 (FH[35]=f_1bc.vdx); VIDEOREF@0x06B9 0x1428 (FH[40]=f_1fd.vdx); VIDEOREF@0x0704 0x140A (FH[10]=f2_1.vdx); VIDEOREF@0x08A6 0x1415 (FH[21]=f5_1.vdx); VIDEOREF@0x0957 0x105F (DR[95]=dr_mi.vdx); VIDEOREF@0x09DF 0x1000 (DR[0]=come.vdx); VIDEOREF@0x09FB 0x106A (DR[106]=dr_vb.vdx); VIDEOREF@0x0A04 0x1063 (DR[99]=dr_r.vdx); VIDEOREF@0x0A1C 0x2C0C (K[12]=k_1ba.vdx); VIDEOREF@0x0A39 0x2C0E (K[14]=k_1tb.vdx); VIDEOREF@0x0AA6 0x2C0D (K[13]=k_1fa.vdx); VIDEOREF@0x0B7C 0x2C14 (K[20]=k_2fa.vdx); VIDEOREF@0x0B82 0x2C11 (K[17]=k_2bb.vdx); VIDEOREF@0x0BA8 0x2C05 (K[5]=k2_7b.vdx); VIDEOREF@0x0BE7 0x4001 (MU[1]=muab.vdx); VIDEOREF@0x0CA0 0x4002 (MU[2]=muabb.vdx); VIDEOREF@0x0CA6 0x4003 (MU[3]=mucd.vdx); VIDEOREF@0x0CB6 0x400A (MU[10]=mupib.vdx); VIDEOREF@0x0D3F 0x4007 (MU[7]=mugrb.vdx); VIDEOREF@0x0D52 0x2072 (HTBD[114]=bdab.vdx); VIDEOREF@0x0D59 0x207A (HTBD[122]=bdplb.vdx); VIDEOREF@0x0E25 0x206F (HTBD[111]=bd2p.vdx); VIDEOREF@0x0E45 0x2074 (HTBD[116]=bdcd.vdx); VIDEOREF@0x0E4B 0x2073 (HTBD[115]=bdabb.vdx); VIDEOREF@0x0F56 0x1418 (FH[24]=f6_1.vdx); VIDEOREF@0x0F89 0x1472 (FH[114]=h_1bb.vdx); VIDEOREF@0x0F9C 0x1477 (FH[119]=h_1fc.vdx); VIDEOREF@0x0FBB 0x1474 (FH[116]=h_1bd.vdx); VIDEOREF@0x0FC1 0x1475 (FH[117]=h_1fa.vdx); VIDEOREF@0x1027 0x145C (FH[92]=h2_1.vdx); VIDEOREF@0x1086 0x146B (FH[107]=h8_1.vdx); VIDEOREF@0x12CB 0x2007 (HTBD[7]=htab.vdx); VIDEOREF@0x1322 0x2004 (HTBD[4]=ht2p.vdx); VIDEOREF@0x132B 0x2008 (HTBD[8]=ht_mess.vdx); VIDEOREF@0x1337 0x2009 (HTBD[9]=htcd.vdx); VIDEOREF@0x1395 0x1808 (GA[8]=gaab.vdx); VIDEOREF@0x1456 0x1801 (GA[1]=ga1pb.vdx); VIDEOREF@0x145C 0x1801 (GA[1]=ga1pb.vdx); VIDEOREF@0x148B 0x1809 (GA[9]=gaabb.vdx); VIDEOREF@0x1491 0x180B (GA[11]=gacd.vdx); VIDEOREF@0x149D 0x2869 (JHEK[105]=jhab.vdx); VIDEOREF@0x1556 0x2877 (JHEK[119]=jhpub.vdx); VIDEOREF@0x1583 0x2875 (JHEK[117]=jhmib.vdx); VIDEOREF@0x159F 0x2875 (JHEK[117]=jhmib.vdx); VIDEOREF@0x15C5 0x286A (JHEK[106]=jhabb.vdx); VIDEOREF@0x15CB 0x286D (JHEK[109]=jhcd.vdx); VIDEOREF@0x15F4 0x4803 (P[3]=pfa.vdx); VIDEOREF@0x1635 0x480A (P[10]=pfdb.vdx); VIDEOREF@0x1661 0x4809 (P[9]=pfd.vdx); VIDEOREF@0x1672 0x480C (P[12]=pmu.vdx); VIDEOREF@0x1682 0x4807 (P[7]=pfc.vdx); VIDEOREF@0x16B3 0x4804 (P[4]=pfab.vdx); VIDEOREF@0x2185 0x3400 (LI[0]=l1_2.vdx); VIDEOREF@0x2935 0x3402 (LI[2]=l1_cb.vdx); VIDEOREF@0x29F5 0x1422 (FH[34]=f_1bb.vdx); VIDEOREF@0x2A19 0x3402 (LI[2]=l1_cb.vdx); VIDEOREF@0x2A5F 0x3428 (LI[40]=l_1ba.vdx); VIDEOREF@0x2A65 0x342B (LI[43]=l_1fc.vdx); VIDEOREF@0x2AE8 0x3406 (LI[6]=l2_3b.vdx); VIDEOREF@0x2AFB 0x342F (LI[47]=l_2bd.vdx); VIDEOREF@0x2B4D 0x3432 (LI[50]=l_2fc.vdx); VIDEOREF@0x2B5F 0x342F (LI[47]=l_2bd.vdx); VIDEOREF@0x2D0C 0x2881 (JHEK[129]=ekab.vdx); VIDEOREF@0x2D99 0x287B (JHEK[123]=ek1pb.vdx); VIDEOREF@0x2D9F 0x287B (JHEK[123]=ek1pb.vdx); VIDEOREF@0x2DCE 0x288C (JHEK[140]=ekmbb.vdx); VIDEOREF@0x2DD7 0x2883 (JHEK[131]=ekbc.vdx); VIDEOREF@0x2E24 0x2887 (JHEK[135]=ekcd.vdx); VIDEOREF@0x2E2D 0x2882 (JHEK[130]=ekabb.vdx); VIDEOREF@0x2E33 0x2888 (JHEK[136]=ekcdb.vdx); VIDEOREF@0x2E50 0x0807 (CH[7]=chab.vdx); VIDEOREF@0x2EB2 0x080A (CH[10]=chcd.vdx); VIDEOREF@0x2EB8 0x0808 (CH[8]=chabb.vdx); VIDEOREF@0x2ECC 0x0811 (CH[17]=chpub.vdx); VIDEOREF@0x2ED2 0x0809 (CH[9]=chal.vdx); VIDEOREF@0x2F34 0x080F (CH[15]=chorb.vdx); VIDEOREF@0x2F4A 0x4406 (N[6]=nab.vdx); VIDEOREF@0x3004 0x4408 (N[8]=ncd.vdx); VIDEOREF@0x300A 0x4407 (N[7]=nabb.vdx); VIDEOREF@0x301B 0x440A (N[10]=ncri.vdx); VIDEOREF@0x303C 0x440B (N[11]=ncrib.vdx); VIDEOREF@0x3074 0x4410 (N[16]=njacb.vdx); VIDEOREF@0x3084 0x4412 (N[18]=npuzb.vdx); VIDEOREF@0x3096 0x3010 (LA[16]=la_1fa.vdx); VIDEOREF@0x3165 0x300C (LA[12]=la_1ba.vdx); VIDEOREF@0x318F 0x3013 (LA[19]=la_1fd.vdx); VIDEOREF@0x3254 0x3803 (MB[3]=mbab.vdx); VIDEOREF@0x325C 0x383D (MB[61]=mb_warp.vdx); VIDEOREF@0x32BE 0x383F (MB[63]=sexbed.vdx); VIDEOREF@0x32F4 0x3809 (MB[9]=mbpub.vdx); VIDEOREF@0x330E 0x3804 (MB[4]=mbabb.vdx); VIDEOREF@0x3314 0x3805 (MB[5]=mbcd.vdx); VIDEOREF@0x3345 0x0C09 (D[9]=d_1fa.vdx); VIDEOREF@0x33D0 0x0C03 (D[3]=d1_3b.vdx); VIDEOREF@0x33F3 0x0C07 (D[7]=d_1ba.vdx); VIDEOREF@0x33F9 0x0C0A (D[10]=d_1fc.vdx); VIDEOREF@0x3944 0x2875 (JHEK[117]=jhmib.vdx); VIDEOREF@0x39BA 0x383D (MB[61]=mb_warp.vdx); VIDEOREF@0x3ABA 0x1426 (FH[38]=f_1fb.vdx); VIDEOREF@0x3AEC 0x2C05 (K[5]=k2_7b.vdx); VIDEOREF@0x3B22 0x2C0E (K[14]=k_1tb.vdx); VIDEOREF@0x3B88 0x1405 (FH[5]=f1_pb.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x2F68` | `HOTSPOT_BOTTOM_4` | target=0x3912 |
| `0x2F6B` | `HOTSPOT_RIGHT` | target=0x2FF0 |
| `0x2F6E` | `HOTSPOT_LEFT` | target=0x2FFE |
| `0x2F76` | `HOTSPOT_RECT` | left=0x0102, top=0x00F2, right=0x017E, bottom=0x011E, target=0x301B, cursor=0x04 |
| `0x2F87` | `HOTSPOT_RECT` | left=0x016C, top=0x0156, right=0x0193, bottom=0x0182, target=0x305C, cursor=0x00 |
| `0x2F98` | `HOTSPOT_RECT` | left=0x009E, top=0x011D, right=0x00F8, bottom=0x016D, target=0x3042, cursor=0x04 |
| `0x2FA7` | `HOTSPOT_RECT` | left=0x009E, top=0x011D, right=0x00F8, bottom=0x016D, target=0x3055, cursor=0x00 |
| `0x2FB9` | `HOTSPOT_BOTTOM_4` | target=0x3912 |
| `0x2FC1` | `HOTSPOT_RECT` | left=0x01F9, top=0x0104, right=0x027D, bottom=0x018F, target=0x307A, cursor=0x06 |
| `0x2FD3` | `HOTSPOT_RECT` | left=0x01F9, top=0x0104, right=0x027D, bottom=0x018F, target=0x307A, cursor=0x06 |

### Loop `0x2FF3`–`0x2FFD`

Nearest preceding video in file order: VIDEOREF@0x2FF0 0x4406 (N[6]=nab.vdx)

Scene candidates: VIDEOREF@0x2FF0 0x4406 (N[6]=nab.vdx); VIDEOREF@0x2FFE 0x4409 (N[9]=ncdb.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x2FF4` | `HOTSPOT_RIGHT` | target=0x3004 |
| `0x2FF7` | `HOTSPOT_CENTER` | target=0x3010 |
| `0x2FFA` | `HOTSPOT_LEFT` | target=0x300A |

### Loop `0x302E`–`0x303B`

Nearest preceding video in file order: VIDEOREF@0x301B 0x440A (N[10]=ncri.vdx)

Scene candidates: VIDEOREF@0x301B 0x440A (N[10]=ncri.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x302F` | `HOTSPOT_CENTER_2` | target=0x303C |
| `0x3038` | `HOTSPOT_BOTTOM_4` | target=0x3912 |

### Loop `0x309C`–`0x30A6`

Nearest preceding video in file order: VIDEOREF@0x3096 0x3010 (LA[16]=la_1fa.vdx)

Scene candidates: VIDEOREF@0x30AD 0x3003 (LA[3]=la_d.vdx); VIDEOREF@0x30B5 0x3004 (LA[4]=la_db.vdx); VIDEOREF@0x316E 0x3011 (LA[17]=la_1fb.vdx); VIDEOREF@0x3189 0x300E (LA[14]=la_1bc.vdx); VIDEOREF@0x3218 0x3009 (LA[9]=la2_1.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x309D` | `HOTSPOT_LEFT` | target=0x3147 |
| `0x30A0` | `HOTSPOT_CENTER` | target=0x30A7 |
| `0x30A3` | `HOTSPOT_RIGHT` | target=0x3156 |

### Loop `0x30BD`–`0x30C4`

Nearest preceding video in file order: VIDEOREF@0x30B5 0x3004 (LA[4]=la_db.vdx)

Scene candidates: VIDEOREF@0x3150 0x300D (LA[13]=la_1bb.vdx); VIDEOREF@0x3180 0x3010 (LA[16]=la_1fa.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x30BE` | `HOTSPOT_LEFT` | target=0x3165 |
| `0x30C1` | `HOTSPOT_RIGHT` | target=0x316B |

### Loop `0x30C5`–`0x310C`

Nearest preceding video in file order: VIDEOREF@0x30B5 0x3004 (LA[4]=la_db.vdx)

Scene candidates: VIDEOREF@0x03E2 0x1403 (FH[3]=f1_6.vdx); VIDEOREF@0x04F9 0x5001 (GAMWAV[1]=1_e_2.vdx); VIDEOREF@0x0651 0x1405 (FH[5]=f1_pb.vdx); VIDEOREF@0x069B 0x1421 (FH[33]=f_1ba.vdx); VIDEOREF@0x06A1 0x1426 (FH[38]=f_1fb.vdx); VIDEOREF@0x06B3 0x1423 (FH[35]=f_1bc.vdx); VIDEOREF@0x06B9 0x1428 (FH[40]=f_1fd.vdx); VIDEOREF@0x0704 0x140A (FH[10]=f2_1.vdx); VIDEOREF@0x08A6 0x1415 (FH[21]=f5_1.vdx); VIDEOREF@0x0957 0x105F (DR[95]=dr_mi.vdx); VIDEOREF@0x09DF 0x1000 (DR[0]=come.vdx); VIDEOREF@0x09FB 0x106A (DR[106]=dr_vb.vdx); VIDEOREF@0x0A04 0x1063 (DR[99]=dr_r.vdx); VIDEOREF@0x0A1C 0x2C0C (K[12]=k_1ba.vdx); VIDEOREF@0x0A39 0x2C0E (K[14]=k_1tb.vdx); VIDEOREF@0x0AA6 0x2C0D (K[13]=k_1fa.vdx); VIDEOREF@0x0B7C 0x2C14 (K[20]=k_2fa.vdx); VIDEOREF@0x0B82 0x2C11 (K[17]=k_2bb.vdx); VIDEOREF@0x0BA8 0x2C05 (K[5]=k2_7b.vdx); VIDEOREF@0x0BE7 0x4001 (MU[1]=muab.vdx); VIDEOREF@0x0CA0 0x4002 (MU[2]=muabb.vdx); VIDEOREF@0x0CA6 0x4003 (MU[3]=mucd.vdx); VIDEOREF@0x0CB6 0x400A (MU[10]=mupib.vdx); VIDEOREF@0x0D3F 0x4007 (MU[7]=mugrb.vdx); VIDEOREF@0x0D52 0x2072 (HTBD[114]=bdab.vdx); VIDEOREF@0x0D59 0x207A (HTBD[122]=bdplb.vdx); VIDEOREF@0x0E25 0x206F (HTBD[111]=bd2p.vdx); VIDEOREF@0x0E45 0x2074 (HTBD[116]=bdcd.vdx); VIDEOREF@0x0E4B 0x2073 (HTBD[115]=bdabb.vdx); VIDEOREF@0x0F56 0x1418 (FH[24]=f6_1.vdx); VIDEOREF@0x0F89 0x1472 (FH[114]=h_1bb.vdx); VIDEOREF@0x0F9C 0x1477 (FH[119]=h_1fc.vdx); VIDEOREF@0x0FBB 0x1474 (FH[116]=h_1bd.vdx); VIDEOREF@0x0FC1 0x1475 (FH[117]=h_1fa.vdx); VIDEOREF@0x1027 0x145C (FH[92]=h2_1.vdx); VIDEOREF@0x1086 0x146B (FH[107]=h8_1.vdx); VIDEOREF@0x12CB 0x2007 (HTBD[7]=htab.vdx); VIDEOREF@0x1322 0x2004 (HTBD[4]=ht2p.vdx); VIDEOREF@0x132B 0x2008 (HTBD[8]=ht_mess.vdx); VIDEOREF@0x1337 0x2009 (HTBD[9]=htcd.vdx); VIDEOREF@0x1395 0x1808 (GA[8]=gaab.vdx); VIDEOREF@0x1456 0x1801 (GA[1]=ga1pb.vdx); VIDEOREF@0x145C 0x1801 (GA[1]=ga1pb.vdx); VIDEOREF@0x148B 0x1809 (GA[9]=gaabb.vdx); VIDEOREF@0x1491 0x180B (GA[11]=gacd.vdx); VIDEOREF@0x149D 0x2869 (JHEK[105]=jhab.vdx); VIDEOREF@0x1556 0x2877 (JHEK[119]=jhpub.vdx); VIDEOREF@0x1583 0x2875 (JHEK[117]=jhmib.vdx); VIDEOREF@0x159F 0x2875 (JHEK[117]=jhmib.vdx); VIDEOREF@0x15C5 0x286A (JHEK[106]=jhabb.vdx); VIDEOREF@0x15CB 0x286D (JHEK[109]=jhcd.vdx); VIDEOREF@0x15F4 0x4803 (P[3]=pfa.vdx); VIDEOREF@0x1635 0x480A (P[10]=pfdb.vdx); VIDEOREF@0x1661 0x4809 (P[9]=pfd.vdx); VIDEOREF@0x1672 0x480C (P[12]=pmu.vdx); VIDEOREF@0x1682 0x4807 (P[7]=pfc.vdx); VIDEOREF@0x16B3 0x4804 (P[4]=pfab.vdx); VIDEOREF@0x2185 0x3400 (LI[0]=l1_2.vdx); VIDEOREF@0x2935 0x3402 (LI[2]=l1_cb.vdx); VIDEOREF@0x29F5 0x1422 (FH[34]=f_1bb.vdx); VIDEOREF@0x2A19 0x3402 (LI[2]=l1_cb.vdx); VIDEOREF@0x2A5F 0x3428 (LI[40]=l_1ba.vdx); VIDEOREF@0x2A65 0x342B (LI[43]=l_1fc.vdx); VIDEOREF@0x2AE8 0x3406 (LI[6]=l2_3b.vdx); VIDEOREF@0x2AFB 0x342F (LI[47]=l_2bd.vdx); VIDEOREF@0x2B4D 0x3432 (LI[50]=l_2fc.vdx); VIDEOREF@0x2B5F 0x342F (LI[47]=l_2bd.vdx); VIDEOREF@0x2D0C 0x2881 (JHEK[129]=ekab.vdx); VIDEOREF@0x2D99 0x287B (JHEK[123]=ek1pb.vdx); VIDEOREF@0x2D9F 0x287B (JHEK[123]=ek1pb.vdx); VIDEOREF@0x2DCE 0x288C (JHEK[140]=ekmbb.vdx); VIDEOREF@0x2DD7 0x2883 (JHEK[131]=ekbc.vdx); VIDEOREF@0x2E24 0x2887 (JHEK[135]=ekcd.vdx); VIDEOREF@0x2E2D 0x2882 (JHEK[130]=ekabb.vdx); VIDEOREF@0x2E33 0x2888 (JHEK[136]=ekcdb.vdx); VIDEOREF@0x2E50 0x0807 (CH[7]=chab.vdx); VIDEOREF@0x2EB2 0x080A (CH[10]=chcd.vdx); VIDEOREF@0x2EB8 0x0808 (CH[8]=chabb.vdx); VIDEOREF@0x2ECC 0x0811 (CH[17]=chpub.vdx); VIDEOREF@0x2ED2 0x0809 (CH[9]=chal.vdx); VIDEOREF@0x2F34 0x080F (CH[15]=chorb.vdx); VIDEOREF@0x2F4A 0x4406 (N[6]=nab.vdx); VIDEOREF@0x3004 0x4408 (N[8]=ncd.vdx); VIDEOREF@0x300A 0x4407 (N[7]=nabb.vdx); VIDEOREF@0x301B 0x440A (N[10]=ncri.vdx); VIDEOREF@0x303C 0x440B (N[11]=ncrib.vdx); VIDEOREF@0x3074 0x4410 (N[16]=njacb.vdx); VIDEOREF@0x3084 0x4412 (N[18]=npuzb.vdx); VIDEOREF@0x3096 0x3010 (LA[16]=la_1fa.vdx); VIDEOREF@0x3165 0x300C (LA[12]=la_1ba.vdx); VIDEOREF@0x318F 0x3013 (LA[19]=la_1fd.vdx); VIDEOREF@0x3254 0x3803 (MB[3]=mbab.vdx); VIDEOREF@0x325C 0x383D (MB[61]=mb_warp.vdx); VIDEOREF@0x32BE 0x383F (MB[63]=sexbed.vdx); VIDEOREF@0x32F4 0x3809 (MB[9]=mbpub.vdx); VIDEOREF@0x330E 0x3804 (MB[4]=mbabb.vdx); VIDEOREF@0x3314 0x3805 (MB[5]=mbcd.vdx); VIDEOREF@0x3345 0x0C09 (D[9]=d_1fa.vdx); VIDEOREF@0x33D0 0x0C03 (D[3]=d1_3b.vdx); VIDEOREF@0x33F3 0x0C07 (D[7]=d_1ba.vdx); VIDEOREF@0x33F9 0x0C0A (D[10]=d_1fc.vdx); VIDEOREF@0x3944 0x2875 (JHEK[117]=jhmib.vdx); VIDEOREF@0x39BA 0x383D (MB[61]=mb_warp.vdx); VIDEOREF@0x3ABA 0x1426 (FH[38]=f_1fb.vdx); VIDEOREF@0x3AEC 0x2C05 (K[5]=k2_7b.vdx); VIDEOREF@0x3B22 0x2C0E (K[14]=k_1tb.vdx); VIDEOREF@0x3B88 0x1405 (FH[5]=f1_pb.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x30C6` | `HOTSPOT_LEFT` | target=0x3174 |
| `0x30C9` | `HOTSPOT_RECT` | left=0x0096, top=0x00AD, right=0x0105, bottom=0x0108, target=0x313E, cursor=0x00 |
| `0x30DA` | `HOTSPOT_RECT` | left=0x00CB, top=0x010A, right=0x014A, bottom=0x0127, target=0x311A, cursor=0x04 |
| `0x30EB` | `HOTSPOT_RECT` | left=0x006D, top=0x0128, right=0x00C6, bottom=0x018B, target=0x310D, cursor=0x04 |
| `0x30FD` | `HOTSPOT_BOTTOM_4` | target=0x3912 |
| `0x3106` | `HOTSPOT_BOTTOM_4` | target=0x3912 |
| `0x3109` | `HOTSPOT_RIGHT` | target=0x317D |

### Loop `0x3127`–`0x3131`

Nearest preceding video in file order: VIDEOREF@0x30B5 0x3004 (LA[4]=la_db.vdx)

Scene candidates: VIDEOREF@0x315F 0x3012 (LA[18]=la_1fc.vdx); VIDEOREF@0x3177 0x300F (LA[15]=la_1bd.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x3128` | `HOTSPOT_LEFT` | target=0x3186 |
| `0x312B` | `HOTSPOT_CENTER_2` | target=0x3132 |
| `0x312E` | `HOTSPOT_RIGHT` | target=0x318F |

### Loop `0x3195`–`0x319F`

Nearest preceding video in file order: VIDEOREF@0x318F 0x3013 (LA[19]=la_1fd.vdx)

Scene candidates: VIDEOREF@0x3230 0x3019 (LA[25]=la_2fb.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x3196` | `HOTSPOT_LEFT` | target=0x321E |
| `0x3199` | `HOTSPOT_CENTER_2` | target=0x3218 |
| `0x319C` | `HOTSPOT_RIGHT` | target=0x3224 |

### Loop `0x31A0`–`0x31A7`

Nearest preceding video in file order: VIDEOREF@0x318F 0x3013 (LA[19]=la_1fd.vdx)

Scene candidates: VIDEOREF@0x321E 0x3015 (LA[21]=la_2bb.vdx); VIDEOREF@0x323C 0x3018 (LA[24]=la_2fa.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x31A1` | `HOTSPOT_LEFT` | target=0x322A |
| `0x31A4` | `HOTSPOT_RIGHT` | target=0x3230 |

### Loop `0x31AB`–`0x31D5`

Nearest preceding video in file order: VIDEOREF@0x318F 0x3013 (LA[19]=la_1fd.vdx)

Scene candidates: VIDEOREF@0x3141 0x3007 (LA[7]=la1_2.vdx); VIDEOREF@0x31F4 0x3006 (LA[6]=la_pb.vdx); VIDEOREF@0x322A 0x3014 (LA[20]=la_2ba.vdx); VIDEOREF@0x3248 0x301B (LA[27]=la_2fd.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x31B1` | `HOTSPOT_RECT` | left=0x0197, top=0x0093, right=0x01EB, bottom=0x0155, target=0x31D6, cursor=0x06 |
| `0x31C3` | `HOTSPOT_RECT` | left=0x0197, top=0x0093, right=0x01EB, bottom=0x0155, target=0x31D6, cursor=0x06 |
| `0x31CF` | `HOTSPOT_LEFT` | target=0x3236 |
| `0x31D2` | `HOTSPOT_RIGHT` | target=0x323C |

### Loop `0x31FA`–`0x320A`

Nearest preceding video in file order: VIDEOREF@0x31F4 0x3006 (LA[6]=la_pb.vdx)

Scene candidates: VIDEOREF@0x3224 0x301A (LA[26]=la_2fc.vdx); VIDEOREF@0x3236 0x3017 (LA[23]=la_2bd.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x31FB` | `HOTSPOT_RECT` | left=0x0062, top=0x00B0, right=0x00C3, bottom=0x0166, target=0x320B, cursor=0x00 |
| `0x3207` | `HOTSPOT_RIGHT` | target=0x3248 |

### Loop `0x3273`–`0x32BC`

Nearest preceding video in file order: VIDEOREF@0x325C 0x383D (MB[61]=mb_warp.vdx)

Scene candidates: VIDEOREF@0x03E2 0x1403 (FH[3]=f1_6.vdx); VIDEOREF@0x04F9 0x5001 (GAMWAV[1]=1_e_2.vdx); VIDEOREF@0x0651 0x1405 (FH[5]=f1_pb.vdx); VIDEOREF@0x069B 0x1421 (FH[33]=f_1ba.vdx); VIDEOREF@0x06A1 0x1426 (FH[38]=f_1fb.vdx); VIDEOREF@0x06B3 0x1423 (FH[35]=f_1bc.vdx); VIDEOREF@0x06B9 0x1428 (FH[40]=f_1fd.vdx); VIDEOREF@0x0704 0x140A (FH[10]=f2_1.vdx); VIDEOREF@0x08A6 0x1415 (FH[21]=f5_1.vdx); VIDEOREF@0x0957 0x105F (DR[95]=dr_mi.vdx); VIDEOREF@0x09DF 0x1000 (DR[0]=come.vdx); VIDEOREF@0x09FB 0x106A (DR[106]=dr_vb.vdx); VIDEOREF@0x0A04 0x1063 (DR[99]=dr_r.vdx); VIDEOREF@0x0A1C 0x2C0C (K[12]=k_1ba.vdx); VIDEOREF@0x0A39 0x2C0E (K[14]=k_1tb.vdx); VIDEOREF@0x0AA6 0x2C0D (K[13]=k_1fa.vdx); VIDEOREF@0x0B7C 0x2C14 (K[20]=k_2fa.vdx); VIDEOREF@0x0B82 0x2C11 (K[17]=k_2bb.vdx); VIDEOREF@0x0BA8 0x2C05 (K[5]=k2_7b.vdx); VIDEOREF@0x0BE7 0x4001 (MU[1]=muab.vdx); VIDEOREF@0x0CA0 0x4002 (MU[2]=muabb.vdx); VIDEOREF@0x0CA6 0x4003 (MU[3]=mucd.vdx); VIDEOREF@0x0CB6 0x400A (MU[10]=mupib.vdx); VIDEOREF@0x0D3F 0x4007 (MU[7]=mugrb.vdx); VIDEOREF@0x0D52 0x2072 (HTBD[114]=bdab.vdx); VIDEOREF@0x0D59 0x207A (HTBD[122]=bdplb.vdx); VIDEOREF@0x0E25 0x206F (HTBD[111]=bd2p.vdx); VIDEOREF@0x0E45 0x2074 (HTBD[116]=bdcd.vdx); VIDEOREF@0x0E4B 0x2073 (HTBD[115]=bdabb.vdx); VIDEOREF@0x0F56 0x1418 (FH[24]=f6_1.vdx); VIDEOREF@0x0F89 0x1472 (FH[114]=h_1bb.vdx); VIDEOREF@0x0F9C 0x1477 (FH[119]=h_1fc.vdx); VIDEOREF@0x0FBB 0x1474 (FH[116]=h_1bd.vdx); VIDEOREF@0x0FC1 0x1475 (FH[117]=h_1fa.vdx); VIDEOREF@0x1027 0x145C (FH[92]=h2_1.vdx); VIDEOREF@0x1086 0x146B (FH[107]=h8_1.vdx); VIDEOREF@0x12CB 0x2007 (HTBD[7]=htab.vdx); VIDEOREF@0x1322 0x2004 (HTBD[4]=ht2p.vdx); VIDEOREF@0x132B 0x2008 (HTBD[8]=ht_mess.vdx); VIDEOREF@0x1337 0x2009 (HTBD[9]=htcd.vdx); VIDEOREF@0x1395 0x1808 (GA[8]=gaab.vdx); VIDEOREF@0x1456 0x1801 (GA[1]=ga1pb.vdx); VIDEOREF@0x145C 0x1801 (GA[1]=ga1pb.vdx); VIDEOREF@0x148B 0x1809 (GA[9]=gaabb.vdx); VIDEOREF@0x1491 0x180B (GA[11]=gacd.vdx); VIDEOREF@0x149D 0x2869 (JHEK[105]=jhab.vdx); VIDEOREF@0x1556 0x2877 (JHEK[119]=jhpub.vdx); VIDEOREF@0x1583 0x2875 (JHEK[117]=jhmib.vdx); VIDEOREF@0x159F 0x2875 (JHEK[117]=jhmib.vdx); VIDEOREF@0x15C5 0x286A (JHEK[106]=jhabb.vdx); VIDEOREF@0x15CB 0x286D (JHEK[109]=jhcd.vdx); VIDEOREF@0x15F4 0x4803 (P[3]=pfa.vdx); VIDEOREF@0x1635 0x480A (P[10]=pfdb.vdx); VIDEOREF@0x1661 0x4809 (P[9]=pfd.vdx); VIDEOREF@0x1672 0x480C (P[12]=pmu.vdx); VIDEOREF@0x1682 0x4807 (P[7]=pfc.vdx); VIDEOREF@0x16B3 0x4804 (P[4]=pfab.vdx); VIDEOREF@0x2185 0x3400 (LI[0]=l1_2.vdx); VIDEOREF@0x2935 0x3402 (LI[2]=l1_cb.vdx); VIDEOREF@0x29F5 0x1422 (FH[34]=f_1bb.vdx); VIDEOREF@0x2A19 0x3402 (LI[2]=l1_cb.vdx); VIDEOREF@0x2A5F 0x3428 (LI[40]=l_1ba.vdx); VIDEOREF@0x2A65 0x342B (LI[43]=l_1fc.vdx); VIDEOREF@0x2AE8 0x3406 (LI[6]=l2_3b.vdx); VIDEOREF@0x2AFB 0x342F (LI[47]=l_2bd.vdx); VIDEOREF@0x2B4D 0x3432 (LI[50]=l_2fc.vdx); VIDEOREF@0x2B5F 0x342F (LI[47]=l_2bd.vdx); VIDEOREF@0x2D0C 0x2881 (JHEK[129]=ekab.vdx); VIDEOREF@0x2D99 0x287B (JHEK[123]=ek1pb.vdx); VIDEOREF@0x2D9F 0x287B (JHEK[123]=ek1pb.vdx); VIDEOREF@0x2DCE 0x288C (JHEK[140]=ekmbb.vdx); VIDEOREF@0x2DD7 0x2883 (JHEK[131]=ekbc.vdx); VIDEOREF@0x2E24 0x2887 (JHEK[135]=ekcd.vdx); VIDEOREF@0x2E2D 0x2882 (JHEK[130]=ekabb.vdx); VIDEOREF@0x2E33 0x2888 (JHEK[136]=ekcdb.vdx); VIDEOREF@0x2E50 0x0807 (CH[7]=chab.vdx); VIDEOREF@0x2EB2 0x080A (CH[10]=chcd.vdx); VIDEOREF@0x2EB8 0x0808 (CH[8]=chabb.vdx); VIDEOREF@0x2ECC 0x0811 (CH[17]=chpub.vdx); VIDEOREF@0x2ED2 0x0809 (CH[9]=chal.vdx); VIDEOREF@0x2F34 0x080F (CH[15]=chorb.vdx); VIDEOREF@0x2F4A 0x4406 (N[6]=nab.vdx); VIDEOREF@0x3004 0x4408 (N[8]=ncd.vdx); VIDEOREF@0x300A 0x4407 (N[7]=nabb.vdx); VIDEOREF@0x301B 0x440A (N[10]=ncri.vdx); VIDEOREF@0x303C 0x440B (N[11]=ncrib.vdx); VIDEOREF@0x3074 0x4410 (N[16]=njacb.vdx); VIDEOREF@0x3084 0x4412 (N[18]=npuzb.vdx); VIDEOREF@0x3096 0x3010 (LA[16]=la_1fa.vdx); VIDEOREF@0x3165 0x300C (LA[12]=la_1ba.vdx); VIDEOREF@0x318F 0x3013 (LA[19]=la_1fd.vdx); VIDEOREF@0x3254 0x3803 (MB[3]=mbab.vdx); VIDEOREF@0x325C 0x383D (MB[61]=mb_warp.vdx); VIDEOREF@0x32BE 0x383F (MB[63]=sexbed.vdx); VIDEOREF@0x32F4 0x3809 (MB[9]=mbpub.vdx); VIDEOREF@0x330E 0x3804 (MB[4]=mbabb.vdx); VIDEOREF@0x3314 0x3805 (MB[5]=mbcd.vdx); VIDEOREF@0x3345 0x0C09 (D[9]=d_1fa.vdx); VIDEOREF@0x33D0 0x0C03 (D[3]=d1_3b.vdx); VIDEOREF@0x33F3 0x0C07 (D[7]=d_1ba.vdx); VIDEOREF@0x33F9 0x0C0A (D[10]=d_1fc.vdx); VIDEOREF@0x3944 0x2875 (JHEK[117]=jhmib.vdx); VIDEOREF@0x39BA 0x383D (MB[61]=mb_warp.vdx); VIDEOREF@0x3ABA 0x1426 (FH[38]=f_1fb.vdx); VIDEOREF@0x3AEC 0x2C05 (K[5]=k2_7b.vdx); VIDEOREF@0x3B22 0x2C0E (K[14]=k_1tb.vdx); VIDEOREF@0x3B88 0x1405 (FH[5]=f1_pb.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x3274` | `HOTSPOT_LEFT` | target=0x32C4 |
| `0x3277` | `HOTSPOT_RIGHT` | target=0x32CA |
| `0x3284` | `HOTSPOT_RECT` | left=0x00B6, top=0x0111, right=0x0136, bottom=0x012B, target=0x32D0, cursor=0x06 |
| `0x3296` | `HOTSPOT_RECT` | left=0x00B6, top=0x0111, right=0x0136, bottom=0x012B, target=0x32D0, cursor=0x06 |
| `0x32A7` | `HOTSPOT_RECT` | left=0x00B6, top=0x0111, right=0x0136, bottom=0x012B, target=0x32BD, cursor=0x07 |
| `0x32B9` | `HOTSPOT_BOTTOM_4` | target=0x3912 |

### Loop `0x32FA`–`0x330D`

Nearest preceding video in file order: VIDEOREF@0x32F4 0x3809 (MB[9]=mbpub.vdx)

Scene candidates: VIDEOREF@0x32C4 0x3806 (MB[6]=mbcdb.vdx); VIDEOREF@0x32CA 0x3803 (MB[3]=mbab.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x32FB` | `HOTSPOT_LEFT` | target=0x330E |
| `0x32FE` | `HOTSPOT_RIGHT` | target=0x3314 |
| `0x3301` | `HOTSPOT_RECT` | left=0x0156, top=0x007A, right=0x01AF, bottom=0x0174, target=0x3330, cursor=0x00 |

### Loop `0x336B`–`0x33B3`

Nearest preceding video in file order: VIDEOREF@0x3345 0x0C09 (D[9]=d_1fa.vdx)

Scene candidates: VIDEOREF@0x03E2 0x1403 (FH[3]=f1_6.vdx); VIDEOREF@0x04F9 0x5001 (GAMWAV[1]=1_e_2.vdx); VIDEOREF@0x0651 0x1405 (FH[5]=f1_pb.vdx); VIDEOREF@0x069B 0x1421 (FH[33]=f_1ba.vdx); VIDEOREF@0x06A1 0x1426 (FH[38]=f_1fb.vdx); VIDEOREF@0x06B3 0x1423 (FH[35]=f_1bc.vdx); VIDEOREF@0x06B9 0x1428 (FH[40]=f_1fd.vdx); VIDEOREF@0x0704 0x140A (FH[10]=f2_1.vdx); VIDEOREF@0x08A6 0x1415 (FH[21]=f5_1.vdx); VIDEOREF@0x0957 0x105F (DR[95]=dr_mi.vdx); VIDEOREF@0x09DF 0x1000 (DR[0]=come.vdx); VIDEOREF@0x09FB 0x106A (DR[106]=dr_vb.vdx); VIDEOREF@0x0A04 0x1063 (DR[99]=dr_r.vdx); VIDEOREF@0x0A1C 0x2C0C (K[12]=k_1ba.vdx); VIDEOREF@0x0A39 0x2C0E (K[14]=k_1tb.vdx); VIDEOREF@0x0AA6 0x2C0D (K[13]=k_1fa.vdx); VIDEOREF@0x0B7C 0x2C14 (K[20]=k_2fa.vdx); VIDEOREF@0x0B82 0x2C11 (K[17]=k_2bb.vdx); VIDEOREF@0x0BA8 0x2C05 (K[5]=k2_7b.vdx); VIDEOREF@0x0BE7 0x4001 (MU[1]=muab.vdx); VIDEOREF@0x0CA0 0x4002 (MU[2]=muabb.vdx); VIDEOREF@0x0CA6 0x4003 (MU[3]=mucd.vdx); VIDEOREF@0x0CB6 0x400A (MU[10]=mupib.vdx); VIDEOREF@0x0D3F 0x4007 (MU[7]=mugrb.vdx); VIDEOREF@0x0D52 0x2072 (HTBD[114]=bdab.vdx); VIDEOREF@0x0D59 0x207A (HTBD[122]=bdplb.vdx); VIDEOREF@0x0E25 0x206F (HTBD[111]=bd2p.vdx); VIDEOREF@0x0E45 0x2074 (HTBD[116]=bdcd.vdx); VIDEOREF@0x0E4B 0x2073 (HTBD[115]=bdabb.vdx); VIDEOREF@0x0F56 0x1418 (FH[24]=f6_1.vdx); VIDEOREF@0x0F89 0x1472 (FH[114]=h_1bb.vdx); VIDEOREF@0x0F9C 0x1477 (FH[119]=h_1fc.vdx); VIDEOREF@0x0FBB 0x1474 (FH[116]=h_1bd.vdx); VIDEOREF@0x0FC1 0x1475 (FH[117]=h_1fa.vdx); VIDEOREF@0x1027 0x145C (FH[92]=h2_1.vdx); VIDEOREF@0x1086 0x146B (FH[107]=h8_1.vdx); VIDEOREF@0x12CB 0x2007 (HTBD[7]=htab.vdx); VIDEOREF@0x1322 0x2004 (HTBD[4]=ht2p.vdx); VIDEOREF@0x132B 0x2008 (HTBD[8]=ht_mess.vdx); VIDEOREF@0x1337 0x2009 (HTBD[9]=htcd.vdx); VIDEOREF@0x1395 0x1808 (GA[8]=gaab.vdx); VIDEOREF@0x1456 0x1801 (GA[1]=ga1pb.vdx); VIDEOREF@0x145C 0x1801 (GA[1]=ga1pb.vdx); VIDEOREF@0x148B 0x1809 (GA[9]=gaabb.vdx); VIDEOREF@0x1491 0x180B (GA[11]=gacd.vdx); VIDEOREF@0x149D 0x2869 (JHEK[105]=jhab.vdx); VIDEOREF@0x1556 0x2877 (JHEK[119]=jhpub.vdx); VIDEOREF@0x1583 0x2875 (JHEK[117]=jhmib.vdx); VIDEOREF@0x159F 0x2875 (JHEK[117]=jhmib.vdx); VIDEOREF@0x15C5 0x286A (JHEK[106]=jhabb.vdx); VIDEOREF@0x15CB 0x286D (JHEK[109]=jhcd.vdx); VIDEOREF@0x15F4 0x4803 (P[3]=pfa.vdx); VIDEOREF@0x1635 0x480A (P[10]=pfdb.vdx); VIDEOREF@0x1661 0x4809 (P[9]=pfd.vdx); VIDEOREF@0x1672 0x480C (P[12]=pmu.vdx); VIDEOREF@0x1682 0x4807 (P[7]=pfc.vdx); VIDEOREF@0x16B3 0x4804 (P[4]=pfab.vdx); VIDEOREF@0x2185 0x3400 (LI[0]=l1_2.vdx); VIDEOREF@0x2935 0x3402 (LI[2]=l1_cb.vdx); VIDEOREF@0x29F5 0x1422 (FH[34]=f_1bb.vdx); VIDEOREF@0x2A19 0x3402 (LI[2]=l1_cb.vdx); VIDEOREF@0x2A5F 0x3428 (LI[40]=l_1ba.vdx); VIDEOREF@0x2A65 0x342B (LI[43]=l_1fc.vdx); VIDEOREF@0x2AE8 0x3406 (LI[6]=l2_3b.vdx); VIDEOREF@0x2AFB 0x342F (LI[47]=l_2bd.vdx); VIDEOREF@0x2B4D 0x3432 (LI[50]=l_2fc.vdx); VIDEOREF@0x2B5F 0x342F (LI[47]=l_2bd.vdx); VIDEOREF@0x2D0C 0x2881 (JHEK[129]=ekab.vdx); VIDEOREF@0x2D99 0x287B (JHEK[123]=ek1pb.vdx); VIDEOREF@0x2D9F 0x287B (JHEK[123]=ek1pb.vdx); VIDEOREF@0x2DCE 0x288C (JHEK[140]=ekmbb.vdx); VIDEOREF@0x2DD7 0x2883 (JHEK[131]=ekbc.vdx); VIDEOREF@0x2E24 0x2887 (JHEK[135]=ekcd.vdx); VIDEOREF@0x2E2D 0x2882 (JHEK[130]=ekabb.vdx); VIDEOREF@0x2E33 0x2888 (JHEK[136]=ekcdb.vdx); VIDEOREF@0x2E50 0x0807 (CH[7]=chab.vdx); VIDEOREF@0x2EB2 0x080A (CH[10]=chcd.vdx); VIDEOREF@0x2EB8 0x0808 (CH[8]=chabb.vdx); VIDEOREF@0x2ECC 0x0811 (CH[17]=chpub.vdx); VIDEOREF@0x2ED2 0x0809 (CH[9]=chal.vdx); VIDEOREF@0x2F34 0x080F (CH[15]=chorb.vdx); VIDEOREF@0x2F4A 0x4406 (N[6]=nab.vdx); VIDEOREF@0x3004 0x4408 (N[8]=ncd.vdx); VIDEOREF@0x300A 0x4407 (N[7]=nabb.vdx); VIDEOREF@0x301B 0x440A (N[10]=ncri.vdx); VIDEOREF@0x303C 0x440B (N[11]=ncrib.vdx); VIDEOREF@0x3074 0x4410 (N[16]=njacb.vdx); VIDEOREF@0x3084 0x4412 (N[18]=npuzb.vdx); VIDEOREF@0x3096 0x3010 (LA[16]=la_1fa.vdx); VIDEOREF@0x3165 0x300C (LA[12]=la_1ba.vdx); VIDEOREF@0x318F 0x3013 (LA[19]=la_1fd.vdx); VIDEOREF@0x3254 0x3803 (MB[3]=mbab.vdx); VIDEOREF@0x325C 0x383D (MB[61]=mb_warp.vdx); VIDEOREF@0x32BE 0x383F (MB[63]=sexbed.vdx); VIDEOREF@0x32F4 0x3809 (MB[9]=mbpub.vdx); VIDEOREF@0x330E 0x3804 (MB[4]=mbabb.vdx); VIDEOREF@0x3314 0x3805 (MB[5]=mbcd.vdx); VIDEOREF@0x3345 0x0C09 (D[9]=d_1fa.vdx); VIDEOREF@0x33D0 0x0C03 (D[3]=d1_3b.vdx); VIDEOREF@0x33F3 0x0C07 (D[7]=d_1ba.vdx); VIDEOREF@0x33F9 0x0C0A (D[10]=d_1fc.vdx); VIDEOREF@0x3944 0x2875 (JHEK[117]=jhmib.vdx); VIDEOREF@0x39BA 0x383D (MB[61]=mb_warp.vdx); VIDEOREF@0x3ABA 0x1426 (FH[38]=f_1fb.vdx); VIDEOREF@0x3AEC 0x2C05 (K[5]=k2_7b.vdx); VIDEOREF@0x3B22 0x2C0E (K[14]=k_1tb.vdx); VIDEOREF@0x3B88 0x1405 (FH[5]=f1_pb.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x3372` | `HOTSPOT_BOTTOM_4` | target=0x3912 |
| `0x3375` | `HOTSPOT_RECT` | left=0x0080, top=0x00B3, right=0x00C5, bottom=0x0130, target=0x33C1, cursor=0x00 |
| `0x3386` | `HOTSPOT_RECT` | left=0x01D5, top=0x00F5, right=0x021D, bottom=0x012A, target=0x33C7, cursor=0x06 |
| `0x3398` | `HOTSPOT_RECT` | left=0x01D5, top=0x00F5, right=0x021D, bottom=0x012A, target=0x33C7, cursor=0x06 |
| `0x33AA` | `HOTSPOT_BOTTOM_4` | target=0x3912 |
| `0x33AD` | `HOTSPOT_LEFT` | target=0x33DC |
| `0x33B0` | `HOTSPOT_RIGHT` | target=0x33E2 |

### Loop `0x33E8`–`0x33F2`

Nearest preceding video in file order: VIDEOREF@0x33E2 0x0C09 (D[9]=d_1fa.vdx)

Scene candidates: VIDEOREF@0x33DC 0x0C08 (D[8]=d_1bc.vdx); VIDEOREF@0x33E2 0x0C09 (D[9]=d_1fa.vdx); VIDEOREF@0x346B 0x0C05 (D[5]=d2_1.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x33E9` | `HOTSPOT_LEFT` | target=0x33F3 |
| `0x33EC` | `HOTSPOT_RIGHT` | target=0x33F9 |
| `0x33EF` | `HOTSPOT_CENTER` | target=0x33FF |

### Loop `0x340E`–EOF

Nearest preceding video in file order: VIDEOREF@0x3404 0x1491 (FH[145]=h_5b.vdx)

Scene candidates: VIDEOREF@0x33C1 0x0C01 (D[1]=d1_2.vdx); VIDEOREF@0x345F 0x0C0E (D[14]=d_2bd.vdx); VIDEOREF@0x3465 0x0C11 (D[17]=d_2fc.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x340F` | `HOTSPOT_LEFT` | target=0x3429 |
| `0x3412` | `HOTSPOT_RIGHT` | target=0x342F |

Warning: nested/restarted before INPUTLOOPEND

### Loop `0x341A`–`0x3427`

Nearest preceding video in file order: VIDEOREF@0x3404 0x1491 (FH[145]=h_5b.vdx)

Scene candidates: VIDEOREF@0x33C1 0x0C01 (D[1]=d1_2.vdx); VIDEOREF@0x345F 0x0C0E (D[14]=d_2bd.vdx); VIDEOREF@0x3465 0x0C11 (D[17]=d_2fc.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x341B` | `HOTSPOT_RECT` | left=0x0139, top=0x00A0, right=0x016F, bottom=0x011E, target=0x343B, cursor=0x00 |

### Loop `0x3445`–`0x3458`

Nearest preceding video in file order: VIDEOREF@0x343B 0x0C1E (D[30]=d_x.vdx)

Scene candidates: VIDEOREF@0x3429 0x0C0D (D[13]=d_2bc.vdx); VIDEOREF@0x3435 0x0C10 (D[16]=d_2fb.vdx)

| Offset | Opcode | Declaration |
| -----: | ------ | ----------- |
| `0x3446` | `HOTSPOT_LEFT` | target=0x3459 |
| `0x3449` | `HOTSPOT_RIGHT` | target=0x3465 |
| `0x344C` | `HOTSPOT_RECT` | left=0x0185, top=0x00B0, right=0x01E7, bottom=0x0156, target=0x346B, cursor=0x00 |

