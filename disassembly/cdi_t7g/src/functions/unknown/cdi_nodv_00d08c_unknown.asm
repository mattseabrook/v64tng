; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00D08C–00D1A9, inclusive.
cdi_nodv_entry_00d08c:
db 0x41, 0xEE, 0xA9, 0x0E ; 00D08C: provisional 68k lea.l -$56f2(a6), a0
db 0x22, 0x2E, 0xAA, 0x16 ; 00D090: provisional 68k move.l -$55ea(a6), d1
db 0x74, 0x1F ; 00D094: provisional 68k moveq #$1f, d2
db 0xB2, 0x90 ; 00D096: provisional 68k cmp.l (a0), d1
db 0x67, 0x0C ; 00D098: provisional 68k beq.b $d0a6
db 0x50, 0x48 ; 00D09A: provisional 68k addq.w #$8, a0
db 0x52, 0x40 ; 00D09C: provisional 68k addq.w #$1, d0
db 0x51, 0xCA, 0xFF, 0xF6 ; 00D09E: provisional 68k dbra d2, $d096
db 0x60, 0x00, 0x00, 0x10 ; 00D0A2: provisional 68k bra.w $d0b4
db 0x20, 0xEF, 0x00, 0x10 ; 00D0A6: provisional 68k move.l $10(a7), (a0)+
db 0x42, 0x90 ; 00D0AA: provisional 68k clr.l (a0)
db 0x4C, 0xDF, 0x01, 0x06 ; 00D0AC: provisional 68k movem.l (a7)+, d1-d2/a0
db 0x2E, 0x9F ; 00D0B0: provisional 68k move.l (a7)+, (a7)
db 0x4E, 0x75 ; 00D0B2: provisional 68k rts 
db 0x32, 0x39, 0x00, 0x00, 0x80, 0x00 ; 00D0B4: provisional 68k move.w $8000.l, d1
db 0x61, 0x00, 0xFB, 0x42 ; 00D0BA: provisional 68k bsr.w $cbfe
db 0x73, 0x67 ; file 00D0BE
db 0x6D, 0x5F ; 00D0C0: provisional 68k blt.b $d121
db 0x6E, 0x65 ; 00D0C2: provisional 68k bgt.b $d129
db 0x77, 0x20 ; file 00D0C4
db 0x3A, 0x20 ; 00D0C6: provisional 68k move.w -(a0), d5
db 0x52, 0x61 ; 00D0C8: provisional 68k addq.w #$1, -(a1)
db 0x6E, 0x20 ; 00D0CA: provisional 68k bgt.b $d0ec
db 0x6F, 0x75 ; 00D0CC: provisional 68k ble.b $d143
db 0x74, 0x20 ; 00D0CE: provisional 68k moveq #$20, d2
db 0x69, 0x66 ; 00D0D0: provisional 68k bvs.b $d138
db 0x20, 0x73, 0x69, 0x67, 0x6E, 0x61 ; 00D0D2: provisional 68k movea.l ([$6e61, a3]), a0
db 0x6C, 0x20 ; 00D0D8: provisional 68k bge.b $d0fa
db 0x69, 0x64 ; 00D0DA: provisional 68k bvs.b $d140
db 0x27, 0x73, 0x00, 0x00, 0x48, 0xE7 ; 00D0DC: provisional 68k move.l (a3, d0.w), $48e7(a3)
db 0xC0, 0x80 ; 00D0E2: provisional 68k and.l d0, d0
db 0x41, 0xEE, 0xA9, 0x0E ; 00D0E4: provisional 68k lea.l -$56f2(a6), a0
db 0x30, 0x2F, 0x00, 0x10 ; 00D0E8: provisional 68k move.w $10(a7), d0
db 0x32, 0x00 ; 00D0EC: provisional 68k move.w d0, d1
db 0x90, 0x7C, 0x01, 0x00 ; 00D0EE: provisional 68k sub.w #$100, d0
db 0xE7, 0x40 ; 00D0F2: provisional 68k asl.w #$3, d0
db 0x21, 0xAE, 0xAA, 0x16, 0x08, 0x00 ; 00D0F4: provisional 68k move.l -$55ea(a6), (a0, d0.l)
db 0x21, 0x81, 0x08, 0x04 ; 00D0FA: provisional 68k move.l d1, $4(a0, d0.l)
db 0x4C, 0xDF, 0x01, 0x03 ; 00D0FE: provisional 68k movem.l (a7)+, d0-d1/a0
db 0x2F, 0x57, 0x00, 0x02 ; 00D102: provisional 68k move.l (a7), $2(a7)
db 0x4F, 0xEF, 0x00, 0x02 ; 00D106: provisional 68k lea.l $2(a7), a7
db 0x4E, 0x75 ; 00D10A: provisional 68k rts 
db 0x48, 0xE7, 0x80, 0x80 ; 00D10C: provisional 68k movem.l d0/a0, -(a7)
db 0x41, 0xEE, 0xA9, 0x0E ; 00D110: provisional 68k lea.l -$56f2(a6), a0
db 0x30, 0x2F, 0x00, 0x0C ; 00D114: provisional 68k move.w $c(a7), d0
db 0x90, 0x7C, 0x01, 0x00 ; 00D118: provisional 68k sub.w #$100, d0
db 0xE7, 0x40 ; 00D11C: provisional 68k asl.w #$3, d0
db 0x21, 0xAE, 0x00, 0x0E, 0x08, 0x00 ; 00D11E: provisional 68k move.l $e(a6), (a0, d0.l)
db 0x4C, 0xDF, 0x01, 0x01 ; 00D124: provisional 68k movem.l (a7)+, d0/a0
db 0x2F, 0x57, 0x00, 0x06 ; 00D128: provisional 68k move.l (a7), $6(a7)
db 0x4F, 0xEF, 0x00, 0x06 ; 00D12C: provisional 68k lea.l $6(a7), a7
db 0x4E, 0x75 ; 00D130: provisional 68k rts 
db 0x48, 0xE7, 0x80, 0x80 ; 00D132: provisional 68k movem.l d0/a0, -(a7)
db 0x41, 0xEE, 0xA9, 0x0E ; 00D136: provisional 68k lea.l -$56f2(a6), a0
db 0x30, 0x2F, 0x00, 0x0C ; 00D13A: provisional 68k move.w $c(a7), d0
db 0x90, 0x7C, 0x01, 0x00 ; 00D13E: provisional 68k sub.w #$100, d0
db 0xE7, 0x40 ; 00D142: provisional 68k asl.w #$3, d0
db 0x21, 0xAE, 0x00, 0x0E, 0x08, 0x04 ; 00D144: provisional 68k move.l $e(a6), $4(a0, d0.l)
db 0x4C, 0xDF, 0x01, 0x01 ; 00D14A: provisional 68k movem.l (a7)+, d0/a0
db 0x2F, 0x57, 0x00, 0x06 ; 00D14E: provisional 68k move.l (a7), $6(a7)
db 0x4F, 0xEF, 0x00, 0x06 ; 00D152: provisional 68k lea.l $6(a7), a7
db 0x4E, 0x75 ; 00D156: provisional 68k rts 
db 0x4A, 0x41 ; 00D158: provisional 68k tst.w d1
db 0x6B, 0x2C ; 00D15A: provisional 68k bmi.b $d188
db 0x92, 0x7C, 0x01, 0x00 ; 00D15C: provisional 68k sub.w #$100, d1
db 0x6B, 0x14 ; 00D160: provisional 68k bmi.b $d176
db 0xE7, 0x41 ; 00D162: provisional 68k asl.w #$3, d1
db 0x41, 0xEE, 0xA9, 0x0E ; 00D164: provisional 68k lea.l -$56f2(a6), a0
db 0x22, 0x70, 0x10, 0x00 ; 00D168: provisional 68k movea.l (a0, d1.w), a1
db 0x20, 0x30, 0x10, 0x04 ; 00D16C: provisional 68k move.l $4(a0, d1.w), d0
db 0x4E, 0x91 ; 00D170: provisional 68k jsr (a1)
db 0x4E, 0x40, 0x00, 0x1E ; 00D172: provisional 68k trap #0 ; OS-9 service word $001E
db 0x22, 0x6E, 0xAA, 0x1A ; 00D176: provisional 68k movea.l -$55e6(a6), a1
db 0x0C, 0x41, 0xFF, 0x03 ; 00D17A: provisional 68k cmpi.w #$ff03, d1
db 0x67, 0x04 ; 00D17E: provisional 68k beq.b $d184
db 0x22, 0x6E, 0xAA, 0x1E ; 00D180: provisional 68k movea.l -$55e2(a6), a1
db 0x4E, 0x91 ; 00D184: provisional 68k jsr (a1)
db 0x60, 0xEA ; 00D186: provisional 68k bra.b $d172
db 0x08, 0x01, 0x00, 0x0E ; 00D188: provisional 68k btst.b #$e, d1
db 0x66, 0x0E ; 00D18C: provisional 68k bne.b $d19c
db 0xC2, 0x7C, 0x03, 0xFF ; 00D18E: provisional 68k and.w #$3ff, d1
db 0x22, 0x6E, 0xAA, 0x0E ; 00D192: provisional 68k movea.l -$55f2(a6), a1
db 0x4E, 0x91 ; 00D196: provisional 68k jsr (a1)
db 0x4E, 0x40, 0x00, 0x1E ; 00D198: provisional 68k trap #0 ; OS-9 service word $001E
db 0xC0, 0x7C, 0x00, 0x1F ; 00D19C: provisional 68k and.w #$1f, d0
db 0x22, 0x6E, 0xAA, 0x12 ; 00D1A0: provisional 68k movea.l -$55ee(a6), a1
db 0x4E, 0x91 ; 00D1A4: provisional 68k jsr (a1)
db 0x4E, 0x40, 0x00, 0x1E ; 00D1A6: provisional 68k trap #0 ; OS-9 service word $001E
