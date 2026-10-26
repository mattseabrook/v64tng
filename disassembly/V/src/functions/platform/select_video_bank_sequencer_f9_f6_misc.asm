; Linear entry 02DDE (load-image offset). Recovered indirect bank handler.
; Semantic role: select_video_bank_sequencer_f9_f6_misc
; Contract: Program the selected video-memory bank through the literal indexed/direct port sequence below, preserving the explicitly saved registers. No chipset/vendor identity is inferred.
; Evidence: detect_video_hardware installs SS:D660 at 03188.
; dispatch_video_bank_switch at 02D54 jumps through SS:D660.
; Static instruction/indirect-pointer evidence; hardware behavior not exercised.

%macro emit_select_video_bank_sequencer_f9_f6_misc_part_00 0
    %%fragment_start:
select_video_bank_sequencer_f9_f6_misc:
    %%insn_02dde:
    push ax ; 02DDE 50
    %if ($ - %%insn_02dde) > 1
        %error "LONG_02DDE"
    %endif
    times 1 - ($ - %%insn_02dde) db 0
    %%insn_02ddf:
    push dx ; 02DDF 52
    %if ($ - %%insn_02ddf) > 1
        %error "LONG_02DDF"
    %endif
    times 1 - ($ - %%insn_02ddf) db 0
    %%insn_02de0:
    push cx ; 02DE0 51
    %if ($ - %%insn_02de0) > 1
        %error "LONG_02DE0"
    %endif
    times 1 - ($ - %%insn_02de0) db 0
    db 0x25, 0x0F, 0x00 ; 02DE1 250F00 | and ax,0xf | encoding preserved
    db 0x8A, 0xE8 ; 02DE4 8AE8 | mov ch, al | encoding preserved
    %%insn_02de6:
    mov dx, 0x3c4 ; 02DE6 BAC403
    %if ($ - %%insn_02de6) > 3
        %error "LONG_02DE6"
    %endif
    times 3 - ($ - %%insn_02de6) db 0
    %%insn_02de9:
    mov ax, 0xea06 ; 02DE9 B806EA
    %if ($ - %%insn_02de9) > 3
        %error "LONG_02DE9"
    %endif
    times 3 - ($ - %%insn_02de9) db 0
    %%insn_02dec:
    out dx, ax ; 02DEC EF
    %if ($ - %%insn_02dec) > 1
        %error "LONG_02DEC"
    %endif
    times 1 - ($ - %%insn_02dec) db 0
    db 0x8A, 0xE5 ; 02DED 8AE5 | mov ah, ch | encoding preserved
    %%insn_02def:
    and ah, 1 ; 02DEF 80E401
    %if ($ - %%insn_02def) > 3
        %error "LONG_02DEF"
    %endif
    times 3 - ($ - %%insn_02def) db 0
    %%insn_02df2:
    mov al, 0xf9 ; 02DF2 B0F9
    %if ($ - %%insn_02df2) > 2
        %error "LONG_02DF2"
    %endif
    times 2 - ($ - %%insn_02df2) db 0
    %%insn_02df4:
    out dx, ax ; 02DF4 EF
    %if ($ - %%insn_02df4) > 1
        %error "LONG_02DF4"
    %endif
    times 1 - ($ - %%insn_02df4) db 0
    db 0x8A, 0xC5 ; 02DF5 8AC5 | mov al, ch | encoding preserved
    %%insn_02df7:
    and al, 0xc ; 02DF7 240C
    %if ($ - %%insn_02df7) > 2
        %error "LONG_02DF7"
    %endif
    times 2 - ($ - %%insn_02df7) db 0
    db 0x8A, 0xE0 ; 02DF9 8AE0 | mov ah, al | encoding preserved
    %%insn_02dfb:
    shr ah, 2 ; 02DFB C0EC02
    %if ($ - %%insn_02dfb) > 3
        %error "LONG_02DFB"
    %endif
    times 3 - ($ - %%insn_02dfb) db 0
    db 0x0A, 0xE0 ; 02DFE 0AE0 | or ah, al | encoding preserved
    %%insn_02e00:
    mov al, 0xf6 ; 02E00 B0F6
    %if ($ - %%insn_02e00) > 2
        %error "LONG_02E00"
    %endif
    times 2 - ($ - %%insn_02e00) db 0
    %%insn_02e02:
    out dx, al ; 02E02 EE
    %if ($ - %%insn_02e02) > 1
        %error "LONG_02E02"
    %endif
    times 1 - ($ - %%insn_02e02) db 0
    %%insn_02e03:
    inc dx ; 02E03 42
    %if ($ - %%insn_02e03) > 1
        %error "LONG_02E03"
    %endif
    times 1 - ($ - %%insn_02e03) db 0
    %%insn_02e04:
    in al, dx ; 02E04 EC
    %if ($ - %%insn_02e04) > 1
        %error "LONG_02E04"
    %endif
    times 1 - ($ - %%insn_02e04) db 0
    %%insn_02e05:
    dec dx ; 02E05 4A
    %if ($ - %%insn_02e05) > 1
        %error "LONG_02E05"
    %endif
    times 1 - ($ - %%insn_02e05) db 0
    %%insn_02e06:
    and al, 0xf0 ; 02E06 24F0
    %if ($ - %%insn_02e06) > 2
        %error "LONG_02E06"
    %endif
    times 2 - ($ - %%insn_02e06) db 0
    db 0x0A, 0xE0 ; 02E08 0AE0 | or ah, al | encoding preserved
    %%insn_02e0a:
    mov al, 0xf6 ; 02E0A B0F6
    %if ($ - %%insn_02e0a) > 2
        %error "LONG_02E0A"
    %endif
    times 2 - ($ - %%insn_02e0a) db 0
    %%insn_02e0c:
    out dx, ax ; 02E0C EF
    %if ($ - %%insn_02e0c) > 1
        %error "LONG_02E0C"
    %endif
    times 1 - ($ - %%insn_02e0c) db 0
    db 0x8A, 0xE5 ; 02E0D 8AE5 | mov ah, ch | encoding preserved
    %%insn_02e0f:
    mov cl, 4 ; 02E0F B104
    %if ($ - %%insn_02e0f) > 2
        %error "LONG_02E0F"
    %endif
    times 2 - ($ - %%insn_02e0f) db 0
    %%insn_02e11:
    shl ah, cl ; 02E11 D2E4
    %if ($ - %%insn_02e11) > 2
        %error "LONG_02E11"
    %endif
    times 2 - ($ - %%insn_02e11) db 0
    %%insn_02e13:
    and ah, 0x20 ; 02E13 80E420
    %if ($ - %%insn_02e13) > 3
        %error "LONG_02E13"
    %endif
    times 3 - ($ - %%insn_02e13) db 0
    %%insn_02e16:
    mov dl, 0xcc ; 02E16 B2CC
    %if ($ - %%insn_02e16) > 2
        %error "LONG_02E16"
    %endif
    times 2 - ($ - %%insn_02e16) db 0
    %%insn_02e18:
    in al, dx ; 02E18 EC
    %if ($ - %%insn_02e18) > 1
        %error "LONG_02E18"
    %endif
    times 1 - ($ - %%insn_02e18) db 0
    %%insn_02e19:
    mov dl, 0xc2 ; 02E19 B2C2
    %if ($ - %%insn_02e19) > 2
        %error "LONG_02E19"
    %endif
    times 2 - ($ - %%insn_02e19) db 0
    %%insn_02e1b:
    and al, 0xdf ; 02E1B 24DF
    %if ($ - %%insn_02e1b) > 2
        %error "LONG_02E1B"
    %endif
    times 2 - ($ - %%insn_02e1b) db 0
    db 0x0A, 0xC4 ; 02E1D 0AC4 | or al, ah | encoding preserved
    %%insn_02e1f:
    out dx, al ; 02E1F EE
    %if ($ - %%insn_02e1f) > 1
        %error "LONG_02E1F"
    %endif
    times 1 - ($ - %%insn_02e1f) db 0
    %%insn_02e20:
    pop cx ; 02E20 59
    %if ($ - %%insn_02e20) > 1
        %error "LONG_02E20"
    %endif
    times 1 - ($ - %%insn_02e20) db 0
    %%insn_02e21:
    pop dx ; 02E21 5A
    %if ($ - %%insn_02e21) > 1
        %error "LONG_02E21"
    %endif
    times 1 - ($ - %%insn_02e21) db 0
    %%insn_02e22:
    pop ax ; 02E22 58
    %if ($ - %%insn_02e22) > 1
        %error "LONG_02E22"
    %endif
    times 1 - ($ - %%insn_02e22) db 0
    %%insn_02e23:
    ret ; 02E23 C3
    %if ($ - %%insn_02e23) > 1
        %error "LONG_02E23"
    %endif
    times 1 - ($ - %%insn_02e23) db 0
    %if ($ - %%fragment_start) != 70
        %error "SIZE_02DDE"
    %endif
%endmacro
