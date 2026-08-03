; .text raw 00000400h..00018BFFh, RVA 00001000h.
;
; The two source islands below are the first verified Win32 frontier:
;   00408DF6..00408EB6  loose VDX open, magic check, game/VDX dispatch
;   0040977B..0040984F  WinMain argument handling and message loop

incbin REFERENCE_FILE, 0x00400, 0x081F6 - 0x00400
%include "src/media/loose_vdx_dispatch.asm"
incbin REFERENCE_FILE, 0x082B7, 0x08B7B - 0x082B7
%include "src/platform/winmain.asm"
incbin REFERENCE_FILE, 0x08C50, 0x18C00 - 0x08C50
