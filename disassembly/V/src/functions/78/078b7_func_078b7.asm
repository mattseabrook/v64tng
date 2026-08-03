; Linear entry 078B7 (1702:0897)
; Ghidra working symbol: FUN_1702_0897
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_078b7_part_00 0
    %%fragment_start:
func_078b7:
    %%insn_078b7:
    push ds ; 078B7 1E
    %if ($ - %%insn_078b7) > 1
        %error "LONG_078B7"
    %endif
    times 1 - ($ - %%insn_078b7) db 0
    %%insn_078b8:
    push si ; 078B8 56
    %if ($ - %%insn_078b8) > 1
        %error "LONG_078B8"
    %endif
    times 1 - ($ - %%insn_078b8) db 0
    %%insn_078b9:
    push di ; 078B9 57
    %if ($ - %%insn_078b9) > 1
        %error "LONG_078B9"
    %endif
    times 1 - ($ - %%insn_078b9) db 0
    %%insn_078ba:
    pushf ; 078BA 9C
    %if ($ - %%insn_078ba) > 1
        %error "LONG_078BA"
    %endif
    times 1 - ($ - %%insn_078ba) db 0
    %%insn_078bb:
    cli ; 078BB FA
    %if ($ - %%insn_078bb) > 1
        %error "LONG_078BB"
    %endif
    times 1 - ($ - %%insn_078bb) db 0
    %%insn_078bc:
    mov si,0xf ; 078BC BE0F00
    %if ($ - %%insn_078bc) > 3
        %error "LONG_078BC"
    %endif
    times 3 - ($ - %%insn_078bc) db 0
    %%insn_078bf:
    push si ; 078BF 56
    %if ($ - %%insn_078bf) > 1
        %error "LONG_078BF"
    %endif
    times 1 - ($ - %%insn_078bf) db 0
    %%insn_078c0:
    push cs ; 078C0 0E
    %if ($ - %%insn_078c0) > 1
        %error "LONG_078C0"
    %endif
    times 1 - ($ - %%insn_078c0) db 0
    %%insn_078c1:
    call 0x786e ; 078C1 E8AAFF
    %if ($ - %%insn_078c1) > 3
        %error "LONG_078C1"
    %endif
    times 3 - ($ - %%insn_078c1) db 0
    %%insn_078c4:
    add sp,0x2 ; 078C4 83C402
    %if ($ - %%insn_078c4) > 3
        %error "LONG_078C4"
    %endif
    times 3 - ($ - %%insn_078c4) db 0
    %%insn_078c7:
    dec si ; 078C7 4E
    %if ($ - %%insn_078c7) > 1
        %error "LONG_078C7"
    %endif
    times 1 - ($ - %%insn_078c7) db 0
    %%insn_078c8:
    jnl short 0x78bf ; 078C8 7DF5
    %if ($ - %%insn_078c8) > 2
        %error "LONG_078C8"
    %endif
    times 2 - ($ - %%insn_078c8) db 0
    %%insn_078ca:
    db 0x80 ; 078CA 80
    %if ($ - %%insn_078ca) > 1
        %error "LONG_078CA"
    %endif
    times 1 - ($ - %%insn_078ca) db 0
    %if ($ - %%fragment_start) != 20
        %error "SIZE_078B7"
    %endif
%endmacro

%macro emit_func_078b7_part_01 0
    %%fragment_start:
    %%insn_078cc:
    add [0xfae8],cl ; 078CC 000EE8FA
    %if ($ - %%insn_078cc) > 4
        %error "LONG_078CC"
    %endif
    times 4 - ($ - %%insn_078cc) db 0
    %%insn_078d0:
    call word far [bx+0x5e] ; 078D0 FF5F5E
    %if ($ - %%insn_078d0) > 3
        %error "LONG_078D0"
    %endif
    times 3 - ($ - %%insn_078d0) db 0
    %%insn_078d3:
    pop ds ; 078D3 1F
    %if ($ - %%insn_078d3) > 1
        %error "LONG_078D3"
    %endif
    times 1 - ($ - %%insn_078d3) db 0
    %%insn_078d4:
    retf ; 078D4 CB
    %if ($ - %%insn_078d4) > 1
        %error "LONG_078D4"
    %endif
    times 1 - ($ - %%insn_078d4) db 0
    %if ($ - %%fragment_start) != 9
        %error "SIZE_078CC"
    %endif
%endmacro
