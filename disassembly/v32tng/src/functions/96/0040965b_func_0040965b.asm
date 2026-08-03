; PE virtual entry 0040965B
; Ghidra working symbol: FUN_0040965b
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040965b_part_00 0
    %%fragment_start:
func_0040965b:
    %%insn_0040965b:
    push ebp ; 0040965B 55
    %if ($ - %%insn_0040965b) > 1
        %error "LONG_0040965B"
    %endif
    times 1 - ($ - %%insn_0040965b) db 0
    db 0x8B, 0xEC ; 0040965C 8BEC | mov ebp,esp | encoding preserved
    %%insn_0040965e:
    sub esp,0x94 ; 0040965E 81EC94000000
    %if ($ - %%insn_0040965e) > 6
        %error "LONG_0040965E"
    %endif
    times 6 - ($ - %%insn_0040965e) db 0
    %%insn_00409664:
    mov dword [ebp-0x94],0x94 ; 00409664 C7856CFFFFFF94000000
    %if ($ - %%insn_00409664) > 10
        %error "LONG_00409664"
    %endif
    times 10 - ($ - %%insn_00409664) db 0
    %%insn_0040966e:
    lea eax,[ebp-0x94] ; 0040966E 8D856CFFFFFF
    %if ($ - %%insn_0040966e) > 6
        %error "LONG_0040966E"
    %endif
    times 6 - ($ - %%insn_0040966e) db 0
    %%insn_00409674:
    push eax ; 00409674 50
    %if ($ - %%insn_00409674) > 1
        %error "LONG_00409674"
    %endif
    times 1 - ($ - %%insn_00409674) db 0
    %%insn_00409675:
    call dword near [0x4243bc] ; 00409675 FF15BC434200
    %if ($ - %%insn_00409675) > 6
        %error "LONG_00409675"
    %endif
    times 6 - ($ - %%insn_00409675) db 0
    %%insn_0040967b:
    cmp dword [ebp-0x84],0x1 ; 0040967B 83BD7CFFFFFF01
    %if ($ - %%insn_0040967b) > 7
        %error "LONG_0040967B"
    %endif
    times 7 - ($ - %%insn_0040967b) db 0
    %%insn_00409682:
    jnz short 0x40968b ; 00409682 7507
    %if ($ - %%insn_00409682) > 2
        %error "LONG_00409682"
    %endif
    times 2 - ($ - %%insn_00409682) db 0
    %%insn_00409684:
    mov eax,0x1 ; 00409684 B801000000
    %if ($ - %%insn_00409684) > 5
        %error "LONG_00409684"
    %endif
    times 5 - ($ - %%insn_00409684) db 0
    %%insn_00409689:
    jmp short 0x40968d ; 00409689 EB02
    %if ($ - %%insn_00409689) > 2
        %error "LONG_00409689"
    %endif
    times 2 - ($ - %%insn_00409689) db 0
    db 0x33, 0xC0 ; 0040968B 33C0 | xor eax,eax | encoding preserved
    db 0x8B, 0xE5 ; 0040968D 8BE5 | mov esp,ebp | encoding preserved
    %%insn_0040968f:
    pop ebp ; 0040968F 5D
    %if ($ - %%insn_0040968f) > 1
        %error "LONG_0040968F"
    %endif
    times 1 - ($ - %%insn_0040968f) db 0
    %%insn_00409690:
    ret ; 00409690 C3
    %if ($ - %%insn_00409690) > 1
        %error "LONG_00409690"
    %endif
    times 1 - ($ - %%insn_00409690) db 0
    %if ($ - %%fragment_start) != 54
        %error "function fragment size drift: 0040965B"
    %endif
%endmacro
