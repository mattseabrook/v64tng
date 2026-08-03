; Linear entry 0641C (1000:641c)
; Ghidra working symbol: FUN_1000_641c
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_0641c_part_00 0
    %%fragment_start:
func_0641c:
    %%insn_0641c:
    mov al,[0xe4b9] ; 0641C A0B9E4
    %if ($ - %%insn_0641c) > 3
        %error "LONG_0641C"
    %endif
    times 3 - ($ - %%insn_0641c) db 0
    %%insn_0641f:
    mov [0xf1d0],al ; 0641F A2D0F1
    %if ($ - %%insn_0641f) > 3
        %error "LONG_0641F"
    %endif
    times 3 - ($ - %%insn_0641f) db 0
    %%insn_06422:
    mov al,[0xe4ba] ; 06422 A0BAE4
    %if ($ - %%insn_06422) > 3
        %error "LONG_06422"
    %endif
    times 3 - ($ - %%insn_06422) db 0
    %%insn_06425:
    mov [0xf233],al ; 06425 A233F2
    %if ($ - %%insn_06425) > 3
        %error "LONG_06425"
    %endif
    times 3 - ($ - %%insn_06425) db 0
    %%insn_06428:
    mov al,[0xe4bb] ; 06428 A0BBE4
    %if ($ - %%insn_06428) > 3
        %error "LONG_06428"
    %endif
    times 3 - ($ - %%insn_06428) db 0
    %%insn_0642b:
    mov [0xf296],al ; 0642B A296F2
    %if ($ - %%insn_0642b) > 3
        %error "LONG_0642B"
    %endif
    times 3 - ($ - %%insn_0642b) db 0
    %%insn_0642e:
    mov word [0xf2f9],0x1 ; 0642E C706F9F20100
    %if ($ - %%insn_0642e) > 6
        %error "LONG_0642E"
    %endif
    times 6 - ($ - %%insn_0642e) db 0
    %%insn_06434:
    ret ; 06434 C3
    %if ($ - %%insn_06434) > 1
        %error "LONG_06434"
    %endif
    times 1 - ($ - %%insn_06434) db 0
    %if ($ - %%fragment_start) != 25
        %error "SIZE_0641C"
    %endif
%endmacro
