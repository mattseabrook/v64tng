; PE virtual entry 0040C780
; Ghidra working symbol: FUN_0040c780
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040c780_part_00 0
    %%fragment_start:
func_0040c780:
    %%insn_0040c780:
    push ebp ; 0040C780 55
    %if ($ - %%insn_0040c780) > 1
        %error "LONG_0040C780"
    %endif
    times 1 - ($ - %%insn_0040c780) db 0
    db 0x8B, 0xEC ; 0040C781 8BEC | mov ebp,esp | encoding preserved
    %%insn_0040c783:
    mov eax,[ebp+0x8] ; 0040C783 8B4508
    %if ($ - %%insn_0040c783) > 3
        %error "LONG_0040C783"
    %endif
    times 3 - ($ - %%insn_0040c783) db 0
    %%insn_0040c786:
    push eax ; 0040C786 50
    %if ($ - %%insn_0040c786) > 1
        %error "LONG_0040C786"
    %endif
    times 1 - ($ - %%insn_0040c786) db 0
    %%insn_0040c787:
    call dword near [0x424500] ; 0040C787 FF1500454200
    %if ($ - %%insn_0040c787) > 6
        %error "LONG_0040C787"
    %endif
    times 6 - ($ - %%insn_0040c787) db 0
    %%insn_0040c78d:
    movsx ecx,ax ; 0040C78D 0FBFC8
    %if ($ - %%insn_0040c78d) > 3
        %error "LONG_0040C78D"
    %endif
    times 3 - ($ - %%insn_0040c78d) db 0
    %%insn_0040c790:
    test ecx,ecx ; 0040C790 85C9
    %if ($ - %%insn_0040c790) > 2
        %error "LONG_0040C790"
    %endif
    times 2 - ($ - %%insn_0040c790) db 0
    %%insn_0040c792:
    jz short 0x40c798 ; 0040C792 7404
    %if ($ - %%insn_0040c792) > 2
        %error "LONG_0040C792"
    %endif
    times 2 - ($ - %%insn_0040c792) db 0
    %%insn_0040c794:
    mov al,0x1 ; 0040C794 B001
    %if ($ - %%insn_0040c794) > 2
        %error "LONG_0040C794"
    %endif
    times 2 - ($ - %%insn_0040c794) db 0
    %%insn_0040c796:
    jmp short 0x40c79a ; 0040C796 EB02
    %if ($ - %%insn_0040c796) > 2
        %error "LONG_0040C796"
    %endif
    times 2 - ($ - %%insn_0040c796) db 0
    db 0x32, 0xC0 ; 0040C798 32C0 | xor al,al | encoding preserved
    %%insn_0040c79a:
    pop ebp ; 0040C79A 5D
    %if ($ - %%insn_0040c79a) > 1
        %error "LONG_0040C79A"
    %endif
    times 1 - ($ - %%insn_0040c79a) db 0
    %%insn_0040c79b:
    ret ; 0040C79B C3
    %if ($ - %%insn_0040c79b) > 1
        %error "LONG_0040C79B"
    %endif
    times 1 - ($ - %%insn_0040c79b) db 0
    %if ($ - %%fragment_start) != 28
        %error "function fragment size drift: 0040C780"
    %endif
%endmacro
