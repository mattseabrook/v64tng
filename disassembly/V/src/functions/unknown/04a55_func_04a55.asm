; Linear entry 04A55 (1000:4a55)
; Ghidra working symbol: FUN_1000_4a55
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_04a55_part_00 0
    %%fragment_start:
func_04a55:
    %%insn_04a55:
    push cx ; 04A55 51
    %if ($ - %%insn_04a55) > 1
        %error "LONG_04A55"
    %endif
    times 1 - ($ - %%insn_04a55) db 0
    %%insn_04a56:
    push dx ; 04A56 52
    %if ($ - %%insn_04a56) > 1
        %error "LONG_04A56"
    %endif
    times 1 - ($ - %%insn_04a56) db 0
    db 0x33, 0xC0 ; 04A57 33C0 | xor ax,ax | encoding preserved
    db 0x32, 0xED ; 04A59 32ED | xor ch,ch | encoding preserved
    %%insn_04a5b:
    mov cl,[si] ; 04A5B 8A0C
    %if ($ - %%insn_04a5b) > 2
        %error "LONG_04A5B"
    %endif
    times 2 - ($ - %%insn_04a5b) db 0
    %%insn_04a5d:
    sub cl,0x30 ; 04A5D 80E930
    %if ($ - %%insn_04a5d) > 3
        %error "LONG_04A5D"
    %endif
    times 3 - ($ - %%insn_04a5d) db 0
    %%insn_04a60:
    cmp cl,0x9 ; 04A60 80F909
    %if ($ - %%insn_04a60) > 3
        %error "LONG_04A60"
    %endif
    times 3 - ($ - %%insn_04a60) db 0
    %%insn_04a63:
    jna short 0x4a68 ; 04A63 7603
    %if ($ - %%insn_04a63) > 2
        %error "LONG_04A63"
    %endif
    times 2 - ($ - %%insn_04a63) db 0
    %%insn_04a65:
    sub cl,0x11 ; 04A65 80E911
    %if ($ - %%insn_04a65) > 3
        %error "LONG_04A65"
    %endif
    times 3 - ($ - %%insn_04a65) db 0
    db 0x23, 0xC0 ; 04A68 23C0 | and ax,ax | encoding preserved
    %%insn_04a6a:
    jz short 0x4a6f ; 04A6A 7403
    %if ($ - %%insn_04a6a) > 2
        %error "LONG_04A6A"
    %endif
    times 2 - ($ - %%insn_04a6a) db 0
    %%insn_04a6c:
    shl ax,byte 0x4 ; 04A6C C1E004
    %if ($ - %%insn_04a6c) > 3
        %error "LONG_04A6C"
    %endif
    times 3 - ($ - %%insn_04a6c) db 0
    db 0x03, 0xC1 ; 04A6F 03C1 | add ax,cx | encoding preserved
    %%insn_04a71:
    inc si ; 04A71 46
    %if ($ - %%insn_04a71) > 1
        %error "LONG_04A71"
    %endif
    times 1 - ($ - %%insn_04a71) db 0
    %%insn_04a72:
    cmp byte [si],0x0 ; 04A72 803C00
    %if ($ - %%insn_04a72) > 3
        %error "LONG_04A72"
    %endif
    times 3 - ($ - %%insn_04a72) db 0
    %%insn_04a75:
    jnz short 0x4a5b ; 04A75 75E4
    %if ($ - %%insn_04a75) > 2
        %error "LONG_04A75"
    %endif
    times 2 - ($ - %%insn_04a75) db 0
    %%insn_04a77:
    pop dx ; 04A77 5A
    %if ($ - %%insn_04a77) > 1
        %error "LONG_04A77"
    %endif
    times 1 - ($ - %%insn_04a77) db 0
    %%insn_04a78:
    pop cx ; 04A78 59
    %if ($ - %%insn_04a78) > 1
        %error "LONG_04A78"
    %endif
    times 1 - ($ - %%insn_04a78) db 0
    %%insn_04a79:
    clc ; 04A79 F8
    %if ($ - %%insn_04a79) > 1
        %error "LONG_04A79"
    %endif
    times 1 - ($ - %%insn_04a79) db 0
    %%insn_04a7a:
    ret ; 04A7A C3
    %if ($ - %%insn_04a7a) > 1
        %error "LONG_04A7A"
    %endif
    times 1 - ($ - %%insn_04a7a) db 0
    %if ($ - %%fragment_start) != 38
        %error "SIZE_04A55"
    %endif
%endmacro
