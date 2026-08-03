; PE virtual entry 00409396
; Ghidra working symbol: FUN_00409396
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00409396_part_00 0
    %%fragment_start:
func_00409396:
    %%insn_00409396:
    push ebp ; 00409396 55
    %if ($ - %%insn_00409396) > 1
        %error "LONG_00409396"
    %endif
    times 1 - ($ - %%insn_00409396) db 0
    db 0x8B, 0xEC ; 00409397 8BEC | mov ebp,esp | encoding preserved
    %%insn_00409399:
    sub esp,0x10 ; 00409399 83EC10
    %if ($ - %%insn_00409399) > 3
        %error "LONG_00409399"
    %endif
    times 3 - ($ - %%insn_00409399) db 0
    %%insn_0040939c:
    push esi ; 0040939C 56
    %if ($ - %%insn_0040939c) > 1
        %error "LONG_0040939C"
    %endif
    times 1 - ($ - %%insn_0040939c) db 0
    %%insn_0040939d:
    push dword 0x41f5b0 ; 0040939D 68B0F54100
    %if ($ - %%insn_0040939d) > 5
        %error "LONG_0040939D"
    %endif
    times 5 - ($ - %%insn_0040939d) db 0
    %%insn_004093a2:
    call dword near [0x424504] ; 004093A2 FF1504454200
    %if ($ - %%insn_004093a2) > 6
        %error "LONG_004093A2"
    %endif
    times 6 - ($ - %%insn_004093a2) db 0
    %%insn_004093a8:
    cmp dword [0x41f5e4],0x0 ; 004093A8 833DE4F5410000
    %if ($ - %%insn_004093a8) > 7
        %error "LONG_004093A8"
    %endif
    times 7 - ($ - %%insn_004093a8) db 0
    %%insn_004093af:
    jz short 0x4093e0 ; 004093AF 742F
    %if ($ - %%insn_004093af) > 2
        %error "LONG_004093AF"
    %endif
    times 2 - ($ - %%insn_004093af) db 0
    %%insn_004093b1:
    lea eax,[ebp-0x10] ; 004093B1 8D45F0
    %if ($ - %%insn_004093b1) > 3
        %error "LONG_004093B1"
    %endif
    times 3 - ($ - %%insn_004093b1) db 0
    %%insn_004093b4:
    push eax ; 004093B4 50
    %if ($ - %%insn_004093b4) > 1
        %error "LONG_004093B4"
    %endif
    times 1 - ($ - %%insn_004093b4) db 0
    %%insn_004093b5:
    mov ecx,[0x41f5bc] ; 004093B5 8B0DBCF54100
    %if ($ - %%insn_004093b5) > 6
        %error "LONG_004093B5"
    %endif
    times 6 - ($ - %%insn_004093b5) db 0
    %%insn_004093bb:
    push ecx ; 004093BB 51
    %if ($ - %%insn_004093bb) > 1
        %error "LONG_004093BB"
    %endif
    times 1 - ($ - %%insn_004093bb) db 0
    %%insn_004093bc:
    call dword near [0x424508] ; 004093BC FF1508454200
    %if ($ - %%insn_004093bc) > 6
        %error "LONG_004093BC"
    %endif
    times 6 - ($ - %%insn_004093bc) db 0
    %%insn_004093c2:
    mov edx,[0x41f5b0] ; 004093C2 8B15B0F54100
    %if ($ - %%insn_004093c2) > 6
        %error "LONG_004093C2"
    %endif
    times 6 - ($ - %%insn_004093c2) db 0
    %%insn_004093c8:
    sub edx,[ebp-0x10] ; 004093C8 2B55F0
    %if ($ - %%insn_004093c8) > 3
        %error "LONG_004093C8"
    %endif
    times 3 - ($ - %%insn_004093c8) db 0
    %%insn_004093cb:
    mov [0x41f5d0],edx ; 004093CB 8915D0F54100
    %if ($ - %%insn_004093cb) > 6
        %error "LONG_004093CB"
    %endif
    times 6 - ($ - %%insn_004093cb) db 0
    %%insn_004093d1:
    mov eax,[0x41f5b4] ; 004093D1 A1B4F54100
    %if ($ - %%insn_004093d1) > 5
        %error "LONG_004093D1"
    %endif
    times 5 - ($ - %%insn_004093d1) db 0
    %%insn_004093d6:
    sub eax,[ebp-0xc] ; 004093D6 2B45F4
    %if ($ - %%insn_004093d6) > 3
        %error "LONG_004093D6"
    %endif
    times 3 - ($ - %%insn_004093d6) db 0
    %%insn_004093d9:
    mov [0x41f5d4],eax ; 004093D9 A3D4F54100
    %if ($ - %%insn_004093d9) > 5
        %error "LONG_004093D9"
    %endif
    times 5 - ($ - %%insn_004093d9) db 0
    %%insn_004093de:
    jmp short 0x40942d ; 004093DE EB4D
    %if ($ - %%insn_004093de) > 2
        %error "LONG_004093DE"
    %endif
    times 2 - ($ - %%insn_004093de) db 0
    %%insn_004093e0:
    lea ecx,[ebp-0x10] ; 004093E0 8D4DF0
    %if ($ - %%insn_004093e0) > 3
        %error "LONG_004093E0"
    %endif
    times 3 - ($ - %%insn_004093e0) db 0
    %%insn_004093e3:
    push ecx ; 004093E3 51
    %if ($ - %%insn_004093e3) > 1
        %error "LONG_004093E3"
    %endif
    times 1 - ($ - %%insn_004093e3) db 0
    %%insn_004093e4:
    mov edx,[0x41f5bc] ; 004093E4 8B15BCF54100
    %if ($ - %%insn_004093e4) > 6
        %error "LONG_004093E4"
    %endif
    times 6 - ($ - %%insn_004093e4) db 0
    %%insn_004093ea:
    push edx ; 004093EA 52
    %if ($ - %%insn_004093ea) > 1
        %error "LONG_004093EA"
    %endif
    times 1 - ($ - %%insn_004093ea) db 0
    %%insn_004093eb:
    call dword near [0x424508] ; 004093EB FF1508454200
    %if ($ - %%insn_004093eb) > 6
        %error "LONG_004093EB"
    %endif
    times 6 - ($ - %%insn_004093eb) db 0
    %%insn_004093f1:
    mov esi,[0x41f5b0] ; 004093F1 8B35B0F54100
    %if ($ - %%insn_004093f1) > 6
        %error "LONG_004093F1"
    %endif
    times 6 - ($ - %%insn_004093f1) db 0
    %%insn_004093f7:
    sub esi,[ebp-0x10] ; 004093F7 2B75F0
    %if ($ - %%insn_004093f7) > 3
        %error "LONG_004093F7"
    %endif
    times 3 - ($ - %%insn_004093f7) db 0
    %%insn_004093fa:
    push dword 0x7 ; 004093FA 6A07
    %if ($ - %%insn_004093fa) > 2
        %error "LONG_004093FA"
    %endif
    times 2 - ($ - %%insn_004093fa) db 0
    %%insn_004093fc:
    call dword near [0x4244fc] ; 004093FC FF15FC444200
    %if ($ - %%insn_004093fc) > 6
        %error "LONG_004093FC"
    %endif
    times 6 - ($ - %%insn_004093fc) db 0
    db 0x2B, 0xF0 ; 00409402 2BF0 | sub esi,eax | encoding preserved
    %%insn_00409404:
    mov [0x41f5d0],esi ; 00409404 8935D0F54100
    %if ($ - %%insn_00409404) > 6
        %error "LONG_00409404"
    %endif
    times 6 - ($ - %%insn_00409404) db 0
    %%insn_0040940a:
    mov esi,[0x41f5b4] ; 0040940A 8B35B4F54100
    %if ($ - %%insn_0040940a) > 6
        %error "LONG_0040940A"
    %endif
    times 6 - ($ - %%insn_0040940a) db 0
    %%insn_00409410:
    sub esi,[ebp-0xc] ; 00409410 2B75F4
    %if ($ - %%insn_00409410) > 3
        %error "LONG_00409410"
    %endif
    times 3 - ($ - %%insn_00409410) db 0
    %%insn_00409413:
    push dword 0x8 ; 00409413 6A08
    %if ($ - %%insn_00409413) > 2
        %error "LONG_00409413"
    %endif
    times 2 - ($ - %%insn_00409413) db 0
    %%insn_00409415:
    call dword near [0x4244fc] ; 00409415 FF15FC444200
    %if ($ - %%insn_00409415) > 6
        %error "LONG_00409415"
    %endif
    times 6 - ($ - %%insn_00409415) db 0
    db 0x2B, 0xF0 ; 0040941B 2BF0 | sub esi,eax | encoding preserved
    %%insn_0040941d:
    push dword 0x4 ; 0040941D 6A04
    %if ($ - %%insn_0040941d) > 2
        %error "LONG_0040941D"
    %endif
    times 2 - ($ - %%insn_0040941d) db 0
    %%insn_0040941f:
    call dword near [0x4244fc] ; 0040941F FF15FC444200
    %if ($ - %%insn_0040941f) > 6
        %error "LONG_0040941F"
    %endif
    times 6 - ($ - %%insn_0040941f) db 0
    db 0x2B, 0xF0 ; 00409425 2BF0 | sub esi,eax | encoding preserved
    %%insn_00409427:
    mov [0x41f5d4],esi ; 00409427 8935D4F54100
    %if ($ - %%insn_00409427) > 6
        %error "LONG_00409427"
    %endif
    times 6 - ($ - %%insn_00409427) db 0
    %%insn_0040942d:
    cmp dword [0x41f5d0],0x0 ; 0040942D 833DD0F5410000
    %if ($ - %%insn_0040942d) > 7
        %error "LONG_0040942D"
    %endif
    times 7 - ($ - %%insn_0040942d) db 0
    %%insn_00409434:
    jnl short 0x409442 ; 00409434 7D0C
    %if ($ - %%insn_00409434) > 2
        %error "LONG_00409434"
    %endif
    times 2 - ($ - %%insn_00409434) db 0
    %%insn_00409436:
    mov dword [0x41f5d0],0x0 ; 00409436 C705D0F5410000000000
    %if ($ - %%insn_00409436) > 10
        %error "LONG_00409436"
    %endif
    times 10 - ($ - %%insn_00409436) db 0
    %%insn_00409440:
    jmp short 0x409458 ; 00409440 EB16
    %if ($ - %%insn_00409440) > 2
        %error "LONG_00409440"
    %endif
    times 2 - ($ - %%insn_00409440) db 0
    %%insn_00409442:
    cmp dword [0x41f5d0],0x280 ; 00409442 813DD0F5410080020000
    %if ($ - %%insn_00409442) > 10
        %error "LONG_00409442"
    %endif
    times 10 - ($ - %%insn_00409442) db 0
    %%insn_0040944c:
    jl short 0x409458 ; 0040944C 7C0A
    %if ($ - %%insn_0040944c) > 2
        %error "LONG_0040944C"
    %endif
    times 2 - ($ - %%insn_0040944c) db 0
    %%insn_0040944e:
    mov dword [0x41f5d0],0x27f ; 0040944E C705D0F541007F020000
    %if ($ - %%insn_0040944e) > 10
        %error "LONG_0040944E"
    %endif
    times 10 - ($ - %%insn_0040944e) db 0
    %%insn_00409458:
    cmp dword [0x41f5d4],0x0 ; 00409458 833DD4F5410000
    %if ($ - %%insn_00409458) > 7
        %error "LONG_00409458"
    %endif
    times 7 - ($ - %%insn_00409458) db 0
    %%insn_0040945f:
    jnl short 0x40946d ; 0040945F 7D0C
    %if ($ - %%insn_0040945f) > 2
        %error "LONG_0040945F"
    %endif
    times 2 - ($ - %%insn_0040945f) db 0
    %%insn_00409461:
    mov dword [0x41f5d4],0x0 ; 00409461 C705D4F5410000000000
    %if ($ - %%insn_00409461) > 10
        %error "LONG_00409461"
    %endif
    times 10 - ($ - %%insn_00409461) db 0
    %%insn_0040946b:
    jmp short 0x409483 ; 0040946B EB16
    %if ($ - %%insn_0040946b) > 2
        %error "LONG_0040946B"
    %endif
    times 2 - ($ - %%insn_0040946b) db 0
    %%insn_0040946d:
    cmp dword [0x41f5d4],0x1e0 ; 0040946D 813DD4F54100E0010000
    %if ($ - %%insn_0040946d) > 10
        %error "LONG_0040946D"
    %endif
    times 10 - ($ - %%insn_0040946d) db 0
    %%insn_00409477:
    jl short 0x409483 ; 00409477 7C0A
    %if ($ - %%insn_00409477) > 2
        %error "LONG_00409477"
    %endif
    times 2 - ($ - %%insn_00409477) db 0
    %%insn_00409479:
    mov dword [0x41f5d4],0x1df ; 00409479 C705D4F54100DF010000
    %if ($ - %%insn_00409479) > 10
        %error "LONG_00409479"
    %endif
    times 10 - ($ - %%insn_00409479) db 0
    %%insn_00409483:
    push dword 0x1 ; 00409483 6A01
    %if ($ - %%insn_00409483) > 2
        %error "LONG_00409483"
    %endif
    times 2 - ($ - %%insn_00409483) db 0
    %%insn_00409485:
    call dword near [0x424500] ; 00409485 FF1500454200
    %if ($ - %%insn_00409485) > 6
        %error "LONG_00409485"
    %endif
    times 6 - ($ - %%insn_00409485) db 0
    db 0x0F, 0xBF, 0xC0 ; 0040948B 0FBFC0 | movsx eax,ax | encoding preserved
    %%insn_0040948e:
    shr eax,byte 0x10 ; 0040948E C1E810
    %if ($ - %%insn_0040948e) > 3
        %error "LONG_0040948E"
    %endif
    times 3 - ($ - %%insn_0040948e) db 0
    %%insn_00409491:
    and eax,0xffff ; 00409491 25FFFF0000
    %if ($ - %%insn_00409491) > 5
        %error "LONG_00409491"
    %endif
    times 5 - ($ - %%insn_00409491) db 0
    %%insn_00409496:
    and eax,0xffff ; 00409496 25FFFF0000
    %if ($ - %%insn_00409496) > 5
        %error "LONG_00409496"
    %endif
    times 5 - ($ - %%insn_00409496) db 0
    %%insn_0040949b:
    test eax,eax ; 0040949B 85C0
    %if ($ - %%insn_0040949b) > 2
        %error "LONG_0040949B"
    %endif
    times 2 - ($ - %%insn_0040949b) db 0
    %%insn_0040949d:
    jz short 0x4094c7 ; 0040949D 7428
    %if ($ - %%insn_0040949d) > 2
        %error "LONG_0040949D"
    %endif
    times 2 - ($ - %%insn_0040949d) db 0
    %%insn_0040949f:
    mov ecx,[0x41f5cc] ; 0040949F 8B0DCCF54100
    %if ($ - %%insn_0040949f) > 6
        %error "LONG_0040949F"
    %endif
    times 6 - ($ - %%insn_0040949f) db 0
    %%insn_004094a5:
    or ecx,[0x41bba0] ; 004094A5 0B0DA0BB4100
    %if ($ - %%insn_004094a5) > 6
        %error "LONG_004094A5"
    %endif
    times 6 - ($ - %%insn_004094a5) db 0
    %%insn_004094ab:
    mov [0x41f5cc],ecx ; 004094AB 890DCCF54100
    %if ($ - %%insn_004094ab) > 6
        %error "LONG_004094AB"
    %endif
    times 6 - ($ - %%insn_004094ab) db 0
    %%insn_004094b1:
    mov edx,[0x41bba0] ; 004094B1 8B15A0BB4100
    %if ($ - %%insn_004094b1) > 6
        %error "LONG_004094B1"
    %endif
    times 6 - ($ - %%insn_004094b1) db 0
    %%insn_004094b7:
    not edx ; 004094B7 F7D2
    %if ($ - %%insn_004094b7) > 2
        %error "LONG_004094B7"
    %endif
    times 2 - ($ - %%insn_004094b7) db 0
    %%insn_004094b9:
    mov eax,[0x41f5c8] ; 004094B9 A1C8F54100
    %if ($ - %%insn_004094b9) > 5
        %error "LONG_004094B9"
    %endif
    times 5 - ($ - %%insn_004094b9) db 0
    db 0x23, 0xC2 ; 004094BE 23C2 | and eax,edx | encoding preserved
    %%insn_004094c0:
    mov [0x41f5c8],eax ; 004094C0 A3C8F54100
    %if ($ - %%insn_004094c0) > 5
        %error "LONG_004094C0"
    %endif
    times 5 - ($ - %%insn_004094c0) db 0
    %%insn_004094c5:
    jmp short 0x4094fe ; 004094C5 EB37
    %if ($ - %%insn_004094c5) > 2
        %error "LONG_004094C5"
    %endif
    times 2 - ($ - %%insn_004094c5) db 0
    %%insn_004094c7:
    mov ecx,[0x41f5cc] ; 004094C7 8B0DCCF54100
    %if ($ - %%insn_004094c7) > 6
        %error "LONG_004094C7"
    %endif
    times 6 - ($ - %%insn_004094c7) db 0
    %%insn_004094cd:
    and ecx,[0x41bba0] ; 004094CD 230DA0BB4100
    %if ($ - %%insn_004094cd) > 6
        %error "LONG_004094CD"
    %endif
    times 6 - ($ - %%insn_004094cd) db 0
    %%insn_004094d3:
    test ecx,ecx ; 004094D3 85C9
    %if ($ - %%insn_004094d3) > 2
        %error "LONG_004094D3"
    %endif
    times 2 - ($ - %%insn_004094d3) db 0
    %%insn_004094d5:
    jz short 0x4094fe ; 004094D5 7427
    %if ($ - %%insn_004094d5) > 2
        %error "LONG_004094D5"
    %endif
    times 2 - ($ - %%insn_004094d5) db 0
    %%insn_004094d7:
    mov edx,[0x41f5c8] ; 004094D7 8B15C8F54100
    %if ($ - %%insn_004094d7) > 6
        %error "LONG_004094D7"
    %endif
    times 6 - ($ - %%insn_004094d7) db 0
    %%insn_004094dd:
    or edx,[0x41bba0] ; 004094DD 0B15A0BB4100
    %if ($ - %%insn_004094dd) > 6
        %error "LONG_004094DD"
    %endif
    times 6 - ($ - %%insn_004094dd) db 0
    %%insn_004094e3:
    mov [0x41f5c8],edx ; 004094E3 8915C8F54100
    %if ($ - %%insn_004094e3) > 6
        %error "LONG_004094E3"
    %endif
    times 6 - ($ - %%insn_004094e3) db 0
    %%insn_004094e9:
    mov eax,[0x41bba0] ; 004094E9 A1A0BB4100
    %if ($ - %%insn_004094e9) > 5
        %error "LONG_004094E9"
    %endif
    times 5 - ($ - %%insn_004094e9) db 0
    %%insn_004094ee:
    not eax ; 004094EE F7D0
    %if ($ - %%insn_004094ee) > 2
        %error "LONG_004094EE"
    %endif
    times 2 - ($ - %%insn_004094ee) db 0
    %%insn_004094f0:
    mov ecx,[0x41f5cc] ; 004094F0 8B0DCCF54100
    %if ($ - %%insn_004094f0) > 6
        %error "LONG_004094F0"
    %endif
    times 6 - ($ - %%insn_004094f0) db 0
    db 0x23, 0xC8 ; 004094F6 23C8 | and ecx,eax | encoding preserved
    %%insn_004094f8:
    mov [0x41f5cc],ecx ; 004094F8 890DCCF54100
    %if ($ - %%insn_004094f8) > 6
        %error "LONG_004094F8"
    %endif
    times 6 - ($ - %%insn_004094f8) db 0
    %%insn_004094fe:
    pop esi ; 004094FE 5E
    %if ($ - %%insn_004094fe) > 1
        %error "LONG_004094FE"
    %endif
    times 1 - ($ - %%insn_004094fe) db 0
    db 0x8B, 0xE5 ; 004094FF 8BE5 | mov esp,ebp | encoding preserved
    %%insn_00409501:
    pop ebp ; 00409501 5D
    %if ($ - %%insn_00409501) > 1
        %error "LONG_00409501"
    %endif
    times 1 - ($ - %%insn_00409501) db 0
    %%insn_00409502:
    ret ; 00409502 C3
    %if ($ - %%insn_00409502) > 1
        %error "LONG_00409502"
    %endif
    times 1 - ($ - %%insn_00409502) db 0
    %if ($ - %%fragment_start) != 365
        %error "function fragment size drift: 00409396"
    %endif
%endmacro
