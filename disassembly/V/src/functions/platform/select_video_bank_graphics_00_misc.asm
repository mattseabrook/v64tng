; Linear entry 02EAE (load-image offset). Recovered indirect bank handler.
; Semantic role: select_video_bank_graphics_00_misc
; Contract: Program the selected video-memory bank through the literal indexed/direct port sequence below, preserving the explicitly saved registers. No chipset/vendor identity is inferred.
; Evidence: detect_video_hardware installs SS:D660 at 03346.
; dispatch_video_bank_switch at 02D54 jumps through SS:D660.
; Static instruction/indirect-pointer evidence; hardware behavior not exercised.

%macro emit_select_video_bank_graphics_00_misc_part_00 0
    %%fragment_start:
select_video_bank_graphics_00_misc:
    %%insn_02eae:
    push ax ; 02EAE 50
    %if ($ - %%insn_02eae) > 1
        %error "LONG_02EAE"
    %endif
    times 1 - ($ - %%insn_02eae) db 0
    %%insn_02eaf:
    push dx ; 02EAF 52
    %if ($ - %%insn_02eaf) > 1
        %error "LONG_02EAF"
    %endif
    times 1 - ($ - %%insn_02eaf) db 0
    %%insn_02eb0:
    push cx ; 02EB0 51
    %if ($ - %%insn_02eb0) > 1
        %error "LONG_02EB0"
    %endif
    times 1 - ($ - %%insn_02eb0) db 0
    db 0x8A, 0xE8 ; 02EB1 8AE8 | mov ch, al | encoding preserved
    %%insn_02eb3:
    mov dx, 0x3ce ; 02EB3 BACE03
    %if ($ - %%insn_02eb3) > 3
        %error "LONG_02EB3"
    %endif
    times 3 - ($ - %%insn_02eb3) db 0
    %%insn_02eb6:
    mov ax, 0x200f ; 02EB6 B80F20
    %if ($ - %%insn_02eb6) > 3
        %error "LONG_02EB6"
    %endif
    times 3 - ($ - %%insn_02eb6) db 0
    %%insn_02eb9:
    out dx, ax ; 02EB9 EF
    %if ($ - %%insn_02eb9) > 1
        %error "LONG_02EB9"
    %endif
    times 1 - ($ - %%insn_02eb9) db 0
    %%insn_02eba:
    mov dl, 0xcc ; 02EBA B2CC
    %if ($ - %%insn_02eba) > 2
        %error "LONG_02EBA"
    %endif
    times 2 - ($ - %%insn_02eba) db 0
    %%insn_02ebc:
    in al, dx ; 02EBC EC
    %if ($ - %%insn_02ebc) > 1
        %error "LONG_02EBC"
    %endif
    times 1 - ($ - %%insn_02ebc) db 0
    %%insn_02ebd:
    mov dl, 0xc2 ; 02EBD B2C2
    %if ($ - %%insn_02ebd) > 2
        %error "LONG_02EBD"
    %endif
    times 2 - ($ - %%insn_02ebd) db 0
    %%insn_02ebf:
    and al, 0xdf ; 02EBF 24DF
    %if ($ - %%insn_02ebf) > 2
        %error "LONG_02EBF"
    %endif
    times 2 - ($ - %%insn_02ebf) db 0
    %%insn_02ec1:
    shr ch, 1 ; 02EC1 D0ED
    %if ($ - %%insn_02ec1) > 2
        %error "LONG_02EC1"
    %endif
    times 2 - ($ - %%insn_02ec1) db 0
    %%insn_02ec3:
    jae short 0x2ec7 ; 02EC3 7302
    %if ($ - %%insn_02ec3) > 2
        %error "LONG_02EC3"
    %endif
    times 2 - ($ - %%insn_02ec3) db 0
    %%insn_02ec5:
    or al, 0x20 ; 02EC5 0C20
    %if ($ - %%insn_02ec5) > 2
        %error "LONG_02EC5"
    %endif
    times 2 - ($ - %%insn_02ec5) db 0
    %%insn_02ec7:
    out dx, al ; 02EC7 EE
    %if ($ - %%insn_02ec7) > 1
        %error "LONG_02EC7"
    %endif
    times 1 - ($ - %%insn_02ec7) db 0
    %%insn_02ec8:
    mov dl, 0xcf ; 02EC8 B2CF
    %if ($ - %%insn_02ec8) > 2
        %error "LONG_02EC8"
    %endif
    times 2 - ($ - %%insn_02ec8) db 0
    %%insn_02eca:
    mov al, 0 ; 02ECA B000
    %if ($ - %%insn_02eca) > 2
        %error "LONG_02ECA"
    %endif
    times 2 - ($ - %%insn_02eca) db 0
    %%insn_02ecc:
    out dx, al ; 02ECC EE
    %if ($ - %%insn_02ecc) > 1
        %error "LONG_02ECC"
    %endif
    times 1 - ($ - %%insn_02ecc) db 0
    %%insn_02ecd:
    inc dx ; 02ECD 42
    %if ($ - %%insn_02ecd) > 1
        %error "LONG_02ECD"
    %endif
    times 1 - ($ - %%insn_02ecd) db 0
    %%insn_02ece:
    in al, dx ; 02ECE EC
    %if ($ - %%insn_02ece) > 1
        %error "LONG_02ECE"
    %endif
    times 1 - ($ - %%insn_02ece) db 0
    %%insn_02ecf:
    dec dx ; 02ECF 4A
    %if ($ - %%insn_02ecf) > 1
        %error "LONG_02ECF"
    %endif
    times 1 - ($ - %%insn_02ecf) db 0
    %%insn_02ed0:
    and al, 0xf8 ; 02ED0 24F8
    %if ($ - %%insn_02ed0) > 2
        %error "LONG_02ED0"
    %endif
    times 2 - ($ - %%insn_02ed0) db 0
    db 0x0A, 0xC5 ; 02ED2 0AC5 | or al, ch | encoding preserved
    db 0x8A, 0xE0 ; 02ED4 8AE0 | mov ah, al | encoding preserved
    %%insn_02ed6:
    mov al, 0 ; 02ED6 B000
    %if ($ - %%insn_02ed6) > 2
        %error "LONG_02ED6"
    %endif
    times 2 - ($ - %%insn_02ed6) db 0
    %%insn_02ed8:
    out dx, ax ; 02ED8 EF
    %if ($ - %%insn_02ed8) > 1
        %error "LONG_02ED8"
    %endif
    times 1 - ($ - %%insn_02ed8) db 0
    %%insn_02ed9:
    pop cx ; 02ED9 59
    %if ($ - %%insn_02ed9) > 1
        %error "LONG_02ED9"
    %endif
    times 1 - ($ - %%insn_02ed9) db 0
    %%insn_02eda:
    pop dx ; 02EDA 5A
    %if ($ - %%insn_02eda) > 1
        %error "LONG_02EDA"
    %endif
    times 1 - ($ - %%insn_02eda) db 0
    %%insn_02edb:
    pop ax ; 02EDB 58
    %if ($ - %%insn_02edb) > 1
        %error "LONG_02EDB"
    %endif
    times 1 - ($ - %%insn_02edb) db 0
    %%insn_02edc:
    ret ; 02EDC C3
    %if ($ - %%insn_02edc) > 1
        %error "LONG_02EDC"
    %endif
    times 1 - ($ - %%insn_02edc) db 0
    %if ($ - %%fragment_start) != 47
        %error "SIZE_02EAE"
    %endif
%endmacro
