; v32tng.exe 1.02b1 -- complete lossless PE source root.
;
; Functions use NASM instructions where NASM reproduces the original encoding.
; Noncanonical encodings and non-code bytes use explicit db. No executable byte
; range is imported and there are no incbin directives.

bits 32

%include "src/functions/all.asm"
%include "src/data/chunks/all.asm"

; File offset 0400h is .text VA 00401000h. This flat-file origin therefore
; gives analyzer-owned .text labels their original PE virtual addresses.
org 0x00400C00

%include "src/layout.asm"
