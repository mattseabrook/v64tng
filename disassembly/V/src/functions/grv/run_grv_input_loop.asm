; Linear entry 0447B (1000:447b)
; Ghidra working symbol: FUN_1000_447b
; Verified GRV INPUTLOOPSTART (0x0B) setup and input-action interpreter.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_run_grv_input_loop_part_00 0
    %%fragment_start:
run_grv_input_loop:
    %%insn_0447b:
    push si ; 0447B 56
    %if ($ - %%insn_0447b) > 1
        %error "LONG_0447B"
    %endif
    times 1 - ($ - %%insn_0447b) db 0
    %%insn_0447c:
    push ds ; 0447C 1E
    %if ($ - %%insn_0447c) > 1
        %error "LONG_0447C"
    %endif
    times 1 - ($ - %%insn_0447c) db 0
    %%insn_0447d:
    push es ; 0447D 06
    %if ($ - %%insn_0447d) > 1
        %error "LONG_0447D"
    %endif
    times 1 - ($ - %%insn_0447d) db 0
    db 0x8B, 0xDE ; 0447E 8BDE | mov bx,si | encoding preserved
    %%insn_04480:
    mov [bp-0x261a],bx ; 04480 899EE6D9
    %if ($ - %%insn_04480) > 4
        %error "LONG_04480"
    %endif
    times 4 - ($ - %%insn_04480) db 0
    %%insn_04484:
    push ds ; 04484 1E
    %if ($ - %%insn_04484) > 1
        %error "LONG_04484"
    %endif
    times 1 - ($ - %%insn_04484) db 0
    %%insn_04485:
    mov ax,0x893 ; 04485 B89308
    %if ($ - %%insn_04485) > 3
        %error "LONG_04485"
    %endif
    times 3 - ($ - %%insn_04485) db 0
    %%insn_04488:
    mov ds,ax ; 04488 8ED8
    %if ($ - %%insn_04488) > 2
        %error "LONG_04488"
    %endif
    times 2 - ($ - %%insn_04488) db 0
    %%insn_0448a:
    mov dx,0xd8d2 ; 0448A BAD2D8
    %if ($ - %%insn_0448a) > 3
        %error "LONG_0448A"
    %endif
    times 3 - ($ - %%insn_0448a) db 0
    %%insn_0448d:
    call 0x3a31 ; 0448D E8A1F5
    %if ($ - %%insn_0448d) > 3
        %error "LONG_0448D"
    %endif
    times 3 - ($ - %%insn_0448d) db 0
    db 0x3D, 0xFF, 0xFF ; 04490 3DFFFF | cmp ax,0xffff | encoding preserved
    %%insn_04493:
    jnz short 0x449b ; 04493 7506
    %if ($ - %%insn_04493) > 2
        %error "LONG_04493"
    %endif
    times 2 - ($ - %%insn_04493) db 0
    %%insn_04495:
    mov ax,0x7e9 ; 04495 B8E907
    %if ($ - %%insn_04495) > 3
        %error "LONG_04495"
    %endif
    times 3 - ($ - %%insn_04495) db 0
    %%insn_04498:
    jmp 0x5ced ; 04498 E95218
    %if ($ - %%insn_04498) > 3
        %error "LONG_04498"
    %endif
    times 3 - ($ - %%insn_04498) db 0
    db 0x33, 0xD2 ; 0449B 33D2 | xor dx,dx | encoding preserved
    %%insn_0449d:
    mov cx,0xba40 ; 0449D B940BA
    %if ($ - %%insn_0449d) > 3
        %error "LONG_0449D"
    %endif
    times 3 - ($ - %%insn_0449d) db 0
    %%insn_044a0:
    call 0x3a51 ; 044A0 E8AEF5
    %if ($ - %%insn_044a0) > 3
        %error "LONG_044A0"
    %endif
    times 3 - ($ - %%insn_044a0) db 0
    %%insn_044a3:
    call 0x3a47 ; 044A3 E8A1F5
    %if ($ - %%insn_044a3) > 3
        %error "LONG_044A3"
    %endif
    times 3 - ($ - %%insn_044a3) db 0
    %%insn_044a6:
    pop ds ; 044A6 1F
    %if ($ - %%insn_044a6) > 1
        %error "LONG_044A6"
    %endif
    times 1 - ($ - %%insn_044a6) db 0
    %%insn_044a7:
    mov word [bp-0x262a],0x0 ; 044A7 C786D6D90000
    %if ($ - %%insn_044a7) > 6
        %error "LONG_044A7"
    %endif
    times 6 - ($ - %%insn_044a7) db 0
    %%insn_044ad:
    cmp word [bp-0x2642],0x0 ; 044AD 83BEBED900
    %if ($ - %%insn_044ad) > 5
        %error "LONG_044AD"
    %endif
    times 5 - ($ - %%insn_044ad) db 0
    %%insn_044b2:
    jnz short 0x44fb ; 044B2 7547
    %if ($ - %%insn_044b2) > 2
        %error "LONG_044B2"
    %endif
    times 2 - ($ - %%insn_044b2) db 0
    %%insn_044b4:
    inc word [bp-0x2642] ; 044B4 FF86BED9
    %if ($ - %%insn_044b4) > 4
        %error "LONG_044B4"
    %endif
    times 4 - ($ - %%insn_044b4) db 0
    db 0x33, 0xC0 ; 044B8 33C0 | xor ax,ax | encoding preserved
    %%insn_044ba:
    int byte 0x33 ; 044BA CD33
    %if ($ - %%insn_044ba) > 2
        %error "LONG_044BA"
    %endif
    times 2 - ($ - %%insn_044ba) db 0
    db 0x3D, 0xFF, 0xFF ; 044BC 3DFFFF | cmp ax,0xffff | encoding preserved
    %%insn_044bf:
    jnz short 0x44c7 ; 044BF 7506
    %if ($ - %%insn_044bf) > 2
        %error "LONG_044BF"
    %endif
    times 2 - ($ - %%insn_044bf) db 0
    %%insn_044c1:
    mov word [bp-0x2620],0xffff ; 044C1 C786E0D9FFFF
    %if ($ - %%insn_044c1) > 6
        %error "LONG_044C1"
    %endif
    times 6 - ($ - %%insn_044c1) db 0
    %%insn_044c7:
    mov word [bp-0x2640],0xa ; 044C7 C786C0D90A00
    %if ($ - %%insn_044c7) > 6
        %error "LONG_044C7"
    %endif
    times 6 - ($ - %%insn_044c7) db 0
    %%insn_044cd:
    mov word [bp-0x263c],0xa ; 044CD C786C4D90A00
    %if ($ - %%insn_044cd) > 6
        %error "LONG_044CD"
    %endif
    times 6 - ($ - %%insn_044cd) db 0
    %%insn_044d3:
    mov ax,0x24c ; 044D3 B84C02
    %if ($ - %%insn_044d3) > 3
        %error "LONG_044D3"
    %endif
    times 3 - ($ - %%insn_044d3) db 0
    %%insn_044d6:
    mov [bp-0x263e],ax ; 044D6 8986C2D9
    %if ($ - %%insn_044d6) > 4
        %error "LONG_044D6"
    %endif
    times 4 - ($ - %%insn_044d6) db 0
    %%insn_044da:
    mov ax,0x1ac ; 044DA B8AC01
    %if ($ - %%insn_044da) > 3
        %error "LONG_044DA"
    %endif
    times 3 - ($ - %%insn_044da) db 0
    %%insn_044dd:
    mov [bp-0x263a],ax ; 044DD 8986C6D9
    %if ($ - %%insn_044dd) > 4
        %error "LONG_044DD"
    %endif
    times 4 - ($ - %%insn_044dd) db 0
    %%insn_044e1:
    mov cx,[bp-0x2640] ; 044E1 8B8EC0D9
    %if ($ - %%insn_044e1) > 4
        %error "LONG_044E1"
    %endif
    times 4 - ($ - %%insn_044e1) db 0
    %%insn_044e5:
    mov dx,[bp-0x263e] ; 044E5 8B96C2D9
    %if ($ - %%insn_044e5) > 4
        %error "LONG_044E5"
    %endif
    times 4 - ($ - %%insn_044e5) db 0
    %%insn_044e9:
    mov ax,0x7 ; 044E9 B80700
    %if ($ - %%insn_044e9) > 3
        %error "LONG_044E9"
    %endif
    times 3 - ($ - %%insn_044e9) db 0
    %%insn_044ec:
    int byte 0x33 ; 044EC CD33
    %if ($ - %%insn_044ec) > 2
        %error "LONG_044EC"
    %endif
    times 2 - ($ - %%insn_044ec) db 0
    %%insn_044ee:
    mov cx,[bp-0x263c] ; 044EE 8B8EC4D9
    %if ($ - %%insn_044ee) > 4
        %error "LONG_044EE"
    %endif
    times 4 - ($ - %%insn_044ee) db 0
    %%insn_044f2:
    mov dx,[bp-0x263a] ; 044F2 8B96C6D9
    %if ($ - %%insn_044f2) > 4
        %error "LONG_044F2"
    %endif
    times 4 - ($ - %%insn_044f2) db 0
    %%insn_044f6:
    mov ax,0x8 ; 044F6 B80800
    %if ($ - %%insn_044f6) > 3
        %error "LONG_044F6"
    %endif
    times 3 - ($ - %%insn_044f6) db 0
    %%insn_044f9:
    int byte 0x33 ; 044F9 CD33
    %if ($ - %%insn_044f9) > 2
        %error "LONG_044F9"
    %endif
    times 2 - ($ - %%insn_044f9) db 0
    %%insn_044fb:
    mov word [bp-0x2650],0x1 ; 044FB C786B0D90100
    %if ($ - %%insn_044fb) > 6
        %error "LONG_044FB"
    %endif
    times 6 - ($ - %%insn_044fb) db 0
    %%insn_04501:
    mov ax,0x5 ; 04501 B80500
    %if ($ - %%insn_04501) > 3
        %error "LONG_04501"
    %endif
    times 3 - ($ - %%insn_04501) db 0
    %%insn_04504:
    call 0x4710 ; 04504 E80902
    %if ($ - %%insn_04504) > 3
        %error "LONG_04504"
    %endif
    times 3 - ($ - %%insn_04504) db 0
    %%insn_04507:
    call 0x4980 ; 04507 E87604
    %if ($ - %%insn_04507) > 3
        %error "LONG_04507"
    %endif
    times 3 - ($ - %%insn_04507) db 0
    %%insn_0450a:
    mov word [bp-0x2618],0xffff ; 0450A C786E8D9FFFF
    %if ($ - %%insn_0450a) > 6
        %error "LONG_0450A"
    %endif
    times 6 - ($ - %%insn_0450a) db 0
    %%insn_04510:
    mov word [cs:0x5cde],0x0 ; 04510 2EC706DE5C0000
    %if ($ - %%insn_04510) > 7
        %error "LONG_04510"
    %endif
    times 7 - ($ - %%insn_04510) db 0
    %%insn_04517:
    mov word [bp-0x2630],0x5dc ; 04517 C786D0D9DC05
    %if ($ - %%insn_04517) > 6
        %error "LONG_04517"
    %endif
    times 6 - ($ - %%insn_04517) db 0
    %%insn_0451d:
    mov byte [bp-0x265d],0x0 ; 0451D C686A3D900
    %if ($ - %%insn_0451d) > 5
        %error "LONG_0451D"
    %endif
    times 5 - ($ - %%insn_0451d) db 0
    %%insn_04522:
    mov byte [bp-0x271f],0x0 ; 04522 C686E1D800
    %if ($ - %%insn_04522) > 5
        %error "LONG_04522"
    %endif
    times 5 - ($ - %%insn_04522) db 0
    %%insn_04527:
    pop es ; 04527 07
    %if ($ - %%insn_04527) > 1
        %error "LONG_04527"
    %endif
    times 1 - ($ - %%insn_04527) db 0
    %%insn_04528:
    pop ds ; 04528 1F
    %if ($ - %%insn_04528) > 1
        %error "LONG_04528"
    %endif
    times 1 - ($ - %%insn_04528) db 0
    %%insn_04529:
    pop si ; 04529 5E
    %if ($ - %%insn_04529) > 1
        %error "LONG_04529"
    %endif
    times 1 - ($ - %%insn_04529) db 0
    %%insn_0452a:
    mov ax,[cs:0x5ce0] ; 0452A 2EA1E05C
    %if ($ - %%insn_0452a) > 4
        %error "LONG_0452A"
    %endif
    times 4 - ($ - %%insn_0452a) db 0
    %%insn_0452e:
    cmp ah,[bp-0x278c] ; 0452E 3AA674D8
    %if ($ - %%insn_0452e) > 4
        %error "LONG_0452E"
    %endif
    times 4 - ($ - %%insn_0452e) db 0
    %%insn_04532:
    jz short 0x453c ; 04532 7408
    %if ($ - %%insn_04532) > 2
        %error "LONG_04532"
    %endif
    times 2 - ($ - %%insn_04532) db 0
    %%insn_04534:
    mov [bp-0x278c],ah ; 04534 88A674D8
    %if ($ - %%insn_04534) > 4
        %error "LONG_04534"
    %endif
    times 4 - ($ - %%insn_04534) db 0
    %%insn_04538:
    inc byte [bp-0x235b] ; 04538 FE86A5DC
    %if ($ - %%insn_04538) > 4
        %error "LONG_04538"
    %endif
    times 4 - ($ - %%insn_04538) db 0
    %%insn_0453c:
    mov ax,[bp-0x2605] ; 0453C 8B86FBD9
    %if ($ - %%insn_0453c) > 4
        %error "LONG_0453C"
    %endif
    times 4 - ($ - %%insn_0453c) db 0
    %%insn_04540:
    mov ds,ax ; 04540 8ED8
    %if ($ - %%insn_04540) > 2
        %error "LONG_04540"
    %endif
    times 2 - ($ - %%insn_04540) db 0
    %%insn_04542:
    mov al,[si] ; 04542 8A04
    %if ($ - %%insn_04542) > 2
        %error "LONG_04542"
    %endif
    times 2 - ($ - %%insn_04542) db 0
    %%insn_04544:
    inc si ; 04544 46
    %if ($ - %%insn_04544) > 1
        %error "LONG_04544"
    %endif
    times 1 - ($ - %%insn_04544) db 0
    db 0x8A, 0xE0 ; 04545 8AE0 | mov ah,al | encoding preserved
    %%insn_04547:
    and al,0x7f ; 04547 247F
    %if ($ - %%insn_04547) > 2
        %error "LONG_04547"
    %endif
    times 2 - ($ - %%insn_04547) db 0
    %%insn_04549:
    push ds ; 04549 1E
    %if ($ - %%insn_04549) > 1
        %error "LONG_04549"
    %endif
    times 1 - ($ - %%insn_04549) db 0
    %%insn_0454a:
    cmp al,0xc ; 0454A 3C0C
    %if ($ - %%insn_0454a) > 2
        %error "LONG_0454A"
    %endif
    times 2 - ($ - %%insn_0454a) db 0
    %%insn_0454c:
    jnz short 0x4554 ; 0454C 7506
    %if ($ - %%insn_0454c) > 2
        %error "LONG_0454C"
    %endif
    times 2 - ($ - %%insn_0454c) db 0
    %%insn_0454e:
    call 0x4729 ; 0454E E8D801
    %if ($ - %%insn_0454e) > 3
        %error "LONG_0454E"
    %endif
    times 3 - ($ - %%insn_0454e) db 0
    %%insn_04551:
    jmp 0x4679 ; 04551 E92501
    %if ($ - %%insn_04551) > 3
        %error "LONG_04551"
    %endif
    times 3 - ($ - %%insn_04551) db 0
    %%insn_04554:
    cmp al,0xd ; 04554 3C0D
    %if ($ - %%insn_04554) > 2
        %error "LONG_04554"
    %endif
    times 2 - ($ - %%insn_04554) db 0
    %%insn_04556:
    jnz short 0x456b ; 04556 7513
    %if ($ - %%insn_04556) > 2
        %error "LONG_04556"
    %endif
    times 2 - ($ - %%insn_04556) db 0
    %%insn_04558:
    mov [0xd9ff],ah ; 04558 8826FFD9
    %if ($ - %%insn_04558) > 4
        %error "LONG_04558"
    %endif
    times 4 - ($ - %%insn_04558) db 0
    %%insn_0455c:
    push si ; 0455C 56
    %if ($ - %%insn_0455c) > 1
        %error "LONG_0455C"
    %endif
    times 1 - ($ - %%insn_0455c) db 0
    %%insn_0455d:
    call 0x47dc ; 0455D E87C02
    %if ($ - %%insn_0455d) > 3
        %error "LONG_0455D"
    %endif
    times 3 - ($ - %%insn_0455d) db 0
    %%insn_04560:
    pop si ; 04560 5E
    %if ($ - %%insn_04560) > 1
        %error "LONG_04560"
    %endif
    times 1 - ($ - %%insn_04560) db 0
    %%insn_04561:
    mov ah,[0xd9ff] ; 04561 8A26FFD9
    %if ($ - %%insn_04561) > 4
        %error "LONG_04561"
    %endif
    times 4 - ($ - %%insn_04561) db 0
    %%insn_04565:
    add si,0xb ; 04565 83C60B
    %if ($ - %%insn_04565) > 3
        %error "LONG_04565"
    %endif
    times 3 - ($ - %%insn_04565) db 0
    %%insn_04568:
    jmp 0x4679 ; 04568 E90E01
    %if ($ - %%insn_04568) > 3
        %error "LONG_04568"
    %endif
    times 3 - ($ - %%insn_04568) db 0
    %%insn_0456b:
    cmp al,0x3b ; 0456B 3C3B
    %if ($ - %%insn_0456b) > 2
        %error "LONG_0456B"
    %endif
    times 2 - ($ - %%insn_0456b) db 0
    %%insn_0456d:
    jnz short 0x4595 ; 0456D 7526
    %if ($ - %%insn_0456d) > 2
        %error "LONG_0456D"
    %endif
    times 2 - ($ - %%insn_0456d) db 0
    %%insn_0456f:
    lodsb ; 0456F AC
    %if ($ - %%insn_0456f) > 1
        %error "LONG_0456F"
    %endif
    times 1 - ($ - %%insn_0456f) db 0
    %%insn_04570:
    push si ; 04570 56
    %if ($ - %%insn_04570) > 1
        %error "LONG_04570"
    %endif
    times 1 - ($ - %%insn_04570) db 0
    %%insn_04571:
    add al,0x30 ; 04571 0430
    %if ($ - %%insn_04571) > 2
        %error "LONG_04571"
    %endif
    times 2 - ($ - %%insn_04571) db 0
    %%insn_04573:
    mov [bp-0x265c],al ; 04573 8886A4D9
    %if ($ - %%insn_04573) > 4
        %error "LONG_04573"
    %endif
    times 4 - ($ - %%insn_04573) db 0
    %%insn_04577:
    mov byte [bp-0x1e9b],0x0 ; 04577 C68665E100
    %if ($ - %%insn_04577) > 5
        %error "LONG_04577"
    %endif
    times 5 - ($ - %%insn_04577) db 0
    %%insn_0457c:
    call 0x47dc ; 0457C E85D02
    %if ($ - %%insn_0457c) > 3
        %error "LONG_0457C"
    %endif
    times 3 - ($ - %%insn_0457c) db 0
    %%insn_0457f:
    cmp byte [bp-0x1e9b],0x0 ; 0457F 80BE65E100
    %if ($ - %%insn_0457f) > 5
        %error "LONG_0457F"
    %endif
    times 5 - ($ - %%insn_0457f) db 0
    %%insn_04584:
    jz short 0x458e ; 04584 7408
    %if ($ - %%insn_04584) > 2
        %error "LONG_04584"
    %endif
    times 2 - ($ - %%insn_04584) db 0
    %%insn_04586:
    mov al,[bp-0x265c] ; 04586 8A86A4D9
    %if ($ - %%insn_04586) > 4
        %error "LONG_04586"
    %endif
    times 4 - ($ - %%insn_04586) db 0
    %%insn_0458a:
    mov [bp-0x271f],al ; 0458A 8886E1D8
    %if ($ - %%insn_0458a) > 4
        %error "LONG_0458A"
    %endif
    times 4 - ($ - %%insn_0458a) db 0
    %%insn_0458e:
    pop si ; 0458E 5E
    %if ($ - %%insn_0458e) > 1
        %error "LONG_0458E"
    %endif
    times 1 - ($ - %%insn_0458e) db 0
    %%insn_0458f:
    add si,0xb ; 0458F 83C60B
    %if ($ - %%insn_0458f) > 3
        %error "LONG_0458F"
    %endif
    times 3 - ($ - %%insn_0458f) db 0
    %%insn_04592:
    jmp 0x4679 ; 04592 E9E400
    %if ($ - %%insn_04592) > 3
        %error "LONG_04592"
    %endif
    times 3 - ($ - %%insn_04592) db 0
    %%insn_04595:
    cmp al,0x13 ; 04595 3C13
    %if ($ - %%insn_04595) > 2
        %error "LONG_04595"
    %endif
    times 2 - ($ - %%insn_04595) db 0
    %%insn_04597:
    jnz short 0x45fa ; 04597 7561
    %if ($ - %%insn_04597) > 2
        %error "LONG_04597"
    %endif
    times 2 - ($ - %%insn_04597) db 0
    %%insn_04599:
    push es ; 04599 06
    %if ($ - %%insn_04599) > 1
        %error "LONG_04599"
    %endif
    times 1 - ($ - %%insn_04599) db 0
    %%insn_0459a:
    cmp byte [bp-0x271f],0x0 ; 0459A 80BEE1D800
    %if ($ - %%insn_0459a) > 5
        %error "LONG_0459A"
    %endif
    times 5 - ($ - %%insn_0459a) db 0
    %%insn_0459f:
    jz short 0x45b4 ; 0459F 7413
    %if ($ - %%insn_0459f) > 2
        %error "LONG_0459F"
    %endif
    times 2 - ($ - %%insn_0459f) db 0
    %%insn_045a1:
    mov al,[bp-0x271f] ; 045A1 8A86E1D8
    %if ($ - %%insn_045a1) > 4
        %error "LONG_045A1"
    %endif
    times 4 - ($ - %%insn_045a1) db 0
    %%insn_045a5:
    cmp al,[bp-0x265d] ; 045A5 3A86A3D9
    %if ($ - %%insn_045a5) > 4
        %error "LONG_045A5"
    %endif
    times 4 - ($ - %%insn_045a5) db 0
    %%insn_045a9:
    jz short 0x45b2 ; 045A9 7407
    %if ($ - %%insn_045a9) > 2
        %error "LONG_045A9"
    %endif
    times 2 - ($ - %%insn_045a9) db 0
    %%insn_045ab:
    mov [bp-0x265d],al ; 045AB 8886A3D9
    %if ($ - %%insn_045ab) > 4
        %error "LONG_045AB"
    %endif
    times 4 - ($ - %%insn_045ab) db 0
    %%insn_045af:
    call 0x54ad ; 045AF E8FB0E
    %if ($ - %%insn_045af) > 3
        %error "LONG_045AF"
    %endif
    times 3 - ($ - %%insn_045af) db 0
    %%insn_045b2:
    jmp short 0x45c3 ; 045B2 EB0F
    %if ($ - %%insn_045b2) > 2
        %error "LONG_045B2"
    %endif
    times 2 - ($ - %%insn_045b2) db 0
    %%insn_045b4:
    cmp byte [bp-0x265d],0x0 ; 045B4 80BEA3D900
    %if ($ - %%insn_045b4) > 5
        %error "LONG_045B4"
    %endif
    times 5 - ($ - %%insn_045b4) db 0
    %%insn_045b9:
    jz short 0x45c3 ; 045B9 7408
    %if ($ - %%insn_045b9) > 2
        %error "LONG_045B9"
    %endif
    times 2 - ($ - %%insn_045b9) db 0
    %%insn_045bb:
    call 0x54f9 ; 045BB E83B0F
    %if ($ - %%insn_045bb) > 3
        %error "LONG_045BB"
    %endif
    times 3 - ($ - %%insn_045bb) db 0
    %%insn_045be:
    mov byte [bp-0x265d],0x0 ; 045BE C686A3D900
    %if ($ - %%insn_045be) > 5
        %error "LONG_045BE"
    %endif
    times 5 - ($ - %%insn_045be) db 0
    %%insn_045c3:
    mov byte [bp-0x271f],0x0 ; 045C3 C686E1D800
    %if ($ - %%insn_045c3) > 5
        %error "LONG_045C3"
    %endif
    times 5 - ($ - %%insn_045c3) db 0
    %%insn_045c8:
    mov ax,0x893 ; 045C8 B89308
    %if ($ - %%insn_045c8) > 3
        %error "LONG_045C8"
    %endif
    times 3 - ($ - %%insn_045c8) db 0
    %%insn_045cb:
    mov ds,ax ; 045CB 8ED8
    %if ($ - %%insn_045cb) > 2
        %error "LONG_045CB"
    %endif
    times 2 - ($ - %%insn_045cb) db 0
    %%insn_045cd:
    mov es,ax ; 045CD 8EC0
    %if ($ - %%insn_045cd) > 2
        %error "LONG_045CD"
    %endif
    times 2 - ($ - %%insn_045cd) db 0
    %%insn_045cf:
    call 0x4a7b ; 045CF E8A904
    %if ($ - %%insn_045cf) > 3
        %error "LONG_045CF"
    %endif
    times 3 - ($ - %%insn_045cf) db 0
    %%insn_045d2:
    mov dl,0xff ; 045D2 B2FF
    %if ($ - %%insn_045d2) > 2
        %error "LONG_045D2"
    %endif
    times 2 - ($ - %%insn_045d2) db 0
    %%insn_045d4:
    mov ax,0x600 ; 045D4 B80006
    %if ($ - %%insn_045d4) > 3
        %error "LONG_045D4"
    %endif
    times 3 - ($ - %%insn_045d4) db 0
    %%insn_045d7:
    int byte 0x21 ; 045D7 CD21
    %if ($ - %%insn_045d7) > 2
        %error "LONG_045D7"
    %endif
    times 2 - ($ - %%insn_045d7) db 0
    %%insn_045d9:
    jz short 0x45ea ; 045D9 740F
    %if ($ - %%insn_045d9) > 2
        %error "LONG_045D9"
    %endif
    times 2 - ($ - %%insn_045d9) db 0
    db 0x22, 0xC0 ; 045DB 22C0 | and al,al | encoding preserved
    %%insn_045dd:
    jnz short 0x45e6 ; 045DD 7507
    %if ($ - %%insn_045dd) > 2
        %error "LONG_045DD"
    %endif
    times 2 - ($ - %%insn_045dd) db 0
    %%insn_045df:
    mov dl,0xff ; 045DF B2FF
    %if ($ - %%insn_045df) > 2
        %error "LONG_045DF"
    %endif
    times 2 - ($ - %%insn_045df) db 0
    %%insn_045e1:
    mov ax,0x600 ; 045E1 B80006
    %if ($ - %%insn_045e1) > 3
        %error "LONG_045E1"
    %endif
    times 3 - ($ - %%insn_045e1) db 0
    %%insn_045e4:
    int byte 0x21 ; 045E4 CD21
    %if ($ - %%insn_045e4) > 2
        %error "LONG_045E4"
    %endif
    times 2 - ($ - %%insn_045e4) db 0
    %%insn_045e6:
    mov [bp-0x2609],al ; 045E6 8886F7D9
    %if ($ - %%insn_045e6) > 4
        %error "LONG_045E6"
    %endif
    times 4 - ($ - %%insn_045e6) db 0
    %%insn_045ea:
    pop es ; 045EA 07
    %if ($ - %%insn_045ea) > 1
        %error "LONG_045EA"
    %endif
    times 1 - ($ - %%insn_045ea) db 0
    %%insn_045eb:
    mov ax,0x5 ; 045EB B80500
    %if ($ - %%insn_045eb) > 3
        %error "LONG_045EB"
    %endif
    times 3 - ($ - %%insn_045eb) db 0
    %%insn_045ee:
    call 0x4710 ; 045EE E81F01
    %if ($ - %%insn_045ee) > 3
        %error "LONG_045EE"
    %endif
    times 3 - ($ - %%insn_045ee) db 0
    db 0x33, 0xED ; 045F1 33ED | xor bp,bp | encoding preserved
    %%insn_045f3:
    mov si,[bp-0x261a] ; 045F3 8BB6E6D9
    %if ($ - %%insn_045f3) > 4
        %error "LONG_045F3"
    %endif
    times 4 - ($ - %%insn_045f3) db 0
    %%insn_045f7:
    jmp 0x4679 ; 045F7 E97F00
    %if ($ - %%insn_045f7) > 3
        %error "LONG_045F7"
    %endif
    times 3 - ($ - %%insn_045f7) db 0
    %%insn_045fa:
    cmp al,0xe ; 045FA 3C0E
    %if ($ - %%insn_045fa) > 2
        %error "LONG_045FA"
    %endif
    times 2 - ($ - %%insn_045fa) db 0
    %%insn_045fc:
    jnz short 0x4608 ; 045FC 750A
    %if ($ - %%insn_045fc) > 2
        %error "LONG_045FC"
    %endif
    times 2 - ($ - %%insn_045fc) db 0
    %%insn_045fe:
    push si ; 045FE 56
    %if ($ - %%insn_045fe) > 1
        %error "LONG_045FE"
    %endif
    times 1 - ($ - %%insn_045fe) db 0
    %%insn_045ff:
    call 0x479c ; 045FF E89A01
    %if ($ - %%insn_045ff) > 3
        %error "LONG_045FF"
    %endif
    times 3 - ($ - %%insn_045ff) db 0
    %%insn_04602:
    pop si ; 04602 5E
    %if ($ - %%insn_04602) > 1
        %error "LONG_04602"
    %endif
    times 1 - ($ - %%insn_04602) db 0
    %%insn_04603:
    add si,0x2 ; 04603 83C602
    %if ($ - %%insn_04603) > 3
        %error "LONG_04603"
    %endif
    times 3 - ($ - %%insn_04603) db 0
    %%insn_04606:
    jmp short 0x4679 ; 04606 EB71
    %if ($ - %%insn_04606) > 2
        %error "LONG_04606"
    %endif
    times 2 - ($ - %%insn_04606) db 0
    %%insn_04608:
    cmp al,0xf ; 04608 3C0F
    %if ($ - %%insn_04608) > 2
        %error "LONG_04608"
    %endif
    times 2 - ($ - %%insn_04608) db 0
    %%insn_0460a:
    jnz short 0x4616 ; 0460A 750A
    %if ($ - %%insn_0460a) > 2
        %error "LONG_0460A"
    %endif
    times 2 - ($ - %%insn_0460a) db 0
    %%insn_0460c:
    push si ; 0460C 56
    %if ($ - %%insn_0460c) > 1
        %error "LONG_0460C"
    %endif
    times 1 - ($ - %%insn_0460c) db 0
    %%insn_0460d:
    call 0x478c ; 0460D E87C01
    %if ($ - %%insn_0460d) > 3
        %error "LONG_0460D"
    %endif
    times 3 - ($ - %%insn_0460d) db 0
    %%insn_04610:
    pop si ; 04610 5E
    %if ($ - %%insn_04610) > 1
        %error "LONG_04610"
    %endif
    times 1 - ($ - %%insn_04610) db 0
    %%insn_04611:
    add si,0x2 ; 04611 83C602
    %if ($ - %%insn_04611) > 3
        %error "LONG_04611"
    %endif
    times 3 - ($ - %%insn_04611) db 0
    %%insn_04614:
    jmp short 0x4679 ; 04614 EB63
    %if ($ - %%insn_04614) > 2
        %error "LONG_04614"
    %endif
    times 2 - ($ - %%insn_04614) db 0
    %%insn_04616:
    cmp al,0x11 ; 04616 3C11
    %if ($ - %%insn_04616) > 2
        %error "LONG_04616"
    %endif
    times 2 - ($ - %%insn_04616) db 0
    %%insn_04618:
    jnz short 0x4624 ; 04618 750A
    %if ($ - %%insn_04618) > 2
        %error "LONG_04618"
    %endif
    times 2 - ($ - %%insn_04618) db 0
    %%insn_0461a:
    push si ; 0461A 56
    %if ($ - %%insn_0461a) > 1
        %error "LONG_0461A"
    %endif
    times 1 - ($ - %%insn_0461a) db 0
    %%insn_0461b:
    call 0x47ac ; 0461B E88E01
    %if ($ - %%insn_0461b) > 3
        %error "LONG_0461B"
    %endif
    times 3 - ($ - %%insn_0461b) db 0
    %%insn_0461e:
    pop si ; 0461E 5E
    %if ($ - %%insn_0461e) > 1
        %error "LONG_0461E"
    %endif
    times 1 - ($ - %%insn_0461e) db 0
    %%insn_0461f:
    add si,0x2 ; 0461F 83C602
    %if ($ - %%insn_0461f) > 3
        %error "LONG_0461F"
    %endif
    times 3 - ($ - %%insn_0461f) db 0
    %%insn_04622:
    jmp short 0x4679 ; 04622 EB55
    %if ($ - %%insn_04622) > 2
        %error "LONG_04622"
    %endif
    times 2 - ($ - %%insn_04622) db 0
    %%insn_04624:
    cmp al,0x10 ; 04624 3C10
    %if ($ - %%insn_04624) > 2
        %error "LONG_04624"
    %endif
    times 2 - ($ - %%insn_04624) db 0
    %%insn_04626:
    jnz short 0x4632 ; 04626 750A
    %if ($ - %%insn_04626) > 2
        %error "LONG_04626"
    %endif
    times 2 - ($ - %%insn_04626) db 0
    %%insn_04628:
    push si ; 04628 56
    %if ($ - %%insn_04628) > 1
        %error "LONG_04628"
    %endif
    times 1 - ($ - %%insn_04628) db 0
    %%insn_04629:
    call 0x47bc ; 04629 E89001
    %if ($ - %%insn_04629) > 3
        %error "LONG_04629"
    %endif
    times 3 - ($ - %%insn_04629) db 0
    %%insn_0462c:
    pop si ; 0462C 5E
    %if ($ - %%insn_0462c) > 1
        %error "LONG_0462C"
    %endif
    times 1 - ($ - %%insn_0462c) db 0
    %%insn_0462d:
    add si,0x2 ; 0462D 83C602
    %if ($ - %%insn_0462d) > 3
        %error "LONG_0462D"
    %endif
    times 3 - ($ - %%insn_0462d) db 0
    %%insn_04630:
    jmp short 0x4679 ; 04630 EB47
    %if ($ - %%insn_04630) > 2
        %error "LONG_04630"
    %endif
    times 2 - ($ - %%insn_04630) db 0
    %%insn_04632:
    cmp al,0x12 ; 04632 3C12
    %if ($ - %%insn_04632) > 2
        %error "LONG_04632"
    %endif
    times 2 - ($ - %%insn_04632) db 0
    %%insn_04634:
    jnz short 0x4640 ; 04634 750A
    %if ($ - %%insn_04634) > 2
        %error "LONG_04634"
    %endif
    times 2 - ($ - %%insn_04634) db 0
    %%insn_04636:
    push si ; 04636 56
    %if ($ - %%insn_04636) > 1
        %error "LONG_04636"
    %endif
    times 1 - ($ - %%insn_04636) db 0
    %%insn_04637:
    call 0x47cc ; 04637 E89201
    %if ($ - %%insn_04637) > 3
        %error "LONG_04637"
    %endif
    times 3 - ($ - %%insn_04637) db 0
    %%insn_0463a:
    pop si ; 0463A 5E
    %if ($ - %%insn_0463a) > 1
        %error "LONG_0463A"
    %endif
    times 1 - ($ - %%insn_0463a) db 0
    %%insn_0463b:
    add si,0x2 ; 0463B 83C602
    %if ($ - %%insn_0463b) > 3
        %error "LONG_0463B"
    %endif
    times 3 - ($ - %%insn_0463b) db 0
    %%insn_0463e:
    jmp short 0x4679 ; 0463E EB39
    %if ($ - %%insn_0463e) > 2
        %error "LONG_0463E"
    %endif
    times 2 - ($ - %%insn_0463e) db 0
    %%insn_04640:
    cmp al,0x30 ; 04640 3C30
    %if ($ - %%insn_04640) > 2
        %error "LONG_04640"
    %endif
    times 2 - ($ - %%insn_04640) db 0
    %%insn_04642:
    jnz short 0x464e ; 04642 750A
    %if ($ - %%insn_04642) > 2
        %error "LONG_04642"
    %endif
    times 2 - ($ - %%insn_04642) db 0
    %%insn_04644:
    push si ; 04644 56
    %if ($ - %%insn_04644) > 1
        %error "LONG_04644"
    %endif
    times 1 - ($ - %%insn_04644) db 0
    %%insn_04645:
    call 0x477c ; 04645 E83401
    %if ($ - %%insn_04645) > 3
        %error "LONG_04645"
    %endif
    times 3 - ($ - %%insn_04645) db 0
    %%insn_04648:
    pop si ; 04648 5E
    %if ($ - %%insn_04648) > 1
        %error "LONG_04648"
    %endif
    times 1 - ($ - %%insn_04648) db 0
    %%insn_04649:
    add si,0x2 ; 04649 83C602
    %if ($ - %%insn_04649) > 3
        %error "LONG_04649"
    %endif
    times 3 - ($ - %%insn_04649) db 0
    %%insn_0464c:
    jmp short 0x4679 ; 0464C EB2B
    %if ($ - %%insn_0464c) > 2
        %error "LONG_0464C"
    %endif
    times 2 - ($ - %%insn_0464c) db 0
    %%insn_0464e:
    cmp al,0x1a ; 0464E 3C1A
    %if ($ - %%insn_0464e) > 2
        %error "LONG_0464E"
    %endif
    times 2 - ($ - %%insn_0464e) db 0
    %%insn_04650:
    jnz short 0x4657 ; 04650 7505
    %if ($ - %%insn_04650) > 2
        %error "LONG_04650"
    %endif
    times 2 - ($ - %%insn_04650) db 0
    %%insn_04652:
    call 0x41f8 ; 04652 E8A3FB
    %if ($ - %%insn_04652) > 3
        %error "LONG_04652"
    %endif
    times 3 - ($ - %%insn_04652) db 0
    %%insn_04655:
    jmp short 0x4679 ; 04655 EB22
    %if ($ - %%insn_04655) > 2
        %error "LONG_04655"
    %endif
    times 2 - ($ - %%insn_04655) db 0
    %%insn_04657:
    cmp al,0x15 ; 04657 3C15
    %if ($ - %%insn_04657) > 2
        %error "LONG_04657"
    %endif
    times 2 - ($ - %%insn_04657) db 0
    %%insn_04659:
    jnz short 0x4660 ; 04659 7505
    %if ($ - %%insn_04659) > 2
        %error "LONG_04659"
    %endif
    times 2 - ($ - %%insn_04659) db 0
    %%insn_0465b:
    call 0x4001 ; 0465B E8A3F9
    %if ($ - %%insn_0465b) > 3
        %error "LONG_0465B"
    %endif
    times 3 - ($ - %%insn_0465b) db 0
    %%insn_0465e:
    jmp short 0x4679 ; 0465E EB19
    %if ($ - %%insn_0465e) > 2
        %error "LONG_0465E"
    %endif
    times 2 - ($ - %%insn_0465e) db 0
    %%insn_04660:
    cmp al,0x23 ; 04660 3C23
    %if ($ - %%insn_04660) > 2
        %error "LONG_04660"
    %endif
    times 2 - ($ - %%insn_04660) db 0
    %%insn_04662:
    jnz short 0x4669 ; 04662 7505
    %if ($ - %%insn_04662) > 2
        %error "LONG_04662"
    %endif
    times 2 - ($ - %%insn_04662) db 0
    %%insn_04664:
    call 0x42cb ; 04664 E864FC
    %if ($ - %%insn_04664) > 3
        %error "LONG_04664"
    %endif
    times 3 - ($ - %%insn_04664) db 0
    %%insn_04667:
    jmp short 0x4679 ; 04667 EB10
    %if ($ - %%insn_04667) > 2
        %error "LONG_04667"
    %endif
    times 2 - ($ - %%insn_04667) db 0
    %%insn_04669:
    cmp al,0x34 ; 04669 3C34
    %if ($ - %%insn_04669) > 2
        %error "LONG_04669"
    %endif
    times 2 - ($ - %%insn_04669) db 0
    %%insn_0466b:
    jnz short 0x4672 ; 0466B 7505
    %if ($ - %%insn_0466b) > 2
        %error "LONG_0466B"
    %endif
    times 2 - ($ - %%insn_0466b) db 0
    %%insn_0466d:
    call 0x421e ; 0466D E8AEFB
    %if ($ - %%insn_0466d) > 3
        %error "LONG_0466D"
    %endif
    times 3 - ($ - %%insn_0466d) db 0
    %%insn_04670:
    jmp short 0x4679 ; 04670 EB07
    %if ($ - %%insn_04670) > 2
        %error "LONG_04670"
    %endif
    times 2 - ($ - %%insn_04670) db 0
    %%insn_04672:
    cmp al,0x36 ; 04672 3C36
    %if ($ - %%insn_04672) > 2
        %error "LONG_04672"
    %endif
    times 2 - ($ - %%insn_04672) db 0
    %%insn_04674:
    jnz short 0x4679 ; 04674 7503
    %if ($ - %%insn_04674) > 2
        %error "LONG_04674"
    %endif
    times 2 - ($ - %%insn_04674) db 0
    %%insn_04676:
    call 0x4244 ; 04676 E8CBFB
    %if ($ - %%insn_04676) > 3
        %error "LONG_04676"
    %endif
    times 3 - ($ - %%insn_04676) db 0
    %%insn_04679:
    cmp word [bp-0x1f54],0x0 ; 04679 83BEACE000
    %if ($ - %%insn_04679) > 5
        %error "LONG_04679"
    %endif
    times 5 - ($ - %%insn_04679) db 0
    %%insn_0467e:
    jz short 0x4685 ; 0467E 7405
    %if ($ - %%insn_0467e) > 2
        %error "LONG_0467E"
    %endif
    times 2 - ($ - %%insn_0467e) db 0
    %%insn_04680:
    push si ; 04680 56
    %if ($ - %%insn_04680) > 1
        %error "LONG_04680"
    %endif
    times 1 - ($ - %%insn_04680) db 0
    %%insn_04681:
    call 0x4754 ; 04681 E8D000
    %if ($ - %%insn_04681) > 3
        %error "LONG_04681"
    %endif
    times 3 - ($ - %%insn_04681) db 0
    %%insn_04684:
    pop si ; 04684 5E
    %if ($ - %%insn_04684) > 1
        %error "LONG_04684"
    %endif
    times 1 - ($ - %%insn_04684) db 0
    %%insn_04685:
    cmp word [bp-0x1f49],0x0 ; 04685 83BEB7E000
    %if ($ - %%insn_04685) > 5
        %error "LONG_04685"
    %endif
    times 5 - ($ - %%insn_04685) db 0
    %%insn_0468a:
    jz short 0x4691 ; 0468A 7405
    %if ($ - %%insn_0468a) > 2
        %error "LONG_0468A"
    %endif
    times 2 - ($ - %%insn_0468a) db 0
    %%insn_0468c:
    push si ; 0468C 56
    %if ($ - %%insn_0468c) > 1
        %error "LONG_0468C"
    %endif
    times 1 - ($ - %%insn_0468c) db 0
    %%insn_0468d:
    call 0x4772 ; 0468D E8E200
    %if ($ - %%insn_0468d) > 3
        %error "LONG_0468D"
    %endif
    times 3 - ($ - %%insn_0468d) db 0
    %%insn_04690:
    pop si ; 04690 5E
    %if ($ - %%insn_04690) > 1
        %error "LONG_04690"
    %endif
    times 1 - ($ - %%insn_04690) db 0
    %%insn_04691:
    cmp word [bp-0x1fa1],0x0 ; 04691 83BE5FE000
    %if ($ - %%insn_04691) > 5
        %error "LONG_04691"
    %endif
    times 5 - ($ - %%insn_04691) db 0
    %%insn_04696:
    jz short 0x469d ; 04696 7405
    %if ($ - %%insn_04696) > 2
        %error "LONG_04696"
    %endif
    times 2 - ($ - %%insn_04696) db 0
    %%insn_04698:
    push si ; 04698 56
    %if ($ - %%insn_04698) > 1
        %error "LONG_04698"
    %endif
    times 1 - ($ - %%insn_04698) db 0
    %%insn_04699:
    call 0x475e ; 04699 E8C200
    %if ($ - %%insn_04699) > 3
        %error "LONG_04699"
    %endif
    times 3 - ($ - %%insn_04699) db 0
    %%insn_0469c:
    pop si ; 0469C 5E
    %if ($ - %%insn_0469c) > 1
        %error "LONG_0469C"
    %endif
    times 1 - ($ - %%insn_0469c) db 0
    %%insn_0469d:
    cmp word [bp-0x1f96],0x0 ; 0469D 83BE6AE000
    %if ($ - %%insn_0469d) > 5
        %error "LONG_0469D"
    %endif
    times 5 - ($ - %%insn_0469d) db 0
    %%insn_046a2:
    jz short 0x46a9 ; 046A2 7405
    %if ($ - %%insn_046a2) > 2
        %error "LONG_046A2"
    %endif
    times 2 - ($ - %%insn_046a2) db 0
    %%insn_046a4:
    push si ; 046A4 56
    %if ($ - %%insn_046a4) > 1
        %error "LONG_046A4"
    %endif
    times 1 - ($ - %%insn_046a4) db 0
    %%insn_046a5:
    call 0x4768 ; 046A5 E8C000
    %if ($ - %%insn_046a5) > 3
        %error "LONG_046A5"
    %endif
    times 3 - ($ - %%insn_046a5) db 0
    %%insn_046a8:
    pop si ; 046A8 5E
    %if ($ - %%insn_046a8) > 1
        %error "LONG_046A8"
    %endif
    times 1 - ($ - %%insn_046a8) db 0
    %%insn_046a9:
    pop ds ; 046A9 1F
    %if ($ - %%insn_046a9) > 1
        %error "LONG_046A9"
    %endif
    times 1 - ($ - %%insn_046a9) db 0
    %%insn_046aa:
    cmp word [bp-0x1b8a],0x80 ; 046AA 81BE76E48000
    %if ($ - %%insn_046aa) > 6
        %error "LONG_046AA"
    %endif
    times 6 - ($ - %%insn_046aa) db 0
    %%insn_046b0:
    jz short 0x46f2 ; 046B0 7440
    %if ($ - %%insn_046b0) > 2
        %error "LONG_046B0"
    %endif
    times 2 - ($ - %%insn_046b0) db 0
    %%insn_046b2:
    cmp word [bp-0x1fd7],0x0 ; 046B2 83BE29E000
    %if ($ - %%insn_046b2) > 5
        %error "LONG_046B2"
    %endif
    times 5 - ($ - %%insn_046b2) db 0
    %%insn_046b7:
    jz short 0x46f2 ; 046B7 7439
    %if ($ - %%insn_046b7) > 2
        %error "LONG_046B7"
    %endif
    times 2 - ($ - %%insn_046b7) db 0
    %%insn_046b9:
    push word [bp-0x1bc8] ; 046B9 FFB638E4
    %if ($ - %%insn_046b9) > 4
        %error "LONG_046B9"
    %endif
    times 4 - ($ - %%insn_046b9) db 0
    %%insn_046bd:
    push word [bp-0x1bce] ; 046BD FFB632E4
    %if ($ - %%insn_046bd) > 4
        %error "LONG_046BD"
    %endif
    times 4 - ($ - %%insn_046bd) db 0
    %%insn_046c1:
    call word 0x702:word 0xd0a ; 046C1 9A0A0D0207
    %if ($ - %%insn_046c1) > 5
        %error "LONG_046C1"
    %endif
    times 5 - ($ - %%insn_046c1) db 0
    %%insn_046c6:
    add sp,0x4 ; 046C6 83C404
    %if ($ - %%insn_046c6) > 3
        %error "LONG_046C6"
    %endif
    times 3 - ($ - %%insn_046c6) db 0
    db 0x3D, 0x01, 0x00 ; 046C9 3D0100 | cmp ax,0x1 | encoding preserved
    %%insn_046cc:
    jz short 0x46f2 ; 046CC 7424
    %if ($ - %%insn_046cc) > 2
        %error "LONG_046CC"
    %endif
    times 2 - ($ - %%insn_046cc) db 0
    %%insn_046ce:
    mov ax,[cs:0x5cde] ; 046CE 2EA1DE5C
    %if ($ - %%insn_046ce) > 4
        %error "LONG_046CE"
    %endif
    times 4 - ($ - %%insn_046ce) db 0
    %%insn_046d2:
    cmp ax,[bp-0x2630] ; 046D2 3B86D0D9
    %if ($ - %%insn_046d2) > 4
        %error "LONG_046D2"
    %endif
    times 4 - ($ - %%insn_046d2) db 0
    %%insn_046d6:
    jna short 0x46f2 ; 046D6 761A
    %if ($ - %%insn_046d6) > 2
        %error "LONG_046D6"
    %endif
    times 2 - ($ - %%insn_046d6) db 0
    %%insn_046d8:
    push ds ; 046D8 1E
    %if ($ - %%insn_046d8) > 1
        %error "LONG_046D8"
    %endif
    times 1 - ($ - %%insn_046d8) db 0
    %%insn_046d9:
    mov ax,0x893 ; 046D9 B89308
    %if ($ - %%insn_046d9) > 3
        %error "LONG_046D9"
    %endif
    times 3 - ($ - %%insn_046d9) db 0
    %%insn_046dc:
    mov ds,ax ; 046DC 8ED8
    %if ($ - %%insn_046dc) > 2
        %error "LONG_046DC"
    %endif
    times 2 - ($ - %%insn_046dc) db 0
    %%insn_046de:
    mov ax,[bp-0x1fd7] ; 046DE 8B8629E0
    %if ($ - %%insn_046de) > 4
        %error "LONG_046DE"
    %endif
    times 4 - ($ - %%insn_046de) db 0
    %%insn_046e2:
    dec ax ; 046E2 48
    %if ($ - %%insn_046e2) > 1
        %error "LONG_046E2"
    %endif
    times 1 - ($ - %%insn_046e2) db 0
    %%insn_046e3:
    mov word [bp-0x30d2],0x1 ; 046E3 C7862ECF0100
    %if ($ - %%insn_046e3) > 6
        %error "LONG_046E3"
    %endif
    times 6 - ($ - %%insn_046e3) db 0
    %%insn_046e9:
    pusha ; 046E9 60
    %if ($ - %%insn_046e9) > 1
        %error "LONG_046E9"
    %endif
    times 1 - ($ - %%insn_046e9) db 0
    %%insn_046ea:
    call 0x3941 ; 046EA E854F2
    %if ($ - %%insn_046ea) > 3
        %error "LONG_046EA"
    %endif
    times 3 - ($ - %%insn_046ea) db 0
    %%insn_046ed:
    call 0x5bd1 ; 046ED E8E114
    %if ($ - %%insn_046ed) > 3
        %error "LONG_046ED"
    %endif
    times 3 - ($ - %%insn_046ed) db 0
    %%insn_046f0:
    popa ; 046F0 61
    %if ($ - %%insn_046f0) > 1
        %error "LONG_046F0"
    %endif
    times 1 - ($ - %%insn_046f0) db 0
    %%insn_046f1:
    pop ds ; 046F1 1F
    %if ($ - %%insn_046f1) > 1
        %error "LONG_046F1"
    %endif
    times 1 - ($ - %%insn_046f1) db 0
    %%insn_046f2:
    jmp 0x452a ; 046F2 E935FE
    %if ($ - %%insn_046f2) > 3
        %error "LONG_046F2"
    %endif
    times 3 - ($ - %%insn_046f2) db 0
    %if ($ - %%fragment_start) != 634
        %error "SIZE_0447B"
    %endif
%endmacro
