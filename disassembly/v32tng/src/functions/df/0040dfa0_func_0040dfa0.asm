; PE virtual entry 0040DFA0
; Ghidra working symbol: FUN_0040dfa0
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040dfa0_part_00 0
    %%fragment_start:
func_0040dfa0:
    %%insn_0040dfa0:
    push ebp ; 0040DFA0 55
    %if ($ - %%insn_0040dfa0) > 1
        %error "LONG_0040DFA0"
    %endif
    times 1 - ($ - %%insn_0040dfa0) db 0
    db 0x8B, 0xEC ; 0040DFA1 8BEC | mov ebp,esp | encoding preserved
    %%insn_0040dfa3:
    mov eax,[ebp+0x8] ; 0040DFA3 8B4508
    %if ($ - %%insn_0040dfa3) > 3
        %error "LONG_0040DFA3"
    %endif
    times 3 - ($ - %%insn_0040dfa3) db 0
    %%insn_0040dfa6:
    cmp eax,0x41e3a8 ; 0040DFA6 3DA8E34100
    %if ($ - %%insn_0040dfa6) > 5
        %error "LONG_0040DFA6"
    %endif
    times 5 - ($ - %%insn_0040dfa6) db 0
    %%insn_0040dfab:
    jc short 0x40dfca ; 0040DFAB 721D
    %if ($ - %%insn_0040dfab) > 2
        %error "LONG_0040DFAB"
    %endif
    times 2 - ($ - %%insn_0040dfab) db 0
    %%insn_0040dfad:
    cmp eax,0x41e608 ; 0040DFAD 3D08E64100
    %if ($ - %%insn_0040dfad) > 5
        %error "LONG_0040DFAD"
    %endif
    times 5 - ($ - %%insn_0040dfad) db 0
    %%insn_0040dfb2:
    ja short 0x40dfca ; 0040DFB2 7716
    %if ($ - %%insn_0040dfb2) > 2
        %error "LONG_0040DFB2"
    %endif
    times 2 - ($ - %%insn_0040dfb2) db 0
    %%insn_0040dfb4:
    sub eax,0x41e3a8 ; 0040DFB4 2DA8E34100
    %if ($ - %%insn_0040dfb4) > 5
        %error "LONG_0040DFB4"
    %endif
    times 5 - ($ - %%insn_0040dfb4) db 0
    %%insn_0040dfb9:
    sar eax,byte 0x5 ; 0040DFB9 C1F805
    %if ($ - %%insn_0040dfb9) > 3
        %error "LONG_0040DFB9"
    %endif
    times 3 - ($ - %%insn_0040dfb9) db 0
    %%insn_0040dfbc:
    add eax,0x1c ; 0040DFBC 83C01C
    %if ($ - %%insn_0040dfbc) > 3
        %error "LONG_0040DFBC"
    %endif
    times 3 - ($ - %%insn_0040dfbc) db 0
    %%insn_0040dfbf:
    push eax ; 0040DFBF 50
    %if ($ - %%insn_0040dfbf) > 1
        %error "LONG_0040DFBF"
    %endif
    times 1 - ($ - %%insn_0040dfbf) db 0
    %%insn_0040dfc0:
    call 0x40df00 ; 0040DFC0 E83BFFFFFF
    %if ($ - %%insn_0040dfc0) > 5
        %error "LONG_0040DFC0"
    %endif
    times 5 - ($ - %%insn_0040dfc0) db 0
    %%insn_0040dfc5:
    add esp,0x4 ; 0040DFC5 83C404
    %if ($ - %%insn_0040dfc5) > 3
        %error "LONG_0040DFC5"
    %endif
    times 3 - ($ - %%insn_0040dfc5) db 0
    %%insn_0040dfc8:
    pop ebp ; 0040DFC8 5D
    %if ($ - %%insn_0040dfc8) > 1
        %error "LONG_0040DFC8"
    %endif
    times 1 - ($ - %%insn_0040dfc8) db 0
    %%insn_0040dfc9:
    ret ; 0040DFC9 C3
    %if ($ - %%insn_0040dfc9) > 1
        %error "LONG_0040DFC9"
    %endif
    times 1 - ($ - %%insn_0040dfc9) db 0
    %%insn_0040dfca:
    add eax,0x20 ; 0040DFCA 83C020
    %if ($ - %%insn_0040dfca) > 3
        %error "LONG_0040DFCA"
    %endif
    times 3 - ($ - %%insn_0040dfca) db 0
    %%insn_0040dfcd:
    push eax ; 0040DFCD 50
    %if ($ - %%insn_0040dfcd) > 1
        %error "LONG_0040DFCD"
    %endif
    times 1 - ($ - %%insn_0040dfcd) db 0
    %%insn_0040dfce:
    call dword near [0x4243f8] ; 0040DFCE FF15F8434200
    %if ($ - %%insn_0040dfce) > 6
        %error "LONG_0040DFCE"
    %endif
    times 6 - ($ - %%insn_0040dfce) db 0
    %%insn_0040dfd4:
    pop ebp ; 0040DFD4 5D
    %if ($ - %%insn_0040dfd4) > 1
        %error "LONG_0040DFD4"
    %endif
    times 1 - ($ - %%insn_0040dfd4) db 0
    %%insn_0040dfd5:
    ret ; 0040DFD5 C3
    %if ($ - %%insn_0040dfd5) > 1
        %error "LONG_0040DFD5"
    %endif
    times 1 - ($ - %%insn_0040dfd5) db 0
    %if ($ - %%fragment_start) != 54
        %error "function fragment size drift: 0040DFA0"
    %endif
%endmacro
