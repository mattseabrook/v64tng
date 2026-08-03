; PE virtual entry 0040D1B0
; Ghidra working symbol: FUN_0040d1b0
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040d1b0_part_00 0
    %%fragment_start:
func_0040d1b0:
    %%insn_0040d1b0:
    push ecx ; 0040D1B0 51
    %if ($ - %%insn_0040d1b0) > 1
        %error "LONG_0040D1B0"
    %endif
    times 1 - ($ - %%insn_0040d1b0) db 0
    %%insn_0040d1b1:
    push ebx ; 0040D1B1 53
    %if ($ - %%insn_0040d1b1) > 1
        %error "LONG_0040D1B1"
    %endif
    times 1 - ($ - %%insn_0040d1b1) db 0
    %%insn_0040d1b2:
    push ebp ; 0040D1B2 55
    %if ($ - %%insn_0040d1b2) > 1
        %error "LONG_0040D1B2"
    %endif
    times 1 - ($ - %%insn_0040d1b2) db 0
    %%insn_0040d1b3:
    mov ebp,[esp+0x18] ; 0040D1B3 8B6C2418
    %if ($ - %%insn_0040d1b3) > 4
        %error "LONG_0040D1B3"
    %endif
    times 4 - ($ - %%insn_0040d1b3) db 0
    %%insn_0040d1b7:
    push esi ; 0040D1B7 56
    %if ($ - %%insn_0040d1b7) > 1
        %error "LONG_0040D1B7"
    %endif
    times 1 - ($ - %%insn_0040d1b7) db 0
    %%insn_0040d1b8:
    imul ebp,[esp+0x18] ; 0040D1B8 0FAF6C2418
    %if ($ - %%insn_0040d1b8) > 5
        %error "LONG_0040D1B8"
    %endif
    times 5 - ($ - %%insn_0040d1b8) db 0
    %%insn_0040d1bd:
    push edi ; 0040D1BD 57
    %if ($ - %%insn_0040d1bd) > 1
        %error "LONG_0040D1BD"
    %endif
    times 1 - ($ - %%insn_0040d1bd) db 0
    %%insn_0040d1be:
    mov edi,[esp+0x18] ; 0040D1BE 8B7C2418
    %if ($ - %%insn_0040d1be) > 4
        %error "LONG_0040D1BE"
    %endif
    times 4 - ($ - %%insn_0040d1be) db 0
    %%insn_0040d1c2:
    test ebp,ebp ; 0040D1C2 85ED
    %if ($ - %%insn_0040d1c2) > 2
        %error "LONG_0040D1C2"
    %endif
    times 2 - ($ - %%insn_0040d1c2) db 0
    %%insn_0040d1c4:
    mov [esp+0x18],edi ; 0040D1C4 897C2418
    %if ($ - %%insn_0040d1c4) > 4
        %error "LONG_0040D1C4"
    %endif
    times 4 - ($ - %%insn_0040d1c4) db 0
    %%insn_0040d1c8:
    mov [esp+0x10],ebp ; 0040D1C8 896C2410
    %if ($ - %%insn_0040d1c8) > 4
        %error "LONG_0040D1C8"
    %endif
    times 4 - ($ - %%insn_0040d1c8) db 0
    %%insn_0040d1cc:
    jnz short 0x40d1d6 ; 0040D1CC 7508
    %if ($ - %%insn_0040d1cc) > 2
        %error "LONG_0040D1CC"
    %endif
    times 2 - ($ - %%insn_0040d1cc) db 0
    db 0x33, 0xC0 ; 0040D1CE 33C0 | xor eax,eax | encoding preserved
    %%insn_0040d1d0:
    pop edi ; 0040D1D0 5F
    %if ($ - %%insn_0040d1d0) > 1
        %error "LONG_0040D1D0"
    %endif
    times 1 - ($ - %%insn_0040d1d0) db 0
    %%insn_0040d1d1:
    pop esi ; 0040D1D1 5E
    %if ($ - %%insn_0040d1d1) > 1
        %error "LONG_0040D1D1"
    %endif
    times 1 - ($ - %%insn_0040d1d1) db 0
    %%insn_0040d1d2:
    pop ebp ; 0040D1D2 5D
    %if ($ - %%insn_0040d1d2) > 1
        %error "LONG_0040D1D2"
    %endif
    times 1 - ($ - %%insn_0040d1d2) db 0
    %%insn_0040d1d3:
    pop ebx ; 0040D1D3 5B
    %if ($ - %%insn_0040d1d3) > 1
        %error "LONG_0040D1D3"
    %endif
    times 1 - ($ - %%insn_0040d1d3) db 0
    %%insn_0040d1d4:
    pop ecx ; 0040D1D4 59
    %if ($ - %%insn_0040d1d4) > 1
        %error "LONG_0040D1D4"
    %endif
    times 1 - ($ - %%insn_0040d1d4) db 0
    %%insn_0040d1d5:
    ret ; 0040D1D5 C3
    %if ($ - %%insn_0040d1d5) > 1
        %error "LONG_0040D1D5"
    %endif
    times 1 - ($ - %%insn_0040d1d5) db 0
    %%insn_0040d1d6:
    mov ebx,[esp+0x24] ; 0040D1D6 8B5C2424
    %if ($ - %%insn_0040d1d6) > 4
        %error "LONG_0040D1D6"
    %endif
    times 4 - ($ - %%insn_0040d1d6) db 0
    %%insn_0040d1da:
    test dword [ebx+0xc],0x10c ; 0040D1DA F7430C0C010000
    %if ($ - %%insn_0040d1da) > 7
        %error "LONG_0040D1DA"
    %endif
    times 7 - ($ - %%insn_0040d1da) db 0
    %%insn_0040d1e1:
    jz short 0x40d1ec ; 0040D1E1 7409
    %if ($ - %%insn_0040d1e1) > 2
        %error "LONG_0040D1E1"
    %endif
    times 2 - ($ - %%insn_0040d1e1) db 0
    %%insn_0040d1e3:
    mov esi,[ebx+0x18] ; 0040D1E3 8B7318
    %if ($ - %%insn_0040d1e3) > 3
        %error "LONG_0040D1E3"
    %endif
    times 3 - ($ - %%insn_0040d1e3) db 0
    %%insn_0040d1e6:
    mov [esp+0x24],esi ; 0040D1E6 89742424
    %if ($ - %%insn_0040d1e6) > 4
        %error "LONG_0040D1E6"
    %endif
    times 4 - ($ - %%insn_0040d1e6) db 0
    %%insn_0040d1ea:
    jmp short 0x40d1f8 ; 0040D1EA EB0C
    %if ($ - %%insn_0040d1ea) > 2
        %error "LONG_0040D1EA"
    %endif
    times 2 - ($ - %%insn_0040d1ea) db 0
    %%insn_0040d1ec:
    mov dword [esp+0x24],0x1000 ; 0040D1EC C744242400100000
    %if ($ - %%insn_0040d1ec) > 8
        %error "LONG_0040D1EC"
    %endif
    times 8 - ($ - %%insn_0040d1ec) db 0
    %%insn_0040d1f4:
    mov esi,[esp+0x24] ; 0040D1F4 8B742424
    %if ($ - %%insn_0040d1f4) > 4
        %error "LONG_0040D1F4"
    %endif
    times 4 - ($ - %%insn_0040d1f4) db 0
    %%insn_0040d1f8:
    test dword [ebx+0xc],0x10c ; 0040D1F8 F7430C0C010000
    %if ($ - %%insn_0040d1f8) > 7
        %error "LONG_0040D1F8"
    %endif
    times 7 - ($ - %%insn_0040d1f8) db 0
    %%insn_0040d1ff:
    jz short 0x40d23e ; 0040D1FF 743D
    %if ($ - %%insn_0040d1ff) > 2
        %error "LONG_0040D1FF"
    %endif
    times 2 - ($ - %%insn_0040d1ff) db 0
    %%insn_0040d201:
    mov eax,[ebx+0x4] ; 0040D201 8B4304
    %if ($ - %%insn_0040d201) > 3
        %error "LONG_0040D201"
    %endif
    times 3 - ($ - %%insn_0040d201) db 0
    %%insn_0040d204:
    test eax,eax ; 0040D204 85C0
    %if ($ - %%insn_0040d204) > 2
        %error "LONG_0040D204"
    %endif
    times 2 - ($ - %%insn_0040d204) db 0
    %%insn_0040d206:
    jz short 0x40d23e ; 0040D206 7436
    %if ($ - %%insn_0040d206) > 2
        %error "LONG_0040D206"
    %endif
    times 2 - ($ - %%insn_0040d206) db 0
    db 0x3B, 0xE8 ; 0040D208 3BE8 | cmp ebp,eax | encoding preserved
    %%insn_0040d20a:
    jnc short 0x40d20e ; 0040D20A 7302
    %if ($ - %%insn_0040d20a) > 2
        %error "LONG_0040D20A"
    %endif
    times 2 - ($ - %%insn_0040d20a) db 0
    db 0x8B, 0xC5 ; 0040D20C 8BC5 | mov eax,ebp | encoding preserved
    %%insn_0040d20e:
    mov esi,[ebx] ; 0040D20E 8B33
    %if ($ - %%insn_0040d20e) > 2
        %error "LONG_0040D20E"
    %endif
    times 2 - ($ - %%insn_0040d20e) db 0
    db 0x8B, 0xC8 ; 0040D210 8BC8 | mov ecx,eax | encoding preserved
    db 0x8B, 0xD1 ; 0040D212 8BD1 | mov edx,ecx | encoding preserved
    db 0x2B, 0xE8 ; 0040D214 2BE8 | sub ebp,eax | encoding preserved
    %%insn_0040d216:
    shr ecx,byte 0x2 ; 0040D216 C1E902
    %if ($ - %%insn_0040d216) > 3
        %error "LONG_0040D216"
    %endif
    times 3 - ($ - %%insn_0040d216) db 0
    %%insn_0040d219:
    rep movsd ; 0040D219 F3A5
    %if ($ - %%insn_0040d219) > 2
        %error "LONG_0040D219"
    %endif
    times 2 - ($ - %%insn_0040d219) db 0
    db 0x8B, 0xCA ; 0040D21B 8BCA | mov ecx,edx | encoding preserved
    %%insn_0040d21d:
    and ecx,0x3 ; 0040D21D 83E103
    %if ($ - %%insn_0040d21d) > 3
        %error "LONG_0040D21D"
    %endif
    times 3 - ($ - %%insn_0040d21d) db 0
    %%insn_0040d220:
    rep movsb ; 0040D220 F3A4
    %if ($ - %%insn_0040d220) > 2
        %error "LONG_0040D220"
    %endif
    times 2 - ($ - %%insn_0040d220) db 0
    %%insn_0040d222:
    mov esi,[ebx+0x4] ; 0040D222 8B7304
    %if ($ - %%insn_0040d222) > 3
        %error "LONG_0040D222"
    %endif
    times 3 - ($ - %%insn_0040d222) db 0
    %%insn_0040d225:
    mov edx,[ebx] ; 0040D225 8B13
    %if ($ - %%insn_0040d225) > 2
        %error "LONG_0040D225"
    %endif
    times 2 - ($ - %%insn_0040d225) db 0
    %%insn_0040d227:
    mov ecx,[esp+0x18] ; 0040D227 8B4C2418
    %if ($ - %%insn_0040d227) > 4
        %error "LONG_0040D227"
    %endif
    times 4 - ($ - %%insn_0040d227) db 0
    db 0x2B, 0xF0 ; 0040D22B 2BF0 | sub esi,eax | encoding preserved
    db 0x03, 0xD0 ; 0040D22D 03D0 | add edx,eax | encoding preserved
    db 0x03, 0xC8 ; 0040D22F 03C8 | add ecx,eax | encoding preserved
    %%insn_0040d231:
    mov [ebx+0x4],esi ; 0040D231 897304
    %if ($ - %%insn_0040d231) > 3
        %error "LONG_0040D231"
    %endif
    times 3 - ($ - %%insn_0040d231) db 0
    %%insn_0040d234:
    mov [ebx],edx ; 0040D234 8913
    %if ($ - %%insn_0040d234) > 2
        %error "LONG_0040D234"
    %endif
    times 2 - ($ - %%insn_0040d234) db 0
    %%insn_0040d236:
    mov [esp+0x18],ecx ; 0040D236 894C2418
    %if ($ - %%insn_0040d236) > 4
        %error "LONG_0040D236"
    %endif
    times 4 - ($ - %%insn_0040d236) db 0
    db 0x8B, 0xF9 ; 0040D23A 8BF9 | mov edi,ecx | encoding preserved
    %%insn_0040d23c:
    jmp short 0x40d28e ; 0040D23C EB50
    %if ($ - %%insn_0040d23c) > 2
        %error "LONG_0040D23C"
    %endif
    times 2 - ($ - %%insn_0040d23c) db 0
    db 0x3B, 0xEE ; 0040D23E 3BEE | cmp ebp,esi | encoding preserved
    %%insn_0040d240:
    jc short 0x40d271 ; 0040D240 722F
    %if ($ - %%insn_0040d240) > 2
        %error "LONG_0040D240"
    %endif
    times 2 - ($ - %%insn_0040d240) db 0
    %%insn_0040d242:
    test esi,esi ; 0040D242 85F6
    %if ($ - %%insn_0040d242) > 2
        %error "LONG_0040D242"
    %endif
    times 2 - ($ - %%insn_0040d242) db 0
    db 0x8B, 0xC5 ; 0040D244 8BC5 | mov eax,ebp | encoding preserved
    %%insn_0040d246:
    jz short 0x40d250 ; 0040D246 7408
    %if ($ - %%insn_0040d246) > 2
        %error "LONG_0040D246"
    %endif
    times 2 - ($ - %%insn_0040d246) db 0
    db 0x33, 0xD2 ; 0040D248 33D2 | xor edx,edx | encoding preserved
    %%insn_0040d24a:
    div esi ; 0040D24A F7F6
    %if ($ - %%insn_0040d24a) > 2
        %error "LONG_0040D24A"
    %endif
    times 2 - ($ - %%insn_0040d24a) db 0
    db 0x8B, 0xC5 ; 0040D24C 8BC5 | mov eax,ebp | encoding preserved
    db 0x2B, 0xC2 ; 0040D24E 2BC2 | sub eax,edx | encoding preserved
    %%insn_0040d250:
    push eax ; 0040D250 50
    %if ($ - %%insn_0040d250) > 1
        %error "LONG_0040D250"
    %endif
    times 1 - ($ - %%insn_0040d250) db 0
    %%insn_0040d251:
    mov eax,[ebx+0x10] ; 0040D251 8B4310
    %if ($ - %%insn_0040d251) > 3
        %error "LONG_0040D251"
    %endif
    times 3 - ($ - %%insn_0040d251) db 0
    %%insn_0040d254:
    push edi ; 0040D254 57
    %if ($ - %%insn_0040d254) > 1
        %error "LONG_0040D254"
    %endif
    times 1 - ($ - %%insn_0040d254) db 0
    %%insn_0040d255:
    push eax ; 0040D255 50
    %if ($ - %%insn_0040d255) > 1
        %error "LONG_0040D255"
    %endif
    times 1 - ($ - %%insn_0040d255) db 0
    %%insn_0040d256:
    call 0x410010 ; 0040D256 E8B52D0000
    %if ($ - %%insn_0040d256) > 5
        %error "LONG_0040D256"
    %endif
    times 5 - ($ - %%insn_0040d256) db 0
    %%insn_0040d25b:
    add esp,0xc ; 0040D25B 83C40C
    %if ($ - %%insn_0040d25b) > 3
        %error "LONG_0040D25B"
    %endif
    times 3 - ($ - %%insn_0040d25b) db 0
    %%insn_0040d25e:
    test eax,eax ; 0040D25E 85C0
    %if ($ - %%insn_0040d25e) > 2
        %error "LONG_0040D25E"
    %endif
    times 2 - ($ - %%insn_0040d25e) db 0
    %%insn_0040d260:
    jz short 0x40d2a4 ; 0040D260 7442
    %if ($ - %%insn_0040d260) > 2
        %error "LONG_0040D260"
    %endif
    times 2 - ($ - %%insn_0040d260) db 0
    %%insn_0040d262:
    cmp eax,0xffffffffffffffff ; 0040D262 83F8FF
    %if ($ - %%insn_0040d262) > 3
        %error "LONG_0040D262"
    %endif
    times 3 - ($ - %%insn_0040d262) db 0
    %%insn_0040d265:
    jz short 0x40d2bf ; 0040D265 7458
    %if ($ - %%insn_0040d265) > 2
        %error "LONG_0040D265"
    %endif
    times 2 - ($ - %%insn_0040d265) db 0
    db 0x2B, 0xE8 ; 0040D267 2BE8 | sub ebp,eax | encoding preserved
    db 0x03, 0xF8 ; 0040D269 03F8 | add edi,eax | encoding preserved
    %%insn_0040d26b:
    mov [esp+0x18],edi ; 0040D26B 897C2418
    %if ($ - %%insn_0040d26b) > 4
        %error "LONG_0040D26B"
    %endif
    times 4 - ($ - %%insn_0040d26b) db 0
    %%insn_0040d26f:
    jmp short 0x40d292 ; 0040D26F EB21
    %if ($ - %%insn_0040d26f) > 2
        %error "LONG_0040D26F"
    %endif
    times 2 - ($ - %%insn_0040d26f) db 0
    %%insn_0040d271:
    push ebx ; 0040D271 53
    %if ($ - %%insn_0040d271) > 1
        %error "LONG_0040D271"
    %endif
    times 1 - ($ - %%insn_0040d271) db 0
    %%insn_0040d272:
    call 0x40ff20 ; 0040D272 E8A92C0000
    %if ($ - %%insn_0040d272) > 5
        %error "LONG_0040D272"
    %endif
    times 5 - ($ - %%insn_0040d272) db 0
    %%insn_0040d277:
    add esp,0x4 ; 0040D277 83C404
    %if ($ - %%insn_0040d277) > 3
        %error "LONG_0040D277"
    %endif
    times 3 - ($ - %%insn_0040d277) db 0
    %%insn_0040d27a:
    cmp eax,0xffffffffffffffff ; 0040D27A 83F8FF
    %if ($ - %%insn_0040d27a) > 3
        %error "LONG_0040D27A"
    %endif
    times 3 - ($ - %%insn_0040d27a) db 0
    %%insn_0040d27d:
    jz short 0x40d2da ; 0040D27D 745B
    %if ($ - %%insn_0040d27d) > 2
        %error "LONG_0040D27D"
    %endif
    times 2 - ($ - %%insn_0040d27d) db 0
    %%insn_0040d27f:
    mov [edi],al ; 0040D27F 8807
    %if ($ - %%insn_0040d27f) > 2
        %error "LONG_0040D27F"
    %endif
    times 2 - ($ - %%insn_0040d27f) db 0
    %%insn_0040d281:
    mov ecx,[ebx+0x18] ; 0040D281 8B4B18
    %if ($ - %%insn_0040d281) > 3
        %error "LONG_0040D281"
    %endif
    times 3 - ($ - %%insn_0040d281) db 0
    %%insn_0040d284:
    inc edi ; 0040D284 47
    %if ($ - %%insn_0040d284) > 1
        %error "LONG_0040D284"
    %endif
    times 1 - ($ - %%insn_0040d284) db 0
    %%insn_0040d285:
    dec ebp ; 0040D285 4D
    %if ($ - %%insn_0040d285) > 1
        %error "LONG_0040D285"
    %endif
    times 1 - ($ - %%insn_0040d285) db 0
    %%insn_0040d286:
    mov [esp+0x18],edi ; 0040D286 897C2418
    %if ($ - %%insn_0040d286) > 4
        %error "LONG_0040D286"
    %endif
    times 4 - ($ - %%insn_0040d286) db 0
    %%insn_0040d28a:
    mov [esp+0x24],ecx ; 0040D28A 894C2424
    %if ($ - %%insn_0040d28a) > 4
        %error "LONG_0040D28A"
    %endif
    times 4 - ($ - %%insn_0040d28a) db 0
    %%insn_0040d28e:
    mov esi,[esp+0x24] ; 0040D28E 8B742424
    %if ($ - %%insn_0040d28e) > 4
        %error "LONG_0040D28E"
    %endif
    times 4 - ($ - %%insn_0040d28e) db 0
    %%insn_0040d292:
    test ebp,ebp ; 0040D292 85ED
    %if ($ - %%insn_0040d292) > 2
        %error "LONG_0040D292"
    %endif
    times 2 - ($ - %%insn_0040d292) db 0
    %%insn_0040d294:
    jnz 0x40d1f8 ; 0040D294 0F855EFFFFFF
    %if ($ - %%insn_0040d294) > 6
        %error "LONG_0040D294"
    %endif
    times 6 - ($ - %%insn_0040d294) db 0
    %%insn_0040d29a:
    mov eax,[esp+0x20] ; 0040D29A 8B442420
    %if ($ - %%insn_0040d29a) > 4
        %error "LONG_0040D29A"
    %endif
    times 4 - ($ - %%insn_0040d29a) db 0
    %%insn_0040d29e:
    pop edi ; 0040D29E 5F
    %if ($ - %%insn_0040d29e) > 1
        %error "LONG_0040D29E"
    %endif
    times 1 - ($ - %%insn_0040d29e) db 0
    %%insn_0040d29f:
    pop esi ; 0040D29F 5E
    %if ($ - %%insn_0040d29f) > 1
        %error "LONG_0040D29F"
    %endif
    times 1 - ($ - %%insn_0040d29f) db 0
    %%insn_0040d2a0:
    pop ebp ; 0040D2A0 5D
    %if ($ - %%insn_0040d2a0) > 1
        %error "LONG_0040D2A0"
    %endif
    times 1 - ($ - %%insn_0040d2a0) db 0
    %%insn_0040d2a1:
    pop ebx ; 0040D2A1 5B
    %if ($ - %%insn_0040d2a1) > 1
        %error "LONG_0040D2A1"
    %endif
    times 1 - ($ - %%insn_0040d2a1) db 0
    %%insn_0040d2a2:
    pop ecx ; 0040D2A2 59
    %if ($ - %%insn_0040d2a2) > 1
        %error "LONG_0040D2A2"
    %endif
    times 1 - ($ - %%insn_0040d2a2) db 0
    %%insn_0040d2a3:
    ret ; 0040D2A3 C3
    %if ($ - %%insn_0040d2a3) > 1
        %error "LONG_0040D2A3"
    %endif
    times 1 - ($ - %%insn_0040d2a3) db 0
    %%insn_0040d2a4:
    mov edx,[ebx+0xc] ; 0040D2A4 8B530C
    %if ($ - %%insn_0040d2a4) > 3
        %error "LONG_0040D2A4"
    %endif
    times 3 - ($ - %%insn_0040d2a4) db 0
    %%insn_0040d2a7:
    mov eax,[esp+0x10] ; 0040D2A7 8B442410
    %if ($ - %%insn_0040d2a7) > 4
        %error "LONG_0040D2A7"
    %endif
    times 4 - ($ - %%insn_0040d2a7) db 0
    %%insn_0040d2ab:
    or edx,0x10 ; 0040D2AB 83CA10
    %if ($ - %%insn_0040d2ab) > 3
        %error "LONG_0040D2AB"
    %endif
    times 3 - ($ - %%insn_0040d2ab) db 0
    db 0x2B, 0xC5 ; 0040D2AE 2BC5 | sub eax,ebp | encoding preserved
    %%insn_0040d2b0:
    mov [ebx+0xc],edx ; 0040D2B0 89530C
    %if ($ - %%insn_0040d2b0) > 3
        %error "LONG_0040D2B0"
    %endif
    times 3 - ($ - %%insn_0040d2b0) db 0
    db 0x33, 0xD2 ; 0040D2B3 33D2 | xor edx,edx | encoding preserved
    %%insn_0040d2b5:
    div dword [esp+0x1c] ; 0040D2B5 F774241C
    %if ($ - %%insn_0040d2b5) > 4
        %error "LONG_0040D2B5"
    %endif
    times 4 - ($ - %%insn_0040d2b5) db 0
    %%insn_0040d2b9:
    pop edi ; 0040D2B9 5F
    %if ($ - %%insn_0040d2b9) > 1
        %error "LONG_0040D2B9"
    %endif
    times 1 - ($ - %%insn_0040d2b9) db 0
    %%insn_0040d2ba:
    pop esi ; 0040D2BA 5E
    %if ($ - %%insn_0040d2ba) > 1
        %error "LONG_0040D2BA"
    %endif
    times 1 - ($ - %%insn_0040d2ba) db 0
    %%insn_0040d2bb:
    pop ebp ; 0040D2BB 5D
    %if ($ - %%insn_0040d2bb) > 1
        %error "LONG_0040D2BB"
    %endif
    times 1 - ($ - %%insn_0040d2bb) db 0
    %%insn_0040d2bc:
    pop ebx ; 0040D2BC 5B
    %if ($ - %%insn_0040d2bc) > 1
        %error "LONG_0040D2BC"
    %endif
    times 1 - ($ - %%insn_0040d2bc) db 0
    %%insn_0040d2bd:
    pop ecx ; 0040D2BD 59
    %if ($ - %%insn_0040d2bd) > 1
        %error "LONG_0040D2BD"
    %endif
    times 1 - ($ - %%insn_0040d2bd) db 0
    %%insn_0040d2be:
    ret ; 0040D2BE C3
    %if ($ - %%insn_0040d2be) > 1
        %error "LONG_0040D2BE"
    %endif
    times 1 - ($ - %%insn_0040d2be) db 0
    %%insn_0040d2bf:
    mov edx,[ebx+0xc] ; 0040D2BF 8B530C
    %if ($ - %%insn_0040d2bf) > 3
        %error "LONG_0040D2BF"
    %endif
    times 3 - ($ - %%insn_0040d2bf) db 0
    %%insn_0040d2c2:
    mov eax,[esp+0x10] ; 0040D2C2 8B442410
    %if ($ - %%insn_0040d2c2) > 4
        %error "LONG_0040D2C2"
    %endif
    times 4 - ($ - %%insn_0040d2c2) db 0
    %%insn_0040d2c6:
    or edx,0x20 ; 0040D2C6 83CA20
    %if ($ - %%insn_0040d2c6) > 3
        %error "LONG_0040D2C6"
    %endif
    times 3 - ($ - %%insn_0040d2c6) db 0
    db 0x2B, 0xC5 ; 0040D2C9 2BC5 | sub eax,ebp | encoding preserved
    %%insn_0040d2cb:
    mov [ebx+0xc],edx ; 0040D2CB 89530C
    %if ($ - %%insn_0040d2cb) > 3
        %error "LONG_0040D2CB"
    %endif
    times 3 - ($ - %%insn_0040d2cb) db 0
    db 0x33, 0xD2 ; 0040D2CE 33D2 | xor edx,edx | encoding preserved
    %%insn_0040d2d0:
    div dword [esp+0x1c] ; 0040D2D0 F774241C
    %if ($ - %%insn_0040d2d0) > 4
        %error "LONG_0040D2D0"
    %endif
    times 4 - ($ - %%insn_0040d2d0) db 0
    %%insn_0040d2d4:
    pop edi ; 0040D2D4 5F
    %if ($ - %%insn_0040d2d4) > 1
        %error "LONG_0040D2D4"
    %endif
    times 1 - ($ - %%insn_0040d2d4) db 0
    %%insn_0040d2d5:
    pop esi ; 0040D2D5 5E
    %if ($ - %%insn_0040d2d5) > 1
        %error "LONG_0040D2D5"
    %endif
    times 1 - ($ - %%insn_0040d2d5) db 0
    %%insn_0040d2d6:
    pop ebp ; 0040D2D6 5D
    %if ($ - %%insn_0040d2d6) > 1
        %error "LONG_0040D2D6"
    %endif
    times 1 - ($ - %%insn_0040d2d6) db 0
    %%insn_0040d2d7:
    pop ebx ; 0040D2D7 5B
    %if ($ - %%insn_0040d2d7) > 1
        %error "LONG_0040D2D7"
    %endif
    times 1 - ($ - %%insn_0040d2d7) db 0
    %%insn_0040d2d8:
    pop ecx ; 0040D2D8 59
    %if ($ - %%insn_0040d2d8) > 1
        %error "LONG_0040D2D8"
    %endif
    times 1 - ($ - %%insn_0040d2d8) db 0
    %%insn_0040d2d9:
    ret ; 0040D2D9 C3
    %if ($ - %%insn_0040d2d9) > 1
        %error "LONG_0040D2D9"
    %endif
    times 1 - ($ - %%insn_0040d2d9) db 0
    %%insn_0040d2da:
    mov eax,[esp+0x10] ; 0040D2DA 8B442410
    %if ($ - %%insn_0040d2da) > 4
        %error "LONG_0040D2DA"
    %endif
    times 4 - ($ - %%insn_0040d2da) db 0
    db 0x33, 0xD2 ; 0040D2DE 33D2 | xor edx,edx | encoding preserved
    db 0x2B, 0xC5 ; 0040D2E0 2BC5 | sub eax,ebp | encoding preserved
    %%insn_0040d2e2:
    div dword [esp+0x1c] ; 0040D2E2 F774241C
    %if ($ - %%insn_0040d2e2) > 4
        %error "LONG_0040D2E2"
    %endif
    times 4 - ($ - %%insn_0040d2e2) db 0
    %%insn_0040d2e6:
    pop edi ; 0040D2E6 5F
    %if ($ - %%insn_0040d2e6) > 1
        %error "LONG_0040D2E6"
    %endif
    times 1 - ($ - %%insn_0040d2e6) db 0
    %%insn_0040d2e7:
    pop esi ; 0040D2E7 5E
    %if ($ - %%insn_0040d2e7) > 1
        %error "LONG_0040D2E7"
    %endif
    times 1 - ($ - %%insn_0040d2e7) db 0
    %%insn_0040d2e8:
    pop ebp ; 0040D2E8 5D
    %if ($ - %%insn_0040d2e8) > 1
        %error "LONG_0040D2E8"
    %endif
    times 1 - ($ - %%insn_0040d2e8) db 0
    %%insn_0040d2e9:
    pop ebx ; 0040D2E9 5B
    %if ($ - %%insn_0040d2e9) > 1
        %error "LONG_0040D2E9"
    %endif
    times 1 - ($ - %%insn_0040d2e9) db 0
    %%insn_0040d2ea:
    pop ecx ; 0040D2EA 59
    %if ($ - %%insn_0040d2ea) > 1
        %error "LONG_0040D2EA"
    %endif
    times 1 - ($ - %%insn_0040d2ea) db 0
    %%insn_0040d2eb:
    ret ; 0040D2EB C3
    %if ($ - %%insn_0040d2eb) > 1
        %error "LONG_0040D2EB"
    %endif
    times 1 - ($ - %%insn_0040d2eb) db 0
    %if ($ - %%fragment_start) != 316
        %error "function fragment size drift: 0040D1B0"
    %endif
%endmacro
