; Linear entry 07C8E (1702:0c6e)
; Ghidra working symbol: FUN_1702_0c6e
; Verified role; analyzer boundary remains provisional.
; Contract: Load command 0086h and tail-dispatch through 07418h using the original far-call arguments.
; Evidence: 02A71h/02AE8h pass driver and SS:E41Ah descriptor after filling its data pointer and length; followed by slot-specific command 0079h.
; Original byte identity is enforced by this project’s build.sh.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_miles_dispatch_pcm_descriptor_command_86_part_00 0
    %%fragment_start:
miles_dispatch_pcm_descriptor_command_86:
    %%insn_07c8e:
    mov ax,0x86 ; 07C8E B88600
    %if ($ - %%insn_07c8e) > 3
        %error "LONG_07C8E"
    %endif
    times 3 - ($ - %%insn_07c8e) db 0
    %%insn_07c91:
    jmp 0x7418 ; 07C91 E984F7
    %if ($ - %%insn_07c91) > 3
        %error "LONG_07C91"
    %endif
    times 3 - ($ - %%insn_07c91) db 0
    %if ($ - %%fragment_start) != 6
        %error "SIZE_07C8E"
    %endif
%endmacro
