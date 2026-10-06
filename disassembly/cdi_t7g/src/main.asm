; Exact original file reconstruction. NASM emits bytes, not 68k mnemonics.
BITS 16
ORG 0
%if ($-$$) != 0x0
%error "Incorrect placement: src/data/cdi_t7g_module_header_and_name.asm"
%endif
%include "src/data/cdi_t7g_module_header_and_name.asm"
%if ($-$$) != 0x50
%error "Incorrect placement: src/functions/unknown/cdi_t7g_000050_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_000050_unknown.asm"
%if ($-$$) != 0x208
%error "Incorrect placement: src/functions/unknown/cdi_t7g_000208_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_000208_unknown.asm"
%if ($-$$) != 0x3BC
%error "Incorrect placement: src/functions/unknown/cdi_t7g_0003bc_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_0003bc_unknown.asm"
%if ($-$$) != 0x410
%error "Incorrect placement: src/functions/unknown/cdi_t7g_000410_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_000410_unknown.asm"
%if ($-$$) != 0x46E
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00046e_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00046e_unknown.asm"
%if ($-$$) != 0x494
%error "Incorrect placement: src/functions/unknown/cdi_t7g_000494_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_000494_unknown.asm"
%if ($-$$) != 0x584
%error "Incorrect placement: src/functions/unknown/cdi_t7g_000584_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_000584_unknown.asm"
%if ($-$$) != 0x9326
%error "Incorrect placement: src/functions/unknown/cdi_t7g_009326_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_009326_unknown.asm"
%if ($-$$) != 0x96CC
%error "Incorrect placement: src/functions/unknown/cdi_t7g_0096cc_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_0096cc_unknown.asm"
%if ($-$$) != 0x995C
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00995c_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00995c_unknown.asm"
%if ($-$$) != 0x9BD8
%error "Incorrect placement: src/functions/unknown/cdi_t7g_009bd8_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_009bd8_unknown.asm"
%if ($-$$) != 0x9FF6
%error "Incorrect placement: src/functions/unknown/cdi_t7g_009ff6_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_009ff6_unknown.asm"
%if ($-$$) != 0xA026
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00a026_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00a026_unknown.asm"
%if ($-$$) != 0xA07C
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00a07c_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00a07c_unknown.asm"
%if ($-$$) != 0xA0A6
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00a0a6_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00a0a6_unknown.asm"
%if ($-$$) != 0xAC5C
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00ac5c_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00ac5c_unknown.asm"
%if ($-$$) != 0xAC7E
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00ac7e_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00ac7e_unknown.asm"
%if ($-$$) != 0xAD2E
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00ad2e_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00ad2e_unknown.asm"
%if ($-$$) != 0xAD72
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00ad72_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00ad72_unknown.asm"
%if ($-$$) != 0xAD74
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00ad74_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00ad74_unknown.asm"
%if ($-$$) != 0xB2BA
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00b2ba_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00b2ba_unknown.asm"
%if ($-$$) != 0xB854
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00b854_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00b854_unknown.asm"
%if ($-$$) != 0xBA50
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00ba50_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00ba50_unknown.asm"
%if ($-$$) != 0xBA70
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00ba70_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00ba70_unknown.asm"
%if ($-$$) != 0xBAC6
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00bac6_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00bac6_unknown.asm"
%if ($-$$) != 0xBB16
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00bb16_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00bb16_unknown.asm"
%if ($-$$) != 0xBB36
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00bb36_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00bb36_unknown.asm"
%if ($-$$) != 0xBB78
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00bb78_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00bb78_unknown.asm"
%if ($-$$) != 0xBB94
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00bb94_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00bb94_unknown.asm"
%if ($-$$) != 0xBBBA
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00bbba_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00bbba_unknown.asm"
%if ($-$$) != 0xBBCE
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00bbce_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00bbce_unknown.asm"
%if ($-$$) != 0xBBFE
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00bbfe_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00bbfe_unknown.asm"
%if ($-$$) != 0xBC54
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00bc54_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00bc54_unknown.asm"
%if ($-$$) != 0xBC9E
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00bc9e_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00bc9e_unknown.asm"
%if ($-$$) != 0xBCEA
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00bcea_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00bcea_unknown.asm"
%if ($-$$) != 0xBD36
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00bd36_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00bd36_unknown.asm"
%if ($-$$) != 0xBD50
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00bd50_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00bd50_unknown.asm"
%if ($-$$) != 0xBD7E
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00bd7e_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00bd7e_unknown.asm"
%if ($-$$) != 0xBED0
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00bed0_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00bed0_unknown.asm"
%if ($-$$) != 0xBFD2
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00bfd2_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00bfd2_unknown.asm"
%if ($-$$) != 0xBFF0
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00bff0_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00bff0_unknown.asm"
%if ($-$$) != 0xC00C
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00c00c_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00c00c_unknown.asm"
%if ($-$$) != 0xC02A
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00c02a_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00c02a_unknown.asm"
%if ($-$$) != 0xC046
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00c046_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00c046_unknown.asm"
%if ($-$$) != 0xC078
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00c078_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00c078_unknown.asm"
%if ($-$$) != 0xC0BC
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00c0bc_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00c0bc_unknown.asm"
%if ($-$$) != 0xC13E
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00c13e_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00c13e_unknown.asm"
%if ($-$$) != 0xC178
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00c178_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00c178_unknown.asm"
%if ($-$$) != 0xC1D8
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00c1d8_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00c1d8_unknown.asm"
%if ($-$$) != 0xC204
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00c204_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00c204_unknown.asm"
%if ($-$$) != 0xC20C
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00c20c_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00c20c_unknown.asm"
%if ($-$$) != 0xC32A
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00c32a_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00c32a_unknown.asm"
%if ($-$$) != 0xC34A
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00c34a_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00c34a_unknown.asm"
%if ($-$$) != 0xC3DC
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00c3dc_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00c3dc_unknown.asm"
%if ($-$$) != 0xC416
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00c416_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00c416_unknown.asm"
%if ($-$$) != 0xC450
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00c450_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00c450_unknown.asm"
%if ($-$$) != 0xC45A
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00c45a_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00c45a_unknown.asm"
%if ($-$$) != 0xC464
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00c464_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00c464_unknown.asm"
%if ($-$$) != 0xC4A2
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00c4a2_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00c4a2_unknown.asm"
%if ($-$$) != 0xC4D8
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00c4d8_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00c4d8_unknown.asm"
%if ($-$$) != 0xC622
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00c622_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00c622_unknown.asm"
%if ($-$$) != 0xC7D6
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00c7d6_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00c7d6_unknown.asm"
%if ($-$$) != 0xC86E
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00c86e_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00c86e_unknown.asm"
%if ($-$$) != 0xC948
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00c948_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00c948_unknown.asm"
%if ($-$$) != 0xC99A
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00c99a_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00c99a_unknown.asm"
%if ($-$$) != 0xC9D8
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00c9d8_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00c9d8_unknown.asm"
%if ($-$$) != 0xC9EA
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00c9ea_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00c9ea_unknown.asm"
%if ($-$$) != 0xC9FE
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00c9fe_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00c9fe_unknown.asm"
%if ($-$$) != 0xCA82
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00ca82_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00ca82_unknown.asm"
%if ($-$$) != 0xCB0A
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00cb0a_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00cb0a_unknown.asm"
%if ($-$$) != 0xCB9A
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00cb9a_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00cb9a_unknown.asm"
%if ($-$$) != 0xCC52
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00cc52_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00cc52_unknown.asm"
%if ($-$$) != 0xCC70
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00cc70_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00cc70_unknown.asm"
%if ($-$$) != 0xCCAA
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00ccaa_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00ccaa_unknown.asm"
%if ($-$$) != 0xCD00
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00cd00_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00cd00_unknown.asm"
%if ($-$$) != 0xCD4E
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00cd4e_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00cd4e_unknown.asm"
%if ($-$$) != 0xCDCC
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00cdcc_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00cdcc_unknown.asm"
%if ($-$$) != 0xCDE2
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00cde2_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00cde2_unknown.asm"
%if ($-$$) != 0xCE22
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00ce22_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00ce22_unknown.asm"
%if ($-$$) != 0xCE3E
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00ce3e_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00ce3e_unknown.asm"
%if ($-$$) != 0xCEB8
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00ceb8_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00ceb8_unknown.asm"
%if ($-$$) != 0xCEEA
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00ceea_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00ceea_unknown.asm"
%if ($-$$) != 0xCFC2
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00cfc2_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00cfc2_unknown.asm"
%if ($-$$) != 0xD006
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00d006_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00d006_unknown.asm"
%if ($-$$) != 0xD024
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00d024_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00d024_unknown.asm"
%if ($-$$) != 0xD144
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00d144_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00d144_unknown.asm"
%if ($-$$) != 0xD228
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00d228_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00d228_unknown.asm"
%if ($-$$) != 0xD286
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00d286_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00d286_unknown.asm"
%if ($-$$) != 0xD304
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00d304_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00d304_unknown.asm"
%if ($-$$) != 0xD326
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00d326_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00d326_unknown.asm"
%if ($-$$) != 0xD340
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00d340_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00d340_unknown.asm"
%if ($-$$) != 0xD362
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00d362_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00d362_unknown.asm"
%if ($-$$) != 0xD372
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00d372_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00d372_unknown.asm"
%if ($-$$) != 0xD3A2
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00d3a2_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00d3a2_unknown.asm"
%if ($-$$) != 0xD480
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00d480_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00d480_unknown.asm"
%if ($-$$) != 0xD4E4
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00d4e4_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00d4e4_unknown.asm"
%if ($-$$) != 0xD512
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00d512_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00d512_unknown.asm"
%if ($-$$) != 0xD532
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00d532_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00d532_unknown.asm"
%if ($-$$) != 0xD606
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00d606_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00d606_unknown.asm"
%if ($-$$) != 0xD666
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00d666_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00d666_unknown.asm"
%if ($-$$) != 0xD6A2
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00d6a2_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00d6a2_unknown.asm"
%if ($-$$) != 0xD6C8
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00d6c8_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00d6c8_unknown.asm"
%if ($-$$) != 0xD6E8
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00d6e8_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00d6e8_unknown.asm"
%if ($-$$) != 0xD720
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00d720_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00d720_unknown.asm"
%if ($-$$) != 0xD752
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00d752_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00d752_unknown.asm"
%if ($-$$) != 0xD796
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00d796_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00d796_unknown.asm"
%if ($-$$) != 0xD7CC
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00d7cc_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00d7cc_unknown.asm"
%if ($-$$) != 0xD808
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00d808_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00d808_unknown.asm"
%if ($-$$) != 0xD826
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00d826_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00d826_unknown.asm"
%if ($-$$) != 0xD88C
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00d88c_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00d88c_unknown.asm"
%if ($-$$) != 0xD9D6
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00d9d6_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00d9d6_unknown.asm"
%if ($-$$) != 0xDA30
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00da30_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00da30_unknown.asm"
%if ($-$$) != 0xDA40
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00da40_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00da40_unknown.asm"
%if ($-$$) != 0xDA50
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00da50_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00da50_unknown.asm"
%if ($-$$) != 0xDA88
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00da88_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00da88_unknown.asm"
%if ($-$$) != 0xDAC8
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00dac8_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00dac8_unknown.asm"
%if ($-$$) != 0xDAD2
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00dad2_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00dad2_unknown.asm"
%if ($-$$) != 0xDD26
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00dd26_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00dd26_unknown.asm"
%if ($-$$) != 0xDDCE
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00ddce_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00ddce_unknown.asm"
%if ($-$$) != 0xDEB2
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00deb2_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00deb2_unknown.asm"
%if ($-$$) != 0xDF1A
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00df1a_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00df1a_unknown.asm"
%if ($-$$) != 0xDF3A
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00df3a_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00df3a_unknown.asm"
%if ($-$$) != 0xDFA2
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00dfa2_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00dfa2_unknown.asm"
%if ($-$$) != 0xE034
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00e034_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00e034_unknown.asm"
%if ($-$$) != 0xE042
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00e042_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00e042_unknown.asm"
%if ($-$$) != 0xE1A4
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00e1a4_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00e1a4_unknown.asm"
%if ($-$$) != 0xE242
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00e242_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00e242_unknown.asm"
%if ($-$$) != 0xE35E
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00e35e_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00e35e_unknown.asm"
%if ($-$$) != 0xE3F8
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00e3f8_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00e3f8_unknown.asm"
%if ($-$$) != 0xE414
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00e414_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00e414_unknown.asm"
%if ($-$$) != 0xE41A
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00e41a_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00e41a_unknown.asm"
%if ($-$$) != 0xE426
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00e426_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00e426_unknown.asm"
%if ($-$$) != 0xE442
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00e442_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00e442_unknown.asm"
%if ($-$$) != 0xE462
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00e462_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00e462_unknown.asm"
%if ($-$$) != 0xE48C
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00e48c_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00e48c_unknown.asm"
%if ($-$$) != 0xE4DC
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00e4dc_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00e4dc_unknown.asm"
%if ($-$$) != 0xE54A
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00e54a_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00e54a_unknown.asm"
%if ($-$$) != 0xE598
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00e598_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00e598_unknown.asm"
%if ($-$$) != 0xE600
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00e600_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00e600_unknown.asm"
%if ($-$$) != 0xE638
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00e638_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00e638_unknown.asm"
%if ($-$$) != 0xE65E
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00e65e_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00e65e_unknown.asm"
%if ($-$$) != 0xE6E0
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00e6e0_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00e6e0_unknown.asm"
%if ($-$$) != 0xE6E6
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00e6e6_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00e6e6_unknown.asm"
%if ($-$$) != 0xE6F6
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00e6f6_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00e6f6_unknown.asm"
%if ($-$$) != 0xE6FA
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00e6fa_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00e6fa_unknown.asm"
%if ($-$$) != 0xE718
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00e718_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00e718_unknown.asm"
%if ($-$$) != 0xE720
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00e720_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00e720_unknown.asm"
%if ($-$$) != 0xE850
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00e850_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00e850_unknown.asm"
%if ($-$$) != 0xE86A
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00e86a_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00e86a_unknown.asm"
%if ($-$$) != 0xE8A2
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00e8a2_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00e8a2_unknown.asm"
%if ($-$$) != 0xE8A6
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00e8a6_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00e8a6_unknown.asm"
%if ($-$$) != 0xE8C6
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00e8c6_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00e8c6_unknown.asm"
%if ($-$$) != 0xE8CE
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00e8ce_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00e8ce_unknown.asm"
%if ($-$$) != 0xE8DA
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00e8da_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00e8da_unknown.asm"
%if ($-$$) != 0xE91C
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00e91c_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00e91c_unknown.asm"
%if ($-$$) != 0xE938
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00e938_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00e938_unknown.asm"
%if ($-$$) != 0xE94C
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00e94c_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00e94c_unknown.asm"
%if ($-$$) != 0xE96E
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00e96e_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00e96e_unknown.asm"
%if ($-$$) != 0xE97C
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00e97c_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00e97c_unknown.asm"
%if ($-$$) != 0xEB6A
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00eb6a_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00eb6a_unknown.asm"
%if ($-$$) != 0xEBBC
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00ebbc_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00ebbc_unknown.asm"
%if ($-$$) != 0xECAC
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00ecac_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00ecac_unknown.asm"
%if ($-$$) != 0xED08
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00ed08_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00ed08_unknown.asm"
%if ($-$$) != 0xEE68
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00ee68_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00ee68_unknown.asm"
%if ($-$$) != 0xEEFA
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00eefa_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00eefa_unknown.asm"
%if ($-$$) != 0xEFCC
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00efcc_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00efcc_unknown.asm"
%if ($-$$) != 0xF000
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00f000_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00f000_unknown.asm"
%if ($-$$) != 0xF098
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00f098_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00f098_unknown.asm"
%if ($-$$) != 0xF16E
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00f16e_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00f16e_unknown.asm"
%if ($-$$) != 0xF19A
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00f19a_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00f19a_unknown.asm"
%if ($-$$) != 0xF21E
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00f21e_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00f21e_unknown.asm"
%if ($-$$) != 0xF24E
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00f24e_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00f24e_unknown.asm"
%if ($-$$) != 0xF324
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00f324_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00f324_unknown.asm"
%if ($-$$) != 0xF3A2
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00f3a2_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00f3a2_unknown.asm"
%if ($-$$) != 0xF4BC
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00f4bc_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00f4bc_unknown.asm"
%if ($-$$) != 0xF54C
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00f54c_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00f54c_unknown.asm"
%if ($-$$) != 0xF57A
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00f57a_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00f57a_unknown.asm"
%if ($-$$) != 0xF5C4
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00f5c4_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00f5c4_unknown.asm"
%if ($-$$) != 0xF608
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00f608_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00f608_unknown.asm"
%if ($-$$) != 0xF664
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00f664_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00f664_unknown.asm"
%if ($-$$) != 0xF66A
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00f66a_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00f66a_unknown.asm"
%if ($-$$) != 0xF6EA
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00f6ea_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00f6ea_unknown.asm"
%if ($-$$) != 0xF71E
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00f71e_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00f71e_unknown.asm"
%if ($-$$) != 0xF76A
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00f76a_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00f76a_unknown.asm"
%if ($-$$) != 0xF78A
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00f78a_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00f78a_unknown.asm"
%if ($-$$) != 0xF7AA
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00f7aa_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00f7aa_unknown.asm"
%if ($-$$) != 0xF7CC
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00f7cc_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00f7cc_unknown.asm"
%if ($-$$) != 0xF88E
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00f88e_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00f88e_unknown.asm"
%if ($-$$) != 0xF8AC
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00f8ac_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00f8ac_unknown.asm"
%if ($-$$) != 0xF8E6
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00f8e6_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00f8e6_unknown.asm"
%if ($-$$) != 0xF90A
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00f90a_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00f90a_unknown.asm"
%if ($-$$) != 0xF926
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00f926_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00f926_unknown.asm"
%if ($-$$) != 0xF956
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00f956_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00f956_unknown.asm"
%if ($-$$) != 0xF978
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00f978_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00f978_unknown.asm"
%if ($-$$) != 0xF99A
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00f99a_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00f99a_unknown.asm"
%if ($-$$) != 0xF9AE
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00f9ae_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00f9ae_unknown.asm"
%if ($-$$) != 0xF9EE
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00f9ee_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00f9ee_unknown.asm"
%if ($-$$) != 0xFA18
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00fa18_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00fa18_unknown.asm"
%if ($-$$) != 0xFA22
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00fa22_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00fa22_unknown.asm"
%if ($-$$) != 0xFA2C
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00fa2c_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00fa2c_unknown.asm"
%if ($-$$) != 0xFA54
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00fa54_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00fa54_unknown.asm"
%if ($-$$) != 0xFA78
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00fa78_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00fa78_unknown.asm"
%if ($-$$) != 0xFAA6
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00faa6_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00faa6_unknown.asm"
%if ($-$$) != 0xFAFA
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00fafa_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00fafa_unknown.asm"
%if ($-$$) != 0xFB2E
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00fb2e_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00fb2e_unknown.asm"
%if ($-$$) != 0xFB4E
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00fb4e_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00fb4e_unknown.asm"
%if ($-$$) != 0xFB92
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00fb92_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00fb92_unknown.asm"
%if ($-$$) != 0xFBB2
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00fbb2_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00fbb2_unknown.asm"
%if ($-$$) != 0xFBC2
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00fbc2_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00fbc2_unknown.asm"
%if ($-$$) != 0xFBD6
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00fbd6_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00fbd6_unknown.asm"
%if ($-$$) != 0xFC8A
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00fc8a_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00fc8a_unknown.asm"
%if ($-$$) != 0xFCFC
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00fcfc_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00fcfc_unknown.asm"
%if ($-$$) != 0xFD78
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00fd78_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00fd78_unknown.asm"
%if ($-$$) != 0xFDAE
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00fdae_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00fdae_unknown.asm"
%if ($-$$) != 0xFDE2
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00fde2_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00fde2_unknown.asm"
%if ($-$$) != 0xFE2C
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00fe2c_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00fe2c_unknown.asm"
%if ($-$$) != 0xFFC0
%error "Incorrect placement: src/functions/unknown/cdi_t7g_00ffc0_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_00ffc0_unknown.asm"
%if ($-$$) != 0x1003E
%error "Incorrect placement: src/functions/unknown/cdi_t7g_01003e_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_01003e_unknown.asm"
%if ($-$$) != 0x1007E
%error "Incorrect placement: src/functions/unknown/cdi_t7g_01007e_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_01007e_unknown.asm"
%if ($-$$) != 0x100A4
%error "Incorrect placement: src/functions/unknown/cdi_t7g_0100a4_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_0100a4_unknown.asm"
%if ($-$$) != 0x100CC
%error "Incorrect placement: src/functions/unknown/cdi_t7g_0100cc_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_0100cc_unknown.asm"
%if ($-$$) != 0x100E4
%error "Incorrect placement: src/functions/unknown/cdi_t7g_0100e4_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_0100e4_unknown.asm"
%if ($-$$) != 0x1010E
%error "Incorrect placement: src/functions/unknown/cdi_t7g_01010e_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_01010e_unknown.asm"
%if ($-$$) != 0x10134
%error "Incorrect placement: src/functions/unknown/cdi_t7g_010134_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_010134_unknown.asm"
%if ($-$$) != 0x1015A
%error "Incorrect placement: src/functions/unknown/cdi_t7g_01015a_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_01015a_unknown.asm"
%if ($-$$) != 0x10176
%error "Incorrect placement: src/functions/unknown/cdi_t7g_010176_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_010176_unknown.asm"
%if ($-$$) != 0x101A2
%error "Incorrect placement: src/functions/unknown/cdi_t7g_0101a2_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_0101a2_unknown.asm"
%if ($-$$) != 0x101DA
%error "Incorrect placement: src/functions/unknown/cdi_t7g_0101da_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_0101da_unknown.asm"
%if ($-$$) != 0x10202
%error "Incorrect placement: src/functions/unknown/cdi_t7g_010202_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_010202_unknown.asm"
%if ($-$$) != 0x10232
%error "Incorrect placement: src/functions/unknown/cdi_t7g_010232_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_010232_unknown.asm"
%if ($-$$) != 0x10256
%error "Incorrect placement: src/functions/unknown/cdi_t7g_010256_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_010256_unknown.asm"
%if ($-$$) != 0x1029A
%error "Incorrect placement: src/functions/unknown/cdi_t7g_01029a_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_01029a_unknown.asm"
%if ($-$$) != 0x102D4
%error "Incorrect placement: src/functions/unknown/cdi_t7g_0102d4_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_0102d4_unknown.asm"
%if ($-$$) != 0x10322
%error "Incorrect placement: src/functions/unknown/cdi_t7g_010322_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_010322_unknown.asm"
%if ($-$$) != 0x1036C
%error "Incorrect placement: src/functions/unknown/cdi_t7g_01036c_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_01036c_unknown.asm"
%if ($-$$) != 0x103B6
%error "Incorrect placement: src/functions/unknown/cdi_t7g_0103b6_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_0103b6_unknown.asm"
%if ($-$$) != 0x103FA
%error "Incorrect placement: src/functions/unknown/cdi_t7g_0103fa_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_0103fa_unknown.asm"
%if ($-$$) != 0x10406
%error "Incorrect placement: src/functions/unknown/cdi_t7g_010406_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_010406_unknown.asm"
%if ($-$$) != 0x10428
%error "Incorrect placement: src/functions/unknown/cdi_t7g_010428_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_010428_unknown.asm"
%if ($-$$) != 0x10442
%error "Incorrect placement: src/functions/unknown/cdi_t7g_010442_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_010442_unknown.asm"
%if ($-$$) != 0x10498
%error "Incorrect placement: src/functions/unknown/cdi_t7g_010498_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_010498_unknown.asm"
%if ($-$$) != 0x10550
%error "Incorrect placement: src/functions/unknown/cdi_t7g_010550_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_010550_unknown.asm"
%if ($-$$) != 0x10582
%error "Incorrect placement: src/functions/unknown/cdi_t7g_010582_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_010582_unknown.asm"
%if ($-$$) != 0x10588
%error "Incorrect placement: src/functions/unknown/cdi_t7g_010588_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_010588_unknown.asm"
%if ($-$$) != 0x105DA
%error "Incorrect placement: src/functions/unknown/cdi_t7g_0105da_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_0105da_unknown.asm"
%if ($-$$) != 0x107D0
%error "Incorrect placement: src/functions/unknown/cdi_t7g_0107d0_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_0107d0_unknown.asm"
%if ($-$$) != 0x107EE
%error "Incorrect placement: src/functions/unknown/cdi_t7g_0107ee_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_0107ee_unknown.asm"
%if ($-$$) != 0x1080C
%error "Incorrect placement: src/functions/unknown/cdi_t7g_01080c_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_01080c_unknown.asm"
%if ($-$$) != 0x1089A
%error "Incorrect placement: src/functions/unknown/cdi_t7g_01089a_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_01089a_unknown.asm"
%if ($-$$) != 0x108E6
%error "Incorrect placement: src/functions/unknown/cdi_t7g_0108e6_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_0108e6_unknown.asm"
%if ($-$$) != 0x10A04
%error "Incorrect placement: src/functions/unknown/cdi_t7g_010a04_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_010a04_unknown.asm"
%if ($-$$) != 0x10A18
%error "Incorrect placement: src/functions/unknown/cdi_t7g_010a18_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_010a18_unknown.asm"
%if ($-$$) != 0x10A26
%error "Incorrect placement: src/functions/unknown/cdi_t7g_010a26_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_010a26_unknown.asm"
%if ($-$$) != 0x10A2E
%error "Incorrect placement: src/functions/unknown/cdi_t7g_010a2e_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_010a2e_unknown.asm"
%if ($-$$) != 0x10A46
%error "Incorrect placement: src/functions/unknown/cdi_t7g_010a46_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_010a46_unknown.asm"
%if ($-$$) != 0x10A52
%error "Incorrect placement: src/functions/unknown/cdi_t7g_010a52_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_010a52_unknown.asm"
%if ($-$$) != 0x10A7E
%error "Incorrect placement: src/functions/unknown/cdi_t7g_010a7e_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_010a7e_unknown.asm"
%if ($-$$) != 0x10BC2
%error "Incorrect placement: src/functions/unknown/cdi_t7g_010bc2_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_010bc2_unknown.asm"
%if ($-$$) != 0x10C6A
%error "Incorrect placement: src/functions/unknown/cdi_t7g_010c6a_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_010c6a_unknown.asm"
%if ($-$$) != 0x10C94
%error "Incorrect placement: src/functions/unknown/cdi_t7g_010c94_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_010c94_unknown.asm"
%if ($-$$) != 0x10CAA
%error "Incorrect placement: src/functions/unknown/cdi_t7g_010caa_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_010caa_unknown.asm"
%if ($-$$) != 0x10CC4
%error "Incorrect placement: src/functions/unknown/cdi_t7g_010cc4_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_010cc4_unknown.asm"
%if ($-$$) != 0x10CCC
%error "Incorrect placement: src/functions/unknown/cdi_t7g_010ccc_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_010ccc_unknown.asm"
%if ($-$$) != 0x10E20
%error "Incorrect placement: src/functions/unknown/cdi_t7g_010e20_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_010e20_unknown.asm"
%if ($-$$) != 0x10E96
%error "Incorrect placement: src/functions/unknown/cdi_t7g_010e96_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_010e96_unknown.asm"
%if ($-$$) != 0x10EDC
%error "Incorrect placement: src/functions/unknown/cdi_t7g_010edc_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_010edc_unknown.asm"
%if ($-$$) != 0x10EFA
%error "Incorrect placement: src/functions/unknown/cdi_t7g_010efa_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_010efa_unknown.asm"
%if ($-$$) != 0x10FD2
%error "Incorrect placement: src/functions/unknown/cdi_t7g_010fd2_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_010fd2_unknown.asm"
%if ($-$$) != 0x10FFC
%error "Incorrect placement: src/functions/unknown/cdi_t7g_010ffc_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_010ffc_unknown.asm"
%if ($-$$) != 0x11064
%error "Incorrect placement: src/functions/unknown/cdi_t7g_011064_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_011064_unknown.asm"
%if ($-$$) != 0x1119C
%error "Incorrect placement: src/functions/unknown/cdi_t7g_01119c_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_01119c_unknown.asm"
%if ($-$$) != 0x1119E
%error "Incorrect placement: src/functions/unknown/cdi_t7g_01119e_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_01119e_unknown.asm"
%if ($-$$) != 0x111F0
%error "Incorrect placement: src/functions/unknown/cdi_t7g_0111f0_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_0111f0_unknown.asm"
%if ($-$$) != 0x1135C
%error "Incorrect placement: src/functions/unknown/cdi_t7g_01135c_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_01135c_unknown.asm"
%if ($-$$) != 0x116C6
%error "Incorrect placement: src/functions/unknown/cdi_t7g_0116c6_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_0116c6_unknown.asm"
%if ($-$$) != 0x11706
%error "Incorrect placement: src/functions/unknown/cdi_t7g_011706_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_011706_unknown.asm"
%if ($-$$) != 0x11710
%error "Incorrect placement: src/functions/unknown/cdi_t7g_011710_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_011710_unknown.asm"
%if ($-$$) != 0x11736
%error "Incorrect placement: src/functions/unknown/cdi_t7g_011736_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_011736_unknown.asm"
%if ($-$$) != 0x117F2
%error "Incorrect placement: src/functions/unknown/cdi_t7g_0117f2_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_0117f2_unknown.asm"
%if ($-$$) != 0x118AA
%error "Incorrect placement: src/functions/unknown/cdi_t7g_0118aa_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_0118aa_unknown.asm"
%if ($-$$) != 0x118B6
%error "Incorrect placement: src/functions/unknown/cdi_t7g_0118b6_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_0118b6_unknown.asm"
%if ($-$$) != 0x118B8
%error "Incorrect placement: src/functions/unknown/cdi_t7g_0118b8_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_0118b8_unknown.asm"
%if ($-$$) != 0x118E4
%error "Incorrect placement: src/functions/unknown/cdi_t7g_0118e4_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_0118e4_unknown.asm"
%if ($-$$) != 0x1191A
%error "Incorrect placement: src/functions/unknown/cdi_t7g_01191a_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_01191a_unknown.asm"
%if ($-$$) != 0x11974
%error "Incorrect placement: src/functions/unknown/cdi_t7g_011974_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_011974_unknown.asm"
%if ($-$$) != 0x11E50
%error "Incorrect placement: src/functions/unknown/cdi_t7g_011e50_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_011e50_unknown.asm"
%if ($-$$) != 0x11F10
%error "Incorrect placement: src/functions/unknown/cdi_t7g_011f10_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_011f10_unknown.asm"
%if ($-$$) != 0x11F32
%error "Incorrect placement: src/functions/unknown/cdi_t7g_011f32_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_011f32_unknown.asm"
%if ($-$$) != 0x11F60
%error "Incorrect placement: src/functions/unknown/cdi_t7g_011f60_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_011f60_unknown.asm"
%if ($-$$) != 0x11FFA
%error "Incorrect placement: src/functions/unknown/cdi_t7g_011ffa_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_011ffa_unknown.asm"
%if ($-$$) != 0x12088
%error "Incorrect placement: src/functions/unknown/cdi_t7g_012088_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_012088_unknown.asm"
%if ($-$$) != 0x120E2
%error "Incorrect placement: src/functions/unknown/cdi_t7g_0120e2_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_0120e2_unknown.asm"
%if ($-$$) != 0x120E6
%error "Incorrect placement: src/functions/unknown/cdi_t7g_0120e6_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_0120e6_unknown.asm"
%if ($-$$) != 0x1216E
%error "Incorrect placement: src/functions/unknown/cdi_t7g_01216e_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_01216e_unknown.asm"
%if ($-$$) != 0x121D8
%error "Incorrect placement: src/functions/unknown/cdi_t7g_0121d8_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_0121d8_unknown.asm"
%if ($-$$) != 0x121EA
%error "Incorrect placement: src/functions/unknown/cdi_t7g_0121ea_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_0121ea_unknown.asm"
%if ($-$$) != 0x12334
%error "Incorrect placement: src/functions/unknown/cdi_t7g_012334_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_012334_unknown.asm"
%if ($-$$) != 0x12394
%error "Incorrect placement: src/functions/unknown/cdi_t7g_012394_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_012394_unknown.asm"
%if ($-$$) != 0x124E0
%error "Incorrect placement: src/functions/unknown/cdi_t7g_0124e0_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_0124e0_unknown.asm"
%if ($-$$) != 0x124EA
%error "Incorrect placement: src/functions/unknown/cdi_t7g_0124ea_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_0124ea_unknown.asm"
%if ($-$$) != 0x124FE
%error "Incorrect placement: src/functions/unknown/cdi_t7g_0124fe_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_0124fe_unknown.asm"
%if ($-$$) != 0x12528
%error "Incorrect placement: src/functions/unknown/cdi_t7g_012528_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_012528_unknown.asm"
%if ($-$$) != 0x12550
%error "Incorrect placement: src/functions/unknown/cdi_t7g_012550_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_012550_unknown.asm"
%if ($-$$) != 0x1259A
%error "Incorrect placement: src/functions/unknown/cdi_t7g_01259a_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_01259a_unknown.asm"
%if ($-$$) != 0x12878
%error "Incorrect placement: src/functions/unknown/cdi_t7g_012878_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_012878_unknown.asm"
%if ($-$$) != 0x128D4
%error "Incorrect placement: src/functions/unknown/cdi_t7g_0128d4_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_0128d4_unknown.asm"
%if ($-$$) != 0x12A22
%error "Incorrect placement: src/functions/unknown/cdi_t7g_012a22_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_012a22_unknown.asm"
%if ($-$$) != 0x12A3E
%error "Incorrect placement: src/functions/unknown/cdi_t7g_012a3e_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_012a3e_unknown.asm"
%if ($-$$) != 0x12ADA
%error "Incorrect placement: src/functions/unknown/cdi_t7g_012ada_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_012ada_unknown.asm"
%if ($-$$) != 0x12B12
%error "Incorrect placement: src/functions/unknown/cdi_t7g_012b12_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_012b12_unknown.asm"
%if ($-$$) != 0x12B9C
%error "Incorrect placement: src/functions/unknown/cdi_t7g_012b9c_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_012b9c_unknown.asm"
%if ($-$$) != 0x12BA2
%error "Incorrect placement: src/functions/unknown/cdi_t7g_012ba2_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_012ba2_unknown.asm"
%if ($-$$) != 0x12D0C
%error "Incorrect placement: src/functions/unknown/cdi_t7g_012d0c_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_012d0c_unknown.asm"
%if ($-$$) != 0x12D60
%error "Incorrect placement: src/functions/unknown/cdi_t7g_012d60_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_012d60_unknown.asm"
%if ($-$$) != 0x12D96
%error "Incorrect placement: src/functions/unknown/cdi_t7g_012d96_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_012d96_unknown.asm"
%if ($-$$) != 0x12DC8
%error "Incorrect placement: src/functions/unknown/cdi_t7g_012dc8_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_012dc8_unknown.asm"
%if ($-$$) != 0x12DD6
%error "Incorrect placement: src/functions/unknown/cdi_t7g_012dd6_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_012dd6_unknown.asm"
%if ($-$$) != 0x12E32
%error "Incorrect placement: src/functions/unknown/cdi_t7g_012e32_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_012e32_unknown.asm"
%if ($-$$) != 0x13462
%error "Incorrect placement: src/functions/unknown/cdi_t7g_013462_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_013462_unknown.asm"
%if ($-$$) != 0x13548
%error "Incorrect placement: src/functions/unknown/cdi_t7g_013548_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_013548_unknown.asm"
%if ($-$$) != 0x13762
%error "Incorrect placement: src/functions/unknown/cdi_t7g_013762_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_013762_unknown.asm"
%if ($-$$) != 0x13818
%error "Incorrect placement: src/functions/unknown/cdi_t7g_013818_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_013818_unknown.asm"
%if ($-$$) != 0x138A2
%error "Incorrect placement: src/functions/unknown/cdi_t7g_0138a2_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_0138a2_unknown.asm"
%if ($-$$) != 0x1398C
%error "Incorrect placement: src/functions/unknown/cdi_t7g_01398c_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_01398c_unknown.asm"
%if ($-$$) != 0x13A20
%error "Incorrect placement: src/functions/unknown/cdi_t7g_013a20_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_013a20_unknown.asm"
%if ($-$$) != 0x13C8A
%error "Incorrect placement: src/functions/unknown/cdi_t7g_013c8a_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_013c8a_unknown.asm"
%if ($-$$) != 0x13CB0
%error "Incorrect placement: src/functions/unknown/cdi_t7g_013cb0_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_013cb0_unknown.asm"
%if ($-$$) != 0x13E24
%error "Incorrect placement: src/functions/unknown/cdi_t7g_013e24_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_013e24_unknown.asm"
%if ($-$$) != 0x13E3E
%error "Incorrect placement: src/functions/unknown/cdi_t7g_013e3e_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_013e3e_unknown.asm"
%if ($-$$) != 0x13E52
%error "Incorrect placement: src/functions/unknown/cdi_t7g_013e52_unknown.asm"
%endif
%include "src/functions/unknown/cdi_t7g_013e52_unknown.asm"
%if ($-$$) != 0x13ED6
%error "Incorrect placement: src/data/cdi_t7g_initialized_data.asm"
%endif
%include "src/data/cdi_t7g_initialized_data.asm"
%if ($-$$) != 0x14008
%error "Incorrect placement: src/data/cdi_t7g_initialized_references.asm"
%endif
%include "src/data/cdi_t7g_initialized_references.asm"
%if ($-$$) != 0x14075
%error "Incorrect placement: src/data/cdi_t7g_crc.asm"
%endif
%include "src/data/cdi_t7g_crc.asm"
%if ($-$$) != 0x14078
%error "Incorrect placement: src/data/cdi_data_module_header_and_name.asm"
%endif
%include "src/data/cdi_data_module_header_and_name.asm"
%if ($-$$) != 0x140CA
%error "Incorrect placement: src/functions/resource_io/return_embedded_data_pointers.asm"
%endif
%include "src/functions/resource_io/return_embedded_data_pointers.asm"
%if ($-$$) != 0x140D4
%error "Incorrect placement: src/data/cdi_data_unknown_encoded_payload.asm"
%endif
%include "src/data/cdi_data_unknown_encoded_payload.asm"
%if ($-$$) != 0x15192
%error "Incorrect placement: src/data/cdi_data_unknown_64k_table.asm"
%endif
%include "src/data/cdi_data_unknown_64k_table.asm"
%if ($-$$) != 0x25192
%error "Incorrect placement: src/data/cdi_data_initialized_data.asm"
%endif
%include "src/data/cdi_data_initialized_data.asm"
%if ($-$$) != 0x2519A
%error "Incorrect placement: src/data/cdi_data_initialized_references.asm"
%endif
%include "src/data/cdi_data_initialized_references.asm"
%if ($-$$) != 0x251A3
%error "Incorrect placement: src/data/cdi_data_crc.asm"
%endif
%include "src/data/cdi_data_crc.asm"
%if ($-$$) != 0x251A6
%error "Incorrect placement: src/data/cdi_t7g_file_padding.asm"
%endif
%include "src/data/cdi_t7g_file_padding.asm"
%if ($-$$) != 153600
%error "Incorrect file size"
%endif
