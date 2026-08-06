; Linear entry 05734 (1000:5734)
; Ghidra working symbol: FUN_1000_5734
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_05734_part_00 0
    %%fragment_start:
func_05734:
    %%insn_05734:
    call 0x39f8 ; 05734 E8C1E2
    %if ($ - %%insn_05734) > 3
        %error "LONG_05734"
    %endif
    times 3 - ($ - %%insn_05734) db 0
    %%insn_05737:
    mov ax,0x3d00 ; 05737 B8003D
    %if ($ - %%insn_05737) > 3
        %error "LONG_05737"
    %endif
    times 3 - ($ - %%insn_05737) db 0
    %%insn_0573a:
    int byte 0x21 ; 0573A CD21
    %if ($ - %%insn_0573a) > 2
        %error "LONG_0573A"
    %endif
    times 2 - ($ - %%insn_0573a) db 0
    %%insn_0573c:
    jc short 0x5746 ; 0573C 7208
    %if ($ - %%insn_0573c) > 2
        %error "LONG_0573C"
    %endif
    times 2 - ($ - %%insn_0573c) db 0
    %%insn_0573e:
    mov [bp-0x1b7f],ax ; 0573E 898681E4
    %if ($ - %%insn_0573e) > 4
        %error "LONG_0573E"
    %endif
    times 4 - ($ - %%insn_0573e) db 0
    db 0x33, 0xC0 ; 05742 33C0 | xor ax,ax | encoding preserved
    %%insn_05744:
    jmp short 0x5749 ; 05744 EB03
    %if ($ - %%insn_05744) > 2
        %error "LONG_05744"
    %endif
    times 2 - ($ - %%insn_05744) db 0
    %%insn_05746:
    mov ax,0xffff ; 05746 B8FFFF
    %if ($ - %%insn_05746) > 3
        %error "LONG_05746"
    %endif
    times 3 - ($ - %%insn_05746) db 0
    %%insn_05749:
    ret ; 05749 C3
    %if ($ - %%insn_05749) > 1
        %error "LONG_05749"
    %endif
    times 1 - ($ - %%insn_05749) db 0
    %if ($ - %%fragment_start) != 22
        %error "SIZE_05734"
    %endif
%endmacro
