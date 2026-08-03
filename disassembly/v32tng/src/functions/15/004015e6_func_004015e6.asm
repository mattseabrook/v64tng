; PE virtual entry 004015E6
; Ghidra working symbol: FUN_004015e6
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_004015e6_part_00 0
    %%fragment_start:
func_004015e6:
    %%insn_004015e6:
    push ebp ; 004015E6 55
    %if ($ - %%insn_004015e6) > 1
        %error "LONG_004015E6"
    %endif
    times 1 - ($ - %%insn_004015e6) db 0
    db 0x8B, 0xEC ; 004015E7 8BEC | mov ebp,esp | encoding preserved
    %%insn_004015e9:
    sub esp,0xc ; 004015E9 83EC0C
    %if ($ - %%insn_004015e9) > 3
        %error "LONG_004015E9"
    %endif
    times 3 - ($ - %%insn_004015e9) db 0
    %%insn_004015ec:
    mov eax,[0x41f284] ; 004015EC A184F24100
    %if ($ - %%insn_004015ec) > 5
        %error "LONG_004015EC"
    %endif
    times 5 - ($ - %%insn_004015ec) db 0
    %%insn_004015f1:
    add eax,[0x41f300] ; 004015F1 030500F34100
    %if ($ - %%insn_004015f1) > 6
        %error "LONG_004015F1"
    %endif
    times 6 - ($ - %%insn_004015f1) db 0
    db 0x33, 0xC9 ; 004015F7 33C9 | xor ecx,ecx | encoding preserved
    %%insn_004015f9:
    mov cl,[eax] ; 004015F9 8A08
    %if ($ - %%insn_004015f9) > 2
        %error "LONG_004015F9"
    %endif
    times 2 - ($ - %%insn_004015f9) db 0
    %%insn_004015fb:
    and ecx,0x7f ; 004015FB 83E17F
    %if ($ - %%insn_004015fb) > 3
        %error "LONG_004015FB"
    %endif
    times 3 - ($ - %%insn_004015fb) db 0
    %%insn_004015fe:
    mov [ebp-0x4],cl ; 004015FE 884DFC
    %if ($ - %%insn_004015fe) > 3
        %error "LONG_004015FE"
    %endif
    times 3 - ($ - %%insn_004015fe) db 0
    %%insn_00401601:
    mov edx,[0x41f300] ; 00401601 8B1500F34100
    %if ($ - %%insn_00401601) > 6
        %error "LONG_00401601"
    %endif
    times 6 - ($ - %%insn_00401601) db 0
    %%insn_00401607:
    add edx,0x1 ; 00401607 83C201
    %if ($ - %%insn_00401607) > 3
        %error "LONG_00401607"
    %endif
    times 3 - ($ - %%insn_00401607) db 0
    %%insn_0040160a:
    mov [0x41f300],edx ; 0040160A 891500F34100
    %if ($ - %%insn_0040160a) > 6
        %error "LONG_0040160A"
    %endif
    times 6 - ($ - %%insn_0040160a) db 0
    %%insn_00401610:
    mov eax,[ebp-0x4] ; 00401610 8B45FC
    %if ($ - %%insn_00401610) > 3
        %error "LONG_00401610"
    %endif
    times 3 - ($ - %%insn_00401610) db 0
    %%insn_00401613:
    and eax,0xff ; 00401613 25FF000000
    %if ($ - %%insn_00401613) > 5
        %error "LONG_00401613"
    %endif
    times 5 - ($ - %%insn_00401613) db 0
    %%insn_00401618:
    cmp eax,0x23 ; 00401618 83F823
    %if ($ - %%insn_00401618) > 3
        %error "LONG_00401618"
    %endif
    times 3 - ($ - %%insn_00401618) db 0
    %%insn_0040161b:
    jnz short 0x40165d ; 0040161B 7540
    %if ($ - %%insn_0040161b) > 2
        %error "LONG_0040161B"
    %endif
    times 2 - ($ - %%insn_0040161b) db 0
    %%insn_0040161d:
    mov ecx,[0x41f284] ; 0040161D 8B0D84F24100
    %if ($ - %%insn_0040161d) > 6
        %error "LONG_0040161D"
    %endif
    times 6 - ($ - %%insn_0040161d) db 0
    %%insn_00401623:
    add ecx,[0x41f300] ; 00401623 030D00F34100
    %if ($ - %%insn_00401623) > 6
        %error "LONG_00401623"
    %endif
    times 6 - ($ - %%insn_00401623) db 0
    db 0x33, 0xD2 ; 00401629 33D2 | xor edx,edx | encoding preserved
    %%insn_0040162b:
    mov dl,[ecx] ; 0040162B 8A11
    %if ($ - %%insn_0040162b) > 2
        %error "LONG_0040162B"
    %endif
    times 2 - ($ - %%insn_0040162b) db 0
    %%insn_0040162d:
    and edx,0x7f ; 0040162D 83E27F
    %if ($ - %%insn_0040162d) > 3
        %error "LONG_0040162D"
    %endif
    times 3 - ($ - %%insn_0040162d) db 0
    %%insn_00401630:
    sub edx,0x61 ; 00401630 83EA61
    %if ($ - %%insn_00401630) > 3
        %error "LONG_00401630"
    %endif
    times 3 - ($ - %%insn_00401630) db 0
    %%insn_00401633:
    mov [ebp-0x4],dl ; 00401633 8855FC
    %if ($ - %%insn_00401633) > 3
        %error "LONG_00401633"
    %endif
    times 3 - ($ - %%insn_00401633) db 0
    %%insn_00401636:
    mov eax,[0x41f300] ; 00401636 A100F34100
    %if ($ - %%insn_00401636) > 5
        %error "LONG_00401636"
    %endif
    times 5 - ($ - %%insn_00401636) db 0
    %%insn_0040163b:
    add eax,0x1 ; 0040163B 83C001
    %if ($ - %%insn_0040163b) > 3
        %error "LONG_0040163B"
    %endif
    times 3 - ($ - %%insn_0040163b) db 0
    %%insn_0040163e:
    mov [0x41f300],eax ; 0040163E A300F34100
    %if ($ - %%insn_0040163e) > 5
        %error "LONG_0040163E"
    %endif
    times 5 - ($ - %%insn_0040163e) db 0
    %%insn_00401643:
    mov ecx,[ebp-0x4] ; 00401643 8B4DFC
    %if ($ - %%insn_00401643) > 3
        %error "LONG_00401643"
    %endif
    times 3 - ($ - %%insn_00401643) db 0
    %%insn_00401646:
    and ecx,0xff ; 00401646 81E1FF000000
    %if ($ - %%insn_00401646) > 6
        %error "LONG_00401646"
    %endif
    times 6 - ($ - %%insn_00401646) db 0
    %%insn_0040164c:
    mov edx,[0x41f2b8] ; 0040164C 8B15B8F24100
    %if ($ - %%insn_0040164c) > 6
        %error "LONG_0040164C"
    %endif
    times 6 - ($ - %%insn_0040164c) db 0
    %%insn_00401652:
    mov al,[edx+ecx] ; 00401652 8A040A
    %if ($ - %%insn_00401652) > 3
        %error "LONG_00401652"
    %endif
    times 3 - ($ - %%insn_00401652) db 0
    %%insn_00401655:
    mov [ebp-0x8],al ; 00401655 8845F8
    %if ($ - %%insn_00401655) > 3
        %error "LONG_00401655"
    %endif
    times 3 - ($ - %%insn_00401655) db 0
    %%insn_00401658:
    jmp 0x401794 ; 00401658 E937010000
    %if ($ - %%insn_00401658) > 5
        %error "LONG_00401658"
    %endif
    times 5 - ($ - %%insn_00401658) db 0
    %%insn_0040165d:
    mov ecx,[ebp-0x4] ; 0040165D 8B4DFC
    %if ($ - %%insn_0040165d) > 3
        %error "LONG_0040165D"
    %endif
    times 3 - ($ - %%insn_0040165d) db 0
    %%insn_00401660:
    and ecx,0xff ; 00401660 81E1FF000000
    %if ($ - %%insn_00401660) > 6
        %error "LONG_00401660"
    %endif
    times 6 - ($ - %%insn_00401660) db 0
    %%insn_00401666:
    cmp ecx,0x7c ; 00401666 83F97C
    %if ($ - %%insn_00401666) > 3
        %error "LONG_00401666"
    %endif
    times 3 - ($ - %%insn_00401666) db 0
    %%insn_00401669:
    jnz 0x401786 ; 00401669 0F8517010000
    %if ($ - %%insn_00401669) > 6
        %error "LONG_00401669"
    %endif
    times 6 - ($ - %%insn_00401669) db 0
    %%insn_0040166f:
    mov edx,[0x41f284] ; 0040166F 8B1584F24100
    %if ($ - %%insn_0040166f) > 6
        %error "LONG_0040166F"
    %endif
    times 6 - ($ - %%insn_0040166f) db 0
    %%insn_00401675:
    add edx,[0x41f300] ; 00401675 031500F34100
    %if ($ - %%insn_00401675) > 6
        %error "LONG_00401675"
    %endif
    times 6 - ($ - %%insn_00401675) db 0
    %%insn_0040167b:
    mov al,[edx] ; 0040167B 8A02
    %if ($ - %%insn_0040167b) > 2
        %error "LONG_0040167B"
    %endif
    times 2 - ($ - %%insn_0040167b) db 0
    %%insn_0040167d:
    mov [ebp-0x4],al ; 0040167D 8845FC
    %if ($ - %%insn_0040167d) > 3
        %error "LONG_0040167D"
    %endif
    times 3 - ($ - %%insn_0040167d) db 0
    %%insn_00401680:
    mov ecx,[0x41f300] ; 00401680 8B0D00F34100
    %if ($ - %%insn_00401680) > 6
        %error "LONG_00401680"
    %endif
    times 6 - ($ - %%insn_00401680) db 0
    %%insn_00401686:
    add ecx,0x1 ; 00401686 83C101
    %if ($ - %%insn_00401686) > 3
        %error "LONG_00401686"
    %endif
    times 3 - ($ - %%insn_00401686) db 0
    %%insn_00401689:
    mov [0x41f300],ecx ; 00401689 890D00F34100
    %if ($ - %%insn_00401689) > 6
        %error "LONG_00401689"
    %endif
    times 6 - ($ - %%insn_00401689) db 0
    %%insn_0040168f:
    mov edx,[ebp-0x4] ; 0040168F 8B55FC
    %if ($ - %%insn_0040168f) > 3
        %error "LONG_0040168F"
    %endif
    times 3 - ($ - %%insn_0040168f) db 0
    %%insn_00401692:
    and edx,0xff ; 00401692 81E2FF000000
    %if ($ - %%insn_00401692) > 6
        %error "LONG_00401692"
    %endif
    times 6 - ($ - %%insn_00401692) db 0
    %%insn_00401698:
    cmp edx,0x23 ; 00401698 83FA23
    %if ($ - %%insn_00401698) > 3
        %error "LONG_00401698"
    %endif
    times 3 - ($ - %%insn_00401698) db 0
    %%insn_0040169b:
    jnz short 0x4016d7 ; 0040169B 753A
    %if ($ - %%insn_0040169b) > 2
        %error "LONG_0040169B"
    %endif
    times 2 - ($ - %%insn_0040169b) db 0
    %%insn_0040169d:
    mov eax,[0x41f284] ; 0040169D A184F24100
    %if ($ - %%insn_0040169d) > 5
        %error "LONG_0040169D"
    %endif
    times 5 - ($ - %%insn_0040169d) db 0
    %%insn_004016a2:
    add eax,[0x41f300] ; 004016A2 030500F34100
    %if ($ - %%insn_004016a2) > 6
        %error "LONG_004016A2"
    %endif
    times 6 - ($ - %%insn_004016a2) db 0
    db 0x33, 0xC9 ; 004016A8 33C9 | xor ecx,ecx | encoding preserved
    %%insn_004016aa:
    mov cl,[eax] ; 004016AA 8A08
    %if ($ - %%insn_004016aa) > 2
        %error "LONG_004016AA"
    %endif
    times 2 - ($ - %%insn_004016aa) db 0
    %%insn_004016ac:
    sub ecx,0x61 ; 004016AC 83E961
    %if ($ - %%insn_004016ac) > 3
        %error "LONG_004016AC"
    %endif
    times 3 - ($ - %%insn_004016ac) db 0
    %%insn_004016af:
    mov [ebp-0x4],cl ; 004016AF 884DFC
    %if ($ - %%insn_004016af) > 3
        %error "LONG_004016AF"
    %endif
    times 3 - ($ - %%insn_004016af) db 0
    %%insn_004016b2:
    mov edx,[0x41f300] ; 004016B2 8B1500F34100
    %if ($ - %%insn_004016b2) > 6
        %error "LONG_004016B2"
    %endif
    times 6 - ($ - %%insn_004016b2) db 0
    %%insn_004016b8:
    add edx,0x1 ; 004016B8 83C201
    %if ($ - %%insn_004016b8) > 3
        %error "LONG_004016B8"
    %endif
    times 3 - ($ - %%insn_004016b8) db 0
    %%insn_004016bb:
    mov [0x41f300],edx ; 004016BB 891500F34100
    %if ($ - %%insn_004016bb) > 6
        %error "LONG_004016BB"
    %endif
    times 6 - ($ - %%insn_004016bb) db 0
    %%insn_004016c1:
    mov eax,[ebp-0x4] ; 004016C1 8B45FC
    %if ($ - %%insn_004016c1) > 3
        %error "LONG_004016C1"
    %endif
    times 3 - ($ - %%insn_004016c1) db 0
    %%insn_004016c4:
    and eax,0xff ; 004016C4 25FF000000
    %if ($ - %%insn_004016c4) > 5
        %error "LONG_004016C4"
    %endif
    times 5 - ($ - %%insn_004016c4) db 0
    %%insn_004016c9:
    mov ecx,[0x41f2b8] ; 004016C9 8B0DB8F24100
    %if ($ - %%insn_004016c9) > 6
        %error "LONG_004016C9"
    %endif
    times 6 - ($ - %%insn_004016c9) db 0
    %%insn_004016cf:
    mov dl,[ecx+eax] ; 004016CF 8A1401
    %if ($ - %%insn_004016cf) > 3
        %error "LONG_004016CF"
    %endif
    times 3 - ($ - %%insn_004016cf) db 0
    %%insn_004016d2:
    mov [ebp-0x8],dl ; 004016D2 8855F8
    %if ($ - %%insn_004016d2) > 3
        %error "LONG_004016D2"
    %endif
    times 3 - ($ - %%insn_004016d2) db 0
    %%insn_004016d5:
    jmp short 0x4016e5 ; 004016D5 EB0E
    %if ($ - %%insn_004016d5) > 2
        %error "LONG_004016D5"
    %endif
    times 2 - ($ - %%insn_004016d5) db 0
    %%insn_004016d7:
    mov eax,[ebp-0x4] ; 004016D7 8B45FC
    %if ($ - %%insn_004016d7) > 3
        %error "LONG_004016D7"
    %endif
    times 3 - ($ - %%insn_004016d7) db 0
    %%insn_004016da:
    and eax,0xff ; 004016DA 25FF000000
    %if ($ - %%insn_004016da) > 5
        %error "LONG_004016DA"
    %endif
    times 5 - ($ - %%insn_004016da) db 0
    %%insn_004016df:
    sub eax,0x30 ; 004016DF 83E830
    %if ($ - %%insn_004016df) > 3
        %error "LONG_004016DF"
    %endif
    times 3 - ($ - %%insn_004016df) db 0
    %%insn_004016e2:
    mov [ebp-0x8],al ; 004016E2 8845F8
    %if ($ - %%insn_004016e2) > 3
        %error "LONG_004016E2"
    %endif
    times 3 - ($ - %%insn_004016e2) db 0
    %%insn_004016e5:
    mov ecx,[0x41f284] ; 004016E5 8B0D84F24100
    %if ($ - %%insn_004016e5) > 6
        %error "LONG_004016E5"
    %endif
    times 6 - ($ - %%insn_004016e5) db 0
    %%insn_004016eb:
    add ecx,[0x41f300] ; 004016EB 030D00F34100
    %if ($ - %%insn_004016eb) > 6
        %error "LONG_004016EB"
    %endif
    times 6 - ($ - %%insn_004016eb) db 0
    db 0x33, 0xD2 ; 004016F1 33D2 | xor edx,edx | encoding preserved
    %%insn_004016f3:
    mov dl,[ecx] ; 004016F3 8A11
    %if ($ - %%insn_004016f3) > 2
        %error "LONG_004016F3"
    %endif
    times 2 - ($ - %%insn_004016f3) db 0
    %%insn_004016f5:
    and edx,0x7f ; 004016F5 83E27F
    %if ($ - %%insn_004016f5) > 3
        %error "LONG_004016F5"
    %endif
    times 3 - ($ - %%insn_004016f5) db 0
    %%insn_004016f8:
    mov [ebp-0x4],dl ; 004016F8 8855FC
    %if ($ - %%insn_004016f8) > 3
        %error "LONG_004016F8"
    %endif
    times 3 - ($ - %%insn_004016f8) db 0
    %%insn_004016fb:
    mov eax,[0x41f300] ; 004016FB A100F34100
    %if ($ - %%insn_004016fb) > 5
        %error "LONG_004016FB"
    %endif
    times 5 - ($ - %%insn_004016fb) db 0
    %%insn_00401700:
    add eax,0x1 ; 00401700 83C001
    %if ($ - %%insn_00401700) > 3
        %error "LONG_00401700"
    %endif
    times 3 - ($ - %%insn_00401700) db 0
    %%insn_00401703:
    mov [0x41f300],eax ; 00401703 A300F34100
    %if ($ - %%insn_00401703) > 5
        %error "LONG_00401703"
    %endif
    times 5 - ($ - %%insn_00401703) db 0
    %%insn_00401708:
    mov ecx,[ebp-0x4] ; 00401708 8B4DFC
    %if ($ - %%insn_00401708) > 3
        %error "LONG_00401708"
    %endif
    times 3 - ($ - %%insn_00401708) db 0
    %%insn_0040170b:
    and ecx,0xff ; 0040170B 81E1FF000000
    %if ($ - %%insn_0040170b) > 6
        %error "LONG_0040170B"
    %endif
    times 6 - ($ - %%insn_0040170b) db 0
    %%insn_00401711:
    cmp ecx,0x23 ; 00401711 83F923
    %if ($ - %%insn_00401711) > 3
        %error "LONG_00401711"
    %endif
    times 3 - ($ - %%insn_00401711) db 0
    %%insn_00401714:
    jnz short 0x401754 ; 00401714 753E
    %if ($ - %%insn_00401714) > 2
        %error "LONG_00401714"
    %endif
    times 2 - ($ - %%insn_00401714) db 0
    %%insn_00401716:
    mov edx,[0x41f284] ; 00401716 8B1584F24100
    %if ($ - %%insn_00401716) > 6
        %error "LONG_00401716"
    %endif
    times 6 - ($ - %%insn_00401716) db 0
    %%insn_0040171c:
    add edx,[0x41f300] ; 0040171C 031500F34100
    %if ($ - %%insn_0040171c) > 6
        %error "LONG_0040171C"
    %endif
    times 6 - ($ - %%insn_0040171c) db 0
    db 0x33, 0xC0 ; 00401722 33C0 | xor eax,eax | encoding preserved
    %%insn_00401724:
    mov al,[edx] ; 00401724 8A02
    %if ($ - %%insn_00401724) > 2
        %error "LONG_00401724"
    %endif
    times 2 - ($ - %%insn_00401724) db 0
    %%insn_00401726:
    and eax,0x7f ; 00401726 83E07F
    %if ($ - %%insn_00401726) > 3
        %error "LONG_00401726"
    %endif
    times 3 - ($ - %%insn_00401726) db 0
    %%insn_00401729:
    sub eax,0x61 ; 00401729 83E861
    %if ($ - %%insn_00401729) > 3
        %error "LONG_00401729"
    %endif
    times 3 - ($ - %%insn_00401729) db 0
    %%insn_0040172c:
    mov [ebp-0x4],al ; 0040172C 8845FC
    %if ($ - %%insn_0040172c) > 3
        %error "LONG_0040172C"
    %endif
    times 3 - ($ - %%insn_0040172c) db 0
    %%insn_0040172f:
    mov ecx,[0x41f300] ; 0040172F 8B0D00F34100
    %if ($ - %%insn_0040172f) > 6
        %error "LONG_0040172F"
    %endif
    times 6 - ($ - %%insn_0040172f) db 0
    %%insn_00401735:
    add ecx,0x1 ; 00401735 83C101
    %if ($ - %%insn_00401735) > 3
        %error "LONG_00401735"
    %endif
    times 3 - ($ - %%insn_00401735) db 0
    %%insn_00401738:
    mov [0x41f300],ecx ; 00401738 890D00F34100
    %if ($ - %%insn_00401738) > 6
        %error "LONG_00401738"
    %endif
    times 6 - ($ - %%insn_00401738) db 0
    %%insn_0040173e:
    mov edx,[ebp-0x4] ; 0040173E 8B55FC
    %if ($ - %%insn_0040173e) > 3
        %error "LONG_0040173E"
    %endif
    times 3 - ($ - %%insn_0040173e) db 0
    %%insn_00401741:
    and edx,0xff ; 00401741 81E2FF000000
    %if ($ - %%insn_00401741) > 6
        %error "LONG_00401741"
    %endif
    times 6 - ($ - %%insn_00401741) db 0
    %%insn_00401747:
    mov eax,[0x41f2b8] ; 00401747 A1B8F24100
    %if ($ - %%insn_00401747) > 5
        %error "LONG_00401747"
    %endif
    times 5 - ($ - %%insn_00401747) db 0
    %%insn_0040174c:
    mov cl,[eax+edx] ; 0040174C 8A0C10
    %if ($ - %%insn_0040174c) > 3
        %error "LONG_0040174C"
    %endif
    times 3 - ($ - %%insn_0040174c) db 0
    %%insn_0040174f:
    mov [ebp-0xc],cl ; 0040174F 884DF4
    %if ($ - %%insn_0040174f) > 3
        %error "LONG_0040174F"
    %endif
    times 3 - ($ - %%insn_0040174f) db 0
    %%insn_00401752:
    jmp short 0x401763 ; 00401752 EB0F
    %if ($ - %%insn_00401752) > 2
        %error "LONG_00401752"
    %endif
    times 2 - ($ - %%insn_00401752) db 0
    %%insn_00401754:
    mov edx,[ebp-0x4] ; 00401754 8B55FC
    %if ($ - %%insn_00401754) > 3
        %error "LONG_00401754"
    %endif
    times 3 - ($ - %%insn_00401754) db 0
    %%insn_00401757:
    and edx,0xff ; 00401757 81E2FF000000
    %if ($ - %%insn_00401757) > 6
        %error "LONG_00401757"
    %endif
    times 6 - ($ - %%insn_00401757) db 0
    %%insn_0040175d:
    sub edx,0x30 ; 0040175D 83EA30
    %if ($ - %%insn_0040175d) > 3
        %error "LONG_0040175D"
    %endif
    times 3 - ($ - %%insn_0040175d) db 0
    %%insn_00401760:
    mov [ebp-0xc],dl ; 00401760 8855F4
    %if ($ - %%insn_00401760) > 3
        %error "LONG_00401760"
    %endif
    times 3 - ($ - %%insn_00401760) db 0
    %%insn_00401763:
    mov eax,[ebp-0x8] ; 00401763 8B45F8
    %if ($ - %%insn_00401763) > 3
        %error "LONG_00401763"
    %endif
    times 3 - ($ - %%insn_00401763) db 0
    %%insn_00401766:
    and eax,0xff ; 00401766 25FF000000
    %if ($ - %%insn_00401766) > 5
        %error "LONG_00401766"
    %endif
    times 5 - ($ - %%insn_00401766) db 0
    %%insn_0040176b:
    imul eax,eax,0xa ; 0040176B 6BC00A
    %if ($ - %%insn_0040176b) > 3
        %error "LONG_0040176B"
    %endif
    times 3 - ($ - %%insn_0040176b) db 0
    %%insn_0040176e:
    mov ecx,[ebp-0xc] ; 0040176E 8B4DF4
    %if ($ - %%insn_0040176e) > 3
        %error "LONG_0040176E"
    %endif
    times 3 - ($ - %%insn_0040176e) db 0
    %%insn_00401771:
    and ecx,0xff ; 00401771 81E1FF000000
    %if ($ - %%insn_00401771) > 6
        %error "LONG_00401771"
    %endif
    times 6 - ($ - %%insn_00401771) db 0
    %%insn_00401777:
    add ecx,[0x41f2b8] ; 00401777 030DB8F24100
    %if ($ - %%insn_00401777) > 6
        %error "LONG_00401777"
    %endif
    times 6 - ($ - %%insn_00401777) db 0
    %%insn_0040177d:
    mov dl,[ecx+eax+0x19] ; 0040177D 8A540119
    %if ($ - %%insn_0040177d) > 4
        %error "LONG_0040177D"
    %endif
    times 4 - ($ - %%insn_0040177d) db 0
    %%insn_00401781:
    mov [ebp-0x8],dl ; 00401781 8855F8
    %if ($ - %%insn_00401781) > 3
        %error "LONG_00401781"
    %endif
    times 3 - ($ - %%insn_00401781) db 0
    %%insn_00401784:
    jmp short 0x401794 ; 00401784 EB0E
    %if ($ - %%insn_00401784) > 2
        %error "LONG_00401784"
    %endif
    times 2 - ($ - %%insn_00401784) db 0
    %%insn_00401786:
    mov eax,[ebp-0x4] ; 00401786 8B45FC
    %if ($ - %%insn_00401786) > 3
        %error "LONG_00401786"
    %endif
    times 3 - ($ - %%insn_00401786) db 0
    %%insn_00401789:
    and eax,0xff ; 00401789 25FF000000
    %if ($ - %%insn_00401789) > 5
        %error "LONG_00401789"
    %endif
    times 5 - ($ - %%insn_00401789) db 0
    %%insn_0040178e:
    sub eax,0x30 ; 0040178E 83E830
    %if ($ - %%insn_0040178e) > 3
        %error "LONG_0040178E"
    %endif
    times 3 - ($ - %%insn_0040178e) db 0
    %%insn_00401791:
    mov [ebp-0x8],al ; 00401791 8845F8
    %if ($ - %%insn_00401791) > 3
        %error "LONG_00401791"
    %endif
    times 3 - ($ - %%insn_00401791) db 0
    %%insn_00401794:
    mov al,[ebp-0x8] ; 00401794 8A45F8
    %if ($ - %%insn_00401794) > 3
        %error "LONG_00401794"
    %endif
    times 3 - ($ - %%insn_00401794) db 0
    db 0x8B, 0xE5 ; 00401797 8BE5 | mov esp,ebp | encoding preserved
    %%insn_00401799:
    pop ebp ; 00401799 5D
    %if ($ - %%insn_00401799) > 1
        %error "LONG_00401799"
    %endif
    times 1 - ($ - %%insn_00401799) db 0
    %%insn_0040179a:
    ret ; 0040179A C3
    %if ($ - %%insn_0040179a) > 1
        %error "LONG_0040179A"
    %endif
    times 1 - ($ - %%insn_0040179a) db 0
    %if ($ - %%fragment_start) != 437
        %error "function fragment size drift: 004015E6"
    %endif
%endmacro
