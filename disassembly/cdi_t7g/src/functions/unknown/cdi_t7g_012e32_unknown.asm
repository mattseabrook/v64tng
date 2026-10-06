; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 012E32–013461, inclusive.
cdi_t7g_entry_012e32:
db 0xD2, 0x40 ; 012E32: provisional 68k add.w d0, d1
db 0x53, 0x41 ; 012E34: provisional 68k subq.w #$1, d1
db 0xD6, 0x42 ; 012E36: provisional 68k add.w d2, d3
db 0x53, 0x43 ; 012E38: provisional 68k subq.w #$1, d3
db 0xB4, 0x41 ; 012E3A: provisional 68k cmp.w d1, d2
db 0x6E, 0x1E ; 012E3C: provisional 68k bgt.b $12e5c
db 0xB0, 0x43 ; 012E3E: provisional 68k cmp.w d3, d0
db 0x6E, 0x1A ; 012E40: provisional 68k bgt.b $12e5c
db 0xB4, 0x40 ; 012E42: provisional 68k cmp.w d0, d2
db 0x6D, 0x04 ; 012E44: provisional 68k blt.b $12e4a
db 0x30, 0x02 ; 012E46: provisional 68k move.w d2, d0
db 0x60, 0x02 ; 012E48: provisional 68k bra.b $12e4c
db 0x34, 0x00 ; 012E4A: provisional 68k move.w d0, d2
db 0xB6, 0x41 ; 012E4C: provisional 68k cmp.w d1, d3
db 0x6E, 0x02 ; 012E4E: provisional 68k bgt.b $12e52
db 0x32, 0x03 ; 012E50: provisional 68k move.w d3, d1
db 0x92, 0x40 ; 012E52: provisional 68k sub.w d0, d1
db 0x52, 0x41 ; 012E54: provisional 68k addq.w #$1, d1
db 0x02, 0x3C, 0x00, 0x0E ; 012E56: provisional 68k andi.b #$e, ccr
db 0x4E, 0x75 ; 012E5A: provisional 68k rts 
db 0x00, 0x3C, 0x00, 0x01 ; 012E5C: provisional 68k ori.b #$1, ccr
db 0x4E, 0x75 ; 012E60: provisional 68k rts 
db 0x00, 0x00, 0x00, 0x00 ; 012E62: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012E66: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012E6A: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012E6E: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012E72: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012E76: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012E7A: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012E7E: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012E82: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012E86: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012E8A: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012E8E: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012E92: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012E96: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012E9A: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012E9E: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012EA2: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012EA6: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012EAA: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012EAE: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012EB2: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012EB6: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012EBA: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012EBE: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012EC2: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012EC6: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012ECA: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012ECE: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012ED2: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012ED6: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012EDA: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012EDE: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012EE2: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012EE6: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012EEA: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012EEE: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012EF2: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012EF6: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012EFA: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012EFE: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012F02: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012F06: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012F0A: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012F0E: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012F12: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012F16: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012F1A: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012F1E: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012F22: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012F26: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012F2A: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012F2E: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012F32: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012F36: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012F3A: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012F3E: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012F42: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012F46: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012F4A: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012F4E: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012F52: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012F56: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012F5A: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012F5E: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012F62: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 012F66: provisional 68k ori.b #$0, d0
db 0x01, 0x01 ; 012F6A: provisional 68k btst.l d0, d1
db 0x01, 0x01 ; 012F6C: provisional 68k btst.l d0, d1
db 0x01, 0x01 ; 012F6E: provisional 68k btst.l d0, d1
db 0x01, 0x01 ; 012F70: provisional 68k btst.l d0, d1
db 0x02, 0x02, 0x02, 0x02 ; 012F72: provisional 68k andi.b #$2, d2
db 0x02, 0x02, 0x02, 0x02 ; 012F76: provisional 68k andi.b #$2, d2
db 0x03, 0x03 ; 012F7A: provisional 68k btst.l d1, d3
db 0x03, 0x03 ; 012F7C: provisional 68k btst.l d1, d3
db 0x03, 0x03 ; 012F7E: provisional 68k btst.l d1, d3
db 0x03, 0x03 ; 012F80: provisional 68k btst.l d1, d3
db 0x04, 0x04, 0x04, 0x04 ; 012F82: provisional 68k subi.b #$4, d4
db 0x04, 0x04, 0x04, 0x04 ; 012F86: provisional 68k subi.b #$4, d4
db 0x05, 0x05 ; 012F8A: provisional 68k btst.l d2, d5
db 0x05, 0x05 ; 012F8C: provisional 68k btst.l d2, d5
db 0x05, 0x05 ; 012F8E: provisional 68k btst.l d2, d5
db 0x05, 0x05 ; 012F90: provisional 68k btst.l d2, d5
db 0x06, 0x06, 0x06, 0x06 ; 012F92: provisional 68k addi.b #$6, d6
db 0x06, 0x06, 0x06, 0x06 ; 012F96: provisional 68k addi.b #$6, d6
db 0x07, 0x07 ; 012F9A: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012F9C: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012F9E: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 012FA0: provisional 68k btst.l d3, d7
db 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08 ; file 012FA2
db 0x09, 0x09, 0x09, 0x09 ; 012FAA: provisional 68k movep.w $909(a1), d4
db 0x09, 0x09, 0x09, 0x09 ; 012FAE: provisional 68k movep.w $909(a1), d4
db 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A ; file 012FB2
db 0x0B, 0x0B, 0x0B, 0x0B ; 012FBA: provisional 68k movep.w $b0b(a3), d5
db 0x0B, 0x0B, 0x0B, 0x0B ; 012FBE: provisional 68k movep.w $b0b(a3), d5
db 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C ; file 012FC2
db 0x0D, 0x0D, 0x0D, 0x0D ; 012FCA: provisional 68k movep.w $d0d(a5), d6
db 0x0D, 0x0D, 0x0D, 0x0D ; 012FCE: provisional 68k movep.w $d0d(a5), d6
db 0x0E, 0x0E, 0x0E, 0x0E, 0x0E, 0x0E, 0x0E, 0x0E ; file 012FD2
db 0x0F, 0x0F, 0x0F, 0x0F ; 012FDA: provisional 68k movep.w $f0f(a7), d7
db 0x0F, 0x0F, 0x0F, 0x0F ; 012FDE: provisional 68k movep.w $f0f(a7), d7
db 0x10, 0x10 ; 012FE2: provisional 68k move.b (a0), d0
db 0x10, 0x10 ; 012FE4: provisional 68k move.b (a0), d0
db 0x10, 0x10 ; 012FE6: provisional 68k move.b (a0), d0
db 0x10, 0x10 ; 012FE8: provisional 68k move.b (a0), d0
db 0x11, 0x11 ; 012FEA: provisional 68k move.b (a1), -(a0)
db 0x11, 0x11 ; 012FEC: provisional 68k move.b (a1), -(a0)
db 0x11, 0x11 ; 012FEE: provisional 68k move.b (a1), -(a0)
db 0x11, 0x11 ; 012FF0: provisional 68k move.b (a1), -(a0)
db 0x12, 0x12 ; 012FF2: provisional 68k move.b (a2), d1
db 0x12, 0x12 ; 012FF4: provisional 68k move.b (a2), d1
db 0x12, 0x12 ; 012FF6: provisional 68k move.b (a2), d1
db 0x12, 0x12 ; 012FF8: provisional 68k move.b (a2), d1
db 0x13, 0x13 ; 012FFA: provisional 68k move.b (a3), -(a1)
db 0x13, 0x13 ; 012FFC: provisional 68k move.b (a3), -(a1)
db 0x13, 0x13 ; 012FFE: provisional 68k move.b (a3), -(a1)
db 0x13, 0x13 ; 013000: provisional 68k move.b (a3), -(a1)
db 0x14, 0x14 ; 013002: provisional 68k move.b (a4), d2
db 0x14, 0x14 ; 013004: provisional 68k move.b (a4), d2
db 0x14, 0x14 ; 013006: provisional 68k move.b (a4), d2
db 0x14, 0x14 ; 013008: provisional 68k move.b (a4), d2
db 0x15, 0x15 ; 01300A: provisional 68k move.b (a5), -(a2)
db 0x15, 0x15 ; 01300C: provisional 68k move.b (a5), -(a2)
db 0x15, 0x15 ; 01300E: provisional 68k move.b (a5), -(a2)
db 0x15, 0x15 ; 013010: provisional 68k move.b (a5), -(a2)
db 0x16, 0x16 ; 013012: provisional 68k move.b (a6), d3
db 0x16, 0x16 ; 013014: provisional 68k move.b (a6), d3
db 0x16, 0x16 ; 013016: provisional 68k move.b (a6), d3
db 0x16, 0x16 ; 013018: provisional 68k move.b (a6), d3
db 0x17, 0x17 ; 01301A: provisional 68k move.b (a7), -(a3)
db 0x17, 0x17 ; 01301C: provisional 68k move.b (a7), -(a3)
db 0x17, 0x17 ; 01301E: provisional 68k move.b (a7), -(a3)
db 0x17, 0x17 ; 013020: provisional 68k move.b (a7), -(a3)
db 0x18, 0x18 ; 013022: provisional 68k move.b (a0)+, d4
db 0x18, 0x18 ; 013024: provisional 68k move.b (a0)+, d4
db 0x18, 0x18 ; 013026: provisional 68k move.b (a0)+, d4
db 0x18, 0x18 ; 013028: provisional 68k move.b (a0)+, d4
db 0x19, 0x19 ; 01302A: provisional 68k move.b (a1)+, -(a4)
db 0x19, 0x19 ; 01302C: provisional 68k move.b (a1)+, -(a4)
db 0x19, 0x19 ; 01302E: provisional 68k move.b (a1)+, -(a4)
db 0x19, 0x19 ; 013030: provisional 68k move.b (a1)+, -(a4)
db 0x1A, 0x1A ; 013032: provisional 68k move.b (a2)+, d5
db 0x1A, 0x1A ; 013034: provisional 68k move.b (a2)+, d5
db 0x1A, 0x1A ; 013036: provisional 68k move.b (a2)+, d5
db 0x1A, 0x1A ; 013038: provisional 68k move.b (a2)+, d5
db 0x1B, 0x1B ; 01303A: provisional 68k move.b (a3)+, -(a5)
db 0x1B, 0x1B ; 01303C: provisional 68k move.b (a3)+, -(a5)
db 0x1B, 0x1B ; 01303E: provisional 68k move.b (a3)+, -(a5)
db 0x1B, 0x1B ; 013040: provisional 68k move.b (a3)+, -(a5)
db 0x1C, 0x1C ; 013042: provisional 68k move.b (a4)+, d6
db 0x1C, 0x1C ; 013044: provisional 68k move.b (a4)+, d6
db 0x1C, 0x1C ; 013046: provisional 68k move.b (a4)+, d6
db 0x1C, 0x1C ; 013048: provisional 68k move.b (a4)+, d6
db 0x1D, 0x1D ; 01304A: provisional 68k move.b (a5)+, -(a6)
db 0x1D, 0x1D ; 01304C: provisional 68k move.b (a5)+, -(a6)
db 0x1D, 0x1D ; 01304E: provisional 68k move.b (a5)+, -(a6)
db 0x1D, 0x1D ; 013050: provisional 68k move.b (a5)+, -(a6)
db 0x1E, 0x1E ; 013052: provisional 68k move.b (a6)+, d7
db 0x1E, 0x1E ; 013054: provisional 68k move.b (a6)+, d7
db 0x1E, 0x1E ; 013056: provisional 68k move.b (a6)+, d7
db 0x1E, 0x1E ; 013058: provisional 68k move.b (a6)+, d7
db 0x1F, 0x1F ; 01305A: provisional 68k move.b (a7)+, -(a7)
db 0x1F, 0x1F ; 01305C: provisional 68k move.b (a7)+, -(a7)
db 0x1F, 0x1F ; 01305E: provisional 68k move.b (a7)+, -(a7)
db 0x1F, 0x1F ; 013060: provisional 68k move.b (a7)+, -(a7)
db 0x00, 0x00, 0x00, 0x00 ; 013062: provisional 68k ori.b #$0, d0
db 0x01, 0x01 ; 013066: provisional 68k btst.l d0, d1
db 0x01, 0x01 ; 013068: provisional 68k btst.l d0, d1
db 0x02, 0x02, 0x02, 0x02 ; 01306A: provisional 68k andi.b #$2, d2
db 0x03, 0x03 ; 01306E: provisional 68k btst.l d1, d3
db 0x03, 0x03 ; 013070: provisional 68k btst.l d1, d3
db 0x04, 0x04, 0x04, 0x04 ; 013072: provisional 68k subi.b #$4, d4
db 0x05, 0x05 ; 013076: provisional 68k btst.l d2, d5
db 0x05, 0x05 ; 013078: provisional 68k btst.l d2, d5
db 0x06, 0x06, 0x06, 0x06 ; 01307A: provisional 68k addi.b #$6, d6
db 0x07, 0x07 ; 01307E: provisional 68k btst.l d3, d7
db 0x07, 0x07 ; 013080: provisional 68k btst.l d3, d7
db 0x08, 0x08, 0x08, 0x08 ; file 013082
db 0x09, 0x09, 0x09, 0x09 ; 013086: provisional 68k movep.w $909(a1), d4
db 0x0A, 0x0A, 0x0A, 0x0A ; file 01308A
db 0x0B, 0x0B, 0x0B, 0x0B ; 01308E: provisional 68k movep.w $b0b(a3), d5
db 0x0C, 0x0C, 0x0C, 0x0C ; file 013092
db 0x0D, 0x0D, 0x0D, 0x0D ; 013096: provisional 68k movep.w $d0d(a5), d6
db 0x0E, 0x0E, 0x0E, 0x0E ; file 01309A
db 0x0F, 0x0F, 0x0F, 0x0F ; 01309E: provisional 68k movep.w $f0f(a7), d7
db 0x10, 0x10 ; 0130A2: provisional 68k move.b (a0), d0
db 0x10, 0x10 ; 0130A4: provisional 68k move.b (a0), d0
db 0x11, 0x11 ; 0130A6: provisional 68k move.b (a1), -(a0)
db 0x11, 0x11 ; 0130A8: provisional 68k move.b (a1), -(a0)
db 0x12, 0x12 ; 0130AA: provisional 68k move.b (a2), d1
db 0x12, 0x12 ; 0130AC: provisional 68k move.b (a2), d1
db 0x13, 0x13 ; 0130AE: provisional 68k move.b (a3), -(a1)
db 0x13, 0x13 ; 0130B0: provisional 68k move.b (a3), -(a1)
db 0x14, 0x14 ; 0130B2: provisional 68k move.b (a4), d2
db 0x14, 0x14 ; 0130B4: provisional 68k move.b (a4), d2
db 0x15, 0x15 ; 0130B6: provisional 68k move.b (a5), -(a2)
db 0x15, 0x15 ; 0130B8: provisional 68k move.b (a5), -(a2)
db 0x16, 0x16 ; 0130BA: provisional 68k move.b (a6), d3
db 0x16, 0x16 ; 0130BC: provisional 68k move.b (a6), d3
db 0x17, 0x17 ; 0130BE: provisional 68k move.b (a7), -(a3)
db 0x17, 0x17 ; 0130C0: provisional 68k move.b (a7), -(a3)
db 0x18, 0x18 ; 0130C2: provisional 68k move.b (a0)+, d4
db 0x18, 0x18 ; 0130C4: provisional 68k move.b (a0)+, d4
db 0x19, 0x19 ; 0130C6: provisional 68k move.b (a1)+, -(a4)
db 0x19, 0x19 ; 0130C8: provisional 68k move.b (a1)+, -(a4)
db 0x1A, 0x1A ; 0130CA: provisional 68k move.b (a2)+, d5
db 0x1A, 0x1A ; 0130CC: provisional 68k move.b (a2)+, d5
db 0x1B, 0x1B ; 0130CE: provisional 68k move.b (a3)+, -(a5)
db 0x1B, 0x1B ; 0130D0: provisional 68k move.b (a3)+, -(a5)
db 0x1C, 0x1C ; 0130D2: provisional 68k move.b (a4)+, d6
db 0x1C, 0x1C ; 0130D4: provisional 68k move.b (a4)+, d6
db 0x1D, 0x1D ; 0130D6: provisional 68k move.b (a5)+, -(a6)
db 0x1D, 0x1D ; 0130D8: provisional 68k move.b (a5)+, -(a6)
db 0x1E, 0x1E ; 0130DA: provisional 68k move.b (a6)+, d7
db 0x1E, 0x1E ; 0130DC: provisional 68k move.b (a6)+, d7
db 0x1F, 0x1F ; 0130DE: provisional 68k move.b (a7)+, -(a7)
db 0x1F, 0x1F ; 0130E0: provisional 68k move.b (a7)+, -(a7)
db 0x20, 0x20 ; 0130E2: provisional 68k move.l -(a0), d0
db 0x20, 0x20 ; 0130E4: provisional 68k move.l -(a0), d0
db 0x21, 0x21 ; 0130E6: provisional 68k move.l -(a1), -(a0)
db 0x21, 0x21 ; 0130E8: provisional 68k move.l -(a1), -(a0)
db 0x22, 0x22 ; 0130EA: provisional 68k move.l -(a2), d1
db 0x22, 0x22 ; 0130EC: provisional 68k move.l -(a2), d1
db 0x23, 0x23 ; 0130EE: provisional 68k move.l -(a3), -(a1)
db 0x23, 0x23 ; 0130F0: provisional 68k move.l -(a3), -(a1)
db 0x24, 0x24 ; 0130F2: provisional 68k move.l -(a4), d2
db 0x24, 0x24 ; 0130F4: provisional 68k move.l -(a4), d2
db 0x25, 0x25 ; 0130F6: provisional 68k move.l -(a5), -(a2)
db 0x25, 0x25 ; 0130F8: provisional 68k move.l -(a5), -(a2)
db 0x26, 0x26 ; 0130FA: provisional 68k move.l -(a6), d3
db 0x26, 0x26 ; 0130FC: provisional 68k move.l -(a6), d3
db 0x27, 0x27 ; 0130FE: provisional 68k move.l -(a7), -(a3)
db 0x27, 0x27 ; 013100: provisional 68k move.l -(a7), -(a3)
db 0x28, 0x28, 0x28, 0x28 ; 013102: provisional 68k move.l $2828(a0), d4
db 0x29, 0x29, 0x29, 0x29 ; 013106: provisional 68k move.l $2929(a1), -(a4)
db 0x2A, 0x2A, 0x2A, 0x2A ; 01310A: provisional 68k move.l $2a2a(a2), d5
db 0x2B, 0x2B, 0x2B, 0x2B ; 01310E: provisional 68k move.l $2b2b(a3), -(a5)
db 0x2C, 0x2C, 0x2C, 0x2C ; 013112: provisional 68k move.l $2c2c(a4), d6
db 0x2D, 0x2D, 0x2D, 0x2D ; 013116: provisional 68k move.l $2d2d(a5), -(a6)
db 0x2E, 0x2E, 0x2E, 0x2E ; 01311A: provisional 68k move.l $2e2e(a6), d7
db 0x2F, 0x2F, 0x2F, 0x2F ; 01311E: provisional 68k move.l $2f2f(a7), -(a7)
db 0x30, 0x30, 0x30, 0x30 ; 013122: provisional 68k move.w $30(a0, d3.w), d0
db 0x31, 0x31, 0x31, 0x31, 0x32, 0x32, 0x32, 0x32 ; 013126: provisional 68k move.w ([$32323232, a1, d3.w]), -(a0)
db 0x33, 0x33, 0x33, 0x33, 0x34, 0x34, 0x34, 0x34, 0x35, 0x35, 0x35, 0x35 ; 01312E: provisional 68k move.w ([$34343434, a3, d3.w * 2], $35353535), -(a1)
db 0x36, 0x36, 0x36, 0x36 ; 01313A: provisional 68k move.w $36(a6, d3.w), d3
db 0x37, 0x37, 0x37, 0x37, 0x38, 0x38, 0x38, 0x38, 0x39, 0x39, 0x39, 0x39 ; 01313E: provisional 68k move.w ([$38383838, a7], d3.w * 8, $39393939), -(a3)
db 0x3A, 0x3A, 0x3A, 0x3A ; 01314A: provisional 68k move.w $16b86(pc), d5
db 0x3B, 0x3B, 0x3B, 0x3B, 0x3C, 0x3C, 0x3C, 0x3C, 0x3D, 0x3D, 0x3D, 0x3D ; 01314E: provisional 68k move.w ([$3c3d6d8c, pc, d3.l * 2], $3d3d3d3d), -(a5)
db 0x3E, 0x3E, 0x3E, 0x3E, 0x3F, 0x3F, 0x3F, 0x3F ; file 01315A
db 0x00, 0x00, 0x00, 0x01 ; 013162: provisional 68k ori.b #$1, d0
db 0x01, 0x01 ; 013166: provisional 68k btst.l d0, d1
db 0x02, 0x02, 0x03, 0x03 ; 013168: provisional 68k andi.b #$3, d2
db 0x03, 0x04 ; 01316C: provisional 68k btst.l d1, d4
db 0x04, 0x04, 0x05, 0x05 ; 01316E: provisional 68k subi.b #$5, d4
db 0x06, 0x06, 0x06, 0x07 ; 013172: provisional 68k addi.b #$7, d6
db 0x07, 0x07 ; 013176: provisional 68k btst.l d3, d7
db 0x08, 0x08 ; file 013178
db 0x09, 0x09, 0x09, 0x0A ; 01317A: provisional 68k movep.w $90a(a1), d4
db 0x0A, 0x0A ; file 01317E
db 0x0B, 0x0B, 0x0C, 0x0C ; 013180: provisional 68k movep.w $c0c(a3), d5
db 0x0C, 0x0D ; file 013184
db 0x0D, 0x0D, 0x0E, 0x0E ; 013186: provisional 68k movep.w $e0e(a5), d6
db 0x0F, 0x0F, 0x0F, 0x10 ; 01318A: provisional 68k movep.w $f10(a7), d7
db 0x10, 0x10 ; 01318E: provisional 68k move.b (a0), d0
db 0x11, 0x11 ; 013190: provisional 68k move.b (a1), -(a0)
db 0x12, 0x12 ; 013192: provisional 68k move.b (a2), d1
db 0x12, 0x13 ; 013194: provisional 68k move.b (a3), d1
db 0x13, 0x13 ; 013196: provisional 68k move.b (a3), -(a1)
db 0x14, 0x14 ; 013198: provisional 68k move.b (a4), d2
db 0x15, 0x15 ; 01319A: provisional 68k move.b (a5), -(a2)
db 0x15, 0x16 ; 01319C: provisional 68k move.b (a6), -(a2)
db 0x16, 0x16 ; 01319E: provisional 68k move.b (a6), d3
db 0x17, 0x17 ; 0131A0: provisional 68k move.b (a7), -(a3)
db 0x18, 0x18 ; 0131A2: provisional 68k move.b (a0)+, d4
db 0x18, 0x19 ; 0131A4: provisional 68k move.b (a1)+, d4
db 0x19, 0x19 ; 0131A6: provisional 68k move.b (a1)+, -(a4)
db 0x1A, 0x1A ; 0131A8: provisional 68k move.b (a2)+, d5
db 0x1B, 0x1B ; 0131AA: provisional 68k move.b (a3)+, -(a5)
db 0x1B, 0x1C ; 0131AC: provisional 68k move.b (a4)+, -(a5)
db 0x1C, 0x1C ; 0131AE: provisional 68k move.b (a4)+, d6
db 0x1D, 0x1D ; 0131B0: provisional 68k move.b (a5)+, -(a6)
db 0x1E, 0x1E ; 0131B2: provisional 68k move.b (a6)+, d7
db 0x1E, 0x1F ; 0131B4: provisional 68k move.b (a7)+, d7
db 0x1F, 0x1F ; 0131B6: provisional 68k move.b (a7)+, -(a7)
db 0x20, 0x20 ; 0131B8: provisional 68k move.l -(a0), d0
db 0x21, 0x21 ; 0131BA: provisional 68k move.l -(a1), -(a0)
db 0x21, 0x22 ; 0131BC: provisional 68k move.l -(a2), -(a0)
db 0x22, 0x22 ; 0131BE: provisional 68k move.l -(a2), d1
db 0x23, 0x23 ; 0131C0: provisional 68k move.l -(a3), -(a1)
db 0x24, 0x24 ; 0131C2: provisional 68k move.l -(a4), d2
db 0x24, 0x25 ; 0131C4: provisional 68k move.l -(a5), d2
db 0x25, 0x25 ; 0131C6: provisional 68k move.l -(a5), -(a2)
db 0x26, 0x26 ; 0131C8: provisional 68k move.l -(a6), d3
db 0x27, 0x27 ; 0131CA: provisional 68k move.l -(a7), -(a3)
db 0x27, 0x28, 0x28, 0x28 ; 0131CC: provisional 68k move.l $2828(a0), -(a3)
db 0x29, 0x29, 0x2A, 0x2A ; 0131D0: provisional 68k move.l $2a2a(a1), -(a4)
db 0x2A, 0x2B, 0x2B, 0x2B ; 0131D4: provisional 68k move.l $2b2b(a3), d5
db 0x2C, 0x2C, 0x2D, 0x2D ; 0131D8: provisional 68k move.l $2d2d(a4), d6
db 0x2D, 0x2E, 0x2E, 0x2E ; 0131DC: provisional 68k move.l $2e2e(a6), -(a6)
db 0x2F, 0x2F, 0x30, 0x30 ; 0131E0: provisional 68k move.l $3030(a7), -(a7)
db 0x30, 0x31, 0x31, 0x31, 0x32, 0x32, 0x33, 0x33 ; 0131E4: provisional 68k move.w ([$32323333, a1, d3.w]), d0
db 0x33, 0x34, 0x34, 0x34 ; 0131EC: provisional 68k move.w $34(a4, d3.w), -(a1)
db 0x35, 0x35, 0x36, 0x36 ; 0131F0: provisional 68k move.w $36(a5, d3.w), -(a2)
db 0x36, 0x37, 0x37, 0x37, 0x38, 0x38, 0x39, 0x39, 0x39, 0x3A, 0x3A, 0x3A ; 0131F4: provisional 68k move.w ([$38383939, a7], d3.w * 8, $393a3a3a), d3
db 0x3B, 0x3B, 0x3C, 0x3C ; 013200: provisional 68k move.w $1323e(pc, d3.l), -(a5)
db 0x3C, 0x3D, 0x3D, 0x3D, 0x3E, 0x3E, 0x3F, 0x3F ; file 013204
db 0x3F, 0x40, 0x40, 0x40 ; 01320C: provisional 68k move.w d0, $4040(a7)
db 0x41, 0x41 ; file 013210
db 0x42, 0x42 ; 013212: provisional 68k clr.w d2
db 0x42, 0x43 ; 013214: provisional 68k clr.w d3
db 0x43, 0x43 ; file 013216
db 0x44, 0x44 ; 013218: provisional 68k neg.w d4
db 0x45, 0x45, 0x45, 0x46 ; file 01321A
db 0x46, 0x46 ; 01321E: provisional 68k not.w d6
db 0x47, 0x47 ; file 013220
db 0x48, 0x48 ; 013222: provisional 68k dc.w $4848
db 0x48, 0x49 ; 013224: provisional 68k dc.w $4849
db 0x49, 0x49 ; file 013226
db 0x4A, 0x4A ; 013228: provisional 68k dc.w $4a4a
db 0x4B, 0x4B, 0x4B, 0x4C, 0x4C, 0x4C, 0x4D, 0x4D ; file 01322A
db 0x4E, 0x4E ; 013232: provisional 68k trap #$e
db 0x4E, 0x4F ; 013234: provisional 68k trap #$f
db 0x4F, 0x4F ; file 013236
db 0x50, 0x50 ; 013238: provisional 68k addq.w #$8, (a0)
db 0x51, 0x51 ; 01323A: provisional 68k subq.w #$8, (a1)
db 0x51, 0x52 ; 01323C: provisional 68k subq.w #$8, (a2)
db 0x52, 0x52 ; 01323E: provisional 68k addq.w #$1, (a2)
db 0x53, 0x53 ; 013240: provisional 68k subq.w #$1, (a3)
db 0x54, 0x54 ; 013242: provisional 68k addq.w #$2, (a4)
db 0x54, 0x55 ; 013244: provisional 68k addq.w #$2, (a5)
db 0x55, 0x55 ; 013246: provisional 68k subq.w #$2, (a5)
db 0x56, 0x56 ; 013248: provisional 68k addq.w #$3, (a6)
db 0x57, 0x57 ; 01324A: provisional 68k subq.w #$3, (a7)
db 0x57, 0x58 ; 01324C: provisional 68k subq.w #$3, (a0)+
db 0x58, 0x58 ; 01324E: provisional 68k addq.w #$4, (a0)+
db 0x59, 0x59 ; 013250: provisional 68k subq.w #$4, (a1)+
db 0x5A, 0x5A ; 013252: provisional 68k addq.w #$5, (a2)+
db 0x5A, 0x5B ; 013254: provisional 68k addq.w #$5, (a3)+
db 0x5B, 0x5B ; 013256: provisional 68k subq.w #$5, (a3)+
db 0x5C, 0x5C ; 013258: provisional 68k addq.w #$6, (a4)+
db 0x5D, 0x5D ; 01325A: provisional 68k subq.w #$6, (a5)+
db 0x5D, 0x5E ; 01325C: provisional 68k subq.w #$6, (a6)+
db 0x5E, 0x5E ; 01325E: provisional 68k addq.w #$7, (a6)+
db 0x5F, 0x5F ; 013260: provisional 68k subq.w #$7, (a7)+
db 0x00, 0x00, 0x01, 0x01 ; 013262: provisional 68k ori.b #$1, d0
db 0x02, 0x02, 0x03, 0x03 ; 013266: provisional 68k andi.b #$3, d2
db 0x04, 0x04, 0x05, 0x05 ; 01326A: provisional 68k subi.b #$5, d4
db 0x06, 0x06, 0x07, 0x07 ; 01326E: provisional 68k addi.b #$7, d6
db 0x08, 0x08 ; file 013272
db 0x09, 0x09, 0x0A, 0x0A ; 013274: provisional 68k movep.w $a0a(a1), d4
db 0x0B, 0x0B, 0x0C, 0x0C ; 013278: provisional 68k movep.w $c0c(a3), d5
db 0x0D, 0x0D, 0x0E, 0x0E ; 01327C: provisional 68k movep.w $e0e(a5), d6
db 0x0F, 0x0F, 0x10, 0x10 ; 013280: provisional 68k movep.w $1010(a7), d7
db 0x11, 0x11 ; 013284: provisional 68k move.b (a1), -(a0)
db 0x12, 0x12 ; 013286: provisional 68k move.b (a2), d1
db 0x13, 0x13 ; 013288: provisional 68k move.b (a3), -(a1)
db 0x14, 0x14 ; 01328A: provisional 68k move.b (a4), d2
db 0x15, 0x15 ; 01328C: provisional 68k move.b (a5), -(a2)
db 0x16, 0x16 ; 01328E: provisional 68k move.b (a6), d3
db 0x17, 0x17 ; 013290: provisional 68k move.b (a7), -(a3)
db 0x18, 0x18 ; 013292: provisional 68k move.b (a0)+, d4
db 0x19, 0x19 ; 013294: provisional 68k move.b (a1)+, -(a4)
db 0x1A, 0x1A ; 013296: provisional 68k move.b (a2)+, d5
db 0x1B, 0x1B ; 013298: provisional 68k move.b (a3)+, -(a5)
db 0x1C, 0x1C ; 01329A: provisional 68k move.b (a4)+, d6
db 0x1D, 0x1D ; 01329C: provisional 68k move.b (a5)+, -(a6)
db 0x1E, 0x1E ; 01329E: provisional 68k move.b (a6)+, d7
db 0x1F, 0x1F ; 0132A0: provisional 68k move.b (a7)+, -(a7)
db 0x20, 0x20 ; 0132A2: provisional 68k move.l -(a0), d0
db 0x21, 0x21 ; 0132A4: provisional 68k move.l -(a1), -(a0)
db 0x22, 0x22 ; 0132A6: provisional 68k move.l -(a2), d1
db 0x23, 0x23 ; 0132A8: provisional 68k move.l -(a3), -(a1)
db 0x24, 0x24 ; 0132AA: provisional 68k move.l -(a4), d2
db 0x25, 0x25 ; 0132AC: provisional 68k move.l -(a5), -(a2)
db 0x26, 0x26 ; 0132AE: provisional 68k move.l -(a6), d3
db 0x27, 0x27 ; 0132B0: provisional 68k move.l -(a7), -(a3)
db 0x28, 0x28, 0x29, 0x29 ; 0132B2: provisional 68k move.l $2929(a0), d4
db 0x2A, 0x2A, 0x2B, 0x2B ; 0132B6: provisional 68k move.l $2b2b(a2), d5
db 0x2C, 0x2C, 0x2D, 0x2D ; 0132BA: provisional 68k move.l $2d2d(a4), d6
db 0x2E, 0x2E, 0x2F, 0x2F ; 0132BE: provisional 68k move.l $2f2f(a6), d7
db 0x30, 0x30, 0x31, 0x31, 0x32, 0x32, 0x33, 0x33 ; 0132C2: provisional 68k move.w ([$32323333, a0, d3.w]), d0
db 0x34, 0x34, 0x35, 0x35, 0x36, 0x36, 0x37, 0x37 ; 0132CA: provisional 68k move.w ([$36363737, a4], d3.w * 4), d2
db 0x38, 0x38, 0x39, 0x39 ; 0132D2: provisional 68k move.w $3939.w, d4
db 0x3A, 0x3A, 0x3B, 0x3B ; 0132D6: provisional 68k move.w $16e13(pc), d5
db 0x3C, 0x3C, 0x3D, 0x3D ; 0132DA: provisional 68k move.w #$3d3d, d6
db 0x3E, 0x3E, 0x3F, 0x3F ; file 0132DE
db 0x40, 0x40 ; 0132E2: provisional 68k negx.w d0
db 0x41, 0x41 ; file 0132E4
db 0x42, 0x42 ; 0132E6: provisional 68k clr.w d2
db 0x43, 0x43 ; file 0132E8
db 0x44, 0x44 ; 0132EA: provisional 68k neg.w d4
db 0x45, 0x45 ; file 0132EC
db 0x46, 0x46 ; 0132EE: provisional 68k not.w d6
db 0x47, 0x47 ; file 0132F0
db 0x48, 0x48 ; 0132F2: provisional 68k dc.w $4848
db 0x49, 0x49 ; file 0132F4
db 0x4A, 0x4A ; 0132F6: provisional 68k dc.w $4a4a
db 0x4B, 0x4B, 0x4C, 0x4C, 0x4D, 0x4D ; file 0132F8
db 0x4E, 0x4E ; 0132FE: provisional 68k trap #$e
db 0x4F, 0x4F ; file 013300
db 0x50, 0x50 ; 013302: provisional 68k addq.w #$8, (a0)
db 0x51, 0x51 ; 013304: provisional 68k subq.w #$8, (a1)
db 0x52, 0x52 ; 013306: provisional 68k addq.w #$1, (a2)
db 0x53, 0x53 ; 013308: provisional 68k subq.w #$1, (a3)
db 0x54, 0x54 ; 01330A: provisional 68k addq.w #$2, (a4)
db 0x55, 0x55 ; 01330C: provisional 68k subq.w #$2, (a5)
db 0x56, 0x56 ; 01330E: provisional 68k addq.w #$3, (a6)
db 0x57, 0x57 ; 013310: provisional 68k subq.w #$3, (a7)
db 0x58, 0x58 ; 013312: provisional 68k addq.w #$4, (a0)+
db 0x59, 0x59 ; 013314: provisional 68k subq.w #$4, (a1)+
db 0x5A, 0x5A ; 013316: provisional 68k addq.w #$5, (a2)+
db 0x5B, 0x5B ; 013318: provisional 68k subq.w #$5, (a3)+
db 0x5C, 0x5C ; 01331A: provisional 68k addq.w #$6, (a4)+
db 0x5D, 0x5D ; 01331C: provisional 68k subq.w #$6, (a5)+
db 0x5E, 0x5E ; 01331E: provisional 68k addq.w #$7, (a6)+
db 0x5F, 0x5F ; 013320: provisional 68k subq.w #$7, (a7)+
db 0x60, 0x60 ; 013322: provisional 68k bra.b $13384
db 0x61, 0x61 ; 013324: provisional 68k bsr.b $13387
db 0x62, 0x62 ; 013326: provisional 68k bhi.b $1338a
db 0x63, 0x63 ; 013328: provisional 68k bls.b $1338d
db 0x64, 0x64 ; 01332A: provisional 68k bcc.b $13390
db 0x65, 0x65 ; 01332C: provisional 68k bcs.b $13393
db 0x66, 0x66 ; 01332E: provisional 68k bne.b $13396
db 0x67, 0x67 ; 013330: provisional 68k beq.b $13399
db 0x68, 0x68 ; 013332: provisional 68k bvc.b $1339c
db 0x69, 0x69 ; 013334: provisional 68k bvs.b $1339f
db 0x6A, 0x6A ; 013336: provisional 68k bpl.b $133a2
db 0x6B, 0x6B ; 013338: provisional 68k bmi.b $133a5
db 0x6C, 0x6C ; 01333A: provisional 68k bge.b $133a8
db 0x6D, 0x6D ; 01333C: provisional 68k blt.b $133ab
db 0x6E, 0x6E ; 01333E: provisional 68k bgt.b $133ae
db 0x6F, 0x6F ; 013340: provisional 68k ble.b $133b1
db 0x70, 0x70 ; 013342: provisional 68k moveq #$70, d0
db 0x71, 0x71 ; file 013344
db 0x72, 0x72 ; 013346: provisional 68k moveq #$72, d1
db 0x73, 0x73 ; file 013348
db 0x74, 0x74 ; 01334A: provisional 68k moveq #$74, d2
db 0x75, 0x75 ; file 01334C
db 0x76, 0x76 ; 01334E: provisional 68k moveq #$76, d3
db 0x77, 0x77 ; file 013350
db 0x78, 0x78 ; 013352: provisional 68k moveq #$78, d4
db 0x79, 0x79 ; file 013354
db 0x7A, 0x7A ; 013356: provisional 68k moveq #$7a, d5
db 0x7B, 0x7B ; file 013358
db 0x7C, 0x7C ; 01335A: provisional 68k moveq #$7c, d6
db 0x7D, 0x7D ; file 01335C
db 0x7E, 0x7E ; 01335E: provisional 68k moveq #$7e, d7
db 0x7F, 0x7F ; file 013360
db 0x00, 0x00, 0x01, 0x01 ; 013362: provisional 68k ori.b #$1, d0
db 0x02, 0x03, 0x03, 0x04 ; 013366: provisional 68k andi.b #$4, d3
db 0x05, 0x05 ; 01336A: provisional 68k btst.l d2, d5
db 0x06, 0x06, 0x07, 0x08 ; 01336C: provisional 68k addi.b #$8, d6
db 0x08, 0x09, 0x0A, 0x0A ; file 013370
db 0x0B, 0x0B, 0x0C, 0x0D ; 013374: provisional 68k movep.w $c0d(a3), d5
db 0x0D, 0x0E, 0x0F, 0x0F ; 013378: provisional 68k movep.w $f0f(a6), d6
db 0x10, 0x10 ; 01337C: provisional 68k move.b (a0), d0
db 0x11, 0x12 ; 01337E: provisional 68k move.b (a2), -(a0)
db 0x12, 0x13 ; 013380: provisional 68k move.b (a3), d1
db 0x14, 0x14 ; 013382: provisional 68k move.b (a4), d2
db 0x15, 0x15 ; 013384: provisional 68k move.b (a5), -(a2)
db 0x16, 0x17 ; 013386: provisional 68k move.b (a7), d3
db 0x17, 0x18 ; 013388: provisional 68k move.b (a0)+, -(a3)
db 0x19, 0x19 ; 01338A: provisional 68k move.b (a1)+, -(a4)
db 0x1A, 0x1A ; 01338C: provisional 68k move.b (a2)+, d5
db 0x1B, 0x1C ; 01338E: provisional 68k move.b (a4)+, -(a5)
db 0x1C, 0x1D ; 013390: provisional 68k move.b (a5)+, d6
db 0x1E, 0x1E ; 013392: provisional 68k move.b (a6)+, d7
db 0x1F, 0x1F ; 013394: provisional 68k move.b (a7)+, -(a7)
db 0x20, 0x21 ; 013396: provisional 68k move.l -(a1), d0
db 0x21, 0x22 ; 013398: provisional 68k move.l -(a2), -(a0)
db 0x23, 0x23 ; 01339A: provisional 68k move.l -(a3), -(a1)
db 0x24, 0x24 ; 01339C: provisional 68k move.l -(a4), d2
db 0x25, 0x26 ; 01339E: provisional 68k move.l -(a6), -(a2)
db 0x26, 0x27 ; 0133A0: provisional 68k move.l -(a7), d3
db 0x28, 0x28, 0x29, 0x29 ; 0133A2: provisional 68k move.l $2929(a0), d4
db 0x2A, 0x2B, 0x2B, 0x2C ; 0133A6: provisional 68k move.l $2b2c(a3), d5
db 0x2D, 0x2D, 0x2E, 0x2E ; 0133AA: provisional 68k move.l $2e2e(a5), -(a6)
db 0x2F, 0x30, 0x30, 0x31 ; 0133AE: provisional 68k move.l $31(a0, d3.w), -(a7)
db 0x32, 0x32, 0x33, 0x33, 0x34, 0x35, 0x35, 0x36, 0x37, 0x37, 0x38, 0x38 ; 0133B2: provisional 68k move.w ([$34353536, a2, d3.w * 2], $37373838), d1
db 0x39, 0x3A, 0x3A, 0x3B ; 0133BE: provisional 68k move.w $16dfb(pc), -(a4)
db 0x3C, 0x3C, 0x3D, 0x3D ; 0133C2: provisional 68k move.w #$3d3d, d6
db 0x3E, 0x3F ; file 0133C6
db 0x3F, 0x40, 0x41, 0x41 ; 0133C8: provisional 68k move.w d0, $4141(a7)
db 0x42, 0x42 ; 0133CC: provisional 68k clr.w d2
db 0x43, 0x44 ; file 0133CE
db 0x44, 0x45 ; 0133D0: provisional 68k neg.w d5
db 0x46, 0x46 ; 0133D2: provisional 68k not.w d6
db 0x47, 0x47 ; file 0133D4
db 0x48, 0x49 ; 0133D6: provisional 68k dc.w $4849
db 0x49, 0x4A, 0x4B, 0x4B, 0x4C, 0x4C, 0x4D, 0x4E ; file 0133D8
db 0x4E, 0x4F ; 0133E0: provisional 68k trap #$f
db 0x50, 0x50 ; 0133E2: provisional 68k addq.w #$8, (a0)
db 0x51, 0x51 ; 0133E4: provisional 68k subq.w #$8, (a1)
db 0x52, 0x53 ; 0133E6: provisional 68k addq.w #$1, (a3)
db 0x53, 0x54 ; 0133E8: provisional 68k subq.w #$1, (a4)
db 0x55, 0x55 ; 0133EA: provisional 68k subq.w #$2, (a5)
db 0x56, 0x56 ; 0133EC: provisional 68k addq.w #$3, (a6)
db 0x57, 0x58 ; 0133EE: provisional 68k subq.w #$3, (a0)+
db 0x58, 0x59 ; 0133F0: provisional 68k addq.w #$4, (a1)+
db 0x5A, 0x5A ; 0133F2: provisional 68k addq.w #$5, (a2)+
db 0x5B, 0x5B ; 0133F4: provisional 68k subq.w #$5, (a3)+
db 0x5C, 0x5D ; 0133F6: provisional 68k addq.w #$6, (a5)+
db 0x5D, 0x5E ; 0133F8: provisional 68k subq.w #$6, (a6)+
db 0x5F, 0x5F ; 0133FA: provisional 68k subq.w #$7, (a7)+
db 0x60, 0x60 ; 0133FC: provisional 68k bra.b $1345e
db 0x61, 0x62 ; 0133FE: provisional 68k bsr.b $13462
db 0x62, 0x63 ; 013400: provisional 68k bhi.b $13465
db 0x64, 0x64 ; 013402: provisional 68k bcc.b $13468
db 0x65, 0x65 ; 013404: provisional 68k bcs.b $1346b
db 0x66, 0x67 ; 013406: provisional 68k bne.b $1346f
db 0x67, 0x68 ; 013408: provisional 68k beq.b $13472
db 0x69, 0x69 ; 01340A: provisional 68k bvs.b $13475
db 0x6A, 0x6A ; 01340C: provisional 68k bpl.b $13478
db 0x6B, 0x6C ; 01340E: provisional 68k bmi.b $1347c
db 0x6C, 0x6D ; 013410: provisional 68k bge.b $1347f
db 0x6E, 0x6E ; 013412: provisional 68k bgt.b $13482
db 0x6F, 0x6F ; 013414: provisional 68k ble.b $13485
db 0x70, 0x71 ; 013416: provisional 68k moveq #$71, d0
db 0x71, 0x72, 0x73, 0x73 ; file 013418
db 0x74, 0x74 ; 01341C: provisional 68k moveq #$74, d2
db 0x75, 0x76 ; file 01341E
db 0x76, 0x77 ; 013420: provisional 68k moveq #$77, d3
db 0x78, 0x78 ; 013422: provisional 68k moveq #$78, d4
db 0x79, 0x79 ; file 013424
db 0x7A, 0x7B ; 013426: provisional 68k moveq #$7b, d5
db 0x7B, 0x7C, 0x7D, 0x7D ; file 013428
db 0x7E, 0x7E ; 01342C: provisional 68k moveq #$7e, d7
db 0x7F, 0x80 ; file 01342E
db 0x80, 0x81 ; 013430: provisional 68k or.l d1, d0
db 0x82, 0x82 ; 013432: provisional 68k or.l d2, d1
db 0x83, 0x83 ; 013434: provisional 68k dc.w $8383
db 0x84, 0x85 ; 013436: provisional 68k or.l d5, d2
db 0x85, 0x86 ; 013438: provisional 68k dc.w $8586
db 0x87, 0x87 ; 01343A: provisional 68k dc.w $8787
db 0x88, 0x88 ; file 01343C
db 0x89, 0x8A ; 01343E: provisional 68k dc.w $898a
db 0x8A, 0x8B, 0x8C, 0x8C ; file 013440
db 0x8D, 0x8D ; 013444: provisional 68k dc.w $8d8d
db 0x8E, 0x8F ; file 013446
db 0x8F, 0x90 ; 013448: provisional 68k or.l d7, (a0)
db 0x91, 0x91 ; 01344A: provisional 68k sub.l d0, (a1)
db 0x92, 0x92 ; 01344C: provisional 68k sub.l (a2), d1
db 0x93, 0x94 ; 01344E: provisional 68k sub.l d1, (a4)
db 0x94, 0x95 ; 013450: provisional 68k sub.l (a5), d2
db 0x96, 0x96 ; 013452: provisional 68k sub.l (a6), d3
db 0x97, 0x97 ; 013454: provisional 68k sub.l d3, (a7)
db 0x98, 0x99 ; 013456: provisional 68k sub.l (a1)+, d4
db 0x99, 0x9A ; 013458: provisional 68k sub.l d4, (a2)+
db 0x9B, 0x9B ; 01345A: provisional 68k sub.l d5, (a3)+
db 0x9C, 0x9C ; 01345C: provisional 68k sub.l (a4)+, d6
db 0x9D, 0x9E ; 01345E: provisional 68k sub.l d6, (a6)+
db 0x9E, 0x9F ; 013460: provisional 68k sub.l (a7)+, d7
