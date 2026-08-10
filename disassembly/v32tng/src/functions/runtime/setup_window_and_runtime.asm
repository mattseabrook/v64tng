; PE virtual entry 00409850
; Ghidra working symbol: FUN_00409850
; Verified window/runtime setup called by WinMain.
; Generated losslessly; preserve byte identity after edits.

%macro emit_setup_window_and_runtime_part_00 0
    %%fragment_start:
setup_window_and_runtime:
    %%insn_00409850:
    push ebp ; 00409850 55
    %if ($ - %%insn_00409850) > 1
        %error "LONG_00409850"
    %endif
    times 1 - ($ - %%insn_00409850) db 0
    db 0x8B, 0xEC ; 00409851 8BEC | mov ebp,esp | encoding preserved
    %%insn_00409853:
    sub esp,0x13c ; 00409853 81EC3C010000
    %if ($ - %%insn_00409853) > 6
        %error "LONG_00409853"
    %endif
    times 6 - ($ - %%insn_00409853) db 0
    %%insn_00409859:
    push dword 0x41bc2c ; 00409859 682CBC4100
    %if ($ - %%insn_00409859) > 5
        %error "LONG_00409859"
    %endif
    times 5 - ($ - %%insn_00409859) db 0
    %%insn_0040985e:
    push dword 0x41bc48 ; 0040985E 6848BC4100
    %if ($ - %%insn_0040985e) > 5
        %error "LONG_0040985E"
    %endif
    times 5 - ($ - %%insn_0040985e) db 0
    %%insn_00409863:
    push dword 0x41bc50 ; 00409863 6850BC4100
    %if ($ - %%insn_00409863) > 5
        %error "LONG_00409863"
    %endif
    times 5 - ($ - %%insn_00409863) db 0
    %%insn_00409868:
    call 0x4095d7 ; 00409868 E86AFDFFFF
    %if ($ - %%insn_00409868) > 5
        %error "LONG_00409868"
    %endif
    times 5 - ($ - %%insn_00409868) db 0
    %%insn_0040986d:
    add esp,0xc ; 0040986D 83C40C
    %if ($ - %%insn_0040986d) > 3
        %error "LONG_0040986D"
    %endif
    times 3 - ($ - %%insn_0040986d) db 0
    %%insn_00409870:
    test eax,eax ; 00409870 85C0
    %if ($ - %%insn_00409870) > 2
        %error "LONG_00409870"
    %endif
    times 2 - ($ - %%insn_00409870) db 0
    %%insn_00409872:
    jz short 0x40987b ; 00409872 7407
    %if ($ - %%insn_00409872) > 2
        %error "LONG_00409872"
    %endif
    times 2 - ($ - %%insn_00409872) db 0
    db 0x33, 0xC0 ; 00409874 33C0 | xor eax,eax | encoding preserved
    %%insn_00409876:
    jmp 0x409a85 ; 00409876 E90A020000
    %if ($ - %%insn_00409876) > 5
        %error "LONG_00409876"
    %endif
    times 5 - ($ - %%insn_00409876) db 0
    %%insn_0040987b:
    push dword 0x41bc68 ; 0040987B 6868BC4100
    %if ($ - %%insn_0040987b) > 5
        %error "LONG_0040987B"
    %endif
    times 5 - ($ - %%insn_0040987b) db 0
    %%insn_00409880:
    push dword 0x0 ; 00409880 6A00
    %if ($ - %%insn_00409880) > 2
        %error "LONG_00409880"
    %endif
    times 2 - ($ - %%insn_00409880) db 0
    %%insn_00409882:
    call dword near [0x424574] ; 00409882 FF1574454200
    %if ($ - %%insn_00409882) > 6
        %error "LONG_00409882"
    %endif
    times 6 - ($ - %%insn_00409882) db 0
    %%insn_00409888:
    mov [ebp-0xc],eax ; 00409888 8945F4
    %if ($ - %%insn_00409888) > 3
        %error "LONG_00409888"
    %endif
    times 3 - ($ - %%insn_00409888) db 0
    %%insn_0040988b:
    cmp dword [ebp-0xc],0x0 ; 0040988B 837DF400
    %if ($ - %%insn_0040988b) > 4
        %error "LONG_0040988B"
    %endif
    times 4 - ($ - %%insn_0040988b) db 0
    %%insn_0040988f:
    jz short 0x4098c1 ; 0040988F 7430
    %if ($ - %%insn_0040988f) > 2
        %error "LONG_0040988F"
    %endif
    times 2 - ($ - %%insn_0040988f) db 0
    %%insn_00409891:
    cmp dword [0x41f5c4],0x0 ; 00409891 833DC4F5410000
    %if ($ - %%insn_00409891) > 7
        %error "LONG_00409891"
    %endif
    times 7 - ($ - %%insn_00409891) db 0
    %%insn_00409898:
    jnz short 0x4098c1 ; 00409898 7527
    %if ($ - %%insn_00409898) > 2
        %error "LONG_00409898"
    %endif
    times 2 - ($ - %%insn_00409898) db 0
    %%insn_0040989a:
    mov eax,[ebp-0xc] ; 0040989A 8B45F4
    %if ($ - %%insn_0040989a) > 3
        %error "LONG_0040989A"
    %endif
    times 3 - ($ - %%insn_0040989a) db 0
    %%insn_0040989d:
    push eax ; 0040989D 50
    %if ($ - %%insn_0040989d) > 1
        %error "LONG_0040989D"
    %endif
    times 1 - ($ - %%insn_0040989d) db 0
    %%insn_0040989e:
    call dword near [0x424540] ; 0040989E FF1540454200
    %if ($ - %%insn_0040989e) > 6
        %error "LONG_0040989E"
    %endif
    times 6 - ($ - %%insn_0040989e) db 0
    %%insn_004098a4:
    push dword 0x9 ; 004098A4 6A09
    %if ($ - %%insn_004098a4) > 2
        %error "LONG_004098A4"
    %endif
    times 2 - ($ - %%insn_004098a4) db 0
    %%insn_004098a6:
    mov ecx,[ebp-0xc] ; 004098A6 8B4DF4
    %if ($ - %%insn_004098a6) > 3
        %error "LONG_004098A6"
    %endif
    times 3 - ($ - %%insn_004098a6) db 0
    %%insn_004098a9:
    push ecx ; 004098A9 51
    %if ($ - %%insn_004098a9) > 1
        %error "LONG_004098A9"
    %endif
    times 1 - ($ - %%insn_004098a9) db 0
    %%insn_004098aa:
    call dword near [0x424580] ; 004098AA FF1580454200
    %if ($ - %%insn_004098aa) > 6
        %error "LONG_004098AA"
    %endif
    times 6 - ($ - %%insn_004098aa) db 0
    %%insn_004098b0:
    mov edx,[ebp-0xc] ; 004098B0 8B55F4
    %if ($ - %%insn_004098b0) > 3
        %error "LONG_004098B0"
    %endif
    times 3 - ($ - %%insn_004098b0) db 0
    %%insn_004098b3:
    push edx ; 004098B3 52
    %if ($ - %%insn_004098b3) > 1
        %error "LONG_004098B3"
    %endif
    times 1 - ($ - %%insn_004098b3) db 0
    %%insn_004098b4:
    call dword near [0x424578] ; 004098B4 FF1578454200
    %if ($ - %%insn_004098b4) > 6
        %error "LONG_004098B4"
    %endif
    times 6 - ($ - %%insn_004098b4) db 0
    db 0x33, 0xC0 ; 004098BA 33C0 | xor eax,eax | encoding preserved
    %%insn_004098bc:
    jmp 0x409a85 ; 004098BC E9C4010000
    %if ($ - %%insn_004098bc) > 5
        %error "LONG_004098BC"
    %endif
    times 5 - ($ - %%insn_004098bc) db 0
    %%insn_004098c1:
    push dword 0x104 ; 004098C1 6804010000
    %if ($ - %%insn_004098c1) > 5
        %error "LONG_004098C1"
    %endif
    times 5 - ($ - %%insn_004098c1) db 0
    %%insn_004098c6:
    lea eax,[ebp-0x13c] ; 004098C6 8D85C4FEFFFF
    %if ($ - %%insn_004098c6) > 6
        %error "LONG_004098C6"
    %endif
    times 6 - ($ - %%insn_004098c6) db 0
    %%insn_004098cc:
    push eax ; 004098CC 50
    %if ($ - %%insn_004098cc) > 1
        %error "LONG_004098CC"
    %endif
    times 1 - ($ - %%insn_004098cc) db 0
    %%insn_004098cd:
    push dword 0x0 ; 004098CD 6A00
    %if ($ - %%insn_004098cd) > 2
        %error "LONG_004098CD"
    %endif
    times 2 - ($ - %%insn_004098cd) db 0
    %%insn_004098cf:
    call dword near [0x4243b8] ; 004098CF FF15B8434200
    %if ($ - %%insn_004098cf) > 6
        %error "LONG_004098CF"
    %endif
    times 6 - ($ - %%insn_004098cf) db 0
    %%insn_004098d5:
    push dword 0x5c ; 004098D5 6A5C
    %if ($ - %%insn_004098d5) > 2
        %error "LONG_004098D5"
    %endif
    times 2 - ($ - %%insn_004098d5) db 0
    %%insn_004098d7:
    lea ecx,[ebp-0x13c] ; 004098D7 8D8DC4FEFFFF
    %if ($ - %%insn_004098d7) > 6
        %error "LONG_004098D7"
    %endif
    times 6 - ($ - %%insn_004098d7) db 0
    %%insn_004098dd:
    push ecx ; 004098DD 51
    %if ($ - %%insn_004098dd) > 1
        %error "LONG_004098DD"
    %endif
    times 1 - ($ - %%insn_004098dd) db 0
    %%insn_004098de:
    call 0x40d9f0 ; 004098DE E80D410000
    %if ($ - %%insn_004098de) > 5
        %error "LONG_004098DE"
    %endif
    times 5 - ($ - %%insn_004098de) db 0
    %%insn_004098e3:
    add esp,0x8 ; 004098E3 83C408
    %if ($ - %%insn_004098e3) > 3
        %error "LONG_004098E3"
    %endif
    times 3 - ($ - %%insn_004098e3) db 0
    %%insn_004098e6:
    mov [ebp-0x38],eax ; 004098E6 8945C8
    %if ($ - %%insn_004098e6) > 3
        %error "LONG_004098E6"
    %endif
    times 3 - ($ - %%insn_004098e6) db 0
    %%insn_004098e9:
    cmp dword [ebp-0x38],0x0 ; 004098E9 837DC800
    %if ($ - %%insn_004098e9) > 4
        %error "LONG_004098E9"
    %endif
    times 4 - ($ - %%insn_004098e9) db 0
    %%insn_004098ed:
    jz short 0x4098f5 ; 004098ED 7406
    %if ($ - %%insn_004098ed) > 2
        %error "LONG_004098ED"
    %endif
    times 2 - ($ - %%insn_004098ed) db 0
    %%insn_004098ef:
    mov edx,[ebp-0x38] ; 004098EF 8B55C8
    %if ($ - %%insn_004098ef) > 3
        %error "LONG_004098EF"
    %endif
    times 3 - ($ - %%insn_004098ef) db 0
    %%insn_004098f2:
    mov byte [edx],0x0 ; 004098F2 C60200
    %if ($ - %%insn_004098f2) > 3
        %error "LONG_004098F2"
    %endif
    times 3 - ($ - %%insn_004098f2) db 0
    %%insn_004098f5:
    lea eax,[ebp-0x13c] ; 004098F5 8D85C4FEFFFF
    %if ($ - %%insn_004098f5) > 6
        %error "LONG_004098F5"
    %endif
    times 6 - ($ - %%insn_004098f5) db 0
    %%insn_004098fb:
    push eax ; 004098FB 50
    %if ($ - %%insn_004098fb) > 1
        %error "LONG_004098FB"
    %endif
    times 1 - ($ - %%insn_004098fb) db 0
    %%insn_004098fc:
    call 0x40d950 ; 004098FC E84F400000
    %if ($ - %%insn_004098fc) > 5
        %error "LONG_004098FC"
    %endif
    times 5 - ($ - %%insn_004098fc) db 0
    %%insn_00409901:
    add esp,0x4 ; 00409901 83C404
    %if ($ - %%insn_00409901) > 3
        %error "LONG_00409901"
    %endif
    times 3 - ($ - %%insn_00409901) db 0
    %%insn_00409904:
    lea ecx,[ebp-0x13c] ; 00409904 8D8DC4FEFFFF
    %if ($ - %%insn_00409904) > 6
        %error "LONG_00409904"
    %endif
    times 6 - ($ - %%insn_00409904) db 0
    %%insn_0040990a:
    push ecx ; 0040990A 51
    %if ($ - %%insn_0040990a) > 1
        %error "LONG_0040990A"
    %endif
    times 1 - ($ - %%insn_0040990a) db 0
    %%insn_0040990b:
    call 0x409512 ; 0040990B E802FCFFFF
    %if ($ - %%insn_0040990b) > 5
        %error "LONG_0040990B"
    %endif
    times 5 - ($ - %%insn_0040990b) db 0
    %%insn_00409910:
    add esp,0x4 ; 00409910 83C404
    %if ($ - %%insn_00409910) > 3
        %error "LONG_00409910"
    %endif
    times 3 - ($ - %%insn_00409910) db 0
    %%insn_00409913:
    test eax,eax ; 00409913 85C0
    %if ($ - %%insn_00409913) > 2
        %error "LONG_00409913"
    %endif
    times 2 - ($ - %%insn_00409913) db 0
    %%insn_00409915:
    jz short 0x40991e ; 00409915 7407
    %if ($ - %%insn_00409915) > 2
        %error "LONG_00409915"
    %endif
    times 2 - ($ - %%insn_00409915) db 0
    db 0x33, 0xC0 ; 00409917 33C0 | xor eax,eax | encoding preserved
    %%insn_00409919:
    jmp 0x409a85 ; 00409919 E967010000
    %if ($ - %%insn_00409919) > 5
        %error "LONG_00409919"
    %endif
    times 5 - ($ - %%insn_00409919) db 0
    %%insn_0040991e:
    push dword 0x0 ; 0040991E 6A00
    %if ($ - %%insn_0040991e) > 2
        %error "LONG_0040991E"
    %endif
    times 2 - ($ - %%insn_0040991e) db 0
    %%insn_00409920:
    call 0x40d930 ; 00409920 E80B400000
    %if ($ - %%insn_00409920) > 5
        %error "LONG_00409920"
    %endif
    times 5 - ($ - %%insn_00409920) db 0
    %%insn_00409925:
    add esp,0x4 ; 00409925 83C404
    %if ($ - %%insn_00409925) > 3
        %error "LONG_00409925"
    %endif
    times 3 - ($ - %%insn_00409925) db 0
    %%insn_00409928:
    mov dword [ebp-0x34],0x2003 ; 00409928 C745CC03200000
    %if ($ - %%insn_00409928) > 7
        %error "LONG_00409928"
    %endif
    times 7 - ($ - %%insn_00409928) db 0
    %%insn_0040992f:
    mov dword [ebp-0x30],v32_window_procedure ; 0040992F C745D0308F4000
    %if ($ - %%insn_0040992f) > 7
        %error "LONG_0040992F"
    %endif
    times 7 - ($ - %%insn_0040992f) db 0
    %%insn_00409936:
    mov dword [ebp-0x2c],0x0 ; 00409936 C745D400000000
    %if ($ - %%insn_00409936) > 7
        %error "LONG_00409936"
    %endif
    times 7 - ($ - %%insn_00409936) db 0
    %%insn_0040993d:
    mov dword [ebp-0x28],0x0 ; 0040993D C745D800000000
    %if ($ - %%insn_0040993d) > 7
        %error "LONG_0040993D"
    %endif
    times 7 - ($ - %%insn_0040993d) db 0
    %%insn_00409944:
    mov edx,[ebp+0x8] ; 00409944 8B5508
    %if ($ - %%insn_00409944) > 3
        %error "LONG_00409944"
    %endif
    times 3 - ($ - %%insn_00409944) db 0
    %%insn_00409947:
    mov [ebp-0x24],edx ; 00409947 8955DC
    %if ($ - %%insn_00409947) > 3
        %error "LONG_00409947"
    %endif
    times 3 - ($ - %%insn_00409947) db 0
    %%insn_0040994a:
    push dword 0x65 ; 0040994A 6A65
    %if ($ - %%insn_0040994a) > 2
        %error "LONG_0040994A"
    %endif
    times 2 - ($ - %%insn_0040994a) db 0
    %%insn_0040994c:
    mov eax,[ebp+0x8] ; 0040994C 8B4508
    %if ($ - %%insn_0040994c) > 3
        %error "LONG_0040994C"
    %endif
    times 3 - ($ - %%insn_0040994c) db 0
    %%insn_0040994f:
    push eax ; 0040994F 50
    %if ($ - %%insn_0040994f) > 1
        %error "LONG_0040994F"
    %endif
    times 1 - ($ - %%insn_0040994f) db 0
    %%insn_00409950:
    call dword near [0x424544] ; 00409950 FF1544454200
    %if ($ - %%insn_00409950) > 6
        %error "LONG_00409950"
    %endif
    times 6 - ($ - %%insn_00409950) db 0
    %%insn_00409956:
    mov [ebp-0x20],eax ; 00409956 8945E0
    %if ($ - %%insn_00409956) > 3
        %error "LONG_00409956"
    %endif
    times 3 - ($ - %%insn_00409956) db 0
    %%insn_00409959:
    push dword 0x7f00 ; 00409959 68007F0000
    %if ($ - %%insn_00409959) > 5
        %error "LONG_00409959"
    %endif
    times 5 - ($ - %%insn_00409959) db 0
    %%insn_0040995e:
    push dword 0x0 ; 0040995E 6A00
    %if ($ - %%insn_0040995e) > 2
        %error "LONG_0040995E"
    %endif
    times 2 - ($ - %%insn_0040995e) db 0
    %%insn_00409960:
    call dword near [0x424584] ; 00409960 FF1584454200
    %if ($ - %%insn_00409960) > 6
        %error "LONG_00409960"
    %endif
    times 6 - ($ - %%insn_00409960) db 0
    %%insn_00409966:
    mov [ebp-0x1c],eax ; 00409966 8945E4
    %if ($ - %%insn_00409966) > 3
        %error "LONG_00409966"
    %endif
    times 3 - ($ - %%insn_00409966) db 0
    %%insn_00409969:
    push dword 0x4 ; 00409969 6A04
    %if ($ - %%insn_00409969) > 2
        %error "LONG_00409969"
    %endif
    times 2 - ($ - %%insn_00409969) db 0
    %%insn_0040996b:
    call dword near [0x424390] ; 0040996B FF1590434200
    %if ($ - %%insn_0040996b) > 6
        %error "LONG_0040996B"
    %endif
    times 6 - ($ - %%insn_0040996b) db 0
    %%insn_00409971:
    mov [ebp-0x18],eax ; 00409971 8945E8
    %if ($ - %%insn_00409971) > 3
        %error "LONG_00409971"
    %endif
    times 3 - ($ - %%insn_00409971) db 0
    %%insn_00409974:
    mov dword [ebp-0x14],0x0 ; 00409974 C745EC00000000
    %if ($ - %%insn_00409974) > 7
        %error "LONG_00409974"
    %endif
    times 7 - ($ - %%insn_00409974) db 0
    %%insn_0040997b:
    mov dword [ebp-0x10],0x41bc78 ; 0040997B C745F078BC4100
    %if ($ - %%insn_0040997b) > 7
        %error "LONG_0040997B"
    %endif
    times 7 - ($ - %%insn_0040997b) db 0
    %%insn_00409982:
    lea ecx,[ebp-0x34] ; 00409982 8D4DCC
    %if ($ - %%insn_00409982) > 3
        %error "LONG_00409982"
    %endif
    times 3 - ($ - %%insn_00409982) db 0
    %%insn_00409985:
    push ecx ; 00409985 51
    %if ($ - %%insn_00409985) > 1
        %error "LONG_00409985"
    %endif
    times 1 - ($ - %%insn_00409985) db 0
    %%insn_00409986:
    call dword near [0x424548] ; 00409986 FF1548454200
    %if ($ - %%insn_00409986) > 6
        %error "LONG_00409986"
    %endif
    times 6 - ($ - %%insn_00409986) db 0
    %%insn_0040998c:
    push dword 0x0 ; 0040998C 6A00
    %if ($ - %%insn_0040998c) > 2
        %error "LONG_0040998C"
    %endif
    times 2 - ($ - %%insn_0040998c) db 0
    %%insn_0040998e:
    mov edx,[ebp+0x8] ; 0040998E 8B5508
    %if ($ - %%insn_0040998e) > 3
        %error "LONG_0040998E"
    %endif
    times 3 - ($ - %%insn_0040998e) db 0
    %%insn_00409991:
    push edx ; 00409991 52
    %if ($ - %%insn_00409991) > 1
        %error "LONG_00409991"
    %endif
    times 1 - ($ - %%insn_00409991) db 0
    %%insn_00409992:
    push dword 0x0 ; 00409992 6A00
    %if ($ - %%insn_00409992) > 2
        %error "LONG_00409992"
    %endif
    times 2 - ($ - %%insn_00409992) db 0
    %%insn_00409994:
    push dword 0x0 ; 00409994 6A00
    %if ($ - %%insn_00409994) > 2
        %error "LONG_00409994"
    %endif
    times 2 - ($ - %%insn_00409994) db 0
    %%insn_00409996:
    push dword 0x1 ; 00409996 6A01
    %if ($ - %%insn_00409996) > 2
        %error "LONG_00409996"
    %endif
    times 2 - ($ - %%insn_00409996) db 0
    %%insn_00409998:
    call dword near [0x4244fc] ; 00409998 FF15FC444200
    %if ($ - %%insn_00409998) > 6
        %error "LONG_00409998"
    %endif
    times 6 - ($ - %%insn_00409998) db 0
    %%insn_0040999e:
    push eax ; 0040999E 50
    %if ($ - %%insn_0040999e) > 1
        %error "LONG_0040999E"
    %endif
    times 1 - ($ - %%insn_0040999e) db 0
    %%insn_0040999f:
    push dword 0x0 ; 0040999F 6A00
    %if ($ - %%insn_0040999f) > 2
        %error "LONG_0040999F"
    %endif
    times 2 - ($ - %%insn_0040999f) db 0
    %%insn_004099a1:
    call dword near [0x4244fc] ; 004099A1 FF15FC444200
    %if ($ - %%insn_004099a1) > 6
        %error "LONG_004099A1"
    %endif
    times 6 - ($ - %%insn_004099a1) db 0
    %%insn_004099a7:
    push eax ; 004099A7 50
    %if ($ - %%insn_004099a7) > 1
        %error "LONG_004099A7"
    %endif
    times 1 - ($ - %%insn_004099a7) db 0
    %%insn_004099a8:
    push dword 0x0 ; 004099A8 6A00
    %if ($ - %%insn_004099a8) > 2
        %error "LONG_004099A8"
    %endif
    times 2 - ($ - %%insn_004099a8) db 0
    %%insn_004099aa:
    push dword 0x0 ; 004099AA 6A00
    %if ($ - %%insn_004099aa) > 2
        %error "LONG_004099AA"
    %endif
    times 2 - ($ - %%insn_004099aa) db 0
    %%insn_004099ac:
    push dword 0x90080000 ; 004099AC 6800000890
    %if ($ - %%insn_004099ac) > 5
        %error "LONG_004099AC"
    %endif
    times 5 - ($ - %%insn_004099ac) db 0
    %%insn_004099b1:
    push dword 0x41bc80 ; 004099B1 6880BC4100
    %if ($ - %%insn_004099b1) > 5
        %error "LONG_004099B1"
    %endif
    times 5 - ($ - %%insn_004099b1) db 0
    %%insn_004099b6:
    push dword 0x41bc88 ; 004099B6 6888BC4100
    %if ($ - %%insn_004099b6) > 5
        %error "LONG_004099B6"
    %endif
    times 5 - ($ - %%insn_004099b6) db 0
    %%insn_004099bb:
    push dword 0x40000 ; 004099BB 6800000400
    %if ($ - %%insn_004099bb) > 5
        %error "LONG_004099BB"
    %endif
    times 5 - ($ - %%insn_004099bb) db 0
    %%insn_004099c0:
    call dword near [0x42454c] ; 004099C0 FF154C454200
    %if ($ - %%insn_004099c0) > 6
        %error "LONG_004099C0"
    %endif
    times 6 - ($ - %%insn_004099c0) db 0
    %%insn_004099c6:
    mov [0x41f5bc],eax ; 004099C6 A3BCF54100
    %if ($ - %%insn_004099c6) > 5
        %error "LONG_004099C6"
    %endif
    times 5 - ($ - %%insn_004099c6) db 0
    %%insn_004099cb:
    cmp dword [0x41f5bc],0x0 ; 004099CB 833DBCF5410000
    %if ($ - %%insn_004099cb) > 7
        %error "LONG_004099CB"
    %endif
    times 7 - ($ - %%insn_004099cb) db 0
    %%insn_004099d2:
    jnz short 0x4099db ; 004099D2 7507
    %if ($ - %%insn_004099d2) > 2
        %error "LONG_004099D2"
    %endif
    times 2 - ($ - %%insn_004099d2) db 0
    db 0x33, 0xC0 ; 004099D4 33C0 | xor eax,eax | encoding preserved
    %%insn_004099d6:
    jmp 0x409a85 ; 004099D6 E9AA000000
    %if ($ - %%insn_004099d6) > 5
        %error "LONG_004099D6"
    %endif
    times 5 - ($ - %%insn_004099d6) db 0
    %%insn_004099db:
    mov eax,[0x41f5bc] ; 004099DB A1BCF54100
    %if ($ - %%insn_004099db) > 5
        %error "LONG_004099DB"
    %endif
    times 5 - ($ - %%insn_004099db) db 0
    %%insn_004099e0:
    push eax ; 004099E0 50
    %if ($ - %%insn_004099e0) > 1
        %error "LONG_004099E0"
    %endif
    times 1 - ($ - %%insn_004099e0) db 0
    %%insn_004099e1:
    call dword near [0x4244f4] ; 004099E1 FF15F4444200
    %if ($ - %%insn_004099e1) > 6
        %error "LONG_004099E1"
    %endif
    times 6 - ($ - %%insn_004099e1) db 0
    %%insn_004099e7:
    mov ecx,[0x41f5bc] ; 004099E7 8B0DBCF54100
    %if ($ - %%insn_004099e7) > 6
        %error "LONG_004099E7"
    %endif
    times 6 - ($ - %%insn_004099e7) db 0
    %%insn_004099ed:
    push ecx ; 004099ED 51
    %if ($ - %%insn_004099ed) > 1
        %error "LONG_004099ED"
    %endif
    times 1 - ($ - %%insn_004099ed) db 0
    %%insn_004099ee:
    call dword near [0x424550] ; 004099EE FF1550454200
    %if ($ - %%insn_004099ee) > 6
        %error "LONG_004099EE"
    %endif
    times 6 - ($ - %%insn_004099ee) db 0
    %%insn_004099f4:
    push dword 0x300 ; 004099F4 6800030000
    %if ($ - %%insn_004099f4) > 5
        %error "LONG_004099F4"
    %endif
    times 5 - ($ - %%insn_004099f4) db 0
    %%insn_004099f9:
    call 0x40cdc0 ; 004099F9 E8C2330000
    %if ($ - %%insn_004099f9) > 5
        %error "LONG_004099F9"
    %endif
    times 5 - ($ - %%insn_004099f9) db 0
    %%insn_004099fe:
    add esp,0x4 ; 004099FE 83C404
    %if ($ - %%insn_004099fe) > 3
        %error "LONG_004099FE"
    %endif
    times 3 - ($ - %%insn_004099fe) db 0
    %%insn_00409a01:
    mov [0x421344],eax ; 00409A01 A344134200
    %if ($ - %%insn_00409a01) > 5
        %error "LONG_00409A01"
    %endif
    times 5 - ($ - %%insn_00409a01) db 0
    %%insn_00409a06:
    push dword 0x300 ; 00409A06 6800030000
    %if ($ - %%insn_00409a06) > 5
        %error "LONG_00409A06"
    %endif
    times 5 - ($ - %%insn_00409a06) db 0
    %%insn_00409a0b:
    push dword 0x0 ; 00409A0B 6A00
    %if ($ - %%insn_00409a0b) > 2
        %error "LONG_00409A0B"
    %endif
    times 2 - ($ - %%insn_00409a0b) db 0
    %%insn_00409a0d:
    mov edx,[0x421344] ; 00409A0D 8B1544134200
    %if ($ - %%insn_00409a0d) > 6
        %error "LONG_00409A0D"
    %endif
    times 6 - ($ - %%insn_00409a0d) db 0
    %%insn_00409a13:
    push edx ; 00409A13 52
    %if ($ - %%insn_00409a13) > 1
        %error "LONG_00409A13"
    %endif
    times 1 - ($ - %%insn_00409a13) db 0
    %%insn_00409a14:
    call 0x40d470 ; 00409A14 E8573A0000
    %if ($ - %%insn_00409a14) > 5
        %error "LONG_00409A14"
    %endif
    times 5 - ($ - %%insn_00409a14) db 0
    %%insn_00409a19:
    add esp,0xc ; 00409A19 83C40C
    %if ($ - %%insn_00409a19) > 3
        %error "LONG_00409A19"
    %endif
    times 3 - ($ - %%insn_00409a19) db 0
    %%insn_00409a1c:
    call 0x40965b ; 00409A1C E83AFCFFFF
    %if ($ - %%insn_00409a1c) > 5
        %error "LONG_00409A1C"
    %endif
    times 5 - ($ - %%insn_00409a1c) db 0
    %%insn_00409a21:
    test eax,eax ; 00409A21 85C0
    %if ($ - %%insn_00409a21) > 2
        %error "LONG_00409A21"
    %endif
    times 2 - ($ - %%insn_00409a21) db 0
    %%insn_00409a23:
    jz short 0x409a3b ; 00409A23 7416
    %if ($ - %%insn_00409a23) > 2
        %error "LONG_00409A23"
    %endif
    times 2 - ($ - %%insn_00409a23) db 0
    %%insn_00409a25:
    mov ecx,0x421300 ; 00409A25 B900134200
    %if ($ - %%insn_00409a25) > 5
        %error "LONG_00409A25"
    %endif
    times 5 - ($ - %%insn_00409a25) db 0
    %%insn_00409a2a:
    call 0x4077e5 ; 00409A2A E8B6DDFFFF
    %if ($ - %%insn_00409a2a) > 5
        %error "LONG_00409A2A"
    %endif
    times 5 - ($ - %%insn_00409a2a) db 0
    %%insn_00409a2f:
    mov dword [0x41f5e4],0x1 ; 00409A2F C705E4F5410001000000
    %if ($ - %%insn_00409a2f) > 10
        %error "LONG_00409A2F"
    %endif
    times 10 - ($ - %%insn_00409a2f) db 0
    %%insn_00409a39:
    jmp short 0x409a4f ; 00409A39 EB14
    %if ($ - %%insn_00409a39) > 2
        %error "LONG_00409A39"
    %endif
    times 2 - ($ - %%insn_00409a39) db 0
    %%insn_00409a3b:
    mov ecx,0x421300 ; 00409A3B B900134200
    %if ($ - %%insn_00409a3b) > 5
        %error "LONG_00409A3B"
    %endif
    times 5 - ($ - %%insn_00409a3b) db 0
    %%insn_00409a40:
    call 0x408050 ; 00409A40 E80BE6FFFF
    %if ($ - %%insn_00409a40) > 5
        %error "LONG_00409A40"
    %endif
    times 5 - ($ - %%insn_00409a40) db 0
    %%insn_00409a45:
    mov dword [0x41f5e4],0x0 ; 00409A45 C705E4F5410000000000
    %if ($ - %%insn_00409a45) > 10
        %error "LONG_00409A45"
    %endif
    times 10 - ($ - %%insn_00409a45) db 0
    %%insn_00409a4f:
    mov ecx,0x421300 ; 00409A4F B900134200
    %if ($ - %%insn_00409a4f) > 5
        %error "LONG_00409A4F"
    %endif
    times 5 - ($ - %%insn_00409a4f) db 0
    %%insn_00409a54:
    call dword near [0x4213a0] ; 00409A54 FF15A0134200
    %if ($ - %%insn_00409a54) > 6
        %error "LONG_00409A54"
    %endif
    times 6 - ($ - %%insn_00409a54) db 0
    %%insn_00409a5a:
    call 0x4069a0 ; 00409A5A E841CFFFFF
    %if ($ - %%insn_00409a5a) > 5
        %error "LONG_00409A5A"
    %endif
    times 5 - ($ - %%insn_00409a5a) db 0
    %%insn_00409a5f:
    lea eax,[ebp-0x8] ; 00409A5F 8D45F8
    %if ($ - %%insn_00409a5f) > 3
        %error "LONG_00409A5F"
    %endif
    times 3 - ($ - %%insn_00409a5f) db 0
    %%insn_00409a62:
    push eax ; 00409A62 50
    %if ($ - %%insn_00409a62) > 1
        %error "LONG_00409A62"
    %endif
    times 1 - ($ - %%insn_00409a62) db 0
    %%insn_00409a63:
    call dword near [0x424504] ; 00409A63 FF1504454200
    %if ($ - %%insn_00409a63) > 6
        %error "LONG_00409A63"
    %endif
    times 6 - ($ - %%insn_00409a63) db 0
    %%insn_00409a69:
    mov ecx,[ebp-0x8] ; 00409A69 8B4DF8
    %if ($ - %%insn_00409a69) > 3
        %error "LONG_00409A69"
    %endif
    times 3 - ($ - %%insn_00409a69) db 0
    %%insn_00409a6c:
    mov [0x41f5d8],ecx ; 00409A6C 890DD8F54100
    %if ($ - %%insn_00409a6c) > 6
        %error "LONG_00409A6C"
    %endif
    times 6 - ($ - %%insn_00409a6c) db 0
    %%insn_00409a72:
    mov edx,[ebp-0x4] ; 00409A72 8B55FC
    %if ($ - %%insn_00409a72) > 3
        %error "LONG_00409A72"
    %endif
    times 3 - ($ - %%insn_00409a72) db 0
    %%insn_00409a75:
    mov [0x41f5dc],edx ; 00409A75 8915DCF54100
    %if ($ - %%insn_00409a75) > 6
        %error "LONG_00409A75"
    %endif
    times 6 - ($ - %%insn_00409a75) db 0
    %%insn_00409a7b:
    call initialize_miles_audio_system ; 00409A7B E882D8FFFF
    %if ($ - %%insn_00409a7b) > 5
        %error "LONG_00409A7B"
    %endif
    times 5 - ($ - %%insn_00409a7b) db 0
    %%insn_00409a80:
    mov eax,0x1 ; 00409A80 B801000000
    %if ($ - %%insn_00409a80) > 5
        %error "LONG_00409A80"
    %endif
    times 5 - ($ - %%insn_00409a80) db 0
    db 0x8B, 0xE5 ; 00409A85 8BE5 | mov esp,ebp | encoding preserved
    %%insn_00409a87:
    pop ebp ; 00409A87 5D
    %if ($ - %%insn_00409a87) > 1
        %error "LONG_00409A87"
    %endif
    times 1 - ($ - %%insn_00409a87) db 0
    %%insn_00409a88:
    ret ; 00409A88 C3
    %if ($ - %%insn_00409a88) > 1
        %error "LONG_00409A88"
    %endif
    times 1 - ($ - %%insn_00409a88) db 0
    %if ($ - %%fragment_start) != 569
        %error "function fragment size drift: 00409850"
    %endif
%endmacro
