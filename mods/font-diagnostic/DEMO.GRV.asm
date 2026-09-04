; The 7th Guest DOS/Win32 GRV font diagnostic.
;
; SPHINX.FNT contains a 128-byte character map followed by 37 unique glyph
; records: digits 0-9, letters A-Z, and the blank/default glyph.  Retail GRV
; opcode 3Ah can render at most 14 characters, always centered in the 80-pixel
; top band, so the complete unique glyph set is displayed in three pages.

bits 16
org 0

%define OP_RESERVED_01          0x01
%define OP_FIRSTFRAME_NEXT_VIDEO 0x05
%define OP_VIDEOREF             0x09
%define OP_JMP                  0x15
%define OP_SLEEP                0x19
%define OP_PRINTSTRING          0x3a

start:
    db OP_RESERVED_01

    ; Decode the first frame of HDISK[2]=title.vdx before drawing text.  This
    ; establishes a known indexed palette/background without playing the full
    ; title animation.
    db OP_FIRSTFRAME_NEXT_VIDEO
    db OP_VIDEOREF
    dw 0x1c02

page_digits_and_abcd:
    db OP_PRINTSTRING
    db '0123456789ABC', ('D' | 0x80)
    db OP_SLEEP
    dw 500

page_e_through_r:
    db OP_PRINTSTRING
    db 'EFGHIJKLMNOPQ', ('R' | 0x80)
    db OP_SLEEP
    dw 500

page_s_through_z_and_blank:
    db OP_PRINTSTRING
    db 'STUVWXYZ', (' ' | 0x80)
    db OP_SLEEP
    dw 500

    db OP_JMP
    dw page_digits_and_abcd

