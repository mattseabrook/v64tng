; Linear entry 063B4 (1000:63b4)
; Ghidra working symbol: FUN_1000_63b4
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_063b4_part_00 0
    %%fragment_start:
func_063b4:
    %%insn_063b4:
    push bp ; 063B4 55
    %if ($ - %%insn_063b4) > 1
        %error "LONG_063B4"
    %endif
    times 1 - ($ - %%insn_063b4) db 0
    db 0x8B, 0xEC ; 063B5 8BEC | mov bp,sp | encoding preserved
    %%insn_063b7:
    sub sp,0x4 ; 063B7 83EC04
    %if ($ - %%insn_063b7) > 3
        %error "LONG_063B7"
    %endif
    times 3 - ($ - %%insn_063b7) db 0
    %%insn_063ba:
    push ax ; 063BA 50
    %if ($ - %%insn_063ba) > 1
        %error "LONG_063BA"
    %endif
    times 1 - ($ - %%insn_063ba) db 0
    %%insn_063bb:
    push di ; 063BB 57
    %if ($ - %%insn_063bb) > 1
        %error "LONG_063BB"
    %endif
    times 1 - ($ - %%insn_063bb) db 0
    %%insn_063bc:
    push si ; 063BC 56
    %if ($ - %%insn_063bc) > 1
        %error "LONG_063BC"
    %endif
    times 1 - ($ - %%insn_063bc) db 0
    %%insn_063bd:
    mov word [bp-0x4],0x0 ; 063BD C746FC0000
    %if ($ - %%insn_063bd) > 5
        %error "LONG_063BD"
    %endif
    times 5 - ($ - %%insn_063bd) db 0
    db 0x2B, 0xC0 ; 063C2 2BC0 | sub ax,ax | encoding preserved
    %%insn_063c4:
    mov bx,0xeb24 ; 063C4 BB24EB
    %if ($ - %%insn_063c4) > 3
        %error "LONG_063C4"
    %endif
    times 3 - ($ - %%insn_063c4) db 0
    %%insn_063c7:
    mov cx,0x18 ; 063C7 B91800
    %if ($ - %%insn_063c7) > 3
        %error "LONG_063C7"
    %endif
    times 3 - ($ - %%insn_063c7) db 0
    db 0x8B, 0xFB ; 063CA 8BFB | mov di,bx | encoding preserved
    %%insn_063cc:
    push ds ; 063CC 1E
    %if ($ - %%insn_063cc) > 1
        %error "LONG_063CC"
    %endif
    times 1 - ($ - %%insn_063cc) db 0
    %%insn_063cd:
    pop es ; 063CD 07
    %if ($ - %%insn_063cd) > 1
        %error "LONG_063CD"
    %endif
    times 1 - ($ - %%insn_063cd) db 0
    %%insn_063ce:
    rep stosw ; 063CE F3AB
    %if ($ - %%insn_063ce) > 2
        %error "LONG_063CE"
    %endif
    times 2 - ($ - %%insn_063ce) db 0
    %%insn_063d0:
    stosb ; 063D0 AA
    %if ($ - %%insn_063d0) > 1
        %error "LONG_063D0"
    %endif
    times 1 - ($ - %%insn_063d0) db 0
    db 0x2B, 0xD2 ; 063D1 2BD2 | sub dx,dx | encoding preserved
    db 0x8B, 0xDA ; 063D3 8BDA | mov bx,dx | encoding preserved
    %%insn_063d5:
    mov al,[bp-0x6] ; 063D5 8A46FA
    %if ($ - %%insn_063d5) > 3
        %error "LONG_063D5"
    %endif
    times 3 - ($ - %%insn_063d5) db 0
    %%insn_063d8:
    cmp [bx-0x146a],al ; 063D8 388796EB
    %if ($ - %%insn_063d8) > 4
        %error "LONG_063D8"
    %endif
    times 4 - ($ - %%insn_063d8) db 0
    %%insn_063dc:
    jnz short 0x63fc ; 063DC 751E
    %if ($ - %%insn_063dc) > 2
        %error "LONG_063DC"
    %endif
    times 2 - ($ - %%insn_063dc) db 0
    %%insn_063de:
    shl bx,1 ; 063DE D1E3
    %if ($ - %%insn_063de) > 2
        %error "LONG_063DE"
    %endif
    times 2 - ($ - %%insn_063de) db 0
    %%insn_063e0:
    mov di,[bx-0x17c9] ; 063E0 8BBF37E8
    %if ($ - %%insn_063e0) > 4
        %error "LONG_063E0"
    %endif
    times 4 - ($ - %%insn_063e0) db 0
    %%insn_063e4:
    mov al,[di] ; 063E4 8A05
    %if ($ - %%insn_063e4) > 2
        %error "LONG_063E4"
    %endif
    times 2 - ($ - %%insn_063e4) db 0
    %%insn_063e6:
    inc di ; 063E6 47
    %if ($ - %%insn_063e6) > 1
        %error "LONG_063E6"
    %endif
    times 1 - ($ - %%insn_063e6) db 0
    %%insn_063e7:
    cbw ; 063E7 98
    %if ($ - %%insn_063e7) > 1
        %error "LONG_063E7"
    %endif
    times 1 - ($ - %%insn_063e7) db 0
    db 0x8B, 0xF0 ; 063E8 8BF0 | mov si,ax | encoding preserved
    db 0x0B, 0xF6 ; 063EA 0BF6 | or si,si | encoding preserved
    %%insn_063ec:
    jl short 0x63fc ; 063EC 7C0E
    %if ($ - %%insn_063ec) > 2
        %error "LONG_063EC"
    %endif
    times 2 - ($ - %%insn_063ec) db 0
    %%insn_063ee:
    cmp byte [si-0x146a],0x0 ; 063EE 80BC96EB00
    %if ($ - %%insn_063ee) > 5
        %error "LONG_063EE"
    %endif
    times 5 - ($ - %%insn_063ee) db 0
    %%insn_063f3:
    jnz short 0x63e4 ; 063F3 75EF
    %if ($ - %%insn_063f3) > 2
        %error "LONG_063F3"
    %endif
    times 2 - ($ - %%insn_063f3) db 0
    %%insn_063f5:
    inc byte [si-0x14dc] ; 063F5 FE8424EB
    %if ($ - %%insn_063f5) > 4
        %error "LONG_063F5"
    %endif
    times 4 - ($ - %%insn_063f5) db 0
    %%insn_063f9:
    jmp short 0x63e4 ; 063F9 EBE9
    %if ($ - %%insn_063f9) > 2
        %error "LONG_063F9"
    %endif
    times 2 - ($ - %%insn_063f9) db 0
    %if ($ - %%fragment_start) != 71
        %error "SIZE_063B4"
    %endif
%endmacro

%macro emit_func_063b4_part_01 0
    %%fragment_start:
    %%insn_063fc:
    inc dx ; 063FC 42
    %if ($ - %%insn_063fc) > 1
        %error "LONG_063FC"
    %endif
    times 1 - ($ - %%insn_063fc) db 0
    %%insn_063fd:
    cmp dx,0x31 ; 063FD 83FA31
    %if ($ - %%insn_063fd) > 3
        %error "LONG_063FD"
    %endif
    times 3 - ($ - %%insn_063fd) db 0
    %%insn_06400:
    jl short 0x63d3 ; 06400 7CD1
    %if ($ - %%insn_06400) > 2
        %error "LONG_06400"
    %endif
    times 2 - ($ - %%insn_06400) db 0
    db 0x2B, 0xF6 ; 06402 2BF6 | sub si,si | encoding preserved
    %%insn_06404:
    mov dx,[bp-0x4] ; 06404 8B56FC
    %if ($ - %%insn_06404) > 3
        %error "LONG_06404"
    %endif
    times 3 - ($ - %%insn_06404) db 0
    %%insn_06407:
    mov al,[si-0x14dc] ; 06407 8A8424EB
    %if ($ - %%insn_06407) > 4
        %error "LONG_06407"
    %endif
    times 4 - ($ - %%insn_06407) db 0
    %%insn_0640b:
    cbw ; 0640B 98
    %if ($ - %%insn_0640b) > 1
        %error "LONG_0640B"
    %endif
    times 1 - ($ - %%insn_0640b) db 0
    db 0x03, 0xD0 ; 0640C 03D0 | add dx,ax | encoding preserved
    %%insn_0640e:
    inc si ; 0640E 46
    %if ($ - %%insn_0640e) > 1
        %error "LONG_0640E"
    %endif
    times 1 - ($ - %%insn_0640e) db 0
    %%insn_0640f:
    cmp si,0x31 ; 0640F 83FE31
    %if ($ - %%insn_0640f) > 3
        %error "LONG_0640F"
    %endif
    times 3 - ($ - %%insn_0640f) db 0
    %%insn_06412:
    jl short 0x6407 ; 06412 7CF3
    %if ($ - %%insn_06412) > 2
        %error "LONG_06412"
    %endif
    times 2 - ($ - %%insn_06412) db 0
    db 0x8B, 0xC2 ; 06414 8BC2 | mov ax,dx | encoding preserved
    %%insn_06416:
    pop si ; 06416 5E
    %if ($ - %%insn_06416) > 1
        %error "LONG_06416"
    %endif
    times 1 - ($ - %%insn_06416) db 0
    %%insn_06417:
    pop di ; 06417 5F
    %if ($ - %%insn_06417) > 1
        %error "LONG_06417"
    %endif
    times 1 - ($ - %%insn_06417) db 0
    db 0x8B, 0xE5 ; 06418 8BE5 | mov sp,bp | encoding preserved
    %%insn_0641a:
    pop bp ; 0641A 5D
    %if ($ - %%insn_0641a) > 1
        %error "LONG_0641A"
    %endif
    times 1 - ($ - %%insn_0641a) db 0
    %%insn_0641b:
    ret ; 0641B C3
    %if ($ - %%insn_0641b) > 1
        %error "LONG_0641B"
    %endif
    times 1 - ($ - %%insn_0641b) db 0
    %if ($ - %%fragment_start) != 32
        %error "SIZE_063FC"
    %endif
%endmacro
