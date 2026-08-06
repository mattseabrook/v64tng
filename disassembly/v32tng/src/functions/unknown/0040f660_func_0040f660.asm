; PE virtual entry 0040F660
; Ghidra working symbol: FUN_0040f660
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040f660_part_00 0
    %%fragment_start:
func_0040f660:
    %%insn_0040f660:
    mov eax,[esp+0x4] ; 0040F660 8B442404
    %if ($ - %%insn_0040f660) > 4
        %error "LONG_0040F660"
    %endif
    times 4 - ($ - %%insn_0040f660) db 0
    %%insn_0040f664:
    mov ecx,[eax] ; 0040F664 8B08
    %if ($ - %%insn_0040f664) > 2
        %error "LONG_0040F664"
    %endif
    times 2 - ($ - %%insn_0040f664) db 0
    %%insn_0040f666:
    add ecx,0x4 ; 0040F666 83C104
    %if ($ - %%insn_0040f666) > 3
        %error "LONG_0040F666"
    %endif
    times 3 - ($ - %%insn_0040f666) db 0
    %%insn_0040f669:
    mov [eax],ecx ; 0040F669 8908
    %if ($ - %%insn_0040f669) > 2
        %error "LONG_0040F669"
    %endif
    times 2 - ($ - %%insn_0040f669) db 0
    db 0x8B, 0xC1 ; 0040F66B 8BC1 | mov eax,ecx | encoding preserved
    %%insn_0040f66d:
    mov ax,[eax-0x4] ; 0040F66D 668B40FC
    %if ($ - %%insn_0040f66d) > 4
        %error "LONG_0040F66D"
    %endif
    times 4 - ($ - %%insn_0040f66d) db 0
    %%insn_0040f671:
    ret ; 0040F671 C3
    %if ($ - %%insn_0040f671) > 1
        %error "LONG_0040F671"
    %endif
    times 1 - ($ - %%insn_0040f671) db 0
    %if ($ - %%fragment_start) != 18
        %error "function fragment size drift: 0040F660"
    %endif
%endmacro
