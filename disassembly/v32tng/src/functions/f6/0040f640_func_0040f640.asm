; PE virtual entry 0040F640
; Ghidra working symbol: FUN_0040f640
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040f640_part_00 0
    %%fragment_start:
func_0040f640:
    %%insn_0040f640:
    mov eax,[esp+0x4] ; 0040F640 8B442404
    %if ($ - %%insn_0040f640) > 4
        %error "LONG_0040F640"
    %endif
    times 4 - ($ - %%insn_0040f640) db 0
    %%insn_0040f644:
    mov ecx,[eax] ; 0040F644 8B08
    %if ($ - %%insn_0040f644) > 2
        %error "LONG_0040F644"
    %endif
    times 2 - ($ - %%insn_0040f644) db 0
    %%insn_0040f646:
    add ecx,0x8 ; 0040F646 83C108
    %if ($ - %%insn_0040f646) > 3
        %error "LONG_0040F646"
    %endif
    times 3 - ($ - %%insn_0040f646) db 0
    %%insn_0040f649:
    mov [eax],ecx ; 0040F649 8908
    %if ($ - %%insn_0040f649) > 2
        %error "LONG_0040F649"
    %endif
    times 2 - ($ - %%insn_0040f649) db 0
    %%insn_0040f64b:
    mov eax,[ecx-0x8] ; 0040F64B 8B41F8
    %if ($ - %%insn_0040f64b) > 3
        %error "LONG_0040F64B"
    %endif
    times 3 - ($ - %%insn_0040f64b) db 0
    %%insn_0040f64e:
    mov edx,[ecx-0x4] ; 0040F64E 8B51FC
    %if ($ - %%insn_0040f64e) > 3
        %error "LONG_0040F64E"
    %endif
    times 3 - ($ - %%insn_0040f64e) db 0
    %%insn_0040f651:
    ret ; 0040F651 C3
    %if ($ - %%insn_0040f651) > 1
        %error "LONG_0040F651"
    %endif
    times 1 - ($ - %%insn_0040f651) db 0
    %if ($ - %%fragment_start) != 18
        %error "function fragment size drift: 0040F640"
    %endif
%endmacro
