; Linear entry 0020A (1000:020a)
; Ghidra working symbol: FUN_1000_020a
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_0020a_part_00 0
    %%fragment_start:
func_0020a:
    %%insn_0020a:
    cmp word [bp-0x30d2],0x0 ; 0020A 83BE2ECF00
    %if ($ - %%insn_0020a) > 5
        %error "LONG_0020A"
    %endif
    times 5 - ($ - %%insn_0020a) db 0
    %%insn_0020f:
    jnz short 0x21a ; 0020F 7509
    %if ($ - %%insn_0020f) > 2
        %error "LONG_0020F"
    %endif
    times 2 - ($ - %%insn_0020f) db 0
    %%insn_00211:
    mov bx,[bp-0x2b82] ; 00211 8B9E7ED4
    %if ($ - %%insn_00211) > 4
        %error "LONG_00211"
    %endif
    times 4 - ($ - %%insn_00211) db 0
    %%insn_00215:
    mov ax,0x3e00 ; 00215 B8003E
    %if ($ - %%insn_00215) > 3
        %error "LONG_00215"
    %endif
    times 3 - ($ - %%insn_00215) db 0
    %%insn_00218:
    int byte 0x21 ; 00218 CD21
    %if ($ - %%insn_00218) > 2
        %error "LONG_00218"
    %endif
    times 2 - ($ - %%insn_00218) db 0
    %%insn_0021a:
    ret ; 0021A C3
    %if ($ - %%insn_0021a) > 1
        %error "LONG_0021A"
    %endif
    times 1 - ($ - %%insn_0021a) db 0
    %if ($ - %%fragment_start) != 17
        %error "SIZE_0020A"
    %endif
%endmacro
