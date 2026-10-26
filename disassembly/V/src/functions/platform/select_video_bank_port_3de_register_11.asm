; Linear entry 02EFA (load-image offset). Recovered indirect bank handler.
; Semantic role: select_video_bank_port_3de_register_11
; Contract: Program the selected video-memory bank through the literal indexed/direct port sequence below, preserving the explicitly saved registers. No chipset/vendor identity is inferred.
; Evidence: detect_video_hardware installs SS:D660 at 03385.
; dispatch_video_bank_switch at 02D54 jumps through SS:D660.
; Static instruction/indirect-pointer evidence; hardware behavior not exercised.

%macro emit_select_video_bank_port_3de_register_11_part_00 0
    %%fragment_start:
select_video_bank_port_3de_register_11:
    %%insn_02efa:
    push ax ; 02EFA 50
    %if ($ - %%insn_02efa) > 1
        %error "LONG_02EFA"
    %endif
    times 1 - ($ - %%insn_02efa) db 0
    %%insn_02efb:
    push dx ; 02EFB 52
    %if ($ - %%insn_02efb) > 1
        %error "LONG_02EFB"
    %endif
    times 1 - ($ - %%insn_02efb) db 0
    %%insn_02efc:
    and al, 0xf ; 02EFC 240F
    %if ($ - %%insn_02efc) > 2
        %error "LONG_02EFC"
    %endif
    times 2 - ($ - %%insn_02efc) db 0
    db 0x8A, 0xE0 ; 02EFE 8AE0 | mov ah, al | encoding preserved
    %%insn_02f00:
    shl al, 4 ; 02F00 C0E004
    %if ($ - %%insn_02f00) > 3
        %error "LONG_02F00"
    %endif
    times 3 - ($ - %%insn_02f00) db 0
    db 0x0A, 0xE0 ; 02F03 0AE0 | or ah, al | encoding preserved
    %%insn_02f05:
    mov al, 0x11 ; 02F05 B011
    %if ($ - %%insn_02f05) > 2
        %error "LONG_02F05"
    %endif
    times 2 - ($ - %%insn_02f05) db 0
    %%insn_02f07:
    mov dx, 0x3de ; 02F07 BADE03
    %if ($ - %%insn_02f07) > 3
        %error "LONG_02F07"
    %endif
    times 3 - ($ - %%insn_02f07) db 0
    %%insn_02f0a:
    out dx, ax ; 02F0A EF
    %if ($ - %%insn_02f0a) > 1
        %error "LONG_02F0A"
    %endif
    times 1 - ($ - %%insn_02f0a) db 0
    %%insn_02f0b:
    pop dx ; 02F0B 5A
    %if ($ - %%insn_02f0b) > 1
        %error "LONG_02F0B"
    %endif
    times 1 - ($ - %%insn_02f0b) db 0
    %%insn_02f0c:
    pop ax ; 02F0C 58
    %if ($ - %%insn_02f0c) > 1
        %error "LONG_02F0C"
    %endif
    times 1 - ($ - %%insn_02f0c) db 0
    %%insn_02f0d:
    ret ; 02F0D C3
    %if ($ - %%insn_02f0d) > 1
        %error "LONG_02F0D"
    %endif
    times 1 - ($ - %%insn_02f0d) db 0
    %if ($ - %%fragment_start) != 20
        %error "SIZE_02EFA"
    %endif
%endmacro
