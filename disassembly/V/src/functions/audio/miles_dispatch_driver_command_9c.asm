; Linear entry 07D00 (1702:0ce0)
; Ghidra working symbol: FUN_1702_0ce0
; Verified descriptive role; original bytes and analyzer entry retained.
; Contract: Load AX with driver command 009Ch and tail-dispatch through 07418h, preserving the original far return/argument frame. This identifies the transport role; full external-driver service behavior is not asserted.
; Original byte identity is enforced by this project’s build.sh.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_miles_dispatch_driver_command_9c_part_00 0
    %%fragment_start:
miles_dispatch_driver_command_9c:
    %%insn_07d00:
    mov ax,0x9c ; 07D00 B89C00
    %if ($ - %%insn_07d00) > 3
        %error "LONG_07D00"
    %endif
    times 3 - ($ - %%insn_07d00) db 0
    %%insn_07d03:
    jmp 0x7418 ; 07D03 E912F7
    %if ($ - %%insn_07d03) > 3
        %error "LONG_07D03"
    %endif
    times 3 - ($ - %%insn_07d03) db 0
    %if ($ - %%fragment_start) != 6
        %error "SIZE_07D00"
    %endif
%endmacro
