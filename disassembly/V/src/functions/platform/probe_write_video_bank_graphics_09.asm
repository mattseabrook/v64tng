; Linear entry 03453 (load-image offset); recovered indirect probe callback.
; Contract: Write AL to graphics-controller register 09h through 03CEh;
; preserve DX, copy input AL to AH, and leave AL=09h.
; Evidence: 03205 passes this address in DX to 033FF; 0341A calls DX.
; No chipset/vendor identity or hardware execution is claimed.

%macro emit_probe_write_video_bank_graphics_09_part_00 0
    %%fragment_start:
probe_write_video_bank_graphics_09:
    %%insn_03453:
    push dx ; 03453 52
    %if ($ - %%insn_03453) > 1
        %error "LONG_03453"
    %endif
    times 1 - ($ - %%insn_03453) db 0
    db 0x8A, 0xE0 ; 03454 8AE0 | mov ah,al | encoding preserved
    %%insn_03456:
    mov dx, 0x3ce ; 03456 BACE03
    %if ($ - %%insn_03456) > 3
        %error "LONG_03456"
    %endif
    times 3 - ($ - %%insn_03456) db 0
    %%insn_03459:
    mov al, 9 ; 03459 B009
    %if ($ - %%insn_03459) > 2
        %error "LONG_03459"
    %endif
    times 2 - ($ - %%insn_03459) db 0
    %%insn_0345b:
    out dx, ax ; 0345B EF
    %if ($ - %%insn_0345b) > 1
        %error "LONG_0345B"
    %endif
    times 1 - ($ - %%insn_0345b) db 0
    %%insn_0345c:
    pop dx ; 0345C 5A
    %if ($ - %%insn_0345c) > 1
        %error "LONG_0345C"
    %endif
    times 1 - ($ - %%insn_0345c) db 0
    %%insn_0345d:
    ret ; 0345D C3
    %if ($ - %%insn_0345d) > 1
        %error "LONG_0345D"
    %endif
    times 1 - ($ - %%insn_0345d) db 0
    %if ($ - %%fragment_start) != 11
        %error "SIZE_03453"
    %endif
%endmacro
