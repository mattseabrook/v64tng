; v32tng.exe 1.02b1 -- canonical reconstruction root.
;
; Verified functions are ordinary NASM source. Unknown material remains an
; explicit incbin frontier copied from the immutable, hash-checked reference.

bits 32

%ifndef REFERENCE_FILE
    %error "REFERENCE_FILE must name the original v32tng.exe"
%endif

; For .text, virtual_address = raw_file_offset + 00400C00h.
; This lets ordinary absolute labels and relative CALL/JMP instructions in the
; recovered code assemble at their original Win32 virtual addresses.
org 0x00400C00

%include "src/layout/headers.asm"
%include "src/layout/text.asm"
%include "src/layout/rdata.asm"
%include "src/layout/data.asm"
%include "src/layout/imports.asm"
%include "src/layout/resources.asm"
%include "src/layout/relocations.asm"
%include "src/layout/debug_tail.asm"
