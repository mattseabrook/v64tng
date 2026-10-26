; Linear entry 07D3C (1702:0d1c)
; Ghidra working symbol: FUN_1702_0d1c
; Verified descriptive role; original bytes and analyzer entry retained.
; Contract: Load AX with driver command 00B1h and tail-dispatch through 07418h, preserving the original far return/argument frame. This identifies the transport role; full external-driver service behavior is not asserted.
; Original byte identity is enforced by this project’s build.sh.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_miles_dispatch_driver_command_b1_part_00 0
    %%fragment_start:
miles_dispatch_driver_command_b1:
    %%insn_07d3c:
    mov ax,0xb1 ; 07D3C B8B100
    %if ($ - %%insn_07d3c) > 3
        %error "LONG_07D3C"
    %endif
    times 3 - ($ - %%insn_07d3c) db 0
    %%insn_07d3f:
    jmp 0x7418 ; 07D3F E9D6F6
    %if ($ - %%insn_07d3f) > 3
        %error "LONG_07D3F"
    %endif
    times 3 - ($ - %%insn_07d3f) db 0
    %if ($ - %%fragment_start) != 6
        %error "SIZE_07D3C"
    %endif
%endmacro
