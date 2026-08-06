; PE virtual entry 00407670
; Ghidra working symbol: FUN_00407670
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00407670_part_00 0
    %%fragment_start:
func_00407670:
    %%insn_00407670:
    push ebp ; 00407670 55
    %if ($ - %%insn_00407670) > 1
        %error "LONG_00407670"
    %endif
    times 1 - ($ - %%insn_00407670) db 0
    db 0x8B, 0xEC ; 00407671 8BEC | mov ebp,esp | encoding preserved
    %%insn_00407673:
    push dword 0x0 ; 00407673 6A00
    %if ($ - %%insn_00407673) > 2
        %error "LONG_00407673"
    %endif
    times 2 - ($ - %%insn_00407673) db 0
    %%insn_00407675:
    push dword 0x1 ; 00407675 6A01
    %if ($ - %%insn_00407675) > 2
        %error "LONG_00407675"
    %endif
    times 2 - ($ - %%insn_00407675) db 0
    %%insn_00407677:
    mov eax,[0x41f54c] ; 00407677 A14CF54100
    %if ($ - %%insn_00407677) > 5
        %error "LONG_00407677"
    %endif
    times 5 - ($ - %%insn_00407677) db 0
    %%insn_0040767c:
    push eax ; 0040767C 50
    %if ($ - %%insn_0040767c) > 1
        %error "LONG_0040767C"
    %endif
    times 1 - ($ - %%insn_0040767c) db 0
    %%insn_0040767d:
    mov ecx,[0x41f54c] ; 0040767D 8B0D4CF54100
    %if ($ - %%insn_0040767d) > 6
        %error "LONG_0040767D"
    %endif
    times 6 - ($ - %%insn_0040767d) db 0
    %%insn_00407683:
    mov edx,[ecx] ; 00407683 8B11
    %if ($ - %%insn_00407683) > 2
        %error "LONG_00407683"
    %endif
    times 2 - ($ - %%insn_00407683) db 0
    %%insn_00407685:
    call dword near [edx+0x58] ; 00407685 FF5258
    %if ($ - %%insn_00407685) > 3
        %error "LONG_00407685"
    %endif
    times 3 - ($ - %%insn_00407685) db 0
    db 0x33, 0xC0 ; 00407688 33C0 | xor eax,eax | encoding preserved
    %%insn_0040768a:
    pop ebp ; 0040768A 5D
    %if ($ - %%insn_0040768a) > 1
        %error "LONG_0040768A"
    %endif
    times 1 - ($ - %%insn_0040768a) db 0
    %%insn_0040768b:
    ret ; 0040768B C3
    %if ($ - %%insn_0040768b) > 1
        %error "LONG_0040768B"
    %endif
    times 1 - ($ - %%insn_0040768b) db 0
    %if ($ - %%fragment_start) != 28
        %error "function fragment size drift: 00407670"
    %endif
%endmacro
