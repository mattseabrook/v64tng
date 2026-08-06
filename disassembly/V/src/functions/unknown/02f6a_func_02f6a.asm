; Linear entry 02F6A (1000:2f6a)
; Ghidra working symbol: FUN_1000_2f6a
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_02f6a_part_00 0
    %%fragment_start:
func_02f6a:
    %%insn_02f6a:
    push ax ; 02F6A 50
    %if ($ - %%insn_02f6a) > 1
        %error "LONG_02F6A"
    %endif
    times 1 - ($ - %%insn_02f6a) db 0
    %%insn_02f6b:
    push bx ; 02F6B 53
    %if ($ - %%insn_02f6b) > 1
        %error "LONG_02F6B"
    %endif
    times 1 - ($ - %%insn_02f6b) db 0
    %%insn_02f6c:
    push cx ; 02F6C 51
    %if ($ - %%insn_02f6c) > 1
        %error "LONG_02F6C"
    %endif
    times 1 - ($ - %%insn_02f6c) db 0
    %%insn_02f6d:
    push dx ; 02F6D 52
    %if ($ - %%insn_02f6d) > 1
        %error "LONG_02F6D"
    %endif
    times 1 - ($ - %%insn_02f6d) db 0
    %%insn_02f6e:
    mov cl,[0xd6b0] ; 02F6E 8A0EB0D6
    %if ($ - %%insn_02f6e) > 4
        %error "LONG_02F6E"
    %endif
    times 4 - ($ - %%insn_02f6e) db 0
    %%insn_02f72:
    shl ax,cl ; 02F72 D3E0
    %if ($ - %%insn_02f72) > 2
        %error "LONG_02F72"
    %endif
    times 2 - ($ - %%insn_02f72) db 0
    db 0x8B, 0xD0 ; 02F74 8BD0 | mov dx,ax | encoding preserved
    %%insn_02f76:
    mov bx,0x1 ; 02F76 BB0100
    %if ($ - %%insn_02f76) > 3
        %error "LONG_02F76"
    %endif
    times 3 - ($ - %%insn_02f76) db 0
    %%insn_02f79:
    call word far [ss:0xd664] ; 02F79 36FF1E64D6
    %if ($ - %%insn_02f79) > 5
        %error "LONG_02F79"
    %endif
    times 5 - ($ - %%insn_02f79) db 0
    %%insn_02f7e:
    pop dx ; 02F7E 5A
    %if ($ - %%insn_02f7e) > 1
        %error "LONG_02F7E"
    %endif
    times 1 - ($ - %%insn_02f7e) db 0
    %%insn_02f7f:
    pop cx ; 02F7F 59
    %if ($ - %%insn_02f7f) > 1
        %error "LONG_02F7F"
    %endif
    times 1 - ($ - %%insn_02f7f) db 0
    %%insn_02f80:
    pop bx ; 02F80 5B
    %if ($ - %%insn_02f80) > 1
        %error "LONG_02F80"
    %endif
    times 1 - ($ - %%insn_02f80) db 0
    %%insn_02f81:
    pop ax ; 02F81 58
    %if ($ - %%insn_02f81) > 1
        %error "LONG_02F81"
    %endif
    times 1 - ($ - %%insn_02f81) db 0
    %%insn_02f82:
    ret ; 02F82 C3
    %if ($ - %%insn_02f82) > 1
        %error "LONG_02F82"
    %endif
    times 1 - ($ - %%insn_02f82) db 0
    %if ($ - %%fragment_start) != 25
        %error "SIZE_02F6A"
    %endif
%endmacro
