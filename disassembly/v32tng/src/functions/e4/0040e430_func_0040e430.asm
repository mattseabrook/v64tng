; PE virtual entry 0040E430
; Ghidra working symbol: FUN_0040e430
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040e430_part_00 0
    %%fragment_start:
func_0040e430:
    %%insn_0040e430:
    push ecx ; 0040E430 51
    %if ($ - %%insn_0040e430) > 1
        %error "LONG_0040E430"
    %endif
    times 1 - ($ - %%insn_0040e430) db 0
    %%insn_0040e431:
    mov ecx,[0x41de80] ; 0040E431 8B0D80DE4100
    %if ($ - %%insn_0040e431) > 6
        %error "LONG_0040E431"
    %endif
    times 6 - ($ - %%insn_0040e431) db 0
    %%insn_0040e437:
    push ebx ; 0040E437 53
    %if ($ - %%insn_0040e437) > 1
        %error "LONG_0040E437"
    %endif
    times 1 - ($ - %%insn_0040e437) db 0
    %%insn_0040e438:
    mov ebx,[esp+0xc] ; 0040E438 8B5C240C
    %if ($ - %%insn_0040e438) > 4
        %error "LONG_0040E438"
    %endif
    times 4 - ($ - %%insn_0040e438) db 0
    %%insn_0040e43c:
    push ebp ; 0040E43C 55
    %if ($ - %%insn_0040e43c) > 1
        %error "LONG_0040E43C"
    %endif
    times 1 - ($ - %%insn_0040e43c) db 0
    %%insn_0040e43d:
    push esi ; 0040E43D 56
    %if ($ - %%insn_0040e43d) > 1
        %error "LONG_0040E43D"
    %endif
    times 1 - ($ - %%insn_0040e43d) db 0
    %%insn_0040e43e:
    push edi ; 0040E43E 57
    %if ($ - %%insn_0040e43e) > 1
        %error "LONG_0040E43E"
    %endif
    times 1 - ($ - %%insn_0040e43e) db 0
    %%insn_0040e43f:
    mov [esp+0x10],ecx ; 0040E43F 894C2410
    %if ($ - %%insn_0040e43f) > 4
        %error "LONG_0040E43F"
    %endif
    times 4 - ($ - %%insn_0040e43f) db 0
    %%insn_0040e443:
    mov eax,[ecx+0x10] ; 0040E443 8B4110
    %if ($ - %%insn_0040e443) > 3
        %error "LONG_0040E443"
    %endif
    times 3 - ($ - %%insn_0040e443) db 0
    %%insn_0040e446:
    cmp eax,0xffffffffffffffff ; 0040E446 83F8FF
    %if ($ - %%insn_0040e446) > 3
        %error "LONG_0040E446"
    %endif
    times 3 - ($ - %%insn_0040e446) db 0
    %%insn_0040e449:
    jz 0x40e4d4 ; 0040E449 0F8485000000
    %if ($ - %%insn_0040e449) > 6
        %error "LONG_0040E449"
    %endif
    times 6 - ($ - %%insn_0040e449) db 0
    %%insn_0040e44f:
    mov edi,[ecx+0x8] ; 0040E44F 8B7908
    %if ($ - %%insn_0040e44f) > 3
        %error "LONG_0040E44F"
    %endif
    times 3 - ($ - %%insn_0040e44f) db 0
    %%insn_0040e452:
    lea ebp,[ecx+0x2018] ; 0040E452 8DA918200000
    %if ($ - %%insn_0040e452) > 6
        %error "LONG_0040E452"
    %endif
    times 6 - ($ - %%insn_0040e452) db 0
    db 0x8B, 0xF7 ; 0040E458 8BF7 | mov esi,edi | encoding preserved
    db 0x2B, 0xF1 ; 0040E45A 2BF1 | sub esi,ecx | encoding preserved
    %%insn_0040e45c:
    sub esi,0x18 ; 0040E45C 83EE18
    %if ($ - %%insn_0040e45c) > 3
        %error "LONG_0040E45C"
    %endif
    times 3 - ($ - %%insn_0040e45c) db 0
    %%insn_0040e45f:
    sar esi,byte 0x3 ; 0040E45F C1FE03
    %if ($ - %%insn_0040e45f) > 3
        %error "LONG_0040E45F"
    %endif
    times 3 - ($ - %%insn_0040e45f) db 0
    %%insn_0040e462:
    shl esi,byte 0xc ; 0040E462 C1E60C
    %if ($ - %%insn_0040e462) > 3
        %error "LONG_0040E462"
    %endif
    times 3 - ($ - %%insn_0040e462) db 0
    db 0x03, 0xF0 ; 0040E465 03F0 | add esi,eax | encoding preserved
    db 0x3B, 0xFD ; 0040E467 3BFD | cmp edi,ebp | encoding preserved
    %%insn_0040e469:
    jnc short 0x40e499 ; 0040E469 732E
    %if ($ - %%insn_0040e469) > 2
        %error "LONG_0040E469"
    %endif
    times 2 - ($ - %%insn_0040e469) db 0
    %%insn_0040e46b:
    mov eax,[edi] ; 0040E46B 8B07
    %if ($ - %%insn_0040e46b) > 2
        %error "LONG_0040E46B"
    %endif
    times 2 - ($ - %%insn_0040e46b) db 0
    db 0x3B, 0xC3 ; 0040E46D 3BC3 | cmp eax,ebx | encoding preserved
    %%insn_0040e46f:
    jl short 0x40e48c ; 0040E46F 7C1B
    %if ($ - %%insn_0040e46f) > 2
        %error "LONG_0040E46F"
    %endif
    times 2 - ($ - %%insn_0040e46f) db 0
    %%insn_0040e471:
    cmp [edi+0x4],ebx ; 0040E471 395F04
    %if ($ - %%insn_0040e471) > 3
        %error "LONG_0040E471"
    %endif
    times 3 - ($ - %%insn_0040e471) db 0
    %%insn_0040e474:
    jna short 0x40e48c ; 0040E474 7616
    %if ($ - %%insn_0040e474) > 2
        %error "LONG_0040E474"
    %endif
    times 2 - ($ - %%insn_0040e474) db 0
    %%insn_0040e476:
    push ebx ; 0040E476 53
    %if ($ - %%insn_0040e476) > 1
        %error "LONG_0040E476"
    %endif
    times 1 - ($ - %%insn_0040e476) db 0
    %%insn_0040e477:
    push eax ; 0040E477 50
    %if ($ - %%insn_0040e477) > 1
        %error "LONG_0040E477"
    %endif
    times 1 - ($ - %%insn_0040e477) db 0
    %%insn_0040e478:
    push esi ; 0040E478 56
    %if ($ - %%insn_0040e478) > 1
        %error "LONG_0040E478"
    %endif
    times 1 - ($ - %%insn_0040e478) db 0
    %%insn_0040e479:
    call 0x40e670 ; 0040E479 E8F2010000
    %if ($ - %%insn_0040e479) > 5
        %error "LONG_0040E479"
    %endif
    times 5 - ($ - %%insn_0040e479) db 0
    %%insn_0040e47e:
    add esp,0xc ; 0040E47E 83C40C
    %if ($ - %%insn_0040e47e) > 3
        %error "LONG_0040E47E"
    %endif
    times 3 - ($ - %%insn_0040e47e) db 0
    %%insn_0040e481:
    test eax,eax ; 0040E481 85C0
    %if ($ - %%insn_0040e481) > 2
        %error "LONG_0040E481"
    %endif
    times 2 - ($ - %%insn_0040e481) db 0
    %%insn_0040e483:
    jnz short 0x40e4e8 ; 0040E483 7563
    %if ($ - %%insn_0040e483) > 2
        %error "LONG_0040E483"
    %endif
    times 2 - ($ - %%insn_0040e483) db 0
    %%insn_0040e485:
    mov ecx,[esp+0x10] ; 0040E485 8B4C2410
    %if ($ - %%insn_0040e485) > 4
        %error "LONG_0040E485"
    %endif
    times 4 - ($ - %%insn_0040e485) db 0
    %%insn_0040e489:
    mov [edi+0x4],ebx ; 0040E489 895F04
    %if ($ - %%insn_0040e489) > 3
        %error "LONG_0040E489"
    %endif
    times 3 - ($ - %%insn_0040e489) db 0
    %%insn_0040e48c:
    add edi,0x8 ; 0040E48C 83C708
    %if ($ - %%insn_0040e48c) > 3
        %error "LONG_0040E48C"
    %endif
    times 3 - ($ - %%insn_0040e48c) db 0
    %%insn_0040e48f:
    add esi,0x1000 ; 0040E48F 81C600100000
    %if ($ - %%insn_0040e48f) > 6
        %error "LONG_0040E48F"
    %endif
    times 6 - ($ - %%insn_0040e48f) db 0
    db 0x3B, 0xFD ; 0040E495 3BFD | cmp edi,ebp | encoding preserved
    %%insn_0040e497:
    jc short 0x40e46b ; 0040E497 72D2
    %if ($ - %%insn_0040e497) > 2
        %error "LONG_0040E497"
    %endif
    times 2 - ($ - %%insn_0040e497) db 0
    %%insn_0040e499:
    mov ebp,[ecx+0x8] ; 0040E499 8B6908
    %if ($ - %%insn_0040e499) > 3
        %error "LONG_0040E499"
    %endif
    times 3 - ($ - %%insn_0040e499) db 0
    %%insn_0040e49c:
    mov edi,[ecx+0x10] ; 0040E49C 8B7910
    %if ($ - %%insn_0040e49c) > 3
        %error "LONG_0040E49C"
    %endif
    times 3 - ($ - %%insn_0040e49c) db 0
    %%insn_0040e49f:
    lea esi,[ecx+0x18] ; 0040E49F 8D7118
    %if ($ - %%insn_0040e49f) > 3
        %error "LONG_0040E49F"
    %endif
    times 3 - ($ - %%insn_0040e49f) db 0
    db 0x3B, 0xF5 ; 0040E4A2 3BF5 | cmp esi,ebp | encoding preserved
    %%insn_0040e4a4:
    jnc short 0x40e4d4 ; 0040E4A4 732E
    %if ($ - %%insn_0040e4a4) > 2
        %error "LONG_0040E4A4"
    %endif
    times 2 - ($ - %%insn_0040e4a4) db 0
    %%insn_0040e4a6:
    mov eax,[esi] ; 0040E4A6 8B06
    %if ($ - %%insn_0040e4a6) > 2
        %error "LONG_0040E4A6"
    %endif
    times 2 - ($ - %%insn_0040e4a6) db 0
    db 0x3B, 0xC3 ; 0040E4A8 3BC3 | cmp eax,ebx | encoding preserved
    %%insn_0040e4aa:
    jl short 0x40e4c7 ; 0040E4AA 7C1B
    %if ($ - %%insn_0040e4aa) > 2
        %error "LONG_0040E4AA"
    %endif
    times 2 - ($ - %%insn_0040e4aa) db 0
    %%insn_0040e4ac:
    cmp [esi+0x4],ebx ; 0040E4AC 395E04
    %if ($ - %%insn_0040e4ac) > 3
        %error "LONG_0040E4AC"
    %endif
    times 3 - ($ - %%insn_0040e4ac) db 0
    %%insn_0040e4af:
    jna short 0x40e4c7 ; 0040E4AF 7616
    %if ($ - %%insn_0040e4af) > 2
        %error "LONG_0040E4AF"
    %endif
    times 2 - ($ - %%insn_0040e4af) db 0
    %%insn_0040e4b1:
    push ebx ; 0040E4B1 53
    %if ($ - %%insn_0040e4b1) > 1
        %error "LONG_0040E4B1"
    %endif
    times 1 - ($ - %%insn_0040e4b1) db 0
    %%insn_0040e4b2:
    push eax ; 0040E4B2 50
    %if ($ - %%insn_0040e4b2) > 1
        %error "LONG_0040E4B2"
    %endif
    times 1 - ($ - %%insn_0040e4b2) db 0
    %%insn_0040e4b3:
    push edi ; 0040E4B3 57
    %if ($ - %%insn_0040e4b3) > 1
        %error "LONG_0040E4B3"
    %endif
    times 1 - ($ - %%insn_0040e4b3) db 0
    %%insn_0040e4b4:
    call 0x40e670 ; 0040E4B4 E8B7010000
    %if ($ - %%insn_0040e4b4) > 5
        %error "LONG_0040E4B4"
    %endif
    times 5 - ($ - %%insn_0040e4b4) db 0
    %%insn_0040e4b9:
    add esp,0xc ; 0040E4B9 83C40C
    %if ($ - %%insn_0040e4b9) > 3
        %error "LONG_0040E4B9"
    %endif
    times 3 - ($ - %%insn_0040e4b9) db 0
    %%insn_0040e4bc:
    test eax,eax ; 0040E4BC 85C0
    %if ($ - %%insn_0040e4bc) > 2
        %error "LONG_0040E4BC"
    %endif
    times 2 - ($ - %%insn_0040e4bc) db 0
    %%insn_0040e4be:
    jnz short 0x40e501 ; 0040E4BE 7541
    %if ($ - %%insn_0040e4be) > 2
        %error "LONG_0040E4BE"
    %endif
    times 2 - ($ - %%insn_0040e4be) db 0
    %%insn_0040e4c0:
    mov ecx,[esp+0x10] ; 0040E4C0 8B4C2410
    %if ($ - %%insn_0040e4c0) > 4
        %error "LONG_0040E4C0"
    %endif
    times 4 - ($ - %%insn_0040e4c0) db 0
    %%insn_0040e4c4:
    mov [esi+0x4],ebx ; 0040E4C4 895E04
    %if ($ - %%insn_0040e4c4) > 3
        %error "LONG_0040E4C4"
    %endif
    times 3 - ($ - %%insn_0040e4c4) db 0
    %%insn_0040e4c7:
    add esi,0x8 ; 0040E4C7 83C608
    %if ($ - %%insn_0040e4c7) > 3
        %error "LONG_0040E4C7"
    %endif
    times 3 - ($ - %%insn_0040e4c7) db 0
    %%insn_0040e4ca:
    add edi,0x1000 ; 0040E4CA 81C700100000
    %if ($ - %%insn_0040e4ca) > 6
        %error "LONG_0040E4CA"
    %endif
    times 6 - ($ - %%insn_0040e4ca) db 0
    db 0x3B, 0xF5 ; 0040E4D0 3BF5 | cmp esi,ebp | encoding preserved
    %%insn_0040e4d2:
    jc short 0x40e4a6 ; 0040E4D2 72D2
    %if ($ - %%insn_0040e4d2) > 2
        %error "LONG_0040E4D2"
    %endif
    times 2 - ($ - %%insn_0040e4d2) db 0
    %%insn_0040e4d4:
    mov ecx,[ecx] ; 0040E4D4 8B09
    %if ($ - %%insn_0040e4d4) > 2
        %error "LONG_0040E4D4"
    %endif
    times 2 - ($ - %%insn_0040e4d4) db 0
    %%insn_0040e4d6:
    mov eax,[0x41de80] ; 0040E4D6 A180DE4100
    %if ($ - %%insn_0040e4d6) > 5
        %error "LONG_0040E4D6"
    %endif
    times 5 - ($ - %%insn_0040e4d6) db 0
    db 0x3B, 0xC8 ; 0040E4DB 3BC8 | cmp ecx,eax | encoding preserved
    %%insn_0040e4dd:
    mov [esp+0x10],ecx ; 0040E4DD 894C2410
    %if ($ - %%insn_0040e4dd) > 4
        %error "LONG_0040E4DD"
    %endif
    times 4 - ($ - %%insn_0040e4dd) db 0
    %%insn_0040e4e1:
    jz short 0x40e51a ; 0040E4E1 7437
    %if ($ - %%insn_0040e4e1) > 2
        %error "LONG_0040E4E1"
    %endif
    times 2 - ($ - %%insn_0040e4e1) db 0
    %%insn_0040e4e3:
    jmp 0x40e443 ; 0040E4E3 E95BFFFFFF
    %if ($ - %%insn_0040e4e3) > 5
        %error "LONG_0040E4E3"
    %endif
    times 5 - ($ - %%insn_0040e4e3) db 0
    %%insn_0040e4e8:
    mov ecx,[esp+0x10] ; 0040E4E8 8B4C2410
    %if ($ - %%insn_0040e4e8) > 4
        %error "LONG_0040E4E8"
    %endif
    times 4 - ($ - %%insn_0040e4e8) db 0
    %%insn_0040e4ec:
    mov [0x41de80],ecx ; 0040E4EC 890D80DE4100
    %if ($ - %%insn_0040e4ec) > 6
        %error "LONG_0040E4EC"
    %endif
    times 6 - ($ - %%insn_0040e4ec) db 0
    %%insn_0040e4f2:
    mov edx,[edi] ; 0040E4F2 8B17
    %if ($ - %%insn_0040e4f2) > 2
        %error "LONG_0040E4F2"
    %endif
    times 2 - ($ - %%insn_0040e4f2) db 0
    db 0x2B, 0xD3 ; 0040E4F4 2BD3 | sub edx,ebx | encoding preserved
    %%insn_0040e4f6:
    mov [edi],edx ; 0040E4F6 8917
    %if ($ - %%insn_0040e4f6) > 2
        %error "LONG_0040E4F6"
    %endif
    times 2 - ($ - %%insn_0040e4f6) db 0
    %%insn_0040e4f8:
    mov [ecx+0x8],edi ; 0040E4F8 897908
    %if ($ - %%insn_0040e4f8) > 3
        %error "LONG_0040E4F8"
    %endif
    times 3 - ($ - %%insn_0040e4f8) db 0
    %%insn_0040e4fb:
    pop edi ; 0040E4FB 5F
    %if ($ - %%insn_0040e4fb) > 1
        %error "LONG_0040E4FB"
    %endif
    times 1 - ($ - %%insn_0040e4fb) db 0
    %%insn_0040e4fc:
    pop esi ; 0040E4FC 5E
    %if ($ - %%insn_0040e4fc) > 1
        %error "LONG_0040E4FC"
    %endif
    times 1 - ($ - %%insn_0040e4fc) db 0
    %%insn_0040e4fd:
    pop ebp ; 0040E4FD 5D
    %if ($ - %%insn_0040e4fd) > 1
        %error "LONG_0040E4FD"
    %endif
    times 1 - ($ - %%insn_0040e4fd) db 0
    %%insn_0040e4fe:
    pop ebx ; 0040E4FE 5B
    %if ($ - %%insn_0040e4fe) > 1
        %error "LONG_0040E4FE"
    %endif
    times 1 - ($ - %%insn_0040e4fe) db 0
    %%insn_0040e4ff:
    pop ecx ; 0040E4FF 59
    %if ($ - %%insn_0040e4ff) > 1
        %error "LONG_0040E4FF"
    %endif
    times 1 - ($ - %%insn_0040e4ff) db 0
    %%insn_0040e500:
    ret ; 0040E500 C3
    %if ($ - %%insn_0040e500) > 1
        %error "LONG_0040E500"
    %endif
    times 1 - ($ - %%insn_0040e500) db 0
    %%insn_0040e501:
    mov ecx,[esp+0x10] ; 0040E501 8B4C2410
    %if ($ - %%insn_0040e501) > 4
        %error "LONG_0040E501"
    %endif
    times 4 - ($ - %%insn_0040e501) db 0
    %%insn_0040e505:
    mov [0x41de80],ecx ; 0040E505 890D80DE4100
    %if ($ - %%insn_0040e505) > 6
        %error "LONG_0040E505"
    %endif
    times 6 - ($ - %%insn_0040e505) db 0
    %%insn_0040e50b:
    mov edx,[esi] ; 0040E50B 8B16
    %if ($ - %%insn_0040e50b) > 2
        %error "LONG_0040E50B"
    %endif
    times 2 - ($ - %%insn_0040e50b) db 0
    db 0x2B, 0xD3 ; 0040E50D 2BD3 | sub edx,ebx | encoding preserved
    %%insn_0040e50f:
    mov [esi],edx ; 0040E50F 8916
    %if ($ - %%insn_0040e50f) > 2
        %error "LONG_0040E50F"
    %endif
    times 2 - ($ - %%insn_0040e50f) db 0
    %%insn_0040e511:
    mov [ecx+0x8],esi ; 0040E511 897108
    %if ($ - %%insn_0040e511) > 3
        %error "LONG_0040E511"
    %endif
    times 3 - ($ - %%insn_0040e511) db 0
    %%insn_0040e514:
    pop edi ; 0040E514 5F
    %if ($ - %%insn_0040e514) > 1
        %error "LONG_0040E514"
    %endif
    times 1 - ($ - %%insn_0040e514) db 0
    %%insn_0040e515:
    pop esi ; 0040E515 5E
    %if ($ - %%insn_0040e515) > 1
        %error "LONG_0040E515"
    %endif
    times 1 - ($ - %%insn_0040e515) db 0
    %%insn_0040e516:
    pop ebp ; 0040E516 5D
    %if ($ - %%insn_0040e516) > 1
        %error "LONG_0040E516"
    %endif
    times 1 - ($ - %%insn_0040e516) db 0
    %%insn_0040e517:
    pop ebx ; 0040E517 5B
    %if ($ - %%insn_0040e517) > 1
        %error "LONG_0040E517"
    %endif
    times 1 - ($ - %%insn_0040e517) db 0
    %%insn_0040e518:
    pop ecx ; 0040E518 59
    %if ($ - %%insn_0040e518) > 1
        %error "LONG_0040E518"
    %endif
    times 1 - ($ - %%insn_0040e518) db 0
    %%insn_0040e519:
    ret ; 0040E519 C3
    %if ($ - %%insn_0040e519) > 1
        %error "LONG_0040E519"
    %endif
    times 1 - ($ - %%insn_0040e519) db 0
    %%insn_0040e51a:
    mov ebp,0x41be60 ; 0040E51A BD60BE4100
    %if ($ - %%insn_0040e51a) > 5
        %error "LONG_0040E51A"
    %endif
    times 5 - ($ - %%insn_0040e51a) db 0
    %%insn_0040e51f:
    or ecx,0xffffffffffffffff ; 0040E51F 83C9FF
    %if ($ - %%insn_0040e51f) > 3
        %error "LONG_0040E51F"
    %endif
    times 3 - ($ - %%insn_0040e51f) db 0
    %%insn_0040e522:
    cmp [ebp+0x10],ecx ; 0040E522 394D10
    %if ($ - %%insn_0040e522) > 3
        %error "LONG_0040E522"
    %endif
    times 3 - ($ - %%insn_0040e522) db 0
    %%insn_0040e525:
    jz short 0x40e52e ; 0040E525 7407
    %if ($ - %%insn_0040e525) > 2
        %error "LONG_0040E525"
    %endif
    times 2 - ($ - %%insn_0040e525) db 0
    %%insn_0040e527:
    mov eax,[ebp+0xc] ; 0040E527 8B450C
    %if ($ - %%insn_0040e527) > 3
        %error "LONG_0040E527"
    %endif
    times 3 - ($ - %%insn_0040e527) db 0
    %%insn_0040e52a:
    test eax,eax ; 0040E52A 85C0
    %if ($ - %%insn_0040e52a) > 2
        %error "LONG_0040E52A"
    %endif
    times 2 - ($ - %%insn_0040e52a) db 0
    %%insn_0040e52c:
    jnz short 0x40e53f ; 0040E52C 7511
    %if ($ - %%insn_0040e52c) > 2
        %error "LONG_0040E52C"
    %endif
    times 2 - ($ - %%insn_0040e52c) db 0
    %%insn_0040e52e:
    mov ebp,[ebp+0x0] ; 0040E52E 8B6D00
    %if ($ - %%insn_0040e52e) > 3
        %error "LONG_0040E52E"
    %endif
    times 3 - ($ - %%insn_0040e52e) db 0
    %%insn_0040e531:
    cmp ebp,0x41be60 ; 0040E531 81FD60BE4100
    %if ($ - %%insn_0040e531) > 6
        %error "LONG_0040E531"
    %endif
    times 6 - ($ - %%insn_0040e531) db 0
    %%insn_0040e537:
    jz 0x40e61d ; 0040E537 0F84E0000000
    %if ($ - %%insn_0040e537) > 6
        %error "LONG_0040E537"
    %endif
    times 6 - ($ - %%insn_0040e537) db 0
    %%insn_0040e53d:
    jmp short 0x40e522 ; 0040E53D EBE3
    %if ($ - %%insn_0040e53d) > 2
        %error "LONG_0040E53D"
    %endif
    times 2 - ($ - %%insn_0040e53d) db 0
    %%insn_0040e53f:
    mov eax,[ebp+0xc] ; 0040E53F 8B450C
    %if ($ - %%insn_0040e53f) > 3
        %error "LONG_0040E53F"
    %endif
    times 3 - ($ - %%insn_0040e53f) db 0
    %%insn_0040e542:
    mov esi,[ebp+0x10] ; 0040E542 8B7510
    %if ($ - %%insn_0040e542) > 3
        %error "LONG_0040E542"
    %endif
    times 3 - ($ - %%insn_0040e542) db 0
    db 0x8B, 0xF8 ; 0040E545 8BF8 | mov edi,eax | encoding preserved
    %%insn_0040e547:
    mov [esp+0x18],eax ; 0040E547 89442418
    %if ($ - %%insn_0040e547) > 4
        %error "LONG_0040E547"
    %endif
    times 4 - ($ - %%insn_0040e547) db 0
    db 0x2B, 0xFD ; 0040E54B 2BFD | sub edi,ebp | encoding preserved
    %%insn_0040e54d:
    mov edx,[eax] ; 0040E54D 8B10
    %if ($ - %%insn_0040e54d) > 2
        %error "LONG_0040E54D"
    %endif
    times 2 - ($ - %%insn_0040e54d) db 0
    %%insn_0040e54f:
    sub edi,0x18 ; 0040E54F 83EF18
    %if ($ - %%insn_0040e54f) > 3
        %error "LONG_0040E54F"
    %endif
    times 3 - ($ - %%insn_0040e54f) db 0
    %%insn_0040e552:
    sar edi,byte 0x3 ; 0040E552 C1FF03
    %if ($ - %%insn_0040e552) > 3
        %error "LONG_0040E552"
    %endif
    times 3 - ($ - %%insn_0040e552) db 0
    %%insn_0040e555:
    shl edi,byte 0xc ; 0040E555 C1E70C
    %if ($ - %%insn_0040e555) > 3
        %error "LONG_0040E555"
    %endif
    times 3 - ($ - %%insn_0040e555) db 0
    db 0x03, 0xFE ; 0040E558 03FE | add edi,esi | encoding preserved
    db 0x33, 0xF6 ; 0040E55A 33F6 | xor esi,esi | encoding preserved
    db 0x3B, 0xD1 ; 0040E55C 3BD1 | cmp edx,ecx | encoding preserved
    %%insn_0040e55e:
    jnz short 0x40e570 ; 0040E55E 7510
    %if ($ - %%insn_0040e55e) > 2
        %error "LONG_0040E55E"
    %endif
    times 2 - ($ - %%insn_0040e55e) db 0
    %%insn_0040e560:
    cmp esi,0x10 ; 0040E560 83FE10
    %if ($ - %%insn_0040e560) > 3
        %error "LONG_0040E560"
    %endif
    times 3 - ($ - %%insn_0040e560) db 0
    %%insn_0040e563:
    jnl short 0x40e570 ; 0040E563 7D0B
    %if ($ - %%insn_0040e563) > 2
        %error "LONG_0040E563"
    %endif
    times 2 - ($ - %%insn_0040e563) db 0
    %%insn_0040e565:
    mov edx,[eax+0x8] ; 0040E565 8B5008
    %if ($ - %%insn_0040e565) > 3
        %error "LONG_0040E565"
    %endif
    times 3 - ($ - %%insn_0040e565) db 0
    %%insn_0040e568:
    add eax,0x8 ; 0040E568 83C008
    %if ($ - %%insn_0040e568) > 3
        %error "LONG_0040E568"
    %endif
    times 3 - ($ - %%insn_0040e568) db 0
    %%insn_0040e56b:
    inc esi ; 0040E56B 46
    %if ($ - %%insn_0040e56b) > 1
        %error "LONG_0040E56B"
    %endif
    times 1 - ($ - %%insn_0040e56b) db 0
    db 0x3B, 0xD1 ; 0040E56C 3BD1 | cmp edx,ecx | encoding preserved
    %%insn_0040e56e:
    jz short 0x40e560 ; 0040E56E 74F0
    %if ($ - %%insn_0040e56e) > 2
        %error "LONG_0040E56E"
    %endif
    times 2 - ($ - %%insn_0040e56e) db 0
    db 0x8B, 0xC6 ; 0040E570 8BC6 | mov eax,esi | encoding preserved
    %%insn_0040e572:
    push dword 0x4 ; 0040E572 6A04
    %if ($ - %%insn_0040e572) > 2
        %error "LONG_0040E572"
    %endif
    times 2 - ($ - %%insn_0040e572) db 0
    %%insn_0040e574:
    shl eax,byte 0xc ; 0040E574 C1E00C
    %if ($ - %%insn_0040e574) > 3
        %error "LONG_0040E574"
    %endif
    times 3 - ($ - %%insn_0040e574) db 0
    %%insn_0040e577:
    push dword 0x1000 ; 0040E577 6800100000
    %if ($ - %%insn_0040e577) > 5
        %error "LONG_0040E577"
    %endif
    times 5 - ($ - %%insn_0040e577) db 0
    %%insn_0040e57c:
    push eax ; 0040E57C 50
    %if ($ - %%insn_0040e57c) > 1
        %error "LONG_0040E57C"
    %endif
    times 1 - ($ - %%insn_0040e57c) db 0
    %%insn_0040e57d:
    push edi ; 0040E57D 57
    %if ($ - %%insn_0040e57d) > 1
        %error "LONG_0040E57D"
    %endif
    times 1 - ($ - %%insn_0040e57d) db 0
    %%insn_0040e57e:
    mov [esp+0x20],eax ; 0040E57E 89442420
    %if ($ - %%insn_0040e57e) > 4
        %error "LONG_0040E57E"
    %endif
    times 4 - ($ - %%insn_0040e57e) db 0
    %%insn_0040e582:
    call dword near [0x4243ec] ; 0040E582 FF15EC434200
    %if ($ - %%insn_0040e582) > 6
        %error "LONG_0040E582"
    %endif
    times 6 - ($ - %%insn_0040e582) db 0
    db 0x3B, 0xC7 ; 0040E588 3BC7 | cmp eax,edi | encoding preserved
    %%insn_0040e58a:
    jnz 0x40e65b ; 0040E58A 0F85CB000000
    %if ($ - %%insn_0040e58a) > 6
        %error "LONG_0040E58A"
    %endif
    times 6 - ($ - %%insn_0040e58a) db 0
    %%insn_0040e590:
    mov edx,[esp+0x18] ; 0040E590 8B542418
    %if ($ - %%insn_0040e590) > 4
        %error "LONG_0040E590"
    %endif
    times 4 - ($ - %%insn_0040e590) db 0
    %%insn_0040e594:
    mov eax,[esp+0x10] ; 0040E594 8B442410
    %if ($ - %%insn_0040e594) > 4
        %error "LONG_0040E594"
    %endif
    times 4 - ($ - %%insn_0040e594) db 0
    db 0x33, 0xC9 ; 0040E598 33C9 | xor ecx,ecx | encoding preserved
    %%insn_0040e59a:
    test esi,esi ; 0040E59A 85F6
    %if ($ - %%insn_0040e59a) > 2
        %error "LONG_0040E59A"
    %endif
    times 2 - ($ - %%insn_0040e59a) db 0
    db 0x8B, 0xCA ; 0040E59C 8BCA | mov ecx,edx | encoding preserved
    %%insn_0040e59e:
    jng short 0x40e5d2 ; 0040E59E 7E32
    %if ($ - %%insn_0040e59e) > 2
        %error "LONG_0040E59E"
    %endif
    times 2 - ($ - %%insn_0040e59e) db 0
    %%insn_0040e5a0:
    lea eax,[edi+0x4] ; 0040E5A0 8D4704
    %if ($ - %%insn_0040e5a0) > 3
        %error "LONG_0040E5A0"
    %endif
    times 3 - ($ - %%insn_0040e5a0) db 0
    %%insn_0040e5a3:
    lea edx,[eax+0x4] ; 0040E5A3 8D5004
    %if ($ - %%insn_0040e5a3) > 3
        %error "LONG_0040E5A3"
    %endif
    times 3 - ($ - %%insn_0040e5a3) db 0
    %%insn_0040e5a6:
    mov dword [eax],0xf0 ; 0040E5A6 C700F0000000
    %if ($ - %%insn_0040e5a6) > 6
        %error "LONG_0040E5A6"
    %endif
    times 6 - ($ - %%insn_0040e5a6) db 0
    %%insn_0040e5ac:
    mov [eax-0x4],edx ; 0040E5AC 8950FC
    %if ($ - %%insn_0040e5ac) > 3
        %error "LONG_0040E5AC"
    %endif
    times 3 - ($ - %%insn_0040e5ac) db 0
    %%insn_0040e5af:
    mov byte [eax+0xf4],0xff ; 0040E5AF C680F4000000FF
    %if ($ - %%insn_0040e5af) > 7
        %error "LONG_0040E5AF"
    %endif
    times 7 - ($ - %%insn_0040e5af) db 0
    %%insn_0040e5b6:
    mov dword [ecx],0xf0 ; 0040E5B6 C701F0000000
    %if ($ - %%insn_0040e5b6) > 6
        %error "LONG_0040E5B6"
    %endif
    times 6 - ($ - %%insn_0040e5b6) db 0
    %%insn_0040e5bc:
    mov dword [ecx+0x4],0xf1 ; 0040E5BC C74104F1000000
    %if ($ - %%insn_0040e5bc) > 7
        %error "LONG_0040E5BC"
    %endif
    times 7 - ($ - %%insn_0040e5bc) db 0
    %%insn_0040e5c3:
    add eax,0x1000 ; 0040E5C3 0500100000
    %if ($ - %%insn_0040e5c3) > 5
        %error "LONG_0040E5C3"
    %endif
    times 5 - ($ - %%insn_0040e5c3) db 0
    %%insn_0040e5c8:
    add ecx,0x8 ; 0040E5C8 83C108
    %if ($ - %%insn_0040e5c8) > 3
        %error "LONG_0040E5C8"
    %endif
    times 3 - ($ - %%insn_0040e5c8) db 0
    %%insn_0040e5cb:
    dec esi ; 0040E5CB 4E
    %if ($ - %%insn_0040e5cb) > 1
        %error "LONG_0040E5CB"
    %endif
    times 1 - ($ - %%insn_0040e5cb) db 0
    %%insn_0040e5cc:
    jnz short 0x40e5a3 ; 0040E5CC 75D5
    %if ($ - %%insn_0040e5cc) > 2
        %error "LONG_0040E5CC"
    %endif
    times 2 - ($ - %%insn_0040e5cc) db 0
    %%insn_0040e5ce:
    mov edx,[esp+0x18] ; 0040E5CE 8B542418
    %if ($ - %%insn_0040e5ce) > 4
        %error "LONG_0040E5CE"
    %endif
    times 4 - ($ - %%insn_0040e5ce) db 0
    %%insn_0040e5d2:
    lea eax,[ebp+0x2018] ; 0040E5D2 8D8518200000
    %if ($ - %%insn_0040e5d2) > 6
        %error "LONG_0040E5D2"
    %endif
    times 6 - ($ - %%insn_0040e5d2) db 0
    %%insn_0040e5d8:
    mov [0x41de80],ebp ; 0040E5D8 892D80DE4100
    %if ($ - %%insn_0040e5d8) > 6
        %error "LONG_0040E5D8"
    %endif
    times 6 - ($ - %%insn_0040e5d8) db 0
    db 0x3B, 0xC8 ; 0040E5DE 3BC8 | cmp ecx,eax | encoding preserved
    %%insn_0040e5e0:
    jnc short 0x40e5f0 ; 0040E5E0 730E
    %if ($ - %%insn_0040e5e0) > 2
        %error "LONG_0040E5E0"
    %endif
    times 2 - ($ - %%insn_0040e5e0) db 0
    %%insn_0040e5e2:
    cmp dword [ecx],0xffffffffffffffff ; 0040E5E2 8339FF
    %if ($ - %%insn_0040e5e2) > 3
        %error "LONG_0040E5E2"
    %endif
    times 3 - ($ - %%insn_0040e5e2) db 0
    %%insn_0040e5e5:
    jz short 0x40e5ee ; 0040E5E5 7407
    %if ($ - %%insn_0040e5e5) > 2
        %error "LONG_0040E5E5"
    %endif
    times 2 - ($ - %%insn_0040e5e5) db 0
    %%insn_0040e5e7:
    add ecx,0x8 ; 0040E5E7 83C108
    %if ($ - %%insn_0040e5e7) > 3
        %error "LONG_0040E5E7"
    %endif
    times 3 - ($ - %%insn_0040e5e7) db 0
    db 0x3B, 0xC8 ; 0040E5EA 3BC8 | cmp ecx,eax | encoding preserved
    %%insn_0040e5ec:
    jc short 0x40e5e2 ; 0040E5EC 72F4
    %if ($ - %%insn_0040e5ec) > 2
        %error "LONG_0040E5EC"
    %endif
    times 2 - ($ - %%insn_0040e5ec) db 0
    db 0x3B, 0xC8 ; 0040E5EE 3BC8 | cmp ecx,eax | encoding preserved
    db 0x1B, 0xC0 ; 0040E5F0 1BC0 | sbb eax,eax | encoding preserved
    db 0x23, 0xC1 ; 0040E5F2 23C1 | and eax,ecx | encoding preserved
    %%insn_0040e5f4:
    mov [ebp+0xc],eax ; 0040E5F4 89450C
    %if ($ - %%insn_0040e5f4) > 3
        %error "LONG_0040E5F4"
    %endif
    times 3 - ($ - %%insn_0040e5f4) db 0
    %%insn_0040e5f7:
    mov [edi+0x8],bl ; 0040E5F7 885F08
    %if ($ - %%insn_0040e5f7) > 3
        %error "LONG_0040E5F7"
    %endif
    times 3 - ($ - %%insn_0040e5f7) db 0
    %%insn_0040e5fa:
    mov [ebp+0x8],edx ; 0040E5FA 895508
    %if ($ - %%insn_0040e5fa) > 3
        %error "LONG_0040E5FA"
    %endif
    times 3 - ($ - %%insn_0040e5fa) db 0
    %%insn_0040e5fd:
    mov ecx,[edx] ; 0040E5FD 8B0A
    %if ($ - %%insn_0040e5fd) > 2
        %error "LONG_0040E5FD"
    %endif
    times 2 - ($ - %%insn_0040e5fd) db 0
    db 0x2B, 0xCB ; 0040E5FF 2BCB | sub ecx,ebx | encoding preserved
    %%insn_0040e601:
    mov [edx],ecx ; 0040E601 890A
    %if ($ - %%insn_0040e601) > 2
        %error "LONG_0040E601"
    %endif
    times 2 - ($ - %%insn_0040e601) db 0
    %%insn_0040e603:
    mov eax,[edi+0x4] ; 0040E603 8B4704
    %if ($ - %%insn_0040e603) > 3
        %error "LONG_0040E603"
    %endif
    times 3 - ($ - %%insn_0040e603) db 0
    db 0x2B, 0xC3 ; 0040E606 2BC3 | sub eax,ebx | encoding preserved
    %%insn_0040e608:
    lea ecx,[edi+ebx+0x8] ; 0040E608 8D4C1F08
    %if ($ - %%insn_0040e608) > 4
        %error "LONG_0040E608"
    %endif
    times 4 - ($ - %%insn_0040e608) db 0
    %%insn_0040e60c:
    mov [edi+0x4],eax ; 0040E60C 894704
    %if ($ - %%insn_0040e60c) > 3
        %error "LONG_0040E60C"
    %endif
    times 3 - ($ - %%insn_0040e60c) db 0
    %%insn_0040e60f:
    mov [edi],ecx ; 0040E60F 890F
    %if ($ - %%insn_0040e60f) > 2
        %error "LONG_0040E60F"
    %endif
    times 2 - ($ - %%insn_0040e60f) db 0
    %%insn_0040e611:
    lea eax,[edi+0x100] ; 0040E611 8D8700010000
    %if ($ - %%insn_0040e611) > 6
        %error "LONG_0040E611"
    %endif
    times 6 - ($ - %%insn_0040e611) db 0
    %%insn_0040e617:
    pop edi ; 0040E617 5F
    %if ($ - %%insn_0040e617) > 1
        %error "LONG_0040E617"
    %endif
    times 1 - ($ - %%insn_0040e617) db 0
    %%insn_0040e618:
    pop esi ; 0040E618 5E
    %if ($ - %%insn_0040e618) > 1
        %error "LONG_0040E618"
    %endif
    times 1 - ($ - %%insn_0040e618) db 0
    %%insn_0040e619:
    pop ebp ; 0040E619 5D
    %if ($ - %%insn_0040e619) > 1
        %error "LONG_0040E619"
    %endif
    times 1 - ($ - %%insn_0040e619) db 0
    %%insn_0040e61a:
    pop ebx ; 0040E61A 5B
    %if ($ - %%insn_0040e61a) > 1
        %error "LONG_0040E61A"
    %endif
    times 1 - ($ - %%insn_0040e61a) db 0
    %%insn_0040e61b:
    pop ecx ; 0040E61B 59
    %if ($ - %%insn_0040e61b) > 1
        %error "LONG_0040E61B"
    %endif
    times 1 - ($ - %%insn_0040e61b) db 0
    %%insn_0040e61c:
    ret ; 0040E61C C3
    %if ($ - %%insn_0040e61c) > 1
        %error "LONG_0040E61C"
    %endif
    times 1 - ($ - %%insn_0040e61c) db 0
    %%insn_0040e61d:
    call 0x40e0d0 ; 0040E61D E8AEFAFFFF
    %if ($ - %%insn_0040e61d) > 5
        %error "LONG_0040E61D"
    %endif
    times 5 - ($ - %%insn_0040e61d) db 0
    %%insn_0040e622:
    test eax,eax ; 0040E622 85C0
    %if ($ - %%insn_0040e622) > 2
        %error "LONG_0040E622"
    %endif
    times 2 - ($ - %%insn_0040e622) db 0
    %%insn_0040e624:
    jz short 0x40e65b ; 0040E624 7435
    %if ($ - %%insn_0040e624) > 2
        %error "LONG_0040E624"
    %endif
    times 2 - ($ - %%insn_0040e624) db 0
    %%insn_0040e626:
    mov ecx,[eax+0x10] ; 0040E626 8B4810
    %if ($ - %%insn_0040e626) > 3
        %error "LONG_0040E626"
    %endif
    times 3 - ($ - %%insn_0040e626) db 0
    %%insn_0040e629:
    mov [ecx+0x8],bl ; 0040E629 885908
    %if ($ - %%insn_0040e629) > 3
        %error "LONG_0040E629"
    %endif
    times 3 - ($ - %%insn_0040e629) db 0
    %%insn_0040e62c:
    lea edx,[ecx+ebx+0x8] ; 0040E62C 8D541908
    %if ($ - %%insn_0040e62c) > 4
        %error "LONG_0040E62C"
    %endif
    times 4 - ($ - %%insn_0040e62c) db 0
    %%insn_0040e630:
    mov [0x41de80],eax ; 0040E630 A380DE4100
    %if ($ - %%insn_0040e630) > 5
        %error "LONG_0040E630"
    %endif
    times 5 - ($ - %%insn_0040e630) db 0
    %%insn_0040e635:
    mov [ecx],edx ; 0040E635 8911
    %if ($ - %%insn_0040e635) > 2
        %error "LONG_0040E635"
    %endif
    times 2 - ($ - %%insn_0040e635) db 0
    %%insn_0040e637:
    mov edx,0xf0 ; 0040E637 BAF0000000
    %if ($ - %%insn_0040e637) > 5
        %error "LONG_0040E637"
    %endif
    times 5 - ($ - %%insn_0040e637) db 0
    db 0x2B, 0xD3 ; 0040E63C 2BD3 | sub edx,ebx | encoding preserved
    %%insn_0040e63e:
    and ebx,0xff ; 0040E63E 81E3FF000000
    %if ($ - %%insn_0040e63e) > 6
        %error "LONG_0040E63E"
    %endif
    times 6 - ($ - %%insn_0040e63e) db 0
    %%insn_0040e644:
    mov [ecx+0x4],edx ; 0040E644 895104
    %if ($ - %%insn_0040e644) > 3
        %error "LONG_0040E644"
    %endif
    times 3 - ($ - %%insn_0040e644) db 0
    %%insn_0040e647:
    mov edx,[eax+0x18] ; 0040E647 8B5018
    %if ($ - %%insn_0040e647) > 3
        %error "LONG_0040E647"
    %endif
    times 3 - ($ - %%insn_0040e647) db 0
    db 0x2B, 0xD3 ; 0040E64A 2BD3 | sub edx,ebx | encoding preserved
    %%insn_0040e64c:
    mov [eax+0x18],edx ; 0040E64C 895018
    %if ($ - %%insn_0040e64c) > 3
        %error "LONG_0040E64C"
    %endif
    times 3 - ($ - %%insn_0040e64c) db 0
    %%insn_0040e64f:
    lea eax,[ecx+0x100] ; 0040E64F 8D8100010000
    %if ($ - %%insn_0040e64f) > 6
        %error "LONG_0040E64F"
    %endif
    times 6 - ($ - %%insn_0040e64f) db 0
    %%insn_0040e655:
    pop edi ; 0040E655 5F
    %if ($ - %%insn_0040e655) > 1
        %error "LONG_0040E655"
    %endif
    times 1 - ($ - %%insn_0040e655) db 0
    %%insn_0040e656:
    pop esi ; 0040E656 5E
    %if ($ - %%insn_0040e656) > 1
        %error "LONG_0040E656"
    %endif
    times 1 - ($ - %%insn_0040e656) db 0
    %%insn_0040e657:
    pop ebp ; 0040E657 5D
    %if ($ - %%insn_0040e657) > 1
        %error "LONG_0040E657"
    %endif
    times 1 - ($ - %%insn_0040e657) db 0
    %%insn_0040e658:
    pop ebx ; 0040E658 5B
    %if ($ - %%insn_0040e658) > 1
        %error "LONG_0040E658"
    %endif
    times 1 - ($ - %%insn_0040e658) db 0
    %%insn_0040e659:
    pop ecx ; 0040E659 59
    %if ($ - %%insn_0040e659) > 1
        %error "LONG_0040E659"
    %endif
    times 1 - ($ - %%insn_0040e659) db 0
    %%insn_0040e65a:
    ret ; 0040E65A C3
    %if ($ - %%insn_0040e65a) > 1
        %error "LONG_0040E65A"
    %endif
    times 1 - ($ - %%insn_0040e65a) db 0
    %%insn_0040e65b:
    pop edi ; 0040E65B 5F
    %if ($ - %%insn_0040e65b) > 1
        %error "LONG_0040E65B"
    %endif
    times 1 - ($ - %%insn_0040e65b) db 0
    %%insn_0040e65c:
    pop esi ; 0040E65C 5E
    %if ($ - %%insn_0040e65c) > 1
        %error "LONG_0040E65C"
    %endif
    times 1 - ($ - %%insn_0040e65c) db 0
    %%insn_0040e65d:
    pop ebp ; 0040E65D 5D
    %if ($ - %%insn_0040e65d) > 1
        %error "LONG_0040E65D"
    %endif
    times 1 - ($ - %%insn_0040e65d) db 0
    db 0x33, 0xC0 ; 0040E65E 33C0 | xor eax,eax | encoding preserved
    %%insn_0040e660:
    pop ebx ; 0040E660 5B
    %if ($ - %%insn_0040e660) > 1
        %error "LONG_0040E660"
    %endif
    times 1 - ($ - %%insn_0040e660) db 0
    %%insn_0040e661:
    pop ecx ; 0040E661 59
    %if ($ - %%insn_0040e661) > 1
        %error "LONG_0040E661"
    %endif
    times 1 - ($ - %%insn_0040e661) db 0
    %%insn_0040e662:
    ret ; 0040E662 C3
    %if ($ - %%insn_0040e662) > 1
        %error "LONG_0040E662"
    %endif
    times 1 - ($ - %%insn_0040e662) db 0
    %if ($ - %%fragment_start) != 563
        %error "function fragment size drift: 0040E430"
    %endif
%endmacro
