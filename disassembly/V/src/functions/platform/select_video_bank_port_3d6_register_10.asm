; Linear entry 02E3C (load-image offset). Recovered indirect bank handler.
; Semantic role: select_video_bank_port_3d6_register_10
; Contract: Program the selected video-memory bank through the literal indexed/direct port sequence below, preserving the explicitly saved registers. No chipset/vendor identity is inferred.
; Evidence: detect_video_hardware installs SS:D660 at 03287.
; dispatch_video_bank_switch at 02D54 jumps through SS:D660.
; Static instruction/indirect-pointer evidence; hardware behavior not exercised.

%macro emit_select_video_bank_port_3d6_register_10_part_00 0
    %%fragment_start:
select_video_bank_port_3d6_register_10:
    %%insn_02e3c:
    push ax ; 02E3C 50
    %if ($ - %%insn_02e3c) > 1
        %error "LONG_02E3C"
    %endif
    times 1 - ($ - %%insn_02e3c) db 0
    %%insn_02e3d:
    push dx ; 02E3D 52
    %if ($ - %%insn_02e3d) > 1
        %error "LONG_02E3D"
    %endif
    times 1 - ($ - %%insn_02e3d) db 0
    %%insn_02e3e:
    mov dx, 0x46e8 ; 02E3E BAE846
    %if ($ - %%insn_02e3e) > 3
        %error "LONG_02E3E"
    %endif
    times 3 - ($ - %%insn_02e3e) db 0
    %%insn_02e41:
    mov ax, 0x1e ; 02E41 B81E00
    %if ($ - %%insn_02e41) > 3
        %error "LONG_02E41"
    %endif
    times 3 - ($ - %%insn_02e41) db 0
    %%insn_02e44:
    out dx, ax ; 02E44 EF
    %if ($ - %%insn_02e44) > 1
        %error "LONG_02E44"
    %endif
    times 1 - ($ - %%insn_02e44) db 0
    %%insn_02e45:
    mov dx, 0x103 ; 02E45 BA0301
    %if ($ - %%insn_02e45) > 3
        %error "LONG_02E45"
    %endif
    times 3 - ($ - %%insn_02e45) db 0
    %%insn_02e48:
    mov ax, 0x80 ; 02E48 B88000
    %if ($ - %%insn_02e48) > 3
        %error "LONG_02E48"
    %endif
    times 3 - ($ - %%insn_02e48) db 0
    %%insn_02e4b:
    out dx, ax ; 02E4B EF
    %if ($ - %%insn_02e4b) > 1
        %error "LONG_02E4B"
    %endif
    times 1 - ($ - %%insn_02e4b) db 0
    %%insn_02e4c:
    mov dx, 0x46e8 ; 02E4C BAE846
    %if ($ - %%insn_02e4c) > 3
        %error "LONG_02E4C"
    %endif
    times 3 - ($ - %%insn_02e4c) db 0
    %%insn_02e4f:
    mov ax, 0xe ; 02E4F B80E00
    %if ($ - %%insn_02e4f) > 3
        %error "LONG_02E4F"
    %endif
    times 3 - ($ - %%insn_02e4f) db 0
    %%insn_02e52:
    out dx, ax ; 02E52 EF
    %if ($ - %%insn_02e52) > 1
        %error "LONG_02E52"
    %endif
    times 1 - ($ - %%insn_02e52) db 0
    %%insn_02e53:
    mov ah, byte [ss:0xcf8a] ; 02E53 368A268ACF
    %if ($ - %%insn_02e53) > 5
        %error "LONG_02E53"
    %endif
    times 5 - ($ - %%insn_02e53) db 0
    %%insn_02e58:
    shl ah, 2 ; 02E58 C0E402
    %if ($ - %%insn_02e58) > 3
        %error "LONG_02E58"
    %endif
    times 3 - ($ - %%insn_02e58) db 0
    %%insn_02e5b:
    mov al, 0x10 ; 02E5B B010
    %if ($ - %%insn_02e5b) > 2
        %error "LONG_02E5B"
    %endif
    times 2 - ($ - %%insn_02e5b) db 0
    %%insn_02e5d:
    mov dx, 0x3d6 ; 02E5D BAD603
    %if ($ - %%insn_02e5d) > 3
        %error "LONG_02E5D"
    %endif
    times 3 - ($ - %%insn_02e5d) db 0
    %%insn_02e60:
    out dx, ax ; 02E60 EF
    %if ($ - %%insn_02e60) > 1
        %error "LONG_02E60"
    %endif
    times 1 - ($ - %%insn_02e60) db 0
    %%insn_02e61:
    pop dx ; 02E61 5A
    %if ($ - %%insn_02e61) > 1
        %error "LONG_02E61"
    %endif
    times 1 - ($ - %%insn_02e61) db 0
    %%insn_02e62:
    pop ax ; 02E62 58
    %if ($ - %%insn_02e62) > 1
        %error "LONG_02E62"
    %endif
    times 1 - ($ - %%insn_02e62) db 0
    %%insn_02e63:
    ret ; 02E63 C3
    %if ($ - %%insn_02e63) > 1
        %error "LONG_02E63"
    %endif
    times 1 - ($ - %%insn_02e63) db 0
    %if ($ - %%fragment_start) != 40
        %error "SIZE_02E3C"
    %endif
%endmacro
