; Linear entry 00587 (1000:0587)
; Ghidra working symbol: FUN_1000_0587
; Verified VDX 20h still/base-frame decoder; GRV video flags decide whether its pixels seed the displayed background or are skipped for a delta overlay.
; The foreground matte and decoded background remain independent across
; VIDEOREFs. Win32 trace 20260903-225430 proves GRATE.GRV keeps mgpuzbkd.vdx as
; that matte while BF6+BF7 movement clips update the background; the shared DOS
; script and this decoder implement the corresponding two-buffer contract.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_decode_vdx_bitmap_still_part_00 0
    %%fragment_start:
decode_vdx_bitmap_still:
    %%insn_00587:
    cmp word [bp-0xcea],0x2 ; 00587 83BE16F302
    %if ($ - %%insn_00587) > 5
        %error "LONG_00587"
    %endif
    times 5 - ($ - %%insn_00587) db 0
    %%insn_0058c:
    jnz short 0x593 ; 0058C 7505
    %if ($ - %%insn_0058c) > 2
        %error "LONG_0058C"
    %endif
    times 2 - ($ - %%insn_0058c) db 0
    %%insn_0058e:
    call 0x6ed9 ; 0058E E84869
    %if ($ - %%insn_0058e) > 3
        %error "LONG_0058E"
    %endif
    times 3 - ($ - %%insn_0058e) db 0
    %%insn_00591:
    jmp short 0x5cd ; 00591 EB3A
    %if ($ - %%insn_00591) > 2
        %error "LONG_00591"
    %endif
    times 2 - ($ - %%insn_00591) db 0
    %%insn_00593:
    cmp ah,0x77 ; 00593 80FC77
    %if ($ - %%insn_00593) > 3
        %error "LONG_00593"
    %endif
    times 3 - ($ - %%insn_00593) db 0
    %%insn_00596:
    jnz short 0x5c0 ; 00596 7528
    %if ($ - %%insn_00596) > 2
        %error "LONG_00596"
    %endif
    times 2 - ($ - %%insn_00596) db 0
    %%insn_00598:
    push ds ; 00598 1E
    %if ($ - %%insn_00598) > 1
        %error "LONG_00598"
    %endif
    times 1 - ($ - %%insn_00598) db 0
    %%insn_00599:
    push es ; 00599 06
    %if ($ - %%insn_00599) > 1
        %error "LONG_00599"
    %endif
    times 1 - ($ - %%insn_00599) db 0
    %%insn_0059a:
    mov ax,[si+0x6] ; 0059A 8B4406
    %if ($ - %%insn_0059a) > 3
        %error "LONG_0059A"
    %endif
    times 3 - ($ - %%insn_0059a) db 0
    %%insn_0059d:
    mov [cs:0x2383],ah ; 0059D 2E88268323
    %if ($ - %%insn_0059d) > 5
        %error "LONG_0059D"
    %endif
    times 5 - ($ - %%insn_0059d) db 0
    %%insn_005a2:
    mov [cs:0x2386],al ; 005A2 2EA28623
    %if ($ - %%insn_005a2) > 4
        %error "LONG_005A2"
    %endif
    times 4 - ($ - %%insn_005a2) db 0
    %%insn_005a6:
    mov ax,[bp-0x2aac] ; 005A6 8B8654D5
    %if ($ - %%insn_005a6) > 4
        %error "LONG_005A6"
    %endif
    times 4 - ($ - %%insn_005a6) db 0
    %%insn_005aa:
    mov ds,ax ; 005AA 8ED8
    %if ($ - %%insn_005aa) > 2
        %error "LONG_005AA"
    %endif
    times 2 - ($ - %%insn_005aa) db 0
    %%insn_005ac:
    call 0x21b ; 005AC E86CFC
    %if ($ - %%insn_005ac) > 3
        %error "LONG_005AC"
    %endif
    times 3 - ($ - %%insn_005ac) db 0
    %%insn_005af:
    mov ax,[bp-0x2aaa] ; 005AF 8B8656D5
    %if ($ - %%insn_005af) > 4
        %error "LONG_005AF"
    %endif
    times 4 - ($ - %%insn_005af) db 0
    %%insn_005b3:
    mov es,ax ; 005B3 8EC0
    %if ($ - %%insn_005b3) > 2
        %error "LONG_005B3"
    %endif
    times 2 - ($ - %%insn_005b3) db 0
    db 0x33, 0xF6 ; 005B5 33F6 | xor si,si | encoding preserved
    db 0x33, 0xFF ; 005B7 33FF | xor di,di | encoding preserved
    %%insn_005b9:
    call 0x236a ; 005B9 E8AE1D
    %if ($ - %%insn_005b9) > 3
        %error "LONG_005B9"
    %endif
    times 3 - ($ - %%insn_005b9) db 0
    %%insn_005bc:
    pop es ; 005BC 07
    %if ($ - %%insn_005bc) > 1
        %error "LONG_005BC"
    %endif
    times 1 - ($ - %%insn_005bc) db 0
    %%insn_005bd:
    pop ds ; 005BD 1F
    %if ($ - %%insn_005bd) > 1
        %error "LONG_005BD"
    %endif
    times 1 - ($ - %%insn_005bd) db 0
    %%insn_005be:
    jmp short 0x5c3 ; 005BE EB03
    %if ($ - %%insn_005be) > 2
        %error "LONG_005BE"
    %endif
    times 2 - ($ - %%insn_005be) db 0
    %%insn_005c0:
    call 0x21b ; 005C0 E858FC
    %if ($ - %%insn_005c0) > 3
        %error "LONG_005C0"
    %endif
    times 3 - ($ - %%insn_005c0) db 0
    %%insn_005c3:
    cmp word [bp-0xcea],0x1 ; 005C3 83BE16F301
    %if ($ - %%insn_005c3) > 5
        %error "LONG_005C3"
    %endif
    times 5 - ($ - %%insn_005c3) db 0
    %%insn_005c8:
    jnz short 0x5cd ; 005C8 7503
    %if ($ - %%insn_005c8) > 2
        %error "LONG_005C8"
    %endif
    times 2 - ($ - %%insn_005c8) db 0
    %%insn_005ca:
    call 0x6ed9 ; 005CA E80C69
    %if ($ - %%insn_005ca) > 3
        %error "LONG_005CA"
    %endif
    times 3 - ($ - %%insn_005ca) db 0
    %%insn_005cd:
    mov word [bp-0xcea],0x0 ; 005CD C78616F30000
    %if ($ - %%insn_005cd) > 6
        %error "LONG_005CD"
    %endif
    times 6 - ($ - %%insn_005cd) db 0
    %%insn_005d3:
    cmp word [bp-0x30de],0x0 ; 005D3 83BE22CF00
    %if ($ - %%insn_005d3) > 5
        %error "LONG_005D3"
    %endif
    times 5 - ($ - %%insn_005d3) db 0
    %%insn_005d8:
    jz short 0x5dd ; 005D8 7403
    %if ($ - %%insn_005d8) > 2
        %error "LONG_005D8"
    %endif
    times 2 - ($ - %%insn_005d8) db 0
    %%insn_005da:
    jmp 0xc40 ; 005DA E96306
    %if ($ - %%insn_005da) > 3
        %error "LONG_005DA"
    %endif
    times 3 - ($ - %%insn_005da) db 0
    %%insn_005dd:
    cmp byte [bp-0x2606],0x1 ; 005DD 80BEFAD901
    %if ($ - %%insn_005dd) > 5
        %error "LONG_005DD"
    %endif
    times 5 - ($ - %%insn_005dd) db 0
    %%insn_005e2:
    jnz short 0x5e9 ; 005E2 7505
    %if ($ - %%insn_005e2) > 2
        %error "LONG_005E2"
    %endif
    times 2 - ($ - %%insn_005e2) db 0
    %%insn_005e4:
    jmp 0x85e ; 005E4 E97702
    %if ($ - %%insn_005e4) > 3
        %error "LONG_005E4"
    %endif
    times 3 - ($ - %%insn_005e4) db 0
    %if ($ - %%fragment_start) != 96
        %error "SIZE_00587"
    %endif
%endmacro

%macro emit_decode_vdx_bitmap_still_part_01 0
    %%fragment_start:
    %%insn_005e9:
    cmp byte [bp-0x2606],0x2 ; 005E9 80BEFAD902
    %if ($ - %%insn_005e9) > 5
        %error "LONG_005E9"
    %endif
    times 5 - ($ - %%insn_005e9) db 0
    %%insn_005ee:
    jnz short 0x5f6 ; 005EE 7506
    %if ($ - %%insn_005ee) > 2
        %error "LONG_005EE"
    %endif
    times 2 - ($ - %%insn_005ee) db 0
    %%insn_005f0:
    mov word [bp-0x30e0],0x0 ; 005F0 C78620CF0000
    %if ($ - %%insn_005f0) > 6
        %error "LONG_005F0"
    %endif
    times 6 - ($ - %%insn_005f0) db 0
    %%insn_005f6:
    call 0x476 ; 005F6 E87DFE
    %if ($ - %%insn_005f6) > 3
        %error "LONG_005F6"
    %endif
    times 3 - ($ - %%insn_005f6) db 0
    %%insn_005f9:
    cmp word [bp-0x30da],0x0 ; 005F9 83BE26CF00
    %if ($ - %%insn_005f9) > 5
        %error "LONG_005F9"
    %endif
    times 5 - ($ - %%insn_005f9) db 0
    %%insn_005fe:
    jnz short 0x603 ; 005FE 7503
    %if ($ - %%insn_005fe) > 2
        %error "LONG_005FE"
    %endif
    times 2 - ($ - %%insn_005fe) db 0
    %%insn_00600:
    call 0x501 ; 00600 E8FEFE
    %if ($ - %%insn_00600) > 3
        %error "LONG_00600"
    %endif
    times 3 - ($ - %%insn_00600) db 0
    db 0x33, 0xF6 ; 00603 33F6 | xor si,si | encoding preserved
    %%insn_00605:
    mov ax,[si+0x2] ; 00605 8B4402
    %if ($ - %%insn_00605) > 3
        %error "LONG_00605"
    %endif
    times 3 - ($ - %%insn_00605) db 0
    %%insn_00608:
    mov [bp-0x2b7c],ax ; 00608 898684D4
    %if ($ - %%insn_00608) > 4
        %error "LONG_00608"
    %endif
    times 4 - ($ - %%insn_00608) db 0
    %%insn_0060c:
    mov [bp-0x2b7a],ax ; 0060C 898686D4
    %if ($ - %%insn_0060c) > 4
        %error "LONG_0060C"
    %endif
    times 4 - ($ - %%insn_0060c) db 0
    %%insn_00610:
    mov ax,[si] ; 00610 8B04
    %if ($ - %%insn_00610) > 2
        %error "LONG_00610"
    %endif
    times 2 - ($ - %%insn_00610) db 0
    %%insn_00612:
    mov [bp-0x2b80],ax ; 00612 898680D4
    %if ($ - %%insn_00612) > 4
        %error "LONG_00612"
    %endif
    times 4 - ($ - %%insn_00612) db 0
    %%insn_00616:
    mov [bp-0x2b7e],ax ; 00616 898682D4
    %if ($ - %%insn_00616) > 4
        %error "LONG_00616"
    %endif
    times 4 - ($ - %%insn_00616) db 0
    %%insn_0061a:
    mov si,0x306 ; 0061A BE0603
    %if ($ - %%insn_0061a) > 3
        %error "LONG_0061A"
    %endif
    times 3 - ($ - %%insn_0061a) db 0
    %%insn_0061d:
    mov di,0x0 ; 0061D BF0000
    %if ($ - %%insn_0061d) > 3
        %error "LONG_0061D"
    %endif
    times 3 - ($ - %%insn_0061d) db 0
    %%insn_00620:
    mov cx,0xd28e ; 00620 B98ED2
    %if ($ - %%insn_00620) > 3
        %error "LONG_00620"
    %endif
    times 3 - ($ - %%insn_00620) db 0
    %%insn_00623:
    mov ax,[bp-0x2b7c] ; 00623 8B8684D4
    %if ($ - %%insn_00623) > 4
        %error "LONG_00623"
    %endif
    times 4 - ($ - %%insn_00623) db 0
    %%insn_00627:
    push ax ; 00627 50
    %if ($ - %%insn_00627) > 1
        %error "LONG_00627"
    %endif
    times 1 - ($ - %%insn_00627) db 0
    %%insn_00628:
    mov ax,[bp-0x2b80] ; 00628 8B8680D4
    %if ($ - %%insn_00628) > 4
        %error "LONG_00628"
    %endif
    times 4 - ($ - %%insn_00628) db 0
    %%insn_0062c:
    push ax ; 0062C 50
    %if ($ - %%insn_0062c) > 1
        %error "LONG_0062C"
    %endif
    times 1 - ($ - %%insn_0062c) db 0
    db 0x8B, 0xD9 ; 0062D 8BD9 | mov bx,cx | encoding preserved
    %%insn_0062f:
    mov [ss:bx],di ; 0062F 36893F
    %if ($ - %%insn_0062f) > 3
        %error "LONG_0062F"
    %endif
    times 3 - ($ - %%insn_0062f) db 0
    %%insn_00632:
    mov bx,[si] ; 00632 8B1C
    %if ($ - %%insn_00632) > 2
        %error "LONG_00632"
    %endif
    times 2 - ($ - %%insn_00632) db 0
    %%insn_00634:
    mov dx,[si+0x2] ; 00634 8B5402
    %if ($ - %%insn_00634) > 3
        %error "LONG_00634"
    %endif
    times 3 - ($ - %%insn_00634) db 0
    %%insn_00637:
    add si,0x4 ; 00637 83C604
    %if ($ - %%insn_00637) > 3
        %error "LONG_00637"
    %endif
    times 3 - ($ - %%insn_00637) db 0
    %%insn_0063a:
    push di ; 0063A 57
    %if ($ - %%insn_0063a) > 1
        %error "LONG_0063A"
    %endif
    times 1 - ($ - %%insn_0063a) db 0
    %%insn_0063b:
    push si ; 0063B 56
    %if ($ - %%insn_0063b) > 1
        %error "LONG_0063B"
    %endif
    times 1 - ($ - %%insn_0063b) db 0
    %%insn_0063c:
    push cx ; 0063C 51
    %if ($ - %%insn_0063c) > 1
        %error "LONG_0063C"
    %endif
    times 1 - ($ - %%insn_0063c) db 0
    db 0x8B, 0xF7 ; 0063D 8BF7 | mov si,di | encoding preserved
    %%insn_0063f:
    push dx ; 0063F 52
    %if ($ - %%insn_0063f) > 1
        %error "LONG_0063F"
    %endif
    times 1 - ($ - %%insn_0063f) db 0
    %%insn_00640:
    mov ax,[bp-0x2b7a] ; 00640 8B8686D4
    %if ($ - %%insn_00640) > 4
        %error "LONG_00640"
    %endif
    times 4 - ($ - %%insn_00640) db 0
    %%insn_00644:
    sub ax,[bp-0x2b7c] ; 00644 2B8684D4
    %if ($ - %%insn_00644) > 4
        %error "LONG_00644"
    %endif
    times 4 - ($ - %%insn_00644) db 0
    %%insn_00648:
    shl ax,byte 0x2 ; 00648 C1E002
    %if ($ - %%insn_00648) > 3
        %error "LONG_00648"
    %endif
    times 3 - ($ - %%insn_00648) db 0
    db 0x05, 0x50, 0x00 ; 0064B 055000 | add ax,0x50 | encoding preserved
    %%insn_0064e:
    add ax,[bp-0x2636] ; 0064E 0386CAD9
    %if ($ - %%insn_0064e) > 4
        %error "LONG_0064E"
    %endif
    times 4 - ($ - %%insn_0064e) db 0
    %%insn_00652:
    mov cx,[bp-0x2996] ; 00652 8B8E6AD6
    %if ($ - %%insn_00652) > 4
        %error "LONG_00652"
    %endif
    times 4 - ($ - %%insn_00652) db 0
    %%insn_00656:
    mul cx ; 00656 F7E1
    %if ($ - %%insn_00656) > 2
        %error "LONG_00656"
    %endif
    times 2 - ($ - %%insn_00656) db 0
    db 0x8B, 0xF8 ; 00658 8BF8 | mov di,ax | encoding preserved
    %%insn_0065a:
    mov ax,[bp-0x2b7e] ; 0065A 8B8682D4
    %if ($ - %%insn_0065a) > 4
        %error "LONG_0065A"
    %endif
    times 4 - ($ - %%insn_0065a) db 0
    %%insn_0065e:
    sub ax,[bp-0x2b80] ; 0065E 2B8680D4
    %if ($ - %%insn_0065e) > 4
        %error "LONG_0065E"
    %endif
    times 4 - ($ - %%insn_0065e) db 0
    %%insn_00662:
    shl ax,byte 0x2 ; 00662 C1E002
    %if ($ - %%insn_00662) > 3
        %error "LONG_00662"
    %endif
    times 3 - ($ - %%insn_00662) db 0
    %%insn_00665:
    add ax,[bp-0x2638] ; 00665 0386C8D9
    %if ($ - %%insn_00665) > 4
        %error "LONG_00665"
    %endif
    times 4 - ($ - %%insn_00665) db 0
    db 0x03, 0xF8 ; 00669 03F8 | add di,ax | encoding preserved
    db 0x8A, 0xC2 ; 0066B 8AC2 | mov al,dl | encoding preserved
    %%insn_0066d:
    adc al,0x0 ; 0066D 1400
    %if ($ - %%insn_0066d) > 2
        %error "LONG_0066D"
    %endif
    times 2 - ($ - %%insn_0066d) db 0
    %%insn_0066f:
    cmp al,[bp-0x3076] ; 0066F 3A868ACF
    %if ($ - %%insn_0066f) > 4
        %error "LONG_0066F"
    %endif
    times 4 - ($ - %%insn_0066f) db 0
    %%insn_00673:
    jz short 0x680 ; 00673 740B
    %if ($ - %%insn_00673) > 2
        %error "LONG_00673"
    %endif
    times 2 - ($ - %%insn_00673) db 0
    db 0x32, 0xE4 ; 00675 32E4 | xor ah,ah | encoding preserved
    %%insn_00677:
    mov [bp-0x3076],al ; 00677 88868ACF
    %if ($ - %%insn_00677) > 4
        %error "LONG_00677"
    %endif
    times 4 - ($ - %%insn_00677) db 0
    %%insn_0067b:
    call word near [ss:0xd660] ; 0067B 36FF1660D6
    %if ($ - %%insn_0067b) > 5
        %error "LONG_0067B"
    %endif
    times 5 - ($ - %%insn_0067b) db 0
    %%insn_00680:
    pop dx ; 00680 5A
    %if ($ - %%insn_00680) > 1
        %error "LONG_00680"
    %endif
    times 1 - ($ - %%insn_00680) db 0
    %%insn_00681:
    mov al,[bp-0x3076] ; 00681 8A868ACF
    %if ($ - %%insn_00681) > 4
        %error "LONG_00681"
    %endif
    times 4 - ($ - %%insn_00681) db 0
    db 0x32, 0xE4 ; 00685 32E4 | xor ah,ah | encoding preserved
    %%insn_00687:
    push ax ; 00687 50
    %if ($ - %%insn_00687) > 1
        %error "LONG_00687"
    %endif
    times 1 - ($ - %%insn_00687) db 0
    %%insn_00688:
    mov [ss:si],di ; 00688 36893C
    %if ($ - %%insn_00688) > 3
        %error "LONG_00688"
    %endif
    times 3 - ($ - %%insn_00688) db 0
    %%insn_0068b:
    mov [ss:si+0x2],ax ; 0068B 36894402
    %if ($ - %%insn_0068b) > 4
        %error "LONG_0068B"
    %endif
    times 4 - ($ - %%insn_0068b) db 0
    %%insn_0068f:
    cmp word [bp-0x30e0],0x0 ; 0068F 83BE20CF00
    %if ($ - %%insn_0068f) > 5
        %error "LONG_0068F"
    %endif
    times 5 - ($ - %%insn_0068f) db 0
    %%insn_00694:
    jnz short 0x6f5 ; 00694 755F
    %if ($ - %%insn_00694) > 2
        %error "LONG_00694"
    %endif
    times 2 - ($ - %%insn_00694) db 0
    %%insn_00696:
    add di,[bp-0x2996] ; 00696 03BE6AD6
    %if ($ - %%insn_00696) > 4
        %error "LONG_00696"
    %endif
    times 4 - ($ - %%insn_00696) db 0
    %%insn_0069a:
    jnc short 0x6ad ; 0069A 7311
    %if ($ - %%insn_0069a) > 2
        %error "LONG_0069A"
    %endif
    times 2 - ($ - %%insn_0069a) db 0
    %%insn_0069c:
    mov al,[bp-0x3076] ; 0069C 8A868ACF
    %if ($ - %%insn_0069c) > 4
        %error "LONG_0069C"
    %endif
    times 4 - ($ - %%insn_0069c) db 0
    %%insn_006a0:
    inc al ; 006A0 FEC0
    %if ($ - %%insn_006a0) > 2
        %error "LONG_006A0"
    %endif
    times 2 - ($ - %%insn_006a0) db 0
    db 0x32, 0xE4 ; 006A2 32E4 | xor ah,ah | encoding preserved
    %%insn_006a4:
    mov [bp-0x3076],al ; 006A4 88868ACF
    %if ($ - %%insn_006a4) > 4
        %error "LONG_006A4"
    %endif
    times 4 - ($ - %%insn_006a4) db 0
    %%insn_006a8:
    call word near [ss:0xd660] ; 006A8 36FF1660D6
    %if ($ - %%insn_006a8) > 5
        %error "LONG_006A8"
    %endif
    times 5 - ($ - %%insn_006a8) db 0
    %%insn_006ad:
    add di,[bp-0x2996] ; 006AD 03BE6AD6
    %if ($ - %%insn_006ad) > 4
        %error "LONG_006AD"
    %endif
    times 4 - ($ - %%insn_006ad) db 0
    %%insn_006b1:
    jnc short 0x6c4 ; 006B1 7311
    %if ($ - %%insn_006b1) > 2
        %error "LONG_006B1"
    %endif
    times 2 - ($ - %%insn_006b1) db 0
    %%insn_006b3:
    mov al,[bp-0x3076] ; 006B3 8A868ACF
    %if ($ - %%insn_006b3) > 4
        %error "LONG_006B3"
    %endif
    times 4 - ($ - %%insn_006b3) db 0
    %%insn_006b7:
    inc al ; 006B7 FEC0
    %if ($ - %%insn_006b7) > 2
        %error "LONG_006B7"
    %endif
    times 2 - ($ - %%insn_006b7) db 0
    db 0x32, 0xE4 ; 006B9 32E4 | xor ah,ah | encoding preserved
    %%insn_006bb:
    mov [bp-0x3076],al ; 006BB 88868ACF
    %if ($ - %%insn_006bb) > 4
        %error "LONG_006BB"
    %endif
    times 4 - ($ - %%insn_006bb) db 0
    %%insn_006bf:
    call word near [ss:0xd660] ; 006BF 36FF1660D6
    %if ($ - %%insn_006bf) > 5
        %error "LONG_006BF"
    %endif
    times 5 - ($ - %%insn_006bf) db 0
    %%insn_006c4:
    add di,[bp-0x2996] ; 006C4 03BE6AD6
    %if ($ - %%insn_006c4) > 4
        %error "LONG_006C4"
    %endif
    times 4 - ($ - %%insn_006c4) db 0
    %%insn_006c8:
    jnc short 0x6db ; 006C8 7311
    %if ($ - %%insn_006c8) > 2
        %error "LONG_006C8"
    %endif
    times 2 - ($ - %%insn_006c8) db 0
    %%insn_006ca:
    mov al,[bp-0x3076] ; 006CA 8A868ACF
    %if ($ - %%insn_006ca) > 4
        %error "LONG_006CA"
    %endif
    times 4 - ($ - %%insn_006ca) db 0
    %%insn_006ce:
    inc al ; 006CE FEC0
    %if ($ - %%insn_006ce) > 2
        %error "LONG_006CE"
    %endif
    times 2 - ($ - %%insn_006ce) db 0
    db 0x32, 0xE4 ; 006D0 32E4 | xor ah,ah | encoding preserved
    %%insn_006d2:
    mov [bp-0x3076],al ; 006D2 88868ACF
    %if ($ - %%insn_006d2) > 4
        %error "LONG_006D2"
    %endif
    times 4 - ($ - %%insn_006d2) db 0
    %%insn_006d6:
    call word near [ss:0xd660] ; 006D6 36FF1660D6
    %if ($ - %%insn_006d6) > 5
        %error "LONG_006D6"
    %endif
    times 5 - ($ - %%insn_006d6) db 0
    %%insn_006db:
    add di,[bp-0x2996] ; 006DB 03BE6AD6
    %if ($ - %%insn_006db) > 4
        %error "LONG_006DB"
    %endif
    times 4 - ($ - %%insn_006db) db 0
    %%insn_006df:
    jnc short 0x6f2 ; 006DF 7311
    %if ($ - %%insn_006df) > 2
        %error "LONG_006DF"
    %endif
    times 2 - ($ - %%insn_006df) db 0
    %%insn_006e1:
    mov al,[bp-0x3076] ; 006E1 8A868ACF
    %if ($ - %%insn_006e1) > 4
        %error "LONG_006E1"
    %endif
    times 4 - ($ - %%insn_006e1) db 0
    %%insn_006e5:
    inc al ; 006E5 FEC0
    %if ($ - %%insn_006e5) > 2
        %error "LONG_006E5"
    %endif
    times 2 - ($ - %%insn_006e5) db 0
    db 0x32, 0xE4 ; 006E7 32E4 | xor ah,ah | encoding preserved
    %%insn_006e9:
    mov [bp-0x3076],al ; 006E9 88868ACF
    %if ($ - %%insn_006e9) > 4
        %error "LONG_006E9"
    %endif
    times 4 - ($ - %%insn_006e9) db 0
    %%insn_006ed:
    call word near [ss:0xd660] ; 006ED 36FF1660D6
    %if ($ - %%insn_006ed) > 5
        %error "LONG_006ED"
    %endif
    times 5 - ($ - %%insn_006ed) db 0
    %%insn_006f2:
    jmp 0x7e3 ; 006F2 E9EE00
    %if ($ - %%insn_006f2) > 3
        %error "LONG_006F2"
    %endif
    times 3 - ($ - %%insn_006f2) db 0
    db 0x8B, 0xC3 ; 006F5 8BC3 | mov ax,bx | encoding preserved
    %%insn_006f7:
    test dh,0x10 ; 006F7 F6C610
    %if ($ - %%insn_006f7) > 3
        %error "LONG_006F7"
    %endif
    times 3 - ($ - %%insn_006f7) db 0
    %%insn_006fa:
    jz short 0x6fe ; 006FA 7402
    %if ($ - %%insn_006fa) > 2
        %error "LONG_006FA"
    %endif
    times 2 - ($ - %%insn_006fa) db 0
    db 0x8A, 0xE3 ; 006FC 8AE3 | mov ah,bl | encoding preserved
    %%insn_006fe:
    test dh,0x20 ; 006FE F6C620
    %if ($ - %%insn_006fe) > 3
        %error "LONG_006FE"
    %endif
    times 3 - ($ - %%insn_006fe) db 0
    %%insn_00701:
    jnz short 0x705 ; 00701 7502
    %if ($ - %%insn_00701) > 2
        %error "LONG_00701"
    %endif
    times 2 - ($ - %%insn_00701) db 0
    db 0x8A, 0xC7 ; 00703 8AC7 | mov al,bh | encoding preserved
    %%insn_00705:
    shl eax,byte 0x10 ; 00705 66C1E010
    %if ($ - %%insn_00705) > 4
        %error "LONG_00705"
    %endif
    times 4 - ($ - %%insn_00705) db 0
    db 0x8B, 0xC3 ; 00709 8BC3 | mov ax,bx | encoding preserved
    %%insn_0070b:
    test dh,0x80 ; 0070B F6C680
    %if ($ - %%insn_0070b) > 3
        %error "LONG_0070B"
    %endif
    times 3 - ($ - %%insn_0070b) db 0
    %%insn_0070e:
    jnz short 0x712 ; 0070E 7502
    %if ($ - %%insn_0070e) > 2
        %error "LONG_0070E"
    %endif
    times 2 - ($ - %%insn_0070e) db 0
    db 0x8A, 0xC7 ; 00710 8AC7 | mov al,bh | encoding preserved
    %%insn_00712:
    test dh,0x40 ; 00712 F6C640
    %if ($ - %%insn_00712) > 3
        %error "LONG_00712"
    %endif
    times 3 - ($ - %%insn_00712) db 0
    %%insn_00715:
    jz short 0x719 ; 00715 7402
    %if ($ - %%insn_00715) > 2
        %error "LONG_00715"
    %endif
    times 2 - ($ - %%insn_00715) db 0
    db 0x8A, 0xE3 ; 00717 8AE3 | mov ah,bl | encoding preserved
    db 0x66, 0x26, 0x89, 0x05 ; 00719 66268905 | mov [es:di],eax | encoding preserved
    %%insn_0071d:
    add di,[bp-0x2996] ; 0071D 03BE6AD6
    %if ($ - %%insn_0071d) > 4
        %error "LONG_0071D"
    %endif
    times 4 - ($ - %%insn_0071d) db 0
    %%insn_00721:
    jnc short 0x734 ; 00721 7311
    %if ($ - %%insn_00721) > 2
        %error "LONG_00721"
    %endif
    times 2 - ($ - %%insn_00721) db 0
    %%insn_00723:
    mov al,[bp-0x3076] ; 00723 8A868ACF
    %if ($ - %%insn_00723) > 4
        %error "LONG_00723"
    %endif
    times 4 - ($ - %%insn_00723) db 0
    %%insn_00727:
    inc al ; 00727 FEC0
    %if ($ - %%insn_00727) > 2
        %error "LONG_00727"
    %endif
    times 2 - ($ - %%insn_00727) db 0
    db 0x32, 0xE4 ; 00729 32E4 | xor ah,ah | encoding preserved
    %%insn_0072b:
    mov [bp-0x3076],al ; 0072B 88868ACF
    %if ($ - %%insn_0072b) > 4
        %error "LONG_0072B"
    %endif
    times 4 - ($ - %%insn_0072b) db 0
    %%insn_0072f:
    call word near [ss:0xd660] ; 0072F 36FF1660D6
    %if ($ - %%insn_0072f) > 5
        %error "LONG_0072F"
    %endif
    times 5 - ($ - %%insn_0072f) db 0
    %%insn_00734:
    shl dx,byte 0x4 ; 00734 C1E204
    %if ($ - %%insn_00734) > 3
        %error "LONG_00734"
    %endif
    times 3 - ($ - %%insn_00734) db 0
    db 0x8B, 0xC3 ; 00737 8BC3 | mov ax,bx | encoding preserved
    %%insn_00739:
    test dh,0x10 ; 00739 F6C610
    %if ($ - %%insn_00739) > 3
        %error "LONG_00739"
    %endif
    times 3 - ($ - %%insn_00739) db 0
    %%insn_0073c:
    jz short 0x740 ; 0073C 7402
    %if ($ - %%insn_0073c) > 2
        %error "LONG_0073C"
    %endif
    times 2 - ($ - %%insn_0073c) db 0
    db 0x8A, 0xE3 ; 0073E 8AE3 | mov ah,bl | encoding preserved
    %%insn_00740:
    test dh,0x20 ; 00740 F6C620
    %if ($ - %%insn_00740) > 3
        %error "LONG_00740"
    %endif
    times 3 - ($ - %%insn_00740) db 0
    %%insn_00743:
    jnz short 0x747 ; 00743 7502
    %if ($ - %%insn_00743) > 2
        %error "LONG_00743"
    %endif
    times 2 - ($ - %%insn_00743) db 0
    db 0x8A, 0xC7 ; 00745 8AC7 | mov al,bh | encoding preserved
    %%insn_00747:
    shl eax,byte 0x10 ; 00747 66C1E010
    %if ($ - %%insn_00747) > 4
        %error "LONG_00747"
    %endif
    times 4 - ($ - %%insn_00747) db 0
    db 0x8B, 0xC3 ; 0074B 8BC3 | mov ax,bx | encoding preserved
    %%insn_0074d:
    test dh,0x80 ; 0074D F6C680
    %if ($ - %%insn_0074d) > 3
        %error "LONG_0074D"
    %endif
    times 3 - ($ - %%insn_0074d) db 0
    %%insn_00750:
    jnz short 0x754 ; 00750 7502
    %if ($ - %%insn_00750) > 2
        %error "LONG_00750"
    %endif
    times 2 - ($ - %%insn_00750) db 0
    db 0x8A, 0xC7 ; 00752 8AC7 | mov al,bh | encoding preserved
    %%insn_00754:
    test dh,0x40 ; 00754 F6C640
    %if ($ - %%insn_00754) > 3
        %error "LONG_00754"
    %endif
    times 3 - ($ - %%insn_00754) db 0
    %%insn_00757:
    jz short 0x75b ; 00757 7402
    %if ($ - %%insn_00757) > 2
        %error "LONG_00757"
    %endif
    times 2 - ($ - %%insn_00757) db 0
    db 0x8A, 0xE3 ; 00759 8AE3 | mov ah,bl | encoding preserved
    db 0x66, 0x26, 0x89, 0x05 ; 0075B 66268905 | mov [es:di],eax | encoding preserved
    %%insn_0075f:
    add di,[bp-0x2996] ; 0075F 03BE6AD6
    %if ($ - %%insn_0075f) > 4
        %error "LONG_0075F"
    %endif
    times 4 - ($ - %%insn_0075f) db 0
    %%insn_00763:
    jnc short 0x776 ; 00763 7311
    %if ($ - %%insn_00763) > 2
        %error "LONG_00763"
    %endif
    times 2 - ($ - %%insn_00763) db 0
    %%insn_00765:
    mov al,[bp-0x3076] ; 00765 8A868ACF
    %if ($ - %%insn_00765) > 4
        %error "LONG_00765"
    %endif
    times 4 - ($ - %%insn_00765) db 0
    %%insn_00769:
    inc al ; 00769 FEC0
    %if ($ - %%insn_00769) > 2
        %error "LONG_00769"
    %endif
    times 2 - ($ - %%insn_00769) db 0
    db 0x32, 0xE4 ; 0076B 32E4 | xor ah,ah | encoding preserved
    %%insn_0076d:
    mov [bp-0x3076],al ; 0076D 88868ACF
    %if ($ - %%insn_0076d) > 4
        %error "LONG_0076D"
    %endif
    times 4 - ($ - %%insn_0076d) db 0
    %%insn_00771:
    call word near [ss:0xd660] ; 00771 36FF1660D6
    %if ($ - %%insn_00771) > 5
        %error "LONG_00771"
    %endif
    times 5 - ($ - %%insn_00771) db 0
    %%insn_00776:
    shl dx,byte 0x4 ; 00776 C1E204
    %if ($ - %%insn_00776) > 3
        %error "LONG_00776"
    %endif
    times 3 - ($ - %%insn_00776) db 0
    db 0x8B, 0xC3 ; 00779 8BC3 | mov ax,bx | encoding preserved
    %%insn_0077b:
    test dh,0x10 ; 0077B F6C610
    %if ($ - %%insn_0077b) > 3
        %error "LONG_0077B"
    %endif
    times 3 - ($ - %%insn_0077b) db 0
    %%insn_0077e:
    jz short 0x782 ; 0077E 7402
    %if ($ - %%insn_0077e) > 2
        %error "LONG_0077E"
    %endif
    times 2 - ($ - %%insn_0077e) db 0
    db 0x8A, 0xE3 ; 00780 8AE3 | mov ah,bl | encoding preserved
    %%insn_00782:
    test dh,0x20 ; 00782 F6C620
    %if ($ - %%insn_00782) > 3
        %error "LONG_00782"
    %endif
    times 3 - ($ - %%insn_00782) db 0
    %%insn_00785:
    jnz short 0x789 ; 00785 7502
    %if ($ - %%insn_00785) > 2
        %error "LONG_00785"
    %endif
    times 2 - ($ - %%insn_00785) db 0
    db 0x8A, 0xC7 ; 00787 8AC7 | mov al,bh | encoding preserved
    %%insn_00789:
    shl eax,byte 0x10 ; 00789 66C1E010
    %if ($ - %%insn_00789) > 4
        %error "LONG_00789"
    %endif
    times 4 - ($ - %%insn_00789) db 0
    db 0x8B, 0xC3 ; 0078D 8BC3 | mov ax,bx | encoding preserved
    %%insn_0078f:
    test dh,0x80 ; 0078F F6C680
    %if ($ - %%insn_0078f) > 3
        %error "LONG_0078F"
    %endif
    times 3 - ($ - %%insn_0078f) db 0
    %%insn_00792:
    jnz short 0x796 ; 00792 7502
    %if ($ - %%insn_00792) > 2
        %error "LONG_00792"
    %endif
    times 2 - ($ - %%insn_00792) db 0
    db 0x8A, 0xC7 ; 00794 8AC7 | mov al,bh | encoding preserved
    %%insn_00796:
    test dh,0x40 ; 00796 F6C640
    %if ($ - %%insn_00796) > 3
        %error "LONG_00796"
    %endif
    times 3 - ($ - %%insn_00796) db 0
    %%insn_00799:
    jz short 0x79d ; 00799 7402
    %if ($ - %%insn_00799) > 2
        %error "LONG_00799"
    %endif
    times 2 - ($ - %%insn_00799) db 0
    db 0x8A, 0xE3 ; 0079B 8AE3 | mov ah,bl | encoding preserved
    db 0x66, 0x26, 0x89, 0x05 ; 0079D 66268905 | mov [es:di],eax | encoding preserved
    %%insn_007a1:
    add di,[bp-0x2996] ; 007A1 03BE6AD6
    %if ($ - %%insn_007a1) > 4
        %error "LONG_007A1"
    %endif
    times 4 - ($ - %%insn_007a1) db 0
    %%insn_007a5:
    jnc short 0x7b8 ; 007A5 7311
    %if ($ - %%insn_007a5) > 2
        %error "LONG_007A5"
    %endif
    times 2 - ($ - %%insn_007a5) db 0
    %%insn_007a7:
    mov al,[bp-0x3076] ; 007A7 8A868ACF
    %if ($ - %%insn_007a7) > 4
        %error "LONG_007A7"
    %endif
    times 4 - ($ - %%insn_007a7) db 0
    %%insn_007ab:
    inc al ; 007AB FEC0
    %if ($ - %%insn_007ab) > 2
        %error "LONG_007AB"
    %endif
    times 2 - ($ - %%insn_007ab) db 0
    db 0x32, 0xE4 ; 007AD 32E4 | xor ah,ah | encoding preserved
    %%insn_007af:
    mov [bp-0x3076],al ; 007AF 88868ACF
    %if ($ - %%insn_007af) > 4
        %error "LONG_007AF"
    %endif
    times 4 - ($ - %%insn_007af) db 0
    %%insn_007b3:
    call word near [ss:0xd660] ; 007B3 36FF1660D6
    %if ($ - %%insn_007b3) > 5
        %error "LONG_007B3"
    %endif
    times 5 - ($ - %%insn_007b3) db 0
    %%insn_007b8:
    shl dx,byte 0x4 ; 007B8 C1E204
    %if ($ - %%insn_007b8) > 3
        %error "LONG_007B8"
    %endif
    times 3 - ($ - %%insn_007b8) db 0
    db 0x8B, 0xC3 ; 007BB 8BC3 | mov ax,bx | encoding preserved
    %%insn_007bd:
    test dh,0x10 ; 007BD F6C610
    %if ($ - %%insn_007bd) > 3
        %error "LONG_007BD"
    %endif
    times 3 - ($ - %%insn_007bd) db 0
    %%insn_007c0:
    jz short 0x7c4 ; 007C0 7402
    %if ($ - %%insn_007c0) > 2
        %error "LONG_007C0"
    %endif
    times 2 - ($ - %%insn_007c0) db 0
    db 0x8A, 0xE3 ; 007C2 8AE3 | mov ah,bl | encoding preserved
    %%insn_007c4:
    test dh,0x20 ; 007C4 F6C620
    %if ($ - %%insn_007c4) > 3
        %error "LONG_007C4"
    %endif
    times 3 - ($ - %%insn_007c4) db 0
    %%insn_007c7:
    jnz short 0x7cb ; 007C7 7502
    %if ($ - %%insn_007c7) > 2
        %error "LONG_007C7"
    %endif
    times 2 - ($ - %%insn_007c7) db 0
    db 0x8A, 0xC7 ; 007C9 8AC7 | mov al,bh | encoding preserved
    %%insn_007cb:
    shl eax,byte 0x10 ; 007CB 66C1E010
    %if ($ - %%insn_007cb) > 4
        %error "LONG_007CB"
    %endif
    times 4 - ($ - %%insn_007cb) db 0
    db 0x8B, 0xC3 ; 007CF 8BC3 | mov ax,bx | encoding preserved
    %%insn_007d1:
    test dh,0x80 ; 007D1 F6C680
    %if ($ - %%insn_007d1) > 3
        %error "LONG_007D1"
    %endif
    times 3 - ($ - %%insn_007d1) db 0
    %%insn_007d4:
    jnz short 0x7d8 ; 007D4 7502
    %if ($ - %%insn_007d4) > 2
        %error "LONG_007D4"
    %endif
    times 2 - ($ - %%insn_007d4) db 0
    db 0x8A, 0xC7 ; 007D6 8AC7 | mov al,bh | encoding preserved
    %%insn_007d8:
    test dh,0x40 ; 007D8 F6C640
    %if ($ - %%insn_007d8) > 3
        %error "LONG_007D8"
    %endif
    times 3 - ($ - %%insn_007d8) db 0
    %%insn_007db:
    jz short 0x7df ; 007DB 7402
    %if ($ - %%insn_007db) > 2
        %error "LONG_007DB"
    %endif
    times 2 - ($ - %%insn_007db) db 0
    db 0x8A, 0xE3 ; 007DD 8AE3 | mov ah,bl | encoding preserved
    db 0x66, 0x26, 0x89, 0x05 ; 007DF 66268905 | mov [es:di],eax | encoding preserved
    %%insn_007e3:
    pop ax ; 007E3 58
    %if ($ - %%insn_007e3) > 1
        %error "LONG_007E3"
    %endif
    times 1 - ($ - %%insn_007e3) db 0
    %%insn_007e4:
    cmp al,[bp-0x3076] ; 007E4 3A868ACF
    %if ($ - %%insn_007e4) > 4
        %error "LONG_007E4"
    %endif
    times 4 - ($ - %%insn_007e4) db 0
    %%insn_007e8:
    jz short 0x7f5 ; 007E8 740B
    %if ($ - %%insn_007e8) > 2
        %error "LONG_007E8"
    %endif
    times 2 - ($ - %%insn_007e8) db 0
    %%insn_007ea:
    mov byte [bp+si+0x3],0xff ; 007EA C64203FF
    %if ($ - %%insn_007ea) > 4
        %error "LONG_007EA"
    %endif
    times 4 - ($ - %%insn_007ea) db 0
    %%insn_007ee:
    pop bx ; 007EE 5B
    %if ($ - %%insn_007ee) > 1
        %error "LONG_007EE"
    %endif
    times 1 - ($ - %%insn_007ee) db 0
    %%insn_007ef:
    mov byte [ss:bx+0x2],0xff ; 007EF 36C64702FF
    %if ($ - %%insn_007ef) > 5
        %error "LONG_007EF"
    %endif
    times 5 - ($ - %%insn_007ef) db 0
    %%insn_007f4:
    push bx ; 007F4 53
    %if ($ - %%insn_007f4) > 1
        %error "LONG_007F4"
    %endif
    times 1 - ($ - %%insn_007f4) db 0
    %%insn_007f5:
    pop cx ; 007F5 59
    %if ($ - %%insn_007f5) > 1
        %error "LONG_007F5"
    %endif
    times 1 - ($ - %%insn_007f5) db 0
    %%insn_007f6:
    pop si ; 007F6 5E
    %if ($ - %%insn_007f6) > 1
        %error "LONG_007F6"
    %endif
    times 1 - ($ - %%insn_007f6) db 0
    %%insn_007f7:
    pop di ; 007F7 5F
    %if ($ - %%insn_007f7) > 1
        %error "LONG_007F7"
    %endif
    times 1 - ($ - %%insn_007f7) db 0
    %%insn_007f8:
    add di,0x4 ; 007F8 83C704
    %if ($ - %%insn_007f8) > 3
        %error "LONG_007F8"
    %endif
    times 3 - ($ - %%insn_007f8) db 0
    %%insn_007fb:
    dec word [bp-0x2b80] ; 007FB FF8E80D4
    %if ($ - %%insn_007fb) > 4
        %error "LONG_007FB"
    %endif
    times 4 - ($ - %%insn_007fb) db 0
    %%insn_007ff:
    jnz 0x632 ; 007FF 0F852FFE
    %if ($ - %%insn_007ff) > 4
        %error "LONG_007FF"
    %endif
    times 4 - ($ - %%insn_007ff) db 0
    %%insn_00803:
    mov al,[bp+di-0x2] ; 00803 8A43FE
    %if ($ - %%insn_00803) > 3
        %error "LONG_00803"
    %endif
    times 3 - ($ - %%insn_00803) db 0
    db 0x8B, 0xD9 ; 00806 8BD9 | mov bx,cx | encoding preserved
    %%insn_00808:
    mov bx,[ss:bx] ; 00808 368B1F
    %if ($ - %%insn_00808) > 3
        %error "LONG_00808"
    %endif
    times 3 - ($ - %%insn_00808) db 0
    %%insn_0080b:
    mov ah,[ss:bx+0x2] ; 0080B 368A6702
    %if ($ - %%insn_0080b) > 4
        %error "LONG_0080B"
    %endif
    times 4 - ($ - %%insn_0080b) db 0
    db 0x3A, 0xC4 ; 0080F 3AC4 | cmp al,ah | encoding preserved
    %%insn_00811:
    jz short 0x81a ; 00811 7407
    %if ($ - %%insn_00811) > 2
        %error "LONG_00811"
    %endif
    times 2 - ($ - %%insn_00811) db 0
    db 0x8B, 0xD9 ; 00813 8BD9 | mov bx,cx | encoding preserved
    %%insn_00815:
    mov byte [ss:bx+0x2],0xff ; 00815 36C64702FF
    %if ($ - %%insn_00815) > 5
        %error "LONG_00815"
    %endif
    times 5 - ($ - %%insn_00815) db 0
    %%insn_0081a:
    add cx,0x4 ; 0081A 83C104
    %if ($ - %%insn_0081a) > 3
        %error "LONG_0081A"
    %endif
    times 3 - ($ - %%insn_0081a) db 0
    %%insn_0081d:
    pop ax ; 0081D 58
    %if ($ - %%insn_0081d) > 1
        %error "LONG_0081D"
    %endif
    times 1 - ($ - %%insn_0081d) db 0
    %%insn_0081e:
    mov [bp-0x2b80],ax ; 0081E 898680D4
    %if ($ - %%insn_0081e) > 4
        %error "LONG_0081E"
    %endif
    times 4 - ($ - %%insn_0081e) db 0
    %%insn_00822:
    dec word [bp-0x2b7c] ; 00822 FF8E84D4
    %if ($ - %%insn_00822) > 4
        %error "LONG_00822"
    %endif
    times 4 - ($ - %%insn_00822) db 0
    %%insn_00826:
    jnz 0x628 ; 00826 0F85FEFD
    %if ($ - %%insn_00826) > 4
        %error "LONG_00826"
    %endif
    times 4 - ($ - %%insn_00826) db 0
    %%insn_0082a:
    pop ax ; 0082A 58
    %if ($ - %%insn_0082a) > 1
        %error "LONG_0082A"
    %endif
    times 1 - ($ - %%insn_0082a) db 0
    %%insn_0082b:
    mov [bp-0x2b7c],ax ; 0082B 898684D4
    %if ($ - %%insn_0082b) > 4
        %error "LONG_0082B"
    %endif
    times 4 - ($ - %%insn_0082b) db 0
    %%insn_0082f:
    mov word [bp-0x30e0],0xffff ; 0082F C78620CFFFFF
    %if ($ - %%insn_0082f) > 6
        %error "LONG_0082F"
    %endif
    times 6 - ($ - %%insn_0082f) db 0
    db 0x8B, 0xD9 ; 00835 8BD9 | mov bx,cx | encoding preserved
    %%insn_00837:
    mov word [ss:bx],0xffff ; 00837 36C707FFFF
    %if ($ - %%insn_00837) > 5
        %error "LONG_00837"
    %endif
    times 5 - ($ - %%insn_00837) db 0
    %%insn_0083c:
    cmp word [bp-0x30da],0x0 ; 0083C 83BE26CF00
    %if ($ - %%insn_0083c) > 5
        %error "LONG_0083C"
    %endif
    times 5 - ($ - %%insn_0083c) db 0
    %%insn_00841:
    jz short 0x846 ; 00841 7403
    %if ($ - %%insn_00841) > 2
        %error "LONG_00841"
    %endif
    times 2 - ($ - %%insn_00841) db 0
    %%insn_00843:
    call 0x501 ; 00843 E8BBFC
    %if ($ - %%insn_00843) > 3
        %error "LONG_00843"
    %endif
    times 3 - ($ - %%insn_00843) db 0
    %%insn_00846:
    test word [bp-0x30b4],0x1 ; 00846 F7864CCF0100
    %if ($ - %%insn_00846) > 6
        %error "LONG_00846"
    %endif
    times 6 - ($ - %%insn_00846) db 0
    %%insn_0084c:
    jz short 0x857 ; 0084C 7409
    %if ($ - %%insn_0084c) > 2
        %error "LONG_0084C"
    %endif
    times 2 - ($ - %%insn_0084c) db 0
    %%insn_0084e:
    call 0xf33 ; 0084E E8E206
    %if ($ - %%insn_0084e) > 3
        %error "LONG_0084E"
    %endif
    times 3 - ($ - %%insn_0084e) db 0
    %%insn_00851:
    mov word [bp-0x30b4],0x0 ; 00851 C7864CCF0000
    %if ($ - %%insn_00851) > 6
        %error "LONG_00851"
    %endif
    times 6 - ($ - %%insn_00851) db 0
    %%insn_00857:
    mov word [bp-0x30da],0x0 ; 00857 C78626CF0000
    %if ($ - %%insn_00857) > 6
        %error "LONG_00857"
    %endif
    times 6 - ($ - %%insn_00857) db 0
    %%insn_0085d:
    ret ; 0085D C3
    %if ($ - %%insn_0085d) > 1
        %error "LONG_0085D"
    %endif
    times 1 - ($ - %%insn_0085d) db 0
    %%insn_0085e:
    mov si,0x306 ; 0085E BE0603
    %if ($ - %%insn_0085e) > 3
        %error "LONG_0085E"
    %endif
    times 3 - ($ - %%insn_0085e) db 0
    %%insn_00861:
    mov ax,[bp-0x2aac] ; 00861 8B8654D5
    %if ($ - %%insn_00861) > 4
        %error "LONG_00861"
    %endif
    times 4 - ($ - %%insn_00861) db 0
    %%insn_00865:
    mov [bp-0x30ba],ax ; 00865 898646CF
    %if ($ - %%insn_00865) > 4
        %error "LONG_00865"
    %endif
    times 4 - ($ - %%insn_00865) db 0
    %%insn_00869:
    mov ax,[bp-0x2605] ; 00869 8B86FBD9
    %if ($ - %%insn_00869) > 4
        %error "LONG_00869"
    %endif
    times 4 - ($ - %%insn_00869) db 0
    %%insn_0086d:
    mov [bp-0x30b8],ax ; 0086D 898648CF
    %if ($ - %%insn_0086d) > 4
        %error "LONG_0086D"
    %endif
    times 4 - ($ - %%insn_0086d) db 0
    %%insn_00871:
    mov ax,[bp-0x2d70] ; 00871 8B8690D2
    %if ($ - %%insn_00871) > 4
        %error "LONG_00871"
    %endif
    times 4 - ($ - %%insn_00871) db 0
    %%insn_00875:
    mov [bp-0x3076],al ; 00875 88868ACF
    %if ($ - %%insn_00875) > 4
        %error "LONG_00875"
    %endif
    times 4 - ($ - %%insn_00875) db 0
    %%insn_00879:
    mov [bp-0x30b6],al ; 00879 88864ACF
    %if ($ - %%insn_00879) > 4
        %error "LONG_00879"
    %endif
    times 4 - ($ - %%insn_00879) db 0
    %%insn_0087d:
    pusha ; 0087D 60
    %if ($ - %%insn_0087d) > 1
        %error "LONG_0087D"
    %endif
    times 1 - ($ - %%insn_0087d) db 0
    %%insn_0087e:
    push ds ; 0087E 1E
    %if ($ - %%insn_0087e) > 1
        %error "LONG_0087E"
    %endif
    times 1 - ($ - %%insn_0087e) db 0
    %%insn_0087f:
    mov ds,word [bp-0x2aae] ; 0087F 8E9E52D5
    %if ($ - %%insn_0087f) > 4
        %error "LONG_0087F"
    %endif
    times 4 - ($ - %%insn_0087f) db 0
    %%insn_00883:
    mov dword [bp-0x2b92],0x10000 ; 00883 66C7866ED400000100
    %if ($ - %%insn_00883) > 9
        %error "LONG_00883"
    %endif
    times 9 - ($ - %%insn_00883) db 0
    %%insn_0088c:
    mov word [bp-0x2b88],0x0 ; 0088C C78678D40000
    %if ($ - %%insn_0088c) > 6
        %error "LONG_0088C"
    %endif
    times 6 - ($ - %%insn_0088c) db 0
    %%insn_00892:
    mov ax,[bp-0x2aac] ; 00892 8B8654D5
    %if ($ - %%insn_00892) > 4
        %error "LONG_00892"
    %endif
    times 4 - ($ - %%insn_00892) db 0
    %%insn_00896:
    mov word [bp-0x2b86],0x0 ; 00896 C7867AD40000
    %if ($ - %%insn_00896) > 6
        %error "LONG_00896"
    %endif
    times 6 - ($ - %%insn_00896) db 0
    %%insn_0089c:
    mov [bp-0x2b84],ax ; 0089C 89867CD4
    %if ($ - %%insn_0089c) > 4
        %error "LONG_0089C"
    %endif
    times 4 - ($ - %%insn_0089c) db 0
    %%insn_008a0:
    mov ax,[bp-0x2ab0] ; 008A0 8B8650D5
    %if ($ - %%insn_008a0) > 4
        %error "LONG_008A0"
    %endif
    times 4 - ($ - %%insn_008a0) db 0
    %%insn_008a4:
    mov [bp-0x2b8e],ax ; 008A4 898672D4
    %if ($ - %%insn_008a4) > 4
        %error "LONG_008A4"
    %endif
    times 4 - ($ - %%insn_008a4) db 0
    %%insn_008a8:
    mov al,[bp-0x3076] ; 008A8 8A868ACF
    %if ($ - %%insn_008a8) > 4
        %error "LONG_008A8"
    %endif
    times 4 - ($ - %%insn_008a8) db 0
    db 0x32, 0xE4 ; 008AC 32E4 | xor ah,ah | encoding preserved
    %%insn_008ae:
    shl eax,byte 0x10 ; 008AE 66C1E010
    %if ($ - %%insn_008ae) > 4
        %error "LONG_008AE"
    %endif
    times 4 - ($ - %%insn_008ae) db 0
    %%insn_008b2:
    mov [bp-0x2b8c],eax ; 008B2 66898674D4
    %if ($ - %%insn_008b2) > 5
        %error "LONG_008B2"
    %endif
    times 5 - ($ - %%insn_008b2) db 0
    %%insn_008b7:
    mov ah,0xb ; 008B7 B40B
    %if ($ - %%insn_008b7) > 2
        %error "LONG_008B7"
    %endif
    times 2 - ($ - %%insn_008b7) db 0
    %%insn_008b9:
    mov si,0xd46e ; 008B9 BE6ED4
    %if ($ - %%insn_008b9) > 3
        %error "LONG_008B9"
    %endif
    times 3 - ($ - %%insn_008b9) db 0
    %%insn_008bc:
    call word far [cs:0x3688] ; 008BC 2EFF1E8836
    %if ($ - %%insn_008bc) > 5
        %error "LONG_008BC"
    %endif
    times 5 - ($ - %%insn_008bc) db 0
    %%insn_008c1:
    pop ds ; 008C1 1F
    %if ($ - %%insn_008c1) > 1
        %error "LONG_008C1"
    %endif
    times 1 - ($ - %%insn_008c1) db 0
    %%insn_008c2:
    popa ; 008C2 61
    %if ($ - %%insn_008c2) > 1
        %error "LONG_008C2"
    %endif
    times 1 - ($ - %%insn_008c2) db 0
    %%insn_008c3:
    pusha ; 008C3 60
    %if ($ - %%insn_008c3) > 1
        %error "LONG_008C3"
    %endif
    times 1 - ($ - %%insn_008c3) db 0
    %%insn_008c4:
    push ds ; 008C4 1E
    %if ($ - %%insn_008c4) > 1
        %error "LONG_008C4"
    %endif
    times 1 - ($ - %%insn_008c4) db 0
    %%insn_008c5:
    mov ds,word [bp-0x2aae] ; 008C5 8E9E52D5
    %if ($ - %%insn_008c5) > 4
        %error "LONG_008C5"
    %endif
    times 4 - ($ - %%insn_008c5) db 0
    %%insn_008c9:
    mov dword [bp-0x2b92],0x10000 ; 008C9 66C7866ED400000100
    %if ($ - %%insn_008c9) > 9
        %error "LONG_008C9"
    %endif
    times 9 - ($ - %%insn_008c9) db 0
    %%insn_008d2:
    mov word [bp-0x2b88],0x0 ; 008D2 C78678D40000
    %if ($ - %%insn_008d2) > 6
        %error "LONG_008D2"
    %endif
    times 6 - ($ - %%insn_008d2) db 0
    %%insn_008d8:
    mov ax,[bp-0x2605] ; 008D8 8B86FBD9
    %if ($ - %%insn_008d8) > 4
        %error "LONG_008D8"
    %endif
    times 4 - ($ - %%insn_008d8) db 0
    %%insn_008dc:
    mov word [bp-0x2b86],0x0 ; 008DC C7867AD40000
    %if ($ - %%insn_008dc) > 6
        %error "LONG_008DC"
    %endif
    times 6 - ($ - %%insn_008dc) db 0
    %%insn_008e2:
    mov [bp-0x2b84],ax ; 008E2 89867CD4
    %if ($ - %%insn_008e2) > 4
        %error "LONG_008E2"
    %endif
    times 4 - ($ - %%insn_008e2) db 0
    %%insn_008e6:
    mov ax,[bp-0x2ab0] ; 008E6 8B8650D5
    %if ($ - %%insn_008e6) > 4
        %error "LONG_008E6"
    %endif
    times 4 - ($ - %%insn_008e6) db 0
    %%insn_008ea:
    mov [bp-0x2b8e],ax ; 008EA 898672D4
    %if ($ - %%insn_008ea) > 4
        %error "LONG_008EA"
    %endif
    times 4 - ($ - %%insn_008ea) db 0
    %%insn_008ee:
    mov al,[bp-0x3076] ; 008EE 8A868ACF
    %if ($ - %%insn_008ee) > 4
        %error "LONG_008EE"
    %endif
    times 4 - ($ - %%insn_008ee) db 0
    %%insn_008f2:
    inc al ; 008F2 FEC0
    %if ($ - %%insn_008f2) > 2
        %error "LONG_008F2"
    %endif
    times 2 - ($ - %%insn_008f2) db 0
    db 0x32, 0xE4 ; 008F4 32E4 | xor ah,ah | encoding preserved
    %%insn_008f6:
    shl eax,byte 0x10 ; 008F6 66C1E010
    %if ($ - %%insn_008f6) > 4
        %error "LONG_008F6"
    %endif
    times 4 - ($ - %%insn_008f6) db 0
    %%insn_008fa:
    mov [bp-0x2b8c],eax ; 008FA 66898674D4
    %if ($ - %%insn_008fa) > 5
        %error "LONG_008FA"
    %endif
    times 5 - ($ - %%insn_008fa) db 0
    %%insn_008ff:
    mov ah,0xb ; 008FF B40B
    %if ($ - %%insn_008ff) > 2
        %error "LONG_008FF"
    %endif
    times 2 - ($ - %%insn_008ff) db 0
    %%insn_00901:
    mov si,0xd46e ; 00901 BE6ED4
    %if ($ - %%insn_00901) > 3
        %error "LONG_00901"
    %endif
    times 3 - ($ - %%insn_00901) db 0
    %%insn_00904:
    call word far [cs:0x3688] ; 00904 2EFF1E8836
    %if ($ - %%insn_00904) > 5
        %error "LONG_00904"
    %endif
    times 5 - ($ - %%insn_00904) db 0
    %%insn_00909:
    pop ds ; 00909 1F
    %if ($ - %%insn_00909) > 1
        %error "LONG_00909"
    %endif
    times 1 - ($ - %%insn_00909) db 0
    %%insn_0090a:
    popa ; 0090A 61
    %if ($ - %%insn_0090a) > 1
        %error "LONG_0090A"
    %endif
    times 1 - ($ - %%insn_0090a) db 0
    %%insn_0090b:
    mov es,word [bp-0x30ba] ; 0090B 8E8646CF
    %if ($ - %%insn_0090b) > 4
        %error "LONG_0090B"
    %endif
    times 4 - ($ - %%insn_0090b) db 0
    %%insn_0090f:
    mov ax,[bp-0x2b7c] ; 0090F 8B8684D4
    %if ($ - %%insn_0090f) > 4
        %error "LONG_0090F"
    %endif
    times 4 - ($ - %%insn_0090f) db 0
    %%insn_00913:
    push ax ; 00913 50
    %if ($ - %%insn_00913) > 1
        %error "LONG_00913"
    %endif
    times 1 - ($ - %%insn_00913) db 0
    %%insn_00914:
    mov ax,[bp-0x2b80] ; 00914 8B8680D4
    %if ($ - %%insn_00914) > 4
        %error "LONG_00914"
    %endif
    times 4 - ($ - %%insn_00914) db 0
    %%insn_00918:
    push ax ; 00918 50
    %if ($ - %%insn_00918) > 1
        %error "LONG_00918"
    %endif
    times 1 - ($ - %%insn_00918) db 0
    %%insn_00919:
    mov bx,[si] ; 00919 8B1C
    %if ($ - %%insn_00919) > 2
        %error "LONG_00919"
    %endif
    times 2 - ($ - %%insn_00919) db 0
    %%insn_0091b:
    mov dx,[si+0x2] ; 0091B 8B5402
    %if ($ - %%insn_0091b) > 3
        %error "LONG_0091B"
    %endif
    times 3 - ($ - %%insn_0091b) db 0
    %%insn_0091e:
    add si,0x4 ; 0091E 83C604
    %if ($ - %%insn_0091e) > 3
        %error "LONG_0091E"
    %endif
    times 3 - ($ - %%insn_0091e) db 0
    %%insn_00921:
    push dx ; 00921 52
    %if ($ - %%insn_00921) > 1
        %error "LONG_00921"
    %endif
    times 1 - ($ - %%insn_00921) db 0
    %%insn_00922:
    mov ax,[bp-0x2b7a] ; 00922 8B8686D4
    %if ($ - %%insn_00922) > 4
        %error "LONG_00922"
    %endif
    times 4 - ($ - %%insn_00922) db 0
    %%insn_00926:
    sub ax,[bp-0x2b7c] ; 00926 2B8684D4
    %if ($ - %%insn_00926) > 4
        %error "LONG_00926"
    %endif
    times 4 - ($ - %%insn_00926) db 0
    %%insn_0092a:
    shl ax,byte 0x2 ; 0092A C1E002
    %if ($ - %%insn_0092a) > 3
        %error "LONG_0092A"
    %endif
    times 3 - ($ - %%insn_0092a) db 0
    db 0x05, 0x50, 0x00 ; 0092D 055000 | add ax,0x50 | encoding preserved
    %%insn_00930:
    add ax,[bp-0x2636] ; 00930 0386CAD9
    %if ($ - %%insn_00930) > 4
        %error "LONG_00930"
    %endif
    times 4 - ($ - %%insn_00930) db 0
    %%insn_00934:
    mov cx,[bp-0x2996] ; 00934 8B8E6AD6
    %if ($ - %%insn_00934) > 4
        %error "LONG_00934"
    %endif
    times 4 - ($ - %%insn_00934) db 0
    %%insn_00938:
    mul cx ; 00938 F7E1
    %if ($ - %%insn_00938) > 2
        %error "LONG_00938"
    %endif
    times 2 - ($ - %%insn_00938) db 0
    db 0x8B, 0xF8 ; 0093A 8BF8 | mov di,ax | encoding preserved
    %%insn_0093c:
    mov ax,[bp-0x2b7e] ; 0093C 8B8682D4
    %if ($ - %%insn_0093c) > 4
        %error "LONG_0093C"
    %endif
    times 4 - ($ - %%insn_0093c) db 0
    %%insn_00940:
    sub ax,[bp-0x2b80] ; 00940 2B8680D4
    %if ($ - %%insn_00940) > 4
        %error "LONG_00940"
    %endif
    times 4 - ($ - %%insn_00940) db 0
    %%insn_00944:
    shl ax,byte 0x2 ; 00944 C1E002
    %if ($ - %%insn_00944) > 3
        %error "LONG_00944"
    %endif
    times 3 - ($ - %%insn_00944) db 0
    %%insn_00947:
    add ax,[bp-0x2638] ; 00947 0386C8D9
    %if ($ - %%insn_00947) > 4
        %error "LONG_00947"
    %endif
    times 4 - ($ - %%insn_00947) db 0
    db 0x03, 0xF8 ; 0094B 03F8 | add di,ax | encoding preserved
    db 0x8A, 0xE2 ; 0094D 8AE2 | mov ah,dl | encoding preserved
    %%insn_0094f:
    adc ah,0x0 ; 0094F 80D400
    %if ($ - %%insn_0094f) > 3
        %error "LONG_0094F"
    %endif
    times 3 - ($ - %%insn_0094f) db 0
    %%insn_00952:
    cmp ah,[bp-0x30b6] ; 00952 3AA64ACF
    %if ($ - %%insn_00952) > 4
        %error "LONG_00952"
    %endif
    times 4 - ($ - %%insn_00952) db 0
    %%insn_00956:
    jz 0xa02 ; 00956 0F84A800
    %if ($ - %%insn_00956) > 4
        %error "LONG_00956"
    %endif
    times 4 - ($ - %%insn_00956) db 0
    %%insn_0095a:
    push ax ; 0095A 50
    %if ($ - %%insn_0095a) > 1
        %error "LONG_0095A"
    %endif
    times 1 - ($ - %%insn_0095a) db 0
    %%insn_0095b:
    pusha ; 0095B 60
    %if ($ - %%insn_0095b) > 1
        %error "LONG_0095B"
    %endif
    times 1 - ($ - %%insn_0095b) db 0
    %%insn_0095c:
    push ds ; 0095C 1E
    %if ($ - %%insn_0095c) > 1
        %error "LONG_0095C"
    %endif
    times 1 - ($ - %%insn_0095c) db 0
    %%insn_0095d:
    mov ds,word [bp-0x2aae] ; 0095D 8E9E52D5
    %if ($ - %%insn_0095d) > 4
        %error "LONG_0095D"
    %endif
    times 4 - ($ - %%insn_0095d) db 0
    %%insn_00961:
    mov ax,[bp-0x30ba] ; 00961 8B8646CF
    %if ($ - %%insn_00961) > 4
        %error "LONG_00961"
    %endif
    times 4 - ($ - %%insn_00961) db 0
    %%insn_00965:
    mov dword [bp-0x2b92],0x10000 ; 00965 66C7866ED400000100
    %if ($ - %%insn_00965) > 9
        %error "LONG_00965"
    %endif
    times 9 - ($ - %%insn_00965) db 0
    %%insn_0096e:
    mov word [bp-0x2b8e],0x0 ; 0096E C78672D40000
    %if ($ - %%insn_0096e) > 6
        %error "LONG_0096E"
    %endif
    times 6 - ($ - %%insn_0096e) db 0
    %%insn_00974:
    mov word [bp-0x2b8c],0x0 ; 00974 C78674D40000
    %if ($ - %%insn_00974) > 6
        %error "LONG_00974"
    %endif
    times 6 - ($ - %%insn_00974) db 0
    %%insn_0097a:
    mov [bp-0x2b8a],ax ; 0097A 898676D4
    %if ($ - %%insn_0097a) > 4
        %error "LONG_0097A"
    %endif
    times 4 - ($ - %%insn_0097a) db 0
    %%insn_0097e:
    mov ax,[bp-0x2ab0] ; 0097E 8B8650D5
    %if ($ - %%insn_0097e) > 4
        %error "LONG_0097E"
    %endif
    times 4 - ($ - %%insn_0097e) db 0
    %%insn_00982:
    mov [bp-0x2b88],ax ; 00982 898678D4
    %if ($ - %%insn_00982) > 4
        %error "LONG_00982"
    %endif
    times 4 - ($ - %%insn_00982) db 0
    %%insn_00986:
    mov al,[bp-0x30b6] ; 00986 8A864ACF
    %if ($ - %%insn_00986) > 4
        %error "LONG_00986"
    %endif
    times 4 - ($ - %%insn_00986) db 0
    db 0x32, 0xE4 ; 0098A 32E4 | xor ah,ah | encoding preserved
    %%insn_0098c:
    shl eax,byte 0x10 ; 0098C 66C1E010
    %if ($ - %%insn_0098c) > 4
        %error "LONG_0098C"
    %endif
    times 4 - ($ - %%insn_0098c) db 0
    %%insn_00990:
    mov [bp-0x2b86],eax ; 00990 6689867AD4
    %if ($ - %%insn_00990) > 5
        %error "LONG_00990"
    %endif
    times 5 - ($ - %%insn_00990) db 0
    %%insn_00995:
    mov ah,0xb ; 00995 B40B
    %if ($ - %%insn_00995) > 2
        %error "LONG_00995"
    %endif
    times 2 - ($ - %%insn_00995) db 0
    %%insn_00997:
    mov si,0xd46e ; 00997 BE6ED4
    %if ($ - %%insn_00997) > 3
        %error "LONG_00997"
    %endif
    times 3 - ($ - %%insn_00997) db 0
    %%insn_0099a:
    call word far [cs:0x3688] ; 0099A 2EFF1E8836
    %if ($ - %%insn_0099a) > 5
        %error "LONG_0099A"
    %endif
    times 5 - ($ - %%insn_0099a) db 0
    %%insn_0099f:
    pop ds ; 0099F 1F
    %if ($ - %%insn_0099f) > 1
        %error "LONG_0099F"
    %endif
    times 1 - ($ - %%insn_0099f) db 0
    %%insn_009a0:
    popa ; 009A0 61
    %if ($ - %%insn_009a0) > 1
        %error "LONG_009A0"
    %endif
    times 1 - ($ - %%insn_009a0) db 0
    %%insn_009a1:
    pop ax ; 009A1 58
    %if ($ - %%insn_009a1) > 1
        %error "LONG_009A1"
    %endif
    times 1 - ($ - %%insn_009a1) db 0
    %%insn_009a2:
    mov [bp-0x30b6],ah ; 009A2 88A64ACF
    %if ($ - %%insn_009a2) > 4
        %error "LONG_009A2"
    %endif
    times 4 - ($ - %%insn_009a2) db 0
    %%insn_009a6:
    mov [bp-0x3076],ah ; 009A6 88A68ACF
    %if ($ - %%insn_009a6) > 4
        %error "LONG_009A6"
    %endif
    times 4 - ($ - %%insn_009a6) db 0
    %%insn_009aa:
    push word [bp-0x30ba] ; 009AA FFB646CF
    %if ($ - %%insn_009aa) > 4
        %error "LONG_009AA"
    %endif
    times 4 - ($ - %%insn_009aa) db 0
    %%insn_009ae:
    push word [bp-0x30b8] ; 009AE FFB648CF
    %if ($ - %%insn_009ae) > 4
        %error "LONG_009AE"
    %endif
    times 4 - ($ - %%insn_009ae) db 0
    %%insn_009b2:
    pop word [bp-0x30ba] ; 009B2 8F8646CF
    %if ($ - %%insn_009b2) > 4
        %error "LONG_009B2"
    %endif
    times 4 - ($ - %%insn_009b2) db 0
    %%insn_009b6:
    pop word [bp-0x30b8] ; 009B6 8F8648CF
    %if ($ - %%insn_009b6) > 4
        %error "LONG_009B6"
    %endif
    times 4 - ($ - %%insn_009b6) db 0
    %%insn_009ba:
    pusha ; 009BA 60
    %if ($ - %%insn_009ba) > 1
        %error "LONG_009BA"
    %endif
    times 1 - ($ - %%insn_009ba) db 0
    %%insn_009bb:
    push ds ; 009BB 1E
    %if ($ - %%insn_009bb) > 1
        %error "LONG_009BB"
    %endif
    times 1 - ($ - %%insn_009bb) db 0
    %%insn_009bc:
    mov ds,word [bp-0x2aae] ; 009BC 8E9E52D5
    %if ($ - %%insn_009bc) > 4
        %error "LONG_009BC"
    %endif
    times 4 - ($ - %%insn_009bc) db 0
    %%insn_009c0:
    mov dword [bp-0x2b92],0x10000 ; 009C0 66C7866ED400000100
    %if ($ - %%insn_009c0) > 9
        %error "LONG_009C0"
    %endif
    times 9 - ($ - %%insn_009c0) db 0
    %%insn_009c9:
    mov word [bp-0x2b88],0x0 ; 009C9 C78678D40000
    %if ($ - %%insn_009c9) > 6
        %error "LONG_009C9"
    %endif
    times 6 - ($ - %%insn_009c9) db 0
    %%insn_009cf:
    mov ax,[bp-0x30b8] ; 009CF 8B8648CF
    %if ($ - %%insn_009cf) > 4
        %error "LONG_009CF"
    %endif
    times 4 - ($ - %%insn_009cf) db 0
    %%insn_009d3:
    mov word [bp-0x2b86],0x0 ; 009D3 C7867AD40000
    %if ($ - %%insn_009d3) > 6
        %error "LONG_009D3"
    %endif
    times 6 - ($ - %%insn_009d3) db 0
    %%insn_009d9:
    mov [bp-0x2b84],ax ; 009D9 89867CD4
    %if ($ - %%insn_009d9) > 4
        %error "LONG_009D9"
    %endif
    times 4 - ($ - %%insn_009d9) db 0
    %%insn_009dd:
    mov ax,[bp-0x2ab0] ; 009DD 8B8650D5
    %if ($ - %%insn_009dd) > 4
        %error "LONG_009DD"
    %endif
    times 4 - ($ - %%insn_009dd) db 0
    %%insn_009e1:
    mov [bp-0x2b8e],ax ; 009E1 898672D4
    %if ($ - %%insn_009e1) > 4
        %error "LONG_009E1"
    %endif
    times 4 - ($ - %%insn_009e1) db 0
    %%insn_009e5:
    mov al,[bp-0x3076] ; 009E5 8A868ACF
    %if ($ - %%insn_009e5) > 4
        %error "LONG_009E5"
    %endif
    times 4 - ($ - %%insn_009e5) db 0
    %%insn_009e9:
    inc al ; 009E9 FEC0
    %if ($ - %%insn_009e9) > 2
        %error "LONG_009E9"
    %endif
    times 2 - ($ - %%insn_009e9) db 0
    db 0x32, 0xE4 ; 009EB 32E4 | xor ah,ah | encoding preserved
    %%insn_009ed:
    shl eax,byte 0x10 ; 009ED 66C1E010
    %if ($ - %%insn_009ed) > 4
        %error "LONG_009ED"
    %endif
    times 4 - ($ - %%insn_009ed) db 0
    %%insn_009f1:
    mov [bp-0x2b8c],eax ; 009F1 66898674D4
    %if ($ - %%insn_009f1) > 5
        %error "LONG_009F1"
    %endif
    times 5 - ($ - %%insn_009f1) db 0
    %%insn_009f6:
    mov ah,0xb ; 009F6 B40B
    %if ($ - %%insn_009f6) > 2
        %error "LONG_009F6"
    %endif
    times 2 - ($ - %%insn_009f6) db 0
    %%insn_009f8:
    mov si,0xd46e ; 009F8 BE6ED4
    %if ($ - %%insn_009f8) > 3
        %error "LONG_009F8"
    %endif
    times 3 - ($ - %%insn_009f8) db 0
    %%insn_009fb:
    call word far [cs:0x3688] ; 009FB 2EFF1E8836
    %if ($ - %%insn_009fb) > 5
        %error "LONG_009FB"
    %endif
    times 5 - ($ - %%insn_009fb) db 0
    %%insn_00a00:
    pop ds ; 00A00 1F
    %if ($ - %%insn_00a00) > 1
        %error "LONG_00A00"
    %endif
    times 1 - ($ - %%insn_00a00) db 0
    %%insn_00a01:
    popa ; 00A01 61
    %if ($ - %%insn_00a01) > 1
        %error "LONG_00A01"
    %endif
    times 1 - ($ - %%insn_00a01) db 0
    %%insn_00a02:
    mov es,word [bp-0x30ba] ; 00A02 8E8646CF
    %if ($ - %%insn_00a02) > 4
        %error "LONG_00A02"
    %endif
    times 4 - ($ - %%insn_00a02) db 0
    %%insn_00a06:
    pop dx ; 00A06 5A
    %if ($ - %%insn_00a06) > 1
        %error "LONG_00A06"
    %endif
    times 1 - ($ - %%insn_00a06) db 0
    db 0x81, 0xFB, 0xFF, 0xFF ; 00A07 81FBFFFF | cmp bx,0xffff | encoding preserved
    %%insn_00a0b:
    jz 0xb8d ; 00A0B 0F847E01
    %if ($ - %%insn_00a0b) > 4
        %error "LONG_00A0B"
    %endif
    times 4 - ($ - %%insn_00a0b) db 0
    %%insn_00a0f:
    mov ah,[bp-0x2607] ; 00A0F 8AA6F9D9
    %if ($ - %%insn_00a0f) > 4
        %error "LONG_00A0F"
    %endif
    times 4 - ($ - %%insn_00a0f) db 0
    db 0x8A, 0xC3 ; 00A13 8AC3 | mov al,bl | encoding preserved
    %%insn_00a15:
    test dx,0x8000 ; 00A15 F7C20080
    %if ($ - %%insn_00a15) > 4
        %error "LONG_00A15"
    %endif
    times 4 - ($ - %%insn_00a15) db 0
    %%insn_00a19:
    jnz short 0xa1d ; 00A19 7502
    %if ($ - %%insn_00a19) > 2
        %error "LONG_00A19"
    %endif
    times 2 - ($ - %%insn_00a19) db 0
    db 0x8A, 0xC7 ; 00A1B 8AC7 | mov al,bh | encoding preserved
    %%insn_00a1d:
    cmp al,0xff ; 00A1D 3CFF
    %if ($ - %%insn_00a1d) > 2
        %error "LONG_00A1D"
    %endif
    times 2 - ($ - %%insn_00a1d) db 0
    %%insn_00a1f:
    jz short 0xa26 ; 00A1F 7405
    %if ($ - %%insn_00a1f) > 2
        %error "LONG_00A1F"
    %endif
    times 2 - ($ - %%insn_00a1f) db 0
    db 0x0A, 0xC4 ; 00A21 0AC4 | or al,ah | encoding preserved
    %%insn_00a23:
    mov [es:di],al ; 00A23 268805
    %if ($ - %%insn_00a23) > 3
        %error "LONG_00A23"
    %endif
    times 3 - ($ - %%insn_00a23) db 0
    %%insn_00a26:
    shl dx,1 ; 00A26 D1E2
    %if ($ - %%insn_00a26) > 2
        %error "LONG_00A26"
    %endif
    times 2 - ($ - %%insn_00a26) db 0
    db 0x8A, 0xC3 ; 00A28 8AC3 | mov al,bl | encoding preserved
    %%insn_00a2a:
    test dx,0x8000 ; 00A2A F7C20080
    %if ($ - %%insn_00a2a) > 4
        %error "LONG_00A2A"
    %endif
    times 4 - ($ - %%insn_00a2a) db 0
    %%insn_00a2e:
    jnz short 0xa32 ; 00A2E 7502
    %if ($ - %%insn_00a2e) > 2
        %error "LONG_00A2E"
    %endif
    times 2 - ($ - %%insn_00a2e) db 0
    db 0x8A, 0xC7 ; 00A30 8AC7 | mov al,bh | encoding preserved
    %%insn_00a32:
    cmp al,0xff ; 00A32 3CFF
    %if ($ - %%insn_00a32) > 2
        %error "LONG_00A32"
    %endif
    times 2 - ($ - %%insn_00a32) db 0
    %%insn_00a34:
    jz short 0xa3c ; 00A34 7406
    %if ($ - %%insn_00a34) > 2
        %error "LONG_00A34"
    %endif
    times 2 - ($ - %%insn_00a34) db 0
    db 0x0A, 0xC4 ; 00A36 0AC4 | or al,ah | encoding preserved
    %%insn_00a38:
    mov [es:di+0x1],al ; 00A38 26884501
    %if ($ - %%insn_00a38) > 4
        %error "LONG_00A38"
    %endif
    times 4 - ($ - %%insn_00a38) db 0
    %%insn_00a3c:
    shl dx,1 ; 00A3C D1E2
    %if ($ - %%insn_00a3c) > 2
        %error "LONG_00A3C"
    %endif
    times 2 - ($ - %%insn_00a3c) db 0
    db 0x8A, 0xC3 ; 00A3E 8AC3 | mov al,bl | encoding preserved
    %%insn_00a40:
    test dx,0x8000 ; 00A40 F7C20080
    %if ($ - %%insn_00a40) > 4
        %error "LONG_00A40"
    %endif
    times 4 - ($ - %%insn_00a40) db 0
    %%insn_00a44:
    jnz short 0xa48 ; 00A44 7502
    %if ($ - %%insn_00a44) > 2
        %error "LONG_00A44"
    %endif
    times 2 - ($ - %%insn_00a44) db 0
    db 0x8A, 0xC7 ; 00A46 8AC7 | mov al,bh | encoding preserved
    %%insn_00a48:
    cmp al,0xff ; 00A48 3CFF
    %if ($ - %%insn_00a48) > 2
        %error "LONG_00A48"
    %endif
    times 2 - ($ - %%insn_00a48) db 0
    %%insn_00a4a:
    jz short 0xa52 ; 00A4A 7406
    %if ($ - %%insn_00a4a) > 2
        %error "LONG_00A4A"
    %endif
    times 2 - ($ - %%insn_00a4a) db 0
    db 0x0A, 0xC4 ; 00A4C 0AC4 | or al,ah | encoding preserved
    %%insn_00a4e:
    mov [es:di+0x2],al ; 00A4E 26884502
    %if ($ - %%insn_00a4e) > 4
        %error "LONG_00A4E"
    %endif
    times 4 - ($ - %%insn_00a4e) db 0
    %%insn_00a52:
    shl dx,1 ; 00A52 D1E2
    %if ($ - %%insn_00a52) > 2
        %error "LONG_00A52"
    %endif
    times 2 - ($ - %%insn_00a52) db 0
    db 0x8A, 0xC3 ; 00A54 8AC3 | mov al,bl | encoding preserved
    %%insn_00a56:
    test dx,0x8000 ; 00A56 F7C20080
    %if ($ - %%insn_00a56) > 4
        %error "LONG_00A56"
    %endif
    times 4 - ($ - %%insn_00a56) db 0
    %%insn_00a5a:
    jnz short 0xa5e ; 00A5A 7502
    %if ($ - %%insn_00a5a) > 2
        %error "LONG_00A5A"
    %endif
    times 2 - ($ - %%insn_00a5a) db 0
    db 0x8A, 0xC7 ; 00A5C 8AC7 | mov al,bh | encoding preserved
    %%insn_00a5e:
    cmp al,0xff ; 00A5E 3CFF
    %if ($ - %%insn_00a5e) > 2
        %error "LONG_00A5E"
    %endif
    times 2 - ($ - %%insn_00a5e) db 0
    %%insn_00a60:
    jz short 0xa68 ; 00A60 7406
    %if ($ - %%insn_00a60) > 2
        %error "LONG_00A60"
    %endif
    times 2 - ($ - %%insn_00a60) db 0
    db 0x0A, 0xC4 ; 00A62 0AC4 | or al,ah | encoding preserved
    %%insn_00a64:
    mov [es:di+0x3],al ; 00A64 26884503
    %if ($ - %%insn_00a64) > 4
        %error "LONG_00A64"
    %endif
    times 4 - ($ - %%insn_00a64) db 0
    %%insn_00a68:
    shl dx,1 ; 00A68 D1E2
    %if ($ - %%insn_00a68) > 2
        %error "LONG_00A68"
    %endif
    times 2 - ($ - %%insn_00a68) db 0
    %%insn_00a6a:
    add di,[bp-0x2996] ; 00A6A 03BE6AD6
    %if ($ - %%insn_00a6a) > 4
        %error "LONG_00A6A"
    %endif
    times 4 - ($ - %%insn_00a6a) db 0
    %%insn_00a6e:
    jnc short 0xa74 ; 00A6E 7304
    %if ($ - %%insn_00a6e) > 2
        %error "LONG_00A6E"
    %endif
    times 2 - ($ - %%insn_00a6e) db 0
    %%insn_00a70:
    mov es,word [bp-0x30b8] ; 00A70 8E8648CF
    %if ($ - %%insn_00a70) > 4
        %error "LONG_00A70"
    %endif
    times 4 - ($ - %%insn_00a70) db 0
    db 0x8A, 0xC3 ; 00A74 8AC3 | mov al,bl | encoding preserved
    %%insn_00a76:
    test dx,0x8000 ; 00A76 F7C20080
    %if ($ - %%insn_00a76) > 4
        %error "LONG_00A76"
    %endif
    times 4 - ($ - %%insn_00a76) db 0
    %%insn_00a7a:
    jnz short 0xa7e ; 00A7A 7502
    %if ($ - %%insn_00a7a) > 2
        %error "LONG_00A7A"
    %endif
    times 2 - ($ - %%insn_00a7a) db 0
    db 0x8A, 0xC7 ; 00A7C 8AC7 | mov al,bh | encoding preserved
    %%insn_00a7e:
    cmp al,0xff ; 00A7E 3CFF
    %if ($ - %%insn_00a7e) > 2
        %error "LONG_00A7E"
    %endif
    times 2 - ($ - %%insn_00a7e) db 0
    %%insn_00a80:
    jz short 0xa87 ; 00A80 7405
    %if ($ - %%insn_00a80) > 2
        %error "LONG_00A80"
    %endif
    times 2 - ($ - %%insn_00a80) db 0
    db 0x0A, 0xC4 ; 00A82 0AC4 | or al,ah | encoding preserved
    %%insn_00a84:
    mov [es:di],al ; 00A84 268805
    %if ($ - %%insn_00a84) > 3
        %error "LONG_00A84"
    %endif
    times 3 - ($ - %%insn_00a84) db 0
    %%insn_00a87:
    shl dx,1 ; 00A87 D1E2
    %if ($ - %%insn_00a87) > 2
        %error "LONG_00A87"
    %endif
    times 2 - ($ - %%insn_00a87) db 0
    db 0x8A, 0xC3 ; 00A89 8AC3 | mov al,bl | encoding preserved
    %%insn_00a8b:
    test dx,0x8000 ; 00A8B F7C20080
    %if ($ - %%insn_00a8b) > 4
        %error "LONG_00A8B"
    %endif
    times 4 - ($ - %%insn_00a8b) db 0
    %%insn_00a8f:
    jnz short 0xa93 ; 00A8F 7502
    %if ($ - %%insn_00a8f) > 2
        %error "LONG_00A8F"
    %endif
    times 2 - ($ - %%insn_00a8f) db 0
    db 0x8A, 0xC7 ; 00A91 8AC7 | mov al,bh | encoding preserved
    %%insn_00a93:
    cmp al,0xff ; 00A93 3CFF
    %if ($ - %%insn_00a93) > 2
        %error "LONG_00A93"
    %endif
    times 2 - ($ - %%insn_00a93) db 0
    %%insn_00a95:
    jz short 0xa9d ; 00A95 7406
    %if ($ - %%insn_00a95) > 2
        %error "LONG_00A95"
    %endif
    times 2 - ($ - %%insn_00a95) db 0
    db 0x0A, 0xC4 ; 00A97 0AC4 | or al,ah | encoding preserved
    %%insn_00a99:
    mov [es:di+0x1],al ; 00A99 26884501
    %if ($ - %%insn_00a99) > 4
        %error "LONG_00A99"
    %endif
    times 4 - ($ - %%insn_00a99) db 0
    %%insn_00a9d:
    shl dx,1 ; 00A9D D1E2
    %if ($ - %%insn_00a9d) > 2
        %error "LONG_00A9D"
    %endif
    times 2 - ($ - %%insn_00a9d) db 0
    db 0x8A, 0xC3 ; 00A9F 8AC3 | mov al,bl | encoding preserved
    %%insn_00aa1:
    test dx,0x8000 ; 00AA1 F7C20080
    %if ($ - %%insn_00aa1) > 4
        %error "LONG_00AA1"
    %endif
    times 4 - ($ - %%insn_00aa1) db 0
    %%insn_00aa5:
    jnz short 0xaa9 ; 00AA5 7502
    %if ($ - %%insn_00aa5) > 2
        %error "LONG_00AA5"
    %endif
    times 2 - ($ - %%insn_00aa5) db 0
    db 0x8A, 0xC7 ; 00AA7 8AC7 | mov al,bh | encoding preserved
    %%insn_00aa9:
    cmp al,0xff ; 00AA9 3CFF
    %if ($ - %%insn_00aa9) > 2
        %error "LONG_00AA9"
    %endif
    times 2 - ($ - %%insn_00aa9) db 0
    %%insn_00aab:
    jz short 0xab3 ; 00AAB 7406
    %if ($ - %%insn_00aab) > 2
        %error "LONG_00AAB"
    %endif
    times 2 - ($ - %%insn_00aab) db 0
    db 0x0A, 0xC4 ; 00AAD 0AC4 | or al,ah | encoding preserved
    %%insn_00aaf:
    mov [es:di+0x2],al ; 00AAF 26884502
    %if ($ - %%insn_00aaf) > 4
        %error "LONG_00AAF"
    %endif
    times 4 - ($ - %%insn_00aaf) db 0
    %%insn_00ab3:
    shl dx,1 ; 00AB3 D1E2
    %if ($ - %%insn_00ab3) > 2
        %error "LONG_00AB3"
    %endif
    times 2 - ($ - %%insn_00ab3) db 0
    db 0x8A, 0xC3 ; 00AB5 8AC3 | mov al,bl | encoding preserved
    %%insn_00ab7:
    test dx,0x8000 ; 00AB7 F7C20080
    %if ($ - %%insn_00ab7) > 4
        %error "LONG_00AB7"
    %endif
    times 4 - ($ - %%insn_00ab7) db 0
    %%insn_00abb:
    jnz short 0xabf ; 00ABB 7502
    %if ($ - %%insn_00abb) > 2
        %error "LONG_00ABB"
    %endif
    times 2 - ($ - %%insn_00abb) db 0
    db 0x8A, 0xC7 ; 00ABD 8AC7 | mov al,bh | encoding preserved
    %%insn_00abf:
    cmp al,0xff ; 00ABF 3CFF
    %if ($ - %%insn_00abf) > 2
        %error "LONG_00ABF"
    %endif
    times 2 - ($ - %%insn_00abf) db 0
    %%insn_00ac1:
    jz short 0xac9 ; 00AC1 7406
    %if ($ - %%insn_00ac1) > 2
        %error "LONG_00AC1"
    %endif
    times 2 - ($ - %%insn_00ac1) db 0
    db 0x0A, 0xC4 ; 00AC3 0AC4 | or al,ah | encoding preserved
    %%insn_00ac5:
    mov [es:di+0x3],al ; 00AC5 26884503
    %if ($ - %%insn_00ac5) > 4
        %error "LONG_00AC5"
    %endif
    times 4 - ($ - %%insn_00ac5) db 0
    %%insn_00ac9:
    shl dx,1 ; 00AC9 D1E2
    %if ($ - %%insn_00ac9) > 2
        %error "LONG_00AC9"
    %endif
    times 2 - ($ - %%insn_00ac9) db 0
    %%insn_00acb:
    add di,[bp-0x2996] ; 00ACB 03BE6AD6
    %if ($ - %%insn_00acb) > 4
        %error "LONG_00ACB"
    %endif
    times 4 - ($ - %%insn_00acb) db 0
    %%insn_00acf:
    jnc short 0xad5 ; 00ACF 7304
    %if ($ - %%insn_00acf) > 2
        %error "LONG_00ACF"
    %endif
    times 2 - ($ - %%insn_00acf) db 0
    %%insn_00ad1:
    mov es,word [bp-0x30b8] ; 00AD1 8E8648CF
    %if ($ - %%insn_00ad1) > 4
        %error "LONG_00AD1"
    %endif
    times 4 - ($ - %%insn_00ad1) db 0
    db 0x8A, 0xC3 ; 00AD5 8AC3 | mov al,bl | encoding preserved
    %%insn_00ad7:
    test dx,0x8000 ; 00AD7 F7C20080
    %if ($ - %%insn_00ad7) > 4
        %error "LONG_00AD7"
    %endif
    times 4 - ($ - %%insn_00ad7) db 0
    %%insn_00adb:
    jnz short 0xadf ; 00ADB 7502
    %if ($ - %%insn_00adb) > 2
        %error "LONG_00ADB"
    %endif
    times 2 - ($ - %%insn_00adb) db 0
    db 0x8A, 0xC7 ; 00ADD 8AC7 | mov al,bh | encoding preserved
    %%insn_00adf:
    cmp al,0xff ; 00ADF 3CFF
    %if ($ - %%insn_00adf) > 2
        %error "LONG_00ADF"
    %endif
    times 2 - ($ - %%insn_00adf) db 0
    %%insn_00ae1:
    jz short 0xae8 ; 00AE1 7405
    %if ($ - %%insn_00ae1) > 2
        %error "LONG_00AE1"
    %endif
    times 2 - ($ - %%insn_00ae1) db 0
    db 0x0A, 0xC4 ; 00AE3 0AC4 | or al,ah | encoding preserved
    %%insn_00ae5:
    mov [es:di],al ; 00AE5 268805
    %if ($ - %%insn_00ae5) > 3
        %error "LONG_00AE5"
    %endif
    times 3 - ($ - %%insn_00ae5) db 0
    %%insn_00ae8:
    shl dx,1 ; 00AE8 D1E2
    %if ($ - %%insn_00ae8) > 2
        %error "LONG_00AE8"
    %endif
    times 2 - ($ - %%insn_00ae8) db 0
    db 0x8A, 0xC3 ; 00AEA 8AC3 | mov al,bl | encoding preserved
    %%insn_00aec:
    test dx,0x8000 ; 00AEC F7C20080
    %if ($ - %%insn_00aec) > 4
        %error "LONG_00AEC"
    %endif
    times 4 - ($ - %%insn_00aec) db 0
    %%insn_00af0:
    jnz short 0xaf4 ; 00AF0 7502
    %if ($ - %%insn_00af0) > 2
        %error "LONG_00AF0"
    %endif
    times 2 - ($ - %%insn_00af0) db 0
    db 0x8A, 0xC7 ; 00AF2 8AC7 | mov al,bh | encoding preserved
    %%insn_00af4:
    cmp al,0xff ; 00AF4 3CFF
    %if ($ - %%insn_00af4) > 2
        %error "LONG_00AF4"
    %endif
    times 2 - ($ - %%insn_00af4) db 0
    %%insn_00af6:
    jz short 0xafe ; 00AF6 7406
    %if ($ - %%insn_00af6) > 2
        %error "LONG_00AF6"
    %endif
    times 2 - ($ - %%insn_00af6) db 0
    db 0x0A, 0xC4 ; 00AF8 0AC4 | or al,ah | encoding preserved
    %%insn_00afa:
    mov [es:di+0x1],al ; 00AFA 26884501
    %if ($ - %%insn_00afa) > 4
        %error "LONG_00AFA"
    %endif
    times 4 - ($ - %%insn_00afa) db 0
    %%insn_00afe:
    shl dx,1 ; 00AFE D1E2
    %if ($ - %%insn_00afe) > 2
        %error "LONG_00AFE"
    %endif
    times 2 - ($ - %%insn_00afe) db 0
    db 0x8A, 0xC3 ; 00B00 8AC3 | mov al,bl | encoding preserved
    %%insn_00b02:
    test dx,0x8000 ; 00B02 F7C20080
    %if ($ - %%insn_00b02) > 4
        %error "LONG_00B02"
    %endif
    times 4 - ($ - %%insn_00b02) db 0
    %%insn_00b06:
    jnz short 0xb0a ; 00B06 7502
    %if ($ - %%insn_00b06) > 2
        %error "LONG_00B06"
    %endif
    times 2 - ($ - %%insn_00b06) db 0
    db 0x8A, 0xC7 ; 00B08 8AC7 | mov al,bh | encoding preserved
    %%insn_00b0a:
    cmp al,0xff ; 00B0A 3CFF
    %if ($ - %%insn_00b0a) > 2
        %error "LONG_00B0A"
    %endif
    times 2 - ($ - %%insn_00b0a) db 0
    %%insn_00b0c:
    jz short 0xb14 ; 00B0C 7406
    %if ($ - %%insn_00b0c) > 2
        %error "LONG_00B0C"
    %endif
    times 2 - ($ - %%insn_00b0c) db 0
    db 0x0A, 0xC4 ; 00B0E 0AC4 | or al,ah | encoding preserved
    %%insn_00b10:
    mov [es:di+0x2],al ; 00B10 26884502
    %if ($ - %%insn_00b10) > 4
        %error "LONG_00B10"
    %endif
    times 4 - ($ - %%insn_00b10) db 0
    %%insn_00b14:
    shl dx,1 ; 00B14 D1E2
    %if ($ - %%insn_00b14) > 2
        %error "LONG_00B14"
    %endif
    times 2 - ($ - %%insn_00b14) db 0
    db 0x8A, 0xC3 ; 00B16 8AC3 | mov al,bl | encoding preserved
    %%insn_00b18:
    test dx,0x8000 ; 00B18 F7C20080
    %if ($ - %%insn_00b18) > 4
        %error "LONG_00B18"
    %endif
    times 4 - ($ - %%insn_00b18) db 0
    %%insn_00b1c:
    jnz short 0xb20 ; 00B1C 7502
    %if ($ - %%insn_00b1c) > 2
        %error "LONG_00B1C"
    %endif
    times 2 - ($ - %%insn_00b1c) db 0
    db 0x8A, 0xC7 ; 00B1E 8AC7 | mov al,bh | encoding preserved
    %%insn_00b20:
    cmp al,0xff ; 00B20 3CFF
    %if ($ - %%insn_00b20) > 2
        %error "LONG_00B20"
    %endif
    times 2 - ($ - %%insn_00b20) db 0
    %%insn_00b22:
    jz short 0xb2a ; 00B22 7406
    %if ($ - %%insn_00b22) > 2
        %error "LONG_00B22"
    %endif
    times 2 - ($ - %%insn_00b22) db 0
    db 0x0A, 0xC4 ; 00B24 0AC4 | or al,ah | encoding preserved
    %%insn_00b26:
    mov [es:di+0x3],al ; 00B26 26884503
    %if ($ - %%insn_00b26) > 4
        %error "LONG_00B26"
    %endif
    times 4 - ($ - %%insn_00b26) db 0
    %%insn_00b2a:
    shl dx,1 ; 00B2A D1E2
    %if ($ - %%insn_00b2a) > 2
        %error "LONG_00B2A"
    %endif
    times 2 - ($ - %%insn_00b2a) db 0
    %%insn_00b2c:
    add di,[bp-0x2996] ; 00B2C 03BE6AD6
    %if ($ - %%insn_00b2c) > 4
        %error "LONG_00B2C"
    %endif
    times 4 - ($ - %%insn_00b2c) db 0
    %%insn_00b30:
    jnc short 0xb36 ; 00B30 7304
    %if ($ - %%insn_00b30) > 2
        %error "LONG_00B30"
    %endif
    times 2 - ($ - %%insn_00b30) db 0
    %%insn_00b32:
    mov es,word [bp-0x30b8] ; 00B32 8E8648CF
    %if ($ - %%insn_00b32) > 4
        %error "LONG_00B32"
    %endif
    times 4 - ($ - %%insn_00b32) db 0
    db 0x8A, 0xC3 ; 00B36 8AC3 | mov al,bl | encoding preserved
    %%insn_00b38:
    test dx,0x8000 ; 00B38 F7C20080
    %if ($ - %%insn_00b38) > 4
        %error "LONG_00B38"
    %endif
    times 4 - ($ - %%insn_00b38) db 0
    %%insn_00b3c:
    jnz short 0xb40 ; 00B3C 7502
    %if ($ - %%insn_00b3c) > 2
        %error "LONG_00B3C"
    %endif
    times 2 - ($ - %%insn_00b3c) db 0
    db 0x8A, 0xC7 ; 00B3E 8AC7 | mov al,bh | encoding preserved
    %%insn_00b40:
    cmp al,0xff ; 00B40 3CFF
    %if ($ - %%insn_00b40) > 2
        %error "LONG_00B40"
    %endif
    times 2 - ($ - %%insn_00b40) db 0
    %%insn_00b42:
    jz short 0xb49 ; 00B42 7405
    %if ($ - %%insn_00b42) > 2
        %error "LONG_00B42"
    %endif
    times 2 - ($ - %%insn_00b42) db 0
    db 0x0A, 0xC4 ; 00B44 0AC4 | or al,ah | encoding preserved
    %%insn_00b46:
    mov [es:di],al ; 00B46 268805
    %if ($ - %%insn_00b46) > 3
        %error "LONG_00B46"
    %endif
    times 3 - ($ - %%insn_00b46) db 0
    %%insn_00b49:
    shl dx,1 ; 00B49 D1E2
    %if ($ - %%insn_00b49) > 2
        %error "LONG_00B49"
    %endif
    times 2 - ($ - %%insn_00b49) db 0
    db 0x8A, 0xC3 ; 00B4B 8AC3 | mov al,bl | encoding preserved
    %%insn_00b4d:
    test dx,0x8000 ; 00B4D F7C20080
    %if ($ - %%insn_00b4d) > 4
        %error "LONG_00B4D"
    %endif
    times 4 - ($ - %%insn_00b4d) db 0
    %%insn_00b51:
    jnz short 0xb55 ; 00B51 7502
    %if ($ - %%insn_00b51) > 2
        %error "LONG_00B51"
    %endif
    times 2 - ($ - %%insn_00b51) db 0
    db 0x8A, 0xC7 ; 00B53 8AC7 | mov al,bh | encoding preserved
    %%insn_00b55:
    cmp al,0xff ; 00B55 3CFF
    %if ($ - %%insn_00b55) > 2
        %error "LONG_00B55"
    %endif
    times 2 - ($ - %%insn_00b55) db 0
    %%insn_00b57:
    jz short 0xb5f ; 00B57 7406
    %if ($ - %%insn_00b57) > 2
        %error "LONG_00B57"
    %endif
    times 2 - ($ - %%insn_00b57) db 0
    db 0x0A, 0xC4 ; 00B59 0AC4 | or al,ah | encoding preserved
    %%insn_00b5b:
    mov [es:di+0x1],al ; 00B5B 26884501
    %if ($ - %%insn_00b5b) > 4
        %error "LONG_00B5B"
    %endif
    times 4 - ($ - %%insn_00b5b) db 0
    %%insn_00b5f:
    shl dx,1 ; 00B5F D1E2
    %if ($ - %%insn_00b5f) > 2
        %error "LONG_00B5F"
    %endif
    times 2 - ($ - %%insn_00b5f) db 0
    db 0x8A, 0xC3 ; 00B61 8AC3 | mov al,bl | encoding preserved
    %%insn_00b63:
    test dx,0x8000 ; 00B63 F7C20080
    %if ($ - %%insn_00b63) > 4
        %error "LONG_00B63"
    %endif
    times 4 - ($ - %%insn_00b63) db 0
    %%insn_00b67:
    jnz short 0xb6b ; 00B67 7502
    %if ($ - %%insn_00b67) > 2
        %error "LONG_00B67"
    %endif
    times 2 - ($ - %%insn_00b67) db 0
    db 0x8A, 0xC7 ; 00B69 8AC7 | mov al,bh | encoding preserved
    %%insn_00b6b:
    cmp al,0xff ; 00B6B 3CFF
    %if ($ - %%insn_00b6b) > 2
        %error "LONG_00B6B"
    %endif
    times 2 - ($ - %%insn_00b6b) db 0
    %%insn_00b6d:
    jz short 0xb75 ; 00B6D 7406
    %if ($ - %%insn_00b6d) > 2
        %error "LONG_00B6D"
    %endif
    times 2 - ($ - %%insn_00b6d) db 0
    db 0x0A, 0xC4 ; 00B6F 0AC4 | or al,ah | encoding preserved
    %%insn_00b71:
    mov [es:di+0x2],al ; 00B71 26884502
    %if ($ - %%insn_00b71) > 4
        %error "LONG_00B71"
    %endif
    times 4 - ($ - %%insn_00b71) db 0
    %%insn_00b75:
    shl dx,1 ; 00B75 D1E2
    %if ($ - %%insn_00b75) > 2
        %error "LONG_00B75"
    %endif
    times 2 - ($ - %%insn_00b75) db 0
    db 0x8A, 0xC3 ; 00B77 8AC3 | mov al,bl | encoding preserved
    %%insn_00b79:
    test dx,0x8000 ; 00B79 F7C20080
    %if ($ - %%insn_00b79) > 4
        %error "LONG_00B79"
    %endif
    times 4 - ($ - %%insn_00b79) db 0
    %%insn_00b7d:
    jnz short 0xb81 ; 00B7D 7502
    %if ($ - %%insn_00b7d) > 2
        %error "LONG_00B7D"
    %endif
    times 2 - ($ - %%insn_00b7d) db 0
    db 0x8A, 0xC7 ; 00B7F 8AC7 | mov al,bh | encoding preserved
    %%insn_00b81:
    cmp al,0xff ; 00B81 3CFF
    %if ($ - %%insn_00b81) > 2
        %error "LONG_00B81"
    %endif
    times 2 - ($ - %%insn_00b81) db 0
    %%insn_00b83:
    jz short 0xb8b ; 00B83 7406
    %if ($ - %%insn_00b83) > 2
        %error "LONG_00B83"
    %endif
    times 2 - ($ - %%insn_00b83) db 0
    db 0x0A, 0xC4 ; 00B85 0AC4 | or al,ah | encoding preserved
    %%insn_00b87:
    mov [es:di+0x3],al ; 00B87 26884503
    %if ($ - %%insn_00b87) > 4
        %error "LONG_00B87"
    %endif
    times 4 - ($ - %%insn_00b87) db 0
    %%insn_00b8b:
    shl dx,1 ; 00B8B D1E2
    %if ($ - %%insn_00b8b) > 2
        %error "LONG_00B8B"
    %endif
    times 2 - ($ - %%insn_00b8b) db 0
    %%insn_00b8d:
    dec word [bp-0x2b80] ; 00B8D FF8E80D4
    %if ($ - %%insn_00b8d) > 4
        %error "LONG_00B8D"
    %endif
    times 4 - ($ - %%insn_00b8d) db 0
    %%insn_00b91:
    jnz 0x919 ; 00B91 0F8584FD
    %if ($ - %%insn_00b91) > 4
        %error "LONG_00B91"
    %endif
    times 4 - ($ - %%insn_00b91) db 0
    %%insn_00b95:
    pop ax ; 00B95 58
    %if ($ - %%insn_00b95) > 1
        %error "LONG_00B95"
    %endif
    times 1 - ($ - %%insn_00b95) db 0
    %%insn_00b96:
    mov [bp-0x2b80],ax ; 00B96 898680D4
    %if ($ - %%insn_00b96) > 4
        %error "LONG_00B96"
    %endif
    times 4 - ($ - %%insn_00b96) db 0
    %%insn_00b9a:
    dec word [bp-0x2b7c] ; 00B9A FF8E84D4
    %if ($ - %%insn_00b9a) > 4
        %error "LONG_00B9A"
    %endif
    times 4 - ($ - %%insn_00b9a) db 0
    %%insn_00b9e:
    jnz 0x914 ; 00B9E 0F8572FD
    %if ($ - %%insn_00b9e) > 4
        %error "LONG_00B9E"
    %endif
    times 4 - ($ - %%insn_00b9e) db 0
    %%insn_00ba2:
    pop ax ; 00BA2 58
    %if ($ - %%insn_00ba2) > 1
        %error "LONG_00BA2"
    %endif
    times 1 - ($ - %%insn_00ba2) db 0
    %%insn_00ba3:
    mov [bp-0x2b7c],ax ; 00BA3 898684D4
    %if ($ - %%insn_00ba3) > 4
        %error "LONG_00BA3"
    %endif
    times 4 - ($ - %%insn_00ba3) db 0
    %%insn_00ba7:
    pusha ; 00BA7 60
    %if ($ - %%insn_00ba7) > 1
        %error "LONG_00BA7"
    %endif
    times 1 - ($ - %%insn_00ba7) db 0
    %%insn_00ba8:
    push ds ; 00BA8 1E
    %if ($ - %%insn_00ba8) > 1
        %error "LONG_00BA8"
    %endif
    times 1 - ($ - %%insn_00ba8) db 0
    %%insn_00ba9:
    mov ds,word [bp-0x2aae] ; 00BA9 8E9E52D5
    %if ($ - %%insn_00ba9) > 4
        %error "LONG_00BA9"
    %endif
    times 4 - ($ - %%insn_00ba9) db 0
    %%insn_00bad:
    mov ax,[bp-0x30ba] ; 00BAD 8B8646CF
    %if ($ - %%insn_00bad) > 4
        %error "LONG_00BAD"
    %endif
    times 4 - ($ - %%insn_00bad) db 0
    %%insn_00bb1:
    mov dword [bp-0x2b92],0x10000 ; 00BB1 66C7866ED400000100
    %if ($ - %%insn_00bb1) > 9
        %error "LONG_00BB1"
    %endif
    times 9 - ($ - %%insn_00bb1) db 0
    %%insn_00bba:
    mov word [bp-0x2b8e],0x0 ; 00BBA C78672D40000
    %if ($ - %%insn_00bba) > 6
        %error "LONG_00BBA"
    %endif
    times 6 - ($ - %%insn_00bba) db 0
    %%insn_00bc0:
    mov word [bp-0x2b8c],0x0 ; 00BC0 C78674D40000
    %if ($ - %%insn_00bc0) > 6
        %error "LONG_00BC0"
    %endif
    times 6 - ($ - %%insn_00bc0) db 0
    %%insn_00bc6:
    mov [bp-0x2b8a],ax ; 00BC6 898676D4
    %if ($ - %%insn_00bc6) > 4
        %error "LONG_00BC6"
    %endif
    times 4 - ($ - %%insn_00bc6) db 0
    %%insn_00bca:
    mov ax,[bp-0x2ab0] ; 00BCA 8B8650D5
    %if ($ - %%insn_00bca) > 4
        %error "LONG_00BCA"
    %endif
    times 4 - ($ - %%insn_00bca) db 0
    %%insn_00bce:
    mov [bp-0x2b88],ax ; 00BCE 898678D4
    %if ($ - %%insn_00bce) > 4
        %error "LONG_00BCE"
    %endif
    times 4 - ($ - %%insn_00bce) db 0
    %%insn_00bd2:
    mov al,[bp-0x30b6] ; 00BD2 8A864ACF
    %if ($ - %%insn_00bd2) > 4
        %error "LONG_00BD2"
    %endif
    times 4 - ($ - %%insn_00bd2) db 0
    db 0x32, 0xE4 ; 00BD6 32E4 | xor ah,ah | encoding preserved
    %%insn_00bd8:
    shl eax,byte 0x10 ; 00BD8 66C1E010
    %if ($ - %%insn_00bd8) > 4
        %error "LONG_00BD8"
    %endif
    times 4 - ($ - %%insn_00bd8) db 0
    %%insn_00bdc:
    mov [bp-0x2b86],eax ; 00BDC 6689867AD4
    %if ($ - %%insn_00bdc) > 5
        %error "LONG_00BDC"
    %endif
    times 5 - ($ - %%insn_00bdc) db 0
    %%insn_00be1:
    mov ah,0xb ; 00BE1 B40B
    %if ($ - %%insn_00be1) > 2
        %error "LONG_00BE1"
    %endif
    times 2 - ($ - %%insn_00be1) db 0
    %%insn_00be3:
    mov si,0xd46e ; 00BE3 BE6ED4
    %if ($ - %%insn_00be3) > 3
        %error "LONG_00BE3"
    %endif
    times 3 - ($ - %%insn_00be3) db 0
    %%insn_00be6:
    call word far [cs:0x3688] ; 00BE6 2EFF1E8836
    %if ($ - %%insn_00be6) > 5
        %error "LONG_00BE6"
    %endif
    times 5 - ($ - %%insn_00be6) db 0
    %%insn_00beb:
    pop ds ; 00BEB 1F
    %if ($ - %%insn_00beb) > 1
        %error "LONG_00BEB"
    %endif
    times 1 - ($ - %%insn_00beb) db 0
    %%insn_00bec:
    popa ; 00BEC 61
    %if ($ - %%insn_00bec) > 1
        %error "LONG_00BEC"
    %endif
    times 1 - ($ - %%insn_00bec) db 0
    %%insn_00bed:
    pusha ; 00BED 60
    %if ($ - %%insn_00bed) > 1
        %error "LONG_00BED"
    %endif
    times 1 - ($ - %%insn_00bed) db 0
    %%insn_00bee:
    push ds ; 00BEE 1E
    %if ($ - %%insn_00bee) > 1
        %error "LONG_00BEE"
    %endif
    times 1 - ($ - %%insn_00bee) db 0
    %%insn_00bef:
    mov ds,word [bp-0x2aae] ; 00BEF 8E9E52D5
    %if ($ - %%insn_00bef) > 4
        %error "LONG_00BEF"
    %endif
    times 4 - ($ - %%insn_00bef) db 0
    %%insn_00bf3:
    mov ax,[bp-0x30b8] ; 00BF3 8B8648CF
    %if ($ - %%insn_00bf3) > 4
        %error "LONG_00BF3"
    %endif
    times 4 - ($ - %%insn_00bf3) db 0
    %%insn_00bf7:
    mov dword [bp-0x2b92],0x10000 ; 00BF7 66C7866ED400000100
    %if ($ - %%insn_00bf7) > 9
        %error "LONG_00BF7"
    %endif
    times 9 - ($ - %%insn_00bf7) db 0
    %%insn_00c00:
    mov word [bp-0x2b8e],0x0 ; 00C00 C78672D40000
    %if ($ - %%insn_00c00) > 6
        %error "LONG_00C00"
    %endif
    times 6 - ($ - %%insn_00c00) db 0
    %%insn_00c06:
    mov word [bp-0x2b8c],0x0 ; 00C06 C78674D40000
    %if ($ - %%insn_00c06) > 6
        %error "LONG_00C06"
    %endif
    times 6 - ($ - %%insn_00c06) db 0
    %%insn_00c0c:
    mov [bp-0x2b8a],ax ; 00C0C 898676D4
    %if ($ - %%insn_00c0c) > 4
        %error "LONG_00C0C"
    %endif
    times 4 - ($ - %%insn_00c0c) db 0
    %%insn_00c10:
    mov ax,[bp-0x2ab0] ; 00C10 8B8650D5
    %if ($ - %%insn_00c10) > 4
        %error "LONG_00C10"
    %endif
    times 4 - ($ - %%insn_00c10) db 0
    %%insn_00c14:
    mov [bp-0x2b88],ax ; 00C14 898678D4
    %if ($ - %%insn_00c14) > 4
        %error "LONG_00C14"
    %endif
    times 4 - ($ - %%insn_00c14) db 0
    %%insn_00c18:
    mov al,[bp-0x30b6] ; 00C18 8A864ACF
    %if ($ - %%insn_00c18) > 4
        %error "LONG_00C18"
    %endif
    times 4 - ($ - %%insn_00c18) db 0
    db 0x32, 0xE4 ; 00C1C 32E4 | xor ah,ah | encoding preserved
    %%insn_00c1e:
    inc al ; 00C1E FEC0
    %if ($ - %%insn_00c1e) > 2
        %error "LONG_00C1E"
    %endif
    times 2 - ($ - %%insn_00c1e) db 0
    %%insn_00c20:
    shl eax,byte 0x10 ; 00C20 66C1E010
    %if ($ - %%insn_00c20) > 4
        %error "LONG_00C20"
    %endif
    times 4 - ($ - %%insn_00c20) db 0
    %%insn_00c24:
    mov [bp-0x2b86],eax ; 00C24 6689867AD4
    %if ($ - %%insn_00c24) > 5
        %error "LONG_00C24"
    %endif
    times 5 - ($ - %%insn_00c24) db 0
    %%insn_00c29:
    mov ah,0xb ; 00C29 B40B
    %if ($ - %%insn_00c29) > 2
        %error "LONG_00C29"
    %endif
    times 2 - ($ - %%insn_00c29) db 0
    %%insn_00c2b:
    mov si,0xd46e ; 00C2B BE6ED4
    %if ($ - %%insn_00c2b) > 3
        %error "LONG_00C2B"
    %endif
    times 3 - ($ - %%insn_00c2b) db 0
    %%insn_00c2e:
    call word far [cs:0x3688] ; 00C2E 2EFF1E8836
    %if ($ - %%insn_00c2e) > 5
        %error "LONG_00C2E"
    %endif
    times 5 - ($ - %%insn_00c2e) db 0
    %%insn_00c33:
    pop ds ; 00C33 1F
    %if ($ - %%insn_00c33) > 1
        %error "LONG_00C33"
    %endif
    times 1 - ($ - %%insn_00c33) db 0
    %%insn_00c34:
    popa ; 00C34 61
    %if ($ - %%insn_00c34) > 1
        %error "LONG_00C34"
    %endif
    times 1 - ($ - %%insn_00c34) db 0
    %%insn_00c35:
    mov word [bp-0x30ce],0x1 ; 00C35 C78632CF0100
    %if ($ - %%insn_00c35) > 6
        %error "LONG_00C35"
    %endif
    times 6 - ($ - %%insn_00c35) db 0
    %%insn_00c3b:
    mov es,word [bp-0x2aa8] ; 00C3B 8E8658D5
    %if ($ - %%insn_00c3b) > 4
        %error "LONG_00C3B"
    %endif
    times 4 - ($ - %%insn_00c3b) db 0
    %%insn_00c3f:
    ret ; 00C3F C3
    %if ($ - %%insn_00c3f) > 1
        %error "LONG_00C3F"
    %endif
    times 1 - ($ - %%insn_00c3f) db 0
    %%insn_00c40:
    cmp byte [bp-0x2606],0x1 ; 00C40 80BEFAD901
    %if ($ - %%insn_00c40) > 5
        %error "LONG_00C40"
    %endif
    times 5 - ($ - %%insn_00c40) db 0
    %%insn_00c45:
    jnz short 0xc4c ; 00C45 7505
    %if ($ - %%insn_00c45) > 2
        %error "LONG_00C45"
    %endif
    times 2 - ($ - %%insn_00c45) db 0
    %%insn_00c47:
    jmp 0xddf ; 00C47 E99501
    %if ($ - %%insn_00c47) > 3
        %error "LONG_00C47"
    %endif
    times 3 - ($ - %%insn_00c47) db 0
    %if ($ - %%fragment_start) != 1633
        %error "SIZE_005E9"
    %endif
%endmacro

%macro emit_decode_vdx_bitmap_still_part_02 0
    %%fragment_start:
    %%insn_00c4c:
    cmp byte [bp-0x2606],0x2 ; 00C4C 80BEFAD902
    %if ($ - %%insn_00c4c) > 5
        %error "LONG_00C4C"
    %endif
    times 5 - ($ - %%insn_00c4c) db 0
    %%insn_00c51:
    jnz short 0xc59 ; 00C51 7506
    %if ($ - %%insn_00c51) > 2
        %error "LONG_00C51"
    %endif
    times 2 - ($ - %%insn_00c51) db 0
    %%insn_00c53:
    mov word [bp-0x30e0],0x0 ; 00C53 C78620CF0000
    %if ($ - %%insn_00c53) > 6
        %error "LONG_00C53"
    %endif
    times 6 - ($ - %%insn_00c53) db 0
    %%insn_00c59:
    call 0x476 ; 00C59 E81AF8
    %if ($ - %%insn_00c59) > 3
        %error "LONG_00C59"
    %endif
    times 3 - ($ - %%insn_00c59) db 0
    %%insn_00c5c:
    cmp word [bp-0x30da],0x0 ; 00C5C 83BE26CF00
    %if ($ - %%insn_00c5c) > 5
        %error "LONG_00C5C"
    %endif
    times 5 - ($ - %%insn_00c5c) db 0
    %%insn_00c61:
    jnz short 0xc66 ; 00C61 7503
    %if ($ - %%insn_00c61) > 2
        %error "LONG_00C61"
    %endif
    times 2 - ($ - %%insn_00c61) db 0
    %%insn_00c63:
    call 0x501 ; 00C63 E89BF8
    %if ($ - %%insn_00c63) > 3
        %error "LONG_00C63"
    %endif
    times 3 - ($ - %%insn_00c63) db 0
    db 0x33, 0xF6 ; 00C66 33F6 | xor si,si | encoding preserved
    %%insn_00c68:
    mov ax,[si+0x2] ; 00C68 8B4402
    %if ($ - %%insn_00c68) > 3
        %error "LONG_00C68"
    %endif
    times 3 - ($ - %%insn_00c68) db 0
    %%insn_00c6b:
    mov [bp-0x2b7c],ax ; 00C6B 898684D4
    %if ($ - %%insn_00c6b) > 4
        %error "LONG_00C6B"
    %endif
    times 4 - ($ - %%insn_00c6b) db 0
    %%insn_00c6f:
    mov [bp-0x2b7a],ax ; 00C6F 898686D4
    %if ($ - %%insn_00c6f) > 4
        %error "LONG_00C6F"
    %endif
    times 4 - ($ - %%insn_00c6f) db 0
    %%insn_00c73:
    mov ax,[si] ; 00C73 8B04
    %if ($ - %%insn_00c73) > 2
        %error "LONG_00C73"
    %endif
    times 2 - ($ - %%insn_00c73) db 0
    %%insn_00c75:
    mov [bp-0x2b80],ax ; 00C75 898680D4
    %if ($ - %%insn_00c75) > 4
        %error "LONG_00C75"
    %endif
    times 4 - ($ - %%insn_00c75) db 0
    %%insn_00c79:
    mov [bp-0x2b7e],ax ; 00C79 898682D4
    %if ($ - %%insn_00c79) > 4
        %error "LONG_00C79"
    %endif
    times 4 - ($ - %%insn_00c79) db 0
    %%insn_00c7d:
    mov si,0x306 ; 00C7D BE0603
    %if ($ - %%insn_00c7d) > 3
        %error "LONG_00C7D"
    %endif
    times 3 - ($ - %%insn_00c7d) db 0
    %%insn_00c80:
    mov di,0x0 ; 00C80 BF0000
    %if ($ - %%insn_00c80) > 3
        %error "LONG_00C80"
    %endif
    times 3 - ($ - %%insn_00c80) db 0
    %%insn_00c83:
    mov cx,0xd28e ; 00C83 B98ED2
    %if ($ - %%insn_00c83) > 3
        %error "LONG_00C83"
    %endif
    times 3 - ($ - %%insn_00c83) db 0
    %%insn_00c86:
    mov ax,[bp-0x2b7c] ; 00C86 8B8684D4
    %if ($ - %%insn_00c86) > 4
        %error "LONG_00C86"
    %endif
    times 4 - ($ - %%insn_00c86) db 0
    %%insn_00c8a:
    push ax ; 00C8A 50
    %if ($ - %%insn_00c8a) > 1
        %error "LONG_00C8A"
    %endif
    times 1 - ($ - %%insn_00c8a) db 0
    %%insn_00c8b:
    mov ax,[bp-0x2b80] ; 00C8B 8B8680D4
    %if ($ - %%insn_00c8b) > 4
        %error "LONG_00C8B"
    %endif
    times 4 - ($ - %%insn_00c8b) db 0
    %%insn_00c8f:
    push ax ; 00C8F 50
    %if ($ - %%insn_00c8f) > 1
        %error "LONG_00C8F"
    %endif
    times 1 - ($ - %%insn_00c8f) db 0
    db 0x8B, 0xD9 ; 00C90 8BD9 | mov bx,cx | encoding preserved
    %%insn_00c92:
    mov [ss:bx],di ; 00C92 36893F
    %if ($ - %%insn_00c92) > 3
        %error "LONG_00C92"
    %endif
    times 3 - ($ - %%insn_00c92) db 0
    %%insn_00c95:
    mov bx,[si] ; 00C95 8B1C
    %if ($ - %%insn_00c95) > 2
        %error "LONG_00C95"
    %endif
    times 2 - ($ - %%insn_00c95) db 0
    %%insn_00c97:
    mov dx,[si+0x2] ; 00C97 8B5402
    %if ($ - %%insn_00c97) > 3
        %error "LONG_00C97"
    %endif
    times 3 - ($ - %%insn_00c97) db 0
    %%insn_00c9a:
    add si,0x4 ; 00C9A 83C604
    %if ($ - %%insn_00c9a) > 3
        %error "LONG_00C9A"
    %endif
    times 3 - ($ - %%insn_00c9a) db 0
    %%insn_00c9d:
    push di ; 00C9D 57
    %if ($ - %%insn_00c9d) > 1
        %error "LONG_00C9D"
    %endif
    times 1 - ($ - %%insn_00c9d) db 0
    %%insn_00c9e:
    push si ; 00C9E 56
    %if ($ - %%insn_00c9e) > 1
        %error "LONG_00C9E"
    %endif
    times 1 - ($ - %%insn_00c9e) db 0
    %%insn_00c9f:
    push cx ; 00C9F 51
    %if ($ - %%insn_00c9f) > 1
        %error "LONG_00C9F"
    %endif
    times 1 - ($ - %%insn_00c9f) db 0
    db 0x8B, 0xF7 ; 00CA0 8BF7 | mov si,di | encoding preserved
    %%insn_00ca2:
    push dx ; 00CA2 52
    %if ($ - %%insn_00ca2) > 1
        %error "LONG_00CA2"
    %endif
    times 1 - ($ - %%insn_00ca2) db 0
    %%insn_00ca3:
    mov ax,[bp-0x2b7a] ; 00CA3 8B8686D4
    %if ($ - %%insn_00ca3) > 4
        %error "LONG_00CA3"
    %endif
    times 4 - ($ - %%insn_00ca3) db 0
    %%insn_00ca7:
    sub ax,[bp-0x2b7c] ; 00CA7 2B8684D4
    %if ($ - %%insn_00ca7) > 4
        %error "LONG_00CA7"
    %endif
    times 4 - ($ - %%insn_00ca7) db 0
    %%insn_00cab:
    shl ax,1 ; 00CAB D1E0
    %if ($ - %%insn_00cab) > 2
        %error "LONG_00CAB"
    %endif
    times 2 - ($ - %%insn_00cab) db 0
    db 0x05, 0x14, 0x00 ; 00CAD 051400 | add ax,0x14 | encoding preserved
    %%insn_00cb0:
    mov cx,0x140 ; 00CB0 B94001
    %if ($ - %%insn_00cb0) > 3
        %error "LONG_00CB0"
    %endif
    times 3 - ($ - %%insn_00cb0) db 0
    %%insn_00cb3:
    mul cx ; 00CB3 F7E1
    %if ($ - %%insn_00cb3) > 2
        %error "LONG_00CB3"
    %endif
    times 2 - ($ - %%insn_00cb3) db 0
    db 0x8B, 0xF8 ; 00CB5 8BF8 | mov di,ax | encoding preserved
    %%insn_00cb7:
    mov ax,[bp-0x2b7e] ; 00CB7 8B8682D4
    %if ($ - %%insn_00cb7) > 4
        %error "LONG_00CB7"
    %endif
    times 4 - ($ - %%insn_00cb7) db 0
    %%insn_00cbb:
    sub ax,[bp-0x2b80] ; 00CBB 2B8680D4
    %if ($ - %%insn_00cbb) > 4
        %error "LONG_00CBB"
    %endif
    times 4 - ($ - %%insn_00cbb) db 0
    %%insn_00cbf:
    shl ax,1 ; 00CBF D1E0
    %if ($ - %%insn_00cbf) > 2
        %error "LONG_00CBF"
    %endif
    times 2 - ($ - %%insn_00cbf) db 0
    db 0x03, 0xF8 ; 00CC1 03F8 | add di,ax | encoding preserved
    %%insn_00cc3:
    pop dx ; 00CC3 5A
    %if ($ - %%insn_00cc3) > 1
        %error "LONG_00CC3"
    %endif
    times 1 - ($ - %%insn_00cc3) db 0
    %%insn_00cc4:
    mov al,[bp-0x3076] ; 00CC4 8A868ACF
    %if ($ - %%insn_00cc4) > 4
        %error "LONG_00CC4"
    %endif
    times 4 - ($ - %%insn_00cc4) db 0
    db 0x32, 0xE4 ; 00CC8 32E4 | xor ah,ah | encoding preserved
    %%insn_00cca:
    push ax ; 00CCA 50
    %if ($ - %%insn_00cca) > 1
        %error "LONG_00CCA"
    %endif
    times 1 - ($ - %%insn_00cca) db 0
    %%insn_00ccb:
    mov [ss:si],di ; 00CCB 36893C
    %if ($ - %%insn_00ccb) > 3
        %error "LONG_00CCB"
    %endif
    times 3 - ($ - %%insn_00ccb) db 0
    %%insn_00cce:
    mov [ss:si+0x2],ax ; 00CCE 36894402
    %if ($ - %%insn_00cce) > 4
        %error "LONG_00CCE"
    %endif
    times 4 - ($ - %%insn_00cce) db 0
    %%insn_00cd2:
    cmp word [bp-0x30e0],0x0 ; 00CD2 83BE20CF00
    %if ($ - %%insn_00cd2) > 5
        %error "LONG_00CD2"
    %endif
    times 5 - ($ - %%insn_00cd2) db 0
    %%insn_00cd7:
    jnz short 0xd37 ; 00CD7 755E
    %if ($ - %%insn_00cd7) > 2
        %error "LONG_00CD7"
    %endif
    times 2 - ($ - %%insn_00cd7) db 0
    %%insn_00cd9:
    add di,[bp-0x2996] ; 00CD9 03BE6AD6
    %if ($ - %%insn_00cd9) > 4
        %error "LONG_00CD9"
    %endif
    times 4 - ($ - %%insn_00cd9) db 0
    %%insn_00cdd:
    jnc short 0xcf0 ; 00CDD 7311
    %if ($ - %%insn_00cdd) > 2
        %error "LONG_00CDD"
    %endif
    times 2 - ($ - %%insn_00cdd) db 0
    %%insn_00cdf:
    mov al,[bp-0x3076] ; 00CDF 8A868ACF
    %if ($ - %%insn_00cdf) > 4
        %error "LONG_00CDF"
    %endif
    times 4 - ($ - %%insn_00cdf) db 0
    %%insn_00ce3:
    inc al ; 00CE3 FEC0
    %if ($ - %%insn_00ce3) > 2
        %error "LONG_00CE3"
    %endif
    times 2 - ($ - %%insn_00ce3) db 0
    db 0x32, 0xE4 ; 00CE5 32E4 | xor ah,ah | encoding preserved
    %%insn_00ce7:
    mov [bp-0x3076],al ; 00CE7 88868ACF
    %if ($ - %%insn_00ce7) > 4
        %error "LONG_00CE7"
    %endif
    times 4 - ($ - %%insn_00ce7) db 0
    %%insn_00ceb:
    call word near [ss:0xd660] ; 00CEB 36FF1660D6
    %if ($ - %%insn_00ceb) > 5
        %error "LONG_00CEB"
    %endif
    times 5 - ($ - %%insn_00ceb) db 0
    %%insn_00cf0:
    add di,[bp-0x2996] ; 00CF0 03BE6AD6
    %if ($ - %%insn_00cf0) > 4
        %error "LONG_00CF0"
    %endif
    times 4 - ($ - %%insn_00cf0) db 0
    %%insn_00cf4:
    jnc short 0xd07 ; 00CF4 7311
    %if ($ - %%insn_00cf4) > 2
        %error "LONG_00CF4"
    %endif
    times 2 - ($ - %%insn_00cf4) db 0
    %%insn_00cf6:
    mov al,[bp-0x3076] ; 00CF6 8A868ACF
    %if ($ - %%insn_00cf6) > 4
        %error "LONG_00CF6"
    %endif
    times 4 - ($ - %%insn_00cf6) db 0
    %%insn_00cfa:
    inc al ; 00CFA FEC0
    %if ($ - %%insn_00cfa) > 2
        %error "LONG_00CFA"
    %endif
    times 2 - ($ - %%insn_00cfa) db 0
    db 0x32, 0xE4 ; 00CFC 32E4 | xor ah,ah | encoding preserved
    %%insn_00cfe:
    mov [bp-0x3076],al ; 00CFE 88868ACF
    %if ($ - %%insn_00cfe) > 4
        %error "LONG_00CFE"
    %endif
    times 4 - ($ - %%insn_00cfe) db 0
    %%insn_00d02:
    call word near [ss:0xd660] ; 00D02 36FF1660D6
    %if ($ - %%insn_00d02) > 5
        %error "LONG_00D02"
    %endif
    times 5 - ($ - %%insn_00d02) db 0
    %%insn_00d07:
    add di,[bp-0x2996] ; 00D07 03BE6AD6
    %if ($ - %%insn_00d07) > 4
        %error "LONG_00D07"
    %endif
    times 4 - ($ - %%insn_00d07) db 0
    %%insn_00d0b:
    jnc short 0xd1e ; 00D0B 7311
    %if ($ - %%insn_00d0b) > 2
        %error "LONG_00D0B"
    %endif
    times 2 - ($ - %%insn_00d0b) db 0
    %%insn_00d0d:
    mov al,[bp-0x3076] ; 00D0D 8A868ACF
    %if ($ - %%insn_00d0d) > 4
        %error "LONG_00D0D"
    %endif
    times 4 - ($ - %%insn_00d0d) db 0
    %%insn_00d11:
    inc al ; 00D11 FEC0
    %if ($ - %%insn_00d11) > 2
        %error "LONG_00D11"
    %endif
    times 2 - ($ - %%insn_00d11) db 0
    db 0x32, 0xE4 ; 00D13 32E4 | xor ah,ah | encoding preserved
    %%insn_00d15:
    mov [bp-0x3076],al ; 00D15 88868ACF
    %if ($ - %%insn_00d15) > 4
        %error "LONG_00D15"
    %endif
    times 4 - ($ - %%insn_00d15) db 0
    %%insn_00d19:
    call word near [ss:0xd660] ; 00D19 36FF1660D6
    %if ($ - %%insn_00d19) > 5
        %error "LONG_00D19"
    %endif
    times 5 - ($ - %%insn_00d19) db 0
    %%insn_00d1e:
    add di,[bp-0x2996] ; 00D1E 03BE6AD6
    %if ($ - %%insn_00d1e) > 4
        %error "LONG_00D1E"
    %endif
    times 4 - ($ - %%insn_00d1e) db 0
    %%insn_00d22:
    jnc short 0xd35 ; 00D22 7311
    %if ($ - %%insn_00d22) > 2
        %error "LONG_00D22"
    %endif
    times 2 - ($ - %%insn_00d22) db 0
    %%insn_00d24:
    mov al,[bp-0x3076] ; 00D24 8A868ACF
    %if ($ - %%insn_00d24) > 4
        %error "LONG_00D24"
    %endif
    times 4 - ($ - %%insn_00d24) db 0
    %%insn_00d28:
    inc al ; 00D28 FEC0
    %if ($ - %%insn_00d28) > 2
        %error "LONG_00D28"
    %endif
    times 2 - ($ - %%insn_00d28) db 0
    db 0x32, 0xE4 ; 00D2A 32E4 | xor ah,ah | encoding preserved
    %%insn_00d2c:
    mov [bp-0x3076],al ; 00D2C 88868ACF
    %if ($ - %%insn_00d2c) > 4
        %error "LONG_00D2C"
    %endif
    times 4 - ($ - %%insn_00d2c) db 0
    %%insn_00d30:
    call word near [ss:0xd660] ; 00D30 36FF1660D6
    %if ($ - %%insn_00d30) > 5
        %error "LONG_00D30"
    %endif
    times 5 - ($ - %%insn_00d30) db 0
    %%insn_00d35:
    jmp short 0xd64 ; 00D35 EB2D
    %if ($ - %%insn_00d35) > 2
        %error "LONG_00D35"
    %endif
    times 2 - ($ - %%insn_00d35) db 0
    db 0x8B, 0xC3 ; 00D37 8BC3 | mov ax,bx | encoding preserved
    %%insn_00d39:
    test dh,0x80 ; 00D39 F6C680
    %if ($ - %%insn_00d39) > 3
        %error "LONG_00D39"
    %endif
    times 3 - ($ - %%insn_00d39) db 0
    %%insn_00d3c:
    jnz short 0xd40 ; 00D3C 7502
    %if ($ - %%insn_00d3c) > 2
        %error "LONG_00D3C"
    %endif
    times 2 - ($ - %%insn_00d3c) db 0
    db 0x8A, 0xC7 ; 00D3E 8AC7 | mov al,bh | encoding preserved
    %%insn_00d40:
    test dh,0x20 ; 00D40 F6C620
    %if ($ - %%insn_00d40) > 3
        %error "LONG_00D40"
    %endif
    times 3 - ($ - %%insn_00d40) db 0
    %%insn_00d43:
    jz short 0xd47 ; 00D43 7402
    %if ($ - %%insn_00d43) > 2
        %error "LONG_00D43"
    %endif
    times 2 - ($ - %%insn_00d43) db 0
    db 0x8A, 0xE3 ; 00D45 8AE3 | mov ah,bl | encoding preserved
    %%insn_00d47:
    mov [es:di],ax ; 00D47 268905
    %if ($ - %%insn_00d47) > 3
        %error "LONG_00D47"
    %endif
    times 3 - ($ - %%insn_00d47) db 0
    %%insn_00d4a:
    add di,0x140 ; 00D4A 81C74001
    %if ($ - %%insn_00d4a) > 4
        %error "LONG_00D4A"
    %endif
    times 4 - ($ - %%insn_00d4a) db 0
    %%insn_00d4e:
    shl dx,byte 0x8 ; 00D4E C1E208
    %if ($ - %%insn_00d4e) > 3
        %error "LONG_00D4E"
    %endif
    times 3 - ($ - %%insn_00d4e) db 0
    db 0x8B, 0xC3 ; 00D51 8BC3 | mov ax,bx | encoding preserved
    %%insn_00d53:
    test dh,0x80 ; 00D53 F6C680
    %if ($ - %%insn_00d53) > 3
        %error "LONG_00D53"
    %endif
    times 3 - ($ - %%insn_00d53) db 0
    %%insn_00d56:
    jnz short 0xd5a ; 00D56 7502
    %if ($ - %%insn_00d56) > 2
        %error "LONG_00D56"
    %endif
    times 2 - ($ - %%insn_00d56) db 0
    db 0x8A, 0xC7 ; 00D58 8AC7 | mov al,bh | encoding preserved
    %%insn_00d5a:
    test dh,0x20 ; 00D5A F6C620
    %if ($ - %%insn_00d5a) > 3
        %error "LONG_00D5A"
    %endif
    times 3 - ($ - %%insn_00d5a) db 0
    %%insn_00d5d:
    jz short 0xd61 ; 00D5D 7402
    %if ($ - %%insn_00d5d) > 2
        %error "LONG_00D5D"
    %endif
    times 2 - ($ - %%insn_00d5d) db 0
    db 0x8A, 0xE3 ; 00D5F 8AE3 | mov ah,bl | encoding preserved
    %%insn_00d61:
    mov [es:di],ax ; 00D61 268905
    %if ($ - %%insn_00d61) > 3
        %error "LONG_00D61"
    %endif
    times 3 - ($ - %%insn_00d61) db 0
    %%insn_00d64:
    pop ax ; 00D64 58
    %if ($ - %%insn_00d64) > 1
        %error "LONG_00D64"
    %endif
    times 1 - ($ - %%insn_00d64) db 0
    %%insn_00d65:
    cmp al,[bp-0x3076] ; 00D65 3A868ACF
    %if ($ - %%insn_00d65) > 4
        %error "LONG_00D65"
    %endif
    times 4 - ($ - %%insn_00d65) db 0
    %%insn_00d69:
    jz short 0xd76 ; 00D69 740B
    %if ($ - %%insn_00d69) > 2
        %error "LONG_00D69"
    %endif
    times 2 - ($ - %%insn_00d69) db 0
    %%insn_00d6b:
    mov byte [bp+si+0x3],0xff ; 00D6B C64203FF
    %if ($ - %%insn_00d6b) > 4
        %error "LONG_00D6B"
    %endif
    times 4 - ($ - %%insn_00d6b) db 0
    %%insn_00d6f:
    pop bx ; 00D6F 5B
    %if ($ - %%insn_00d6f) > 1
        %error "LONG_00D6F"
    %endif
    times 1 - ($ - %%insn_00d6f) db 0
    %%insn_00d70:
    mov byte [ss:bx+0x2],0xff ; 00D70 36C64702FF
    %if ($ - %%insn_00d70) > 5
        %error "LONG_00D70"
    %endif
    times 5 - ($ - %%insn_00d70) db 0
    %%insn_00d75:
    push bx ; 00D75 53
    %if ($ - %%insn_00d75) > 1
        %error "LONG_00D75"
    %endif
    times 1 - ($ - %%insn_00d75) db 0
    %%insn_00d76:
    pop cx ; 00D76 59
    %if ($ - %%insn_00d76) > 1
        %error "LONG_00D76"
    %endif
    times 1 - ($ - %%insn_00d76) db 0
    %%insn_00d77:
    pop si ; 00D77 5E
    %if ($ - %%insn_00d77) > 1
        %error "LONG_00D77"
    %endif
    times 1 - ($ - %%insn_00d77) db 0
    %%insn_00d78:
    pop di ; 00D78 5F
    %if ($ - %%insn_00d78) > 1
        %error "LONG_00D78"
    %endif
    times 1 - ($ - %%insn_00d78) db 0
    %%insn_00d79:
    add di,0x4 ; 00D79 83C704
    %if ($ - %%insn_00d79) > 3
        %error "LONG_00D79"
    %endif
    times 3 - ($ - %%insn_00d79) db 0
    %%insn_00d7c:
    dec word [bp-0x2b80] ; 00D7C FF8E80D4
    %if ($ - %%insn_00d7c) > 4
        %error "LONG_00D7C"
    %endif
    times 4 - ($ - %%insn_00d7c) db 0
    %%insn_00d80:
    jnz 0xc95 ; 00D80 0F8511FF
    %if ($ - %%insn_00d80) > 4
        %error "LONG_00D80"
    %endif
    times 4 - ($ - %%insn_00d80) db 0
    %%insn_00d84:
    mov al,[bp+di-0x2] ; 00D84 8A43FE
    %if ($ - %%insn_00d84) > 3
        %error "LONG_00D84"
    %endif
    times 3 - ($ - %%insn_00d84) db 0
    db 0x8B, 0xD9 ; 00D87 8BD9 | mov bx,cx | encoding preserved
    %%insn_00d89:
    mov bx,[ss:bx] ; 00D89 368B1F
    %if ($ - %%insn_00d89) > 3
        %error "LONG_00D89"
    %endif
    times 3 - ($ - %%insn_00d89) db 0
    %%insn_00d8c:
    mov ah,[ss:bx+0x2] ; 00D8C 368A6702
    %if ($ - %%insn_00d8c) > 4
        %error "LONG_00D8C"
    %endif
    times 4 - ($ - %%insn_00d8c) db 0
    db 0x3A, 0xC4 ; 00D90 3AC4 | cmp al,ah | encoding preserved
    %%insn_00d92:
    jz short 0xd9b ; 00D92 7407
    %if ($ - %%insn_00d92) > 2
        %error "LONG_00D92"
    %endif
    times 2 - ($ - %%insn_00d92) db 0
    db 0x8B, 0xD9 ; 00D94 8BD9 | mov bx,cx | encoding preserved
    %%insn_00d96:
    mov byte [ss:bx+0x2],0xff ; 00D96 36C64702FF
    %if ($ - %%insn_00d96) > 5
        %error "LONG_00D96"
    %endif
    times 5 - ($ - %%insn_00d96) db 0
    %%insn_00d9b:
    add cx,0x4 ; 00D9B 83C104
    %if ($ - %%insn_00d9b) > 3
        %error "LONG_00D9B"
    %endif
    times 3 - ($ - %%insn_00d9b) db 0
    %%insn_00d9e:
    pop ax ; 00D9E 58
    %if ($ - %%insn_00d9e) > 1
        %error "LONG_00D9E"
    %endif
    times 1 - ($ - %%insn_00d9e) db 0
    %%insn_00d9f:
    mov [bp-0x2b80],ax ; 00D9F 898680D4
    %if ($ - %%insn_00d9f) > 4
        %error "LONG_00D9F"
    %endif
    times 4 - ($ - %%insn_00d9f) db 0
    %%insn_00da3:
    dec word [bp-0x2b7c] ; 00DA3 FF8E84D4
    %if ($ - %%insn_00da3) > 4
        %error "LONG_00DA3"
    %endif
    times 4 - ($ - %%insn_00da3) db 0
    %%insn_00da7:
    jnz 0xc8b ; 00DA7 0F85E0FE
    %if ($ - %%insn_00da7) > 4
        %error "LONG_00DA7"
    %endif
    times 4 - ($ - %%insn_00da7) db 0
    %%insn_00dab:
    pop ax ; 00DAB 58
    %if ($ - %%insn_00dab) > 1
        %error "LONG_00DAB"
    %endif
    times 1 - ($ - %%insn_00dab) db 0
    %%insn_00dac:
    mov [bp-0x2b7c],ax ; 00DAC 898684D4
    %if ($ - %%insn_00dac) > 4
        %error "LONG_00DAC"
    %endif
    times 4 - ($ - %%insn_00dac) db 0
    %%insn_00db0:
    mov word [bp-0x30e0],0xffff ; 00DB0 C78620CFFFFF
    %if ($ - %%insn_00db0) > 6
        %error "LONG_00DB0"
    %endif
    times 6 - ($ - %%insn_00db0) db 0
    db 0x8B, 0xD9 ; 00DB6 8BD9 | mov bx,cx | encoding preserved
    %%insn_00db8:
    mov word [ss:bx],0xffff ; 00DB8 36C707FFFF
    %if ($ - %%insn_00db8) > 5
        %error "LONG_00DB8"
    %endif
    times 5 - ($ - %%insn_00db8) db 0
    %%insn_00dbd:
    cmp word [bp-0x30da],0x0 ; 00DBD 83BE26CF00
    %if ($ - %%insn_00dbd) > 5
        %error "LONG_00DBD"
    %endif
    times 5 - ($ - %%insn_00dbd) db 0
    %%insn_00dc2:
    jz short 0xdc7 ; 00DC2 7403
    %if ($ - %%insn_00dc2) > 2
        %error "LONG_00DC2"
    %endif
    times 2 - ($ - %%insn_00dc2) db 0
    %%insn_00dc4:
    call 0x501 ; 00DC4 E83AF7
    %if ($ - %%insn_00dc4) > 3
        %error "LONG_00DC4"
    %endif
    times 3 - ($ - %%insn_00dc4) db 0
    %%insn_00dc7:
    test word [bp-0x30b4],0x1 ; 00DC7 F7864CCF0100
    %if ($ - %%insn_00dc7) > 6
        %error "LONG_00DC7"
    %endif
    times 6 - ($ - %%insn_00dc7) db 0
    %%insn_00dcd:
    jz short 0xdd8 ; 00DCD 7409
    %if ($ - %%insn_00dcd) > 2
        %error "LONG_00DCD"
    %endif
    times 2 - ($ - %%insn_00dcd) db 0
    %%insn_00dcf:
    call 0xf33 ; 00DCF E86101
    %if ($ - %%insn_00dcf) > 3
        %error "LONG_00DCF"
    %endif
    times 3 - ($ - %%insn_00dcf) db 0
    %%insn_00dd2:
    mov word [bp-0x30b4],0x0 ; 00DD2 C7864CCF0000
    %if ($ - %%insn_00dd2) > 6
        %error "LONG_00DD2"
    %endif
    times 6 - ($ - %%insn_00dd2) db 0
    %%insn_00dd8:
    mov word [bp-0x30da],0x0 ; 00DD8 C78626CF0000
    %if ($ - %%insn_00dd8) > 6
        %error "LONG_00DD8"
    %endif
    times 6 - ($ - %%insn_00dd8) db 0
    %%insn_00dde:
    ret ; 00DDE C3
    %if ($ - %%insn_00dde) > 1
        %error "LONG_00DDE"
    %endif
    times 1 - ($ - %%insn_00dde) db 0
    %%insn_00ddf:
    mov si,0x306 ; 00DDF BE0603
    %if ($ - %%insn_00ddf) > 3
        %error "LONG_00DDF"
    %endif
    times 3 - ($ - %%insn_00ddf) db 0
    %%insn_00de2:
    mov es,word [bp-0x2aac] ; 00DE2 8E8654D5
    %if ($ - %%insn_00de2) > 4
        %error "LONG_00DE2"
    %endif
    times 4 - ($ - %%insn_00de2) db 0
    %%insn_00de6:
    mov byte [bp-0x3076],0x0 ; 00DE6 C6868ACF00
    %if ($ - %%insn_00de6) > 5
        %error "LONG_00DE6"
    %endif
    times 5 - ($ - %%insn_00de6) db 0
    %%insn_00deb:
    pusha ; 00DEB 60
    %if ($ - %%insn_00deb) > 1
        %error "LONG_00DEB"
    %endif
    times 1 - ($ - %%insn_00deb) db 0
    %%insn_00dec:
    push ds ; 00DEC 1E
    %if ($ - %%insn_00dec) > 1
        %error "LONG_00DEC"
    %endif
    times 1 - ($ - %%insn_00dec) db 0
    %%insn_00ded:
    mov ds,word [bp-0x2aae] ; 00DED 8E9E52D5
    %if ($ - %%insn_00ded) > 4
        %error "LONG_00DED"
    %endif
    times 4 - ($ - %%insn_00ded) db 0
    %%insn_00df1:
    mov dword [bp-0x2b92],0x10000 ; 00DF1 66C7866ED400000100
    %if ($ - %%insn_00df1) > 9
        %error "LONG_00DF1"
    %endif
    times 9 - ($ - %%insn_00df1) db 0
    %%insn_00dfa:
    mov word [bp-0x2b88],0x0 ; 00DFA C78678D40000
    %if ($ - %%insn_00dfa) > 6
        %error "LONG_00DFA"
    %endif
    times 6 - ($ - %%insn_00dfa) db 0
    %%insn_00e00:
    mov ax,[bp-0x2aac] ; 00E00 8B8654D5
    %if ($ - %%insn_00e00) > 4
        %error "LONG_00E00"
    %endif
    times 4 - ($ - %%insn_00e00) db 0
    %%insn_00e04:
    mov word [bp-0x2b86],0x0 ; 00E04 C7867AD40000
    %if ($ - %%insn_00e04) > 6
        %error "LONG_00E04"
    %endif
    times 6 - ($ - %%insn_00e04) db 0
    %%insn_00e0a:
    mov [bp-0x2b84],ax ; 00E0A 89867CD4
    %if ($ - %%insn_00e0a) > 4
        %error "LONG_00E0A"
    %endif
    times 4 - ($ - %%insn_00e0a) db 0
    %%insn_00e0e:
    mov ax,[bp-0x2ab0] ; 00E0E 8B8650D5
    %if ($ - %%insn_00e0e) > 4
        %error "LONG_00E0E"
    %endif
    times 4 - ($ - %%insn_00e0e) db 0
    %%insn_00e12:
    mov [bp-0x2b8e],ax ; 00E12 898672D4
    %if ($ - %%insn_00e12) > 4
        %error "LONG_00E12"
    %endif
    times 4 - ($ - %%insn_00e12) db 0
    %%insn_00e16:
    mov al,[bp-0x3076] ; 00E16 8A868ACF
    %if ($ - %%insn_00e16) > 4
        %error "LONG_00E16"
    %endif
    times 4 - ($ - %%insn_00e16) db 0
    db 0x32, 0xE4 ; 00E1A 32E4 | xor ah,ah | encoding preserved
    %%insn_00e1c:
    shl eax,byte 0x10 ; 00E1C 66C1E010
    %if ($ - %%insn_00e1c) > 4
        %error "LONG_00E1C"
    %endif
    times 4 - ($ - %%insn_00e1c) db 0
    %%insn_00e20:
    mov [bp-0x2b8c],eax ; 00E20 66898674D4
    %if ($ - %%insn_00e20) > 5
        %error "LONG_00E20"
    %endif
    times 5 - ($ - %%insn_00e20) db 0
    %%insn_00e25:
    mov ah,0xb ; 00E25 B40B
    %if ($ - %%insn_00e25) > 2
        %error "LONG_00E25"
    %endif
    times 2 - ($ - %%insn_00e25) db 0
    %%insn_00e27:
    mov si,0xd46e ; 00E27 BE6ED4
    %if ($ - %%insn_00e27) > 3
        %error "LONG_00E27"
    %endif
    times 3 - ($ - %%insn_00e27) db 0
    %%insn_00e2a:
    call word far [cs:0x3688] ; 00E2A 2EFF1E8836
    %if ($ - %%insn_00e2a) > 5
        %error "LONG_00E2A"
    %endif
    times 5 - ($ - %%insn_00e2a) db 0
    %%insn_00e2f:
    pop ds ; 00E2F 1F
    %if ($ - %%insn_00e2f) > 1
        %error "LONG_00E2F"
    %endif
    times 1 - ($ - %%insn_00e2f) db 0
    %%insn_00e30:
    popa ; 00E30 61
    %if ($ - %%insn_00e30) > 1
        %error "LONG_00E30"
    %endif
    times 1 - ($ - %%insn_00e30) db 0
    %%insn_00e31:
    mov ax,[bp-0x2b7c] ; 00E31 8B8684D4
    %if ($ - %%insn_00e31) > 4
        %error "LONG_00E31"
    %endif
    times 4 - ($ - %%insn_00e31) db 0
    %%insn_00e35:
    push ax ; 00E35 50
    %if ($ - %%insn_00e35) > 1
        %error "LONG_00E35"
    %endif
    times 1 - ($ - %%insn_00e35) db 0
    %%insn_00e36:
    mov ax,[bp-0x2b80] ; 00E36 8B8680D4
    %if ($ - %%insn_00e36) > 4
        %error "LONG_00E36"
    %endif
    times 4 - ($ - %%insn_00e36) db 0
    %%insn_00e3a:
    push ax ; 00E3A 50
    %if ($ - %%insn_00e3a) > 1
        %error "LONG_00E3A"
    %endif
    times 1 - ($ - %%insn_00e3a) db 0
    %%insn_00e3b:
    mov bx,[si] ; 00E3B 8B1C
    %if ($ - %%insn_00e3b) > 2
        %error "LONG_00E3B"
    %endif
    times 2 - ($ - %%insn_00e3b) db 0
    %%insn_00e3d:
    mov dx,[si+0x2] ; 00E3D 8B5402
    %if ($ - %%insn_00e3d) > 3
        %error "LONG_00E3D"
    %endif
    times 3 - ($ - %%insn_00e3d) db 0
    %%insn_00e40:
    add si,0x4 ; 00E40 83C604
    %if ($ - %%insn_00e40) > 3
        %error "LONG_00E40"
    %endif
    times 3 - ($ - %%insn_00e40) db 0
    %%insn_00e43:
    push dx ; 00E43 52
    %if ($ - %%insn_00e43) > 1
        %error "LONG_00E43"
    %endif
    times 1 - ($ - %%insn_00e43) db 0
    %%insn_00e44:
    mov ax,[bp-0x2b7a] ; 00E44 8B8686D4
    %if ($ - %%insn_00e44) > 4
        %error "LONG_00E44"
    %endif
    times 4 - ($ - %%insn_00e44) db 0
    %%insn_00e48:
    sub ax,[bp-0x2b7c] ; 00E48 2B8684D4
    %if ($ - %%insn_00e48) > 4
        %error "LONG_00E48"
    %endif
    times 4 - ($ - %%insn_00e48) db 0
    %%insn_00e4c:
    shl ax,1 ; 00E4C D1E0
    %if ($ - %%insn_00e4c) > 2
        %error "LONG_00E4C"
    %endif
    times 2 - ($ - %%insn_00e4c) db 0
    db 0x05, 0x14, 0x00 ; 00E4E 051400 | add ax,0x14 | encoding preserved
    %%insn_00e51:
    mov cx,0x140 ; 00E51 B94001
    %if ($ - %%insn_00e51) > 3
        %error "LONG_00E51"
    %endif
    times 3 - ($ - %%insn_00e51) db 0
    %%insn_00e54:
    mul cx ; 00E54 F7E1
    %if ($ - %%insn_00e54) > 2
        %error "LONG_00E54"
    %endif
    times 2 - ($ - %%insn_00e54) db 0
    db 0x8B, 0xF8 ; 00E56 8BF8 | mov di,ax | encoding preserved
    %%insn_00e58:
    mov ax,[bp-0x2b7e] ; 00E58 8B8682D4
    %if ($ - %%insn_00e58) > 4
        %error "LONG_00E58"
    %endif
    times 4 - ($ - %%insn_00e58) db 0
    %%insn_00e5c:
    sub ax,[bp-0x2b80] ; 00E5C 2B8680D4
    %if ($ - %%insn_00e5c) > 4
        %error "LONG_00E5C"
    %endif
    times 4 - ($ - %%insn_00e5c) db 0
    %%insn_00e60:
    shl ax,1 ; 00E60 D1E0
    %if ($ - %%insn_00e60) > 2
        %error "LONG_00E60"
    %endif
    times 2 - ($ - %%insn_00e60) db 0
    db 0x03, 0xF8 ; 00E62 03F8 | add di,ax | encoding preserved
    %%insn_00e64:
    mov es,word [bp-0x2aac] ; 00E64 8E8654D5
    %if ($ - %%insn_00e64) > 4
        %error "LONG_00E64"
    %endif
    times 4 - ($ - %%insn_00e64) db 0
    %%insn_00e68:
    pop dx ; 00E68 5A
    %if ($ - %%insn_00e68) > 1
        %error "LONG_00E68"
    %endif
    times 1 - ($ - %%insn_00e68) db 0
    db 0x81, 0xFB, 0xFF, 0xFF ; 00E69 81FBFFFF | cmp bx,0xffff | encoding preserved
    %%insn_00e6d:
    jz short 0xec8 ; 00E6D 7459
    %if ($ - %%insn_00e6d) > 2
        %error "LONG_00E6D"
    %endif
    times 2 - ($ - %%insn_00e6d) db 0
    %%insn_00e6f:
    mov ah,[bp-0x2607] ; 00E6F 8AA6F9D9
    %if ($ - %%insn_00e6f) > 4
        %error "LONG_00E6F"
    %endif
    times 4 - ($ - %%insn_00e6f) db 0
    db 0x8A, 0xC3 ; 00E73 8AC3 | mov al,bl | encoding preserved
    %%insn_00e75:
    test dx,0x8000 ; 00E75 F7C20080
    %if ($ - %%insn_00e75) > 4
        %error "LONG_00E75"
    %endif
    times 4 - ($ - %%insn_00e75) db 0
    %%insn_00e79:
    jnz short 0xe7d ; 00E79 7502
    %if ($ - %%insn_00e79) > 2
        %error "LONG_00E79"
    %endif
    times 2 - ($ - %%insn_00e79) db 0
    db 0x8A, 0xC7 ; 00E7B 8AC7 | mov al,bh | encoding preserved
    %%insn_00e7d:
    cmp al,0xff ; 00E7D 3CFF
    %if ($ - %%insn_00e7d) > 2
        %error "LONG_00E7D"
    %endif
    times 2 - ($ - %%insn_00e7d) db 0
    %%insn_00e7f:
    jz short 0xe86 ; 00E7F 7405
    %if ($ - %%insn_00e7f) > 2
        %error "LONG_00E7F"
    %endif
    times 2 - ($ - %%insn_00e7f) db 0
    db 0x0A, 0xC4 ; 00E81 0AC4 | or al,ah | encoding preserved
    %%insn_00e83:
    mov [es:di],al ; 00E83 268805
    %if ($ - %%insn_00e83) > 3
        %error "LONG_00E83"
    %endif
    times 3 - ($ - %%insn_00e83) db 0
    db 0x8A, 0xC3 ; 00E86 8AC3 | mov al,bl | encoding preserved
    %%insn_00e88:
    test dx,0x2000 ; 00E88 F7C20020
    %if ($ - %%insn_00e88) > 4
        %error "LONG_00E88"
    %endif
    times 4 - ($ - %%insn_00e88) db 0
    %%insn_00e8c:
    jnz short 0xe90 ; 00E8C 7502
    %if ($ - %%insn_00e8c) > 2
        %error "LONG_00E8C"
    %endif
    times 2 - ($ - %%insn_00e8c) db 0
    db 0x8A, 0xC7 ; 00E8E 8AC7 | mov al,bh | encoding preserved
    %%insn_00e90:
    cmp al,0xff ; 00E90 3CFF
    %if ($ - %%insn_00e90) > 2
        %error "LONG_00E90"
    %endif
    times 2 - ($ - %%insn_00e90) db 0
    %%insn_00e92:
    jz short 0xe9a ; 00E92 7406
    %if ($ - %%insn_00e92) > 2
        %error "LONG_00E92"
    %endif
    times 2 - ($ - %%insn_00e92) db 0
    db 0x0A, 0xC4 ; 00E94 0AC4 | or al,ah | encoding preserved
    %%insn_00e96:
    mov [es:di+0x1],al ; 00E96 26884501
    %if ($ - %%insn_00e96) > 4
        %error "LONG_00E96"
    %endif
    times 4 - ($ - %%insn_00e96) db 0
    %%insn_00e9a:
    add di,0x140 ; 00E9A 81C74001
    %if ($ - %%insn_00e9a) > 4
        %error "LONG_00E9A"
    %endif
    times 4 - ($ - %%insn_00e9a) db 0
    %%insn_00e9e:
    shl dx,byte 0x8 ; 00E9E C1E208
    %if ($ - %%insn_00e9e) > 3
        %error "LONG_00E9E"
    %endif
    times 3 - ($ - %%insn_00e9e) db 0
    db 0x8A, 0xC3 ; 00EA1 8AC3 | mov al,bl | encoding preserved
    %%insn_00ea3:
    test dx,0x8000 ; 00EA3 F7C20080
    %if ($ - %%insn_00ea3) > 4
        %error "LONG_00EA3"
    %endif
    times 4 - ($ - %%insn_00ea3) db 0
    %%insn_00ea7:
    jnz short 0xeab ; 00EA7 7502
    %if ($ - %%insn_00ea7) > 2
        %error "LONG_00EA7"
    %endif
    times 2 - ($ - %%insn_00ea7) db 0
    db 0x8A, 0xC7 ; 00EA9 8AC7 | mov al,bh | encoding preserved
    %%insn_00eab:
    cmp al,0xff ; 00EAB 3CFF
    %if ($ - %%insn_00eab) > 2
        %error "LONG_00EAB"
    %endif
    times 2 - ($ - %%insn_00eab) db 0
    %%insn_00ead:
    jz short 0xeb4 ; 00EAD 7405
    %if ($ - %%insn_00ead) > 2
        %error "LONG_00EAD"
    %endif
    times 2 - ($ - %%insn_00ead) db 0
    db 0x0A, 0xC4 ; 00EAF 0AC4 | or al,ah | encoding preserved
    %%insn_00eb1:
    mov [es:di],al ; 00EB1 268805
    %if ($ - %%insn_00eb1) > 3
        %error "LONG_00EB1"
    %endif
    times 3 - ($ - %%insn_00eb1) db 0
    db 0x8A, 0xC3 ; 00EB4 8AC3 | mov al,bl | encoding preserved
    %%insn_00eb6:
    test dx,0x2000 ; 00EB6 F7C20020
    %if ($ - %%insn_00eb6) > 4
        %error "LONG_00EB6"
    %endif
    times 4 - ($ - %%insn_00eb6) db 0
    %%insn_00eba:
    jnz short 0xebe ; 00EBA 7502
    %if ($ - %%insn_00eba) > 2
        %error "LONG_00EBA"
    %endif
    times 2 - ($ - %%insn_00eba) db 0
    db 0x8A, 0xC7 ; 00EBC 8AC7 | mov al,bh | encoding preserved
    %%insn_00ebe:
    cmp al,0xff ; 00EBE 3CFF
    %if ($ - %%insn_00ebe) > 2
        %error "LONG_00EBE"
    %endif
    times 2 - ($ - %%insn_00ebe) db 0
    %%insn_00ec0:
    jz short 0xec8 ; 00EC0 7406
    %if ($ - %%insn_00ec0) > 2
        %error "LONG_00EC0"
    %endif
    times 2 - ($ - %%insn_00ec0) db 0
    db 0x0A, 0xC4 ; 00EC2 0AC4 | or al,ah | encoding preserved
    %%insn_00ec4:
    mov [es:di+0x1],al ; 00EC4 26884501
    %if ($ - %%insn_00ec4) > 4
        %error "LONG_00EC4"
    %endif
    times 4 - ($ - %%insn_00ec4) db 0
    %%insn_00ec8:
    dec word [bp-0x2b80] ; 00EC8 FF8E80D4
    %if ($ - %%insn_00ec8) > 4
        %error "LONG_00EC8"
    %endif
    times 4 - ($ - %%insn_00ec8) db 0
    %%insn_00ecc:
    jnz 0xe3b ; 00ECC 0F856BFF
    %if ($ - %%insn_00ecc) > 4
        %error "LONG_00ECC"
    %endif
    times 4 - ($ - %%insn_00ecc) db 0
    %%insn_00ed0:
    pop ax ; 00ED0 58
    %if ($ - %%insn_00ed0) > 1
        %error "LONG_00ED0"
    %endif
    times 1 - ($ - %%insn_00ed0) db 0
    %%insn_00ed1:
    mov [bp-0x2b80],ax ; 00ED1 898680D4
    %if ($ - %%insn_00ed1) > 4
        %error "LONG_00ED1"
    %endif
    times 4 - ($ - %%insn_00ed1) db 0
    %%insn_00ed5:
    dec word [bp-0x2b7c] ; 00ED5 FF8E84D4
    %if ($ - %%insn_00ed5) > 4
        %error "LONG_00ED5"
    %endif
    times 4 - ($ - %%insn_00ed5) db 0
    %%insn_00ed9:
    jnz 0xe36 ; 00ED9 0F8559FF
    %if ($ - %%insn_00ed9) > 4
        %error "LONG_00ED9"
    %endif
    times 4 - ($ - %%insn_00ed9) db 0
    %%insn_00edd:
    pop ax ; 00EDD 58
    %if ($ - %%insn_00edd) > 1
        %error "LONG_00EDD"
    %endif
    times 1 - ($ - %%insn_00edd) db 0
    %%insn_00ede:
    mov [bp-0x2b7c],ax ; 00EDE 898684D4
    %if ($ - %%insn_00ede) > 4
        %error "LONG_00EDE"
    %endif
    times 4 - ($ - %%insn_00ede) db 0
    %%insn_00ee2:
    pusha ; 00EE2 60
    %if ($ - %%insn_00ee2) > 1
        %error "LONG_00EE2"
    %endif
    times 1 - ($ - %%insn_00ee2) db 0
    %%insn_00ee3:
    push ds ; 00EE3 1E
    %if ($ - %%insn_00ee3) > 1
        %error "LONG_00EE3"
    %endif
    times 1 - ($ - %%insn_00ee3) db 0
    %%insn_00ee4:
    mov ds,word [bp-0x2aae] ; 00EE4 8E9E52D5
    %if ($ - %%insn_00ee4) > 4
        %error "LONG_00EE4"
    %endif
    times 4 - ($ - %%insn_00ee4) db 0
    %%insn_00ee8:
    mov ax,[bp-0x2aac] ; 00EE8 8B8654D5
    %if ($ - %%insn_00ee8) > 4
        %error "LONG_00EE8"
    %endif
    times 4 - ($ - %%insn_00ee8) db 0
    %%insn_00eec:
    mov dword [bp-0x2b92],0x10000 ; 00EEC 66C7866ED400000100
    %if ($ - %%insn_00eec) > 9
        %error "LONG_00EEC"
    %endif
    times 9 - ($ - %%insn_00eec) db 0
    %%insn_00ef5:
    mov word [bp-0x2b8e],0x0 ; 00EF5 C78672D40000
    %if ($ - %%insn_00ef5) > 6
        %error "LONG_00EF5"
    %endif
    times 6 - ($ - %%insn_00ef5) db 0
    %%insn_00efb:
    mov word [bp-0x2b8c],0x0 ; 00EFB C78674D40000
    %if ($ - %%insn_00efb) > 6
        %error "LONG_00EFB"
    %endif
    times 6 - ($ - %%insn_00efb) db 0
    %%insn_00f01:
    mov [bp-0x2b8a],ax ; 00F01 898676D4
    %if ($ - %%insn_00f01) > 4
        %error "LONG_00F01"
    %endif
    times 4 - ($ - %%insn_00f01) db 0
    %%insn_00f05:
    mov ax,[bp-0x2ab0] ; 00F05 8B8650D5
    %if ($ - %%insn_00f05) > 4
        %error "LONG_00F05"
    %endif
    times 4 - ($ - %%insn_00f05) db 0
    %%insn_00f09:
    mov [bp-0x2b88],ax ; 00F09 898678D4
    %if ($ - %%insn_00f09) > 4
        %error "LONG_00F09"
    %endif
    times 4 - ($ - %%insn_00f09) db 0
    %%insn_00f0d:
    mov al,[bp-0x3076] ; 00F0D 8A868ACF
    %if ($ - %%insn_00f0d) > 4
        %error "LONG_00F0D"
    %endif
    times 4 - ($ - %%insn_00f0d) db 0
    db 0x32, 0xE4 ; 00F11 32E4 | xor ah,ah | encoding preserved
    %%insn_00f13:
    shl eax,byte 0x10 ; 00F13 66C1E010
    %if ($ - %%insn_00f13) > 4
        %error "LONG_00F13"
    %endif
    times 4 - ($ - %%insn_00f13) db 0
    %%insn_00f17:
    mov [bp-0x2b86],eax ; 00F17 6689867AD4
    %if ($ - %%insn_00f17) > 5
        %error "LONG_00F17"
    %endif
    times 5 - ($ - %%insn_00f17) db 0
    %%insn_00f1c:
    mov ah,0xb ; 00F1C B40B
    %if ($ - %%insn_00f1c) > 2
        %error "LONG_00F1C"
    %endif
    times 2 - ($ - %%insn_00f1c) db 0
    %%insn_00f1e:
    mov si,0xd46e ; 00F1E BE6ED4
    %if ($ - %%insn_00f1e) > 3
        %error "LONG_00F1E"
    %endif
    times 3 - ($ - %%insn_00f1e) db 0
    %%insn_00f21:
    call word far [cs:0x3688] ; 00F21 2EFF1E8836
    %if ($ - %%insn_00f21) > 5
        %error "LONG_00F21"
    %endif
    times 5 - ($ - %%insn_00f21) db 0
    %%insn_00f26:
    pop ds ; 00F26 1F
    %if ($ - %%insn_00f26) > 1
        %error "LONG_00F26"
    %endif
    times 1 - ($ - %%insn_00f26) db 0
    %%insn_00f27:
    popa ; 00F27 61
    %if ($ - %%insn_00f27) > 1
        %error "LONG_00F27"
    %endif
    times 1 - ($ - %%insn_00f27) db 0
    %%insn_00f28:
    mov word [bp-0x30ce],0x1 ; 00F28 C78632CF0100
    %if ($ - %%insn_00f28) > 6
        %error "LONG_00F28"
    %endif
    times 6 - ($ - %%insn_00f28) db 0
    %%insn_00f2e:
    mov es,word [bp-0x2aa8] ; 00F2E 8E8658D5
    %if ($ - %%insn_00f2e) > 4
        %error "LONG_00F2E"
    %endif
    times 4 - ($ - %%insn_00f2e) db 0
    %%insn_00f32:
    ret ; 00F32 C3
    %if ($ - %%insn_00f32) > 1
        %error "LONG_00F32"
    %endif
    times 1 - ($ - %%insn_00f32) db 0
    %if ($ - %%fragment_start) != 743
        %error "SIZE_00C4C"
    %endif
%endmacro
