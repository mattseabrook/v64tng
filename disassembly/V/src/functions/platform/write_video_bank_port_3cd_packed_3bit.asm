; Linear entry 02D7A (load-image offset). Recovered indirect bank handler.
; Semantic role: write_video_bank_port_3cd_packed_3bit
; Contract: Program the selected video-memory bank through the literal indexed/direct port sequence below, preserving the explicitly saved registers. No chipset/vendor identity is inferred.
; Evidence: detect_video_hardware installs SS:D660 at 032DD.
; dispatch_video_bank_switch at 02D54 jumps through SS:D660.
; Static instruction/indirect-pointer evidence; hardware behavior not exercised.

%macro emit_write_video_bank_port_3cd_packed_3bit_part_00 0
    %%fragment_start:
write_video_bank_port_3cd_packed_3bit:
    %%insn_02d7a:
    push ax ; 02D7A 50
    %if ($ - %%insn_02d7a) > 1
        %error "LONG_02D7A"
    %endif
    times 1 - ($ - %%insn_02d7a) db 0
    %%insn_02d7b:
    push dx ; 02D7B 52
    %if ($ - %%insn_02d7b) > 1
        %error "LONG_02D7B"
    %endif
    times 1 - ($ - %%insn_02d7b) db 0
    %%insn_02d7c:
    and al, 7 ; 02D7C 2407
    %if ($ - %%insn_02d7c) > 2
        %error "LONG_02D7C"
    %endif
    times 2 - ($ - %%insn_02d7c) db 0
    db 0x8A, 0xE0 ; 02D7E 8AE0 | mov ah, al | encoding preserved
    %%insn_02d80:
    shl al, 3 ; 02D80 C0E003
    %if ($ - %%insn_02d80) > 3
        %error "LONG_02D80"
    %endif
    times 3 - ($ - %%insn_02d80) db 0
    db 0x0A, 0xC4 ; 02D83 0AC4 | or al, ah | encoding preserved
    %%insn_02d85:
    or al, 0x40 ; 02D85 0C40
    %if ($ - %%insn_02d85) > 2
        %error "LONG_02D85"
    %endif
    times 2 - ($ - %%insn_02d85) db 0
    %%insn_02d87:
    mov dx, 0x3cd ; 02D87 BACD03
    %if ($ - %%insn_02d87) > 3
        %error "LONG_02D87"
    %endif
    times 3 - ($ - %%insn_02d87) db 0
    %%insn_02d8a:
    out dx, al ; 02D8A EE
    %if ($ - %%insn_02d8a) > 1
        %error "LONG_02D8A"
    %endif
    times 1 - ($ - %%insn_02d8a) db 0
    %%insn_02d8b:
    pop dx ; 02D8B 5A
    %if ($ - %%insn_02d8b) > 1
        %error "LONG_02D8B"
    %endif
    times 1 - ($ - %%insn_02d8b) db 0
    %%insn_02d8c:
    pop ax ; 02D8C 58
    %if ($ - %%insn_02d8c) > 1
        %error "LONG_02D8C"
    %endif
    times 1 - ($ - %%insn_02d8c) db 0
    %%insn_02d8d:
    ret ; 02D8D C3
    %if ($ - %%insn_02d8d) > 1
        %error "LONG_02D8D"
    %endif
    times 1 - ($ - %%insn_02d8d) db 0
    %if ($ - %%fragment_start) != 20
        %error "SIZE_02D7A"
    %endif
%endmacro
