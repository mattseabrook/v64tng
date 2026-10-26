; Linear entry 02DAE (load-image offset). Recovered indirect bank handler.
; Semantic role: select_video_bank_sequencer_0e_xor_02
; Contract: Program the selected video-memory bank through the literal indexed/direct port sequence below, preserving the explicitly saved registers. No chipset/vendor identity is inferred.
; Evidence: detect_video_hardware installs SS:D660 at 0313E.
; dispatch_video_bank_switch at 02D54 jumps through SS:D660.
; Static instruction/indirect-pointer evidence; hardware behavior not exercised.

%macro emit_select_video_bank_sequencer_0e_xor_02_part_00 0
    %%fragment_start:
select_video_bank_sequencer_0e_xor_02:
    %%insn_02dae:
    push ax ; 02DAE 50
    %if ($ - %%insn_02dae) > 1
        %error "LONG_02DAE"
    %endif
    times 1 - ($ - %%insn_02dae) db 0
    %%insn_02daf:
    push dx ; 02DAF 52
    %if ($ - %%insn_02daf) > 1
        %error "LONG_02DAF"
    %endif
    times 1 - ($ - %%insn_02daf) db 0
    %%insn_02db0:
    mov dx, 0x3ce ; 02DB0 BACE03
    %if ($ - %%insn_02db0) > 3
        %error "LONG_02DB0"
    %endif
    times 3 - ($ - %%insn_02db0) db 0
    %%insn_02db3:
    mov al, 6 ; 02DB3 B006
    %if ($ - %%insn_02db3) > 2
        %error "LONG_02DB3"
    %endif
    times 2 - ($ - %%insn_02db3) db 0
    %%insn_02db5:
    out dx, al ; 02DB5 EE
    %if ($ - %%insn_02db5) > 1
        %error "LONG_02DB5"
    %endif
    times 1 - ($ - %%insn_02db5) db 0
    %%insn_02db6:
    inc dl ; 02DB6 FEC2
    %if ($ - %%insn_02db6) > 2
        %error "LONG_02DB6"
    %endif
    times 2 - ($ - %%insn_02db6) db 0
    %%insn_02db8:
    in al, dx ; 02DB8 EC
    %if ($ - %%insn_02db8) > 1
        %error "LONG_02DB8"
    %endif
    times 1 - ($ - %%insn_02db8) db 0
    %%insn_02db9:
    dec dl ; 02DB9 FECA
    %if ($ - %%insn_02db9) > 2
        %error "LONG_02DB9"
    %endif
    times 2 - ($ - %%insn_02db9) db 0
    %%insn_02dbb:
    or al, 4 ; 02DBB 0C04
    %if ($ - %%insn_02dbb) > 2
        %error "LONG_02DBB"
    %endif
    times 2 - ($ - %%insn_02dbb) db 0
    db 0x8A, 0xE0 ; 02DBD 8AE0 | mov ah, al | encoding preserved
    %%insn_02dbf:
    mov al, 6 ; 02DBF B006
    %if ($ - %%insn_02dbf) > 2
        %error "LONG_02DBF"
    %endif
    times 2 - ($ - %%insn_02dbf) db 0
    %%insn_02dc1:
    out dx, ax ; 02DC1 EF
    %if ($ - %%insn_02dc1) > 1
        %error "LONG_02DC1"
    %endif
    times 1 - ($ - %%insn_02dc1) db 0
    %%insn_02dc2:
    mov dl, 0xc4 ; 02DC2 B2C4
    %if ($ - %%insn_02dc2) > 2
        %error "LONG_02DC2"
    %endif
    times 2 - ($ - %%insn_02dc2) db 0
    %%insn_02dc4:
    mov al, 0xb ; 02DC4 B00B
    %if ($ - %%insn_02dc4) > 2
        %error "LONG_02DC4"
    %endif
    times 2 - ($ - %%insn_02dc4) db 0
    %%insn_02dc6:
    out dx, al ; 02DC6 EE
    %if ($ - %%insn_02dc6) > 1
        %error "LONG_02DC6"
    %endif
    times 1 - ($ - %%insn_02dc6) db 0
    %%insn_02dc7:
    inc dl ; 02DC7 FEC2
    %if ($ - %%insn_02dc7) > 2
        %error "LONG_02DC7"
    %endif
    times 2 - ($ - %%insn_02dc7) db 0
    %%insn_02dc9:
    in al, dx ; 02DC9 EC
    %if ($ - %%insn_02dc9) > 1
        %error "LONG_02DC9"
    %endif
    times 1 - ($ - %%insn_02dc9) db 0
    %%insn_02dca:
    dec dl ; 02DCA FECA
    %if ($ - %%insn_02dca) > 2
        %error "LONG_02DCA"
    %endif
    times 2 - ($ - %%insn_02dca) db 0
    %%insn_02dcc:
    mov ah, byte [ss:0xcf8a] ; 02DCC 368A268ACF
    %if ($ - %%insn_02dcc) > 5
        %error "LONG_02DCC"
    %endif
    times 5 - ($ - %%insn_02dcc) db 0
    %%insn_02dd1:
    xor ah, 2 ; 02DD1 80F402
    %if ($ - %%insn_02dd1) > 3
        %error "LONG_02DD1"
    %endif
    times 3 - ($ - %%insn_02dd1) db 0
    %%insn_02dd4:
    mov dx, 0x3c4 ; 02DD4 BAC403
    %if ($ - %%insn_02dd4) > 3
        %error "LONG_02DD4"
    %endif
    times 3 - ($ - %%insn_02dd4) db 0
    %%insn_02dd7:
    mov al, 0xe ; 02DD7 B00E
    %if ($ - %%insn_02dd7) > 2
        %error "LONG_02DD7"
    %endif
    times 2 - ($ - %%insn_02dd7) db 0
    %%insn_02dd9:
    out dx, ax ; 02DD9 EF
    %if ($ - %%insn_02dd9) > 1
        %error "LONG_02DD9"
    %endif
    times 1 - ($ - %%insn_02dd9) db 0
    %%insn_02dda:
    pop dx ; 02DDA 5A
    %if ($ - %%insn_02dda) > 1
        %error "LONG_02DDA"
    %endif
    times 1 - ($ - %%insn_02dda) db 0
    %%insn_02ddb:
    pop ax ; 02DDB 58
    %if ($ - %%insn_02ddb) > 1
        %error "LONG_02DDB"
    %endif
    times 1 - ($ - %%insn_02ddb) db 0
    %%insn_02ddc:
    ret ; 02DDC C3
    %if ($ - %%insn_02ddc) > 1
        %error "LONG_02DDC"
    %endif
    times 1 - ($ - %%insn_02ddc) db 0
    %if ($ - %%fragment_start) != 47
        %error "SIZE_02DAE"
    %endif
%endmacro
