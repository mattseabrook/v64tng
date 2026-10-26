; Linear entry 02F50 (load-image offset). Recovered indirect bank handler.
; Semantic role: call_scaled_video_bank_window_zero
; Contract: Scale AX using SS:D6B0, pass bank in DX and window zero in BX to the far handler at SS:D664; preserve AX/BX/CX/DX.
; Evidence: detect_video_hardware installs SS:D660 at 0303B.
; dispatch_video_bank_switch at 02D54 jumps through SS:D660.
; Static instruction/indirect-pointer evidence; hardware behavior not exercised.

%macro emit_call_scaled_video_bank_window_zero_part_00 0
    %%fragment_start:
call_scaled_video_bank_window_zero:
    %%insn_02f50:
    push ax ; 02F50 50
    %if ($ - %%insn_02f50) > 1
        %error "LONG_02F50"
    %endif
    times 1 - ($ - %%insn_02f50) db 0
    %%insn_02f51:
    push bx ; 02F51 53
    %if ($ - %%insn_02f51) > 1
        %error "LONG_02F51"
    %endif
    times 1 - ($ - %%insn_02f51) db 0
    %%insn_02f52:
    push cx ; 02F52 51
    %if ($ - %%insn_02f52) > 1
        %error "LONG_02F52"
    %endif
    times 1 - ($ - %%insn_02f52) db 0
    %%insn_02f53:
    push dx ; 02F53 52
    %if ($ - %%insn_02f53) > 1
        %error "LONG_02F53"
    %endif
    times 1 - ($ - %%insn_02f53) db 0
    %%insn_02f54:
    mov cl, byte [ss:0xd6b0] ; 02F54 368A0EB0D6
    %if ($ - %%insn_02f54) > 5
        %error "LONG_02F54"
    %endif
    times 5 - ($ - %%insn_02f54) db 0
    %%insn_02f59:
    shl ax, cl ; 02F59 D3E0
    %if ($ - %%insn_02f59) > 2
        %error "LONG_02F59"
    %endif
    times 2 - ($ - %%insn_02f59) db 0
    db 0x8B, 0xD0 ; 02F5B 8BD0 | mov dx, ax | encoding preserved
    db 0x33, 0xDB ; 02F5D 33DB | xor bx, bx | encoding preserved
    %%insn_02f5f:
    call word far [ss:0xd664] ; 02F5F 36FF1E64D6
    %if ($ - %%insn_02f5f) > 5
        %error "LONG_02F5F"
    %endif
    times 5 - ($ - %%insn_02f5f) db 0
    %%insn_02f64:
    pop dx ; 02F64 5A
    %if ($ - %%insn_02f64) > 1
        %error "LONG_02F64"
    %endif
    times 1 - ($ - %%insn_02f64) db 0
    %%insn_02f65:
    pop cx ; 02F65 59
    %if ($ - %%insn_02f65) > 1
        %error "LONG_02F65"
    %endif
    times 1 - ($ - %%insn_02f65) db 0
    %%insn_02f66:
    pop bx ; 02F66 5B
    %if ($ - %%insn_02f66) > 1
        %error "LONG_02F66"
    %endif
    times 1 - ($ - %%insn_02f66) db 0
    %%insn_02f67:
    pop ax ; 02F67 58
    %if ($ - %%insn_02f67) > 1
        %error "LONG_02F67"
    %endif
    times 1 - ($ - %%insn_02f67) db 0
    %%insn_02f68:
    ret ; 02F68 C3
    %if ($ - %%insn_02f68) > 1
        %error "LONG_02F68"
    %endif
    times 1 - ($ - %%insn_02f68) db 0
    %if ($ - %%fragment_start) != 25
        %error "SIZE_02F50"
    %endif
%endmacro
