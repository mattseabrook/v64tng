; PE virtual entry 00404EBB
; Ghidra working symbol: FUN_00404ebb
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00404ebb_part_00 0
    %%fragment_start:
func_00404ebb:
    %%insn_00404ebb:
    push ebp ; 00404EBB 55
    %if ($ - %%insn_00404ebb) > 1
        %error "LONG_00404EBB"
    %endif
    times 1 - ($ - %%insn_00404ebb) db 0
    db 0x8B, 0xEC ; 00404EBC 8BEC | mov ebp,esp | encoding preserved
    %%insn_00404ebe:
    push ecx ; 00404EBE 51
    %if ($ - %%insn_00404ebe) > 1
        %error "LONG_00404EBE"
    %endif
    times 1 - ($ - %%insn_00404ebe) db 0
    %%insn_00404ebf:
    mov word [ebp-0x4],0x0 ; 00404EBF 66C745FC0000
    %if ($ - %%insn_00404ebf) > 6
        %error "LONG_00404EBF"
    %endif
    times 6 - ($ - %%insn_00404ebf) db 0
    %%insn_00404ec5:
    jmp short 0x404ed3 ; 00404EC5 EB0C
    %if ($ - %%insn_00404ec5) > 2
        %error "LONG_00404EC5"
    %endif
    times 2 - ($ - %%insn_00404ec5) db 0
    %%insn_00404ec7:
    mov ax,[ebp-0x4] ; 00404EC7 668B45FC
    %if ($ - %%insn_00404ec7) > 4
        %error "LONG_00404EC7"
    %endif
    times 4 - ($ - %%insn_00404ec7) db 0
    db 0x66, 0x05, 0x01, 0x00 ; 00404ECB 66050100 | add ax,0x1 | encoding preserved
    %%insn_00404ecf:
    mov [ebp-0x4],ax ; 00404ECF 668945FC
    %if ($ - %%insn_00404ecf) > 4
        %error "LONG_00404ECF"
    %endif
    times 4 - ($ - %%insn_00404ecf) db 0
    %%insn_00404ed3:
    movsx ecx,word [ebp-0x4] ; 00404ED3 0FBF4DFC
    %if ($ - %%insn_00404ed3) > 4
        %error "LONG_00404ED3"
    %endif
    times 4 - ($ - %%insn_00404ed3) db 0
    %%insn_00404ed7:
    cmp ecx,0x35 ; 00404ED7 83F935
    %if ($ - %%insn_00404ed7) > 3
        %error "LONG_00404ED7"
    %endif
    times 3 - ($ - %%insn_00404ed7) db 0
    %%insn_00404eda:
    jnl short 0x404ef2 ; 00404EDA 7D16
    %if ($ - %%insn_00404eda) > 2
        %error "LONG_00404EDA"
    %endif
    times 2 - ($ - %%insn_00404eda) db 0
    %%insn_00404edc:
    movsx edx,word [ebp-0x4] ; 00404EDC 0FBF55FC
    %if ($ - %%insn_00404edc) > 4
        %error "LONG_00404EDC"
    %endif
    times 4 - ($ - %%insn_00404edc) db 0
    %%insn_00404ee0:
    movsx eax,word [ebp-0x4] ; 00404EE0 0FBF45FC
    %if ($ - %%insn_00404ee0) > 4
        %error "LONG_00404EE0"
    %endif
    times 4 - ($ - %%insn_00404ee0) db 0
    %%insn_00404ee4:
    mov cl,[edx+0x421bc0] ; 00404EE4 8A8AC01B4200
    %if ($ - %%insn_00404ee4) > 6
        %error "LONG_00404EE4"
    %endif
    times 6 - ($ - %%insn_00404ee4) db 0
    %%insn_00404eea:
    mov [eax+0x421580],cl ; 00404EEA 888880154200
    %if ($ - %%insn_00404eea) > 6
        %error "LONG_00404EEA"
    %endif
    times 6 - ($ - %%insn_00404eea) db 0
    %%insn_00404ef0:
    jmp short 0x404ec7 ; 00404EF0 EBD5
    %if ($ - %%insn_00404ef0) > 2
        %error "LONG_00404EF0"
    %endif
    times 2 - ($ - %%insn_00404ef0) db 0
    db 0x8B, 0xE5 ; 00404EF2 8BE5 | mov esp,ebp | encoding preserved
    %%insn_00404ef4:
    pop ebp ; 00404EF4 5D
    %if ($ - %%insn_00404ef4) > 1
        %error "LONG_00404EF4"
    %endif
    times 1 - ($ - %%insn_00404ef4) db 0
    %%insn_00404ef5:
    ret ; 00404EF5 C3
    %if ($ - %%insn_00404ef5) > 1
        %error "LONG_00404EF5"
    %endif
    times 1 - ($ - %%insn_00404ef5) db 0
    %if ($ - %%fragment_start) != 59
        %error "function fragment size drift: 00404EBB"
    %endif
%endmacro
