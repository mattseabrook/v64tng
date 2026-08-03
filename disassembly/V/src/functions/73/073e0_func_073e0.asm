; Linear entry 073E0 (1702:03c0)
; Ghidra working symbol: FUN_1702_03c0
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_073e0_part_00 0
    %%fragment_start:
func_073e0:
    %%insn_073e0:
    cmp bx,0x10 ; 073E0 83FB10
    %if ($ - %%insn_073e0) > 3
        %error "LONG_073E0"
    %endif
    times 3 - ($ - %%insn_073e0) db 0
    %%insn_073e3:
    jnc short 0x740a ; 073E3 7325
    %if ($ - %%insn_073e3) > 2
        %error "LONG_073E3"
    %endif
    times 2 - ($ - %%insn_073e3) db 0
    %%insn_073e5:
    shl bx,1 ; 073E5 D1E3
    %if ($ - %%insn_073e5) > 2
        %error "LONG_073E5"
    %endif
    times 2 - ($ - %%insn_073e5) db 0
    %%insn_073e7:
    shl bx,1 ; 073E7 D1E3
    %if ($ - %%insn_073e7) > 2
        %error "LONG_073E7"
    %endif
    times 2 - ($ - %%insn_073e7) db 0
    %%insn_073e9:
    les bx,word [cs:bx+0x12a] ; 073E9 2EC49F2A01
    %if ($ - %%insn_073e9) > 5
        %error "LONG_073E9"
    %endif
    times 5 - ($ - %%insn_073e9) db 0
    %%insn_073ee:
    mov cx,es ; 073EE 8CC1
    %if ($ - %%insn_073ee) > 2
        %error "LONG_073EE"
    %endif
    times 2 - ($ - %%insn_073ee) db 0
    db 0x0B, 0xCB ; 073F0 0BCB | or cx,bx | encoding preserved
    %%insn_073f2:
    jz short 0x740a ; 073F2 7416
    %if ($ - %%insn_073f2) > 2
        %error "LONG_073F2"
    %endif
    times 2 - ($ - %%insn_073f2) db 0
    %%insn_073f4:
    mov cx,[es:bx] ; 073F4 268B0F
    %if ($ - %%insn_073f4) > 3
        %error "LONG_073F4"
    %endif
    times 3 - ($ - %%insn_073f4) db 0
    db 0x3B, 0xC8 ; 073F7 3BC8 | cmp cx,ax | encoding preserved
    %%insn_073f9:
    jz short 0x7411 ; 073F9 7416
    %if ($ - %%insn_073f9) > 2
        %error "LONG_073F9"
    %endif
    times 2 - ($ - %%insn_073f9) db 0
    %%insn_073fb:
    add bx,0x4 ; 073FB 83C304
    %if ($ - %%insn_073fb) > 3
        %error "LONG_073FB"
    %endif
    times 3 - ($ - %%insn_073fb) db 0
    %%insn_073fe:
    cmp cx,0xffffffffffffffff ; 073FE 83F9FF
    %if ($ - %%insn_073fe) > 3
        %error "LONG_073FE"
    %endif
    times 3 - ($ - %%insn_073fe) db 0
    %%insn_07401:
    jnz short 0x73f4 ; 07401 75F1
    %if ($ - %%insn_07401) > 2
        %error "LONG_07401"
    %endif
    times 2 - ($ - %%insn_07401) db 0
    %%insn_07403:
    mov ax,0x0 ; 07403 B80000
    %if ($ - %%insn_07403) > 3
        %error "LONG_07403"
    %endif
    times 3 - ($ - %%insn_07403) db 0
    %%insn_07406:
    mov dx,0x0 ; 07406 BA0000
    %if ($ - %%insn_07406) > 3
        %error "LONG_07406"
    %endif
    times 3 - ($ - %%insn_07406) db 0
    %%insn_07409:
    retf ; 07409 CB
    %if ($ - %%insn_07409) > 1
        %error "LONG_07409"
    %endif
    times 1 - ($ - %%insn_07409) db 0
    %%insn_0740a:
    mov ax,0x0 ; 0740A B80000
    %if ($ - %%insn_0740a) > 3
        %error "LONG_0740A"
    %endif
    times 3 - ($ - %%insn_0740a) db 0
    %%insn_0740d:
    mov dx,0x0 ; 0740D BA0000
    %if ($ - %%insn_0740d) > 3
        %error "LONG_0740D"
    %endif
    times 3 - ($ - %%insn_0740d) db 0
    %%insn_07410:
    retf ; 07410 CB
    %if ($ - %%insn_07410) > 1
        %error "LONG_07410"
    %endif
    times 1 - ($ - %%insn_07410) db 0
    %%insn_07411:
    mov ax,[es:bx+0x2] ; 07411 268B4702
    %if ($ - %%insn_07411) > 4
        %error "LONG_07411"
    %endif
    times 4 - ($ - %%insn_07411) db 0
    %%insn_07415:
    mov dx,es ; 07415 8CC2
    %if ($ - %%insn_07415) > 2
        %error "LONG_07415"
    %endif
    times 2 - ($ - %%insn_07415) db 0
    %%insn_07417:
    retf ; 07417 CB
    %if ($ - %%insn_07417) > 1
        %error "LONG_07417"
    %endif
    times 1 - ($ - %%insn_07417) db 0
    %if ($ - %%fragment_start) != 56
        %error "SIZE_073E0"
    %endif
%endmacro
