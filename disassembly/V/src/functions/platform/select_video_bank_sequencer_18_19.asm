; Linear entry 02F24 (load-image offset). Recovered indirect bank handler.
; Semantic role: select_video_bank_sequencer_18_19
; Contract: Program the selected video-memory bank through the literal indexed/direct port sequence below, preserving the explicitly saved registers. No chipset/vendor identity is inferred.
; Evidence: detect_video_hardware installs SS:D660 at 03112.
; dispatch_video_bank_switch at 02D54 jumps through SS:D660.
; Static instruction/indirect-pointer evidence; hardware behavior not exercised.

%macro emit_select_video_bank_sequencer_18_19_part_00 0
    %%fragment_start:
select_video_bank_sequencer_18_19:
    %%insn_02f24:
    push ax ; 02F24 50
    %if ($ - %%insn_02f24) > 1
        %error "LONG_02F24"
    %endif
    times 1 - ($ - %%insn_02f24) db 0
    %%insn_02f25:
    push dx ; 02F25 52
    %if ($ - %%insn_02f25) > 1
        %error "LONG_02F25"
    %endif
    times 1 - ($ - %%insn_02f25) db 0
    %%insn_02f26:
    shl al, 2 ; 02F26 C0E002
    %if ($ - %%insn_02f26) > 3
        %error "LONG_02F26"
    %endif
    times 3 - ($ - %%insn_02f26) db 0
    db 0x8A, 0xE0 ; 02F29 8AE0 | mov ah, al | encoding preserved
    %%insn_02f2b:
    mov al, 0x18 ; 02F2B B018
    %if ($ - %%insn_02f2b) > 2
        %error "LONG_02F2B"
    %endif
    times 2 - ($ - %%insn_02f2b) db 0
    %%insn_02f2d:
    mov dx, 0x3c4 ; 02F2D BAC403
    %if ($ - %%insn_02f2d) > 3
        %error "LONG_02F2D"
    %endif
    times 3 - ($ - %%insn_02f2d) db 0
    %%insn_02f30:
    out dx, ax ; 02F30 EF
    %if ($ - %%insn_02f30) > 1
        %error "LONG_02F30"
    %endif
    times 1 - ($ - %%insn_02f30) db 0
    %%insn_02f31:
    mov ax, 0x19 ; 02F31 B81900
    %if ($ - %%insn_02f31) > 3
        %error "LONG_02F31"
    %endif
    times 3 - ($ - %%insn_02f31) db 0
    %%insn_02f34:
    out dx, ax ; 02F34 EF
    %if ($ - %%insn_02f34) > 1
        %error "LONG_02F34"
    %endif
    times 1 - ($ - %%insn_02f34) db 0
    %%insn_02f35:
    pop dx ; 02F35 5A
    %if ($ - %%insn_02f35) > 1
        %error "LONG_02F35"
    %endif
    times 1 - ($ - %%insn_02f35) db 0
    %%insn_02f36:
    pop ax ; 02F36 58
    %if ($ - %%insn_02f36) > 1
        %error "LONG_02F36"
    %endif
    times 1 - ($ - %%insn_02f36) db 0
    %%insn_02f37:
    ret ; 02F37 C3
    %if ($ - %%insn_02f37) > 1
        %error "LONG_02F37"
    %endif
    times 1 - ($ - %%insn_02f37) db 0
    %if ($ - %%fragment_start) != 20
        %error "SIZE_02F24"
    %endif
%endmacro
