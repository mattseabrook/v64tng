; PE virtual entry 00412950
; Ghidra working symbol: FUN_00412950
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00412950_part_00 0
    %%fragment_start:
func_00412950:
    %%insn_00412950:
    mov ecx,[esp+0x4] ; 00412950 8B4C2404
    %if ($ - %%insn_00412950) > 4
        %error "LONG_00412950"
    %endif
    times 4 - ($ - %%insn_00412950) db 0
    %%insn_00412954:
    sub esp,0x1a8 ; 00412954 81ECA8010000
    %if ($ - %%insn_00412954) > 6
        %error "LONG_00412954"
    %endif
    times 6 - ($ - %%insn_00412954) db 0
    %%insn_0041295a:
    mov eax,0x41e318 ; 0041295A B818E34100
    %if ($ - %%insn_0041295a) > 5
        %error "LONG_0041295A"
    %endif
    times 5 - ($ - %%insn_0041295a) db 0
    %%insn_0041295f:
    push ebx ; 0041295F 53
    %if ($ - %%insn_0041295f) > 1
        %error "LONG_0041295F"
    %endif
    times 1 - ($ - %%insn_0041295f) db 0
    %%insn_00412960:
    push ebp ; 00412960 55
    %if ($ - %%insn_00412960) > 1
        %error "LONG_00412960"
    %endif
    times 1 - ($ - %%insn_00412960) db 0
    %%insn_00412961:
    push esi ; 00412961 56
    %if ($ - %%insn_00412961) > 1
        %error "LONG_00412961"
    %endif
    times 1 - ($ - %%insn_00412961) db 0
    %%insn_00412962:
    push edi ; 00412962 57
    %if ($ - %%insn_00412962) > 1
        %error "LONG_00412962"
    %endif
    times 1 - ($ - %%insn_00412962) db 0
    db 0x33, 0xED ; 00412963 33ED | xor ebp,ebp | encoding preserved
    %%insn_00412965:
    cmp ecx,[eax] ; 00412965 3B08
    %if ($ - %%insn_00412965) > 2
        %error "LONG_00412965"
    %endif
    times 2 - ($ - %%insn_00412965) db 0
    %%insn_00412967:
    jz short 0x412974 ; 00412967 740B
    %if ($ - %%insn_00412967) > 2
        %error "LONG_00412967"
    %endif
    times 2 - ($ - %%insn_00412967) db 0
    %%insn_00412969:
    add eax,0x8 ; 00412969 83C008
    %if ($ - %%insn_00412969) > 3
        %error "LONG_00412969"
    %endif
    times 3 - ($ - %%insn_00412969) db 0
    %%insn_0041296c:
    inc ebp ; 0041296C 45
    %if ($ - %%insn_0041296c) > 1
        %error "LONG_0041296C"
    %endif
    times 1 - ($ - %%insn_0041296c) db 0
    %%insn_0041296d:
    cmp eax,0x41e3a8 ; 0041296D 3DA8E34100
    %if ($ - %%insn_0041296d) > 5
        %error "LONG_0041296D"
    %endif
    times 5 - ($ - %%insn_0041296d) db 0
    %%insn_00412972:
    jc short 0x412965 ; 00412972 72F1
    %if ($ - %%insn_00412972) > 2
        %error "LONG_00412972"
    %endif
    times 2 - ($ - %%insn_00412972) db 0
    %%insn_00412974:
    cmp ecx,[ebp*8+0x41e318] ; 00412974 3B0CED18E34100
    %if ($ - %%insn_00412974) > 7
        %error "LONG_00412974"
    %endif
    times 7 - ($ - %%insn_00412974) db 0
    %%insn_0041297b:
    jnz 0x412b1b ; 0041297B 0F859A010000
    %if ($ - %%insn_0041297b) > 6
        %error "LONG_0041297B"
    %endif
    times 6 - ($ - %%insn_0041297b) db 0
    %%insn_00412981:
    mov eax,[0x420ea0] ; 00412981 A1A00E4200
    %if ($ - %%insn_00412981) > 5
        %error "LONG_00412981"
    %endif
    times 5 - ($ - %%insn_00412981) db 0
    %%insn_00412986:
    cmp eax,0x1 ; 00412986 83F801
    %if ($ - %%insn_00412986) > 3
        %error "LONG_00412986"
    %endif
    times 3 - ($ - %%insn_00412986) db 0
    %%insn_00412989:
    jz 0x412add ; 00412989 0F844E010000
    %if ($ - %%insn_00412989) > 6
        %error "LONG_00412989"
    %endif
    times 6 - ($ - %%insn_00412989) db 0
    %%insn_0041298f:
    test eax,eax ; 0041298F 85C0
    %if ($ - %%insn_0041298f) > 2
        %error "LONG_0041298F"
    %endif
    times 2 - ($ - %%insn_0041298f) db 0
    %%insn_00412991:
    jnz short 0x4129a0 ; 00412991 750D
    %if ($ - %%insn_00412991) > 2
        %error "LONG_00412991"
    %endif
    times 2 - ($ - %%insn_00412991) db 0
    %%insn_00412993:
    cmp dword [0x41bd94],0x1 ; 00412993 833D94BD410001
    %if ($ - %%insn_00412993) > 7
        %error "LONG_00412993"
    %endif
    times 7 - ($ - %%insn_00412993) db 0
    %%insn_0041299a:
    jz 0x412add ; 0041299A 0F843D010000
    %if ($ - %%insn_0041299a) > 6
        %error "LONG_0041299A"
    %endif
    times 6 - ($ - %%insn_0041299a) db 0
    %%insn_004129a0:
    cmp ecx,0xfc ; 004129A0 81F9FC000000
    %if ($ - %%insn_004129a0) > 6
        %error "LONG_004129A0"
    %endif
    times 6 - ($ - %%insn_004129a0) db 0
    %%insn_004129a6:
    jz 0x412b1b ; 004129A6 0F846F010000
    %if ($ - %%insn_004129a6) > 6
        %error "LONG_004129A6"
    %endif
    times 6 - ($ - %%insn_004129a6) db 0
    %%insn_004129ac:
    lea eax,[esp+0xb4] ; 004129AC 8D8424B4000000
    %if ($ - %%insn_004129ac) > 7
        %error "LONG_004129AC"
    %endif
    times 7 - ($ - %%insn_004129ac) db 0
    %%insn_004129b3:
    push dword 0x104 ; 004129B3 6804010000
    %if ($ - %%insn_004129b3) > 5
        %error "LONG_004129B3"
    %endif
    times 5 - ($ - %%insn_004129b3) db 0
    %%insn_004129b8:
    push eax ; 004129B8 50
    %if ($ - %%insn_004129b8) > 1
        %error "LONG_004129B8"
    %endif
    times 1 - ($ - %%insn_004129b8) db 0
    %%insn_004129b9:
    push dword 0x0 ; 004129B9 6A00
    %if ($ - %%insn_004129b9) > 2
        %error "LONG_004129B9"
    %endif
    times 2 - ($ - %%insn_004129b9) db 0
    %%insn_004129bb:
    call dword near [0x4243b8] ; 004129BB FF15B8434200
    %if ($ - %%insn_004129bb) > 6
        %error "LONG_004129BB"
    %endif
    times 6 - ($ - %%insn_004129bb) db 0
    %%insn_004129c1:
    test eax,eax ; 004129C1 85C0
    %if ($ - %%insn_004129c1) > 2
        %error "LONG_004129C1"
    %endif
    times 2 - ($ - %%insn_004129c1) db 0
    %%insn_004129c3:
    jnz short 0x4129db ; 004129C3 7516
    %if ($ - %%insn_004129c3) > 2
        %error "LONG_004129C3"
    %endif
    times 2 - ($ - %%insn_004129c3) db 0
    %%insn_004129c5:
    mov ecx,0x5 ; 004129C5 B905000000
    %if ($ - %%insn_004129c5) > 5
        %error "LONG_004129C5"
    %endif
    times 5 - ($ - %%insn_004129c5) db 0
    %%insn_004129ca:
    mov esi,0x41a520 ; 004129CA BE20A54100
    %if ($ - %%insn_004129ca) > 5
        %error "LONG_004129CA"
    %endif
    times 5 - ($ - %%insn_004129ca) db 0
    %%insn_004129cf:
    lea edi,[esp+0xb4] ; 004129CF 8DBC24B4000000
    %if ($ - %%insn_004129cf) > 7
        %error "LONG_004129CF"
    %endif
    times 7 - ($ - %%insn_004129cf) db 0
    %%insn_004129d6:
    rep movsd ; 004129D6 F3A5
    %if ($ - %%insn_004129d6) > 2
        %error "LONG_004129D6"
    %endif
    times 2 - ($ - %%insn_004129d6) db 0
    %%insn_004129d8:
    movsw ; 004129D8 66A5
    %if ($ - %%insn_004129d8) > 2
        %error "LONG_004129D8"
    %endif
    times 2 - ($ - %%insn_004129d8) db 0
    %%insn_004129da:
    movsb ; 004129DA A4
    %if ($ - %%insn_004129da) > 1
        %error "LONG_004129DA"
    %endif
    times 1 - ($ - %%insn_004129da) db 0
    %%insn_004129db:
    lea edi,[esp+0xb4] ; 004129DB 8DBC24B4000000
    %if ($ - %%insn_004129db) > 7
        %error "LONG_004129DB"
    %endif
    times 7 - ($ - %%insn_004129db) db 0
    %%insn_004129e2:
    or ecx,0xffffffffffffffff ; 004129E2 83C9FF
    %if ($ - %%insn_004129e2) > 3
        %error "LONG_004129E2"
    %endif
    times 3 - ($ - %%insn_004129e2) db 0
    db 0x33, 0xC0 ; 004129E5 33C0 | xor eax,eax | encoding preserved
    %%insn_004129e7:
    lea ebx,[esp+0xb4] ; 004129E7 8D9C24B4000000
    %if ($ - %%insn_004129e7) > 7
        %error "LONG_004129E7"
    %endif
    times 7 - ($ - %%insn_004129e7) db 0
    %%insn_004129ee:
    repne scasb ; 004129EE F2AE
    %if ($ - %%insn_004129ee) > 2
        %error "LONG_004129EE"
    %endif
    times 2 - ($ - %%insn_004129ee) db 0
    %%insn_004129f0:
    not ecx ; 004129F0 F7D1
    %if ($ - %%insn_004129f0) > 2
        %error "LONG_004129F0"
    %endif
    times 2 - ($ - %%insn_004129f0) db 0
    %%insn_004129f2:
    cmp ecx,0x3c ; 004129F2 83F93C
    %if ($ - %%insn_004129f2) > 3
        %error "LONG_004129F2"
    %endif
    times 3 - ($ - %%insn_004129f2) db 0
    %%insn_004129f5:
    jna short 0x412a24 ; 004129F5 762D
    %if ($ - %%insn_004129f5) > 2
        %error "LONG_004129F5"
    %endif
    times 2 - ($ - %%insn_004129f5) db 0
    %%insn_004129f7:
    lea edi,[esp+0xb4] ; 004129F7 8DBC24B4000000
    %if ($ - %%insn_004129f7) > 7
        %error "LONG_004129F7"
    %endif
    times 7 - ($ - %%insn_004129f7) db 0
    %%insn_004129fe:
    or ecx,0xffffffffffffffff ; 004129FE 83C9FF
    %if ($ - %%insn_004129fe) > 3
        %error "LONG_004129FE"
    %endif
    times 3 - ($ - %%insn_004129fe) db 0
    %%insn_00412a01:
    repne scasb ; 00412A01 F2AE
    %if ($ - %%insn_00412a01) > 2
        %error "LONG_00412A01"
    %endif
    times 2 - ($ - %%insn_00412a01) db 0
    %%insn_00412a03:
    not ecx ; 00412A03 F7D1
    %if ($ - %%insn_00412a03) > 2
        %error "LONG_00412A03"
    %endif
    times 2 - ($ - %%insn_00412a03) db 0
    %%insn_00412a05:
    dec ecx ; 00412A05 49
    %if ($ - %%insn_00412a05) > 1
        %error "LONG_00412A05"
    %endif
    times 1 - ($ - %%insn_00412a05) db 0
    %%insn_00412a06:
    push dword 0x3 ; 00412A06 6A03
    %if ($ - %%insn_00412a06) > 2
        %error "LONG_00412A06"
    %endif
    times 2 - ($ - %%insn_00412a06) db 0
    db 0x8B, 0xD9 ; 00412A08 8BD9 | mov ebx,ecx | encoding preserved
    %%insn_00412a0a:
    lea ecx,[esp+0xb8] ; 00412A0A 8D8C24B8000000
    %if ($ - %%insn_00412a0a) > 7
        %error "LONG_00412A0A"
    %endif
    times 7 - ($ - %%insn_00412a0a) db 0
    %%insn_00412a11:
    sub ecx,0x3b ; 00412A11 83E93B
    %if ($ - %%insn_00412a11) > 3
        %error "LONG_00412A11"
    %endif
    times 3 - ($ - %%insn_00412a11) db 0
    %%insn_00412a14:
    push dword 0x41a51c ; 00412A14 681CA54100
    %if ($ - %%insn_00412a14) > 5
        %error "LONG_00412A14"
    %endif
    times 5 - ($ - %%insn_00412a14) db 0
    db 0x03, 0xD9 ; 00412A19 03D9 | add ebx,ecx | encoding preserved
    %%insn_00412a1b:
    push ebx ; 00412A1B 53
    %if ($ - %%insn_00412a1b) > 1
        %error "LONG_00412A1B"
    %endif
    times 1 - ($ - %%insn_00412a1b) db 0
    %%insn_00412a1c:
    call 0x414280 ; 00412A1C E85F180000
    %if ($ - %%insn_00412a1c) > 5
        %error "LONG_00412A1C"
    %endif
    times 5 - ($ - %%insn_00412a1c) db 0
    %%insn_00412a21:
    add esp,0xc ; 00412A21 83C40C
    %if ($ - %%insn_00412a21) > 3
        %error "LONG_00412A21"
    %endif
    times 3 - ($ - %%insn_00412a21) db 0
    %%insn_00412a24:
    mov ecx,0x6 ; 00412A24 B906000000
    %if ($ - %%insn_00412a24) > 5
        %error "LONG_00412A24"
    %endif
    times 5 - ($ - %%insn_00412a24) db 0
    %%insn_00412a29:
    mov esi,0x41a500 ; 00412A29 BE00A54100
    %if ($ - %%insn_00412a29) > 5
        %error "LONG_00412A29"
    %endif
    times 5 - ($ - %%insn_00412a29) db 0
    %%insn_00412a2e:
    lea edi,[esp+0x14] ; 00412A2E 8D7C2414
    %if ($ - %%insn_00412a2e) > 4
        %error "LONG_00412A2E"
    %endif
    times 4 - ($ - %%insn_00412a2e) db 0
    db 0x33, 0xC0 ; 00412A32 33C0 | xor eax,eax | encoding preserved
    %%insn_00412a34:
    rep movsd ; 00412A34 F3A5
    %if ($ - %%insn_00412a34) > 2
        %error "LONG_00412A34"
    %endif
    times 2 - ($ - %%insn_00412a34) db 0
    %%insn_00412a36:
    movsw ; 00412A36 66A5
    %if ($ - %%insn_00412a36) > 2
        %error "LONG_00412A36"
    %endif
    times 2 - ($ - %%insn_00412a36) db 0
    %%insn_00412a38:
    or ecx,0xffffffffffffffff ; 00412A38 83C9FF
    %if ($ - %%insn_00412a38) > 3
        %error "LONG_00412A38"
    %endif
    times 3 - ($ - %%insn_00412a38) db 0
    db 0x8B, 0xFB ; 00412A3B 8BFB | mov edi,ebx | encoding preserved
    %%insn_00412a3d:
    repne scasb ; 00412A3D F2AE
    %if ($ - %%insn_00412a3d) > 2
        %error "LONG_00412A3D"
    %endif
    times 2 - ($ - %%insn_00412a3d) db 0
    %%insn_00412a3f:
    not ecx ; 00412A3F F7D1
    %if ($ - %%insn_00412a3f) > 2
        %error "LONG_00412A3F"
    %endif
    times 2 - ($ - %%insn_00412a3f) db 0
    db 0x2B, 0xF9 ; 00412A41 2BF9 | sub edi,ecx | encoding preserved
    %%insn_00412a43:
    lea edx,[esp+0x14] ; 00412A43 8D542414
    %if ($ - %%insn_00412a43) > 4
        %error "LONG_00412A43"
    %endif
    times 4 - ($ - %%insn_00412a43) db 0
    db 0x8B, 0xD9 ; 00412A47 8BD9 | mov ebx,ecx | encoding preserved
    db 0x8B, 0xF7 ; 00412A49 8BF7 | mov esi,edi | encoding preserved
    %%insn_00412a4b:
    or ecx,0xffffffffffffffff ; 00412A4B 83C9FF
    %if ($ - %%insn_00412a4b) > 3
        %error "LONG_00412A4B"
    %endif
    times 3 - ($ - %%insn_00412a4b) db 0
    db 0x8B, 0xFA ; 00412A4E 8BFA | mov edi,edx | encoding preserved
    %%insn_00412a50:
    repne scasb ; 00412A50 F2AE
    %if ($ - %%insn_00412a50) > 2
        %error "LONG_00412A50"
    %endif
    times 2 - ($ - %%insn_00412a50) db 0
    db 0x8B, 0xCB ; 00412A52 8BCB | mov ecx,ebx | encoding preserved
    %%insn_00412a54:
    dec edi ; 00412A54 4F
    %if ($ - %%insn_00412a54) > 1
        %error "LONG_00412A54"
    %endif
    times 1 - ($ - %%insn_00412a54) db 0
    %%insn_00412a55:
    shr ecx,byte 0x2 ; 00412A55 C1E902
    %if ($ - %%insn_00412a55) > 3
        %error "LONG_00412A55"
    %endif
    times 3 - ($ - %%insn_00412a55) db 0
    %%insn_00412a58:
    rep movsd ; 00412A58 F3A5
    %if ($ - %%insn_00412a58) > 2
        %error "LONG_00412A58"
    %endif
    times 2 - ($ - %%insn_00412a58) db 0
    db 0x8B, 0xCB ; 00412A5A 8BCB | mov ecx,ebx | encoding preserved
    %%insn_00412a5c:
    lea edx,[esp+0x14] ; 00412A5C 8D542414
    %if ($ - %%insn_00412a5c) > 4
        %error "LONG_00412A5C"
    %endif
    times 4 - ($ - %%insn_00412a5c) db 0
    %%insn_00412a60:
    and ecx,0x3 ; 00412A60 83E103
    %if ($ - %%insn_00412a60) > 3
        %error "LONG_00412A60"
    %endif
    times 3 - ($ - %%insn_00412a60) db 0
    %%insn_00412a63:
    push dword 0x12010 ; 00412A63 6810200100
    %if ($ - %%insn_00412a63) > 5
        %error "LONG_00412A63"
    %endif
    times 5 - ($ - %%insn_00412a63) db 0
    %%insn_00412a68:
    rep movsb ; 00412A68 F3A4
    %if ($ - %%insn_00412a68) > 2
        %error "LONG_00412A68"
    %endif
    times 2 - ($ - %%insn_00412a68) db 0
    %%insn_00412a6a:
    mov edi,0x41a4fc ; 00412A6A BFFCA44100
    %if ($ - %%insn_00412a6a) > 5
        %error "LONG_00412A6A"
    %endif
    times 5 - ($ - %%insn_00412a6a) db 0
    %%insn_00412a6f:
    or ecx,0xffffffffffffffff ; 00412A6F 83C9FF
    %if ($ - %%insn_00412a6f) > 3
        %error "LONG_00412A6F"
    %endif
    times 3 - ($ - %%insn_00412a6f) db 0
    %%insn_00412a72:
    repne scasb ; 00412A72 F2AE
    %if ($ - %%insn_00412a72) > 2
        %error "LONG_00412A72"
    %endif
    times 2 - ($ - %%insn_00412a72) db 0
    %%insn_00412a74:
    not ecx ; 00412A74 F7D1
    %if ($ - %%insn_00412a74) > 2
        %error "LONG_00412A74"
    %endif
    times 2 - ($ - %%insn_00412a74) db 0
    db 0x2B, 0xF9 ; 00412A76 2BF9 | sub edi,ecx | encoding preserved
    %%insn_00412a78:
    push dword 0x41a4d4 ; 00412A78 68D4A44100
    %if ($ - %%insn_00412a78) > 5
        %error "LONG_00412A78"
    %endif
    times 5 - ($ - %%insn_00412a78) db 0
    db 0x8B, 0xF7 ; 00412A7D 8BF7 | mov esi,edi | encoding preserved
    db 0x8B, 0xD9 ; 00412A7F 8BD9 | mov ebx,ecx | encoding preserved
    db 0x8B, 0xFA ; 00412A81 8BFA | mov edi,edx | encoding preserved
    %%insn_00412a83:
    or ecx,0xffffffffffffffff ; 00412A83 83C9FF
    %if ($ - %%insn_00412a83) > 3
        %error "LONG_00412A83"
    %endif
    times 3 - ($ - %%insn_00412a83) db 0
    %%insn_00412a86:
    repne scasb ; 00412A86 F2AE
    %if ($ - %%insn_00412a86) > 2
        %error "LONG_00412A86"
    %endif
    times 2 - ($ - %%insn_00412a86) db 0
    db 0x8B, 0xCB ; 00412A88 8BCB | mov ecx,ebx | encoding preserved
    %%insn_00412a8a:
    dec edi ; 00412A8A 4F
    %if ($ - %%insn_00412a8a) > 1
        %error "LONG_00412A8A"
    %endif
    times 1 - ($ - %%insn_00412a8a) db 0
    %%insn_00412a8b:
    shr ecx,byte 0x2 ; 00412A8B C1E902
    %if ($ - %%insn_00412a8b) > 3
        %error "LONG_00412A8B"
    %endif
    times 3 - ($ - %%insn_00412a8b) db 0
    %%insn_00412a8e:
    rep movsd ; 00412A8E F3A5
    %if ($ - %%insn_00412a8e) > 2
        %error "LONG_00412A8E"
    %endif
    times 2 - ($ - %%insn_00412a8e) db 0
    db 0x8B, 0xCB ; 00412A90 8BCB | mov ecx,ebx | encoding preserved
    %%insn_00412a92:
    lea edx,[esp+0x1c] ; 00412A92 8D54241C
    %if ($ - %%insn_00412a92) > 4
        %error "LONG_00412A92"
    %endif
    times 4 - ($ - %%insn_00412a92) db 0
    %%insn_00412a96:
    and ecx,0x3 ; 00412A96 83E103
    %if ($ - %%insn_00412a96) > 3
        %error "LONG_00412A96"
    %endif
    times 3 - ($ - %%insn_00412a96) db 0
    %%insn_00412a99:
    rep movsb ; 00412A99 F3A4
    %if ($ - %%insn_00412a99) > 2
        %error "LONG_00412A99"
    %endif
    times 2 - ($ - %%insn_00412a99) db 0
    %%insn_00412a9b:
    mov edi,[ebp*8+0x41e31c] ; 00412A9B 8B3CED1CE34100
    %if ($ - %%insn_00412a9b) > 7
        %error "LONG_00412A9B"
    %endif
    times 7 - ($ - %%insn_00412a9b) db 0
    %%insn_00412aa2:
    or ecx,0xffffffffffffffff ; 00412AA2 83C9FF
    %if ($ - %%insn_00412aa2) > 3
        %error "LONG_00412AA2"
    %endif
    times 3 - ($ - %%insn_00412aa2) db 0
    %%insn_00412aa5:
    repne scasb ; 00412AA5 F2AE
    %if ($ - %%insn_00412aa5) > 2
        %error "LONG_00412AA5"
    %endif
    times 2 - ($ - %%insn_00412aa5) db 0
    %%insn_00412aa7:
    not ecx ; 00412AA7 F7D1
    %if ($ - %%insn_00412aa7) > 2
        %error "LONG_00412AA7"
    %endif
    times 2 - ($ - %%insn_00412aa7) db 0
    db 0x2B, 0xF9 ; 00412AA9 2BF9 | sub edi,ecx | encoding preserved
    db 0x8B, 0xF7 ; 00412AAB 8BF7 | mov esi,edi | encoding preserved
    db 0x8B, 0xD9 ; 00412AAD 8BD9 | mov ebx,ecx | encoding preserved
    db 0x8B, 0xFA ; 00412AAF 8BFA | mov edi,edx | encoding preserved
    %%insn_00412ab1:
    or ecx,0xffffffffffffffff ; 00412AB1 83C9FF
    %if ($ - %%insn_00412ab1) > 3
        %error "LONG_00412AB1"
    %endif
    times 3 - ($ - %%insn_00412ab1) db 0
    %%insn_00412ab4:
    repne scasb ; 00412AB4 F2AE
    %if ($ - %%insn_00412ab4) > 2
        %error "LONG_00412AB4"
    %endif
    times 2 - ($ - %%insn_00412ab4) db 0
    db 0x8B, 0xCB ; 00412AB6 8BCB | mov ecx,ebx | encoding preserved
    %%insn_00412ab8:
    dec edi ; 00412AB8 4F
    %if ($ - %%insn_00412ab8) > 1
        %error "LONG_00412AB8"
    %endif
    times 1 - ($ - %%insn_00412ab8) db 0
    %%insn_00412ab9:
    shr ecx,byte 0x2 ; 00412AB9 C1E902
    %if ($ - %%insn_00412ab9) > 3
        %error "LONG_00412AB9"
    %endif
    times 3 - ($ - %%insn_00412ab9) db 0
    %%insn_00412abc:
    rep movsd ; 00412ABC F3A5
    %if ($ - %%insn_00412abc) > 2
        %error "LONG_00412ABC"
    %endif
    times 2 - ($ - %%insn_00412abc) db 0
    db 0x8B, 0xCB ; 00412ABE 8BCB | mov ecx,ebx | encoding preserved
    %%insn_00412ac0:
    lea eax,[esp+0x1c] ; 00412AC0 8D44241C
    %if ($ - %%insn_00412ac0) > 4
        %error "LONG_00412AC0"
    %endif
    times 4 - ($ - %%insn_00412ac0) db 0
    %%insn_00412ac4:
    and ecx,0x3 ; 00412AC4 83E103
    %if ($ - %%insn_00412ac4) > 3
        %error "LONG_00412AC4"
    %endif
    times 3 - ($ - %%insn_00412ac4) db 0
    %%insn_00412ac7:
    push eax ; 00412AC7 50
    %if ($ - %%insn_00412ac7) > 1
        %error "LONG_00412AC7"
    %endif
    times 1 - ($ - %%insn_00412ac7) db 0
    %%insn_00412ac8:
    rep movsb ; 00412AC8 F3A4
    %if ($ - %%insn_00412ac8) > 2
        %error "LONG_00412AC8"
    %endif
    times 2 - ($ - %%insn_00412ac8) db 0
    %%insn_00412aca:
    call 0x415600 ; 00412ACA E8312B0000
    %if ($ - %%insn_00412aca) > 5
        %error "LONG_00412ACA"
    %endif
    times 5 - ($ - %%insn_00412aca) db 0
    %%insn_00412acf:
    add esp,0xc ; 00412ACF 83C40C
    %if ($ - %%insn_00412acf) > 3
        %error "LONG_00412ACF"
    %endif
    times 3 - ($ - %%insn_00412acf) db 0
    %%insn_00412ad2:
    pop edi ; 00412AD2 5F
    %if ($ - %%insn_00412ad2) > 1
        %error "LONG_00412AD2"
    %endif
    times 1 - ($ - %%insn_00412ad2) db 0
    %%insn_00412ad3:
    pop esi ; 00412AD3 5E
    %if ($ - %%insn_00412ad3) > 1
        %error "LONG_00412AD3"
    %endif
    times 1 - ($ - %%insn_00412ad3) db 0
    %%insn_00412ad4:
    pop ebp ; 00412AD4 5D
    %if ($ - %%insn_00412ad4) > 1
        %error "LONG_00412AD4"
    %endif
    times 1 - ($ - %%insn_00412ad4) db 0
    %%insn_00412ad5:
    pop ebx ; 00412AD5 5B
    %if ($ - %%insn_00412ad5) > 1
        %error "LONG_00412AD5"
    %endif
    times 1 - ($ - %%insn_00412ad5) db 0
    %%insn_00412ad6:
    add esp,0x1a8 ; 00412AD6 81C4A8010000
    %if ($ - %%insn_00412ad6) > 6
        %error "LONG_00412AD6"
    %endif
    times 6 - ($ - %%insn_00412ad6) db 0
    %%insn_00412adc:
    ret ; 00412ADC C3
    %if ($ - %%insn_00412adc) > 1
        %error "LONG_00412ADC"
    %endif
    times 1 - ($ - %%insn_00412adc) db 0
    %%insn_00412add:
    mov eax,[0x423480] ; 00412ADD A180344200
    %if ($ - %%insn_00412add) > 5
        %error "LONG_00412ADD"
    %endif
    times 5 - ($ - %%insn_00412add) db 0
    %%insn_00412ae2:
    test eax,eax ; 00412AE2 85C0
    %if ($ - %%insn_00412ae2) > 2
        %error "LONG_00412AE2"
    %endif
    times 2 - ($ - %%insn_00412ae2) db 0
    %%insn_00412ae4:
    jz short 0x412aee ; 00412AE4 7408
    %if ($ - %%insn_00412ae4) > 2
        %error "LONG_00412AE4"
    %endif
    times 2 - ($ - %%insn_00412ae4) db 0
    %%insn_00412ae6:
    mov esi,[eax+0x48] ; 00412AE6 8B7048
    %if ($ - %%insn_00412ae6) > 3
        %error "LONG_00412AE6"
    %endif
    times 3 - ($ - %%insn_00412ae6) db 0
    %%insn_00412ae9:
    cmp esi,0xffffffffffffffff ; 00412AE9 83FEFF
    %if ($ - %%insn_00412ae9) > 3
        %error "LONG_00412AE9"
    %endif
    times 3 - ($ - %%insn_00412ae9) db 0
    %%insn_00412aec:
    jnz short 0x412af8 ; 00412AEC 750A
    %if ($ - %%insn_00412aec) > 2
        %error "LONG_00412AEC"
    %endif
    times 2 - ($ - %%insn_00412aec) db 0
    %%insn_00412aee:
    push dword 0xfffffffffffffff4 ; 00412AEE 6AF4
    %if ($ - %%insn_00412aee) > 2
        %error "LONG_00412AEE"
    %endif
    times 2 - ($ - %%insn_00412aee) db 0
    %%insn_00412af0:
    call dword near [0x424458] ; 00412AF0 FF1558444200
    %if ($ - %%insn_00412af0) > 6
        %error "LONG_00412AF0"
    %endif
    times 6 - ($ - %%insn_00412af0) db 0
    db 0x8B, 0xF0 ; 00412AF6 8BF0 | mov esi,eax | encoding preserved
    %%insn_00412af8:
    mov edx,[ebp*8+0x41e31c] ; 00412AF8 8B14ED1CE34100
    %if ($ - %%insn_00412af8) > 7
        %error "LONG_00412AF8"
    %endif
    times 7 - ($ - %%insn_00412af8) db 0
    %%insn_00412aff:
    lea ecx,[esp+0x10] ; 00412AFF 8D4C2410
    %if ($ - %%insn_00412aff) > 4
        %error "LONG_00412AFF"
    %endif
    times 4 - ($ - %%insn_00412aff) db 0
    %%insn_00412b03:
    push dword 0x0 ; 00412B03 6A00
    %if ($ - %%insn_00412b03) > 2
        %error "LONG_00412B03"
    %endif
    times 2 - ($ - %%insn_00412b03) db 0
    %%insn_00412b05:
    push ecx ; 00412B05 51
    %if ($ - %%insn_00412b05) > 1
        %error "LONG_00412B05"
    %endif
    times 1 - ($ - %%insn_00412b05) db 0
    db 0x8B, 0xFA ; 00412B06 8BFA | mov edi,edx | encoding preserved
    %%insn_00412b08:
    or ecx,0xffffffffffffffff ; 00412B08 83C9FF
    %if ($ - %%insn_00412b08) > 3
        %error "LONG_00412B08"
    %endif
    times 3 - ($ - %%insn_00412b08) db 0
    db 0x33, 0xC0 ; 00412B0B 33C0 | xor eax,eax | encoding preserved
    %%insn_00412b0d:
    repne scasb ; 00412B0D F2AE
    %if ($ - %%insn_00412b0d) > 2
        %error "LONG_00412B0D"
    %endif
    times 2 - ($ - %%insn_00412b0d) db 0
    %%insn_00412b0f:
    not ecx ; 00412B0F F7D1
    %if ($ - %%insn_00412b0f) > 2
        %error "LONG_00412B0F"
    %endif
    times 2 - ($ - %%insn_00412b0f) db 0
    %%insn_00412b11:
    dec ecx ; 00412B11 49
    %if ($ - %%insn_00412b11) > 1
        %error "LONG_00412B11"
    %endif
    times 1 - ($ - %%insn_00412b11) db 0
    %%insn_00412b12:
    push ecx ; 00412B12 51
    %if ($ - %%insn_00412b12) > 1
        %error "LONG_00412B12"
    %endif
    times 1 - ($ - %%insn_00412b12) db 0
    %%insn_00412b13:
    push edx ; 00412B13 52
    %if ($ - %%insn_00412b13) > 1
        %error "LONG_00412B13"
    %endif
    times 1 - ($ - %%insn_00412b13) db 0
    %%insn_00412b14:
    push esi ; 00412B14 56
    %if ($ - %%insn_00412b14) > 1
        %error "LONG_00412B14"
    %endif
    times 1 - ($ - %%insn_00412b14) db 0
    %%insn_00412b15:
    call dword near [0x4243e8] ; 00412B15 FF15E8434200
    %if ($ - %%insn_00412b15) > 6
        %error "LONG_00412B15"
    %endif
    times 6 - ($ - %%insn_00412b15) db 0
    %%insn_00412b1b:
    pop edi ; 00412B1B 5F
    %if ($ - %%insn_00412b1b) > 1
        %error "LONG_00412B1B"
    %endif
    times 1 - ($ - %%insn_00412b1b) db 0
    %%insn_00412b1c:
    pop esi ; 00412B1C 5E
    %if ($ - %%insn_00412b1c) > 1
        %error "LONG_00412B1C"
    %endif
    times 1 - ($ - %%insn_00412b1c) db 0
    %%insn_00412b1d:
    pop ebp ; 00412B1D 5D
    %if ($ - %%insn_00412b1d) > 1
        %error "LONG_00412B1D"
    %endif
    times 1 - ($ - %%insn_00412b1d) db 0
    %%insn_00412b1e:
    pop ebx ; 00412B1E 5B
    %if ($ - %%insn_00412b1e) > 1
        %error "LONG_00412B1E"
    %endif
    times 1 - ($ - %%insn_00412b1e) db 0
    %%insn_00412b1f:
    add esp,0x1a8 ; 00412B1F 81C4A8010000
    %if ($ - %%insn_00412b1f) > 6
        %error "LONG_00412B1F"
    %endif
    times 6 - ($ - %%insn_00412b1f) db 0
    %%insn_00412b25:
    ret ; 00412B25 C3
    %if ($ - %%insn_00412b25) > 1
        %error "LONG_00412B25"
    %endif
    times 1 - ($ - %%insn_00412b25) db 0
    %if ($ - %%fragment_start) != 470
        %error "function fragment size drift: 00412950"
    %endif
%endmacro
