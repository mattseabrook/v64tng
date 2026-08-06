; PE virtual entry 0040DFE0
; Ghidra working symbol: FUN_0040dfe0
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040dfe0_part_00 0
    %%fragment_start:
func_0040dfe0:
    %%insn_0040dfe0:
    push ebp ; 0040DFE0 55
    %if ($ - %%insn_0040dfe0) > 1
        %error "LONG_0040DFE0"
    %endif
    times 1 - ($ - %%insn_0040dfe0) db 0
    db 0x8B, 0xEC ; 0040DFE1 8BEC | mov ebp,esp | encoding preserved
    %%insn_0040dfe3:
    mov eax,[ebp+0x8] ; 0040DFE3 8B4508
    %if ($ - %%insn_0040dfe3) > 3
        %error "LONG_0040DFE3"
    %endif
    times 3 - ($ - %%insn_0040dfe3) db 0
    %%insn_0040dfe6:
    cmp eax,0x14 ; 0040DFE6 83F814
    %if ($ - %%insn_0040dfe6) > 3
        %error "LONG_0040DFE6"
    %endif
    times 3 - ($ - %%insn_0040dfe6) db 0
    %%insn_0040dfe9:
    jnl short 0x40dff9 ; 0040DFE9 7D0E
    %if ($ - %%insn_0040dfe9) > 2
        %error "LONG_0040DFE9"
    %endif
    times 2 - ($ - %%insn_0040dfe9) db 0
    %%insn_0040dfeb:
    add eax,0x1c ; 0040DFEB 83C01C
    %if ($ - %%insn_0040dfeb) > 3
        %error "LONG_0040DFEB"
    %endif
    times 3 - ($ - %%insn_0040dfeb) db 0
    %%insn_0040dfee:
    push eax ; 0040DFEE 50
    %if ($ - %%insn_0040dfee) > 1
        %error "LONG_0040DFEE"
    %endif
    times 1 - ($ - %%insn_0040dfee) db 0
    %%insn_0040dfef:
    call 0x40df00 ; 0040DFEF E80CFFFFFF
    %if ($ - %%insn_0040dfef) > 5
        %error "LONG_0040DFEF"
    %endif
    times 5 - ($ - %%insn_0040dfef) db 0
    %%insn_0040dff4:
    add esp,0x4 ; 0040DFF4 83C404
    %if ($ - %%insn_0040dff4) > 3
        %error "LONG_0040DFF4"
    %endif
    times 3 - ($ - %%insn_0040dff4) db 0
    %%insn_0040dff7:
    pop ebp ; 0040DFF7 5D
    %if ($ - %%insn_0040dff7) > 1
        %error "LONG_0040DFF7"
    %endif
    times 1 - ($ - %%insn_0040dff7) db 0
    %%insn_0040dff8:
    ret ; 0040DFF8 C3
    %if ($ - %%insn_0040dff8) > 1
        %error "LONG_0040DFF8"
    %endif
    times 1 - ($ - %%insn_0040dff8) db 0
    %%insn_0040dff9:
    mov eax,[ebp+0xc] ; 0040DFF9 8B450C
    %if ($ - %%insn_0040dff9) > 3
        %error "LONG_0040DFF9"
    %endif
    times 3 - ($ - %%insn_0040dff9) db 0
    %%insn_0040dffc:
    add eax,0x20 ; 0040DFFC 83C020
    %if ($ - %%insn_0040dffc) > 3
        %error "LONG_0040DFFC"
    %endif
    times 3 - ($ - %%insn_0040dffc) db 0
    %%insn_0040dfff:
    push eax ; 0040DFFF 50
    %if ($ - %%insn_0040dfff) > 1
        %error "LONG_0040DFFF"
    %endif
    times 1 - ($ - %%insn_0040dfff) db 0
    %%insn_0040e000:
    call dword near [0x4243f8] ; 0040E000 FF15F8434200
    %if ($ - %%insn_0040e000) > 6
        %error "LONG_0040E000"
    %endif
    times 6 - ($ - %%insn_0040e000) db 0
    %%insn_0040e006:
    pop ebp ; 0040E006 5D
    %if ($ - %%insn_0040e006) > 1
        %error "LONG_0040E006"
    %endif
    times 1 - ($ - %%insn_0040e006) db 0
    %%insn_0040e007:
    ret ; 0040E007 C3
    %if ($ - %%insn_0040e007) > 1
        %error "LONG_0040E007"
    %endif
    times 1 - ($ - %%insn_0040e007) db 0
    %if ($ - %%fragment_start) != 40
        %error "function fragment size drift: 0040DFE0"
    %endif
%endmacro
