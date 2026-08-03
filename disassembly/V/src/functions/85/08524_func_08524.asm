; Linear entry 08524 (1000:8524)
; Ghidra working symbol: FUN_1000_8524
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_08524_part_00 0
    %%fragment_start:
func_08524:
    %%insn_08524:
    push bp ; 08524 55
    %if ($ - %%insn_08524) > 1
        %error "LONG_08524"
    %endif
    times 1 - ($ - %%insn_08524) db 0
    db 0x8B, 0xEC ; 08525 8BEC | mov bp,sp | encoding preserved
    %%insn_08527:
    push ds ; 08527 1E
    %if ($ - %%insn_08527) > 1
        %error "LONG_08527"
    %endif
    times 1 - ($ - %%insn_08527) db 0
    %%insn_08528:
    push si ; 08528 56
    %if ($ - %%insn_08528) > 1
        %error "LONG_08528"
    %endif
    times 1 - ($ - %%insn_08528) db 0
    %%insn_08529:
    push di ; 08529 57
    %if ($ - %%insn_08529) > 1
        %error "LONG_08529"
    %endif
    times 1 - ($ - %%insn_08529) db 0
    %%insn_0852a:
    lds si,word [bp+0x8] ; 0852A C57608
    %if ($ - %%insn_0852a) > 3
        %error "LONG_0852A"
    %endif
    times 3 - ($ - %%insn_0852a) db 0
    %%insn_0852d:
    mov ax,[si+0x14] ; 0852D 8B4414
    %if ($ - %%insn_0852d) > 3
        %error "LONG_0852D"
    %endif
    times 3 - ($ - %%insn_0852d) db 0
    %%insn_08530:
    push bx ; 08530 53
    %if ($ - %%insn_08530) > 1
        %error "LONG_08530"
    %endif
    times 1 - ($ - %%insn_08530) db 0
    %%insn_08531:
    push cx ; 08531 51
    %if ($ - %%insn_08531) > 1
        %error "LONG_08531"
    %endif
    times 1 - ($ - %%insn_08531) db 0
    %%insn_08532:
    mov bx,ds ; 08532 8CDB
    %if ($ - %%insn_08532) > 2
        %error "LONG_08532"
    %endif
    times 2 - ($ - %%insn_08532) db 0
    db 0x33, 0xC9 ; 08534 33C9 | xor cx,cx | encoding preserved
    %%insn_08536:
    shl bx,1 ; 08536 D1E3
    %if ($ - %%insn_08536) > 2
        %error "LONG_08536"
    %endif
    times 2 - ($ - %%insn_08536) db 0
    %%insn_08538:
    rcl cx,1 ; 08538 D1D1
    %if ($ - %%insn_08538) > 2
        %error "LONG_08538"
    %endif
    times 2 - ($ - %%insn_08538) db 0
    %%insn_0853a:
    shl bx,1 ; 0853A D1E3
    %if ($ - %%insn_0853a) > 2
        %error "LONG_0853A"
    %endif
    times 2 - ($ - %%insn_0853a) db 0
    %%insn_0853c:
    rcl cx,1 ; 0853C D1D1
    %if ($ - %%insn_0853c) > 2
        %error "LONG_0853C"
    %endif
    times 2 - ($ - %%insn_0853c) db 0
    %%insn_0853e:
    shl bx,1 ; 0853E D1E3
    %if ($ - %%insn_0853e) > 2
        %error "LONG_0853E"
    %endif
    times 2 - ($ - %%insn_0853e) db 0
    %%insn_08540:
    rcl cx,1 ; 08540 D1D1
    %if ($ - %%insn_08540) > 2
        %error "LONG_08540"
    %endif
    times 2 - ($ - %%insn_08540) db 0
    %%insn_08542:
    shl bx,1 ; 08542 D1E3
    %if ($ - %%insn_08542) > 2
        %error "LONG_08542"
    %endif
    times 2 - ($ - %%insn_08542) db 0
    %%insn_08544:
    rcl cx,1 ; 08544 D1D1
    %if ($ - %%insn_08544) > 2
        %error "LONG_08544"
    %endif
    times 2 - ($ - %%insn_08544) db 0
    db 0x03, 0xDE ; 08546 03DE | add bx,si | encoding preserved
    %%insn_08548:
    adc cx,0x0 ; 08548 83D100
    %if ($ - %%insn_08548) > 3
        %error "LONG_08548"
    %endif
    times 3 - ($ - %%insn_08548) db 0
    db 0x03, 0xD8 ; 0854B 03D8 | add bx,ax | encoding preserved
    %%insn_0854d:
    adc cx,0x0 ; 0854D 83D100
    %if ($ - %%insn_0854d) > 3
        %error "LONG_0854D"
    %endif
    times 3 - ($ - %%insn_0854d) db 0
    db 0x8B, 0xF3 ; 08550 8BF3 | mov si,bx | encoding preserved
    %%insn_08552:
    and si,0xf ; 08552 83E60F
    %if ($ - %%insn_08552) > 3
        %error "LONG_08552"
    %endif
    times 3 - ($ - %%insn_08552) db 0
    %%insn_08555:
    shr cx,1 ; 08555 D1E9
    %if ($ - %%insn_08555) > 2
        %error "LONG_08555"
    %endif
    times 2 - ($ - %%insn_08555) db 0
    %%insn_08557:
    rcr bx,1 ; 08557 D1DB
    %if ($ - %%insn_08557) > 2
        %error "LONG_08557"
    %endif
    times 2 - ($ - %%insn_08557) db 0
    %%insn_08559:
    shr cx,1 ; 08559 D1E9
    %if ($ - %%insn_08559) > 2
        %error "LONG_08559"
    %endif
    times 2 - ($ - %%insn_08559) db 0
    %%insn_0855b:
    rcr bx,1 ; 0855B D1DB
    %if ($ - %%insn_0855b) > 2
        %error "LONG_0855B"
    %endif
    times 2 - ($ - %%insn_0855b) db 0
    %%insn_0855d:
    shr cx,1 ; 0855D D1E9
    %if ($ - %%insn_0855d) > 2
        %error "LONG_0855D"
    %endif
    times 2 - ($ - %%insn_0855d) db 0
    %%insn_0855f:
    rcr bx,1 ; 0855F D1DB
    %if ($ - %%insn_0855f) > 2
        %error "LONG_0855F"
    %endif
    times 2 - ($ - %%insn_0855f) db 0
    %%insn_08561:
    shr cx,1 ; 08561 D1E9
    %if ($ - %%insn_08561) > 2
        %error "LONG_08561"
    %endif
    times 2 - ($ - %%insn_08561) db 0
    %%insn_08563:
    rcr bx,1 ; 08563 D1DB
    %if ($ - %%insn_08563) > 2
        %error "LONG_08563"
    %endif
    times 2 - ($ - %%insn_08563) db 0
    %%insn_08565:
    mov ds,bx ; 08565 8EDB
    %if ($ - %%insn_08565) > 2
        %error "LONG_08565"
    %endif
    times 2 - ($ - %%insn_08565) db 0
    %%insn_08567:
    pop cx ; 08567 59
    %if ($ - %%insn_08567) > 1
        %error "LONG_08567"
    %endif
    times 1 - ($ - %%insn_08567) db 0
    %%insn_08568:
    pop bx ; 08568 5B
    %if ($ - %%insn_08568) > 1
        %error "LONG_08568"
    %endif
    times 1 - ($ - %%insn_08568) db 0
    %%insn_08569:
    mov bx,[bp+0xc] ; 08569 8B5E0C
    %if ($ - %%insn_08569) > 3
        %error "LONG_08569"
    %endif
    times 3 - ($ - %%insn_08569) db 0
    %%insn_0856c:
    mov al,[si] ; 0856C 8A04
    %if ($ - %%insn_0856c) > 2
        %error "LONG_0856C"
    %endif
    times 2 - ($ - %%insn_0856c) db 0
    %%insn_0856e:
    mov ah,0x0 ; 0856E B400
    %if ($ - %%insn_0856e) > 2
        %error "LONG_0856E"
    %endif
    times 2 - ($ - %%insn_0856e) db 0
    db 0x3D, 0x00, 0x00 ; 08570 3D0000 | cmp ax,0x0 | encoding preserved
    %%insn_08573:
    jnz short 0x8578 ; 08573 7503
    %if ($ - %%insn_08573) > 2
        %error "LONG_08573"
    %endif
    times 2 - ($ - %%insn_08573) db 0
    %%insn_08575:
    jmp 0x8645 ; 08575 E9CD00
    %if ($ - %%insn_08575) > 3
        %error "LONG_08575"
    %endif
    times 3 - ($ - %%insn_08575) db 0
    db 0x3D, 0x01, 0x00 ; 08578 3D0100 | cmp ax,0x1 | encoding preserved
    %%insn_0857b:
    jnz short 0x8584 ; 0857B 7507
    %if ($ - %%insn_0857b) > 2
        %error "LONG_0857B"
    %endif
    times 2 - ($ - %%insn_0857b) db 0
    %%insn_0857d:
    cmp bx,0xffffffffffffffff ; 0857D 83FBFF
    %if ($ - %%insn_0857d) > 3
        %error "LONG_0857D"
    %endif
    times 3 - ($ - %%insn_0857d) db 0
    %%insn_08580:
    jz short 0x85d2 ; 08580 7450
    %if ($ - %%insn_08580) > 2
        %error "LONG_08580"
    %endif
    times 2 - ($ - %%insn_08580) db 0
    %%insn_08582:
    jmp short 0x8591 ; 08582 EB0D
    %if ($ - %%insn_08582) > 2
        %error "LONG_08582"
    %endif
    times 2 - ($ - %%insn_08582) db 0
    db 0x3D, 0x04, 0x00 ; 08584 3D0400 | cmp ax,0x4 | encoding preserved
    %%insn_08587:
    jnz short 0x8591 ; 08587 7508
    %if ($ - %%insn_08587) > 2
        %error "LONG_08587"
    %endif
    times 2 - ($ - %%insn_08587) db 0
    %%insn_08589:
    cmp bx,[si+0x4] ; 08589 3B5C04
    %if ($ - %%insn_08589) > 3
        %error "LONG_08589"
    %endif
    times 3 - ($ - %%insn_08589) db 0
    %%insn_0858c:
    jnz short 0x8591 ; 0858C 7503
    %if ($ - %%insn_0858c) > 2
        %error "LONG_0858C"
    %endif
    times 2 - ($ - %%insn_0858c) db 0
    %%insn_0858e:
    mov bx,0xffff ; 0858E BBFFFF
    %if ($ - %%insn_0858e) > 3
        %error "LONG_0858E"
    %endif
    times 3 - ($ - %%insn_0858e) db 0
    %%insn_08591:
    inc si ; 08591 46
    %if ($ - %%insn_08591) > 1
        %error "LONG_08591"
    %endif
    times 1 - ($ - %%insn_08591) db 0
    %%insn_08592:
    lodsw ; 08592 AD
    %if ($ - %%insn_08592) > 1
        %error "LONG_08592"
    %endif
    times 1 - ($ - %%insn_08592) db 0
    %%insn_08593:
    mov dl,[si] ; 08593 8A14
    %if ($ - %%insn_08593) > 2
        %error "LONG_08593"
    %endif
    times 2 - ($ - %%insn_08593) db 0
    %%insn_08595:
    mov dh,0x0 ; 08595 B600
    %if ($ - %%insn_08595) > 2
        %error "LONG_08595"
    %endif
    times 2 - ($ - %%insn_08595) db 0
    %%insn_08597:
    inc si ; 08597 46
    %if ($ - %%insn_08597) > 1
        %error "LONG_08597"
    %endif
    times 1 - ($ - %%insn_08597) db 0
    %%insn_08598:
    push bx ; 08598 53
    %if ($ - %%insn_08598) > 1
        %error "LONG_08598"
    %endif
    times 1 - ($ - %%insn_08598) db 0
    %%insn_08599:
    push cx ; 08599 51
    %if ($ - %%insn_08599) > 1
        %error "LONG_08599"
    %endif
    times 1 - ($ - %%insn_08599) db 0
    %%insn_0859a:
    mov bx,ds ; 0859A 8CDB
    %if ($ - %%insn_0859a) > 2
        %error "LONG_0859A"
    %endif
    times 2 - ($ - %%insn_0859a) db 0
    db 0x33, 0xC9 ; 0859C 33C9 | xor cx,cx | encoding preserved
    %%insn_0859e:
    shl bx,1 ; 0859E D1E3
    %if ($ - %%insn_0859e) > 2
        %error "LONG_0859E"
    %endif
    times 2 - ($ - %%insn_0859e) db 0
    %%insn_085a0:
    rcl cx,1 ; 085A0 D1D1
    %if ($ - %%insn_085a0) > 2
        %error "LONG_085A0"
    %endif
    times 2 - ($ - %%insn_085a0) db 0
    %%insn_085a2:
    shl bx,1 ; 085A2 D1E3
    %if ($ - %%insn_085a2) > 2
        %error "LONG_085A2"
    %endif
    times 2 - ($ - %%insn_085a2) db 0
    %%insn_085a4:
    rcl cx,1 ; 085A4 D1D1
    %if ($ - %%insn_085a4) > 2
        %error "LONG_085A4"
    %endif
    times 2 - ($ - %%insn_085a4) db 0
    %%insn_085a6:
    shl bx,1 ; 085A6 D1E3
    %if ($ - %%insn_085a6) > 2
        %error "LONG_085A6"
    %endif
    times 2 - ($ - %%insn_085a6) db 0
    %%insn_085a8:
    rcl cx,1 ; 085A8 D1D1
    %if ($ - %%insn_085a8) > 2
        %error "LONG_085A8"
    %endif
    times 2 - ($ - %%insn_085a8) db 0
    %%insn_085aa:
    shl bx,1 ; 085AA D1E3
    %if ($ - %%insn_085aa) > 2
        %error "LONG_085AA"
    %endif
    times 2 - ($ - %%insn_085aa) db 0
    %%insn_085ac:
    rcl cx,1 ; 085AC D1D1
    %if ($ - %%insn_085ac) > 2
        %error "LONG_085AC"
    %endif
    times 2 - ($ - %%insn_085ac) db 0
    db 0x03, 0xDE ; 085AE 03DE | add bx,si | encoding preserved
    %%insn_085b0:
    adc cx,0x0 ; 085B0 83D100
    %if ($ - %%insn_085b0) > 3
        %error "LONG_085B0"
    %endif
    times 3 - ($ - %%insn_085b0) db 0
    db 0x03, 0xD8 ; 085B3 03D8 | add bx,ax | encoding preserved
    db 0x13, 0xCA ; 085B5 13CA | adc cx,dx | encoding preserved
    db 0x8B, 0xF3 ; 085B7 8BF3 | mov si,bx | encoding preserved
    %%insn_085b9:
    and si,0xf ; 085B9 83E60F
    %if ($ - %%insn_085b9) > 3
        %error "LONG_085B9"
    %endif
    times 3 - ($ - %%insn_085b9) db 0
    %%insn_085bc:
    shr cx,1 ; 085BC D1E9
    %if ($ - %%insn_085bc) > 2
        %error "LONG_085BC"
    %endif
    times 2 - ($ - %%insn_085bc) db 0
    %%insn_085be:
    rcr bx,1 ; 085BE D1DB
    %if ($ - %%insn_085be) > 2
        %error "LONG_085BE"
    %endif
    times 2 - ($ - %%insn_085be) db 0
    %%insn_085c0:
    shr cx,1 ; 085C0 D1E9
    %if ($ - %%insn_085c0) > 2
        %error "LONG_085C0"
    %endif
    times 2 - ($ - %%insn_085c0) db 0
    %%insn_085c2:
    rcr bx,1 ; 085C2 D1DB
    %if ($ - %%insn_085c2) > 2
        %error "LONG_085C2"
    %endif
    times 2 - ($ - %%insn_085c2) db 0
    %%insn_085c4:
    shr cx,1 ; 085C4 D1E9
    %if ($ - %%insn_085c4) > 2
        %error "LONG_085C4"
    %endif
    times 2 - ($ - %%insn_085c4) db 0
    %%insn_085c6:
    rcr bx,1 ; 085C6 D1DB
    %if ($ - %%insn_085c6) > 2
        %error "LONG_085C6"
    %endif
    times 2 - ($ - %%insn_085c6) db 0
    %%insn_085c8:
    shr cx,1 ; 085C8 D1E9
    %if ($ - %%insn_085c8) > 2
        %error "LONG_085C8"
    %endif
    times 2 - ($ - %%insn_085c8) db 0
    %%insn_085ca:
    rcr bx,1 ; 085CA D1DB
    %if ($ - %%insn_085ca) > 2
        %error "LONG_085CA"
    %endif
    times 2 - ($ - %%insn_085ca) db 0
    %%insn_085cc:
    mov ds,bx ; 085CC 8EDB
    %if ($ - %%insn_085cc) > 2
        %error "LONG_085CC"
    %endif
    times 2 - ($ - %%insn_085cc) db 0
    %%insn_085ce:
    pop cx ; 085CE 59
    %if ($ - %%insn_085ce) > 1
        %error "LONG_085CE"
    %endif
    times 1 - ($ - %%insn_085ce) db 0
    %%insn_085cf:
    pop bx ; 085CF 5B
    %if ($ - %%insn_085cf) > 1
        %error "LONG_085CF"
    %endif
    times 1 - ($ - %%insn_085cf) db 0
    %%insn_085d0:
    jmp short 0x856c ; 085D0 EB9A
    %if ($ - %%insn_085d0) > 2
        %error "LONG_085D0"
    %endif
    times 2 - ($ - %%insn_085d0) db 0
    %%insn_085d2:
    les di,word [bp+0xe] ; 085D2 C47E0E
    %if ($ - %%insn_085d2) > 3
        %error "LONG_085D2"
    %endif
    times 3 - ($ - %%insn_085d2) db 0
    %%insn_085d5:
    mov al,[si+0x4] ; 085D5 8A4404
    %if ($ - %%insn_085d5) > 3
        %error "LONG_085D5"
    %endif
    times 3 - ($ - %%insn_085d5) db 0
    %%insn_085d8:
    mov ah,0x0 ; 085D8 B400
    %if ($ - %%insn_085d8) > 2
        %error "LONG_085D8"
    %endif
    times 2 - ($ - %%insn_085d8) db 0
    %%insn_085da:
    mov [es:di+0x2],ax ; 085DA 26894502
    %if ($ - %%insn_085da) > 4
        %error "LONG_085DA"
    %endif
    times 4 - ($ - %%insn_085da) db 0
    %%insn_085de:
    mov al,[si+0x5] ; 085DE 8A4405
    %if ($ - %%insn_085de) > 3
        %error "LONG_085DE"
    %endif
    times 3 - ($ - %%insn_085de) db 0
    %%insn_085e1:
    mov ah,0x0 ; 085E1 B400
    %if ($ - %%insn_085e1) > 2
        %error "LONG_085E1"
    %endif
    times 2 - ($ - %%insn_085e1) db 0
    %%insn_085e3:
    mov [es:di],ax ; 085E3 268905
    %if ($ - %%insn_085e3) > 3
        %error "LONG_085E3"
    %endif
    times 3 - ($ - %%insn_085e3) db 0
    %%insn_085e6:
    mov ax,[si+0x1] ; 085E6 8B4401
    %if ($ - %%insn_085e6) > 3
        %error "LONG_085E6"
    %endif
    times 3 - ($ - %%insn_085e6) db 0
    %%insn_085e9:
    mov dl,[si+0x3] ; 085E9 8A5403
    %if ($ - %%insn_085e9) > 3
        %error "LONG_085E9"
    %endif
    times 3 - ($ - %%insn_085e9) db 0
    %%insn_085ec:
    mov dh,0x0 ; 085EC B600
    %if ($ - %%insn_085ec) > 2
        %error "LONG_085EC"
    %endif
    times 2 - ($ - %%insn_085ec) db 0
    db 0x2D, 0x02, 0x00 ; 085EE 2D0200 | sub ax,0x2 | encoding preserved
    %%insn_085f1:
    sbb dx,0x0 ; 085F1 83DA00
    %if ($ - %%insn_085f1) > 3
        %error "LONG_085F1"
    %endif
    times 3 - ($ - %%insn_085f1) db 0
    %%insn_085f4:
    mov [es:di+0x8],ax ; 085F4 26894508
    %if ($ - %%insn_085f4) > 4
        %error "LONG_085F4"
    %endif
    times 4 - ($ - %%insn_085f4) db 0
    %%insn_085f8:
    mov [es:di+0xa],dx ; 085F8 2689550A
    %if ($ - %%insn_085f8) > 4
        %error "LONG_085F8"
    %endif
    times 4 - ($ - %%insn_085f8) db 0
    %%insn_085fc:
    mov dx,ds ; 085FC 8CDA
    %if ($ - %%insn_085fc) > 2
        %error "LONG_085FC"
    %endif
    times 2 - ($ - %%insn_085fc) db 0
    db 0x8B, 0xC6 ; 085FE 8BC6 | mov ax,si | encoding preserved
    %%insn_08600:
    push bx ; 08600 53
    %if ($ - %%insn_08600) > 1
        %error "LONG_08600"
    %endif
    times 1 - ($ - %%insn_08600) db 0
    %%insn_08601:
    push cx ; 08601 51
    %if ($ - %%insn_08601) > 1
        %error "LONG_08601"
    %endif
    times 1 - ($ - %%insn_08601) db 0
    db 0x8B, 0xDA ; 08602 8BDA | mov bx,dx | encoding preserved
    db 0x33, 0xC9 ; 08604 33C9 | xor cx,cx | encoding preserved
    %%insn_08606:
    shl bx,1 ; 08606 D1E3
    %if ($ - %%insn_08606) > 2
        %error "LONG_08606"
    %endif
    times 2 - ($ - %%insn_08606) db 0
    %%insn_08608:
    rcl cx,1 ; 08608 D1D1
    %if ($ - %%insn_08608) > 2
        %error "LONG_08608"
    %endif
    times 2 - ($ - %%insn_08608) db 0
    %%insn_0860a:
    shl bx,1 ; 0860A D1E3
    %if ($ - %%insn_0860a) > 2
        %error "LONG_0860A"
    %endif
    times 2 - ($ - %%insn_0860a) db 0
    %%insn_0860c:
    rcl cx,1 ; 0860C D1D1
    %if ($ - %%insn_0860c) > 2
        %error "LONG_0860C"
    %endif
    times 2 - ($ - %%insn_0860c) db 0
    %%insn_0860e:
    shl bx,1 ; 0860E D1E3
    %if ($ - %%insn_0860e) > 2
        %error "LONG_0860E"
    %endif
    times 2 - ($ - %%insn_0860e) db 0
    %%insn_08610:
    rcl cx,1 ; 08610 D1D1
    %if ($ - %%insn_08610) > 2
        %error "LONG_08610"
    %endif
    times 2 - ($ - %%insn_08610) db 0
    %%insn_08612:
    shl bx,1 ; 08612 D1E3
    %if ($ - %%insn_08612) > 2
        %error "LONG_08612"
    %endif
    times 2 - ($ - %%insn_08612) db 0
    %%insn_08614:
    rcl cx,1 ; 08614 D1D1
    %if ($ - %%insn_08614) > 2
        %error "LONG_08614"
    %endif
    times 2 - ($ - %%insn_08614) db 0
    db 0x03, 0xD8 ; 08616 03D8 | add bx,ax | encoding preserved
    %%insn_08618:
    adc cx,0x0 ; 08618 83D100
    %if ($ - %%insn_08618) > 3
        %error "LONG_08618"
    %endif
    times 3 - ($ - %%insn_08618) db 0
    %%insn_0861b:
    add bx,0x6 ; 0861B 83C306
    %if ($ - %%insn_0861b) > 3
        %error "LONG_0861B"
    %endif
    times 3 - ($ - %%insn_0861b) db 0
    %%insn_0861e:
    adc cx,0x0 ; 0861E 83D100
    %if ($ - %%insn_0861e) > 3
        %error "LONG_0861E"
    %endif
    times 3 - ($ - %%insn_0861e) db 0
    db 0x8B, 0xC3 ; 08621 8BC3 | mov ax,bx | encoding preserved
    db 0x25, 0x0F, 0x00 ; 08623 250F00 | and ax,0xf | encoding preserved
    %%insn_08626:
    shr cx,1 ; 08626 D1E9
    %if ($ - %%insn_08626) > 2
        %error "LONG_08626"
    %endif
    times 2 - ($ - %%insn_08626) db 0
    %%insn_08628:
    rcr bx,1 ; 08628 D1DB
    %if ($ - %%insn_08628) > 2
        %error "LONG_08628"
    %endif
    times 2 - ($ - %%insn_08628) db 0
    %%insn_0862a:
    shr cx,1 ; 0862A D1E9
    %if ($ - %%insn_0862a) > 2
        %error "LONG_0862A"
    %endif
    times 2 - ($ - %%insn_0862a) db 0
    %%insn_0862c:
    rcr bx,1 ; 0862C D1DB
    %if ($ - %%insn_0862c) > 2
        %error "LONG_0862C"
    %endif
    times 2 - ($ - %%insn_0862c) db 0
    %%insn_0862e:
    shr cx,1 ; 0862E D1E9
    %if ($ - %%insn_0862e) > 2
        %error "LONG_0862E"
    %endif
    times 2 - ($ - %%insn_0862e) db 0
    %%insn_08630:
    rcr bx,1 ; 08630 D1DB
    %if ($ - %%insn_08630) > 2
        %error "LONG_08630"
    %endif
    times 2 - ($ - %%insn_08630) db 0
    %%insn_08632:
    shr cx,1 ; 08632 D1E9
    %if ($ - %%insn_08632) > 2
        %error "LONG_08632"
    %endif
    times 2 - ($ - %%insn_08632) db 0
    %%insn_08634:
    rcr bx,1 ; 08634 D1DB
    %if ($ - %%insn_08634) > 2
        %error "LONG_08634"
    %endif
    times 2 - ($ - %%insn_08634) db 0
    db 0x8B, 0xD3 ; 08636 8BD3 | mov dx,bx | encoding preserved
    %%insn_08638:
    pop cx ; 08638 59
    %if ($ - %%insn_08638) > 1
        %error "LONG_08638"
    %endif
    times 1 - ($ - %%insn_08638) db 0
    %%insn_08639:
    pop bx ; 08639 5B
    %if ($ - %%insn_08639) > 1
        %error "LONG_08639"
    %endif
    times 1 - ($ - %%insn_08639) db 0
    %%insn_0863a:
    mov [es:di+0x4],ax ; 0863A 26894504
    %if ($ - %%insn_0863a) > 4
        %error "LONG_0863A"
    %endif
    times 4 - ($ - %%insn_0863a) db 0
    %%insn_0863e:
    mov [es:di+0x6],dx ; 0863E 26895506
    %if ($ - %%insn_0863e) > 4
        %error "LONG_0863E"
    %endif
    times 4 - ($ - %%insn_0863e) db 0
    %%insn_08642:
    mov ax,0x1 ; 08642 B80100
    %if ($ - %%insn_08642) > 3
        %error "LONG_08642"
    %endif
    times 3 - ($ - %%insn_08642) db 0
    %%insn_08645:
    pop di ; 08645 5F
    %if ($ - %%insn_08645) > 1
        %error "LONG_08645"
    %endif
    times 1 - ($ - %%insn_08645) db 0
    %%insn_08646:
    pop si ; 08646 5E
    %if ($ - %%insn_08646) > 1
        %error "LONG_08646"
    %endif
    times 1 - ($ - %%insn_08646) db 0
    %%insn_08647:
    pop ds ; 08647 1F
    %if ($ - %%insn_08647) > 1
        %error "LONG_08647"
    %endif
    times 1 - ($ - %%insn_08647) db 0
    %%insn_08648:
    pop bp ; 08648 5D
    %if ($ - %%insn_08648) > 1
        %error "LONG_08648"
    %endif
    times 1 - ($ - %%insn_08648) db 0
    %%insn_08649:
    retf ; 08649 CB
    %if ($ - %%insn_08649) > 1
        %error "LONG_08649"
    %endif
    times 1 - ($ - %%insn_08649) db 0
    %if ($ - %%fragment_start) != 294
        %error "SIZE_08524"
    %endif
%endmacro
