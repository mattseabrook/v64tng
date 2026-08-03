; PE virtual entry 00404350
; Ghidra working symbol: FUN_00404350
; Verified game subsystem initialization role.
; Generated losslessly; preserve byte identity after edits.

%macro emit_init_game_subsystems_part_00 0
    %%fragment_start:
init_game_subsystems:
    %%insn_00404350:
    push ebp ; 00404350 55
    %if ($ - %%insn_00404350) > 1
        %error "LONG_00404350"
    %endif
    times 1 - ($ - %%insn_00404350) db 0
    db 0x8B, 0xEC ; 00404351 8BEC | mov ebp,esp | encoding preserved
    %%insn_00404353:
    sub esp,0x8 ; 00404353 83EC08
    %if ($ - %%insn_00404353) > 3
        %error "LONG_00404353"
    %endif
    times 3 - ($ - %%insn_00404353) db 0
    %%insn_00404356:
    push dword 0x41b240 ; 00404356 6840B24100
    %if ($ - %%insn_00404356) > 5
        %error "LONG_00404356"
    %endif
    times 5 - ($ - %%insn_00404356) db 0
    %%insn_0040435b:
    push dword 0x41b244 ; 0040435B 6844B24100
    %if ($ - %%insn_0040435b) > 5
        %error "LONG_0040435B"
    %endif
    times 5 - ($ - %%insn_0040435b) db 0
    %%insn_00404360:
    call 0x40d150 ; 00404360 E8EB8D0000
    %if ($ - %%insn_00404360) > 5
        %error "LONG_00404360"
    %endif
    times 5 - ($ - %%insn_00404360) db 0
    %%insn_00404365:
    add esp,0x8 ; 00404365 83C408
    %if ($ - %%insn_00404365) > 3
        %error "LONG_00404365"
    %endif
    times 3 - ($ - %%insn_00404365) db 0
    %%insn_00404368:
    mov [ebp-0x8],eax ; 00404368 8945F8
    %if ($ - %%insn_00404368) > 3
        %error "LONG_00404368"
    %endif
    times 3 - ($ - %%insn_00404368) db 0
    %%insn_0040436b:
    cmp dword [ebp-0x8],0x0 ; 0040436B 837DF800
    %if ($ - %%insn_0040436b) > 4
        %error "LONG_0040436B"
    %endif
    times 4 - ($ - %%insn_0040436b) db 0
    %%insn_0040436f:
    jnz short 0x40437d ; 0040436F 750C
    %if ($ - %%insn_0040436f) > 2
        %error "LONG_0040436F"
    %endif
    times 2 - ($ - %%insn_0040436f) db 0
    %%insn_00404371:
    push dword 0x1 ; 00404371 6A01
    %if ($ - %%insn_00404371) > 2
        %error "LONG_00404371"
    %endif
    times 2 - ($ - %%insn_00404371) db 0
    %%insn_00404373:
    push dword 0x11 ; 00404373 6A11
    %if ($ - %%insn_00404373) > 2
        %error "LONG_00404373"
    %endif
    times 2 - ($ - %%insn_00404373) db 0
    %%insn_00404375:
    call 0x409691 ; 00404375 E817530000
    %if ($ - %%insn_00404375) > 5
        %error "LONG_00404375"
    %endif
    times 5 - ($ - %%insn_00404375) db 0
    %%insn_0040437a:
    add esp,0x8 ; 0040437A 83C408
    %if ($ - %%insn_0040437a) > 3
        %error "LONG_0040437A"
    %endif
    times 3 - ($ - %%insn_0040437a) db 0
    %%insn_0040437d:
    mov eax,[ebp-0x8] ; 0040437D 8B45F8
    %if ($ - %%insn_0040437d) > 3
        %error "LONG_0040437D"
    %endif
    times 3 - ($ - %%insn_0040437d) db 0
    %%insn_00404380:
    mov ecx,[eax+0x10] ; 00404380 8B4810
    %if ($ - %%insn_00404380) > 3
        %error "LONG_00404380"
    %endif
    times 3 - ($ - %%insn_00404380) db 0
    %%insn_00404383:
    push ecx ; 00404383 51
    %if ($ - %%insn_00404383) > 1
        %error "LONG_00404383"
    %endif
    times 1 - ($ - %%insn_00404383) db 0
    %%insn_00404384:
    call 0x40d3c0 ; 00404384 E837900000
    %if ($ - %%insn_00404384) > 5
        %error "LONG_00404384"
    %endif
    times 5 - ($ - %%insn_00404384) db 0
    %%insn_00404389:
    add esp,0x4 ; 00404389 83C404
    %if ($ - %%insn_00404389) > 3
        %error "LONG_00404389"
    %endif
    times 3 - ($ - %%insn_00404389) db 0
    %%insn_0040438c:
    mov [ebp-0x4],eax ; 0040438C 8945FC
    %if ($ - %%insn_0040438c) > 3
        %error "LONG_0040438C"
    %endif
    times 3 - ($ - %%insn_0040438c) db 0
    %%insn_0040438f:
    mov edx,[ebp-0x4] ; 0040438F 8B55FC
    %if ($ - %%insn_0040438f) > 3
        %error "LONG_0040438F"
    %endif
    times 3 - ($ - %%insn_0040438f) db 0
    %%insn_00404392:
    push edx ; 00404392 52
    %if ($ - %%insn_00404392) > 1
        %error "LONG_00404392"
    %endif
    times 1 - ($ - %%insn_00404392) db 0
    %%insn_00404393:
    call 0x40cdc0 ; 00404393 E8288A0000
    %if ($ - %%insn_00404393) > 5
        %error "LONG_00404393"
    %endif
    times 5 - ($ - %%insn_00404393) db 0
    %%insn_00404398:
    add esp,0x4 ; 00404398 83C404
    %if ($ - %%insn_00404398) > 3
        %error "LONG_00404398"
    %endif
    times 3 - ($ - %%insn_00404398) db 0
    %%insn_0040439b:
    mov [0x421f64],eax ; 0040439B A3641F4200
    %if ($ - %%insn_0040439b) > 5
        %error "LONG_0040439B"
    %endif
    times 5 - ($ - %%insn_0040439b) db 0
    %%insn_004043a0:
    cmp dword [0x421f64],0x0 ; 004043A0 833D641F420000
    %if ($ - %%insn_004043a0) > 7
        %error "LONG_004043A0"
    %endif
    times 7 - ($ - %%insn_004043a0) db 0
    %%insn_004043a7:
    jnz short 0x4043b5 ; 004043A7 750C
    %if ($ - %%insn_004043a7) > 2
        %error "LONG_004043A7"
    %endif
    times 2 - ($ - %%insn_004043a7) db 0
    %%insn_004043a9:
    push dword 0x1 ; 004043A9 6A01
    %if ($ - %%insn_004043a9) > 2
        %error "LONG_004043A9"
    %endif
    times 2 - ($ - %%insn_004043a9) db 0
    %%insn_004043ab:
    push dword 0x8 ; 004043AB 6A08
    %if ($ - %%insn_004043ab) > 2
        %error "LONG_004043AB"
    %endif
    times 2 - ($ - %%insn_004043ab) db 0
    %%insn_004043ad:
    call 0x409691 ; 004043AD E8DF520000
    %if ($ - %%insn_004043ad) > 5
        %error "LONG_004043AD"
    %endif
    times 5 - ($ - %%insn_004043ad) db 0
    %%insn_004043b2:
    add esp,0x8 ; 004043B2 83C408
    %if ($ - %%insn_004043b2) > 3
        %error "LONG_004043B2"
    %endif
    times 3 - ($ - %%insn_004043b2) db 0
    %%insn_004043b5:
    mov eax,[ebp-0x8] ; 004043B5 8B45F8
    %if ($ - %%insn_004043b5) > 3
        %error "LONG_004043B5"
    %endif
    times 3 - ($ - %%insn_004043b5) db 0
    %%insn_004043b8:
    push eax ; 004043B8 50
    %if ($ - %%insn_004043b8) > 1
        %error "LONG_004043B8"
    %endif
    times 1 - ($ - %%insn_004043b8) db 0
    %%insn_004043b9:
    push dword 0x1 ; 004043B9 6A01
    %if ($ - %%insn_004043b9) > 2
        %error "LONG_004043B9"
    %endif
    times 2 - ($ - %%insn_004043b9) db 0
    %%insn_004043bb:
    mov ecx,[ebp-0x4] ; 004043BB 8B4DFC
    %if ($ - %%insn_004043bb) > 3
        %error "LONG_004043BB"
    %endif
    times 3 - ($ - %%insn_004043bb) db 0
    %%insn_004043be:
    push ecx ; 004043BE 51
    %if ($ - %%insn_004043be) > 1
        %error "LONG_004043BE"
    %endif
    times 1 - ($ - %%insn_004043be) db 0
    %%insn_004043bf:
    mov edx,[0x421f64] ; 004043BF 8B15641F4200
    %if ($ - %%insn_004043bf) > 6
        %error "LONG_004043BF"
    %endif
    times 6 - ($ - %%insn_004043bf) db 0
    %%insn_004043c5:
    push edx ; 004043C5 52
    %if ($ - %%insn_004043c5) > 1
        %error "LONG_004043C5"
    %endif
    times 1 - ($ - %%insn_004043c5) db 0
    %%insn_004043c6:
    call 0x40d170 ; 004043C6 E8A58D0000
    %if ($ - %%insn_004043c6) > 5
        %error "LONG_004043C6"
    %endif
    times 5 - ($ - %%insn_004043c6) db 0
    %%insn_004043cb:
    add esp,0x10 ; 004043CB 83C410
    %if ($ - %%insn_004043cb) > 3
        %error "LONG_004043CB"
    %endif
    times 3 - ($ - %%insn_004043cb) db 0
    %%insn_004043ce:
    cmp eax,0x1 ; 004043CE 83F801
    %if ($ - %%insn_004043ce) > 3
        %error "LONG_004043CE"
    %endif
    times 3 - ($ - %%insn_004043ce) db 0
    %%insn_004043d1:
    jz short 0x4043df ; 004043D1 740C
    %if ($ - %%insn_004043d1) > 2
        %error "LONG_004043D1"
    %endif
    times 2 - ($ - %%insn_004043d1) db 0
    %%insn_004043d3:
    push dword 0x1 ; 004043D3 6A01
    %if ($ - %%insn_004043d3) > 2
        %error "LONG_004043D3"
    %endif
    times 2 - ($ - %%insn_004043d3) db 0
    %%insn_004043d5:
    push dword 0x11 ; 004043D5 6A11
    %if ($ - %%insn_004043d5) > 2
        %error "LONG_004043D5"
    %endif
    times 2 - ($ - %%insn_004043d5) db 0
    %%insn_004043d7:
    call 0x409691 ; 004043D7 E8B5520000
    %if ($ - %%insn_004043d7) > 5
        %error "LONG_004043D7"
    %endif
    times 5 - ($ - %%insn_004043d7) db 0
    %%insn_004043dc:
    add esp,0x8 ; 004043DC 83C408
    %if ($ - %%insn_004043dc) > 3
        %error "LONG_004043DC"
    %endif
    times 3 - ($ - %%insn_004043dc) db 0
    %%insn_004043df:
    mov eax,[ebp-0x8] ; 004043DF 8B45F8
    %if ($ - %%insn_004043df) > 3
        %error "LONG_004043DF"
    %endif
    times 3 - ($ - %%insn_004043df) db 0
    %%insn_004043e2:
    push eax ; 004043E2 50
    %if ($ - %%insn_004043e2) > 1
        %error "LONG_004043E2"
    %endif
    times 1 - ($ - %%insn_004043e2) db 0
    %%insn_004043e3:
    call 0x40ced0 ; 004043E3 E8E88A0000
    %if ($ - %%insn_004043e3) > 5
        %error "LONG_004043E3"
    %endif
    times 5 - ($ - %%insn_004043e3) db 0
    %%insn_004043e8:
    add esp,0x4 ; 004043E8 83C404
    %if ($ - %%insn_004043e8) > 3
        %error "LONG_004043E8"
    %endif
    times 3 - ($ - %%insn_004043e8) db 0
    %%insn_004043eb:
    push dword 0x10000 ; 004043EB 6800000100
    %if ($ - %%insn_004043eb) > 5
        %error "LONG_004043EB"
    %endif
    times 5 - ($ - %%insn_004043eb) db 0
    %%insn_004043f0:
    call 0x40cdc0 ; 004043F0 E8CB890000
    %if ($ - %%insn_004043f0) > 5
        %error "LONG_004043F0"
    %endif
    times 5 - ($ - %%insn_004043f0) db 0
    %%insn_004043f5:
    add esp,0x4 ; 004043F5 83C404
    %if ($ - %%insn_004043f5) > 3
        %error "LONG_004043F5"
    %endif
    times 3 - ($ - %%insn_004043f5) db 0
    %%insn_004043f8:
    mov [0x422380],eax ; 004043F8 A380234200
    %if ($ - %%insn_004043f8) > 5
        %error "LONG_004043F8"
    %endif
    times 5 - ($ - %%insn_004043f8) db 0
    %%insn_004043fd:
    push dword 0x1000 ; 004043FD 6800100000
    %if ($ - %%insn_004043fd) > 5
        %error "LONG_004043FD"
    %endif
    times 5 - ($ - %%insn_004043fd) db 0
    %%insn_00404402:
    call 0x40cdc0 ; 00404402 E8B9890000
    %if ($ - %%insn_00404402) > 5
        %error "LONG_00404402"
    %endif
    times 5 - ($ - %%insn_00404402) db 0
    %%insn_00404407:
    add esp,0x4 ; 00404407 83C404
    %if ($ - %%insn_00404407) > 3
        %error "LONG_00404407"
    %endif
    times 3 - ($ - %%insn_00404407) db 0
    %%insn_0040440a:
    mov [0x421f60],eax ; 0040440A A3601F4200
    %if ($ - %%insn_0040440a) > 5
        %error "LONG_0040440A"
    %endif
    times 5 - ($ - %%insn_0040440a) db 0
    %%insn_0040440f:
    mov dword [0x41b234],0x1 ; 0040440F C70534B2410001000000
    %if ($ - %%insn_0040440f) > 10
        %error "LONG_0040440F"
    %endif
    times 10 - ($ - %%insn_0040440f) db 0
    db 0x8B, 0xE5 ; 00404419 8BE5 | mov esp,ebp | encoding preserved
    %%insn_0040441b:
    pop ebp ; 0040441B 5D
    %if ($ - %%insn_0040441b) > 1
        %error "LONG_0040441B"
    %endif
    times 1 - ($ - %%insn_0040441b) db 0
    %%insn_0040441c:
    ret ; 0040441C C3
    %if ($ - %%insn_0040441c) > 1
        %error "LONG_0040441C"
    %endif
    times 1 - ($ - %%insn_0040441c) db 0
    %if ($ - %%fragment_start) != 205
        %error "function fragment size drift: 00404350"
    %endif
%endmacro
