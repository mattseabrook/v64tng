; PE virtual entry 0040D750
; Ghidra working symbol: FUN_0040d750
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040d750_part_00 0
    %%fragment_start:
func_0040d750:
    %%insn_0040d750:
    mov eax,[esp+0x4] ; 0040D750 8B442404
    %if ($ - %%insn_0040d750) > 4
        %error "LONG_0040D750"
    %endif
    times 4 - ($ - %%insn_0040d750) db 0
    %%insn_0040d754:
    push eax ; 0040D754 50
    %if ($ - %%insn_0040d754) > 1
        %error "LONG_0040D754"
    %endif
    times 1 - ($ - %%insn_0040d754) db 0
    %%insn_0040d755:
    call dword near [0x424430] ; 0040D755 FF1530444200
    %if ($ - %%insn_0040d755) > 6
        %error "LONG_0040D755"
    %endif
    times 6 - ($ - %%insn_0040d755) db 0
    %%insn_0040d75b:
    test eax,eax ; 0040D75B 85C0
    %if ($ - %%insn_0040d75b) > 2
        %error "LONG_0040D75B"
    %endif
    times 2 - ($ - %%insn_0040d75b) db 0
    %%insn_0040d75d:
    jnz short 0x40d767 ; 0040D75D 7508
    %if ($ - %%insn_0040d75d) > 2
        %error "LONG_0040D75D"
    %endif
    times 2 - ($ - %%insn_0040d75d) db 0
    %%insn_0040d75f:
    call dword near [0x4243c4] ; 0040D75F FF15C4434200
    %if ($ - %%insn_0040d75f) > 6
        %error "LONG_0040D75F"
    %endif
    times 6 - ($ - %%insn_0040d75f) db 0
    %%insn_0040d765:
    jmp short 0x40d769 ; 0040D765 EB02
    %if ($ - %%insn_0040d765) > 2
        %error "LONG_0040D765"
    %endif
    times 2 - ($ - %%insn_0040d765) db 0
    db 0x33, 0xC0 ; 0040D767 33C0 | xor eax,eax | encoding preserved
    %%insn_0040d769:
    test eax,eax ; 0040D769 85C0
    %if ($ - %%insn_0040d769) > 2
        %error "LONG_0040D769"
    %endif
    times 2 - ($ - %%insn_0040d769) db 0
    %%insn_0040d76b:
    jz short 0x40d77a ; 0040D76B 740D
    %if ($ - %%insn_0040d76b) > 2
        %error "LONG_0040D76B"
    %endif
    times 2 - ($ - %%insn_0040d76b) db 0
    %%insn_0040d76d:
    push eax ; 0040D76D 50
    %if ($ - %%insn_0040d76d) > 1
        %error "LONG_0040D76D"
    %endif
    times 1 - ($ - %%insn_0040d76d) db 0
    %%insn_0040d76e:
    call 0x410d90 ; 0040D76E E81D360000
    %if ($ - %%insn_0040d76e) > 5
        %error "LONG_0040D76E"
    %endif
    times 5 - ($ - %%insn_0040d76e) db 0
    %%insn_0040d773:
    add esp,0x4 ; 0040D773 83C404
    %if ($ - %%insn_0040d773) > 3
        %error "LONG_0040D773"
    %endif
    times 3 - ($ - %%insn_0040d773) db 0
    %%insn_0040d776:
    or eax,0xffffffffffffffff ; 0040D776 83C8FF
    %if ($ - %%insn_0040d776) > 3
        %error "LONG_0040D776"
    %endif
    times 3 - ($ - %%insn_0040d776) db 0
    %%insn_0040d779:
    ret ; 0040D779 C3
    %if ($ - %%insn_0040d779) > 1
        %error "LONG_0040D779"
    %endif
    times 1 - ($ - %%insn_0040d779) db 0
    db 0x33, 0xC0 ; 0040D77A 33C0 | xor eax,eax | encoding preserved
    %%insn_0040d77c:
    ret ; 0040D77C C3
    %if ($ - %%insn_0040d77c) > 1
        %error "LONG_0040D77C"
    %endif
    times 1 - ($ - %%insn_0040d77c) db 0
    %if ($ - %%fragment_start) != 45
        %error "function fragment size drift: 0040D750"
    %endif
%endmacro
