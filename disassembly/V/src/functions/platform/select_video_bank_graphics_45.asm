; Linear entry 02F38 (load-image offset). Recovered indirect bank handler.
; Semantic role: select_video_bank_graphics_45
; Contract: Program the selected video-memory bank through the literal indexed/direct port sequence below, preserving the explicitly saved registers. No chipset/vendor identity is inferred.
; Evidence: detect_video_hardware installs SS:D660 at 030D4.
; dispatch_video_bank_switch at 02D54 jumps through SS:D660.
; Static instruction/indirect-pointer evidence; hardware behavior not exercised.

%macro emit_select_video_bank_graphics_45_part_00 0
    %%fragment_start:
select_video_bank_graphics_45:
    %%insn_02f38:
    push ax ; 02F38 50
    %if ($ - %%insn_02f38) > 1
        %error "LONG_02F38"
    %endif
    times 1 - ($ - %%insn_02f38) db 0
    %%insn_02f39:
    push dx ; 02F39 52
    %if ($ - %%insn_02f39) > 1
        %error "LONG_02F39"
    %endif
    times 1 - ($ - %%insn_02f39) db 0
    %%insn_02f3a:
    mov dx, 0x3ce ; 02F3A BACE03
    %if ($ - %%insn_02f3a) > 3
        %error "LONG_02F3A"
    %endif
    times 3 - ($ - %%insn_02f3a) db 0
    %%insn_02f3d:
    mov ax, 0x50f ; 02F3D B80F05
    %if ($ - %%insn_02f3d) > 3
        %error "LONG_02F3D"
    %endif
    times 3 - ($ - %%insn_02f3d) db 0
    %%insn_02f40:
    out dx, ax ; 02F40 EF
    %if ($ - %%insn_02f40) > 1
        %error "LONG_02F40"
    %endif
    times 1 - ($ - %%insn_02f40) db 0
    %%insn_02f41:
    mov ah, byte [ss:0xcf8a] ; 02F41 368A268ACF
    %if ($ - %%insn_02f41) > 5
        %error "LONG_02F41"
    %endif
    times 5 - ($ - %%insn_02f41) db 0
    %%insn_02f46:
    shl ah, 4 ; 02F46 C0E404
    %if ($ - %%insn_02f46) > 3
        %error "LONG_02F46"
    %endif
    times 3 - ($ - %%insn_02f46) db 0
    %%insn_02f49:
    mov al, 0x45 ; 02F49 B045
    %if ($ - %%insn_02f49) > 2
        %error "LONG_02F49"
    %endif
    times 2 - ($ - %%insn_02f49) db 0
    %%insn_02f4b:
    out dx, ax ; 02F4B EF
    %if ($ - %%insn_02f4b) > 1
        %error "LONG_02F4B"
    %endif
    times 1 - ($ - %%insn_02f4b) db 0
    %%insn_02f4c:
    pop dx ; 02F4C 5A
    %if ($ - %%insn_02f4c) > 1
        %error "LONG_02F4C"
    %endif
    times 1 - ($ - %%insn_02f4c) db 0
    %%insn_02f4d:
    pop ax ; 02F4D 58
    %if ($ - %%insn_02f4d) > 1
        %error "LONG_02F4D"
    %endif
    times 1 - ($ - %%insn_02f4d) db 0
    %%insn_02f4e:
    ret ; 02F4E C3
    %if ($ - %%insn_02f4e) > 1
        %error "LONG_02F4E"
    %endif
    times 1 - ($ - %%insn_02f4e) db 0
    %if ($ - %%fragment_start) != 23
        %error "SIZE_02F38"
    %endif
%endmacro
