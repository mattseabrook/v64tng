; PE virtual entry 00404469
; Ghidra working symbol: FUN_00404469
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00404469_part_00 0
    %%fragment_start:
func_00404469:
    %%insn_00404469:
    push ebp ; 00404469 55
    %if ($ - %%insn_00404469) > 1
        %error "LONG_00404469"
    %endif
    times 1 - ($ - %%insn_00404469) db 0
    db 0x8B, 0xEC ; 0040446A 8BEC | mov ebp,esp | encoding preserved
    %%insn_0040446c:
    sub esp,0x24 ; 0040446C 83EC24
    %if ($ - %%insn_0040446c) > 3
        %error "LONG_0040446C"
    %endif
    times 3 - ($ - %%insn_0040446c) db 0
    %%insn_0040446f:
    mov eax,[0x41f5d0] ; 0040446F A1D0F54100
    %if ($ - %%insn_0040446f) > 5
        %error "LONG_0040446F"
    %endif
    times 5 - ($ - %%insn_0040446f) db 0
    %%insn_00404474:
    mov [ebp-0xc],eax ; 00404474 8945F4
    %if ($ - %%insn_00404474) > 3
        %error "LONG_00404474"
    %endif
    times 3 - ($ - %%insn_00404474) db 0
    %%insn_00404477:
    mov ecx,[0x41f5d4] ; 00404477 8B0DD4F54100
    %if ($ - %%insn_00404477) > 6
        %error "LONG_00404477"
    %endif
    times 6 - ($ - %%insn_00404477) db 0
    %%insn_0040447d:
    mov [ebp-0x10],ecx ; 0040447D 894DF0
    %if ($ - %%insn_0040447d) > 3
        %error "LONG_0040447D"
    %endif
    times 3 - ($ - %%insn_0040447d) db 0
    %%insn_00404480:
    mov edx,[ebp+0x8] ; 00404480 8B5508
    %if ($ - %%insn_00404480) > 3
        %error "LONG_00404480"
    %endif
    times 3 - ($ - %%insn_00404480) db 0
    %%insn_00404483:
    cmp edx,[0x41b22c] ; 00404483 3B152CB24100
    %if ($ - %%insn_00404483) > 6
        %error "LONG_00404483"
    %endif
    times 6 - ($ - %%insn_00404483) db 0
    %%insn_00404489:
    jz short 0x4044e0 ; 00404489 7455
    %if ($ - %%insn_00404489) > 2
        %error "LONG_00404489"
    %endif
    times 2 - ($ - %%insn_00404489) db 0
    %%insn_0040448b:
    mov eax,[ebp+0x8] ; 0040448B 8B4508
    %if ($ - %%insn_0040448b) > 3
        %error "LONG_0040448B"
    %endif
    times 3 - ($ - %%insn_0040448b) db 0
    %%insn_0040448e:
    mov [0x41b22c],eax ; 0040448E A32CB24100
    %if ($ - %%insn_0040448e) > 5
        %error "LONG_0040448E"
    %endif
    times 5 - ($ - %%insn_0040448e) db 0
    %%insn_00404493:
    mov dword [0x41b230],0x0 ; 00404493 C70530B2410000000000
    %if ($ - %%insn_00404493) > 10
        %error "LONG_00404493"
    %endif
    times 10 - ($ - %%insn_00404493) db 0
    %%insn_0040449d:
    mov ecx,[0x422380] ; 0040449D 8B0D80234200
    %if ($ - %%insn_0040449d) > 6
        %error "LONG_0040449D"
    %endif
    times 6 - ($ - %%insn_0040449d) db 0
    %%insn_004044a3:
    push ecx ; 004044A3 51
    %if ($ - %%insn_004044a3) > 1
        %error "LONG_004044A3"
    %endif
    times 1 - ($ - %%insn_004044a3) db 0
    %%insn_004044a4:
    mov edx,[ebp+0x8] ; 004044A4 8B5508
    %if ($ - %%insn_004044a4) > 3
        %error "LONG_004044A4"
    %endif
    times 3 - ($ - %%insn_004044a4) db 0
    %%insn_004044a7:
    mov eax,[0x421f64] ; 004044A7 A1641F4200
    %if ($ - %%insn_004044a7) > 5
        %error "LONG_004044A7"
    %endif
    times 5 - ($ - %%insn_004044a7) db 0
    %%insn_004044ac:
    add eax,[edx*4+0x41b1d0] ; 004044AC 030495D0B14100
    %if ($ - %%insn_004044ac) > 7
        %error "LONG_004044AC"
    %endif
    times 7 - ($ - %%insn_004044ac) db 0
    %%insn_004044b3:
    push eax ; 004044B3 50
    %if ($ - %%insn_004044b3) > 1
        %error "LONG_004044B3"
    %endif
    times 1 - ($ - %%insn_004044b3) db 0
    %%insn_004044b4:
    call 0x408bb4 ; 004044B4 E8FB460000
    %if ($ - %%insn_004044b4) > 5
        %error "LONG_004044B4"
    %endif
    times 5 - ($ - %%insn_004044b4) db 0
    %%insn_004044b9:
    add esp,0x8 ; 004044B9 83C408
    %if ($ - %%insn_004044b9) > 3
        %error "LONG_004044B9"
    %endif
    times 3 - ($ - %%insn_004044b9) db 0
    %%insn_004044bc:
    mov ecx,[ebp+0x8] ; 004044BC 8B4D08
    %if ($ - %%insn_004044bc) > 3
        %error "LONG_004044BC"
    %endif
    times 3 - ($ - %%insn_004044bc) db 0
    %%insn_004044bf:
    mov edx,[0x421f64] ; 004044BF 8B15641F4200
    %if ($ - %%insn_004044bf) > 6
        %error "LONG_004044BF"
    %endif
    times 6 - ($ - %%insn_004044bf) db 0
    %%insn_004044c5:
    add edx,[ecx*4+0x41b200] ; 004044C5 03148D00B24100
    %if ($ - %%insn_004044c5) > 7
        %error "LONG_004044C5"
    %endif
    times 7 - ($ - %%insn_004044c5) db 0
    %%insn_004044cc:
    push edx ; 004044CC 52
    %if ($ - %%insn_004044cc) > 1
        %error "LONG_004044CC"
    %endif
    times 1 - ($ - %%insn_004044cc) db 0
    %%insn_004044cd:
    call 0x404983 ; 004044CD E8B1040000
    %if ($ - %%insn_004044cd) > 5
        %error "LONG_004044CD"
    %endif
    times 5 - ($ - %%insn_004044cd) db 0
    %%insn_004044d2:
    add esp,0x4 ; 004044D2 83C404
    %if ($ - %%insn_004044d2) > 3
        %error "LONG_004044D2"
    %endif
    times 3 - ($ - %%insn_004044d2) db 0
    %%insn_004044d5:
    call dword near [0x42458c] ; 004044D5 FF158C454200
    %if ($ - %%insn_004044d5) > 6
        %error "LONG_004044D5"
    %endif
    times 6 - ($ - %%insn_004044d5) db 0
    %%insn_004044db:
    mov [0x41f348],eax ; 004044DB A348F34100
    %if ($ - %%insn_004044db) > 5
        %error "LONG_004044DB"
    %endif
    times 5 - ($ - %%insn_004044db) db 0
    %%insn_004044e0:
    mov eax,[0x422380] ; 004044E0 A180234200
    %if ($ - %%insn_004044e0) > 5
        %error "LONG_004044E0"
    %endif
    times 5 - ($ - %%insn_004044e0) db 0
    db 0x33, 0xC9 ; 004044E5 33C9 | xor ecx,ecx | encoding preserved
    %%insn_004044e7:
    mov cl,[eax] ; 004044E7 8A08
    %if ($ - %%insn_004044e7) > 2
        %error "LONG_004044E7"
    %endif
    times 2 - ($ - %%insn_004044e7) db 0
    db 0x8B, 0xC1 ; 004044E9 8BC1 | mov eax,ecx | encoding preserved
    %%insn_004044eb:
    cdq ; 004044EB 99
    %if ($ - %%insn_004044eb) > 1
        %error "LONG_004044EB"
    %endif
    times 1 - ($ - %%insn_004044eb) db 0
    db 0x2B, 0xC2 ; 004044EC 2BC2 | sub eax,edx | encoding preserved
    %%insn_004044ee:
    sar eax,1 ; 004044EE D1F8
    %if ($ - %%insn_004044ee) > 2
        %error "LONG_004044EE"
    %endif
    times 2 - ($ - %%insn_004044ee) db 0
    %%insn_004044f0:
    mov [ebp-0x18],eax ; 004044F0 8945E8
    %if ($ - %%insn_004044f0) > 3
        %error "LONG_004044F0"
    %endif
    times 3 - ($ - %%insn_004044f0) db 0
    %%insn_004044f3:
    mov edx,[ebp-0xc] ; 004044F3 8B55F4
    %if ($ - %%insn_004044f3) > 3
        %error "LONG_004044F3"
    %endif
    times 3 - ($ - %%insn_004044f3) db 0
    %%insn_004044f6:
    cmp edx,[ebp-0x18] ; 004044F6 3B55E8
    %if ($ - %%insn_004044f6) > 3
        %error "LONG_004044F6"
    %endif
    times 3 - ($ - %%insn_004044f6) db 0
    %%insn_004044f9:
    jng short 0x404530 ; 004044F9 7E35
    %if ($ - %%insn_004044f9) > 2
        %error "LONG_004044F9"
    %endif
    times 2 - ($ - %%insn_004044f9) db 0
    %%insn_004044fb:
    mov eax,[ebp-0xc] ; 004044FB 8B45F4
    %if ($ - %%insn_004044fb) > 3
        %error "LONG_004044FB"
    %endif
    times 3 - ($ - %%insn_004044fb) db 0
    %%insn_004044fe:
    sub eax,[ebp-0x18] ; 004044FE 2B45E8
    %if ($ - %%insn_004044fe) > 3
        %error "LONG_004044FE"
    %endif
    times 3 - ($ - %%insn_004044fe) db 0
    %%insn_00404501:
    mov [ebp-0xc],eax ; 00404501 8945F4
    %if ($ - %%insn_00404501) > 3
        %error "LONG_00404501"
    %endif
    times 3 - ($ - %%insn_00404501) db 0
    %%insn_00404504:
    mov ecx,[0x422380] ; 00404504 8B0D80234200
    %if ($ - %%insn_00404504) > 6
        %error "LONG_00404504"
    %endif
    times 6 - ($ - %%insn_00404504) db 0
    db 0x33, 0xD2 ; 0040450A 33D2 | xor edx,edx | encoding preserved
    %%insn_0040450c:
    mov dl,[ecx] ; 0040450C 8A11
    %if ($ - %%insn_0040450c) > 2
        %error "LONG_0040450C"
    %endif
    times 2 - ($ - %%insn_0040450c) db 0
    %%insn_0040450e:
    mov eax,[ebp-0xc] ; 0040450E 8B45F4
    %if ($ - %%insn_0040450e) > 3
        %error "LONG_0040450E"
    %endif
    times 3 - ($ - %%insn_0040450e) db 0
    db 0x03, 0xC2 ; 00404511 03C2 | add eax,edx | encoding preserved
    %%insn_00404513:
    cmp eax,0x280 ; 00404513 3D80020000
    %if ($ - %%insn_00404513) > 5
        %error "LONG_00404513"
    %endif
    times 5 - ($ - %%insn_00404513) db 0
    %%insn_00404518:
    jl short 0x40452e ; 00404518 7C14
    %if ($ - %%insn_00404518) > 2
        %error "LONG_00404518"
    %endif
    times 2 - ($ - %%insn_00404518) db 0
    %%insn_0040451a:
    mov ecx,[0x422380] ; 0040451A 8B0D80234200
    %if ($ - %%insn_0040451a) > 6
        %error "LONG_0040451A"
    %endif
    times 6 - ($ - %%insn_0040451a) db 0
    db 0x33, 0xD2 ; 00404520 33D2 | xor edx,edx | encoding preserved
    %%insn_00404522:
    mov dl,[ecx] ; 00404522 8A11
    %if ($ - %%insn_00404522) > 2
        %error "LONG_00404522"
    %endif
    times 2 - ($ - %%insn_00404522) db 0
    %%insn_00404524:
    mov eax,0x280 ; 00404524 B880020000
    %if ($ - %%insn_00404524) > 5
        %error "LONG_00404524"
    %endif
    times 5 - ($ - %%insn_00404524) db 0
    db 0x2B, 0xC2 ; 00404529 2BC2 | sub eax,edx | encoding preserved
    %%insn_0040452b:
    mov [ebp-0xc],eax ; 0040452B 8945F4
    %if ($ - %%insn_0040452b) > 3
        %error "LONG_0040452B"
    %endif
    times 3 - ($ - %%insn_0040452b) db 0
    %%insn_0040452e:
    jmp short 0x404537 ; 0040452E EB07
    %if ($ - %%insn_0040452e) > 2
        %error "LONG_0040452E"
    %endif
    times 2 - ($ - %%insn_0040452e) db 0
    %%insn_00404530:
    mov dword [ebp-0xc],0x0 ; 00404530 C745F400000000
    %if ($ - %%insn_00404530) > 7
        %error "LONG_00404530"
    %endif
    times 7 - ($ - %%insn_00404530) db 0
    %%insn_00404537:
    mov ecx,[0x422380] ; 00404537 8B0D80234200
    %if ($ - %%insn_00404537) > 6
        %error "LONG_00404537"
    %endif
    times 6 - ($ - %%insn_00404537) db 0
    db 0x33, 0xC0 ; 0040453D 33C0 | xor eax,eax | encoding preserved
    %%insn_0040453f:
    mov al,[ecx+0x1] ; 0040453F 8A4101
    %if ($ - %%insn_0040453f) > 3
        %error "LONG_0040453F"
    %endif
    times 3 - ($ - %%insn_0040453f) db 0
    %%insn_00404542:
    cdq ; 00404542 99
    %if ($ - %%insn_00404542) > 1
        %error "LONG_00404542"
    %endif
    times 1 - ($ - %%insn_00404542) db 0
    db 0x2B, 0xC2 ; 00404543 2BC2 | sub eax,edx | encoding preserved
    %%insn_00404545:
    sar eax,1 ; 00404545 D1F8
    %if ($ - %%insn_00404545) > 2
        %error "LONG_00404545"
    %endif
    times 2 - ($ - %%insn_00404545) db 0
    %%insn_00404547:
    mov [ebp-0x20],eax ; 00404547 8945E0
    %if ($ - %%insn_00404547) > 3
        %error "LONG_00404547"
    %endif
    times 3 - ($ - %%insn_00404547) db 0
    %%insn_0040454a:
    mov edx,[ebp-0x10] ; 0040454A 8B55F0
    %if ($ - %%insn_0040454a) > 3
        %error "LONG_0040454A"
    %endif
    times 3 - ($ - %%insn_0040454a) db 0
    %%insn_0040454d:
    cmp edx,[ebp-0x20] ; 0040454D 3B55E0
    %if ($ - %%insn_0040454d) > 3
        %error "LONG_0040454D"
    %endif
    times 3 - ($ - %%insn_0040454d) db 0
    %%insn_00404550:
    jng short 0x404589 ; 00404550 7E37
    %if ($ - %%insn_00404550) > 2
        %error "LONG_00404550"
    %endif
    times 2 - ($ - %%insn_00404550) db 0
    %%insn_00404552:
    mov eax,[ebp-0x10] ; 00404552 8B45F0
    %if ($ - %%insn_00404552) > 3
        %error "LONG_00404552"
    %endif
    times 3 - ($ - %%insn_00404552) db 0
    %%insn_00404555:
    sub eax,[ebp-0x20] ; 00404555 2B45E0
    %if ($ - %%insn_00404555) > 3
        %error "LONG_00404555"
    %endif
    times 3 - ($ - %%insn_00404555) db 0
    %%insn_00404558:
    mov [ebp-0x10],eax ; 00404558 8945F0
    %if ($ - %%insn_00404558) > 3
        %error "LONG_00404558"
    %endif
    times 3 - ($ - %%insn_00404558) db 0
    %%insn_0040455b:
    mov ecx,[0x422380] ; 0040455B 8B0D80234200
    %if ($ - %%insn_0040455b) > 6
        %error "LONG_0040455B"
    %endif
    times 6 - ($ - %%insn_0040455b) db 0
    db 0x33, 0xD2 ; 00404561 33D2 | xor edx,edx | encoding preserved
    %%insn_00404563:
    mov dl,[ecx+0x1] ; 00404563 8A5101
    %if ($ - %%insn_00404563) > 3
        %error "LONG_00404563"
    %endif
    times 3 - ($ - %%insn_00404563) db 0
    %%insn_00404566:
    mov eax,[ebp-0x10] ; 00404566 8B45F0
    %if ($ - %%insn_00404566) > 3
        %error "LONG_00404566"
    %endif
    times 3 - ($ - %%insn_00404566) db 0
    db 0x03, 0xC2 ; 00404569 03C2 | add eax,edx | encoding preserved
    %%insn_0040456b:
    cmp eax,0x1e0 ; 0040456B 3DE0010000
    %if ($ - %%insn_0040456b) > 5
        %error "LONG_0040456B"
    %endif
    times 5 - ($ - %%insn_0040456b) db 0
    %%insn_00404570:
    jl short 0x404587 ; 00404570 7C15
    %if ($ - %%insn_00404570) > 2
        %error "LONG_00404570"
    %endif
    times 2 - ($ - %%insn_00404570) db 0
    %%insn_00404572:
    mov ecx,[0x422380] ; 00404572 8B0D80234200
    %if ($ - %%insn_00404572) > 6
        %error "LONG_00404572"
    %endif
    times 6 - ($ - %%insn_00404572) db 0
    db 0x33, 0xD2 ; 00404578 33D2 | xor edx,edx | encoding preserved
    %%insn_0040457a:
    mov dl,[ecx+0x1] ; 0040457A 8A5101
    %if ($ - %%insn_0040457a) > 3
        %error "LONG_0040457A"
    %endif
    times 3 - ($ - %%insn_0040457a) db 0
    %%insn_0040457d:
    mov eax,0x1e0 ; 0040457D B8E0010000
    %if ($ - %%insn_0040457d) > 5
        %error "LONG_0040457D"
    %endif
    times 5 - ($ - %%insn_0040457d) db 0
    db 0x2B, 0xC2 ; 00404582 2BC2 | sub eax,edx | encoding preserved
    %%insn_00404584:
    mov [ebp-0x10],eax ; 00404584 8945F0
    %if ($ - %%insn_00404584) > 3
        %error "LONG_00404584"
    %endif
    times 3 - ($ - %%insn_00404584) db 0
    %%insn_00404587:
    jmp short 0x404590 ; 00404587 EB07
    %if ($ - %%insn_00404587) > 2
        %error "LONG_00404587"
    %endif
    times 2 - ($ - %%insn_00404587) db 0
    %%insn_00404589:
    mov dword [ebp-0x10],0x0 ; 00404589 C745F000000000
    %if ($ - %%insn_00404589) > 7
        %error "LONG_00404589"
    %endif
    times 7 - ($ - %%insn_00404589) db 0
    %%insn_00404590:
    mov ecx,[0x42133c] ; 00404590 8B0D3C134200
    %if ($ - %%insn_00404590) > 6
        %error "LONG_00404590"
    %endif
    times 6 - ($ - %%insn_00404590) db 0
    %%insn_00404596:
    mov [ebp-0x4],ecx ; 00404596 894DFC
    %if ($ - %%insn_00404596) > 3
        %error "LONG_00404596"
    %endif
    times 3 - ($ - %%insn_00404596) db 0
    %%insn_00404599:
    mov dword [ebp-0x14],0x280 ; 00404599 C745EC80020000
    %if ($ - %%insn_00404599) > 7
        %error "LONG_00404599"
    %endif
    times 7 - ($ - %%insn_00404599) db 0
    %%insn_004045a0:
    cmp dword [ebp-0x4],0x0 ; 004045A0 837DFC00
    %if ($ - %%insn_004045a0) > 4
        %error "LONG_004045A0"
    %endif
    times 4 - ($ - %%insn_004045a0) db 0
    %%insn_004045a4:
    jz 0x40497c ; 004045A4 0F84D2030000
    %if ($ - %%insn_004045a4) > 6
        %error "LONG_004045A4"
    %endif
    times 6 - ($ - %%insn_004045a4) db 0
    %%insn_004045aa:
    mov edx,[0x41b23c] ; 004045AA 8B153CB24100
    %if ($ - %%insn_004045aa) > 6
        %error "LONG_004045AA"
    %endif
    times 6 - ($ - %%insn_004045aa) db 0
    %%insn_004045b0:
    cmp edx,[ebp-0xc] ; 004045B0 3B55F4
    %if ($ - %%insn_004045b0) > 3
        %error "LONG_004045B0"
    %endif
    times 3 - ($ - %%insn_004045b0) db 0
    %%insn_004045b3:
    jnz short 0x4045c3 ; 004045B3 750E
    %if ($ - %%insn_004045b3) > 2
        %error "LONG_004045B3"
    %endif
    times 2 - ($ - %%insn_004045b3) db 0
    %%insn_004045b5:
    mov eax,[0x41b238] ; 004045B5 A138B24100
    %if ($ - %%insn_004045b5) > 5
        %error "LONG_004045B5"
    %endif
    times 5 - ($ - %%insn_004045b5) db 0
    %%insn_004045ba:
    cmp eax,[ebp-0x10] ; 004045BA 3B45F0
    %if ($ - %%insn_004045ba) > 3
        %error "LONG_004045BA"
    %endif
    times 3 - ($ - %%insn_004045ba) db 0
    %%insn_004045bd:
    jz 0x404808 ; 004045BD 0F8445020000
    %if ($ - %%insn_004045bd) > 6
        %error "LONG_004045BD"
    %endif
    times 6 - ($ - %%insn_004045bd) db 0
    %%insn_004045c3:
    cmp dword [0x41f450],0x0 ; 004045C3 833D50F4410000
    %if ($ - %%insn_004045c3) > 7
        %error "LONG_004045C3"
    %endif
    times 7 - ($ - %%insn_004045c3) db 0
    %%insn_004045ca:
    jz short 0x40464a ; 004045CA 747E
    %if ($ - %%insn_004045ca) > 2
        %error "LONG_004045CA"
    %endif
    times 2 - ($ - %%insn_004045ca) db 0
    %%insn_004045cc:
    mov ecx,[0x421f60] ; 004045CC 8B0D601F4200
    %if ($ - %%insn_004045cc) > 6
        %error "LONG_004045CC"
    %endif
    times 6 - ($ - %%insn_004045cc) db 0
    %%insn_004045d2:
    mov [ebp-0x24],ecx ; 004045D2 894DDC
    %if ($ - %%insn_004045d2) > 3
        %error "LONG_004045D2"
    %endif
    times 3 - ($ - %%insn_004045d2) db 0
    %%insn_004045d5:
    mov dword [ebp-0x20],0x0 ; 004045D5 C745E000000000
    %if ($ - %%insn_004045d5) > 7
        %error "LONG_004045D5"
    %endif
    times 7 - ($ - %%insn_004045d5) db 0
    %%insn_004045dc:
    jmp short 0x4045e7 ; 004045DC EB09
    %if ($ - %%insn_004045dc) > 2
        %error "LONG_004045DC"
    %endif
    times 2 - ($ - %%insn_004045dc) db 0
    %%insn_004045de:
    mov edx,[ebp-0x20] ; 004045DE 8B55E0
    %if ($ - %%insn_004045de) > 3
        %error "LONG_004045DE"
    %endif
    times 3 - ($ - %%insn_004045de) db 0
    %%insn_004045e1:
    add edx,0x1 ; 004045E1 83C201
    %if ($ - %%insn_004045e1) > 3
        %error "LONG_004045E1"
    %endif
    times 3 - ($ - %%insn_004045e1) db 0
    %%insn_004045e4:
    mov [ebp-0x20],edx ; 004045E4 8955E0
    %if ($ - %%insn_004045e4) > 3
        %error "LONG_004045E4"
    %endif
    times 3 - ($ - %%insn_004045e4) db 0
    %%insn_004045e7:
    mov eax,[ebp-0x20] ; 004045E7 8B45E0
    %if ($ - %%insn_004045e7) > 3
        %error "LONG_004045E7"
    %endif
    times 3 - ($ - %%insn_004045e7) db 0
    %%insn_004045ea:
    cmp eax,[0x422388] ; 004045EA 3B0588234200
    %if ($ - %%insn_004045ea) > 6
        %error "LONG_004045EA"
    %endif
    times 6 - ($ - %%insn_004045ea) db 0
    %%insn_004045f0:
    jnl short 0x40464a ; 004045F0 7D58
    %if ($ - %%insn_004045f0) > 2
        %error "LONG_004045F0"
    %endif
    times 2 - ($ - %%insn_004045f0) db 0
    %%insn_004045f2:
    mov ecx,[ebp-0x20] ; 004045F2 8B4DE0
    %if ($ - %%insn_004045f2) > 3
        %error "LONG_004045F2"
    %endif
    times 3 - ($ - %%insn_004045f2) db 0
    %%insn_004045f5:
    add ecx,[0x41b238] ; 004045F5 030D38B24100
    %if ($ - %%insn_004045f5) > 6
        %error "LONG_004045F5"
    %endif
    times 6 - ($ - %%insn_004045f5) db 0
    %%insn_004045fb:
    imul ecx,[ebp-0x14] ; 004045FB 0FAF4DEC
    %if ($ - %%insn_004045fb) > 4
        %error "LONG_004045FB"
    %endif
    times 4 - ($ - %%insn_004045fb) db 0
    %%insn_004045ff:
    mov edx,[ebp-0x4] ; 004045FF 8B55FC
    %if ($ - %%insn_004045ff) > 3
        %error "LONG_004045FF"
    %endif
    times 3 - ($ - %%insn_004045ff) db 0
    db 0x03, 0xD1 ; 00404602 03D1 | add edx,ecx | encoding preserved
    %%insn_00404604:
    add edx,[0x41b23c] ; 00404604 03153CB24100
    %if ($ - %%insn_00404604) > 6
        %error "LONG_00404604"
    %endif
    times 6 - ($ - %%insn_00404604) db 0
    %%insn_0040460a:
    mov [ebp-0x8],edx ; 0040460A 8955F8
    %if ($ - %%insn_0040460a) > 3
        %error "LONG_0040460A"
    %endif
    times 3 - ($ - %%insn_0040460a) db 0
    %%insn_0040460d:
    mov dword [ebp-0x18],0x0 ; 0040460D C745E800000000
    %if ($ - %%insn_0040460d) > 7
        %error "LONG_0040460D"
    %endif
    times 7 - ($ - %%insn_0040460d) db 0
    %%insn_00404614:
    jmp short 0x40461f ; 00404614 EB09
    %if ($ - %%insn_00404614) > 2
        %error "LONG_00404614"
    %endif
    times 2 - ($ - %%insn_00404614) db 0
    %%insn_00404616:
    mov eax,[ebp-0x18] ; 00404616 8B45E8
    %if ($ - %%insn_00404616) > 3
        %error "LONG_00404616"
    %endif
    times 3 - ($ - %%insn_00404616) db 0
    %%insn_00404619:
    add eax,0x1 ; 00404619 83C001
    %if ($ - %%insn_00404619) > 3
        %error "LONG_00404619"
    %endif
    times 3 - ($ - %%insn_00404619) db 0
    %%insn_0040461c:
    mov [ebp-0x18],eax ; 0040461C 8945E8
    %if ($ - %%insn_0040461c) > 3
        %error "LONG_0040461C"
    %endif
    times 3 - ($ - %%insn_0040461c) db 0
    %%insn_0040461f:
    mov ecx,[ebp-0x18] ; 0040461F 8B4DE8
    %if ($ - %%insn_0040461f) > 3
        %error "LONG_0040461F"
    %endif
    times 3 - ($ - %%insn_0040461f) db 0
    %%insn_00404622:
    cmp ecx,[0x422384] ; 00404622 3B0D84234200
    %if ($ - %%insn_00404622) > 6
        %error "LONG_00404622"
    %endif
    times 6 - ($ - %%insn_00404622) db 0
    %%insn_00404628:
    jnl short 0x404648 ; 00404628 7D1E
    %if ($ - %%insn_00404628) > 2
        %error "LONG_00404628"
    %endif
    times 2 - ($ - %%insn_00404628) db 0
    %%insn_0040462a:
    mov edx,[ebp-0x8] ; 0040462A 8B55F8
    %if ($ - %%insn_0040462a) > 3
        %error "LONG_0040462A"
    %endif
    times 3 - ($ - %%insn_0040462a) db 0
    %%insn_0040462d:
    mov eax,[ebp-0x24] ; 0040462D 8B45DC
    %if ($ - %%insn_0040462d) > 3
        %error "LONG_0040462D"
    %endif
    times 3 - ($ - %%insn_0040462d) db 0
    %%insn_00404630:
    mov cl,[eax] ; 00404630 8A08
    %if ($ - %%insn_00404630) > 2
        %error "LONG_00404630"
    %endif
    times 2 - ($ - %%insn_00404630) db 0
    %%insn_00404632:
    mov [edx],cl ; 00404632 880A
    %if ($ - %%insn_00404632) > 2
        %error "LONG_00404632"
    %endif
    times 2 - ($ - %%insn_00404632) db 0
    %%insn_00404634:
    mov edx,[ebp-0x8] ; 00404634 8B55F8
    %if ($ - %%insn_00404634) > 3
        %error "LONG_00404634"
    %endif
    times 3 - ($ - %%insn_00404634) db 0
    %%insn_00404637:
    add edx,0x1 ; 00404637 83C201
    %if ($ - %%insn_00404637) > 3
        %error "LONG_00404637"
    %endif
    times 3 - ($ - %%insn_00404637) db 0
    %%insn_0040463a:
    mov [ebp-0x8],edx ; 0040463A 8955F8
    %if ($ - %%insn_0040463a) > 3
        %error "LONG_0040463A"
    %endif
    times 3 - ($ - %%insn_0040463a) db 0
    %%insn_0040463d:
    mov eax,[ebp-0x24] ; 0040463D 8B45DC
    %if ($ - %%insn_0040463d) > 3
        %error "LONG_0040463D"
    %endif
    times 3 - ($ - %%insn_0040463d) db 0
    %%insn_00404640:
    add eax,0x1 ; 00404640 83C001
    %if ($ - %%insn_00404640) > 3
        %error "LONG_00404640"
    %endif
    times 3 - ($ - %%insn_00404640) db 0
    %%insn_00404643:
    mov [ebp-0x24],eax ; 00404643 8945DC
    %if ($ - %%insn_00404643) > 3
        %error "LONG_00404643"
    %endif
    times 3 - ($ - %%insn_00404643) db 0
    %%insn_00404646:
    jmp short 0x404616 ; 00404646 EBCE
    %if ($ - %%insn_00404646) > 2
        %error "LONG_00404646"
    %endif
    times 2 - ($ - %%insn_00404646) db 0
    %%insn_00404648:
    jmp short 0x4045de ; 00404648 EB94
    %if ($ - %%insn_00404648) > 2
        %error "LONG_00404648"
    %endif
    times 2 - ($ - %%insn_00404648) db 0
    %%insn_0040464a:
    mov ecx,[0x41b238] ; 0040464A 8B0D38B24100
    %if ($ - %%insn_0040464a) > 6
        %error "LONG_0040464A"
    %endif
    times 6 - ($ - %%insn_0040464a) db 0
    %%insn_00404650:
    cmp ecx,[0x42135c] ; 00404650 3B0D5C134200
    %if ($ - %%insn_00404650) > 6
        %error "LONG_00404650"
    %endif
    times 6 - ($ - %%insn_00404650) db 0
    %%insn_00404656:
    jnl short 0x404664 ; 00404656 7D0C
    %if ($ - %%insn_00404656) > 2
        %error "LONG_00404656"
    %endif
    times 2 - ($ - %%insn_00404656) db 0
    %%insn_00404658:
    mov edx,[0x41b238] ; 00404658 8B1538B24100
    %if ($ - %%insn_00404658) > 6
        %error "LONG_00404658"
    %endif
    times 6 - ($ - %%insn_00404658) db 0
    %%insn_0040465e:
    mov [0x42135c],edx ; 0040465E 89155C134200
    %if ($ - %%insn_0040465e) > 6
        %error "LONG_0040465E"
    %endif
    times 6 - ($ - %%insn_0040465e) db 0
    %%insn_00404664:
    mov eax,[0x41b23c] ; 00404664 A13CB24100
    %if ($ - %%insn_00404664) > 5
        %error "LONG_00404664"
    %endif
    times 5 - ($ - %%insn_00404664) db 0
    %%insn_00404669:
    cmp eax,[0x421354] ; 00404669 3B0554134200
    %if ($ - %%insn_00404669) > 6
        %error "LONG_00404669"
    %endif
    times 6 - ($ - %%insn_00404669) db 0
    %%insn_0040466f:
    jnl short 0x40467d ; 0040466F 7D0C
    %if ($ - %%insn_0040466f) > 2
        %error "LONG_0040466F"
    %endif
    times 2 - ($ - %%insn_0040466f) db 0
    %%insn_00404671:
    mov ecx,[0x41b23c] ; 00404671 8B0D3CB24100
    %if ($ - %%insn_00404671) > 6
        %error "LONG_00404671"
    %endif
    times 6 - ($ - %%insn_00404671) db 0
    %%insn_00404677:
    mov [0x421354],ecx ; 00404677 890D54134200
    %if ($ - %%insn_00404677) > 6
        %error "LONG_00404677"
    %endif
    times 6 - ($ - %%insn_00404677) db 0
    %%insn_0040467d:
    mov edx,[0x41b238] ; 0040467D 8B1538B24100
    %if ($ - %%insn_0040467d) > 6
        %error "LONG_0040467D"
    %endif
    times 6 - ($ - %%insn_0040467d) db 0
    %%insn_00404683:
    add edx,[0x422388] ; 00404683 031588234200
    %if ($ - %%insn_00404683) > 6
        %error "LONG_00404683"
    %endif
    times 6 - ($ - %%insn_00404683) db 0
    %%insn_00404689:
    cmp [0x421360],edx ; 00404689 391560134200
    %if ($ - %%insn_00404689) > 6
        %error "LONG_00404689"
    %endif
    times 6 - ($ - %%insn_00404689) db 0
    %%insn_0040468f:
    jnl short 0x4046a1 ; 0040468F 7D10
    %if ($ - %%insn_0040468f) > 2
        %error "LONG_0040468F"
    %endif
    times 2 - ($ - %%insn_0040468f) db 0
    %%insn_00404691:
    mov eax,[0x41b238] ; 00404691 A138B24100
    %if ($ - %%insn_00404691) > 5
        %error "LONG_00404691"
    %endif
    times 5 - ($ - %%insn_00404691) db 0
    %%insn_00404696:
    add eax,[0x422388] ; 00404696 030588234200
    %if ($ - %%insn_00404696) > 6
        %error "LONG_00404696"
    %endif
    times 6 - ($ - %%insn_00404696) db 0
    %%insn_0040469c:
    mov [0x421360],eax ; 0040469C A360134200
    %if ($ - %%insn_0040469c) > 5
        %error "LONG_0040469C"
    %endif
    times 5 - ($ - %%insn_0040469c) db 0
    %%insn_004046a1:
    mov ecx,[0x41b23c] ; 004046A1 8B0D3CB24100
    %if ($ - %%insn_004046a1) > 6
        %error "LONG_004046A1"
    %endif
    times 6 - ($ - %%insn_004046a1) db 0
    %%insn_004046a7:
    add ecx,[0x422384] ; 004046A7 030D84234200
    %if ($ - %%insn_004046a7) > 6
        %error "LONG_004046A7"
    %endif
    times 6 - ($ - %%insn_004046a7) db 0
    %%insn_004046ad:
    cmp [0x421358],ecx ; 004046AD 390D58134200
    %if ($ - %%insn_004046ad) > 6
        %error "LONG_004046AD"
    %endif
    times 6 - ($ - %%insn_004046ad) db 0
    %%insn_004046b3:
    jnl short 0x4046c7 ; 004046B3 7D12
    %if ($ - %%insn_004046b3) > 2
        %error "LONG_004046B3"
    %endif
    times 2 - ($ - %%insn_004046b3) db 0
    %%insn_004046b5:
    mov edx,[0x41b23c] ; 004046B5 8B153CB24100
    %if ($ - %%insn_004046b5) > 6
        %error "LONG_004046B5"
    %endif
    times 6 - ($ - %%insn_004046b5) db 0
    %%insn_004046bb:
    add edx,[0x422384] ; 004046BB 031584234200
    %if ($ - %%insn_004046bb) > 6
        %error "LONG_004046BB"
    %endif
    times 6 - ($ - %%insn_004046bb) db 0
    %%insn_004046c1:
    mov [0x421358],edx ; 004046C1 891558134200
    %if ($ - %%insn_004046c1) > 6
        %error "LONG_004046C1"
    %endif
    times 6 - ($ - %%insn_004046c1) db 0
    %%insn_004046c7:
    mov eax,[ebp-0x10] ; 004046C7 8B45F0
    %if ($ - %%insn_004046c7) > 3
        %error "LONG_004046C7"
    %endif
    times 3 - ($ - %%insn_004046c7) db 0
    %%insn_004046ca:
    mov [0x41b238],eax ; 004046CA A338B24100
    %if ($ - %%insn_004046ca) > 5
        %error "LONG_004046CA"
    %endif
    times 5 - ($ - %%insn_004046ca) db 0
    %%insn_004046cf:
    mov ecx,[ebp-0xc] ; 004046CF 8B4DF4
    %if ($ - %%insn_004046cf) > 3
        %error "LONG_004046CF"
    %endif
    times 3 - ($ - %%insn_004046cf) db 0
    %%insn_004046d2:
    mov [0x41b23c],ecx ; 004046D2 890D3CB24100
    %if ($ - %%insn_004046d2) > 6
        %error "LONG_004046D2"
    %endif
    times 6 - ($ - %%insn_004046d2) db 0
    %%insn_004046d8:
    mov edx,[0x422380] ; 004046D8 8B1580234200
    %if ($ - %%insn_004046d8) > 6
        %error "LONG_004046D8"
    %endif
    times 6 - ($ - %%insn_004046d8) db 0
    db 0x33, 0xC0 ; 004046DE 33C0 | xor eax,eax | encoding preserved
    %%insn_004046e0:
    mov al,[edx+0x1] ; 004046E0 8A4201
    %if ($ - %%insn_004046e0) > 3
        %error "LONG_004046E0"
    %endif
    times 3 - ($ - %%insn_004046e0) db 0
    %%insn_004046e3:
    mov [0x422388],eax ; 004046E3 A388234200
    %if ($ - %%insn_004046e3) > 5
        %error "LONG_004046E3"
    %endif
    times 5 - ($ - %%insn_004046e3) db 0
    %%insn_004046e8:
    mov ecx,[0x422380] ; 004046E8 8B0D80234200
    %if ($ - %%insn_004046e8) > 6
        %error "LONG_004046E8"
    %endif
    times 6 - ($ - %%insn_004046e8) db 0
    db 0x33, 0xD2 ; 004046EE 33D2 | xor edx,edx | encoding preserved
    %%insn_004046f0:
    mov dl,[ecx] ; 004046F0 8A11
    %if ($ - %%insn_004046f0) > 2
        %error "LONG_004046F0"
    %endif
    times 2 - ($ - %%insn_004046f0) db 0
    %%insn_004046f2:
    mov [0x422384],edx ; 004046F2 891584234200
    %if ($ - %%insn_004046f2) > 6
        %error "LONG_004046F2"
    %endif
    times 6 - ($ - %%insn_004046f2) db 0
    %%insn_004046f8:
    mov eax,[0x41b238] ; 004046F8 A138B24100
    %if ($ - %%insn_004046f8) > 5
        %error "LONG_004046F8"
    %endif
    times 5 - ($ - %%insn_004046f8) db 0
    %%insn_004046fd:
    cmp eax,[0x42135c] ; 004046FD 3B055C134200
    %if ($ - %%insn_004046fd) > 6
        %error "LONG_004046FD"
    %endif
    times 6 - ($ - %%insn_004046fd) db 0
    %%insn_00404703:
    jnl short 0x404711 ; 00404703 7D0C
    %if ($ - %%insn_00404703) > 2
        %error "LONG_00404703"
    %endif
    times 2 - ($ - %%insn_00404703) db 0
    %%insn_00404705:
    mov ecx,[0x41b238] ; 00404705 8B0D38B24100
    %if ($ - %%insn_00404705) > 6
        %error "LONG_00404705"
    %endif
    times 6 - ($ - %%insn_00404705) db 0
    %%insn_0040470b:
    mov [0x42135c],ecx ; 0040470B 890D5C134200
    %if ($ - %%insn_0040470b) > 6
        %error "LONG_0040470B"
    %endif
    times 6 - ($ - %%insn_0040470b) db 0
    %%insn_00404711:
    mov edx,[0x41b23c] ; 00404711 8B153CB24100
    %if ($ - %%insn_00404711) > 6
        %error "LONG_00404711"
    %endif
    times 6 - ($ - %%insn_00404711) db 0
    %%insn_00404717:
    cmp edx,[0x421354] ; 00404717 3B1554134200
    %if ($ - %%insn_00404717) > 6
        %error "LONG_00404717"
    %endif
    times 6 - ($ - %%insn_00404717) db 0
    %%insn_0040471d:
    jnl short 0x404729 ; 0040471D 7D0A
    %if ($ - %%insn_0040471d) > 2
        %error "LONG_0040471D"
    %endif
    times 2 - ($ - %%insn_0040471d) db 0
    %%insn_0040471f:
    mov eax,[0x41b23c] ; 0040471F A13CB24100
    %if ($ - %%insn_0040471f) > 5
        %error "LONG_0040471F"
    %endif
    times 5 - ($ - %%insn_0040471f) db 0
    %%insn_00404724:
    mov [0x421354],eax ; 00404724 A354134200
    %if ($ - %%insn_00404724) > 5
        %error "LONG_00404724"
    %endif
    times 5 - ($ - %%insn_00404724) db 0
    %%insn_00404729:
    mov ecx,[0x41b238] ; 00404729 8B0D38B24100
    %if ($ - %%insn_00404729) > 6
        %error "LONG_00404729"
    %endif
    times 6 - ($ - %%insn_00404729) db 0
    %%insn_0040472f:
    add ecx,[0x422388] ; 0040472F 030D88234200
    %if ($ - %%insn_0040472f) > 6
        %error "LONG_0040472F"
    %endif
    times 6 - ($ - %%insn_0040472f) db 0
    %%insn_00404735:
    cmp [0x421360],ecx ; 00404735 390D60134200
    %if ($ - %%insn_00404735) > 6
        %error "LONG_00404735"
    %endif
    times 6 - ($ - %%insn_00404735) db 0
    %%insn_0040473b:
    jnl short 0x40474f ; 0040473B 7D12
    %if ($ - %%insn_0040473b) > 2
        %error "LONG_0040473B"
    %endif
    times 2 - ($ - %%insn_0040473b) db 0
    %%insn_0040473d:
    mov edx,[0x41b238] ; 0040473D 8B1538B24100
    %if ($ - %%insn_0040473d) > 6
        %error "LONG_0040473D"
    %endif
    times 6 - ($ - %%insn_0040473d) db 0
    %%insn_00404743:
    add edx,[0x422388] ; 00404743 031588234200
    %if ($ - %%insn_00404743) > 6
        %error "LONG_00404743"
    %endif
    times 6 - ($ - %%insn_00404743) db 0
    %%insn_00404749:
    mov [0x421360],edx ; 00404749 891560134200
    %if ($ - %%insn_00404749) > 6
        %error "LONG_00404749"
    %endif
    times 6 - ($ - %%insn_00404749) db 0
    %%insn_0040474f:
    mov eax,[0x41b23c] ; 0040474F A13CB24100
    %if ($ - %%insn_0040474f) > 5
        %error "LONG_0040474F"
    %endif
    times 5 - ($ - %%insn_0040474f) db 0
    %%insn_00404754:
    add eax,[0x422384] ; 00404754 030584234200
    %if ($ - %%insn_00404754) > 6
        %error "LONG_00404754"
    %endif
    times 6 - ($ - %%insn_00404754) db 0
    %%insn_0040475a:
    cmp [0x421358],eax ; 0040475A 390558134200
    %if ($ - %%insn_0040475a) > 6
        %error "LONG_0040475A"
    %endif
    times 6 - ($ - %%insn_0040475a) db 0
    %%insn_00404760:
    jnl short 0x404774 ; 00404760 7D12
    %if ($ - %%insn_00404760) > 2
        %error "LONG_00404760"
    %endif
    times 2 - ($ - %%insn_00404760) db 0
    %%insn_00404762:
    mov ecx,[0x41b23c] ; 00404762 8B0D3CB24100
    %if ($ - %%insn_00404762) > 6
        %error "LONG_00404762"
    %endif
    times 6 - ($ - %%insn_00404762) db 0
    %%insn_00404768:
    add ecx,[0x422384] ; 00404768 030D84234200
    %if ($ - %%insn_00404768) > 6
        %error "LONG_00404768"
    %endif
    times 6 - ($ - %%insn_00404768) db 0
    %%insn_0040476e:
    mov [0x421358],ecx ; 0040476E 890D58134200
    %if ($ - %%insn_0040476e) > 6
        %error "LONG_0040476E"
    %endif
    times 6 - ($ - %%insn_0040476e) db 0
    %%insn_00404774:
    mov edx,[0x421f60] ; 00404774 8B15601F4200
    %if ($ - %%insn_00404774) > 6
        %error "LONG_00404774"
    %endif
    times 6 - ($ - %%insn_00404774) db 0
    %%insn_0040477a:
    mov [ebp-0x24],edx ; 0040477A 8955DC
    %if ($ - %%insn_0040477a) > 3
        %error "LONG_0040477A"
    %endif
    times 3 - ($ - %%insn_0040477a) db 0
    %%insn_0040477d:
    mov dword [ebp-0x20],0x0 ; 0040477D C745E000000000
    %if ($ - %%insn_0040477d) > 7
        %error "LONG_0040477D"
    %endif
    times 7 - ($ - %%insn_0040477d) db 0
    %%insn_00404784:
    jmp short 0x40478f ; 00404784 EB09
    %if ($ - %%insn_00404784) > 2
        %error "LONG_00404784"
    %endif
    times 2 - ($ - %%insn_00404784) db 0
    %%insn_00404786:
    mov eax,[ebp-0x20] ; 00404786 8B45E0
    %if ($ - %%insn_00404786) > 3
        %error "LONG_00404786"
    %endif
    times 3 - ($ - %%insn_00404786) db 0
    %%insn_00404789:
    add eax,0x1 ; 00404789 83C001
    %if ($ - %%insn_00404789) > 3
        %error "LONG_00404789"
    %endif
    times 3 - ($ - %%insn_00404789) db 0
    %%insn_0040478c:
    mov [ebp-0x20],eax ; 0040478C 8945E0
    %if ($ - %%insn_0040478c) > 3
        %error "LONG_0040478C"
    %endif
    times 3 - ($ - %%insn_0040478c) db 0
    %%insn_0040478f:
    mov ecx,[ebp-0x20] ; 0040478F 8B4DE0
    %if ($ - %%insn_0040478f) > 3
        %error "LONG_0040478F"
    %endif
    times 3 - ($ - %%insn_0040478f) db 0
    %%insn_00404792:
    cmp ecx,[0x422388] ; 00404792 3B0D88234200
    %if ($ - %%insn_00404792) > 6
        %error "LONG_00404792"
    %endif
    times 6 - ($ - %%insn_00404792) db 0
    %%insn_00404798:
    jnl short 0x4047f2 ; 00404798 7D58
    %if ($ - %%insn_00404798) > 2
        %error "LONG_00404798"
    %endif
    times 2 - ($ - %%insn_00404798) db 0
    %%insn_0040479a:
    mov edx,[ebp-0x20] ; 0040479A 8B55E0
    %if ($ - %%insn_0040479a) > 3
        %error "LONG_0040479A"
    %endif
    times 3 - ($ - %%insn_0040479a) db 0
    %%insn_0040479d:
    add edx,[0x41b238] ; 0040479D 031538B24100
    %if ($ - %%insn_0040479d) > 6
        %error "LONG_0040479D"
    %endif
    times 6 - ($ - %%insn_0040479d) db 0
    %%insn_004047a3:
    imul edx,[ebp-0x14] ; 004047A3 0FAF55EC
    %if ($ - %%insn_004047a3) > 4
        %error "LONG_004047A3"
    %endif
    times 4 - ($ - %%insn_004047a3) db 0
    %%insn_004047a7:
    mov eax,[ebp-0x4] ; 004047A7 8B45FC
    %if ($ - %%insn_004047a7) > 3
        %error "LONG_004047A7"
    %endif
    times 3 - ($ - %%insn_004047a7) db 0
    db 0x03, 0xC2 ; 004047AA 03C2 | add eax,edx | encoding preserved
    %%insn_004047ac:
    add eax,[0x41b23c] ; 004047AC 03053CB24100
    %if ($ - %%insn_004047ac) > 6
        %error "LONG_004047AC"
    %endif
    times 6 - ($ - %%insn_004047ac) db 0
    %%insn_004047b2:
    mov [ebp-0x8],eax ; 004047B2 8945F8
    %if ($ - %%insn_004047b2) > 3
        %error "LONG_004047B2"
    %endif
    times 3 - ($ - %%insn_004047b2) db 0
    %%insn_004047b5:
    mov dword [ebp-0x18],0x0 ; 004047B5 C745E800000000
    %if ($ - %%insn_004047b5) > 7
        %error "LONG_004047B5"
    %endif
    times 7 - ($ - %%insn_004047b5) db 0
    %%insn_004047bc:
    jmp short 0x4047c7 ; 004047BC EB09
    %if ($ - %%insn_004047bc) > 2
        %error "LONG_004047BC"
    %endif
    times 2 - ($ - %%insn_004047bc) db 0
    %%insn_004047be:
    mov ecx,[ebp-0x18] ; 004047BE 8B4DE8
    %if ($ - %%insn_004047be) > 3
        %error "LONG_004047BE"
    %endif
    times 3 - ($ - %%insn_004047be) db 0
    %%insn_004047c1:
    add ecx,0x1 ; 004047C1 83C101
    %if ($ - %%insn_004047c1) > 3
        %error "LONG_004047C1"
    %endif
    times 3 - ($ - %%insn_004047c1) db 0
    %%insn_004047c4:
    mov [ebp-0x18],ecx ; 004047C4 894DE8
    %if ($ - %%insn_004047c4) > 3
        %error "LONG_004047C4"
    %endif
    times 3 - ($ - %%insn_004047c4) db 0
    %%insn_004047c7:
    mov edx,[ebp-0x18] ; 004047C7 8B55E8
    %if ($ - %%insn_004047c7) > 3
        %error "LONG_004047C7"
    %endif
    times 3 - ($ - %%insn_004047c7) db 0
    %%insn_004047ca:
    cmp edx,[0x422384] ; 004047CA 3B1584234200
    %if ($ - %%insn_004047ca) > 6
        %error "LONG_004047CA"
    %endif
    times 6 - ($ - %%insn_004047ca) db 0
    %%insn_004047d0:
    jnl short 0x4047f0 ; 004047D0 7D1E
    %if ($ - %%insn_004047d0) > 2
        %error "LONG_004047D0"
    %endif
    times 2 - ($ - %%insn_004047d0) db 0
    %%insn_004047d2:
    mov eax,[ebp-0x24] ; 004047D2 8B45DC
    %if ($ - %%insn_004047d2) > 3
        %error "LONG_004047D2"
    %endif
    times 3 - ($ - %%insn_004047d2) db 0
    %%insn_004047d5:
    mov ecx,[ebp-0x8] ; 004047D5 8B4DF8
    %if ($ - %%insn_004047d5) > 3
        %error "LONG_004047D5"
    %endif
    times 3 - ($ - %%insn_004047d5) db 0
    %%insn_004047d8:
    mov dl,[ecx] ; 004047D8 8A11
    %if ($ - %%insn_004047d8) > 2
        %error "LONG_004047D8"
    %endif
    times 2 - ($ - %%insn_004047d8) db 0
    %%insn_004047da:
    mov [eax],dl ; 004047DA 8810
    %if ($ - %%insn_004047da) > 2
        %error "LONG_004047DA"
    %endif
    times 2 - ($ - %%insn_004047da) db 0
    %%insn_004047dc:
    mov eax,[ebp-0x24] ; 004047DC 8B45DC
    %if ($ - %%insn_004047dc) > 3
        %error "LONG_004047DC"
    %endif
    times 3 - ($ - %%insn_004047dc) db 0
    %%insn_004047df:
    add eax,0x1 ; 004047DF 83C001
    %if ($ - %%insn_004047df) > 3
        %error "LONG_004047DF"
    %endif
    times 3 - ($ - %%insn_004047df) db 0
    %%insn_004047e2:
    mov [ebp-0x24],eax ; 004047E2 8945DC
    %if ($ - %%insn_004047e2) > 3
        %error "LONG_004047E2"
    %endif
    times 3 - ($ - %%insn_004047e2) db 0
    %%insn_004047e5:
    mov ecx,[ebp-0x8] ; 004047E5 8B4DF8
    %if ($ - %%insn_004047e5) > 3
        %error "LONG_004047E5"
    %endif
    times 3 - ($ - %%insn_004047e5) db 0
    %%insn_004047e8:
    add ecx,0x1 ; 004047E8 83C101
    %if ($ - %%insn_004047e8) > 3
        %error "LONG_004047E8"
    %endif
    times 3 - ($ - %%insn_004047e8) db 0
    %%insn_004047eb:
    mov [ebp-0x8],ecx ; 004047EB 894DF8
    %if ($ - %%insn_004047eb) > 3
        %error "LONG_004047EB"
    %endif
    times 3 - ($ - %%insn_004047eb) db 0
    %%insn_004047ee:
    jmp short 0x4047be ; 004047EE EBCE
    %if ($ - %%insn_004047ee) > 2
        %error "LONG_004047EE"
    %endif
    times 2 - ($ - %%insn_004047ee) db 0
    %%insn_004047f0:
    jmp short 0x404786 ; 004047F0 EB94
    %if ($ - %%insn_004047f0) > 2
        %error "LONG_004047F0"
    %endif
    times 2 - ($ - %%insn_004047f0) db 0
    %%insn_004047f2:
    mov dword [0x41f450],0x1 ; 004047F2 C70550F4410001000000
    %if ($ - %%insn_004047f2) > 10
        %error "LONG_004047F2"
    %endif
    times 10 - ($ - %%insn_004047f2) db 0
    %%insn_004047fc:
    mov dword [0x41b234],0x0 ; 004047FC C70534B2410000000000
    %if ($ - %%insn_004047fc) > 10
        %error "LONG_004047FC"
    %endif
    times 10 - ($ - %%insn_004047fc) db 0
    %%insn_00404806:
    jmp short 0x404842 ; 00404806 EB3A
    %if ($ - %%insn_00404806) > 2
        %error "LONG_00404806"
    %endif
    times 2 - ($ - %%insn_00404806) db 0
    %%insn_00404808:
    mov edx,[0x41b238] ; 00404808 8B1538B24100
    %if ($ - %%insn_00404808) > 6
        %error "LONG_00404808"
    %endif
    times 6 - ($ - %%insn_00404808) db 0
    %%insn_0040480e:
    mov [0x42135c],edx ; 0040480E 89155C134200
    %if ($ - %%insn_0040480e) > 6
        %error "LONG_0040480E"
    %endif
    times 6 - ($ - %%insn_0040480e) db 0
    %%insn_00404814:
    mov eax,[0x41b238] ; 00404814 A138B24100
    %if ($ - %%insn_00404814) > 5
        %error "LONG_00404814"
    %endif
    times 5 - ($ - %%insn_00404814) db 0
    %%insn_00404819:
    add eax,[0x422388] ; 00404819 030588234200
    %if ($ - %%insn_00404819) > 6
        %error "LONG_00404819"
    %endif
    times 6 - ($ - %%insn_00404819) db 0
    %%insn_0040481f:
    mov [0x421360],eax ; 0040481F A360134200
    %if ($ - %%insn_0040481f) > 5
        %error "LONG_0040481F"
    %endif
    times 5 - ($ - %%insn_0040481f) db 0
    %%insn_00404824:
    mov ecx,[0x41b23c] ; 00404824 8B0D3CB24100
    %if ($ - %%insn_00404824) > 6
        %error "LONG_00404824"
    %endif
    times 6 - ($ - %%insn_00404824) db 0
    %%insn_0040482a:
    mov [0x421354],ecx ; 0040482A 890D54134200
    %if ($ - %%insn_0040482a) > 6
        %error "LONG_0040482A"
    %endif
    times 6 - ($ - %%insn_0040482a) db 0
    %%insn_00404830:
    mov edx,[0x41b23c] ; 00404830 8B153CB24100
    %if ($ - %%insn_00404830) > 6
        %error "LONG_00404830"
    %endif
    times 6 - ($ - %%insn_00404830) db 0
    %%insn_00404836:
    add edx,[0x422384] ; 00404836 031584234200
    %if ($ - %%insn_00404836) > 6
        %error "LONG_00404836"
    %endif
    times 6 - ($ - %%insn_00404836) db 0
    %%insn_0040483c:
    mov [0x421358],edx ; 0040483C 891558134200
    %if ($ - %%insn_0040483c) > 6
        %error "LONG_0040483C"
    %endif
    times 6 - ($ - %%insn_0040483c) db 0
    %%insn_00404842:
    mov eax,[0x422384] ; 00404842 A184234200
    %if ($ - %%insn_00404842) > 5
        %error "LONG_00404842"
    %endif
    times 5 - ($ - %%insn_00404842) db 0
    %%insn_00404847:
    imul eax,[0x422388] ; 00404847 0FAF0588234200
    %if ($ - %%insn_00404847) > 7
        %error "LONG_00404847"
    %endif
    times 7 - ($ - %%insn_00404847) db 0
    %%insn_0040484e:
    imul eax,[0x41b230] ; 0040484E 0FAF0530B24100
    %if ($ - %%insn_0040484e) > 7
        %error "LONG_0040484E"
    %endif
    times 7 - ($ - %%insn_0040484e) db 0
    %%insn_00404855:
    mov ecx,[0x422380] ; 00404855 8B0D80234200
    %if ($ - %%insn_00404855) > 6
        %error "LONG_00404855"
    %endif
    times 6 - ($ - %%insn_00404855) db 0
    %%insn_0040485b:
    lea edx,[ecx+eax+0x5] ; 0040485B 8D540105
    %if ($ - %%insn_0040485b) > 4
        %error "LONG_0040485B"
    %endif
    times 4 - ($ - %%insn_0040485b) db 0
    %%insn_0040485f:
    mov [ebp-0x1c],edx ; 0040485F 8955E4
    %if ($ - %%insn_0040485f) > 3
        %error "LONG_0040485F"
    %endif
    times 3 - ($ - %%insn_0040485f) db 0
    %%insn_00404862:
    mov eax,[0x421f60] ; 00404862 A1601F4200
    %if ($ - %%insn_00404862) > 5
        %error "LONG_00404862"
    %endif
    times 5 - ($ - %%insn_00404862) db 0
    %%insn_00404867:
    mov [ebp-0x24],eax ; 00404867 8945DC
    %if ($ - %%insn_00404867) > 3
        %error "LONG_00404867"
    %endif
    times 3 - ($ - %%insn_00404867) db 0
    %%insn_0040486a:
    mov dword [ebp-0x20],0x0 ; 0040486A C745E000000000
    %if ($ - %%insn_0040486a) > 7
        %error "LONG_0040486A"
    %endif
    times 7 - ($ - %%insn_0040486a) db 0
    %%insn_00404871:
    jmp short 0x40487c ; 00404871 EB09
    %if ($ - %%insn_00404871) > 2
        %error "LONG_00404871"
    %endif
    times 2 - ($ - %%insn_00404871) db 0
    %%insn_00404873:
    mov ecx,[ebp-0x20] ; 00404873 8B4DE0
    %if ($ - %%insn_00404873) > 3
        %error "LONG_00404873"
    %endif
    times 3 - ($ - %%insn_00404873) db 0
    %%insn_00404876:
    add ecx,0x1 ; 00404876 83C101
    %if ($ - %%insn_00404876) > 3
        %error "LONG_00404876"
    %endif
    times 3 - ($ - %%insn_00404876) db 0
    %%insn_00404879:
    mov [ebp-0x20],ecx ; 00404879 894DE0
    %if ($ - %%insn_00404879) > 3
        %error "LONG_00404879"
    %endif
    times 3 - ($ - %%insn_00404879) db 0
    %%insn_0040487c:
    mov edx,[ebp-0x20] ; 0040487C 8B55E0
    %if ($ - %%insn_0040487c) > 3
        %error "LONG_0040487C"
    %endif
    times 3 - ($ - %%insn_0040487c) db 0
    %%insn_0040487f:
    cmp edx,[0x422388] ; 0040487F 3B1588234200
    %if ($ - %%insn_0040487f) > 6
        %error "LONG_0040487F"
    %endif
    times 6 - ($ - %%insn_0040487f) db 0
    %%insn_00404885:
    jnl 0x404914 ; 00404885 0F8D89000000
    %if ($ - %%insn_00404885) > 6
        %error "LONG_00404885"
    %endif
    times 6 - ($ - %%insn_00404885) db 0
    %%insn_0040488b:
    mov eax,[ebp-0x20] ; 0040488B 8B45E0
    %if ($ - %%insn_0040488b) > 3
        %error "LONG_0040488B"
    %endif
    times 3 - ($ - %%insn_0040488b) db 0
    %%insn_0040488e:
    add eax,[0x41b238] ; 0040488E 030538B24100
    %if ($ - %%insn_0040488e) > 6
        %error "LONG_0040488E"
    %endif
    times 6 - ($ - %%insn_0040488e) db 0
    %%insn_00404894:
    imul eax,[ebp-0x14] ; 00404894 0FAF45EC
    %if ($ - %%insn_00404894) > 4
        %error "LONG_00404894"
    %endif
    times 4 - ($ - %%insn_00404894) db 0
    %%insn_00404898:
    mov ecx,[ebp-0x4] ; 00404898 8B4DFC
    %if ($ - %%insn_00404898) > 3
        %error "LONG_00404898"
    %endif
    times 3 - ($ - %%insn_00404898) db 0
    db 0x03, 0xC8 ; 0040489B 03C8 | add ecx,eax | encoding preserved
    %%insn_0040489d:
    add ecx,[ebp-0xc] ; 0040489D 034DF4
    %if ($ - %%insn_0040489d) > 3
        %error "LONG_0040489D"
    %endif
    times 3 - ($ - %%insn_0040489d) db 0
    %%insn_004048a0:
    mov [ebp-0x8],ecx ; 004048A0 894DF8
    %if ($ - %%insn_004048a0) > 3
        %error "LONG_004048A0"
    %endif
    times 3 - ($ - %%insn_004048a0) db 0
    %%insn_004048a3:
    mov dword [ebp-0x18],0x0 ; 004048A3 C745E800000000
    %if ($ - %%insn_004048a3) > 7
        %error "LONG_004048A3"
    %endif
    times 7 - ($ - %%insn_004048a3) db 0
    %%insn_004048aa:
    jmp short 0x4048b5 ; 004048AA EB09
    %if ($ - %%insn_004048aa) > 2
        %error "LONG_004048AA"
    %endif
    times 2 - ($ - %%insn_004048aa) db 0
    %%insn_004048ac:
    mov edx,[ebp-0x18] ; 004048AC 8B55E8
    %if ($ - %%insn_004048ac) > 3
        %error "LONG_004048AC"
    %endif
    times 3 - ($ - %%insn_004048ac) db 0
    %%insn_004048af:
    add edx,0x1 ; 004048AF 83C201
    %if ($ - %%insn_004048af) > 3
        %error "LONG_004048AF"
    %endif
    times 3 - ($ - %%insn_004048af) db 0
    %%insn_004048b2:
    mov [ebp-0x18],edx ; 004048B2 8955E8
    %if ($ - %%insn_004048b2) > 3
        %error "LONG_004048B2"
    %endif
    times 3 - ($ - %%insn_004048b2) db 0
    %%insn_004048b5:
    mov eax,[ebp-0x18] ; 004048B5 8B45E8
    %if ($ - %%insn_004048b5) > 3
        %error "LONG_004048B5"
    %endif
    times 3 - ($ - %%insn_004048b5) db 0
    %%insn_004048b8:
    cmp eax,[0x422384] ; 004048B8 3B0584234200
    %if ($ - %%insn_004048b8) > 6
        %error "LONG_004048B8"
    %endif
    times 6 - ($ - %%insn_004048b8) db 0
    %%insn_004048be:
    jnl short 0x40490f ; 004048BE 7D4F
    %if ($ - %%insn_004048be) > 2
        %error "LONG_004048BE"
    %endif
    times 2 - ($ - %%insn_004048be) db 0
    %%insn_004048c0:
    mov ecx,[ebp-0x1c] ; 004048C0 8B4DE4
    %if ($ - %%insn_004048c0) > 3
        %error "LONG_004048C0"
    %endif
    times 3 - ($ - %%insn_004048c0) db 0
    db 0x33, 0xD2 ; 004048C3 33D2 | xor edx,edx | encoding preserved
    %%insn_004048c5:
    mov dl,[ecx] ; 004048C5 8A11
    %if ($ - %%insn_004048c5) > 2
        %error "LONG_004048C5"
    %endif
    times 2 - ($ - %%insn_004048c5) db 0
    %%insn_004048c7:
    test edx,edx ; 004048C7 85D2
    %if ($ - %%insn_004048c7) > 2
        %error "LONG_004048C7"
    %endif
    times 2 - ($ - %%insn_004048c7) db 0
    %%insn_004048c9:
    jz short 0x4048e8 ; 004048C9 741D
    %if ($ - %%insn_004048c9) > 2
        %error "LONG_004048C9"
    %endif
    times 2 - ($ - %%insn_004048c9) db 0
    %%insn_004048cb:
    mov eax,[ebp-0x1c] ; 004048CB 8B45E4
    %if ($ - %%insn_004048cb) > 3
        %error "LONG_004048CB"
    %endif
    times 3 - ($ - %%insn_004048cb) db 0
    db 0x33, 0xC9 ; 004048CE 33C9 | xor ecx,ecx | encoding preserved
    %%insn_004048d0:
    mov cl,[eax] ; 004048D0 8A08
    %if ($ - %%insn_004048d0) > 2
        %error "LONG_004048D0"
    %endif
    times 2 - ($ - %%insn_004048d0) db 0
    %%insn_004048d2:
    mov edx,[ebp-0x8] ; 004048D2 8B55F8
    %if ($ - %%insn_004048d2) > 3
        %error "LONG_004048D2"
    %endif
    times 3 - ($ - %%insn_004048d2) db 0
    %%insn_004048d5:
    mov al,[ecx+0x421f40] ; 004048D5 8A81401F4200
    %if ($ - %%insn_004048d5) > 6
        %error "LONG_004048D5"
    %endif
    times 6 - ($ - %%insn_004048d5) db 0
    %%insn_004048db:
    mov [edx],al ; 004048DB 8802
    %if ($ - %%insn_004048db) > 2
        %error "LONG_004048DB"
    %endif
    times 2 - ($ - %%insn_004048db) db 0
    %%insn_004048dd:
    mov ecx,[ebp-0x8] ; 004048DD 8B4DF8
    %if ($ - %%insn_004048dd) > 3
        %error "LONG_004048DD"
    %endif
    times 3 - ($ - %%insn_004048dd) db 0
    %%insn_004048e0:
    add ecx,0x1 ; 004048E0 83C101
    %if ($ - %%insn_004048e0) > 3
        %error "LONG_004048E0"
    %endif
    times 3 - ($ - %%insn_004048e0) db 0
    %%insn_004048e3:
    mov [ebp-0x8],ecx ; 004048E3 894DF8
    %if ($ - %%insn_004048e3) > 3
        %error "LONG_004048E3"
    %endif
    times 3 - ($ - %%insn_004048e3) db 0
    %%insn_004048e6:
    jmp short 0x4048fb ; 004048E6 EB13
    %if ($ - %%insn_004048e6) > 2
        %error "LONG_004048E6"
    %endif
    times 2 - ($ - %%insn_004048e6) db 0
    %%insn_004048e8:
    mov edx,[ebp-0x8] ; 004048E8 8B55F8
    %if ($ - %%insn_004048e8) > 3
        %error "LONG_004048E8"
    %endif
    times 3 - ($ - %%insn_004048e8) db 0
    %%insn_004048eb:
    mov eax,[ebp-0x24] ; 004048EB 8B45DC
    %if ($ - %%insn_004048eb) > 3
        %error "LONG_004048EB"
    %endif
    times 3 - ($ - %%insn_004048eb) db 0
    %%insn_004048ee:
    mov cl,[eax] ; 004048EE 8A08
    %if ($ - %%insn_004048ee) > 2
        %error "LONG_004048EE"
    %endif
    times 2 - ($ - %%insn_004048ee) db 0
    %%insn_004048f0:
    mov [edx],cl ; 004048F0 880A
    %if ($ - %%insn_004048f0) > 2
        %error "LONG_004048F0"
    %endif
    times 2 - ($ - %%insn_004048f0) db 0
    %%insn_004048f2:
    mov edx,[ebp-0x8] ; 004048F2 8B55F8
    %if ($ - %%insn_004048f2) > 3
        %error "LONG_004048F2"
    %endif
    times 3 - ($ - %%insn_004048f2) db 0
    %%insn_004048f5:
    add edx,0x1 ; 004048F5 83C201
    %if ($ - %%insn_004048f5) > 3
        %error "LONG_004048F5"
    %endif
    times 3 - ($ - %%insn_004048f5) db 0
    %%insn_004048f8:
    mov [ebp-0x8],edx ; 004048F8 8955F8
    %if ($ - %%insn_004048f8) > 3
        %error "LONG_004048F8"
    %endif
    times 3 - ($ - %%insn_004048f8) db 0
    %%insn_004048fb:
    mov eax,[ebp-0x1c] ; 004048FB 8B45E4
    %if ($ - %%insn_004048fb) > 3
        %error "LONG_004048FB"
    %endif
    times 3 - ($ - %%insn_004048fb) db 0
    %%insn_004048fe:
    add eax,0x1 ; 004048FE 83C001
    %if ($ - %%insn_004048fe) > 3
        %error "LONG_004048FE"
    %endif
    times 3 - ($ - %%insn_004048fe) db 0
    %%insn_00404901:
    mov [ebp-0x1c],eax ; 00404901 8945E4
    %if ($ - %%insn_00404901) > 3
        %error "LONG_00404901"
    %endif
    times 3 - ($ - %%insn_00404901) db 0
    %%insn_00404904:
    mov ecx,[ebp-0x24] ; 00404904 8B4DDC
    %if ($ - %%insn_00404904) > 3
        %error "LONG_00404904"
    %endif
    times 3 - ($ - %%insn_00404904) db 0
    %%insn_00404907:
    add ecx,0x1 ; 00404907 83C101
    %if ($ - %%insn_00404907) > 3
        %error "LONG_00404907"
    %endif
    times 3 - ($ - %%insn_00404907) db 0
    %%insn_0040490a:
    mov [ebp-0x24],ecx ; 0040490A 894DDC
    %if ($ - %%insn_0040490a) > 3
        %error "LONG_0040490A"
    %endif
    times 3 - ($ - %%insn_0040490a) db 0
    %%insn_0040490d:
    jmp short 0x4048ac ; 0040490D EB9D
    %if ($ - %%insn_0040490d) > 2
        %error "LONG_0040490D"
    %endif
    times 2 - ($ - %%insn_0040490d) db 0
    %%insn_0040490f:
    jmp 0x404873 ; 0040490F E95FFFFFFF
    %if ($ - %%insn_0040490f) > 5
        %error "LONG_0040490F"
    %endif
    times 5 - ($ - %%insn_0040490f) db 0
    %%insn_00404914:
    call dword near [0x42458c] ; 00404914 FF158C454200
    %if ($ - %%insn_00404914) > 6
        %error "LONG_00404914"
    %endif
    times 6 - ($ - %%insn_00404914) db 0
    %%insn_0040491a:
    sub eax,[0x41f348] ; 0040491A 2B0548F34100
    %if ($ - %%insn_0040491a) > 6
        %error "LONG_0040491A"
    %endif
    times 6 - ($ - %%insn_0040491a) db 0
    %%insn_00404920:
    cmp eax,0x4b ; 00404920 83F84B
    %if ($ - %%insn_00404920) > 3
        %error "LONG_00404920"
    %endif
    times 3 - ($ - %%insn_00404920) db 0
    %%insn_00404923:
    jna short 0x40496c ; 00404923 7647
    %if ($ - %%insn_00404923) > 2
        %error "LONG_00404923"
    %endif
    times 2 - ($ - %%insn_00404923) db 0
    %%insn_00404925:
    mov edx,[0x422380] ; 00404925 8B1580234200
    %if ($ - %%insn_00404925) > 6
        %error "LONG_00404925"
    %endif
    times 6 - ($ - %%insn_00404925) db 0
    db 0x33, 0xC0 ; 0040492B 33C0 | xor eax,eax | encoding preserved
    %%insn_0040492d:
    mov al,[edx+0x2] ; 0040492D 8A4202
    %if ($ - %%insn_0040492d) > 3
        %error "LONG_0040492D"
    %endif
    times 3 - ($ - %%insn_0040492d) db 0
    %%insn_00404930:
    cmp eax,0x1 ; 00404930 83F801
    %if ($ - %%insn_00404930) > 3
        %error "LONG_00404930"
    %endif
    times 3 - ($ - %%insn_00404930) db 0
    %%insn_00404933:
    jng short 0x40496c ; 00404933 7E37
    %if ($ - %%insn_00404933) > 2
        %error "LONG_00404933"
    %endif
    times 2 - ($ - %%insn_00404933) db 0
    %%insn_00404935:
    call dword near [0x42458c] ; 00404935 FF158C454200
    %if ($ - %%insn_00404935) > 6
        %error "LONG_00404935"
    %endif
    times 6 - ($ - %%insn_00404935) db 0
    %%insn_0040493b:
    mov [0x41f348],eax ; 0040493B A348F34100
    %if ($ - %%insn_0040493b) > 5
        %error "LONG_0040493B"
    %endif
    times 5 - ($ - %%insn_0040493b) db 0
    %%insn_00404940:
    mov ecx,[0x41b230] ; 00404940 8B0D30B24100
    %if ($ - %%insn_00404940) > 6
        %error "LONG_00404940"
    %endif
    times 6 - ($ - %%insn_00404940) db 0
    %%insn_00404946:
    add ecx,0x1 ; 00404946 83C101
    %if ($ - %%insn_00404946) > 3
        %error "LONG_00404946"
    %endif
    times 3 - ($ - %%insn_00404946) db 0
    %%insn_00404949:
    mov [0x41b230],ecx ; 00404949 890D30B24100
    %if ($ - %%insn_00404949) > 6
        %error "LONG_00404949"
    %endif
    times 6 - ($ - %%insn_00404949) db 0
    %%insn_0040494f:
    mov edx,[0x422380] ; 0040494F 8B1580234200
    %if ($ - %%insn_0040494f) > 6
        %error "LONG_0040494F"
    %endif
    times 6 - ($ - %%insn_0040494f) db 0
    db 0x33, 0xC0 ; 00404955 33C0 | xor eax,eax | encoding preserved
    %%insn_00404957:
    mov al,[edx+0x2] ; 00404957 8A4202
    %if ($ - %%insn_00404957) > 3
        %error "LONG_00404957"
    %endif
    times 3 - ($ - %%insn_00404957) db 0
    %%insn_0040495a:
    cmp [0x41b230],eax ; 0040495A 390530B24100
    %if ($ - %%insn_0040495a) > 6
        %error "LONG_0040495A"
    %endif
    times 6 - ($ - %%insn_0040495a) db 0
    %%insn_00404960:
    jl short 0x40496c ; 00404960 7C0A
    %if ($ - %%insn_00404960) > 2
        %error "LONG_00404960"
    %endif
    times 2 - ($ - %%insn_00404960) db 0
    %%insn_00404962:
    mov dword [0x41b230],0x0 ; 00404962 C70530B2410000000000
    %if ($ - %%insn_00404962) > 10
        %error "LONG_00404962"
    %endif
    times 10 - ($ - %%insn_00404962) db 0
    %%insn_0040496c:
    mov dword [0x41f590],0x1 ; 0040496C C70590F5410001000000
    %if ($ - %%insn_0040496c) > 10
        %error "LONG_0040496C"
    %endif
    times 10 - ($ - %%insn_0040496c) db 0
    %%insn_00404976:
    mov ax,0x1 ; 00404976 66B80100
    %if ($ - %%insn_00404976) > 4
        %error "LONG_00404976"
    %endif
    times 4 - ($ - %%insn_00404976) db 0
    %%insn_0040497a:
    jmp short 0x40497f ; 0040497A EB03
    %if ($ - %%insn_0040497a) > 2
        %error "LONG_0040497A"
    %endif
    times 2 - ($ - %%insn_0040497a) db 0
    db 0x66, 0x33, 0xC0 ; 0040497C 6633C0 | xor ax,ax | encoding preserved
    db 0x8B, 0xE5 ; 0040497F 8BE5 | mov esp,ebp | encoding preserved
    %%insn_00404981:
    pop ebp ; 00404981 5D
    %if ($ - %%insn_00404981) > 1
        %error "LONG_00404981"
    %endif
    times 1 - ($ - %%insn_00404981) db 0
    %%insn_00404982:
    ret ; 00404982 C3
    %if ($ - %%insn_00404982) > 1
        %error "LONG_00404982"
    %endif
    times 1 - ($ - %%insn_00404982) db 0
    %if ($ - %%fragment_start) != 1306
        %error "function fragment size drift: 00404469"
    %endif
%endmacro
