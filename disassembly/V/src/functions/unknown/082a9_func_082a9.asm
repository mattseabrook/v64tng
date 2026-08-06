; Linear entry 082A9 (1702:1289)
; Ghidra working symbol: FUN_1702_1289
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_082a9_part_00 0
    %%fragment_start:
func_082a9:
    %%insn_082a9:
    push bp ; 082A9 55
    %if ($ - %%insn_082a9) > 1
        %error "LONG_082A9"
    %endif
    times 1 - ($ - %%insn_082a9) db 0
    db 0x8B, 0xEC ; 082AA 8BEC | mov bp,sp | encoding preserved
    %%insn_082ac:
    push ds ; 082AC 1E
    %if ($ - %%insn_082ac) > 1
        %error "LONG_082AC"
    %endif
    times 1 - ($ - %%insn_082ac) db 0
    %%insn_082ad:
    push si ; 082AD 56
    %if ($ - %%insn_082ad) > 1
        %error "LONG_082AD"
    %endif
    times 1 - ($ - %%insn_082ad) db 0
    %%insn_082ae:
    push di ; 082AE 57
    %if ($ - %%insn_082ae) > 1
        %error "LONG_082AE"
    %endif
    times 1 - ($ - %%insn_082ae) db 0
    %%insn_082af:
    mov si,[bp+0x6] ; 082AF 8B7606
    %if ($ - %%insn_082af) > 3
        %error "LONG_082AF"
    %endif
    times 3 - ($ - %%insn_082af) db 0
    %%insn_082b2:
    shl si,1 ; 082B2 D1E6
    %if ($ - %%insn_082b2) > 2
        %error "LONG_082B2"
    %endif
    times 2 - ($ - %%insn_082b2) db 0
    %%insn_082b4:
    mov word [cs:si+0xe5c],0x2 ; 082B4 2EC7845C0E0200
    %if ($ - %%insn_082b4) > 7
        %error "LONG_082B4"
    %endif
    times 7 - ($ - %%insn_082b4) db 0
    %%insn_082bb:
    mov [cs:0xe64],si ; 082BB 2E8936640E
    %if ($ - %%insn_082bb) > 5
        %error "LONG_082BB"
    %endif
    times 5 - ($ - %%insn_082bb) db 0
    %%insn_082c0:
    push word [cs:si+0xe58] ; 082C0 2EFFB4580E
    %if ($ - %%insn_082c0) > 5
        %error "LONG_082C0"
    %endif
    times 5 - ($ - %%insn_082c0) db 0
    %%insn_082c5:
    push cs ; 082C5 0E
    %if ($ - %%insn_082c5) > 1
        %error "LONG_082C5"
    %endif
    times 1 - ($ - %%insn_082c5) db 0
    %%insn_082c6:
    call 0x7f7b ; 082C6 E8B2FC
    %if ($ - %%insn_082c6) > 3
        %error "LONG_082C6"
    %endif
    times 3 - ($ - %%insn_082c6) db 0
    %%insn_082c9:
    add sp,0x2 ; 082C9 83C402
    %if ($ - %%insn_082c9) > 3
        %error "LONG_082C9"
    %endif
    times 3 - ($ - %%insn_082c9) db 0
    %%insn_082cc:
    mov [cs:0xe3a],ax ; 082CC 2EA33A0E
    %if ($ - %%insn_082cc) > 4
        %error "LONG_082CC"
    %endif
    times 4 - ($ - %%insn_082cc) db 0
    %%insn_082d0:
    mov ax,0x1082 ; 082D0 B88210
    %if ($ - %%insn_082d0) > 3
        %error "LONG_082D0"
    %endif
    times 3 - ($ - %%insn_082d0) db 0
    %%insn_082d3:
    push cs ; 082D3 0E
    %if ($ - %%insn_082d3) > 1
        %error "LONG_082D3"
    %endif
    times 1 - ($ - %%insn_082d3) db 0
    %%insn_082d4:
    push ax ; 082D4 50
    %if ($ - %%insn_082d4) > 1
        %error "LONG_082D4"
    %endif
    times 1 - ($ - %%insn_082d4) db 0
    %%insn_082d5:
    push cs ; 082D5 0E
    %if ($ - %%insn_082d5) > 1
        %error "LONG_082D5"
    %endif
    times 1 - ($ - %%insn_082d5) db 0
    %%insn_082d6:
    call 0x8069 ; 082D6 E890FD
    %if ($ - %%insn_082d6) > 3
        %error "LONG_082D6"
    %endif
    times 3 - ($ - %%insn_082d6) db 0
    %%insn_082d9:
    add sp,0x4 ; 082D9 83C404
    %if ($ - %%insn_082d9) > 3
        %error "LONG_082D9"
    %endif
    times 3 - ($ - %%insn_082d9) db 0
    %%insn_082dc:
    push word [cs:si+0xe54] ; 082DC 2EFFB4540E
    %if ($ - %%insn_082dc) > 5
        %error "LONG_082DC"
    %endif
    times 5 - ($ - %%insn_082dc) db 0
    %%insn_082e1:
    push word [cs:si+0xe50] ; 082E1 2EFFB4500E
    %if ($ - %%insn_082e1) > 5
        %error "LONG_082E1"
    %endif
    times 5 - ($ - %%insn_082e1) db 0
    %%insn_082e6:
    push word [cs:si+0xe4c] ; 082E6 2EFFB44C0E
    %if ($ - %%insn_082e6) > 5
        %error "LONG_082E6"
    %endif
    times 5 - ($ - %%insn_082e6) db 0
    %%insn_082eb:
    push word [cs:si+0xe48] ; 082EB 2EFFB4480E
    %if ($ - %%insn_082eb) > 5
        %error "LONG_082EB"
    %endif
    times 5 - ($ - %%insn_082eb) db 0
    %%insn_082f0:
    push cs ; 082F0 0E
    %if ($ - %%insn_082f0) > 1
        %error "LONG_082F0"
    %endif
    times 1 - ($ - %%insn_082f0) db 0
    %%insn_082f1:
    call 0x82fc ; 082F1 E80800
    %if ($ - %%insn_082f1) > 3
        %error "LONG_082F1"
    %endif
    times 3 - ($ - %%insn_082f1) db 0
    %%insn_082f4:
    add sp,0x8 ; 082F4 83C408
    %if ($ - %%insn_082f4) > 3
        %error "LONG_082F4"
    %endif
    times 3 - ($ - %%insn_082f4) db 0
    %%insn_082f7:
    pop di ; 082F7 5F
    %if ($ - %%insn_082f7) > 1
        %error "LONG_082F7"
    %endif
    times 1 - ($ - %%insn_082f7) db 0
    %%insn_082f8:
    pop si ; 082F8 5E
    %if ($ - %%insn_082f8) > 1
        %error "LONG_082F8"
    %endif
    times 1 - ($ - %%insn_082f8) db 0
    %%insn_082f9:
    pop ds ; 082F9 1F
    %if ($ - %%insn_082f9) > 1
        %error "LONG_082F9"
    %endif
    times 1 - ($ - %%insn_082f9) db 0
    %%insn_082fa:
    pop bp ; 082FA 5D
    %if ($ - %%insn_082fa) > 1
        %error "LONG_082FA"
    %endif
    times 1 - ($ - %%insn_082fa) db 0
    %%insn_082fb:
    retf ; 082FB CB
    %if ($ - %%insn_082fb) > 1
        %error "LONG_082FB"
    %endif
    times 1 - ($ - %%insn_082fb) db 0
    %if ($ - %%fragment_start) != 83
        %error "SIZE_082A9"
    %endif
%endmacro
