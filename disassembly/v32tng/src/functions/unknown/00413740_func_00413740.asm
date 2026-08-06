; PE virtual entry 00413740
; Ghidra working symbol: FUN_00413740
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00413740_part_00 0
    %%fragment_start:
func_00413740:
    %%insn_00413740:
    push esi ; 00413740 56
    %if ($ - %%insn_00413740) > 1
        %error "LONG_00413740"
    %endif
    times 1 - ($ - %%insn_00413740) db 0
    %%insn_00413741:
    mov esi,[esp+0x8] ; 00413741 8B742408
    %if ($ - %%insn_00413741) > 4
        %error "LONG_00413741"
    %endif
    times 4 - ($ - %%insn_00413741) db 0
    %%insn_00413745:
    test esi,esi ; 00413745 85F6
    %if ($ - %%insn_00413745) > 2
        %error "LONG_00413745"
    %endif
    times 2 - ($ - %%insn_00413745) db 0
    %%insn_00413747:
    jz 0x413971 ; 00413747 0F8424020000
    %if ($ - %%insn_00413747) > 6
        %error "LONG_00413747"
    %endif
    times 6 - ($ - %%insn_00413747) db 0
    %%insn_0041374d:
    mov eax,[esi+0x4] ; 0041374D 8B4604
    %if ($ - %%insn_0041374d) > 3
        %error "LONG_0041374D"
    %endif
    times 3 - ($ - %%insn_0041374d) db 0
    %%insn_00413750:
    push eax ; 00413750 50
    %if ($ - %%insn_00413750) > 1
        %error "LONG_00413750"
    %endif
    times 1 - ($ - %%insn_00413750) db 0
    %%insn_00413751:
    call 0x40c9a0 ; 00413751 E84A92FFFF
    %if ($ - %%insn_00413751) > 5
        %error "LONG_00413751"
    %endif
    times 5 - ($ - %%insn_00413751) db 0
    %%insn_00413756:
    mov ecx,[esi+0x8] ; 00413756 8B4E08
    %if ($ - %%insn_00413756) > 3
        %error "LONG_00413756"
    %endif
    times 3 - ($ - %%insn_00413756) db 0
    %%insn_00413759:
    add esp,0x4 ; 00413759 83C404
    %if ($ - %%insn_00413759) > 3
        %error "LONG_00413759"
    %endif
    times 3 - ($ - %%insn_00413759) db 0
    %%insn_0041375c:
    push ecx ; 0041375C 51
    %if ($ - %%insn_0041375c) > 1
        %error "LONG_0041375C"
    %endif
    times 1 - ($ - %%insn_0041375c) db 0
    %%insn_0041375d:
    call 0x40c9a0 ; 0041375D E83E92FFFF
    %if ($ - %%insn_0041375d) > 5
        %error "LONG_0041375D"
    %endif
    times 5 - ($ - %%insn_0041375d) db 0
    %%insn_00413762:
    mov edx,[esi+0xc] ; 00413762 8B560C
    %if ($ - %%insn_00413762) > 3
        %error "LONG_00413762"
    %endif
    times 3 - ($ - %%insn_00413762) db 0
    %%insn_00413765:
    add esp,0x4 ; 00413765 83C404
    %if ($ - %%insn_00413765) > 3
        %error "LONG_00413765"
    %endif
    times 3 - ($ - %%insn_00413765) db 0
    %%insn_00413768:
    push edx ; 00413768 52
    %if ($ - %%insn_00413768) > 1
        %error "LONG_00413768"
    %endif
    times 1 - ($ - %%insn_00413768) db 0
    %%insn_00413769:
    call 0x40c9a0 ; 00413769 E83292FFFF
    %if ($ - %%insn_00413769) > 5
        %error "LONG_00413769"
    %endif
    times 5 - ($ - %%insn_00413769) db 0
    %%insn_0041376e:
    mov eax,[esi+0x10] ; 0041376E 8B4610
    %if ($ - %%insn_0041376e) > 3
        %error "LONG_0041376E"
    %endif
    times 3 - ($ - %%insn_0041376e) db 0
    %%insn_00413771:
    add esp,0x4 ; 00413771 83C404
    %if ($ - %%insn_00413771) > 3
        %error "LONG_00413771"
    %endif
    times 3 - ($ - %%insn_00413771) db 0
    %%insn_00413774:
    push eax ; 00413774 50
    %if ($ - %%insn_00413774) > 1
        %error "LONG_00413774"
    %endif
    times 1 - ($ - %%insn_00413774) db 0
    %%insn_00413775:
    call 0x40c9a0 ; 00413775 E82692FFFF
    %if ($ - %%insn_00413775) > 5
        %error "LONG_00413775"
    %endif
    times 5 - ($ - %%insn_00413775) db 0
    %%insn_0041377a:
    mov ecx,[esi+0x14] ; 0041377A 8B4E14
    %if ($ - %%insn_0041377a) > 3
        %error "LONG_0041377A"
    %endif
    times 3 - ($ - %%insn_0041377a) db 0
    %%insn_0041377d:
    add esp,0x4 ; 0041377D 83C404
    %if ($ - %%insn_0041377d) > 3
        %error "LONG_0041377D"
    %endif
    times 3 - ($ - %%insn_0041377d) db 0
    %%insn_00413780:
    push ecx ; 00413780 51
    %if ($ - %%insn_00413780) > 1
        %error "LONG_00413780"
    %endif
    times 1 - ($ - %%insn_00413780) db 0
    %%insn_00413781:
    call 0x40c9a0 ; 00413781 E81A92FFFF
    %if ($ - %%insn_00413781) > 5
        %error "LONG_00413781"
    %endif
    times 5 - ($ - %%insn_00413781) db 0
    %%insn_00413786:
    mov edx,[esi+0x18] ; 00413786 8B5618
    %if ($ - %%insn_00413786) > 3
        %error "LONG_00413786"
    %endif
    times 3 - ($ - %%insn_00413786) db 0
    %%insn_00413789:
    add esp,0x4 ; 00413789 83C404
    %if ($ - %%insn_00413789) > 3
        %error "LONG_00413789"
    %endif
    times 3 - ($ - %%insn_00413789) db 0
    %%insn_0041378c:
    push edx ; 0041378C 52
    %if ($ - %%insn_0041378c) > 1
        %error "LONG_0041378C"
    %endif
    times 1 - ($ - %%insn_0041378c) db 0
    %%insn_0041378d:
    call 0x40c9a0 ; 0041378D E80E92FFFF
    %if ($ - %%insn_0041378d) > 5
        %error "LONG_0041378D"
    %endif
    times 5 - ($ - %%insn_0041378d) db 0
    %%insn_00413792:
    mov eax,[esi] ; 00413792 8B06
    %if ($ - %%insn_00413792) > 2
        %error "LONG_00413792"
    %endif
    times 2 - ($ - %%insn_00413792) db 0
    %%insn_00413794:
    add esp,0x4 ; 00413794 83C404
    %if ($ - %%insn_00413794) > 3
        %error "LONG_00413794"
    %endif
    times 3 - ($ - %%insn_00413794) db 0
    %%insn_00413797:
    push eax ; 00413797 50
    %if ($ - %%insn_00413797) > 1
        %error "LONG_00413797"
    %endif
    times 1 - ($ - %%insn_00413797) db 0
    %%insn_00413798:
    call 0x40c9a0 ; 00413798 E80392FFFF
    %if ($ - %%insn_00413798) > 5
        %error "LONG_00413798"
    %endif
    times 5 - ($ - %%insn_00413798) db 0
    %%insn_0041379d:
    mov ecx,[esi+0x20] ; 0041379D 8B4E20
    %if ($ - %%insn_0041379d) > 3
        %error "LONG_0041379D"
    %endif
    times 3 - ($ - %%insn_0041379d) db 0
    %%insn_004137a0:
    add esp,0x4 ; 004137A0 83C404
    %if ($ - %%insn_004137a0) > 3
        %error "LONG_004137A0"
    %endif
    times 3 - ($ - %%insn_004137a0) db 0
    %%insn_004137a3:
    push ecx ; 004137A3 51
    %if ($ - %%insn_004137a3) > 1
        %error "LONG_004137A3"
    %endif
    times 1 - ($ - %%insn_004137a3) db 0
    %%insn_004137a4:
    call 0x40c9a0 ; 004137A4 E8F791FFFF
    %if ($ - %%insn_004137a4) > 5
        %error "LONG_004137A4"
    %endif
    times 5 - ($ - %%insn_004137a4) db 0
    %%insn_004137a9:
    mov edx,[esi+0x24] ; 004137A9 8B5624
    %if ($ - %%insn_004137a9) > 3
        %error "LONG_004137A9"
    %endif
    times 3 - ($ - %%insn_004137a9) db 0
    %%insn_004137ac:
    add esp,0x4 ; 004137AC 83C404
    %if ($ - %%insn_004137ac) > 3
        %error "LONG_004137AC"
    %endif
    times 3 - ($ - %%insn_004137ac) db 0
    %%insn_004137af:
    push edx ; 004137AF 52
    %if ($ - %%insn_004137af) > 1
        %error "LONG_004137AF"
    %endif
    times 1 - ($ - %%insn_004137af) db 0
    %%insn_004137b0:
    call 0x40c9a0 ; 004137B0 E8EB91FFFF
    %if ($ - %%insn_004137b0) > 5
        %error "LONG_004137B0"
    %endif
    times 5 - ($ - %%insn_004137b0) db 0
    %%insn_004137b5:
    mov eax,[esi+0x28] ; 004137B5 8B4628
    %if ($ - %%insn_004137b5) > 3
        %error "LONG_004137B5"
    %endif
    times 3 - ($ - %%insn_004137b5) db 0
    %%insn_004137b8:
    add esp,0x4 ; 004137B8 83C404
    %if ($ - %%insn_004137b8) > 3
        %error "LONG_004137B8"
    %endif
    times 3 - ($ - %%insn_004137b8) db 0
    %%insn_004137bb:
    push eax ; 004137BB 50
    %if ($ - %%insn_004137bb) > 1
        %error "LONG_004137BB"
    %endif
    times 1 - ($ - %%insn_004137bb) db 0
    %%insn_004137bc:
    call 0x40c9a0 ; 004137BC E8DF91FFFF
    %if ($ - %%insn_004137bc) > 5
        %error "LONG_004137BC"
    %endif
    times 5 - ($ - %%insn_004137bc) db 0
    %%insn_004137c1:
    mov ecx,[esi+0x2c] ; 004137C1 8B4E2C
    %if ($ - %%insn_004137c1) > 3
        %error "LONG_004137C1"
    %endif
    times 3 - ($ - %%insn_004137c1) db 0
    %%insn_004137c4:
    add esp,0x4 ; 004137C4 83C404
    %if ($ - %%insn_004137c4) > 3
        %error "LONG_004137C4"
    %endif
    times 3 - ($ - %%insn_004137c4) db 0
    %%insn_004137c7:
    push ecx ; 004137C7 51
    %if ($ - %%insn_004137c7) > 1
        %error "LONG_004137C7"
    %endif
    times 1 - ($ - %%insn_004137c7) db 0
    %%insn_004137c8:
    call 0x40c9a0 ; 004137C8 E8D391FFFF
    %if ($ - %%insn_004137c8) > 5
        %error "LONG_004137C8"
    %endif
    times 5 - ($ - %%insn_004137c8) db 0
    %%insn_004137cd:
    mov edx,[esi+0x30] ; 004137CD 8B5630
    %if ($ - %%insn_004137cd) > 3
        %error "LONG_004137CD"
    %endif
    times 3 - ($ - %%insn_004137cd) db 0
    %%insn_004137d0:
    add esp,0x4 ; 004137D0 83C404
    %if ($ - %%insn_004137d0) > 3
        %error "LONG_004137D0"
    %endif
    times 3 - ($ - %%insn_004137d0) db 0
    %%insn_004137d3:
    push edx ; 004137D3 52
    %if ($ - %%insn_004137d3) > 1
        %error "LONG_004137D3"
    %endif
    times 1 - ($ - %%insn_004137d3) db 0
    %%insn_004137d4:
    call 0x40c9a0 ; 004137D4 E8C791FFFF
    %if ($ - %%insn_004137d4) > 5
        %error "LONG_004137D4"
    %endif
    times 5 - ($ - %%insn_004137d4) db 0
    %%insn_004137d9:
    mov eax,[esi+0x34] ; 004137D9 8B4634
    %if ($ - %%insn_004137d9) > 3
        %error "LONG_004137D9"
    %endif
    times 3 - ($ - %%insn_004137d9) db 0
    %%insn_004137dc:
    add esp,0x4 ; 004137DC 83C404
    %if ($ - %%insn_004137dc) > 3
        %error "LONG_004137DC"
    %endif
    times 3 - ($ - %%insn_004137dc) db 0
    %%insn_004137df:
    push eax ; 004137DF 50
    %if ($ - %%insn_004137df) > 1
        %error "LONG_004137DF"
    %endif
    times 1 - ($ - %%insn_004137df) db 0
    %%insn_004137e0:
    call 0x40c9a0 ; 004137E0 E8BB91FFFF
    %if ($ - %%insn_004137e0) > 5
        %error "LONG_004137E0"
    %endif
    times 5 - ($ - %%insn_004137e0) db 0
    %%insn_004137e5:
    mov ecx,[esi+0x1c] ; 004137E5 8B4E1C
    %if ($ - %%insn_004137e5) > 3
        %error "LONG_004137E5"
    %endif
    times 3 - ($ - %%insn_004137e5) db 0
    %%insn_004137e8:
    add esp,0x4 ; 004137E8 83C404
    %if ($ - %%insn_004137e8) > 3
        %error "LONG_004137E8"
    %endif
    times 3 - ($ - %%insn_004137e8) db 0
    %%insn_004137eb:
    push ecx ; 004137EB 51
    %if ($ - %%insn_004137eb) > 1
        %error "LONG_004137EB"
    %endif
    times 1 - ($ - %%insn_004137eb) db 0
    %%insn_004137ec:
    call 0x40c9a0 ; 004137EC E8AF91FFFF
    %if ($ - %%insn_004137ec) > 5
        %error "LONG_004137EC"
    %endif
    times 5 - ($ - %%insn_004137ec) db 0
    %%insn_004137f1:
    mov edx,[esi+0x38] ; 004137F1 8B5638
    %if ($ - %%insn_004137f1) > 3
        %error "LONG_004137F1"
    %endif
    times 3 - ($ - %%insn_004137f1) db 0
    %%insn_004137f4:
    add esp,0x4 ; 004137F4 83C404
    %if ($ - %%insn_004137f4) > 3
        %error "LONG_004137F4"
    %endif
    times 3 - ($ - %%insn_004137f4) db 0
    %%insn_004137f7:
    push edx ; 004137F7 52
    %if ($ - %%insn_004137f7) > 1
        %error "LONG_004137F7"
    %endif
    times 1 - ($ - %%insn_004137f7) db 0
    %%insn_004137f8:
    call 0x40c9a0 ; 004137F8 E8A391FFFF
    %if ($ - %%insn_004137f8) > 5
        %error "LONG_004137F8"
    %endif
    times 5 - ($ - %%insn_004137f8) db 0
    %%insn_004137fd:
    mov eax,[esi+0x3c] ; 004137FD 8B463C
    %if ($ - %%insn_004137fd) > 3
        %error "LONG_004137FD"
    %endif
    times 3 - ($ - %%insn_004137fd) db 0
    %%insn_00413800:
    add esp,0x4 ; 00413800 83C404
    %if ($ - %%insn_00413800) > 3
        %error "LONG_00413800"
    %endif
    times 3 - ($ - %%insn_00413800) db 0
    %%insn_00413803:
    push eax ; 00413803 50
    %if ($ - %%insn_00413803) > 1
        %error "LONG_00413803"
    %endif
    times 1 - ($ - %%insn_00413803) db 0
    %%insn_00413804:
    call 0x40c9a0 ; 00413804 E89791FFFF
    %if ($ - %%insn_00413804) > 5
        %error "LONG_00413804"
    %endif
    times 5 - ($ - %%insn_00413804) db 0
    %%insn_00413809:
    mov ecx,[esi+0x40] ; 00413809 8B4E40
    %if ($ - %%insn_00413809) > 3
        %error "LONG_00413809"
    %endif
    times 3 - ($ - %%insn_00413809) db 0
    %%insn_0041380c:
    add esp,0x4 ; 0041380C 83C404
    %if ($ - %%insn_0041380c) > 3
        %error "LONG_0041380C"
    %endif
    times 3 - ($ - %%insn_0041380c) db 0
    %%insn_0041380f:
    push ecx ; 0041380F 51
    %if ($ - %%insn_0041380f) > 1
        %error "LONG_0041380F"
    %endif
    times 1 - ($ - %%insn_0041380f) db 0
    %%insn_00413810:
    call 0x40c9a0 ; 00413810 E88B91FFFF
    %if ($ - %%insn_00413810) > 5
        %error "LONG_00413810"
    %endif
    times 5 - ($ - %%insn_00413810) db 0
    %%insn_00413815:
    mov edx,[esi+0x44] ; 00413815 8B5644
    %if ($ - %%insn_00413815) > 3
        %error "LONG_00413815"
    %endif
    times 3 - ($ - %%insn_00413815) db 0
    %%insn_00413818:
    add esp,0x4 ; 00413818 83C404
    %if ($ - %%insn_00413818) > 3
        %error "LONG_00413818"
    %endif
    times 3 - ($ - %%insn_00413818) db 0
    %%insn_0041381b:
    push edx ; 0041381B 52
    %if ($ - %%insn_0041381b) > 1
        %error "LONG_0041381B"
    %endif
    times 1 - ($ - %%insn_0041381b) db 0
    %%insn_0041381c:
    call 0x40c9a0 ; 0041381C E87F91FFFF
    %if ($ - %%insn_0041381c) > 5
        %error "LONG_0041381C"
    %endif
    times 5 - ($ - %%insn_0041381c) db 0
    %%insn_00413821:
    mov eax,[esi+0x48] ; 00413821 8B4648
    %if ($ - %%insn_00413821) > 3
        %error "LONG_00413821"
    %endif
    times 3 - ($ - %%insn_00413821) db 0
    %%insn_00413824:
    add esp,0x4 ; 00413824 83C404
    %if ($ - %%insn_00413824) > 3
        %error "LONG_00413824"
    %endif
    times 3 - ($ - %%insn_00413824) db 0
    %%insn_00413827:
    push eax ; 00413827 50
    %if ($ - %%insn_00413827) > 1
        %error "LONG_00413827"
    %endif
    times 1 - ($ - %%insn_00413827) db 0
    %%insn_00413828:
    call 0x40c9a0 ; 00413828 E87391FFFF
    %if ($ - %%insn_00413828) > 5
        %error "LONG_00413828"
    %endif
    times 5 - ($ - %%insn_00413828) db 0
    %%insn_0041382d:
    mov ecx,[esi+0x4c] ; 0041382D 8B4E4C
    %if ($ - %%insn_0041382d) > 3
        %error "LONG_0041382D"
    %endif
    times 3 - ($ - %%insn_0041382d) db 0
    %%insn_00413830:
    add esp,0x4 ; 00413830 83C404
    %if ($ - %%insn_00413830) > 3
        %error "LONG_00413830"
    %endif
    times 3 - ($ - %%insn_00413830) db 0
    %%insn_00413833:
    push ecx ; 00413833 51
    %if ($ - %%insn_00413833) > 1
        %error "LONG_00413833"
    %endif
    times 1 - ($ - %%insn_00413833) db 0
    %%insn_00413834:
    call 0x40c9a0 ; 00413834 E86791FFFF
    %if ($ - %%insn_00413834) > 5
        %error "LONG_00413834"
    %endif
    times 5 - ($ - %%insn_00413834) db 0
    %%insn_00413839:
    mov edx,[esi+0x50] ; 00413839 8B5650
    %if ($ - %%insn_00413839) > 3
        %error "LONG_00413839"
    %endif
    times 3 - ($ - %%insn_00413839) db 0
    %%insn_0041383c:
    add esp,0x4 ; 0041383C 83C404
    %if ($ - %%insn_0041383c) > 3
        %error "LONG_0041383C"
    %endif
    times 3 - ($ - %%insn_0041383c) db 0
    %%insn_0041383f:
    push edx ; 0041383F 52
    %if ($ - %%insn_0041383f) > 1
        %error "LONG_0041383F"
    %endif
    times 1 - ($ - %%insn_0041383f) db 0
    %%insn_00413840:
    call 0x40c9a0 ; 00413840 E85B91FFFF
    %if ($ - %%insn_00413840) > 5
        %error "LONG_00413840"
    %endif
    times 5 - ($ - %%insn_00413840) db 0
    %%insn_00413845:
    mov eax,[esi+0x54] ; 00413845 8B4654
    %if ($ - %%insn_00413845) > 3
        %error "LONG_00413845"
    %endif
    times 3 - ($ - %%insn_00413845) db 0
    %%insn_00413848:
    add esp,0x4 ; 00413848 83C404
    %if ($ - %%insn_00413848) > 3
        %error "LONG_00413848"
    %endif
    times 3 - ($ - %%insn_00413848) db 0
    %%insn_0041384b:
    push eax ; 0041384B 50
    %if ($ - %%insn_0041384b) > 1
        %error "LONG_0041384B"
    %endif
    times 1 - ($ - %%insn_0041384b) db 0
    %%insn_0041384c:
    call 0x40c9a0 ; 0041384C E84F91FFFF
    %if ($ - %%insn_0041384c) > 5
        %error "LONG_0041384C"
    %endif
    times 5 - ($ - %%insn_0041384c) db 0
    %%insn_00413851:
    mov ecx,[esi+0x58] ; 00413851 8B4E58
    %if ($ - %%insn_00413851) > 3
        %error "LONG_00413851"
    %endif
    times 3 - ($ - %%insn_00413851) db 0
    %%insn_00413854:
    add esp,0x4 ; 00413854 83C404
    %if ($ - %%insn_00413854) > 3
        %error "LONG_00413854"
    %endif
    times 3 - ($ - %%insn_00413854) db 0
    %%insn_00413857:
    push ecx ; 00413857 51
    %if ($ - %%insn_00413857) > 1
        %error "LONG_00413857"
    %endif
    times 1 - ($ - %%insn_00413857) db 0
    %%insn_00413858:
    call 0x40c9a0 ; 00413858 E84391FFFF
    %if ($ - %%insn_00413858) > 5
        %error "LONG_00413858"
    %endif
    times 5 - ($ - %%insn_00413858) db 0
    %%insn_0041385d:
    mov edx,[esi+0x5c] ; 0041385D 8B565C
    %if ($ - %%insn_0041385d) > 3
        %error "LONG_0041385D"
    %endif
    times 3 - ($ - %%insn_0041385d) db 0
    %%insn_00413860:
    add esp,0x4 ; 00413860 83C404
    %if ($ - %%insn_00413860) > 3
        %error "LONG_00413860"
    %endif
    times 3 - ($ - %%insn_00413860) db 0
    %%insn_00413863:
    push edx ; 00413863 52
    %if ($ - %%insn_00413863) > 1
        %error "LONG_00413863"
    %endif
    times 1 - ($ - %%insn_00413863) db 0
    %%insn_00413864:
    call 0x40c9a0 ; 00413864 E83791FFFF
    %if ($ - %%insn_00413864) > 5
        %error "LONG_00413864"
    %endif
    times 5 - ($ - %%insn_00413864) db 0
    %%insn_00413869:
    mov eax,[esi+0x60] ; 00413869 8B4660
    %if ($ - %%insn_00413869) > 3
        %error "LONG_00413869"
    %endif
    times 3 - ($ - %%insn_00413869) db 0
    %%insn_0041386c:
    add esp,0x4 ; 0041386C 83C404
    %if ($ - %%insn_0041386c) > 3
        %error "LONG_0041386C"
    %endif
    times 3 - ($ - %%insn_0041386c) db 0
    %%insn_0041386f:
    push eax ; 0041386F 50
    %if ($ - %%insn_0041386f) > 1
        %error "LONG_0041386F"
    %endif
    times 1 - ($ - %%insn_0041386f) db 0
    %%insn_00413870:
    call 0x40c9a0 ; 00413870 E82B91FFFF
    %if ($ - %%insn_00413870) > 5
        %error "LONG_00413870"
    %endif
    times 5 - ($ - %%insn_00413870) db 0
    %%insn_00413875:
    mov ecx,[esi+0x64] ; 00413875 8B4E64
    %if ($ - %%insn_00413875) > 3
        %error "LONG_00413875"
    %endif
    times 3 - ($ - %%insn_00413875) db 0
    %%insn_00413878:
    add esp,0x4 ; 00413878 83C404
    %if ($ - %%insn_00413878) > 3
        %error "LONG_00413878"
    %endif
    times 3 - ($ - %%insn_00413878) db 0
    %%insn_0041387b:
    push ecx ; 0041387B 51
    %if ($ - %%insn_0041387b) > 1
        %error "LONG_0041387B"
    %endif
    times 1 - ($ - %%insn_0041387b) db 0
    %%insn_0041387c:
    call 0x40c9a0 ; 0041387C E81F91FFFF
    %if ($ - %%insn_0041387c) > 5
        %error "LONG_0041387C"
    %endif
    times 5 - ($ - %%insn_0041387c) db 0
    %%insn_00413881:
    mov edx,[esi+0x68] ; 00413881 8B5668
    %if ($ - %%insn_00413881) > 3
        %error "LONG_00413881"
    %endif
    times 3 - ($ - %%insn_00413881) db 0
    %%insn_00413884:
    add esp,0x4 ; 00413884 83C404
    %if ($ - %%insn_00413884) > 3
        %error "LONG_00413884"
    %endif
    times 3 - ($ - %%insn_00413884) db 0
    %%insn_00413887:
    push edx ; 00413887 52
    %if ($ - %%insn_00413887) > 1
        %error "LONG_00413887"
    %endif
    times 1 - ($ - %%insn_00413887) db 0
    %%insn_00413888:
    call 0x40c9a0 ; 00413888 E81391FFFF
    %if ($ - %%insn_00413888) > 5
        %error "LONG_00413888"
    %endif
    times 5 - ($ - %%insn_00413888) db 0
    %%insn_0041388d:
    mov eax,[esi+0x6c] ; 0041388D 8B466C
    %if ($ - %%insn_0041388d) > 3
        %error "LONG_0041388D"
    %endif
    times 3 - ($ - %%insn_0041388d) db 0
    %%insn_00413890:
    add esp,0x4 ; 00413890 83C404
    %if ($ - %%insn_00413890) > 3
        %error "LONG_00413890"
    %endif
    times 3 - ($ - %%insn_00413890) db 0
    %%insn_00413893:
    push eax ; 00413893 50
    %if ($ - %%insn_00413893) > 1
        %error "LONG_00413893"
    %endif
    times 1 - ($ - %%insn_00413893) db 0
    %%insn_00413894:
    call 0x40c9a0 ; 00413894 E80791FFFF
    %if ($ - %%insn_00413894) > 5
        %error "LONG_00413894"
    %endif
    times 5 - ($ - %%insn_00413894) db 0
    %%insn_00413899:
    mov ecx,[esi+0x70] ; 00413899 8B4E70
    %if ($ - %%insn_00413899) > 3
        %error "LONG_00413899"
    %endif
    times 3 - ($ - %%insn_00413899) db 0
    %%insn_0041389c:
    add esp,0x4 ; 0041389C 83C404
    %if ($ - %%insn_0041389c) > 3
        %error "LONG_0041389C"
    %endif
    times 3 - ($ - %%insn_0041389c) db 0
    %%insn_0041389f:
    push ecx ; 0041389F 51
    %if ($ - %%insn_0041389f) > 1
        %error "LONG_0041389F"
    %endif
    times 1 - ($ - %%insn_0041389f) db 0
    %%insn_004138a0:
    call 0x40c9a0 ; 004138A0 E8FB90FFFF
    %if ($ - %%insn_004138a0) > 5
        %error "LONG_004138A0"
    %endif
    times 5 - ($ - %%insn_004138a0) db 0
    %%insn_004138a5:
    mov edx,[esi+0x74] ; 004138A5 8B5674
    %if ($ - %%insn_004138a5) > 3
        %error "LONG_004138A5"
    %endif
    times 3 - ($ - %%insn_004138a5) db 0
    %%insn_004138a8:
    add esp,0x4 ; 004138A8 83C404
    %if ($ - %%insn_004138a8) > 3
        %error "LONG_004138A8"
    %endif
    times 3 - ($ - %%insn_004138a8) db 0
    %%insn_004138ab:
    push edx ; 004138AB 52
    %if ($ - %%insn_004138ab) > 1
        %error "LONG_004138AB"
    %endif
    times 1 - ($ - %%insn_004138ab) db 0
    %%insn_004138ac:
    call 0x40c9a0 ; 004138AC E8EF90FFFF
    %if ($ - %%insn_004138ac) > 5
        %error "LONG_004138AC"
    %endif
    times 5 - ($ - %%insn_004138ac) db 0
    %%insn_004138b1:
    mov eax,[esi+0x78] ; 004138B1 8B4678
    %if ($ - %%insn_004138b1) > 3
        %error "LONG_004138B1"
    %endif
    times 3 - ($ - %%insn_004138b1) db 0
    %%insn_004138b4:
    add esp,0x4 ; 004138B4 83C404
    %if ($ - %%insn_004138b4) > 3
        %error "LONG_004138B4"
    %endif
    times 3 - ($ - %%insn_004138b4) db 0
    %%insn_004138b7:
    push eax ; 004138B7 50
    %if ($ - %%insn_004138b7) > 1
        %error "LONG_004138B7"
    %endif
    times 1 - ($ - %%insn_004138b7) db 0
    %%insn_004138b8:
    call 0x40c9a0 ; 004138B8 E8E390FFFF
    %if ($ - %%insn_004138b8) > 5
        %error "LONG_004138B8"
    %endif
    times 5 - ($ - %%insn_004138b8) db 0
    %%insn_004138bd:
    mov ecx,[esi+0x7c] ; 004138BD 8B4E7C
    %if ($ - %%insn_004138bd) > 3
        %error "LONG_004138BD"
    %endif
    times 3 - ($ - %%insn_004138bd) db 0
    %%insn_004138c0:
    add esp,0x4 ; 004138C0 83C404
    %if ($ - %%insn_004138c0) > 3
        %error "LONG_004138C0"
    %endif
    times 3 - ($ - %%insn_004138c0) db 0
    %%insn_004138c3:
    push ecx ; 004138C3 51
    %if ($ - %%insn_004138c3) > 1
        %error "LONG_004138C3"
    %endif
    times 1 - ($ - %%insn_004138c3) db 0
    %%insn_004138c4:
    call 0x40c9a0 ; 004138C4 E8D790FFFF
    %if ($ - %%insn_004138c4) > 5
        %error "LONG_004138C4"
    %endif
    times 5 - ($ - %%insn_004138c4) db 0
    %%insn_004138c9:
    mov edx,[esi+0x80] ; 004138C9 8B9680000000
    %if ($ - %%insn_004138c9) > 6
        %error "LONG_004138C9"
    %endif
    times 6 - ($ - %%insn_004138c9) db 0
    %%insn_004138cf:
    add esp,0x4 ; 004138CF 83C404
    %if ($ - %%insn_004138cf) > 3
        %error "LONG_004138CF"
    %endif
    times 3 - ($ - %%insn_004138cf) db 0
    %%insn_004138d2:
    push edx ; 004138D2 52
    %if ($ - %%insn_004138d2) > 1
        %error "LONG_004138D2"
    %endif
    times 1 - ($ - %%insn_004138d2) db 0
    %%insn_004138d3:
    call 0x40c9a0 ; 004138D3 E8C890FFFF
    %if ($ - %%insn_004138d3) > 5
        %error "LONG_004138D3"
    %endif
    times 5 - ($ - %%insn_004138d3) db 0
    %%insn_004138d8:
    mov eax,[esi+0x84] ; 004138D8 8B8684000000
    %if ($ - %%insn_004138d8) > 6
        %error "LONG_004138D8"
    %endif
    times 6 - ($ - %%insn_004138d8) db 0
    %%insn_004138de:
    add esp,0x4 ; 004138DE 83C404
    %if ($ - %%insn_004138de) > 3
        %error "LONG_004138DE"
    %endif
    times 3 - ($ - %%insn_004138de) db 0
    %%insn_004138e1:
    push eax ; 004138E1 50
    %if ($ - %%insn_004138e1) > 1
        %error "LONG_004138E1"
    %endif
    times 1 - ($ - %%insn_004138e1) db 0
    %%insn_004138e2:
    call 0x40c9a0 ; 004138E2 E8B990FFFF
    %if ($ - %%insn_004138e2) > 5
        %error "LONG_004138E2"
    %endif
    times 5 - ($ - %%insn_004138e2) db 0
    %%insn_004138e7:
    mov ecx,[esi+0x88] ; 004138E7 8B8E88000000
    %if ($ - %%insn_004138e7) > 6
        %error "LONG_004138E7"
    %endif
    times 6 - ($ - %%insn_004138e7) db 0
    %%insn_004138ed:
    add esp,0x4 ; 004138ED 83C404
    %if ($ - %%insn_004138ed) > 3
        %error "LONG_004138ED"
    %endif
    times 3 - ($ - %%insn_004138ed) db 0
    %%insn_004138f0:
    push ecx ; 004138F0 51
    %if ($ - %%insn_004138f0) > 1
        %error "LONG_004138F0"
    %endif
    times 1 - ($ - %%insn_004138f0) db 0
    %%insn_004138f1:
    call 0x40c9a0 ; 004138F1 E8AA90FFFF
    %if ($ - %%insn_004138f1) > 5
        %error "LONG_004138F1"
    %endif
    times 5 - ($ - %%insn_004138f1) db 0
    %%insn_004138f6:
    mov edx,[esi+0x8c] ; 004138F6 8B968C000000
    %if ($ - %%insn_004138f6) > 6
        %error "LONG_004138F6"
    %endif
    times 6 - ($ - %%insn_004138f6) db 0
    %%insn_004138fc:
    add esp,0x4 ; 004138FC 83C404
    %if ($ - %%insn_004138fc) > 3
        %error "LONG_004138FC"
    %endif
    times 3 - ($ - %%insn_004138fc) db 0
    %%insn_004138ff:
    push edx ; 004138FF 52
    %if ($ - %%insn_004138ff) > 1
        %error "LONG_004138FF"
    %endif
    times 1 - ($ - %%insn_004138ff) db 0
    %%insn_00413900:
    call 0x40c9a0 ; 00413900 E89B90FFFF
    %if ($ - %%insn_00413900) > 5
        %error "LONG_00413900"
    %endif
    times 5 - ($ - %%insn_00413900) db 0
    %%insn_00413905:
    mov eax,[esi+0x90] ; 00413905 8B8690000000
    %if ($ - %%insn_00413905) > 6
        %error "LONG_00413905"
    %endif
    times 6 - ($ - %%insn_00413905) db 0
    %%insn_0041390b:
    add esp,0x4 ; 0041390B 83C404
    %if ($ - %%insn_0041390b) > 3
        %error "LONG_0041390B"
    %endif
    times 3 - ($ - %%insn_0041390b) db 0
    %%insn_0041390e:
    push eax ; 0041390E 50
    %if ($ - %%insn_0041390e) > 1
        %error "LONG_0041390E"
    %endif
    times 1 - ($ - %%insn_0041390e) db 0
    %%insn_0041390f:
    call 0x40c9a0 ; 0041390F E88C90FFFF
    %if ($ - %%insn_0041390f) > 5
        %error "LONG_0041390F"
    %endif
    times 5 - ($ - %%insn_0041390f) db 0
    %%insn_00413914:
    mov ecx,[esi+0x94] ; 00413914 8B8E94000000
    %if ($ - %%insn_00413914) > 6
        %error "LONG_00413914"
    %endif
    times 6 - ($ - %%insn_00413914) db 0
    %%insn_0041391a:
    add esp,0x4 ; 0041391A 83C404
    %if ($ - %%insn_0041391a) > 3
        %error "LONG_0041391A"
    %endif
    times 3 - ($ - %%insn_0041391a) db 0
    %%insn_0041391d:
    push ecx ; 0041391D 51
    %if ($ - %%insn_0041391d) > 1
        %error "LONG_0041391D"
    %endif
    times 1 - ($ - %%insn_0041391d) db 0
    %%insn_0041391e:
    call 0x40c9a0 ; 0041391E E87D90FFFF
    %if ($ - %%insn_0041391e) > 5
        %error "LONG_0041391E"
    %endif
    times 5 - ($ - %%insn_0041391e) db 0
    %%insn_00413923:
    mov edx,[esi+0x98] ; 00413923 8B9698000000
    %if ($ - %%insn_00413923) > 6
        %error "LONG_00413923"
    %endif
    times 6 - ($ - %%insn_00413923) db 0
    %%insn_00413929:
    add esp,0x4 ; 00413929 83C404
    %if ($ - %%insn_00413929) > 3
        %error "LONG_00413929"
    %endif
    times 3 - ($ - %%insn_00413929) db 0
    %%insn_0041392c:
    push edx ; 0041392C 52
    %if ($ - %%insn_0041392c) > 1
        %error "LONG_0041392C"
    %endif
    times 1 - ($ - %%insn_0041392c) db 0
    %%insn_0041392d:
    call 0x40c9a0 ; 0041392D E86E90FFFF
    %if ($ - %%insn_0041392d) > 5
        %error "LONG_0041392D"
    %endif
    times 5 - ($ - %%insn_0041392d) db 0
    %%insn_00413932:
    mov eax,[esi+0x9c] ; 00413932 8B869C000000
    %if ($ - %%insn_00413932) > 6
        %error "LONG_00413932"
    %endif
    times 6 - ($ - %%insn_00413932) db 0
    %%insn_00413938:
    add esp,0x4 ; 00413938 83C404
    %if ($ - %%insn_00413938) > 3
        %error "LONG_00413938"
    %endif
    times 3 - ($ - %%insn_00413938) db 0
    %%insn_0041393b:
    push eax ; 0041393B 50
    %if ($ - %%insn_0041393b) > 1
        %error "LONG_0041393B"
    %endif
    times 1 - ($ - %%insn_0041393b) db 0
    %%insn_0041393c:
    call 0x40c9a0 ; 0041393C E85F90FFFF
    %if ($ - %%insn_0041393c) > 5
        %error "LONG_0041393C"
    %endif
    times 5 - ($ - %%insn_0041393c) db 0
    %%insn_00413941:
    mov ecx,[esi+0xa0] ; 00413941 8B8EA0000000
    %if ($ - %%insn_00413941) > 6
        %error "LONG_00413941"
    %endif
    times 6 - ($ - %%insn_00413941) db 0
    %%insn_00413947:
    add esp,0x4 ; 00413947 83C404
    %if ($ - %%insn_00413947) > 3
        %error "LONG_00413947"
    %endif
    times 3 - ($ - %%insn_00413947) db 0
    %%insn_0041394a:
    push ecx ; 0041394A 51
    %if ($ - %%insn_0041394a) > 1
        %error "LONG_0041394A"
    %endif
    times 1 - ($ - %%insn_0041394a) db 0
    %%insn_0041394b:
    call 0x40c9a0 ; 0041394B E85090FFFF
    %if ($ - %%insn_0041394b) > 5
        %error "LONG_0041394B"
    %endif
    times 5 - ($ - %%insn_0041394b) db 0
    %%insn_00413950:
    mov edx,[esi+0xa4] ; 00413950 8B96A4000000
    %if ($ - %%insn_00413950) > 6
        %error "LONG_00413950"
    %endif
    times 6 - ($ - %%insn_00413950) db 0
    %%insn_00413956:
    add esp,0x4 ; 00413956 83C404
    %if ($ - %%insn_00413956) > 3
        %error "LONG_00413956"
    %endif
    times 3 - ($ - %%insn_00413956) db 0
    %%insn_00413959:
    push edx ; 00413959 52
    %if ($ - %%insn_00413959) > 1
        %error "LONG_00413959"
    %endif
    times 1 - ($ - %%insn_00413959) db 0
    %%insn_0041395a:
    call 0x40c9a0 ; 0041395A E84190FFFF
    %if ($ - %%insn_0041395a) > 5
        %error "LONG_0041395A"
    %endif
    times 5 - ($ - %%insn_0041395a) db 0
    %%insn_0041395f:
    mov eax,[esi+0xa8] ; 0041395F 8B86A8000000
    %if ($ - %%insn_0041395f) > 6
        %error "LONG_0041395F"
    %endif
    times 6 - ($ - %%insn_0041395f) db 0
    %%insn_00413965:
    add esp,0x4 ; 00413965 83C404
    %if ($ - %%insn_00413965) > 3
        %error "LONG_00413965"
    %endif
    times 3 - ($ - %%insn_00413965) db 0
    %%insn_00413968:
    push eax ; 00413968 50
    %if ($ - %%insn_00413968) > 1
        %error "LONG_00413968"
    %endif
    times 1 - ($ - %%insn_00413968) db 0
    %%insn_00413969:
    call 0x40c9a0 ; 00413969 E83290FFFF
    %if ($ - %%insn_00413969) > 5
        %error "LONG_00413969"
    %endif
    times 5 - ($ - %%insn_00413969) db 0
    %%insn_0041396e:
    add esp,0x4 ; 0041396E 83C404
    %if ($ - %%insn_0041396e) > 3
        %error "LONG_0041396E"
    %endif
    times 3 - ($ - %%insn_0041396e) db 0
    %%insn_00413971:
    pop esi ; 00413971 5E
    %if ($ - %%insn_00413971) > 1
        %error "LONG_00413971"
    %endif
    times 1 - ($ - %%insn_00413971) db 0
    %%insn_00413972:
    ret ; 00413972 C3
    %if ($ - %%insn_00413972) > 1
        %error "LONG_00413972"
    %endif
    times 1 - ($ - %%insn_00413972) db 0
    %if ($ - %%fragment_start) != 563
        %error "function fragment size drift: 00413740"
    %endif
%endmacro
