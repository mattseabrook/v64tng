; PE virtual entry 0040C7C3
; Ghidra working symbol: FUN_0040c7c3
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040c7c3_part_00 0
    %%fragment_start:
func_0040c7c3:
    %%insn_0040c7c3:
    push ebp ; 0040C7C3 55
    %if ($ - %%insn_0040c7c3) > 1
        %error "LONG_0040C7C3"
    %endif
    times 1 - ($ - %%insn_0040c7c3) db 0
    db 0x8B, 0xEC ; 0040C7C4 8BEC | mov ebp,esp | encoding preserved
    %%insn_0040c7c6:
    push dword 0x17 ; 0040C7C6 6A17
    %if ($ - %%insn_0040c7c6) > 2
        %error "LONG_0040C7C6"
    %endif
    times 2 - ($ - %%insn_0040c7c6) db 0
    %%insn_0040c7c8:
    call dword near [0x4244fc] ; 0040C7C8 FF15FC444200
    %if ($ - %%insn_0040c7c8) > 6
        %error "LONG_0040C7C8"
    %endif
    times 6 - ($ - %%insn_0040c7c8) db 0
    %%insn_0040c7ce:
    neg eax ; 0040C7CE F7D8
    %if ($ - %%insn_0040c7ce) > 2
        %error "LONG_0040C7CE"
    %endif
    times 2 - ($ - %%insn_0040c7ce) db 0
    db 0x1B, 0xC0 ; 0040C7D0 1BC0 | sbb eax,eax | encoding preserved
    %%insn_0040c7d2:
    neg eax ; 0040C7D2 F7D8
    %if ($ - %%insn_0040c7d2) > 2
        %error "LONG_0040C7D2"
    %endif
    times 2 - ($ - %%insn_0040c7d2) db 0
    %%insn_0040c7d4:
    add eax,0x1 ; 0040C7D4 83C001
    %if ($ - %%insn_0040c7d4) > 3
        %error "LONG_0040C7D4"
    %endif
    times 3 - ($ - %%insn_0040c7d4) db 0
    %%insn_0040c7d7:
    push eax ; 0040C7D7 50
    %if ($ - %%insn_0040c7d7) > 1
        %error "LONG_0040C7D7"
    %endif
    times 1 - ($ - %%insn_0040c7d7) db 0
    %%insn_0040c7d8:
    call dword near [0x424500] ; 0040C7D8 FF1500454200
    %if ($ - %%insn_0040c7d8) > 6
        %error "LONG_0040C7D8"
    %endif
    times 6 - ($ - %%insn_0040c7d8) db 0
    db 0x0F, 0xBF, 0xC0 ; 0040C7DE 0FBFC0 | movsx eax,ax | encoding preserved
    db 0x33, 0xC9 ; 0040C7E1 33C9 | xor ecx,ecx | encoding preserved
    %%insn_0040c7e3:
    test eax,eax ; 0040C7E3 85C0
    %if ($ - %%insn_0040c7e3) > 2
        %error "LONG_0040C7E3"
    %endif
    times 2 - ($ - %%insn_0040c7e3) db 0
    %%insn_0040c7e5:
    setl cl ; 0040C7E5 0F9CC1
    %if ($ - %%insn_0040c7e5) > 3
        %error "LONG_0040C7E5"
    %endif
    times 3 - ($ - %%insn_0040c7e5) db 0
    db 0x8B, 0xC1 ; 0040C7E8 8BC1 | mov eax,ecx | encoding preserved
    %%insn_0040c7ea:
    pop ebp ; 0040C7EA 5D
    %if ($ - %%insn_0040c7ea) > 1
        %error "LONG_0040C7EA"
    %endif
    times 1 - ($ - %%insn_0040c7ea) db 0
    %%insn_0040c7eb:
    ret ; 0040C7EB C3
    %if ($ - %%insn_0040c7eb) > 1
        %error "LONG_0040C7EB"
    %endif
    times 1 - ($ - %%insn_0040c7eb) db 0
    %if ($ - %%fragment_start) != 41
        %error "function fragment size drift: 0040C7C3"
    %endif
%endmacro
