; Linear entry 07CEE (1702:0cce)
; Ghidra working symbol: FUN_1702_0cce
; Verified descriptive role; original bytes and analyzer entry retained.
; Contract: Load AX with driver command 0099h and tail-dispatch through 07418h, preserving the original far return/argument frame. This identifies the transport role; full external-driver service behavior is not asserted.
; Original byte identity is enforced by this project’s build.sh.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_miles_dispatch_driver_command_99_part_00 0
    %%fragment_start:
miles_dispatch_driver_command_99:
    %%insn_07cee:
    mov ax,0x99 ; 07CEE B89900
    %if ($ - %%insn_07cee) > 3
        %error "LONG_07CEE"
    %endif
    times 3 - ($ - %%insn_07cee) db 0
    %%insn_07cf1:
    jmp 0x7418 ; 07CF1 E924F7
    %if ($ - %%insn_07cf1) > 3
        %error "LONG_07CF1"
    %endif
    times 3 - ($ - %%insn_07cf1) db 0
    %if ($ - %%fragment_start) != 6
        %error "SIZE_07CEE"
    %endif
%endmacro
