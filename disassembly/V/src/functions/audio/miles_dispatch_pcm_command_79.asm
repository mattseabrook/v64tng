; Linear entry 07C88 (1702:0c68)
; Ghidra working symbol: FUN_1702_0c68
; Verified role; analyzer boundary remains provisional.
; Contract: Load command 0079h and tail-dispatch through 07418h using the original far-call arguments.
; Evidence: 02A86h/02AFEh pass driver, buffer slot, and descriptor far pointer after command 0086h. External driver semantics are not asserted beyond this transport role.
; Original byte identity is enforced by this project’s build.sh.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_miles_dispatch_pcm_command_79_part_00 0
    %%fragment_start:
miles_dispatch_pcm_command_79:
    %%insn_07c88:
    mov ax,0x79 ; 07C88 B87900
    %if ($ - %%insn_07c88) > 3
        %error "LONG_07C88"
    %endif
    times 3 - ($ - %%insn_07c88) db 0
    %%insn_07c8b:
    jmp 0x7418 ; 07C8B E98AF7
    %if ($ - %%insn_07c8b) > 3
        %error "LONG_07C8B"
    %endif
    times 3 - ($ - %%insn_07c8b) db 0
    %if ($ - %%fragment_start) != 6
        %error "SIZE_07C88"
    %endif
%endmacro
