; Linear entry 06290 (1000:6290)
; Ghidra working symbol: FUN_1000_6290
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_06290_part_00 0
    %%fragment_start:
func_06290:
    %%insn_06290:
    push bp ; 06290 55
    %if ($ - %%insn_06290) > 1
        %error "LONG_06290"
    %endif
    times 1 - ($ - %%insn_06290) db 0
    db 0x8B, 0xEC ; 06291 8BEC | mov bp,sp | encoding preserved
    %%insn_06293:
    sub sp,0x2 ; 06293 83EC02
    %if ($ - %%insn_06293) > 3
        %error "LONG_06293"
    %endif
    times 3 - ($ - %%insn_06293) db 0
    %%insn_06296:
    push ax ; 06296 50
    %if ($ - %%insn_06296) > 1
        %error "LONG_06296"
    %endif
    times 1 - ($ - %%insn_06296) db 0
    %%insn_06297:
    push di ; 06297 57
    %if ($ - %%insn_06297) > 1
        %error "LONG_06297"
    %endif
    times 1 - ($ - %%insn_06297) db 0
    %%insn_06298:
    push si ; 06298 56
    %if ($ - %%insn_06298) > 1
        %error "LONG_06298"
    %endif
    times 1 - ($ - %%insn_06298) db 0
    %%insn_06299:
    mov ax,0xeb96 ; 06299 B896EB
    %if ($ - %%insn_06299) > 3
        %error "LONG_06299"
    %endif
    times 3 - ($ - %%insn_06299) db 0
    %%insn_0629c:
    mov cx,0x1a ; 0629C B91A00
    %if ($ - %%insn_0629c) > 3
        %error "LONG_0629C"
    %endif
    times 3 - ($ - %%insn_0629c) db 0
    db 0x8B, 0xF8 ; 0629F 8BF8 | mov di,ax | encoding preserved
    %%insn_062a1:
    mov si,0xe484 ; 062A1 BE84E4
    %if ($ - %%insn_062a1) > 3
        %error "LONG_062A1"
    %endif
    times 3 - ($ - %%insn_062a1) db 0
    %%insn_062a4:
    push ds ; 062A4 1E
    %if ($ - %%insn_062a4) > 1
        %error "LONG_062A4"
    %endif
    times 1 - ($ - %%insn_062a4) db 0
    %%insn_062a5:
    pop es ; 062A5 07
    %if ($ - %%insn_062a5) > 1
        %error "LONG_062A5"
    %endif
    times 1 - ($ - %%insn_062a5) db 0
    %%insn_062a6:
    rep movsw ; 062A6 F3A5
    %if ($ - %%insn_062a6) > 2
        %error "LONG_062A6"
    %endif
    times 2 - ($ - %%insn_062a6) db 0
    %%insn_062a8:
    movsb ; 062A8 A4
    %if ($ - %%insn_062a8) > 1
        %error "LONG_062A8"
    %endif
    times 1 - ($ - %%insn_062a8) db 0
    %%insn_062a9:
    mov al,[0xe4ba] ; 062A9 A0BAE4
    %if ($ - %%insn_062a9) > 3
        %error "LONG_062A9"
    %endif
    times 3 - ($ - %%insn_062a9) db 0
    %%insn_062ac:
    cbw ; 062AC 98
    %if ($ - %%insn_062ac) > 1
        %error "LONG_062AC"
    %endif
    times 1 - ($ - %%insn_062ac) db 0
    db 0x8B, 0xD8 ; 062AD 8BD8 | mov bx,ax | encoding preserved
    %%insn_062af:
    mov al,[bp-0x4] ; 062AF 8A46FC
    %if ($ - %%insn_062af) > 3
        %error "LONG_062AF"
    %endif
    times 3 - ($ - %%insn_062af) db 0
    %%insn_062b2:
    mov [bx-0x146a],al ; 062B2 888796EB
    %if ($ - %%insn_062b2) > 4
        %error "LONG_062B2"
    %endif
    times 4 - ($ - %%insn_062b2) db 0
    %%insn_062b6:
    cbw ; 062B6 98
    %if ($ - %%insn_062b6) > 1
        %error "LONG_062B6"
    %endif
    times 1 - ($ - %%insn_062b6) db 0
    db 0x8B, 0xD8 ; 062B7 8BD8 | mov bx,ax | encoding preserved
    %%insn_062b9:
    add bx,0xebc6 ; 062B9 81C3C6EB
    %if ($ - %%insn_062b9) > 4
        %error "LONG_062B9"
    %endif
    times 4 - ($ - %%insn_062b9) db 0
    %%insn_062bd:
    mov [bp-0x2],bx ; 062BD 895EFE
    %if ($ - %%insn_062bd) > 3
        %error "LONG_062BD"
    %endif
    times 3 - ($ - %%insn_062bd) db 0
    %%insn_062c0:
    inc byte [bx] ; 062C0 FE07
    %if ($ - %%insn_062c0) > 2
        %error "LONG_062C0"
    %endif
    times 2 - ($ - %%insn_062c0) db 0
    %%insn_062c2:
    cmp byte [0xe4bb],0x2 ; 062C2 803EBBE402
    %if ($ - %%insn_062c2) > 5
        %error "LONG_062C2"
    %endif
    times 5 - ($ - %%insn_062c2) db 0
    %%insn_062c7:
    jnz short 0x62d9 ; 062C7 7510
    %if ($ - %%insn_062c7) > 2
        %error "LONG_062C7"
    %endif
    times 2 - ($ - %%insn_062c7) db 0
    %%insn_062c9:
    mov al,[0xe4b9] ; 062C9 A0B9E4
    %if ($ - %%insn_062c9) > 3
        %error "LONG_062C9"
    %endif
    times 3 - ($ - %%insn_062c9) db 0
    %%insn_062cc:
    cbw ; 062CC 98
    %if ($ - %%insn_062cc) > 1
        %error "LONG_062CC"
    %endif
    times 1 - ($ - %%insn_062cc) db 0
    db 0x8B, 0xD8 ; 062CD 8BD8 | mov bx,ax | encoding preserved
    %%insn_062cf:
    mov byte [bx-0x146a],0x0 ; 062CF C68796EB00
    %if ($ - %%insn_062cf) > 5
        %error "LONG_062CF"
    %endif
    times 5 - ($ - %%insn_062cf) db 0
    %%insn_062d4:
    mov bx,[bp-0x2] ; 062D4 8B5EFE
    %if ($ - %%insn_062d4) > 3
        %error "LONG_062D4"
    %endif
    times 3 - ($ - %%insn_062d4) db 0
    %%insn_062d7:
    dec byte [bx] ; 062D7 FE0F
    %if ($ - %%insn_062d7) > 2
        %error "LONG_062D7"
    %endif
    times 2 - ($ - %%insn_062d7) db 0
    %%insn_062d9:
    mov al,[0xe4ba] ; 062D9 A0BAE4
    %if ($ - %%insn_062d9) > 3
        %error "LONG_062D9"
    %endif
    times 3 - ($ - %%insn_062d9) db 0
    %%insn_062dc:
    cbw ; 062DC 98
    %if ($ - %%insn_062dc) > 1
        %error "LONG_062DC"
    %endif
    times 1 - ($ - %%insn_062dc) db 0
    %%insn_062dd:
    mov dl,[bp-0x4] ; 062DD 8A56FC
    %if ($ - %%insn_062dd) > 3
        %error "LONG_062DD"
    %endif
    times 3 - ($ - %%insn_062dd) db 0
    %%insn_062e0:
    call 0x5f22 ; 062E0 E83FFC
    %if ($ - %%insn_062e0) > 3
        %error "LONG_062E0"
    %endif
    times 3 - ($ - %%insn_062e0) db 0
    %%insn_062e3:
    pop si ; 062E3 5E
    %if ($ - %%insn_062e3) > 1
        %error "LONG_062E3"
    %endif
    times 1 - ($ - %%insn_062e3) db 0
    %%insn_062e4:
    pop di ; 062E4 5F
    %if ($ - %%insn_062e4) > 1
        %error "LONG_062E4"
    %endif
    times 1 - ($ - %%insn_062e4) db 0
    db 0x8B, 0xE5 ; 062E5 8BE5 | mov sp,bp | encoding preserved
    %%insn_062e7:
    pop bp ; 062E7 5D
    %if ($ - %%insn_062e7) > 1
        %error "LONG_062E7"
    %endif
    times 1 - ($ - %%insn_062e7) db 0
    %%insn_062e8:
    ret ; 062E8 C3
    %if ($ - %%insn_062e8) > 1
        %error "LONG_062E8"
    %endif
    times 1 - ($ - %%insn_062e8) db 0
    %if ($ - %%fragment_start) != 89
        %error "SIZE_06290"
    %endif
%endmacro
