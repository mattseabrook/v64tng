; Linear entry 0432B (1000:432b)
; Ghidra working symbol: FUN_1000_432b
; Verified GRV VIDEO_TRANSITION_REF (1Ch) flag staging and playback handler.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_grv_play_transition_video_ref_part_00 0
    %%fragment_start:
grv_play_transition_video_ref:
    %%insn_0432b:
    push es ; 0432B 06
    %if ($ - %%insn_0432b) > 1
        %error "LONG_0432B"
    %endif
    times 1 - ($ - %%insn_0432b) db 0
    %%insn_0432c:
    cmp ah,0x80 ; 0432C 80FC80
    %if ($ - %%insn_0432c) > 3
        %error "LONG_0432C"
    %endif
    times 3 - ($ - %%insn_0432c) db 0
    %%insn_0432f:
    jc short 0x4336 ; 0432F 7205
    %if ($ - %%insn_0432f) > 2
        %error "LONG_0432F"
    %endif
    times 2 - ($ - %%insn_0432f) db 0
    %%insn_04331:
    mov byte [bp-0x2607],0xff ; 04331 C686F9D9FF
    %if ($ - %%insn_04331) > 5
        %error "LONG_04331"
    %endif
    times 5 - ($ - %%insn_04331) db 0
    %%insn_04336:
    mov byte [bp-0x2606],0x1 ; 04336 C686FAD901
    %if ($ - %%insn_04336) > 5
        %error "LONG_04336"
    %endif
    times 5 - ($ - %%insn_04336) db 0
    %%insn_0433b:
    mov word [bp-0x30d2],0x1 ; 0433B C7862ECF0100
    %if ($ - %%insn_0433b) > 6
        %error "LONG_0433B"
    %endif
    times 6 - ($ - %%insn_0433b) db 0
    %%insn_04341:
    lodsw ; 04341 AD
    %if ($ - %%insn_04341) > 1
        %error "LONG_04341"
    %endif
    times 1 - ($ - %%insn_04341) db 0
    %%insn_04342:
    push si ; 04342 56
    %if ($ - %%insn_04342) > 1
        %error "LONG_04342"
    %endif
    times 1 - ($ - %%insn_04342) db 0
    %%insn_04343:
    call 0x6fa9 ; 04343 E8632C
    %if ($ - %%insn_04343) > 3
        %error "LONG_04343"
    %endif
    times 3 - ($ - %%insn_04343) db 0
    %%insn_04346:
    cmp word [bp-0xcea],0x1 ; 04346 83BE16F301
    %if ($ - %%insn_04346) > 5
        %error "LONG_04346"
    %endif
    times 5 - ($ - %%insn_04346) db 0
    %%insn_0434b:
    jnz short 0x4350 ; 0434B 7503
    %if ($ - %%insn_0434b) > 2
        %error "LONG_0434B"
    %endif
    times 2 - ($ - %%insn_0434b) db 0
    %%insn_0434d:
    call 0x388a ; 0434D E83AF5
    %if ($ - %%insn_0434d) > 3
        %error "LONG_0434D"
    %endif
    times 3 - ($ - %%insn_0434d) db 0
    %%insn_04350:
    call 0x89 ; 04350 E836BD
    %if ($ - %%insn_04350) > 3
        %error "LONG_04350"
    %endif
    times 3 - ($ - %%insn_04350) db 0
    %%insn_04353:
    call 0x3a5b ; 04353 E805F7
    %if ($ - %%insn_04353) > 3
        %error "LONG_04353"
    %endif
    times 3 - ($ - %%insn_04353) db 0
    %%insn_04356:
    mov word [bp-0x2638],0x0 ; 04356 C786C8D90000
    %if ($ - %%insn_04356) > 6
        %error "LONG_04356"
    %endif
    times 6 - ($ - %%insn_04356) db 0
    %%insn_0435c:
    mov word [bp-0x2636],0x0 ; 0435C C786CAD90000
    %if ($ - %%insn_0435c) > 6
        %error "LONG_0435C"
    %endif
    times 6 - ($ - %%insn_0435c) db 0
    %%insn_04362:
    mov byte [bp-0x2606],0x2 ; 04362 C686FAD902
    %if ($ - %%insn_04362) > 5
        %error "LONG_04362"
    %endif
    times 5 - ($ - %%insn_04362) db 0
    %%insn_04367:
    mov byte [bp-0x2607],0x0 ; 04367 C686F9D900
    %if ($ - %%insn_04367) > 5
        %error "LONG_04367"
    %endif
    times 5 - ($ - %%insn_04367) db 0
    %%insn_0436c:
    mov word [bp-0x30d2],0x0 ; 0436C C7862ECF0000
    %if ($ - %%insn_0436c) > 6
        %error "LONG_0436C"
    %endif
    times 6 - ($ - %%insn_0436c) db 0
    %%insn_04372:
    pop si ; 04372 5E
    %if ($ - %%insn_04372) > 1
        %error "LONG_04372"
    %endif
    times 1 - ($ - %%insn_04372) db 0
    %%insn_04373:
    pop es ; 04373 07
    %if ($ - %%insn_04373) > 1
        %error "LONG_04373"
    %endif
    times 1 - ($ - %%insn_04373) db 0
    %%insn_04374:
    ret ; 04374 C3
    %if ($ - %%insn_04374) > 1
        %error "LONG_04374"
    %endif
    times 1 - ($ - %%insn_04374) db 0
    %if ($ - %%fragment_start) != 74
        %error "SIZE_0432B"
    %endif
%endmacro
