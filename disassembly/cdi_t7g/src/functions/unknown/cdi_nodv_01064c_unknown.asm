; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 01064C–01070D, inclusive.
cdi_nodv_entry_01064c:
db 0x36, 0x3C, 0x01, 0x2C ; 01064C: provisional 68k move.w #$12c, d3
db 0x48, 0x43 ; 010650: provisional 68k swap d3
db 0x36, 0x3C, 0x01, 0x2C ; 010652: provisional 68k move.w #$12c, d3
db 0x30, 0x2E, 0xAD, 0xA2 ; 010656: provisional 68k move.w -$525e(a6), d0
db 0x32, 0x3C, 0x00, 0x52 ; 01065A: provisional 68k move.w #$52, d1
db 0x34, 0x3C, 0x00, 0x00 ; 01065E: provisional 68k move.w #$0, d2
db 0x4E, 0x40, 0x00, 0x8E ; 010662: provisional 68k trap #0 ; OS-9 service word $008E
db 0x26, 0x3C, 0xFF, 0xFF, 0xFF, 0xFF ; 010666: provisional 68k move.l #$ffffffff, d3
db 0x30, 0x2E, 0xAD, 0xA2 ; 01066C: provisional 68k move.w -$525e(a6), d0
db 0x32, 0x3C, 0x00, 0x52 ; 010670: provisional 68k move.w #$52, d1
db 0x34, 0x3C, 0x00, 0x04 ; 010674: provisional 68k move.w #$4, d2
db 0x4E, 0x40, 0x00, 0x8E ; 010678: provisional 68k trap #0 ; OS-9 service word $008E
db 0x36, 0x3C, 0x00, 0x00 ; 01067C: provisional 68k move.w #$0, d3
db 0x48, 0x43 ; 010680: provisional 68k swap d3
db 0x36, 0x3C, 0x00, 0x00 ; 010682: provisional 68k move.w #$0, d3
db 0x30, 0x2E, 0xAD, 0xA2 ; 010686: provisional 68k move.w -$525e(a6), d0
db 0x32, 0x3C, 0x00, 0x52 ; 01068A: provisional 68k move.w #$52, d1
db 0x34, 0x3C, 0x00, 0x06 ; 01068E: provisional 68k move.w #$6, d2
db 0x4E, 0x40, 0x00, 0x8E ; 010692: provisional 68k trap #0 ; OS-9 service word $008E
db 0x41, 0xFA, 0x00, 0x32 ; 010696: provisional 68k lea.l $106ca(pc), a0
db 0x30, 0x2E, 0xAD, 0xA2 ; 01069A: provisional 68k move.w -$525e(a6), d0
db 0x32, 0x3C, 0x00, 0x52 ; 01069E: provisional 68k move.w #$52, d1
db 0x34, 0x3C, 0x00, 0x03 ; 0106A2: provisional 68k move.w #$3, d2
db 0x36, 0x3C, 0x00, 0x0E ; 0106A6: provisional 68k move.w #$e, d3
db 0x48, 0x43 ; 0106AA: provisional 68k swap d3
db 0x36, 0x3C, 0x00, 0x0E ; 0106AC: provisional 68k move.w #$e, d3
db 0x38, 0x3C, 0x00, 0x10 ; 0106B0: provisional 68k move.w #$10, d4
db 0x48, 0x44 ; 0106B4: provisional 68k swap d4
db 0x38, 0x3C, 0x00, 0x10 ; 0106B6: provisional 68k move.w #$10, d4
db 0x3A, 0x3C, 0x00, 0x00 ; 0106BA: provisional 68k move.w #$0, d5
db 0x20, 0x48 ; 0106BE: provisional 68k movea.l a0, a0
db 0x4E, 0x40, 0x00, 0x8E ; 0106C0: provisional 68k trap #0 ; OS-9 service word $008E
db 0x42, 0x6E, 0xC0, 0xEE ; 0106C4: provisional 68k clr.w -$3f12(a6)
db 0x4E, 0x75 ; 0106C8: provisional 68k rts 
db 0x01, 0x00 ; 0106CA: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 0106CC: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 0106CE: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 0106D0: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 0106D2: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 0106D4: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 0106D6: provisional 68k btst.l d0, d0
db 0xFF, 0xFF ; 0106D8: provisional 68k dc.w $ffff
db 0x01, 0x00 ; 0106DA: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 0106DC: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 0106DE: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 0106E0: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 0106E2: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 0106E4: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 0106E6: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 0106E8: provisional 68k btst.l d0, d0
db 0x61, 0x00, 0x01, 0xE8 ; 0106EA: provisional 68k bsr.w $108d4
db 0x61, 0x00, 0x03, 0x66 ; 0106EE: provisional 68k bsr.w $10a56
db 0x50, 0xE8, 0x00, 0x00 ; 0106F2: provisional 68k st.b $0(a0)
db 0x50, 0xE8, 0x00, 0x01 ; 0106F6: provisional 68k st.b $1(a0)
db 0x42, 0x6E, 0xCF, 0xD2 ; 0106FA: provisional 68k clr.w -$302e(a6)
db 0x42, 0x6E, 0xCF, 0xD4 ; 0106FE: provisional 68k clr.w -$302c(a6)
db 0x42, 0x6E, 0xCF, 0xD6 ; 010702: provisional 68k clr.w -$302a(a6)
db 0x4E, 0x75 ; 010706: provisional 68k rts 
db 0x50, 0xEE, 0xCF, 0xD6 ; 010708: provisional 68k st.b -$302a(a6)
db 0x4E, 0x75 ; 01070C: provisional 68k rts 
