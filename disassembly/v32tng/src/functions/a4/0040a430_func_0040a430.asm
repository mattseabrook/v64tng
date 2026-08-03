; PE virtual entry 0040A430
; Ghidra working symbol: FUN_0040a430
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040a430_part_00 0
    %%fragment_start:
func_0040a430:
    %%insn_0040a430:
    push ebp ; 0040A430 55
    %if ($ - %%insn_0040a430) > 1
        %error "LONG_0040A430"
    %endif
    times 1 - ($ - %%insn_0040a430) db 0
    db 0x8B, 0xEC ; 0040A431 8BEC | mov ebp,esp | encoding preserved
    %%insn_0040a433:
    sub esp,0x34 ; 0040A433 83EC34
    %if ($ - %%insn_0040a433) > 3
        %error "LONG_0040A433"
    %endif
    times 3 - ($ - %%insn_0040a433) db 0
    %%insn_0040a436:
    push dword 0xf ; 0040A436 6A0F
    %if ($ - %%insn_0040a436) > 2
        %error "LONG_0040A436"
    %endif
    times 2 - ($ - %%insn_0040a436) db 0
    %%insn_0040a438:
    push dword 0x0 ; 0040A438 6A00
    %if ($ - %%insn_0040a438) > 2
        %error "LONG_0040A438"
    %endif
    times 2 - ($ - %%insn_0040a438) db 0
    %%insn_0040a43a:
    lea eax,[ebp-0x18] ; 0040A43A 8D45E8
    %if ($ - %%insn_0040a43a) > 3
        %error "LONG_0040A43A"
    %endif
    times 3 - ($ - %%insn_0040a43a) db 0
    %%insn_0040a43d:
    push eax ; 0040A43D 50
    %if ($ - %%insn_0040a43d) > 1
        %error "LONG_0040A43D"
    %endif
    times 1 - ($ - %%insn_0040a43d) db 0
    %%insn_0040a43e:
    call 0x40d470 ; 0040A43E E82D300000
    %if ($ - %%insn_0040a43e) > 5
        %error "LONG_0040A43E"
    %endif
    times 5 - ($ - %%insn_0040a43e) db 0
    %%insn_0040a443:
    add esp,0xc ; 0040A443 83C40C
    %if ($ - %%insn_0040a443) > 3
        %error "LONG_0040A443"
    %endif
    times 3 - ($ - %%insn_0040a443) db 0
    %%insn_0040a446:
    push dword 0xc800 ; 0040A446 6800C80000
    %if ($ - %%insn_0040a446) > 5
        %error "LONG_0040A446"
    %endif
    times 5 - ($ - %%insn_0040a446) db 0
    %%insn_0040a44b:
    push dword 0x0 ; 0040A44B 6A00
    %if ($ - %%insn_0040a44b) > 2
        %error "LONG_0040A44B"
    %endif
    times 2 - ($ - %%insn_0040a44b) db 0
    %%insn_0040a44d:
    mov ecx,[0x42133c] ; 0040A44D 8B0D3C134200
    %if ($ - %%insn_0040a44d) > 6
        %error "LONG_0040A44D"
    %endif
    times 6 - ($ - %%insn_0040a44d) db 0
    %%insn_0040a453:
    push ecx ; 0040A453 51
    %if ($ - %%insn_0040a453) > 1
        %error "LONG_0040A453"
    %endif
    times 1 - ($ - %%insn_0040a453) db 0
    %%insn_0040a454:
    call 0x40d470 ; 0040A454 E817300000
    %if ($ - %%insn_0040a454) > 5
        %error "LONG_0040A454"
    %endif
    times 5 - ($ - %%insn_0040a454) db 0
    %%insn_0040a459:
    add esp,0xc ; 0040A459 83C40C
    %if ($ - %%insn_0040a459) > 3
        %error "LONG_0040A459"
    %endif
    times 3 - ($ - %%insn_0040a459) db 0
    %%insn_0040a45c:
    mov dword [ebp-0x28],0x0 ; 0040A45C C745D800000000
    %if ($ - %%insn_0040a45c) > 7
        %error "LONG_0040A45C"
    %endif
    times 7 - ($ - %%insn_0040a45c) db 0
    %%insn_0040a463:
    jmp short 0x40a46e ; 0040A463 EB09
    %if ($ - %%insn_0040a463) > 2
        %error "LONG_0040A463"
    %endif
    times 2 - ($ - %%insn_0040a463) db 0
    %%insn_0040a465:
    mov edx,[ebp-0x28] ; 0040A465 8B55D8
    %if ($ - %%insn_0040a465) > 3
        %error "LONG_0040A465"
    %endif
    times 3 - ($ - %%insn_0040a465) db 0
    %%insn_0040a468:
    add edx,0x1 ; 0040A468 83C201
    %if ($ - %%insn_0040a468) > 3
        %error "LONG_0040A468"
    %endif
    times 3 - ($ - %%insn_0040a468) db 0
    %%insn_0040a46b:
    mov [ebp-0x28],edx ; 0040A46B 8955D8
    %if ($ - %%insn_0040a46b) > 3
        %error "LONG_0040A46B"
    %endif
    times 3 - ($ - %%insn_0040a46b) db 0
    %%insn_0040a46e:
    cmp dword [ebp-0x28],0xe ; 0040A46E 837DD80E
    %if ($ - %%insn_0040a46e) > 4
        %error "LONG_0040A46E"
    %endif
    times 4 - ($ - %%insn_0040a46e) db 0
    %%insn_0040a472:
    jnc short 0x40a4a0 ; 0040A472 732C
    %if ($ - %%insn_0040a472) > 2
        %error "LONG_0040A472"
    %endif
    times 2 - ($ - %%insn_0040a472) db 0
    %%insn_0040a474:
    mov eax,[ebp+0x1c] ; 0040A474 8B451C
    %if ($ - %%insn_0040a474) > 3
        %error "LONG_0040A474"
    %endif
    times 3 - ($ - %%insn_0040a474) db 0
    %%insn_0040a477:
    add eax,[ebp-0x28] ; 0040A477 0345D8
    %if ($ - %%insn_0040a477) > 3
        %error "LONG_0040A477"
    %endif
    times 3 - ($ - %%insn_0040a477) db 0
    %%insn_0040a47a:
    movsx ecx,byte [eax] ; 0040A47A 0FBE08
    %if ($ - %%insn_0040a47a) > 3
        %error "LONG_0040A47A"
    %endif
    times 3 - ($ - %%insn_0040a47a) db 0
    %%insn_0040a47d:
    cmp ecx,0x24 ; 0040A47D 83F924
    %if ($ - %%insn_0040a47d) > 3
        %error "LONG_0040A47D"
    %endif
    times 3 - ($ - %%insn_0040a47d) db 0
    %%insn_0040a480:
    jz short 0x40a4a0 ; 0040A480 741E
    %if ($ - %%insn_0040a480) > 2
        %error "LONG_0040A480"
    %endif
    times 2 - ($ - %%insn_0040a480) db 0
    %%insn_0040a482:
    mov edx,[ebp+0x1c] ; 0040A482 8B551C
    %if ($ - %%insn_0040a482) > 3
        %error "LONG_0040A482"
    %endif
    times 3 - ($ - %%insn_0040a482) db 0
    %%insn_0040a485:
    add edx,[ebp-0x28] ; 0040A485 0355D8
    %if ($ - %%insn_0040a485) > 3
        %error "LONG_0040A485"
    %endif
    times 3 - ($ - %%insn_0040a485) db 0
    %%insn_0040a488:
    movsx eax,byte [edx] ; 0040A488 0FBE02
    %if ($ - %%insn_0040a488) > 3
        %error "LONG_0040A488"
    %endif
    times 3 - ($ - %%insn_0040a488) db 0
    %%insn_0040a48b:
    test eax,eax ; 0040A48B 85C0
    %if ($ - %%insn_0040a48b) > 2
        %error "LONG_0040A48B"
    %endif
    times 2 - ($ - %%insn_0040a48b) db 0
    %%insn_0040a48d:
    jz short 0x40a4a0 ; 0040A48D 7411
    %if ($ - %%insn_0040a48d) > 2
        %error "LONG_0040A48D"
    %endif
    times 2 - ($ - %%insn_0040a48d) db 0
    %%insn_0040a48f:
    mov ecx,[ebp+0x1c] ; 0040A48F 8B4D1C
    %if ($ - %%insn_0040a48f) > 3
        %error "LONG_0040A48F"
    %endif
    times 3 - ($ - %%insn_0040a48f) db 0
    %%insn_0040a492:
    add ecx,[ebp-0x28] ; 0040A492 034DD8
    %if ($ - %%insn_0040a492) > 3
        %error "LONG_0040A492"
    %endif
    times 3 - ($ - %%insn_0040a492) db 0
    %%insn_0040a495:
    mov edx,[ebp-0x28] ; 0040A495 8B55D8
    %if ($ - %%insn_0040a495) > 3
        %error "LONG_0040A495"
    %endif
    times 3 - ($ - %%insn_0040a495) db 0
    %%insn_0040a498:
    mov al,[ecx] ; 0040A498 8A01
    %if ($ - %%insn_0040a498) > 2
        %error "LONG_0040A498"
    %endif
    times 2 - ($ - %%insn_0040a498) db 0
    %%insn_0040a49a:
    mov [ebp+edx-0x18],al ; 0040A49A 884415E8
    %if ($ - %%insn_0040a49a) > 4
        %error "LONG_0040A49A"
    %endif
    times 4 - ($ - %%insn_0040a49a) db 0
    %%insn_0040a49e:
    jmp short 0x40a465 ; 0040A49E EBC5
    %if ($ - %%insn_0040a49e) > 2
        %error "LONG_0040A49E"
    %endif
    times 2 - ($ - %%insn_0040a49e) db 0
    %%insn_0040a4a0:
    cmp dword [0x420e48],0x0 ; 0040A4A0 833D480E420000
    %if ($ - %%insn_0040a4a0) > 7
        %error "LONG_0040A4A0"
    %endif
    times 7 - ($ - %%insn_0040a4a0) db 0
    %%insn_0040a4a7:
    jnz short 0x40a509 ; 0040A4A7 7560
    %if ($ - %%insn_0040a4a7) > 2
        %error "LONG_0040A4A7"
    %endif
    times 2 - ($ - %%insn_0040a4a7) db 0
    %%insn_0040a4a9:
    push dword 0x2b68 ; 0040A4A9 68682B0000
    %if ($ - %%insn_0040a4a9) > 5
        %error "LONG_0040A4A9"
    %endif
    times 5 - ($ - %%insn_0040a4a9) db 0
    %%insn_0040a4ae:
    call 0x40cdc0 ; 0040A4AE E80D290000
    %if ($ - %%insn_0040a4ae) > 5
        %error "LONG_0040A4AE"
    %endif
    times 5 - ($ - %%insn_0040a4ae) db 0
    %%insn_0040a4b3:
    add esp,0x4 ; 0040A4B3 83C404
    %if ($ - %%insn_0040a4b3) > 3
        %error "LONG_0040A4B3"
    %endif
    times 3 - ($ - %%insn_0040a4b3) db 0
    %%insn_0040a4b6:
    mov [0x420e48],eax ; 0040A4B6 A3480E4200
    %if ($ - %%insn_0040a4b6) > 5
        %error "LONG_0040A4B6"
    %endif
    times 5 - ($ - %%insn_0040a4b6) db 0
    %%insn_0040a4bb:
    push dword 0x41bd48 ; 0040A4BB 6848BD4100
    %if ($ - %%insn_0040a4bb) > 5
        %error "LONG_0040A4BB"
    %endif
    times 5 - ($ - %%insn_0040a4bb) db 0
    %%insn_0040a4c0:
    push dword 0x41bd4c ; 0040A4C0 684CBD4100
    %if ($ - %%insn_0040a4c0) > 5
        %error "LONG_0040A4C0"
    %endif
    times 5 - ($ - %%insn_0040a4c0) db 0
    %%insn_0040a4c5:
    call 0x40d150 ; 0040A4C5 E8862C0000
    %if ($ - %%insn_0040a4c5) > 5
        %error "LONG_0040A4C5"
    %endif
    times 5 - ($ - %%insn_0040a4c5) db 0
    %%insn_0040a4ca:
    add esp,0x8 ; 0040A4CA 83C408
    %if ($ - %%insn_0040a4ca) > 3
        %error "LONG_0040A4CA"
    %endif
    times 3 - ($ - %%insn_0040a4ca) db 0
    %%insn_0040a4cd:
    mov [ebp-0x34],eax ; 0040A4CD 8945CC
    %if ($ - %%insn_0040a4cd) > 3
        %error "LONG_0040A4CD"
    %endif
    times 3 - ($ - %%insn_0040a4cd) db 0
    %%insn_0040a4d0:
    cmp dword [ebp-0x34],0x0 ; 0040A4D0 837DCC00
    %if ($ - %%insn_0040a4d0) > 4
        %error "LONG_0040A4D0"
    %endif
    times 4 - ($ - %%insn_0040a4d0) db 0
    %%insn_0040a4d4:
    jnz short 0x40a4e3 ; 0040A4D4 750D
    %if ($ - %%insn_0040a4d4) > 2
        %error "LONG_0040A4D4"
    %endif
    times 2 - ($ - %%insn_0040a4d4) db 0
    %%insn_0040a4d6:
    push dword 0x41bd58 ; 0040A4D6 6858BD4100
    %if ($ - %%insn_0040a4d6) > 5
        %error "LONG_0040A4D6"
    %endif
    times 5 - ($ - %%insn_0040a4d6) db 0
    %%insn_0040a4db:
    call 0x409760 ; 0040A4DB E880F2FFFF
    %if ($ - %%insn_0040a4db) > 5
        %error "LONG_0040A4DB"
    %endif
    times 5 - ($ - %%insn_0040a4db) db 0
    %%insn_0040a4e0:
    add esp,0x4 ; 0040A4E0 83C404
    %if ($ - %%insn_0040a4e0) > 3
        %error "LONG_0040A4E0"
    %endif
    times 3 - ($ - %%insn_0040a4e0) db 0
    %%insn_0040a4e3:
    mov ecx,[ebp-0x34] ; 0040A4E3 8B4DCC
    %if ($ - %%insn_0040a4e3) > 3
        %error "LONG_0040A4E3"
    %endif
    times 3 - ($ - %%insn_0040a4e3) db 0
    %%insn_0040a4e6:
    push ecx ; 0040A4E6 51
    %if ($ - %%insn_0040a4e6) > 1
        %error "LONG_0040A4E6"
    %endif
    times 1 - ($ - %%insn_0040a4e6) db 0
    %%insn_0040a4e7:
    push dword 0x1 ; 0040A4E7 6A01
    %if ($ - %%insn_0040a4e7) > 2
        %error "LONG_0040A4E7"
    %endif
    times 2 - ($ - %%insn_0040a4e7) db 0
    %%insn_0040a4e9:
    push dword 0x2b68 ; 0040A4E9 68682B0000
    %if ($ - %%insn_0040a4e9) > 5
        %error "LONG_0040A4E9"
    %endif
    times 5 - ($ - %%insn_0040a4e9) db 0
    %%insn_0040a4ee:
    mov edx,[0x420e48] ; 0040A4EE 8B15480E4200
    %if ($ - %%insn_0040a4ee) > 6
        %error "LONG_0040A4EE"
    %endif
    times 6 - ($ - %%insn_0040a4ee) db 0
    %%insn_0040a4f4:
    push edx ; 0040A4F4 52
    %if ($ - %%insn_0040a4f4) > 1
        %error "LONG_0040A4F4"
    %endif
    times 1 - ($ - %%insn_0040a4f4) db 0
    %%insn_0040a4f5:
    call 0x40d170 ; 0040A4F5 E8762C0000
    %if ($ - %%insn_0040a4f5) > 5
        %error "LONG_0040A4F5"
    %endif
    times 5 - ($ - %%insn_0040a4f5) db 0
    %%insn_0040a4fa:
    add esp,0x10 ; 0040A4FA 83C410
    %if ($ - %%insn_0040a4fa) > 3
        %error "LONG_0040A4FA"
    %endif
    times 3 - ($ - %%insn_0040a4fa) db 0
    %%insn_0040a4fd:
    mov eax,[ebp-0x34] ; 0040A4FD 8B45CC
    %if ($ - %%insn_0040a4fd) > 3
        %error "LONG_0040A4FD"
    %endif
    times 3 - ($ - %%insn_0040a4fd) db 0
    %%insn_0040a500:
    push eax ; 0040A500 50
    %if ($ - %%insn_0040a500) > 1
        %error "LONG_0040A500"
    %endif
    times 1 - ($ - %%insn_0040a500) db 0
    %%insn_0040a501:
    call 0x40ced0 ; 0040A501 E8CA290000
    %if ($ - %%insn_0040a501) > 5
        %error "LONG_0040A501"
    %endif
    times 5 - ($ - %%insn_0040a501) db 0
    %%insn_0040a506:
    add esp,0x4 ; 0040A506 83C404
    %if ($ - %%insn_0040a506) > 3
        %error "LONG_0040A506"
    %endif
    times 3 - ($ - %%insn_0040a506) db 0
    %%insn_0040a509:
    mov dword [ebp-0x20],0x0 ; 0040A509 C745E000000000
    %if ($ - %%insn_0040a509) > 7
        %error "LONG_0040A509"
    %endif
    times 7 - ($ - %%insn_0040a509) db 0
    %%insn_0040a510:
    mov dword [ebp-0x28],0x0 ; 0040A510 C745D800000000
    %if ($ - %%insn_0040a510) > 7
        %error "LONG_0040A510"
    %endif
    times 7 - ($ - %%insn_0040a510) db 0
    %%insn_0040a517:
    jmp short 0x40a522 ; 0040A517 EB09
    %if ($ - %%insn_0040a517) > 2
        %error "LONG_0040A517"
    %endif
    times 2 - ($ - %%insn_0040a517) db 0
    %%insn_0040a519:
    mov ecx,[ebp-0x28] ; 0040A519 8B4DD8
    %if ($ - %%insn_0040a519) > 3
        %error "LONG_0040A519"
    %endif
    times 3 - ($ - %%insn_0040a519) db 0
    %%insn_0040a51c:
    add ecx,0x1 ; 0040A51C 83C101
    %if ($ - %%insn_0040a51c) > 3
        %error "LONG_0040A51C"
    %endif
    times 3 - ($ - %%insn_0040a51c) db 0
    %%insn_0040a51f:
    mov [ebp-0x28],ecx ; 0040A51F 894DD8
    %if ($ - %%insn_0040a51f) > 3
        %error "LONG_0040A51F"
    %endif
    times 3 - ($ - %%insn_0040a51f) db 0
    %%insn_0040a522:
    lea edx,[ebp-0x18] ; 0040A522 8D55E8
    %if ($ - %%insn_0040a522) > 3
        %error "LONG_0040A522"
    %endif
    times 3 - ($ - %%insn_0040a522) db 0
    %%insn_0040a525:
    push edx ; 0040A525 52
    %if ($ - %%insn_0040a525) > 1
        %error "LONG_0040A525"
    %endif
    times 1 - ($ - %%insn_0040a525) db 0
    %%insn_0040a526:
    call 0x40d4d0 ; 0040A526 E8A52F0000
    %if ($ - %%insn_0040a526) > 5
        %error "LONG_0040A526"
    %endif
    times 5 - ($ - %%insn_0040a526) db 0
    %%insn_0040a52b:
    add esp,0x4 ; 0040A52B 83C404
    %if ($ - %%insn_0040a52b) > 3
        %error "LONG_0040A52B"
    %endif
    times 3 - ($ - %%insn_0040a52b) db 0
    %%insn_0040a52e:
    cmp [ebp-0x28],eax ; 0040A52E 3945D8
    %if ($ - %%insn_0040a52e) > 3
        %error "LONG_0040A52E"
    %endif
    times 3 - ($ - %%insn_0040a52e) db 0
    %%insn_0040a531:
    jnc short 0x40a589 ; 0040A531 7356
    %if ($ - %%insn_0040a531) > 2
        %error "LONG_0040A531"
    %endif
    times 2 - ($ - %%insn_0040a531) db 0
    %%insn_0040a533:
    mov eax,[ebp-0x28] ; 0040A533 8B45D8
    %if ($ - %%insn_0040a533) > 3
        %error "LONG_0040A533"
    %endif
    times 3 - ($ - %%insn_0040a533) db 0
    %%insn_0040a536:
    movsx ecx,byte [ebp+eax-0x18] ; 0040A536 0FBE4C05E8
    %if ($ - %%insn_0040a536) > 5
        %error "LONG_0040A536"
    %endif
    times 5 - ($ - %%insn_0040a536) db 0
    %%insn_0040a53b:
    mov edx,[0x420e48] ; 0040A53B 8B15480E4200
    %if ($ - %%insn_0040a53b) > 6
        %error "LONG_0040A53B"
    %endif
    times 6 - ($ - %%insn_0040a53b) db 0
    db 0x33, 0xC0 ; 0040A541 33C0 | xor eax,eax | encoding preserved
    %%insn_0040a543:
    mov al,[edx+ecx] ; 0040A543 8A040A
    %if ($ - %%insn_0040a543) > 3
        %error "LONG_0040A543"
    %endif
    times 3 - ($ - %%insn_0040a543) db 0
    %%insn_0040a546:
    lea ecx,[eax+eax+0x80] ; 0040A546 8D8C0080000000
    %if ($ - %%insn_0040a546) > 7
        %error "LONG_0040A546"
    %endif
    times 7 - ($ - %%insn_0040a546) db 0
    %%insn_0040a54d:
    mov [ebp-0x4],ecx ; 0040A54D 894DFC
    %if ($ - %%insn_0040a54d) > 3
        %error "LONG_0040A54D"
    %endif
    times 3 - ($ - %%insn_0040a54d) db 0
    %%insn_0040a550:
    mov edx,[0x420e48] ; 0040A550 8B15480E4200
    %if ($ - %%insn_0040a550) > 6
        %error "LONG_0040A550"
    %endif
    times 6 - ($ - %%insn_0040a550) db 0
    %%insn_0040a556:
    add edx,[ebp-0x4] ; 0040A556 0355FC
    %if ($ - %%insn_0040a556) > 3
        %error "LONG_0040A556"
    %endif
    times 3 - ($ - %%insn_0040a556) db 0
    db 0x33, 0xC0 ; 0040A559 33C0 | xor eax,eax | encoding preserved
    %%insn_0040a55b:
    mov al,[edx] ; 0040A55B 8A02
    %if ($ - %%insn_0040a55b) > 2
        %error "LONG_0040A55B"
    %endif
    times 2 - ($ - %%insn_0040a55b) db 0
    %%insn_0040a55d:
    mov ecx,[0x420e48] ; 0040A55D 8B0D480E4200
    %if ($ - %%insn_0040a55d) > 6
        %error "LONG_0040A55D"
    %endif
    times 6 - ($ - %%insn_0040a55d) db 0
    %%insn_0040a563:
    add ecx,[ebp-0x4] ; 0040A563 034DFC
    %if ($ - %%insn_0040a563) > 3
        %error "LONG_0040A563"
    %endif
    times 3 - ($ - %%insn_0040a563) db 0
    db 0x33, 0xD2 ; 0040A566 33D2 | xor edx,edx | encoding preserved
    %%insn_0040a568:
    mov dl,[ecx+0x1] ; 0040A568 8A5101
    %if ($ - %%insn_0040a568) > 3
        %error "LONG_0040A568"
    %endif
    times 3 - ($ - %%insn_0040a568) db 0
    %%insn_0040a56b:
    shl edx,byte 0x8 ; 0040A56B C1E208
    %if ($ - %%insn_0040a56b) > 3
        %error "LONG_0040A56B"
    %endif
    times 3 - ($ - %%insn_0040a56b) db 0
    db 0x03, 0xC2 ; 0040A56E 03C2 | add eax,edx | encoding preserved
    %%insn_0040a570:
    mov [ebp-0x8],eax ; 0040A570 8945F8
    %if ($ - %%insn_0040a570) > 3
        %error "LONG_0040A570"
    %endif
    times 3 - ($ - %%insn_0040a570) db 0
    %%insn_0040a573:
    mov eax,[0x420e48] ; 0040A573 A1480E4200
    %if ($ - %%insn_0040a573) > 5
        %error "LONG_0040A573"
    %endif
    times 5 - ($ - %%insn_0040a573) db 0
    %%insn_0040a578:
    add eax,[ebp-0x8] ; 0040A578 0345F8
    %if ($ - %%insn_0040a578) > 3
        %error "LONG_0040A578"
    %endif
    times 3 - ($ - %%insn_0040a578) db 0
    db 0x33, 0xC9 ; 0040A57B 33C9 | xor ecx,ecx | encoding preserved
    %%insn_0040a57d:
    mov cl,[eax] ; 0040A57D 8A08
    %if ($ - %%insn_0040a57d) > 2
        %error "LONG_0040A57D"
    %endif
    times 2 - ($ - %%insn_0040a57d) db 0
    %%insn_0040a57f:
    mov edx,[ebp-0x20] ; 0040A57F 8B55E0
    %if ($ - %%insn_0040a57f) > 3
        %error "LONG_0040A57F"
    %endif
    times 3 - ($ - %%insn_0040a57f) db 0
    db 0x03, 0xD1 ; 0040A582 03D1 | add edx,ecx | encoding preserved
    %%insn_0040a584:
    mov [ebp-0x20],edx ; 0040A584 8955E0
    %if ($ - %%insn_0040a584) > 3
        %error "LONG_0040A584"
    %endif
    times 3 - ($ - %%insn_0040a584) db 0
    %%insn_0040a587:
    jmp short 0x40a519 ; 0040A587 EB90
    %if ($ - %%insn_0040a587) > 2
        %error "LONG_0040A587"
    %endif
    times 2 - ($ - %%insn_0040a587) db 0
    %%insn_0040a589:
    mov eax,0x280 ; 0040A589 B880020000
    %if ($ - %%insn_0040a589) > 5
        %error "LONG_0040A589"
    %endif
    times 5 - ($ - %%insn_0040a589) db 0
    %%insn_0040a58e:
    sub eax,[ebp-0x20] ; 0040A58E 2B45E0
    %if ($ - %%insn_0040a58e) > 3
        %error "LONG_0040A58E"
    %endif
    times 3 - ($ - %%insn_0040a58e) db 0
    %%insn_0040a591:
    shr eax,1 ; 0040A591 D1E8
    %if ($ - %%insn_0040a591) > 2
        %error "LONG_0040A591"
    %endif
    times 2 - ($ - %%insn_0040a591) db 0
    %%insn_0040a593:
    mov ecx,[0x42133c] ; 0040A593 8B0D3C134200
    %if ($ - %%insn_0040a593) > 6
        %error "LONG_0040A593"
    %endif
    times 6 - ($ - %%insn_0040a593) db 0
    %%insn_0040a599:
    lea edx,[ecx+eax+0x2800] ; 0040A599 8D940100280000
    %if ($ - %%insn_0040a599) > 7
        %error "LONG_0040A599"
    %endif
    times 7 - ($ - %%insn_0040a599) db 0
    %%insn_0040a5a0:
    mov [ebp-0x2c],edx ; 0040A5A0 8955D4
    %if ($ - %%insn_0040a5a0) > 3
        %error "LONG_0040A5A0"
    %endif
    times 3 - ($ - %%insn_0040a5a0) db 0
    %%insn_0040a5a3:
    mov dword [ebp-0x28],0x0 ; 0040A5A3 C745D800000000
    %if ($ - %%insn_0040a5a3) > 7
        %error "LONG_0040A5A3"
    %endif
    times 7 - ($ - %%insn_0040a5a3) db 0
    %%insn_0040a5aa:
    jmp short 0x40a5b5 ; 0040A5AA EB09
    %if ($ - %%insn_0040a5aa) > 2
        %error "LONG_0040A5AA"
    %endif
    times 2 - ($ - %%insn_0040a5aa) db 0
    %%insn_0040a5ac:
    mov eax,[ebp-0x28] ; 0040A5AC 8B45D8
    %if ($ - %%insn_0040a5ac) > 3
        %error "LONG_0040A5AC"
    %endif
    times 3 - ($ - %%insn_0040a5ac) db 0
    %%insn_0040a5af:
    add eax,0x1 ; 0040A5AF 83C001
    %if ($ - %%insn_0040a5af) > 3
        %error "LONG_0040A5AF"
    %endif
    times 3 - ($ - %%insn_0040a5af) db 0
    %%insn_0040a5b2:
    mov [ebp-0x28],eax ; 0040A5B2 8945D8
    %if ($ - %%insn_0040a5b2) > 3
        %error "LONG_0040A5B2"
    %endif
    times 3 - ($ - %%insn_0040a5b2) db 0
    %%insn_0040a5b5:
    lea ecx,[ebp-0x18] ; 0040A5B5 8D4DE8
    %if ($ - %%insn_0040a5b5) > 3
        %error "LONG_0040A5B5"
    %endif
    times 3 - ($ - %%insn_0040a5b5) db 0
    %%insn_0040a5b8:
    push ecx ; 0040A5B8 51
    %if ($ - %%insn_0040a5b8) > 1
        %error "LONG_0040A5B8"
    %endif
    times 1 - ($ - %%insn_0040a5b8) db 0
    %%insn_0040a5b9:
    call 0x40d4d0 ; 0040A5B9 E8122F0000
    %if ($ - %%insn_0040a5b9) > 5
        %error "LONG_0040A5B9"
    %endif
    times 5 - ($ - %%insn_0040a5b9) db 0
    %%insn_0040a5be:
    add esp,0x4 ; 0040A5BE 83C404
    %if ($ - %%insn_0040a5be) > 3
        %error "LONG_0040A5BE"
    %endif
    times 3 - ($ - %%insn_0040a5be) db 0
    %%insn_0040a5c1:
    cmp [ebp-0x28],eax ; 0040A5C1 3945D8
    %if ($ - %%insn_0040a5c1) > 3
        %error "LONG_0040A5C1"
    %endif
    times 3 - ($ - %%insn_0040a5c1) db 0
    %%insn_0040a5c4:
    jnc 0x40a6eb ; 0040A5C4 0F8321010000
    %if ($ - %%insn_0040a5c4) > 6
        %error "LONG_0040A5C4"
    %endif
    times 6 - ($ - %%insn_0040a5c4) db 0
    %%insn_0040a5ca:
    mov edx,[ebp-0x28] ; 0040A5CA 8B55D8
    %if ($ - %%insn_0040a5ca) > 3
        %error "LONG_0040A5CA"
    %endif
    times 3 - ($ - %%insn_0040a5ca) db 0
    %%insn_0040a5cd:
    movsx eax,byte [ebp+edx-0x18] ; 0040A5CD 0FBE4415E8
    %if ($ - %%insn_0040a5cd) > 5
        %error "LONG_0040A5CD"
    %endif
    times 5 - ($ - %%insn_0040a5cd) db 0
    %%insn_0040a5d2:
    mov ecx,[0x420e48] ; 0040A5D2 8B0D480E4200
    %if ($ - %%insn_0040a5d2) > 6
        %error "LONG_0040A5D2"
    %endif
    times 6 - ($ - %%insn_0040a5d2) db 0
    db 0x33, 0xD2 ; 0040A5D8 33D2 | xor edx,edx | encoding preserved
    %%insn_0040a5da:
    mov dl,[ecx+eax] ; 0040A5DA 8A1401
    %if ($ - %%insn_0040a5da) > 3
        %error "LONG_0040A5DA"
    %endif
    times 3 - ($ - %%insn_0040a5da) db 0
    %%insn_0040a5dd:
    lea eax,[edx+edx+0x80] ; 0040A5DD 8D841280000000
    %if ($ - %%insn_0040a5dd) > 7
        %error "LONG_0040A5DD"
    %endif
    times 7 - ($ - %%insn_0040a5dd) db 0
    %%insn_0040a5e4:
    mov [ebp-0x4],eax ; 0040A5E4 8945FC
    %if ($ - %%insn_0040a5e4) > 3
        %error "LONG_0040A5E4"
    %endif
    times 3 - ($ - %%insn_0040a5e4) db 0
    %%insn_0040a5e7:
    mov ecx,[0x420e48] ; 0040A5E7 8B0D480E4200
    %if ($ - %%insn_0040a5e7) > 6
        %error "LONG_0040A5E7"
    %endif
    times 6 - ($ - %%insn_0040a5e7) db 0
    %%insn_0040a5ed:
    add ecx,[ebp-0x4] ; 0040A5ED 034DFC
    %if ($ - %%insn_0040a5ed) > 3
        %error "LONG_0040A5ED"
    %endif
    times 3 - ($ - %%insn_0040a5ed) db 0
    db 0x33, 0xD2 ; 0040A5F0 33D2 | xor edx,edx | encoding preserved
    %%insn_0040a5f2:
    mov dl,[ecx] ; 0040A5F2 8A11
    %if ($ - %%insn_0040a5f2) > 2
        %error "LONG_0040A5F2"
    %endif
    times 2 - ($ - %%insn_0040a5f2) db 0
    %%insn_0040a5f4:
    mov eax,[0x420e48] ; 0040A5F4 A1480E4200
    %if ($ - %%insn_0040a5f4) > 5
        %error "LONG_0040A5F4"
    %endif
    times 5 - ($ - %%insn_0040a5f4) db 0
    %%insn_0040a5f9:
    add eax,[ebp-0x4] ; 0040A5F9 0345FC
    %if ($ - %%insn_0040a5f9) > 3
        %error "LONG_0040A5F9"
    %endif
    times 3 - ($ - %%insn_0040a5f9) db 0
    db 0x33, 0xC9 ; 0040A5FC 33C9 | xor ecx,ecx | encoding preserved
    %%insn_0040a5fe:
    mov cl,[eax+0x1] ; 0040A5FE 8A4801
    %if ($ - %%insn_0040a5fe) > 3
        %error "LONG_0040A5FE"
    %endif
    times 3 - ($ - %%insn_0040a5fe) db 0
    %%insn_0040a601:
    shl ecx,byte 0x8 ; 0040A601 C1E108
    %if ($ - %%insn_0040a601) > 3
        %error "LONG_0040A601"
    %endif
    times 3 - ($ - %%insn_0040a601) db 0
    db 0x03, 0xD1 ; 0040A604 03D1 | add edx,ecx | encoding preserved
    %%insn_0040a606:
    mov [ebp-0x8],edx ; 0040A606 8955F8
    %if ($ - %%insn_0040a606) > 3
        %error "LONG_0040A606"
    %endif
    times 3 - ($ - %%insn_0040a606) db 0
    %%insn_0040a609:
    mov edx,[0x420e48] ; 0040A609 8B15480E4200
    %if ($ - %%insn_0040a609) > 6
        %error "LONG_0040A609"
    %endif
    times 6 - ($ - %%insn_0040a609) db 0
    %%insn_0040a60f:
    add edx,[ebp-0x8] ; 0040A60F 0355F8
    %if ($ - %%insn_0040a60f) > 3
        %error "LONG_0040A60F"
    %endif
    times 3 - ($ - %%insn_0040a60f) db 0
    db 0x33, 0xC0 ; 0040A612 33C0 | xor eax,eax | encoding preserved
    %%insn_0040a614:
    mov al,[edx] ; 0040A614 8A02
    %if ($ - %%insn_0040a614) > 2
        %error "LONG_0040A614"
    %endif
    times 2 - ($ - %%insn_0040a614) db 0
    %%insn_0040a616:
    mov [ebp-0x24],eax ; 0040A616 8945DC
    %if ($ - %%insn_0040a616) > 3
        %error "LONG_0040A616"
    %endif
    times 3 - ($ - %%insn_0040a616) db 0
    %%insn_0040a619:
    mov ecx,[ebp-0x8] ; 0040A619 8B4DF8
    %if ($ - %%insn_0040a619) > 3
        %error "LONG_0040A619"
    %endif
    times 3 - ($ - %%insn_0040a619) db 0
    %%insn_0040a61c:
    add ecx,0x1 ; 0040A61C 83C101
    %if ($ - %%insn_0040a61c) > 3
        %error "LONG_0040A61C"
    %endif
    times 3 - ($ - %%insn_0040a61c) db 0
    %%insn_0040a61f:
    mov [ebp-0x8],ecx ; 0040A61F 894DF8
    %if ($ - %%insn_0040a61f) > 3
        %error "LONG_0040A61F"
    %endif
    times 3 - ($ - %%insn_0040a61f) db 0
    %%insn_0040a622:
    mov edx,[0x420e48] ; 0040A622 8B15480E4200
    %if ($ - %%insn_0040a622) > 6
        %error "LONG_0040A622"
    %endif
    times 6 - ($ - %%insn_0040a622) db 0
    %%insn_0040a628:
    add edx,[ebp-0x8] ; 0040A628 0355F8
    %if ($ - %%insn_0040a628) > 3
        %error "LONG_0040A628"
    %endif
    times 3 - ($ - %%insn_0040a628) db 0
    db 0x33, 0xC0 ; 0040A62B 33C0 | xor eax,eax | encoding preserved
    %%insn_0040a62d:
    mov al,[edx] ; 0040A62D 8A02
    %if ($ - %%insn_0040a62d) > 2
        %error "LONG_0040A62D"
    %endif
    times 2 - ($ - %%insn_0040a62d) db 0
    %%insn_0040a62f:
    mov [ebp-0x30],eax ; 0040A62F 8945D0
    %if ($ - %%insn_0040a62f) > 3
        %error "LONG_0040A62F"
    %endif
    times 3 - ($ - %%insn_0040a62f) db 0
    %%insn_0040a632:
    mov ecx,[ebp-0x8] ; 0040A632 8B4DF8
    %if ($ - %%insn_0040a632) > 3
        %error "LONG_0040A632"
    %endif
    times 3 - ($ - %%insn_0040a632) db 0
    %%insn_0040a635:
    add ecx,0x1 ; 0040A635 83C101
    %if ($ - %%insn_0040a635) > 3
        %error "LONG_0040A635"
    %endif
    times 3 - ($ - %%insn_0040a635) db 0
    %%insn_0040a638:
    mov [ebp-0x8],ecx ; 0040A638 894DF8
    %if ($ - %%insn_0040a638) > 3
        %error "LONG_0040A638"
    %endif
    times 3 - ($ - %%insn_0040a638) db 0
    %%insn_0040a63b:
    cmp dword [ebp-0x30],0x0 ; 0040A63B 837DD000
    %if ($ - %%insn_0040a63b) > 4
        %error "LONG_0040A63B"
    %endif
    times 4 - ($ - %%insn_0040a63b) db 0
    %%insn_0040a63f:
    jz short 0x40a68b ; 0040A63F 744A
    %if ($ - %%insn_0040a63f) > 2
        %error "LONG_0040A63F"
    %endif
    times 2 - ($ - %%insn_0040a63f) db 0
    %%insn_0040a641:
    mov dword [ebp-0x1c],0x0 ; 0040A641 C745E400000000
    %if ($ - %%insn_0040a641) > 7
        %error "LONG_0040A641"
    %endif
    times 7 - ($ - %%insn_0040a641) db 0
    %%insn_0040a648:
    jmp short 0x40a653 ; 0040A648 EB09
    %if ($ - %%insn_0040a648) > 2
        %error "LONG_0040A648"
    %endif
    times 2 - ($ - %%insn_0040a648) db 0
    %%insn_0040a64a:
    mov edx,[ebp-0x1c] ; 0040A64A 8B55E4
    %if ($ - %%insn_0040a64a) > 3
        %error "LONG_0040A64A"
    %endif
    times 3 - ($ - %%insn_0040a64a) db 0
    %%insn_0040a64d:
    add edx,0x1 ; 0040A64D 83C201
    %if ($ - %%insn_0040a64d) > 3
        %error "LONG_0040A64D"
    %endif
    times 3 - ($ - %%insn_0040a64d) db 0
    %%insn_0040a650:
    mov [ebp-0x1c],edx ; 0040A650 8955E4
    %if ($ - %%insn_0040a650) > 3
        %error "LONG_0040A650"
    %endif
    times 3 - ($ - %%insn_0040a650) db 0
    %%insn_0040a653:
    mov eax,[ebp-0x1c] ; 0040A653 8B45E4
    %if ($ - %%insn_0040a653) > 3
        %error "LONG_0040A653"
    %endif
    times 3 - ($ - %%insn_0040a653) db 0
    %%insn_0040a656:
    cmp eax,[ebp-0x30] ; 0040A656 3B45D0
    %if ($ - %%insn_0040a656) > 3
        %error "LONG_0040A656"
    %endif
    times 3 - ($ - %%insn_0040a656) db 0
    %%insn_0040a659:
    jnc short 0x40a68b ; 0040A659 7330
    %if ($ - %%insn_0040a659) > 2
        %error "LONG_0040A659"
    %endif
    times 2 - ($ - %%insn_0040a659) db 0
    %%insn_0040a65b:
    mov ecx,[ebp-0x24] ; 0040A65B 8B4DDC
    %if ($ - %%insn_0040a65b) > 3
        %error "LONG_0040A65B"
    %endif
    times 3 - ($ - %%insn_0040a65b) db 0
    %%insn_0040a65e:
    push ecx ; 0040A65E 51
    %if ($ - %%insn_0040a65e) > 1
        %error "LONG_0040A65E"
    %endif
    times 1 - ($ - %%insn_0040a65e) db 0
    %%insn_0040a65f:
    mov edx,[0x420e48] ; 0040A65F 8B15480E4200
    %if ($ - %%insn_0040a65f) > 6
        %error "LONG_0040A65F"
    %endif
    times 6 - ($ - %%insn_0040a65f) db 0
    %%insn_0040a665:
    add edx,[ebp-0x8] ; 0040A665 0355F8
    %if ($ - %%insn_0040a665) > 3
        %error "LONG_0040A665"
    %endif
    times 3 - ($ - %%insn_0040a665) db 0
    %%insn_0040a668:
    push edx ; 0040A668 52
    %if ($ - %%insn_0040a668) > 1
        %error "LONG_0040A668"
    %endif
    times 1 - ($ - %%insn_0040a668) db 0
    %%insn_0040a669:
    mov eax,[ebp-0x1c] ; 0040A669 8B45E4
    %if ($ - %%insn_0040a669) > 3
        %error "LONG_0040A669"
    %endif
    times 3 - ($ - %%insn_0040a669) db 0
    %%insn_0040a66c:
    imul eax,eax,0x280 ; 0040A66C 69C080020000
    %if ($ - %%insn_0040a66c) > 6
        %error "LONG_0040A66C"
    %endif
    times 6 - ($ - %%insn_0040a66c) db 0
    %%insn_0040a672:
    mov ecx,[ebp-0x2c] ; 0040A672 8B4DD4
    %if ($ - %%insn_0040a672) > 3
        %error "LONG_0040A672"
    %endif
    times 3 - ($ - %%insn_0040a672) db 0
    db 0x03, 0xC8 ; 0040A675 03C8 | add ecx,eax | encoding preserved
    %%insn_0040a677:
    push ecx ; 0040A677 51
    %if ($ - %%insn_0040a677) > 1
        %error "LONG_0040A677"
    %endif
    times 1 - ($ - %%insn_0040a677) db 0
    %%insn_0040a678:
    call 0x40ca10 ; 0040A678 E893230000
    %if ($ - %%insn_0040a678) > 5
        %error "LONG_0040A678"
    %endif
    times 5 - ($ - %%insn_0040a678) db 0
    %%insn_0040a67d:
    add esp,0xc ; 0040A67D 83C40C
    %if ($ - %%insn_0040a67d) > 3
        %error "LONG_0040A67D"
    %endif
    times 3 - ($ - %%insn_0040a67d) db 0
    %%insn_0040a680:
    mov edx,[ebp-0x8] ; 0040A680 8B55F8
    %if ($ - %%insn_0040a680) > 3
        %error "LONG_0040A680"
    %endif
    times 3 - ($ - %%insn_0040a680) db 0
    %%insn_0040a683:
    add edx,[ebp-0x24] ; 0040A683 0355DC
    %if ($ - %%insn_0040a683) > 3
        %error "LONG_0040A683"
    %endif
    times 3 - ($ - %%insn_0040a683) db 0
    %%insn_0040a686:
    mov [ebp-0x8],edx ; 0040A686 8955F8
    %if ($ - %%insn_0040a686) > 3
        %error "LONG_0040A686"
    %endif
    times 3 - ($ - %%insn_0040a686) db 0
    %%insn_0040a689:
    jmp short 0x40a64a ; 0040A689 EBBF
    %if ($ - %%insn_0040a689) > 2
        %error "LONG_0040A689"
    %endif
    times 2 - ($ - %%insn_0040a689) db 0
    %%insn_0040a68b:
    mov eax,[ebp-0x30] ; 0040A68B 8B45D0
    %if ($ - %%insn_0040a68b) > 3
        %error "LONG_0040A68B"
    %endif
    times 3 - ($ - %%insn_0040a68b) db 0
    %%insn_0040a68e:
    mov [ebp-0x1c],eax ; 0040A68E 8945E4
    %if ($ - %%insn_0040a68e) > 3
        %error "LONG_0040A68E"
    %endif
    times 3 - ($ - %%insn_0040a68e) db 0
    %%insn_0040a691:
    mov ecx,[ebp-0x24] ; 0040A691 8B4DDC
    %if ($ - %%insn_0040a691) > 3
        %error "LONG_0040A691"
    %endif
    times 3 - ($ - %%insn_0040a691) db 0
    %%insn_0040a694:
    push ecx ; 0040A694 51
    %if ($ - %%insn_0040a694) > 1
        %error "LONG_0040A694"
    %endif
    times 1 - ($ - %%insn_0040a694) db 0
    %%insn_0040a695:
    mov edx,[0x420e48] ; 0040A695 8B15480E4200
    %if ($ - %%insn_0040a695) > 6
        %error "LONG_0040A695"
    %endif
    times 6 - ($ - %%insn_0040a695) db 0
    %%insn_0040a69b:
    add edx,[ebp-0x8] ; 0040A69B 0355F8
    %if ($ - %%insn_0040a69b) > 3
        %error "LONG_0040A69B"
    %endif
    times 3 - ($ - %%insn_0040a69b) db 0
    %%insn_0040a69e:
    push edx ; 0040A69E 52
    %if ($ - %%insn_0040a69e) > 1
        %error "LONG_0040A69E"
    %endif
    times 1 - ($ - %%insn_0040a69e) db 0
    %%insn_0040a69f:
    mov eax,[ebp-0x1c] ; 0040A69F 8B45E4
    %if ($ - %%insn_0040a69f) > 3
        %error "LONG_0040A69F"
    %endif
    times 3 - ($ - %%insn_0040a69f) db 0
    %%insn_0040a6a2:
    imul eax,eax,0x280 ; 0040A6A2 69C080020000
    %if ($ - %%insn_0040a6a2) > 6
        %error "LONG_0040A6A2"
    %endif
    times 6 - ($ - %%insn_0040a6a2) db 0
    %%insn_0040a6a8:
    mov ecx,[ebp-0x2c] ; 0040A6A8 8B4DD4
    %if ($ - %%insn_0040a6a8) > 3
        %error "LONG_0040A6A8"
    %endif
    times 3 - ($ - %%insn_0040a6a8) db 0
    db 0x03, 0xC8 ; 0040A6AB 03C8 | add ecx,eax | encoding preserved
    %%insn_0040a6ad:
    push ecx ; 0040A6AD 51
    %if ($ - %%insn_0040a6ad) > 1
        %error "LONG_0040A6AD"
    %endif
    times 1 - ($ - %%insn_0040a6ad) db 0
    %%insn_0040a6ae:
    call 0x40ca10 ; 0040A6AE E85D230000
    %if ($ - %%insn_0040a6ae) > 5
        %error "LONG_0040A6AE"
    %endif
    times 5 - ($ - %%insn_0040a6ae) db 0
    %%insn_0040a6b3:
    add esp,0xc ; 0040A6B3 83C40C
    %if ($ - %%insn_0040a6b3) > 3
        %error "LONG_0040A6B3"
    %endif
    times 3 - ($ - %%insn_0040a6b3) db 0
    %%insn_0040a6b6:
    mov edx,[ebp-0x1c] ; 0040A6B6 8B55E4
    %if ($ - %%insn_0040a6b6) > 3
        %error "LONG_0040A6B6"
    %endif
    times 3 - ($ - %%insn_0040a6b6) db 0
    %%insn_0040a6b9:
    add edx,0x1 ; 0040A6B9 83C201
    %if ($ - %%insn_0040a6b9) > 3
        %error "LONG_0040A6B9"
    %endif
    times 3 - ($ - %%insn_0040a6b9) db 0
    %%insn_0040a6bc:
    mov [ebp-0x1c],edx ; 0040A6BC 8955E4
    %if ($ - %%insn_0040a6bc) > 3
        %error "LONG_0040A6BC"
    %endif
    times 3 - ($ - %%insn_0040a6bc) db 0
    %%insn_0040a6bf:
    mov eax,[ebp-0x8] ; 0040A6BF 8B45F8
    %if ($ - %%insn_0040a6bf) > 3
        %error "LONG_0040A6BF"
    %endif
    times 3 - ($ - %%insn_0040a6bf) db 0
    %%insn_0040a6c2:
    add eax,[ebp-0x24] ; 0040A6C2 0345DC
    %if ($ - %%insn_0040a6c2) > 3
        %error "LONG_0040A6C2"
    %endif
    times 3 - ($ - %%insn_0040a6c2) db 0
    %%insn_0040a6c5:
    mov [ebp-0x8],eax ; 0040A6C5 8945F8
    %if ($ - %%insn_0040a6c5) > 3
        %error "LONG_0040A6C5"
    %endif
    times 3 - ($ - %%insn_0040a6c5) db 0
    %%insn_0040a6c8:
    mov ecx,[0x420e48] ; 0040A6C8 8B0D480E4200
    %if ($ - %%insn_0040a6c8) > 6
        %error "LONG_0040A6C8"
    %endif
    times 6 - ($ - %%insn_0040a6c8) db 0
    %%insn_0040a6ce:
    add ecx,[ebp-0x8] ; 0040A6CE 034DF8
    %if ($ - %%insn_0040a6ce) > 3
        %error "LONG_0040A6CE"
    %endif
    times 3 - ($ - %%insn_0040a6ce) db 0
    db 0x33, 0xD2 ; 0040A6D1 33D2 | xor edx,edx | encoding preserved
    %%insn_0040a6d3:
    mov dl,[ecx] ; 0040A6D3 8A11
    %if ($ - %%insn_0040a6d3) > 2
        %error "LONG_0040A6D3"
    %endif
    times 2 - ($ - %%insn_0040a6d3) db 0
    %%insn_0040a6d5:
    cmp edx,0xff ; 0040A6D5 81FAFF000000
    %if ($ - %%insn_0040a6d5) > 6
        %error "LONG_0040A6D5"
    %endif
    times 6 - ($ - %%insn_0040a6d5) db 0
    %%insn_0040a6db:
    jnz short 0x40a691 ; 0040A6DB 75B4
    %if ($ - %%insn_0040a6db) > 2
        %error "LONG_0040A6DB"
    %endif
    times 2 - ($ - %%insn_0040a6db) db 0
    %%insn_0040a6dd:
    mov eax,[ebp-0x2c] ; 0040A6DD 8B45D4
    %if ($ - %%insn_0040a6dd) > 3
        %error "LONG_0040A6DD"
    %endif
    times 3 - ($ - %%insn_0040a6dd) db 0
    %%insn_0040a6e0:
    add eax,[ebp-0x24] ; 0040A6E0 0345DC
    %if ($ - %%insn_0040a6e0) > 3
        %error "LONG_0040A6E0"
    %endif
    times 3 - ($ - %%insn_0040a6e0) db 0
    %%insn_0040a6e3:
    mov [ebp-0x2c],eax ; 0040A6E3 8945D4
    %if ($ - %%insn_0040a6e3) > 3
        %error "LONG_0040A6E3"
    %endif
    times 3 - ($ - %%insn_0040a6e3) db 0
    %%insn_0040a6e6:
    jmp 0x40a5ac ; 0040A6E6 E9C1FEFFFF
    %if ($ - %%insn_0040a6e6) > 5
        %error "LONG_0040A6E6"
    %endif
    times 5 - ($ - %%insn_0040a6e6) db 0
    %%insn_0040a6eb:
    mov ecx,[0x420e48] ; 0040A6EB 8B0D480E4200
    %if ($ - %%insn_0040a6eb) > 6
        %error "LONG_0040A6EB"
    %endif
    times 6 - ($ - %%insn_0040a6eb) db 0
    %%insn_0040a6f1:
    push ecx ; 0040A6F1 51
    %if ($ - %%insn_0040a6f1) > 1
        %error "LONG_0040A6F1"
    %endif
    times 1 - ($ - %%insn_0040a6f1) db 0
    %%insn_0040a6f2:
    call 0x40c9a0 ; 0040A6F2 E8A9220000
    %if ($ - %%insn_0040a6f2) > 5
        %error "LONG_0040A6F2"
    %endif
    times 5 - ($ - %%insn_0040a6f2) db 0
    %%insn_0040a6f7:
    add esp,0x4 ; 0040A6F7 83C404
    %if ($ - %%insn_0040a6f7) > 3
        %error "LONG_0040A6F7"
    %endif
    times 3 - ($ - %%insn_0040a6f7) db 0
    %%insn_0040a6fa:
    mov dword [0x420e48],0x0 ; 0040A6FA C705480E420000000000
    %if ($ - %%insn_0040a6fa) > 10
        %error "LONG_0040A6FA"
    %endif
    times 10 - ($ - %%insn_0040a6fa) db 0
    %%insn_0040a704:
    mov dword [0x421354],0x0 ; 0040A704 C7055413420000000000
    %if ($ - %%insn_0040a704) > 10
        %error "LONG_0040A704"
    %endif
    times 10 - ($ - %%insn_0040a704) db 0
    %%insn_0040a70e:
    mov dword [0x42135c],0x10 ; 0040A70E C7055C13420010000000
    %if ($ - %%insn_0040a70e) > 10
        %error "LONG_0040A70E"
    %endif
    times 10 - ($ - %%insn_0040a70e) db 0
    %%insn_0040a718:
    mov dword [0x421358],0x280 ; 0040A718 C7055813420080020000
    %if ($ - %%insn_0040a718) > 10
        %error "LONG_0040A718"
    %endif
    times 10 - ($ - %%insn_0040a718) db 0
    %%insn_0040a722:
    mov dword [0x421360],0x50 ; 0040A722 C7056013420050000000
    %if ($ - %%insn_0040a722) > 10
        %error "LONG_0040A722"
    %endif
    times 10 - ($ - %%insn_0040a722) db 0
    %%insn_0040a72c:
    mov dword [0x41f590],0x1 ; 0040A72C C70590F5410001000000
    %if ($ - %%insn_0040a72c) > 10
        %error "LONG_0040A72C"
    %endif
    times 10 - ($ - %%insn_0040a72c) db 0
    db 0x8B, 0xE5 ; 0040A736 8BE5 | mov esp,ebp | encoding preserved
    %%insn_0040a738:
    pop ebp ; 0040A738 5D
    %if ($ - %%insn_0040a738) > 1
        %error "LONG_0040A738"
    %endif
    times 1 - ($ - %%insn_0040a738) db 0
    %%insn_0040a739:
    ret ; 0040A739 C3
    %if ($ - %%insn_0040a739) > 1
        %error "LONG_0040A739"
    %endif
    times 1 - ($ - %%insn_0040a739) db 0
    %if ($ - %%fragment_start) != 778
        %error "function fragment size drift: 0040A430"
    %endif
%endmacro
