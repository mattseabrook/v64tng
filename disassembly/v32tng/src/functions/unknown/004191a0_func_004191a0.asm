; PE virtual entry 004191A0
; Ghidra working symbol: FUN_004191a0
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_004191a0_part_00 0
    %%fragment_start:
func_004191a0:
    %%insn_004191a0:
    sub esp,0x8 ; 004191A0 83EC08
    %if ($ - %%insn_004191a0) > 3
        %error "LONG_004191A0"
    %endif
    times 3 - ($ - %%insn_004191a0) db 0
    %%insn_004191a3:
    push ebx ; 004191A3 53
    %if ($ - %%insn_004191a3) > 1
        %error "LONG_004191A3"
    %endif
    times 1 - ($ - %%insn_004191a3) db 0
    %%insn_004191a4:
    push ebp ; 004191A4 55
    %if ($ - %%insn_004191a4) > 1
        %error "LONG_004191A4"
    %endif
    times 1 - ($ - %%insn_004191a4) db 0
    %%insn_004191a5:
    push esi ; 004191A5 56
    %if ($ - %%insn_004191a5) > 1
        %error "LONG_004191A5"
    %endif
    times 1 - ($ - %%insn_004191a5) db 0
    %%insn_004191a6:
    mov esi,[esp+0x18] ; 004191A6 8B742418
    %if ($ - %%insn_004191a6) > 4
        %error "LONG_004191A6"
    %endif
    times 4 - ($ - %%insn_004191a6) db 0
    %%insn_004191aa:
    test esi,esi ; 004191AA 85F6
    %if ($ - %%insn_004191aa) > 2
        %error "LONG_004191AA"
    %endif
    times 2 - ($ - %%insn_004191aa) db 0
    %%insn_004191ac:
    push edi ; 004191AC 57
    %if ($ - %%insn_004191ac) > 1
        %error "LONG_004191AC"
    %endif
    times 1 - ($ - %%insn_004191ac) db 0
    %%insn_004191ad:
    jnz short 0x4191c4 ; 004191AD 7515
    %if ($ - %%insn_004191ad) > 2
        %error "LONG_004191AD"
    %endif
    times 2 - ($ - %%insn_004191ad) db 0
    %%insn_004191af:
    mov eax,[esp+0x20] ; 004191AF 8B442420
    %if ($ - %%insn_004191af) > 4
        %error "LONG_004191AF"
    %endif
    times 4 - ($ - %%insn_004191af) db 0
    %%insn_004191b3:
    push eax ; 004191B3 50
    %if ($ - %%insn_004191b3) > 1
        %error "LONG_004191B3"
    %endif
    times 1 - ($ - %%insn_004191b3) db 0
    %%insn_004191b4:
    call 0x40cdc0 ; 004191B4 E8073CFFFF
    %if ($ - %%insn_004191b4) > 5
        %error "LONG_004191B4"
    %endif
    times 5 - ($ - %%insn_004191b4) db 0
    %%insn_004191b9:
    add esp,0x4 ; 004191B9 83C404
    %if ($ - %%insn_004191b9) > 3
        %error "LONG_004191B9"
    %endif
    times 3 - ($ - %%insn_004191b9) db 0
    %%insn_004191bc:
    pop edi ; 004191BC 5F
    %if ($ - %%insn_004191bc) > 1
        %error "LONG_004191BC"
    %endif
    times 1 - ($ - %%insn_004191bc) db 0
    %%insn_004191bd:
    pop esi ; 004191BD 5E
    %if ($ - %%insn_004191bd) > 1
        %error "LONG_004191BD"
    %endif
    times 1 - ($ - %%insn_004191bd) db 0
    %%insn_004191be:
    pop ebp ; 004191BE 5D
    %if ($ - %%insn_004191be) > 1
        %error "LONG_004191BE"
    %endif
    times 1 - ($ - %%insn_004191be) db 0
    %%insn_004191bf:
    pop ebx ; 004191BF 5B
    %if ($ - %%insn_004191bf) > 1
        %error "LONG_004191BF"
    %endif
    times 1 - ($ - %%insn_004191bf) db 0
    %%insn_004191c0:
    add esp,0x8 ; 004191C0 83C408
    %if ($ - %%insn_004191c0) > 3
        %error "LONG_004191C0"
    %endif
    times 3 - ($ - %%insn_004191c0) db 0
    %%insn_004191c3:
    ret ; 004191C3 C3
    %if ($ - %%insn_004191c3) > 1
        %error "LONG_004191C3"
    %endif
    times 1 - ($ - %%insn_004191c3) db 0
    %%insn_004191c4:
    mov edi,[esp+0x20] ; 004191C4 8B7C2420
    %if ($ - %%insn_004191c4) > 4
        %error "LONG_004191C4"
    %endif
    times 4 - ($ - %%insn_004191c4) db 0
    %%insn_004191c8:
    test edi,edi ; 004191C8 85FF
    %if ($ - %%insn_004191c8) > 2
        %error "LONG_004191C8"
    %endif
    times 2 - ($ - %%insn_004191c8) db 0
    %%insn_004191ca:
    jnz short 0x4191df ; 004191CA 7513
    %if ($ - %%insn_004191ca) > 2
        %error "LONG_004191CA"
    %endif
    times 2 - ($ - %%insn_004191ca) db 0
    %%insn_004191cc:
    push esi ; 004191CC 56
    %if ($ - %%insn_004191cc) > 1
        %error "LONG_004191CC"
    %endif
    times 1 - ($ - %%insn_004191cc) db 0
    %%insn_004191cd:
    call 0x40c9a0 ; 004191CD E8CE37FFFF
    %if ($ - %%insn_004191cd) > 5
        %error "LONG_004191CD"
    %endif
    times 5 - ($ - %%insn_004191cd) db 0
    %%insn_004191d2:
    add esp,0x4 ; 004191D2 83C404
    %if ($ - %%insn_004191d2) > 3
        %error "LONG_004191D2"
    %endif
    times 3 - ($ - %%insn_004191d2) db 0
    db 0x33, 0xC0 ; 004191D5 33C0 | xor eax,eax | encoding preserved
    %%insn_004191d7:
    pop edi ; 004191D7 5F
    %if ($ - %%insn_004191d7) > 1
        %error "LONG_004191D7"
    %endif
    times 1 - ($ - %%insn_004191d7) db 0
    %%insn_004191d8:
    pop esi ; 004191D8 5E
    %if ($ - %%insn_004191d8) > 1
        %error "LONG_004191D8"
    %endif
    times 1 - ($ - %%insn_004191d8) db 0
    %%insn_004191d9:
    pop ebp ; 004191D9 5D
    %if ($ - %%insn_004191d9) > 1
        %error "LONG_004191D9"
    %endif
    times 1 - ($ - %%insn_004191d9) db 0
    %%insn_004191da:
    pop ebx ; 004191DA 5B
    %if ($ - %%insn_004191da) > 1
        %error "LONG_004191DA"
    %endif
    times 1 - ($ - %%insn_004191da) db 0
    %%insn_004191db:
    add esp,0x8 ; 004191DB 83C408
    %if ($ - %%insn_004191db) > 3
        %error "LONG_004191DB"
    %endif
    times 3 - ($ - %%insn_004191db) db 0
    %%insn_004191de:
    ret ; 004191DE C3
    %if ($ - %%insn_004191de) > 1
        %error "LONG_004191DE"
    %endif
    times 1 - ($ - %%insn_004191de) db 0
    %%insn_004191df:
    cmp edi,0xffffffffffffffe0 ; 004191DF 83FFE0
    %if ($ - %%insn_004191df) > 3
        %error "LONG_004191DF"
    %endif
    times 3 - ($ - %%insn_004191df) db 0
    %%insn_004191e2:
    ja short 0x419200 ; 004191E2 771C
    %if ($ - %%insn_004191e2) > 2
        %error "LONG_004191E2"
    %endif
    times 2 - ($ - %%insn_004191e2) db 0
    %%insn_004191e4:
    test edi,edi ; 004191E4 85FF
    %if ($ - %%insn_004191e4) > 2
        %error "LONG_004191E4"
    %endif
    times 2 - ($ - %%insn_004191e4) db 0
    %%insn_004191e6:
    jna short 0x4191f4 ; 004191E6 760C
    %if ($ - %%insn_004191e6) > 2
        %error "LONG_004191E6"
    %endif
    times 2 - ($ - %%insn_004191e6) db 0
    %%insn_004191e8:
    add edi,0xf ; 004191E8 83C70F
    %if ($ - %%insn_004191e8) > 3
        %error "LONG_004191E8"
    %endif
    times 3 - ($ - %%insn_004191e8) db 0
    %%insn_004191eb:
    and edi,0xfffffffffffffff0 ; 004191EB 83E7F0
    %if ($ - %%insn_004191eb) > 3
        %error "LONG_004191EB"
    %endif
    times 3 - ($ - %%insn_004191eb) db 0
    %%insn_004191ee:
    mov [esp+0x20],edi ; 004191EE 897C2420
    %if ($ - %%insn_004191ee) > 4
        %error "LONG_004191EE"
    %endif
    times 4 - ($ - %%insn_004191ee) db 0
    %%insn_004191f2:
    jmp short 0x4191fc ; 004191F2 EB08
    %if ($ - %%insn_004191f2) > 2
        %error "LONG_004191F2"
    %endif
    times 2 - ($ - %%insn_004191f2) db 0
    %%insn_004191f4:
    mov dword [esp+0x20],0x10 ; 004191F4 C744242010000000
    %if ($ - %%insn_004191f4) > 8
        %error "LONG_004191F4"
    %endif
    times 8 - ($ - %%insn_004191f4) db 0
    %%insn_004191fc:
    mov edi,[esp+0x20] ; 004191FC 8B7C2420
    %if ($ - %%insn_004191fc) > 4
        %error "LONG_004191FC"
    %endif
    times 4 - ($ - %%insn_004191fc) db 0
    db 0x33, 0xDB ; 00419200 33DB | xor ebx,ebx | encoding preserved
    %%insn_00419202:
    cmp edi,0xffffffffffffffe0 ; 00419202 83FFE0
    %if ($ - %%insn_00419202) > 3
        %error "LONG_00419202"
    %endif
    times 3 - ($ - %%insn_00419202) db 0
    %%insn_00419205:
    ja 0x419320 ; 00419205 0F8715010000
    %if ($ - %%insn_00419205) > 6
        %error "LONG_00419205"
    %endif
    times 6 - ($ - %%insn_00419205) db 0
    %%insn_0041920b:
    push dword 0x9 ; 0041920B 6A09
    %if ($ - %%insn_0041920b) > 2
        %error "LONG_0041920B"
    %endif
    times 2 - ($ - %%insn_0041920b) db 0
    %%insn_0041920d:
    call 0x40df00 ; 0041920D E8EE4CFFFF
    %if ($ - %%insn_0041920d) > 5
        %error "LONG_0041920D"
    %endif
    times 5 - ($ - %%insn_0041920d) db 0
    %%insn_00419212:
    add esp,0x4 ; 00419212 83C404
    %if ($ - %%insn_00419212) > 3
        %error "LONG_00419212"
    %endif
    times 3 - ($ - %%insn_00419212) db 0
    %%insn_00419215:
    lea ecx,[esp+0x10] ; 00419215 8D4C2410
    %if ($ - %%insn_00419215) > 4
        %error "LONG_00419215"
    %endif
    times 4 - ($ - %%insn_00419215) db 0
    %%insn_00419219:
    lea edx,[esp+0x14] ; 00419219 8D542414
    %if ($ - %%insn_00419219) > 4
        %error "LONG_00419219"
    %endif
    times 4 - ($ - %%insn_00419219) db 0
    %%insn_0041921d:
    push ecx ; 0041921D 51
    %if ($ - %%insn_0041921d) > 1
        %error "LONG_0041921D"
    %endif
    times 1 - ($ - %%insn_0041921d) db 0
    %%insn_0041921e:
    push edx ; 0041921E 52
    %if ($ - %%insn_0041921e) > 1
        %error "LONG_0041921E"
    %endif
    times 1 - ($ - %%insn_0041921e) db 0
    %%insn_0041921f:
    push esi ; 0041921F 56
    %if ($ - %%insn_0041921f) > 1
        %error "LONG_0041921F"
    %endif
    times 1 - ($ - %%insn_0041921f) db 0
    %%insn_00419220:
    call 0x40e370 ; 00419220 E84B51FFFF
    %if ($ - %%insn_00419220) > 5
        %error "LONG_00419220"
    %endif
    times 5 - ($ - %%insn_00419220) db 0
    db 0x8B, 0xE8 ; 00419225 8BE8 | mov ebp,eax | encoding preserved
    %%insn_00419227:
    add esp,0xc ; 00419227 83C40C
    %if ($ - %%insn_00419227) > 3
        %error "LONG_00419227"
    %endif
    times 3 - ($ - %%insn_00419227) db 0
    %%insn_0041922a:
    test ebp,ebp ; 0041922A 85ED
    %if ($ - %%insn_0041922a) > 2
        %error "LONG_0041922A"
    %endif
    times 2 - ($ - %%insn_0041922a) db 0
    %%insn_0041922c:
    jz 0x419304 ; 0041922C 0F84D2000000
    %if ($ - %%insn_0041922c) > 6
        %error "LONG_0041922C"
    %endif
    times 6 - ($ - %%insn_0041922c) db 0
    %%insn_00419232:
    cmp edi,[0x41de84] ; 00419232 3B3D84DE4100
    %if ($ - %%insn_00419232) > 6
        %error "LONG_00419232"
    %endif
    times 6 - ($ - %%insn_00419232) db 0
    %%insn_00419238:
    jnc short 0x4192a5 ; 00419238 736B
    %if ($ - %%insn_00419238) > 2
        %error "LONG_00419238"
    %endif
    times 2 - ($ - %%insn_00419238) db 0
    %%insn_0041923a:
    mov eax,[esp+0x10] ; 0041923A 8B442410
    %if ($ - %%insn_0041923a) > 4
        %error "LONG_0041923A"
    %endif
    times 4 - ($ - %%insn_0041923a) db 0
    %%insn_0041923e:
    mov ecx,[esp+0x14] ; 0041923E 8B4C2414
    %if ($ - %%insn_0041923e) > 4
        %error "LONG_0041923E"
    %endif
    times 4 - ($ - %%insn_0041923e) db 0
    db 0x8B, 0xDF ; 00419242 8BDF | mov ebx,edi | encoding preserved
    %%insn_00419244:
    shr ebx,byte 0x4 ; 00419244 C1EB04
    %if ($ - %%insn_00419244) > 3
        %error "LONG_00419244"
    %endif
    times 3 - ($ - %%insn_00419244) db 0
    %%insn_00419247:
    push ebx ; 00419247 53
    %if ($ - %%insn_00419247) > 1
        %error "LONG_00419247"
    %endif
    times 1 - ($ - %%insn_00419247) db 0
    %%insn_00419248:
    push ebp ; 00419248 55
    %if ($ - %%insn_00419248) > 1
        %error "LONG_00419248"
    %endif
    times 1 - ($ - %%insn_00419248) db 0
    %%insn_00419249:
    push eax ; 00419249 50
    %if ($ - %%insn_00419249) > 1
        %error "LONG_00419249"
    %endif
    times 1 - ($ - %%insn_00419249) db 0
    %%insn_0041924a:
    push ecx ; 0041924A 51
    %if ($ - %%insn_0041924a) > 1
        %error "LONG_0041924A"
    %endif
    times 1 - ($ - %%insn_0041924a) db 0
    %%insn_0041924b:
    call 0x40e7f0 ; 0041924B E8A055FFFF
    %if ($ - %%insn_0041924b) > 5
        %error "LONG_0041924B"
    %endif
    times 5 - ($ - %%insn_0041924b) db 0
    %%insn_00419250:
    add esp,0x10 ; 00419250 83C410
    %if ($ - %%insn_00419250) > 3
        %error "LONG_00419250"
    %endif
    times 3 - ($ - %%insn_00419250) db 0
    %%insn_00419253:
    test eax,eax ; 00419253 85C0
    %if ($ - %%insn_00419253) > 2
        %error "LONG_00419253"
    %endif
    times 2 - ($ - %%insn_00419253) db 0
    %%insn_00419255:
    jz short 0x41925b ; 00419255 7404
    %if ($ - %%insn_00419255) > 2
        %error "LONG_00419255"
    %endif
    times 2 - ($ - %%insn_00419255) db 0
    db 0x8B, 0xDE ; 00419257 8BDE | mov ebx,esi | encoding preserved
    %%insn_00419259:
    jmp short 0x4192a5 ; 00419259 EB4A
    %if ($ - %%insn_00419259) > 2
        %error "LONG_00419259"
    %endif
    times 2 - ($ - %%insn_00419259) db 0
    %%insn_0041925b:
    push ebx ; 0041925B 53
    %if ($ - %%insn_0041925b) > 1
        %error "LONG_0041925B"
    %endif
    times 1 - ($ - %%insn_0041925b) db 0
    %%insn_0041925c:
    call 0x40e430 ; 0041925C E8CF51FFFF
    %if ($ - %%insn_0041925c) > 5
        %error "LONG_0041925C"
    %endif
    times 5 - ($ - %%insn_0041925c) db 0
    db 0x8B, 0xD8 ; 00419261 8BD8 | mov ebx,eax | encoding preserved
    %%insn_00419263:
    add esp,0x4 ; 00419263 83C404
    %if ($ - %%insn_00419263) > 3
        %error "LONG_00419263"
    %endif
    times 3 - ($ - %%insn_00419263) db 0
    %%insn_00419266:
    test ebx,ebx ; 00419266 85DB
    %if ($ - %%insn_00419266) > 2
        %error "LONG_00419266"
    %endif
    times 2 - ($ - %%insn_00419266) db 0
    %%insn_00419268:
    jz short 0x4192a9 ; 00419268 743F
    %if ($ - %%insn_00419268) > 2
        %error "LONG_00419268"
    %endif
    times 2 - ($ - %%insn_00419268) db 0
    db 0x33, 0xC0 ; 0041926A 33C0 | xor eax,eax | encoding preserved
    %%insn_0041926c:
    mov al,[ebp+0x0] ; 0041926C 8A4500
    %if ($ - %%insn_0041926c) > 3
        %error "LONG_0041926C"
    %endif
    times 3 - ($ - %%insn_0041926c) db 0
    %%insn_0041926f:
    shl eax,byte 0x4 ; 0041926F C1E004
    %if ($ - %%insn_0041926f) > 3
        %error "LONG_0041926F"
    %endif
    times 3 - ($ - %%insn_0041926f) db 0
    db 0x3B, 0xC7 ; 00419272 3BC7 | cmp eax,edi | encoding preserved
    %%insn_00419274:
    jc short 0x419278 ; 00419274 7202
    %if ($ - %%insn_00419274) > 2
        %error "LONG_00419274"
    %endif
    times 2 - ($ - %%insn_00419274) db 0
    db 0x8B, 0xC7 ; 00419276 8BC7 | mov eax,edi | encoding preserved
    db 0x8B, 0xC8 ; 00419278 8BC8 | mov ecx,eax | encoding preserved
    db 0x8B, 0xFB ; 0041927A 8BFB | mov edi,ebx | encoding preserved
    db 0x8B, 0xD1 ; 0041927C 8BD1 | mov edx,ecx | encoding preserved
    %%insn_0041927e:
    push ebp ; 0041927E 55
    %if ($ - %%insn_0041927e) > 1
        %error "LONG_0041927E"
    %endif
    times 1 - ($ - %%insn_0041927e) db 0
    %%insn_0041927f:
    shr ecx,byte 0x2 ; 0041927F C1E902
    %if ($ - %%insn_0041927f) > 3
        %error "LONG_0041927F"
    %endif
    times 3 - ($ - %%insn_0041927f) db 0
    %%insn_00419282:
    rep movsd ; 00419282 F3A5
    %if ($ - %%insn_00419282) > 2
        %error "LONG_00419282"
    %endif
    times 2 - ($ - %%insn_00419282) db 0
    db 0x8B, 0xCA ; 00419284 8BCA | mov ecx,edx | encoding preserved
    %%insn_00419286:
    and ecx,0x3 ; 00419286 83E103
    %if ($ - %%insn_00419286) > 3
        %error "LONG_00419286"
    %endif
    times 3 - ($ - %%insn_00419286) db 0
    %%insn_00419289:
    rep movsb ; 00419289 F3A4
    %if ($ - %%insn_00419289) > 2
        %error "LONG_00419289"
    %endif
    times 2 - ($ - %%insn_00419289) db 0
    %%insn_0041928b:
    mov eax,[esp+0x14] ; 0041928B 8B442414
    %if ($ - %%insn_0041928b) > 4
        %error "LONG_0041928B"
    %endif
    times 4 - ($ - %%insn_0041928b) db 0
    %%insn_0041928f:
    mov ecx,[esp+0x18] ; 0041928F 8B4C2418
    %if ($ - %%insn_0041928f) > 4
        %error "LONG_0041928F"
    %endif
    times 4 - ($ - %%insn_0041928f) db 0
    %%insn_00419293:
    push eax ; 00419293 50
    %if ($ - %%insn_00419293) > 1
        %error "LONG_00419293"
    %endif
    times 1 - ($ - %%insn_00419293) db 0
    %%insn_00419294:
    push ecx ; 00419294 51
    %if ($ - %%insn_00419294) > 1
        %error "LONG_00419294"
    %endif
    times 1 - ($ - %%insn_00419294) db 0
    %%insn_00419295:
    call 0x40e3d0 ; 00419295 E83651FFFF
    %if ($ - %%insn_00419295) > 5
        %error "LONG_00419295"
    %endif
    times 5 - ($ - %%insn_00419295) db 0
    %%insn_0041929a:
    mov edi,[esp+0x2c] ; 0041929A 8B7C242C
    %if ($ - %%insn_0041929a) > 4
        %error "LONG_0041929A"
    %endif
    times 4 - ($ - %%insn_0041929a) db 0
    %%insn_0041929e:
    mov esi,[esp+0x28] ; 0041929E 8B742428
    %if ($ - %%insn_0041929e) > 4
        %error "LONG_0041929E"
    %endif
    times 4 - ($ - %%insn_0041929e) db 0
    %%insn_004192a2:
    add esp,0xc ; 004192A2 83C40C
    %if ($ - %%insn_004192a2) > 3
        %error "LONG_004192A2"
    %endif
    times 3 - ($ - %%insn_004192a2) db 0
    %%insn_004192a5:
    test ebx,ebx ; 004192A5 85DB
    %if ($ - %%insn_004192a5) > 2
        %error "LONG_004192A5"
    %endif
    times 2 - ($ - %%insn_004192a5) db 0
    %%insn_004192a7:
    jnz short 0x4192f8 ; 004192A7 754F
    %if ($ - %%insn_004192a7) > 2
        %error "LONG_004192A7"
    %endif
    times 2 - ($ - %%insn_004192a7) db 0
    %%insn_004192a9:
    mov edx,[0x42358c] ; 004192A9 8B158C354200
    %if ($ - %%insn_004192a9) > 6
        %error "LONG_004192A9"
    %endif
    times 6 - ($ - %%insn_004192a9) db 0
    %%insn_004192af:
    push edi ; 004192AF 57
    %if ($ - %%insn_004192af) > 1
        %error "LONG_004192AF"
    %endif
    times 1 - ($ - %%insn_004192af) db 0
    %%insn_004192b0:
    push dword 0x0 ; 004192B0 6A00
    %if ($ - %%insn_004192b0) > 2
        %error "LONG_004192B0"
    %endif
    times 2 - ($ - %%insn_004192b0) db 0
    %%insn_004192b2:
    push edx ; 004192B2 52
    %if ($ - %%insn_004192b2) > 1
        %error "LONG_004192B2"
    %endif
    times 1 - ($ - %%insn_004192b2) db 0
    %%insn_004192b3:
    call dword near [0x424440] ; 004192B3 FF1540444200
    %if ($ - %%insn_004192b3) > 6
        %error "LONG_004192B3"
    %endif
    times 6 - ($ - %%insn_004192b3) db 0
    db 0x8B, 0xD8 ; 004192B9 8BD8 | mov ebx,eax | encoding preserved
    %%insn_004192bb:
    test ebx,ebx ; 004192BB 85DB
    %if ($ - %%insn_004192bb) > 2
        %error "LONG_004192BB"
    %endif
    times 2 - ($ - %%insn_004192bb) db 0
    %%insn_004192bd:
    jz short 0x4192f8 ; 004192BD 7439
    %if ($ - %%insn_004192bd) > 2
        %error "LONG_004192BD"
    %endif
    times 2 - ($ - %%insn_004192bd) db 0
    db 0x33, 0xC0 ; 004192BF 33C0 | xor eax,eax | encoding preserved
    %%insn_004192c1:
    mov al,[ebp+0x0] ; 004192C1 8A4500
    %if ($ - %%insn_004192c1) > 3
        %error "LONG_004192C1"
    %endif
    times 3 - ($ - %%insn_004192c1) db 0
    %%insn_004192c4:
    shl eax,byte 0x4 ; 004192C4 C1E004
    %if ($ - %%insn_004192c4) > 3
        %error "LONG_004192C4"
    %endif
    times 3 - ($ - %%insn_004192c4) db 0
    db 0x3B, 0xC7 ; 004192C7 3BC7 | cmp eax,edi | encoding preserved
    %%insn_004192c9:
    jc short 0x4192cd ; 004192C9 7202
    %if ($ - %%insn_004192c9) > 2
        %error "LONG_004192C9"
    %endif
    times 2 - ($ - %%insn_004192c9) db 0
    db 0x8B, 0xC7 ; 004192CB 8BC7 | mov eax,edi | encoding preserved
    db 0x8B, 0xC8 ; 004192CD 8BC8 | mov ecx,eax | encoding preserved
    db 0x8B, 0xFB ; 004192CF 8BFB | mov edi,ebx | encoding preserved
    %%insn_004192d1:
    shr ecx,byte 0x2 ; 004192D1 C1E902
    %if ($ - %%insn_004192d1) > 3
        %error "LONG_004192D1"
    %endif
    times 3 - ($ - %%insn_004192d1) db 0
    %%insn_004192d4:
    rep movsd ; 004192D4 F3A5
    %if ($ - %%insn_004192d4) > 2
        %error "LONG_004192D4"
    %endif
    times 2 - ($ - %%insn_004192d4) db 0
    db 0x8B, 0xC8 ; 004192D6 8BC8 | mov ecx,eax | encoding preserved
    %%insn_004192d8:
    push ebp ; 004192D8 55
    %if ($ - %%insn_004192d8) > 1
        %error "LONG_004192D8"
    %endif
    times 1 - ($ - %%insn_004192d8) db 0
    %%insn_004192d9:
    and ecx,0x3 ; 004192D9 83E103
    %if ($ - %%insn_004192d9) > 3
        %error "LONG_004192D9"
    %endif
    times 3 - ($ - %%insn_004192d9) db 0
    %%insn_004192dc:
    rep movsb ; 004192DC F3A4
    %if ($ - %%insn_004192dc) > 2
        %error "LONG_004192DC"
    %endif
    times 2 - ($ - %%insn_004192dc) db 0
    %%insn_004192de:
    mov ecx,[esp+0x14] ; 004192DE 8B4C2414
    %if ($ - %%insn_004192de) > 4
        %error "LONG_004192DE"
    %endif
    times 4 - ($ - %%insn_004192de) db 0
    %%insn_004192e2:
    mov edx,[esp+0x18] ; 004192E2 8B542418
    %if ($ - %%insn_004192e2) > 4
        %error "LONG_004192E2"
    %endif
    times 4 - ($ - %%insn_004192e2) db 0
    %%insn_004192e6:
    push ecx ; 004192E6 51
    %if ($ - %%insn_004192e6) > 1
        %error "LONG_004192E6"
    %endif
    times 1 - ($ - %%insn_004192e6) db 0
    %%insn_004192e7:
    push edx ; 004192E7 52
    %if ($ - %%insn_004192e7) > 1
        %error "LONG_004192E7"
    %endif
    times 1 - ($ - %%insn_004192e7) db 0
    %%insn_004192e8:
    call 0x40e3d0 ; 004192E8 E8E350FFFF
    %if ($ - %%insn_004192e8) > 5
        %error "LONG_004192E8"
    %endif
    times 5 - ($ - %%insn_004192e8) db 0
    %%insn_004192ed:
    mov edi,[esp+0x2c] ; 004192ED 8B7C242C
    %if ($ - %%insn_004192ed) > 4
        %error "LONG_004192ED"
    %endif
    times 4 - ($ - %%insn_004192ed) db 0
    %%insn_004192f1:
    mov esi,[esp+0x28] ; 004192F1 8B742428
    %if ($ - %%insn_004192f1) > 4
        %error "LONG_004192F1"
    %endif
    times 4 - ($ - %%insn_004192f1) db 0
    %%insn_004192f5:
    add esp,0xc ; 004192F5 83C40C
    %if ($ - %%insn_004192f5) > 3
        %error "LONG_004192F5"
    %endif
    times 3 - ($ - %%insn_004192f5) db 0
    %%insn_004192f8:
    push dword 0x9 ; 004192F8 6A09
    %if ($ - %%insn_004192f8) > 2
        %error "LONG_004192F8"
    %endif
    times 2 - ($ - %%insn_004192f8) db 0
    %%insn_004192fa:
    call 0x40df80 ; 004192FA E8814CFFFF
    %if ($ - %%insn_004192fa) > 5
        %error "LONG_004192FA"
    %endif
    times 5 - ($ - %%insn_004192fa) db 0
    %%insn_004192ff:
    add esp,0x4 ; 004192FF 83C404
    %if ($ - %%insn_004192ff) > 3
        %error "LONG_004192FF"
    %endif
    times 3 - ($ - %%insn_004192ff) db 0
    %%insn_00419302:
    jmp short 0x419320 ; 00419302 EB1C
    %if ($ - %%insn_00419302) > 2
        %error "LONG_00419302"
    %endif
    times 2 - ($ - %%insn_00419302) db 0
    %%insn_00419304:
    push dword 0x9 ; 00419304 6A09
    %if ($ - %%insn_00419304) > 2
        %error "LONG_00419304"
    %endif
    times 2 - ($ - %%insn_00419304) db 0
    %%insn_00419306:
    call 0x40df80 ; 00419306 E8754CFFFF
    %if ($ - %%insn_00419306) > 5
        %error "LONG_00419306"
    %endif
    times 5 - ($ - %%insn_00419306) db 0
    %%insn_0041930b:
    mov eax,[0x42358c] ; 0041930B A18C354200
    %if ($ - %%insn_0041930b) > 5
        %error "LONG_0041930B"
    %endif
    times 5 - ($ - %%insn_0041930b) db 0
    %%insn_00419310:
    add esp,0x4 ; 00419310 83C404
    %if ($ - %%insn_00419310) > 3
        %error "LONG_00419310"
    %endif
    times 3 - ($ - %%insn_00419310) db 0
    %%insn_00419313:
    push edi ; 00419313 57
    %if ($ - %%insn_00419313) > 1
        %error "LONG_00419313"
    %endif
    times 1 - ($ - %%insn_00419313) db 0
    %%insn_00419314:
    push esi ; 00419314 56
    %if ($ - %%insn_00419314) > 1
        %error "LONG_00419314"
    %endif
    times 1 - ($ - %%insn_00419314) db 0
    %%insn_00419315:
    push dword 0x0 ; 00419315 6A00
    %if ($ - %%insn_00419315) > 2
        %error "LONG_00419315"
    %endif
    times 2 - ($ - %%insn_00419315) db 0
    %%insn_00419317:
    push eax ; 00419317 50
    %if ($ - %%insn_00419317) > 1
        %error "LONG_00419317"
    %endif
    times 1 - ($ - %%insn_00419317) db 0
    %%insn_00419318:
    call dword near [0x4243cc] ; 00419318 FF15CC434200
    %if ($ - %%insn_00419318) > 6
        %error "LONG_00419318"
    %endif
    times 6 - ($ - %%insn_00419318) db 0
    db 0x8B, 0xD8 ; 0041931E 8BD8 | mov ebx,eax | encoding preserved
    %%insn_00419320:
    test ebx,ebx ; 00419320 85DB
    %if ($ - %%insn_00419320) > 2
        %error "LONG_00419320"
    %endif
    times 2 - ($ - %%insn_00419320) db 0
    %%insn_00419322:
    jnz short 0x419346 ; 00419322 7522
    %if ($ - %%insn_00419322) > 2
        %error "LONG_00419322"
    %endif
    times 2 - ($ - %%insn_00419322) db 0
    %%insn_00419324:
    mov eax,[0x420f0c] ; 00419324 A10C0F4200
    %if ($ - %%insn_00419324) > 5
        %error "LONG_00419324"
    %endif
    times 5 - ($ - %%insn_00419324) db 0
    %%insn_00419329:
    test eax,eax ; 00419329 85C0
    %if ($ - %%insn_00419329) > 2
        %error "LONG_00419329"
    %endif
    times 2 - ($ - %%insn_00419329) db 0
    %%insn_0041932b:
    jz short 0x419346 ; 0041932B 7419
    %if ($ - %%insn_0041932b) > 2
        %error "LONG_0041932B"
    %endif
    times 2 - ($ - %%insn_0041932b) db 0
    %%insn_0041932d:
    push edi ; 0041932D 57
    %if ($ - %%insn_0041932d) > 1
        %error "LONG_0041932D"
    %endif
    times 1 - ($ - %%insn_0041932d) db 0
    %%insn_0041932e:
    call 0x40f6c0 ; 0041932E E88D63FFFF
    %if ($ - %%insn_0041932e) > 5
        %error "LONG_0041932E"
    %endif
    times 5 - ($ - %%insn_0041932e) db 0
    %%insn_00419333:
    add esp,0x4 ; 00419333 83C404
    %if ($ - %%insn_00419333) > 3
        %error "LONG_00419333"
    %endif
    times 3 - ($ - %%insn_00419333) db 0
    %%insn_00419336:
    test eax,eax ; 00419336 85C0
    %if ($ - %%insn_00419336) > 2
        %error "LONG_00419336"
    %endif
    times 2 - ($ - %%insn_00419336) db 0
    %%insn_00419338:
    jnz 0x419200 ; 00419338 0F85C2FEFFFF
    %if ($ - %%insn_00419338) > 6
        %error "LONG_00419338"
    %endif
    times 6 - ($ - %%insn_00419338) db 0
    %%insn_0041933e:
    pop edi ; 0041933E 5F
    %if ($ - %%insn_0041933e) > 1
        %error "LONG_0041933E"
    %endif
    times 1 - ($ - %%insn_0041933e) db 0
    %%insn_0041933f:
    pop esi ; 0041933F 5E
    %if ($ - %%insn_0041933f) > 1
        %error "LONG_0041933F"
    %endif
    times 1 - ($ - %%insn_0041933f) db 0
    %%insn_00419340:
    pop ebp ; 00419340 5D
    %if ($ - %%insn_00419340) > 1
        %error "LONG_00419340"
    %endif
    times 1 - ($ - %%insn_00419340) db 0
    %%insn_00419341:
    pop ebx ; 00419341 5B
    %if ($ - %%insn_00419341) > 1
        %error "LONG_00419341"
    %endif
    times 1 - ($ - %%insn_00419341) db 0
    %%insn_00419342:
    add esp,0x8 ; 00419342 83C408
    %if ($ - %%insn_00419342) > 3
        %error "LONG_00419342"
    %endif
    times 3 - ($ - %%insn_00419342) db 0
    %%insn_00419345:
    ret ; 00419345 C3
    %if ($ - %%insn_00419345) > 1
        %error "LONG_00419345"
    %endif
    times 1 - ($ - %%insn_00419345) db 0
    %%insn_00419346:
    pop edi ; 00419346 5F
    %if ($ - %%insn_00419346) > 1
        %error "LONG_00419346"
    %endif
    times 1 - ($ - %%insn_00419346) db 0
    %%insn_00419347:
    pop esi ; 00419347 5E
    %if ($ - %%insn_00419347) > 1
        %error "LONG_00419347"
    %endif
    times 1 - ($ - %%insn_00419347) db 0
    db 0x8B, 0xC3 ; 00419348 8BC3 | mov eax,ebx | encoding preserved
    %%insn_0041934a:
    pop ebp ; 0041934A 5D
    %if ($ - %%insn_0041934a) > 1
        %error "LONG_0041934A"
    %endif
    times 1 - ($ - %%insn_0041934a) db 0
    %%insn_0041934b:
    pop ebx ; 0041934B 5B
    %if ($ - %%insn_0041934b) > 1
        %error "LONG_0041934B"
    %endif
    times 1 - ($ - %%insn_0041934b) db 0
    %%insn_0041934c:
    add esp,0x8 ; 0041934C 83C408
    %if ($ - %%insn_0041934c) > 3
        %error "LONG_0041934C"
    %endif
    times 3 - ($ - %%insn_0041934c) db 0
    %%insn_0041934f:
    ret ; 0041934F C3
    %if ($ - %%insn_0041934f) > 1
        %error "LONG_0041934F"
    %endif
    times 1 - ($ - %%insn_0041934f) db 0
    %if ($ - %%fragment_start) != 432
        %error "function fragment size drift: 004191A0"
    %endif
%endmacro
