; Linear entry 023A5 (1000:23a5)
; Ghidra working symbol: FUN_1000_23a5
; Verified retail GRV foreground-to-background rectangle-copy implementation.
; It uses right/bottom-exclusive extents. Win32 beta 1.02b1 diverges here: its
; 0040A7AA helper copies background-to-foreground and includes the bottom row.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_copy_rect_to_background_part_00 0
    %%fragment_start:
copy_rect_to_background:
    %%insn_023a5:
    cmp word [bp-0x30de],0x0 ; 023A5 83BE22CF00
    %if ($ - %%insn_023a5) > 5
        %error "LONG_023A5"
    %endif
    times 5 - ($ - %%insn_023a5) db 0
    %%insn_023aa:
    jnz 0x2501 ; 023AA 0F855301
    %if ($ - %%insn_023aa) > 4
        %error "LONG_023AA"
    %endif
    times 4 - ($ - %%insn_023aa) db 0
    %%insn_023ae:
    mov ax,[si+0x2] ; 023AE 8B4402
    %if ($ - %%insn_023ae) > 3
        %error "LONG_023AE"
    %endif
    times 3 - ($ - %%insn_023ae) db 0
    %%insn_023b1:
    mov cx,[bp-0x2996] ; 023B1 8B8E6AD6
    %if ($ - %%insn_023b1) > 4
        %error "LONG_023B1"
    %endif
    times 4 - ($ - %%insn_023b1) db 0
    %%insn_023b5:
    mul cx ; 023B5 F7E1
    %if ($ - %%insn_023b5) > 2
        %error "LONG_023B5"
    %endif
    times 2 - ($ - %%insn_023b5) db 0
    %%insn_023b7:
    add ax,[si] ; 023B7 0304
    %if ($ - %%insn_023b7) > 2
        %error "LONG_023B7"
    %endif
    times 2 - ($ - %%insn_023b7) db 0
    %%insn_023b9:
    adc dx,0x0 ; 023B9 83D200
    %if ($ - %%insn_023b9) > 3
        %error "LONG_023B9"
    %endif
    times 3 - ($ - %%insn_023b9) db 0
    db 0x8B, 0xF8 ; 023BC 8BF8 | mov di,ax | encoding preserved
    db 0x8B, 0xC2 ; 023BE 8BC2 | mov ax,dx | encoding preserved
    db 0x32, 0xE4 ; 023C0 32E4 | xor ah,ah | encoding preserved
    %%insn_023c2:
    mov [bp-0x3076],al ; 023C2 88868ACF
    %if ($ - %%insn_023c2) > 4
        %error "LONG_023C2"
    %endif
    times 4 - ($ - %%insn_023c2) db 0
    %%insn_023c6:
    call word near [ss:0xd660] ; 023C6 36FF1660D6
    %if ($ - %%insn_023c6) > 5
        %error "LONG_023C6"
    %endif
    times 5 - ($ - %%insn_023c6) db 0
    %%insn_023cb:
    mov ax,[si+0x4] ; 023CB 8B4404
    %if ($ - %%insn_023cb) > 3
        %error "LONG_023CB"
    %endif
    times 3 - ($ - %%insn_023cb) db 0
    %%insn_023ce:
    sub ax,[si] ; 023CE 2B04
    %if ($ - %%insn_023ce) > 2
        %error "LONG_023CE"
    %endif
    times 2 - ($ - %%insn_023ce) db 0
    db 0x8B, 0xC8 ; 023D0 8BC8 | mov cx,ax | encoding preserved
    %%insn_023d2:
    mov bx,[si+0x6] ; 023D2 8B5C06
    %if ($ - %%insn_023d2) > 3
        %error "LONG_023D2"
    %endif
    times 3 - ($ - %%insn_023d2) db 0
    %%insn_023d5:
    sub bx,[si+0x2] ; 023D5 2B5C02
    %if ($ - %%insn_023d5) > 3
        %error "LONG_023D5"
    %endif
    times 3 - ($ - %%insn_023d5) db 0
    %%insn_023d8:
    push si ; 023D8 56
    %if ($ - %%insn_023d8) > 1
        %error "LONG_023D8"
    %endif
    times 1 - ($ - %%insn_023d8) db 0
    %%insn_023d9:
    push es ; 023D9 06
    %if ($ - %%insn_023d9) > 1
        %error "LONG_023D9"
    %endif
    times 1 - ($ - %%insn_023d9) db 0
    %%insn_023da:
    push ds ; 023DA 1E
    %if ($ - %%insn_023da) > 1
        %error "LONG_023DA"
    %endif
    times 1 - ($ - %%insn_023da) db 0
    %%insn_023db:
    pusha ; 023DB 60
    %if ($ - %%insn_023db) > 1
        %error "LONG_023DB"
    %endif
    times 1 - ($ - %%insn_023db) db 0
    %%insn_023dc:
    push ds ; 023DC 1E
    %if ($ - %%insn_023dc) > 1
        %error "LONG_023DC"
    %endif
    times 1 - ($ - %%insn_023dc) db 0
    %%insn_023dd:
    mov ds,word [bp-0x2aae] ; 023DD 8E9E52D5
    %if ($ - %%insn_023dd) > 4
        %error "LONG_023DD"
    %endif
    times 4 - ($ - %%insn_023dd) db 0
    %%insn_023e1:
    mov dword [bp-0x2b92],0x10000 ; 023E1 66C7866ED400000100
    %if ($ - %%insn_023e1) > 9
        %error "LONG_023E1"
    %endif
    times 9 - ($ - %%insn_023e1) db 0
    %%insn_023ea:
    mov word [bp-0x2b88],0x0 ; 023EA C78678D40000
    %if ($ - %%insn_023ea) > 6
        %error "LONG_023EA"
    %endif
    times 6 - ($ - %%insn_023ea) db 0
    %%insn_023f0:
    mov ax,[bp-0x2aac] ; 023F0 8B8654D5
    %if ($ - %%insn_023f0) > 4
        %error "LONG_023F0"
    %endif
    times 4 - ($ - %%insn_023f0) db 0
    %%insn_023f4:
    mov word [bp-0x2b86],0x0 ; 023F4 C7867AD40000
    %if ($ - %%insn_023f4) > 6
        %error "LONG_023F4"
    %endif
    times 6 - ($ - %%insn_023f4) db 0
    %%insn_023fa:
    mov [bp-0x2b84],ax ; 023FA 89867CD4
    %if ($ - %%insn_023fa) > 4
        %error "LONG_023FA"
    %endif
    times 4 - ($ - %%insn_023fa) db 0
    %%insn_023fe:
    mov ax,[bp-0x2ab0] ; 023FE 8B8650D5
    %if ($ - %%insn_023fe) > 4
        %error "LONG_023FE"
    %endif
    times 4 - ($ - %%insn_023fe) db 0
    %%insn_02402:
    mov [bp-0x2b8e],ax ; 02402 898672D4
    %if ($ - %%insn_02402) > 4
        %error "LONG_02402"
    %endif
    times 4 - ($ - %%insn_02402) db 0
    %%insn_02406:
    mov al,[bp-0x3076] ; 02406 8A868ACF
    %if ($ - %%insn_02406) > 4
        %error "LONG_02406"
    %endif
    times 4 - ($ - %%insn_02406) db 0
    db 0x32, 0xE4 ; 0240A 32E4 | xor ah,ah | encoding preserved
    %%insn_0240c:
    shl eax,byte 0x10 ; 0240C 66C1E010
    %if ($ - %%insn_0240c) > 4
        %error "LONG_0240C"
    %endif
    times 4 - ($ - %%insn_0240c) db 0
    %%insn_02410:
    mov [bp-0x2b8c],eax ; 02410 66898674D4
    %if ($ - %%insn_02410) > 5
        %error "LONG_02410"
    %endif
    times 5 - ($ - %%insn_02410) db 0
    %%insn_02415:
    mov ah,0xb ; 02415 B40B
    %if ($ - %%insn_02415) > 2
        %error "LONG_02415"
    %endif
    times 2 - ($ - %%insn_02415) db 0
    %%insn_02417:
    mov si,0xd46e ; 02417 BE6ED4
    %if ($ - %%insn_02417) > 3
        %error "LONG_02417"
    %endif
    times 3 - ($ - %%insn_02417) db 0
    %%insn_0241a:
    call word far [cs:0x3688] ; 0241A 2EFF1E8836
    %if ($ - %%insn_0241a) > 5
        %error "LONG_0241A"
    %endif
    times 5 - ($ - %%insn_0241a) db 0
    %%insn_0241f:
    pop ds ; 0241F 1F
    %if ($ - %%insn_0241f) > 1
        %error "LONG_0241F"
    %endif
    times 1 - ($ - %%insn_0241f) db 0
    %%insn_02420:
    popa ; 02420 61
    %if ($ - %%insn_02420) > 1
        %error "LONG_02420"
    %endif
    times 1 - ($ - %%insn_02420) db 0
    %%insn_02421:
    mov ds,word [bp-0x2aac] ; 02421 8E9E54D5
    %if ($ - %%insn_02421) > 4
        %error "LONG_02421"
    %endif
    times 4 - ($ - %%insn_02421) db 0
    %%insn_02425:
    mov es,word [bp-0x2aa8] ; 02425 8E8658D5
    %if ($ - %%insn_02425) > 4
        %error "LONG_02425"
    %endif
    times 4 - ($ - %%insn_02425) db 0
    %%insn_02429:
    push cx ; 02429 51
    %if ($ - %%insn_02429) > 1
        %error "LONG_02429"
    %endif
    times 1 - ($ - %%insn_02429) db 0
    %%insn_0242a:
    push di ; 0242A 57
    %if ($ - %%insn_0242a) > 1
        %error "LONG_0242A"
    %endif
    times 1 - ($ - %%insn_0242a) db 0
    db 0x8B, 0xF7 ; 0242B 8BF7 | mov si,di | encoding preserved
    db 0x33, 0xD2 ; 0242D 33D2 | xor dx,dx | encoding preserved
    %%insn_0242f:
    movsb ; 0242F A4
    %if ($ - %%insn_0242f) > 1
        %error "LONG_0242F"
    %endif
    times 1 - ($ - %%insn_0242f) db 0
    db 0x23, 0xFF ; 02430 23FF | and di,di | encoding preserved
    %%insn_02432:
    jnz short 0x248c ; 02432 7558
    %if ($ - %%insn_02432) > 2
        %error "LONG_02432"
    %endif
    times 2 - ($ - %%insn_02432) db 0
    %%insn_02434:
    mov al,[bp-0x3076] ; 02434 8A868ACF
    %if ($ - %%insn_02434) > 4
        %error "LONG_02434"
    %endif
    times 4 - ($ - %%insn_02434) db 0
    %%insn_02438:
    inc al ; 02438 FEC0
    %if ($ - %%insn_02438) > 2
        %error "LONG_02438"
    %endif
    times 2 - ($ - %%insn_02438) db 0
    db 0x32, 0xE4 ; 0243A 32E4 | xor ah,ah | encoding preserved
    %%insn_0243c:
    mov [bp-0x3076],al ; 0243C 88868ACF
    %if ($ - %%insn_0243c) > 4
        %error "LONG_0243C"
    %endif
    times 4 - ($ - %%insn_0243c) db 0
    %%insn_02440:
    call word near [ss:0xd660] ; 02440 36FF1660D6
    %if ($ - %%insn_02440) > 5
        %error "LONG_02440"
    %endif
    times 5 - ($ - %%insn_02440) db 0
    %%insn_02445:
    pusha ; 02445 60
    %if ($ - %%insn_02445) > 1
        %error "LONG_02445"
    %endif
    times 1 - ($ - %%insn_02445) db 0
    %%insn_02446:
    push ds ; 02446 1E
    %if ($ - %%insn_02446) > 1
        %error "LONG_02446"
    %endif
    times 1 - ($ - %%insn_02446) db 0
    %%insn_02447:
    mov ds,word [bp-0x2aae] ; 02447 8E9E52D5
    %if ($ - %%insn_02447) > 4
        %error "LONG_02447"
    %endif
    times 4 - ($ - %%insn_02447) db 0
    %%insn_0244b:
    mov dword [bp-0x2b92],0x10000 ; 0244B 66C7866ED400000100
    %if ($ - %%insn_0244b) > 9
        %error "LONG_0244B"
    %endif
    times 9 - ($ - %%insn_0244b) db 0
    %%insn_02454:
    mov word [bp-0x2b88],0x0 ; 02454 C78678D40000
    %if ($ - %%insn_02454) > 6
        %error "LONG_02454"
    %endif
    times 6 - ($ - %%insn_02454) db 0
    %%insn_0245a:
    mov ax,[bp-0x2aac] ; 0245A 8B8654D5
    %if ($ - %%insn_0245a) > 4
        %error "LONG_0245A"
    %endif
    times 4 - ($ - %%insn_0245a) db 0
    %%insn_0245e:
    mov word [bp-0x2b86],0x0 ; 0245E C7867AD40000
    %if ($ - %%insn_0245e) > 6
        %error "LONG_0245E"
    %endif
    times 6 - ($ - %%insn_0245e) db 0
    %%insn_02464:
    mov [bp-0x2b84],ax ; 02464 89867CD4
    %if ($ - %%insn_02464) > 4
        %error "LONG_02464"
    %endif
    times 4 - ($ - %%insn_02464) db 0
    %%insn_02468:
    mov ax,[bp-0x2ab0] ; 02468 8B8650D5
    %if ($ - %%insn_02468) > 4
        %error "LONG_02468"
    %endif
    times 4 - ($ - %%insn_02468) db 0
    %%insn_0246c:
    mov [bp-0x2b8e],ax ; 0246C 898672D4
    %if ($ - %%insn_0246c) > 4
        %error "LONG_0246C"
    %endif
    times 4 - ($ - %%insn_0246c) db 0
    %%insn_02470:
    mov al,[bp-0x3076] ; 02470 8A868ACF
    %if ($ - %%insn_02470) > 4
        %error "LONG_02470"
    %endif
    times 4 - ($ - %%insn_02470) db 0
    db 0x32, 0xE4 ; 02474 32E4 | xor ah,ah | encoding preserved
    %%insn_02476:
    shl eax,byte 0x10 ; 02476 66C1E010
    %if ($ - %%insn_02476) > 4
        %error "LONG_02476"
    %endif
    times 4 - ($ - %%insn_02476) db 0
    %%insn_0247a:
    mov [bp-0x2b8c],eax ; 0247A 66898674D4
    %if ($ - %%insn_0247a) > 5
        %error "LONG_0247A"
    %endif
    times 5 - ($ - %%insn_0247a) db 0
    %%insn_0247f:
    mov ah,0xb ; 0247F B40B
    %if ($ - %%insn_0247f) > 2
        %error "LONG_0247F"
    %endif
    times 2 - ($ - %%insn_0247f) db 0
    %%insn_02481:
    mov si,0xd46e ; 02481 BE6ED4
    %if ($ - %%insn_02481) > 3
        %error "LONG_02481"
    %endif
    times 3 - ($ - %%insn_02481) db 0
    %%insn_02484:
    call word far [cs:0x3688] ; 02484 2EFF1E8836
    %if ($ - %%insn_02484) > 5
        %error "LONG_02484"
    %endif
    times 5 - ($ - %%insn_02484) db 0
    %%insn_02489:
    pop ds ; 02489 1F
    %if ($ - %%insn_02489) > 1
        %error "LONG_02489"
    %endif
    times 1 - ($ - %%insn_02489) db 0
    %%insn_0248a:
    popa ; 0248A 61
    %if ($ - %%insn_0248a) > 1
        %error "LONG_0248A"
    %endif
    times 1 - ($ - %%insn_0248a) db 0
    %%insn_0248b:
    inc dx ; 0248B 42
    %if ($ - %%insn_0248b) > 1
        %error "LONG_0248B"
    %endif
    times 1 - ($ - %%insn_0248b) db 0
    %%insn_0248c:
    dec cx ; 0248C 49
    %if ($ - %%insn_0248c) > 1
        %error "LONG_0248C"
    %endif
    times 1 - ($ - %%insn_0248c) db 0
    %%insn_0248d:
    jnz short 0x242f ; 0248D 75A0
    %if ($ - %%insn_0248d) > 2
        %error "LONG_0248D"
    %endif
    times 2 - ($ - %%insn_0248d) db 0
    %%insn_0248f:
    pop di ; 0248F 5F
    %if ($ - %%insn_0248f) > 1
        %error "LONG_0248F"
    %endif
    times 1 - ($ - %%insn_0248f) db 0
    %%insn_02490:
    add di,[bp-0x2996] ; 02490 03BE6AD6
    %if ($ - %%insn_02490) > 4
        %error "LONG_02490"
    %endif
    times 4 - ($ - %%insn_02490) db 0
    %%insn_02494:
    jnc short 0x24f2 ; 02494 735C
    %if ($ - %%insn_02494) > 2
        %error "LONG_02494"
    %endif
    times 2 - ($ - %%insn_02494) db 0
    %%insn_02496:
    cmp dx,0x0 ; 02496 83FA00
    %if ($ - %%insn_02496) > 3
        %error "LONG_02496"
    %endif
    times 3 - ($ - %%insn_02496) db 0
    %%insn_02499:
    jnz short 0x24f2 ; 02499 7557
    %if ($ - %%insn_02499) > 2
        %error "LONG_02499"
    %endif
    times 2 - ($ - %%insn_02499) db 0
    %%insn_0249b:
    mov al,[bp-0x3076] ; 0249B 8A868ACF
    %if ($ - %%insn_0249b) > 4
        %error "LONG_0249B"
    %endif
    times 4 - ($ - %%insn_0249b) db 0
    %%insn_0249f:
    inc al ; 0249F FEC0
    %if ($ - %%insn_0249f) > 2
        %error "LONG_0249F"
    %endif
    times 2 - ($ - %%insn_0249f) db 0
    db 0x32, 0xE4 ; 024A1 32E4 | xor ah,ah | encoding preserved
    %%insn_024a3:
    mov [bp-0x3076],al ; 024A3 88868ACF
    %if ($ - %%insn_024a3) > 4
        %error "LONG_024A3"
    %endif
    times 4 - ($ - %%insn_024a3) db 0
    %%insn_024a7:
    call word near [ss:0xd660] ; 024A7 36FF1660D6
    %if ($ - %%insn_024a7) > 5
        %error "LONG_024A7"
    %endif
    times 5 - ($ - %%insn_024a7) db 0
    %%insn_024ac:
    pusha ; 024AC 60
    %if ($ - %%insn_024ac) > 1
        %error "LONG_024AC"
    %endif
    times 1 - ($ - %%insn_024ac) db 0
    %%insn_024ad:
    push ds ; 024AD 1E
    %if ($ - %%insn_024ad) > 1
        %error "LONG_024AD"
    %endif
    times 1 - ($ - %%insn_024ad) db 0
    %%insn_024ae:
    mov ds,word [bp-0x2aae] ; 024AE 8E9E52D5
    %if ($ - %%insn_024ae) > 4
        %error "LONG_024AE"
    %endif
    times 4 - ($ - %%insn_024ae) db 0
    %%insn_024b2:
    mov dword [bp-0x2b92],0x10000 ; 024B2 66C7866ED400000100
    %if ($ - %%insn_024b2) > 9
        %error "LONG_024B2"
    %endif
    times 9 - ($ - %%insn_024b2) db 0
    %%insn_024bb:
    mov word [bp-0x2b88],0x0 ; 024BB C78678D40000
    %if ($ - %%insn_024bb) > 6
        %error "LONG_024BB"
    %endif
    times 6 - ($ - %%insn_024bb) db 0
    %%insn_024c1:
    mov ax,[bp-0x2aac] ; 024C1 8B8654D5
    %if ($ - %%insn_024c1) > 4
        %error "LONG_024C1"
    %endif
    times 4 - ($ - %%insn_024c1) db 0
    %%insn_024c5:
    mov word [bp-0x2b86],0x0 ; 024C5 C7867AD40000
    %if ($ - %%insn_024c5) > 6
        %error "LONG_024C5"
    %endif
    times 6 - ($ - %%insn_024c5) db 0
    %%insn_024cb:
    mov [bp-0x2b84],ax ; 024CB 89867CD4
    %if ($ - %%insn_024cb) > 4
        %error "LONG_024CB"
    %endif
    times 4 - ($ - %%insn_024cb) db 0
    %%insn_024cf:
    mov ax,[bp-0x2ab0] ; 024CF 8B8650D5
    %if ($ - %%insn_024cf) > 4
        %error "LONG_024CF"
    %endif
    times 4 - ($ - %%insn_024cf) db 0
    %%insn_024d3:
    mov [bp-0x2b8e],ax ; 024D3 898672D4
    %if ($ - %%insn_024d3) > 4
        %error "LONG_024D3"
    %endif
    times 4 - ($ - %%insn_024d3) db 0
    %%insn_024d7:
    mov al,[bp-0x3076] ; 024D7 8A868ACF
    %if ($ - %%insn_024d7) > 4
        %error "LONG_024D7"
    %endif
    times 4 - ($ - %%insn_024d7) db 0
    db 0x32, 0xE4 ; 024DB 32E4 | xor ah,ah | encoding preserved
    %%insn_024dd:
    shl eax,byte 0x10 ; 024DD 66C1E010
    %if ($ - %%insn_024dd) > 4
        %error "LONG_024DD"
    %endif
    times 4 - ($ - %%insn_024dd) db 0
    %%insn_024e1:
    mov [bp-0x2b8c],eax ; 024E1 66898674D4
    %if ($ - %%insn_024e1) > 5
        %error "LONG_024E1"
    %endif
    times 5 - ($ - %%insn_024e1) db 0
    %%insn_024e6:
    mov ah,0xb ; 024E6 B40B
    %if ($ - %%insn_024e6) > 2
        %error "LONG_024E6"
    %endif
    times 2 - ($ - %%insn_024e6) db 0
    %%insn_024e8:
    mov si,0xd46e ; 024E8 BE6ED4
    %if ($ - %%insn_024e8) > 3
        %error "LONG_024E8"
    %endif
    times 3 - ($ - %%insn_024e8) db 0
    %%insn_024eb:
    call word far [cs:0x3688] ; 024EB 2EFF1E8836
    %if ($ - %%insn_024eb) > 5
        %error "LONG_024EB"
    %endif
    times 5 - ($ - %%insn_024eb) db 0
    %%insn_024f0:
    pop ds ; 024F0 1F
    %if ($ - %%insn_024f0) > 1
        %error "LONG_024F0"
    %endif
    times 1 - ($ - %%insn_024f0) db 0
    %%insn_024f1:
    popa ; 024F1 61
    %if ($ - %%insn_024f1) > 1
        %error "LONG_024F1"
    %endif
    times 1 - ($ - %%insn_024f1) db 0
    %%insn_024f2:
    pop cx ; 024F2 59
    %if ($ - %%insn_024f2) > 1
        %error "LONG_024F2"
    %endif
    times 1 - ($ - %%insn_024f2) db 0
    %%insn_024f3:
    dec bx ; 024F3 4B
    %if ($ - %%insn_024f3) > 1
        %error "LONG_024F3"
    %endif
    times 1 - ($ - %%insn_024f3) db 0
    %%insn_024f4:
    jnz 0x2429 ; 024F4 0F8531FF
    %if ($ - %%insn_024f4) > 4
        %error "LONG_024F4"
    %endif
    times 4 - ($ - %%insn_024f4) db 0
    %%insn_024f8:
    pop ds ; 024F8 1F
    %if ($ - %%insn_024f8) > 1
        %error "LONG_024F8"
    %endif
    times 1 - ($ - %%insn_024f8) db 0
    %%insn_024f9:
    pop es ; 024F9 07
    %if ($ - %%insn_024f9) > 1
        %error "LONG_024F9"
    %endif
    times 1 - ($ - %%insn_024f9) db 0
    %%insn_024fa:
    pop si ; 024FA 5E
    %if ($ - %%insn_024fa) > 1
        %error "LONG_024FA"
    %endif
    times 1 - ($ - %%insn_024fa) db 0
    %%insn_024fb:
    add si,0x8 ; 024FB 83C608
    %if ($ - %%insn_024fb) > 3
        %error "LONG_024FB"
    %endif
    times 3 - ($ - %%insn_024fb) db 0
    %%insn_024fe:
    jmp 0x2590 ; 024FE E98F00
    %if ($ - %%insn_024fe) > 3
        %error "LONG_024FE"
    %endif
    times 3 - ($ - %%insn_024fe) db 0
    %%insn_02501:
    mov ax,[si+0x2] ; 02501 8B4402
    %if ($ - %%insn_02501) > 3
        %error "LONG_02501"
    %endif
    times 3 - ($ - %%insn_02501) db 0
    db 0x2D, 0x28, 0x00 ; 02504 2D2800 | sub ax,0x28 | encoding preserved
    %%insn_02507:
    shr ax,1 ; 02507 D1E8
    %if ($ - %%insn_02507) > 2
        %error "LONG_02507"
    %endif
    times 2 - ($ - %%insn_02507) db 0
    %%insn_02509:
    mov cx,0x140 ; 02509 B94001
    %if ($ - %%insn_02509) > 3
        %error "LONG_02509"
    %endif
    times 3 - ($ - %%insn_02509) db 0
    %%insn_0250c:
    mul cx ; 0250C F7E1
    %if ($ - %%insn_0250c) > 2
        %error "LONG_0250C"
    %endif
    times 2 - ($ - %%insn_0250c) db 0
    db 0x8B, 0xF8 ; 0250E 8BF8 | mov di,ax | encoding preserved
    %%insn_02510:
    mov ax,[si] ; 02510 8B04
    %if ($ - %%insn_02510) > 2
        %error "LONG_02510"
    %endif
    times 2 - ($ - %%insn_02510) db 0
    db 0x03, 0xF8 ; 02512 03F8 | add di,ax | encoding preserved
    %%insn_02514:
    mov ax,[si+0x4] ; 02514 8B4404
    %if ($ - %%insn_02514) > 3
        %error "LONG_02514"
    %endif
    times 3 - ($ - %%insn_02514) db 0
    %%insn_02517:
    sub ax,[si] ; 02517 2B04
    %if ($ - %%insn_02517) > 2
        %error "LONG_02517"
    %endif
    times 2 - ($ - %%insn_02517) db 0
    %%insn_02519:
    shr ax,1 ; 02519 D1E8
    %if ($ - %%insn_02519) > 2
        %error "LONG_02519"
    %endif
    times 2 - ($ - %%insn_02519) db 0
    db 0x8B, 0xC8 ; 0251B 8BC8 | mov cx,ax | encoding preserved
    %%insn_0251d:
    mov bx,[si+0x6] ; 0251D 8B5C06
    %if ($ - %%insn_0251d) > 3
        %error "LONG_0251D"
    %endif
    times 3 - ($ - %%insn_0251d) db 0
    %%insn_02520:
    sub bx,[si+0x2] ; 02520 2B5C02
    %if ($ - %%insn_02520) > 3
        %error "LONG_02520"
    %endif
    times 3 - ($ - %%insn_02520) db 0
    %%insn_02523:
    shr bx,1 ; 02523 D1EB
    %if ($ - %%insn_02523) > 2
        %error "LONG_02523"
    %endif
    times 2 - ($ - %%insn_02523) db 0
    %%insn_02525:
    push si ; 02525 56
    %if ($ - %%insn_02525) > 1
        %error "LONG_02525"
    %endif
    times 1 - ($ - %%insn_02525) db 0
    %%insn_02526:
    push es ; 02526 06
    %if ($ - %%insn_02526) > 1
        %error "LONG_02526"
    %endif
    times 1 - ($ - %%insn_02526) db 0
    %%insn_02527:
    push ds ; 02527 1E
    %if ($ - %%insn_02527) > 1
        %error "LONG_02527"
    %endif
    times 1 - ($ - %%insn_02527) db 0
    %%insn_02528:
    mov byte [bp-0x3076],0x0 ; 02528 C6868ACF00
    %if ($ - %%insn_02528) > 5
        %error "LONG_02528"
    %endif
    times 5 - ($ - %%insn_02528) db 0
    %%insn_0252d:
    pusha ; 0252D 60
    %if ($ - %%insn_0252d) > 1
        %error "LONG_0252D"
    %endif
    times 1 - ($ - %%insn_0252d) db 0
    %%insn_0252e:
    push ds ; 0252E 1E
    %if ($ - %%insn_0252e) > 1
        %error "LONG_0252E"
    %endif
    times 1 - ($ - %%insn_0252e) db 0
    %%insn_0252f:
    mov ds,word [bp-0x2aae] ; 0252F 8E9E52D5
    %if ($ - %%insn_0252f) > 4
        %error "LONG_0252F"
    %endif
    times 4 - ($ - %%insn_0252f) db 0
    %%insn_02533:
    mov dword [bp-0x2b92],0x10000 ; 02533 66C7866ED400000100
    %if ($ - %%insn_02533) > 9
        %error "LONG_02533"
    %endif
    times 9 - ($ - %%insn_02533) db 0
    %%insn_0253c:
    mov word [bp-0x2b88],0x0 ; 0253C C78678D40000
    %if ($ - %%insn_0253c) > 6
        %error "LONG_0253C"
    %endif
    times 6 - ($ - %%insn_0253c) db 0
    %%insn_02542:
    mov ax,[bp-0x2aac] ; 02542 8B8654D5
    %if ($ - %%insn_02542) > 4
        %error "LONG_02542"
    %endif
    times 4 - ($ - %%insn_02542) db 0
    %%insn_02546:
    mov word [bp-0x2b86],0x0 ; 02546 C7867AD40000
    %if ($ - %%insn_02546) > 6
        %error "LONG_02546"
    %endif
    times 6 - ($ - %%insn_02546) db 0
    %%insn_0254c:
    mov [bp-0x2b84],ax ; 0254C 89867CD4
    %if ($ - %%insn_0254c) > 4
        %error "LONG_0254C"
    %endif
    times 4 - ($ - %%insn_0254c) db 0
    %%insn_02550:
    mov ax,[bp-0x2ab0] ; 02550 8B8650D5
    %if ($ - %%insn_02550) > 4
        %error "LONG_02550"
    %endif
    times 4 - ($ - %%insn_02550) db 0
    %%insn_02554:
    mov [bp-0x2b8e],ax ; 02554 898672D4
    %if ($ - %%insn_02554) > 4
        %error "LONG_02554"
    %endif
    times 4 - ($ - %%insn_02554) db 0
    %%insn_02558:
    mov al,[bp-0x3076] ; 02558 8A868ACF
    %if ($ - %%insn_02558) > 4
        %error "LONG_02558"
    %endif
    times 4 - ($ - %%insn_02558) db 0
    db 0x32, 0xE4 ; 0255C 32E4 | xor ah,ah | encoding preserved
    %%insn_0255e:
    shl eax,byte 0x10 ; 0255E 66C1E010
    %if ($ - %%insn_0255e) > 4
        %error "LONG_0255E"
    %endif
    times 4 - ($ - %%insn_0255e) db 0
    %%insn_02562:
    mov [bp-0x2b8c],eax ; 02562 66898674D4
    %if ($ - %%insn_02562) > 5
        %error "LONG_02562"
    %endif
    times 5 - ($ - %%insn_02562) db 0
    %%insn_02567:
    mov ah,0xb ; 02567 B40B
    %if ($ - %%insn_02567) > 2
        %error "LONG_02567"
    %endif
    times 2 - ($ - %%insn_02567) db 0
    %%insn_02569:
    mov si,0xd46e ; 02569 BE6ED4
    %if ($ - %%insn_02569) > 3
        %error "LONG_02569"
    %endif
    times 3 - ($ - %%insn_02569) db 0
    %%insn_0256c:
    call word far [cs:0x3688] ; 0256C 2EFF1E8836
    %if ($ - %%insn_0256c) > 5
        %error "LONG_0256C"
    %endif
    times 5 - ($ - %%insn_0256c) db 0
    %%insn_02571:
    pop ds ; 02571 1F
    %if ($ - %%insn_02571) > 1
        %error "LONG_02571"
    %endif
    times 1 - ($ - %%insn_02571) db 0
    %%insn_02572:
    popa ; 02572 61
    %if ($ - %%insn_02572) > 1
        %error "LONG_02572"
    %endif
    times 1 - ($ - %%insn_02572) db 0
    %%insn_02573:
    mov ds,word [bp-0x2aac] ; 02573 8E9E54D5
    %if ($ - %%insn_02573) > 4
        %error "LONG_02573"
    %endif
    times 4 - ($ - %%insn_02573) db 0
    %%insn_02577:
    mov es,word [bp-0x2aa8] ; 02577 8E8658D5
    %if ($ - %%insn_02577) > 4
        %error "LONG_02577"
    %endif
    times 4 - ($ - %%insn_02577) db 0
    %%insn_0257b:
    push cx ; 0257B 51
    %if ($ - %%insn_0257b) > 1
        %error "LONG_0257B"
    %endif
    times 1 - ($ - %%insn_0257b) db 0
    %%insn_0257c:
    push di ; 0257C 57
    %if ($ - %%insn_0257c) > 1
        %error "LONG_0257C"
    %endif
    times 1 - ($ - %%insn_0257c) db 0
    db 0x8B, 0xF7 ; 0257D 8BF7 | mov si,di | encoding preserved
    %%insn_0257f:
    rep movsb ; 0257F F3A4
    %if ($ - %%insn_0257f) > 2
        %error "LONG_0257F"
    %endif
    times 2 - ($ - %%insn_0257f) db 0
    %%insn_02581:
    pop di ; 02581 5F
    %if ($ - %%insn_02581) > 1
        %error "LONG_02581"
    %endif
    times 1 - ($ - %%insn_02581) db 0
    %%insn_02582:
    add di,0x140 ; 02582 81C74001
    %if ($ - %%insn_02582) > 4
        %error "LONG_02582"
    %endif
    times 4 - ($ - %%insn_02582) db 0
    %%insn_02586:
    pop cx ; 02586 59
    %if ($ - %%insn_02586) > 1
        %error "LONG_02586"
    %endif
    times 1 - ($ - %%insn_02586) db 0
    %%insn_02587:
    dec bx ; 02587 4B
    %if ($ - %%insn_02587) > 1
        %error "LONG_02587"
    %endif
    times 1 - ($ - %%insn_02587) db 0
    %%insn_02588:
    jnz short 0x257b ; 02588 75F1
    %if ($ - %%insn_02588) > 2
        %error "LONG_02588"
    %endif
    times 2 - ($ - %%insn_02588) db 0
    %%insn_0258a:
    pop ds ; 0258A 1F
    %if ($ - %%insn_0258a) > 1
        %error "LONG_0258A"
    %endif
    times 1 - ($ - %%insn_0258a) db 0
    %%insn_0258b:
    pop es ; 0258B 07
    %if ($ - %%insn_0258b) > 1
        %error "LONG_0258B"
    %endif
    times 1 - ($ - %%insn_0258b) db 0
    %%insn_0258c:
    pop si ; 0258C 5E
    %if ($ - %%insn_0258c) > 1
        %error "LONG_0258C"
    %endif
    times 1 - ($ - %%insn_0258c) db 0
    %%insn_0258d:
    add si,0x8 ; 0258D 83C608
    %if ($ - %%insn_0258d) > 3
        %error "LONG_0258D"
    %endif
    times 3 - ($ - %%insn_0258d) db 0
    %%insn_02590:
    ret ; 02590 C3
    %if ($ - %%insn_02590) > 1
        %error "LONG_02590"
    %endif
    times 1 - ($ - %%insn_02590) db 0
    %if ($ - %%fragment_start) != 492
        %error "SIZE_023A5"
    %endif
%endmacro
