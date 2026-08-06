; Linear entry 07418 (1702:03f8)
; Ghidra working symbol: FUN_1702_03f8
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_07418_part_00 0
    %%fragment_start:
func_07418:
    db 0x8B, 0xDC ; 07418 8BDC | mov bx,sp | encoding preserved
    %%insn_0741a:
    mov bx,[ss:bx+0x4] ; 0741A 368B5F04
    %if ($ - %%insn_0741a) > 4
        %error "LONG_0741A"
    %endif
    times 4 - ($ - %%insn_0741a) db 0
    %%insn_0741e:
    push cs ; 0741E 0E
    %if ($ - %%insn_0741e) > 1
        %error "LONG_0741E"
    %endif
    times 1 - ($ - %%insn_0741e) db 0
    %%insn_0741f:
    call 0x73e0 ; 0741F E8BEFF
    %if ($ - %%insn_0741f) > 3
        %error "LONG_0741F"
    %endif
    times 3 - ($ - %%insn_0741f) db 0
    db 0x3D, 0x00, 0x00 ; 07422 3D0000 | cmp ax,0x0 | encoding preserved
    %%insn_07425:
    jnz short 0x742c ; 07425 7505
    %if ($ - %%insn_07425) > 2
        %error "LONG_07425"
    %endif
    times 2 - ($ - %%insn_07425) db 0
    %%insn_07427:
    cmp dx,0x0 ; 07427 83FA00
    %if ($ - %%insn_07427) > 3
        %error "LONG_07427"
    %endif
    times 3 - ($ - %%insn_07427) db 0
    %%insn_0742a:
    jz short 0x742f ; 0742A 7403
    %if ($ - %%insn_0742a) > 2
        %error "LONG_0742A"
    %endif
    times 2 - ($ - %%insn_0742a) db 0
    %%insn_0742c:
    push dx ; 0742C 52
    %if ($ - %%insn_0742c) > 1
        %error "LONG_0742C"
    %endif
    times 1 - ($ - %%insn_0742c) db 0
    %%insn_0742d:
    push ax ; 0742D 50
    %if ($ - %%insn_0742d) > 1
        %error "LONG_0742D"
    %endif
    times 1 - ($ - %%insn_0742d) db 0
    %%insn_0742e:
    retf ; 0742E CB
    %if ($ - %%insn_0742e) > 1
        %error "LONG_0742E"
    %endif
    times 1 - ($ - %%insn_0742e) db 0
    %%insn_0742f:
    retf ; 0742F CB
    %if ($ - %%insn_0742f) > 1
        %error "LONG_0742F"
    %endif
    times 1 - ($ - %%insn_0742f) db 0
    %if ($ - %%fragment_start) != 24
        %error "SIZE_07418"
    %endif
%endmacro
