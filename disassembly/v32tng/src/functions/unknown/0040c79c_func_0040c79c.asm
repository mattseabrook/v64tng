; PE virtual entry 0040C79C
; Ghidra working symbol: FUN_0040c79c
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040c79c_part_00 0
    %%fragment_start:
func_0040c79c:
    %%insn_0040c79c:
    push ebp ; 0040C79C 55
    %if ($ - %%insn_0040c79c) > 1
        %error "LONG_0040C79C"
    %endif
    times 1 - ($ - %%insn_0040c79c) db 0
    db 0x8B, 0xEC ; 0040C79D 8BEC | mov ebp,esp | encoding preserved
    %%insn_0040c79f:
    push dword 0x17 ; 0040C79F 6A17
    %if ($ - %%insn_0040c79f) > 2
        %error "LONG_0040C79F"
    %endif
    times 2 - ($ - %%insn_0040c79f) db 0
    %%insn_0040c7a1:
    call dword near [0x4244fc] ; 0040C7A1 FF15FC444200
    %if ($ - %%insn_0040c7a1) > 6
        %error "LONG_0040C7A1"
    %endif
    times 6 - ($ - %%insn_0040c7a1) db 0
    %%insn_0040c7a7:
    neg eax ; 0040C7A7 F7D8
    %if ($ - %%insn_0040c7a7) > 2
        %error "LONG_0040C7A7"
    %endif
    times 2 - ($ - %%insn_0040c7a7) db 0
    db 0x1B, 0xC0 ; 0040C7A9 1BC0 | sbb eax,eax | encoding preserved
    %%insn_0040c7ab:
    add eax,0x2 ; 0040C7AB 83C002
    %if ($ - %%insn_0040c7ab) > 3
        %error "LONG_0040C7AB"
    %endif
    times 3 - ($ - %%insn_0040c7ab) db 0
    %%insn_0040c7ae:
    push eax ; 0040C7AE 50
    %if ($ - %%insn_0040c7ae) > 1
        %error "LONG_0040C7AE"
    %endif
    times 1 - ($ - %%insn_0040c7ae) db 0
    %%insn_0040c7af:
    call dword near [0x424500] ; 0040C7AF FF1500454200
    %if ($ - %%insn_0040c7af) > 6
        %error "LONG_0040C7AF"
    %endif
    times 6 - ($ - %%insn_0040c7af) db 0
    db 0x0F, 0xBF, 0xC0 ; 0040C7B5 0FBFC0 | movsx eax,ax | encoding preserved
    db 0x33, 0xC9 ; 0040C7B8 33C9 | xor ecx,ecx | encoding preserved
    %%insn_0040c7ba:
    test eax,eax ; 0040C7BA 85C0
    %if ($ - %%insn_0040c7ba) > 2
        %error "LONG_0040C7BA"
    %endif
    times 2 - ($ - %%insn_0040c7ba) db 0
    %%insn_0040c7bc:
    setl cl ; 0040C7BC 0F9CC1
    %if ($ - %%insn_0040c7bc) > 3
        %error "LONG_0040C7BC"
    %endif
    times 3 - ($ - %%insn_0040c7bc) db 0
    db 0x8B, 0xC1 ; 0040C7BF 8BC1 | mov eax,ecx | encoding preserved
    %%insn_0040c7c1:
    pop ebp ; 0040C7C1 5D
    %if ($ - %%insn_0040c7c1) > 1
        %error "LONG_0040C7C1"
    %endif
    times 1 - ($ - %%insn_0040c7c1) db 0
    %%insn_0040c7c2:
    ret ; 0040C7C2 C3
    %if ($ - %%insn_0040c7c2) > 1
        %error "LONG_0040C7C2"
    %endif
    times 1 - ($ - %%insn_0040c7c2) db 0
    %if ($ - %%fragment_start) != 39
        %error "function fragment size drift: 0040C79C"
    %endif
%endmacro
