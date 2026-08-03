; Linear entry 03E85 (1000:3e85)
; Ghidra working symbol: FUN_1000_3e85
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_03e85_part_00 0
    %%fragment_start:
func_03e85:
    %%insn_03e85:
    mov bx,0xd8a1 ; 03E85 BBA1D8
    %if ($ - %%insn_03e85) > 3
        %error "LONG_03E85"
    %endif
    times 3 - ($ - %%insn_03e85) db 0
    %%insn_03e88:
    lodsb ; 03E88 AC
    %if ($ - %%insn_03e88) > 1
        %error "LONG_03E88"
    %endif
    times 1 - ($ - %%insn_03e88) db 0
    %%insn_03e89:
    mov [ss:bx],al ; 03E89 368807
    %if ($ - %%insn_03e89) > 3
        %error "LONG_03E89"
    %endif
    times 3 - ($ - %%insn_03e89) db 0
    %%insn_03e8c:
    inc bx ; 03E8C 43
    %if ($ - %%insn_03e8c) > 1
        %error "LONG_03E8C"
    %endif
    times 1 - ($ - %%insn_03e8c) db 0
    db 0x22, 0xC0 ; 03E8D 22C0 | and al,al | encoding preserved
    %%insn_03e8f:
    jnz short 0x3e88 ; 03E8F 75F7
    %if ($ - %%insn_03e8f) > 2
        %error "LONG_03E8F"
    %endif
    times 2 - ($ - %%insn_03e8f) db 0
    %%insn_03e91:
    mov [bp-0x2652],si ; 03E91 89B6AED9
    %if ($ - %%insn_03e91) > 4
        %error "LONG_03E91"
    %endif
    times 4 - ($ - %%insn_03e91) db 0
    %%insn_03e95:
    mov ax,[bp-0x21d9] ; 03E95 8B8627DE
    %if ($ - %%insn_03e95) > 4
        %error "LONG_03E95"
    %endif
    times 4 - ($ - %%insn_03e95) db 0
    %%insn_03e99:
    mov [bp-0x2654],ax ; 03E99 8986ACD9
    %if ($ - %%insn_03e99) > 4
        %error "LONG_03E99"
    %endif
    times 4 - ($ - %%insn_03e99) db 0
    %%insn_03e9d:
    push es ; 03E9D 06
    %if ($ - %%insn_03e9d) > 1
        %error "LONG_03E9D"
    %endif
    times 1 - ($ - %%insn_03e9d) db 0
    %%insn_03e9e:
    mov ds,word [bp-0x2aae] ; 03E9E 8E9E52D5
    %if ($ - %%insn_03e9e) > 4
        %error "LONG_03E9E"
    %endif
    times 4 - ($ - %%insn_03e9e) db 0
    %%insn_03ea2:
    mov es,word [bp-0x2aae] ; 03EA2 8E8652D5
    %if ($ - %%insn_03ea2) > 4
        %error "LONG_03EA2"
    %endif
    times 4 - ($ - %%insn_03ea2) db 0
    %%insn_03ea6:
    mov si,0xdca9 ; 03EA6 BEA9DC
    %if ($ - %%insn_03ea6) > 3
        %error "LONG_03EA6"
    %endif
    times 3 - ($ - %%insn_03ea6) db 0
    %%insn_03ea9:
    mov di,0xda22 ; 03EA9 BF22DA
    %if ($ - %%insn_03ea9) > 3
        %error "LONG_03EA9"
    %endif
    times 3 - ($ - %%insn_03ea9) db 0
    %%insn_03eac:
    mov cx,0x180 ; 03EAC B98001
    %if ($ - %%insn_03eac) > 3
        %error "LONG_03EAC"
    %endif
    times 3 - ($ - %%insn_03eac) db 0
    %%insn_03eaf:
    rep movsb ; 03EAF F3A4
    %if ($ - %%insn_03eaf) > 2
        %error "LONG_03EAF"
    %endif
    times 2 - ($ - %%insn_03eaf) db 0
    %%insn_03eb1:
    pop es ; 03EB1 07
    %if ($ - %%insn_03eb1) > 1
        %error "LONG_03EB1"
    %endif
    times 1 - ($ - %%insn_03eb1) db 0
    %%insn_03eb2:
    call 0x3a5b ; 03EB2 E8A6FB
    %if ($ - %%insn_03eb2) > 3
        %error "LONG_03EB2"
    %endif
    times 3 - ($ - %%insn_03eb2) db 0
    db 0x33, 0xF6 ; 03EB5 33F6 | xor si,si | encoding preserved
    %%insn_03eb7:
    ret ; 03EB7 C3
    %if ($ - %%insn_03eb7) > 1
        %error "LONG_03EB7"
    %endif
    times 1 - ($ - %%insn_03eb7) db 0
    %if ($ - %%fragment_start) != 51
        %error "SIZE_03E85"
    %endif
%endmacro
