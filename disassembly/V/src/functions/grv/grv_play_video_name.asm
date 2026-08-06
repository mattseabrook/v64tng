; Linear entry 043D2 (1000:43d2)
; Ghidra working symbol: FUN_1000_43d2
; Verified GRV VIDEO_NAME (26h) interpolated-name playback handler.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_grv_play_video_name_part_00 0
    %%fragment_start:
grv_play_video_name:
    %%insn_043d2:
    mov word [bp-0x30d2],0x1 ; 043D2 C7862ECF0100
    %if ($ - %%insn_043d2) > 6
        %error "LONG_043D2"
    %endif
    times 6 - ($ - %%insn_043d2) db 0
    %%insn_043d8:
    call 0x4849 ; 043D8 E86E04
    %if ($ - %%insn_043d8) > 3
        %error "LONG_043D8"
    %endif
    times 3 - ($ - %%insn_043d8) db 0
    %%insn_043db:
    push si ; 043DB 56
    %if ($ - %%insn_043db) > 1
        %error "LONG_043DB"
    %endif
    times 1 - ($ - %%insn_043db) db 0
    %%insn_043dc:
    call 0x378f ; 043DC E8B0F3
    %if ($ - %%insn_043dc) > 3
        %error "LONG_043DC"
    %endif
    times 3 - ($ - %%insn_043dc) db 0
    %%insn_043df:
    call 0x388a ; 043DF E8A8F4
    %if ($ - %%insn_043df) > 3
        %error "LONG_043DF"
    %endif
    times 3 - ($ - %%insn_043df) db 0
    %%insn_043e2:
    call 0x89 ; 043E2 E8A4BC
    %if ($ - %%insn_043e2) > 3
        %error "LONG_043E2"
    %endif
    times 3 - ($ - %%insn_043e2) db 0
    %%insn_043e5:
    call 0x3a5b ; 043E5 E873F6
    %if ($ - %%insn_043e5) > 3
        %error "LONG_043E5"
    %endif
    times 3 - ($ - %%insn_043e5) db 0
    %%insn_043e8:
    mov word [bp-0x2638],0x0 ; 043E8 C786C8D90000
    %if ($ - %%insn_043e8) > 6
        %error "LONG_043E8"
    %endif
    times 6 - ($ - %%insn_043e8) db 0
    %%insn_043ee:
    mov word [bp-0x2636],0x0 ; 043EE C786CAD90000
    %if ($ - %%insn_043ee) > 6
        %error "LONG_043EE"
    %endif
    times 6 - ($ - %%insn_043ee) db 0
    %%insn_043f4:
    mov word [bp-0x30d2],0x0 ; 043F4 C7862ECF0000
    %if ($ - %%insn_043f4) > 6
        %error "LONG_043F4"
    %endif
    times 6 - ($ - %%insn_043f4) db 0
    %%insn_043fa:
    mov byte [bp-0x2606],0x0 ; 043FA C686FAD900
    %if ($ - %%insn_043fa) > 5
        %error "LONG_043FA"
    %endif
    times 5 - ($ - %%insn_043fa) db 0
    %%insn_043ff:
    mov byte [bp-0x265b],0x0 ; 043FF C686A5D900
    %if ($ - %%insn_043ff) > 5
        %error "LONG_043FF"
    %endif
    times 5 - ($ - %%insn_043ff) db 0
    %%insn_04404:
    pop si ; 04404 5E
    %if ($ - %%insn_04404) > 1
        %error "LONG_04404"
    %endif
    times 1 - ($ - %%insn_04404) db 0
    %%insn_04405:
    ret ; 04405 C3
    %if ($ - %%insn_04405) > 1
        %error "LONG_04405"
    %endif
    times 1 - ($ - %%insn_04405) db 0
    %if ($ - %%fragment_start) != 52
        %error "SIZE_043D2"
    %endif
%endmacro
