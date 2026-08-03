; Linear entry 0376A (1000:376a)
; Ghidra working symbol: FUN_1000_376a
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_0376a_part_00 0
    %%fragment_start:
func_0376a:
    %%insn_0376a:
    mov bx,[bp-0x2795] ; 0376A 8B9E6BD8
    %if ($ - %%insn_0376a) > 4
        %error "LONG_0376A"
    %endif
    times 4 - ($ - %%insn_0376a) db 0
    %%insn_0376e:
    mov ax,0x3e00 ; 0376E B8003E
    %if ($ - %%insn_0376e) > 3
        %error "LONG_0376E"
    %endif
    times 3 - ($ - %%insn_0376e) db 0
    %%insn_03771:
    int byte 0x21 ; 03771 CD21
    %if ($ - %%insn_03771) > 2
        %error "LONG_03771"
    %endif
    times 2 - ($ - %%insn_03771) db 0
    %%insn_03773:
    ret ; 03773 C3
    %if ($ - %%insn_03773) > 1
        %error "LONG_03773"
    %endif
    times 1 - ($ - %%insn_03773) db 0
    %if ($ - %%fragment_start) != 10
        %error "SIZE_0376A"
    %endif
%endmacro
