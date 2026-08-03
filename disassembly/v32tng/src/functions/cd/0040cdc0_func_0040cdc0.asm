; PE virtual entry 0040CDC0
; Ghidra working symbol: FUN_0040cdc0
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040cdc0_part_00 0
    %%fragment_start:
func_0040cdc0:
    %%insn_0040cdc0:
    mov eax,[0x420f0c] ; 0040CDC0 A10C0F4200
    %if ($ - %%insn_0040cdc0) > 5
        %error "LONG_0040CDC0"
    %endif
    times 5 - ($ - %%insn_0040cdc0) db 0
    %%insn_0040cdc5:
    mov ecx,[esp+0x4] ; 0040CDC5 8B4C2404
    %if ($ - %%insn_0040cdc5) > 4
        %error "LONG_0040CDC5"
    %endif
    times 4 - ($ - %%insn_0040cdc5) db 0
    %%insn_0040cdc9:
    push eax ; 0040CDC9 50
    %if ($ - %%insn_0040cdc9) > 1
        %error "LONG_0040CDC9"
    %endif
    times 1 - ($ - %%insn_0040cdc9) db 0
    %%insn_0040cdca:
    push ecx ; 0040CDCA 51
    %if ($ - %%insn_0040cdca) > 1
        %error "LONG_0040CDCA"
    %endif
    times 1 - ($ - %%insn_0040cdca) db 0
    %%insn_0040cdcb:
    call 0x40cde0 ; 0040CDCB E810000000
    %if ($ - %%insn_0040cdcb) > 5
        %error "LONG_0040CDCB"
    %endif
    times 5 - ($ - %%insn_0040cdcb) db 0
    %%insn_0040cdd0:
    add esp,0x8 ; 0040CDD0 83C408
    %if ($ - %%insn_0040cdd0) > 3
        %error "LONG_0040CDD0"
    %endif
    times 3 - ($ - %%insn_0040cdd0) db 0
    %%insn_0040cdd3:
    ret ; 0040CDD3 C3
    %if ($ - %%insn_0040cdd3) > 1
        %error "LONG_0040CDD3"
    %endif
    times 1 - ($ - %%insn_0040cdd3) db 0
    %if ($ - %%fragment_start) != 20
        %error "function fragment size drift: 0040CDC0"
    %endif
%endmacro
