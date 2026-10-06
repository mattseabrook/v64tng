; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00C20C–00C329, inclusive.
cdi_t7g_entry_00c20c:
db 0x41, 0xEE, 0xA9, 0x0E ; 00C20C: provisional 68k lea.l -$56f2(a6), a0
db 0x22, 0x2E, 0xAA, 0x16 ; 00C210: provisional 68k move.l -$55ea(a6), d1
db 0x74, 0x1F ; 00C214: provisional 68k moveq #$1f, d2
db 0xB2, 0x90 ; 00C216: provisional 68k cmp.l (a0), d1
db 0x67, 0x0C ; 00C218: provisional 68k beq.b $c226
db 0x50, 0x48 ; 00C21A: provisional 68k addq.w #$8, a0
db 0x52, 0x40 ; 00C21C: provisional 68k addq.w #$1, d0
db 0x51, 0xCA, 0xFF, 0xF6 ; 00C21E: provisional 68k dbra d2, $c216
db 0x60, 0x00, 0x00, 0x10 ; 00C222: provisional 68k bra.w $c234
db 0x20, 0xEF, 0x00, 0x10 ; 00C226: provisional 68k move.l $10(a7), (a0)+
db 0x42, 0x90 ; 00C22A: provisional 68k clr.l (a0)
db 0x4C, 0xDF, 0x01, 0x06 ; 00C22C: provisional 68k movem.l (a7)+, d1-d2/a0
db 0x2E, 0x9F ; 00C230: provisional 68k move.l (a7)+, (a7)
db 0x4E, 0x75 ; 00C232: provisional 68k rts 
db 0x32, 0x39, 0x00, 0x00, 0x80, 0x00 ; 00C234: provisional 68k move.w $8000.l, d1
db 0x61, 0x00, 0xFB, 0x42 ; 00C23A: provisional 68k bsr.w $bd7e
db 0x73, 0x67 ; file 00C23E
db 0x6D, 0x5F ; 00C240: provisional 68k blt.b $c2a1
db 0x6E, 0x65 ; 00C242: provisional 68k bgt.b $c2a9
db 0x77, 0x20 ; file 00C244
db 0x3A, 0x20 ; 00C246: provisional 68k move.w -(a0), d5
db 0x52, 0x61 ; 00C248: provisional 68k addq.w #$1, -(a1)
db 0x6E, 0x20 ; 00C24A: provisional 68k bgt.b $c26c
db 0x6F, 0x75 ; 00C24C: provisional 68k ble.b $c2c3
db 0x74, 0x20 ; 00C24E: provisional 68k moveq #$20, d2
db 0x69, 0x66 ; 00C250: provisional 68k bvs.b $c2b8
db 0x20, 0x73, 0x69, 0x67, 0x6E, 0x61 ; 00C252: provisional 68k movea.l ([$6e61, a3]), a0
db 0x6C, 0x20 ; 00C258: provisional 68k bge.b $c27a
db 0x69, 0x64 ; 00C25A: provisional 68k bvs.b $c2c0
db 0x27, 0x73, 0x00, 0x00, 0x48, 0xE7 ; 00C25C: provisional 68k move.l (a3, d0.w), $48e7(a3)
db 0xC0, 0x80 ; 00C262: provisional 68k and.l d0, d0
db 0x41, 0xEE, 0xA9, 0x0E ; 00C264: provisional 68k lea.l -$56f2(a6), a0
db 0x30, 0x2F, 0x00, 0x10 ; 00C268: provisional 68k move.w $10(a7), d0
db 0x32, 0x00 ; 00C26C: provisional 68k move.w d0, d1
db 0x90, 0x7C, 0x01, 0x00 ; 00C26E: provisional 68k sub.w #$100, d0
db 0xE7, 0x40 ; 00C272: provisional 68k asl.w #$3, d0
db 0x21, 0xAE, 0xAA, 0x16, 0x08, 0x00 ; 00C274: provisional 68k move.l -$55ea(a6), (a0, d0.l)
db 0x21, 0x81, 0x08, 0x04 ; 00C27A: provisional 68k move.l d1, $4(a0, d0.l)
db 0x4C, 0xDF, 0x01, 0x03 ; 00C27E: provisional 68k movem.l (a7)+, d0-d1/a0
db 0x2F, 0x57, 0x00, 0x02 ; 00C282: provisional 68k move.l (a7), $2(a7)
db 0x4F, 0xEF, 0x00, 0x02 ; 00C286: provisional 68k lea.l $2(a7), a7
db 0x4E, 0x75 ; 00C28A: provisional 68k rts 
db 0x48, 0xE7, 0x80, 0x80 ; 00C28C: provisional 68k movem.l d0/a0, -(a7)
db 0x41, 0xEE, 0xA9, 0x0E ; 00C290: provisional 68k lea.l -$56f2(a6), a0
db 0x30, 0x2F, 0x00, 0x0C ; 00C294: provisional 68k move.w $c(a7), d0
db 0x90, 0x7C, 0x01, 0x00 ; 00C298: provisional 68k sub.w #$100, d0
db 0xE7, 0x40 ; 00C29C: provisional 68k asl.w #$3, d0
db 0x21, 0xAE, 0x00, 0x0E, 0x08, 0x00 ; 00C29E: provisional 68k move.l $e(a6), (a0, d0.l)
db 0x4C, 0xDF, 0x01, 0x01 ; 00C2A4: provisional 68k movem.l (a7)+, d0/a0
db 0x2F, 0x57, 0x00, 0x06 ; 00C2A8: provisional 68k move.l (a7), $6(a7)
db 0x4F, 0xEF, 0x00, 0x06 ; 00C2AC: provisional 68k lea.l $6(a7), a7
db 0x4E, 0x75 ; 00C2B0: provisional 68k rts 
db 0x48, 0xE7, 0x80, 0x80 ; 00C2B2: provisional 68k movem.l d0/a0, -(a7)
db 0x41, 0xEE, 0xA9, 0x0E ; 00C2B6: provisional 68k lea.l -$56f2(a6), a0
db 0x30, 0x2F, 0x00, 0x0C ; 00C2BA: provisional 68k move.w $c(a7), d0
db 0x90, 0x7C, 0x01, 0x00 ; 00C2BE: provisional 68k sub.w #$100, d0
db 0xE7, 0x40 ; 00C2C2: provisional 68k asl.w #$3, d0
db 0x21, 0xAE, 0x00, 0x0E, 0x08, 0x04 ; 00C2C4: provisional 68k move.l $e(a6), $4(a0, d0.l)
db 0x4C, 0xDF, 0x01, 0x01 ; 00C2CA: provisional 68k movem.l (a7)+, d0/a0
db 0x2F, 0x57, 0x00, 0x06 ; 00C2CE: provisional 68k move.l (a7), $6(a7)
db 0x4F, 0xEF, 0x00, 0x06 ; 00C2D2: provisional 68k lea.l $6(a7), a7
db 0x4E, 0x75 ; 00C2D6: provisional 68k rts 
db 0x4A, 0x41 ; 00C2D8: provisional 68k tst.w d1
db 0x6B, 0x2C ; 00C2DA: provisional 68k bmi.b $c308
db 0x92, 0x7C, 0x01, 0x00 ; 00C2DC: provisional 68k sub.w #$100, d1
db 0x6B, 0x14 ; 00C2E0: provisional 68k bmi.b $c2f6
db 0xE7, 0x41 ; 00C2E2: provisional 68k asl.w #$3, d1
db 0x41, 0xEE, 0xA9, 0x0E ; 00C2E4: provisional 68k lea.l -$56f2(a6), a0
db 0x22, 0x70, 0x10, 0x00 ; 00C2E8: provisional 68k movea.l (a0, d1.w), a1
db 0x20, 0x30, 0x10, 0x04 ; 00C2EC: provisional 68k move.l $4(a0, d1.w), d0
db 0x4E, 0x91 ; 00C2F0: provisional 68k jsr (a1)
db 0x4E, 0x40, 0x00, 0x1E ; 00C2F2: provisional 68k trap #0 ; OS-9 service word $001E
db 0x22, 0x6E, 0xAA, 0x1A ; 00C2F6: provisional 68k movea.l -$55e6(a6), a1
db 0x0C, 0x41, 0xFF, 0x03 ; 00C2FA: provisional 68k cmpi.w #$ff03, d1
db 0x67, 0x04 ; 00C2FE: provisional 68k beq.b $c304
db 0x22, 0x6E, 0xAA, 0x1E ; 00C300: provisional 68k movea.l -$55e2(a6), a1
db 0x4E, 0x91 ; 00C304: provisional 68k jsr (a1)
db 0x60, 0xEA ; 00C306: provisional 68k bra.b $c2f2
db 0x08, 0x01, 0x00, 0x0E ; 00C308: provisional 68k btst.b #$e, d1
db 0x66, 0x0E ; 00C30C: provisional 68k bne.b $c31c
db 0xC2, 0x7C, 0x03, 0xFF ; 00C30E: provisional 68k and.w #$3ff, d1
db 0x22, 0x6E, 0xAA, 0x0E ; 00C312: provisional 68k movea.l -$55f2(a6), a1
db 0x4E, 0x91 ; 00C316: provisional 68k jsr (a1)
db 0x4E, 0x40, 0x00, 0x1E ; 00C318: provisional 68k trap #0 ; OS-9 service word $001E
db 0xC0, 0x7C, 0x00, 0x1F ; 00C31C: provisional 68k and.w #$1f, d0
db 0x22, 0x6E, 0xAA, 0x12 ; 00C320: provisional 68k movea.l -$55ee(a6), a1
db 0x4E, 0x91 ; 00C324: provisional 68k jsr (a1)
db 0x4E, 0x40, 0x00, 0x1E ; 00C326: provisional 68k trap #0 ; OS-9 service word $001E
