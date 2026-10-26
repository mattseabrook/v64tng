; Linear entry 02EDE (load-image offset). Recovered indirect bank handler.
; Semantic role: select_video_bank_graphics_0d
; Contract: Program the selected video-memory bank through the literal indexed/direct port sequence below, preserving the explicitly saved registers. No chipset/vendor identity is inferred.
; Evidence: detect_video_hardware installs SS:D660 at 03360.
; dispatch_video_bank_switch at 02D54 jumps through SS:D660.
; Static instruction/indirect-pointer evidence; hardware behavior not exercised.

%macro emit_select_video_bank_graphics_0d_part_00 0
    %%fragment_start:
select_video_bank_graphics_0d:
    %%insn_02ede:
    push ax ; 02EDE 50
    %if ($ - %%insn_02ede) > 1
        %error "LONG_02EDE"
    %endif
    times 1 - ($ - %%insn_02ede) db 0
    %%insn_02edf:
    push dx ; 02EDF 52
    %if ($ - %%insn_02edf) > 1
        %error "LONG_02EDF"
    %endif
    times 1 - ($ - %%insn_02edf) db 0
    %%insn_02ee0:
    push cx ; 02EE0 51
    %if ($ - %%insn_02ee0) > 1
        %error "LONG_02EE0"
    %endif
    times 1 - ($ - %%insn_02ee0) db 0
    db 0x8A, 0xE8 ; 02EE1 8AE8 | mov ch, al | encoding preserved
    %%insn_02ee3:
    mov dx, 0x3ce ; 02EE3 BACE03
    %if ($ - %%insn_02ee3) > 3
        %error "LONG_02EE3"
    %endif
    times 3 - ($ - %%insn_02ee3) db 0
    %%insn_02ee6:
    mov ax, 0x200f ; 02EE6 B80F20
    %if ($ - %%insn_02ee6) > 3
        %error "LONG_02EE6"
    %endif
    times 3 - ($ - %%insn_02ee6) db 0
    %%insn_02ee9:
    out dx, ax ; 02EE9 EF
    %if ($ - %%insn_02ee9) > 1
        %error "LONG_02EE9"
    %endif
    times 1 - ($ - %%insn_02ee9) db 0
    db 0x8A, 0xE5 ; 02EEA 8AE5 | mov ah, ch | encoding preserved
    %%insn_02eec:
    mov cl, 4 ; 02EEC B104
    %if ($ - %%insn_02eec) > 2
        %error "LONG_02EEC"
    %endif
    times 2 - ($ - %%insn_02eec) db 0
    %%insn_02eee:
    shl ah, cl ; 02EEE D2E4
    %if ($ - %%insn_02eee) > 2
        %error "LONG_02EEE"
    %endif
    times 2 - ($ - %%insn_02eee) db 0
    db 0x0A, 0xE5 ; 02EF0 0AE5 | or ah, ch | encoding preserved
    %%insn_02ef2:
    mov al, 0xd ; 02EF2 B00D
    %if ($ - %%insn_02ef2) > 2
        %error "LONG_02EF2"
    %endif
    times 2 - ($ - %%insn_02ef2) db 0
    %%insn_02ef4:
    out dx, ax ; 02EF4 EF
    %if ($ - %%insn_02ef4) > 1
        %error "LONG_02EF4"
    %endif
    times 1 - ($ - %%insn_02ef4) db 0
    %%insn_02ef5:
    pop cx ; 02EF5 59
    %if ($ - %%insn_02ef5) > 1
        %error "LONG_02EF5"
    %endif
    times 1 - ($ - %%insn_02ef5) db 0
    %%insn_02ef6:
    pop dx ; 02EF6 5A
    %if ($ - %%insn_02ef6) > 1
        %error "LONG_02EF6"
    %endif
    times 1 - ($ - %%insn_02ef6) db 0
    %%insn_02ef7:
    pop ax ; 02EF7 58
    %if ($ - %%insn_02ef7) > 1
        %error "LONG_02EF7"
    %endif
    times 1 - ($ - %%insn_02ef7) db 0
    %%insn_02ef8:
    ret ; 02EF8 C3
    %if ($ - %%insn_02ef8) > 1
        %error "LONG_02EF8"
    %endif
    times 1 - ($ - %%insn_02ef8) db 0
    %if ($ - %%fragment_start) != 27
        %error "SIZE_02EDE"
    %endif
%endmacro
