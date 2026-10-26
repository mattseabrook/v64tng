; Linear entry 02F0E (load-image offset). Recovered indirect bank handler.
; Semantic role: select_video_bank_sequencer_06
; Contract: Program the selected video-memory bank through the literal indexed/direct port sequence below, preserving the explicitly saved registers. No chipset/vendor identity is inferred.
; Evidence: detect_video_hardware installs SS:D660 at 031D2.
; dispatch_video_bank_switch at 02D54 jumps through SS:D660.
; Static instruction/indirect-pointer evidence; hardware behavior not exercised.

%macro emit_select_video_bank_sequencer_06_part_00 0
    %%fragment_start:
select_video_bank_sequencer_06:
    %%insn_02f0e:
    push ax ; 02F0E 50
    %if ($ - %%insn_02f0e) > 1
        %error "LONG_02F0E"
    %endif
    times 1 - ($ - %%insn_02f0e) db 0
    %%insn_02f0f:
    push dx ; 02F0F 52
    %if ($ - %%insn_02f0f) > 1
        %error "LONG_02F0F"
    %endif
    times 1 - ($ - %%insn_02f0f) db 0
    db 0x8A, 0xE0 ; 02F10 8AE0 | mov ah, al | encoding preserved
    %%insn_02f12:
    shl al, 3 ; 02F12 C0E003
    %if ($ - %%insn_02f12) > 3
        %error "LONG_02F12"
    %endif
    times 3 - ($ - %%insn_02f12) db 0
    db 0x0A, 0xE0 ; 02F15 0AE0 | or ah, al | encoding preserved
    %%insn_02f17:
    mov al, 6 ; 02F17 B006
    %if ($ - %%insn_02f17) > 2
        %error "LONG_02F17"
    %endif
    times 2 - ($ - %%insn_02f17) db 0
    %%insn_02f19:
    or ah, 0x40 ; 02F19 80CC40
    %if ($ - %%insn_02f19) > 3
        %error "LONG_02F19"
    %endif
    times 3 - ($ - %%insn_02f19) db 0
    %%insn_02f1c:
    mov dx, 0x3c4 ; 02F1C BAC403
    %if ($ - %%insn_02f1c) > 3
        %error "LONG_02F1C"
    %endif
    times 3 - ($ - %%insn_02f1c) db 0
    %%insn_02f1f:
    out dx, ax ; 02F1F EF
    %if ($ - %%insn_02f1f) > 1
        %error "LONG_02F1F"
    %endif
    times 1 - ($ - %%insn_02f1f) db 0
    %%insn_02f20:
    pop dx ; 02F20 5A
    %if ($ - %%insn_02f20) > 1
        %error "LONG_02F20"
    %endif
    times 1 - ($ - %%insn_02f20) db 0
    %%insn_02f21:
    pop ax ; 02F21 58
    %if ($ - %%insn_02f21) > 1
        %error "LONG_02F21"
    %endif
    times 1 - ($ - %%insn_02f21) db 0
    %%insn_02f22:
    ret ; 02F22 C3
    %if ($ - %%insn_02f22) > 1
        %error "LONG_02F22"
    %endif
    times 1 - ($ - %%insn_02f22) db 0
    %if ($ - %%fragment_start) != 21
        %error "SIZE_02F0E"
    %endif
%endmacro
