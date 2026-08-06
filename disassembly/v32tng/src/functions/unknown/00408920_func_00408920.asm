; PE virtual entry 00408920
; Ghidra working symbol: FUN_00408920
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00408920_part_00 0
    %%fragment_start:
func_00408920:
    %%insn_00408920:
    push ebp ; 00408920 55
    %if ($ - %%insn_00408920) > 1
        %error "LONG_00408920"
    %endif
    times 1 - ($ - %%insn_00408920) db 0
    db 0x8B, 0xEC ; 00408921 8BEC | mov ebp,esp | encoding preserved
    %%insn_00408923:
    sub esp,0x414 ; 00408923 81EC14040000
    %if ($ - %%insn_00408923) > 6
        %error "LONG_00408923"
    %endif
    times 6 - ($ - %%insn_00408923) db 0
    %%insn_00408929:
    mov [ebp-0x414],ecx ; 00408929 898DECFBFFFF
    %if ($ - %%insn_00408929) > 6
        %error "LONG_00408929"
    %endif
    times 6 - ($ - %%insn_00408929) db 0
    %%insn_0040892f:
    mov eax,[ebp-0x414] ; 0040892F 8B85ECFBFFFF
    %if ($ - %%insn_0040892f) > 6
        %error "LONG_0040892F"
    %endif
    times 6 - ($ - %%insn_0040892f) db 0
    %%insn_00408935:
    cmp dword [eax+0x44],0x0 ; 00408935 83784400
    %if ($ - %%insn_00408935) > 4
        %error "LONG_00408935"
    %endif
    times 4 - ($ - %%insn_00408935) db 0
    %%insn_00408939:
    jz 0x408a3a ; 00408939 0F84FB000000
    %if ($ - %%insn_00408939) > 6
        %error "LONG_00408939"
    %endif
    times 6 - ($ - %%insn_00408939) db 0
    %%insn_0040893f:
    mov ecx,[0x41f578] ; 0040893F 8B0D78F54100
    %if ($ - %%insn_0040893f) > 6
        %error "LONG_0040893F"
    %endif
    times 6 - ($ - %%insn_0040893f) db 0
    %%insn_00408945:
    push ecx ; 00408945 51
    %if ($ - %%insn_00408945) > 1
        %error "LONG_00408945"
    %endif
    times 1 - ($ - %%insn_00408945) db 0
    %%insn_00408946:
    call dword near [0x4244ec] ; 00408946 FF15EC444200
    %if ($ - %%insn_00408946) > 6
        %error "LONG_00408946"
    %endif
    times 6 - ($ - %%insn_00408946) db 0
    %%insn_0040894c:
    mov [ebp-0x410],eax ; 0040894C 8985F0FBFFFF
    %if ($ - %%insn_0040894c) > 6
        %error "LONG_0040894C"
    %endif
    times 6 - ($ - %%insn_0040894c) db 0
    %%insn_00408952:
    mov edx,[ebp-0x410] ; 00408952 8B95F0FBFFFF
    %if ($ - %%insn_00408952) > 6
        %error "LONG_00408952"
    %endif
    times 6 - ($ - %%insn_00408952) db 0
    %%insn_00408958:
    push edx ; 00408958 52
    %if ($ - %%insn_00408958) > 1
        %error "LONG_00408958"
    %endif
    times 1 - ($ - %%insn_00408958) db 0
    %%insn_00408959:
    call dword near [0x424374] ; 00408959 FF1574434200
    %if ($ - %%insn_00408959) > 6
        %error "LONG_00408959"
    %endif
    times 6 - ($ - %%insn_00408959) db 0
    %%insn_0040895f:
    mov [ebp-0x40c],eax ; 0040895F 8985F4FBFFFF
    %if ($ - %%insn_0040895f) > 6
        %error "LONG_0040895F"
    %endif
    times 6 - ($ - %%insn_0040895f) db 0
    %%insn_00408965:
    mov eax,[0x41f58c] ; 00408965 A18CF54100
    %if ($ - %%insn_00408965) > 5
        %error "LONG_00408965"
    %endif
    times 5 - ($ - %%insn_00408965) db 0
    %%insn_0040896a:
    push eax ; 0040896A 50
    %if ($ - %%insn_0040896a) > 1
        %error "LONG_0040896A"
    %endif
    times 1 - ($ - %%insn_0040896a) db 0
    %%insn_0040896b:
    mov ecx,[ebp-0x40c] ; 0040896B 8B8DF4FBFFFF
    %if ($ - %%insn_0040896b) > 6
        %error "LONG_0040896B"
    %endif
    times 6 - ($ - %%insn_0040896b) db 0
    %%insn_00408971:
    push ecx ; 00408971 51
    %if ($ - %%insn_00408971) > 1
        %error "LONG_00408971"
    %endif
    times 1 - ($ - %%insn_00408971) db 0
    %%insn_00408972:
    call dword near [0x424370] ; 00408972 FF1570434200
    %if ($ - %%insn_00408972) > 6
        %error "LONG_00408972"
    %endif
    times 6 - ($ - %%insn_00408972) db 0
    %%insn_00408978:
    mov [ebp-0x4],eax ; 00408978 8945FC
    %if ($ - %%insn_00408978) > 3
        %error "LONG_00408978"
    %endif
    times 3 - ($ - %%insn_00408978) db 0
    %%insn_0040897b:
    mov dword [ebp-0x8],0x0 ; 0040897B C745F800000000
    %if ($ - %%insn_0040897b) > 7
        %error "LONG_0040897B"
    %endif
    times 7 - ($ - %%insn_0040897b) db 0
    %%insn_00408982:
    jmp short 0x40898d ; 00408982 EB09
    %if ($ - %%insn_00408982) > 2
        %error "LONG_00408982"
    %endif
    times 2 - ($ - %%insn_00408982) db 0
    %%insn_00408984:
    mov edx,[ebp-0x8] ; 00408984 8B55F8
    %if ($ - %%insn_00408984) > 3
        %error "LONG_00408984"
    %endif
    times 3 - ($ - %%insn_00408984) db 0
    %%insn_00408987:
    add edx,0x1 ; 00408987 83C201
    %if ($ - %%insn_00408987) > 3
        %error "LONG_00408987"
    %endif
    times 3 - ($ - %%insn_00408987) db 0
    %%insn_0040898a:
    mov [ebp-0x8],edx ; 0040898A 8955F8
    %if ($ - %%insn_0040898a) > 3
        %error "LONG_0040898A"
    %endif
    times 3 - ($ - %%insn_0040898a) db 0
    %%insn_0040898d:
    cmp dword [ebp-0x8],0x100 ; 0040898D 817DF800010000
    %if ($ - %%insn_0040898d) > 7
        %error "LONG_0040898D"
    %endif
    times 7 - ($ - %%insn_0040898d) db 0
    %%insn_00408994:
    jnl short 0x4089ee ; 00408994 7D58
    %if ($ - %%insn_00408994) > 2
        %error "LONG_00408994"
    %endif
    times 2 - ($ - %%insn_00408994) db 0
    %%insn_00408996:
    mov eax,[ebp-0x8] ; 00408996 8B45F8
    %if ($ - %%insn_00408996) > 3
        %error "LONG_00408996"
    %endif
    times 3 - ($ - %%insn_00408996) db 0
    %%insn_00408999:
    imul eax,eax,0x3 ; 00408999 6BC003
    %if ($ - %%insn_00408999) > 3
        %error "LONG_00408999"
    %endif
    times 3 - ($ - %%insn_00408999) db 0
    %%insn_0040899c:
    mov ecx,[ebp-0x414] ; 0040899C 8B8DECFBFFFF
    %if ($ - %%insn_0040899c) > 6
        %error "LONG_0040899C"
    %endif
    times 6 - ($ - %%insn_0040899c) db 0
    %%insn_004089a2:
    mov edx,[ecx+0x44] ; 004089A2 8B5144
    %if ($ - %%insn_004089a2) > 3
        %error "LONG_004089A2"
    %endif
    times 3 - ($ - %%insn_004089a2) db 0
    %%insn_004089a5:
    mov ecx,[ebp-0x8] ; 004089A5 8B4DF8
    %if ($ - %%insn_004089a5) > 3
        %error "LONG_004089A5"
    %endif
    times 3 - ($ - %%insn_004089a5) db 0
    %%insn_004089a8:
    mov dl,[edx+eax] ; 004089A8 8A1402
    %if ($ - %%insn_004089a8) > 3
        %error "LONG_004089A8"
    %endif
    times 3 - ($ - %%insn_004089a8) db 0
    %%insn_004089ab:
    mov [ebp+ecx*4-0x406],dl ; 004089AB 88948DFAFBFFFF
    %if ($ - %%insn_004089ab) > 7
        %error "LONG_004089AB"
    %endif
    times 7 - ($ - %%insn_004089ab) db 0
    %%insn_004089b2:
    mov eax,[ebp-0x8] ; 004089B2 8B45F8
    %if ($ - %%insn_004089b2) > 3
        %error "LONG_004089B2"
    %endif
    times 3 - ($ - %%insn_004089b2) db 0
    %%insn_004089b5:
    imul eax,eax,0x3 ; 004089B5 6BC003
    %if ($ - %%insn_004089b5) > 3
        %error "LONG_004089B5"
    %endif
    times 3 - ($ - %%insn_004089b5) db 0
    %%insn_004089b8:
    mov ecx,[ebp-0x414] ; 004089B8 8B8DECFBFFFF
    %if ($ - %%insn_004089b8) > 6
        %error "LONG_004089B8"
    %endif
    times 6 - ($ - %%insn_004089b8) db 0
    %%insn_004089be:
    mov edx,[ecx+0x44] ; 004089BE 8B5144
    %if ($ - %%insn_004089be) > 3
        %error "LONG_004089BE"
    %endif
    times 3 - ($ - %%insn_004089be) db 0
    %%insn_004089c1:
    mov ecx,[ebp-0x8] ; 004089C1 8B4DF8
    %if ($ - %%insn_004089c1) > 3
        %error "LONG_004089C1"
    %endif
    times 3 - ($ - %%insn_004089c1) db 0
    %%insn_004089c4:
    mov dl,[edx+eax+0x1] ; 004089C4 8A540201
    %if ($ - %%insn_004089c4) > 4
        %error "LONG_004089C4"
    %endif
    times 4 - ($ - %%insn_004089c4) db 0
    %%insn_004089c8:
    mov [ebp+ecx*4-0x407],dl ; 004089C8 88948DF9FBFFFF
    %if ($ - %%insn_004089c8) > 7
        %error "LONG_004089C8"
    %endif
    times 7 - ($ - %%insn_004089c8) db 0
    %%insn_004089cf:
    mov eax,[ebp-0x8] ; 004089CF 8B45F8
    %if ($ - %%insn_004089cf) > 3
        %error "LONG_004089CF"
    %endif
    times 3 - ($ - %%insn_004089cf) db 0
    %%insn_004089d2:
    imul eax,eax,0x3 ; 004089D2 6BC003
    %if ($ - %%insn_004089d2) > 3
        %error "LONG_004089D2"
    %endif
    times 3 - ($ - %%insn_004089d2) db 0
    %%insn_004089d5:
    mov ecx,[ebp-0x414] ; 004089D5 8B8DECFBFFFF
    %if ($ - %%insn_004089d5) > 6
        %error "LONG_004089D5"
    %endif
    times 6 - ($ - %%insn_004089d5) db 0
    %%insn_004089db:
    mov edx,[ecx+0x44] ; 004089DB 8B5144
    %if ($ - %%insn_004089db) > 3
        %error "LONG_004089DB"
    %endif
    times 3 - ($ - %%insn_004089db) db 0
    %%insn_004089de:
    mov ecx,[ebp-0x8] ; 004089DE 8B4DF8
    %if ($ - %%insn_004089de) > 3
        %error "LONG_004089DE"
    %endif
    times 3 - ($ - %%insn_004089de) db 0
    %%insn_004089e1:
    mov dl,[edx+eax+0x2] ; 004089E1 8A540202
    %if ($ - %%insn_004089e1) > 4
        %error "LONG_004089E1"
    %endif
    times 4 - ($ - %%insn_004089e1) db 0
    %%insn_004089e5:
    mov [ebp+ecx*4-0x408],dl ; 004089E5 88948DF8FBFFFF
    %if ($ - %%insn_004089e5) > 7
        %error "LONG_004089E5"
    %endif
    times 7 - ($ - %%insn_004089e5) db 0
    %%insn_004089ec:
    jmp short 0x408984 ; 004089EC EB96
    %if ($ - %%insn_004089ec) > 2
        %error "LONG_004089EC"
    %endif
    times 2 - ($ - %%insn_004089ec) db 0
    %%insn_004089ee:
    lea eax,[ebp-0x408] ; 004089EE 8D85F8FBFFFF
    %if ($ - %%insn_004089ee) > 6
        %error "LONG_004089EE"
    %endif
    times 6 - ($ - %%insn_004089ee) db 0
    %%insn_004089f4:
    push eax ; 004089F4 50
    %if ($ - %%insn_004089f4) > 1
        %error "LONG_004089F4"
    %endif
    times 1 - ($ - %%insn_004089f4) db 0
    %%insn_004089f5:
    push dword 0x100 ; 004089F5 6800010000
    %if ($ - %%insn_004089f5) > 5
        %error "LONG_004089F5"
    %endif
    times 5 - ($ - %%insn_004089f5) db 0
    %%insn_004089fa:
    push dword 0x0 ; 004089FA 6A00
    %if ($ - %%insn_004089fa) > 2
        %error "LONG_004089FA"
    %endif
    times 2 - ($ - %%insn_004089fa) db 0
    %%insn_004089fc:
    mov ecx,[ebp-0x40c] ; 004089FC 8B8DF4FBFFFF
    %if ($ - %%insn_004089fc) > 6
        %error "LONG_004089FC"
    %endif
    times 6 - ($ - %%insn_004089fc) db 0
    %%insn_00408a02:
    push ecx ; 00408A02 51
    %if ($ - %%insn_00408a02) > 1
        %error "LONG_00408A02"
    %endif
    times 1 - ($ - %%insn_00408a02) db 0
    %%insn_00408a03:
    call dword near [0x42436c] ; 00408A03 FF156C434200
    %if ($ - %%insn_00408a03) > 6
        %error "LONG_00408A03"
    %endif
    times 6 - ($ - %%insn_00408a03) db 0
    %%insn_00408a09:
    mov edx,[ebp-0x410] ; 00408A09 8B95F0FBFFFF
    %if ($ - %%insn_00408a09) > 6
        %error "LONG_00408A09"
    %endif
    times 6 - ($ - %%insn_00408a09) db 0
    %%insn_00408a0f:
    push edx ; 00408A0F 52
    %if ($ - %%insn_00408a0f) > 1
        %error "LONG_00408A0F"
    %endif
    times 1 - ($ - %%insn_00408a0f) db 0
    %%insn_00408a10:
    mov eax,[0x41f578] ; 00408A10 A178F54100
    %if ($ - %%insn_00408a10) > 5
        %error "LONG_00408A10"
    %endif
    times 5 - ($ - %%insn_00408a10) db 0
    %%insn_00408a15:
    push eax ; 00408A15 50
    %if ($ - %%insn_00408a15) > 1
        %error "LONG_00408A15"
    %endif
    times 1 - ($ - %%insn_00408a15) db 0
    %%insn_00408a16:
    call dword near [0x4244f0] ; 00408A16 FF15F0444200
    %if ($ - %%insn_00408a16) > 6
        %error "LONG_00408A16"
    %endif
    times 6 - ($ - %%insn_00408a16) db 0
    %%insn_00408a1c:
    mov ecx,[ebp-0x4] ; 00408A1C 8B4DFC
    %if ($ - %%insn_00408a1c) > 3
        %error "LONG_00408A1C"
    %endif
    times 3 - ($ - %%insn_00408a1c) db 0
    %%insn_00408a1f:
    push ecx ; 00408A1F 51
    %if ($ - %%insn_00408a1f) > 1
        %error "LONG_00408A1F"
    %endif
    times 1 - ($ - %%insn_00408a1f) db 0
    %%insn_00408a20:
    mov edx,[ebp-0x40c] ; 00408A20 8B95F4FBFFFF
    %if ($ - %%insn_00408a20) > 6
        %error "LONG_00408A20"
    %endif
    times 6 - ($ - %%insn_00408a20) db 0
    %%insn_00408a26:
    push edx ; 00408A26 52
    %if ($ - %%insn_00408a26) > 1
        %error "LONG_00408A26"
    %endif
    times 1 - ($ - %%insn_00408a26) db 0
    %%insn_00408a27:
    call dword near [0x424370] ; 00408A27 FF1570434200
    %if ($ - %%insn_00408a27) > 6
        %error "LONG_00408A27"
    %endif
    times 6 - ($ - %%insn_00408a27) db 0
    %%insn_00408a2d:
    mov eax,[ebp-0x40c] ; 00408A2D 8B85F4FBFFFF
    %if ($ - %%insn_00408a2d) > 6
        %error "LONG_00408A2D"
    %endif
    times 6 - ($ - %%insn_00408a2d) db 0
    %%insn_00408a33:
    push eax ; 00408A33 50
    %if ($ - %%insn_00408a33) > 1
        %error "LONG_00408A33"
    %endif
    times 1 - ($ - %%insn_00408a33) db 0
    %%insn_00408a34:
    call dword near [0x4243a4] ; 00408A34 FF15A4434200
    %if ($ - %%insn_00408a34) > 6
        %error "LONG_00408A34"
    %endif
    times 6 - ($ - %%insn_00408a34) db 0
    %%insn_00408a3a:
    mov ecx,[ebp-0x414] ; 00408A3A 8B8DECFBFFFF
    %if ($ - %%insn_00408a3a) > 6
        %error "LONG_00408A3A"
    %endif
    times 6 - ($ - %%insn_00408a3a) db 0
    %%insn_00408a40:
    mov dword [ecx+0x54],0x280 ; 00408A40 C7415480020000
    %if ($ - %%insn_00408a40) > 7
        %error "LONG_00408A40"
    %endif
    times 7 - ($ - %%insn_00408a40) db 0
    %%insn_00408a47:
    mov edx,[ebp-0x414] ; 00408A47 8B95ECFBFFFF
    %if ($ - %%insn_00408a47) > 6
        %error "LONG_00408A47"
    %endif
    times 6 - ($ - %%insn_00408a47) db 0
    %%insn_00408a4d:
    mov dword [edx+0x5c],0x1e0 ; 00408A4D C7425CE0010000
    %if ($ - %%insn_00408a4d) > 7
        %error "LONG_00408A4D"
    %endif
    times 7 - ($ - %%insn_00408a4d) db 0
    %%insn_00408a54:
    mov eax,[ebp-0x414] ; 00408A54 8B85ECFBFFFF
    %if ($ - %%insn_00408a54) > 6
        %error "LONG_00408A54"
    %endif
    times 6 - ($ - %%insn_00408a54) db 0
    %%insn_00408a5a:
    mov dword [eax+0x58],0x0 ; 00408A5A C7405800000000
    %if ($ - %%insn_00408a5a) > 7
        %error "LONG_00408A5A"
    %endif
    times 7 - ($ - %%insn_00408a5a) db 0
    %%insn_00408a61:
    mov ecx,[ebp-0x414] ; 00408A61 8B8DECFBFFFF
    %if ($ - %%insn_00408a61) > 6
        %error "LONG_00408A61"
    %endif
    times 6 - ($ - %%insn_00408a61) db 0
    %%insn_00408a67:
    mov dword [ecx+0x60],0x0 ; 00408A67 C7416000000000
    %if ($ - %%insn_00408a67) > 7
        %error "LONG_00408A67"
    %endif
    times 7 - ($ - %%insn_00408a67) db 0
    %%insn_00408a6e:
    mov dword [0x41f590],0x1 ; 00408A6E C70590F5410001000000
    %if ($ - %%insn_00408a6e) > 10
        %error "LONG_00408A6E"
    %endif
    times 10 - ($ - %%insn_00408a6e) db 0
    db 0x33, 0xC0 ; 00408A78 33C0 | xor eax,eax | encoding preserved
    db 0x8B, 0xE5 ; 00408A7A 8BE5 | mov esp,ebp | encoding preserved
    %%insn_00408a7c:
    pop ebp ; 00408A7C 5D
    %if ($ - %%insn_00408a7c) > 1
        %error "LONG_00408A7C"
    %endif
    times 1 - ($ - %%insn_00408a7c) db 0
    %%insn_00408a7d:
    ret ; 00408A7D C3
    %if ($ - %%insn_00408a7d) > 1
        %error "LONG_00408A7D"
    %endif
    times 1 - ($ - %%insn_00408a7d) db 0
    %if ($ - %%fragment_start) != 350
        %error "function fragment size drift: 00408920"
    %endif
%endmacro
