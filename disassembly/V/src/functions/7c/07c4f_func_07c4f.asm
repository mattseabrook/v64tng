; Linear entry 07C4F (1702:0c2f)
; Ghidra working symbol: FUN_1702_0c2f
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_07c4f_part_00 0
    %%fragment_start:
func_07c4f:
    db 0x8B, 0xDC ; 07C4F 8BDC | mov bx,sp | encoding preserved
    %%insn_07c51:
    mov bx,[ss:bx+0x4] ; 07C51 368B5F04
    %if ($ - %%insn_07c51) > 4
        %error "LONG_07C51"
    %endif
    times 4 - ($ - %%insn_07c51) db 0
    %%insn_07c55:
    cmp bx,0x10 ; 07C55 83FB10
    %if ($ - %%insn_07c55) > 3
        %error "LONG_07C55"
    %endif
    times 3 - ($ - %%insn_07c55) db 0
    %%insn_07c58:
    jnc short 0x7c81 ; 07C58 7327
    %if ($ - %%insn_07c58) > 2
        %error "LONG_07C58"
    %endif
    times 2 - ($ - %%insn_07c58) db 0
    %%insn_07c5a:
    shl bx,1 ; 07C5A D1E3
    %if ($ - %%insn_07c5a) > 2
        %error "LONG_07C5A"
    %endif
    times 2 - ($ - %%insn_07c5a) db 0
    %%insn_07c5c:
    mov dx,0x0 ; 07C5C BA0000
    %if ($ - %%insn_07c5c) > 3
        %error "LONG_07C5C"
    %endif
    times 3 - ($ - %%insn_07c5c) db 0
    %%insn_07c5f:
    xchg dx,[cs:bx+0x18a] ; 07C5F 2E87978A01
    %if ($ - %%insn_07c5f) > 5
        %error "LONG_07C5F"
    %endif
    times 5 - ($ - %%insn_07c5f) db 0
    %%insn_07c64:
    cmp dx,0x0 ; 07C64 83FA00
    %if ($ - %%insn_07c64) > 3
        %error "LONG_07C64"
    %endif
    times 3 - ($ - %%insn_07c64) db 0
    %%insn_07c67:
    jz short 0x7c81 ; 07C67 7418
    %if ($ - %%insn_07c67) > 2
        %error "LONG_07C67"
    %endif
    times 2 - ($ - %%insn_07c67) db 0
    %%insn_07c69:
    mov dx,[cs:bx+0x16a] ; 07C69 2E8B976A01
    %if ($ - %%insn_07c69) > 5
        %error "LONG_07C69"
    %endif
    times 5 - ($ - %%insn_07c69) db 0
    %%insn_07c6e:
    cmp dx,0xffffffffffffffff ; 07C6E 83FAFF
    %if ($ - %%insn_07c6e) > 3
        %error "LONG_07C6E"
    %endif
    times 3 - ($ - %%insn_07c6e) db 0
    %%insn_07c71:
    jz short 0x7c7b ; 07C71 7408
    %if ($ - %%insn_07c71) > 2
        %error "LONG_07C71"
    %endif
    times 2 - ($ - %%insn_07c71) db 0
    %%insn_07c73:
    push dx ; 07C73 52
    %if ($ - %%insn_07c73) > 1
        %error "LONG_07C73"
    %endif
    times 1 - ($ - %%insn_07c73) db 0
    %%insn_07c74:
    push cs ; 07C74 0E
    %if ($ - %%insn_07c74) > 1
        %error "LONG_07C74"
    %endif
    times 1 - ($ - %%insn_07c74) db 0
    %%insn_07c75:
    call 0x786e ; 07C75 E8F6FB
    %if ($ - %%insn_07c75) > 3
        %error "LONG_07C75"
    %endif
    times 3 - ($ - %%insn_07c75) db 0
    %%insn_07c78:
    add sp,0x2 ; 07C78 83C402
    %if ($ - %%insn_07c78) > 3
        %error "LONG_07C78"
    %endif
    times 3 - ($ - %%insn_07c78) db 0
    %%insn_07c7b:
    mov ax,0x68 ; 07C7B B86800
    %if ($ - %%insn_07c7b) > 3
        %error "LONG_07C7B"
    %endif
    times 3 - ($ - %%insn_07c7b) db 0
    %%insn_07c7e:
    jmp 0x7418 ; 07C7E E997F7
    %if ($ - %%insn_07c7e) > 3
        %error "LONG_07C7E"
    %endif
    times 3 - ($ - %%insn_07c7e) db 0
    %%insn_07c81:
    retf ; 07C81 CB
    %if ($ - %%insn_07c81) > 1
        %error "LONG_07C81"
    %endif
    times 1 - ($ - %%insn_07c81) db 0
    %if ($ - %%fragment_start) != 51
        %error "SIZE_07C4F"
    %endif
%endmacro
