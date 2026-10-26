; Linear entry 07CE8 (1702:0cc8)
; Ghidra working symbol: FUN_1702_0cc8
; Verified descriptive role; original bytes and analyzer entry retained.
; Contract: Load AX with driver command 0098h and tail-dispatch through 07418h, preserving the original far return/argument frame. This identifies the transport role; full external-driver service behavior is not asserted.
; Original byte identity is enforced by this project’s build.sh.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_miles_dispatch_driver_command_98_part_00 0
    %%fragment_start:
miles_dispatch_driver_command_98:
    %%insn_07ce8:
    mov ax,0x98 ; 07CE8 B89800
    %if ($ - %%insn_07ce8) > 3
        %error "LONG_07CE8"
    %endif
    times 3 - ($ - %%insn_07ce8) db 0
    %%insn_07ceb:
    jmp 0x7418 ; 07CEB E92AF7
    %if ($ - %%insn_07ceb) > 3
        %error "LONG_07CEB"
    %endif
    times 3 - ($ - %%insn_07ceb) db 0
    %if ($ - %%fragment_start) != 6
        %error "SIZE_07CE8"
    %endif
%endmacro
