; PE virtual entry 0040DBF0
; Ghidra working symbol: entry
; Verified PE AddressOfEntryPoint.
; Generated losslessly; preserve byte identity after edits.

%macro emit_pe_entry_part_00 0
    %%fragment_start:
pe_entry:
    %%insn_0040dbf0:
    push ebp ; 0040DBF0 55
    %if ($ - %%insn_0040dbf0) > 1
        %error "LONG_0040DBF0"
    %endif
    times 1 - ($ - %%insn_0040dbf0) db 0
    db 0x8B, 0xEC ; 0040DBF1 8BEC | mov ebp,esp | encoding preserved
    %%insn_0040dbf3:
    push dword 0xffffffffffffffff ; 0040DBF3 6AFF
    %if ($ - %%insn_0040dbf3) > 2
        %error "LONG_0040DBF3"
    %endif
    times 2 - ($ - %%insn_0040dbf3) db 0
    %%insn_0040dbf5:
    push dword 0x41a148 ; 0040DBF5 6848A14100
    %if ($ - %%insn_0040dbf5) > 5
        %error "LONG_0040DBF5"
    %endif
    times 5 - ($ - %%insn_0040dbf5) db 0
    %%insn_0040dbfa:
    push dword 0x40db10 ; 0040DBFA 6810DB4000
    %if ($ - %%insn_0040dbfa) > 5
        %error "LONG_0040DBFA"
    %endif
    times 5 - ($ - %%insn_0040dbfa) db 0
    %%insn_0040dbff:
    mov eax,[fs:0x0] ; 0040DBFF 64A100000000
    %if ($ - %%insn_0040dbff) > 6
        %error "LONG_0040DBFF"
    %endif
    times 6 - ($ - %%insn_0040dbff) db 0
    %%insn_0040dc05:
    push eax ; 0040DC05 50
    %if ($ - %%insn_0040dc05) > 1
        %error "LONG_0040DC05"
    %endif
    times 1 - ($ - %%insn_0040dc05) db 0
    %%insn_0040dc06:
    mov [fs:0x0],esp ; 0040DC06 64892500000000
    %if ($ - %%insn_0040dc06) > 7
        %error "LONG_0040DC06"
    %endif
    times 7 - ($ - %%insn_0040dc06) db 0
    %%insn_0040dc0d:
    add esp,0xffffffffffffffa8 ; 0040DC0D 83C4A8
    %if ($ - %%insn_0040dc0d) > 3
        %error "LONG_0040DC0D"
    %endif
    times 3 - ($ - %%insn_0040dc0d) db 0
    %%insn_0040dc10:
    push ebx ; 0040DC10 53
    %if ($ - %%insn_0040dc10) > 1
        %error "LONG_0040DC10"
    %endif
    times 1 - ($ - %%insn_0040dc10) db 0
    %%insn_0040dc11:
    push esi ; 0040DC11 56
    %if ($ - %%insn_0040dc11) > 1
        %error "LONG_0040DC11"
    %endif
    times 1 - ($ - %%insn_0040dc11) db 0
    %%insn_0040dc12:
    push edi ; 0040DC12 57
    %if ($ - %%insn_0040dc12) > 1
        %error "LONG_0040DC12"
    %endif
    times 1 - ($ - %%insn_0040dc12) db 0
    %%insn_0040dc13:
    mov [ebp-0x18],esp ; 0040DC13 8965E8
    %if ($ - %%insn_0040dc13) > 3
        %error "LONG_0040DC13"
    %endif
    times 3 - ($ - %%insn_0040dc13) db 0
    %%insn_0040dc16:
    call dword near [0x424410] ; 0040DC16 FF1510444200
    %if ($ - %%insn_0040dc16) > 6
        %error "LONG_0040DC16"
    %endif
    times 6 - ($ - %%insn_0040dc16) db 0
    db 0x33, 0xD2 ; 0040DC1C 33D2 | xor edx,edx | encoding preserved
    db 0x8A, 0xD4 ; 0040DC1E 8AD4 | mov dl,ah | encoding preserved
    %%insn_0040dc20:
    mov [0x420e64],edx ; 0040DC20 8915640E4200
    %if ($ - %%insn_0040dc20) > 6
        %error "LONG_0040DC20"
    %endif
    times 6 - ($ - %%insn_0040dc20) db 0
    db 0x8B, 0xC8 ; 0040DC26 8BC8 | mov ecx,eax | encoding preserved
    %%insn_0040dc28:
    and ecx,0xff ; 0040DC28 81E1FF000000
    %if ($ - %%insn_0040dc28) > 6
        %error "LONG_0040DC28"
    %endif
    times 6 - ($ - %%insn_0040dc28) db 0
    %%insn_0040dc2e:
    mov [0x420e60],ecx ; 0040DC2E 890D600E4200
    %if ($ - %%insn_0040dc2e) > 6
        %error "LONG_0040DC2E"
    %endif
    times 6 - ($ - %%insn_0040dc2e) db 0
    %%insn_0040dc34:
    shl ecx,byte 0x8 ; 0040DC34 C1E108
    %if ($ - %%insn_0040dc34) > 3
        %error "LONG_0040DC34"
    %endif
    times 3 - ($ - %%insn_0040dc34) db 0
    db 0x03, 0xCA ; 0040DC37 03CA | add ecx,edx | encoding preserved
    %%insn_0040dc39:
    mov [0x420e5c],ecx ; 0040DC39 890D5C0E4200
    %if ($ - %%insn_0040dc39) > 6
        %error "LONG_0040DC39"
    %endif
    times 6 - ($ - %%insn_0040dc39) db 0
    %%insn_0040dc3f:
    shr eax,byte 0x10 ; 0040DC3F C1E810
    %if ($ - %%insn_0040dc3f) > 3
        %error "LONG_0040DC3F"
    %endif
    times 3 - ($ - %%insn_0040dc3f) db 0
    %%insn_0040dc42:
    mov [0x420e58],eax ; 0040DC42 A3580E4200
    %if ($ - %%insn_0040dc42) > 5
        %error "LONG_0040DC42"
    %endif
    times 5 - ($ - %%insn_0040dc42) db 0
    %%insn_0040dc47:
    call 0x40ddd0 ; 0040DC47 E884010000
    %if ($ - %%insn_0040dc47) > 5
        %error "LONG_0040DC47"
    %endif
    times 5 - ($ - %%insn_0040dc47) db 0
    %%insn_0040dc4c:
    test eax,eax ; 0040DC4C 85C0
    %if ($ - %%insn_0040dc4c) > 2
        %error "LONG_0040DC4C"
    %endif
    times 2 - ($ - %%insn_0040dc4c) db 0
    %%insn_0040dc4e:
    jnz short 0x40dc5a ; 0040DC4E 750A
    %if ($ - %%insn_0040dc4e) > 2
        %error "LONG_0040DC4E"
    %endif
    times 2 - ($ - %%insn_0040dc4e) db 0
    %%insn_0040dc50:
    push dword 0x1c ; 0040DC50 6A1C
    %if ($ - %%insn_0040dc50) > 2
        %error "LONG_0040DC50"
    %endif
    times 2 - ($ - %%insn_0040dc50) db 0
    %%insn_0040dc52:
    call 0x40dda0 ; 0040DC52 E849010000
    %if ($ - %%insn_0040dc52) > 5
        %error "LONG_0040DC52"
    %endif
    times 5 - ($ - %%insn_0040dc52) db 0
    %%insn_0040dc57:
    add esp,0x4 ; 0040DC57 83C404
    %if ($ - %%insn_0040dc57) > 3
        %error "LONG_0040DC57"
    %endif
    times 3 - ($ - %%insn_0040dc57) db 0
    %%insn_0040dc5a:
    call 0x412720 ; 0040DC5A E8C14A0000
    %if ($ - %%insn_0040dc5a) > 5
        %error "LONG_0040DC5A"
    %endif
    times 5 - ($ - %%insn_0040dc5a) db 0
    %%insn_0040dc5f:
    test eax,eax ; 0040DC5F 85C0
    %if ($ - %%insn_0040dc5f) > 2
        %error "LONG_0040DC5F"
    %endif
    times 2 - ($ - %%insn_0040dc5f) db 0
    %%insn_0040dc61:
    jnz short 0x40dc6d ; 0040DC61 750A
    %if ($ - %%insn_0040dc61) > 2
        %error "LONG_0040DC61"
    %endif
    times 2 - ($ - %%insn_0040dc61) db 0
    %%insn_0040dc63:
    push dword 0x10 ; 0040DC63 6A10
    %if ($ - %%insn_0040dc63) > 2
        %error "LONG_0040DC63"
    %endif
    times 2 - ($ - %%insn_0040dc63) db 0
    %%insn_0040dc65:
    call 0x40dda0 ; 0040DC65 E836010000
    %if ($ - %%insn_0040dc65) > 5
        %error "LONG_0040DC65"
    %endif
    times 5 - ($ - %%insn_0040dc65) db 0
    %%insn_0040dc6a:
    add esp,0x4 ; 0040DC6A 83C404
    %if ($ - %%insn_0040dc6a) > 3
        %error "LONG_0040DC6A"
    %endif
    times 3 - ($ - %%insn_0040dc6a) db 0
    %%insn_0040dc6d:
    mov dword [ebp-0x4],0x0 ; 0040DC6D C745FC00000000
    %if ($ - %%insn_0040dc6d) > 7
        %error "LONG_0040DC6D"
    %endif
    times 7 - ($ - %%insn_0040dc6d) db 0
    %%insn_0040dc74:
    call 0x411390 ; 0040DC74 E817370000
    %if ($ - %%insn_0040dc74) > 5
        %error "LONG_0040DC74"
    %endif
    times 5 - ($ - %%insn_0040dc74) db 0
    %%insn_0040dc79:
    call 0x412710 ; 0040DC79 E8924A0000
    %if ($ - %%insn_0040dc79) > 5
        %error "LONG_0040DC79"
    %endif
    times 5 - ($ - %%insn_0040dc79) db 0
    %%insn_0040dc7e:
    call dword near [0x424414] ; 0040DC7E FF1514444200
    %if ($ - %%insn_0040dc7e) > 6
        %error "LONG_0040DC7E"
    %endif
    times 6 - ($ - %%insn_0040dc7e) db 0
    %%insn_0040dc84:
    mov [0x423590],eax ; 0040DC84 A390354200
    %if ($ - %%insn_0040dc84) > 5
        %error "LONG_0040DC84"
    %endif
    times 5 - ($ - %%insn_0040dc84) db 0
    %%insn_0040dc89:
    call 0x4122a0 ; 0040DC89 E812460000
    %if ($ - %%insn_0040dc89) > 5
        %error "LONG_0040DC89"
    %endif
    times 5 - ($ - %%insn_0040dc89) db 0
    %%insn_0040dc8e:
    mov [0x420e98],eax ; 0040DC8E A3980E4200
    %if ($ - %%insn_0040dc8e) > 5
        %error "LONG_0040DC8E"
    %endif
    times 5 - ($ - %%insn_0040dc8e) db 0
    %%insn_0040dc93:
    test eax,eax ; 0040DC93 85C0
    %if ($ - %%insn_0040dc93) > 2
        %error "LONG_0040DC93"
    %endif
    times 2 - ($ - %%insn_0040dc93) db 0
    %%insn_0040dc95:
    jz short 0x40dca0 ; 0040DC95 7409
    %if ($ - %%insn_0040dc95) > 2
        %error "LONG_0040DC95"
    %endif
    times 2 - ($ - %%insn_0040dc95) db 0
    %%insn_0040dc97:
    mov eax,[0x423590] ; 0040DC97 A190354200
    %if ($ - %%insn_0040dc97) > 5
        %error "LONG_0040DC97"
    %endif
    times 5 - ($ - %%insn_0040dc97) db 0
    %%insn_0040dc9c:
    test eax,eax ; 0040DC9C 85C0
    %if ($ - %%insn_0040dc9c) > 2
        %error "LONG_0040DC9C"
    %endif
    times 2 - ($ - %%insn_0040dc9c) db 0
    %%insn_0040dc9e:
    jnz short 0x40dcaa ; 0040DC9E 750A
    %if ($ - %%insn_0040dc9e) > 2
        %error "LONG_0040DC9E"
    %endif
    times 2 - ($ - %%insn_0040dc9e) db 0
    %%insn_0040dca0:
    push dword 0xffffffffffffffff ; 0040DCA0 6AFF
    %if ($ - %%insn_0040dca0) > 2
        %error "LONG_0040DCA0"
    %endif
    times 2 - ($ - %%insn_0040dca0) db 0
    %%insn_0040dca2:
    call 0x40d5f0 ; 0040DCA2 E849F9FFFF
    %if ($ - %%insn_0040dca2) > 5
        %error "LONG_0040DCA2"
    %endif
    times 5 - ($ - %%insn_0040dca2) db 0
    %%insn_0040dca7:
    add esp,0x4 ; 0040DCA7 83C404
    %if ($ - %%insn_0040dca7) > 3
        %error "LONG_0040DCA7"
    %endif
    times 3 - ($ - %%insn_0040dca7) db 0
    %%insn_0040dcaa:
    call 0x411df0 ; 0040DCAA E841410000
    %if ($ - %%insn_0040dcaa) > 5
        %error "LONG_0040DCAA"
    %endif
    times 5 - ($ - %%insn_0040dcaa) db 0
    %%insn_0040dcaf:
    call 0x411d00 ; 0040DCAF E84C400000
    %if ($ - %%insn_0040dcaf) > 5
        %error "LONG_0040DCAF"
    %endif
    times 5 - ($ - %%insn_0040dcaf) db 0
    %%insn_0040dcb4:
    call 0x40d5c0 ; 0040DCB4 E807F9FFFF
    %if ($ - %%insn_0040dcb4) > 5
        %error "LONG_0040DCB4"
    %endif
    times 5 - ($ - %%insn_0040dcb4) db 0
    %%insn_0040dcb9:
    mov esi,[0x423590] ; 0040DCB9 8B3590354200
    %if ($ - %%insn_0040dcb9) > 6
        %error "LONG_0040DCB9"
    %endif
    times 6 - ($ - %%insn_0040dcb9) db 0
    %%insn_0040dcbf:
    mov [ebp-0x64],esi ; 0040DCBF 89759C
    %if ($ - %%insn_0040dcbf) > 3
        %error "LONG_0040DCBF"
    %endif
    times 3 - ($ - %%insn_0040dcbf) db 0
    %%insn_0040dcc2:
    cmp byte [esi],0x22 ; 0040DCC2 803E22
    %if ($ - %%insn_0040dcc2) > 3
        %error "LONG_0040DCC2"
    %endif
    times 3 - ($ - %%insn_0040dcc2) db 0
    %%insn_0040dcc5:
    jnz 0x40dd89 ; 0040DCC5 0F85BE000000
    %if ($ - %%insn_0040dcc5) > 6
        %error "LONG_0040DCC5"
    %endif
    times 6 - ($ - %%insn_0040dcc5) db 0
    %%insn_0040dccb:
    inc esi ; 0040DCCB 46
    %if ($ - %%insn_0040dccb) > 1
        %error "LONG_0040DCCB"
    %endif
    times 1 - ($ - %%insn_0040dccb) db 0
    %%insn_0040dccc:
    mov [ebp-0x64],esi ; 0040DCCC 89759C
    %if ($ - %%insn_0040dccc) > 3
        %error "LONG_0040DCCC"
    %endif
    times 3 - ($ - %%insn_0040dccc) db 0
    %%insn_0040dccf:
    mov al,[esi] ; 0040DCCF 8A06
    %if ($ - %%insn_0040dccf) > 2
        %error "LONG_0040DCCF"
    %endif
    times 2 - ($ - %%insn_0040dccf) db 0
    %%insn_0040dcd1:
    cmp al,0x22 ; 0040DCD1 3C22
    %if ($ - %%insn_0040dcd1) > 2
        %error "LONG_0040DCD1"
    %endif
    times 2 - ($ - %%insn_0040dcd1) db 0
    %%insn_0040dcd3:
    jz short 0x40dcf1 ; 0040DCD3 741C
    %if ($ - %%insn_0040dcd3) > 2
        %error "LONG_0040DCD3"
    %endif
    times 2 - ($ - %%insn_0040dcd3) db 0
    %%insn_0040dcd5:
    test al,al ; 0040DCD5 84C0
    %if ($ - %%insn_0040dcd5) > 2
        %error "LONG_0040DCD5"
    %endif
    times 2 - ($ - %%insn_0040dcd5) db 0
    %%insn_0040dcd7:
    jz short 0x40dcf1 ; 0040DCD7 7418
    %if ($ - %%insn_0040dcd7) > 2
        %error "LONG_0040DCD7"
    %endif
    times 2 - ($ - %%insn_0040dcd7) db 0
    %%insn_0040dcd9:
    and eax,0xff ; 0040DCD9 25FF000000
    %if ($ - %%insn_0040dcd9) > 5
        %error "LONG_0040DCD9"
    %endif
    times 5 - ($ - %%insn_0040dcd9) db 0
    %%insn_0040dcde:
    push eax ; 0040DCDE 50
    %if ($ - %%insn_0040dcde) > 1
        %error "LONG_0040DCDE"
    %endif
    times 1 - ($ - %%insn_0040dcde) db 0
    %%insn_0040dcdf:
    call 0x411c50 ; 0040DCDF E86C3F0000
    %if ($ - %%insn_0040dcdf) > 5
        %error "LONG_0040DCDF"
    %endif
    times 5 - ($ - %%insn_0040dcdf) db 0
    %%insn_0040dce4:
    add esp,0x4 ; 0040DCE4 83C404
    %if ($ - %%insn_0040dce4) > 3
        %error "LONG_0040DCE4"
    %endif
    times 3 - ($ - %%insn_0040dce4) db 0
    %%insn_0040dce7:
    test eax,eax ; 0040DCE7 85C0
    %if ($ - %%insn_0040dce7) > 2
        %error "LONG_0040DCE7"
    %endif
    times 2 - ($ - %%insn_0040dce7) db 0
    %%insn_0040dce9:
    jz short 0x40dccb ; 0040DCE9 74E0
    %if ($ - %%insn_0040dce9) > 2
        %error "LONG_0040DCE9"
    %endif
    times 2 - ($ - %%insn_0040dce9) db 0
    %%insn_0040dceb:
    inc esi ; 0040DCEB 46
    %if ($ - %%insn_0040dceb) > 1
        %error "LONG_0040DCEB"
    %endif
    times 1 - ($ - %%insn_0040dceb) db 0
    %%insn_0040dcec:
    mov [ebp-0x64],esi ; 0040DCEC 89759C
    %if ($ - %%insn_0040dcec) > 3
        %error "LONG_0040DCEC"
    %endif
    times 3 - ($ - %%insn_0040dcec) db 0
    %%insn_0040dcef:
    jmp short 0x40dccb ; 0040DCEF EBDA
    %if ($ - %%insn_0040dcef) > 2
        %error "LONG_0040DCEF"
    %endif
    times 2 - ($ - %%insn_0040dcef) db 0
    %%insn_0040dcf1:
    cmp byte [esi],0x22 ; 0040DCF1 803E22
    %if ($ - %%insn_0040dcf1) > 3
        %error "LONG_0040DCF1"
    %endif
    times 3 - ($ - %%insn_0040dcf1) db 0
    %%insn_0040dcf4:
    jnz short 0x40dcfa ; 0040DCF4 7504
    %if ($ - %%insn_0040dcf4) > 2
        %error "LONG_0040DCF4"
    %endif
    times 2 - ($ - %%insn_0040dcf4) db 0
    %%insn_0040dcf6:
    inc esi ; 0040DCF6 46
    %if ($ - %%insn_0040dcf6) > 1
        %error "LONG_0040DCF6"
    %endif
    times 1 - ($ - %%insn_0040dcf6) db 0
    %%insn_0040dcf7:
    mov [ebp-0x64],esi ; 0040DCF7 89759C
    %if ($ - %%insn_0040dcf7) > 3
        %error "LONG_0040DCF7"
    %endif
    times 3 - ($ - %%insn_0040dcf7) db 0
    %%insn_0040dcfa:
    mov al,[esi] ; 0040DCFA 8A06
    %if ($ - %%insn_0040dcfa) > 2
        %error "LONG_0040DCFA"
    %endif
    times 2 - ($ - %%insn_0040dcfa) db 0
    %%insn_0040dcfc:
    test al,al ; 0040DCFC 84C0
    %if ($ - %%insn_0040dcfc) > 2
        %error "LONG_0040DCFC"
    %endif
    times 2 - ($ - %%insn_0040dcfc) db 0
    %%insn_0040dcfe:
    jz short 0x40dd0a ; 0040DCFE 740A
    %if ($ - %%insn_0040dcfe) > 2
        %error "LONG_0040DCFE"
    %endif
    times 2 - ($ - %%insn_0040dcfe) db 0
    %%insn_0040dd00:
    cmp al,0x20 ; 0040DD00 3C20
    %if ($ - %%insn_0040dd00) > 2
        %error "LONG_0040DD00"
    %endif
    times 2 - ($ - %%insn_0040dd00) db 0
    %%insn_0040dd02:
    ja short 0x40dd0a ; 0040DD02 7706
    %if ($ - %%insn_0040dd02) > 2
        %error "LONG_0040DD02"
    %endif
    times 2 - ($ - %%insn_0040dd02) db 0
    %%insn_0040dd04:
    inc esi ; 0040DD04 46
    %if ($ - %%insn_0040dd04) > 1
        %error "LONG_0040DD04"
    %endif
    times 1 - ($ - %%insn_0040dd04) db 0
    %%insn_0040dd05:
    mov [ebp-0x64],esi ; 0040DD05 89759C
    %if ($ - %%insn_0040dd05) > 3
        %error "LONG_0040DD05"
    %endif
    times 3 - ($ - %%insn_0040dd05) db 0
    %%insn_0040dd08:
    jmp short 0x40dcfa ; 0040DD08 EBF0
    %if ($ - %%insn_0040dd08) > 2
        %error "LONG_0040DD08"
    %endif
    times 2 - ($ - %%insn_0040dd08) db 0
    %%insn_0040dd0a:
    mov dword [ebp-0x30],0x0 ; 0040DD0A C745D000000000
    %if ($ - %%insn_0040dd0a) > 7
        %error "LONG_0040DD0A"
    %endif
    times 7 - ($ - %%insn_0040dd0a) db 0
    %%insn_0040dd11:
    lea eax,[ebp-0x5c] ; 0040DD11 8D45A4
    %if ($ - %%insn_0040dd11) > 3
        %error "LONG_0040DD11"
    %endif
    times 3 - ($ - %%insn_0040dd11) db 0
    %%insn_0040dd14:
    push eax ; 0040DD14 50
    %if ($ - %%insn_0040dd14) > 1
        %error "LONG_0040DD14"
    %endif
    times 1 - ($ - %%insn_0040dd14) db 0
    %%insn_0040dd15:
    call dword near [0x424418] ; 0040DD15 FF1518444200
    %if ($ - %%insn_0040dd15) > 6
        %error "LONG_0040DD15"
    %endif
    times 6 - ($ - %%insn_0040dd15) db 0
    %%insn_0040dd1b:
    test byte [ebp-0x30],0x1 ; 0040DD1B F645D001
    %if ($ - %%insn_0040dd1b) > 4
        %error "LONG_0040DD1B"
    %endif
    times 4 - ($ - %%insn_0040dd1b) db 0
    %%insn_0040dd1f:
    jz short 0x40dd2b ; 0040DD1F 740A
    %if ($ - %%insn_0040dd1f) > 2
        %error "LONG_0040DD1F"
    %endif
    times 2 - ($ - %%insn_0040dd1f) db 0
    %%insn_0040dd21:
    mov eax,[ebp-0x2c] ; 0040DD21 8B45D4
    %if ($ - %%insn_0040dd21) > 3
        %error "LONG_0040DD21"
    %endif
    times 3 - ($ - %%insn_0040dd21) db 0
    %%insn_0040dd24:
    and eax,0xffff ; 0040DD24 25FFFF0000
    %if ($ - %%insn_0040dd24) > 5
        %error "LONG_0040DD24"
    %endif
    times 5 - ($ - %%insn_0040dd24) db 0
    %%insn_0040dd29:
    jmp short 0x40dd30 ; 0040DD29 EB05
    %if ($ - %%insn_0040dd29) > 2
        %error "LONG_0040DD29"
    %endif
    times 2 - ($ - %%insn_0040dd29) db 0
    %%insn_0040dd2b:
    mov eax,0xa ; 0040DD2B B80A000000
    %if ($ - %%insn_0040dd2b) > 5
        %error "LONG_0040DD2B"
    %endif
    times 5 - ($ - %%insn_0040dd2b) db 0
    %%insn_0040dd30:
    push eax ; 0040DD30 50
    %if ($ - %%insn_0040dd30) > 1
        %error "LONG_0040DD30"
    %endif
    times 1 - ($ - %%insn_0040dd30) db 0
    %%insn_0040dd31:
    push esi ; 0040DD31 56
    %if ($ - %%insn_0040dd31) > 1
        %error "LONG_0040DD31"
    %endif
    times 1 - ($ - %%insn_0040dd31) db 0
    %%insn_0040dd32:
    push dword 0x0 ; 0040DD32 6A00
    %if ($ - %%insn_0040dd32) > 2
        %error "LONG_0040DD32"
    %endif
    times 2 - ($ - %%insn_0040dd32) db 0
    %%insn_0040dd34:
    push dword 0x0 ; 0040DD34 6A00
    %if ($ - %%insn_0040dd34) > 2
        %error "LONG_0040DD34"
    %endif
    times 2 - ($ - %%insn_0040dd34) db 0
    %%insn_0040dd36:
    call dword near [0x42441c] ; 0040DD36 FF151C444200
    %if ($ - %%insn_0040dd36) > 6
        %error "LONG_0040DD36"
    %endif
    times 6 - ($ - %%insn_0040dd36) db 0
    %%insn_0040dd3c:
    push eax ; 0040DD3C 50
    %if ($ - %%insn_0040dd3c) > 1
        %error "LONG_0040DD3C"
    %endif
    times 1 - ($ - %%insn_0040dd3c) db 0
    %%insn_0040dd3d:
    call 0x40977b ; 0040DD3D E839BAFFFF
    %if ($ - %%insn_0040dd3d) > 5
        %error "LONG_0040DD3D"
    %endif
    times 5 - ($ - %%insn_0040dd3d) db 0
    %%insn_0040dd42:
    mov [ebp-0x60],eax ; 0040DD42 8945A0
    %if ($ - %%insn_0040dd42) > 3
        %error "LONG_0040DD42"
    %endif
    times 3 - ($ - %%insn_0040dd42) db 0
    %%insn_0040dd45:
    push eax ; 0040DD45 50
    %if ($ - %%insn_0040dd45) > 1
        %error "LONG_0040DD45"
    %endif
    times 1 - ($ - %%insn_0040dd45) db 0
    %%insn_0040dd46:
    call 0x40d5f0 ; 0040DD46 E8A5F8FFFF
    %if ($ - %%insn_0040dd46) > 5
        %error "LONG_0040DD46"
    %endif
    times 5 - ($ - %%insn_0040dd46) db 0
    %%insn_0040dd4b:
    jmp short 0x40dd6e ; 0040DD4B EB21
    %if ($ - %%insn_0040dd4b) > 2
        %error "LONG_0040DD4B"
    %endif
    times 2 - ($ - %%insn_0040dd4b) db 0
    %if ($ - %%fragment_start) != 349
        %error "function fragment size drift: 0040DBF0"
    %endif
%endmacro

%macro emit_pe_entry_part_01 0
    %%fragment_start:
    %%insn_0040dd6e:
    add esp,0x4 ; 0040DD6E 83C404
    %if ($ - %%insn_0040dd6e) > 3
        %error "LONG_0040DD6E"
    %endif
    times 3 - ($ - %%insn_0040dd6e) db 0
    %%insn_0040dd71:
    mov dword [ebp-0x4],0xffffffff ; 0040DD71 C745FCFFFFFFFF
    %if ($ - %%insn_0040dd71) > 7
        %error "LONG_0040DD71"
    %endif
    times 7 - ($ - %%insn_0040dd71) db 0
    %%insn_0040dd78:
    mov ecx,[ebp-0x10] ; 0040DD78 8B4DF0
    %if ($ - %%insn_0040dd78) > 3
        %error "LONG_0040DD78"
    %endif
    times 3 - ($ - %%insn_0040dd78) db 0
    %%insn_0040dd7b:
    mov [fs:0x0],ecx ; 0040DD7B 64890D00000000
    %if ($ - %%insn_0040dd7b) > 7
        %error "LONG_0040DD7B"
    %endif
    times 7 - ($ - %%insn_0040dd7b) db 0
    %%insn_0040dd82:
    pop edi ; 0040DD82 5F
    %if ($ - %%insn_0040dd82) > 1
        %error "LONG_0040DD82"
    %endif
    times 1 - ($ - %%insn_0040dd82) db 0
    %%insn_0040dd83:
    pop esi ; 0040DD83 5E
    %if ($ - %%insn_0040dd83) > 1
        %error "LONG_0040DD83"
    %endif
    times 1 - ($ - %%insn_0040dd83) db 0
    %%insn_0040dd84:
    pop ebx ; 0040DD84 5B
    %if ($ - %%insn_0040dd84) > 1
        %error "LONG_0040DD84"
    %endif
    times 1 - ($ - %%insn_0040dd84) db 0
    db 0x8B, 0xE5 ; 0040DD85 8BE5 | mov esp,ebp | encoding preserved
    %%insn_0040dd87:
    pop ebp ; 0040DD87 5D
    %if ($ - %%insn_0040dd87) > 1
        %error "LONG_0040DD87"
    %endif
    times 1 - ($ - %%insn_0040dd87) db 0
    %%insn_0040dd88:
    ret ; 0040DD88 C3
    %if ($ - %%insn_0040dd88) > 1
        %error "LONG_0040DD88"
    %endif
    times 1 - ($ - %%insn_0040dd88) db 0
    %%insn_0040dd89:
    cmp byte [esi],0x20 ; 0040DD89 803E20
    %if ($ - %%insn_0040dd89) > 3
        %error "LONG_0040DD89"
    %endif
    times 3 - ($ - %%insn_0040dd89) db 0
    %%insn_0040dd8c:
    jna 0x40dcfa ; 0040DD8C 0F8668FFFFFF
    %if ($ - %%insn_0040dd8c) > 6
        %error "LONG_0040DD8C"
    %endif
    times 6 - ($ - %%insn_0040dd8c) db 0
    %%insn_0040dd92:
    inc esi ; 0040DD92 46
    %if ($ - %%insn_0040dd92) > 1
        %error "LONG_0040DD92"
    %endif
    times 1 - ($ - %%insn_0040dd92) db 0
    %%insn_0040dd93:
    mov [ebp-0x64],esi ; 0040DD93 89759C
    %if ($ - %%insn_0040dd93) > 3
        %error "LONG_0040DD93"
    %endif
    times 3 - ($ - %%insn_0040dd93) db 0
    %%insn_0040dd96:
    jmp short 0x40dd89 ; 0040DD96 EBF1
    %if ($ - %%insn_0040dd96) > 2
        %error "LONG_0040DD96"
    %endif
    times 2 - ($ - %%insn_0040dd96) db 0
    %if ($ - %%fragment_start) != 42
        %error "function fragment size drift: 0040DD6E"
    %endif
%endmacro
