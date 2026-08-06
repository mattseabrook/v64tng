; PE virtual entry 0040F620
; Ghidra working symbol: FUN_0040f620
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040f620_part_00 0
    %%fragment_start:
func_0040f620:
    %%insn_0040f620:
    mov eax,[esp+0x4] ; 0040F620 8B442404
    %if ($ - %%insn_0040f620) > 4
        %error "LONG_0040F620"
    %endif
    times 4 - ($ - %%insn_0040f620) db 0
    %%insn_0040f624:
    mov ecx,[eax] ; 0040F624 8B08
    %if ($ - %%insn_0040f624) > 2
        %error "LONG_0040F624"
    %endif
    times 2 - ($ - %%insn_0040f624) db 0
    %%insn_0040f626:
    add ecx,0x4 ; 0040F626 83C104
    %if ($ - %%insn_0040f626) > 3
        %error "LONG_0040F626"
    %endif
    times 3 - ($ - %%insn_0040f626) db 0
    %%insn_0040f629:
    mov [eax],ecx ; 0040F629 8908
    %if ($ - %%insn_0040f629) > 2
        %error "LONG_0040F629"
    %endif
    times 2 - ($ - %%insn_0040f629) db 0
    db 0x8B, 0xC1 ; 0040F62B 8BC1 | mov eax,ecx | encoding preserved
    %%insn_0040f62d:
    mov eax,[eax-0x4] ; 0040F62D 8B40FC
    %if ($ - %%insn_0040f62d) > 3
        %error "LONG_0040F62D"
    %endif
    times 3 - ($ - %%insn_0040f62d) db 0
    %%insn_0040f630:
    ret ; 0040F630 C3
    %if ($ - %%insn_0040f630) > 1
        %error "LONG_0040F630"
    %endif
    times 1 - ($ - %%insn_0040f630) db 0
    %if ($ - %%fragment_start) != 17
        %error "function fragment size drift: 0040F620"
    %endif
%endmacro
