; Linear entry 033B7 (1000:33b7)
; Ghidra working symbol: FUN_1000_33b7
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_033b7_part_00 0
    %%fragment_start:
func_033b7:
    %%insn_033b7:
    mov dx,0x3d4 ; 033B7 BAD403
    %if ($ - %%insn_033b7) > 3
        %error "LONG_033B7"
    %endif
    times 3 - ($ - %%insn_033b7) db 0
    %%insn_033ba:
    mov al,0xc ; 033BA B00C
    %if ($ - %%insn_033ba) > 2
        %error "LONG_033BA"
    %endif
    times 2 - ($ - %%insn_033ba) db 0
    %%insn_033bc:
    out dx,al ; 033BC EE
    %if ($ - %%insn_033bc) > 1
        %error "LONG_033BC"
    %endif
    times 1 - ($ - %%insn_033bc) db 0
    %%insn_033bd:
    inc dx ; 033BD 42
    %if ($ - %%insn_033bd) > 1
        %error "LONG_033BD"
    %endif
    times 1 - ($ - %%insn_033bd) db 0
    db 0x8A, 0xE0 ; 033BE 8AE0 | mov ah,al | encoding preserved
    %%insn_033c0:
    in al,dx ; 033C0 EC
    %if ($ - %%insn_033c0) > 1
        %error "LONG_033C0"
    %endif
    times 1 - ($ - %%insn_033c0) db 0
    %%insn_033c1:
    xchg ah,al ; 033C1 86E0
    %if ($ - %%insn_033c1) > 2
        %error "LONG_033C1"
    %endif
    times 2 - ($ - %%insn_033c1) db 0
    %%insn_033c3:
    push ax ; 033C3 50
    %if ($ - %%insn_033c3) > 1
        %error "LONG_033C3"
    %endif
    times 1 - ($ - %%insn_033c3) db 0
    %%insn_033c4:
    push dx ; 033C4 52
    %if ($ - %%insn_033c4) > 1
        %error "LONG_033C4"
    %endif
    times 1 - ($ - %%insn_033c4) db 0
    db 0x32, 0xC0 ; 033C5 32C0 | xor al,al | encoding preserved
    %%insn_033c7:
    out dx,al ; 033C7 EE
    %if ($ - %%insn_033c7) > 1
        %error "LONG_033C7"
    %endif
    times 1 - ($ - %%insn_033c7) db 0
    %%insn_033c8:
    mov al,0x1f ; 033C8 B01F
    %if ($ - %%insn_033c8) > 2
        %error "LONG_033C8"
    %endif
    times 2 - ($ - %%insn_033c8) db 0
    %%insn_033ca:
    dec dx ; 033CA 4A
    %if ($ - %%insn_033ca) > 1
        %error "LONG_033CA"
    %endif
    times 1 - ($ - %%insn_033ca) db 0
    %%insn_033cb:
    out dx,al ; 033CB EE
    %if ($ - %%insn_033cb) > 1
        %error "LONG_033CB"
    %endif
    times 1 - ($ - %%insn_033cb) db 0
    %%insn_033cc:
    inc dx ; 033CC 42
    %if ($ - %%insn_033cc) > 1
        %error "LONG_033CC"
    %endif
    times 1 - ($ - %%insn_033cc) db 0
    %%insn_033cd:
    in al,dx ; 033CD EC
    %if ($ - %%insn_033cd) > 1
        %error "LONG_033CD"
    %endif
    times 1 - ($ - %%insn_033cd) db 0
    db 0x8A, 0xF8 ; 033CE 8AF8 | mov bh,al | encoding preserved
    %%insn_033d0:
    mov cl,0x4 ; 033D0 B104
    %if ($ - %%insn_033d0) > 2
        %error "LONG_033D0"
    %endif
    times 2 - ($ - %%insn_033d0) db 0
    %%insn_033d2:
    mov dx,0x3c4 ; 033D2 BAC403
    %if ($ - %%insn_033d2) > 3
        %error "LONG_033D2"
    %endif
    times 3 - ($ - %%insn_033d2) db 0
    %%insn_033d5:
    mov bl,0x6 ; 033D5 B306
    %if ($ - %%insn_033d5) > 2
        %error "LONG_033D5"
    %endif
    times 2 - ($ - %%insn_033d5) db 0
    %%insn_033d7:
    ror bh,cl ; 033D7 D2CF
    %if ($ - %%insn_033d7) > 2
        %error "LONG_033D7"
    %endif
    times 2 - ($ - %%insn_033d7) db 0
    db 0x8B, 0xC3 ; 033D9 8BC3 | mov ax,bx | encoding preserved
    %%insn_033db:
    out dx,ax ; 033DB EF
    %if ($ - %%insn_033db) > 1
        %error "LONG_033DB"
    %endif
    times 1 - ($ - %%insn_033db) db 0
    %%insn_033dc:
    inc dx ; 033DC 42
    %if ($ - %%insn_033dc) > 1
        %error "LONG_033DC"
    %endif
    times 1 - ($ - %%insn_033dc) db 0
    %%insn_033dd:
    in al,dx ; 033DD EC
    %if ($ - %%insn_033dd) > 1
        %error "LONG_033DD"
    %endif
    times 1 - ($ - %%insn_033dd) db 0
    db 0x0A, 0xC0 ; 033DE 0AC0 | or al,al | encoding preserved
    %%insn_033e0:
    jnz short 0x33fa ; 033E0 7518
    %if ($ - %%insn_033e0) > 2
        %error "LONG_033E0"
    %endif
    times 2 - ($ - %%insn_033e0) db 0
    %%insn_033e2:
    ror bh,cl ; 033E2 D2CF
    %if ($ - %%insn_033e2) > 2
        %error "LONG_033E2"
    %endif
    times 2 - ($ - %%insn_033e2) db 0
    %%insn_033e4:
    dec dx ; 033E4 4A
    %if ($ - %%insn_033e4) > 1
        %error "LONG_033E4"
    %endif
    times 1 - ($ - %%insn_033e4) db 0
    db 0x8B, 0xC3 ; 033E5 8BC3 | mov ax,bx | encoding preserved
    %%insn_033e7:
    out dx,ax ; 033E7 EF
    %if ($ - %%insn_033e7) > 1
        %error "LONG_033E7"
    %endif
    times 1 - ($ - %%insn_033e7) db 0
    %%insn_033e8:
    inc dx ; 033E8 42
    %if ($ - %%insn_033e8) > 1
        %error "LONG_033E8"
    %endif
    times 1 - ($ - %%insn_033e8) db 0
    %%insn_033e9:
    in al,dx ; 033E9 EC
    %if ($ - %%insn_033e9) > 1
        %error "LONG_033E9"
    %endif
    times 1 - ($ - %%insn_033e9) db 0
    %%insn_033ea:
    cmp al,0x1 ; 033EA 3C01
    %if ($ - %%insn_033ea) > 2
        %error "LONG_033EA"
    %endif
    times 2 - ($ - %%insn_033ea) db 0
    %%insn_033ec:
    jnz short 0x33fa ; 033EC 750C
    %if ($ - %%insn_033ec) > 2
        %error "LONG_033EC"
    %endif
    times 2 - ($ - %%insn_033ec) db 0
    %%insn_033ee:
    mov word [0xd676],0x1 ; 033EE C70676D60100
    %if ($ - %%insn_033ee) > 6
        %error "LONG_033EE"
    %endif
    times 6 - ($ - %%insn_033ee) db 0
    %%insn_033f4:
    mov word [0xd660],0x2f83 ; 033F4 C70660D6832F
    %if ($ - %%insn_033f4) > 6
        %error "LONG_033F4"
    %endif
    times 6 - ($ - %%insn_033f4) db 0
    %%insn_033fa:
    pop dx ; 033FA 5A
    %if ($ - %%insn_033fa) > 1
        %error "LONG_033FA"
    %endif
    times 1 - ($ - %%insn_033fa) db 0
    %%insn_033fb:
    dec dx ; 033FB 4A
    %if ($ - %%insn_033fb) > 1
        %error "LONG_033FB"
    %endif
    times 1 - ($ - %%insn_033fb) db 0
    %%insn_033fc:
    pop ax ; 033FC 58
    %if ($ - %%insn_033fc) > 1
        %error "LONG_033FC"
    %endif
    times 1 - ($ - %%insn_033fc) db 0
    %%insn_033fd:
    out dx,ax ; 033FD EF
    %if ($ - %%insn_033fd) > 1
        %error "LONG_033FD"
    %endif
    times 1 - ($ - %%insn_033fd) db 0
    %%insn_033fe:
    ret ; 033FE C3
    %if ($ - %%insn_033fe) > 1
        %error "LONG_033FE"
    %endif
    times 1 - ($ - %%insn_033fe) db 0
    %if ($ - %%fragment_start) != 72
        %error "SIZE_033B7"
    %endif
%endmacro
