; PE virtual entry 00406D16
; Ghidra working symbol: FUN_00406d16
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00406d16_part_00 0
    %%fragment_start:
func_00406d16:
    %%insn_00406d16:
    push ebp ; 00406D16 55
    %if ($ - %%insn_00406d16) > 1
        %error "LONG_00406D16"
    %endif
    times 1 - ($ - %%insn_00406d16) db 0
    db 0x8B, 0xEC ; 00406D17 8BEC | mov ebp,esp | encoding preserved
    %%insn_00406d19:
    push esi ; 00406D19 56
    %if ($ - %%insn_00406d19) > 1
        %error "LONG_00406D19"
    %endif
    times 1 - ($ - %%insn_00406d19) db 0
    %%insn_00406d1a:
    call 0x406b14 ; 00406D1A E8F5FDFFFF
    %if ($ - %%insn_00406d1a) > 5
        %error "LONG_00406D1A"
    %endif
    times 5 - ($ - %%insn_00406d1a) db 0
    db 0x66, 0x8B, 0xF0 ; 00406D1F 668BF0 | mov si,ax | encoding preserved
    %%insn_00406d22:
    and esi,0xffff ; 00406D22 81E6FFFF0000
    %if ($ - %%insn_00406d22) > 6
        %error "LONG_00406D22"
    %endif
    times 6 - ($ - %%insn_00406d22) db 0
    %%insn_00406d28:
    shl esi,byte 0x10 ; 00406D28 C1E610
    %if ($ - %%insn_00406d28) > 3
        %error "LONG_00406D28"
    %endif
    times 3 - ($ - %%insn_00406d28) db 0
    %%insn_00406d2b:
    call 0x406b14 ; 00406D2B E8E4FDFFFF
    %if ($ - %%insn_00406d2b) > 5
        %error "LONG_00406D2B"
    %endif
    times 5 - ($ - %%insn_00406d2b) db 0
    %%insn_00406d30:
    and eax,0xffff ; 00406D30 25FFFF0000
    %if ($ - %%insn_00406d30) > 5
        %error "LONG_00406D30"
    %endif
    times 5 - ($ - %%insn_00406d30) db 0
    db 0x0B, 0xC6 ; 00406D35 0BC6 | or eax,esi | encoding preserved
    %%insn_00406d37:
    pop esi ; 00406D37 5E
    %if ($ - %%insn_00406d37) > 1
        %error "LONG_00406D37"
    %endif
    times 1 - ($ - %%insn_00406d37) db 0
    %%insn_00406d38:
    pop ebp ; 00406D38 5D
    %if ($ - %%insn_00406d38) > 1
        %error "LONG_00406D38"
    %endif
    times 1 - ($ - %%insn_00406d38) db 0
    %%insn_00406d39:
    ret ; 00406D39 C3
    %if ($ - %%insn_00406d39) > 1
        %error "LONG_00406D39"
    %endif
    times 1 - ($ - %%insn_00406d39) db 0
    %if ($ - %%fragment_start) != 36
        %error "function fragment size drift: 00406D16"
    %endif
%endmacro
