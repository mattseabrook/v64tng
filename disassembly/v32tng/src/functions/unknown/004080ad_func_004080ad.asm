; PE virtual entry 004080AD
; Ghidra working symbol: FUN_004080ad
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_004080ad_part_00 0
    %%fragment_start:
func_004080ad:
    %%insn_004080ad:
    push ebp ; 004080AD 55
    %if ($ - %%insn_004080ad) > 1
        %error "LONG_004080AD"
    %endif
    times 1 - ($ - %%insn_004080ad) db 0
    db 0x8B, 0xEC ; 004080AE 8BEC | mov ebp,esp | encoding preserved
    %%insn_004080b0:
    sub esp,0x44 ; 004080B0 83EC44
    %if ($ - %%insn_004080b0) > 3
        %error "LONG_004080B0"
    %endif
    times 3 - ($ - %%insn_004080b0) db 0
    %%insn_004080b3:
    push esi ; 004080B3 56
    %if ($ - %%insn_004080b3) > 1
        %error "LONG_004080B3"
    %endif
    times 1 - ($ - %%insn_004080b3) db 0
    %%insn_004080b4:
    mov [ebp-0x44],ecx ; 004080B4 894DBC
    %if ($ - %%insn_004080b4) > 3
        %error "LONG_004080B4"
    %endif
    times 3 - ($ - %%insn_004080b4) db 0
    %%insn_004080b7:
    push dword 0xfffffffffffffff0 ; 004080B7 6AF0
    %if ($ - %%insn_004080b7) > 2
        %error "LONG_004080B7"
    %endif
    times 2 - ($ - %%insn_004080b7) db 0
    %%insn_004080b9:
    mov eax,[0x41f5bc] ; 004080B9 A1BCF54100
    %if ($ - %%insn_004080b9) > 5
        %error "LONG_004080B9"
    %endif
    times 5 - ($ - %%insn_004080b9) db 0
    %%insn_004080be:
    push eax ; 004080BE 50
    %if ($ - %%insn_004080be) > 1
        %error "LONG_004080BE"
    %endif
    times 1 - ($ - %%insn_004080be) db 0
    %%insn_004080bf:
    call dword near [0x424524] ; 004080BF FF1524454200
    %if ($ - %%insn_004080bf) > 6
        %error "LONG_004080BF"
    %endif
    times 6 - ($ - %%insn_004080bf) db 0
    %%insn_004080c5:
    mov [ebp-0x3c],eax ; 004080C5 8945C4
    %if ($ - %%insn_004080c5) > 3
        %error "LONG_004080C5"
    %endif
    times 3 - ($ - %%insn_004080c5) db 0
    %%insn_004080c8:
    mov ecx,[ebp-0x3c] ; 004080C8 8B4DC4
    %if ($ - %%insn_004080c8) > 3
        %error "LONG_004080C8"
    %endif
    times 3 - ($ - %%insn_004080c8) db 0
    %%insn_004080cb:
    and ecx,0x7fffffff ; 004080CB 81E1FFFFFF7F
    %if ($ - %%insn_004080cb) > 6
        %error "LONG_004080CB"
    %endif
    times 6 - ($ - %%insn_004080cb) db 0
    %%insn_004080d1:
    mov [ebp-0x3c],ecx ; 004080D1 894DC4
    %if ($ - %%insn_004080d1) > 3
        %error "LONG_004080D1"
    %endif
    times 3 - ($ - %%insn_004080d1) db 0
    %%insn_004080d4:
    mov edx,[ebp-0x3c] ; 004080D4 8B55C4
    %if ($ - %%insn_004080d4) > 3
        %error "LONG_004080D4"
    %endif
    times 3 - ($ - %%insn_004080d4) db 0
    %%insn_004080d7:
    or edx,0xc20000 ; 004080D7 81CA0000C200
    %if ($ - %%insn_004080d7) > 6
        %error "LONG_004080D7"
    %endif
    times 6 - ($ - %%insn_004080d7) db 0
    %%insn_004080dd:
    mov [ebp-0x3c],edx ; 004080DD 8955C4
    %if ($ - %%insn_004080dd) > 3
        %error "LONG_004080DD"
    %endif
    times 3 - ($ - %%insn_004080dd) db 0
    %%insn_004080e0:
    mov eax,[ebp-0x3c] ; 004080E0 8B45C4
    %if ($ - %%insn_004080e0) > 3
        %error "LONG_004080E0"
    %endif
    times 3 - ($ - %%insn_004080e0) db 0
    %%insn_004080e3:
    push eax ; 004080E3 50
    %if ($ - %%insn_004080e3) > 1
        %error "LONG_004080E3"
    %endif
    times 1 - ($ - %%insn_004080e3) db 0
    %%insn_004080e4:
    push dword 0xfffffffffffffff0 ; 004080E4 6AF0
    %if ($ - %%insn_004080e4) > 2
        %error "LONG_004080E4"
    %endif
    times 2 - ($ - %%insn_004080e4) db 0
    %%insn_004080e6:
    mov ecx,[0x41f5bc] ; 004080E6 8B0DBCF54100
    %if ($ - %%insn_004080e6) > 6
        %error "LONG_004080E6"
    %endif
    times 6 - ($ - %%insn_004080e6) db 0
    %%insn_004080ec:
    push ecx ; 004080EC 51
    %if ($ - %%insn_004080ec) > 1
        %error "LONG_004080EC"
    %endif
    times 1 - ($ - %%insn_004080ec) db 0
    %%insn_004080ed:
    call dword near [0x424520] ; 004080ED FF1520454200
    %if ($ - %%insn_004080ed) > 6
        %error "LONG_004080ED"
    %endif
    times 6 - ($ - %%insn_004080ed) db 0
    %%insn_004080f3:
    push dword 0x1e0 ; 004080F3 68E0010000
    %if ($ - %%insn_004080f3) > 5
        %error "LONG_004080F3"
    %endif
    times 5 - ($ - %%insn_004080f3) db 0
    %%insn_004080f8:
    push dword 0x280 ; 004080F8 6880020000
    %if ($ - %%insn_004080f8) > 5
        %error "LONG_004080F8"
    %endif
    times 5 - ($ - %%insn_004080f8) db 0
    %%insn_004080fd:
    push dword 0x0 ; 004080FD 6A00
    %if ($ - %%insn_004080fd) > 2
        %error "LONG_004080FD"
    %endif
    times 2 - ($ - %%insn_004080fd) db 0
    %%insn_004080ff:
    push dword 0x0 ; 004080FF 6A00
    %if ($ - %%insn_004080ff) > 2
        %error "LONG_004080FF"
    %endif
    times 2 - ($ - %%insn_004080ff) db 0
    %%insn_00408101:
    lea edx,[ebp-0x24] ; 00408101 8D55DC
    %if ($ - %%insn_00408101) > 3
        %error "LONG_00408101"
    %endif
    times 3 - ($ - %%insn_00408101) db 0
    %%insn_00408104:
    push edx ; 00408104 52
    %if ($ - %%insn_00408104) > 1
        %error "LONG_00408104"
    %endif
    times 1 - ($ - %%insn_00408104) db 0
    %%insn_00408105:
    call dword near [0x42451c] ; 00408105 FF151C454200
    %if ($ - %%insn_00408105) > 6
        %error "LONG_00408105"
    %endif
    times 6 - ($ - %%insn_00408105) db 0
    %%insn_0040810b:
    push dword 0xffffffffffffffec ; 0040810B 6AEC
    %if ($ - %%insn_0040810b) > 2
        %error "LONG_0040810B"
    %endif
    times 2 - ($ - %%insn_0040810b) db 0
    %%insn_0040810d:
    mov eax,[0x41f5bc] ; 0040810D A1BCF54100
    %if ($ - %%insn_0040810d) > 5
        %error "LONG_0040810D"
    %endif
    times 5 - ($ - %%insn_0040810d) db 0
    %%insn_00408112:
    push eax ; 00408112 50
    %if ($ - %%insn_00408112) > 1
        %error "LONG_00408112"
    %endif
    times 1 - ($ - %%insn_00408112) db 0
    %%insn_00408113:
    call dword near [0x424524] ; 00408113 FF1524454200
    %if ($ - %%insn_00408113) > 6
        %error "LONG_00408113"
    %endif
    times 6 - ($ - %%insn_00408113) db 0
    %%insn_00408119:
    push eax ; 00408119 50
    %if ($ - %%insn_00408119) > 1
        %error "LONG_00408119"
    %endif
    times 1 - ($ - %%insn_00408119) db 0
    %%insn_0040811a:
    mov ecx,[0x41f5bc] ; 0040811A 8B0DBCF54100
    %if ($ - %%insn_0040811a) > 6
        %error "LONG_0040811A"
    %endif
    times 6 - ($ - %%insn_0040811a) db 0
    %%insn_00408120:
    push ecx ; 00408120 51
    %if ($ - %%insn_00408120) > 1
        %error "LONG_00408120"
    %endif
    times 1 - ($ - %%insn_00408120) db 0
    %%insn_00408121:
    call dword near [0x424518] ; 00408121 FF1518454200
    %if ($ - %%insn_00408121) > 6
        %error "LONG_00408121"
    %endif
    times 6 - ($ - %%insn_00408121) db 0
    %%insn_00408127:
    neg eax ; 00408127 F7D8
    %if ($ - %%insn_00408127) > 2
        %error "LONG_00408127"
    %endif
    times 2 - ($ - %%insn_00408127) db 0
    db 0x1B, 0xC0 ; 00408129 1BC0 | sbb eax,eax | encoding preserved
    %%insn_0040812b:
    neg eax ; 0040812B F7D8
    %if ($ - %%insn_0040812b) > 2
        %error "LONG_0040812B"
    %endif
    times 2 - ($ - %%insn_0040812b) db 0
    %%insn_0040812d:
    push eax ; 0040812D 50
    %if ($ - %%insn_0040812d) > 1
        %error "LONG_0040812D"
    %endif
    times 1 - ($ - %%insn_0040812d) db 0
    %%insn_0040812e:
    push dword 0xfffffffffffffff0 ; 0040812E 6AF0
    %if ($ - %%insn_0040812e) > 2
        %error "LONG_0040812E"
    %endif
    times 2 - ($ - %%insn_0040812e) db 0
    %%insn_00408130:
    mov edx,[0x41f5bc] ; 00408130 8B15BCF54100
    %if ($ - %%insn_00408130) > 6
        %error "LONG_00408130"
    %endif
    times 6 - ($ - %%insn_00408130) db 0
    %%insn_00408136:
    push edx ; 00408136 52
    %if ($ - %%insn_00408136) > 1
        %error "LONG_00408136"
    %endif
    times 1 - ($ - %%insn_00408136) db 0
    %%insn_00408137:
    call dword near [0x424524] ; 00408137 FF1524454200
    %if ($ - %%insn_00408137) > 6
        %error "LONG_00408137"
    %endif
    times 6 - ($ - %%insn_00408137) db 0
    %%insn_0040813d:
    push eax ; 0040813D 50
    %if ($ - %%insn_0040813d) > 1
        %error "LONG_0040813D"
    %endif
    times 1 - ($ - %%insn_0040813d) db 0
    %%insn_0040813e:
    lea eax,[ebp-0x24] ; 0040813E 8D45DC
    %if ($ - %%insn_0040813e) > 3
        %error "LONG_0040813E"
    %endif
    times 3 - ($ - %%insn_0040813e) db 0
    %%insn_00408141:
    push eax ; 00408141 50
    %if ($ - %%insn_00408141) > 1
        %error "LONG_00408141"
    %endif
    times 1 - ($ - %%insn_00408141) db 0
    %%insn_00408142:
    call dword near [0x424514] ; 00408142 FF1514454200
    %if ($ - %%insn_00408142) > 6
        %error "LONG_00408142"
    %endif
    times 6 - ($ - %%insn_00408142) db 0
    %%insn_00408148:
    push dword 0x16 ; 00408148 6A16
    %if ($ - %%insn_00408148) > 2
        %error "LONG_00408148"
    %endif
    times 2 - ($ - %%insn_00408148) db 0
    %%insn_0040814a:
    mov ecx,[ebp-0x18] ; 0040814A 8B4DE8
    %if ($ - %%insn_0040814a) > 3
        %error "LONG_0040814A"
    %endif
    times 3 - ($ - %%insn_0040814a) db 0
    %%insn_0040814d:
    sub ecx,[ebp-0x20] ; 0040814D 2B4DE0
    %if ($ - %%insn_0040814d) > 3
        %error "LONG_0040814D"
    %endif
    times 3 - ($ - %%insn_0040814d) db 0
    %%insn_00408150:
    push ecx ; 00408150 51
    %if ($ - %%insn_00408150) > 1
        %error "LONG_00408150"
    %endif
    times 1 - ($ - %%insn_00408150) db 0
    %%insn_00408151:
    mov edx,[ebp-0x1c] ; 00408151 8B55E4
    %if ($ - %%insn_00408151) > 3
        %error "LONG_00408151"
    %endif
    times 3 - ($ - %%insn_00408151) db 0
    %%insn_00408154:
    sub edx,[ebp-0x24] ; 00408154 2B55DC
    %if ($ - %%insn_00408154) > 3
        %error "LONG_00408154"
    %endif
    times 3 - ($ - %%insn_00408154) db 0
    %%insn_00408157:
    push edx ; 00408157 52
    %if ($ - %%insn_00408157) > 1
        %error "LONG_00408157"
    %endif
    times 1 - ($ - %%insn_00408157) db 0
    %%insn_00408158:
    push dword 0x0 ; 00408158 6A00
    %if ($ - %%insn_00408158) > 2
        %error "LONG_00408158"
    %endif
    times 2 - ($ - %%insn_00408158) db 0
    %%insn_0040815a:
    push dword 0x0 ; 0040815A 6A00
    %if ($ - %%insn_0040815a) > 2
        %error "LONG_0040815A"
    %endif
    times 2 - ($ - %%insn_0040815a) db 0
    %%insn_0040815c:
    push dword 0x0 ; 0040815C 6A00
    %if ($ - %%insn_0040815c) > 2
        %error "LONG_0040815C"
    %endif
    times 2 - ($ - %%insn_0040815c) db 0
    %%insn_0040815e:
    mov eax,[0x41f5bc] ; 0040815E A1BCF54100
    %if ($ - %%insn_0040815e) > 5
        %error "LONG_0040815E"
    %endif
    times 5 - ($ - %%insn_0040815e) db 0
    %%insn_00408163:
    push eax ; 00408163 50
    %if ($ - %%insn_00408163) > 1
        %error "LONG_00408163"
    %endif
    times 1 - ($ - %%insn_00408163) db 0
    %%insn_00408164:
    call dword near [0x424510] ; 00408164 FF1510454200
    %if ($ - %%insn_00408164) > 6
        %error "LONG_00408164"
    %endif
    times 6 - ($ - %%insn_00408164) db 0
    %%insn_0040816a:
    push dword 0x13 ; 0040816A 6A13
    %if ($ - %%insn_0040816a) > 2
        %error "LONG_0040816A"
    %endif
    times 2 - ($ - %%insn_0040816a) db 0
    %%insn_0040816c:
    push dword 0x0 ; 0040816C 6A00
    %if ($ - %%insn_0040816c) > 2
        %error "LONG_0040816C"
    %endif
    times 2 - ($ - %%insn_0040816c) db 0
    %%insn_0040816e:
    push dword 0x0 ; 0040816E 6A00
    %if ($ - %%insn_0040816e) > 2
        %error "LONG_0040816E"
    %endif
    times 2 - ($ - %%insn_0040816e) db 0
    %%insn_00408170:
    push dword 0x0 ; 00408170 6A00
    %if ($ - %%insn_00408170) > 2
        %error "LONG_00408170"
    %endif
    times 2 - ($ - %%insn_00408170) db 0
    %%insn_00408172:
    push dword 0x0 ; 00408172 6A00
    %if ($ - %%insn_00408172) > 2
        %error "LONG_00408172"
    %endif
    times 2 - ($ - %%insn_00408172) db 0
    %%insn_00408174:
    push dword 0xfffffffffffffffe ; 00408174 6AFE
    %if ($ - %%insn_00408174) > 2
        %error "LONG_00408174"
    %endif
    times 2 - ($ - %%insn_00408174) db 0
    %%insn_00408176:
    mov ecx,[0x41f5bc] ; 00408176 8B0DBCF54100
    %if ($ - %%insn_00408176) > 6
        %error "LONG_00408176"
    %endif
    times 6 - ($ - %%insn_00408176) db 0
    %%insn_0040817c:
    push ecx ; 0040817C 51
    %if ($ - %%insn_0040817c) > 1
        %error "LONG_0040817C"
    %endif
    times 1 - ($ - %%insn_0040817c) db 0
    %%insn_0040817d:
    call dword near [0x424510] ; 0040817D FF1510454200
    %if ($ - %%insn_0040817d) > 6
        %error "LONG_0040817D"
    %endif
    times 6 - ($ - %%insn_0040817d) db 0
    %%insn_00408183:
    push dword 0x0 ; 00408183 6A00
    %if ($ - %%insn_00408183) > 2
        %error "LONG_00408183"
    %endif
    times 2 - ($ - %%insn_00408183) db 0
    %%insn_00408185:
    lea edx,[ebp-0x10] ; 00408185 8D55F0
    %if ($ - %%insn_00408185) > 3
        %error "LONG_00408185"
    %endif
    times 3 - ($ - %%insn_00408185) db 0
    %%insn_00408188:
    push edx ; 00408188 52
    %if ($ - %%insn_00408188) > 1
        %error "LONG_00408188"
    %endif
    times 1 - ($ - %%insn_00408188) db 0
    %%insn_00408189:
    push dword 0x0 ; 00408189 6A00
    %if ($ - %%insn_00408189) > 2
        %error "LONG_00408189"
    %endif
    times 2 - ($ - %%insn_00408189) db 0
    %%insn_0040818b:
    push dword 0x30 ; 0040818B 6A30
    %if ($ - %%insn_0040818b) > 2
        %error "LONG_0040818B"
    %endif
    times 2 - ($ - %%insn_0040818b) db 0
    %%insn_0040818d:
    call dword near [0x42450c] ; 0040818D FF150C454200
    %if ($ - %%insn_0040818d) > 6
        %error "LONG_0040818D"
    %endif
    times 6 - ($ - %%insn_0040818d) db 0
    %%insn_00408193:
    lea eax,[ebp-0x24] ; 00408193 8D45DC
    %if ($ - %%insn_00408193) > 3
        %error "LONG_00408193"
    %endif
    times 3 - ($ - %%insn_00408193) db 0
    %%insn_00408196:
    push eax ; 00408196 50
    %if ($ - %%insn_00408196) > 1
        %error "LONG_00408196"
    %endif
    times 1 - ($ - %%insn_00408196) db 0
    %%insn_00408197:
    mov ecx,[0x41f5bc] ; 00408197 8B0DBCF54100
    %if ($ - %%insn_00408197) > 6
        %error "LONG_00408197"
    %endif
    times 6 - ($ - %%insn_00408197) db 0
    %%insn_0040819d:
    push ecx ; 0040819D 51
    %if ($ - %%insn_0040819d) > 1
        %error "LONG_0040819D"
    %endif
    times 1 - ($ - %%insn_0040819d) db 0
    %%insn_0040819e:
    call dword near [0x424508] ; 0040819E FF1508454200
    %if ($ - %%insn_0040819e) > 6
        %error "LONG_0040819E"
    %endif
    times 6 - ($ - %%insn_0040819e) db 0
    %%insn_004081a4:
    mov edx,[ebp-0x24] ; 004081A4 8B55DC
    %if ($ - %%insn_004081a4) > 3
        %error "LONG_004081A4"
    %endif
    times 3 - ($ - %%insn_004081a4) db 0
    %%insn_004081a7:
    cmp edx,[ebp-0x10] ; 004081A7 3B55F0
    %if ($ - %%insn_004081a7) > 3
        %error "LONG_004081A7"
    %endif
    times 3 - ($ - %%insn_004081a7) db 0
    %%insn_004081aa:
    jnl short 0x4081b2 ; 004081AA 7D06
    %if ($ - %%insn_004081aa) > 2
        %error "LONG_004081AA"
    %endif
    times 2 - ($ - %%insn_004081aa) db 0
    %%insn_004081ac:
    mov eax,[ebp-0x10] ; 004081AC 8B45F0
    %if ($ - %%insn_004081ac) > 3
        %error "LONG_004081AC"
    %endif
    times 3 - ($ - %%insn_004081ac) db 0
    %%insn_004081af:
    mov [ebp-0x24],eax ; 004081AF 8945DC
    %if ($ - %%insn_004081af) > 3
        %error "LONG_004081AF"
    %endif
    times 3 - ($ - %%insn_004081af) db 0
    %%insn_004081b2:
    mov ecx,[ebp-0x20] ; 004081B2 8B4DE0
    %if ($ - %%insn_004081b2) > 3
        %error "LONG_004081B2"
    %endif
    times 3 - ($ - %%insn_004081b2) db 0
    %%insn_004081b5:
    cmp ecx,[ebp-0xc] ; 004081B5 3B4DF4
    %if ($ - %%insn_004081b5) > 3
        %error "LONG_004081B5"
    %endif
    times 3 - ($ - %%insn_004081b5) db 0
    %%insn_004081b8:
    jnl short 0x4081c0 ; 004081B8 7D06
    %if ($ - %%insn_004081b8) > 2
        %error "LONG_004081B8"
    %endif
    times 2 - ($ - %%insn_004081b8) db 0
    %%insn_004081ba:
    mov edx,[ebp-0xc] ; 004081BA 8B55F4
    %if ($ - %%insn_004081ba) > 3
        %error "LONG_004081BA"
    %endif
    times 3 - ($ - %%insn_004081ba) db 0
    %%insn_004081bd:
    mov [ebp-0x20],edx ; 004081BD 8955E0
    %if ($ - %%insn_004081bd) > 3
        %error "LONG_004081BD"
    %endif
    times 3 - ($ - %%insn_004081bd) db 0
    %%insn_004081c0:
    push dword 0x15 ; 004081C0 6A15
    %if ($ - %%insn_004081c0) > 2
        %error "LONG_004081C0"
    %endif
    times 2 - ($ - %%insn_004081c0) db 0
    %%insn_004081c2:
    push dword 0x0 ; 004081C2 6A00
    %if ($ - %%insn_004081c2) > 2
        %error "LONG_004081C2"
    %endif
    times 2 - ($ - %%insn_004081c2) db 0
    %%insn_004081c4:
    push dword 0x0 ; 004081C4 6A00
    %if ($ - %%insn_004081c4) > 2
        %error "LONG_004081C4"
    %endif
    times 2 - ($ - %%insn_004081c4) db 0
    %%insn_004081c6:
    mov eax,[ebp-0x20] ; 004081C6 8B45E0
    %if ($ - %%insn_004081c6) > 3
        %error "LONG_004081C6"
    %endif
    times 3 - ($ - %%insn_004081c6) db 0
    %%insn_004081c9:
    push eax ; 004081C9 50
    %if ($ - %%insn_004081c9) > 1
        %error "LONG_004081C9"
    %endif
    times 1 - ($ - %%insn_004081c9) db 0
    %%insn_004081ca:
    mov ecx,[ebp-0x24] ; 004081CA 8B4DDC
    %if ($ - %%insn_004081ca) > 3
        %error "LONG_004081CA"
    %endif
    times 3 - ($ - %%insn_004081ca) db 0
    %%insn_004081cd:
    push ecx ; 004081CD 51
    %if ($ - %%insn_004081cd) > 1
        %error "LONG_004081CD"
    %endif
    times 1 - ($ - %%insn_004081cd) db 0
    %%insn_004081ce:
    push dword 0x0 ; 004081CE 6A00
    %if ($ - %%insn_004081ce) > 2
        %error "LONG_004081CE"
    %endif
    times 2 - ($ - %%insn_004081ce) db 0
    %%insn_004081d0:
    mov edx,[0x41f5bc] ; 004081D0 8B15BCF54100
    %if ($ - %%insn_004081d0) > 6
        %error "LONG_004081D0"
    %endif
    times 6 - ($ - %%insn_004081d0) db 0
    %%insn_004081d6:
    push edx ; 004081D6 52
    %if ($ - %%insn_004081d6) > 1
        %error "LONG_004081D6"
    %endif
    times 1 - ($ - %%insn_004081d6) db 0
    %%insn_004081d7:
    call dword near [0x424510] ; 004081D7 FF1510454200
    %if ($ - %%insn_004081d7) > 6
        %error "LONG_004081D7"
    %endif
    times 6 - ($ - %%insn_004081d7) db 0
    %%insn_004081dd:
    mov dword [0x41f574],0x280 ; 004081DD C70574F5410080020000
    %if ($ - %%insn_004081dd) > 10
        %error "LONG_004081DD"
    %endif
    times 10 - ($ - %%insn_004081dd) db 0
    %%insn_004081e7:
    mov dword [0x41f570],0x1e0 ; 004081E7 C70570F54100E0010000
    %if ($ - %%insn_004081e7) > 10
        %error "LONG_004081E7"
    %endif
    times 10 - ($ - %%insn_004081e7) db 0
    %%insn_004081f1:
    push dword 0x41f558 ; 004081F1 6858F54100
    %if ($ - %%insn_004081f1) > 5
        %error "LONG_004081F1"
    %endif
    times 5 - ($ - %%insn_004081f1) db 0
    %%insn_004081f6:
    mov eax,[0x41f5bc] ; 004081F6 A1BCF54100
    %if ($ - %%insn_004081f6) > 5
        %error "LONG_004081F6"
    %endif
    times 5 - ($ - %%insn_004081f6) db 0
    %%insn_004081fb:
    push eax ; 004081FB 50
    %if ($ - %%insn_004081fb) > 1
        %error "LONG_004081FB"
    %endif
    times 1 - ($ - %%insn_004081fb) db 0
    %%insn_004081fc:
    call dword near [0x424508] ; 004081FC FF1508454200
    %if ($ - %%insn_004081fc) > 6
        %error "LONG_004081FC"
    %endif
    times 6 - ($ - %%insn_004081fc) db 0
    %%insn_00408202:
    push dword 0x7 ; 00408202 6A07
    %if ($ - %%insn_00408202) > 2
        %error "LONG_00408202"
    %endif
    times 2 - ($ - %%insn_00408202) db 0
    %%insn_00408204:
    call dword near [0x4244fc] ; 00408204 FF15FC444200
    %if ($ - %%insn_00408204) > 6
        %error "LONG_00408204"
    %endif
    times 6 - ($ - %%insn_00408204) db 0
    %%insn_0040820a:
    mov ecx,[0x41f558] ; 0040820A 8B0D58F54100
    %if ($ - %%insn_0040820a) > 6
        %error "LONG_0040820A"
    %endif
    times 6 - ($ - %%insn_0040820a) db 0
    db 0x03, 0xC8 ; 00408210 03C8 | add ecx,eax | encoding preserved
    %%insn_00408212:
    mov [0x41f558],ecx ; 00408212 890D58F54100
    %if ($ - %%insn_00408212) > 6
        %error "LONG_00408212"
    %endif
    times 6 - ($ - %%insn_00408212) db 0
    %%insn_00408218:
    push dword 0x8 ; 00408218 6A08
    %if ($ - %%insn_00408218) > 2
        %error "LONG_00408218"
    %endif
    times 2 - ($ - %%insn_00408218) db 0
    %%insn_0040821a:
    call dword near [0x4244fc] ; 0040821A FF15FC444200
    %if ($ - %%insn_0040821a) > 6
        %error "LONG_0040821A"
    %endif
    times 6 - ($ - %%insn_0040821a) db 0
    db 0x8B, 0xF0 ; 00408220 8BF0 | mov esi,eax | encoding preserved
    %%insn_00408222:
    push dword 0x4 ; 00408222 6A04
    %if ($ - %%insn_00408222) > 2
        %error "LONG_00408222"
    %endif
    times 2 - ($ - %%insn_00408222) db 0
    %%insn_00408224:
    call dword near [0x4244fc] ; 00408224 FF15FC444200
    %if ($ - %%insn_00408224) > 6
        %error "LONG_00408224"
    %endif
    times 6 - ($ - %%insn_00408224) db 0
    %%insn_0040822a:
    add eax,[0x41f55c] ; 0040822A 03055CF54100
    %if ($ - %%insn_0040822a) > 6
        %error "LONG_0040822A"
    %endif
    times 6 - ($ - %%insn_0040822a) db 0
    db 0x03, 0xC6 ; 00408230 03C6 | add eax,esi | encoding preserved
    %%insn_00408232:
    mov [0x41f55c],eax ; 00408232 A35CF54100
    %if ($ - %%insn_00408232) > 5
        %error "LONG_00408232"
    %endif
    times 5 - ($ - %%insn_00408232) db 0
    %%insn_00408237:
    mov edx,[0x41f5bc] ; 00408237 8B15BCF54100
    %if ($ - %%insn_00408237) > 6
        %error "LONG_00408237"
    %endif
    times 6 - ($ - %%insn_00408237) db 0
    %%insn_0040823d:
    push edx ; 0040823D 52
    %if ($ - %%insn_0040823d) > 1
        %error "LONG_0040823D"
    %endif
    times 1 - ($ - %%insn_0040823d) db 0
    %%insn_0040823e:
    call dword near [0x4244ec] ; 0040823E FF15EC444200
    %if ($ - %%insn_0040823e) > 6
        %error "LONG_0040823E"
    %endif
    times 6 - ($ - %%insn_0040823e) db 0
    %%insn_00408244:
    mov [ebp-0x38],eax ; 00408244 8945C8
    %if ($ - %%insn_00408244) > 3
        %error "LONG_00408244"
    %endif
    times 3 - ($ - %%insn_00408244) db 0
    %%insn_00408247:
    push dword 0x26 ; 00408247 6A26
    %if ($ - %%insn_00408247) > 2
        %error "LONG_00408247"
    %endif
    times 2 - ($ - %%insn_00408247) db 0
    %%insn_00408249:
    mov eax,[ebp-0x38] ; 00408249 8B45C8
    %if ($ - %%insn_00408249) > 3
        %error "LONG_00408249"
    %endif
    times 3 - ($ - %%insn_00408249) db 0
    %%insn_0040824c:
    push eax ; 0040824C 50
    %if ($ - %%insn_0040824c) > 1
        %error "LONG_0040824C"
    %endif
    times 1 - ($ - %%insn_0040824c) db 0
    %%insn_0040824d:
    call dword near [0x4243a8] ; 0040824D FF15A8434200
    %if ($ - %%insn_0040824d) > 6
        %error "LONG_0040824D"
    %endif
    times 6 - ($ - %%insn_0040824d) db 0
    %%insn_00408253:
    and eax,0x100 ; 00408253 2500010000
    %if ($ - %%insn_00408253) > 5
        %error "LONG_00408253"
    %endif
    times 5 - ($ - %%insn_00408253) db 0
    %%insn_00408258:
    test eax,eax ; 00408258 85C0
    %if ($ - %%insn_00408258) > 2
        %error "LONG_00408258"
    %endif
    times 2 - ($ - %%insn_00408258) db 0
    %%insn_0040825a:
    jz 0x40864b ; 0040825A 0F84EB030000
    %if ($ - %%insn_0040825a) > 6
        %error "LONG_0040825A"
    %endif
    times 6 - ($ - %%insn_0040825a) db 0
    %%insn_00408260:
    push dword 0x408 ; 00408260 6808040000
    %if ($ - %%insn_00408260) > 5
        %error "LONG_00408260"
    %endif
    times 5 - ($ - %%insn_00408260) db 0
    %%insn_00408265:
    call 0x40cdc0 ; 00408265 E8564B0000
    %if ($ - %%insn_00408265) > 5
        %error "LONG_00408265"
    %endif
    times 5 - ($ - %%insn_00408265) db 0
    %%insn_0040826a:
    add esp,0x4 ; 0040826A 83C404
    %if ($ - %%insn_0040826a) > 3
        %error "LONG_0040826A"
    %endif
    times 3 - ($ - %%insn_0040826a) db 0
    %%insn_0040826d:
    mov [ebp-0x40],eax ; 0040826D 8945C0
    %if ($ - %%insn_0040826d) > 3
        %error "LONG_0040826D"
    %endif
    times 3 - ($ - %%insn_0040826d) db 0
    %%insn_00408270:
    cmp dword [ebp-0x40],0x0 ; 00408270 837DC000
    %if ($ - %%insn_00408270) > 4
        %error "LONG_00408270"
    %endif
    times 4 - ($ - %%insn_00408270) db 0
    %%insn_00408274:
    jnz short 0x408280 ; 00408274 750A
    %if ($ - %%insn_00408274) > 2
        %error "LONG_00408274"
    %endif
    times 2 - ($ - %%insn_00408274) db 0
    %%insn_00408276:
    mov eax,0x304 ; 00408276 B804030000
    %if ($ - %%insn_00408276) > 5
        %error "LONG_00408276"
    %endif
    times 5 - ($ - %%insn_00408276) db 0
    %%insn_0040827b:
    jmp 0x4087f6 ; 0040827B E976050000
    %if ($ - %%insn_0040827b) > 5
        %error "LONG_0040827B"
    %endif
    times 5 - ($ - %%insn_0040827b) db 0
    %%insn_00408280:
    mov ecx,[ebp-0x40] ; 00408280 8B4DC0
    %if ($ - %%insn_00408280) > 3
        %error "LONG_00408280"
    %endif
    times 3 - ($ - %%insn_00408280) db 0
    %%insn_00408283:
    mov word [ecx],0x300 ; 00408283 66C7010003
    %if ($ - %%insn_00408283) > 5
        %error "LONG_00408283"
    %endif
    times 5 - ($ - %%insn_00408283) db 0
    %%insn_00408288:
    mov edx,[ebp-0x40] ; 00408288 8B55C0
    %if ($ - %%insn_00408288) > 3
        %error "LONG_00408288"
    %endif
    times 3 - ($ - %%insn_00408288) db 0
    %%insn_0040828b:
    mov word [edx+0x2],0xec ; 0040828B 66C74202EC00
    %if ($ - %%insn_0040828b) > 6
        %error "LONG_0040828B"
    %endif
    times 6 - ($ - %%insn_0040828b) db 0
    %%insn_00408291:
    mov dword [ebp-0x2c],0x0 ; 00408291 C745D400000000
    %if ($ - %%insn_00408291) > 7
        %error "LONG_00408291"
    %endif
    times 7 - ($ - %%insn_00408291) db 0
    %%insn_00408298:
    jmp short 0x4082a3 ; 00408298 EB09
    %if ($ - %%insn_00408298) > 2
        %error "LONG_00408298"
    %endif
    times 2 - ($ - %%insn_00408298) db 0
    %%insn_0040829a:
    mov eax,[ebp-0x2c] ; 0040829A 8B45D4
    %if ($ - %%insn_0040829a) > 3
        %error "LONG_0040829A"
    %endif
    times 3 - ($ - %%insn_0040829a) db 0
    %%insn_0040829d:
    add eax,0x1 ; 0040829D 83C001
    %if ($ - %%insn_0040829d) > 3
        %error "LONG_0040829D"
    %endif
    times 3 - ($ - %%insn_0040829d) db 0
    %%insn_004082a0:
    mov [ebp-0x2c],eax ; 004082A0 8945D4
    %if ($ - %%insn_004082a0) > 3
        %error "LONG_004082A0"
    %endif
    times 3 - ($ - %%insn_004082a0) db 0
    %%insn_004082a3:
    cmp dword [ebp-0x2c],0xec ; 004082A3 817DD4EC000000
    %if ($ - %%insn_004082a3) > 7
        %error "LONG_004082A3"
    %endif
    times 7 - ($ - %%insn_004082a3) db 0
    %%insn_004082aa:
    jnl short 0x4082dc ; 004082AA 7D30
    %if ($ - %%insn_004082aa) > 2
        %error "LONG_004082AA"
    %endif
    times 2 - ($ - %%insn_004082aa) db 0
    %%insn_004082ac:
    mov ecx,[ebp-0x2c] ; 004082AC 8B4DD4
    %if ($ - %%insn_004082ac) > 3
        %error "LONG_004082AC"
    %endif
    times 3 - ($ - %%insn_004082ac) db 0
    %%insn_004082af:
    mov edx,[ebp-0x40] ; 004082AF 8B55C0
    %if ($ - %%insn_004082af) > 3
        %error "LONG_004082AF"
    %endif
    times 3 - ($ - %%insn_004082af) db 0
    %%insn_004082b2:
    mov al,[ebp-0x2c] ; 004082B2 8A45D4
    %if ($ - %%insn_004082b2) > 3
        %error "LONG_004082B2"
    %endif
    times 3 - ($ - %%insn_004082b2) db 0
    %%insn_004082b5:
    mov [edx+ecx*4+0x4],al ; 004082B5 88448A04
    %if ($ - %%insn_004082b5) > 4
        %error "LONG_004082B5"
    %endif
    times 4 - ($ - %%insn_004082b5) db 0
    %%insn_004082b9:
    mov ecx,[ebp-0x2c] ; 004082B9 8B4DD4
    %if ($ - %%insn_004082b9) > 3
        %error "LONG_004082B9"
    %endif
    times 3 - ($ - %%insn_004082b9) db 0
    %%insn_004082bc:
    mov edx,[ebp-0x40] ; 004082BC 8B55C0
    %if ($ - %%insn_004082bc) > 3
        %error "LONG_004082BC"
    %endif
    times 3 - ($ - %%insn_004082bc) db 0
    %%insn_004082bf:
    mov byte [edx+ecx*4+0x5],0x0 ; 004082BF C6448A0500
    %if ($ - %%insn_004082bf) > 5
        %error "LONG_004082BF"
    %endif
    times 5 - ($ - %%insn_004082bf) db 0
    %%insn_004082c4:
    mov eax,[ebp-0x2c] ; 004082C4 8B45D4
    %if ($ - %%insn_004082c4) > 3
        %error "LONG_004082C4"
    %endif
    times 3 - ($ - %%insn_004082c4) db 0
    %%insn_004082c7:
    mov ecx,[ebp-0x40] ; 004082C7 8B4DC0
    %if ($ - %%insn_004082c7) > 3
        %error "LONG_004082C7"
    %endif
    times 3 - ($ - %%insn_004082c7) db 0
    %%insn_004082ca:
    mov byte [ecx+eax*4+0x6],0x0 ; 004082CA C644810600
    %if ($ - %%insn_004082ca) > 5
        %error "LONG_004082CA"
    %endif
    times 5 - ($ - %%insn_004082ca) db 0
    %%insn_004082cf:
    mov edx,[ebp-0x2c] ; 004082CF 8B55D4
    %if ($ - %%insn_004082cf) > 3
        %error "LONG_004082CF"
    %endif
    times 3 - ($ - %%insn_004082cf) db 0
    %%insn_004082d2:
    mov eax,[ebp-0x40] ; 004082D2 8B45C0
    %if ($ - %%insn_004082d2) > 3
        %error "LONG_004082D2"
    %endif
    times 3 - ($ - %%insn_004082d2) db 0
    %%insn_004082d5:
    mov byte [eax+edx*4+0x7],0x5 ; 004082D5 C644900705
    %if ($ - %%insn_004082d5) > 5
        %error "LONG_004082D5"
    %endif
    times 5 - ($ - %%insn_004082d5) db 0
    %%insn_004082da:
    jmp short 0x40829a ; 004082DA EBBE
    %if ($ - %%insn_004082da) > 2
        %error "LONG_004082DA"
    %endif
    times 2 - ($ - %%insn_004082da) db 0
    %%insn_004082dc:
    mov ecx,[ebp-0x40] ; 004082DC 8B4DC0
    %if ($ - %%insn_004082dc) > 3
        %error "LONG_004082DC"
    %endif
    times 3 - ($ - %%insn_004082dc) db 0
    %%insn_004082df:
    push ecx ; 004082DF 51
    %if ($ - %%insn_004082df) > 1
        %error "LONG_004082DF"
    %endif
    times 1 - ($ - %%insn_004082df) db 0
    %%insn_004082e0:
    call dword near [0x424398] ; 004082E0 FF1598434200
    %if ($ - %%insn_004082e0) > 6
        %error "LONG_004082E0"
    %endif
    times 6 - ($ - %%insn_004082e0) db 0
    %%insn_004082e6:
    mov [ebp-0x14],eax ; 004082E6 8945EC
    %if ($ - %%insn_004082e6) > 3
        %error "LONG_004082E6"
    %endif
    times 3 - ($ - %%insn_004082e6) db 0
    %%insn_004082e9:
    cmp dword [ebp-0x14],0x0 ; 004082E9 837DEC00
    %if ($ - %%insn_004082e9) > 4
        %error "LONG_004082E9"
    %endif
    times 4 - ($ - %%insn_004082e9) db 0
    %%insn_004082ed:
    jnz short 0x4082f9 ; 004082ED 750A
    %if ($ - %%insn_004082ed) > 2
        %error "LONG_004082ED"
    %endif
    times 2 - ($ - %%insn_004082ed) db 0
    %%insn_004082ef:
    mov eax,0x304 ; 004082EF B804030000
    %if ($ - %%insn_004082ef) > 5
        %error "LONG_004082EF"
    %endif
    times 5 - ($ - %%insn_004082ef) db 0
    %%insn_004082f4:
    jmp 0x4087f6 ; 004082F4 E9FD040000
    %if ($ - %%insn_004082f4) > 5
        %error "LONG_004082F4"
    %endif
    times 5 - ($ - %%insn_004082f4) db 0
    %%insn_004082f9:
    push dword 0x0 ; 004082F9 6A00
    %if ($ - %%insn_004082f9) > 2
        %error "LONG_004082F9"
    %endif
    times 2 - ($ - %%insn_004082f9) db 0
    %%insn_004082fb:
    mov edx,[ebp-0x14] ; 004082FB 8B55EC
    %if ($ - %%insn_004082fb) > 3
        %error "LONG_004082FB"
    %endif
    times 3 - ($ - %%insn_004082fb) db 0
    %%insn_004082fe:
    push edx ; 004082FE 52
    %if ($ - %%insn_004082fe) > 1
        %error "LONG_004082FE"
    %endif
    times 1 - ($ - %%insn_004082fe) db 0
    %%insn_004082ff:
    mov eax,[ebp-0x38] ; 004082FF 8B45C8
    %if ($ - %%insn_004082ff) > 3
        %error "LONG_004082FF"
    %endif
    times 3 - ($ - %%insn_004082ff) db 0
    %%insn_00408302:
    push eax ; 00408302 50
    %if ($ - %%insn_00408302) > 1
        %error "LONG_00408302"
    %endif
    times 1 - ($ - %%insn_00408302) db 0
    %%insn_00408303:
    call dword near [0x42439c] ; 00408303 FF159C434200
    %if ($ - %%insn_00408303) > 6
        %error "LONG_00408303"
    %endif
    times 6 - ($ - %%insn_00408303) db 0
    %%insn_00408309:
    mov [0x41f568],eax ; 00408309 A368F54100
    %if ($ - %%insn_00408309) > 5
        %error "LONG_00408309"
    %endif
    times 5 - ($ - %%insn_00408309) db 0
    %%insn_0040830e:
    cmp dword [0x41f568],0x0 ; 0040830E 833D68F5410000
    %if ($ - %%insn_0040830e) > 7
        %error "LONG_0040830E"
    %endif
    times 7 - ($ - %%insn_0040830e) db 0
    %%insn_00408315:
    jnz short 0x408321 ; 00408315 750A
    %if ($ - %%insn_00408315) > 2
        %error "LONG_00408315"
    %endif
    times 2 - ($ - %%insn_00408315) db 0
    %%insn_00408317:
    mov eax,0x304 ; 00408317 B804030000
    %if ($ - %%insn_00408317) > 5
        %error "LONG_00408317"
    %endif
    times 5 - ($ - %%insn_00408317) db 0
    %%insn_0040831c:
    jmp 0x4087f6 ; 0040831C E9D5040000
    %if ($ - %%insn_0040831c) > 5
        %error "LONG_0040831C"
    %endif
    times 5 - ($ - %%insn_0040831c) db 0
    %%insn_00408321:
    mov ecx,[ebp-0x38] ; 00408321 8B4DC8
    %if ($ - %%insn_00408321) > 3
        %error "LONG_00408321"
    %endif
    times 3 - ($ - %%insn_00408321) db 0
    %%insn_00408324:
    push ecx ; 00408324 51
    %if ($ - %%insn_00408324) > 1
        %error "LONG_00408324"
    %endif
    times 1 - ($ - %%insn_00408324) db 0
    %%insn_00408325:
    call dword near [0x42438c] ; 00408325 FF158C434200
    %if ($ - %%insn_00408325) > 6
        %error "LONG_00408325"
    %endif
    times 6 - ($ - %%insn_00408325) db 0
    %%insn_0040832b:
    mov edx,[ebp-0x40] ; 0040832B 8B55C0
    %if ($ - %%insn_0040832b) > 3
        %error "LONG_0040832B"
    %endif
    times 3 - ($ - %%insn_0040832b) db 0
    db 0x33, 0xC9 ; 0040832E 33C9 | xor ecx,ecx | encoding preserved
    %%insn_00408330:
    mov cx,[edx+0x2] ; 00408330 668B4A02
    %if ($ - %%insn_00408330) > 4
        %error "LONG_00408330"
    %endif
    times 4 - ($ - %%insn_00408330) db 0
    db 0x3B, 0xC1 ; 00408334 3BC1 | cmp eax,ecx | encoding preserved
    %%insn_00408336:
    jz short 0x408342 ; 00408336 740A
    %if ($ - %%insn_00408336) > 2
        %error "LONG_00408336"
    %endif
    times 2 - ($ - %%insn_00408336) db 0
    %%insn_00408338:
    mov eax,0x304 ; 00408338 B804030000
    %if ($ - %%insn_00408338) > 5
        %error "LONG_00408338"
    %endif
    times 5 - ($ - %%insn_00408338) db 0
    %%insn_0040833d:
    jmp 0x4087f6 ; 0040833D E9B4040000
    %if ($ - %%insn_0040833d) > 5
        %error "LONG_0040833D"
    %endif
    times 5 - ($ - %%insn_0040833d) db 0
    %%insn_00408342:
    push dword 0x0 ; 00408342 6A00
    %if ($ - %%insn_00408342) > 2
        %error "LONG_00408342"
    %endif
    times 2 - ($ - %%insn_00408342) db 0
    %%insn_00408344:
    mov edx,[0x41f568] ; 00408344 8B1568F54100
    %if ($ - %%insn_00408344) > 6
        %error "LONG_00408344"
    %endif
    times 6 - ($ - %%insn_00408344) db 0
    %%insn_0040834a:
    push edx ; 0040834A 52
    %if ($ - %%insn_0040834a) > 1
        %error "LONG_0040834A"
    %endif
    times 1 - ($ - %%insn_0040834a) db 0
    %%insn_0040834b:
    mov eax,[ebp-0x38] ; 0040834B 8B45C8
    %if ($ - %%insn_0040834b) > 3
        %error "LONG_0040834B"
    %endif
    times 3 - ($ - %%insn_0040834b) db 0
    %%insn_0040834e:
    push eax ; 0040834E 50
    %if ($ - %%insn_0040834e) > 1
        %error "LONG_0040834E"
    %endif
    times 1 - ($ - %%insn_0040834e) db 0
    %%insn_0040834f:
    call dword near [0x42439c] ; 0040834F FF159C434200
    %if ($ - %%insn_0040834f) > 6
        %error "LONG_0040834F"
    %endif
    times 6 - ($ - %%insn_0040834f) db 0
    %%insn_00408355:
    test eax,eax ; 00408355 85C0
    %if ($ - %%insn_00408355) > 2
        %error "LONG_00408355"
    %endif
    times 2 - ($ - %%insn_00408355) db 0
    %%insn_00408357:
    jnz short 0x408363 ; 00408357 750A
    %if ($ - %%insn_00408357) > 2
        %error "LONG_00408357"
    %endif
    times 2 - ($ - %%insn_00408357) db 0
    %%insn_00408359:
    mov eax,0x304 ; 00408359 B804030000
    %if ($ - %%insn_00408359) > 5
        %error "LONG_00408359"
    %endif
    times 5 - ($ - %%insn_00408359) db 0
    %%insn_0040835e:
    jmp 0x4087f6 ; 0040835E E993040000
    %if ($ - %%insn_0040835e) > 5
        %error "LONG_0040835E"
    %endif
    times 5 - ($ - %%insn_0040835e) db 0
    %%insn_00408363:
    mov ecx,[ebp-0x14] ; 00408363 8B4DEC
    %if ($ - %%insn_00408363) > 3
        %error "LONG_00408363"
    %endif
    times 3 - ($ - %%insn_00408363) db 0
    %%insn_00408366:
    push ecx ; 00408366 51
    %if ($ - %%insn_00408366) > 1
        %error "LONG_00408366"
    %endif
    times 1 - ($ - %%insn_00408366) db 0
    %%insn_00408367:
    call dword near [0x424388] ; 00408367 FF1588434200
    %if ($ - %%insn_00408367) > 6
        %error "LONG_00408367"
    %endif
    times 6 - ($ - %%insn_00408367) db 0
    %%insn_0040836d:
    test eax,eax ; 0040836D 85C0
    %if ($ - %%insn_0040836d) > 2
        %error "LONG_0040836D"
    %endif
    times 2 - ($ - %%insn_0040836d) db 0
    %%insn_0040836f:
    jnz short 0x40837b ; 0040836F 750A
    %if ($ - %%insn_0040836f) > 2
        %error "LONG_0040836F"
    %endif
    times 2 - ($ - %%insn_0040836f) db 0
    %%insn_00408371:
    mov eax,0x304 ; 00408371 B804030000
    %if ($ - %%insn_00408371) > 5
        %error "LONG_00408371"
    %endif
    times 5 - ($ - %%insn_00408371) db 0
    %%insn_00408376:
    jmp 0x4087f6 ; 00408376 E97B040000
    %if ($ - %%insn_00408376) > 5
        %error "LONG_00408376"
    %endif
    times 5 - ($ - %%insn_00408376) db 0
    %%insn_0040837b:
    mov dword [ebp-0x2c],0x0 ; 0040837B C745D400000000
    %if ($ - %%insn_0040837b) > 7
        %error "LONG_0040837B"
    %endif
    times 7 - ($ - %%insn_0040837b) db 0
    %%insn_00408382:
    jmp short 0x40838d ; 00408382 EB09
    %if ($ - %%insn_00408382) > 2
        %error "LONG_00408382"
    %endif
    times 2 - ($ - %%insn_00408382) db 0
    %%insn_00408384:
    mov edx,[ebp-0x2c] ; 00408384 8B55D4
    %if ($ - %%insn_00408384) > 3
        %error "LONG_00408384"
    %endif
    times 3 - ($ - %%insn_00408384) db 0
    %%insn_00408387:
    add edx,0x1 ; 00408387 83C201
    %if ($ - %%insn_00408387) > 3
        %error "LONG_00408387"
    %endif
    times 3 - ($ - %%insn_00408387) db 0
    %%insn_0040838a:
    mov [ebp-0x2c],edx ; 0040838A 8955D4
    %if ($ - %%insn_0040838a) > 3
        %error "LONG_0040838A"
    %endif
    times 3 - ($ - %%insn_0040838a) db 0
    %%insn_0040838d:
    cmp dword [ebp-0x2c],0x6 ; 0040838D 837DD406
    %if ($ - %%insn_0040838d) > 4
        %error "LONG_0040838D"
    %endif
    times 4 - ($ - %%insn_0040838d) db 0
    %%insn_00408391:
    jnl 0x40847a ; 00408391 0F8DE3000000
    %if ($ - %%insn_00408391) > 6
        %error "LONG_00408391"
    %endif
    times 6 - ($ - %%insn_00408391) db 0
    %%insn_00408397:
    mov dword [ebp-0x30],0x0 ; 00408397 C745D000000000
    %if ($ - %%insn_00408397) > 7
        %error "LONG_00408397"
    %endif
    times 7 - ($ - %%insn_00408397) db 0
    %%insn_0040839e:
    jmp short 0x4083a9 ; 0040839E EB09
    %if ($ - %%insn_0040839e) > 2
        %error "LONG_0040839E"
    %endif
    times 2 - ($ - %%insn_0040839e) db 0
    %%insn_004083a0:
    mov eax,[ebp-0x30] ; 004083A0 8B45D0
    %if ($ - %%insn_004083a0) > 3
        %error "LONG_004083A0"
    %endif
    times 3 - ($ - %%insn_004083a0) db 0
    %%insn_004083a3:
    add eax,0x1 ; 004083A3 83C001
    %if ($ - %%insn_004083a3) > 3
        %error "LONG_004083A3"
    %endif
    times 3 - ($ - %%insn_004083a3) db 0
    %%insn_004083a6:
    mov [ebp-0x30],eax ; 004083A6 8945D0
    %if ($ - %%insn_004083a6) > 3
        %error "LONG_004083A6"
    %endif
    times 3 - ($ - %%insn_004083a6) db 0
    %%insn_004083a9:
    cmp dword [ebp-0x30],0x6 ; 004083A9 837DD006
    %if ($ - %%insn_004083a9) > 4
        %error "LONG_004083A9"
    %endif
    times 4 - ($ - %%insn_004083a9) db 0
    %%insn_004083ad:
    jnl 0x408475 ; 004083AD 0F8DC2000000
    %if ($ - %%insn_004083ad) > 6
        %error "LONG_004083AD"
    %endif
    times 6 - ($ - %%insn_004083ad) db 0
    %%insn_004083b3:
    mov dword [ebp-0x34],0x0 ; 004083B3 C745CC00000000
    %if ($ - %%insn_004083b3) > 7
        %error "LONG_004083B3"
    %endif
    times 7 - ($ - %%insn_004083b3) db 0
    %%insn_004083ba:
    jmp short 0x4083c5 ; 004083BA EB09
    %if ($ - %%insn_004083ba) > 2
        %error "LONG_004083BA"
    %endif
    times 2 - ($ - %%insn_004083ba) db 0
    %%insn_004083bc:
    mov ecx,[ebp-0x34] ; 004083BC 8B4DCC
    %if ($ - %%insn_004083bc) > 3
        %error "LONG_004083BC"
    %endif
    times 3 - ($ - %%insn_004083bc) db 0
    %%insn_004083bf:
    add ecx,0x1 ; 004083BF 83C101
    %if ($ - %%insn_004083bf) > 3
        %error "LONG_004083BF"
    %endif
    times 3 - ($ - %%insn_004083bf) db 0
    %%insn_004083c2:
    mov [ebp-0x34],ecx ; 004083C2 894DCC
    %if ($ - %%insn_004083c2) > 3
        %error "LONG_004083C2"
    %endif
    times 3 - ($ - %%insn_004083c2) db 0
    %%insn_004083c5:
    cmp dword [ebp-0x34],0x6 ; 004083C5 837DCC06
    %if ($ - %%insn_004083c5) > 4
        %error "LONG_004083C5"
    %endif
    times 4 - ($ - %%insn_004083c5) db 0
    %%insn_004083c9:
    jnl 0x408470 ; 004083C9 0F8DA1000000
    %if ($ - %%insn_004083c9) > 6
        %error "LONG_004083C9"
    %endif
    times 6 - ($ - %%insn_004083c9) db 0
    %%insn_004083cf:
    mov eax,[ebp-0x2c] ; 004083CF 8B45D4
    %if ($ - %%insn_004083cf) > 3
        %error "LONG_004083CF"
    %endif
    times 3 - ($ - %%insn_004083cf) db 0
    %%insn_004083d2:
    imul eax,eax,0xff ; 004083D2 69C0FF000000
    %if ($ - %%insn_004083d2) > 6
        %error "LONG_004083D2"
    %endif
    times 6 - ($ - %%insn_004083d2) db 0
    %%insn_004083d8:
    cdq ; 004083D8 99
    %if ($ - %%insn_004083d8) > 1
        %error "LONG_004083D8"
    %endif
    times 1 - ($ - %%insn_004083d8) db 0
    %%insn_004083d9:
    mov ecx,0x6 ; 004083D9 B906000000
    %if ($ - %%insn_004083d9) > 5
        %error "LONG_004083D9"
    %endif
    times 5 - ($ - %%insn_004083d9) db 0
    %%insn_004083de:
    idiv ecx ; 004083DE F7F9
    %if ($ - %%insn_004083de) > 2
        %error "LONG_004083DE"
    %endif
    times 2 - ($ - %%insn_004083de) db 0
    %%insn_004083e0:
    mov edx,[ebp-0x2c] ; 004083E0 8B55D4
    %if ($ - %%insn_004083e0) > 3
        %error "LONG_004083E0"
    %endif
    times 3 - ($ - %%insn_004083e0) db 0
    %%insn_004083e3:
    imul edx,edx,0x24 ; 004083E3 6BD224
    %if ($ - %%insn_004083e3) > 3
        %error "LONG_004083E3"
    %endif
    times 3 - ($ - %%insn_004083e3) db 0
    %%insn_004083e6:
    mov ecx,[ebp-0x30] ; 004083E6 8B4DD0
    %if ($ - %%insn_004083e6) > 3
        %error "LONG_004083E6"
    %endif
    times 3 - ($ - %%insn_004083e6) db 0
    %%insn_004083e9:
    imul ecx,ecx,0x6 ; 004083E9 6BC906
    %if ($ - %%insn_004083e9) > 3
        %error "LONG_004083E9"
    %endif
    times 3 - ($ - %%insn_004083e9) db 0
    %%insn_004083ec:
    mov esi,[ebp-0x34] ; 004083EC 8B75CC
    %if ($ - %%insn_004083ec) > 3
        %error "LONG_004083EC"
    %endif
    times 3 - ($ - %%insn_004083ec) db 0
    db 0x03, 0xF2 ; 004083EF 03F2 | add esi,edx | encoding preserved
    db 0x03, 0xCE ; 004083F1 03CE | add ecx,esi | encoding preserved
    %%insn_004083f3:
    mov edx,[ebp-0x40] ; 004083F3 8B55C0
    %if ($ - %%insn_004083f3) > 3
        %error "LONG_004083F3"
    %endif
    times 3 - ($ - %%insn_004083f3) db 0
    %%insn_004083f6:
    mov [edx+ecx*4+0x4],al ; 004083F6 88448A04
    %if ($ - %%insn_004083f6) > 4
        %error "LONG_004083F6"
    %endif
    times 4 - ($ - %%insn_004083f6) db 0
    %%insn_004083fa:
    mov eax,[ebp-0x30] ; 004083FA 8B45D0
    %if ($ - %%insn_004083fa) > 3
        %error "LONG_004083FA"
    %endif
    times 3 - ($ - %%insn_004083fa) db 0
    %%insn_004083fd:
    imul eax,eax,0xff ; 004083FD 69C0FF000000
    %if ($ - %%insn_004083fd) > 6
        %error "LONG_004083FD"
    %endif
    times 6 - ($ - %%insn_004083fd) db 0
    %%insn_00408403:
    cdq ; 00408403 99
    %if ($ - %%insn_00408403) > 1
        %error "LONG_00408403"
    %endif
    times 1 - ($ - %%insn_00408403) db 0
    %%insn_00408404:
    mov ecx,0x6 ; 00408404 B906000000
    %if ($ - %%insn_00408404) > 5
        %error "LONG_00408404"
    %endif
    times 5 - ($ - %%insn_00408404) db 0
    %%insn_00408409:
    idiv ecx ; 00408409 F7F9
    %if ($ - %%insn_00408409) > 2
        %error "LONG_00408409"
    %endif
    times 2 - ($ - %%insn_00408409) db 0
    %%insn_0040840b:
    mov edx,[ebp-0x2c] ; 0040840B 8B55D4
    %if ($ - %%insn_0040840b) > 3
        %error "LONG_0040840B"
    %endif
    times 3 - ($ - %%insn_0040840b) db 0
    %%insn_0040840e:
    imul edx,edx,0x24 ; 0040840E 6BD224
    %if ($ - %%insn_0040840e) > 3
        %error "LONG_0040840E"
    %endif
    times 3 - ($ - %%insn_0040840e) db 0
    %%insn_00408411:
    mov ecx,[ebp-0x30] ; 00408411 8B4DD0
    %if ($ - %%insn_00408411) > 3
        %error "LONG_00408411"
    %endif
    times 3 - ($ - %%insn_00408411) db 0
    %%insn_00408414:
    imul ecx,ecx,0x6 ; 00408414 6BC906
    %if ($ - %%insn_00408414) > 3
        %error "LONG_00408414"
    %endif
    times 3 - ($ - %%insn_00408414) db 0
    %%insn_00408417:
    mov esi,[ebp-0x34] ; 00408417 8B75CC
    %if ($ - %%insn_00408417) > 3
        %error "LONG_00408417"
    %endif
    times 3 - ($ - %%insn_00408417) db 0
    db 0x03, 0xF2 ; 0040841A 03F2 | add esi,edx | encoding preserved
    db 0x03, 0xCE ; 0040841C 03CE | add ecx,esi | encoding preserved
    %%insn_0040841e:
    mov edx,[ebp-0x40] ; 0040841E 8B55C0
    %if ($ - %%insn_0040841e) > 3
        %error "LONG_0040841E"
    %endif
    times 3 - ($ - %%insn_0040841e) db 0
    %%insn_00408421:
    mov [edx+ecx*4+0x5],al ; 00408421 88448A05
    %if ($ - %%insn_00408421) > 4
        %error "LONG_00408421"
    %endif
    times 4 - ($ - %%insn_00408421) db 0
    %%insn_00408425:
    mov eax,[ebp-0x34] ; 00408425 8B45CC
    %if ($ - %%insn_00408425) > 3
        %error "LONG_00408425"
    %endif
    times 3 - ($ - %%insn_00408425) db 0
    %%insn_00408428:
    imul eax,eax,0xff ; 00408428 69C0FF000000
    %if ($ - %%insn_00408428) > 6
        %error "LONG_00408428"
    %endif
    times 6 - ($ - %%insn_00408428) db 0
    %%insn_0040842e:
    cdq ; 0040842E 99
    %if ($ - %%insn_0040842e) > 1
        %error "LONG_0040842E"
    %endif
    times 1 - ($ - %%insn_0040842e) db 0
    %%insn_0040842f:
    mov ecx,0x6 ; 0040842F B906000000
    %if ($ - %%insn_0040842f) > 5
        %error "LONG_0040842F"
    %endif
    times 5 - ($ - %%insn_0040842f) db 0
    %%insn_00408434:
    idiv ecx ; 00408434 F7F9
    %if ($ - %%insn_00408434) > 2
        %error "LONG_00408434"
    %endif
    times 2 - ($ - %%insn_00408434) db 0
    %%insn_00408436:
    mov edx,[ebp-0x2c] ; 00408436 8B55D4
    %if ($ - %%insn_00408436) > 3
        %error "LONG_00408436"
    %endif
    times 3 - ($ - %%insn_00408436) db 0
    %%insn_00408439:
    imul edx,edx,0x24 ; 00408439 6BD224
    %if ($ - %%insn_00408439) > 3
        %error "LONG_00408439"
    %endif
    times 3 - ($ - %%insn_00408439) db 0
    %%insn_0040843c:
    mov ecx,[ebp-0x30] ; 0040843C 8B4DD0
    %if ($ - %%insn_0040843c) > 3
        %error "LONG_0040843C"
    %endif
    times 3 - ($ - %%insn_0040843c) db 0
    %%insn_0040843f:
    imul ecx,ecx,0x6 ; 0040843F 6BC906
    %if ($ - %%insn_0040843f) > 3
        %error "LONG_0040843F"
    %endif
    times 3 - ($ - %%insn_0040843f) db 0
    %%insn_00408442:
    mov esi,[ebp-0x34] ; 00408442 8B75CC
    %if ($ - %%insn_00408442) > 3
        %error "LONG_00408442"
    %endif
    times 3 - ($ - %%insn_00408442) db 0
    db 0x03, 0xF2 ; 00408445 03F2 | add esi,edx | encoding preserved
    db 0x03, 0xCE ; 00408447 03CE | add ecx,esi | encoding preserved
    %%insn_00408449:
    mov edx,[ebp-0x40] ; 00408449 8B55C0
    %if ($ - %%insn_00408449) > 3
        %error "LONG_00408449"
    %endif
    times 3 - ($ - %%insn_00408449) db 0
    %%insn_0040844c:
    mov [edx+ecx*4+0x6],al ; 0040844C 88448A06
    %if ($ - %%insn_0040844c) > 4
        %error "LONG_0040844C"
    %endif
    times 4 - ($ - %%insn_0040844c) db 0
    %%insn_00408450:
    mov eax,[ebp-0x2c] ; 00408450 8B45D4
    %if ($ - %%insn_00408450) > 3
        %error "LONG_00408450"
    %endif
    times 3 - ($ - %%insn_00408450) db 0
    %%insn_00408453:
    imul eax,eax,0x24 ; 00408453 6BC024
    %if ($ - %%insn_00408453) > 3
        %error "LONG_00408453"
    %endif
    times 3 - ($ - %%insn_00408453) db 0
    %%insn_00408456:
    mov ecx,[ebp-0x30] ; 00408456 8B4DD0
    %if ($ - %%insn_00408456) > 3
        %error "LONG_00408456"
    %endif
    times 3 - ($ - %%insn_00408456) db 0
    %%insn_00408459:
    imul ecx,ecx,0x6 ; 00408459 6BC906
    %if ($ - %%insn_00408459) > 3
        %error "LONG_00408459"
    %endif
    times 3 - ($ - %%insn_00408459) db 0
    %%insn_0040845c:
    mov edx,[ebp-0x34] ; 0040845C 8B55CC
    %if ($ - %%insn_0040845c) > 3
        %error "LONG_0040845C"
    %endif
    times 3 - ($ - %%insn_0040845c) db 0
    db 0x03, 0xD0 ; 0040845F 03D0 | add edx,eax | encoding preserved
    db 0x03, 0xCA ; 00408461 03CA | add ecx,edx | encoding preserved
    %%insn_00408463:
    mov eax,[ebp-0x40] ; 00408463 8B45C0
    %if ($ - %%insn_00408463) > 3
        %error "LONG_00408463"
    %endif
    times 3 - ($ - %%insn_00408463) db 0
    %%insn_00408466:
    mov byte [eax+ecx*4+0x7],0x5 ; 00408466 C644880705
    %if ($ - %%insn_00408466) > 5
        %error "LONG_00408466"
    %endif
    times 5 - ($ - %%insn_00408466) db 0
    %%insn_0040846b:
    jmp 0x4083bc ; 0040846B E94CFFFFFF
    %if ($ - %%insn_0040846b) > 5
        %error "LONG_0040846B"
    %endif
    times 5 - ($ - %%insn_0040846b) db 0
    %%insn_00408470:
    jmp 0x4083a0 ; 00408470 E92BFFFFFF
    %if ($ - %%insn_00408470) > 5
        %error "LONG_00408470"
    %endif
    times 5 - ($ - %%insn_00408470) db 0
    %%insn_00408475:
    jmp 0x408384 ; 00408475 E90AFFFFFF
    %if ($ - %%insn_00408475) > 5
        %error "LONG_00408475"
    %endif
    times 5 - ($ - %%insn_00408475) db 0
    %%insn_0040847a:
    mov dword [ebp-0x2c],0x0 ; 0040847A C745D400000000
    %if ($ - %%insn_0040847a) > 7
        %error "LONG_0040847A"
    %endif
    times 7 - ($ - %%insn_0040847a) db 0
    %%insn_00408481:
    jmp short 0x40848c ; 00408481 EB09
    %if ($ - %%insn_00408481) > 2
        %error "LONG_00408481"
    %endif
    times 2 - ($ - %%insn_00408481) db 0
    %%insn_00408483:
    mov ecx,[ebp-0x2c] ; 00408483 8B4DD4
    %if ($ - %%insn_00408483) > 3
        %error "LONG_00408483"
    %endif
    times 3 - ($ - %%insn_00408483) db 0
    %%insn_00408486:
    add ecx,0x1 ; 00408486 83C101
    %if ($ - %%insn_00408486) > 3
        %error "LONG_00408486"
    %endif
    times 3 - ($ - %%insn_00408486) db 0
    %%insn_00408489:
    mov [ebp-0x2c],ecx ; 00408489 894DD4
    %if ($ - %%insn_00408489) > 3
        %error "LONG_00408489"
    %endif
    times 3 - ($ - %%insn_00408489) db 0
    %%insn_0040848c:
    cmp dword [ebp-0x2c],0x14 ; 0040848C 837DD414
    %if ($ - %%insn_0040848c) > 4
        %error "LONG_0040848C"
    %endif
    times 4 - ($ - %%insn_0040848c) db 0
    %%insn_00408490:
    jnl short 0x4084fc ; 00408490 7D6A
    %if ($ - %%insn_00408490) > 2
        %error "LONG_00408490"
    %endif
    times 2 - ($ - %%insn_00408490) db 0
    %%insn_00408492:
    mov eax,[ebp-0x2c] ; 00408492 8B45D4
    %if ($ - %%insn_00408492) > 3
        %error "LONG_00408492"
    %endif
    times 3 - ($ - %%insn_00408492) db 0
    %%insn_00408495:
    imul eax,eax,0xff ; 00408495 69C0FF000000
    %if ($ - %%insn_00408495) > 6
        %error "LONG_00408495"
    %endif
    times 6 - ($ - %%insn_00408495) db 0
    %%insn_0040849b:
    cdq ; 0040849B 99
    %if ($ - %%insn_0040849b) > 1
        %error "LONG_0040849B"
    %endif
    times 1 - ($ - %%insn_0040849b) db 0
    %%insn_0040849c:
    mov ecx,0x14 ; 0040849C B914000000
    %if ($ - %%insn_0040849c) > 5
        %error "LONG_0040849C"
    %endif
    times 5 - ($ - %%insn_0040849c) db 0
    %%insn_004084a1:
    idiv ecx ; 004084A1 F7F9
    %if ($ - %%insn_004084a1) > 2
        %error "LONG_004084A1"
    %endif
    times 2 - ($ - %%insn_004084a1) db 0
    %%insn_004084a3:
    mov edx,[ebp-0x2c] ; 004084A3 8B55D4
    %if ($ - %%insn_004084a3) > 3
        %error "LONG_004084A3"
    %endif
    times 3 - ($ - %%insn_004084a3) db 0
    %%insn_004084a6:
    mov ecx,[ebp-0x40] ; 004084A6 8B4DC0
    %if ($ - %%insn_004084a6) > 3
        %error "LONG_004084A6"
    %endif
    times 3 - ($ - %%insn_004084a6) db 0
    %%insn_004084a9:
    mov [ecx+edx*4+0x364],al ; 004084A9 88849164030000
    %if ($ - %%insn_004084a9) > 7
        %error "LONG_004084A9"
    %endif
    times 7 - ($ - %%insn_004084a9) db 0
    %%insn_004084b0:
    mov eax,[ebp-0x2c] ; 004084B0 8B45D4
    %if ($ - %%insn_004084b0) > 3
        %error "LONG_004084B0"
    %endif
    times 3 - ($ - %%insn_004084b0) db 0
    %%insn_004084b3:
    imul eax,eax,0xff ; 004084B3 69C0FF000000
    %if ($ - %%insn_004084b3) > 6
        %error "LONG_004084B3"
    %endif
    times 6 - ($ - %%insn_004084b3) db 0
    %%insn_004084b9:
    cdq ; 004084B9 99
    %if ($ - %%insn_004084b9) > 1
        %error "LONG_004084B9"
    %endif
    times 1 - ($ - %%insn_004084b9) db 0
    %%insn_004084ba:
    mov ecx,0x14 ; 004084BA B914000000
    %if ($ - %%insn_004084ba) > 5
        %error "LONG_004084BA"
    %endif
    times 5 - ($ - %%insn_004084ba) db 0
    %%insn_004084bf:
    idiv ecx ; 004084BF F7F9
    %if ($ - %%insn_004084bf) > 2
        %error "LONG_004084BF"
    %endif
    times 2 - ($ - %%insn_004084bf) db 0
    %%insn_004084c1:
    mov edx,[ebp-0x2c] ; 004084C1 8B55D4
    %if ($ - %%insn_004084c1) > 3
        %error "LONG_004084C1"
    %endif
    times 3 - ($ - %%insn_004084c1) db 0
    %%insn_004084c4:
    mov ecx,[ebp-0x40] ; 004084C4 8B4DC0
    %if ($ - %%insn_004084c4) > 3
        %error "LONG_004084C4"
    %endif
    times 3 - ($ - %%insn_004084c4) db 0
    %%insn_004084c7:
    mov [ecx+edx*4+0x365],al ; 004084C7 88849165030000
    %if ($ - %%insn_004084c7) > 7
        %error "LONG_004084C7"
    %endif
    times 7 - ($ - %%insn_004084c7) db 0
    %%insn_004084ce:
    mov eax,[ebp-0x2c] ; 004084CE 8B45D4
    %if ($ - %%insn_004084ce) > 3
        %error "LONG_004084CE"
    %endif
    times 3 - ($ - %%insn_004084ce) db 0
    %%insn_004084d1:
    imul eax,eax,0xff ; 004084D1 69C0FF000000
    %if ($ - %%insn_004084d1) > 6
        %error "LONG_004084D1"
    %endif
    times 6 - ($ - %%insn_004084d1) db 0
    %%insn_004084d7:
    cdq ; 004084D7 99
    %if ($ - %%insn_004084d7) > 1
        %error "LONG_004084D7"
    %endif
    times 1 - ($ - %%insn_004084d7) db 0
    %%insn_004084d8:
    mov ecx,0x14 ; 004084D8 B914000000
    %if ($ - %%insn_004084d8) > 5
        %error "LONG_004084D8"
    %endif
    times 5 - ($ - %%insn_004084d8) db 0
    %%insn_004084dd:
    idiv ecx ; 004084DD F7F9
    %if ($ - %%insn_004084dd) > 2
        %error "LONG_004084DD"
    %endif
    times 2 - ($ - %%insn_004084dd) db 0
    %%insn_004084df:
    mov edx,[ebp-0x2c] ; 004084DF 8B55D4
    %if ($ - %%insn_004084df) > 3
        %error "LONG_004084DF"
    %endif
    times 3 - ($ - %%insn_004084df) db 0
    %%insn_004084e2:
    mov ecx,[ebp-0x40] ; 004084E2 8B4DC0
    %if ($ - %%insn_004084e2) > 3
        %error "LONG_004084E2"
    %endif
    times 3 - ($ - %%insn_004084e2) db 0
    %%insn_004084e5:
    mov [ecx+edx*4+0x366],al ; 004084E5 88849166030000
    %if ($ - %%insn_004084e5) > 7
        %error "LONG_004084E5"
    %endif
    times 7 - ($ - %%insn_004084e5) db 0
    %%insn_004084ec:
    mov edx,[ebp-0x2c] ; 004084EC 8B55D4
    %if ($ - %%insn_004084ec) > 3
        %error "LONG_004084EC"
    %endif
    times 3 - ($ - %%insn_004084ec) db 0
    %%insn_004084ef:
    mov eax,[ebp-0x40] ; 004084EF 8B45C0
    %if ($ - %%insn_004084ef) > 3
        %error "LONG_004084EF"
    %endif
    times 3 - ($ - %%insn_004084ef) db 0
    %%insn_004084f2:
    mov byte [eax+edx*4+0x367],0x5 ; 004084F2 C684906703000005
    %if ($ - %%insn_004084f2) > 8
        %error "LONG_004084F2"
    %endif
    times 8 - ($ - %%insn_004084f2) db 0
    %%insn_004084fa:
    jmp short 0x408483 ; 004084FA EB87
    %if ($ - %%insn_004084fa) > 2
        %error "LONG_004084FA"
    %endif
    times 2 - ($ - %%insn_004084fa) db 0
    %%insn_004084fc:
    mov ecx,[ebp-0x40] ; 004084FC 8B4DC0
    %if ($ - %%insn_004084fc) > 3
        %error "LONG_004084FC"
    %endif
    times 3 - ($ - %%insn_004084fc) db 0
    %%insn_004084ff:
    push ecx ; 004084FF 51
    %if ($ - %%insn_004084ff) > 1
        %error "LONG_004084FF"
    %endif
    times 1 - ($ - %%insn_004084ff) db 0
    %%insn_00408500:
    call dword near [0x424398] ; 00408500 FF1598434200
    %if ($ - %%insn_00408500) > 6
        %error "LONG_00408500"
    %endif
    times 6 - ($ - %%insn_00408500) db 0
    %%insn_00408506:
    mov [ebp-0x14],eax ; 00408506 8945EC
    %if ($ - %%insn_00408506) > 3
        %error "LONG_00408506"
    %endif
    times 3 - ($ - %%insn_00408506) db 0
    %%insn_00408509:
    cmp dword [ebp-0x14],0x0 ; 00408509 837DEC00
    %if ($ - %%insn_00408509) > 4
        %error "LONG_00408509"
    %endif
    times 4 - ($ - %%insn_00408509) db 0
    %%insn_0040850d:
    jnz short 0x408519 ; 0040850D 750A
    %if ($ - %%insn_0040850d) > 2
        %error "LONG_0040850D"
    %endif
    times 2 - ($ - %%insn_0040850d) db 0
    %%insn_0040850f:
    mov eax,0x304 ; 0040850F B804030000
    %if ($ - %%insn_0040850f) > 5
        %error "LONG_0040850F"
    %endif
    times 5 - ($ - %%insn_0040850f) db 0
    %%insn_00408514:
    jmp 0x4087f6 ; 00408514 E9DD020000
    %if ($ - %%insn_00408514) > 5
        %error "LONG_00408514"
    %endif
    times 5 - ($ - %%insn_00408514) db 0
    %%insn_00408519:
    push dword 0x0 ; 00408519 6A00
    %if ($ - %%insn_00408519) > 2
        %error "LONG_00408519"
    %endif
    times 2 - ($ - %%insn_00408519) db 0
    %%insn_0040851b:
    mov edx,[ebp-0x14] ; 0040851B 8B55EC
    %if ($ - %%insn_0040851b) > 3
        %error "LONG_0040851B"
    %endif
    times 3 - ($ - %%insn_0040851b) db 0
    %%insn_0040851e:
    push edx ; 0040851E 52
    %if ($ - %%insn_0040851e) > 1
        %error "LONG_0040851E"
    %endif
    times 1 - ($ - %%insn_0040851e) db 0
    %%insn_0040851f:
    mov eax,[ebp-0x38] ; 0040851F 8B45C8
    %if ($ - %%insn_0040851f) > 3
        %error "LONG_0040851F"
    %endif
    times 3 - ($ - %%insn_0040851f) db 0
    %%insn_00408522:
    push eax ; 00408522 50
    %if ($ - %%insn_00408522) > 1
        %error "LONG_00408522"
    %endif
    times 1 - ($ - %%insn_00408522) db 0
    %%insn_00408523:
    call dword near [0x42439c] ; 00408523 FF159C434200
    %if ($ - %%insn_00408523) > 6
        %error "LONG_00408523"
    %endif
    times 6 - ($ - %%insn_00408523) db 0
    %%insn_00408529:
    test eax,eax ; 00408529 85C0
    %if ($ - %%insn_00408529) > 2
        %error "LONG_00408529"
    %endif
    times 2 - ($ - %%insn_00408529) db 0
    %%insn_0040852b:
    jnz short 0x408537 ; 0040852B 750A
    %if ($ - %%insn_0040852b) > 2
        %error "LONG_0040852B"
    %endif
    times 2 - ($ - %%insn_0040852b) db 0
    %%insn_0040852d:
    mov eax,0x304 ; 0040852D B804030000
    %if ($ - %%insn_0040852d) > 5
        %error "LONG_0040852D"
    %endif
    times 5 - ($ - %%insn_0040852d) db 0
    %%insn_00408532:
    jmp 0x4087f6 ; 00408532 E9BF020000
    %if ($ - %%insn_00408532) > 5
        %error "LONG_00408532"
    %endif
    times 5 - ($ - %%insn_00408532) db 0
    %%insn_00408537:
    mov ecx,[ebp-0x38] ; 00408537 8B4DC8
    %if ($ - %%insn_00408537) > 3
        %error "LONG_00408537"
    %endif
    times 3 - ($ - %%insn_00408537) db 0
    %%insn_0040853a:
    push ecx ; 0040853A 51
    %if ($ - %%insn_0040853a) > 1
        %error "LONG_0040853A"
    %endif
    times 1 - ($ - %%insn_0040853a) db 0
    %%insn_0040853b:
    call dword near [0x42438c] ; 0040853B FF158C434200
    %if ($ - %%insn_0040853b) > 6
        %error "LONG_0040853B"
    %endif
    times 6 - ($ - %%insn_0040853b) db 0
    %%insn_00408541:
    mov edx,[ebp-0x40] ; 00408541 8B55C0
    %if ($ - %%insn_00408541) > 3
        %error "LONG_00408541"
    %endif
    times 3 - ($ - %%insn_00408541) db 0
    db 0x33, 0xC9 ; 00408544 33C9 | xor ecx,ecx | encoding preserved
    %%insn_00408546:
    mov cx,[edx+0x2] ; 00408546 668B4A02
    %if ($ - %%insn_00408546) > 4
        %error "LONG_00408546"
    %endif
    times 4 - ($ - %%insn_00408546) db 0
    db 0x3B, 0xC1 ; 0040854A 3BC1 | cmp eax,ecx | encoding preserved
    %%insn_0040854c:
    jz short 0x408558 ; 0040854C 740A
    %if ($ - %%insn_0040854c) > 2
        %error "LONG_0040854C"
    %endif
    times 2 - ($ - %%insn_0040854c) db 0
    %%insn_0040854e:
    mov eax,0x304 ; 0040854E B804030000
    %if ($ - %%insn_0040854e) > 5
        %error "LONG_0040854E"
    %endif
    times 5 - ($ - %%insn_0040854e) db 0
    %%insn_00408553:
    jmp 0x4087f6 ; 00408553 E99E020000
    %if ($ - %%insn_00408553) > 5
        %error "LONG_00408553"
    %endif
    times 5 - ($ - %%insn_00408553) db 0
    %%insn_00408558:
    mov edx,[ebp-0x40] ; 00408558 8B55C0
    %if ($ - %%insn_00408558) > 3
        %error "LONG_00408558"
    %endif
    times 3 - ($ - %%insn_00408558) db 0
    %%insn_0040855b:
    add edx,0x4 ; 0040855B 83C204
    %if ($ - %%insn_0040855b) > 3
        %error "LONG_0040855B"
    %endif
    times 3 - ($ - %%insn_0040855b) db 0
    %%insn_0040855e:
    push edx ; 0040855E 52
    %if ($ - %%insn_0040855e) > 1
        %error "LONG_0040855E"
    %endif
    times 1 - ($ - %%insn_0040855e) db 0
    %%insn_0040855f:
    push dword 0x100 ; 0040855F 6800010000
    %if ($ - %%insn_0040855f) > 5
        %error "LONG_0040855F"
    %endif
    times 5 - ($ - %%insn_0040855f) db 0
    %%insn_00408564:
    push dword 0x0 ; 00408564 6A00
    %if ($ - %%insn_00408564) > 2
        %error "LONG_00408564"
    %endif
    times 2 - ($ - %%insn_00408564) db 0
    %%insn_00408566:
    mov eax,[ebp-0x38] ; 00408566 8B45C8
    %if ($ - %%insn_00408566) > 3
        %error "LONG_00408566"
    %endif
    times 3 - ($ - %%insn_00408566) db 0
    %%insn_00408569:
    push eax ; 00408569 50
    %if ($ - %%insn_00408569) > 1
        %error "LONG_00408569"
    %endif
    times 1 - ($ - %%insn_00408569) db 0
    %%insn_0040856a:
    call dword near [0x424384] ; 0040856A FF1584434200
    %if ($ - %%insn_0040856a) > 6
        %error "LONG_0040856A"
    %endif
    times 6 - ($ - %%insn_0040856a) db 0
    %%insn_00408570:
    cmp eax,0x100 ; 00408570 3D00010000
    %if ($ - %%insn_00408570) > 5
        %error "LONG_00408570"
    %endif
    times 5 - ($ - %%insn_00408570) db 0
    %%insn_00408575:
    jz short 0x408581 ; 00408575 740A
    %if ($ - %%insn_00408575) > 2
        %error "LONG_00408575"
    %endif
    times 2 - ($ - %%insn_00408575) db 0
    %%insn_00408577:
    mov eax,0x304 ; 00408577 B804030000
    %if ($ - %%insn_00408577) > 5
        %error "LONG_00408577"
    %endif
    times 5 - ($ - %%insn_00408577) db 0
    %%insn_0040857c:
    jmp 0x4087f6 ; 0040857C E975020000
    %if ($ - %%insn_0040857c) > 5
        %error "LONG_0040857C"
    %endif
    times 5 - ($ - %%insn_0040857c) db 0
    %%insn_00408581:
    mov dword [ebp-0x2c],0xa ; 00408581 C745D40A000000
    %if ($ - %%insn_00408581) > 7
        %error "LONG_00408581"
    %endif
    times 7 - ($ - %%insn_00408581) db 0
    %%insn_00408588:
    jmp short 0x408593 ; 00408588 EB09
    %if ($ - %%insn_00408588) > 2
        %error "LONG_00408588"
    %endif
    times 2 - ($ - %%insn_00408588) db 0
    %%insn_0040858a:
    mov ecx,[ebp-0x2c] ; 0040858A 8B4DD4
    %if ($ - %%insn_0040858a) > 3
        %error "LONG_0040858A"
    %endif
    times 3 - ($ - %%insn_0040858a) db 0
    %%insn_0040858d:
    add ecx,0x1 ; 0040858D 83C101
    %if ($ - %%insn_0040858d) > 3
        %error "LONG_0040858D"
    %endif
    times 3 - ($ - %%insn_0040858d) db 0
    %%insn_00408590:
    mov [ebp-0x2c],ecx ; 00408590 894DD4
    %if ($ - %%insn_00408590) > 3
        %error "LONG_00408590"
    %endif
    times 3 - ($ - %%insn_00408590) db 0
    %%insn_00408593:
    cmp dword [ebp-0x2c],0xf6 ; 00408593 817DD4F6000000
    %if ($ - %%insn_00408593) > 7
        %error "LONG_00408593"
    %endif
    times 7 - ($ - %%insn_00408593) db 0
    %%insn_0040859a:
    jnl short 0x4085a9 ; 0040859A 7D0D
    %if ($ - %%insn_0040859a) > 2
        %error "LONG_0040859A"
    %endif
    times 2 - ($ - %%insn_0040859a) db 0
    %%insn_0040859c:
    mov edx,[ebp-0x2c] ; 0040859C 8B55D4
    %if ($ - %%insn_0040859c) > 3
        %error "LONG_0040859C"
    %endif
    times 3 - ($ - %%insn_0040859c) db 0
    %%insn_0040859f:
    mov eax,[ebp-0x40] ; 0040859F 8B45C0
    %if ($ - %%insn_0040859f) > 3
        %error "LONG_0040859F"
    %endif
    times 3 - ($ - %%insn_0040859f) db 0
    %%insn_004085a2:
    mov byte [eax+edx*4+0x7],0x5 ; 004085A2 C644900705
    %if ($ - %%insn_004085a2) > 5
        %error "LONG_004085A2"
    %endif
    times 5 - ($ - %%insn_004085a2) db 0
    %%insn_004085a7:
    jmp short 0x40858a ; 004085A7 EBE1
    %if ($ - %%insn_004085a7) > 2
        %error "LONG_004085A7"
    %endif
    times 2 - ($ - %%insn_004085a7) db 0
    %%insn_004085a9:
    mov ecx,[ebp-0x40] ; 004085A9 8B4DC0
    %if ($ - %%insn_004085a9) > 3
        %error "LONG_004085A9"
    %endif
    times 3 - ($ - %%insn_004085a9) db 0
    %%insn_004085ac:
    mov word [ecx+0x2],0x100 ; 004085AC 66C741020001
    %if ($ - %%insn_004085ac) > 6
        %error "LONG_004085AC"
    %endif
    times 6 - ($ - %%insn_004085ac) db 0
    %%insn_004085b2:
    mov edx,[ebp-0x40] ; 004085B2 8B55C0
    %if ($ - %%insn_004085b2) > 3
        %error "LONG_004085B2"
    %endif
    times 3 - ($ - %%insn_004085b2) db 0
    %%insn_004085b5:
    push edx ; 004085B5 52
    %if ($ - %%insn_004085b5) > 1
        %error "LONG_004085B5"
    %endif
    times 1 - ($ - %%insn_004085b5) db 0
    %%insn_004085b6:
    call dword near [0x424398] ; 004085B6 FF1598434200
    %if ($ - %%insn_004085b6) > 6
        %error "LONG_004085B6"
    %endif
    times 6 - ($ - %%insn_004085b6) db 0
    %%insn_004085bc:
    mov [0x41f56c],eax ; 004085BC A36CF54100
    %if ($ - %%insn_004085bc) > 5
        %error "LONG_004085BC"
    %endif
    times 5 - ($ - %%insn_004085bc) db 0
    %%insn_004085c1:
    cmp dword [0x41f56c],0x0 ; 004085C1 833D6CF5410000
    %if ($ - %%insn_004085c1) > 7
        %error "LONG_004085C1"
    %endif
    times 7 - ($ - %%insn_004085c1) db 0
    %%insn_004085c8:
    jnz short 0x4085d4 ; 004085C8 750A
    %if ($ - %%insn_004085c8) > 2
        %error "LONG_004085C8"
    %endif
    times 2 - ($ - %%insn_004085c8) db 0
    %%insn_004085ca:
    mov eax,0x304 ; 004085CA B804030000
    %if ($ - %%insn_004085ca) > 5
        %error "LONG_004085CA"
    %endif
    times 5 - ($ - %%insn_004085ca) db 0
    %%insn_004085cf:
    jmp 0x4087f6 ; 004085CF E922020000
    %if ($ - %%insn_004085cf) > 5
        %error "LONG_004085CF"
    %endif
    times 5 - ($ - %%insn_004085cf) db 0
    %%insn_004085d4:
    push dword 0x0 ; 004085D4 6A00
    %if ($ - %%insn_004085d4) > 2
        %error "LONG_004085D4"
    %endif
    times 2 - ($ - %%insn_004085d4) db 0
    %%insn_004085d6:
    mov eax,[0x41f56c] ; 004085D6 A16CF54100
    %if ($ - %%insn_004085d6) > 5
        %error "LONG_004085D6"
    %endif
    times 5 - ($ - %%insn_004085d6) db 0
    %%insn_004085db:
    push eax ; 004085DB 50
    %if ($ - %%insn_004085db) > 1
        %error "LONG_004085DB"
    %endif
    times 1 - ($ - %%insn_004085db) db 0
    %%insn_004085dc:
    mov ecx,[ebp-0x38] ; 004085DC 8B4DC8
    %if ($ - %%insn_004085dc) > 3
        %error "LONG_004085DC"
    %endif
    times 3 - ($ - %%insn_004085dc) db 0
    %%insn_004085df:
    push ecx ; 004085DF 51
    %if ($ - %%insn_004085df) > 1
        %error "LONG_004085DF"
    %endif
    times 1 - ($ - %%insn_004085df) db 0
    %%insn_004085e0:
    call dword near [0x42439c] ; 004085E0 FF159C434200
    %if ($ - %%insn_004085e0) > 6
        %error "LONG_004085E0"
    %endif
    times 6 - ($ - %%insn_004085e0) db 0
    %%insn_004085e6:
    test eax,eax ; 004085E6 85C0
    %if ($ - %%insn_004085e6) > 2
        %error "LONG_004085E6"
    %endif
    times 2 - ($ - %%insn_004085e6) db 0
    %%insn_004085e8:
    jnz short 0x4085f4 ; 004085E8 750A
    %if ($ - %%insn_004085e8) > 2
        %error "LONG_004085E8"
    %endif
    times 2 - ($ - %%insn_004085e8) db 0
    %%insn_004085ea:
    mov eax,0x304 ; 004085EA B804030000
    %if ($ - %%insn_004085ea) > 5
        %error "LONG_004085EA"
    %endif
    times 5 - ($ - %%insn_004085ea) db 0
    %%insn_004085ef:
    jmp 0x4087f6 ; 004085EF E902020000
    %if ($ - %%insn_004085ef) > 5
        %error "LONG_004085EF"
    %endif
    times 5 - ($ - %%insn_004085ef) db 0
    %%insn_004085f4:
    mov edx,[ebp-0x14] ; 004085F4 8B55EC
    %if ($ - %%insn_004085f4) > 3
        %error "LONG_004085F4"
    %endif
    times 3 - ($ - %%insn_004085f4) db 0
    %%insn_004085f7:
    push edx ; 004085F7 52
    %if ($ - %%insn_004085f7) > 1
        %error "LONG_004085F7"
    %endif
    times 1 - ($ - %%insn_004085f7) db 0
    %%insn_004085f8:
    call dword near [0x424388] ; 004085F8 FF1588434200
    %if ($ - %%insn_004085f8) > 6
        %error "LONG_004085F8"
    %endif
    times 6 - ($ - %%insn_004085f8) db 0
    %%insn_004085fe:
    mov eax,[ebp-0x38] ; 004085FE 8B45C8
    %if ($ - %%insn_004085fe) > 3
        %error "LONG_004085FE"
    %endif
    times 3 - ($ - %%insn_004085fe) db 0
    %%insn_00408601:
    push eax ; 00408601 50
    %if ($ - %%insn_00408601) > 1
        %error "LONG_00408601"
    %endif
    times 1 - ($ - %%insn_00408601) db 0
    %%insn_00408602:
    call dword near [0x42438c] ; 00408602 FF158C434200
    %if ($ - %%insn_00408602) > 6
        %error "LONG_00408602"
    %endif
    times 6 - ($ - %%insn_00408602) db 0
    %%insn_00408608:
    mov ecx,[ebp-0x40] ; 00408608 8B4DC0
    %if ($ - %%insn_00408608) > 3
        %error "LONG_00408608"
    %endif
    times 3 - ($ - %%insn_00408608) db 0
    db 0x33, 0xD2 ; 0040860B 33D2 | xor edx,edx | encoding preserved
    %%insn_0040860d:
    mov dx,[ecx+0x2] ; 0040860D 668B5102
    %if ($ - %%insn_0040860d) > 4
        %error "LONG_0040860D"
    %endif
    times 4 - ($ - %%insn_0040860d) db 0
    db 0x3B, 0xC2 ; 00408611 3BC2 | cmp eax,edx | encoding preserved
    %%insn_00408613:
    jz short 0x40861f ; 00408613 740A
    %if ($ - %%insn_00408613) > 2
        %error "LONG_00408613"
    %endif
    times 2 - ($ - %%insn_00408613) db 0
    %%insn_00408615:
    mov eax,0x304 ; 00408615 B804030000
    %if ($ - %%insn_00408615) > 5
        %error "LONG_00408615"
    %endif
    times 5 - ($ - %%insn_00408615) db 0
    %%insn_0040861a:
    jmp 0x4087f6 ; 0040861A E9D7010000
    %if ($ - %%insn_0040861a) > 5
        %error "LONG_0040861A"
    %endif
    times 5 - ($ - %%insn_0040861a) db 0
    %%insn_0040861f:
    push dword 0x0 ; 0040861F 6A00
    %if ($ - %%insn_0040861f) > 2
        %error "LONG_0040861F"
    %endif
    times 2 - ($ - %%insn_0040861f) db 0
    %%insn_00408621:
    mov eax,[0x41f568] ; 00408621 A168F54100
    %if ($ - %%insn_00408621) > 5
        %error "LONG_00408621"
    %endif
    times 5 - ($ - %%insn_00408621) db 0
    %%insn_00408626:
    push eax ; 00408626 50
    %if ($ - %%insn_00408626) > 1
        %error "LONG_00408626"
    %endif
    times 1 - ($ - %%insn_00408626) db 0
    %%insn_00408627:
    mov ecx,[ebp-0x38] ; 00408627 8B4DC8
    %if ($ - %%insn_00408627) > 3
        %error "LONG_00408627"
    %endif
    times 3 - ($ - %%insn_00408627) db 0
    %%insn_0040862a:
    push ecx ; 0040862A 51
    %if ($ - %%insn_0040862a) > 1
        %error "LONG_0040862A"
    %endif
    times 1 - ($ - %%insn_0040862a) db 0
    %%insn_0040862b:
    call dword near [0x42439c] ; 0040862B FF159C434200
    %if ($ - %%insn_0040862b) > 6
        %error "LONG_0040862B"
    %endif
    times 6 - ($ - %%insn_0040862b) db 0
    %%insn_00408631:
    test eax,eax ; 00408631 85C0
    %if ($ - %%insn_00408631) > 2
        %error "LONG_00408631"
    %endif
    times 2 - ($ - %%insn_00408631) db 0
    %%insn_00408633:
    jnz short 0x40863f ; 00408633 750A
    %if ($ - %%insn_00408633) > 2
        %error "LONG_00408633"
    %endif
    times 2 - ($ - %%insn_00408633) db 0
    %%insn_00408635:
    mov eax,0x304 ; 00408635 B804030000
    %if ($ - %%insn_00408635) > 5
        %error "LONG_00408635"
    %endif
    times 5 - ($ - %%insn_00408635) db 0
    %%insn_0040863a:
    jmp 0x4087f6 ; 0040863A E9B7010000
    %if ($ - %%insn_0040863a) > 5
        %error "LONG_0040863A"
    %endif
    times 5 - ($ - %%insn_0040863a) db 0
    %%insn_0040863f:
    mov edx,[ebp-0x40] ; 0040863F 8B55C0
    %if ($ - %%insn_0040863f) > 3
        %error "LONG_0040863F"
    %endif
    times 3 - ($ - %%insn_0040863f) db 0
    %%insn_00408642:
    push edx ; 00408642 52
    %if ($ - %%insn_00408642) > 1
        %error "LONG_00408642"
    %endif
    times 1 - ($ - %%insn_00408642) db 0
    %%insn_00408643:
    call 0x40c9a0 ; 00408643 E858430000
    %if ($ - %%insn_00408643) > 5
        %error "LONG_00408643"
    %endif
    times 5 - ($ - %%insn_00408643) db 0
    %%insn_00408648:
    add esp,0x4 ; 00408648 83C404
    %if ($ - %%insn_00408648) > 3
        %error "LONG_00408648"
    %endif
    times 3 - ($ - %%insn_00408648) db 0
    %%insn_0040864b:
    push dword 0x42c ; 0040864B 682C040000
    %if ($ - %%insn_0040864b) > 5
        %error "LONG_0040864B"
    %endif
    times 5 - ($ - %%insn_0040864b) db 0
    %%insn_00408650:
    call 0x40cdc0 ; 00408650 E86B470000
    %if ($ - %%insn_00408650) > 5
        %error "LONG_00408650"
    %endif
    times 5 - ($ - %%insn_00408650) db 0
    %%insn_00408655:
    add esp,0x4 ; 00408655 83C404
    %if ($ - %%insn_00408655) > 3
        %error "LONG_00408655"
    %endif
    times 3 - ($ - %%insn_00408655) db 0
    %%insn_00408658:
    mov [0x41f57c],eax ; 00408658 A37CF54100
    %if ($ - %%insn_00408658) > 5
        %error "LONG_00408658"
    %endif
    times 5 - ($ - %%insn_00408658) db 0
    %%insn_0040865d:
    cmp dword [0x41f57c],0x0 ; 0040865D 833D7CF5410000
    %if ($ - %%insn_0040865d) > 7
        %error "LONG_0040865D"
    %endif
    times 7 - ($ - %%insn_0040865d) db 0
    %%insn_00408664:
    jnz short 0x408670 ; 00408664 750A
    %if ($ - %%insn_00408664) > 2
        %error "LONG_00408664"
    %endif
    times 2 - ($ - %%insn_00408664) db 0
    %%insn_00408666:
    mov eax,0x304 ; 00408666 B804030000
    %if ($ - %%insn_00408666) > 5
        %error "LONG_00408666"
    %endif
    times 5 - ($ - %%insn_00408666) db 0
    %%insn_0040866b:
    jmp 0x4087f6 ; 0040866B E986010000
    %if ($ - %%insn_0040866b) > 5
        %error "LONG_0040866B"
    %endif
    times 5 - ($ - %%insn_0040866b) db 0
    %%insn_00408670:
    mov eax,[0x41f57c] ; 00408670 A17CF54100
    %if ($ - %%insn_00408670) > 5
        %error "LONG_00408670"
    %endif
    times 5 - ($ - %%insn_00408670) db 0
    %%insn_00408675:
    mov dword [eax],0x28 ; 00408675 C70028000000
    %if ($ - %%insn_00408675) > 6
        %error "LONG_00408675"
    %endif
    times 6 - ($ - %%insn_00408675) db 0
    %%insn_0040867b:
    mov ecx,[0x41f57c] ; 0040867B 8B0D7CF54100
    %if ($ - %%insn_0040867b) > 6
        %error "LONG_0040867B"
    %endif
    times 6 - ($ - %%insn_0040867b) db 0
    %%insn_00408681:
    mov edx,[0x41f574] ; 00408681 8B1574F54100
    %if ($ - %%insn_00408681) > 6
        %error "LONG_00408681"
    %endif
    times 6 - ($ - %%insn_00408681) db 0
    %%insn_00408687:
    mov [ecx+0x4],edx ; 00408687 895104
    %if ($ - %%insn_00408687) > 3
        %error "LONG_00408687"
    %endif
    times 3 - ($ - %%insn_00408687) db 0
    %%insn_0040868a:
    mov eax,[0x41f570] ; 0040868A A170F54100
    %if ($ - %%insn_0040868a) > 5
        %error "LONG_0040868A"
    %endif
    times 5 - ($ - %%insn_0040868a) db 0
    %%insn_0040868f:
    neg eax ; 0040868F F7D8
    %if ($ - %%insn_0040868f) > 2
        %error "LONG_0040868F"
    %endif
    times 2 - ($ - %%insn_0040868f) db 0
    %%insn_00408691:
    mov ecx,[0x41f57c] ; 00408691 8B0D7CF54100
    %if ($ - %%insn_00408691) > 6
        %error "LONG_00408691"
    %endif
    times 6 - ($ - %%insn_00408691) db 0
    %%insn_00408697:
    mov [ecx+0x8],eax ; 00408697 894108
    %if ($ - %%insn_00408697) > 3
        %error "LONG_00408697"
    %endif
    times 3 - ($ - %%insn_00408697) db 0
    %%insn_0040869a:
    mov edx,[0x41f57c] ; 0040869A 8B157CF54100
    %if ($ - %%insn_0040869a) > 6
        %error "LONG_0040869A"
    %endif
    times 6 - ($ - %%insn_0040869a) db 0
    %%insn_004086a0:
    mov word [edx+0xc],0x1 ; 004086A0 66C7420C0100
    %if ($ - %%insn_004086a0) > 6
        %error "LONG_004086A0"
    %endif
    times 6 - ($ - %%insn_004086a0) db 0
    %%insn_004086a6:
    mov eax,[0x41f57c] ; 004086A6 A17CF54100
    %if ($ - %%insn_004086a6) > 5
        %error "LONG_004086A6"
    %endif
    times 5 - ($ - %%insn_004086a6) db 0
    %%insn_004086ab:
    mov word [eax+0xe],0x8 ; 004086AB 66C7400E0800
    %if ($ - %%insn_004086ab) > 6
        %error "LONG_004086AB"
    %endif
    times 6 - ($ - %%insn_004086ab) db 0
    %%insn_004086b1:
    mov ecx,[0x41f57c] ; 004086B1 8B0D7CF54100
    %if ($ - %%insn_004086b1) > 6
        %error "LONG_004086B1"
    %endif
    times 6 - ($ - %%insn_004086b1) db 0
    %%insn_004086b7:
    mov dword [ecx+0x10],0x0 ; 004086B7 C7411000000000
    %if ($ - %%insn_004086b7) > 7
        %error "LONG_004086B7"
    %endif
    times 7 - ($ - %%insn_004086b7) db 0
    %%insn_004086be:
    mov edx,[0x41f57c] ; 004086BE 8B157CF54100
    %if ($ - %%insn_004086be) > 6
        %error "LONG_004086BE"
    %endif
    times 6 - ($ - %%insn_004086be) db 0
    %%insn_004086c4:
    mov dword [edx+0x14],0x0 ; 004086C4 C7421400000000
    %if ($ - %%insn_004086c4) > 7
        %error "LONG_004086C4"
    %endif
    times 7 - ($ - %%insn_004086c4) db 0
    %%insn_004086cb:
    mov eax,[0x41f57c] ; 004086CB A17CF54100
    %if ($ - %%insn_004086cb) > 5
        %error "LONG_004086CB"
    %endif
    times 5 - ($ - %%insn_004086cb) db 0
    %%insn_004086d0:
    mov dword [eax+0x18],0x0 ; 004086D0 C7401800000000
    %if ($ - %%insn_004086d0) > 7
        %error "LONG_004086D0"
    %endif
    times 7 - ($ - %%insn_004086d0) db 0
    %%insn_004086d7:
    mov ecx,[0x41f57c] ; 004086D7 8B0D7CF54100
    %if ($ - %%insn_004086d7) > 6
        %error "LONG_004086D7"
    %endif
    times 6 - ($ - %%insn_004086d7) db 0
    %%insn_004086dd:
    mov dword [ecx+0x1c],0x0 ; 004086DD C7411C00000000
    %if ($ - %%insn_004086dd) > 7
        %error "LONG_004086DD"
    %endif
    times 7 - ($ - %%insn_004086dd) db 0
    %%insn_004086e4:
    mov edx,[0x41f57c] ; 004086E4 8B157CF54100
    %if ($ - %%insn_004086e4) > 6
        %error "LONG_004086E4"
    %endif
    times 6 - ($ - %%insn_004086e4) db 0
    %%insn_004086ea:
    mov dword [edx+0x20],0x100 ; 004086EA C7422000010000
    %if ($ - %%insn_004086ea) > 7
        %error "LONG_004086EA"
    %endif
    times 7 - ($ - %%insn_004086ea) db 0
    %%insn_004086f1:
    mov eax,[0x41f57c] ; 004086F1 A17CF54100
    %if ($ - %%insn_004086f1) > 5
        %error "LONG_004086F1"
    %endif
    times 5 - ($ - %%insn_004086f1) db 0
    %%insn_004086f6:
    mov dword [eax+0x24],0x100 ; 004086F6 C7402400010000
    %if ($ - %%insn_004086f6) > 7
        %error "LONG_004086F6"
    %endif
    times 7 - ($ - %%insn_004086f6) db 0
    %%insn_004086fd:
    mov ecx,[ebp-0x44] ; 004086FD 8B4DBC
    %if ($ - %%insn_004086fd) > 3
        %error "LONG_004086FD"
    %endif
    times 3 - ($ - %%insn_004086fd) db 0
    %%insn_00408700:
    cmp dword [ecx+0x44],0x0 ; 00408700 83794400
    %if ($ - %%insn_00408700) > 4
        %error "LONG_00408700"
    %endif
    times 4 - ($ - %%insn_00408700) db 0
    %%insn_00408704:
    jz short 0x408778 ; 00408704 7472
    %if ($ - %%insn_00408704) > 2
        %error "LONG_00408704"
    %endif
    times 2 - ($ - %%insn_00408704) db 0
    %%insn_00408706:
    mov edx,[0x41f57c] ; 00408706 8B157CF54100
    %if ($ - %%insn_00408706) > 6
        %error "LONG_00408706"
    %endif
    times 6 - ($ - %%insn_00408706) db 0
    %%insn_0040870c:
    add edx,0x28 ; 0040870C 83C228
    %if ($ - %%insn_0040870c) > 3
        %error "LONG_0040870C"
    %endif
    times 3 - ($ - %%insn_0040870c) db 0
    %%insn_0040870f:
    mov [ebp-0x28],edx ; 0040870F 8955D8
    %if ($ - %%insn_0040870f) > 3
        %error "LONG_0040870F"
    %endif
    times 3 - ($ - %%insn_0040870f) db 0
    %%insn_00408712:
    mov dword [ebp-0x2c],0x0 ; 00408712 C745D400000000
    %if ($ - %%insn_00408712) > 7
        %error "LONG_00408712"
    %endif
    times 7 - ($ - %%insn_00408712) db 0
    %%insn_00408719:
    jmp short 0x40872d ; 00408719 EB12
    %if ($ - %%insn_00408719) > 2
        %error "LONG_00408719"
    %endif
    times 2 - ($ - %%insn_00408719) db 0
    %%insn_0040871b:
    mov eax,[ebp-0x2c] ; 0040871B 8B45D4
    %if ($ - %%insn_0040871b) > 3
        %error "LONG_0040871B"
    %endif
    times 3 - ($ - %%insn_0040871b) db 0
    %%insn_0040871e:
    add eax,0x1 ; 0040871E 83C001
    %if ($ - %%insn_0040871e) > 3
        %error "LONG_0040871E"
    %endif
    times 3 - ($ - %%insn_0040871e) db 0
    %%insn_00408721:
    mov [ebp-0x2c],eax ; 00408721 8945D4
    %if ($ - %%insn_00408721) > 3
        %error "LONG_00408721"
    %endif
    times 3 - ($ - %%insn_00408721) db 0
    %%insn_00408724:
    mov ecx,[ebp-0x28] ; 00408724 8B4DD8
    %if ($ - %%insn_00408724) > 3
        %error "LONG_00408724"
    %endif
    times 3 - ($ - %%insn_00408724) db 0
    %%insn_00408727:
    add ecx,0x4 ; 00408727 83C104
    %if ($ - %%insn_00408727) > 3
        %error "LONG_00408727"
    %endif
    times 3 - ($ - %%insn_00408727) db 0
    %%insn_0040872a:
    mov [ebp-0x28],ecx ; 0040872A 894DD8
    %if ($ - %%insn_0040872a) > 3
        %error "LONG_0040872A"
    %endif
    times 3 - ($ - %%insn_0040872a) db 0
    %%insn_0040872d:
    cmp dword [ebp-0x2c],0x100 ; 0040872D 817DD400010000
    %if ($ - %%insn_0040872d) > 7
        %error "LONG_0040872D"
    %endif
    times 7 - ($ - %%insn_0040872d) db 0
    %%insn_00408734:
    jnl short 0x408778 ; 00408734 7D42
    %if ($ - %%insn_00408734) > 2
        %error "LONG_00408734"
    %endif
    times 2 - ($ - %%insn_00408734) db 0
    %%insn_00408736:
    mov edx,[ebp-0x2c] ; 00408736 8B55D4
    %if ($ - %%insn_00408736) > 3
        %error "LONG_00408736"
    %endif
    times 3 - ($ - %%insn_00408736) db 0
    %%insn_00408739:
    imul edx,edx,0x3 ; 00408739 6BD203
    %if ($ - %%insn_00408739) > 3
        %error "LONG_00408739"
    %endif
    times 3 - ($ - %%insn_00408739) db 0
    %%insn_0040873c:
    mov eax,[ebp-0x44] ; 0040873C 8B45BC
    %if ($ - %%insn_0040873c) > 3
        %error "LONG_0040873C"
    %endif
    times 3 - ($ - %%insn_0040873c) db 0
    %%insn_0040873f:
    mov ecx,[eax+0x44] ; 0040873F 8B4844
    %if ($ - %%insn_0040873f) > 3
        %error "LONG_0040873F"
    %endif
    times 3 - ($ - %%insn_0040873f) db 0
    %%insn_00408742:
    mov eax,[ebp-0x28] ; 00408742 8B45D8
    %if ($ - %%insn_00408742) > 3
        %error "LONG_00408742"
    %endif
    times 3 - ($ - %%insn_00408742) db 0
    %%insn_00408745:
    mov cl,[ecx+edx] ; 00408745 8A0C11
    %if ($ - %%insn_00408745) > 3
        %error "LONG_00408745"
    %endif
    times 3 - ($ - %%insn_00408745) db 0
    %%insn_00408748:
    mov [eax+0x2],cl ; 00408748 884802
    %if ($ - %%insn_00408748) > 3
        %error "LONG_00408748"
    %endif
    times 3 - ($ - %%insn_00408748) db 0
    %%insn_0040874b:
    mov edx,[ebp-0x2c] ; 0040874B 8B55D4
    %if ($ - %%insn_0040874b) > 3
        %error "LONG_0040874B"
    %endif
    times 3 - ($ - %%insn_0040874b) db 0
    %%insn_0040874e:
    imul edx,edx,0x3 ; 0040874E 6BD203
    %if ($ - %%insn_0040874e) > 3
        %error "LONG_0040874E"
    %endif
    times 3 - ($ - %%insn_0040874e) db 0
    %%insn_00408751:
    mov eax,[ebp-0x44] ; 00408751 8B45BC
    %if ($ - %%insn_00408751) > 3
        %error "LONG_00408751"
    %endif
    times 3 - ($ - %%insn_00408751) db 0
    %%insn_00408754:
    mov ecx,[eax+0x44] ; 00408754 8B4844
    %if ($ - %%insn_00408754) > 3
        %error "LONG_00408754"
    %endif
    times 3 - ($ - %%insn_00408754) db 0
    %%insn_00408757:
    mov eax,[ebp-0x28] ; 00408757 8B45D8
    %if ($ - %%insn_00408757) > 3
        %error "LONG_00408757"
    %endif
    times 3 - ($ - %%insn_00408757) db 0
    %%insn_0040875a:
    mov cl,[ecx+edx+0x1] ; 0040875A 8A4C1101
    %if ($ - %%insn_0040875a) > 4
        %error "LONG_0040875A"
    %endif
    times 4 - ($ - %%insn_0040875a) db 0
    %%insn_0040875e:
    mov [eax+0x1],cl ; 0040875E 884801
    %if ($ - %%insn_0040875e) > 3
        %error "LONG_0040875E"
    %endif
    times 3 - ($ - %%insn_0040875e) db 0
    %%insn_00408761:
    mov edx,[ebp-0x2c] ; 00408761 8B55D4
    %if ($ - %%insn_00408761) > 3
        %error "LONG_00408761"
    %endif
    times 3 - ($ - %%insn_00408761) db 0
    %%insn_00408764:
    imul edx,edx,0x3 ; 00408764 6BD203
    %if ($ - %%insn_00408764) > 3
        %error "LONG_00408764"
    %endif
    times 3 - ($ - %%insn_00408764) db 0
    %%insn_00408767:
    mov eax,[ebp-0x44] ; 00408767 8B45BC
    %if ($ - %%insn_00408767) > 3
        %error "LONG_00408767"
    %endif
    times 3 - ($ - %%insn_00408767) db 0
    %%insn_0040876a:
    mov ecx,[eax+0x44] ; 0040876A 8B4844
    %if ($ - %%insn_0040876a) > 3
        %error "LONG_0040876A"
    %endif
    times 3 - ($ - %%insn_0040876a) db 0
    %%insn_0040876d:
    mov eax,[ebp-0x28] ; 0040876D 8B45D8
    %if ($ - %%insn_0040876d) > 3
        %error "LONG_0040876D"
    %endif
    times 3 - ($ - %%insn_0040876d) db 0
    %%insn_00408770:
    mov cl,[ecx+edx+0x2] ; 00408770 8A4C1102
    %if ($ - %%insn_00408770) > 4
        %error "LONG_00408770"
    %endif
    times 4 - ($ - %%insn_00408770) db 0
    %%insn_00408774:
    mov [eax],cl ; 00408774 8808
    %if ($ - %%insn_00408774) > 2
        %error "LONG_00408774"
    %endif
    times 2 - ($ - %%insn_00408774) db 0
    %%insn_00408776:
    jmp short 0x40871b ; 00408776 EBA3
    %if ($ - %%insn_00408776) > 2
        %error "LONG_00408776"
    %endif
    times 2 - ($ - %%insn_00408776) db 0
    %%insn_00408778:
    push dword 0x0 ; 00408778 6A00
    %if ($ - %%insn_00408778) > 2
        %error "LONG_00408778"
    %endif
    times 2 - ($ - %%insn_00408778) db 0
    %%insn_0040877a:
    push dword 0x0 ; 0040877A 6A00
    %if ($ - %%insn_0040877a) > 2
        %error "LONG_0040877A"
    %endif
    times 2 - ($ - %%insn_0040877a) db 0
    %%insn_0040877c:
    push dword 0x41f588 ; 0040877C 6888F54100
    %if ($ - %%insn_0040877c) > 5
        %error "LONG_0040877C"
    %endif
    times 5 - ($ - %%insn_0040877c) db 0
    %%insn_00408781:
    push dword 0x0 ; 00408781 6A00
    %if ($ - %%insn_00408781) > 2
        %error "LONG_00408781"
    %endif
    times 2 - ($ - %%insn_00408781) db 0
    %%insn_00408783:
    mov edx,[0x41f57c] ; 00408783 8B157CF54100
    %if ($ - %%insn_00408783) > 6
        %error "LONG_00408783"
    %endif
    times 6 - ($ - %%insn_00408783) db 0
    %%insn_00408789:
    push edx ; 00408789 52
    %if ($ - %%insn_00408789) > 1
        %error "LONG_00408789"
    %endif
    times 1 - ($ - %%insn_00408789) db 0
    %%insn_0040878a:
    mov eax,[ebp-0x38] ; 0040878A 8B45C8
    %if ($ - %%insn_0040878a) > 3
        %error "LONG_0040878A"
    %endif
    times 3 - ($ - %%insn_0040878a) db 0
    %%insn_0040878d:
    push eax ; 0040878D 50
    %if ($ - %%insn_0040878d) > 1
        %error "LONG_0040878D"
    %endif
    times 1 - ($ - %%insn_0040878d) db 0
    %%insn_0040878e:
    call dword near [0x424380] ; 0040878E FF1580434200
    %if ($ - %%insn_0040878e) > 6
        %error "LONG_0040878E"
    %endif
    times 6 - ($ - %%insn_0040878e) db 0
    %%insn_00408794:
    mov [0x41f58c],eax ; 00408794 A38CF54100
    %if ($ - %%insn_00408794) > 5
        %error "LONG_00408794"
    %endif
    times 5 - ($ - %%insn_00408794) db 0
    %%insn_00408799:
    cmp dword [0x41f58c],0x0 ; 00408799 833D8CF5410000
    %if ($ - %%insn_00408799) > 7
        %error "LONG_00408799"
    %endif
    times 7 - ($ - %%insn_00408799) db 0
    %%insn_004087a0:
    jnz short 0x4087b8 ; 004087A0 7516
    %if ($ - %%insn_004087a0) > 2
        %error "LONG_004087A0"
    %endif
    times 2 - ($ - %%insn_004087a0) db 0
    %%insn_004087a2:
    mov ecx,[0x41f57c] ; 004087A2 8B0D7CF54100
    %if ($ - %%insn_004087a2) > 6
        %error "LONG_004087A2"
    %endif
    times 6 - ($ - %%insn_004087a2) db 0
    %%insn_004087a8:
    push ecx ; 004087A8 51
    %if ($ - %%insn_004087a8) > 1
        %error "LONG_004087A8"
    %endif
    times 1 - ($ - %%insn_004087a8) db 0
    %%insn_004087a9:
    call 0x40c9a0 ; 004087A9 E8F2410000
    %if ($ - %%insn_004087a9) > 5
        %error "LONG_004087A9"
    %endif
    times 5 - ($ - %%insn_004087a9) db 0
    %%insn_004087ae:
    add esp,0x4 ; 004087AE 83C404
    %if ($ - %%insn_004087ae) > 3
        %error "LONG_004087AE"
    %endif
    times 3 - ($ - %%insn_004087ae) db 0
    %%insn_004087b1:
    mov eax,0x304 ; 004087B1 B804030000
    %if ($ - %%insn_004087b1) > 5
        %error "LONG_004087B1"
    %endif
    times 5 - ($ - %%insn_004087b1) db 0
    %%insn_004087b6:
    jmp short 0x4087f6 ; 004087B6 EB3E
    %if ($ - %%insn_004087b6) > 2
        %error "LONG_004087B6"
    %endif
    times 2 - ($ - %%insn_004087b6) db 0
    %%insn_004087b8:
    mov edx,[ebp-0x38] ; 004087B8 8B55C8
    %if ($ - %%insn_004087b8) > 3
        %error "LONG_004087B8"
    %endif
    times 3 - ($ - %%insn_004087b8) db 0
    %%insn_004087bb:
    push edx ; 004087BB 52
    %if ($ - %%insn_004087bb) > 1
        %error "LONG_004087BB"
    %endif
    times 1 - ($ - %%insn_004087bb) db 0
    %%insn_004087bc:
    mov eax,[0x41f5bc] ; 004087BC A1BCF54100
    %if ($ - %%insn_004087bc) > 5
        %error "LONG_004087BC"
    %endif
    times 5 - ($ - %%insn_004087bc) db 0
    %%insn_004087c1:
    push eax ; 004087C1 50
    %if ($ - %%insn_004087c1) > 1
        %error "LONG_004087C1"
    %endif
    times 1 - ($ - %%insn_004087c1) db 0
    %%insn_004087c2:
    call dword near [0x4244f0] ; 004087C2 FF15F0444200
    %if ($ - %%insn_004087c2) > 6
        %error "LONG_004087C2"
    %endif
    times 6 - ($ - %%insn_004087c2) db 0
    %%insn_004087c8:
    mov ecx,[0x41f5bc] ; 004087C8 8B0DBCF54100
    %if ($ - %%insn_004087c8) > 6
        %error "LONG_004087C8"
    %endif
    times 6 - ($ - %%insn_004087c8) db 0
    %%insn_004087ce:
    mov [0x41f578],ecx ; 004087CE 890D78F54100
    %if ($ - %%insn_004087ce) > 6
        %error "LONG_004087CE"
    %endif
    times 6 - ($ - %%insn_004087ce) db 0
    %%insn_004087d4:
    mov edx,[ebp-0x44] ; 004087D4 8B55BC
    %if ($ - %%insn_004087d4) > 3
        %error "LONG_004087D4"
    %endif
    times 3 - ($ - %%insn_004087d4) db 0
    %%insn_004087d7:
    mov eax,[0x41f588] ; 004087D7 A188F54100
    %if ($ - %%insn_004087d7) > 5
        %error "LONG_004087D7"
    %endif
    times 5 - ($ - %%insn_004087d7) db 0
    %%insn_004087dc:
    mov [edx+0x3c],eax ; 004087DC 89423C
    %if ($ - %%insn_004087dc) > 3
        %error "LONG_004087DC"
    %endif
    times 3 - ($ - %%insn_004087dc) db 0
    %%insn_004087df:
    mov ecx,[ebp-0x44] ; 004087DF 8B4DBC
    %if ($ - %%insn_004087df) > 3
        %error "LONG_004087DF"
    %endif
    times 3 - ($ - %%insn_004087df) db 0
    %%insn_004087e2:
    call 0x4087fb ; 004087E2 E814000000
    %if ($ - %%insn_004087e2) > 5
        %error "LONG_004087E2"
    %endif
    times 5 - ($ - %%insn_004087e2) db 0
    %%insn_004087e7:
    mov ecx,[0x41f5bc] ; 004087E7 8B0DBCF54100
    %if ($ - %%insn_004087e7) > 6
        %error "LONG_004087E7"
    %endif
    times 6 - ($ - %%insn_004087e7) db 0
    %%insn_004087ed:
    push ecx ; 004087ED 51
    %if ($ - %%insn_004087ed) > 1
        %error "LONG_004087ED"
    %endif
    times 1 - ($ - %%insn_004087ed) db 0
    %%insn_004087ee:
    call dword near [0x4244f4] ; 004087EE FF15F4444200
    %if ($ - %%insn_004087ee) > 6
        %error "LONG_004087EE"
    %endif
    times 6 - ($ - %%insn_004087ee) db 0
    db 0x33, 0xC0 ; 004087F4 33C0 | xor eax,eax | encoding preserved
    %%insn_004087f6:
    pop esi ; 004087F6 5E
    %if ($ - %%insn_004087f6) > 1
        %error "LONG_004087F6"
    %endif
    times 1 - ($ - %%insn_004087f6) db 0
    db 0x8B, 0xE5 ; 004087F7 8BE5 | mov esp,ebp | encoding preserved
    %%insn_004087f9:
    pop ebp ; 004087F9 5D
    %if ($ - %%insn_004087f9) > 1
        %error "LONG_004087F9"
    %endif
    times 1 - ($ - %%insn_004087f9) db 0
    %%insn_004087fa:
    ret ; 004087FA C3
    %if ($ - %%insn_004087fa) > 1
        %error "LONG_004087FA"
    %endif
    times 1 - ($ - %%insn_004087fa) db 0
    %if ($ - %%fragment_start) != 1870
        %error "function fragment size drift: 004080AD"
    %endif
%endmacro
