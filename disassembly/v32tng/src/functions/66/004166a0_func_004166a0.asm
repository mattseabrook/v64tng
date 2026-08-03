; PE virtual entry 004166A0
; Ghidra working symbol: FUN_004166a0
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_004166a0_part_00 0
    %%fragment_start:
func_004166a0:
    %%insn_004166a0:
    push ecx ; 004166A0 51
    %if ($ - %%insn_004166a0) > 1
        %error "LONG_004166A0"
    %endif
    times 1 - ($ - %%insn_004166a0) db 0
    %%insn_004166a1:
    push ebx ; 004166A1 53
    %if ($ - %%insn_004166a1) > 1
        %error "LONG_004166A1"
    %endif
    times 1 - ($ - %%insn_004166a1) db 0
    %%insn_004166a2:
    push ebp ; 004166A2 55
    %if ($ - %%insn_004166a2) > 1
        %error "LONG_004166A2"
    %endif
    times 1 - ($ - %%insn_004166a2) db 0
    %%insn_004166a3:
    push esi ; 004166A3 56
    %if ($ - %%insn_004166a3) > 1
        %error "LONG_004166A3"
    %endif
    times 1 - ($ - %%insn_004166a3) db 0
    %%insn_004166a4:
    mov esi,[esp+0x14] ; 004166A4 8B742414
    %if ($ - %%insn_004166a4) > 4
        %error "LONG_004166A4"
    %endif
    times 4 - ($ - %%insn_004166a4) db 0
    %%insn_004166a8:
    push edi ; 004166A8 57
    %if ($ - %%insn_004166a8) > 1
        %error "LONG_004166A8"
    %endif
    times 1 - ($ - %%insn_004166a8) db 0
    %%insn_004166a9:
    cmp byte [esi],0x0 ; 004166A9 803E00
    %if ($ - %%insn_004166a9) > 3
        %error "LONG_004166A9"
    %endif
    times 3 - ($ - %%insn_004166a9) db 0
    %%insn_004166ac:
    jz 0x416795 ; 004166AC 0F84E3000000
    %if ($ - %%insn_004166ac) > 6
        %error "LONG_004166AC"
    %endif
    times 6 - ($ - %%insn_004166ac) db 0
    %%insn_004166b2:
    mov ebx,[esp+0x24] ; 004166B2 8B5C2424
    %if ($ - %%insn_004166b2) > 4
        %error "LONG_004166B2"
    %endif
    times 4 - ($ - %%insn_004166b2) db 0
    %%insn_004166b6:
    mov edi,[esp+0x20] ; 004166B6 8B7C2420
    %if ($ - %%insn_004166b6) > 4
        %error "LONG_004166B6"
    %endif
    times 4 - ($ - %%insn_004166b6) db 0
    %%insn_004166ba:
    mov ecx,[ebx] ; 004166BA 8B0B
    %if ($ - %%insn_004166ba) > 2
        %error "LONG_004166BA"
    %endif
    times 2 - ($ - %%insn_004166ba) db 0
    db 0x33, 0xC0 ; 004166BC 33C0 | xor eax,eax | encoding preserved
    db 0x3B, 0xC8 ; 004166BE 3BC8 | cmp ecx,eax | encoding preserved
    %%insn_004166c0:
    jz 0x416795 ; 004166C0 0F84CF000000
    %if ($ - %%insn_004166c0) > 6
        %error "LONG_004166C0"
    %endif
    times 6 - ($ - %%insn_004166c0) db 0
    db 0x32, 0xD2 ; 004166C6 32D2 | xor dl,dl | encoding preserved
    %%insn_004166c8:
    lea ebx,[esi+0x1] ; 004166C8 8D5E01
    %if ($ - %%insn_004166c8) > 3
        %error "LONG_004166C8"
    %endif
    times 3 - ($ - %%insn_004166c8) db 0
    %%insn_004166cb:
    mov [0x4211d8],eax ; 004166CB A3D8114200
    %if ($ - %%insn_004166cb) > 5
        %error "LONG_004166CB"
    %endif
    times 5 - ($ - %%insn_004166cb) db 0
    %%insn_004166d0:
    mov cl,[esi] ; 004166D0 8A0E
    %if ($ - %%insn_004166d0) > 2
        %error "LONG_004166D0"
    %endif
    times 2 - ($ - %%insn_004166d0) db 0
    %%insn_004166d2:
    mov [esp+0x18],dl ; 004166D2 88542418
    %if ($ - %%insn_004166d2) > 4
        %error "LONG_004166D2"
    %endif
    times 4 - ($ - %%insn_004166d2) db 0
    %%insn_004166d6:
    mov [esp+0x10],ebx ; 004166D6 895C2410
    %if ($ - %%insn_004166d6) > 4
        %error "LONG_004166D6"
    %endif
    times 4 - ($ - %%insn_004166d6) db 0
    db 0x8B, 0xEB ; 004166DA 8BEB | mov ebp,ebx | encoding preserved
    %%insn_004166dc:
    mov bl,[ebp+0x0] ; 004166DC 8A5D00
    %if ($ - %%insn_004166dc) > 3
        %error "LONG_004166DC"
    %endif
    times 3 - ($ - %%insn_004166dc) db 0
    %%insn_004166df:
    inc eax ; 004166DF 40
    %if ($ - %%insn_004166df) > 1
        %error "LONG_004166DF"
    %endif
    times 1 - ($ - %%insn_004166df) db 0
    %%insn_004166e0:
    inc ebp ; 004166E0 45
    %if ($ - %%insn_004166e0) > 1
        %error "LONG_004166E0"
    %endif
    times 1 - ($ - %%insn_004166e0) db 0
    db 0x3A, 0xD9 ; 004166E1 3AD9 | cmp bl,cl | encoding preserved
    %%insn_004166e3:
    jz short 0x4166dc ; 004166E3 74F7
    %if ($ - %%insn_004166e3) > 2
        %error "LONG_004166E3"
    %endif
    times 2 - ($ - %%insn_004166e3) db 0
    %%insn_004166e5:
    dec ebp ; 004166E5 4D
    %if ($ - %%insn_004166e5) > 1
        %error "LONG_004166E5"
    %endif
    times 1 - ($ - %%insn_004166e5) db 0
    %%insn_004166e6:
    mov [esp+0x20],ebp ; 004166E6 896C2420
    %if ($ - %%insn_004166e6) > 4
        %error "LONG_004166E6"
    %endif
    times 4 - ($ - %%insn_004166e6) db 0
    %%insn_004166ea:
    movsx ebp,cl ; 004166EA 0FBEE9
    %if ($ - %%insn_004166ea) > 3
        %error "LONG_004166EA"
    %endif
    times 3 - ($ - %%insn_004166ea) db 0
    %%insn_004166ed:
    add ebp,0xffffffffffffffd9 ; 004166ED 83C5D9
    %if ($ - %%insn_004166ed) > 3
        %error "LONG_004166ED"
    %endif
    times 3 - ($ - %%insn_004166ed) db 0
    %%insn_004166f0:
    cmp ebp,0x52 ; 004166F0 83FD52
    %if ($ - %%insn_004166f0) > 3
        %error "LONG_004166F0"
    %endif
    times 3 - ($ - %%insn_004166f0) db 0
    %%insn_004166f3:
    ja short 0x416721 ; 004166F3 772C
    %if ($ - %%insn_004166f3) > 2
        %error "LONG_004166F3"
    %endif
    times 2 - ($ - %%insn_004166f3) db 0
    db 0x33, 0xC9 ; 004166F5 33C9 | xor ecx,ecx | encoding preserved
    %%insn_004166f7:
    mov cl,[ebp+0x416978] ; 004166F7 8A8D78694100
    %if ($ - %%insn_004166f7) > 6
        %error "LONG_004166F7"
    %endif
    times 6 - ($ - %%insn_004166f7) db 0
    %%insn_004166fd:
    jmp dword near [ecx*4+0x41694c] ; 004166FD FF248D4C694100
    %if ($ - %%insn_004166fd) > 7
        %error "LONG_004166FD"
    %endif
    times 7 - ($ - %%insn_004166fd) db 0
    %%insn_00416704:
    dec eax ; 00416704 48
    %if ($ - %%insn_00416704) > 1
        %error "LONG_00416704"
    %endif
    times 1 - ($ - %%insn_00416704) db 0
    %%insn_00416705:
    cmp eax,0x3 ; 00416705 83F803
    %if ($ - %%insn_00416705) > 3
        %error "LONG_00416705"
    %endif
    times 3 - ($ - %%insn_00416705) db 0
    %%insn_00416708:
    ja short 0x416721 ; 00416708 7717
    %if ($ - %%insn_00416708) > 2
        %error "LONG_00416708"
    %endif
    times 2 - ($ - %%insn_00416708) db 0
    %%insn_0041670a:
    jmp dword near [eax*4+0x4169cc] ; 0041670A FF2485CC694100
    %if ($ - %%insn_0041670a) > 7
        %error "LONG_0041670A"
    %endif
    times 7 - ($ - %%insn_0041670a) db 0
    %%insn_00416711:
    mov dword [0x4211d8],0x1 ; 00416711 C705D811420001000000
    %if ($ - %%insn_00416711) > 10
        %error "LONG_00416711"
    %endif
    times 10 - ($ - %%insn_00416711) db 0
    %%insn_0041671b:
    mov dl,0x6d ; 0041671B B26D
    %if ($ - %%insn_0041671b) > 2
        %error "LONG_0041671B"
    %endif
    times 2 - ($ - %%insn_0041671b) db 0
    %%insn_0041671d:
    mov [esp+0x18],dl ; 0041671D 88542418
    %if ($ - %%insn_0041671d) > 4
        %error "LONG_0041671D"
    %endif
    times 4 - ($ - %%insn_0041671d) db 0
    %%insn_00416721:
    test dl,dl ; 00416721 84D2
    %if ($ - %%insn_00416721) > 2
        %error "LONG_00416721"
    %endif
    times 2 - ($ - %%insn_00416721) db 0
    %%insn_00416723:
    jz short 0x416748 ; 00416723 7423
    %if ($ - %%insn_00416723) > 2
        %error "LONG_00416723"
    %endif
    times 2 - ($ - %%insn_00416723) db 0
    %%insn_00416725:
    mov ecx,[esp+0x28] ; 00416725 8B4C2428
    %if ($ - %%insn_00416725) > 4
        %error "LONG_00416725"
    %endif
    times 4 - ($ - %%insn_00416725) db 0
    %%insn_00416729:
    mov ebx,[esp+0x24] ; 00416729 8B5C2424
    %if ($ - %%insn_00416729) > 4
        %error "LONG_00416729"
    %endif
    times 4 - ($ - %%insn_00416729) db 0
    %%insn_0041672d:
    mov edx,[esp+0x1c] ; 0041672D 8B54241C
    %if ($ - %%insn_0041672d) > 4
        %error "LONG_0041672D"
    %endif
    times 4 - ($ - %%insn_0041672d) db 0
    %%insn_00416731:
    mov eax,[esp+0x18] ; 00416731 8B442418
    %if ($ - %%insn_00416731) > 4
        %error "LONG_00416731"
    %endif
    times 4 - ($ - %%insn_00416731) db 0
    %%insn_00416735:
    push ecx ; 00416735 51
    %if ($ - %%insn_00416735) > 1
        %error "LONG_00416735"
    %endif
    times 1 - ($ - %%insn_00416735) db 0
    %%insn_00416736:
    push ebx ; 00416736 53
    %if ($ - %%insn_00416736) > 1
        %error "LONG_00416736"
    %endif
    times 1 - ($ - %%insn_00416736) db 0
    %%insn_00416737:
    push edi ; 00416737 57
    %if ($ - %%insn_00416737) > 1
        %error "LONG_00416737"
    %endif
    times 1 - ($ - %%insn_00416737) db 0
    %%insn_00416738:
    push edx ; 00416738 52
    %if ($ - %%insn_00416738) > 1
        %error "LONG_00416738"
    %endif
    times 1 - ($ - %%insn_00416738) db 0
    %%insn_00416739:
    push eax ; 00416739 50
    %if ($ - %%insn_00416739) > 1
        %error "LONG_00416739"
    %endif
    times 1 - ($ - %%insn_00416739) db 0
    %%insn_0041673a:
    call 0x415fc0 ; 0041673A E881F8FFFF
    %if ($ - %%insn_0041673a) > 5
        %error "LONG_0041673A"
    %endif
    times 5 - ($ - %%insn_0041673a) db 0
    %%insn_0041673f:
    mov esi,[esp+0x34] ; 0041673F 8B742434
    %if ($ - %%insn_0041673f) > 4
        %error "LONG_0041673F"
    %endif
    times 4 - ($ - %%insn_0041673f) db 0
    %%insn_00416743:
    add esp,0x14 ; 00416743 83C414
    %if ($ - %%insn_00416743) > 3
        %error "LONG_00416743"
    %endif
    times 3 - ($ - %%insn_00416743) db 0
    %%insn_00416746:
    jmp short 0x41678c ; 00416746 EB44
    %if ($ - %%insn_00416746) > 2
        %error "LONG_00416746"
    %endif
    times 2 - ($ - %%insn_00416746) db 0
    %%insn_00416748:
    mov al,[esi] ; 00416748 8A06
    %if ($ - %%insn_00416748) > 2
        %error "LONG_00416748"
    %endif
    times 2 - ($ - %%insn_00416748) db 0
    %%insn_0041674a:
    mov edx,[0x41e640] ; 0041674A 8B1540E64100
    %if ($ - %%insn_0041674a) > 6
        %error "LONG_0041674A"
    %endif
    times 6 - ($ - %%insn_0041674a) db 0
    db 0x8B, 0xC8 ; 00416750 8BC8 | mov ecx,eax | encoding preserved
    %%insn_00416752:
    and ecx,0xff ; 00416752 81E1FF000000
    %if ($ - %%insn_00416752) > 6
        %error "LONG_00416752"
    %endif
    times 6 - ($ - %%insn_00416752) db 0
    %%insn_00416758:
    test byte [edx+ecx*2+0x1],0x80 ; 00416758 F6444A0180
    %if ($ - %%insn_00416758) > 5
        %error "LONG_00416758"
    %endif
    times 5 - ($ - %%insn_00416758) db 0
    %%insn_0041675d:
    jz short 0x416777 ; 0041675D 7418
    %if ($ - %%insn_0041675d) > 2
        %error "LONG_0041675D"
    %endif
    times 2 - ($ - %%insn_0041675d) db 0
    %%insn_0041675f:
    mov ecx,[edi] ; 0041675F 8B0F
    %if ($ - %%insn_0041675f) > 2
        %error "LONG_0041675F"
    %endif
    times 2 - ($ - %%insn_0041675f) db 0
    %%insn_00416761:
    mov ebx,[esp+0x24] ; 00416761 8B5C2424
    %if ($ - %%insn_00416761) > 4
        %error "LONG_00416761"
    %endif
    times 4 - ($ - %%insn_00416761) db 0
    %%insn_00416765:
    mov esi,[esp+0x10] ; 00416765 8B742410
    %if ($ - %%insn_00416765) > 4
        %error "LONG_00416765"
    %endif
    times 4 - ($ - %%insn_00416765) db 0
    %%insn_00416769:
    mov [ecx],al ; 00416769 8801
    %if ($ - %%insn_00416769) > 2
        %error "LONG_00416769"
    %endif
    times 2 - ($ - %%insn_00416769) db 0
    %%insn_0041676b:
    mov ecx,[edi] ; 0041676B 8B0F
    %if ($ - %%insn_0041676b) > 2
        %error "LONG_0041676B"
    %endif
    times 2 - ($ - %%insn_0041676b) db 0
    %%insn_0041676d:
    inc ecx ; 0041676D 41
    %if ($ - %%insn_0041676d) > 1
        %error "LONG_0041676D"
    %endif
    times 1 - ($ - %%insn_0041676d) db 0
    %%insn_0041676e:
    mov [edi],ecx ; 0041676E 890F
    %if ($ - %%insn_0041676e) > 2
        %error "LONG_0041676E"
    %endif
    times 2 - ($ - %%insn_0041676e) db 0
    %%insn_00416770:
    mov eax,[ebx] ; 00416770 8B03
    %if ($ - %%insn_00416770) > 2
        %error "LONG_00416770"
    %endif
    times 2 - ($ - %%insn_00416770) db 0
    %%insn_00416772:
    dec eax ; 00416772 48
    %if ($ - %%insn_00416772) > 1
        %error "LONG_00416772"
    %endif
    times 1 - ($ - %%insn_00416772) db 0
    %%insn_00416773:
    mov [ebx],eax ; 00416773 8903
    %if ($ - %%insn_00416773) > 2
        %error "LONG_00416773"
    %endif
    times 2 - ($ - %%insn_00416773) db 0
    %%insn_00416775:
    jmp short 0x41677b ; 00416775 EB04
    %if ($ - %%insn_00416775) > 2
        %error "LONG_00416775"
    %endif
    times 2 - ($ - %%insn_00416775) db 0
    %%insn_00416777:
    mov ebx,[esp+0x24] ; 00416777 8B5C2424
    %if ($ - %%insn_00416777) > 4
        %error "LONG_00416777"
    %endif
    times 4 - ($ - %%insn_00416777) db 0
    %%insn_0041677b:
    mov edx,[edi] ; 0041677B 8B17
    %if ($ - %%insn_0041677b) > 2
        %error "LONG_0041677B"
    %endif
    times 2 - ($ - %%insn_0041677b) db 0
    %%insn_0041677d:
    mov al,[esi] ; 0041677D 8A06
    %if ($ - %%insn_0041677d) > 2
        %error "LONG_0041677D"
    %endif
    times 2 - ($ - %%insn_0041677d) db 0
    %%insn_0041677f:
    mov [edx],al ; 0041677F 8802
    %if ($ - %%insn_0041677f) > 2
        %error "LONG_0041677F"
    %endif
    times 2 - ($ - %%insn_0041677f) db 0
    %%insn_00416781:
    mov edx,[edi] ; 00416781 8B17
    %if ($ - %%insn_00416781) > 2
        %error "LONG_00416781"
    %endif
    times 2 - ($ - %%insn_00416781) db 0
    %%insn_00416783:
    inc edx ; 00416783 42
    %if ($ - %%insn_00416783) > 1
        %error "LONG_00416783"
    %endif
    times 1 - ($ - %%insn_00416783) db 0
    %%insn_00416784:
    inc esi ; 00416784 46
    %if ($ - %%insn_00416784) > 1
        %error "LONG_00416784"
    %endif
    times 1 - ($ - %%insn_00416784) db 0
    %%insn_00416785:
    mov [edi],edx ; 00416785 8917
    %if ($ - %%insn_00416785) > 2
        %error "LONG_00416785"
    %endif
    times 2 - ($ - %%insn_00416785) db 0
    %%insn_00416787:
    mov eax,[ebx] ; 00416787 8B03
    %if ($ - %%insn_00416787) > 2
        %error "LONG_00416787"
    %endif
    times 2 - ($ - %%insn_00416787) db 0
    %%insn_00416789:
    dec eax ; 00416789 48
    %if ($ - %%insn_00416789) > 1
        %error "LONG_00416789"
    %endif
    times 1 - ($ - %%insn_00416789) db 0
    %%insn_0041678a:
    mov [ebx],eax ; 0041678A 8903
    %if ($ - %%insn_0041678a) > 2
        %error "LONG_0041678A"
    %endif
    times 2 - ($ - %%insn_0041678a) db 0
    %%insn_0041678c:
    cmp byte [esi],0x0 ; 0041678C 803E00
    %if ($ - %%insn_0041678c) > 3
        %error "LONG_0041678C"
    %endif
    times 3 - ($ - %%insn_0041678c) db 0
    %%insn_0041678f:
    jnz 0x4166ba ; 0041678F 0F8525FFFFFF
    %if ($ - %%insn_0041678f) > 6
        %error "LONG_0041678F"
    %endif
    times 6 - ($ - %%insn_0041678f) db 0
    %%insn_00416795:
    pop edi ; 00416795 5F
    %if ($ - %%insn_00416795) > 1
        %error "LONG_00416795"
    %endif
    times 1 - ($ - %%insn_00416795) db 0
    %%insn_00416796:
    pop esi ; 00416796 5E
    %if ($ - %%insn_00416796) > 1
        %error "LONG_00416796"
    %endif
    times 1 - ($ - %%insn_00416796) db 0
    %%insn_00416797:
    pop ebp ; 00416797 5D
    %if ($ - %%insn_00416797) > 1
        %error "LONG_00416797"
    %endif
    times 1 - ($ - %%insn_00416797) db 0
    %%insn_00416798:
    pop ebx ; 00416798 5B
    %if ($ - %%insn_00416798) > 1
        %error "LONG_00416798"
    %endif
    times 1 - ($ - %%insn_00416798) db 0
    %%insn_00416799:
    pop ecx ; 00416799 59
    %if ($ - %%insn_00416799) > 1
        %error "LONG_00416799"
    %endif
    times 1 - ($ - %%insn_00416799) db 0
    %%insn_0041679a:
    ret ; 0041679A C3
    %if ($ - %%insn_0041679a) > 1
        %error "LONG_0041679A"
    %endif
    times 1 - ($ - %%insn_0041679a) db 0
    %%insn_0041679b:
    mov dl,0x62 ; 0041679B B262
    %if ($ - %%insn_0041679b) > 2
        %error "LONG_0041679B"
    %endif
    times 2 - ($ - %%insn_0041679b) db 0
    %%insn_0041679d:
    mov [esp+0x18],dl ; 0041679D 88542418
    %if ($ - %%insn_0041679d) > 4
        %error "LONG_0041679D"
    %endif
    times 4 - ($ - %%insn_0041679d) db 0
    %%insn_004167a1:
    jmp 0x416721 ; 004167A1 E97BFFFFFF
    %if ($ - %%insn_004167a1) > 5
        %error "LONG_004167A1"
    %endif
    times 5 - ($ - %%insn_004167a1) db 0
    %%insn_004167a6:
    mov dl,0x42 ; 004167A6 B242
    %if ($ - %%insn_004167a6) > 2
        %error "LONG_004167A6"
    %endif
    times 2 - ($ - %%insn_004167a6) db 0
    %%insn_004167a8:
    mov [esp+0x18],dl ; 004167A8 88542418
    %if ($ - %%insn_004167a8) > 4
        %error "LONG_004167A8"
    %endif
    times 4 - ($ - %%insn_004167a8) db 0
    %%insn_004167ac:
    jmp 0x416721 ; 004167AC E970FFFFFF
    %if ($ - %%insn_004167ac) > 5
        %error "LONG_004167AC"
    %endif
    times 5 - ($ - %%insn_004167ac) db 0
    %%insn_004167b1:
    dec eax ; 004167B1 48
    %if ($ - %%insn_004167b1) > 1
        %error "LONG_004167B1"
    %endif
    times 1 - ($ - %%insn_004167b1) db 0
    %%insn_004167b2:
    cmp eax,0x3 ; 004167B2 83F803
    %if ($ - %%insn_004167b2) > 3
        %error "LONG_004167B2"
    %endif
    times 3 - ($ - %%insn_004167b2) db 0
    %%insn_004167b5:
    ja 0x416721 ; 004167B5 0F8766FFFFFF
    %if ($ - %%insn_004167b5) > 6
        %error "LONG_004167B5"
    %endif
    times 6 - ($ - %%insn_004167b5) db 0
    %%insn_004167bb:
    jmp dword near [eax*4+0x4169dc] ; 004167BB FF2485DC694100
    %if ($ - %%insn_004167bb) > 7
        %error "LONG_004167BB"
    %endif
    times 7 - ($ - %%insn_004167bb) db 0
    %%insn_004167c2:
    mov dword [0x4211d8],0x1 ; 004167C2 C705D811420001000000
    %if ($ - %%insn_004167c2) > 10
        %error "LONG_004167C2"
    %endif
    times 10 - ($ - %%insn_004167c2) db 0
    %%insn_004167cc:
    mov dl,0x64 ; 004167CC B264
    %if ($ - %%insn_004167cc) > 2
        %error "LONG_004167CC"
    %endif
    times 2 - ($ - %%insn_004167cc) db 0
    %%insn_004167ce:
    mov [esp+0x18],dl ; 004167CE 88542418
    %if ($ - %%insn_004167ce) > 4
        %error "LONG_004167CE"
    %endif
    times 4 - ($ - %%insn_004167ce) db 0
    %%insn_004167d2:
    jmp 0x416721 ; 004167D2 E94AFFFFFF
    %if ($ - %%insn_004167d2) > 5
        %error "LONG_004167D2"
    %endif
    times 5 - ($ - %%insn_004167d2) db 0
    %%insn_004167d7:
    mov dl,0x61 ; 004167D7 B261
    %if ($ - %%insn_004167d7) > 2
        %error "LONG_004167D7"
    %endif
    times 2 - ($ - %%insn_004167d7) db 0
    %%insn_004167d9:
    mov [esp+0x18],dl ; 004167D9 88542418
    %if ($ - %%insn_004167d9) > 4
        %error "LONG_004167D9"
    %endif
    times 4 - ($ - %%insn_004167d9) db 0
    %%insn_004167dd:
    jmp 0x416721 ; 004167DD E93FFFFFFF
    %if ($ - %%insn_004167dd) > 5
        %error "LONG_004167DD"
    %endif
    times 5 - ($ - %%insn_004167dd) db 0
    %%insn_004167e2:
    mov dl,0x41 ; 004167E2 B241
    %if ($ - %%insn_004167e2) > 2
        %error "LONG_004167E2"
    %endif
    times 2 - ($ - %%insn_004167e2) db 0
    %%insn_004167e4:
    mov [esp+0x18],dl ; 004167E4 88542418
    %if ($ - %%insn_004167e4) > 4
        %error "LONG_004167E4"
    %endif
    times 4 - ($ - %%insn_004167e4) db 0
    %%insn_004167e8:
    jmp 0x416721 ; 004167E8 E934FFFFFF
    %if ($ - %%insn_004167e8) > 5
        %error "LONG_004167E8"
    %endif
    times 5 - ($ - %%insn_004167e8) db 0
    %%insn_004167ed:
    sub eax,0x2 ; 004167ED 83E802
    %if ($ - %%insn_004167ed) > 3
        %error "LONG_004167ED"
    %endif
    times 3 - ($ - %%insn_004167ed) db 0
    %%insn_004167f0:
    jz short 0x416806 ; 004167F0 7414
    %if ($ - %%insn_004167f0) > 2
        %error "LONG_004167F0"
    %endif
    times 2 - ($ - %%insn_004167f0) db 0
    %%insn_004167f2:
    sub eax,0x2 ; 004167F2 83E802
    %if ($ - %%insn_004167f2) > 3
        %error "LONG_004167F2"
    %endif
    times 3 - ($ - %%insn_004167f2) db 0
    %%insn_004167f5:
    jnz 0x416721 ; 004167F5 0F8526FFFFFF
    %if ($ - %%insn_004167f5) > 6
        %error "LONG_004167F5"
    %endif
    times 6 - ($ - %%insn_004167f5) db 0
    %%insn_004167fb:
    mov dl,0x59 ; 004167FB B259
    %if ($ - %%insn_004167fb) > 2
        %error "LONG_004167FB"
    %endif
    times 2 - ($ - %%insn_004167fb) db 0
    %%insn_004167fd:
    mov [esp+0x18],dl ; 004167FD 88542418
    %if ($ - %%insn_004167fd) > 4
        %error "LONG_004167FD"
    %endif
    times 4 - ($ - %%insn_004167fd) db 0
    %%insn_00416801:
    jmp 0x416721 ; 00416801 E91BFFFFFF
    %if ($ - %%insn_00416801) > 5
        %error "LONG_00416801"
    %endif
    times 5 - ($ - %%insn_00416801) db 0
    %%insn_00416806:
    mov dl,0x79 ; 00416806 B279
    %if ($ - %%insn_00416806) > 2
        %error "LONG_00416806"
    %endif
    times 2 - ($ - %%insn_00416806) db 0
    %%insn_00416808:
    mov [esp+0x18],dl ; 00416808 88542418
    %if ($ - %%insn_00416808) > 4
        %error "LONG_00416808"
    %endif
    times 4 - ($ - %%insn_00416808) db 0
    %%insn_0041680c:
    jmp 0x416721 ; 0041680C E910FFFFFF
    %if ($ - %%insn_0041680c) > 5
        %error "LONG_0041680C"
    %endif
    times 5 - ($ - %%insn_0041680c) db 0
    %%insn_00416811:
    dec eax ; 00416811 48
    %if ($ - %%insn_00416811) > 1
        %error "LONG_00416811"
    %endif
    times 1 - ($ - %%insn_00416811) db 0
    %%insn_00416812:
    jz short 0x41681c ; 00416812 7408
    %if ($ - %%insn_00416812) > 2
        %error "LONG_00416812"
    %endif
    times 2 - ($ - %%insn_00416812) db 0
    %%insn_00416814:
    dec eax ; 00416814 48
    %if ($ - %%insn_00416814) > 1
        %error "LONG_00416814"
    %endif
    times 1 - ($ - %%insn_00416814) db 0
    %%insn_00416815:
    jz short 0x416826 ; 00416815 740F
    %if ($ - %%insn_00416815) > 2
        %error "LONG_00416815"
    %endif
    times 2 - ($ - %%insn_00416815) db 0
    %%insn_00416817:
    jmp 0x416721 ; 00416817 E905FFFFFF
    %if ($ - %%insn_00416817) > 5
        %error "LONG_00416817"
    %endif
    times 5 - ($ - %%insn_00416817) db 0
    %%insn_0041681c:
    mov dword [0x4211d8],0x1 ; 0041681C C705D811420001000000
    %if ($ - %%insn_0041681c) > 10
        %error "LONG_0041681C"
    %endif
    times 10 - ($ - %%insn_0041681c) db 0
    %%insn_00416826:
    mov dl,0x49 ; 00416826 B249
    %if ($ - %%insn_00416826) > 2
        %error "LONG_00416826"
    %endif
    times 2 - ($ - %%insn_00416826) db 0
    %%insn_00416828:
    mov [esp+0x18],dl ; 00416828 88542418
    %if ($ - %%insn_00416828) > 4
        %error "LONG_00416828"
    %endif
    times 4 - ($ - %%insn_00416828) db 0
    %%insn_0041682c:
    jmp 0x416721 ; 0041682C E9F0FEFFFF
    %if ($ - %%insn_0041682c) > 5
        %error "LONG_0041682C"
    %endif
    times 5 - ($ - %%insn_0041682c) db 0
    %%insn_00416831:
    dec eax ; 00416831 48
    %if ($ - %%insn_00416831) > 1
        %error "LONG_00416831"
    %endif
    times 1 - ($ - %%insn_00416831) db 0
    %%insn_00416832:
    jz short 0x41683c ; 00416832 7408
    %if ($ - %%insn_00416832) > 2
        %error "LONG_00416832"
    %endif
    times 2 - ($ - %%insn_00416832) db 0
    %%insn_00416834:
    dec eax ; 00416834 48
    %if ($ - %%insn_00416834) > 1
        %error "LONG_00416834"
    %endif
    times 1 - ($ - %%insn_00416834) db 0
    %%insn_00416835:
    jz short 0x416846 ; 00416835 740F
    %if ($ - %%insn_00416835) > 2
        %error "LONG_00416835"
    %endif
    times 2 - ($ - %%insn_00416835) db 0
    %%insn_00416837:
    jmp 0x416721 ; 00416837 E9E5FEFFFF
    %if ($ - %%insn_00416837) > 5
        %error "LONG_00416837"
    %endif
    times 5 - ($ - %%insn_00416837) db 0
    %%insn_0041683c:
    mov dword [0x4211d8],0x1 ; 0041683C C705D811420001000000
    %if ($ - %%insn_0041683c) > 10
        %error "LONG_0041683C"
    %endif
    times 10 - ($ - %%insn_0041683c) db 0
    %%insn_00416846:
    mov dl,0x48 ; 00416846 B248
    %if ($ - %%insn_00416846) > 2
        %error "LONG_00416846"
    %endif
    times 2 - ($ - %%insn_00416846) db 0
    %%insn_00416848:
    mov [esp+0x18],dl ; 00416848 88542418
    %if ($ - %%insn_00416848) > 4
        %error "LONG_00416848"
    %endif
    times 4 - ($ - %%insn_00416848) db 0
    %%insn_0041684c:
    jmp 0x416721 ; 0041684C E9D0FEFFFF
    %if ($ - %%insn_0041684c) > 5
        %error "LONG_0041684C"
    %endif
    times 5 - ($ - %%insn_0041684c) db 0
    %%insn_00416851:
    dec eax ; 00416851 48
    %if ($ - %%insn_00416851) > 1
        %error "LONG_00416851"
    %endif
    times 1 - ($ - %%insn_00416851) db 0
    %%insn_00416852:
    jz short 0x41685c ; 00416852 7408
    %if ($ - %%insn_00416852) > 2
        %error "LONG_00416852"
    %endif
    times 2 - ($ - %%insn_00416852) db 0
    %%insn_00416854:
    dec eax ; 00416854 48
    %if ($ - %%insn_00416854) > 1
        %error "LONG_00416854"
    %endif
    times 1 - ($ - %%insn_00416854) db 0
    %%insn_00416855:
    jz short 0x416866 ; 00416855 740F
    %if ($ - %%insn_00416855) > 2
        %error "LONG_00416855"
    %endif
    times 2 - ($ - %%insn_00416855) db 0
    %%insn_00416857:
    jmp 0x416721 ; 00416857 E9C5FEFFFF
    %if ($ - %%insn_00416857) > 5
        %error "LONG_00416857"
    %endif
    times 5 - ($ - %%insn_00416857) db 0
    %%insn_0041685c:
    mov dword [0x4211d8],0x1 ; 0041685C C705D811420001000000
    %if ($ - %%insn_0041685c) > 10
        %error "LONG_0041685C"
    %endif
    times 10 - ($ - %%insn_0041685c) db 0
    %%insn_00416866:
    mov dl,0x4d ; 00416866 B24D
    %if ($ - %%insn_00416866) > 2
        %error "LONG_00416866"
    %endif
    times 2 - ($ - %%insn_00416866) db 0
    %%insn_00416868:
    mov [esp+0x18],dl ; 00416868 88542418
    %if ($ - %%insn_00416868) > 4
        %error "LONG_00416868"
    %endif
    times 4 - ($ - %%insn_00416868) db 0
    %%insn_0041686c:
    jmp 0x416721 ; 0041686C E9B0FEFFFF
    %if ($ - %%insn_0041686c) > 5
        %error "LONG_0041686C"
    %endif
    times 5 - ($ - %%insn_0041686c) db 0
    %%insn_00416871:
    dec eax ; 00416871 48
    %if ($ - %%insn_00416871) > 1
        %error "LONG_00416871"
    %endif
    times 1 - ($ - %%insn_00416871) db 0
    %%insn_00416872:
    jz short 0x41687c ; 00416872 7408
    %if ($ - %%insn_00416872) > 2
        %error "LONG_00416872"
    %endif
    times 2 - ($ - %%insn_00416872) db 0
    %%insn_00416874:
    dec eax ; 00416874 48
    %if ($ - %%insn_00416874) > 1
        %error "LONG_00416874"
    %endif
    times 1 - ($ - %%insn_00416874) db 0
    %%insn_00416875:
    jz short 0x416886 ; 00416875 740F
    %if ($ - %%insn_00416875) > 2
        %error "LONG_00416875"
    %endif
    times 2 - ($ - %%insn_00416875) db 0
    %%insn_00416877:
    jmp 0x416721 ; 00416877 E9A5FEFFFF
    %if ($ - %%insn_00416877) > 5
        %error "LONG_00416877"
    %endif
    times 5 - ($ - %%insn_00416877) db 0
    %%insn_0041687c:
    mov dword [0x4211d8],0x1 ; 0041687C C705D811420001000000
    %if ($ - %%insn_0041687c) > 10
        %error "LONG_0041687C"
    %endif
    times 10 - ($ - %%insn_0041687c) db 0
    %%insn_00416886:
    mov dl,0x53 ; 00416886 B253
    %if ($ - %%insn_00416886) > 2
        %error "LONG_00416886"
    %endif
    times 2 - ($ - %%insn_00416886) db 0
    %%insn_00416888:
    mov [esp+0x18],dl ; 00416888 88542418
    %if ($ - %%insn_00416888) > 4
        %error "LONG_00416888"
    %endif
    times 4 - ($ - %%insn_00416888) db 0
    %%insn_0041688c:
    jmp 0x416721 ; 0041688C E990FEFFFF
    %if ($ - %%insn_0041688c) > 5
        %error "LONG_0041688C"
    %endif
    times 5 - ($ - %%insn_0041688c) db 0
    %%insn_00416891:
    push dword 0x41ac40 ; 00416891 6840AC4100
    %if ($ - %%insn_00416891) > 5
        %error "LONG_00416891"
    %endif
    times 5 - ($ - %%insn_00416891) db 0
    %%insn_00416896:
    push esi ; 00416896 56
    %if ($ - %%insn_00416896) > 1
        %error "LONG_00416896"
    %endif
    times 1 - ($ - %%insn_00416896) db 0
    %%insn_00416897:
    call 0x40d2f0 ; 00416897 E8546AFFFF
    %if ($ - %%insn_00416897) > 5
        %error "LONG_00416897"
    %endif
    times 5 - ($ - %%insn_00416897) db 0
    %%insn_0041689c:
    add esp,0x8 ; 0041689C 83C408
    %if ($ - %%insn_0041689c) > 3
        %error "LONG_0041689C"
    %endif
    times 3 - ($ - %%insn_0041689c) db 0
    %%insn_0041689f:
    test eax,eax ; 0041689F 85C0
    %if ($ - %%insn_0041689f) > 2
        %error "LONG_0041689F"
    %endif
    times 2 - ($ - %%insn_0041689f) db 0
    %%insn_004168a1:
    jnz short 0x4168b5 ; 004168A1 7512
    %if ($ - %%insn_004168a1) > 2
        %error "LONG_004168A1"
    %endif
    times 2 - ($ - %%insn_004168a1) db 0
    %%insn_004168a3:
    lea edx,[esi+0x5] ; 004168A3 8D5605
    %if ($ - %%insn_004168a3) > 3
        %error "LONG_004168A3"
    %endif
    times 3 - ($ - %%insn_004168a3) db 0
    %%insn_004168a6:
    mov [esp+0x20],edx ; 004168A6 89542420
    %if ($ - %%insn_004168a6) > 4
        %error "LONG_004168A6"
    %endif
    times 4 - ($ - %%insn_004168a6) db 0
    %%insn_004168aa:
    mov dl,0x70 ; 004168AA B270
    %if ($ - %%insn_004168aa) > 2
        %error "LONG_004168AA"
    %endif
    times 2 - ($ - %%insn_004168aa) db 0
    %%insn_004168ac:
    mov [esp+0x18],dl ; 004168AC 88542418
    %if ($ - %%insn_004168ac) > 4
        %error "LONG_004168AC"
    %endif
    times 4 - ($ - %%insn_004168ac) db 0
    %%insn_004168b0:
    jmp 0x416721 ; 004168B0 E96CFEFFFF
    %if ($ - %%insn_004168b0) > 5
        %error "LONG_004168B0"
    %endif
    times 5 - ($ - %%insn_004168b0) db 0
    %%insn_004168b5:
    push dword 0x41ac3c ; 004168B5 683CAC4100
    %if ($ - %%insn_004168b5) > 5
        %error "LONG_004168B5"
    %endif
    times 5 - ($ - %%insn_004168b5) db 0
    %%insn_004168ba:
    push esi ; 004168BA 56
    %if ($ - %%insn_004168ba) > 1
        %error "LONG_004168BA"
    %endif
    times 1 - ($ - %%insn_004168ba) db 0
    %%insn_004168bb:
    call 0x40d2f0 ; 004168BB E8306AFFFF
    %if ($ - %%insn_004168bb) > 5
        %error "LONG_004168BB"
    %endif
    times 5 - ($ - %%insn_004168bb) db 0
    %%insn_004168c0:
    add esp,0x8 ; 004168C0 83C408
    %if ($ - %%insn_004168c0) > 3
        %error "LONG_004168C0"
    %endif
    times 3 - ($ - %%insn_004168c0) db 0
    %%insn_004168c3:
    test eax,eax ; 004168C3 85C0
    %if ($ - %%insn_004168c3) > 2
        %error "LONG_004168C3"
    %endif
    times 2 - ($ - %%insn_004168c3) db 0
    %%insn_004168c5:
    jnz short 0x4168ce ; 004168C5 7507
    %if ($ - %%insn_004168c5) > 2
        %error "LONG_004168C5"
    %endif
    times 2 - ($ - %%insn_004168c5) db 0
    %%insn_004168c7:
    lea eax,[esi+0x3] ; 004168C7 8D4603
    %if ($ - %%insn_004168c7) > 3
        %error "LONG_004168C7"
    %endif
    times 3 - ($ - %%insn_004168c7) db 0
    %%insn_004168ca:
    mov [esp+0x20],eax ; 004168CA 89442420
    %if ($ - %%insn_004168ca) > 4
        %error "LONG_004168CA"
    %endif
    times 4 - ($ - %%insn_004168ca) db 0
    %%insn_004168ce:
    mov dl,0x70 ; 004168CE B270
    %if ($ - %%insn_004168ce) > 2
        %error "LONG_004168CE"
    %endif
    times 2 - ($ - %%insn_004168ce) db 0
    %%insn_004168d0:
    mov [esp+0x18],dl ; 004168D0 88542418
    %if ($ - %%insn_004168d0) > 4
        %error "LONG_004168D0"
    %endif
    times 4 - ($ - %%insn_004168d0) db 0
    %%insn_004168d4:
    jmp 0x416721 ; 004168D4 E948FEFFFF
    %if ($ - %%insn_004168d4) > 5
        %error "LONG_004168D4"
    %endif
    times 5 - ($ - %%insn_004168d4) db 0
    %%insn_004168d9:
    test al,0x1 ; 004168D9 A801
    %if ($ - %%insn_004168d9) > 2
        %error "LONG_004168D9"
    %endif
    times 2 - ($ - %%insn_004168d9) db 0
    %%insn_004168db:
    jz short 0x416940 ; 004168DB 7463
    %if ($ - %%insn_004168db) > 2
        %error "LONG_004168DB"
    %endif
    times 2 - ($ - %%insn_004168db) db 0
    %%insn_004168dd:
    mov ebx,[esp+0x24] ; 004168DD 8B5C2424
    %if ($ - %%insn_004168dd) > 4
        %error "LONG_004168DD"
    %endif
    times 4 - ($ - %%insn_004168dd) db 0
    db 0x03, 0xF0 ; 004168E1 03F0 | add esi,eax | encoding preserved
    %%insn_004168e3:
    mov al,[esi] ; 004168E3 8A06
    %if ($ - %%insn_004168e3) > 2
        %error "LONG_004168E3"
    %endif
    times 2 - ($ - %%insn_004168e3) db 0
    %%insn_004168e5:
    test al,al ; 004168E5 84C0
    %if ($ - %%insn_004168e5) > 2
        %error "LONG_004168E5"
    %endif
    times 2 - ($ - %%insn_004168e5) db 0
    %%insn_004168e7:
    jz 0x41678c ; 004168E7 0F849FFEFFFF
    %if ($ - %%insn_004168e7) > 6
        %error "LONG_004168E7"
    %endif
    times 6 - ($ - %%insn_004168e7) db 0
    %%insn_004168ed:
    cmp dword [ebx],0x0 ; 004168ED 833B00
    %if ($ - %%insn_004168ed) > 3
        %error "LONG_004168ED"
    %endif
    times 3 - ($ - %%insn_004168ed) db 0
    %%insn_004168f0:
    jz 0x41678c ; 004168F0 0F8496FEFFFF
    %if ($ - %%insn_004168f0) > 6
        %error "LONG_004168F0"
    %endif
    times 6 - ($ - %%insn_004168f0) db 0
    %%insn_004168f6:
    cmp al,0x27 ; 004168F6 3C27
    %if ($ - %%insn_004168f6) > 2
        %error "LONG_004168F6"
    %endif
    times 2 - ($ - %%insn_004168f6) db 0
    %%insn_004168f8:
    jz short 0x41693a ; 004168F8 7440
    %if ($ - %%insn_004168f8) > 2
        %error "LONG_004168F8"
    %endif
    times 2 - ($ - %%insn_004168f8) db 0
    %%insn_004168fa:
    mov edx,[0x41e640] ; 004168FA 8B1540E64100
    %if ($ - %%insn_004168fa) > 6
        %error "LONG_004168FA"
    %endif
    times 6 - ($ - %%insn_004168fa) db 0
    db 0x8B, 0xC8 ; 00416900 8BC8 | mov ecx,eax | encoding preserved
    %%insn_00416902:
    and ecx,0xff ; 00416902 81E1FF000000
    %if ($ - %%insn_00416902) > 6
        %error "LONG_00416902"
    %endif
    times 6 - ($ - %%insn_00416902) db 0
    %%insn_00416908:
    test byte [edx+ecx*2+0x1],0x80 ; 00416908 F6444A0180
    %if ($ - %%insn_00416908) > 5
        %error "LONG_00416908"
    %endif
    times 5 - ($ - %%insn_00416908) db 0
    %%insn_0041690d:
    jz short 0x41691e ; 0041690D 740F
    %if ($ - %%insn_0041690d) > 2
        %error "LONG_0041690D"
    %endif
    times 2 - ($ - %%insn_0041690d) db 0
    %%insn_0041690f:
    mov ecx,[edi] ; 0041690F 8B0F
    %if ($ - %%insn_0041690f) > 2
        %error "LONG_0041690F"
    %endif
    times 2 - ($ - %%insn_0041690f) db 0
    %%insn_00416911:
    mov [ecx],al ; 00416911 8801
    %if ($ - %%insn_00416911) > 2
        %error "LONG_00416911"
    %endif
    times 2 - ($ - %%insn_00416911) db 0
    %%insn_00416913:
    mov edx,[edi] ; 00416913 8B17
    %if ($ - %%insn_00416913) > 2
        %error "LONG_00416913"
    %endif
    times 2 - ($ - %%insn_00416913) db 0
    %%insn_00416915:
    inc edx ; 00416915 42
    %if ($ - %%insn_00416915) > 1
        %error "LONG_00416915"
    %endif
    times 1 - ($ - %%insn_00416915) db 0
    %%insn_00416916:
    inc esi ; 00416916 46
    %if ($ - %%insn_00416916) > 1
        %error "LONG_00416916"
    %endif
    times 1 - ($ - %%insn_00416916) db 0
    %%insn_00416917:
    mov [edi],edx ; 00416917 8917
    %if ($ - %%insn_00416917) > 2
        %error "LONG_00416917"
    %endif
    times 2 - ($ - %%insn_00416917) db 0
    %%insn_00416919:
    mov eax,[ebx] ; 00416919 8B03
    %if ($ - %%insn_00416919) > 2
        %error "LONG_00416919"
    %endif
    times 2 - ($ - %%insn_00416919) db 0
    %%insn_0041691b:
    dec eax ; 0041691B 48
    %if ($ - %%insn_0041691b) > 1
        %error "LONG_0041691B"
    %endif
    times 1 - ($ - %%insn_0041691b) db 0
    %%insn_0041691c:
    mov [ebx],eax ; 0041691C 8903
    %if ($ - %%insn_0041691c) > 2
        %error "LONG_0041691C"
    %endif
    times 2 - ($ - %%insn_0041691c) db 0
    %%insn_0041691e:
    mov edx,[edi] ; 0041691E 8B17
    %if ($ - %%insn_0041691e) > 2
        %error "LONG_0041691E"
    %endif
    times 2 - ($ - %%insn_0041691e) db 0
    %%insn_00416920:
    mov al,[esi] ; 00416920 8A06
    %if ($ - %%insn_00416920) > 2
        %error "LONG_00416920"
    %endif
    times 2 - ($ - %%insn_00416920) db 0
    %%insn_00416922:
    mov [edx],al ; 00416922 8802
    %if ($ - %%insn_00416922) > 2
        %error "LONG_00416922"
    %endif
    times 2 - ($ - %%insn_00416922) db 0
    %%insn_00416924:
    mov eax,[edi] ; 00416924 8B07
    %if ($ - %%insn_00416924) > 2
        %error "LONG_00416924"
    %endif
    times 2 - ($ - %%insn_00416924) db 0
    %%insn_00416926:
    inc eax ; 00416926 40
    %if ($ - %%insn_00416926) > 1
        %error "LONG_00416926"
    %endif
    times 1 - ($ - %%insn_00416926) db 0
    %%insn_00416927:
    inc esi ; 00416927 46
    %if ($ - %%insn_00416927) > 1
        %error "LONG_00416927"
    %endif
    times 1 - ($ - %%insn_00416927) db 0
    %%insn_00416928:
    mov [edi],eax ; 00416928 8907
    %if ($ - %%insn_00416928) > 2
        %error "LONG_00416928"
    %endif
    times 2 - ($ - %%insn_00416928) db 0
    %%insn_0041692a:
    mov edx,[ebx] ; 0041692A 8B13
    %if ($ - %%insn_0041692a) > 2
        %error "LONG_0041692A"
    %endif
    times 2 - ($ - %%insn_0041692a) db 0
    %%insn_0041692c:
    dec edx ; 0041692C 4A
    %if ($ - %%insn_0041692c) > 1
        %error "LONG_0041692C"
    %endif
    times 1 - ($ - %%insn_0041692c) db 0
    %%insn_0041692d:
    mov [ebx],edx ; 0041692D 8913
    %if ($ - %%insn_0041692d) > 2
        %error "LONG_0041692D"
    %endif
    times 2 - ($ - %%insn_0041692d) db 0
    %%insn_0041692f:
    mov al,[esi] ; 0041692F 8A06
    %if ($ - %%insn_0041692f) > 2
        %error "LONG_0041692F"
    %endif
    times 2 - ($ - %%insn_0041692f) db 0
    %%insn_00416931:
    test al,al ; 00416931 84C0
    %if ($ - %%insn_00416931) > 2
        %error "LONG_00416931"
    %endif
    times 2 - ($ - %%insn_00416931) db 0
    %%insn_00416933:
    jnz short 0x4168ed ; 00416933 75B8
    %if ($ - %%insn_00416933) > 2
        %error "LONG_00416933"
    %endif
    times 2 - ($ - %%insn_00416933) db 0
    %%insn_00416935:
    jmp 0x41678c ; 00416935 E952FEFFFF
    %if ($ - %%insn_00416935) > 5
        %error "LONG_00416935"
    %endif
    times 5 - ($ - %%insn_00416935) db 0
    %%insn_0041693a:
    inc esi ; 0041693A 46
    %if ($ - %%insn_0041693a) > 1
        %error "LONG_0041693A"
    %endif
    times 1 - ($ - %%insn_0041693a) db 0
    %%insn_0041693b:
    jmp 0x41678c ; 0041693B E94CFEFFFF
    %if ($ - %%insn_0041693b) > 5
        %error "LONG_0041693B"
    %endif
    times 5 - ($ - %%insn_0041693b) db 0
    %%insn_00416940:
    mov ebx,[esp+0x24] ; 00416940 8B5C2424
    %if ($ - %%insn_00416940) > 4
        %error "LONG_00416940"
    %endif
    times 4 - ($ - %%insn_00416940) db 0
    db 0x03, 0xF0 ; 00416944 03F0 | add esi,eax | encoding preserved
    %%insn_00416946:
    jmp 0x41678c ; 00416946 E941FEFFFF
    %if ($ - %%insn_00416946) > 5
        %error "LONG_00416946"
    %endif
    times 5 - ($ - %%insn_00416946) db 0
    %if ($ - %%fragment_start) != 683
        %error "function fragment size drift: 004166A0"
    %endif
%endmacro
