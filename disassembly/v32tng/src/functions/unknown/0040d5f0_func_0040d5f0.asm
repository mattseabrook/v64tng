; PE virtual entry 0040D5F0
; Ghidra working symbol: FUN_0040d5f0
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040d5f0_part_00 0
    %%fragment_start:
func_0040d5f0:
    %%insn_0040d5f0:
    mov eax,[esp+0x4] ; 0040D5F0 8B442404
    %if ($ - %%insn_0040d5f0) > 4
        %error "LONG_0040D5F0"
    %endif
    times 4 - ($ - %%insn_0040d5f0) db 0
    %%insn_0040d5f4:
    push dword 0x0 ; 0040D5F4 6A00
    %if ($ - %%insn_0040d5f4) > 2
        %error "LONG_0040D5F4"
    %endif
    times 2 - ($ - %%insn_0040d5f4) db 0
    %%insn_0040d5f6:
    push dword 0x0 ; 0040D5F6 6A00
    %if ($ - %%insn_0040d5f6) > 2
        %error "LONG_0040D5F6"
    %endif
    times 2 - ($ - %%insn_0040d5f6) db 0
    %%insn_0040d5f8:
    push eax ; 0040D5F8 50
    %if ($ - %%insn_0040d5f8) > 1
        %error "LONG_0040D5F8"
    %endif
    times 1 - ($ - %%insn_0040d5f8) db 0
    %%insn_0040d5f9:
    call 0x40d650 ; 0040D5F9 E852000000
    %if ($ - %%insn_0040d5f9) > 5
        %error "LONG_0040D5F9"
    %endif
    times 5 - ($ - %%insn_0040d5f9) db 0
    %%insn_0040d5fe:
    add esp,0xc ; 0040D5FE 83C40C
    %if ($ - %%insn_0040d5fe) > 3
        %error "LONG_0040D5FE"
    %endif
    times 3 - ($ - %%insn_0040d5fe) db 0
    %%insn_0040d601:
    ret ; 0040D601 C3
    %if ($ - %%insn_0040d601) > 1
        %error "LONG_0040D601"
    %endif
    times 1 - ($ - %%insn_0040d601) db 0
    %if ($ - %%fragment_start) != 18
        %error "function fragment size drift: 0040D5F0"
    %endif
%endmacro
