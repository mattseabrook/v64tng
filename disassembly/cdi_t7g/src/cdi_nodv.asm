; Exact original file reconstruction. NASM emits bytes, not 68k mnemonics.
BITS 16
ORG 0
%if ($-$$) != 0x0
%error "Incorrect placement: src/data/cdi_nodv_module_header_and_name.asm"
%endif
%include "src/data/cdi_nodv_module_header_and_name.asm"
%if ($-$$) != 0x52
%error "Incorrect placement: src/functions/unknown/cdi_nodv_000052_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_000052_unknown.asm"
%if ($-$$) != 0x1E2
%error "Incorrect placement: src/functions/unknown/cdi_nodv_0001e2_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_0001e2_unknown.asm"
%if ($-$$) != 0x236
%error "Incorrect placement: src/functions/unknown/cdi_nodv_000236_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_000236_unknown.asm"
%if ($-$$) != 0x294
%error "Incorrect placement: src/functions/unknown/cdi_nodv_000294_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_000294_unknown.asm"
%if ($-$$) != 0x2BA
%error "Incorrect placement: src/functions/unknown/cdi_nodv_0002ba_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_0002ba_unknown.asm"
%if ($-$$) != 0x346
%error "Incorrect placement: src/functions/unknown/cdi_nodv_000346_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_000346_unknown.asm"
%if ($-$$) != 0xA1A6
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00a1a6_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00a1a6_unknown.asm"
%if ($-$$) != 0xA54C
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00a54c_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00a54c_unknown.asm"
%if ($-$$) != 0xA7DC
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00a7dc_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00a7dc_unknown.asm"
%if ($-$$) != 0xAA58
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00aa58_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00aa58_unknown.asm"
%if ($-$$) != 0xAE76
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00ae76_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00ae76_unknown.asm"
%if ($-$$) != 0xAEA6
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00aea6_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00aea6_unknown.asm"
%if ($-$$) != 0xAEFC
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00aefc_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00aefc_unknown.asm"
%if ($-$$) != 0xAF26
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00af26_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00af26_unknown.asm"
%if ($-$$) != 0xBADC
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00badc_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00badc_unknown.asm"
%if ($-$$) != 0xBAFE
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00bafe_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00bafe_unknown.asm"
%if ($-$$) != 0xBBAE
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00bbae_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00bbae_unknown.asm"
%if ($-$$) != 0xBBF2
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00bbf2_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00bbf2_unknown.asm"
%if ($-$$) != 0xBBF4
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00bbf4_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00bbf4_unknown.asm"
%if ($-$$) != 0xC13A
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00c13a_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00c13a_unknown.asm"
%if ($-$$) != 0xC6D4
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00c6d4_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00c6d4_unknown.asm"
%if ($-$$) != 0xC8D0
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00c8d0_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00c8d0_unknown.asm"
%if ($-$$) != 0xC8F0
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00c8f0_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00c8f0_unknown.asm"
%if ($-$$) != 0xC946
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00c946_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00c946_unknown.asm"
%if ($-$$) != 0xC996
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00c996_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00c996_unknown.asm"
%if ($-$$) != 0xC9B6
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00c9b6_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00c9b6_unknown.asm"
%if ($-$$) != 0xC9F8
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00c9f8_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00c9f8_unknown.asm"
%if ($-$$) != 0xCA14
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00ca14_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00ca14_unknown.asm"
%if ($-$$) != 0xCA3A
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00ca3a_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00ca3a_unknown.asm"
%if ($-$$) != 0xCA4E
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00ca4e_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00ca4e_unknown.asm"
%if ($-$$) != 0xCA7E
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00ca7e_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00ca7e_unknown.asm"
%if ($-$$) != 0xCAD4
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00cad4_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00cad4_unknown.asm"
%if ($-$$) != 0xCB1E
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00cb1e_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00cb1e_unknown.asm"
%if ($-$$) != 0xCB6A
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00cb6a_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00cb6a_unknown.asm"
%if ($-$$) != 0xCBB6
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00cbb6_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00cbb6_unknown.asm"
%if ($-$$) != 0xCBD0
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00cbd0_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00cbd0_unknown.asm"
%if ($-$$) != 0xCBFE
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00cbfe_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00cbfe_unknown.asm"
%if ($-$$) != 0xCD50
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00cd50_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00cd50_unknown.asm"
%if ($-$$) != 0xCE52
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00ce52_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00ce52_unknown.asm"
%if ($-$$) != 0xCE70
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00ce70_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00ce70_unknown.asm"
%if ($-$$) != 0xCE8C
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00ce8c_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00ce8c_unknown.asm"
%if ($-$$) != 0xCEAA
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00ceaa_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00ceaa_unknown.asm"
%if ($-$$) != 0xCEC6
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00cec6_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00cec6_unknown.asm"
%if ($-$$) != 0xCEF8
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00cef8_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00cef8_unknown.asm"
%if ($-$$) != 0xCF3C
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00cf3c_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00cf3c_unknown.asm"
%if ($-$$) != 0xCFBE
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00cfbe_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00cfbe_unknown.asm"
%if ($-$$) != 0xCFF8
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00cff8_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00cff8_unknown.asm"
%if ($-$$) != 0xD058
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00d058_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00d058_unknown.asm"
%if ($-$$) != 0xD084
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00d084_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00d084_unknown.asm"
%if ($-$$) != 0xD08C
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00d08c_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00d08c_unknown.asm"
%if ($-$$) != 0xD1AA
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00d1aa_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00d1aa_unknown.asm"
%if ($-$$) != 0xD1CA
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00d1ca_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00d1ca_unknown.asm"
%if ($-$$) != 0xD25C
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00d25c_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00d25c_unknown.asm"
%if ($-$$) != 0xD296
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00d296_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00d296_unknown.asm"
%if ($-$$) != 0xD2D0
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00d2d0_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00d2d0_unknown.asm"
%if ($-$$) != 0xD2DA
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00d2da_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00d2da_unknown.asm"
%if ($-$$) != 0xD2E4
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00d2e4_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00d2e4_unknown.asm"
%if ($-$$) != 0xD322
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00d322_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00d322_unknown.asm"
%if ($-$$) != 0xD358
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00d358_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00d358_unknown.asm"
%if ($-$$) != 0xD4A2
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00d4a2_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00d4a2_unknown.asm"
%if ($-$$) != 0xD656
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00d656_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00d656_unknown.asm"
%if ($-$$) != 0xD6EE
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00d6ee_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00d6ee_unknown.asm"
%if ($-$$) != 0xD7C8
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00d7c8_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00d7c8_unknown.asm"
%if ($-$$) != 0xD81A
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00d81a_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00d81a_unknown.asm"
%if ($-$$) != 0xD858
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00d858_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00d858_unknown.asm"
%if ($-$$) != 0xD86A
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00d86a_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00d86a_unknown.asm"
%if ($-$$) != 0xD87E
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00d87e_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00d87e_unknown.asm"
%if ($-$$) != 0xD902
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00d902_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00d902_unknown.asm"
%if ($-$$) != 0xD98A
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00d98a_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00d98a_unknown.asm"
%if ($-$$) != 0xDA1A
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00da1a_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00da1a_unknown.asm"
%if ($-$$) != 0xDAD2
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00dad2_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00dad2_unknown.asm"
%if ($-$$) != 0xDAF0
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00daf0_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00daf0_unknown.asm"
%if ($-$$) != 0xDB2A
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00db2a_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00db2a_unknown.asm"
%if ($-$$) != 0xDB80
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00db80_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00db80_unknown.asm"
%if ($-$$) != 0xDBCE
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00dbce_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00dbce_unknown.asm"
%if ($-$$) != 0xDC4C
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00dc4c_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00dc4c_unknown.asm"
%if ($-$$) != 0xDC62
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00dc62_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00dc62_unknown.asm"
%if ($-$$) != 0xDCA2
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00dca2_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00dca2_unknown.asm"
%if ($-$$) != 0xDCBE
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00dcbe_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00dcbe_unknown.asm"
%if ($-$$) != 0xDD38
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00dd38_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00dd38_unknown.asm"
%if ($-$$) != 0xDD6A
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00dd6a_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00dd6a_unknown.asm"
%if ($-$$) != 0xDE42
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00de42_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00de42_unknown.asm"
%if ($-$$) != 0xDE86
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00de86_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00de86_unknown.asm"
%if ($-$$) != 0xDEA4
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00dea4_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00dea4_unknown.asm"
%if ($-$$) != 0xDFC4
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00dfc4_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00dfc4_unknown.asm"
%if ($-$$) != 0xE0A8
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00e0a8_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00e0a8_unknown.asm"
%if ($-$$) != 0xE106
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00e106_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00e106_unknown.asm"
%if ($-$$) != 0xE184
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00e184_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00e184_unknown.asm"
%if ($-$$) != 0xE1A6
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00e1a6_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00e1a6_unknown.asm"
%if ($-$$) != 0xE1C0
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00e1c0_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00e1c0_unknown.asm"
%if ($-$$) != 0xE1E2
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00e1e2_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00e1e2_unknown.asm"
%if ($-$$) != 0xE1F2
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00e1f2_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00e1f2_unknown.asm"
%if ($-$$) != 0xE222
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00e222_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00e222_unknown.asm"
%if ($-$$) != 0xE300
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00e300_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00e300_unknown.asm"
%if ($-$$) != 0xE364
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00e364_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00e364_unknown.asm"
%if ($-$$) != 0xE392
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00e392_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00e392_unknown.asm"
%if ($-$$) != 0xE3B2
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00e3b2_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00e3b2_unknown.asm"
%if ($-$$) != 0xE486
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00e486_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00e486_unknown.asm"
%if ($-$$) != 0xE4E6
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00e4e6_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00e4e6_unknown.asm"
%if ($-$$) != 0xE522
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00e522_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00e522_unknown.asm"
%if ($-$$) != 0xE548
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00e548_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00e548_unknown.asm"
%if ($-$$) != 0xE568
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00e568_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00e568_unknown.asm"
%if ($-$$) != 0xE5A0
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00e5a0_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00e5a0_unknown.asm"
%if ($-$$) != 0xE5D2
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00e5d2_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00e5d2_unknown.asm"
%if ($-$$) != 0xE616
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00e616_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00e616_unknown.asm"
%if ($-$$) != 0xE64C
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00e64c_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00e64c_unknown.asm"
%if ($-$$) != 0xE688
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00e688_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00e688_unknown.asm"
%if ($-$$) != 0xE6A6
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00e6a6_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00e6a6_unknown.asm"
%if ($-$$) != 0xE70C
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00e70c_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00e70c_unknown.asm"
%if ($-$$) != 0xE856
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00e856_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00e856_unknown.asm"
%if ($-$$) != 0xE8B0
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00e8b0_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00e8b0_unknown.asm"
%if ($-$$) != 0xE8C0
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00e8c0_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00e8c0_unknown.asm"
%if ($-$$) != 0xE8D0
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00e8d0_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00e8d0_unknown.asm"
%if ($-$$) != 0xE908
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00e908_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00e908_unknown.asm"
%if ($-$$) != 0xE948
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00e948_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00e948_unknown.asm"
%if ($-$$) != 0xE952
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00e952_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00e952_unknown.asm"
%if ($-$$) != 0xEBA6
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00eba6_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00eba6_unknown.asm"
%if ($-$$) != 0xEC4E
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00ec4e_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00ec4e_unknown.asm"
%if ($-$$) != 0xED32
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00ed32_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00ed32_unknown.asm"
%if ($-$$) != 0xED9A
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00ed9a_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00ed9a_unknown.asm"
%if ($-$$) != 0xEDBA
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00edba_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00edba_unknown.asm"
%if ($-$$) != 0xEE22
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00ee22_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00ee22_unknown.asm"
%if ($-$$) != 0xEEB4
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00eeb4_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00eeb4_unknown.asm"
%if ($-$$) != 0xEEC2
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00eec2_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00eec2_unknown.asm"
%if ($-$$) != 0xF024
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00f024_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00f024_unknown.asm"
%if ($-$$) != 0xF0C2
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00f0c2_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00f0c2_unknown.asm"
%if ($-$$) != 0xF1DE
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00f1de_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00f1de_unknown.asm"
%if ($-$$) != 0xF278
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00f278_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00f278_unknown.asm"
%if ($-$$) != 0xF294
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00f294_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00f294_unknown.asm"
%if ($-$$) != 0xF29A
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00f29a_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00f29a_unknown.asm"
%if ($-$$) != 0xF2A6
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00f2a6_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00f2a6_unknown.asm"
%if ($-$$) != 0xF2C2
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00f2c2_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00f2c2_unknown.asm"
%if ($-$$) != 0xF2E2
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00f2e2_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00f2e2_unknown.asm"
%if ($-$$) != 0xF30C
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00f30c_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00f30c_unknown.asm"
%if ($-$$) != 0xF35C
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00f35c_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00f35c_unknown.asm"
%if ($-$$) != 0xF3CA
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00f3ca_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00f3ca_unknown.asm"
%if ($-$$) != 0xF418
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00f418_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00f418_unknown.asm"
%if ($-$$) != 0xF480
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00f480_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00f480_unknown.asm"
%if ($-$$) != 0xF4B8
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00f4b8_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00f4b8_unknown.asm"
%if ($-$$) != 0xF4DE
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00f4de_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00f4de_unknown.asm"
%if ($-$$) != 0xF560
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00f560_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00f560_unknown.asm"
%if ($-$$) != 0xF566
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00f566_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00f566_unknown.asm"
%if ($-$$) != 0xF576
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00f576_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00f576_unknown.asm"
%if ($-$$) != 0xF57A
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00f57a_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00f57a_unknown.asm"
%if ($-$$) != 0xF598
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00f598_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00f598_unknown.asm"
%if ($-$$) != 0xF5A0
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00f5a0_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00f5a0_unknown.asm"
%if ($-$$) != 0xF6D0
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00f6d0_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00f6d0_unknown.asm"
%if ($-$$) != 0xF6EA
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00f6ea_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00f6ea_unknown.asm"
%if ($-$$) != 0xF722
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00f722_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00f722_unknown.asm"
%if ($-$$) != 0xF726
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00f726_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00f726_unknown.asm"
%if ($-$$) != 0xF746
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00f746_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00f746_unknown.asm"
%if ($-$$) != 0xF74E
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00f74e_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00f74e_unknown.asm"
%if ($-$$) != 0xF75A
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00f75a_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00f75a_unknown.asm"
%if ($-$$) != 0xF79C
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00f79c_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00f79c_unknown.asm"
%if ($-$$) != 0xF7B8
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00f7b8_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00f7b8_unknown.asm"
%if ($-$$) != 0xF7CC
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00f7cc_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00f7cc_unknown.asm"
%if ($-$$) != 0xF7EE
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00f7ee_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00f7ee_unknown.asm"
%if ($-$$) != 0xF7FC
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00f7fc_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00f7fc_unknown.asm"
%if ($-$$) != 0xF9EA
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00f9ea_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00f9ea_unknown.asm"
%if ($-$$) != 0xFA3C
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00fa3c_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00fa3c_unknown.asm"
%if ($-$$) != 0xFB2C
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00fb2c_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00fb2c_unknown.asm"
%if ($-$$) != 0xFB88
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00fb88_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00fb88_unknown.asm"
%if ($-$$) != 0xFCE8
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00fce8_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00fce8_unknown.asm"
%if ($-$$) != 0xFD7A
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00fd7a_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00fd7a_unknown.asm"
%if ($-$$) != 0xFE4C
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00fe4c_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00fe4c_unknown.asm"
%if ($-$$) != 0xFE80
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00fe80_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00fe80_unknown.asm"
%if ($-$$) != 0xFF18
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00ff18_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00ff18_unknown.asm"
%if ($-$$) != 0xFFEE
%error "Incorrect placement: src/functions/unknown/cdi_nodv_00ffee_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_00ffee_unknown.asm"
%if ($-$$) != 0x1001A
%error "Incorrect placement: src/functions/unknown/cdi_nodv_01001a_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_01001a_unknown.asm"
%if ($-$$) != 0x1009E
%error "Incorrect placement: src/functions/unknown/cdi_nodv_01009e_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_01009e_unknown.asm"
%if ($-$$) != 0x100CE
%error "Incorrect placement: src/functions/unknown/cdi_nodv_0100ce_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_0100ce_unknown.asm"
%if ($-$$) != 0x101A4
%error "Incorrect placement: src/functions/unknown/cdi_nodv_0101a4_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_0101a4_unknown.asm"
%if ($-$$) != 0x10222
%error "Incorrect placement: src/functions/unknown/cdi_nodv_010222_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_010222_unknown.asm"
%if ($-$$) != 0x1033C
%error "Incorrect placement: src/functions/unknown/cdi_nodv_01033c_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_01033c_unknown.asm"
%if ($-$$) != 0x103CC
%error "Incorrect placement: src/functions/unknown/cdi_nodv_0103cc_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_0103cc_unknown.asm"
%if ($-$$) != 0x103FA
%error "Incorrect placement: src/functions/unknown/cdi_nodv_0103fa_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_0103fa_unknown.asm"
%if ($-$$) != 0x10444
%error "Incorrect placement: src/functions/unknown/cdi_nodv_010444_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_010444_unknown.asm"
%if ($-$$) != 0x10488
%error "Incorrect placement: src/functions/unknown/cdi_nodv_010488_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_010488_unknown.asm"
%if ($-$$) != 0x104E4
%error "Incorrect placement: src/functions/unknown/cdi_nodv_0104e4_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_0104e4_unknown.asm"
%if ($-$$) != 0x104EA
%error "Incorrect placement: src/functions/unknown/cdi_nodv_0104ea_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_0104ea_unknown.asm"
%if ($-$$) != 0x1056A
%error "Incorrect placement: src/functions/unknown/cdi_nodv_01056a_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_01056a_unknown.asm"
%if ($-$$) != 0x1059E
%error "Incorrect placement: src/functions/unknown/cdi_nodv_01059e_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_01059e_unknown.asm"
%if ($-$$) != 0x105EA
%error "Incorrect placement: src/functions/unknown/cdi_nodv_0105ea_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_0105ea_unknown.asm"
%if ($-$$) != 0x1060A
%error "Incorrect placement: src/functions/unknown/cdi_nodv_01060a_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_01060a_unknown.asm"
%if ($-$$) != 0x1062A
%error "Incorrect placement: src/functions/unknown/cdi_nodv_01062a_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_01062a_unknown.asm"
%if ($-$$) != 0x1064C
%error "Incorrect placement: src/functions/unknown/cdi_nodv_01064c_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_01064c_unknown.asm"
%if ($-$$) != 0x1070E
%error "Incorrect placement: src/functions/unknown/cdi_nodv_01070e_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_01070e_unknown.asm"
%if ($-$$) != 0x1072C
%error "Incorrect placement: src/functions/unknown/cdi_nodv_01072c_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_01072c_unknown.asm"
%if ($-$$) != 0x10766
%error "Incorrect placement: src/functions/unknown/cdi_nodv_010766_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_010766_unknown.asm"
%if ($-$$) != 0x1078A
%error "Incorrect placement: src/functions/unknown/cdi_nodv_01078a_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_01078a_unknown.asm"
%if ($-$$) != 0x107A6
%error "Incorrect placement: src/functions/unknown/cdi_nodv_0107a6_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_0107a6_unknown.asm"
%if ($-$$) != 0x107D6
%error "Incorrect placement: src/functions/unknown/cdi_nodv_0107d6_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_0107d6_unknown.asm"
%if ($-$$) != 0x107F8
%error "Incorrect placement: src/functions/unknown/cdi_nodv_0107f8_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_0107f8_unknown.asm"
%if ($-$$) != 0x1081A
%error "Incorrect placement: src/functions/unknown/cdi_nodv_01081a_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_01081a_unknown.asm"
%if ($-$$) != 0x1082E
%error "Incorrect placement: src/functions/unknown/cdi_nodv_01082e_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_01082e_unknown.asm"
%if ($-$$) != 0x1086E
%error "Incorrect placement: src/functions/unknown/cdi_nodv_01086e_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_01086e_unknown.asm"
%if ($-$$) != 0x10898
%error "Incorrect placement: src/functions/unknown/cdi_nodv_010898_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_010898_unknown.asm"
%if ($-$$) != 0x108A2
%error "Incorrect placement: src/functions/unknown/cdi_nodv_0108a2_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_0108a2_unknown.asm"
%if ($-$$) != 0x108AC
%error "Incorrect placement: src/functions/unknown/cdi_nodv_0108ac_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_0108ac_unknown.asm"
%if ($-$$) != 0x108D4
%error "Incorrect placement: src/functions/unknown/cdi_nodv_0108d4_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_0108d4_unknown.asm"
%if ($-$$) != 0x108F8
%error "Incorrect placement: src/functions/unknown/cdi_nodv_0108f8_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_0108f8_unknown.asm"
%if ($-$$) != 0x10926
%error "Incorrect placement: src/functions/unknown/cdi_nodv_010926_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_010926_unknown.asm"
%if ($-$$) != 0x1097A
%error "Incorrect placement: src/functions/unknown/cdi_nodv_01097a_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_01097a_unknown.asm"
%if ($-$$) != 0x109AE
%error "Incorrect placement: src/functions/unknown/cdi_nodv_0109ae_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_0109ae_unknown.asm"
%if ($-$$) != 0x109CE
%error "Incorrect placement: src/functions/unknown/cdi_nodv_0109ce_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_0109ce_unknown.asm"
%if ($-$$) != 0x10A12
%error "Incorrect placement: src/functions/unknown/cdi_nodv_010a12_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_010a12_unknown.asm"
%if ($-$$) != 0x10A32
%error "Incorrect placement: src/functions/unknown/cdi_nodv_010a32_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_010a32_unknown.asm"
%if ($-$$) != 0x10A42
%error "Incorrect placement: src/functions/unknown/cdi_nodv_010a42_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_010a42_unknown.asm"
%if ($-$$) != 0x10A56
%error "Incorrect placement: src/functions/unknown/cdi_nodv_010a56_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_010a56_unknown.asm"
%if ($-$$) != 0x10B0A
%error "Incorrect placement: src/functions/unknown/cdi_nodv_010b0a_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_010b0a_unknown.asm"
%if ($-$$) != 0x10B7C
%error "Incorrect placement: src/functions/unknown/cdi_nodv_010b7c_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_010b7c_unknown.asm"
%if ($-$$) != 0x10BF8
%error "Incorrect placement: src/functions/unknown/cdi_nodv_010bf8_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_010bf8_unknown.asm"
%if ($-$$) != 0x10C2E
%error "Incorrect placement: src/functions/unknown/cdi_nodv_010c2e_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_010c2e_unknown.asm"
%if ($-$$) != 0x10C62
%error "Incorrect placement: src/functions/unknown/cdi_nodv_010c62_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_010c62_unknown.asm"
%if ($-$$) != 0x10CAC
%error "Incorrect placement: src/functions/unknown/cdi_nodv_010cac_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_010cac_unknown.asm"
%if ($-$$) != 0x10E40
%error "Incorrect placement: src/functions/unknown/cdi_nodv_010e40_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_010e40_unknown.asm"
%if ($-$$) != 0x10EBE
%error "Incorrect placement: src/functions/unknown/cdi_nodv_010ebe_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_010ebe_unknown.asm"
%if ($-$$) != 0x10EFE
%error "Incorrect placement: src/functions/unknown/cdi_nodv_010efe_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_010efe_unknown.asm"
%if ($-$$) != 0x10F24
%error "Incorrect placement: src/functions/unknown/cdi_nodv_010f24_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_010f24_unknown.asm"
%if ($-$$) != 0x10F4C
%error "Incorrect placement: src/functions/unknown/cdi_nodv_010f4c_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_010f4c_unknown.asm"
%if ($-$$) != 0x10F64
%error "Incorrect placement: src/functions/unknown/cdi_nodv_010f64_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_010f64_unknown.asm"
%if ($-$$) != 0x10F8E
%error "Incorrect placement: src/functions/unknown/cdi_nodv_010f8e_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_010f8e_unknown.asm"
%if ($-$$) != 0x10FB4
%error "Incorrect placement: src/functions/unknown/cdi_nodv_010fb4_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_010fb4_unknown.asm"
%if ($-$$) != 0x10FDA
%error "Incorrect placement: src/functions/unknown/cdi_nodv_010fda_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_010fda_unknown.asm"
%if ($-$$) != 0x10FF6
%error "Incorrect placement: src/functions/unknown/cdi_nodv_010ff6_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_010ff6_unknown.asm"
%if ($-$$) != 0x11022
%error "Incorrect placement: src/functions/unknown/cdi_nodv_011022_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_011022_unknown.asm"
%if ($-$$) != 0x1105A
%error "Incorrect placement: src/functions/unknown/cdi_nodv_01105a_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_01105a_unknown.asm"
%if ($-$$) != 0x11082
%error "Incorrect placement: src/functions/unknown/cdi_nodv_011082_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_011082_unknown.asm"
%if ($-$$) != 0x110B2
%error "Incorrect placement: src/functions/unknown/cdi_nodv_0110b2_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_0110b2_unknown.asm"
%if ($-$$) != 0x110D6
%error "Incorrect placement: src/functions/unknown/cdi_nodv_0110d6_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_0110d6_unknown.asm"
%if ($-$$) != 0x1111A
%error "Incorrect placement: src/functions/unknown/cdi_nodv_01111a_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_01111a_unknown.asm"
%if ($-$$) != 0x11154
%error "Incorrect placement: src/functions/unknown/cdi_nodv_011154_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_011154_unknown.asm"
%if ($-$$) != 0x111A2
%error "Incorrect placement: src/functions/unknown/cdi_nodv_0111a2_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_0111a2_unknown.asm"
%if ($-$$) != 0x111EC
%error "Incorrect placement: src/functions/unknown/cdi_nodv_0111ec_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_0111ec_unknown.asm"
%if ($-$$) != 0x11236
%error "Incorrect placement: src/functions/unknown/cdi_nodv_011236_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_011236_unknown.asm"
%if ($-$$) != 0x1127A
%error "Incorrect placement: src/functions/unknown/cdi_nodv_01127a_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_01127a_unknown.asm"
%if ($-$$) != 0x11286
%error "Incorrect placement: src/functions/unknown/cdi_nodv_011286_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_011286_unknown.asm"
%if ($-$$) != 0x112A8
%error "Incorrect placement: src/functions/unknown/cdi_nodv_0112a8_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_0112a8_unknown.asm"
%if ($-$$) != 0x112C2
%error "Incorrect placement: src/functions/unknown/cdi_nodv_0112c2_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_0112c2_unknown.asm"
%if ($-$$) != 0x11318
%error "Incorrect placement: src/functions/unknown/cdi_nodv_011318_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_011318_unknown.asm"
%if ($-$$) != 0x113D0
%error "Incorrect placement: src/functions/unknown/cdi_nodv_0113d0_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_0113d0_unknown.asm"
%if ($-$$) != 0x11402
%error "Incorrect placement: src/functions/unknown/cdi_nodv_011402_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_011402_unknown.asm"
%if ($-$$) != 0x11408
%error "Incorrect placement: src/functions/unknown/cdi_nodv_011408_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_011408_unknown.asm"
%if ($-$$) != 0x1145A
%error "Incorrect placement: src/functions/unknown/cdi_nodv_01145a_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_01145a_unknown.asm"
%if ($-$$) != 0x11650
%error "Incorrect placement: src/functions/unknown/cdi_nodv_011650_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_011650_unknown.asm"
%if ($-$$) != 0x1166E
%error "Incorrect placement: src/functions/unknown/cdi_nodv_01166e_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_01166e_unknown.asm"
%if ($-$$) != 0x1168C
%error "Incorrect placement: src/functions/unknown/cdi_nodv_01168c_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_01168c_unknown.asm"
%if ($-$$) != 0x1171A
%error "Incorrect placement: src/functions/unknown/cdi_nodv_01171a_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_01171a_unknown.asm"
%if ($-$$) != 0x11766
%error "Incorrect placement: src/functions/unknown/cdi_nodv_011766_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_011766_unknown.asm"
%if ($-$$) != 0x11884
%error "Incorrect placement: src/functions/unknown/cdi_nodv_011884_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_011884_unknown.asm"
%if ($-$$) != 0x11898
%error "Incorrect placement: src/functions/unknown/cdi_nodv_011898_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_011898_unknown.asm"
%if ($-$$) != 0x118A6
%error "Incorrect placement: src/functions/unknown/cdi_nodv_0118a6_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_0118a6_unknown.asm"
%if ($-$$) != 0x118AE
%error "Incorrect placement: src/functions/unknown/cdi_nodv_0118ae_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_0118ae_unknown.asm"
%if ($-$$) != 0x118C6
%error "Incorrect placement: src/functions/unknown/cdi_nodv_0118c6_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_0118c6_unknown.asm"
%if ($-$$) != 0x118D2
%error "Incorrect placement: src/functions/unknown/cdi_nodv_0118d2_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_0118d2_unknown.asm"
%if ($-$$) != 0x118FE
%error "Incorrect placement: src/functions/unknown/cdi_nodv_0118fe_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_0118fe_unknown.asm"
%if ($-$$) != 0x11A42
%error "Incorrect placement: src/functions/unknown/cdi_nodv_011a42_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_011a42_unknown.asm"
%if ($-$$) != 0x11AEA
%error "Incorrect placement: src/functions/unknown/cdi_nodv_011aea_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_011aea_unknown.asm"
%if ($-$$) != 0x11B14
%error "Incorrect placement: src/functions/unknown/cdi_nodv_011b14_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_011b14_unknown.asm"
%if ($-$$) != 0x11B2A
%error "Incorrect placement: src/functions/unknown/cdi_nodv_011b2a_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_011b2a_unknown.asm"
%if ($-$$) != 0x11B44
%error "Incorrect placement: src/functions/unknown/cdi_nodv_011b44_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_011b44_unknown.asm"
%if ($-$$) != 0x11B4C
%error "Incorrect placement: src/functions/unknown/cdi_nodv_011b4c_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_011b4c_unknown.asm"
%if ($-$$) != 0x11CA0
%error "Incorrect placement: src/functions/unknown/cdi_nodv_011ca0_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_011ca0_unknown.asm"
%if ($-$$) != 0x11D16
%error "Incorrect placement: src/functions/unknown/cdi_nodv_011d16_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_011d16_unknown.asm"
%if ($-$$) != 0x11D5C
%error "Incorrect placement: src/functions/unknown/cdi_nodv_011d5c_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_011d5c_unknown.asm"
%if ($-$$) != 0x11D7A
%error "Incorrect placement: src/functions/unknown/cdi_nodv_011d7a_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_011d7a_unknown.asm"
%if ($-$$) != 0x11E52
%error "Incorrect placement: src/functions/unknown/cdi_nodv_011e52_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_011e52_unknown.asm"
%if ($-$$) != 0x11E7C
%error "Incorrect placement: src/functions/unknown/cdi_nodv_011e7c_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_011e7c_unknown.asm"
%if ($-$$) != 0x11EE4
%error "Incorrect placement: src/functions/unknown/cdi_nodv_011ee4_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_011ee4_unknown.asm"
%if ($-$$) != 0x1201C
%error "Incorrect placement: src/functions/unknown/cdi_nodv_01201c_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_01201c_unknown.asm"
%if ($-$$) != 0x1201E
%error "Incorrect placement: src/functions/unknown/cdi_nodv_01201e_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_01201e_unknown.asm"
%if ($-$$) != 0x12070
%error "Incorrect placement: src/functions/unknown/cdi_nodv_012070_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_012070_unknown.asm"
%if ($-$$) != 0x121DC
%error "Incorrect placement: src/functions/unknown/cdi_nodv_0121dc_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_0121dc_unknown.asm"
%if ($-$$) != 0x12546
%error "Incorrect placement: src/functions/unknown/cdi_nodv_012546_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_012546_unknown.asm"
%if ($-$$) != 0x12586
%error "Incorrect placement: src/functions/unknown/cdi_nodv_012586_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_012586_unknown.asm"
%if ($-$$) != 0x12590
%error "Incorrect placement: src/functions/unknown/cdi_nodv_012590_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_012590_unknown.asm"
%if ($-$$) != 0x125B6
%error "Incorrect placement: src/functions/unknown/cdi_nodv_0125b6_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_0125b6_unknown.asm"
%if ($-$$) != 0x12672
%error "Incorrect placement: src/functions/unknown/cdi_nodv_012672_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_012672_unknown.asm"
%if ($-$$) != 0x1272A
%error "Incorrect placement: src/functions/unknown/cdi_nodv_01272a_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_01272a_unknown.asm"
%if ($-$$) != 0x12736
%error "Incorrect placement: src/functions/unknown/cdi_nodv_012736_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_012736_unknown.asm"
%if ($-$$) != 0x12738
%error "Incorrect placement: src/functions/unknown/cdi_nodv_012738_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_012738_unknown.asm"
%if ($-$$) != 0x12764
%error "Incorrect placement: src/functions/unknown/cdi_nodv_012764_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_012764_unknown.asm"
%if ($-$$) != 0x1279A
%error "Incorrect placement: src/functions/unknown/cdi_nodv_01279a_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_01279a_unknown.asm"
%if ($-$$) != 0x127F4
%error "Incorrect placement: src/functions/unknown/cdi_nodv_0127f4_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_0127f4_unknown.asm"
%if ($-$$) != 0x12CD0
%error "Incorrect placement: src/functions/unknown/cdi_nodv_012cd0_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_012cd0_unknown.asm"
%if ($-$$) != 0x12D90
%error "Incorrect placement: src/functions/unknown/cdi_nodv_012d90_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_012d90_unknown.asm"
%if ($-$$) != 0x12DB2
%error "Incorrect placement: src/functions/unknown/cdi_nodv_012db2_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_012db2_unknown.asm"
%if ($-$$) != 0x12DE0
%error "Incorrect placement: src/functions/unknown/cdi_nodv_012de0_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_012de0_unknown.asm"
%if ($-$$) != 0x12E7A
%error "Incorrect placement: src/functions/unknown/cdi_nodv_012e7a_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_012e7a_unknown.asm"
%if ($-$$) != 0x12F08
%error "Incorrect placement: src/functions/unknown/cdi_nodv_012f08_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_012f08_unknown.asm"
%if ($-$$) != 0x12F62
%error "Incorrect placement: src/functions/unknown/cdi_nodv_012f62_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_012f62_unknown.asm"
%if ($-$$) != 0x12F66
%error "Incorrect placement: src/functions/unknown/cdi_nodv_012f66_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_012f66_unknown.asm"
%if ($-$$) != 0x12FEE
%error "Incorrect placement: src/functions/unknown/cdi_nodv_012fee_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_012fee_unknown.asm"
%if ($-$$) != 0x13058
%error "Incorrect placement: src/functions/unknown/cdi_nodv_013058_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_013058_unknown.asm"
%if ($-$$) != 0x1306A
%error "Incorrect placement: src/functions/unknown/cdi_nodv_01306a_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_01306a_unknown.asm"
%if ($-$$) != 0x131B4
%error "Incorrect placement: src/functions/unknown/cdi_nodv_0131b4_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_0131b4_unknown.asm"
%if ($-$$) != 0x13214
%error "Incorrect placement: src/functions/unknown/cdi_nodv_013214_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_013214_unknown.asm"
%if ($-$$) != 0x13360
%error "Incorrect placement: src/functions/unknown/cdi_nodv_013360_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_013360_unknown.asm"
%if ($-$$) != 0x1336A
%error "Incorrect placement: src/functions/unknown/cdi_nodv_01336a_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_01336a_unknown.asm"
%if ($-$$) != 0x1337E
%error "Incorrect placement: src/functions/unknown/cdi_nodv_01337e_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_01337e_unknown.asm"
%if ($-$$) != 0x133A8
%error "Incorrect placement: src/functions/unknown/cdi_nodv_0133a8_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_0133a8_unknown.asm"
%if ($-$$) != 0x133D0
%error "Incorrect placement: src/functions/unknown/cdi_nodv_0133d0_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_0133d0_unknown.asm"
%if ($-$$) != 0x1341A
%error "Incorrect placement: src/functions/unknown/cdi_nodv_01341a_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_01341a_unknown.asm"
%if ($-$$) != 0x136F8
%error "Incorrect placement: src/functions/unknown/cdi_nodv_0136f8_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_0136f8_unknown.asm"
%if ($-$$) != 0x13754
%error "Incorrect placement: src/functions/unknown/cdi_nodv_013754_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_013754_unknown.asm"
%if ($-$$) != 0x138A2
%error "Incorrect placement: src/functions/unknown/cdi_nodv_0138a2_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_0138a2_unknown.asm"
%if ($-$$) != 0x138BE
%error "Incorrect placement: src/functions/unknown/cdi_nodv_0138be_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_0138be_unknown.asm"
%if ($-$$) != 0x1395A
%error "Incorrect placement: src/functions/unknown/cdi_nodv_01395a_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_01395a_unknown.asm"
%if ($-$$) != 0x13992
%error "Incorrect placement: src/functions/unknown/cdi_nodv_013992_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_013992_unknown.asm"
%if ($-$$) != 0x13A1C
%error "Incorrect placement: src/functions/unknown/cdi_nodv_013a1c_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_013a1c_unknown.asm"
%if ($-$$) != 0x13A22
%error "Incorrect placement: src/functions/unknown/cdi_nodv_013a22_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_013a22_unknown.asm"
%if ($-$$) != 0x13B8C
%error "Incorrect placement: src/functions/unknown/cdi_nodv_013b8c_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_013b8c_unknown.asm"
%if ($-$$) != 0x13BE0
%error "Incorrect placement: src/functions/unknown/cdi_nodv_013be0_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_013be0_unknown.asm"
%if ($-$$) != 0x13C16
%error "Incorrect placement: src/functions/unknown/cdi_nodv_013c16_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_013c16_unknown.asm"
%if ($-$$) != 0x13C48
%error "Incorrect placement: src/functions/unknown/cdi_nodv_013c48_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_013c48_unknown.asm"
%if ($-$$) != 0x13C56
%error "Incorrect placement: src/functions/unknown/cdi_nodv_013c56_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_013c56_unknown.asm"
%if ($-$$) != 0x13CB2
%error "Incorrect placement: src/functions/unknown/cdi_nodv_013cb2_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_013cb2_unknown.asm"
%if ($-$$) != 0x142E2
%error "Incorrect placement: src/functions/unknown/cdi_nodv_0142e2_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_0142e2_unknown.asm"
%if ($-$$) != 0x143C8
%error "Incorrect placement: src/functions/unknown/cdi_nodv_0143c8_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_0143c8_unknown.asm"
%if ($-$$) != 0x145E2
%error "Incorrect placement: src/functions/unknown/cdi_nodv_0145e2_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_0145e2_unknown.asm"
%if ($-$$) != 0x14698
%error "Incorrect placement: src/functions/unknown/cdi_nodv_014698_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_014698_unknown.asm"
%if ($-$$) != 0x14722
%error "Incorrect placement: src/functions/unknown/cdi_nodv_014722_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_014722_unknown.asm"
%if ($-$$) != 0x1480C
%error "Incorrect placement: src/functions/unknown/cdi_nodv_01480c_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_01480c_unknown.asm"
%if ($-$$) != 0x148A0
%error "Incorrect placement: src/functions/unknown/cdi_nodv_0148a0_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_0148a0_unknown.asm"
%if ($-$$) != 0x14B0A
%error "Incorrect placement: src/functions/unknown/cdi_nodv_014b0a_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_014b0a_unknown.asm"
%if ($-$$) != 0x14B30
%error "Incorrect placement: src/functions/unknown/cdi_nodv_014b30_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_014b30_unknown.asm"
%if ($-$$) != 0x14CA4
%error "Incorrect placement: src/functions/unknown/cdi_nodv_014ca4_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_014ca4_unknown.asm"
%if ($-$$) != 0x14CBE
%error "Incorrect placement: src/functions/unknown/cdi_nodv_014cbe_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_014cbe_unknown.asm"
%if ($-$$) != 0x14CD2
%error "Incorrect placement: src/functions/unknown/cdi_nodv_014cd2_unknown.asm"
%endif
%include "src/functions/unknown/cdi_nodv_014cd2_unknown.asm"
%if ($-$$) != 0x14D56
%error "Incorrect placement: src/data/cdi_nodv_initialized_data.asm"
%endif
%include "src/data/cdi_nodv_initialized_data.asm"
%if ($-$$) != 0x14E76
%error "Incorrect placement: src/data/cdi_nodv_initialized_references.asm"
%endif
%include "src/data/cdi_nodv_initialized_references.asm"
%if ($-$$) != 0x14EDD
%error "Incorrect placement: src/data/cdi_nodv_crc.asm"
%endif
%include "src/data/cdi_nodv_crc.asm"
%if ($-$$) != 0x14EE0
%error "Incorrect placement: src/data/cdi_nodv_file_padding.asm"
%endif
%include "src/data/cdi_nodv_file_padding.asm"
%if ($-$$) != 86016
%error "Incorrect file size"
%endif
