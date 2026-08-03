; DOS GROOVIE Player V.EXE 1.30 -- complete lossless source root.
;
; Generated functions use real NASM instructions where NASM reproduces the
; original encoding. Noncanonical encodings and non-code bytes use explicit db.
; There are no imported executable byte ranges and no incbin directives.

bits 16

%include "src/functions/all.asm"
%include "src/data/gaps.asm"
%include "src/data/segments/all.asm"

section .header start=0 vstart=0 align=1
%include "src/header.asm"

; The MZ loader maps this section at runtime offset 0000h even though it follows
; the 512-byte header in the file. vstart keeps numeric near branches identical.
section .image follows=.header vstart=0 align=1
%include "src/layout.asm"
