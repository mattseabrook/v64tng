; Linear entry 07CE2 (1702:0cc2)
; Ghidra working symbol: FUN_1702_0cc2
; Verified descriptive role; original bytes and analyzer entry retained.
; Contract: Load AX with driver command 0097h and tail-dispatch through 07418h, preserving the original far return/argument frame. This identifies the transport role; full external-driver service behavior is not asserted.
; Original byte identity is enforced by this project’s build.sh.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_miles_dispatch_driver_command_97_part_00 0
    %%fragment_start:
miles_dispatch_driver_command_97:
    %%insn_07ce2:
    mov ax,0x97 ; 07CE2 B89700
    %if ($ - %%insn_07ce2) > 3
        %error "LONG_07CE2"
    %endif
    times 3 - ($ - %%insn_07ce2) db 0
    %%insn_07ce5:
    jmp 0x7418 ; 07CE5 E930F7
    %if ($ - %%insn_07ce5) > 3
        %error "LONG_07CE5"
    %endif
    times 3 - ($ - %%insn_07ce5) db 0
    %if ($ - %%fragment_start) != 6
        %error "SIZE_07CE2"
    %endif
%endmacro
