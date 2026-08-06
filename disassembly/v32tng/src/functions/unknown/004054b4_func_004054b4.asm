; PE virtual entry 004054B4
; Ghidra working symbol: FUN_004054b4
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_004054b4_part_00 0
    %%fragment_start:
func_004054b4:
    %%insn_004054b4:
    push ebp ; 004054B4 55
    %if ($ - %%insn_004054b4) > 1
        %error "LONG_004054B4"
    %endif
    times 1 - ($ - %%insn_004054b4) db 0
    db 0x8B, 0xEC ; 004054B5 8BEC | mov ebp,esp | encoding preserved
    %%insn_004054b7:
    sub esp,0x8 ; 004054B7 83EC08
    %if ($ - %%insn_004054b7) > 3
        %error "LONG_004054B7"
    %endif
    times 3 - ($ - %%insn_004054b7) db 0
    %%insn_004054ba:
    movsx eax,byte [0x4215b6] ; 004054BA 0FBE05B6154200
    %if ($ - %%insn_004054ba) > 7
        %error "LONG_004054BA"
    %endif
    times 7 - ($ - %%insn_004054ba) db 0
    %%insn_004054c1:
    movsx ecx,byte [eax+0x421580] ; 004054C1 0FBE8880154200
    %if ($ - %%insn_004054c1) > 7
        %error "LONG_004054C1"
    %endif
    times 7 - ($ - %%insn_004054c1) db 0
    %%insn_004054c8:
    test ecx,ecx ; 004054C8 85C9
    %if ($ - %%insn_004054c8) > 2
        %error "LONG_004054C8"
    %endif
    times 2 - ($ - %%insn_004054c8) db 0
    %%insn_004054ca:
    jz short 0x4054f1 ; 004054CA 7425
    %if ($ - %%insn_004054ca) > 2
        %error "LONG_004054CA"
    %endif
    times 2 - ($ - %%insn_004054ca) db 0
    %%insn_004054cc:
    mov dl,[0x4215b6] ; 004054CC 8A15B6154200
    %if ($ - %%insn_004054cc) > 6
        %error "LONG_004054CC"
    %endif
    times 6 - ($ - %%insn_004054cc) db 0
    %%insn_004054d2:
    add dl,0x1 ; 004054D2 80C201
    %if ($ - %%insn_004054d2) > 3
        %error "LONG_004054D2"
    %endif
    times 3 - ($ - %%insn_004054d2) db 0
    %%insn_004054d5:
    mov [0x4215b6],dl ; 004054D5 8815B6154200
    %if ($ - %%insn_004054d5) > 6
        %error "LONG_004054D5"
    %endif
    times 6 - ($ - %%insn_004054d5) db 0
    %%insn_004054db:
    movsx eax,byte [0x4215b6] ; 004054DB 0FBE05B6154200
    %if ($ - %%insn_004054db) > 7
        %error "LONG_004054DB"
    %endif
    times 7 - ($ - %%insn_004054db) db 0
    %%insn_004054e2:
    cmp eax,0x31 ; 004054E2 83F831
    %if ($ - %%insn_004054e2) > 3
        %error "LONG_004054E2"
    %endif
    times 3 - ($ - %%insn_004054e2) db 0
    %%insn_004054e5:
    jl short 0x4054ef ; 004054E5 7C08
    %if ($ - %%insn_004054e5) > 2
        %error "LONG_004054E5"
    %endif
    times 2 - ($ - %%insn_004054e5) db 0
    db 0x66, 0x33, 0xC0 ; 004054E7 6633C0 | xor ax,ax | encoding preserved
    %%insn_004054ea:
    jmp 0x405638 ; 004054EA E949010000
    %if ($ - %%insn_004054ea) > 5
        %error "LONG_004054EA"
    %endif
    times 5 - ($ - %%insn_004054ea) db 0
    %%insn_004054ef:
    jmp short 0x4054ba ; 004054EF EBC9
    %if ($ - %%insn_004054ef) > 2
        %error "LONG_004054EF"
    %endif
    times 2 - ($ - %%insn_004054ef) db 0
    %%insn_004054f1:
    movsx ecx,byte [0x4215b7] ; 004054F1 0FBE0DB7154200
    %if ($ - %%insn_004054f1) > 7
        %error "LONG_004054F1"
    %endif
    times 7 - ($ - %%insn_004054f1) db 0
    %%insn_004054f8:
    test ecx,ecx ; 004054F8 85C9
    %if ($ - %%insn_004054f8) > 2
        %error "LONG_004054F8"
    %endif
    times 2 - ($ - %%insn_004054f8) db 0
    %%insn_004054fa:
    jnz short 0x40555b ; 004054FA 755F
    %if ($ - %%insn_004054fa) > 2
        %error "LONG_004054FA"
    %endif
    times 2 - ($ - %%insn_004054fa) db 0
    %%insn_004054fc:
    movsx edx,byte [0x4215b6] ; 004054FC 0FBE15B6154200
    %if ($ - %%insn_004054fc) > 7
        %error "LONG_004054FC"
    %endif
    times 7 - ($ - %%insn_004054fc) db 0
    %%insn_00405503:
    mov eax,[edx*4+0x41b770] ; 00405503 8B049570B74100
    %if ($ - %%insn_00405503) > 7
        %error "LONG_00405503"
    %endif
    times 7 - ($ - %%insn_00405503) db 0
    %%insn_0040550a:
    mov [ebp-0x4],eax ; 0040550A 8945FC
    %if ($ - %%insn_0040550a) > 3
        %error "LONG_0040550A"
    %endif
    times 3 - ($ - %%insn_0040550a) db 0
    %%insn_0040550d:
    mov ecx,[ebp-0x4] ; 0040550D 8B4DFC
    %if ($ - %%insn_0040550d) > 3
        %error "LONG_0040550D"
    %endif
    times 3 - ($ - %%insn_0040550d) db 0
    %%insn_00405510:
    mov dl,[ecx] ; 00405510 8A11
    %if ($ - %%insn_00405510) > 2
        %error "LONG_00405510"
    %endif
    times 2 - ($ - %%insn_00405510) db 0
    %%insn_00405512:
    mov [0x4215b5],dl ; 00405512 8815B5154200
    %if ($ - %%insn_00405512) > 6
        %error "LONG_00405512"
    %endif
    times 6 - ($ - %%insn_00405512) db 0
    %%insn_00405518:
    movsx eax,byte [0x4215b5] ; 00405518 0FBE05B5154200
    %if ($ - %%insn_00405518) > 7
        %error "LONG_00405518"
    %endif
    times 7 - ($ - %%insn_00405518) db 0
    %%insn_0040551f:
    mov ecx,[ebp-0x4] ; 0040551F 8B4DFC
    %if ($ - %%insn_0040551f) > 3
        %error "LONG_0040551F"
    %endif
    times 3 - ($ - %%insn_0040551f) db 0
    %%insn_00405522:
    add ecx,0x1 ; 00405522 83C101
    %if ($ - %%insn_00405522) > 3
        %error "LONG_00405522"
    %endif
    times 3 - ($ - %%insn_00405522) db 0
    %%insn_00405525:
    mov [ebp-0x4],ecx ; 00405525 894DFC
    %if ($ - %%insn_00405525) > 3
        %error "LONG_00405525"
    %endif
    times 3 - ($ - %%insn_00405525) db 0
    %%insn_00405528:
    test eax,eax ; 00405528 85C0
    %if ($ - %%insn_00405528) > 2
        %error "LONG_00405528"
    %endif
    times 2 - ($ - %%insn_00405528) db 0
    %%insn_0040552a:
    jl short 0x405554 ; 0040552A 7C28
    %if ($ - %%insn_0040552a) > 2
        %error "LONG_0040552A"
    %endif
    times 2 - ($ - %%insn_0040552a) db 0
    %%insn_0040552c:
    movsx edx,byte [0x4215b5] ; 0040552C 0FBE15B5154200
    %if ($ - %%insn_0040552c) > 7
        %error "LONG_0040552C"
    %endif
    times 7 - ($ - %%insn_0040552c) db 0
    %%insn_00405533:
    movsx eax,byte [edx+0x421580] ; 00405533 0FBE8280154200
    %if ($ - %%insn_00405533) > 7
        %error "LONG_00405533"
    %endif
    times 7 - ($ - %%insn_00405533) db 0
    %%insn_0040553a:
    movsx ecx,byte [ebp+0x8] ; 0040553A 0FBE4D08
    %if ($ - %%insn_0040553a) > 4
        %error "LONG_0040553A"
    %endif
    times 4 - ($ - %%insn_0040553a) db 0
    db 0x3B, 0xC1 ; 0040553E 3BC1 | cmp eax,ecx | encoding preserved
    %%insn_00405540:
    jnz short 0x405552 ; 00405540 7510
    %if ($ - %%insn_00405540) > 2
        %error "LONG_00405540"
    %endif
    times 2 - ($ - %%insn_00405540) db 0
    %%insn_00405542:
    mov byte [0x4215b7],0x1 ; 00405542 C605B715420001
    %if ($ - %%insn_00405542) > 7
        %error "LONG_00405542"
    %endif
    times 7 - ($ - %%insn_00405542) db 0
    %%insn_00405549:
    mov ax,0x1 ; 00405549 66B80100
    %if ($ - %%insn_00405549) > 4
        %error "LONG_00405549"
    %endif
    times 4 - ($ - %%insn_00405549) db 0
    %%insn_0040554d:
    jmp 0x405638 ; 0040554D E9E6000000
    %if ($ - %%insn_0040554d) > 5
        %error "LONG_0040554D"
    %endif
    times 5 - ($ - %%insn_0040554d) db 0
    %%insn_00405552:
    jmp short 0x40550d ; 00405552 EBB9
    %if ($ - %%insn_00405552) > 2
        %error "LONG_00405552"
    %endif
    times 2 - ($ - %%insn_00405552) db 0
    %%insn_00405554:
    mov byte [0x4215b7],0x1 ; 00405554 C605B715420001
    %if ($ - %%insn_00405554) > 7
        %error "LONG_00405554"
    %endif
    times 7 - ($ - %%insn_00405554) db 0
    %%insn_0040555b:
    movsx edx,byte [0x4215b7] ; 0040555B 0FBE15B7154200
    %if ($ - %%insn_0040555b) > 7
        %error "LONG_0040555B"
    %endif
    times 7 - ($ - %%insn_0040555b) db 0
    %%insn_00405562:
    cmp edx,0x1 ; 00405562 83FA01
    %if ($ - %%insn_00405562) > 3
        %error "LONG_00405562"
    %endif
    times 3 - ($ - %%insn_00405562) db 0
    %%insn_00405565:
    jnz short 0x405575 ; 00405565 750E
    %if ($ - %%insn_00405565) > 2
        %error "LONG_00405565"
    %endif
    times 2 - ($ - %%insn_00405565) db 0
    %%insn_00405567:
    mov byte [0x4215b8],0x0 ; 00405567 C605B815420000
    %if ($ - %%insn_00405567) > 7
        %error "LONG_00405567"
    %endif
    times 7 - ($ - %%insn_00405567) db 0
    %%insn_0040556e:
    mov byte [0x4215b7],0x2 ; 0040556E C605B715420002
    %if ($ - %%insn_0040556e) > 7
        %error "LONG_0040556E"
    %endif
    times 7 - ($ - %%insn_0040556e) db 0
    %%insn_00405575:
    movsx eax,byte [0x4215b7] ; 00405575 0FBE05B7154200
    %if ($ - %%insn_00405575) > 7
        %error "LONG_00405575"
    %endif
    times 7 - ($ - %%insn_00405575) db 0
    %%insn_0040557c:
    cmp eax,0x2 ; 0040557C 83F802
    %if ($ - %%insn_0040557c) > 3
        %error "LONG_0040557C"
    %endif
    times 3 - ($ - %%insn_0040557c) db 0
    %%insn_0040557f:
    jnz 0x405633 ; 0040557F 0F85AE000000
    %if ($ - %%insn_0040557f) > 6
        %error "LONG_0040557F"
    %endif
    times 6 - ($ - %%insn_0040557f) db 0
    %%insn_00405585:
    movsx ecx,byte [0x4215b6] ; 00405585 0FBE0DB6154200
    %if ($ - %%insn_00405585) > 7
        %error "LONG_00405585"
    %endif
    times 7 - ($ - %%insn_00405585) db 0
    %%insn_0040558c:
    movsx edx,byte [0x4215b8] ; 0040558C 0FBE15B8154200
    %if ($ - %%insn_0040558c) > 7
        %error "LONG_0040558C"
    %endif
    times 7 - ($ - %%insn_0040558c) db 0
    %%insn_00405593:
    mov eax,[ecx*4+0x41b838] ; 00405593 8B048D38B84100
    %if ($ - %%insn_00405593) > 7
        %error "LONG_00405593"
    %endif
    times 7 - ($ - %%insn_00405593) db 0
    db 0x03, 0xC2 ; 0040559A 03C2 | add eax,edx | encoding preserved
    %%insn_0040559c:
    mov [ebp-0x8],eax ; 0040559C 8945F8
    %if ($ - %%insn_0040559c) > 3
        %error "LONG_0040559C"
    %endif
    times 3 - ($ - %%insn_0040559c) db 0
    %%insn_0040559f:
    jmp short 0x4055b0 ; 0040559F EB0F
    %if ($ - %%insn_0040559f) > 2
        %error "LONG_0040559F"
    %endif
    times 2 - ($ - %%insn_0040559f) db 0
    %%insn_004055a1:
    mov cl,[0x4215b8] ; 004055A1 8A0DB8154200
    %if ($ - %%insn_004055a1) > 6
        %error "LONG_004055A1"
    %endif
    times 6 - ($ - %%insn_004055a1) db 0
    %%insn_004055a7:
    add cl,0x1 ; 004055A7 80C101
    %if ($ - %%insn_004055a7) > 3
        %error "LONG_004055A7"
    %endif
    times 3 - ($ - %%insn_004055a7) db 0
    %%insn_004055aa:
    mov [0x4215b8],cl ; 004055AA 880DB8154200
    %if ($ - %%insn_004055aa) > 6
        %error "LONG_004055AA"
    %endif
    times 6 - ($ - %%insn_004055aa) db 0
    %%insn_004055b0:
    movsx edx,byte [0x4215b8] ; 004055B0 0FBE15B8154200
    %if ($ - %%insn_004055b0) > 7
        %error "LONG_004055B0"
    %endif
    times 7 - ($ - %%insn_004055b0) db 0
    %%insn_004055b7:
    cmp edx,0x10 ; 004055B7 83FA10
    %if ($ - %%insn_004055b7) > 3
        %error "LONG_004055B7"
    %endif
    times 3 - ($ - %%insn_004055b7) db 0
    %%insn_004055ba:
    jnl short 0x40560c ; 004055BA 7D50
    %if ($ - %%insn_004055ba) > 2
        %error "LONG_004055BA"
    %endif
    times 2 - ($ - %%insn_004055ba) db 0
    %%insn_004055bc:
    mov eax,[ebp-0x8] ; 004055BC 8B45F8
    %if ($ - %%insn_004055bc) > 3
        %error "LONG_004055BC"
    %endif
    times 3 - ($ - %%insn_004055bc) db 0
    %%insn_004055bf:
    mov cl,[eax] ; 004055BF 8A08
    %if ($ - %%insn_004055bf) > 2
        %error "LONG_004055BF"
    %endif
    times 2 - ($ - %%insn_004055bf) db 0
    %%insn_004055c1:
    mov [0x4215b5],cl ; 004055C1 880DB5154200
    %if ($ - %%insn_004055c1) > 6
        %error "LONG_004055C1"
    %endif
    times 6 - ($ - %%insn_004055c1) db 0
    %%insn_004055c7:
    movsx edx,byte [0x4215b5] ; 004055C7 0FBE15B5154200
    %if ($ - %%insn_004055c7) > 7
        %error "LONG_004055C7"
    %endif
    times 7 - ($ - %%insn_004055c7) db 0
    %%insn_004055ce:
    mov eax,[ebp-0x8] ; 004055CE 8B45F8
    %if ($ - %%insn_004055ce) > 3
        %error "LONG_004055CE"
    %endif
    times 3 - ($ - %%insn_004055ce) db 0
    %%insn_004055d1:
    add eax,0x1 ; 004055D1 83C001
    %if ($ - %%insn_004055d1) > 3
        %error "LONG_004055D1"
    %endif
    times 3 - ($ - %%insn_004055d1) db 0
    %%insn_004055d4:
    mov [ebp-0x8],eax ; 004055D4 8945F8
    %if ($ - %%insn_004055d4) > 3
        %error "LONG_004055D4"
    %endif
    times 3 - ($ - %%insn_004055d4) db 0
    %%insn_004055d7:
    test edx,edx ; 004055D7 85D2
    %if ($ - %%insn_004055d7) > 2
        %error "LONG_004055D7"
    %endif
    times 2 - ($ - %%insn_004055d7) db 0
    %%insn_004055d9:
    jl short 0x405608 ; 004055D9 7C2D
    %if ($ - %%insn_004055d9) > 2
        %error "LONG_004055D9"
    %endif
    times 2 - ($ - %%insn_004055d9) db 0
    %%insn_004055db:
    movsx ecx,byte [0x4215b5] ; 004055DB 0FBE0DB5154200
    %if ($ - %%insn_004055db) > 7
        %error "LONG_004055DB"
    %endif
    times 7 - ($ - %%insn_004055db) db 0
    %%insn_004055e2:
    movsx edx,byte [ecx+0x421580] ; 004055E2 0FBE9180154200
    %if ($ - %%insn_004055e2) > 7
        %error "LONG_004055E2"
    %endif
    times 7 - ($ - %%insn_004055e2) db 0
    %%insn_004055e9:
    movsx eax,byte [ebp+0x8] ; 004055E9 0FBE4508
    %if ($ - %%insn_004055e9) > 4
        %error "LONG_004055E9"
    %endif
    times 4 - ($ - %%insn_004055e9) db 0
    db 0x3B, 0xD0 ; 004055ED 3BD0 | cmp edx,eax | encoding preserved
    %%insn_004055ef:
    jnz short 0x405606 ; 004055EF 7515
    %if ($ - %%insn_004055ef) > 2
        %error "LONG_004055EF"
    %endif
    times 2 - ($ - %%insn_004055ef) db 0
    %%insn_004055f1:
    mov cl,[0x4215b8] ; 004055F1 8A0DB8154200
    %if ($ - %%insn_004055f1) > 6
        %error "LONG_004055F1"
    %endif
    times 6 - ($ - %%insn_004055f1) db 0
    %%insn_004055f7:
    add cl,0x1 ; 004055F7 80C101
    %if ($ - %%insn_004055f7) > 3
        %error "LONG_004055F7"
    %endif
    times 3 - ($ - %%insn_004055f7) db 0
    %%insn_004055fa:
    mov [0x4215b8],cl ; 004055FA 880DB8154200
    %if ($ - %%insn_004055fa) > 6
        %error "LONG_004055FA"
    %endif
    times 6 - ($ - %%insn_004055fa) db 0
    %%insn_00405600:
    mov ax,0x1 ; 00405600 66B80100
    %if ($ - %%insn_00405600) > 4
        %error "LONG_00405600"
    %endif
    times 4 - ($ - %%insn_00405600) db 0
    %%insn_00405604:
    jmp short 0x405638 ; 00405604 EB32
    %if ($ - %%insn_00405604) > 2
        %error "LONG_00405604"
    %endif
    times 2 - ($ - %%insn_00405604) db 0
    %%insn_00405606:
    jmp short 0x40560a ; 00405606 EB02
    %if ($ - %%insn_00405606) > 2
        %error "LONG_00405606"
    %endif
    times 2 - ($ - %%insn_00405606) db 0
    %%insn_00405608:
    jmp short 0x40560c ; 00405608 EB02
    %if ($ - %%insn_00405608) > 2
        %error "LONG_00405608"
    %endif
    times 2 - ($ - %%insn_00405608) db 0
    %%insn_0040560a:
    jmp short 0x4055a1 ; 0040560A EB95
    %if ($ - %%insn_0040560a) > 2
        %error "LONG_0040560A"
    %endif
    times 2 - ($ - %%insn_0040560a) db 0
    %%insn_0040560c:
    mov byte [0x4215b7],0x0 ; 0040560C C605B715420000
    %if ($ - %%insn_0040560c) > 7
        %error "LONG_0040560C"
    %endif
    times 7 - ($ - %%insn_0040560c) db 0
    %%insn_00405613:
    mov dl,[0x4215b6] ; 00405613 8A15B6154200
    %if ($ - %%insn_00405613) > 6
        %error "LONG_00405613"
    %endif
    times 6 - ($ - %%insn_00405613) db 0
    %%insn_00405619:
    add dl,0x1 ; 00405619 80C201
    %if ($ - %%insn_00405619) > 3
        %error "LONG_00405619"
    %endif
    times 3 - ($ - %%insn_00405619) db 0
    %%insn_0040561c:
    mov [0x4215b6],dl ; 0040561C 8815B6154200
    %if ($ - %%insn_0040561c) > 6
        %error "LONG_0040561C"
    %endif
    times 6 - ($ - %%insn_0040561c) db 0
    %%insn_00405622:
    movsx eax,byte [0x4215b6] ; 00405622 0FBE05B6154200
    %if ($ - %%insn_00405622) > 7
        %error "LONG_00405622"
    %endif
    times 7 - ($ - %%insn_00405622) db 0
    %%insn_00405629:
    cmp eax,0x31 ; 00405629 83F831
    %if ($ - %%insn_00405629) > 3
        %error "LONG_00405629"
    %endif
    times 3 - ($ - %%insn_00405629) db 0
    %%insn_0040562c:
    jl short 0x405633 ; 0040562C 7C05
    %if ($ - %%insn_0040562c) > 2
        %error "LONG_0040562C"
    %endif
    times 2 - ($ - %%insn_0040562c) db 0
    db 0x66, 0x33, 0xC0 ; 0040562E 6633C0 | xor ax,ax | encoding preserved
    %%insn_00405631:
    jmp short 0x405638 ; 00405631 EB05
    %if ($ - %%insn_00405631) > 2
        %error "LONG_00405631"
    %endif
    times 2 - ($ - %%insn_00405631) db 0
    %%insn_00405633:
    jmp 0x4054ba ; 00405633 E982FEFFFF
    %if ($ - %%insn_00405633) > 5
        %error "LONG_00405633"
    %endif
    times 5 - ($ - %%insn_00405633) db 0
    db 0x8B, 0xE5 ; 00405638 8BE5 | mov esp,ebp | encoding preserved
    %%insn_0040563a:
    pop ebp ; 0040563A 5D
    %if ($ - %%insn_0040563a) > 1
        %error "LONG_0040563A"
    %endif
    times 1 - ($ - %%insn_0040563a) db 0
    %%insn_0040563b:
    ret ; 0040563B C3
    %if ($ - %%insn_0040563b) > 1
        %error "LONG_0040563B"
    %endif
    times 1 - ($ - %%insn_0040563b) db 0
    %if ($ - %%fragment_start) != 392
        %error "function fragment size drift: 004054B4"
    %endif
%endmacro
