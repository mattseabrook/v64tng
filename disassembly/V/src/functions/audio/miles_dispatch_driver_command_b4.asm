; Linear entry 07D4E (1702:0d2e)
; Ghidra working symbol: FUN_1702_0d2e
; Verified descriptive role; original bytes and analyzer entry retained.
; Contract: Load AX with driver command 00B4h and tail-dispatch through 07418h, preserving the original far return/argument frame. This identifies the transport role; full external-driver service behavior is not asserted.
; Original byte identity is enforced by this project’s build.sh.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_miles_dispatch_driver_command_b4_part_00 0
    %%fragment_start:
miles_dispatch_driver_command_b4:
    %%insn_07d4e:
    mov ax,0xb4 ; 07D4E B8B400
    %if ($ - %%insn_07d4e) > 3
        %error "LONG_07D4E"
    %endif
    times 3 - ($ - %%insn_07d4e) db 0
    %%insn_07d51:
    jmp 0x7418 ; 07D51 E9C4F6
    %if ($ - %%insn_07d51) > 3
        %error "LONG_07D51"
    %endif
    times 3 - ($ - %%insn_07d51) db 0
    %if ($ - %%fragment_start) != 6
        %error "SIZE_07D4E"
    %endif
%endmacro
