; Linear entry 07CFA (1702:0cda)
; Ghidra working symbol: FUN_1702_0cda
; Verified descriptive role; original bytes and analyzer entry retained.
; Contract: Load AX with driver command 009Bh and tail-dispatch through 07418h, preserving the original far return/argument frame. This identifies the transport role; full external-driver service behavior is not asserted.
; Original byte identity is enforced by this project’s build.sh.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_miles_dispatch_driver_command_9b_part_00 0
    %%fragment_start:
miles_dispatch_driver_command_9b:
    %%insn_07cfa:
    mov ax,0x9b ; 07CFA B89B00
    %if ($ - %%insn_07cfa) > 3
        %error "LONG_07CFA"
    %endif
    times 3 - ($ - %%insn_07cfa) db 0
    %%insn_07cfd:
    jmp 0x7418 ; 07CFD E918F7
    %if ($ - %%insn_07cfd) > 3
        %error "LONG_07CFD"
    %endif
    times 3 - ($ - %%insn_07cfd) db 0
    %if ($ - %%fragment_start) != 6
        %error "SIZE_07CFA"
    %endif
%endmacro
