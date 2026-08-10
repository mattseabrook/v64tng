; Linear entry 05480 (1000:5480)
; Ghidra working symbol: FUN_1000_5480
; Verified GRV 3Ah PRINTSTRING handler. Decodes the VM sequence, adds 30h to
; each character, converts '$' to NUL, and invokes the SPHINX.FNT renderer.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_decode_and_draw_grv_string_part_00 0
    %%fragment_start:
decode_and_draw_grv_string:
    %%insn_05480:
    mov es,word [bp-0x2aae] ; 05480 8E8652D5
    %if ($ - %%insn_05480) > 4
        %error "LONG_05480"
    %endif
    times 4 - ($ - %%insn_05480) db 0
    %%insn_05484:
    mov di,0xe266 ; 05484 BF66E2
    %if ($ - %%insn_05484) > 3
        %error "LONG_05484"
    %endif
    times 3 - ($ - %%insn_05484) db 0
    %%insn_05487:
    call 0x4016 ; 05487 E88CEB
    %if ($ - %%insn_05487) > 3
        %error "LONG_05487"
    %endif
    times 3 - ($ - %%insn_05487) db 0
    %%insn_0548a:
    add al,0x30 ; 0548A 0430
    %if ($ - %%insn_0548a) > 2
        %error "LONG_0548A"
    %endif
    times 2 - ($ - %%insn_0548a) db 0
    %%insn_0548c:
    cmp al,0x24 ; 0548C 3C24
    %if ($ - %%insn_0548c) > 2
        %error "LONG_0548C"
    %endif
    times 2 - ($ - %%insn_0548c) db 0
    %%insn_0548e:
    jnz short 0x5492 ; 0548E 7502
    %if ($ - %%insn_0548e) > 2
        %error "LONG_0548E"
    %endif
    times 2 - ($ - %%insn_0548e) db 0
    db 0x32, 0xC0 ; 05490 32C0 | xor al,al | encoding preserved
    %%insn_05492:
    stosb ; 05492 AA
    %if ($ - %%insn_05492) > 1
        %error "LONG_05492"
    %endif
    times 1 - ($ - %%insn_05492) db 0
    %%insn_05493:
    cmp dh,0x80 ; 05493 80FE80
    %if ($ - %%insn_05493) > 3
        %error "LONG_05493"
    %endif
    times 3 - ($ - %%insn_05493) db 0
    %%insn_05496:
    jc short 0x5487 ; 05496 72EF
    %if ($ - %%insn_05496) > 2
        %error "LONG_05496"
    %endif
    times 2 - ($ - %%insn_05496) db 0
    %%insn_05498:
    cmp word [bp-0x30de],0x0 ; 05498 83BE22CF00
    %if ($ - %%insn_05498) > 5
        %error "LONG_05498"
    %endif
    times 5 - ($ - %%insn_05498) db 0
    %%insn_0549d:
    jnz short 0x54ac ; 0549D 750D
    %if ($ - %%insn_0549d) > 2
        %error "LONG_0549D"
    %endif
    times 2 - ($ - %%insn_0549d) db 0
    db 0x32, 0xC0 ; 0549F 32C0 | xor al,al | encoding preserved
    %%insn_054a1:
    stosb ; 054A1 AA
    %if ($ - %%insn_054a1) > 1
        %error "LONG_054A1"
    %endif
    times 1 - ($ - %%insn_054a1) db 0
    %%insn_054a2:
    mov ds,word [bp-0x2aae] ; 054A2 8E9E52D5
    %if ($ - %%insn_054a2) > 4
        %error "LONG_054A2"
    %endif
    times 4 - ($ - %%insn_054a2) db 0
    %%insn_054a6:
    mov dx,0xe266 ; 054A6 BA66E2
    %if ($ - %%insn_054a6) > 3
        %error "LONG_054A6"
    %endif
    times 3 - ($ - %%insn_054a6) db 0
    %%insn_054a9:
    call 0x5523 ; 054A9 E87700
    %if ($ - %%insn_054a9) > 3
        %error "LONG_054A9"
    %endif
    times 3 - ($ - %%insn_054a9) db 0
    %%insn_054ac:
    ret ; 054AC C3
    %if ($ - %%insn_054ac) > 1
        %error "LONG_054AC"
    %endif
    times 1 - ($ - %%insn_054ac) db 0
    %if ($ - %%fragment_start) != 45
        %error "SIZE_05480"
    %endif
%endmacro
