; Linear entry 02D8E (load-image offset). Recovered indirect bank handler.
; Semantic role: unlock_video_and_write_bank_port_3cd_4bit
; Contract: Program the selected video-memory bank through the literal indexed/direct port sequence below, preserving the explicitly saved registers. No chipset/vendor identity is inferred.
; Evidence: detect_video_hardware installs SS:D660 at 0331F.
; dispatch_video_bank_switch at 02D54 jumps through SS:D660.
; Static instruction/indirect-pointer evidence; hardware behavior not exercised.

%macro emit_unlock_video_and_write_bank_port_3cd_4bit_part_00 0
    %%fragment_start:
unlock_video_and_write_bank_port_3cd_4bit:
    %%insn_02d8e:
    push ax ; 02D8E 50
    %if ($ - %%insn_02d8e) > 1
        %error "LONG_02D8E"
    %endif
    times 1 - ($ - %%insn_02d8e) db 0
    %%insn_02d8f:
    push dx ; 02D8F 52
    %if ($ - %%insn_02d8f) > 1
        %error "LONG_02D8F"
    %endif
    times 1 - ($ - %%insn_02d8f) db 0
    db 0x8A, 0xE0 ; 02D90 8AE0 | mov ah, al | encoding preserved
    %%insn_02d92:
    mov dx, 0x3bf ; 02D92 BABF03
    %if ($ - %%insn_02d92) > 3
        %error "LONG_02D92"
    %endif
    times 3 - ($ - %%insn_02d92) db 0
    %%insn_02d95:
    mov al, 3 ; 02D95 B003
    %if ($ - %%insn_02d95) > 2
        %error "LONG_02D95"
    %endif
    times 2 - ($ - %%insn_02d95) db 0
    %%insn_02d97:
    out dx, al ; 02D97 EE
    %if ($ - %%insn_02d97) > 1
        %error "LONG_02D97"
    %endif
    times 1 - ($ - %%insn_02d97) db 0
    %%insn_02d98:
    mov dl, 0xd8 ; 02D98 B2D8
    %if ($ - %%insn_02d98) > 2
        %error "LONG_02D98"
    %endif
    times 2 - ($ - %%insn_02d98) db 0
    %%insn_02d9a:
    mov al, 0xa0 ; 02D9A B0A0
    %if ($ - %%insn_02d9a) > 2
        %error "LONG_02D9A"
    %endif
    times 2 - ($ - %%insn_02d9a) db 0
    %%insn_02d9c:
    out dx, al ; 02D9C EE
    %if ($ - %%insn_02d9c) > 1
        %error "LONG_02D9C"
    %endif
    times 1 - ($ - %%insn_02d9c) db 0
    %%insn_02d9d:
    and ah, 0xf ; 02D9D 80E40F
    %if ($ - %%insn_02d9d) > 3
        %error "LONG_02D9D"
    %endif
    times 3 - ($ - %%insn_02d9d) db 0
    db 0x8A, 0xC4 ; 02DA0 8AC4 | mov al, ah | encoding preserved
    %%insn_02da2:
    shl al, 4 ; 02DA2 C0E004
    %if ($ - %%insn_02da2) > 3
        %error "LONG_02DA2"
    %endif
    times 3 - ($ - %%insn_02da2) db 0
    db 0x0A, 0xC4 ; 02DA5 0AC4 | or al, ah | encoding preserved
    %%insn_02da7:
    mov dl, 0xcd ; 02DA7 B2CD
    %if ($ - %%insn_02da7) > 2
        %error "LONG_02DA7"
    %endif
    times 2 - ($ - %%insn_02da7) db 0
    %%insn_02da9:
    out dx, al ; 02DA9 EE
    %if ($ - %%insn_02da9) > 1
        %error "LONG_02DA9"
    %endif
    times 1 - ($ - %%insn_02da9) db 0
    %%insn_02daa:
    pop dx ; 02DAA 5A
    %if ($ - %%insn_02daa) > 1
        %error "LONG_02DAA"
    %endif
    times 1 - ($ - %%insn_02daa) db 0
    %%insn_02dab:
    pop ax ; 02DAB 58
    %if ($ - %%insn_02dab) > 1
        %error "LONG_02DAB"
    %endif
    times 1 - ($ - %%insn_02dab) db 0
    %%insn_02dac:
    ret ; 02DAC C3
    %if ($ - %%insn_02dac) > 1
        %error "LONG_02DAC"
    %endif
    times 1 - ($ - %%insn_02dac) db 0
    %if ($ - %%fragment_start) != 31
        %error "SIZE_02D8E"
    %endif
%endmacro
