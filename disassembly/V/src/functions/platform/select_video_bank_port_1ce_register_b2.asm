; Linear entry 02E64 (load-image offset). Recovered indirect bank handler.
; Semantic role: select_video_bank_port_1ce_register_b2
; Contract: Program the selected video-memory bank through the literal indexed/direct port sequence below, preserving the explicitly saved registers. No chipset/vendor identity is inferred.
; Evidence: detect_video_hardware installs SS:D660 at 03070.
; dispatch_video_bank_switch at 02D54 jumps through SS:D660.
; Static instruction/indirect-pointer evidence; hardware behavior not exercised.

%macro emit_select_video_bank_port_1ce_register_b2_part_00 0
    %%fragment_start:
select_video_bank_port_1ce_register_b2:
    %%insn_02e64:
    push ax ; 02E64 50
    %if ($ - %%insn_02e64) > 1
        %error "LONG_02E64"
    %endif
    times 1 - ($ - %%insn_02e64) db 0
    %%insn_02e65:
    push dx ; 02E65 52
    %if ($ - %%insn_02e65) > 1
        %error "LONG_02E65"
    %endif
    times 1 - ($ - %%insn_02e65) db 0
    db 0x8A, 0xE0 ; 02E66 8AE0 | mov ah, al | encoding preserved
    %%insn_02e68:
    mov dx, 0x1ce ; 02E68 BACE01
    %if ($ - %%insn_02e68) > 3
        %error "LONG_02E68"
    %endif
    times 3 - ($ - %%insn_02e68) db 0
    %%insn_02e6b:
    mov al, 0xb2 ; 02E6B B0B2
    %if ($ - %%insn_02e6b) > 2
        %error "LONG_02E6B"
    %endif
    times 2 - ($ - %%insn_02e6b) db 0
    %%insn_02e6d:
    out dx, al ; 02E6D EE
    %if ($ - %%insn_02e6d) > 1
        %error "LONG_02E6D"
    %endif
    times 1 - ($ - %%insn_02e6d) db 0
    %%insn_02e6e:
    inc dl ; 02E6E FEC2
    %if ($ - %%insn_02e6e) > 2
        %error "LONG_02E6E"
    %endif
    times 2 - ($ - %%insn_02e6e) db 0
    %%insn_02e70:
    in al, dx ; 02E70 EC
    %if ($ - %%insn_02e70) > 1
        %error "LONG_02E70"
    %endif
    times 1 - ($ - %%insn_02e70) db 0
    %%insn_02e71:
    shl ah, 1 ; 02E71 D0E4
    %if ($ - %%insn_02e71) > 2
        %error "LONG_02E71"
    %endif
    times 2 - ($ - %%insn_02e71) db 0
    %%insn_02e73:
    and al, 0xe1 ; 02E73 24E1
    %if ($ - %%insn_02e73) > 2
        %error "LONG_02E73"
    %endif
    times 2 - ($ - %%insn_02e73) db 0
    db 0x0A, 0xE0 ; 02E75 0AE0 | or ah, al | encoding preserved
    %%insn_02e77:
    mov al, 0xb2 ; 02E77 B0B2
    %if ($ - %%insn_02e77) > 2
        %error "LONG_02E77"
    %endif
    times 2 - ($ - %%insn_02e77) db 0
    %%insn_02e79:
    dec dl ; 02E79 FECA
    %if ($ - %%insn_02e79) > 2
        %error "LONG_02E79"
    %endif
    times 2 - ($ - %%insn_02e79) db 0
    %%insn_02e7b:
    out dx, ax ; 02E7B EF
    %if ($ - %%insn_02e7b) > 1
        %error "LONG_02E7B"
    %endif
    times 1 - ($ - %%insn_02e7b) db 0
    %%insn_02e7c:
    pop dx ; 02E7C 5A
    %if ($ - %%insn_02e7c) > 1
        %error "LONG_02E7C"
    %endif
    times 1 - ($ - %%insn_02e7c) db 0
    %%insn_02e7d:
    pop ax ; 02E7D 58
    %if ($ - %%insn_02e7d) > 1
        %error "LONG_02E7D"
    %endif
    times 1 - ($ - %%insn_02e7d) db 0
    %%insn_02e7e:
    ret ; 02E7E C3
    %if ($ - %%insn_02e7e) > 1
        %error "LONG_02E7E"
    %endif
    times 1 - ($ - %%insn_02e7e) db 0
    %if ($ - %%fragment_start) != 27
        %error "SIZE_02E64"
    %endif
%endmacro
