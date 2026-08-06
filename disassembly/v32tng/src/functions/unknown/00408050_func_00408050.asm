; PE virtual entry 00408050
; Ghidra working symbol: FUN_00408050
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00408050_part_00 0
    %%fragment_start:
func_00408050:
    %%insn_00408050:
    push ebp ; 00408050 55
    %if ($ - %%insn_00408050) > 1
        %error "LONG_00408050"
    %endif
    times 1 - ($ - %%insn_00408050) db 0
    db 0x8B, 0xEC ; 00408051 8BEC | mov ebp,esp | encoding preserved
    %%insn_00408053:
    push ecx ; 00408053 51
    %if ($ - %%insn_00408053) > 1
        %error "LONG_00408053"
    %endif
    times 1 - ($ - %%insn_00408053) db 0
    %%insn_00408054:
    mov [ebp-0x4],ecx ; 00408054 894DFC
    %if ($ - %%insn_00408054) > 3
        %error "LONG_00408054"
    %endif
    times 3 - ($ - %%insn_00408054) db 0
    %%insn_00408057:
    mov dword [0x4213a0],0x4080ad ; 00408057 C705A0134200AD804000
    %if ($ - %%insn_00408057) > 10
        %error "LONG_00408057"
    %endif
    times 10 - ($ - %%insn_00408057) db 0
    %%insn_00408061:
    mov dword [0x4213a4],0x40881e ; 00408061 C705A41342001E884000
    %if ($ - %%insn_00408061) > 10
        %error "LONG_00408061"
    %endif
    times 10 - ($ - %%insn_00408061) db 0
    %%insn_0040806b:
    mov dword [0x4213a8],0x4087fb ; 0040806B C705A8134200FB874000
    %if ($ - %%insn_0040806b) > 10
        %error "LONG_0040806B"
    %endif
    times 10 - ($ - %%insn_0040806b) db 0
    %%insn_00408075:
    mov dword [0x4213ac],0x0 ; 00408075 C705AC13420000000000
    %if ($ - %%insn_00408075) > 10
        %error "LONG_00408075"
    %endif
    times 10 - ($ - %%insn_00408075) db 0
    %%insn_0040807f:
    mov dword [0x4213b0],0x0 ; 0040807F C705B013420000000000
    %if ($ - %%insn_0040807f) > 10
        %error "LONG_0040807F"
    %endif
    times 10 - ($ - %%insn_0040807f) db 0
    %%insn_00408089:
    mov dword [0x4213b4],0x408846 ; 00408089 C705B413420046884000
    %if ($ - %%insn_00408089) > 10
        %error "LONG_00408089"
    %endif
    times 10 - ($ - %%insn_00408089) db 0
    %%insn_00408093:
    mov dword [0x4213b8],0x408920 ; 00408093 C705B813420020894000
    %if ($ - %%insn_00408093) > 10
        %error "LONG_00408093"
    %endif
    times 10 - ($ - %%insn_00408093) db 0
    %%insn_0040809d:
    mov dword [0x4213bc],0x4 ; 0040809D C705BC13420004000000
    %if ($ - %%insn_0040809d) > 10
        %error "LONG_0040809D"
    %endif
    times 10 - ($ - %%insn_0040809d) db 0
    db 0x33, 0xC0 ; 004080A7 33C0 | xor eax,eax | encoding preserved
    db 0x8B, 0xE5 ; 004080A9 8BE5 | mov esp,ebp | encoding preserved
    %%insn_004080ab:
    pop ebp ; 004080AB 5D
    %if ($ - %%insn_004080ab) > 1
        %error "LONG_004080AB"
    %endif
    times 1 - ($ - %%insn_004080ab) db 0
    %%insn_004080ac:
    ret ; 004080AC C3
    %if ($ - %%insn_004080ac) > 1
        %error "LONG_004080AC"
    %endif
    times 1 - ($ - %%insn_004080ac) db 0
    %if ($ - %%fragment_start) != 93
        %error "function fragment size drift: 00408050"
    %endif
%endmacro
