; Linear entry 06458 (1000:6458)
; Ghidra working symbol: FUN_1000_6458
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_06458_part_00 0
    %%fragment_start:
func_06458:
    %%insn_06458:
    push bp ; 06458 55
    %if ($ - %%insn_06458) > 1
        %error "LONG_06458"
    %endif
    times 1 - ($ - %%insn_06458) db 0
    db 0x8B, 0xEC ; 06459 8BEC | mov bp,sp | encoding preserved
    %%insn_0645b:
    sub sp,0x4 ; 0645B 83EC04
    %if ($ - %%insn_0645b) > 3
        %error "LONG_0645B"
    %endif
    times 3 - ($ - %%insn_0645b) db 0
    %%insn_0645e:
    push ax ; 0645E 50
    %if ($ - %%insn_0645e) > 1
        %error "LONG_0645E"
    %endif
    times 1 - ($ - %%insn_0645e) db 0
    %%insn_0645f:
    push di ; 0645F 57
    %if ($ - %%insn_0645f) > 1
        %error "LONG_0645F"
    %endif
    times 1 - ($ - %%insn_0645f) db 0
    %%insn_06460:
    push si ; 06460 56
    %if ($ - %%insn_06460) > 1
        %error "LONG_06460"
    %endif
    times 1 - ($ - %%insn_06460) db 0
    %%insn_06461:
    cmp word [0xe8fd],0x0 ; 06461 833EFDE800
    %if ($ - %%insn_06461) > 5
        %error "LONG_06461"
    %endif
    times 5 - ($ - %%insn_06461) db 0
    %%insn_06466:
    jz short 0x64d3 ; 06466 746B
    %if ($ - %%insn_06466) > 2
        %error "LONG_06466"
    %endif
    times 2 - ($ - %%insn_06466) db 0
    %%insn_06468:
    mov word [bp-0x2],0x7fff ; 06468 C746FEFF7F
    %if ($ - %%insn_06468) > 5
        %error "LONG_06468"
    %endif
    times 5 - ($ - %%insn_06468) db 0
    db 0x2B, 0xFF ; 0646D 2BFF | sub di,di | encoding preserved
    %%insn_0646f:
    cmp [0xf2f9],di ; 0646F 393EF9F2
    %if ($ - %%insn_0646f) > 4
        %error "LONG_0646F"
    %endif
    times 4 - ($ - %%insn_0646f) db 0
    %%insn_06473:
    jg short 0x6478 ; 06473 7F03
    %if ($ - %%insn_06473) > 2
        %error "LONG_06473"
    %endif
    times 2 - ($ - %%insn_06473) db 0
    %%insn_06475:
    jmp 0x650a ; 06475 E99200
    %if ($ - %%insn_06475) > 3
        %error "LONG_06475"
    %endif
    times 3 - ($ - %%insn_06475) db 0
    %%insn_06478:
    mov al,[di-0xe30] ; 06478 8A85D0F1
    %if ($ - %%insn_06478) > 4
        %error "LONG_06478"
    %endif
    times 4 - ($ - %%insn_06478) db 0
    %%insn_0647c:
    mov [0xe4b9],al ; 0647C A2B9E4
    %if ($ - %%insn_0647c) > 3
        %error "LONG_0647C"
    %endif
    times 3 - ($ - %%insn_0647c) db 0
    %%insn_0647f:
    mov al,[di-0xdcd] ; 0647F 8A8533F2
    %if ($ - %%insn_0647f) > 4
        %error "LONG_0647F"
    %endif
    times 4 - ($ - %%insn_0647f) db 0
    %%insn_06483:
    mov [0xe4ba],al ; 06483 A2BAE4
    %if ($ - %%insn_06483) > 3
        %error "LONG_06483"
    %endif
    times 3 - ($ - %%insn_06483) db 0
    %%insn_06486:
    mov al,[di-0xd6a] ; 06486 8A8596F2
    %if ($ - %%insn_06486) > 4
        %error "LONG_06486"
    %endif
    times 4 - ($ - %%insn_06486) db 0
    %%insn_0648a:
    mov [0xe4bb],al ; 0648A A2BBE4
    %if ($ - %%insn_0648a) > 3
        %error "LONG_0648A"
    %endif
    times 3 - ($ - %%insn_0648a) db 0
    %%insn_0648d:
    mov al,[bp-0x6] ; 0648D 8A46FA
    %if ($ - %%insn_0648d) > 3
        %error "LONG_0648D"
    %endif
    times 3 - ($ - %%insn_0648d) db 0
    %%insn_06490:
    call 0x6290 ; 06490 E8FDFD
    %if ($ - %%insn_06490) > 3
        %error "LONG_06490"
    %endif
    times 3 - ($ - %%insn_06490) db 0
    %%insn_06493:
    mov al,[bp-0x6] ; 06493 8A46FA
    %if ($ - %%insn_06493) > 3
        %error "LONG_06493"
    %endif
    times 3 - ($ - %%insn_06493) db 0
    %%insn_06496:
    call 0x63b4 ; 06496 E81BFF
    %if ($ - %%insn_06496) > 3
        %error "LONG_06496"
    %endif
    times 3 - ($ - %%insn_06496) db 0
    db 0x8B, 0xF0 ; 06499 8BF0 | mov si,ax | encoding preserved
    %%insn_0649b:
    cmp si,[bp-0x2] ; 0649B 3B76FE
    %if ($ - %%insn_0649b) > 3
        %error "LONG_0649B"
    %endif
    times 3 - ($ - %%insn_0649b) db 0
    %%insn_0649e:
    jg short 0x6510 ; 0649E 7F70
    %if ($ - %%insn_0649e) > 2
        %error "LONG_0649E"
    %endif
    times 2 - ($ - %%insn_0649e) db 0
    %%insn_064a0:
    mov dx,[bp-0x4] ; 064A0 8B56FC
    %if ($ - %%insn_064a0) > 3
        %error "LONG_064A0"
    %endif
    times 3 - ($ - %%insn_064a0) db 0
    %%insn_064a3:
    cmp [bp-0x2],si ; 064A3 3976FE
    %if ($ - %%insn_064a3) > 3
        %error "LONG_064A3"
    %endif
    times 3 - ($ - %%insn_064a3) db 0
    %%insn_064a6:
    jng short 0x64aa ; 064A6 7E02
    %if ($ - %%insn_064a6) > 2
        %error "LONG_064A6"
    %endif
    times 2 - ($ - %%insn_064a6) db 0
    db 0x2B, 0xD2 ; 064A8 2BD2 | sub dx,dx | encoding preserved
    %%insn_064aa:
    mov [bp-0x2],si ; 064AA 8976FE
    %if ($ - %%insn_064aa) > 3
        %error "LONG_064AA"
    %endif
    times 3 - ($ - %%insn_064aa) db 0
    %%insn_064ad:
    mov al,[0xe4b9] ; 064AD A0B9E4
    %if ($ - %%insn_064ad) > 3
        %error "LONG_064AD"
    %endif
    times 3 - ($ - %%insn_064ad) db 0
    db 0x8B, 0xDA ; 064B0 8BDA | mov bx,dx | encoding preserved
    %%insn_064b2:
    mov [bx-0xe30],al ; 064B2 8887D0F1
    %if ($ - %%insn_064b2) > 4
        %error "LONG_064B2"
    %endif
    times 4 - ($ - %%insn_064b2) db 0
    %%insn_064b6:
    mov al,[0xe4ba] ; 064B6 A0BAE4
    %if ($ - %%insn_064b6) > 3
        %error "LONG_064B6"
    %endif
    times 3 - ($ - %%insn_064b6) db 0
    %%insn_064b9:
    mov [bx-0xdcd],al ; 064B9 888733F2
    %if ($ - %%insn_064b9) > 4
        %error "LONG_064B9"
    %endif
    times 4 - ($ - %%insn_064b9) db 0
    %%insn_064bd:
    mov al,[0xe4bb] ; 064BD A0BBE4
    %if ($ - %%insn_064bd) > 3
        %error "LONG_064BD"
    %endif
    times 3 - ($ - %%insn_064bd) db 0
    %%insn_064c0:
    mov [bx-0xd6a],al ; 064C0 888796F2
    %if ($ - %%insn_064c0) > 4
        %error "LONG_064C0"
    %endif
    times 4 - ($ - %%insn_064c0) db 0
    %%insn_064c4:
    inc dx ; 064C4 42
    %if ($ - %%insn_064c4) > 1
        %error "LONG_064C4"
    %endif
    times 1 - ($ - %%insn_064c4) db 0
    %%insn_064c5:
    mov [bp-0x4],dx ; 064C5 8956FC
    %if ($ - %%insn_064c5) > 3
        %error "LONG_064C5"
    %endif
    times 3 - ($ - %%insn_064c5) db 0
    %%insn_064c8:
    inc di ; 064C8 47
    %if ($ - %%insn_064c8) > 1
        %error "LONG_064C8"
    %endif
    times 1 - ($ - %%insn_064c8) db 0
    %%insn_064c9:
    cmp [0xf2f9],di ; 064C9 393EF9F2
    %if ($ - %%insn_064c9) > 4
        %error "LONG_064C9"
    %endif
    times 4 - ($ - %%insn_064c9) db 0
    %%insn_064cd:
    jg short 0x6478 ; 064CD 7FA9
    %if ($ - %%insn_064cd) > 2
        %error "LONG_064CD"
    %endif
    times 2 - ($ - %%insn_064cd) db 0
    %%insn_064cf:
    mov [0xf2f9],dx ; 064CF 8916F9F2
    %if ($ - %%insn_064cf) > 4
        %error "LONG_064CF"
    %endif
    times 4 - ($ - %%insn_064cf) db 0
    %%insn_064d3:
    call 0x6e68 ; 064D3 E89209
    %if ($ - %%insn_064d3) > 3
        %error "LONG_064D3"
    %endif
    times 3 - ($ - %%insn_064d3) db 0
    %%insn_064d6:
    cwd ; 064D6 99
    %if ($ - %%insn_064d6) > 1
        %error "LONG_064D6"
    %endif
    times 1 - ($ - %%insn_064d6) db 0
    %%insn_064d7:
    idiv word [0xf2f9] ; 064D7 F73EF9F2
    %if ($ - %%insn_064d7) > 4
        %error "LONG_064D7"
    %endif
    times 4 - ($ - %%insn_064d7) db 0
    %%insn_064db:
    mov [0xf2fb],dx ; 064DB 8916FBF2
    %if ($ - %%insn_064db) > 4
        %error "LONG_064DB"
    %endif
    times 4 - ($ - %%insn_064db) db 0
    db 0x8B, 0xDA ; 064DF 8BDA | mov bx,dx | encoding preserved
    %%insn_064e1:
    mov al,[bx-0xe30] ; 064E1 8A87D0F1
    %if ($ - %%insn_064e1) > 4
        %error "LONG_064E1"
    %endif
    times 4 - ($ - %%insn_064e1) db 0
    %%insn_064e5:
    cbw ; 064E5 98
    %if ($ - %%insn_064e5) > 1
        %error "LONG_064E5"
    %endif
    times 1 - ($ - %%insn_064e5) db 0
    %%insn_064e6:
    mov [0xe8ff],ax ; 064E6 A3FFE8
    %if ($ - %%insn_064e6) > 3
        %error "LONG_064E6"
    %endif
    times 3 - ($ - %%insn_064e6) db 0
    %%insn_064e9:
    mov al,[bx-0xdcd] ; 064E9 8A8733F2
    %if ($ - %%insn_064e9) > 4
        %error "LONG_064E9"
    %endif
    times 4 - ($ - %%insn_064e9) db 0
    %%insn_064ed:
    cbw ; 064ED 98
    %if ($ - %%insn_064ed) > 1
        %error "LONG_064ED"
    %endif
    times 1 - ($ - %%insn_064ed) db 0
    %%insn_064ee:
    mov [0xe901],ax ; 064EE A301E9
    %if ($ - %%insn_064ee) > 3
        %error "LONG_064EE"
    %endif
    times 3 - ($ - %%insn_064ee) db 0
    %%insn_064f1:
    mov al,[bx-0xd6a] ; 064F1 8A8796F2
    %if ($ - %%insn_064f1) > 4
        %error "LONG_064F1"
    %endif
    times 4 - ($ - %%insn_064f1) db 0
    %%insn_064f5:
    cbw ; 064F5 98
    %if ($ - %%insn_064f5) > 1
        %error "LONG_064F5"
    %endif
    times 1 - ($ - %%insn_064f5) db 0
    %%insn_064f6:
    mov [0xf1ce],ax ; 064F6 A3CEF1
    %if ($ - %%insn_064f6) > 3
        %error "LONG_064F6"
    %endif
    times 3 - ($ - %%insn_064f6) db 0
    %%insn_064f9:
    dec ax ; 064F9 48
    %if ($ - %%insn_064f9) > 1
        %error "LONG_064F9"
    %endif
    times 1 - ($ - %%insn_064f9) db 0
    %%insn_064fa:
    jnz short 0x6565 ; 064FA 7569
    %if ($ - %%insn_064fa) > 2
        %error "LONG_064FA"
    %endif
    times 2 - ($ - %%insn_064fa) db 0
    db 0x2B, 0xD2 ; 064FC 2BD2 | sub dx,dx | encoding preserved
    %%insn_064fe:
    mov bx,[0xe901] ; 064FE 8B1E01E9
    %if ($ - %%insn_064fe) > 4
        %error "LONG_064FE"
    %endif
    times 4 - ($ - %%insn_064fe) db 0
    %%insn_06502:
    shl bx,1 ; 06502 D1E3
    %if ($ - %%insn_06502) > 2
        %error "LONG_06502"
    %endif
    times 2 - ($ - %%insn_06502) db 0
    %%insn_06504:
    mov di,[bx-0x17c9] ; 06504 8BBF37E8
    %if ($ - %%insn_06504) > 4
        %error "LONG_06504"
    %endif
    times 4 - ($ - %%insn_06504) db 0
    %%insn_06508:
    jmp short 0x6520 ; 06508 EB16
    %if ($ - %%insn_06508) > 2
        %error "LONG_06508"
    %endif
    times 2 - ($ - %%insn_06508) db 0
    %%insn_0650a:
    mov dx,[bp-0x4] ; 0650A 8B56FC
    %if ($ - %%insn_0650a) > 3
        %error "LONG_0650A"
    %endif
    times 3 - ($ - %%insn_0650a) db 0
    %%insn_0650d:
    jmp short 0x64cf ; 0650D EBC0
    %if ($ - %%insn_0650d) > 2
        %error "LONG_0650D"
    %endif
    times 2 - ($ - %%insn_0650d) db 0
    %if ($ - %%fragment_start) != 183
        %error "SIZE_06458"
    %endif
%endmacro

%macro emit_func_06458_part_01 0
    %%fragment_start:
    %%insn_06510:
    mov dx,[bp-0x4] ; 06510 8B56FC
    %if ($ - %%insn_06510) > 3
        %error "LONG_06510"
    %endif
    times 3 - ($ - %%insn_06510) db 0
    %%insn_06513:
    jmp short 0x64c5 ; 06513 EBB0
    %if ($ - %%insn_06513) > 2
        %error "LONG_06513"
    %endif
    times 2 - ($ - %%insn_06513) db 0
    %if ($ - %%fragment_start) != 5
        %error "SIZE_06510"
    %endif
%endmacro

%macro emit_func_06458_part_02 0
    %%fragment_start:
    %%insn_06516:
    mov al,[bp-0x6] ; 06516 8A46FA
    %if ($ - %%insn_06516) > 3
        %error "LONG_06516"
    %endif
    times 3 - ($ - %%insn_06516) db 0
    %%insn_06519:
    cmp [si-0x1b7c],al ; 06519 388484E4
    %if ($ - %%insn_06519) > 4
        %error "LONG_06519"
    %endif
    times 4 - ($ - %%insn_06519) db 0
    %%insn_0651d:
    jnz short 0x6520 ; 0651D 7501
    %if ($ - %%insn_0651d) > 2
        %error "LONG_0651D"
    %endif
    times 2 - ($ - %%insn_0651d) db 0
    %%insn_0651f:
    inc dx ; 0651F 42
    %if ($ - %%insn_0651f) > 1
        %error "LONG_0651F"
    %endif
    times 1 - ($ - %%insn_0651f) db 0
    %%insn_06520:
    mov al,[di] ; 06520 8A05
    %if ($ - %%insn_06520) > 2
        %error "LONG_06520"
    %endif
    times 2 - ($ - %%insn_06520) db 0
    %%insn_06522:
    inc di ; 06522 47
    %if ($ - %%insn_06522) > 1
        %error "LONG_06522"
    %endif
    times 1 - ($ - %%insn_06522) db 0
    %%insn_06523:
    cbw ; 06523 98
    %if ($ - %%insn_06523) > 1
        %error "LONG_06523"
    %endif
    times 1 - ($ - %%insn_06523) db 0
    db 0x8B, 0xF0 ; 06524 8BF0 | mov si,ax | encoding preserved
    db 0x0B, 0xF6 ; 06526 0BF6 | or si,si | encoding preserved
    %%insn_06528:
    jnl short 0x6516 ; 06528 7DEC
    %if ($ - %%insn_06528) > 2
        %error "LONG_06528"
    %endif
    times 2 - ($ - %%insn_06528) db 0
    %%insn_0652a:
    mov [bp-0x4],dx ; 0652A 8956FC
    %if ($ - %%insn_0652a) > 3
        %error "LONG_0652A"
    %endif
    times 3 - ($ - %%insn_0652a) db 0
    db 0x8B, 0xF2 ; 0652D 8BF2 | mov si,dx | encoding preserved
    %%insn_0652f:
    cmp si,0x1 ; 0652F 83FE01
    %if ($ - %%insn_0652f) > 3
        %error "LONG_0652F"
    %endif
    times 3 - ($ - %%insn_0652f) db 0
    %%insn_06532:
    jng short 0x6565 ; 06532 7E31
    %if ($ - %%insn_06532) > 2
        %error "LONG_06532"
    %endif
    times 2 - ($ - %%insn_06532) db 0
    %%insn_06534:
    call 0x6e68 ; 06534 E83109
    %if ($ - %%insn_06534) > 3
        %error "LONG_06534"
    %endif
    times 3 - ($ - %%insn_06534) db 0
    %%insn_06537:
    cwd ; 06537 99
    %if ($ - %%insn_06537) > 1
        %error "LONG_06537"
    %endif
    times 1 - ($ - %%insn_06537) db 0
    %%insn_06538:
    idiv si ; 06538 F7FE
    %if ($ - %%insn_06538) > 2
        %error "LONG_06538"
    %endif
    times 2 - ($ - %%insn_06538) db 0
    db 0x8B, 0xFA ; 0653A 8BFA | mov di,dx | encoding preserved
    db 0x0B, 0xFF ; 0653C 0BFF | or di,di | encoding preserved
    %%insn_0653e:
    jz short 0x6565 ; 0653E 7425
    %if ($ - %%insn_0653e) > 2
        %error "LONG_0653E"
    %endif
    times 2 - ($ - %%insn_0653e) db 0
    %%insn_06540:
    mov bx,[0xe901] ; 06540 8B1E01E9
    %if ($ - %%insn_06540) > 4
        %error "LONG_06540"
    %endif
    times 4 - ($ - %%insn_06540) db 0
    %%insn_06544:
    shl bx,1 ; 06544 D1E3
    %if ($ - %%insn_06544) > 2
        %error "LONG_06544"
    %endif
    times 2 - ($ - %%insn_06544) db 0
    %%insn_06546:
    mov si,[bx-0x17c9] ; 06546 8BB737E8
    %if ($ - %%insn_06546) > 4
        %error "LONG_06546"
    %endif
    times 4 - ($ - %%insn_06546) db 0
    %%insn_0654a:
    mov [bp-0x2],di ; 0654A 897EFE
    %if ($ - %%insn_0654a) > 3
        %error "LONG_0654A"
    %endif
    times 3 - ($ - %%insn_0654a) db 0
    %%insn_0654d:
    lodsb ; 0654D AC
    %if ($ - %%insn_0654d) > 1
        %error "LONG_0654D"
    %endif
    times 1 - ($ - %%insn_0654d) db 0
    %%insn_0654e:
    cbw ; 0654E 98
    %if ($ - %%insn_0654e) > 1
        %error "LONG_0654E"
    %endif
    times 1 - ($ - %%insn_0654e) db 0
    db 0x8B, 0xF8 ; 0654F 8BF8 | mov di,ax | encoding preserved
    %%insn_06551:
    mov al,[bp-0x6] ; 06551 8A46FA
    %if ($ - %%insn_06551) > 3
        %error "LONG_06551"
    %endif
    times 3 - ($ - %%insn_06551) db 0
    %%insn_06554:
    cmp [di-0x1b7c],al ; 06554 388584E4
    %if ($ - %%insn_06554) > 4
        %error "LONG_06554"
    %endif
    times 4 - ($ - %%insn_06554) db 0
    %%insn_06558:
    jnz short 0x654d ; 06558 75F3
    %if ($ - %%insn_06558) > 2
        %error "LONG_06558"
    %endif
    times 2 - ($ - %%insn_06558) db 0
    %%insn_0655a:
    mov [0xe8ff],di ; 0655A 893EFFE8
    %if ($ - %%insn_0655a) > 4
        %error "LONG_0655A"
    %endif
    times 4 - ($ - %%insn_0655a) db 0
    db 0x8B, 0xC2 ; 0655E 8BC2 | mov ax,dx | encoding preserved
    %%insn_06560:
    dec dx ; 06560 4A
    %if ($ - %%insn_06560) > 1
        %error "LONG_06560"
    %endif
    times 1 - ($ - %%insn_06560) db 0
    db 0x0B, 0xC0 ; 06561 0BC0 | or ax,ax | encoding preserved
    %%insn_06563:
    jnz short 0x654d ; 06563 75E8
    %if ($ - %%insn_06563) > 2
        %error "LONG_06563"
    %endif
    times 2 - ($ - %%insn_06563) db 0
    %%insn_06565:
    pop si ; 06565 5E
    %if ($ - %%insn_06565) > 1
        %error "LONG_06565"
    %endif
    times 1 - ($ - %%insn_06565) db 0
    %%insn_06566:
    pop di ; 06566 5F
    %if ($ - %%insn_06566) > 1
        %error "LONG_06566"
    %endif
    times 1 - ($ - %%insn_06566) db 0
    db 0x8B, 0xE5 ; 06567 8BE5 | mov sp,bp | encoding preserved
    %%insn_06569:
    pop bp ; 06569 5D
    %if ($ - %%insn_06569) > 1
        %error "LONG_06569"
    %endif
    times 1 - ($ - %%insn_06569) db 0
    %%insn_0656a:
    ret ; 0656A C3
    %if ($ - %%insn_0656a) > 1
        %error "LONG_0656A"
    %endif
    times 1 - ($ - %%insn_0656a) db 0
    %if ($ - %%fragment_start) != 85
        %error "SIZE_06516"
    %endif
%endmacro
