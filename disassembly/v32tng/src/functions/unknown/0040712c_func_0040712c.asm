; PE virtual entry 0040712C
; Ghidra working symbol: FUN_0040712c
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040712c_part_00 0
    %%fragment_start:
func_0040712c:
    %%insn_0040712c:
    push ebp ; 0040712C 55
    %if ($ - %%insn_0040712c) > 1
        %error "LONG_0040712C"
    %endif
    times 1 - ($ - %%insn_0040712c) db 0
    db 0x8B, 0xEC ; 0040712D 8BEC | mov ebp,esp | encoding preserved
    %%insn_0040712f:
    cmp dword [0x421448],0x0 ; 0040712F 833D4814420000
    %if ($ - %%insn_0040712f) > 7
        %error "LONG_0040712F"
    %endif
    times 7 - ($ - %%insn_0040712f) db 0
    %%insn_00407136:
    jz short 0x407144 ; 00407136 740C
    %if ($ - %%insn_00407136) > 2
        %error "LONG_00407136"
    %endif
    times 2 - ($ - %%insn_00407136) db 0
    %%insn_00407138:
    mov eax,[0x421448] ; 00407138 A148144200
    %if ($ - %%insn_00407138) > 5
        %error "LONG_00407138"
    %endif
    times 5 - ($ - %%insn_00407138) db 0
    %%insn_0040713d:
    push eax ; 0040713D 50
    %if ($ - %%insn_0040713d) > 1
        %error "LONG_0040713D"
    %endif
    times 1 - ($ - %%insn_0040713d) db 0
    %%insn_0040713e:
    call dword near [0x4245e4] ; 0040713E FF15E4454200
    %if ($ - %%insn_0040713e) > 6
        %error "LONG_0040713E"
    %endif
    times 6 - ($ - %%insn_0040713e) db 0
    %%insn_00407144:
    pop ebp ; 00407144 5D
    %if ($ - %%insn_00407144) > 1
        %error "LONG_00407144"
    %endif
    times 1 - ($ - %%insn_00407144) db 0
    %%insn_00407145:
    ret ; 00407145 C3
    %if ($ - %%insn_00407145) > 1
        %error "LONG_00407145"
    %endif
    times 1 - ($ - %%insn_00407145) db 0
    %if ($ - %%fragment_start) != 26
        %error "function fragment size drift: 0040712C"
    %endif
%endmacro
