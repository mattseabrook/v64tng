; Linear entry 05E8D (1000:5e8d)
; Ghidra working symbol: FUN_1000_5e8d
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_05e8d_part_00 0
    %%fragment_start:
func_05e8d:
    %%insn_05e8d:
    push ax ; 05E8D 50
    %if ($ - %%insn_05e8d) > 1
        %error "LONG_05E8D"
    %endif
    times 1 - ($ - %%insn_05e8d) db 0
    %%insn_05e8e:
    mov ax,es ; 05E8E 8CC0
    %if ($ - %%insn_05e8e) > 2
        %error "LONG_05E8E"
    %endif
    times 2 - ($ - %%insn_05e8e) db 0
    db 0x23, 0xC0 ; 05E90 23C0 | and ax,ax | encoding preserved
    %%insn_05e92:
    jz short 0x5ea7 ; 05E92 7413
    %if ($ - %%insn_05e92) > 2
        %error "LONG_05E92"
    %endif
    times 2 - ($ - %%insn_05e92) db 0
    %%insn_05e94:
    mov ah,0x49 ; 05E94 B449
    %if ($ - %%insn_05e94) > 2
        %error "LONG_05E94"
    %endif
    times 2 - ($ - %%insn_05e94) db 0
    %%insn_05e96:
    int byte 0x21 ; 05E96 CD21
    %if ($ - %%insn_05e96) > 2
        %error "LONG_05E96"
    %endif
    times 2 - ($ - %%insn_05e96) db 0
    %%insn_05e98:
    jnc short 0x5ea3 ; 05E98 7309
    %if ($ - %%insn_05e98) > 2
        %error "LONG_05E98"
    %endif
    times 2 - ($ - %%insn_05e98) db 0
    %%insn_05e9a:
    mov bp,0x1 ; 05E9A BD0100
    %if ($ - %%insn_05e9a) > 3
        %error "LONG_05E9A"
    %endif
    times 3 - ($ - %%insn_05e9a) db 0
    %%insn_05e9d:
    mov ax,0xadc ; 05E9D B8DC0A
    %if ($ - %%insn_05e9d) > 3
        %error "LONG_05E9D"
    %endif
    times 3 - ($ - %%insn_05e9d) db 0
    %%insn_05ea0:
    jmp 0x5ced ; 05EA0 E94AFE
    %if ($ - %%insn_05ea0) > 3
        %error "LONG_05EA0"
    %endif
    times 3 - ($ - %%insn_05ea0) db 0
    db 0x33, 0xC0 ; 05EA3 33C0 | xor ax,ax | encoding preserved
    %%insn_05ea5:
    mov es,ax ; 05EA5 8EC0
    %if ($ - %%insn_05ea5) > 2
        %error "LONG_05EA5"
    %endif
    times 2 - ($ - %%insn_05ea5) db 0
    %%insn_05ea7:
    pop ax ; 05EA7 58
    %if ($ - %%insn_05ea7) > 1
        %error "LONG_05EA7"
    %endif
    times 1 - ($ - %%insn_05ea7) db 0
    %%insn_05ea8:
    ret ; 05EA8 C3
    %if ($ - %%insn_05ea8) > 1
        %error "LONG_05EA8"
    %endif
    times 1 - ($ - %%insn_05ea8) db 0
    %if ($ - %%fragment_start) != 28
        %error "SIZE_05E8D"
    %endif
%endmacro
