; PE virtual entry 00411390
; Ghidra working symbol: FUN_00411390
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00411390_part_00 0
    %%fragment_start:
func_00411390:
    %%insn_00411390:
    sub esp,0x48 ; 00411390 83EC48
    %if ($ - %%insn_00411390) > 3
        %error "LONG_00411390"
    %endif
    times 3 - ($ - %%insn_00411390) db 0
    %%insn_00411393:
    push ebx ; 00411393 53
    %if ($ - %%insn_00411393) > 1
        %error "LONG_00411393"
    %endif
    times 1 - ($ - %%insn_00411393) db 0
    %%insn_00411394:
    push ebp ; 00411394 55
    %if ($ - %%insn_00411394) > 1
        %error "LONG_00411394"
    %endif
    times 1 - ($ - %%insn_00411394) db 0
    %%insn_00411395:
    push esi ; 00411395 56
    %if ($ - %%insn_00411395) > 1
        %error "LONG_00411395"
    %endif
    times 1 - ($ - %%insn_00411395) db 0
    %%insn_00411396:
    push edi ; 00411396 57
    %if ($ - %%insn_00411396) > 1
        %error "LONG_00411396"
    %endif
    times 1 - ($ - %%insn_00411396) db 0
    %%insn_00411397:
    push dword 0x480 ; 00411397 6880040000
    %if ($ - %%insn_00411397) > 5
        %error "LONG_00411397"
    %endif
    times 5 - ($ - %%insn_00411397) db 0
    %%insn_0041139c:
    call 0x40cdc0 ; 0041139C E81FBAFFFF
    %if ($ - %%insn_0041139c) > 5
        %error "LONG_0041139C"
    %endif
    times 5 - ($ - %%insn_0041139c) db 0
    db 0x8B, 0xF0 ; 004113A1 8BF0 | mov esi,eax | encoding preserved
    db 0x33, 0xFF ; 004113A3 33FF | xor edi,edi | encoding preserved
    %%insn_004113a5:
    add esp,0x4 ; 004113A5 83C404
    %if ($ - %%insn_004113a5) > 3
        %error "LONG_004113A5"
    %endif
    times 3 - ($ - %%insn_004113a5) db 0
    db 0x3B, 0xF7 ; 004113A8 3BF7 | cmp esi,edi | encoding preserved
    %%insn_004113aa:
    jnz short 0x4113b6 ; 004113AA 750A
    %if ($ - %%insn_004113aa) > 2
        %error "LONG_004113AA"
    %endif
    times 2 - ($ - %%insn_004113aa) db 0
    %%insn_004113ac:
    push dword 0x1b ; 004113AC 6A1B
    %if ($ - %%insn_004113ac) > 2
        %error "LONG_004113AC"
    %endif
    times 2 - ($ - %%insn_004113ac) db 0
    %%insn_004113ae:
    call 0x40dda0 ; 004113AE E8EDC9FFFF
    %if ($ - %%insn_004113ae) > 5
        %error "LONG_004113AE"
    %endif
    times 5 - ($ - %%insn_004113ae) db 0
    %%insn_004113b3:
    add esp,0x4 ; 004113B3 83C404
    %if ($ - %%insn_004113b3) > 3
        %error "LONG_004113B3"
    %endif
    times 3 - ($ - %%insn_004113b3) db 0
    %%insn_004113b6:
    lea eax,[esi+0x480] ; 004113B6 8D8680040000
    %if ($ - %%insn_004113b6) > 6
        %error "LONG_004113B6"
    %endif
    times 6 - ($ - %%insn_004113b6) db 0
    %%insn_004113bc:
    mov [0x423480],esi ; 004113BC 893580344200
    %if ($ - %%insn_004113bc) > 6
        %error "LONG_004113BC"
    %endif
    times 6 - ($ - %%insn_004113bc) db 0
    db 0x3B, 0xF0 ; 004113C2 3BF0 | cmp esi,eax | encoding preserved
    %%insn_004113c4:
    mov dword [0x423580],0x20 ; 004113C4 C7058035420020000000
    %if ($ - %%insn_004113c4) > 10
        %error "LONG_004113C4"
    %endif
    times 10 - ($ - %%insn_004113c4) db 0
    %%insn_004113ce:
    mov bl,0xa ; 004113CE B30A
    %if ($ - %%insn_004113ce) > 2
        %error "LONG_004113CE"
    %endif
    times 2 - ($ - %%insn_004113ce) db 0
    %%insn_004113d0:
    jnc short 0x4113f5 ; 004113D0 7323
    %if ($ - %%insn_004113d0) > 2
        %error "LONG_004113D0"
    %endif
    times 2 - ($ - %%insn_004113d0) db 0
    %%insn_004113d2:
    mov byte [esi+0x4],0x0 ; 004113D2 C6460400
    %if ($ - %%insn_004113d2) > 4
        %error "LONG_004113D2"
    %endif
    times 4 - ($ - %%insn_004113d2) db 0
    %%insn_004113d6:
    mov dword [esi],0xffffffff ; 004113D6 C706FFFFFFFF
    %if ($ - %%insn_004113d6) > 6
        %error "LONG_004113D6"
    %endif
    times 6 - ($ - %%insn_004113d6) db 0
    %%insn_004113dc:
    mov [esi+0x5],bl ; 004113DC 885E05
    %if ($ - %%insn_004113dc) > 3
        %error "LONG_004113DC"
    %endif
    times 3 - ($ - %%insn_004113dc) db 0
    %%insn_004113df:
    mov [esi+0x8],edi ; 004113DF 897E08
    %if ($ - %%insn_004113df) > 3
        %error "LONG_004113DF"
    %endif
    times 3 - ($ - %%insn_004113df) db 0
    %%insn_004113e2:
    mov ecx,[0x423480] ; 004113E2 8B0D80344200
    %if ($ - %%insn_004113e2) > 6
        %error "LONG_004113E2"
    %endif
    times 6 - ($ - %%insn_004113e2) db 0
    %%insn_004113e8:
    add esi,0x24 ; 004113E8 83C624
    %if ($ - %%insn_004113e8) > 3
        %error "LONG_004113E8"
    %endif
    times 3 - ($ - %%insn_004113e8) db 0
    %%insn_004113eb:
    add ecx,0x480 ; 004113EB 81C180040000
    %if ($ - %%insn_004113eb) > 6
        %error "LONG_004113EB"
    %endif
    times 6 - ($ - %%insn_004113eb) db 0
    db 0x3B, 0xF1 ; 004113F1 3BF1 | cmp esi,ecx | encoding preserved
    %%insn_004113f3:
    jc short 0x4113d2 ; 004113F3 72DD
    %if ($ - %%insn_004113f3) > 2
        %error "LONG_004113F3"
    %endif
    times 2 - ($ - %%insn_004113f3) db 0
    %%insn_004113f5:
    lea edx,[esp+0x14] ; 004113F5 8D542414
    %if ($ - %%insn_004113f5) > 4
        %error "LONG_004113F5"
    %endif
    times 4 - ($ - %%insn_004113f5) db 0
    %%insn_004113f9:
    push edx ; 004113F9 52
    %if ($ - %%insn_004113f9) > 1
        %error "LONG_004113F9"
    %endif
    times 1 - ($ - %%insn_004113f9) db 0
    %%insn_004113fa:
    call dword near [0x424418] ; 004113FA FF1518444200
    %if ($ - %%insn_004113fa) > 6
        %error "LONG_004113FA"
    %endif
    times 6 - ($ - %%insn_004113fa) db 0
    %%insn_00411400:
    cmp [esp+0x46],di ; 00411400 66397C2446
    %if ($ - %%insn_00411400) > 5
        %error "LONG_00411400"
    %endif
    times 5 - ($ - %%insn_00411400) db 0
    %%insn_00411405:
    jz 0x411508 ; 00411405 0F84FD000000
    %if ($ - %%insn_00411405) > 6
        %error "LONG_00411405"
    %endif
    times 6 - ($ - %%insn_00411405) db 0
    %%insn_0041140b:
    mov eax,[esp+0x48] ; 0041140B 8B442448
    %if ($ - %%insn_0041140b) > 4
        %error "LONG_0041140B"
    %endif
    times 4 - ($ - %%insn_0041140b) db 0
    db 0x3B, 0xC7 ; 0041140F 3BC7 | cmp eax,edi | encoding preserved
    %%insn_00411411:
    jz 0x411508 ; 00411411 0F84F1000000
    %if ($ - %%insn_00411411) > 6
        %error "LONG_00411411"
    %endif
    times 6 - ($ - %%insn_00411411) db 0
    %%insn_00411417:
    mov ecx,[eax] ; 00411417 8B08
    %if ($ - %%insn_00411417) > 2
        %error "LONG_00411417"
    %endif
    times 2 - ($ - %%insn_00411417) db 0
    %%insn_00411419:
    lea edi,[eax+0x4] ; 00411419 8D7804
    %if ($ - %%insn_00411419) > 3
        %error "LONG_00411419"
    %endif
    times 3 - ($ - %%insn_00411419) db 0
    %%insn_0041141c:
    cmp ecx,0x800 ; 0041141C 81F900080000
    %if ($ - %%insn_0041141c) > 6
        %error "LONG_0041141C"
    %endif
    times 6 - ($ - %%insn_0041141c) db 0
    %%insn_00411422:
    mov [esp+0x10],ecx ; 00411422 894C2410
    %if ($ - %%insn_00411422) > 4
        %error "LONG_00411422"
    %endif
    times 4 - ($ - %%insn_00411422) db 0
    %%insn_00411426:
    lea ebp,[edi+ecx] ; 00411426 8D2C0F
    %if ($ - %%insn_00411426) > 3
        %error "LONG_00411426"
    %endif
    times 3 - ($ - %%insn_00411426) db 0
    %%insn_00411429:
    jl short 0x411433 ; 00411429 7C08
    %if ($ - %%insn_00411429) > 2
        %error "LONG_00411429"
    %endif
    times 2 - ($ - %%insn_00411429) db 0
    %%insn_0041142b:
    mov dword [esp+0x10],0x800 ; 0041142B C744241000080000
    %if ($ - %%insn_0041142b) > 8
        %error "LONG_0041142B"
    %endif
    times 8 - ($ - %%insn_0041142b) db 0
    %%insn_00411433:
    mov eax,[esp+0x10] ; 00411433 8B442410
    %if ($ - %%insn_00411433) > 4
        %error "LONG_00411433"
    %endif
    times 4 - ($ - %%insn_00411433) db 0
    %%insn_00411437:
    mov ecx,[0x423580] ; 00411437 8B0D80354200
    %if ($ - %%insn_00411437) > 6
        %error "LONG_00411437"
    %endif
    times 6 - ($ - %%insn_00411437) db 0
    db 0x3B, 0xC8 ; 0041143D 3BC8 | cmp ecx,eax | encoding preserved
    %%insn_0041143f:
    jnl short 0x4114b1 ; 0041143F 7D70
    %if ($ - %%insn_0041143f) > 2
        %error "LONG_0041143F"
    %endif
    times 2 - ($ - %%insn_0041143f) db 0
    %%insn_00411441:
    mov esi,0x423484 ; 00411441 BE84344200
    %if ($ - %%insn_00411441) > 5
        %error "LONG_00411441"
    %endif
    times 5 - ($ - %%insn_00411441) db 0
    %%insn_00411446:
    push dword 0x480 ; 00411446 6880040000
    %if ($ - %%insn_00411446) > 5
        %error "LONG_00411446"
    %endif
    times 5 - ($ - %%insn_00411446) db 0
    %%insn_0041144b:
    call 0x40cdc0 ; 0041144B E870B9FFFF
    %if ($ - %%insn_0041144b) > 5
        %error "LONG_0041144B"
    %endif
    times 5 - ($ - %%insn_0041144b) db 0
    db 0x33, 0xC9 ; 00411450 33C9 | xor ecx,ecx | encoding preserved
    %%insn_00411452:
    add esp,0x4 ; 00411452 83C404
    %if ($ - %%insn_00411452) > 3
        %error "LONG_00411452"
    %endif
    times 3 - ($ - %%insn_00411452) db 0
    db 0x3B, 0xC1 ; 00411455 3BC1 | cmp eax,ecx | encoding preserved
    %%insn_00411457:
    jz short 0x4114a5 ; 00411457 744C
    %if ($ - %%insn_00411457) > 2
        %error "LONG_00411457"
    %endif
    times 2 - ($ - %%insn_00411457) db 0
    %%insn_00411459:
    mov edx,[0x423580] ; 00411459 8B1580354200
    %if ($ - %%insn_00411459) > 6
        %error "LONG_00411459"
    %endif
    times 6 - ($ - %%insn_00411459) db 0
    %%insn_0041145f:
    mov [esi],eax ; 0041145F 8906
    %if ($ - %%insn_0041145f) > 2
        %error "LONG_0041145F"
    %endif
    times 2 - ($ - %%insn_0041145f) db 0
    %%insn_00411461:
    add edx,0x20 ; 00411461 83C220
    %if ($ - %%insn_00411461) > 3
        %error "LONG_00411461"
    %endif
    times 3 - ($ - %%insn_00411461) db 0
    %%insn_00411464:
    mov [0x423580],edx ; 00411464 891580354200
    %if ($ - %%insn_00411464) > 6
        %error "LONG_00411464"
    %endif
    times 6 - ($ - %%insn_00411464) db 0
    %%insn_0041146a:
    lea edx,[eax+0x480] ; 0041146A 8D9080040000
    %if ($ - %%insn_0041146a) > 6
        %error "LONG_0041146A"
    %endif
    times 6 - ($ - %%insn_0041146a) db 0
    db 0x3B, 0xC2 ; 00411470 3BC2 | cmp eax,edx | encoding preserved
    %%insn_00411472:
    jnc short 0x411493 ; 00411472 731F
    %if ($ - %%insn_00411472) > 2
        %error "LONG_00411472"
    %endif
    times 2 - ($ - %%insn_00411472) db 0
    %%insn_00411474:
    mov byte [eax+0x4],0x0 ; 00411474 C6400400
    %if ($ - %%insn_00411474) > 4
        %error "LONG_00411474"
    %endif
    times 4 - ($ - %%insn_00411474) db 0
    %%insn_00411478:
    mov dword [eax],0xffffffff ; 00411478 C700FFFFFFFF
    %if ($ - %%insn_00411478) > 6
        %error "LONG_00411478"
    %endif
    times 6 - ($ - %%insn_00411478) db 0
    %%insn_0041147e:
    mov [eax+0x5],bl ; 0041147E 885805
    %if ($ - %%insn_0041147e) > 3
        %error "LONG_0041147E"
    %endif
    times 3 - ($ - %%insn_0041147e) db 0
    %%insn_00411481:
    mov [eax+0x8],ecx ; 00411481 894808
    %if ($ - %%insn_00411481) > 3
        %error "LONG_00411481"
    %endif
    times 3 - ($ - %%insn_00411481) db 0
    %%insn_00411484:
    mov edx,[esi] ; 00411484 8B16
    %if ($ - %%insn_00411484) > 2
        %error "LONG_00411484"
    %endif
    times 2 - ($ - %%insn_00411484) db 0
    %%insn_00411486:
    add eax,0x24 ; 00411486 83C024
    %if ($ - %%insn_00411486) > 3
        %error "LONG_00411486"
    %endif
    times 3 - ($ - %%insn_00411486) db 0
    %%insn_00411489:
    add edx,0x480 ; 00411489 81C280040000
    %if ($ - %%insn_00411489) > 6
        %error "LONG_00411489"
    %endif
    times 6 - ($ - %%insn_00411489) db 0
    db 0x3B, 0xC2 ; 0041148F 3BC2 | cmp eax,edx | encoding preserved
    %%insn_00411491:
    jc short 0x411474 ; 00411491 72E1
    %if ($ - %%insn_00411491) > 2
        %error "LONG_00411491"
    %endif
    times 2 - ($ - %%insn_00411491) db 0
    %%insn_00411493:
    mov eax,[0x423580] ; 00411493 A180354200
    %if ($ - %%insn_00411493) > 5
        %error "LONG_00411493"
    %endif
    times 5 - ($ - %%insn_00411493) db 0
    %%insn_00411498:
    mov edx,[esp+0x10] ; 00411498 8B542410
    %if ($ - %%insn_00411498) > 4
        %error "LONG_00411498"
    %endif
    times 4 - ($ - %%insn_00411498) db 0
    %%insn_0041149c:
    add esi,0x4 ; 0041149C 83C604
    %if ($ - %%insn_0041149c) > 3
        %error "LONG_0041149C"
    %endif
    times 3 - ($ - %%insn_0041149c) db 0
    db 0x3B, 0xC2 ; 0041149F 3BC2 | cmp eax,edx | encoding preserved
    %%insn_004114a1:
    jl short 0x411446 ; 004114A1 7CA3
    %if ($ - %%insn_004114a1) > 2
        %error "LONG_004114A1"
    %endif
    times 2 - ($ - %%insn_004114a1) db 0
    %%insn_004114a3:
    jmp short 0x4114b3 ; 004114A3 EB0E
    %if ($ - %%insn_004114a3) > 2
        %error "LONG_004114A3"
    %endif
    times 2 - ($ - %%insn_004114a3) db 0
    %%insn_004114a5:
    mov edx,[0x423580] ; 004114A5 8B1580354200
    %if ($ - %%insn_004114a5) > 6
        %error "LONG_004114A5"
    %endif
    times 6 - ($ - %%insn_004114a5) db 0
    %%insn_004114ab:
    mov [esp+0x10],edx ; 004114AB 89542410
    %if ($ - %%insn_004114ab) > 4
        %error "LONG_004114AB"
    %endif
    times 4 - ($ - %%insn_004114ab) db 0
    %%insn_004114af:
    jmp short 0x4114b3 ; 004114AF EB02
    %if ($ - %%insn_004114af) > 2
        %error "LONG_004114AF"
    %endif
    times 2 - ($ - %%insn_004114af) db 0
    db 0x33, 0xC9 ; 004114B1 33C9 | xor ecx,ecx | encoding preserved
    %%insn_004114b3:
    mov eax,[esp+0x10] ; 004114B3 8B442410
    %if ($ - %%insn_004114b3) > 4
        %error "LONG_004114B3"
    %endif
    times 4 - ($ - %%insn_004114b3) db 0
    db 0x33, 0xF6 ; 004114B7 33F6 | xor esi,esi | encoding preserved
    db 0x3B, 0xC1 ; 004114B9 3BC1 | cmp eax,ecx | encoding preserved
    %%insn_004114bb:
    jng short 0x411508 ; 004114BB 7E4B
    %if ($ - %%insn_004114bb) > 2
        %error "LONG_004114BB"
    %endif
    times 2 - ($ - %%insn_004114bb) db 0
    %%insn_004114bd:
    mov ecx,[ebp+0x0] ; 004114BD 8B4D00
    %if ($ - %%insn_004114bd) > 3
        %error "LONG_004114BD"
    %endif
    times 3 - ($ - %%insn_004114bd) db 0
    %%insn_004114c0:
    cmp ecx,0xffffffffffffffff ; 004114C0 83F9FF
    %if ($ - %%insn_004114c0) > 3
        %error "LONG_004114C0"
    %endif
    times 3 - ($ - %%insn_004114c0) db 0
    %%insn_004114c3:
    jz short 0x4114fb ; 004114C3 7436
    %if ($ - %%insn_004114c3) > 2
        %error "LONG_004114C3"
    %endif
    times 2 - ($ - %%insn_004114c3) db 0
    %%insn_004114c5:
    mov al,[edi] ; 004114C5 8A07
    %if ($ - %%insn_004114c5) > 2
        %error "LONG_004114C5"
    %endif
    times 2 - ($ - %%insn_004114c5) db 0
    %%insn_004114c7:
    test al,0x1 ; 004114C7 A801
    %if ($ - %%insn_004114c7) > 2
        %error "LONG_004114C7"
    %endif
    times 2 - ($ - %%insn_004114c7) db 0
    %%insn_004114c9:
    jz short 0x4114fb ; 004114C9 7430
    %if ($ - %%insn_004114c9) > 2
        %error "LONG_004114C9"
    %endif
    times 2 - ($ - %%insn_004114c9) db 0
    %%insn_004114cb:
    test al,0x8 ; 004114CB A808
    %if ($ - %%insn_004114cb) > 2
        %error "LONG_004114CB"
    %endif
    times 2 - ($ - %%insn_004114cb) db 0
    %%insn_004114cd:
    jnz short 0x4114da ; 004114CD 750B
    %if ($ - %%insn_004114cd) > 2
        %error "LONG_004114CD"
    %endif
    times 2 - ($ - %%insn_004114cd) db 0
    %%insn_004114cf:
    push ecx ; 004114CF 51
    %if ($ - %%insn_004114cf) > 1
        %error "LONG_004114CF"
    %endif
    times 1 - ($ - %%insn_004114cf) db 0
    %%insn_004114d0:
    call dword near [0x42444c] ; 004114D0 FF154C444200
    %if ($ - %%insn_004114d0) > 6
        %error "LONG_004114D0"
    %endif
    times 6 - ($ - %%insn_004114d0) db 0
    %%insn_004114d6:
    test eax,eax ; 004114D6 85C0
    %if ($ - %%insn_004114d6) > 2
        %error "LONG_004114D6"
    %endif
    times 2 - ($ - %%insn_004114d6) db 0
    %%insn_004114d8:
    jz short 0x4114fb ; 004114D8 7421
    %if ($ - %%insn_004114d8) > 2
        %error "LONG_004114D8"
    %endif
    times 2 - ($ - %%insn_004114d8) db 0
    db 0x8B, 0xCE ; 004114DA 8BCE | mov ecx,esi | encoding preserved
    db 0x8B, 0xC6 ; 004114DC 8BC6 | mov eax,esi | encoding preserved
    %%insn_004114de:
    sar ecx,byte 0x5 ; 004114DE C1F905
    %if ($ - %%insn_004114de) > 3
        %error "LONG_004114DE"
    %endif
    times 3 - ($ - %%insn_004114de) db 0
    %%insn_004114e1:
    and eax,0x1f ; 004114E1 83E01F
    %if ($ - %%insn_004114e1) > 3
        %error "LONG_004114E1"
    %endif
    times 3 - ($ - %%insn_004114e1) db 0
    %%insn_004114e4:
    lea edx,[eax+eax*8] ; 004114E4 8D14C0
    %if ($ - %%insn_004114e4) > 3
        %error "LONG_004114E4"
    %endif
    times 3 - ($ - %%insn_004114e4) db 0
    %%insn_004114e7:
    mov eax,[ecx*4+0x423480] ; 004114E7 8B048D80344200
    %if ($ - %%insn_004114e7) > 7
        %error "LONG_004114E7"
    %endif
    times 7 - ($ - %%insn_004114e7) db 0
    %%insn_004114ee:
    mov ecx,[ebp+0x0] ; 004114EE 8B4D00
    %if ($ - %%insn_004114ee) > 3
        %error "LONG_004114EE"
    %endif
    times 3 - ($ - %%insn_004114ee) db 0
    %%insn_004114f1:
    lea eax,[eax+edx*4] ; 004114F1 8D0490
    %if ($ - %%insn_004114f1) > 3
        %error "LONG_004114F1"
    %endif
    times 3 - ($ - %%insn_004114f1) db 0
    %%insn_004114f4:
    mov [eax],ecx ; 004114F4 8908
    %if ($ - %%insn_004114f4) > 2
        %error "LONG_004114F4"
    %endif
    times 2 - ($ - %%insn_004114f4) db 0
    %%insn_004114f6:
    mov dl,[edi] ; 004114F6 8A17
    %if ($ - %%insn_004114f6) > 2
        %error "LONG_004114F6"
    %endif
    times 2 - ($ - %%insn_004114f6) db 0
    %%insn_004114f8:
    mov [eax+0x4],dl ; 004114F8 885004
    %if ($ - %%insn_004114f8) > 3
        %error "LONG_004114F8"
    %endif
    times 3 - ($ - %%insn_004114f8) db 0
    %%insn_004114fb:
    mov eax,[esp+0x10] ; 004114FB 8B442410
    %if ($ - %%insn_004114fb) > 4
        %error "LONG_004114FB"
    %endif
    times 4 - ($ - %%insn_004114fb) db 0
    %%insn_004114ff:
    inc esi ; 004114FF 46
    %if ($ - %%insn_004114ff) > 1
        %error "LONG_004114FF"
    %endif
    times 1 - ($ - %%insn_004114ff) db 0
    %%insn_00411500:
    inc edi ; 00411500 47
    %if ($ - %%insn_00411500) > 1
        %error "LONG_00411500"
    %endif
    times 1 - ($ - %%insn_00411500) db 0
    %%insn_00411501:
    add ebp,0x4 ; 00411501 83C504
    %if ($ - %%insn_00411501) > 3
        %error "LONG_00411501"
    %endif
    times 3 - ($ - %%insn_00411501) db 0
    db 0x3B, 0xF0 ; 00411504 3BF0 | cmp esi,eax | encoding preserved
    %%insn_00411506:
    jl short 0x4114bd ; 00411506 7CB5
    %if ($ - %%insn_00411506) > 2
        %error "LONG_00411506"
    %endif
    times 2 - ($ - %%insn_00411506) db 0
    %%insn_00411508:
    mov ebx,[0x424458] ; 00411508 8B1D58444200
    %if ($ - %%insn_00411508) > 6
        %error "LONG_00411508"
    %endif
    times 6 - ($ - %%insn_00411508) db 0
    db 0x33, 0xED ; 0041150E 33ED | xor ebp,ebp | encoding preserved
    %%insn_00411510:
    mov ecx,[0x423480] ; 00411510 8B0D80344200
    %if ($ - %%insn_00411510) > 6
        %error "LONG_00411510"
    %endif
    times 6 - ($ - %%insn_00411510) db 0
    %%insn_00411516:
    lea eax,[ebp+ebp*8+0x0] ; 00411516 8D44ED00
    %if ($ - %%insn_00411516) > 4
        %error "LONG_00411516"
    %endif
    times 4 - ($ - %%insn_00411516) db 0
    %%insn_0041151a:
    lea esi,[ecx+eax*4] ; 0041151A 8D3481
    %if ($ - %%insn_0041151a) > 3
        %error "LONG_0041151A"
    %endif
    times 3 - ($ - %%insn_0041151a) db 0
    %%insn_0041151d:
    mov eax,[ecx+eax*4] ; 0041151D 8B0481
    %if ($ - %%insn_0041151d) > 3
        %error "LONG_0041151D"
    %endif
    times 3 - ($ - %%insn_0041151d) db 0
    %%insn_00411520:
    cmp eax,0xffffffffffffffff ; 00411520 83F8FF
    %if ($ - %%insn_00411520) > 3
        %error "LONG_00411520"
    %endif
    times 3 - ($ - %%insn_00411520) db 0
    %%insn_00411523:
    jnz short 0x411579 ; 00411523 7554
    %if ($ - %%insn_00411523) > 2
        %error "LONG_00411523"
    %endif
    times 2 - ($ - %%insn_00411523) db 0
    %%insn_00411525:
    test ebp,ebp ; 00411525 85ED
    %if ($ - %%insn_00411525) > 2
        %error "LONG_00411525"
    %endif
    times 2 - ($ - %%insn_00411525) db 0
    %%insn_00411527:
    mov byte [esi+0x4],0x81 ; 00411527 C6460481
    %if ($ - %%insn_00411527) > 4
        %error "LONG_00411527"
    %endif
    times 4 - ($ - %%insn_00411527) db 0
    %%insn_0041152b:
    jnz short 0x411534 ; 0041152B 7507
    %if ($ - %%insn_0041152b) > 2
        %error "LONG_0041152B"
    %endif
    times 2 - ($ - %%insn_0041152b) db 0
    %%insn_0041152d:
    mov eax,0xfffffff6 ; 0041152D B8F6FFFFFF
    %if ($ - %%insn_0041152d) > 5
        %error "LONG_0041152D"
    %endif
    times 5 - ($ - %%insn_0041152d) db 0
    %%insn_00411532:
    jmp short 0x41153e ; 00411532 EB0A
    %if ($ - %%insn_00411532) > 2
        %error "LONG_00411532"
    %endif
    times 2 - ($ - %%insn_00411532) db 0
    db 0x8B, 0xC5 ; 00411534 8BC5 | mov eax,ebp | encoding preserved
    %%insn_00411536:
    dec eax ; 00411536 48
    %if ($ - %%insn_00411536) > 1
        %error "LONG_00411536"
    %endif
    times 1 - ($ - %%insn_00411536) db 0
    %%insn_00411537:
    neg eax ; 00411537 F7D8
    %if ($ - %%insn_00411537) > 2
        %error "LONG_00411537"
    %endif
    times 2 - ($ - %%insn_00411537) db 0
    db 0x1B, 0xC0 ; 00411539 1BC0 | sbb eax,eax | encoding preserved
    %%insn_0041153b:
    add eax,0xfffffffffffffff5 ; 0041153B 83C0F5
    %if ($ - %%insn_0041153b) > 3
        %error "LONG_0041153B"
    %endif
    times 3 - ($ - %%insn_0041153b) db 0
    %%insn_0041153e:
    push eax ; 0041153E 50
    %if ($ - %%insn_0041153e) > 1
        %error "LONG_0041153E"
    %endif
    times 1 - ($ - %%insn_0041153e) db 0
    %%insn_0041153f:
    call ebx ; 0041153F FFD3
    %if ($ - %%insn_0041153f) > 2
        %error "LONG_0041153F"
    %endif
    times 2 - ($ - %%insn_0041153f) db 0
    db 0x8B, 0xF8 ; 00411541 8BF8 | mov edi,eax | encoding preserved
    %%insn_00411543:
    cmp edi,0xffffffffffffffff ; 00411543 83FFFF
    %if ($ - %%insn_00411543) > 3
        %error "LONG_00411543"
    %endif
    times 3 - ($ - %%insn_00411543) db 0
    %%insn_00411546:
    jz short 0x411572 ; 00411546 742A
    %if ($ - %%insn_00411546) > 2
        %error "LONG_00411546"
    %endif
    times 2 - ($ - %%insn_00411546) db 0
    %%insn_00411548:
    push edi ; 00411548 57
    %if ($ - %%insn_00411548) > 1
        %error "LONG_00411548"
    %endif
    times 1 - ($ - %%insn_00411548) db 0
    %%insn_00411549:
    call dword near [0x42444c] ; 00411549 FF154C444200
    %if ($ - %%insn_00411549) > 6
        %error "LONG_00411549"
    %endif
    times 6 - ($ - %%insn_00411549) db 0
    %%insn_0041154f:
    test eax,eax ; 0041154F 85C0
    %if ($ - %%insn_0041154f) > 2
        %error "LONG_0041154F"
    %endif
    times 2 - ($ - %%insn_0041154f) db 0
    %%insn_00411551:
    jz short 0x411572 ; 00411551 741F
    %if ($ - %%insn_00411551) > 2
        %error "LONG_00411551"
    %endif
    times 2 - ($ - %%insn_00411551) db 0
    %%insn_00411553:
    and eax,0xff ; 00411553 25FF000000
    %if ($ - %%insn_00411553) > 5
        %error "LONG_00411553"
    %endif
    times 5 - ($ - %%insn_00411553) db 0
    %%insn_00411558:
    mov [esi],edi ; 00411558 893E
    %if ($ - %%insn_00411558) > 2
        %error "LONG_00411558"
    %endif
    times 2 - ($ - %%insn_00411558) db 0
    %%insn_0041155a:
    cmp eax,0x2 ; 0041155A 83F802
    %if ($ - %%insn_0041155a) > 3
        %error "LONG_0041155A"
    %endif
    times 3 - ($ - %%insn_0041155a) db 0
    %%insn_0041155d:
    jnz short 0x411566 ; 0041155D 7507
    %if ($ - %%insn_0041155d) > 2
        %error "LONG_0041155D"
    %endif
    times 2 - ($ - %%insn_0041155d) db 0
    %%insn_0041155f:
    mov al,[esi+0x4] ; 0041155F 8A4604
    %if ($ - %%insn_0041155f) > 3
        %error "LONG_0041155F"
    %endif
    times 3 - ($ - %%insn_0041155f) db 0
    %%insn_00411562:
    or al,0x40 ; 00411562 0C40
    %if ($ - %%insn_00411562) > 2
        %error "LONG_00411562"
    %endif
    times 2 - ($ - %%insn_00411562) db 0
    %%insn_00411564:
    jmp short 0x41157e ; 00411564 EB18
    %if ($ - %%insn_00411564) > 2
        %error "LONG_00411564"
    %endif
    times 2 - ($ - %%insn_00411564) db 0
    %%insn_00411566:
    cmp eax,0x3 ; 00411566 83F803
    %if ($ - %%insn_00411566) > 3
        %error "LONG_00411566"
    %endif
    times 3 - ($ - %%insn_00411566) db 0
    %%insn_00411569:
    jnz short 0x411581 ; 00411569 7516
    %if ($ - %%insn_00411569) > 2
        %error "LONG_00411569"
    %endif
    times 2 - ($ - %%insn_00411569) db 0
    %%insn_0041156b:
    mov al,[esi+0x4] ; 0041156B 8A4604
    %if ($ - %%insn_0041156b) > 3
        %error "LONG_0041156B"
    %endif
    times 3 - ($ - %%insn_0041156b) db 0
    %%insn_0041156e:
    or al,0x8 ; 0041156E 0C08
    %if ($ - %%insn_0041156e) > 2
        %error "LONG_0041156E"
    %endif
    times 2 - ($ - %%insn_0041156e) db 0
    %%insn_00411570:
    jmp short 0x41157e ; 00411570 EB0C
    %if ($ - %%insn_00411570) > 2
        %error "LONG_00411570"
    %endif
    times 2 - ($ - %%insn_00411570) db 0
    %%insn_00411572:
    mov al,[esi+0x4] ; 00411572 8A4604
    %if ($ - %%insn_00411572) > 3
        %error "LONG_00411572"
    %endif
    times 3 - ($ - %%insn_00411572) db 0
    %%insn_00411575:
    or al,0x40 ; 00411575 0C40
    %if ($ - %%insn_00411575) > 2
        %error "LONG_00411575"
    %endif
    times 2 - ($ - %%insn_00411575) db 0
    %%insn_00411577:
    jmp short 0x41157e ; 00411577 EB05
    %if ($ - %%insn_00411577) > 2
        %error "LONG_00411577"
    %endif
    times 2 - ($ - %%insn_00411577) db 0
    %%insn_00411579:
    mov al,[esi+0x4] ; 00411579 8A4604
    %if ($ - %%insn_00411579) > 3
        %error "LONG_00411579"
    %endif
    times 3 - ($ - %%insn_00411579) db 0
    %%insn_0041157c:
    or al,0x80 ; 0041157C 0C80
    %if ($ - %%insn_0041157c) > 2
        %error "LONG_0041157C"
    %endif
    times 2 - ($ - %%insn_0041157c) db 0
    %%insn_0041157e:
    mov [esi+0x4],al ; 0041157E 884604
    %if ($ - %%insn_0041157e) > 3
        %error "LONG_0041157E"
    %endif
    times 3 - ($ - %%insn_0041157e) db 0
    %%insn_00411581:
    inc ebp ; 00411581 45
    %if ($ - %%insn_00411581) > 1
        %error "LONG_00411581"
    %endif
    times 1 - ($ - %%insn_00411581) db 0
    %%insn_00411582:
    cmp ebp,0x3 ; 00411582 83FD03
    %if ($ - %%insn_00411582) > 3
        %error "LONG_00411582"
    %endif
    times 3 - ($ - %%insn_00411582) db 0
    %%insn_00411585:
    jl short 0x411510 ; 00411585 7C89
    %if ($ - %%insn_00411585) > 2
        %error "LONG_00411585"
    %endif
    times 2 - ($ - %%insn_00411585) db 0
    %%insn_00411587:
    mov edx,[0x423580] ; 00411587 8B1580354200
    %if ($ - %%insn_00411587) > 6
        %error "LONG_00411587"
    %endif
    times 6 - ($ - %%insn_00411587) db 0
    %%insn_0041158d:
    push edx ; 0041158D 52
    %if ($ - %%insn_0041158d) > 1
        %error "LONG_0041158D"
    %endif
    times 1 - ($ - %%insn_0041158d) db 0
    %%insn_0041158e:
    call dword near [0x424454] ; 0041158E FF1554444200
    %if ($ - %%insn_0041158e) > 6
        %error "LONG_0041158E"
    %endif
    times 6 - ($ - %%insn_0041158e) db 0
    %%insn_00411594:
    pop edi ; 00411594 5F
    %if ($ - %%insn_00411594) > 1
        %error "LONG_00411594"
    %endif
    times 1 - ($ - %%insn_00411594) db 0
    %%insn_00411595:
    pop esi ; 00411595 5E
    %if ($ - %%insn_00411595) > 1
        %error "LONG_00411595"
    %endif
    times 1 - ($ - %%insn_00411595) db 0
    %%insn_00411596:
    pop ebp ; 00411596 5D
    %if ($ - %%insn_00411596) > 1
        %error "LONG_00411596"
    %endif
    times 1 - ($ - %%insn_00411596) db 0
    %%insn_00411597:
    pop ebx ; 00411597 5B
    %if ($ - %%insn_00411597) > 1
        %error "LONG_00411597"
    %endif
    times 1 - ($ - %%insn_00411597) db 0
    %%insn_00411598:
    add esp,0x48 ; 00411598 83C448
    %if ($ - %%insn_00411598) > 3
        %error "LONG_00411598"
    %endif
    times 3 - ($ - %%insn_00411598) db 0
    %%insn_0041159b:
    ret ; 0041159B C3
    %if ($ - %%insn_0041159b) > 1
        %error "LONG_0041159B"
    %endif
    times 1 - ($ - %%insn_0041159b) db 0
    %if ($ - %%fragment_start) != 524
        %error "function fragment size drift: 00411390"
    %endif
%endmacro
