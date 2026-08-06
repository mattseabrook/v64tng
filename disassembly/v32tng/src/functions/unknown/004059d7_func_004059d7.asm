; PE virtual entry 004059D7
; Ghidra working symbol: FUN_004059d7
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_004059d7_part_00 0
    %%fragment_start:
func_004059d7:
    %%insn_004059d7:
    push ebp ; 004059D7 55
    %if ($ - %%insn_004059d7) > 1
        %error "LONG_004059D7"
    %endif
    times 1 - ($ - %%insn_004059d7) db 0
    db 0x8B, 0xEC ; 004059D8 8BEC | mov ebp,esp | encoding preserved
    %%insn_004059da:
    movsx eax,word [0x421bfa] ; 004059DA 0FBF05FA1B4200
    %if ($ - %%insn_004059da) > 7
        %error "LONG_004059DA"
    %endif
    times 7 - ($ - %%insn_004059da) db 0
    %%insn_004059e1:
    mov cl,[0x4215b5] ; 004059E1 8A0DB5154200
    %if ($ - %%insn_004059e1) > 6
        %error "LONG_004059E1"
    %endif
    times 6 - ($ - %%insn_004059e1) db 0
    %%insn_004059e7:
    mov [eax+0x421b40],cl ; 004059E7 8888401B4200
    %if ($ - %%insn_004059e7) > 6
        %error "LONG_004059E7"
    %endif
    times 6 - ($ - %%insn_004059e7) db 0
    %%insn_004059ed:
    movsx edx,word [0x421bfa] ; 004059ED 0FBF15FA1B4200
    %if ($ - %%insn_004059ed) > 7
        %error "LONG_004059ED"
    %endif
    times 7 - ($ - %%insn_004059ed) db 0
    %%insn_004059f4:
    mov al,[0x4215b6] ; 004059F4 A0B6154200
    %if ($ - %%insn_004059f4) > 5
        %error "LONG_004059F4"
    %endif
    times 5 - ($ - %%insn_004059f4) db 0
    %%insn_004059f9:
    mov [edx+0x421920],al ; 004059F9 888220194200
    %if ($ - %%insn_004059f9) > 6
        %error "LONG_004059F9"
    %endif
    times 6 - ($ - %%insn_004059f9) db 0
    %%insn_004059ff:
    movsx ecx,word [0x421bfa] ; 004059FF 0FBF0DFA1B4200
    %if ($ - %%insn_004059ff) > 7
        %error "LONG_004059FF"
    %endif
    times 7 - ($ - %%insn_004059ff) db 0
    %%insn_00405a06:
    mov dl,[0x4215b7] ; 00405A06 8A15B7154200
    %if ($ - %%insn_00405a06) > 6
        %error "LONG_00405A06"
    %endif
    times 6 - ($ - %%insn_00405a06) db 0
    %%insn_00405a0c:
    mov [ecx+0x421ac0],dl ; 00405A0C 8891C01A4200
    %if ($ - %%insn_00405a0c) > 6
        %error "LONG_00405A0C"
    %endif
    times 6 - ($ - %%insn_00405a0c) db 0
    %%insn_00405a12:
    mov ax,[0x421bfa] ; 00405A12 66A1FA1B4200
    %if ($ - %%insn_00405a12) > 6
        %error "LONG_00405A12"
    %endif
    times 6 - ($ - %%insn_00405a12) db 0
    db 0x66, 0x05, 0x01, 0x00 ; 00405A18 66050100 | add ax,0x1 | encoding preserved
    %%insn_00405a1c:
    mov [0x421bfa],ax ; 00405A1C 66A3FA1B4200
    %if ($ - %%insn_00405a1c) > 6
        %error "LONG_00405A1C"
    %endif
    times 6 - ($ - %%insn_00405a1c) db 0
    %%insn_00405a22:
    pop ebp ; 00405A22 5D
    %if ($ - %%insn_00405a22) > 1
        %error "LONG_00405A22"
    %endif
    times 1 - ($ - %%insn_00405a22) db 0
    %%insn_00405a23:
    ret ; 00405A23 C3
    %if ($ - %%insn_00405a23) > 1
        %error "LONG_00405A23"
    %endif
    times 1 - ($ - %%insn_00405a23) db 0
    %if ($ - %%fragment_start) != 77
        %error "function fragment size drift: 004059D7"
    %endif
%endmacro
