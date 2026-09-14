; PE virtual entry 00409D55
; Ghidra working symbol: FUN_00409d55
; Verified role; evidence:
; Static + machine-code test. Clears refill-enable global 00420A08h; preserves ring pointers and
; counters. Called by finalize_vdx_stream_playback at 0040C76Dh.
; Generated losslessly; preserve byte identity after edits.

%macro emit_disable_vdx_read_refills_part_00 0
    %%fragment_start:
disable_vdx_read_refills:
    %%insn_00409d55:
    push ebp ; 00409D55 55
    %if ($ - %%insn_00409d55) > 1
        %error "LONG_00409D55"
    %endif
    times 1 - ($ - %%insn_00409d55) db 0
    db 0x8B, 0xEC ; 00409D56 8BEC | mov ebp,esp | encoding preserved
    %%insn_00409d58:
    mov dword [0x420a08],0x0 ; 00409D58 C705080A420000000000
    %if ($ - %%insn_00409d58) > 10
        %error "LONG_00409D58"
    %endif
    times 10 - ($ - %%insn_00409d58) db 0
    %%insn_00409d62:
    pop ebp ; 00409D62 5D
    %if ($ - %%insn_00409d62) > 1
        %error "LONG_00409D62"
    %endif
    times 1 - ($ - %%insn_00409d62) db 0
    %%insn_00409d63:
    ret ; 00409D63 C3
    %if ($ - %%insn_00409d63) > 1
        %error "LONG_00409D63"
    %endif
    times 1 - ($ - %%insn_00409d63) db 0
    %if ($ - %%fragment_start) != 15
        %error "function fragment size drift: 00409D55"
    %endif
%endmacro
