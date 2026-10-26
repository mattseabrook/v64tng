; Linear entry 05719 (1000:5719)
; Ghidra working symbol: FUN_1000_5719
; Verified role; provisional analyzer boundaries retained.
; Contract: Send MSCDEX request packet 85h through INT 2Fh/1510h using the first saved drive byte.
; Cross-reference: 055FCh calls this before regular playback and for stop-only selections. Expects ES to address the runtime request packet.
; Original byte identity is enforced by this project’s build.sh.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_stop_mscdex_audio_part_00 0
    %%fragment_start:
stop_mscdex_audio:
    %%insn_05719:
    mov cl,[0xe3f2] ; 05719 8A0EF2E3
    %if ($ - %%insn_05719) > 4
        %error "LONG_05719"
    %endif
    times 4 - ($ - %%insn_05719) db 0
    db 0x32, 0xED ; 0571D 32ED | xor ch,ch | encoding preserved
    %%insn_0571f:
    mov bx,0xe3e5 ; 0571F BBE5E3
    %if ($ - %%insn_0571f) > 3
        %error "LONG_0571F"
    %endif
    times 3 - ($ - %%insn_0571f) db 0
    %%insn_05722:
    mov ax,0x1510 ; 05722 B81015
    %if ($ - %%insn_05722) > 3
        %error "LONG_05722"
    %endif
    times 3 - ($ - %%insn_05722) db 0
    %%insn_05725:
    int byte 0x2f ; 05725 CD2F
    %if ($ - %%insn_05725) > 2
        %error "LONG_05725"
    %endif
    times 2 - ($ - %%insn_05725) db 0
    %%insn_05727:
    ret ; 05727 C3
    %if ($ - %%insn_05727) > 1
        %error "LONG_05727"
    %endif
    times 1 - ($ - %%insn_05727) db 0
    %if ($ - %%fragment_start) != 15
        %error "SIZE_05719"
    %endif
%endmacro
