; PE virtual entry 004127B0
; Ghidra working symbol: FUN_004127b0
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_004127b0_part_00 0
    %%fragment_start:
func_004127b0:
    %%insn_004127b0:
    mov eax,[esp+0x4] ; 004127B0 8B442404
    %if ($ - %%insn_004127b0) > 4
        %error "LONG_004127B0"
    %endif
    times 4 - ($ - %%insn_004127b0) db 0
    %%insn_004127b4:
    mov dword [eax+0x50],0x41e190 ; 004127B4 C7405090E14100
    %if ($ - %%insn_004127b4) > 7
        %error "LONG_004127B4"
    %endif
    times 7 - ($ - %%insn_004127b4) db 0
    %%insn_004127bb:
    mov dword [eax+0x14],0x1 ; 004127BB C7401401000000
    %if ($ - %%insn_004127bb) > 7
        %error "LONG_004127BB"
    %endif
    times 7 - ($ - %%insn_004127bb) db 0
    %%insn_004127c2:
    ret ; 004127C2 C3
    %if ($ - %%insn_004127c2) > 1
        %error "LONG_004127C2"
    %endif
    times 1 - ($ - %%insn_004127c2) db 0
    %if ($ - %%fragment_start) != 19
        %error "function fragment size drift: 004127B0"
    %endif
%endmacro
