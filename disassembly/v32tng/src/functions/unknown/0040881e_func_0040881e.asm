; PE virtual entry 0040881E
; Ghidra working symbol: FUN_0040881e
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040881e_part_00 0
    %%fragment_start:
func_0040881e:
    %%insn_0040881e:
    push ebp ; 0040881E 55
    %if ($ - %%insn_0040881e) > 1
        %error "LONG_0040881E"
    %endif
    times 1 - ($ - %%insn_0040881e) db 0
    db 0x8B, 0xEC ; 0040881F 8BEC | mov ebp,esp | encoding preserved
    %%insn_00408821:
    push ecx ; 00408821 51
    %if ($ - %%insn_00408821) > 1
        %error "LONG_00408821"
    %endif
    times 1 - ($ - %%insn_00408821) db 0
    %%insn_00408822:
    mov [ebp-0x4],ecx ; 00408822 894DFC
    %if ($ - %%insn_00408822) > 3
        %error "LONG_00408822"
    %endif
    times 3 - ($ - %%insn_00408822) db 0
    %%insn_00408825:
    mov eax,[0x41f58c] ; 00408825 A18CF54100
    %if ($ - %%insn_00408825) > 5
        %error "LONG_00408825"
    %endif
    times 5 - ($ - %%insn_00408825) db 0
    %%insn_0040882a:
    push eax ; 0040882A 50
    %if ($ - %%insn_0040882a) > 1
        %error "LONG_0040882A"
    %endif
    times 1 - ($ - %%insn_0040882a) db 0
    %%insn_0040882b:
    call dword near [0x424388] ; 0040882B FF1588434200
    %if ($ - %%insn_0040882b) > 6
        %error "LONG_0040882B"
    %endif
    times 6 - ($ - %%insn_0040882b) db 0
    %%insn_00408831:
    mov ecx,[0x41f57c] ; 00408831 8B0D7CF54100
    %if ($ - %%insn_00408831) > 6
        %error "LONG_00408831"
    %endif
    times 6 - ($ - %%insn_00408831) db 0
    %%insn_00408837:
    push ecx ; 00408837 51
    %if ($ - %%insn_00408837) > 1
        %error "LONG_00408837"
    %endif
    times 1 - ($ - %%insn_00408837) db 0
    %%insn_00408838:
    call 0x40c9a0 ; 00408838 E863410000
    %if ($ - %%insn_00408838) > 5
        %error "LONG_00408838"
    %endif
    times 5 - ($ - %%insn_00408838) db 0
    %%insn_0040883d:
    add esp,0x4 ; 0040883D 83C404
    %if ($ - %%insn_0040883d) > 3
        %error "LONG_0040883D"
    %endif
    times 3 - ($ - %%insn_0040883d) db 0
    db 0x33, 0xC0 ; 00408840 33C0 | xor eax,eax | encoding preserved
    db 0x8B, 0xE5 ; 00408842 8BE5 | mov esp,ebp | encoding preserved
    %%insn_00408844:
    pop ebp ; 00408844 5D
    %if ($ - %%insn_00408844) > 1
        %error "LONG_00408844"
    %endif
    times 1 - ($ - %%insn_00408844) db 0
    %%insn_00408845:
    ret ; 00408845 C3
    %if ($ - %%insn_00408845) > 1
        %error "LONG_00408845"
    %endif
    times 1 - ($ - %%insn_00408845) db 0
    %if ($ - %%fragment_start) != 40
        %error "function fragment size drift: 0040881E"
    %endif
%endmacro
