; PE virtual entry 0040C0BB
; Ghidra working symbol: FUN_0040c0bb
; Verified 77h VDX chunk wrapper around the shared LZSS decoder; returns the reusable output buffer and records its decoded length.
; Generated losslessly; preserve byte identity after edits.

%macro emit_decompress_vdx_chunk_part_00 0
    %%fragment_start:
decompress_vdx_chunk:
    %%insn_0040c0bb:
    push ebp ; 0040C0BB 55
    %if ($ - %%insn_0040c0bb) > 1
        %error "LONG_0040C0BB"
    %endif
    times 1 - ($ - %%insn_0040c0bb) db 0
    db 0x8B, 0xEC ; 0040C0BC 8BEC | mov ebp,esp | encoding preserved
    %%insn_0040c0be:
    mov ax,[ebp+0x10] ; 0040C0BE 668B4510
    %if ($ - %%insn_0040c0be) > 4
        %error "LONG_0040C0BE"
    %endif
    times 4 - ($ - %%insn_0040c0be) db 0
    %%insn_0040c0c2:
    push eax ; 0040C0C2 50
    %if ($ - %%insn_0040c0c2) > 1
        %error "LONG_0040C0C2"
    %endif
    times 1 - ($ - %%insn_0040c0c2) db 0
    %%insn_0040c0c3:
    mov cx,[ebp+0xc] ; 0040C0C3 668B4D0C
    %if ($ - %%insn_0040c0c3) > 4
        %error "LONG_0040C0C3"
    %endif
    times 4 - ($ - %%insn_0040c0c3) db 0
    %%insn_0040c0c7:
    push ecx ; 0040C0C7 51
    %if ($ - %%insn_0040c0c7) > 1
        %error "LONG_0040C0C7"
    %endif
    times 1 - ($ - %%insn_0040c0c7) db 0
    %%insn_0040c0c8:
    mov edx,[0x420a28] ; 0040C0C8 8B15280A4200
    %if ($ - %%insn_0040c0c8) > 6
        %error "LONG_0040C0C8"
    %endif
    times 6 - ($ - %%insn_0040c0c8) db 0
    %%insn_0040c0ce:
    push edx ; 0040C0CE 52
    %if ($ - %%insn_0040c0ce) > 1
        %error "LONG_0040C0CE"
    %endif
    times 1 - ($ - %%insn_0040c0ce) db 0
    %%insn_0040c0cf:
    mov eax,[ebp+0x8] ; 0040C0CF 8B4508
    %if ($ - %%insn_0040c0cf) > 3
        %error "LONG_0040C0CF"
    %endif
    times 3 - ($ - %%insn_0040c0cf) db 0
    %%insn_0040c0d2:
    push eax ; 0040C0D2 50
    %if ($ - %%insn_0040c0d2) > 1
        %error "LONG_0040C0D2"
    %endif
    times 1 - ($ - %%insn_0040c0d2) db 0
    %%insn_0040c0d3:
    call 0x408a80 ; 0040C0D3 E8A8C9FFFF
    %if ($ - %%insn_0040c0d3) > 5
        %error "LONG_0040C0D3"
    %endif
    times 5 - ($ - %%insn_0040c0d3) db 0
    %%insn_0040c0d8:
    add esp,0x10 ; 0040C0D8 83C410
    %if ($ - %%insn_0040c0d8) > 3
        %error "LONG_0040C0D8"
    %endif
    times 3 - ($ - %%insn_0040c0d8) db 0
    %%insn_0040c0db:
    mov ecx,[ebp+0x14] ; 0040C0DB 8B4D14
    %if ($ - %%insn_0040c0db) > 3
        %error "LONG_0040C0DB"
    %endif
    times 3 - ($ - %%insn_0040c0db) db 0
    %%insn_0040c0de:
    mov [ecx],eax ; 0040C0DE 8901
    %if ($ - %%insn_0040c0de) > 2
        %error "LONG_0040C0DE"
    %endif
    times 2 - ($ - %%insn_0040c0de) db 0
    %%insn_0040c0e0:
    mov eax,[0x420a28] ; 0040C0E0 A1280A4200
    %if ($ - %%insn_0040c0e0) > 5
        %error "LONG_0040C0E0"
    %endif
    times 5 - ($ - %%insn_0040c0e0) db 0
    %%insn_0040c0e5:
    pop ebp ; 0040C0E5 5D
    %if ($ - %%insn_0040c0e5) > 1
        %error "LONG_0040C0E5"
    %endif
    times 1 - ($ - %%insn_0040c0e5) db 0
    %%insn_0040c0e6:
    ret ; 0040C0E6 C3
    %if ($ - %%insn_0040c0e6) > 1
        %error "LONG_0040C0E6"
    %endif
    times 1 - ($ - %%insn_0040c0e6) db 0
    %if ($ - %%fragment_start) != 44
        %error "function fragment size drift: 0040C0BB"
    %endif
%endmacro
