; Linear entry 06EB6 (1000:6eb6)
; Ghidra working symbol: FUN_1000_6eb6
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_06eb6_part_00 0
    %%fragment_start:
func_06eb6:
    %%insn_06eb6:
    cmp word [bp-0x2992],0x0 ; 06EB6 83BE6ED600
    %if ($ - %%insn_06eb6) > 5
        %error "LONG_06EB6"
    %endif
    times 5 - ($ - %%insn_06eb6) db 0
    %%insn_06ebb:
    jnz short 0x6ebe ; 06EBB 7501
    %if ($ - %%insn_06ebb) > 2
        %error "LONG_06EBB"
    %endif
    times 2 - ($ - %%insn_06ebb) db 0
    %%insn_06ebd:
    ret ; 06EBD C3
    %if ($ - %%insn_06ebd) > 1
        %error "LONG_06EBD"
    %endif
    times 1 - ($ - %%insn_06ebd) db 0
    %%insn_06ebe:
    mov ah,0x6 ; 06EBE B406
    %if ($ - %%insn_06ebe) > 2
        %error "LONG_06EBE"
    %endif
    times 2 - ($ - %%insn_06ebe) db 0
    %%insn_06ec0:
    call word far [cs:0x3688] ; 06EC0 2EFF1E8836
    %if ($ - %%insn_06ec0) > 5
        %error "LONG_06EC0"
    %endif
    times 5 - ($ - %%insn_06ec0) db 0
    %%insn_06ec5:
    mov dx,[bp-0xcf2] ; 06EC5 8B960EF3
    %if ($ - %%insn_06ec5) > 4
        %error "LONG_06EC5"
    %endif
    times 4 - ($ - %%insn_06ec5) db 0
    db 0x23, 0xD2 ; 06EC9 23D2 | and dx,dx | encoding preserved
    %%insn_06ecb:
    jz short 0x6ed8 ; 06ECB 740B
    %if ($ - %%insn_06ecb) > 2
        %error "LONG_06ECB"
    %endif
    times 2 - ($ - %%insn_06ecb) db 0
    %%insn_06ecd:
    mov ah,0xa ; 06ECD B40A
    %if ($ - %%insn_06ecd) > 2
        %error "LONG_06ECD"
    %endif
    times 2 - ($ - %%insn_06ecd) db 0
    %%insn_06ecf:
    call word far [cs:0x3688] ; 06ECF 2EFF1E8836
    %if ($ - %%insn_06ecf) > 5
        %error "LONG_06ECF"
    %endif
    times 5 - ($ - %%insn_06ecf) db 0
    db 0x0B, 0xC0 ; 06ED4 0BC0 | or ax,ax | encoding preserved
    %%insn_06ed6:
    jz short 0x6eb0 ; 06ED6 74D8
    %if ($ - %%insn_06ed6) > 2
        %error "LONG_06ED6"
    %endif
    times 2 - ($ - %%insn_06ed6) db 0
    %%insn_06ed8:
    ret ; 06ED8 C3
    %if ($ - %%insn_06ed8) > 1
        %error "LONG_06ED8"
    %endif
    times 1 - ($ - %%insn_06ed8) db 0
    %if ($ - %%fragment_start) != 35
        %error "SIZE_06EB6"
    %endif
%endmacro
