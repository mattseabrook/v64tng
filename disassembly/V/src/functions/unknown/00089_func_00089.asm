; Linear entry 00089 (1000:0089)
; Ghidra working symbol: FUN_1000_0089
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_00089_part_00 0
    %%fragment_start:
func_00089:
    %%insn_00089:
    pusha ; 00089 60
    %if ($ - %%insn_00089) > 1
        %error "LONG_00089"
    %endif
    times 1 - ($ - %%insn_00089) db 0
    %%insn_0008a:
    mov ax,[bp-0x2aac] ; 0008A 8B8654D5
    %if ($ - %%insn_0008a) > 4
        %error "LONG_0008A"
    %endif
    times 4 - ($ - %%insn_0008a) db 0
    db 0x23, 0xC0 ; 0008E 23C0 | and ax,ax | encoding preserved
    %%insn_00090:
    jnz short 0x98 ; 00090 7506
    %if ($ - %%insn_00090) > 2
        %error "LONG_00090"
    %endif
    times 2 - ($ - %%insn_00090) db 0
    %%insn_00092:
    mov bx,0x1000 ; 00092 BB0010
    %if ($ - %%insn_00092) > 3
        %error "LONG_00092"
    %endif
    times 3 - ($ - %%insn_00092) db 0
    %%insn_00095:
    call 0x5ec8 ; 00095 E8305E
    %if ($ - %%insn_00095) > 3
        %error "LONG_00095"
    %endif
    times 3 - ($ - %%insn_00095) db 0
    %%insn_00098:
    mov [bp-0x2aac],ax ; 00098 898654D5
    %if ($ - %%insn_00098) > 4
        %error "LONG_00098"
    %endif
    times 4 - ($ - %%insn_00098) db 0
    %%insn_0009c:
    mov ax,[bp-0x2ab2] ; 0009C 8B864ED5
    %if ($ - %%insn_0009c) > 4
        %error "LONG_0009C"
    %endif
    times 4 - ($ - %%insn_0009c) db 0
    db 0x23, 0xC0 ; 000A0 23C0 | and ax,ax | encoding preserved
    %%insn_000a2:
    jnz short 0xaa ; 000A2 7506
    %if ($ - %%insn_000a2) > 2
        %error "LONG_000A2"
    %endif
    times 2 - ($ - %%insn_000a2) db 0
    %%insn_000a4:
    mov bx,0x1000 ; 000A4 BB0010
    %if ($ - %%insn_000a4) > 3
        %error "LONG_000A4"
    %endif
    times 3 - ($ - %%insn_000a4) db 0
    %%insn_000a7:
    call 0x5ec8 ; 000A7 E81E5E
    %if ($ - %%insn_000a7) > 3
        %error "LONG_000A7"
    %endif
    times 3 - ($ - %%insn_000a7) db 0
    %%insn_000aa:
    mov [bp-0x2ab2],ax ; 000AA 89864ED5
    %if ($ - %%insn_000aa) > 4
        %error "LONG_000AA"
    %endif
    times 4 - ($ - %%insn_000aa) db 0
    %%insn_000ae:
    mov word [bp-0x2b78],0x0 ; 000AE C78688D40000
    %if ($ - %%insn_000ae) > 6
        %error "LONG_000AE"
    %endif
    times 6 - ($ - %%insn_000ae) db 0
    %%insn_000b4:
    mov word [bp-0x2b76],0x0 ; 000B4 C7868AD40000
    %if ($ - %%insn_000b4) > 6
        %error "LONG_000B4"
    %endif
    times 6 - ($ - %%insn_000b4) db 0
    %%insn_000ba:
    mov word [bp-0x2b74],0x0 ; 000BA C7868CD40000
    %if ($ - %%insn_000ba) > 6
        %error "LONG_000BA"
    %endif
    times 6 - ($ - %%insn_000ba) db 0
    %%insn_000c0:
    mov word [bp-0x30a6],0x0 ; 000C0 C7865ACF0000
    %if ($ - %%insn_000c0) > 6
        %error "LONG_000C0"
    %endif
    times 6 - ($ - %%insn_000c0) db 0
    %%insn_000c6:
    mov word [bp-0x30ca],0x0 ; 000C6 C78636CF0000
    %if ($ - %%insn_000c6) > 6
        %error "LONG_000C6"
    %endif
    times 6 - ($ - %%insn_000c6) db 0
    %%insn_000cc:
    call 0xd1 ; 000CC E80200
    %if ($ - %%insn_000cc) > 3
        %error "LONG_000CC"
    %endif
    times 3 - ($ - %%insn_000cc) db 0
    %%insn_000cf:
    popa ; 000CF 61
    %if ($ - %%insn_000cf) > 1
        %error "LONG_000CF"
    %endif
    times 1 - ($ - %%insn_000cf) db 0
    %%insn_000d0:
    ret ; 000D0 C3
    %if ($ - %%insn_000d0) > 1
        %error "LONG_000D0"
    %endif
    times 1 - ($ - %%insn_000d0) db 0
    %if ($ - %%fragment_start) != 72
        %error "SIZE_00089"
    %endif
%endmacro
