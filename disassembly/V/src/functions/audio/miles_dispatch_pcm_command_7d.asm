; Linear entry 07CAC (1702:0c8c)
; Ghidra working symbol: FUN_1702_0c8c
; Verified role; analyzer boundary remains provisional.
; Contract: Load command 007Dh and tail-dispatch through 07418h using the original far-call arguments.
; Evidence: 02B0Eh passes the PCM driver handle after checking/refilling both buffer slots. No stronger external driver service name is assigned.
; Original byte identity is enforced by this project’s build.sh.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_miles_dispatch_pcm_command_7d_part_00 0
    %%fragment_start:
miles_dispatch_pcm_command_7d:
    %%insn_07cac:
    mov ax,0x7d ; 07CAC B87D00
    %if ($ - %%insn_07cac) > 3
        %error "LONG_07CAC"
    %endif
    times 3 - ($ - %%insn_07cac) db 0
    %%insn_07caf:
    jmp 0x7418 ; 07CAF E966F7
    %if ($ - %%insn_07caf) > 3
        %error "LONG_07CAF"
    %endif
    times 3 - ($ - %%insn_07caf) db 0
    %if ($ - %%fragment_start) != 6
        %error "SIZE_07CAC"
    %endif
%endmacro
