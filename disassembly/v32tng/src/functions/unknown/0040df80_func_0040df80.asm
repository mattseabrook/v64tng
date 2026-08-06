; PE virtual entry 0040DF80
; Ghidra working symbol: FUN_0040df80
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040df80_part_00 0
    %%fragment_start:
func_0040df80:
    %%insn_0040df80:
    push ebp ; 0040DF80 55
    %if ($ - %%insn_0040df80) > 1
        %error "LONG_0040DF80"
    %endif
    times 1 - ($ - %%insn_0040df80) db 0
    db 0x8B, 0xEC ; 0040DF81 8BEC | mov ebp,esp | encoding preserved
    %%insn_0040df83:
    mov eax,[ebp+0x8] ; 0040DF83 8B4508
    %if ($ - %%insn_0040df83) > 3
        %error "LONG_0040DF83"
    %endif
    times 3 - ($ - %%insn_0040df83) db 0
    %%insn_0040df86:
    mov ecx,[eax*4+0x41bda0] ; 0040DF86 8B0C85A0BD4100
    %if ($ - %%insn_0040df86) > 7
        %error "LONG_0040DF86"
    %endif
    times 7 - ($ - %%insn_0040df86) db 0
    %%insn_0040df8d:
    push ecx ; 0040DF8D 51
    %if ($ - %%insn_0040df8d) > 1
        %error "LONG_0040DF8D"
    %endif
    times 1 - ($ - %%insn_0040df8d) db 0
    %%insn_0040df8e:
    call dword near [0x4243f4] ; 0040DF8E FF15F4434200
    %if ($ - %%insn_0040df8e) > 6
        %error "LONG_0040DF8E"
    %endif
    times 6 - ($ - %%insn_0040df8e) db 0
    %%insn_0040df94:
    pop ebp ; 0040DF94 5D
    %if ($ - %%insn_0040df94) > 1
        %error "LONG_0040DF94"
    %endif
    times 1 - ($ - %%insn_0040df94) db 0
    %%insn_0040df95:
    ret ; 0040DF95 C3
    %if ($ - %%insn_0040df95) > 1
        %error "LONG_0040DF95"
    %endif
    times 1 - ($ - %%insn_0040df95) db 0
    %if ($ - %%fragment_start) != 22
        %error "function fragment size drift: 0040DF80"
    %endif
%endmacro
