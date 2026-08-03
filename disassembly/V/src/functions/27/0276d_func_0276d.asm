; Linear entry 0276D (1000:276d)
; Ghidra working symbol: FUN_1000_276d
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_0276d_part_00 0
    %%fragment_start:
func_0276d:
    %%insn_0276d:
    pusha ; 0276D 60
    %if ($ - %%insn_0276d) > 1
        %error "LONG_0276D"
    %endif
    times 1 - ($ - %%insn_0276d) db 0
    %%insn_0276e:
    push es ; 0276E 06
    %if ($ - %%insn_0276e) > 1
        %error "LONG_0276E"
    %endif
    times 1 - ($ - %%insn_0276e) db 0
    %%insn_0276f:
    cmp word [bp-0x30de],0x0 ; 0276F 83BE22CF00
    %if ($ - %%insn_0276f) > 5
        %error "LONG_0276F"
    %endif
    times 5 - ($ - %%insn_0276f) db 0
    %%insn_02774:
    jnz short 0x27e4 ; 02774 756E
    %if ($ - %%insn_02774) > 2
        %error "LONG_02774"
    %endif
    times 2 - ($ - %%insn_02774) db 0
    %%insn_02776:
    mov es,word [bp-0x2aa8] ; 02776 8E8658D5
    %if ($ - %%insn_02776) > 4
        %error "LONG_02776"
    %endif
    times 4 - ($ - %%insn_02776) db 0
    db 0x32, 0xE4 ; 0277A 32E4 | xor ah,ah | encoding preserved
    %%insn_0277c:
    mov bx,0xcb20 ; 0277C BB20CB
    %if ($ - %%insn_0277c) > 3
        %error "LONG_0277C"
    %endif
    times 3 - ($ - %%insn_0277c) db 0
    %%insn_0277f:
    mov cx,0x100 ; 0277F B90001
    %if ($ - %%insn_0277f) > 3
        %error "LONG_0277F"
    %endif
    times 3 - ($ - %%insn_0277f) db 0
    %%insn_02782:
    mov [ss:bx],ah ; 02782 368827
    %if ($ - %%insn_02782) > 3
        %error "LONG_02782"
    %endif
    times 3 - ($ - %%insn_02782) db 0
    %%insn_02785:
    inc bx ; 02785 43
    %if ($ - %%insn_02785) > 1
        %error "LONG_02785"
    %endif
    times 1 - ($ - %%insn_02785) db 0
    %%insn_02786:
    dec cx ; 02786 49
    %if ($ - %%insn_02786) > 1
        %error "LONG_02786"
    %endif
    times 1 - ($ - %%insn_02786) db 0
    %%insn_02787:
    jnz short 0x2782 ; 02787 75F9
    %if ($ - %%insn_02787) > 2
        %error "LONG_02787"
    %endif
    times 2 - ($ - %%insn_02787) db 0
    %%insn_02789:
    mov di,0xcf8c ; 02789 BF8CCF
    %if ($ - %%insn_02789) > 3
        %error "LONG_02789"
    %endif
    times 3 - ($ - %%insn_02789) db 0
    %%insn_0278c:
    mov cx,0x300 ; 0278C B90003
    %if ($ - %%insn_0278c) > 3
        %error "LONG_0278C"
    %endif
    times 3 - ($ - %%insn_0278c) db 0
    %%insn_0278f:
    mov al,[ss:di] ; 0278F 368A05
    %if ($ - %%insn_0278f) > 3
        %error "LONG_0278F"
    %endif
    times 3 - ($ - %%insn_0278f) db 0
    %%insn_02792:
    mov [ss:bx],al ; 02792 368807
    %if ($ - %%insn_02792) > 3
        %error "LONG_02792"
    %endif
    times 3 - ($ - %%insn_02792) db 0
    %%insn_02795:
    inc bx ; 02795 43
    %if ($ - %%insn_02795) > 1
        %error "LONG_02795"
    %endif
    times 1 - ($ - %%insn_02795) db 0
    %%insn_02796:
    inc di ; 02796 47
    %if ($ - %%insn_02796) > 1
        %error "LONG_02796"
    %endif
    times 1 - ($ - %%insn_02796) db 0
    %%insn_02797:
    dec cx ; 02797 49
    %if ($ - %%insn_02797) > 1
        %error "LONG_02797"
    %endif
    times 1 - ($ - %%insn_02797) db 0
    %%insn_02798:
    jnz short 0x278f ; 02798 75F5
    %if ($ - %%insn_02798) > 2
        %error "LONG_02798"
    %endif
    times 2 - ($ - %%insn_02798) db 0
    db 0x33, 0xFF ; 0279A 33FF | xor di,di | encoding preserved
    db 0x32, 0xC0 ; 0279C 32C0 | xor al,al | encoding preserved
    db 0x32, 0xE4 ; 0279E 32E4 | xor ah,ah | encoding preserved
    %%insn_027a0:
    mov [bp-0x3076],al ; 027A0 88868ACF
    %if ($ - %%insn_027a0) > 4
        %error "LONG_027A0"
    %endif
    times 4 - ($ - %%insn_027a0) db 0
    %%insn_027a4:
    call word near [ss:0xd660] ; 027A4 36FF1660D6
    %if ($ - %%insn_027a4) > 5
        %error "LONG_027A4"
    %endif
    times 5 - ($ - %%insn_027a4) db 0
    %%insn_027a9:
    call 0x2d5a ; 027A9 E8AE05
    %if ($ - %%insn_027a9) > 3
        %error "LONG_027A9"
    %endif
    times 3 - ($ - %%insn_027a9) db 0
    %%insn_027ac:
    mov cx,0x190 ; 027AC B99001
    %if ($ - %%insn_027ac) > 3
        %error "LONG_027AC"
    %endif
    times 3 - ($ - %%insn_027ac) db 0
    %%insn_027af:
    push cx ; 027AF 51
    %if ($ - %%insn_027af) > 1
        %error "LONG_027AF"
    %endif
    times 1 - ($ - %%insn_027af) db 0
    %%insn_027b0:
    mov cx,[bp-0x2996] ; 027B0 8B8E6AD6
    %if ($ - %%insn_027b0) > 4
        %error "LONG_027B0"
    %endif
    times 4 - ($ - %%insn_027b0) db 0
    db 0x33, 0xC0 ; 027B4 33C0 | xor ax,ax | encoding preserved
    %%insn_027b6:
    mov al,[es:di] ; 027B6 268A05
    %if ($ - %%insn_027b6) > 3
        %error "LONG_027B6"
    %endif
    times 3 - ($ - %%insn_027b6) db 0
    %%insn_027b9:
    inc di ; 027B9 47
    %if ($ - %%insn_027b9) > 1
        %error "LONG_027B9"
    %endif
    times 1 - ($ - %%insn_027b9) db 0
    %%insn_027ba:
    mov bx,0xcb20 ; 027BA BB20CB
    %if ($ - %%insn_027ba) > 3
        %error "LONG_027BA"
    %endif
    times 3 - ($ - %%insn_027ba) db 0
    db 0x03, 0xD8 ; 027BD 03D8 | add bx,ax | encoding preserved
    %%insn_027bf:
    mov byte [ss:bx],0x1 ; 027BF 36C60701
    %if ($ - %%insn_027bf) > 4
        %error "LONG_027BF"
    %endif
    times 4 - ($ - %%insn_027bf) db 0
    db 0x23, 0xFF ; 027C3 23FF | and di,di | encoding preserved
    %%insn_027c5:
    jnz short 0x27db ; 027C5 7514
    %if ($ - %%insn_027c5) > 2
        %error "LONG_027C5"
    %endif
    times 2 - ($ - %%insn_027c5) db 0
    %%insn_027c7:
    mov al,[bp-0x3076] ; 027C7 8A868ACF
    %if ($ - %%insn_027c7) > 4
        %error "LONG_027C7"
    %endif
    times 4 - ($ - %%insn_027c7) db 0
    %%insn_027cb:
    inc al ; 027CB FEC0
    %if ($ - %%insn_027cb) > 2
        %error "LONG_027CB"
    %endif
    times 2 - ($ - %%insn_027cb) db 0
    db 0x32, 0xE4 ; 027CD 32E4 | xor ah,ah | encoding preserved
    %%insn_027cf:
    mov [bp-0x3076],al ; 027CF 88868ACF
    %if ($ - %%insn_027cf) > 4
        %error "LONG_027CF"
    %endif
    times 4 - ($ - %%insn_027cf) db 0
    %%insn_027d3:
    call word near [ss:0xd660] ; 027D3 36FF1660D6
    %if ($ - %%insn_027d3) > 5
        %error "LONG_027D3"
    %endif
    times 5 - ($ - %%insn_027d3) db 0
    %%insn_027d8:
    call 0x2d5a ; 027D8 E87F05
    %if ($ - %%insn_027d8) > 3
        %error "LONG_027D8"
    %endif
    times 3 - ($ - %%insn_027d8) db 0
    %%insn_027db:
    dec cx ; 027DB 49
    %if ($ - %%insn_027db) > 1
        %error "LONG_027DB"
    %endif
    times 1 - ($ - %%insn_027db) db 0
    %%insn_027dc:
    jnz short 0x27b6 ; 027DC 75D8
    %if ($ - %%insn_027dc) > 2
        %error "LONG_027DC"
    %endif
    times 2 - ($ - %%insn_027dc) db 0
    %%insn_027de:
    pop cx ; 027DE 59
    %if ($ - %%insn_027de) > 1
        %error "LONG_027DE"
    %endif
    times 1 - ($ - %%insn_027de) db 0
    %%insn_027df:
    dec cx ; 027DF 49
    %if ($ - %%insn_027df) > 1
        %error "LONG_027DF"
    %endif
    times 1 - ($ - %%insn_027df) db 0
    %%insn_027e0:
    jnz short 0x27af ; 027E0 75CD
    %if ($ - %%insn_027e0) > 2
        %error "LONG_027E0"
    %endif
    times 2 - ($ - %%insn_027e0) db 0
    %%insn_027e2:
    jmp short 0x281f ; 027E2 EB3B
    %if ($ - %%insn_027e2) > 2
        %error "LONG_027E2"
    %endif
    times 2 - ($ - %%insn_027e2) db 0
    %%insn_027e4:
    mov es,word [bp-0x2aa8] ; 027E4 8E8658D5
    %if ($ - %%insn_027e4) > 4
        %error "LONG_027E4"
    %endif
    times 4 - ($ - %%insn_027e4) db 0
    db 0x32, 0xE4 ; 027E8 32E4 | xor ah,ah | encoding preserved
    %%insn_027ea:
    mov bx,0xcb20 ; 027EA BB20CB
    %if ($ - %%insn_027ea) > 3
        %error "LONG_027EA"
    %endif
    times 3 - ($ - %%insn_027ea) db 0
    %%insn_027ed:
    mov cx,0x100 ; 027ED B90001
    %if ($ - %%insn_027ed) > 3
        %error "LONG_027ED"
    %endif
    times 3 - ($ - %%insn_027ed) db 0
    %%insn_027f0:
    mov [ss:bx],ah ; 027F0 368827
    %if ($ - %%insn_027f0) > 3
        %error "LONG_027F0"
    %endif
    times 3 - ($ - %%insn_027f0) db 0
    %%insn_027f3:
    inc bx ; 027F3 43
    %if ($ - %%insn_027f3) > 1
        %error "LONG_027F3"
    %endif
    times 1 - ($ - %%insn_027f3) db 0
    %%insn_027f4:
    dec cx ; 027F4 49
    %if ($ - %%insn_027f4) > 1
        %error "LONG_027F4"
    %endif
    times 1 - ($ - %%insn_027f4) db 0
    %%insn_027f5:
    jnz short 0x27f0 ; 027F5 75F9
    %if ($ - %%insn_027f5) > 2
        %error "LONG_027F5"
    %endif
    times 2 - ($ - %%insn_027f5) db 0
    %%insn_027f7:
    mov di,0xcf8c ; 027F7 BF8CCF
    %if ($ - %%insn_027f7) > 3
        %error "LONG_027F7"
    %endif
    times 3 - ($ - %%insn_027f7) db 0
    %%insn_027fa:
    mov cx,0x300 ; 027FA B90003
    %if ($ - %%insn_027fa) > 3
        %error "LONG_027FA"
    %endif
    times 3 - ($ - %%insn_027fa) db 0
    %%insn_027fd:
    mov al,[ss:di] ; 027FD 368A05
    %if ($ - %%insn_027fd) > 3
        %error "LONG_027FD"
    %endif
    times 3 - ($ - %%insn_027fd) db 0
    %%insn_02800:
    mov [ss:bx],al ; 02800 368807
    %if ($ - %%insn_02800) > 3
        %error "LONG_02800"
    %endif
    times 3 - ($ - %%insn_02800) db 0
    %%insn_02803:
    inc bx ; 02803 43
    %if ($ - %%insn_02803) > 1
        %error "LONG_02803"
    %endif
    times 1 - ($ - %%insn_02803) db 0
    %%insn_02804:
    inc di ; 02804 47
    %if ($ - %%insn_02804) > 1
        %error "LONG_02804"
    %endif
    times 1 - ($ - %%insn_02804) db 0
    %%insn_02805:
    dec cx ; 02805 49
    %if ($ - %%insn_02805) > 1
        %error "LONG_02805"
    %endif
    times 1 - ($ - %%insn_02805) db 0
    %%insn_02806:
    jnz short 0x27fd ; 02806 75F5
    %if ($ - %%insn_02806) > 2
        %error "LONG_02806"
    %endif
    times 2 - ($ - %%insn_02806) db 0
    db 0x33, 0xFF ; 02808 33FF | xor di,di | encoding preserved
    db 0x33, 0xC0 ; 0280A 33C0 | xor ax,ax | encoding preserved
    %%insn_0280c:
    mov cx,0xfa00 ; 0280C B900FA
    %if ($ - %%insn_0280c) > 3
        %error "LONG_0280C"
    %endif
    times 3 - ($ - %%insn_0280c) db 0
    %%insn_0280f:
    mov al,[es:di] ; 0280F 268A05
    %if ($ - %%insn_0280f) > 3
        %error "LONG_0280F"
    %endif
    times 3 - ($ - %%insn_0280f) db 0
    %%insn_02812:
    inc di ; 02812 47
    %if ($ - %%insn_02812) > 1
        %error "LONG_02812"
    %endif
    times 1 - ($ - %%insn_02812) db 0
    %%insn_02813:
    mov bx,0xcb20 ; 02813 BB20CB
    %if ($ - %%insn_02813) > 3
        %error "LONG_02813"
    %endif
    times 3 - ($ - %%insn_02813) db 0
    db 0x03, 0xD8 ; 02816 03D8 | add bx,ax | encoding preserved
    %%insn_02818:
    mov byte [ss:bx],0x1 ; 02818 36C60701
    %if ($ - %%insn_02818) > 4
        %error "LONG_02818"
    %endif
    times 4 - ($ - %%insn_02818) db 0
    %%insn_0281c:
    dec cx ; 0281C 49
    %if ($ - %%insn_0281c) > 1
        %error "LONG_0281C"
    %endif
    times 1 - ($ - %%insn_0281c) db 0
    %%insn_0281d:
    jnz short 0x280f ; 0281D 75F0
    %if ($ - %%insn_0281d) > 2
        %error "LONG_0281D"
    %endif
    times 2 - ($ - %%insn_0281d) db 0
    %%insn_0281f:
    pop es ; 0281F 07
    %if ($ - %%insn_0281f) > 1
        %error "LONG_0281F"
    %endif
    times 1 - ($ - %%insn_0281f) db 0
    %%insn_02820:
    popa ; 02820 61
    %if ($ - %%insn_02820) > 1
        %error "LONG_02820"
    %endif
    times 1 - ($ - %%insn_02820) db 0
    %%insn_02821:
    ret ; 02821 C3
    %if ($ - %%insn_02821) > 1
        %error "LONG_02821"
    %endif
    times 1 - ($ - %%insn_02821) db 0
    %if ($ - %%fragment_start) != 181
        %error "SIZE_0276D"
    %endif
%endmacro
