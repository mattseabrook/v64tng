; PE virtual entry 004066A9
; Ghidra working symbol: FUN_004066a9
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_004066a9_part_00 0
    %%fragment_start:
func_004066a9:
    %%insn_004066a9:
    push ebp ; 004066A9 55
    %if ($ - %%insn_004066a9) > 1
        %error "LONG_004066A9"
    %endif
    times 1 - ($ - %%insn_004066a9) db 0
    db 0x8B, 0xEC ; 004066AA 8BEC | mov ebp,esp | encoding preserved
    %%insn_004066ac:
    sub esp,0xc ; 004066AC 83EC0C
    %if ($ - %%insn_004066ac) > 3
        %error "LONG_004066AC"
    %endif
    times 3 - ($ - %%insn_004066ac) db 0
    %%insn_004066af:
    mov ax,[0x421560] ; 004066AF 66A160154200
    %if ($ - %%insn_004066af) > 6
        %error "LONG_004066AF"
    %endif
    times 6 - ($ - %%insn_004066af) db 0
    %%insn_004066b5:
    mov [ebp-0x8],ax ; 004066B5 668945F8
    %if ($ - %%insn_004066b5) > 4
        %error "LONG_004066B5"
    %endif
    times 4 - ($ - %%insn_004066b5) db 0
    %%insn_004066b9:
    mov byte [ebp-0x4],0x81 ; 004066B9 C645FC81
    %if ($ - %%insn_004066b9) > 4
        %error "LONG_004066B9"
    %endif
    times 4 - ($ - %%insn_004066b9) db 0
    %%insn_004066bd:
    movsx ecx,word [ebp-0x8] ; 004066BD 0FBF4DF8
    %if ($ - %%insn_004066bd) > 4
        %error "LONG_004066BD"
    %endif
    times 4 - ($ - %%insn_004066bd) db 0
    %%insn_004066c1:
    cmp ecx,0xffffffffffffffff ; 004066C1 83F9FF
    %if ($ - %%insn_004066c1) > 3
        %error "LONG_004066C1"
    %endif
    times 3 - ($ - %%insn_004066c1) db 0
    %%insn_004066c4:
    jnz short 0x4066ce ; 004066C4 7508
    %if ($ - %%insn_004066c4) > 2
        %error "LONG_004066C4"
    %endif
    times 2 - ($ - %%insn_004066c4) db 0
    db 0x66, 0x33, 0xC0 ; 004066C6 6633C0 | xor ax,ax | encoding preserved
    %%insn_004066c9:
    jmp 0x406805 ; 004066C9 E937010000
    %if ($ - %%insn_004066c9) > 5
        %error "LONG_004066C9"
    %endif
    times 5 - ($ - %%insn_004066c9) db 0
    %%insn_004066ce:
    movsx edx,byte [ebp+0x8] ; 004066CE 0FBE5508
    %if ($ - %%insn_004066ce) > 4
        %error "LONG_004066CE"
    %endif
    times 4 - ($ - %%insn_004066ce) db 0
    %%insn_004066d2:
    movsx eax,byte [edx+0x4215b0] ; 004066D2 0FBE82B0154200
    %if ($ - %%insn_004066d2) > 7
        %error "LONG_004066D2"
    %endif
    times 7 - ($ - %%insn_004066d2) db 0
    %%insn_004066d9:
    movsx ecx,byte [0x4215b1] ; 004066D9 0FBE0DB1154200
    %if ($ - %%insn_004066d9) > 7
        %error "LONG_004066D9"
    %endif
    times 7 - ($ - %%insn_004066d9) db 0
    db 0x2B, 0xC1 ; 004066E0 2BC1 | sub eax,ecx | encoding preserved
    %%insn_004066e2:
    movsx edx,byte [0x4215b2] ; 004066E2 0FBE15B2154200
    %if ($ - %%insn_004066e2) > 7
        %error "LONG_004066E2"
    %endif
    times 7 - ($ - %%insn_004066e2) db 0
    db 0x2B, 0xC2 ; 004066E9 2BC2 | sub eax,edx | encoding preserved
    %%insn_004066eb:
    movsx ecx,byte [0x4215b3] ; 004066EB 0FBE0DB3154200
    %if ($ - %%insn_004066eb) > 7
        %error "LONG_004066EB"
    %endif
    times 7 - ($ - %%insn_004066eb) db 0
    db 0x2B, 0xC1 ; 004066F2 2BC1 | sub eax,ecx | encoding preserved
    %%insn_004066f4:
    movsx edx,byte [0x4215b4] ; 004066F4 0FBE15B4154200
    %if ($ - %%insn_004066f4) > 7
        %error "LONG_004066F4"
    %endif
    times 7 - ($ - %%insn_004066f4) db 0
    db 0x2B, 0xC2 ; 004066FB 2BC2 | sub eax,edx | encoding preserved
    %%insn_004066fd:
    test eax,eax ; 004066FD 85C0
    %if ($ - %%insn_004066fd) > 2
        %error "LONG_004066FD"
    %endif
    times 2 - ($ - %%insn_004066fd) db 0
    %%insn_004066ff:
    jnz short 0x406707 ; 004066FF 7506
    %if ($ - %%insn_004066ff) > 2
        %error "LONG_004066FF"
    %endif
    times 2 - ($ - %%insn_004066ff) db 0
    %%insn_00406701:
    mov word [ebp+0xc],0x0 ; 00406701 66C7450C0000
    %if ($ - %%insn_00406701) > 6
        %error "LONG_00406701"
    %endif
    times 6 - ($ - %%insn_00406701) db 0
    %%insn_00406707:
    movsx eax,word [ebp-0x8] ; 00406707 0FBF45F8
    %if ($ - %%insn_00406707) > 4
        %error "LONG_00406707"
    %endif
    times 4 - ($ - %%insn_00406707) db 0
    %%insn_0040670b:
    cmp eax,0xffffffffffffffff ; 0040670B 83F8FF
    %if ($ - %%insn_0040670b) > 3
        %error "LONG_0040670B"
    %endif
    times 3 - ($ - %%insn_0040670b) db 0
    %%insn_0040670e:
    jz 0x4067f5 ; 0040670E 0F84E1000000
    %if ($ - %%insn_0040670e) > 6
        %error "LONG_0040670E"
    %endif
    times 6 - ($ - %%insn_0040670e) db 0
    %%insn_00406714:
    movsx ecx,word [ebp-0x8] ; 00406714 0FBF4DF8
    %if ($ - %%insn_00406714) > 4
        %error "LONG_00406714"
    %endif
    times 4 - ($ - %%insn_00406714) db 0
    %%insn_00406718:
    mov dl,[ecx+0x4219a0] ; 00406718 8A91A0194200
    %if ($ - %%insn_00406718) > 6
        %error "LONG_00406718"
    %endif
    times 6 - ($ - %%insn_00406718) db 0
    %%insn_0040671e:
    mov [0x4215b5],dl ; 0040671E 8815B5154200
    %if ($ - %%insn_0040671e) > 6
        %error "LONG_0040671E"
    %endif
    times 6 - ($ - %%insn_0040671e) db 0
    %%insn_00406724:
    movsx eax,word [ebp-0x8] ; 00406724 0FBF45F8
    %if ($ - %%insn_00406724) > 4
        %error "LONG_00406724"
    %endif
    times 4 - ($ - %%insn_00406724) db 0
    %%insn_00406728:
    mov cl,[eax+0x421c00] ; 00406728 8A88001C4200
    %if ($ - %%insn_00406728) > 6
        %error "LONG_00406728"
    %endif
    times 6 - ($ - %%insn_00406728) db 0
    %%insn_0040672e:
    mov [0x4215b6],cl ; 0040672E 880DB6154200
    %if ($ - %%insn_0040672e) > 6
        %error "LONG_0040672E"
    %endif
    times 6 - ($ - %%insn_0040672e) db 0
    %%insn_00406734:
    movsx edx,word [ebp-0x8] ; 00406734 0FBF55F8
    %if ($ - %%insn_00406734) > 4
        %error "LONG_00406734"
    %endif
    times 4 - ($ - %%insn_00406734) db 0
    %%insn_00406738:
    mov al,[edx+0x4215c0] ; 00406738 8A82C0154200
    %if ($ - %%insn_00406738) > 6
        %error "LONG_00406738"
    %endif
    times 6 - ($ - %%insn_00406738) db 0
    %%insn_0040673e:
    mov [0x4215b7],al ; 0040673E A2B7154200
    %if ($ - %%insn_0040673e) > 5
        %error "LONG_0040673E"
    %endif
    times 5 - ($ - %%insn_0040673e) db 0
    %%insn_00406743:
    movsx ecx,word [ebp-0x8] ; 00406743 0FBF4DF8
    %if ($ - %%insn_00406743) > 4
        %error "LONG_00406743"
    %endif
    times 4 - ($ - %%insn_00406743) db 0
    db 0x66, 0x8B, 0x14, 0x4D, 0x40, 0x1D, 0x42, 0x00 ; 00406747 668B144D401D4200 | mov dx,[ecx*2+0x421d40] | encoding preserved
    %%insn_0040674f:
    mov [ebp-0x8],dx ; 0040674F 668955F8
    %if ($ - %%insn_0040674f) > 4
        %error "LONG_0040674F"
    %endif
    times 4 - ($ - %%insn_0040674f) db 0
    %%insn_00406753:
    mov byte [0x41f45c],0x0 ; 00406753 C6055CF4410000
    %if ($ - %%insn_00406753) > 7
        %error "LONG_00406753"
    %endif
    times 7 - ($ - %%insn_00406753) db 0
    %%insn_0040675a:
    movsx eax,byte [0x4215b7] ; 0040675A 0FBE05B7154200
    %if ($ - %%insn_0040675a) > 7
        %error "LONG_0040675A"
    %endif
    times 7 - ($ - %%insn_0040675a) db 0
    %%insn_00406761:
    cmp eax,0x1 ; 00406761 83F801
    %if ($ - %%insn_00406761) > 3
        %error "LONG_00406761"
    %endif
    times 3 - ($ - %%insn_00406761) db 0
    %%insn_00406764:
    jnz short 0x40676d ; 00406764 7507
    %if ($ - %%insn_00406764) > 2
        %error "LONG_00406764"
    %endif
    times 2 - ($ - %%insn_00406764) db 0
    %%insn_00406766:
    mov byte [0x41f45c],0x1 ; 00406766 C6055CF4410001
    %if ($ - %%insn_00406766) > 7
        %error "LONG_00406766"
    %endif
    times 7 - ($ - %%insn_00406766) db 0
    %%insn_0040676d:
    movsx ecx,word [ebp+0xc] ; 0040676D 0FBF4D0C
    %if ($ - %%insn_0040676d) > 4
        %error "LONG_0040676D"
    %endif
    times 4 - ($ - %%insn_0040676d) db 0
    %%insn_00406771:
    test ecx,ecx ; 00406771 85C9
    %if ($ - %%insn_00406771) > 2
        %error "LONG_00406771"
    %endif
    times 2 - ($ - %%insn_00406771) db 0
    %%insn_00406773:
    jz short 0x4067a8 ; 00406773 7433
    %if ($ - %%insn_00406773) > 2
        %error "LONG_00406773"
    %endif
    times 2 - ($ - %%insn_00406773) db 0
    %%insn_00406775:
    mov dl,[ebp+0x8] ; 00406775 8A5508
    %if ($ - %%insn_00406775) > 3
        %error "LONG_00406775"
    %endif
    times 3 - ($ - %%insn_00406775) db 0
    %%insn_00406778:
    push edx ; 00406778 52
    %if ($ - %%insn_00406778) > 1
        %error "LONG_00406778"
    %endif
    times 1 - ($ - %%insn_00406778) db 0
    %%insn_00406779:
    call 0x40563c ; 00406779 E8BEEEFFFF
    %if ($ - %%insn_00406779) > 5
        %error "LONG_00406779"
    %endif
    times 5 - ($ - %%insn_00406779) db 0
    %%insn_0040677e:
    add esp,0x4 ; 0040677E 83C404
    %if ($ - %%insn_0040677e) > 3
        %error "LONG_0040677E"
    %endif
    times 3 - ($ - %%insn_0040677e) db 0
    %%insn_00406781:
    mov word [0x41f470],0x0 ; 00406781 66C70570F441000000
    %if ($ - %%insn_00406781) > 9
        %error "LONG_00406781"
    %endif
    times 9 - ($ - %%insn_00406781) db 0
    %%insn_0040678a:
    mov al,[ebp-0x4] ; 0040678A 8A45FC
    %if ($ - %%insn_0040678a) > 3
        %error "LONG_0040678A"
    %endif
    times 3 - ($ - %%insn_0040678a) db 0
    %%insn_0040678d:
    push eax ; 0040678D 50
    %if ($ - %%insn_0040678d) > 1
        %error "LONG_0040678D"
    %endif
    times 1 - ($ - %%insn_0040678d) db 0
    %%insn_0040678e:
    mov cx,[ebp+0xc] ; 0040678E 668B4D0C
    %if ($ - %%insn_0040678e) > 4
        %error "LONG_0040678E"
    %endif
    times 4 - ($ - %%insn_0040678e) db 0
    %%insn_00406792:
    push ecx ; 00406792 51
    %if ($ - %%insn_00406792) > 1
        %error "LONG_00406792"
    %endif
    times 1 - ($ - %%insn_00406792) db 0
    %%insn_00406793:
    mov dl,[ebp+0x8] ; 00406793 8A5508
    %if ($ - %%insn_00406793) > 3
        %error "LONG_00406793"
    %endif
    times 3 - ($ - %%insn_00406793) db 0
    %%insn_00406796:
    push edx ; 00406796 52
    %if ($ - %%insn_00406796) > 1
        %error "LONG_00406796"
    %endif
    times 1 - ($ - %%insn_00406796) db 0
    %%insn_00406797:
    mov al,[ebp+0x8] ; 00406797 8A4508
    %if ($ - %%insn_00406797) > 3
        %error "LONG_00406797"
    %endif
    times 3 - ($ - %%insn_00406797) db 0
    %%insn_0040679a:
    push eax ; 0040679A 50
    %if ($ - %%insn_0040679a) > 1
        %error "LONG_0040679A"
    %endif
    times 1 - ($ - %%insn_0040679a) db 0
    %%insn_0040679b:
    call 0x405cbb ; 0040679B E81BF5FFFF
    %if ($ - %%insn_0040679b) > 5
        %error "LONG_0040679B"
    %endif
    times 5 - ($ - %%insn_0040679b) db 0
    %%insn_004067a0:
    add esp,0x10 ; 004067A0 83C410
    %if ($ - %%insn_004067a0) > 3
        %error "LONG_004067A0"
    %endif
    times 3 - ($ - %%insn_004067a0) db 0
    %%insn_004067a3:
    mov [ebp-0xc],al ; 004067A3 8845F4
    %if ($ - %%insn_004067a3) > 3
        %error "LONG_004067A3"
    %endif
    times 3 - ($ - %%insn_004067a3) db 0
    %%insn_004067a6:
    jmp short 0x4067bb ; 004067A6 EB13
    %if ($ - %%insn_004067a6) > 2
        %error "LONG_004067A6"
    %endif
    times 2 - ($ - %%insn_004067a6) db 0
    %%insn_004067a8:
    mov cl,[ebp+0x8] ; 004067A8 8A4D08
    %if ($ - %%insn_004067a8) > 3
        %error "LONG_004067A8"
    %endif
    times 3 - ($ - %%insn_004067a8) db 0
    %%insn_004067ab:
    push ecx ; 004067AB 51
    %if ($ - %%insn_004067ab) > 1
        %error "LONG_004067AB"
    %endif
    times 1 - ($ - %%insn_004067ab) db 0
    %%insn_004067ac:
    mov dl,[ebp+0x8] ; 004067AC 8A5508
    %if ($ - %%insn_004067ac) > 3
        %error "LONG_004067AC"
    %endif
    times 3 - ($ - %%insn_004067ac) db 0
    %%insn_004067af:
    push edx ; 004067AF 52
    %if ($ - %%insn_004067af) > 1
        %error "LONG_004067AF"
    %endif
    times 1 - ($ - %%insn_004067af) db 0
    %%insn_004067b0:
    call 0x4056b2 ; 004067B0 E8FDEEFFFF
    %if ($ - %%insn_004067b0) > 5
        %error "LONG_004067B0"
    %endif
    times 5 - ($ - %%insn_004067b0) db 0
    %%insn_004067b5:
    add esp,0x8 ; 004067B5 83C408
    %if ($ - %%insn_004067b5) > 3
        %error "LONG_004067B5"
    %endif
    times 3 - ($ - %%insn_004067b5) db 0
    %%insn_004067b8:
    mov [ebp-0xc],al ; 004067B8 8845F4
    %if ($ - %%insn_004067b8) > 3
        %error "LONG_004067B8"
    %endif
    times 3 - ($ - %%insn_004067b8) db 0
    %%insn_004067bb:
    movsx eax,byte [ebp-0xc] ; 004067BB 0FBE45F4
    %if ($ - %%insn_004067bb) > 4
        %error "LONG_004067BB"
    %endif
    times 4 - ($ - %%insn_004067bb) db 0
    %%insn_004067bf:
    movsx ecx,byte [ebp-0x4] ; 004067BF 0FBE4DFC
    %if ($ - %%insn_004067bf) > 4
        %error "LONG_004067BF"
    %endif
    times 4 - ($ - %%insn_004067bf) db 0
    db 0x3B, 0xC1 ; 004067C3 3BC1 | cmp eax,ecx | encoding preserved
    %%insn_004067c5:
    jnz short 0x4067cc ; 004067C5 7505
    %if ($ - %%insn_004067c5) > 2
        %error "LONG_004067C5"
    %endif
    times 2 - ($ - %%insn_004067c5) db 0
    %%insn_004067c7:
    call 0x4059d7 ; 004067C7 E80BF2FFFF
    %if ($ - %%insn_004067c7) > 5
        %error "LONG_004067C7"
    %endif
    times 5 - ($ - %%insn_004067c7) db 0
    %%insn_004067cc:
    movsx edx,byte [ebp-0xc] ; 004067CC 0FBE55F4
    %if ($ - %%insn_004067cc) > 4
        %error "LONG_004067CC"
    %endif
    times 4 - ($ - %%insn_004067cc) db 0
    %%insn_004067d0:
    movsx eax,byte [ebp-0x4] ; 004067D0 0FBE45FC
    %if ($ - %%insn_004067d0) > 4
        %error "LONG_004067D0"
    %endif
    times 4 - ($ - %%insn_004067d0) db 0
    db 0x3B, 0xD0 ; 004067D4 3BD0 | cmp edx,eax | encoding preserved
    %%insn_004067d6:
    jng short 0x4067e3 ; 004067D6 7E0B
    %if ($ - %%insn_004067d6) > 2
        %error "LONG_004067D6"
    %endif
    times 2 - ($ - %%insn_004067d6) db 0
    %%insn_004067d8:
    call 0x4059a7 ; 004067D8 E8CAF1FFFF
    %if ($ - %%insn_004067d8) > 5
        %error "LONG_004067D8"
    %endif
    times 5 - ($ - %%insn_004067d8) db 0
    %%insn_004067dd:
    mov cl,[ebp-0xc] ; 004067DD 8A4DF4
    %if ($ - %%insn_004067dd) > 3
        %error "LONG_004067DD"
    %endif
    times 3 - ($ - %%insn_004067dd) db 0
    %%insn_004067e0:
    mov [ebp-0x4],cl ; 004067E0 884DFC
    %if ($ - %%insn_004067e0) > 3
        %error "LONG_004067E0"
    %endif
    times 3 - ($ - %%insn_004067e0) db 0
    %%insn_004067e3:
    movsx edx,byte [0x41f458] ; 004067E3 0FBE1558F44100
    %if ($ - %%insn_004067e3) > 7
        %error "LONG_004067E3"
    %endif
    times 7 - ($ - %%insn_004067e3) db 0
    %%insn_004067ea:
    test edx,edx ; 004067EA 85D2
    %if ($ - %%insn_004067ea) > 2
        %error "LONG_004067EA"
    %endif
    times 2 - ($ - %%insn_004067ea) db 0
    %%insn_004067ec:
    jz short 0x4067f0 ; 004067EC 7402
    %if ($ - %%insn_004067ec) > 2
        %error "LONG_004067EC"
    %endif
    times 2 - ($ - %%insn_004067ec) db 0
    %%insn_004067ee:
    jmp short 0x4067f5 ; 004067EE EB05
    %if ($ - %%insn_004067ee) > 2
        %error "LONG_004067EE"
    %endif
    times 2 - ($ - %%insn_004067ee) db 0
    %%insn_004067f0:
    jmp 0x406707 ; 004067F0 E912FFFFFF
    %if ($ - %%insn_004067f0) > 5
        %error "LONG_004067F0"
    %endif
    times 5 - ($ - %%insn_004067f0) db 0
    %%insn_004067f5:
    mov al,[ebp+0x8] ; 004067F5 8A4508
    %if ($ - %%insn_004067f5) > 3
        %error "LONG_004067F5"
    %endif
    times 3 - ($ - %%insn_004067f5) db 0
    %%insn_004067f8:
    push eax ; 004067F8 50
    %if ($ - %%insn_004067f8) > 1
        %error "LONG_004067F8"
    %endif
    times 1 - ($ - %%insn_004067f8) db 0
    %%insn_004067f9:
    call 0x405a24 ; 004067F9 E826F2FFFF
    %if ($ - %%insn_004067f9) > 5
        %error "LONG_004067F9"
    %endif
    times 5 - ($ - %%insn_004067f9) db 0
    %%insn_004067fe:
    add esp,0x4 ; 004067FE 83C404
    %if ($ - %%insn_004067fe) > 3
        %error "LONG_004067FE"
    %endif
    times 3 - ($ - %%insn_004067fe) db 0
    %%insn_00406801:
    mov ax,0x1 ; 00406801 66B80100
    %if ($ - %%insn_00406801) > 4
        %error "LONG_00406801"
    %endif
    times 4 - ($ - %%insn_00406801) db 0
    db 0x8B, 0xE5 ; 00406805 8BE5 | mov esp,ebp | encoding preserved
    %%insn_00406807:
    pop ebp ; 00406807 5D
    %if ($ - %%insn_00406807) > 1
        %error "LONG_00406807"
    %endif
    times 1 - ($ - %%insn_00406807) db 0
    %%insn_00406808:
    ret ; 00406808 C3
    %if ($ - %%insn_00406808) > 1
        %error "LONG_00406808"
    %endif
    times 1 - ($ - %%insn_00406808) db 0
    %if ($ - %%fragment_start) != 352
        %error "function fragment size drift: 004066A9"
    %endif
%endmacro
