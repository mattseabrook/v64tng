; Linear entry 02E80 (load-image offset). Recovered indirect bank handler.
; Semantic role: select_video_bank_sequencer_08_misc
; Contract: Program the selected video-memory bank through the literal indexed/direct port sequence below, preserving the explicitly saved registers. No chipset/vendor identity is inferred.
; Evidence: detect_video_hardware installs SS:D660 at 030A4.
; dispatch_video_bank_switch at 02D54 jumps through SS:D660.
; Static instruction/indirect-pointer evidence; hardware behavior not exercised.

%macro emit_select_video_bank_sequencer_08_misc_part_00 0
    %%fragment_start:
select_video_bank_sequencer_08_misc:
    %%insn_02e80:
    push ax ; 02E80 50
    %if ($ - %%insn_02e80) > 1
        %error "LONG_02E80"
    %endif
    times 1 - ($ - %%insn_02e80) db 0
    %%insn_02e81:
    push dx ; 02E81 52
    %if ($ - %%insn_02e81) > 1
        %error "LONG_02E81"
    %endif
    times 1 - ($ - %%insn_02e81) db 0
    %%insn_02e82:
    push cx ; 02E82 51
    %if ($ - %%insn_02e82) > 1
        %error "LONG_02E82"
    %endif
    times 1 - ($ - %%insn_02e82) db 0
    db 0x8A, 0xC8 ; 02E83 8AC8 | mov cl, al | encoding preserved
    %%insn_02e85:
    mov dx, 0x3c4 ; 02E85 BAC403
    %if ($ - %%insn_02e85) > 3
        %error "LONG_02E85"
    %endif
    times 3 - ($ - %%insn_02e85) db 0
    %%insn_02e88:
    mov al, 8 ; 02E88 B008
    %if ($ - %%insn_02e88) > 2
        %error "LONG_02E88"
    %endif
    times 2 - ($ - %%insn_02e88) db 0
    %%insn_02e8a:
    out dx, al ; 02E8A EE
    %if ($ - %%insn_02e8a) > 1
        %error "LONG_02E8A"
    %endif
    times 1 - ($ - %%insn_02e8a) db 0
    %%insn_02e8b:
    inc dl ; 02E8B FEC2
    %if ($ - %%insn_02e8b) > 2
        %error "LONG_02E8B"
    %endif
    times 2 - ($ - %%insn_02e8b) db 0
    %%insn_02e8d:
    in al, dx ; 02E8D EC
    %if ($ - %%insn_02e8d) > 1
        %error "LONG_02E8D"
    %endif
    times 1 - ($ - %%insn_02e8d) db 0
    %%insn_02e8e:
    dec dl ; 02E8E FECA
    %if ($ - %%insn_02e8e) > 2
        %error "LONG_02E8E"
    %endif
    times 2 - ($ - %%insn_02e8e) db 0
    %%insn_02e90:
    shl al, 1 ; 02E90 D0E0
    %if ($ - %%insn_02e90) > 2
        %error "LONG_02E90"
    %endif
    times 2 - ($ - %%insn_02e90) db 0
    %%insn_02e92:
    shr cl, 1 ; 02E92 D0E9
    %if ($ - %%insn_02e92) > 2
        %error "LONG_02E92"
    %endif
    times 2 - ($ - %%insn_02e92) db 0
    %%insn_02e94:
    rcr al, 1 ; 02E94 D0D8
    %if ($ - %%insn_02e94) > 2
        %error "LONG_02E94"
    %endif
    times 2 - ($ - %%insn_02e94) db 0
    db 0x8A, 0xE0 ; 02E96 8AE0 | mov ah, al | encoding preserved
    %%insn_02e98:
    mov al, 8 ; 02E98 B008
    %if ($ - %%insn_02e98) > 2
        %error "LONG_02E98"
    %endif
    times 2 - ($ - %%insn_02e98) db 0
    %%insn_02e9a:
    out dx, ax ; 02E9A EF
    %if ($ - %%insn_02e9a) > 1
        %error "LONG_02E9A"
    %endif
    times 1 - ($ - %%insn_02e9a) db 0
    %%insn_02e9b:
    mov dl, 0xcc ; 02E9B B2CC
    %if ($ - %%insn_02e9b) > 2
        %error "LONG_02E9B"
    %endif
    times 2 - ($ - %%insn_02e9b) db 0
    %%insn_02e9d:
    in al, dx ; 02E9D EC
    %if ($ - %%insn_02e9d) > 1
        %error "LONG_02E9D"
    %endif
    times 1 - ($ - %%insn_02e9d) db 0
    %%insn_02e9e:
    mov dl, 0xc2 ; 02E9E B2C2
    %if ($ - %%insn_02e9e) > 2
        %error "LONG_02E9E"
    %endif
    times 2 - ($ - %%insn_02e9e) db 0
    %%insn_02ea0:
    and al, 0xdf ; 02EA0 24DF
    %if ($ - %%insn_02ea0) > 2
        %error "LONG_02EA0"
    %endif
    times 2 - ($ - %%insn_02ea0) db 0
    %%insn_02ea2:
    shr cl, 1 ; 02EA2 D0E9
    %if ($ - %%insn_02ea2) > 2
        %error "LONG_02EA2"
    %endif
    times 2 - ($ - %%insn_02ea2) db 0
    %%insn_02ea4:
    jb short 0x2ea8 ; 02EA4 7202
    %if ($ - %%insn_02ea4) > 2
        %error "LONG_02EA4"
    %endif
    times 2 - ($ - %%insn_02ea4) db 0
    %%insn_02ea6:
    or al, 0x20 ; 02EA6 0C20
    %if ($ - %%insn_02ea6) > 2
        %error "LONG_02EA6"
    %endif
    times 2 - ($ - %%insn_02ea6) db 0
    %%insn_02ea8:
    out dx, al ; 02EA8 EE
    %if ($ - %%insn_02ea8) > 1
        %error "LONG_02EA8"
    %endif
    times 1 - ($ - %%insn_02ea8) db 0
    %%insn_02ea9:
    pop cx ; 02EA9 59
    %if ($ - %%insn_02ea9) > 1
        %error "LONG_02EA9"
    %endif
    times 1 - ($ - %%insn_02ea9) db 0
    %%insn_02eaa:
    pop dx ; 02EAA 5A
    %if ($ - %%insn_02eaa) > 1
        %error "LONG_02EAA"
    %endif
    times 1 - ($ - %%insn_02eaa) db 0
    %%insn_02eab:
    pop ax ; 02EAB 58
    %if ($ - %%insn_02eab) > 1
        %error "LONG_02EAB"
    %endif
    times 1 - ($ - %%insn_02eab) db 0
    %%insn_02eac:
    ret ; 02EAC C3
    %if ($ - %%insn_02eac) > 1
        %error "LONG_02EAC"
    %endif
    times 1 - ($ - %%insn_02eac) db 0
    %if ($ - %%fragment_start) != 45
        %error "SIZE_02E80"
    %endif
%endmacro
