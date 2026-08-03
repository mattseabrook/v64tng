; Linear entry 02D5A (1000:2d5a)
; Ghidra working symbol: FUN_1000_2d5a
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_02d5a_part_00 0
    %%fragment_start:
func_02d5a:
    %%insn_02d5a:
    push ax ; 02D5A 50
    %if ($ - %%insn_02d5a) > 1
        %error "LONG_02D5A"
    %endif
    times 1 - ($ - %%insn_02d5a) db 0
    %%insn_02d5b:
    push ds ; 02D5B 1E
    %if ($ - %%insn_02d5b) > 1
        %error "LONG_02D5B"
    %endif
    times 1 - ($ - %%insn_02d5b) db 0
    %%insn_02d5c:
    mov ax,0x893 ; 02D5C B89308
    %if ($ - %%insn_02d5c) > 3
        %error "LONG_02D5C"
    %endif
    times 3 - ($ - %%insn_02d5c) db 0
    %%insn_02d5f:
    mov ds,ax ; 02D5F 8ED8
    %if ($ - %%insn_02d5f) > 2
        %error "LONG_02D5F"
    %endif
    times 2 - ($ - %%insn_02d5f) db 0
    %%insn_02d61:
    mov al,[bp-0x3076] ; 02D61 8A868ACF
    %if ($ - %%insn_02d61) > 4
        %error "LONG_02D61"
    %endif
    times 4 - ($ - %%insn_02d61) db 0
    db 0x32, 0xE4 ; 02D65 32E4 | xor ah,ah | encoding preserved
    %%insn_02d67:
    mov [ss:0xcf8a],ax ; 02D67 36A38ACF
    %if ($ - %%insn_02d67) > 4
        %error "LONG_02D67"
    %endif
    times 4 - ($ - %%insn_02d67) db 0
    %%insn_02d6b:
    cmp word [ss:0xd660],0x2f50 ; 02D6B 36813E60D6502F
    %if ($ - %%insn_02d6b) > 7
        %error "LONG_02D6B"
    %endif
    times 7 - ($ - %%insn_02d6b) db 0
    %%insn_02d72:
    jnz short 0x2d77 ; 02D72 7503
    %if ($ - %%insn_02d72) > 2
        %error "LONG_02D72"
    %endif
    times 2 - ($ - %%insn_02d72) db 0
    %%insn_02d74:
    call 0x2f6a ; 02D74 E8F301
    %if ($ - %%insn_02d74) > 3
        %error "LONG_02D74"
    %endif
    times 3 - ($ - %%insn_02d74) db 0
    %%insn_02d77:
    pop ds ; 02D77 1F
    %if ($ - %%insn_02d77) > 1
        %error "LONG_02D77"
    %endif
    times 1 - ($ - %%insn_02d77) db 0
    %%insn_02d78:
    pop ax ; 02D78 58
    %if ($ - %%insn_02d78) > 1
        %error "LONG_02D78"
    %endif
    times 1 - ($ - %%insn_02d78) db 0
    %%insn_02d79:
    ret ; 02D79 C3
    %if ($ - %%insn_02d79) > 1
        %error "LONG_02D79"
    %endif
    times 1 - ($ - %%insn_02d79) db 0
    %if ($ - %%fragment_start) != 32
        %error "SIZE_02D5A"
    %endif
%endmacro
