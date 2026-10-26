; Linear entry 02E24 (load-image offset). Recovered indirect bank handler.
; Semantic role: select_video_bank_graphics_09
; Contract: Program the selected video-memory bank through the literal indexed/direct port sequence below, preserving the explicitly saved registers. No chipset/vendor identity is inferred.
; Evidence: detect_video_hardware installs SS:D660 at 03216, 03254.
; dispatch_video_bank_switch at 02D54 jumps through SS:D660.
; Static instruction/indirect-pointer evidence; hardware behavior not exercised.

%macro emit_select_video_bank_graphics_09_part_00 0
    %%fragment_start:
select_video_bank_graphics_09:
    %%insn_02e24:
    push ax ; 02E24 50
    %if ($ - %%insn_02e24) > 1
        %error "LONG_02E24"
    %endif
    times 1 - ($ - %%insn_02e24) db 0
    %%insn_02e25:
    push dx ; 02E25 52
    %if ($ - %%insn_02e25) > 1
        %error "LONG_02E25"
    %endif
    times 1 - ($ - %%insn_02e25) db 0
    %%insn_02e26:
    mov dx, 0x3ce ; 02E26 BACE03
    %if ($ - %%insn_02e26) > 3
        %error "LONG_02E26"
    %endif
    times 3 - ($ - %%insn_02e26) db 0
    %%insn_02e29:
    mov ax, 0x50f ; 02E29 B80F05
    %if ($ - %%insn_02e29) > 3
        %error "LONG_02E29"
    %endif
    times 3 - ($ - %%insn_02e29) db 0
    %%insn_02e2c:
    out dx, ax ; 02E2C EF
    %if ($ - %%insn_02e2c) > 1
        %error "LONG_02E2C"
    %endif
    times 1 - ($ - %%insn_02e2c) db 0
    %%insn_02e2d:
    mov ah, byte [ss:0xcf8a] ; 02E2D 368A268ACF
    %if ($ - %%insn_02e2d) > 5
        %error "LONG_02E2D"
    %endif
    times 5 - ($ - %%insn_02e2d) db 0
    %%insn_02e32:
    shl ah, 4 ; 02E32 C0E404
    %if ($ - %%insn_02e32) > 3
        %error "LONG_02E32"
    %endif
    times 3 - ($ - %%insn_02e32) db 0
    %%insn_02e35:
    mov al, 9 ; 02E35 B009
    %if ($ - %%insn_02e35) > 2
        %error "LONG_02E35"
    %endif
    times 2 - ($ - %%insn_02e35) db 0
    %%insn_02e37:
    out dx, ax ; 02E37 EF
    %if ($ - %%insn_02e37) > 1
        %error "LONG_02E37"
    %endif
    times 1 - ($ - %%insn_02e37) db 0
    %%insn_02e38:
    pop dx ; 02E38 5A
    %if ($ - %%insn_02e38) > 1
        %error "LONG_02E38"
    %endif
    times 1 - ($ - %%insn_02e38) db 0
    %%insn_02e39:
    pop ax ; 02E39 58
    %if ($ - %%insn_02e39) > 1
        %error "LONG_02E39"
    %endif
    times 1 - ($ - %%insn_02e39) db 0
    %%insn_02e3a:
    ret ; 02E3A C3
    %if ($ - %%insn_02e3a) > 1
        %error "LONG_02E3A"
    %endif
    times 1 - ($ - %%insn_02e3a) db 0
    %if ($ - %%fragment_start) != 23
        %error "SIZE_02E24"
    %endif
%endmacro
