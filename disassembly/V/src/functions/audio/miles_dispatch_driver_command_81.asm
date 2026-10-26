; Linear entry 07CC4 (1702:0ca4)
; Ghidra working symbol: FUN_1702_0ca4
; Verified descriptive role; original bytes and analyzer entry retained.
; Contract: Load AX with driver command 0081h and tail-dispatch through 07418h, preserving the original far return/argument frame. This identifies the transport role; full external-driver service behavior is not asserted.
; Original byte identity is enforced by this project’s build.sh.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_miles_dispatch_driver_command_81_part_00 0
    %%fragment_start:
miles_dispatch_driver_command_81:
    %%insn_07cc4:
    mov ax,0x81 ; 07CC4 B88100
    %if ($ - %%insn_07cc4) > 3
        %error "LONG_07CC4"
    %endif
    times 3 - ($ - %%insn_07cc4) db 0
    %%insn_07cc7:
    jmp 0x7418 ; 07CC7 E94EF7
    %if ($ - %%insn_07cc7) > 3
        %error "LONG_07CC7"
    %endif
    times 3 - ($ - %%insn_07cc7) db 0
    %if ($ - %%fragment_start) != 6
        %error "SIZE_07CC4"
    %endif
%endmacro
