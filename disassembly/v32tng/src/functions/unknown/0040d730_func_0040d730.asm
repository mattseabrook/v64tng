; PE virtual entry 0040D730
; Ghidra working symbol: FUN_0040d730
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040d730_part_00 0
    %%fragment_start:
func_0040d730:
    %%insn_0040d730:
    push esi ; 0040D730 56
    %if ($ - %%insn_0040d730) > 1
        %error "LONG_0040D730"
    %endif
    times 1 - ($ - %%insn_0040d730) db 0
    %%insn_0040d731:
    mov esi,[esp+0x8] ; 0040D731 8B742408
    %if ($ - %%insn_0040d731) > 4
        %error "LONG_0040D731"
    %endif
    times 4 - ($ - %%insn_0040d731) db 0
    %%insn_0040d735:
    push edi ; 0040D735 57
    %if ($ - %%insn_0040d735) > 1
        %error "LONG_0040D735"
    %endif
    times 1 - ($ - %%insn_0040d735) db 0
    %%insn_0040d736:
    mov edi,[esp+0x10] ; 0040D736 8B7C2410
    %if ($ - %%insn_0040d736) > 4
        %error "LONG_0040D736"
    %endif
    times 4 - ($ - %%insn_0040d736) db 0
    db 0x3B, 0xF7 ; 0040D73A 3BF7 | cmp esi,edi | encoding preserved
    %%insn_0040d73c:
    jnc short 0x40d74d ; 0040D73C 730F
    %if ($ - %%insn_0040d73c) > 2
        %error "LONG_0040D73C"
    %endif
    times 2 - ($ - %%insn_0040d73c) db 0
    %%insn_0040d73e:
    mov eax,[esi] ; 0040D73E 8B06
    %if ($ - %%insn_0040d73e) > 2
        %error "LONG_0040D73E"
    %endif
    times 2 - ($ - %%insn_0040d73e) db 0
    %%insn_0040d740:
    test eax,eax ; 0040D740 85C0
    %if ($ - %%insn_0040d740) > 2
        %error "LONG_0040D740"
    %endif
    times 2 - ($ - %%insn_0040d740) db 0
    %%insn_0040d742:
    jz short 0x40d746 ; 0040D742 7402
    %if ($ - %%insn_0040d742) > 2
        %error "LONG_0040D742"
    %endif
    times 2 - ($ - %%insn_0040d742) db 0
    %%insn_0040d744:
    call eax ; 0040D744 FFD0
    %if ($ - %%insn_0040d744) > 2
        %error "LONG_0040D744"
    %endif
    times 2 - ($ - %%insn_0040d744) db 0
    %%insn_0040d746:
    add esi,0x4 ; 0040D746 83C604
    %if ($ - %%insn_0040d746) > 3
        %error "LONG_0040D746"
    %endif
    times 3 - ($ - %%insn_0040d746) db 0
    db 0x3B, 0xF7 ; 0040D749 3BF7 | cmp esi,edi | encoding preserved
    %%insn_0040d74b:
    jc short 0x40d73e ; 0040D74B 72F1
    %if ($ - %%insn_0040d74b) > 2
        %error "LONG_0040D74B"
    %endif
    times 2 - ($ - %%insn_0040d74b) db 0
    %%insn_0040d74d:
    pop edi ; 0040D74D 5F
    %if ($ - %%insn_0040d74d) > 1
        %error "LONG_0040D74D"
    %endif
    times 1 - ($ - %%insn_0040d74d) db 0
    %%insn_0040d74e:
    pop esi ; 0040D74E 5E
    %if ($ - %%insn_0040d74e) > 1
        %error "LONG_0040D74E"
    %endif
    times 1 - ($ - %%insn_0040d74e) db 0
    %%insn_0040d74f:
    ret ; 0040D74F C3
    %if ($ - %%insn_0040d74f) > 1
        %error "LONG_0040D74F"
    %endif
    times 1 - ($ - %%insn_0040d74f) db 0
    %if ($ - %%fragment_start) != 32
        %error "function fragment size drift: 0040D730"
    %endif
%endmacro
