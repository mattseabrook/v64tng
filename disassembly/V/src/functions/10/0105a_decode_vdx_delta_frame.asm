; Linear entry 0105A (1000:105a)
; Ghidra working symbol: FUN_1000_105a
; Cross-version mapped VDX delta-frame/render core.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_decode_vdx_delta_frame_part_00 0
    %%fragment_start:
decode_vdx_delta_frame:
    %%insn_0105a:
    cmp ah,0x77 ; 0105A 80FC77
    %if ($ - %%insn_0105a) > 3
        %error "LONG_0105A"
    %endif
    times 3 - ($ - %%insn_0105a) db 0
    %%insn_0105d:
    jnz short 0x1087 ; 0105D 7528
    %if ($ - %%insn_0105d) > 2
        %error "LONG_0105D"
    %endif
    times 2 - ($ - %%insn_0105d) db 0
    %%insn_0105f:
    push ds ; 0105F 1E
    %if ($ - %%insn_0105f) > 1
        %error "LONG_0105F"
    %endif
    times 1 - ($ - %%insn_0105f) db 0
    %%insn_01060:
    push es ; 01060 06
    %if ($ - %%insn_01060) > 1
        %error "LONG_01060"
    %endif
    times 1 - ($ - %%insn_01060) db 0
    %%insn_01061:
    mov ax,[si+0x6] ; 01061 8B4406
    %if ($ - %%insn_01061) > 3
        %error "LONG_01061"
    %endif
    times 3 - ($ - %%insn_01061) db 0
    %%insn_01064:
    mov [cs:0x2383],ah ; 01064 2E88268323
    %if ($ - %%insn_01064) > 5
        %error "LONG_01064"
    %endif
    times 5 - ($ - %%insn_01064) db 0
    %%insn_01069:
    mov [cs:0x2386],al ; 01069 2EA28623
    %if ($ - %%insn_01069) > 4
        %error "LONG_01069"
    %endif
    times 4 - ($ - %%insn_01069) db 0
    %%insn_0106d:
    mov ax,[bp-0x2aac] ; 0106D 8B8654D5
    %if ($ - %%insn_0106d) > 4
        %error "LONG_0106D"
    %endif
    times 4 - ($ - %%insn_0106d) db 0
    %%insn_01071:
    mov ds,ax ; 01071 8ED8
    %if ($ - %%insn_01071) > 2
        %error "LONG_01071"
    %endif
    times 2 - ($ - %%insn_01071) db 0
    %%insn_01073:
    call 0x21b ; 01073 E8A5F1
    %if ($ - %%insn_01073) > 3
        %error "LONG_01073"
    %endif
    times 3 - ($ - %%insn_01073) db 0
    %%insn_01076:
    mov ax,[bp-0x2aaa] ; 01076 8B8656D5
    %if ($ - %%insn_01076) > 4
        %error "LONG_01076"
    %endif
    times 4 - ($ - %%insn_01076) db 0
    %%insn_0107a:
    mov es,ax ; 0107A 8EC0
    %if ($ - %%insn_0107a) > 2
        %error "LONG_0107A"
    %endif
    times 2 - ($ - %%insn_0107a) db 0
    db 0x33, 0xF6 ; 0107C 33F6 | xor si,si | encoding preserved
    db 0x33, 0xFF ; 0107E 33FF | xor di,di | encoding preserved
    %%insn_01080:
    call 0x236a ; 01080 E8E712
    %if ($ - %%insn_01080) > 3
        %error "LONG_01080"
    %endif
    times 3 - ($ - %%insn_01080) db 0
    %%insn_01083:
    pop es ; 01083 07
    %if ($ - %%insn_01083) > 1
        %error "LONG_01083"
    %endif
    times 1 - ($ - %%insn_01083) db 0
    %%insn_01084:
    pop ds ; 01084 1F
    %if ($ - %%insn_01084) > 1
        %error "LONG_01084"
    %endif
    times 1 - ($ - %%insn_01084) db 0
    %%insn_01085:
    jmp short 0x108a ; 01085 EB03
    %if ($ - %%insn_01085) > 2
        %error "LONG_01085"
    %endif
    times 2 - ($ - %%insn_01085) db 0
    %%insn_01087:
    call 0x21b ; 01087 E891F1
    %if ($ - %%insn_01087) > 3
        %error "LONG_01087"
    %endif
    times 3 - ($ - %%insn_01087) db 0
    %%insn_0108a:
    cmp word [bp-0x30de],0x0 ; 0108A 83BE22CF00
    %if ($ - %%insn_0108a) > 5
        %error "LONG_0108A"
    %endif
    times 5 - ($ - %%insn_0108a) db 0
    %%insn_0108f:
    jz short 0x1094 ; 0108F 7403
    %if ($ - %%insn_0108f) > 2
        %error "LONG_0108F"
    %endif
    times 2 - ($ - %%insn_0108f) db 0
    %%insn_01091:
    jmp 0x2182 ; 01091 E9EE10
    %if ($ - %%insn_01091) > 3
        %error "LONG_01091"
    %endif
    times 3 - ($ - %%insn_01091) db 0
    %%insn_01094:
    cmp byte [bp-0x2606],0x2 ; 01094 80BEFAD902
    %if ($ - %%insn_01094) > 5
        %error "LONG_01094"
    %endif
    times 5 - ($ - %%insn_01094) db 0
    %%insn_01099:
    jnz short 0x109e ; 01099 7503
    %if ($ - %%insn_01099) > 2
        %error "LONG_01099"
    %endif
    times 2 - ($ - %%insn_01099) db 0
    %%insn_0109b:
    jmp 0x169c ; 0109B E9FE05
    %if ($ - %%insn_0109b) > 3
        %error "LONG_0109B"
    %endif
    times 3 - ($ - %%insn_0109b) db 0
    db 0x33, 0xF6 ; 0109E 33F6 | xor si,si | encoding preserved
    %%insn_010a0:
    mov ax,[si] ; 010A0 8B04
    %if ($ - %%insn_010a0) > 2
        %error "LONG_010A0"
    %endif
    times 2 - ($ - %%insn_010a0) db 0
    %%insn_010a2:
    add si,0x2 ; 010A2 83C602
    %if ($ - %%insn_010a2) > 3
        %error "LONG_010A2"
    %endif
    times 3 - ($ - %%insn_010a2) db 0
    db 0x23, 0xC0 ; 010A5 23C0 | and ax,ax | encoding preserved
    %%insn_010a7:
    jz short 0x10b1 ; 010A7 7408
    %if ($ - %%insn_010a7) > 2
        %error "LONG_010A7"
    %endif
    times 2 - ($ - %%insn_010a7) db 0
    %%insn_010a9:
    push ax ; 010A9 50
    %if ($ - %%insn_010a9) > 1
        %error "LONG_010A9"
    %endif
    times 1 - ($ - %%insn_010a9) db 0
    %%insn_010aa:
    call 0x40d ; 010AA E860F3
    %if ($ - %%insn_010aa) > 3
        %error "LONG_010AA"
    %endif
    times 3 - ($ - %%insn_010aa) db 0
    %%insn_010ad:
    pop si ; 010AD 5E
    %if ($ - %%insn_010ad) > 1
        %error "LONG_010AD"
    %endif
    times 1 - ($ - %%insn_010ad) db 0
    %%insn_010ae:
    add si,0x2 ; 010AE 83C602
    %if ($ - %%insn_010ae) > 3
        %error "LONG_010AE"
    %endif
    times 3 - ($ - %%insn_010ae) db 0
    %%insn_010b1:
    mov word [bp-0x309e],0xd28e ; 010B1 C78662CF8ED2
    %if ($ - %%insn_010b1) > 6
        %error "LONG_010B1"
    %endif
    times 6 - ($ - %%insn_010b1) db 0
    %%insn_010b7:
    nop ; 010B7 90
    %if ($ - %%insn_010b7) > 1
        %error "LONG_010B7"
    %endif
    times 1 - ($ - %%insn_010b7) db 0
    %%insn_010b8:
    mov bx,[bp-0x309e] ; 010B8 8B9E62CF
    %if ($ - %%insn_010b8) > 4
        %error "LONG_010B8"
    %endif
    times 4 - ($ - %%insn_010b8) db 0
    %%insn_010bc:
    mov di,[ss:bx] ; 010BC 368B3F
    %if ($ - %%insn_010bc) > 3
        %error "LONG_010BC"
    %endif
    times 3 - ($ - %%insn_010bc) db 0
    %%insn_010bf:
    cmp di,0xffffffffffffffff ; 010BF 83FFFF
    %if ($ - %%insn_010bf) > 3
        %error "LONG_010BF"
    %endif
    times 3 - ($ - %%insn_010bf) db 0
    %%insn_010c2:
    jnz short 0x10c7 ; 010C2 7503
    %if ($ - %%insn_010c2) > 2
        %error "LONG_010C2"
    %endif
    times 2 - ($ - %%insn_010c2) db 0
    %%insn_010c4:
    jmp 0x1396 ; 010C4 E9CF02
    %if ($ - %%insn_010c4) > 3
        %error "LONG_010C4"
    %endif
    times 3 - ($ - %%insn_010c4) db 0
    %%insn_010c7:
    cmp byte [ss:bx+0x2],0x0 ; 010C7 36807F0200
    %if ($ - %%insn_010c7) > 5
        %error "LONG_010C7"
    %endif
    times 5 - ($ - %%insn_010c7) db 0
    %%insn_010cc:
    jnz 0x1398 ; 010CC 0F85C802
    %if ($ - %%insn_010cc) > 4
        %error "LONG_010CC"
    %endif
    times 4 - ($ - %%insn_010cc) db 0
    %%insn_010d0:
    mov ax,[bp+di+0x2] ; 010D0 8B4302
    %if ($ - %%insn_010d0) > 3
        %error "LONG_010D0"
    %endif
    times 3 - ($ - %%insn_010d0) db 0
    db 0x22, 0xC0 ; 010D3 22C0 | and al,al | encoding preserved
    %%insn_010d5:
    js short 0x10e8 ; 010D5 7811
    %if ($ - %%insn_010d5) > 2
        %error "LONG_010D5"
    %endif
    times 2 - ($ - %%insn_010d5) db 0
    %%insn_010d7:
    cmp al,[bp-0x3076] ; 010D7 3A868ACF
    %if ($ - %%insn_010d7) > 4
        %error "LONG_010D7"
    %endif
    times 4 - ($ - %%insn_010d7) db 0
    %%insn_010db:
    jz short 0x10e8 ; 010DB 740B
    %if ($ - %%insn_010db) > 2
        %error "LONG_010DB"
    %endif
    times 2 - ($ - %%insn_010db) db 0
    db 0x32, 0xE4 ; 010DD 32E4 | xor ah,ah | encoding preserved
    %%insn_010df:
    mov [bp-0x3076],al ; 010DF 88868ACF
    %if ($ - %%insn_010df) > 4
        %error "LONG_010DF"
    %endif
    times 4 - ($ - %%insn_010df) db 0
    %%insn_010e3:
    call word near [ss:0xd660] ; 010E3 36FF1660D6
    %if ($ - %%insn_010e3) > 5
        %error "LONG_010E3"
    %endif
    times 5 - ($ - %%insn_010e3) db 0
    db 0x32, 0xE4 ; 010E8 32E4 | xor ah,ah | encoding preserved
    %%insn_010ea:
    mov al,[si] ; 010EA 8A04
    %if ($ - %%insn_010ea) > 2
        %error "LONG_010EA"
    %endif
    times 2 - ($ - %%insn_010ea) db 0
    %%insn_010ec:
    inc si ; 010EC 46
    %if ($ - %%insn_010ec) > 1
        %error "LONG_010EC"
    %endif
    times 1 - ($ - %%insn_010ec) db 0
    db 0x22, 0xC0 ; 010ED 22C0 | and al,al | encoding preserved
    %%insn_010ef:
    js 0x12c1 ; 010EF 0F88CE01
    %if ($ - %%insn_010ef) > 4
        %error "LONG_010EF"
    %endif
    times 4 - ($ - %%insn_010ef) db 0
    db 0x3D, 0x60, 0x00 ; 010F3 3D6000 | cmp ax,0x60 | encoding preserved
    %%insn_010f6:
    jnc 0x11d2 ; 010F6 0F83D800
    %if ($ - %%insn_010f6) > 4
        %error "LONG_010F6"
    %endif
    times 4 - ($ - %%insn_010f6) db 0
    %%insn_010fa:
    mov bx,0xd48e ; 010FA BB8ED4
    %if ($ - %%insn_010fa) > 3
        %error "LONG_010FA"
    %endif
    times 3 - ($ - %%insn_010fa) db 0
    %%insn_010fd:
    shl ax,1 ; 010FD D1E0
    %if ($ - %%insn_010fd) > 2
        %error "LONG_010FD"
    %endif
    times 2 - ($ - %%insn_010fd) db 0
    db 0x03, 0xD8 ; 010FF 03D8 | add bx,ax | encoding preserved
    %%insn_01101:
    mov dx,[ss:bx] ; 01101 368B17
    %if ($ - %%insn_01101) > 3
        %error "LONG_01101"
    %endif
    times 3 - ($ - %%insn_01101) db 0
    %%insn_01104:
    mov ax,[si] ; 01104 8B04
    %if ($ - %%insn_01104) > 2
        %error "LONG_01104"
    %endif
    times 2 - ($ - %%insn_01104) db 0
    %%insn_01106:
    add si,0x2 ; 01106 83C602
    %if ($ - %%insn_01106) > 3
        %error "LONG_01106"
    %endif
    times 3 - ($ - %%insn_01106) db 0
    db 0x8B, 0xD8 ; 01109 8BD8 | mov bx,ax | encoding preserved
    db 0x8B, 0xCF ; 0110B 8BCF | mov cx,di | encoding preserved
    %%insn_0110d:
    mov di,[bp+di] ; 0110D 8B3B
    %if ($ - %%insn_0110d) > 2
        %error "LONG_0110D"
    %endif
    times 2 - ($ - %%insn_0110d) db 0
    %%insn_0110f:
    mov ds,word [bp-0x2aa8] ; 0110F 8E9E58D5
    %if ($ - %%insn_0110f) > 4
        %error "LONG_0110F"
    %endif
    times 4 - ($ - %%insn_0110f) db 0
    db 0x8B, 0xC2 ; 01113 8BC2 | mov ax,dx | encoding preserved
    db 0x8B, 0xD3 ; 01115 8BD3 | mov dx,bx | encoding preserved
    %%insn_01117:
    test ah,0x20 ; 01117 F6C420
    %if ($ - %%insn_01117) > 3
        %error "LONG_01117"
    %endif
    times 3 - ($ - %%insn_01117) db 0
    %%insn_0111a:
    jnz short 0x111e ; 0111A 7502
    %if ($ - %%insn_0111a) > 2
        %error "LONG_0111A"
    %endif
    times 2 - ($ - %%insn_0111a) db 0
    db 0x8A, 0xD7 ; 0111C 8AD7 | mov dl,bh | encoding preserved
    %%insn_0111e:
    test ah,0x10 ; 0111E F6C410
    %if ($ - %%insn_0111e) > 3
        %error "LONG_0111E"
    %endif
    times 3 - ($ - %%insn_0111e) db 0
    %%insn_01121:
    jz short 0x1125 ; 01121 7402
    %if ($ - %%insn_01121) > 2
        %error "LONG_01121"
    %endif
    times 2 - ($ - %%insn_01121) db 0
    db 0x8A, 0xF3 ; 01123 8AF3 | mov dh,bl | encoding preserved
    %%insn_01125:
    shl edx,byte 0x10 ; 01125 66C1E210
    %if ($ - %%insn_01125) > 4
        %error "LONG_01125"
    %endif
    times 4 - ($ - %%insn_01125) db 0
    db 0x8B, 0xD3 ; 01129 8BD3 | mov dx,bx | encoding preserved
    %%insn_0112b:
    test ah,0x80 ; 0112B F6C480
    %if ($ - %%insn_0112b) > 3
        %error "LONG_0112B"
    %endif
    times 3 - ($ - %%insn_0112b) db 0
    %%insn_0112e:
    jnz short 0x1132 ; 0112E 7502
    %if ($ - %%insn_0112e) > 2
        %error "LONG_0112E"
    %endif
    times 2 - ($ - %%insn_0112e) db 0
    db 0x8A, 0xD7 ; 01130 8AD7 | mov dl,bh | encoding preserved
    %%insn_01132:
    test ah,0x40 ; 01132 F6C440
    %if ($ - %%insn_01132) > 3
        %error "LONG_01132"
    %endif
    times 3 - ($ - %%insn_01132) db 0
    %%insn_01135:
    jz short 0x1139 ; 01135 7402
    %if ($ - %%insn_01135) > 2
        %error "LONG_01135"
    %endif
    times 2 - ($ - %%insn_01135) db 0
    db 0x8A, 0xF3 ; 01137 8AF3 | mov dh,bl | encoding preserved
    %%insn_01139:
    mov [di],edx ; 01139 668915
    %if ($ - %%insn_01139) > 3
        %error "LONG_01139"
    %endif
    times 3 - ($ - %%insn_01139) db 0
    %%insn_0113c:
    shl ax,byte 0x4 ; 0113C C1E004
    %if ($ - %%insn_0113c) > 3
        %error "LONG_0113C"
    %endif
    times 3 - ($ - %%insn_0113c) db 0
    %%insn_0113f:
    add di,[bp-0x2996] ; 0113F 03BE6AD6
    %if ($ - %%insn_0113f) > 4
        %error "LONG_0113F"
    %endif
    times 4 - ($ - %%insn_0113f) db 0
    db 0x8B, 0xD3 ; 01143 8BD3 | mov dx,bx | encoding preserved
    %%insn_01145:
    test ah,0x20 ; 01145 F6C420
    %if ($ - %%insn_01145) > 3
        %error "LONG_01145"
    %endif
    times 3 - ($ - %%insn_01145) db 0
    %%insn_01148:
    jnz short 0x114c ; 01148 7502
    %if ($ - %%insn_01148) > 2
        %error "LONG_01148"
    %endif
    times 2 - ($ - %%insn_01148) db 0
    db 0x8A, 0xD7 ; 0114A 8AD7 | mov dl,bh | encoding preserved
    %%insn_0114c:
    test ah,0x10 ; 0114C F6C410
    %if ($ - %%insn_0114c) > 3
        %error "LONG_0114C"
    %endif
    times 3 - ($ - %%insn_0114c) db 0
    %%insn_0114f:
    jz short 0x1153 ; 0114F 7402
    %if ($ - %%insn_0114f) > 2
        %error "LONG_0114F"
    %endif
    times 2 - ($ - %%insn_0114f) db 0
    db 0x8A, 0xF3 ; 01151 8AF3 | mov dh,bl | encoding preserved
    %%insn_01153:
    shl edx,byte 0x10 ; 01153 66C1E210
    %if ($ - %%insn_01153) > 4
        %error "LONG_01153"
    %endif
    times 4 - ($ - %%insn_01153) db 0
    db 0x8B, 0xD3 ; 01157 8BD3 | mov dx,bx | encoding preserved
    %%insn_01159:
    test ah,0x80 ; 01159 F6C480
    %if ($ - %%insn_01159) > 3
        %error "LONG_01159"
    %endif
    times 3 - ($ - %%insn_01159) db 0
    %%insn_0115c:
    jnz short 0x1160 ; 0115C 7502
    %if ($ - %%insn_0115c) > 2
        %error "LONG_0115C"
    %endif
    times 2 - ($ - %%insn_0115c) db 0
    db 0x8A, 0xD7 ; 0115E 8AD7 | mov dl,bh | encoding preserved
    %%insn_01160:
    test ah,0x40 ; 01160 F6C440
    %if ($ - %%insn_01160) > 3
        %error "LONG_01160"
    %endif
    times 3 - ($ - %%insn_01160) db 0
    %%insn_01163:
    jz short 0x1167 ; 01163 7402
    %if ($ - %%insn_01163) > 2
        %error "LONG_01163"
    %endif
    times 2 - ($ - %%insn_01163) db 0
    db 0x8A, 0xF3 ; 01165 8AF3 | mov dh,bl | encoding preserved
    %%insn_01167:
    mov [di],edx ; 01167 668915
    %if ($ - %%insn_01167) > 3
        %error "LONG_01167"
    %endif
    times 3 - ($ - %%insn_01167) db 0
    %%insn_0116a:
    shl ax,byte 0x4 ; 0116A C1E004
    %if ($ - %%insn_0116a) > 3
        %error "LONG_0116A"
    %endif
    times 3 - ($ - %%insn_0116a) db 0
    %%insn_0116d:
    add di,[bp-0x2996] ; 0116D 03BE6AD6
    %if ($ - %%insn_0116d) > 4
        %error "LONG_0116D"
    %endif
    times 4 - ($ - %%insn_0116d) db 0
    db 0x8B, 0xD3 ; 01171 8BD3 | mov dx,bx | encoding preserved
    %%insn_01173:
    test ah,0x20 ; 01173 F6C420
    %if ($ - %%insn_01173) > 3
        %error "LONG_01173"
    %endif
    times 3 - ($ - %%insn_01173) db 0
    %%insn_01176:
    jnz short 0x117a ; 01176 7502
    %if ($ - %%insn_01176) > 2
        %error "LONG_01176"
    %endif
    times 2 - ($ - %%insn_01176) db 0
    db 0x8A, 0xD7 ; 01178 8AD7 | mov dl,bh | encoding preserved
    %%insn_0117a:
    test ah,0x10 ; 0117A F6C410
    %if ($ - %%insn_0117a) > 3
        %error "LONG_0117A"
    %endif
    times 3 - ($ - %%insn_0117a) db 0
    %%insn_0117d:
    jz short 0x1181 ; 0117D 7402
    %if ($ - %%insn_0117d) > 2
        %error "LONG_0117D"
    %endif
    times 2 - ($ - %%insn_0117d) db 0
    db 0x8A, 0xF3 ; 0117F 8AF3 | mov dh,bl | encoding preserved
    %%insn_01181:
    shl edx,byte 0x10 ; 01181 66C1E210
    %if ($ - %%insn_01181) > 4
        %error "LONG_01181"
    %endif
    times 4 - ($ - %%insn_01181) db 0
    db 0x8B, 0xD3 ; 01185 8BD3 | mov dx,bx | encoding preserved
    %%insn_01187:
    test ah,0x80 ; 01187 F6C480
    %if ($ - %%insn_01187) > 3
        %error "LONG_01187"
    %endif
    times 3 - ($ - %%insn_01187) db 0
    %%insn_0118a:
    jnz short 0x118e ; 0118A 7502
    %if ($ - %%insn_0118a) > 2
        %error "LONG_0118A"
    %endif
    times 2 - ($ - %%insn_0118a) db 0
    db 0x8A, 0xD7 ; 0118C 8AD7 | mov dl,bh | encoding preserved
    %%insn_0118e:
    test ah,0x40 ; 0118E F6C440
    %if ($ - %%insn_0118e) > 3
        %error "LONG_0118E"
    %endif
    times 3 - ($ - %%insn_0118e) db 0
    %%insn_01191:
    jz short 0x1195 ; 01191 7402
    %if ($ - %%insn_01191) > 2
        %error "LONG_01191"
    %endif
    times 2 - ($ - %%insn_01191) db 0
    db 0x8A, 0xF3 ; 01193 8AF3 | mov dh,bl | encoding preserved
    %%insn_01195:
    mov [di],edx ; 01195 668915
    %if ($ - %%insn_01195) > 3
        %error "LONG_01195"
    %endif
    times 3 - ($ - %%insn_01195) db 0
    %%insn_01198:
    shl ax,byte 0x4 ; 01198 C1E004
    %if ($ - %%insn_01198) > 3
        %error "LONG_01198"
    %endif
    times 3 - ($ - %%insn_01198) db 0
    %%insn_0119b:
    add di,[bp-0x2996] ; 0119B 03BE6AD6
    %if ($ - %%insn_0119b) > 4
        %error "LONG_0119B"
    %endif
    times 4 - ($ - %%insn_0119b) db 0
    db 0x8B, 0xD3 ; 0119F 8BD3 | mov dx,bx | encoding preserved
    %%insn_011a1:
    test ah,0x20 ; 011A1 F6C420
    %if ($ - %%insn_011a1) > 3
        %error "LONG_011A1"
    %endif
    times 3 - ($ - %%insn_011a1) db 0
    %%insn_011a4:
    jnz short 0x11a8 ; 011A4 7502
    %if ($ - %%insn_011a4) > 2
        %error "LONG_011A4"
    %endif
    times 2 - ($ - %%insn_011a4) db 0
    db 0x8A, 0xD7 ; 011A6 8AD7 | mov dl,bh | encoding preserved
    %%insn_011a8:
    test ah,0x10 ; 011A8 F6C410
    %if ($ - %%insn_011a8) > 3
        %error "LONG_011A8"
    %endif
    times 3 - ($ - %%insn_011a8) db 0
    %%insn_011ab:
    jz short 0x11af ; 011AB 7402
    %if ($ - %%insn_011ab) > 2
        %error "LONG_011AB"
    %endif
    times 2 - ($ - %%insn_011ab) db 0
    db 0x8A, 0xF3 ; 011AD 8AF3 | mov dh,bl | encoding preserved
    %%insn_011af:
    shl edx,byte 0x10 ; 011AF 66C1E210
    %if ($ - %%insn_011af) > 4
        %error "LONG_011AF"
    %endif
    times 4 - ($ - %%insn_011af) db 0
    db 0x8B, 0xD3 ; 011B3 8BD3 | mov dx,bx | encoding preserved
    %%insn_011b5:
    test ah,0x80 ; 011B5 F6C480
    %if ($ - %%insn_011b5) > 3
        %error "LONG_011B5"
    %endif
    times 3 - ($ - %%insn_011b5) db 0
    %%insn_011b8:
    jnz short 0x11bc ; 011B8 7502
    %if ($ - %%insn_011b8) > 2
        %error "LONG_011B8"
    %endif
    times 2 - ($ - %%insn_011b8) db 0
    db 0x8A, 0xD7 ; 011BA 8AD7 | mov dl,bh | encoding preserved
    %%insn_011bc:
    test ah,0x40 ; 011BC F6C440
    %if ($ - %%insn_011bc) > 3
        %error "LONG_011BC"
    %endif
    times 3 - ($ - %%insn_011bc) db 0
    %%insn_011bf:
    jz short 0x11c3 ; 011BF 7402
    %if ($ - %%insn_011bf) > 2
        %error "LONG_011BF"
    %endif
    times 2 - ($ - %%insn_011bf) db 0
    db 0x8A, 0xF3 ; 011C1 8AF3 | mov dh,bl | encoding preserved
    %%insn_011c3:
    mov [di],edx ; 011C3 668915
    %if ($ - %%insn_011c3) > 3
        %error "LONG_011C3"
    %endif
    times 3 - ($ - %%insn_011c3) db 0
    %%insn_011c6:
    mov ds,word [bp-0x2aaa] ; 011C6 8E9E56D5
    %if ($ - %%insn_011c6) > 4
        %error "LONG_011C6"
    %endif
    times 4 - ($ - %%insn_011c6) db 0
    db 0x8B, 0xF9 ; 011CA 8BF9 | mov di,cx | encoding preserved
    %%insn_011cc:
    add di,0x4 ; 011CC 83C704
    %if ($ - %%insn_011cc) > 3
        %error "LONG_011CC"
    %endif
    times 3 - ($ - %%insn_011cc) db 0
    %%insn_011cf:
    jmp 0x10e8 ; 011CF E916FF
    %if ($ - %%insn_011cf) > 3
        %error "LONG_011CF"
    %endif
    times 3 - ($ - %%insn_011cf) db 0
    db 0x3D, 0x60, 0x00 ; 011D2 3D6000 | cmp ax,0x60 | encoding preserved
    %%insn_011d5:
    jnz short 0x1218 ; 011D5 7541
    %if ($ - %%insn_011d5) > 2
        %error "LONG_011D5"
    %endif
    times 2 - ($ - %%insn_011d5) db 0
    db 0x8B, 0xDF ; 011D7 8BDF | mov bx,di | encoding preserved
    %%insn_011d9:
    mov di,[bp+di] ; 011D9 8B3B
    %if ($ - %%insn_011d9) > 2
        %error "LONG_011D9"
    %endif
    times 2 - ($ - %%insn_011d9) db 0
    %%insn_011db:
    mov eax,[si] ; 011DB 668B04
    %if ($ - %%insn_011db) > 3
        %error "LONG_011DB"
    %endif
    times 3 - ($ - %%insn_011db) db 0
    db 0x66, 0x26, 0x89, 0x05 ; 011DE 66268905 | mov [es:di],eax | encoding preserved
    %%insn_011e2:
    add si,0x4 ; 011E2 83C604
    %if ($ - %%insn_011e2) > 3
        %error "LONG_011E2"
    %endif
    times 3 - ($ - %%insn_011e2) db 0
    %%insn_011e5:
    add di,[bp-0x2996] ; 011E5 03BE6AD6
    %if ($ - %%insn_011e5) > 4
        %error "LONG_011E5"
    %endif
    times 4 - ($ - %%insn_011e5) db 0
    %%insn_011e9:
    mov eax,[si] ; 011E9 668B04
    %if ($ - %%insn_011e9) > 3
        %error "LONG_011E9"
    %endif
    times 3 - ($ - %%insn_011e9) db 0
    db 0x66, 0x26, 0x89, 0x05 ; 011EC 66268905 | mov [es:di],eax | encoding preserved
    %%insn_011f0:
    add si,0x4 ; 011F0 83C604
    %if ($ - %%insn_011f0) > 3
        %error "LONG_011F0"
    %endif
    times 3 - ($ - %%insn_011f0) db 0
    %%insn_011f3:
    add di,[bp-0x2996] ; 011F3 03BE6AD6
    %if ($ - %%insn_011f3) > 4
        %error "LONG_011F3"
    %endif
    times 4 - ($ - %%insn_011f3) db 0
    %%insn_011f7:
    mov eax,[si] ; 011F7 668B04
    %if ($ - %%insn_011f7) > 3
        %error "LONG_011F7"
    %endif
    times 3 - ($ - %%insn_011f7) db 0
    db 0x66, 0x26, 0x89, 0x05 ; 011FA 66268905 | mov [es:di],eax | encoding preserved
    %%insn_011fe:
    add si,0x4 ; 011FE 83C604
    %if ($ - %%insn_011fe) > 3
        %error "LONG_011FE"
    %endif
    times 3 - ($ - %%insn_011fe) db 0
    %%insn_01201:
    add di,[bp-0x2996] ; 01201 03BE6AD6
    %if ($ - %%insn_01201) > 4
        %error "LONG_01201"
    %endif
    times 4 - ($ - %%insn_01201) db 0
    %%insn_01205:
    mov eax,[si] ; 01205 668B04
    %if ($ - %%insn_01205) > 3
        %error "LONG_01205"
    %endif
    times 3 - ($ - %%insn_01205) db 0
    db 0x66, 0x26, 0x89, 0x05 ; 01208 66268905 | mov [es:di],eax | encoding preserved
    %%insn_0120c:
    add si,0x4 ; 0120C 83C604
    %if ($ - %%insn_0120c) > 3
        %error "LONG_0120C"
    %endif
    times 3 - ($ - %%insn_0120c) db 0
    db 0x8B, 0xFB ; 0120F 8BFB | mov di,bx | encoding preserved
    %%insn_01211:
    add di,0x4 ; 01211 83C704
    %if ($ - %%insn_01211) > 3
        %error "LONG_01211"
    %endif
    times 3 - ($ - %%insn_01211) db 0
    %%insn_01214:
    jmp 0x10e8 ; 01214 E9D1FE
    %if ($ - %%insn_01214) > 3
        %error "LONG_01214"
    %endif
    times 3 - ($ - %%insn_01214) db 0
    %if ($ - %%fragment_start) != 445
        %error "SIZE_0105A"
    %endif
%endmacro

%macro emit_decode_vdx_delta_frame_part_01 0
    %%fragment_start:
    db 0x3D, 0x61, 0x00 ; 01218 3D6100 | cmp ax,0x61 | encoding preserved
    %%insn_0121b:
    jnz short 0x1225 ; 0121B 7508
    %if ($ - %%insn_0121b) > 2
        %error "LONG_0121B"
    %endif
    times 2 - ($ - %%insn_0121b) db 0
    %%insn_0121d:
    add word [bp-0x309e],0x4 ; 0121D 838662CF04
    %if ($ - %%insn_0121d) > 5
        %error "LONG_0121D"
    %endif
    times 5 - ($ - %%insn_0121d) db 0
    %%insn_01222:
    jmp 0x10b8 ; 01222 E993FE
    %if ($ - %%insn_01222) > 3
        %error "LONG_01222"
    %endif
    times 3 - ($ - %%insn_01222) db 0
    db 0x3D, 0x6C, 0x00 ; 01225 3D6C00 | cmp ax,0x6c | encoding preserved
    %%insn_01228:
    jnc short 0x1236 ; 01228 730C
    %if ($ - %%insn_01228) > 2
        %error "LONG_01228"
    %endif
    times 2 - ($ - %%insn_01228) db 0
    db 0x2D, 0x62, 0x00 ; 0122A 2D6200 | sub ax,0x62 | encoding preserved
    %%insn_0122d:
    shl ax,byte 0x2 ; 0122D C1E002
    %if ($ - %%insn_0122d) > 3
        %error "LONG_0122D"
    %endif
    times 3 - ($ - %%insn_0122d) db 0
    db 0x03, 0xF8 ; 01230 03F8 | add di,ax | encoding preserved
    %%insn_01232:
    jmp 0x10e8 ; 01232 E9B3FE
    %if ($ - %%insn_01232) > 3
        %error "LONG_01232"
    %endif
    times 3 - ($ - %%insn_01232) db 0
    %if ($ - %%fragment_start) != 29
        %error "SIZE_01218"
    %endif
%endmacro

%macro emit_decode_vdx_delta_frame_part_02 0
    %%fragment_start:
    db 0x3D, 0x76, 0x00 ; 01236 3D7600 | cmp ax,0x76 | encoding preserved
    %%insn_01239:
    jnc short 0x127e ; 01239 7343
    %if ($ - %%insn_01239) > 2
        %error "LONG_01239"
    %endif
    times 2 - ($ - %%insn_01239) db 0
    db 0x2D, 0x6B, 0x00 ; 0123B 2D6B00 | sub ax,0x6b | encoding preserved
    db 0x8B, 0xC8 ; 0123E 8BC8 | mov cx,ax | encoding preserved
    db 0x8B, 0xD1 ; 01240 8BD1 | mov dx,cx | encoding preserved
    %%insn_01242:
    shl dx,byte 0x2 ; 01242 C1E202
    %if ($ - %%insn_01242) > 3
        %error "LONG_01242"
    %endif
    times 3 - ($ - %%insn_01242) db 0
    db 0x03, 0xFA ; 01245 03FA | add di,dx | encoding preserved
    %%insn_01247:
    mov bx,[bp-0x2996] ; 01247 8B9E6AD6
    %if ($ - %%insn_01247) > 4
        %error "LONG_01247"
    %endif
    times 4 - ($ - %%insn_01247) db 0
    db 0x2B, 0xDA ; 0124B 2BDA | sub bx,dx | encoding preserved
    %%insn_0124d:
    push di ; 0124D 57
    %if ($ - %%insn_0124d) > 1
        %error "LONG_0124D"
    %endif
    times 1 - ($ - %%insn_0124d) db 0
    db 0x2B, 0xFA ; 0124E 2BFA | sub di,dx | encoding preserved
    %%insn_01250:
    mov di,[bp+di] ; 01250 8B3B
    %if ($ - %%insn_01250) > 2
        %error "LONG_01250"
    %endif
    times 2 - ($ - %%insn_01250) db 0
    %%insn_01252:
    mov al,[si] ; 01252 8A04
    %if ($ - %%insn_01252) > 2
        %error "LONG_01252"
    %endif
    times 2 - ($ - %%insn_01252) db 0
    %%insn_01254:
    inc si ; 01254 46
    %if ($ - %%insn_01254) > 1
        %error "LONG_01254"
    %endif
    times 1 - ($ - %%insn_01254) db 0
    db 0x8A, 0xE0 ; 01255 8AE0 | mov ah,al | encoding preserved
    db 0x8B, 0xD0 ; 01257 8BD0 | mov dx,ax | encoding preserved
    %%insn_01259:
    shl eax,byte 0x10 ; 01259 66C1E010
    %if ($ - %%insn_01259) > 4
        %error "LONG_01259"
    %endif
    times 4 - ($ - %%insn_01259) db 0
    db 0x8B, 0xC2 ; 0125D 8BC2 | mov ax,dx | encoding preserved
    db 0x8B, 0xD1 ; 0125F 8BD1 | mov dx,cx | encoding preserved
    db 0xF3, 0x66, 0xAB ; 01261 F366AB | rep stosd | encoding preserved
    db 0x03, 0xFB ; 01264 03FB | add di,bx | encoding preserved
    db 0x8B, 0xCA ; 01266 8BCA | mov cx,dx | encoding preserved
    db 0xF3, 0x66, 0xAB ; 01268 F366AB | rep stosd | encoding preserved
    db 0x03, 0xFB ; 0126B 03FB | add di,bx | encoding preserved
    db 0x8B, 0xCA ; 0126D 8BCA | mov cx,dx | encoding preserved
    db 0xF3, 0x66, 0xAB ; 0126F F366AB | rep stosd | encoding preserved
    db 0x03, 0xFB ; 01272 03FB | add di,bx | encoding preserved
    db 0x8B, 0xCA ; 01274 8BCA | mov cx,dx | encoding preserved
    db 0xF3, 0x66, 0xAB ; 01276 F366AB | rep stosd | encoding preserved
    %%insn_01279:
    pop di ; 01279 5F
    %if ($ - %%insn_01279) > 1
        %error "LONG_01279"
    %endif
    times 1 - ($ - %%insn_01279) db 0
    %%insn_0127a:
    jmp 0x10e8 ; 0127A E96BFE
    %if ($ - %%insn_0127a) > 3
        %error "LONG_0127A"
    %endif
    times 3 - ($ - %%insn_0127a) db 0
    %if ($ - %%fragment_start) != 71
        %error "SIZE_01236"
    %endif
%endmacro

%macro emit_decode_vdx_delta_frame_part_03 0
    %%fragment_start:
    db 0x2D, 0x75, 0x00 ; 0127E 2D7500 | sub ax,0x75 | encoding preserved
    db 0x8B, 0xC8 ; 01281 8BC8 | mov cx,ax | encoding preserved
    %%insn_01283:
    nop ; 01283 90
    %if ($ - %%insn_01283) > 1
        %error "LONG_01283"
    %endif
    times 1 - ($ - %%insn_01283) db 0
    %%insn_01284:
    mov al,[si] ; 01284 8A04
    %if ($ - %%insn_01284) > 2
        %error "LONG_01284"
    %endif
    times 2 - ($ - %%insn_01284) db 0
    %%insn_01286:
    inc si ; 01286 46
    %if ($ - %%insn_01286) > 1
        %error "LONG_01286"
    %endif
    times 1 - ($ - %%insn_01286) db 0
    db 0x8A, 0xE0 ; 01287 8AE0 | mov ah,al | encoding preserved
    %%insn_01289:
    mov bx,[ss:di] ; 01289 368B1D
    %if ($ - %%insn_01289) > 3
        %error "LONG_01289"
    %endif
    times 3 - ($ - %%insn_01289) db 0
    db 0x8B, 0xD0 ; 0128C 8BD0 | mov dx,ax | encoding preserved
    %%insn_0128e:
    shl eax,byte 0x10 ; 0128E 66C1E010
    %if ($ - %%insn_0128e) > 4
        %error "LONG_0128E"
    %endif
    times 4 - ($ - %%insn_0128e) db 0
    db 0x8B, 0xC2 ; 01292 8BC2 | mov ax,dx | encoding preserved
    db 0x66, 0x26, 0x89, 0x07 ; 01294 66268907 | mov [es:bx],eax | encoding preserved
    %%insn_01298:
    add bx,[bp-0x2996] ; 01298 039E6AD6
    %if ($ - %%insn_01298) > 4
        %error "LONG_01298"
    %endif
    times 4 - ($ - %%insn_01298) db 0
    db 0x66, 0x26, 0x89, 0x07 ; 0129C 66268907 | mov [es:bx],eax | encoding preserved
    %%insn_012a0:
    add bx,[bp-0x2996] ; 012A0 039E6AD6
    %if ($ - %%insn_012a0) > 4
        %error "LONG_012A0"
    %endif
    times 4 - ($ - %%insn_012a0) db 0
    db 0x66, 0x26, 0x89, 0x07 ; 012A4 66268907 | mov [es:bx],eax | encoding preserved
    %%insn_012a8:
    add bx,[bp-0x2996] ; 012A8 039E6AD6
    %if ($ - %%insn_012a8) > 4
        %error "LONG_012A8"
    %endif
    times 4 - ($ - %%insn_012a8) db 0
    db 0x66, 0x26, 0x89, 0x07 ; 012AC 66268907 | mov [es:bx],eax | encoding preserved
    %%insn_012b0:
    add di,0x4 ; 012B0 83C704
    %if ($ - %%insn_012b0) > 3
        %error "LONG_012B0"
    %endif
    times 3 - ($ - %%insn_012b0) db 0
    %%insn_012b3:
    mov ds,word [bp-0x2aaa] ; 012B3 8E9E56D5
    %if ($ - %%insn_012b3) > 4
        %error "LONG_012B3"
    %endif
    times 4 - ($ - %%insn_012b3) db 0
    %%insn_012b7:
    dec cx ; 012B7 49
    %if ($ - %%insn_012b7) > 1
        %error "LONG_012B7"
    %endif
    times 1 - ($ - %%insn_012b7) db 0
    %%insn_012b8:
    jnz short 0x1284 ; 012B8 75CA
    %if ($ - %%insn_012b8) > 2
        %error "LONG_012B8"
    %endif
    times 2 - ($ - %%insn_012b8) db 0
    %%insn_012ba:
    jmp 0x10e8 ; 012BA E92BFE
    %if ($ - %%insn_012ba) > 3
        %error "LONG_012BA"
    %endif
    times 3 - ($ - %%insn_012ba) db 0
    %if ($ - %%fragment_start) != 63
        %error "SIZE_0127E"
    %endif
%endmacro

%macro emit_decode_vdx_delta_frame_part_04 0
    %%fragment_start:
    db 0x8A, 0xD0 ; 012C1 8AD0 | mov dl,al | encoding preserved
    %%insn_012c3:
    mov al,[si] ; 012C3 8A04
    %if ($ - %%insn_012c3) > 2
        %error "LONG_012C3"
    %endif
    times 2 - ($ - %%insn_012c3) db 0
    %%insn_012c5:
    inc si ; 012C5 46
    %if ($ - %%insn_012c5) > 1
        %error "LONG_012C5"
    %endif
    times 1 - ($ - %%insn_012c5) db 0
    db 0x8A, 0xF0 ; 012C6 8AF0 | mov dh,al | encoding preserved
    %%insn_012c8:
    mov ax,[si] ; 012C8 8B04
    %if ($ - %%insn_012c8) > 2
        %error "LONG_012C8"
    %endif
    times 2 - ($ - %%insn_012c8) db 0
    %%insn_012ca:
    add si,0x2 ; 012CA 83C602
    %if ($ - %%insn_012ca) > 3
        %error "LONG_012CA"
    %endif
    times 3 - ($ - %%insn_012ca) db 0
    db 0x8B, 0xD8 ; 012CD 8BD8 | mov bx,ax | encoding preserved
    db 0x8B, 0xCF ; 012CF 8BCF | mov cx,di | encoding preserved
    %%insn_012d1:
    mov di,[bp+di] ; 012D1 8B3B
    %if ($ - %%insn_012d1) > 2
        %error "LONG_012D1"
    %endif
    times 2 - ($ - %%insn_012d1) db 0
    %%insn_012d3:
    mov ds,word [bp-0x2aa8] ; 012D3 8E9E58D5
    %if ($ - %%insn_012d3) > 4
        %error "LONG_012D3"
    %endif
    times 4 - ($ - %%insn_012d3) db 0
    db 0x8B, 0xC2 ; 012D7 8BC2 | mov ax,dx | encoding preserved
    db 0x8B, 0xD3 ; 012D9 8BD3 | mov dx,bx | encoding preserved
    %%insn_012db:
    test ah,0x20 ; 012DB F6C420
    %if ($ - %%insn_012db) > 3
        %error "LONG_012DB"
    %endif
    times 3 - ($ - %%insn_012db) db 0
    %%insn_012de:
    jnz short 0x12e2 ; 012DE 7502
    %if ($ - %%insn_012de) > 2
        %error "LONG_012DE"
    %endif
    times 2 - ($ - %%insn_012de) db 0
    db 0x8A, 0xD7 ; 012E0 8AD7 | mov dl,bh | encoding preserved
    %%insn_012e2:
    test ah,0x10 ; 012E2 F6C410
    %if ($ - %%insn_012e2) > 3
        %error "LONG_012E2"
    %endif
    times 3 - ($ - %%insn_012e2) db 0
    %%insn_012e5:
    jz short 0x12e9 ; 012E5 7402
    %if ($ - %%insn_012e5) > 2
        %error "LONG_012E5"
    %endif
    times 2 - ($ - %%insn_012e5) db 0
    db 0x8A, 0xF3 ; 012E7 8AF3 | mov dh,bl | encoding preserved
    %%insn_012e9:
    shl edx,byte 0x10 ; 012E9 66C1E210
    %if ($ - %%insn_012e9) > 4
        %error "LONG_012E9"
    %endif
    times 4 - ($ - %%insn_012e9) db 0
    db 0x8B, 0xD3 ; 012ED 8BD3 | mov dx,bx | encoding preserved
    %%insn_012ef:
    test ah,0x80 ; 012EF F6C480
    %if ($ - %%insn_012ef) > 3
        %error "LONG_012EF"
    %endif
    times 3 - ($ - %%insn_012ef) db 0
    %%insn_012f2:
    jnz short 0x12f6 ; 012F2 7502
    %if ($ - %%insn_012f2) > 2
        %error "LONG_012F2"
    %endif
    times 2 - ($ - %%insn_012f2) db 0
    db 0x8A, 0xD7 ; 012F4 8AD7 | mov dl,bh | encoding preserved
    %%insn_012f6:
    test ah,0x40 ; 012F6 F6C440
    %if ($ - %%insn_012f6) > 3
        %error "LONG_012F6"
    %endif
    times 3 - ($ - %%insn_012f6) db 0
    %%insn_012f9:
    jz short 0x12fd ; 012F9 7402
    %if ($ - %%insn_012f9) > 2
        %error "LONG_012F9"
    %endif
    times 2 - ($ - %%insn_012f9) db 0
    db 0x8A, 0xF3 ; 012FB 8AF3 | mov dh,bl | encoding preserved
    %%insn_012fd:
    mov [di],edx ; 012FD 668915
    %if ($ - %%insn_012fd) > 3
        %error "LONG_012FD"
    %endif
    times 3 - ($ - %%insn_012fd) db 0
    %%insn_01300:
    shl ax,byte 0x4 ; 01300 C1E004
    %if ($ - %%insn_01300) > 3
        %error "LONG_01300"
    %endif
    times 3 - ($ - %%insn_01300) db 0
    %%insn_01303:
    add di,[bp-0x2996] ; 01303 03BE6AD6
    %if ($ - %%insn_01303) > 4
        %error "LONG_01303"
    %endif
    times 4 - ($ - %%insn_01303) db 0
    db 0x8B, 0xD3 ; 01307 8BD3 | mov dx,bx | encoding preserved
    %%insn_01309:
    test ah,0x20 ; 01309 F6C420
    %if ($ - %%insn_01309) > 3
        %error "LONG_01309"
    %endif
    times 3 - ($ - %%insn_01309) db 0
    %%insn_0130c:
    jnz short 0x1310 ; 0130C 7502
    %if ($ - %%insn_0130c) > 2
        %error "LONG_0130C"
    %endif
    times 2 - ($ - %%insn_0130c) db 0
    db 0x8A, 0xD7 ; 0130E 8AD7 | mov dl,bh | encoding preserved
    %%insn_01310:
    test ah,0x10 ; 01310 F6C410
    %if ($ - %%insn_01310) > 3
        %error "LONG_01310"
    %endif
    times 3 - ($ - %%insn_01310) db 0
    %%insn_01313:
    jz short 0x1317 ; 01313 7402
    %if ($ - %%insn_01313) > 2
        %error "LONG_01313"
    %endif
    times 2 - ($ - %%insn_01313) db 0
    db 0x8A, 0xF3 ; 01315 8AF3 | mov dh,bl | encoding preserved
    %%insn_01317:
    shl edx,byte 0x10 ; 01317 66C1E210
    %if ($ - %%insn_01317) > 4
        %error "LONG_01317"
    %endif
    times 4 - ($ - %%insn_01317) db 0
    db 0x8B, 0xD3 ; 0131B 8BD3 | mov dx,bx | encoding preserved
    %%insn_0131d:
    test ah,0x80 ; 0131D F6C480
    %if ($ - %%insn_0131d) > 3
        %error "LONG_0131D"
    %endif
    times 3 - ($ - %%insn_0131d) db 0
    %%insn_01320:
    jnz short 0x1324 ; 01320 7502
    %if ($ - %%insn_01320) > 2
        %error "LONG_01320"
    %endif
    times 2 - ($ - %%insn_01320) db 0
    db 0x8A, 0xD7 ; 01322 8AD7 | mov dl,bh | encoding preserved
    %%insn_01324:
    test ah,0x40 ; 01324 F6C440
    %if ($ - %%insn_01324) > 3
        %error "LONG_01324"
    %endif
    times 3 - ($ - %%insn_01324) db 0
    %%insn_01327:
    jz short 0x132b ; 01327 7402
    %if ($ - %%insn_01327) > 2
        %error "LONG_01327"
    %endif
    times 2 - ($ - %%insn_01327) db 0
    db 0x8A, 0xF3 ; 01329 8AF3 | mov dh,bl | encoding preserved
    %%insn_0132b:
    mov [di],edx ; 0132B 668915
    %if ($ - %%insn_0132b) > 3
        %error "LONG_0132B"
    %endif
    times 3 - ($ - %%insn_0132b) db 0
    %%insn_0132e:
    shl ax,byte 0x4 ; 0132E C1E004
    %if ($ - %%insn_0132e) > 3
        %error "LONG_0132E"
    %endif
    times 3 - ($ - %%insn_0132e) db 0
    %%insn_01331:
    add di,[bp-0x2996] ; 01331 03BE6AD6
    %if ($ - %%insn_01331) > 4
        %error "LONG_01331"
    %endif
    times 4 - ($ - %%insn_01331) db 0
    db 0x8B, 0xD3 ; 01335 8BD3 | mov dx,bx | encoding preserved
    %%insn_01337:
    test ah,0x20 ; 01337 F6C420
    %if ($ - %%insn_01337) > 3
        %error "LONG_01337"
    %endif
    times 3 - ($ - %%insn_01337) db 0
    %%insn_0133a:
    jnz short 0x133e ; 0133A 7502
    %if ($ - %%insn_0133a) > 2
        %error "LONG_0133A"
    %endif
    times 2 - ($ - %%insn_0133a) db 0
    db 0x8A, 0xD7 ; 0133C 8AD7 | mov dl,bh | encoding preserved
    %%insn_0133e:
    test ah,0x10 ; 0133E F6C410
    %if ($ - %%insn_0133e) > 3
        %error "LONG_0133E"
    %endif
    times 3 - ($ - %%insn_0133e) db 0
    %%insn_01341:
    jz short 0x1345 ; 01341 7402
    %if ($ - %%insn_01341) > 2
        %error "LONG_01341"
    %endif
    times 2 - ($ - %%insn_01341) db 0
    db 0x8A, 0xF3 ; 01343 8AF3 | mov dh,bl | encoding preserved
    %%insn_01345:
    shl edx,byte 0x10 ; 01345 66C1E210
    %if ($ - %%insn_01345) > 4
        %error "LONG_01345"
    %endif
    times 4 - ($ - %%insn_01345) db 0
    db 0x8B, 0xD3 ; 01349 8BD3 | mov dx,bx | encoding preserved
    %%insn_0134b:
    test ah,0x80 ; 0134B F6C480
    %if ($ - %%insn_0134b) > 3
        %error "LONG_0134B"
    %endif
    times 3 - ($ - %%insn_0134b) db 0
    %%insn_0134e:
    jnz short 0x1352 ; 0134E 7502
    %if ($ - %%insn_0134e) > 2
        %error "LONG_0134E"
    %endif
    times 2 - ($ - %%insn_0134e) db 0
    db 0x8A, 0xD7 ; 01350 8AD7 | mov dl,bh | encoding preserved
    %%insn_01352:
    test ah,0x40 ; 01352 F6C440
    %if ($ - %%insn_01352) > 3
        %error "LONG_01352"
    %endif
    times 3 - ($ - %%insn_01352) db 0
    %%insn_01355:
    jz short 0x1359 ; 01355 7402
    %if ($ - %%insn_01355) > 2
        %error "LONG_01355"
    %endif
    times 2 - ($ - %%insn_01355) db 0
    db 0x8A, 0xF3 ; 01357 8AF3 | mov dh,bl | encoding preserved
    %%insn_01359:
    mov [di],edx ; 01359 668915
    %if ($ - %%insn_01359) > 3
        %error "LONG_01359"
    %endif
    times 3 - ($ - %%insn_01359) db 0
    %%insn_0135c:
    shl ax,byte 0x4 ; 0135C C1E004
    %if ($ - %%insn_0135c) > 3
        %error "LONG_0135C"
    %endif
    times 3 - ($ - %%insn_0135c) db 0
    %%insn_0135f:
    add di,[bp-0x2996] ; 0135F 03BE6AD6
    %if ($ - %%insn_0135f) > 4
        %error "LONG_0135F"
    %endif
    times 4 - ($ - %%insn_0135f) db 0
    db 0x8B, 0xD3 ; 01363 8BD3 | mov dx,bx | encoding preserved
    %%insn_01365:
    test ah,0x20 ; 01365 F6C420
    %if ($ - %%insn_01365) > 3
        %error "LONG_01365"
    %endif
    times 3 - ($ - %%insn_01365) db 0
    %%insn_01368:
    jnz short 0x136c ; 01368 7502
    %if ($ - %%insn_01368) > 2
        %error "LONG_01368"
    %endif
    times 2 - ($ - %%insn_01368) db 0
    db 0x8A, 0xD7 ; 0136A 8AD7 | mov dl,bh | encoding preserved
    %%insn_0136c:
    test ah,0x10 ; 0136C F6C410
    %if ($ - %%insn_0136c) > 3
        %error "LONG_0136C"
    %endif
    times 3 - ($ - %%insn_0136c) db 0
    %%insn_0136f:
    jz short 0x1373 ; 0136F 7402
    %if ($ - %%insn_0136f) > 2
        %error "LONG_0136F"
    %endif
    times 2 - ($ - %%insn_0136f) db 0
    db 0x8A, 0xF3 ; 01371 8AF3 | mov dh,bl | encoding preserved
    %%insn_01373:
    shl edx,byte 0x10 ; 01373 66C1E210
    %if ($ - %%insn_01373) > 4
        %error "LONG_01373"
    %endif
    times 4 - ($ - %%insn_01373) db 0
    db 0x8B, 0xD3 ; 01377 8BD3 | mov dx,bx | encoding preserved
    %%insn_01379:
    test ah,0x80 ; 01379 F6C480
    %if ($ - %%insn_01379) > 3
        %error "LONG_01379"
    %endif
    times 3 - ($ - %%insn_01379) db 0
    %%insn_0137c:
    jnz short 0x1380 ; 0137C 7502
    %if ($ - %%insn_0137c) > 2
        %error "LONG_0137C"
    %endif
    times 2 - ($ - %%insn_0137c) db 0
    db 0x8A, 0xD7 ; 0137E 8AD7 | mov dl,bh | encoding preserved
    %%insn_01380:
    test ah,0x40 ; 01380 F6C440
    %if ($ - %%insn_01380) > 3
        %error "LONG_01380"
    %endif
    times 3 - ($ - %%insn_01380) db 0
    %%insn_01383:
    jz short 0x1387 ; 01383 7402
    %if ($ - %%insn_01383) > 2
        %error "LONG_01383"
    %endif
    times 2 - ($ - %%insn_01383) db 0
    db 0x8A, 0xF3 ; 01385 8AF3 | mov dh,bl | encoding preserved
    %%insn_01387:
    mov [di],edx ; 01387 668915
    %if ($ - %%insn_01387) > 3
        %error "LONG_01387"
    %endif
    times 3 - ($ - %%insn_01387) db 0
    %%insn_0138a:
    mov ds,word [bp-0x2aaa] ; 0138A 8E9E56D5
    %if ($ - %%insn_0138a) > 4
        %error "LONG_0138A"
    %endif
    times 4 - ($ - %%insn_0138a) db 0
    db 0x8B, 0xF9 ; 0138E 8BF9 | mov di,cx | encoding preserved
    %%insn_01390:
    add di,0x4 ; 01390 83C704
    %if ($ - %%insn_01390) > 3
        %error "LONG_01390"
    %endif
    times 3 - ($ - %%insn_01390) db 0
    %%insn_01393:
    jmp 0x10e8 ; 01393 E952FD
    %if ($ - %%insn_01393) > 3
        %error "LONG_01393"
    %endif
    times 3 - ($ - %%insn_01393) db 0
    %%insn_01396:
    ret ; 01396 C3
    %if ($ - %%insn_01396) > 1
        %error "LONG_01396"
    %endif
    times 1 - ($ - %%insn_01396) db 0
    %if ($ - %%fragment_start) != 214
        %error "SIZE_012C1"
    %endif
%endmacro

%macro emit_decode_vdx_delta_frame_part_05 0
    %%fragment_start:
    db 0x32, 0xE4 ; 01398 32E4 | xor ah,ah | encoding preserved
    %%insn_0139a:
    mov al,[si] ; 0139A 8A04
    %if ($ - %%insn_0139a) > 2
        %error "LONG_0139A"
    %endif
    times 2 - ($ - %%insn_0139a) db 0
    %%insn_0139c:
    inc si ; 0139C 46
    %if ($ - %%insn_0139c) > 1
        %error "LONG_0139C"
    %endif
    times 1 - ($ - %%insn_0139c) db 0
    db 0x22, 0xC0 ; 0139D 22C0 | and al,al | encoding preserved
    %%insn_0139f:
    js 0x1691 ; 0139F 0F88EE02
    %if ($ - %%insn_0139f) > 4
        %error "LONG_0139F"
    %endif
    times 4 - ($ - %%insn_0139f) db 0
    db 0x3D, 0x60, 0x00 ; 013A3 3D6000 | cmp ax,0x60 | encoding preserved
    %%insn_013a6:
    jnc 0x14d7 ; 013A6 0F832D01
    %if ($ - %%insn_013a6) > 4
        %error "LONG_013A6"
    %endif
    times 4 - ($ - %%insn_013a6) db 0
    %%insn_013aa:
    mov bx,0xd48e ; 013AA BB8ED4
    %if ($ - %%insn_013aa) > 3
        %error "LONG_013AA"
    %endif
    times 3 - ($ - %%insn_013aa) db 0
    %%insn_013ad:
    shl ax,1 ; 013AD D1E0
    %if ($ - %%insn_013ad) > 2
        %error "LONG_013AD"
    %endif
    times 2 - ($ - %%insn_013ad) db 0
    db 0x03, 0xD8 ; 013AF 03D8 | add bx,ax | encoding preserved
    %%insn_013b1:
    mov dx,[ss:bx] ; 013B1 368B17
    %if ($ - %%insn_013b1) > 3
        %error "LONG_013B1"
    %endif
    times 3 - ($ - %%insn_013b1) db 0
    %%insn_013b4:
    mov bx,[si] ; 013B4 8B1C
    %if ($ - %%insn_013b4) > 2
        %error "LONG_013B4"
    %endif
    times 2 - ($ - %%insn_013b4) db 0
    %%insn_013b6:
    add si,0x2 ; 013B6 83C602
    %if ($ - %%insn_013b6) > 3
        %error "LONG_013B6"
    %endif
    times 3 - ($ - %%insn_013b6) db 0
    %%insn_013b9:
    push di ; 013B9 57
    %if ($ - %%insn_013b9) > 1
        %error "LONG_013B9"
    %endif
    times 1 - ($ - %%insn_013b9) db 0
    %%insn_013ba:
    mov ax,[bp+di+0x2] ; 013BA 8B4302
    %if ($ - %%insn_013ba) > 3
        %error "LONG_013BA"
    %endif
    times 3 - ($ - %%insn_013ba) db 0
    %%insn_013bd:
    mov di,[bp+di] ; 013BD 8B3B
    %if ($ - %%insn_013bd) > 2
        %error "LONG_013BD"
    %endif
    times 2 - ($ - %%insn_013bd) db 0
    %%insn_013bf:
    cmp al,[bp-0x3076] ; 013BF 3A868ACF
    %if ($ - %%insn_013bf) > 4
        %error "LONG_013BF"
    %endif
    times 4 - ($ - %%insn_013bf) db 0
    %%insn_013c3:
    jz short 0x13d0 ; 013C3 740B
    %if ($ - %%insn_013c3) > 2
        %error "LONG_013C3"
    %endif
    times 2 - ($ - %%insn_013c3) db 0
    db 0x32, 0xE4 ; 013C5 32E4 | xor ah,ah | encoding preserved
    %%insn_013c7:
    mov [bp-0x3076],al ; 013C7 88868ACF
    %if ($ - %%insn_013c7) > 4
        %error "LONG_013C7"
    %endif
    times 4 - ($ - %%insn_013c7) db 0
    %%insn_013cb:
    call word near [ss:0xd660] ; 013CB 36FF1660D6
    %if ($ - %%insn_013cb) > 5
        %error "LONG_013CB"
    %endif
    times 5 - ($ - %%insn_013cb) db 0
    %%insn_013d0:
    mov ds,word [bp-0x2aa8] ; 013D0 8E9E58D5
    %if ($ - %%insn_013d0) > 4
        %error "LONG_013D0"
    %endif
    times 4 - ($ - %%insn_013d0) db 0
    db 0x8B, 0xC3 ; 013D4 8BC3 | mov ax,bx | encoding preserved
    %%insn_013d6:
    test dx,0x2000 ; 013D6 F7C20020
    %if ($ - %%insn_013d6) > 4
        %error "LONG_013D6"
    %endif
    times 4 - ($ - %%insn_013d6) db 0
    %%insn_013da:
    jnz short 0x13de ; 013DA 7502
    %if ($ - %%insn_013da) > 2
        %error "LONG_013DA"
    %endif
    times 2 - ($ - %%insn_013da) db 0
    db 0x8A, 0xC7 ; 013DC 8AC7 | mov al,bh | encoding preserved
    %%insn_013de:
    test dx,0x1000 ; 013DE F7C20010
    %if ($ - %%insn_013de) > 4
        %error "LONG_013DE"
    %endif
    times 4 - ($ - %%insn_013de) db 0
    %%insn_013e2:
    jz short 0x13e6 ; 013E2 7402
    %if ($ - %%insn_013e2) > 2
        %error "LONG_013E2"
    %endif
    times 2 - ($ - %%insn_013e2) db 0
    db 0x8A, 0xE3 ; 013E4 8AE3 | mov ah,bl | encoding preserved
    %%insn_013e6:
    shl eax,byte 0x10 ; 013E6 66C1E010
    %if ($ - %%insn_013e6) > 4
        %error "LONG_013E6"
    %endif
    times 4 - ($ - %%insn_013e6) db 0
    db 0x8B, 0xC3 ; 013EA 8BC3 | mov ax,bx | encoding preserved
    %%insn_013ec:
    test dh,0x80 ; 013EC F6C680
    %if ($ - %%insn_013ec) > 3
        %error "LONG_013EC"
    %endif
    times 3 - ($ - %%insn_013ec) db 0
    %%insn_013ef:
    jnz short 0x13f3 ; 013EF 7502
    %if ($ - %%insn_013ef) > 2
        %error "LONG_013EF"
    %endif
    times 2 - ($ - %%insn_013ef) db 0
    db 0x8A, 0xC7 ; 013F1 8AC7 | mov al,bh | encoding preserved
    %%insn_013f3:
    test dx,0x4000 ; 013F3 F7C20040
    %if ($ - %%insn_013f3) > 4
        %error "LONG_013F3"
    %endif
    times 4 - ($ - %%insn_013f3) db 0
    %%insn_013f7:
    jz short 0x13fb ; 013F7 7402
    %if ($ - %%insn_013f7) > 2
        %error "LONG_013F7"
    %endif
    times 2 - ($ - %%insn_013f7) db 0
    db 0x8A, 0xE3 ; 013F9 8AE3 | mov ah,bl | encoding preserved
    %%insn_013fb:
    mov [di],eax ; 013FB 668905
    %if ($ - %%insn_013fb) > 3
        %error "LONG_013FB"
    %endif
    times 3 - ($ - %%insn_013fb) db 0
    %%insn_013fe:
    shl dx,byte 0x4 ; 013FE C1E204
    %if ($ - %%insn_013fe) > 3
        %error "LONG_013FE"
    %endif
    times 3 - ($ - %%insn_013fe) db 0
    %%insn_01401:
    add di,[bp-0x2996] ; 01401 03BE6AD6
    %if ($ - %%insn_01401) > 4
        %error "LONG_01401"
    %endif
    times 4 - ($ - %%insn_01401) db 0
    %%insn_01405:
    jnc short 0x1418 ; 01405 7311
    %if ($ - %%insn_01405) > 2
        %error "LONG_01405"
    %endif
    times 2 - ($ - %%insn_01405) db 0
    %%insn_01407:
    mov al,[bp-0x3076] ; 01407 8A868ACF
    %if ($ - %%insn_01407) > 4
        %error "LONG_01407"
    %endif
    times 4 - ($ - %%insn_01407) db 0
    %%insn_0140b:
    inc al ; 0140B FEC0
    %if ($ - %%insn_0140b) > 2
        %error "LONG_0140B"
    %endif
    times 2 - ($ - %%insn_0140b) db 0
    db 0x32, 0xE4 ; 0140D 32E4 | xor ah,ah | encoding preserved
    %%insn_0140f:
    mov [bp-0x3076],al ; 0140F 88868ACF
    %if ($ - %%insn_0140f) > 4
        %error "LONG_0140F"
    %endif
    times 4 - ($ - %%insn_0140f) db 0
    %%insn_01413:
    call word near [ss:0xd660] ; 01413 36FF1660D6
    %if ($ - %%insn_01413) > 5
        %error "LONG_01413"
    %endif
    times 5 - ($ - %%insn_01413) db 0
    db 0x8B, 0xC3 ; 01418 8BC3 | mov ax,bx | encoding preserved
    %%insn_0141a:
    test dx,0x2000 ; 0141A F7C20020
    %if ($ - %%insn_0141a) > 4
        %error "LONG_0141A"
    %endif
    times 4 - ($ - %%insn_0141a) db 0
    %%insn_0141e:
    jnz short 0x1422 ; 0141E 7502
    %if ($ - %%insn_0141e) > 2
        %error "LONG_0141E"
    %endif
    times 2 - ($ - %%insn_0141e) db 0
    db 0x8A, 0xC7 ; 01420 8AC7 | mov al,bh | encoding preserved
    %%insn_01422:
    test dx,0x1000 ; 01422 F7C20010
    %if ($ - %%insn_01422) > 4
        %error "LONG_01422"
    %endif
    times 4 - ($ - %%insn_01422) db 0
    %%insn_01426:
    jz short 0x142a ; 01426 7402
    %if ($ - %%insn_01426) > 2
        %error "LONG_01426"
    %endif
    times 2 - ($ - %%insn_01426) db 0
    db 0x8A, 0xE3 ; 01428 8AE3 | mov ah,bl | encoding preserved
    %%insn_0142a:
    shl eax,byte 0x10 ; 0142A 66C1E010
    %if ($ - %%insn_0142a) > 4
        %error "LONG_0142A"
    %endif
    times 4 - ($ - %%insn_0142a) db 0
    db 0x8B, 0xC3 ; 0142E 8BC3 | mov ax,bx | encoding preserved
    %%insn_01430:
    test dh,0x80 ; 01430 F6C680
    %if ($ - %%insn_01430) > 3
        %error "LONG_01430"
    %endif
    times 3 - ($ - %%insn_01430) db 0
    %%insn_01433:
    jnz short 0x1437 ; 01433 7502
    %if ($ - %%insn_01433) > 2
        %error "LONG_01433"
    %endif
    times 2 - ($ - %%insn_01433) db 0
    db 0x8A, 0xC7 ; 01435 8AC7 | mov al,bh | encoding preserved
    %%insn_01437:
    test dx,0x4000 ; 01437 F7C20040
    %if ($ - %%insn_01437) > 4
        %error "LONG_01437"
    %endif
    times 4 - ($ - %%insn_01437) db 0
    %%insn_0143b:
    jz short 0x143f ; 0143B 7402
    %if ($ - %%insn_0143b) > 2
        %error "LONG_0143B"
    %endif
    times 2 - ($ - %%insn_0143b) db 0
    db 0x8A, 0xE3 ; 0143D 8AE3 | mov ah,bl | encoding preserved
    %%insn_0143f:
    mov [di],eax ; 0143F 668905
    %if ($ - %%insn_0143f) > 3
        %error "LONG_0143F"
    %endif
    times 3 - ($ - %%insn_0143f) db 0
    %%insn_01442:
    shl dx,byte 0x4 ; 01442 C1E204
    %if ($ - %%insn_01442) > 3
        %error "LONG_01442"
    %endif
    times 3 - ($ - %%insn_01442) db 0
    %%insn_01445:
    add di,[bp-0x2996] ; 01445 03BE6AD6
    %if ($ - %%insn_01445) > 4
        %error "LONG_01445"
    %endif
    times 4 - ($ - %%insn_01445) db 0
    %%insn_01449:
    jnc short 0x145c ; 01449 7311
    %if ($ - %%insn_01449) > 2
        %error "LONG_01449"
    %endif
    times 2 - ($ - %%insn_01449) db 0
    %%insn_0144b:
    mov al,[bp-0x3076] ; 0144B 8A868ACF
    %if ($ - %%insn_0144b) > 4
        %error "LONG_0144B"
    %endif
    times 4 - ($ - %%insn_0144b) db 0
    %%insn_0144f:
    inc al ; 0144F FEC0
    %if ($ - %%insn_0144f) > 2
        %error "LONG_0144F"
    %endif
    times 2 - ($ - %%insn_0144f) db 0
    db 0x32, 0xE4 ; 01451 32E4 | xor ah,ah | encoding preserved
    %%insn_01453:
    mov [bp-0x3076],al ; 01453 88868ACF
    %if ($ - %%insn_01453) > 4
        %error "LONG_01453"
    %endif
    times 4 - ($ - %%insn_01453) db 0
    %%insn_01457:
    call word near [ss:0xd660] ; 01457 36FF1660D6
    %if ($ - %%insn_01457) > 5
        %error "LONG_01457"
    %endif
    times 5 - ($ - %%insn_01457) db 0
    db 0x8B, 0xC3 ; 0145C 8BC3 | mov ax,bx | encoding preserved
    %%insn_0145e:
    test dx,0x2000 ; 0145E F7C20020
    %if ($ - %%insn_0145e) > 4
        %error "LONG_0145E"
    %endif
    times 4 - ($ - %%insn_0145e) db 0
    %%insn_01462:
    jnz short 0x1466 ; 01462 7502
    %if ($ - %%insn_01462) > 2
        %error "LONG_01462"
    %endif
    times 2 - ($ - %%insn_01462) db 0
    db 0x8A, 0xC7 ; 01464 8AC7 | mov al,bh | encoding preserved
    %%insn_01466:
    test dx,0x1000 ; 01466 F7C20010
    %if ($ - %%insn_01466) > 4
        %error "LONG_01466"
    %endif
    times 4 - ($ - %%insn_01466) db 0
    %%insn_0146a:
    jz short 0x146e ; 0146A 7402
    %if ($ - %%insn_0146a) > 2
        %error "LONG_0146A"
    %endif
    times 2 - ($ - %%insn_0146a) db 0
    db 0x8A, 0xE3 ; 0146C 8AE3 | mov ah,bl | encoding preserved
    %%insn_0146e:
    shl eax,byte 0x10 ; 0146E 66C1E010
    %if ($ - %%insn_0146e) > 4
        %error "LONG_0146E"
    %endif
    times 4 - ($ - %%insn_0146e) db 0
    db 0x8B, 0xC3 ; 01472 8BC3 | mov ax,bx | encoding preserved
    %%insn_01474:
    test dh,0x80 ; 01474 F6C680
    %if ($ - %%insn_01474) > 3
        %error "LONG_01474"
    %endif
    times 3 - ($ - %%insn_01474) db 0
    %%insn_01477:
    jnz short 0x147b ; 01477 7502
    %if ($ - %%insn_01477) > 2
        %error "LONG_01477"
    %endif
    times 2 - ($ - %%insn_01477) db 0
    db 0x8A, 0xC7 ; 01479 8AC7 | mov al,bh | encoding preserved
    %%insn_0147b:
    test dx,0x4000 ; 0147B F7C20040
    %if ($ - %%insn_0147b) > 4
        %error "LONG_0147B"
    %endif
    times 4 - ($ - %%insn_0147b) db 0
    %%insn_0147f:
    jz short 0x1483 ; 0147F 7402
    %if ($ - %%insn_0147f) > 2
        %error "LONG_0147F"
    %endif
    times 2 - ($ - %%insn_0147f) db 0
    db 0x8A, 0xE3 ; 01481 8AE3 | mov ah,bl | encoding preserved
    %%insn_01483:
    mov [di],eax ; 01483 668905
    %if ($ - %%insn_01483) > 3
        %error "LONG_01483"
    %endif
    times 3 - ($ - %%insn_01483) db 0
    %%insn_01486:
    shl dx,byte 0x4 ; 01486 C1E204
    %if ($ - %%insn_01486) > 3
        %error "LONG_01486"
    %endif
    times 3 - ($ - %%insn_01486) db 0
    %%insn_01489:
    add di,[bp-0x2996] ; 01489 03BE6AD6
    %if ($ - %%insn_01489) > 4
        %error "LONG_01489"
    %endif
    times 4 - ($ - %%insn_01489) db 0
    %%insn_0148d:
    jnc short 0x14a0 ; 0148D 7311
    %if ($ - %%insn_0148d) > 2
        %error "LONG_0148D"
    %endif
    times 2 - ($ - %%insn_0148d) db 0
    %%insn_0148f:
    mov al,[bp-0x3076] ; 0148F 8A868ACF
    %if ($ - %%insn_0148f) > 4
        %error "LONG_0148F"
    %endif
    times 4 - ($ - %%insn_0148f) db 0
    %%insn_01493:
    inc al ; 01493 FEC0
    %if ($ - %%insn_01493) > 2
        %error "LONG_01493"
    %endif
    times 2 - ($ - %%insn_01493) db 0
    db 0x32, 0xE4 ; 01495 32E4 | xor ah,ah | encoding preserved
    %%insn_01497:
    mov [bp-0x3076],al ; 01497 88868ACF
    %if ($ - %%insn_01497) > 4
        %error "LONG_01497"
    %endif
    times 4 - ($ - %%insn_01497) db 0
    %%insn_0149b:
    call word near [ss:0xd660] ; 0149B 36FF1660D6
    %if ($ - %%insn_0149b) > 5
        %error "LONG_0149B"
    %endif
    times 5 - ($ - %%insn_0149b) db 0
    db 0x8B, 0xC3 ; 014A0 8BC3 | mov ax,bx | encoding preserved
    %%insn_014a2:
    test dx,0x2000 ; 014A2 F7C20020
    %if ($ - %%insn_014a2) > 4
        %error "LONG_014A2"
    %endif
    times 4 - ($ - %%insn_014a2) db 0
    %%insn_014a6:
    jnz short 0x14aa ; 014A6 7502
    %if ($ - %%insn_014a6) > 2
        %error "LONG_014A6"
    %endif
    times 2 - ($ - %%insn_014a6) db 0
    db 0x8A, 0xC7 ; 014A8 8AC7 | mov al,bh | encoding preserved
    %%insn_014aa:
    test dx,0x1000 ; 014AA F7C20010
    %if ($ - %%insn_014aa) > 4
        %error "LONG_014AA"
    %endif
    times 4 - ($ - %%insn_014aa) db 0
    %%insn_014ae:
    jz short 0x14b2 ; 014AE 7402
    %if ($ - %%insn_014ae) > 2
        %error "LONG_014AE"
    %endif
    times 2 - ($ - %%insn_014ae) db 0
    db 0x8A, 0xE3 ; 014B0 8AE3 | mov ah,bl | encoding preserved
    %%insn_014b2:
    shl eax,byte 0x10 ; 014B2 66C1E010
    %if ($ - %%insn_014b2) > 4
        %error "LONG_014B2"
    %endif
    times 4 - ($ - %%insn_014b2) db 0
    db 0x8B, 0xC3 ; 014B6 8BC3 | mov ax,bx | encoding preserved
    %%insn_014b8:
    test dh,0x80 ; 014B8 F6C680
    %if ($ - %%insn_014b8) > 3
        %error "LONG_014B8"
    %endif
    times 3 - ($ - %%insn_014b8) db 0
    %%insn_014bb:
    jnz short 0x14bf ; 014BB 7502
    %if ($ - %%insn_014bb) > 2
        %error "LONG_014BB"
    %endif
    times 2 - ($ - %%insn_014bb) db 0
    db 0x8A, 0xC7 ; 014BD 8AC7 | mov al,bh | encoding preserved
    %%insn_014bf:
    test dx,0x4000 ; 014BF F7C20040
    %if ($ - %%insn_014bf) > 4
        %error "LONG_014BF"
    %endif
    times 4 - ($ - %%insn_014bf) db 0
    %%insn_014c3:
    jz short 0x14c7 ; 014C3 7402
    %if ($ - %%insn_014c3) > 2
        %error "LONG_014C3"
    %endif
    times 2 - ($ - %%insn_014c3) db 0
    db 0x8A, 0xE3 ; 014C5 8AE3 | mov ah,bl | encoding preserved
    %%insn_014c7:
    mov [di],eax ; 014C7 668905
    %if ($ - %%insn_014c7) > 3
        %error "LONG_014C7"
    %endif
    times 3 - ($ - %%insn_014c7) db 0
    %%insn_014ca:
    mov ax,[bp-0x2aaa] ; 014CA 8B8656D5
    %if ($ - %%insn_014ca) > 4
        %error "LONG_014CA"
    %endif
    times 4 - ($ - %%insn_014ca) db 0
    %%insn_014ce:
    mov ds,ax ; 014CE 8ED8
    %if ($ - %%insn_014ce) > 2
        %error "LONG_014CE"
    %endif
    times 2 - ($ - %%insn_014ce) db 0
    %%insn_014d0:
    pop di ; 014D0 5F
    %if ($ - %%insn_014d0) > 1
        %error "LONG_014D0"
    %endif
    times 1 - ($ - %%insn_014d0) db 0
    %%insn_014d1:
    add di,0x4 ; 014D1 83C704
    %if ($ - %%insn_014d1) > 3
        %error "LONG_014D1"
    %endif
    times 3 - ($ - %%insn_014d1) db 0
    %%insn_014d4:
    jmp 0x1398 ; 014D4 E9C1FE
    %if ($ - %%insn_014d4) > 3
        %error "LONG_014D4"
    %endif
    times 3 - ($ - %%insn_014d4) db 0
    db 0x3D, 0x60, 0x00 ; 014D7 3D6000 | cmp ax,0x60 | encoding preserved
    %%insn_014da:
    jnz 0x1582 ; 014DA 0F85A400
    %if ($ - %%insn_014da) > 4
        %error "LONG_014DA"
    %endif
    times 4 - ($ - %%insn_014da) db 0
    db 0x8B, 0xCF ; 014DE 8BCF | mov cx,di | encoding preserved
    %%insn_014e0:
    mov ax,[bp+di+0x2] ; 014E0 8B4302
    %if ($ - %%insn_014e0) > 3
        %error "LONG_014E0"
    %endif
    times 3 - ($ - %%insn_014e0) db 0
    %%insn_014e3:
    mov di,[bp+di] ; 014E3 8B3B
    %if ($ - %%insn_014e3) > 2
        %error "LONG_014E3"
    %endif
    times 2 - ($ - %%insn_014e3) db 0
    %%insn_014e5:
    cmp al,[bp-0x3076] ; 014E5 3A868ACF
    %if ($ - %%insn_014e5) > 4
        %error "LONG_014E5"
    %endif
    times 4 - ($ - %%insn_014e5) db 0
    %%insn_014e9:
    jz short 0x14f6 ; 014E9 740B
    %if ($ - %%insn_014e9) > 2
        %error "LONG_014E9"
    %endif
    times 2 - ($ - %%insn_014e9) db 0
    db 0x32, 0xE4 ; 014EB 32E4 | xor ah,ah | encoding preserved
    %%insn_014ed:
    mov [bp-0x3076],al ; 014ED 88868ACF
    %if ($ - %%insn_014ed) > 4
        %error "LONG_014ED"
    %endif
    times 4 - ($ - %%insn_014ed) db 0
    %%insn_014f1:
    call word near [ss:0xd660] ; 014F1 36FF1660D6
    %if ($ - %%insn_014f1) > 5
        %error "LONG_014F1"
    %endif
    times 5 - ($ - %%insn_014f1) db 0
    %%insn_014f6:
    mov eax,[si] ; 014F6 668B04
    %if ($ - %%insn_014f6) > 3
        %error "LONG_014F6"
    %endif
    times 3 - ($ - %%insn_014f6) db 0
    db 0x66, 0x26, 0x89, 0x05 ; 014F9 66268905 | mov [es:di],eax | encoding preserved
    %%insn_014fd:
    add di,[bp-0x2996] ; 014FD 03BE6AD6
    %if ($ - %%insn_014fd) > 4
        %error "LONG_014FD"
    %endif
    times 4 - ($ - %%insn_014fd) db 0
    %%insn_01501:
    jnc short 0x1514 ; 01501 7311
    %if ($ - %%insn_01501) > 2
        %error "LONG_01501"
    %endif
    times 2 - ($ - %%insn_01501) db 0
    %%insn_01503:
    mov al,[bp-0x3076] ; 01503 8A868ACF
    %if ($ - %%insn_01503) > 4
        %error "LONG_01503"
    %endif
    times 4 - ($ - %%insn_01503) db 0
    %%insn_01507:
    inc al ; 01507 FEC0
    %if ($ - %%insn_01507) > 2
        %error "LONG_01507"
    %endif
    times 2 - ($ - %%insn_01507) db 0
    db 0x32, 0xE4 ; 01509 32E4 | xor ah,ah | encoding preserved
    %%insn_0150b:
    mov [bp-0x3076],al ; 0150B 88868ACF
    %if ($ - %%insn_0150b) > 4
        %error "LONG_0150B"
    %endif
    times 4 - ($ - %%insn_0150b) db 0
    %%insn_0150f:
    call word near [ss:0xd660] ; 0150F 36FF1660D6
    %if ($ - %%insn_0150f) > 5
        %error "LONG_0150F"
    %endif
    times 5 - ($ - %%insn_0150f) db 0
    %%insn_01514:
    add si,0x4 ; 01514 83C604
    %if ($ - %%insn_01514) > 3
        %error "LONG_01514"
    %endif
    times 3 - ($ - %%insn_01514) db 0
    %%insn_01517:
    mov eax,[si] ; 01517 668B04
    %if ($ - %%insn_01517) > 3
        %error "LONG_01517"
    %endif
    times 3 - ($ - %%insn_01517) db 0
    db 0x66, 0x26, 0x89, 0x05 ; 0151A 66268905 | mov [es:di],eax | encoding preserved
    %%insn_0151e:
    add di,[bp-0x2996] ; 0151E 03BE6AD6
    %if ($ - %%insn_0151e) > 4
        %error "LONG_0151E"
    %endif
    times 4 - ($ - %%insn_0151e) db 0
    %%insn_01522:
    jnc short 0x1535 ; 01522 7311
    %if ($ - %%insn_01522) > 2
        %error "LONG_01522"
    %endif
    times 2 - ($ - %%insn_01522) db 0
    %%insn_01524:
    mov al,[bp-0x3076] ; 01524 8A868ACF
    %if ($ - %%insn_01524) > 4
        %error "LONG_01524"
    %endif
    times 4 - ($ - %%insn_01524) db 0
    %%insn_01528:
    inc al ; 01528 FEC0
    %if ($ - %%insn_01528) > 2
        %error "LONG_01528"
    %endif
    times 2 - ($ - %%insn_01528) db 0
    db 0x32, 0xE4 ; 0152A 32E4 | xor ah,ah | encoding preserved
    %%insn_0152c:
    mov [bp-0x3076],al ; 0152C 88868ACF
    %if ($ - %%insn_0152c) > 4
        %error "LONG_0152C"
    %endif
    times 4 - ($ - %%insn_0152c) db 0
    %%insn_01530:
    call word near [ss:0xd660] ; 01530 36FF1660D6
    %if ($ - %%insn_01530) > 5
        %error "LONG_01530"
    %endif
    times 5 - ($ - %%insn_01530) db 0
    %%insn_01535:
    add si,0x4 ; 01535 83C604
    %if ($ - %%insn_01535) > 3
        %error "LONG_01535"
    %endif
    times 3 - ($ - %%insn_01535) db 0
    %%insn_01538:
    mov eax,[si] ; 01538 668B04
    %if ($ - %%insn_01538) > 3
        %error "LONG_01538"
    %endif
    times 3 - ($ - %%insn_01538) db 0
    db 0x66, 0x26, 0x89, 0x05 ; 0153B 66268905 | mov [es:di],eax | encoding preserved
    %%insn_0153f:
    add di,[bp-0x2996] ; 0153F 03BE6AD6
    %if ($ - %%insn_0153f) > 4
        %error "LONG_0153F"
    %endif
    times 4 - ($ - %%insn_0153f) db 0
    %%insn_01543:
    jnc short 0x1556 ; 01543 7311
    %if ($ - %%insn_01543) > 2
        %error "LONG_01543"
    %endif
    times 2 - ($ - %%insn_01543) db 0
    %%insn_01545:
    mov al,[bp-0x3076] ; 01545 8A868ACF
    %if ($ - %%insn_01545) > 4
        %error "LONG_01545"
    %endif
    times 4 - ($ - %%insn_01545) db 0
    %%insn_01549:
    inc al ; 01549 FEC0
    %if ($ - %%insn_01549) > 2
        %error "LONG_01549"
    %endif
    times 2 - ($ - %%insn_01549) db 0
    db 0x32, 0xE4 ; 0154B 32E4 | xor ah,ah | encoding preserved
    %%insn_0154d:
    mov [bp-0x3076],al ; 0154D 88868ACF
    %if ($ - %%insn_0154d) > 4
        %error "LONG_0154D"
    %endif
    times 4 - ($ - %%insn_0154d) db 0
    %%insn_01551:
    call word near [ss:0xd660] ; 01551 36FF1660D6
    %if ($ - %%insn_01551) > 5
        %error "LONG_01551"
    %endif
    times 5 - ($ - %%insn_01551) db 0
    %%insn_01556:
    add si,0x4 ; 01556 83C604
    %if ($ - %%insn_01556) > 3
        %error "LONG_01556"
    %endif
    times 3 - ($ - %%insn_01556) db 0
    %%insn_01559:
    mov eax,[si] ; 01559 668B04
    %if ($ - %%insn_01559) > 3
        %error "LONG_01559"
    %endif
    times 3 - ($ - %%insn_01559) db 0
    db 0x66, 0x26, 0x89, 0x05 ; 0155C 66268905 | mov [es:di],eax | encoding preserved
    %%insn_01560:
    add di,[bp-0x2996] ; 01560 03BE6AD6
    %if ($ - %%insn_01560) > 4
        %error "LONG_01560"
    %endif
    times 4 - ($ - %%insn_01560) db 0
    %%insn_01564:
    jnc short 0x1577 ; 01564 7311
    %if ($ - %%insn_01564) > 2
        %error "LONG_01564"
    %endif
    times 2 - ($ - %%insn_01564) db 0
    %%insn_01566:
    mov al,[bp-0x3076] ; 01566 8A868ACF
    %if ($ - %%insn_01566) > 4
        %error "LONG_01566"
    %endif
    times 4 - ($ - %%insn_01566) db 0
    %%insn_0156a:
    inc al ; 0156A FEC0
    %if ($ - %%insn_0156a) > 2
        %error "LONG_0156A"
    %endif
    times 2 - ($ - %%insn_0156a) db 0
    db 0x32, 0xE4 ; 0156C 32E4 | xor ah,ah | encoding preserved
    %%insn_0156e:
    mov [bp-0x3076],al ; 0156E 88868ACF
    %if ($ - %%insn_0156e) > 4
        %error "LONG_0156E"
    %endif
    times 4 - ($ - %%insn_0156e) db 0
    %%insn_01572:
    call word near [ss:0xd660] ; 01572 36FF1660D6
    %if ($ - %%insn_01572) > 5
        %error "LONG_01572"
    %endif
    times 5 - ($ - %%insn_01572) db 0
    %%insn_01577:
    add si,0x4 ; 01577 83C604
    %if ($ - %%insn_01577) > 3
        %error "LONG_01577"
    %endif
    times 3 - ($ - %%insn_01577) db 0
    db 0x8B, 0xF9 ; 0157A 8BF9 | mov di,cx | encoding preserved
    %%insn_0157c:
    add di,0x4 ; 0157C 83C704
    %if ($ - %%insn_0157c) > 3
        %error "LONG_0157C"
    %endif
    times 3 - ($ - %%insn_0157c) db 0
    %%insn_0157f:
    jmp 0x1398 ; 0157F E916FE
    %if ($ - %%insn_0157f) > 3
        %error "LONG_0157F"
    %endif
    times 3 - ($ - %%insn_0157f) db 0
    db 0x3D, 0x61, 0x00 ; 01582 3D6100 | cmp ax,0x61 | encoding preserved
    %%insn_01585:
    jnz short 0x158f ; 01585 7508
    %if ($ - %%insn_01585) > 2
        %error "LONG_01585"
    %endif
    times 2 - ($ - %%insn_01585) db 0
    %%insn_01587:
    add word [bp-0x309e],0x4 ; 01587 838662CF04
    %if ($ - %%insn_01587) > 5
        %error "LONG_01587"
    %endif
    times 5 - ($ - %%insn_01587) db 0
    %%insn_0158c:
    jmp 0x10b8 ; 0158C E929FB
    %if ($ - %%insn_0158c) > 3
        %error "LONG_0158C"
    %endif
    times 3 - ($ - %%insn_0158c) db 0
    db 0x3D, 0x6C, 0x00 ; 0158F 3D6C00 | cmp ax,0x6c | encoding preserved
    %%insn_01592:
    jnc short 0x159f ; 01592 730B
    %if ($ - %%insn_01592) > 2
        %error "LONG_01592"
    %endif
    times 2 - ($ - %%insn_01592) db 0
    db 0x2D, 0x62, 0x00 ; 01594 2D6200 | sub ax,0x62 | encoding preserved
    %%insn_01597:
    shl ax,byte 0x2 ; 01597 C1E002
    %if ($ - %%insn_01597) > 3
        %error "LONG_01597"
    %endif
    times 3 - ($ - %%insn_01597) db 0
    db 0x03, 0xF8 ; 0159A 03F8 | add di,ax | encoding preserved
    %%insn_0159c:
    jmp 0x1398 ; 0159C E9F9FD
    %if ($ - %%insn_0159c) > 3
        %error "LONG_0159C"
    %endif
    times 3 - ($ - %%insn_0159c) db 0
    db 0x3D, 0x76, 0x00 ; 0159F 3D7600 | cmp ax,0x76 | encoding preserved
    %%insn_015a2:
    jnc short 0x15fd ; 015A2 7359
    %if ($ - %%insn_015a2) > 2
        %error "LONG_015A2"
    %endif
    times 2 - ($ - %%insn_015a2) db 0
    db 0x2D, 0x6B, 0x00 ; 015A4 2D6B00 | sub ax,0x6b | encoding preserved
    db 0x8B, 0xC8 ; 015A7 8BC8 | mov cx,ax | encoding preserved
    %%insn_015a9:
    mov al,[si] ; 015A9 8A04
    %if ($ - %%insn_015a9) > 2
        %error "LONG_015A9"
    %endif
    times 2 - ($ - %%insn_015a9) db 0
    %%insn_015ab:
    inc si ; 015AB 46
    %if ($ - %%insn_015ab) > 1
        %error "LONG_015AB"
    %endif
    times 1 - ($ - %%insn_015ab) db 0
    %%insn_015ac:
    push si ; 015AC 56
    %if ($ - %%insn_015ac) > 1
        %error "LONG_015AC"
    %endif
    times 1 - ($ - %%insn_015ac) db 0
    db 0x8B, 0xF7 ; 015AD 8BF7 | mov si,di | encoding preserved
    db 0x8A, 0xE0 ; 015AF 8AE0 | mov ah,al | encoding preserved
    db 0x8B, 0xD8 ; 015B1 8BD8 | mov bx,ax | encoding preserved
    %%insn_015b3:
    shl ebx,byte 0x10 ; 015B3 66C1E310
    %if ($ - %%insn_015b3) > 4
        %error "LONG_015B3"
    %endif
    times 4 - ($ - %%insn_015b3) db 0
    db 0x8B, 0xD8 ; 015B7 8BD8 | mov bx,ax | encoding preserved
    %%insn_015b9:
    nop ; 015B9 90
    %if ($ - %%insn_015b9) > 1
        %error "LONG_015B9"
    %endif
    times 1 - ($ - %%insn_015b9) db 0
    %%insn_015ba:
    mov ax,[bp+si+0x2] ; 015BA 8B4202
    %if ($ - %%insn_015ba) > 3
        %error "LONG_015BA"
    %endif
    times 3 - ($ - %%insn_015ba) db 0
    %%insn_015bd:
    cmp al,[bp-0x3076] ; 015BD 3A868ACF
    %if ($ - %%insn_015bd) > 4
        %error "LONG_015BD"
    %endif
    times 4 - ($ - %%insn_015bd) db 0
    %%insn_015c1:
    jz short 0x15ce ; 015C1 740B
    %if ($ - %%insn_015c1) > 2
        %error "LONG_015C1"
    %endif
    times 2 - ($ - %%insn_015c1) db 0
    db 0x32, 0xE4 ; 015C3 32E4 | xor ah,ah | encoding preserved
    %%insn_015c5:
    mov [bp-0x3076],al ; 015C5 88868ACF
    %if ($ - %%insn_015c5) > 4
        %error "LONG_015C5"
    %endif
    times 4 - ($ - %%insn_015c5) db 0
    %%insn_015c9:
    call word near [ss:0xd660] ; 015C9 36FF1660D6
    %if ($ - %%insn_015c9) > 5
        %error "LONG_015C9"
    %endif
    times 5 - ($ - %%insn_015c9) db 0
    %%insn_015ce:
    mov di,[bp+si] ; 015CE 8B3A
    %if ($ - %%insn_015ce) > 2
        %error "LONG_015CE"
    %endif
    times 2 - ($ - %%insn_015ce) db 0
    %%insn_015d0:
    mov dx,0x4 ; 015D0 BA0400
    %if ($ - %%insn_015d0) > 3
        %error "LONG_015D0"
    %endif
    times 3 - ($ - %%insn_015d0) db 0
    db 0x66, 0x26, 0x89, 0x1D ; 015D3 6626891D | mov [es:di],ebx | encoding preserved
    %%insn_015d7:
    add di,[bp-0x2996] ; 015D7 03BE6AD6
    %if ($ - %%insn_015d7) > 4
        %error "LONG_015D7"
    %endif
    times 4 - ($ - %%insn_015d7) db 0
    %%insn_015db:
    jnc short 0x15ee ; 015DB 7311
    %if ($ - %%insn_015db) > 2
        %error "LONG_015DB"
    %endif
    times 2 - ($ - %%insn_015db) db 0
    %%insn_015dd:
    mov al,[bp-0x3076] ; 015DD 8A868ACF
    %if ($ - %%insn_015dd) > 4
        %error "LONG_015DD"
    %endif
    times 4 - ($ - %%insn_015dd) db 0
    %%insn_015e1:
    inc al ; 015E1 FEC0
    %if ($ - %%insn_015e1) > 2
        %error "LONG_015E1"
    %endif
    times 2 - ($ - %%insn_015e1) db 0
    db 0x32, 0xE4 ; 015E3 32E4 | xor ah,ah | encoding preserved
    %%insn_015e5:
    mov [bp-0x3076],al ; 015E5 88868ACF
    %if ($ - %%insn_015e5) > 4
        %error "LONG_015E5"
    %endif
    times 4 - ($ - %%insn_015e5) db 0
    %%insn_015e9:
    call word near [ss:0xd660] ; 015E9 36FF1660D6
    %if ($ - %%insn_015e9) > 5
        %error "LONG_015E9"
    %endif
    times 5 - ($ - %%insn_015e9) db 0
    %%insn_015ee:
    dec dx ; 015EE 4A
    %if ($ - %%insn_015ee) > 1
        %error "LONG_015EE"
    %endif
    times 1 - ($ - %%insn_015ee) db 0
    %%insn_015ef:
    jnz short 0x15d3 ; 015EF 75E2
    %if ($ - %%insn_015ef) > 2
        %error "LONG_015EF"
    %endif
    times 2 - ($ - %%insn_015ef) db 0
    %%insn_015f1:
    add si,0x4 ; 015F1 83C604
    %if ($ - %%insn_015f1) > 3
        %error "LONG_015F1"
    %endif
    times 3 - ($ - %%insn_015f1) db 0
    %%insn_015f4:
    dec cx ; 015F4 49
    %if ($ - %%insn_015f4) > 1
        %error "LONG_015F4"
    %endif
    times 1 - ($ - %%insn_015f4) db 0
    %%insn_015f5:
    jnz short 0x15ba ; 015F5 75C3
    %if ($ - %%insn_015f5) > 2
        %error "LONG_015F5"
    %endif
    times 2 - ($ - %%insn_015f5) db 0
    db 0x8B, 0xFE ; 015F7 8BFE | mov di,si | encoding preserved
    %%insn_015f9:
    pop si ; 015F9 5E
    %if ($ - %%insn_015f9) > 1
        %error "LONG_015F9"
    %endif
    times 1 - ($ - %%insn_015f9) db 0
    %%insn_015fa:
    jmp 0x1398 ; 015FA E99BFD
    %if ($ - %%insn_015fa) > 3
        %error "LONG_015FA"
    %endif
    times 3 - ($ - %%insn_015fa) db 0
    db 0x2D, 0x75, 0x00 ; 015FD 2D7500 | sub ax,0x75 | encoding preserved
    db 0x8B, 0xC8 ; 01600 8BC8 | mov cx,ax | encoding preserved
    %%insn_01602:
    push di ; 01602 57
    %if ($ - %%insn_01602) > 1
        %error "LONG_01602"
    %endif
    times 1 - ($ - %%insn_01602) db 0
    %%insn_01603:
    mov al,[si] ; 01603 8A04
    %if ($ - %%insn_01603) > 2
        %error "LONG_01603"
    %endif
    times 2 - ($ - %%insn_01603) db 0
    %%insn_01605:
    inc si ; 01605 46
    %if ($ - %%insn_01605) > 1
        %error "LONG_01605"
    %endif
    times 1 - ($ - %%insn_01605) db 0
    db 0x8A, 0xE0 ; 01606 8AE0 | mov ah,al | encoding preserved
    db 0x8B, 0xD8 ; 01608 8BD8 | mov bx,ax | encoding preserved
    %%insn_0160a:
    mov ax,[bp+di+0x2] ; 0160A 8B4302
    %if ($ - %%insn_0160a) > 3
        %error "LONG_0160A"
    %endif
    times 3 - ($ - %%insn_0160a) db 0
    %%insn_0160d:
    mov di,[bp+di] ; 0160D 8B3B
    %if ($ - %%insn_0160d) > 2
        %error "LONG_0160D"
    %endif
    times 2 - ($ - %%insn_0160d) db 0
    %%insn_0160f:
    cmp al,[bp-0x3076] ; 0160F 3A868ACF
    %if ($ - %%insn_0160f) > 4
        %error "LONG_0160F"
    %endif
    times 4 - ($ - %%insn_0160f) db 0
    %%insn_01613:
    jz short 0x1620 ; 01613 740B
    %if ($ - %%insn_01613) > 2
        %error "LONG_01613"
    %endif
    times 2 - ($ - %%insn_01613) db 0
    db 0x32, 0xE4 ; 01615 32E4 | xor ah,ah | encoding preserved
    %%insn_01617:
    mov [bp-0x3076],al ; 01617 88868ACF
    %if ($ - %%insn_01617) > 4
        %error "LONG_01617"
    %endif
    times 4 - ($ - %%insn_01617) db 0
    %%insn_0161b:
    call word near [ss:0xd660] ; 0161B 36FF1660D6
    %if ($ - %%insn_0161b) > 5
        %error "LONG_0161B"
    %endif
    times 5 - ($ - %%insn_0161b) db 0
    %%insn_01620:
    mov ds,word [bp-0x2aa8] ; 01620 8E9E58D5
    %if ($ - %%insn_01620) > 4
        %error "LONG_01620"
    %endif
    times 4 - ($ - %%insn_01620) db 0
    db 0x8B, 0xC3 ; 01624 8BC3 | mov ax,bx | encoding preserved
    %%insn_01626:
    shl ebx,byte 0x10 ; 01626 66C1E310
    %if ($ - %%insn_01626) > 4
        %error "LONG_01626"
    %endif
    times 4 - ($ - %%insn_01626) db 0
    db 0x8B, 0xD8 ; 0162A 8BD8 | mov bx,ax | encoding preserved
    %%insn_0162c:
    mov [di],ebx ; 0162C 66891D
    %if ($ - %%insn_0162c) > 3
        %error "LONG_0162C"
    %endif
    times 3 - ($ - %%insn_0162c) db 0
    %%insn_0162f:
    add di,[bp-0x2996] ; 0162F 03BE6AD6
    %if ($ - %%insn_0162f) > 4
        %error "LONG_0162F"
    %endif
    times 4 - ($ - %%insn_0162f) db 0
    %%insn_01633:
    jnc short 0x1646 ; 01633 7311
    %if ($ - %%insn_01633) > 2
        %error "LONG_01633"
    %endif
    times 2 - ($ - %%insn_01633) db 0
    %%insn_01635:
    mov al,[bp-0x3076] ; 01635 8A868ACF
    %if ($ - %%insn_01635) > 4
        %error "LONG_01635"
    %endif
    times 4 - ($ - %%insn_01635) db 0
    %%insn_01639:
    inc al ; 01639 FEC0
    %if ($ - %%insn_01639) > 2
        %error "LONG_01639"
    %endif
    times 2 - ($ - %%insn_01639) db 0
    db 0x32, 0xE4 ; 0163B 32E4 | xor ah,ah | encoding preserved
    %%insn_0163d:
    mov [bp-0x3076],al ; 0163D 88868ACF
    %if ($ - %%insn_0163d) > 4
        %error "LONG_0163D"
    %endif
    times 4 - ($ - %%insn_0163d) db 0
    %%insn_01641:
    call word near [ss:0xd660] ; 01641 36FF1660D6
    %if ($ - %%insn_01641) > 5
        %error "LONG_01641"
    %endif
    times 5 - ($ - %%insn_01641) db 0
    %%insn_01646:
    mov [di],ebx ; 01646 66891D
    %if ($ - %%insn_01646) > 3
        %error "LONG_01646"
    %endif
    times 3 - ($ - %%insn_01646) db 0
    %%insn_01649:
    add di,[bp-0x2996] ; 01649 03BE6AD6
    %if ($ - %%insn_01649) > 4
        %error "LONG_01649"
    %endif
    times 4 - ($ - %%insn_01649) db 0
    %%insn_0164d:
    jnc short 0x1660 ; 0164D 7311
    %if ($ - %%insn_0164d) > 2
        %error "LONG_0164D"
    %endif
    times 2 - ($ - %%insn_0164d) db 0
    %%insn_0164f:
    mov al,[bp-0x3076] ; 0164F 8A868ACF
    %if ($ - %%insn_0164f) > 4
        %error "LONG_0164F"
    %endif
    times 4 - ($ - %%insn_0164f) db 0
    %%insn_01653:
    inc al ; 01653 FEC0
    %if ($ - %%insn_01653) > 2
        %error "LONG_01653"
    %endif
    times 2 - ($ - %%insn_01653) db 0
    db 0x32, 0xE4 ; 01655 32E4 | xor ah,ah | encoding preserved
    %%insn_01657:
    mov [bp-0x3076],al ; 01657 88868ACF
    %if ($ - %%insn_01657) > 4
        %error "LONG_01657"
    %endif
    times 4 - ($ - %%insn_01657) db 0
    %%insn_0165b:
    call word near [ss:0xd660] ; 0165B 36FF1660D6
    %if ($ - %%insn_0165b) > 5
        %error "LONG_0165B"
    %endif
    times 5 - ($ - %%insn_0165b) db 0
    %%insn_01660:
    mov [di],ebx ; 01660 66891D
    %if ($ - %%insn_01660) > 3
        %error "LONG_01660"
    %endif
    times 3 - ($ - %%insn_01660) db 0
    %%insn_01663:
    add di,[bp-0x2996] ; 01663 03BE6AD6
    %if ($ - %%insn_01663) > 4
        %error "LONG_01663"
    %endif
    times 4 - ($ - %%insn_01663) db 0
    %%insn_01667:
    jnc short 0x167a ; 01667 7311
    %if ($ - %%insn_01667) > 2
        %error "LONG_01667"
    %endif
    times 2 - ($ - %%insn_01667) db 0
    %%insn_01669:
    mov al,[bp-0x3076] ; 01669 8A868ACF
    %if ($ - %%insn_01669) > 4
        %error "LONG_01669"
    %endif
    times 4 - ($ - %%insn_01669) db 0
    %%insn_0166d:
    inc al ; 0166D FEC0
    %if ($ - %%insn_0166d) > 2
        %error "LONG_0166D"
    %endif
    times 2 - ($ - %%insn_0166d) db 0
    db 0x32, 0xE4 ; 0166F 32E4 | xor ah,ah | encoding preserved
    %%insn_01671:
    mov [bp-0x3076],al ; 01671 88868ACF
    %if ($ - %%insn_01671) > 4
        %error "LONG_01671"
    %endif
    times 4 - ($ - %%insn_01671) db 0
    %%insn_01675:
    call word near [ss:0xd660] ; 01675 36FF1660D6
    %if ($ - %%insn_01675) > 5
        %error "LONG_01675"
    %endif
    times 5 - ($ - %%insn_01675) db 0
    %%insn_0167a:
    mov [di],ebx ; 0167A 66891D
    %if ($ - %%insn_0167a) > 3
        %error "LONG_0167A"
    %endif
    times 3 - ($ - %%insn_0167a) db 0
    %%insn_0167d:
    pop di ; 0167D 5F
    %if ($ - %%insn_0167d) > 1
        %error "LONG_0167D"
    %endif
    times 1 - ($ - %%insn_0167d) db 0
    %%insn_0167e:
    add di,0x4 ; 0167E 83C704
    %if ($ - %%insn_0167e) > 3
        %error "LONG_0167E"
    %endif
    times 3 - ($ - %%insn_0167e) db 0
    %%insn_01681:
    mov ax,[bp-0x2aaa] ; 01681 8B8656D5
    %if ($ - %%insn_01681) > 4
        %error "LONG_01681"
    %endif
    times 4 - ($ - %%insn_01681) db 0
    %%insn_01685:
    mov ds,ax ; 01685 8ED8
    %if ($ - %%insn_01685) > 2
        %error "LONG_01685"
    %endif
    times 2 - ($ - %%insn_01685) db 0
    %%insn_01687:
    dec cx ; 01687 49
    %if ($ - %%insn_01687) > 1
        %error "LONG_01687"
    %endif
    times 1 - ($ - %%insn_01687) db 0
    %%insn_01688:
    jnz 0x1602 ; 01688 0F8576FF
    %if ($ - %%insn_01688) > 4
        %error "LONG_01688"
    %endif
    times 4 - ($ - %%insn_01688) db 0
    %%insn_0168c:
    jmp 0x1398 ; 0168C E909FD
    %if ($ - %%insn_0168c) > 3
        %error "LONG_0168C"
    %endif
    times 3 - ($ - %%insn_0168c) db 0
    %if ($ - %%fragment_start) != 759
        %error "SIZE_01398"
    %endif
%endmacro

%macro emit_decode_vdx_delta_frame_part_06 0
    %%fragment_start:
    db 0x8A, 0xD0 ; 01691 8AD0 | mov dl,al | encoding preserved
    %%insn_01693:
    mov al,[si] ; 01693 8A04
    %if ($ - %%insn_01693) > 2
        %error "LONG_01693"
    %endif
    times 2 - ($ - %%insn_01693) db 0
    %%insn_01695:
    inc si ; 01695 46
    %if ($ - %%insn_01695) > 1
        %error "LONG_01695"
    %endif
    times 1 - ($ - %%insn_01695) db 0
    db 0x8A, 0xF0 ; 01696 8AF0 | mov dh,al | encoding preserved
    %%insn_01698:
    jmp 0x13b4 ; 01698 E919FD
    %if ($ - %%insn_01698) > 3
        %error "LONG_01698"
    %endif
    times 3 - ($ - %%insn_01698) db 0
    %if ($ - %%fragment_start) != 10
        %error "SIZE_01691"
    %endif
%endmacro

%macro emit_decode_vdx_delta_frame_part_07 0
    %%fragment_start:
    %%insn_0169c:
    mov ax,[bp-0x2aac] ; 0169C 8B8654D5
    %if ($ - %%insn_0169c) > 4
        %error "LONG_0169C"
    %endif
    times 4 - ($ - %%insn_0169c) db 0
    %%insn_016a0:
    mov [bp-0x30ba],ax ; 016A0 898646CF
    %if ($ - %%insn_016a0) > 4
        %error "LONG_016A0"
    %endif
    times 4 - ($ - %%insn_016a0) db 0
    %%insn_016a4:
    mov ax,[bp-0x2605] ; 016A4 8B86FBD9
    %if ($ - %%insn_016a4) > 4
        %error "LONG_016A4"
    %endif
    times 4 - ($ - %%insn_016a4) db 0
    %%insn_016a8:
    mov [bp-0x30b8],ax ; 016A8 898648CF
    %if ($ - %%insn_016a8) > 4
        %error "LONG_016A8"
    %endif
    times 4 - ($ - %%insn_016a8) db 0
    %%insn_016ac:
    mov ax,[bp-0x2d70] ; 016AC 8B8690D2
    %if ($ - %%insn_016ac) > 4
        %error "LONG_016AC"
    %endif
    times 4 - ($ - %%insn_016ac) db 0
    %%insn_016b0:
    mov [bp-0x3076],al ; 016B0 88868ACF
    %if ($ - %%insn_016b0) > 4
        %error "LONG_016B0"
    %endif
    times 4 - ($ - %%insn_016b0) db 0
    %%insn_016b4:
    mov [bp-0x30b6],al ; 016B4 88864ACF
    %if ($ - %%insn_016b4) > 4
        %error "LONG_016B4"
    %endif
    times 4 - ($ - %%insn_016b4) db 0
    db 0x32, 0xE4 ; 016B8 32E4 | xor ah,ah | encoding preserved
    %%insn_016ba:
    mov [bp-0x3076],al ; 016BA 88868ACF
    %if ($ - %%insn_016ba) > 4
        %error "LONG_016BA"
    %endif
    times 4 - ($ - %%insn_016ba) db 0
    %%insn_016be:
    call word near [ss:0xd660] ; 016BE 36FF1660D6
    %if ($ - %%insn_016be) > 5
        %error "LONG_016BE"
    %endif
    times 5 - ($ - %%insn_016be) db 0
    %%insn_016c3:
    pusha ; 016C3 60
    %if ($ - %%insn_016c3) > 1
        %error "LONG_016C3"
    %endif
    times 1 - ($ - %%insn_016c3) db 0
    %%insn_016c4:
    push ds ; 016C4 1E
    %if ($ - %%insn_016c4) > 1
        %error "LONG_016C4"
    %endif
    times 1 - ($ - %%insn_016c4) db 0
    %%insn_016c5:
    mov ds,word [bp-0x2aae] ; 016C5 8E9E52D5
    %if ($ - %%insn_016c5) > 4
        %error "LONG_016C5"
    %endif
    times 4 - ($ - %%insn_016c5) db 0
    %%insn_016c9:
    mov dword [bp-0x2b92],0x10000 ; 016C9 66C7866ED400000100
    %if ($ - %%insn_016c9) > 9
        %error "LONG_016C9"
    %endif
    times 9 - ($ - %%insn_016c9) db 0
    %%insn_016d2:
    mov word [bp-0x2b88],0x0 ; 016D2 C78678D40000
    %if ($ - %%insn_016d2) > 6
        %error "LONG_016D2"
    %endif
    times 6 - ($ - %%insn_016d2) db 0
    %%insn_016d8:
    mov ax,[bp-0x2aac] ; 016D8 8B8654D5
    %if ($ - %%insn_016d8) > 4
        %error "LONG_016D8"
    %endif
    times 4 - ($ - %%insn_016d8) db 0
    %%insn_016dc:
    mov word [bp-0x2b86],0x0 ; 016DC C7867AD40000
    %if ($ - %%insn_016dc) > 6
        %error "LONG_016DC"
    %endif
    times 6 - ($ - %%insn_016dc) db 0
    %%insn_016e2:
    mov [bp-0x2b84],ax ; 016E2 89867CD4
    %if ($ - %%insn_016e2) > 4
        %error "LONG_016E2"
    %endif
    times 4 - ($ - %%insn_016e2) db 0
    %%insn_016e6:
    mov ax,[bp-0x2ab0] ; 016E6 8B8650D5
    %if ($ - %%insn_016e6) > 4
        %error "LONG_016E6"
    %endif
    times 4 - ($ - %%insn_016e6) db 0
    %%insn_016ea:
    mov [bp-0x2b8e],ax ; 016EA 898672D4
    %if ($ - %%insn_016ea) > 4
        %error "LONG_016EA"
    %endif
    times 4 - ($ - %%insn_016ea) db 0
    %%insn_016ee:
    mov al,[bp-0x3076] ; 016EE 8A868ACF
    %if ($ - %%insn_016ee) > 4
        %error "LONG_016EE"
    %endif
    times 4 - ($ - %%insn_016ee) db 0
    db 0x32, 0xE4 ; 016F2 32E4 | xor ah,ah | encoding preserved
    %%insn_016f4:
    shl eax,byte 0x10 ; 016F4 66C1E010
    %if ($ - %%insn_016f4) > 4
        %error "LONG_016F4"
    %endif
    times 4 - ($ - %%insn_016f4) db 0
    %%insn_016f8:
    mov [bp-0x2b8c],eax ; 016F8 66898674D4
    %if ($ - %%insn_016f8) > 5
        %error "LONG_016F8"
    %endif
    times 5 - ($ - %%insn_016f8) db 0
    %%insn_016fd:
    mov ah,0xb ; 016FD B40B
    %if ($ - %%insn_016fd) > 2
        %error "LONG_016FD"
    %endif
    times 2 - ($ - %%insn_016fd) db 0
    %%insn_016ff:
    mov si,0xd46e ; 016FF BE6ED4
    %if ($ - %%insn_016ff) > 3
        %error "LONG_016FF"
    %endif
    times 3 - ($ - %%insn_016ff) db 0
    %%insn_01702:
    call word far [cs:0x3688] ; 01702 2EFF1E8836
    %if ($ - %%insn_01702) > 5
        %error "LONG_01702"
    %endif
    times 5 - ($ - %%insn_01702) db 0
    %%insn_01707:
    pop ds ; 01707 1F
    %if ($ - %%insn_01707) > 1
        %error "LONG_01707"
    %endif
    times 1 - ($ - %%insn_01707) db 0
    %%insn_01708:
    popa ; 01708 61
    %if ($ - %%insn_01708) > 1
        %error "LONG_01708"
    %endif
    times 1 - ($ - %%insn_01708) db 0
    %%insn_01709:
    pusha ; 01709 60
    %if ($ - %%insn_01709) > 1
        %error "LONG_01709"
    %endif
    times 1 - ($ - %%insn_01709) db 0
    %%insn_0170a:
    push ds ; 0170A 1E
    %if ($ - %%insn_0170a) > 1
        %error "LONG_0170A"
    %endif
    times 1 - ($ - %%insn_0170a) db 0
    %%insn_0170b:
    mov ds,word [bp-0x2aae] ; 0170B 8E9E52D5
    %if ($ - %%insn_0170b) > 4
        %error "LONG_0170B"
    %endif
    times 4 - ($ - %%insn_0170b) db 0
    %%insn_0170f:
    mov dword [bp-0x2b92],0x10000 ; 0170F 66C7866ED400000100
    %if ($ - %%insn_0170f) > 9
        %error "LONG_0170F"
    %endif
    times 9 - ($ - %%insn_0170f) db 0
    %%insn_01718:
    mov word [bp-0x2b88],0x0 ; 01718 C78678D40000
    %if ($ - %%insn_01718) > 6
        %error "LONG_01718"
    %endif
    times 6 - ($ - %%insn_01718) db 0
    %%insn_0171e:
    mov ax,[bp-0x2605] ; 0171E 8B86FBD9
    %if ($ - %%insn_0171e) > 4
        %error "LONG_0171E"
    %endif
    times 4 - ($ - %%insn_0171e) db 0
    %%insn_01722:
    mov word [bp-0x2b86],0x0 ; 01722 C7867AD40000
    %if ($ - %%insn_01722) > 6
        %error "LONG_01722"
    %endif
    times 6 - ($ - %%insn_01722) db 0
    %%insn_01728:
    mov [bp-0x2b84],ax ; 01728 89867CD4
    %if ($ - %%insn_01728) > 4
        %error "LONG_01728"
    %endif
    times 4 - ($ - %%insn_01728) db 0
    %%insn_0172c:
    mov ax,[bp-0x2ab0] ; 0172C 8B8650D5
    %if ($ - %%insn_0172c) > 4
        %error "LONG_0172C"
    %endif
    times 4 - ($ - %%insn_0172c) db 0
    %%insn_01730:
    mov [bp-0x2b8e],ax ; 01730 898672D4
    %if ($ - %%insn_01730) > 4
        %error "LONG_01730"
    %endif
    times 4 - ($ - %%insn_01730) db 0
    %%insn_01734:
    mov al,[bp-0x3076] ; 01734 8A868ACF
    %if ($ - %%insn_01734) > 4
        %error "LONG_01734"
    %endif
    times 4 - ($ - %%insn_01734) db 0
    %%insn_01738:
    inc al ; 01738 FEC0
    %if ($ - %%insn_01738) > 2
        %error "LONG_01738"
    %endif
    times 2 - ($ - %%insn_01738) db 0
    db 0x32, 0xE4 ; 0173A 32E4 | xor ah,ah | encoding preserved
    %%insn_0173c:
    shl eax,byte 0x10 ; 0173C 66C1E010
    %if ($ - %%insn_0173c) > 4
        %error "LONG_0173C"
    %endif
    times 4 - ($ - %%insn_0173c) db 0
    %%insn_01740:
    mov [bp-0x2b8c],eax ; 01740 66898674D4
    %if ($ - %%insn_01740) > 5
        %error "LONG_01740"
    %endif
    times 5 - ($ - %%insn_01740) db 0
    %%insn_01745:
    mov ah,0xb ; 01745 B40B
    %if ($ - %%insn_01745) > 2
        %error "LONG_01745"
    %endif
    times 2 - ($ - %%insn_01745) db 0
    %%insn_01747:
    mov si,0xd46e ; 01747 BE6ED4
    %if ($ - %%insn_01747) > 3
        %error "LONG_01747"
    %endif
    times 3 - ($ - %%insn_01747) db 0
    %%insn_0174a:
    call word far [cs:0x3688] ; 0174A 2EFF1E8836
    %if ($ - %%insn_0174a) > 5
        %error "LONG_0174A"
    %endif
    times 5 - ($ - %%insn_0174a) db 0
    %%insn_0174f:
    pop ds ; 0174F 1F
    %if ($ - %%insn_0174f) > 1
        %error "LONG_0174F"
    %endif
    times 1 - ($ - %%insn_0174f) db 0
    %%insn_01750:
    popa ; 01750 61
    %if ($ - %%insn_01750) > 1
        %error "LONG_01750"
    %endif
    times 1 - ($ - %%insn_01750) db 0
    %%insn_01751:
    mov fs,word [bp-0x30ba] ; 01751 8EA646CF
    %if ($ - %%insn_01751) > 4
        %error "LONG_01751"
    %endif
    times 4 - ($ - %%insn_01751) db 0
    db 0x33, 0xF6 ; 01755 33F6 | xor si,si | encoding preserved
    %%insn_01757:
    lodsw ; 01757 AD
    %if ($ - %%insn_01757) > 1
        %error "LONG_01757"
    %endif
    times 1 - ($ - %%insn_01757) db 0
    db 0x23, 0xC0 ; 01758 23C0 | and ax,ax | encoding preserved
    %%insn_0175a:
    jz short 0x1761 ; 0175A 7405
    %if ($ - %%insn_0175a) > 2
        %error "LONG_0175A"
    %endif
    times 2 - ($ - %%insn_0175a) db 0
    %%insn_0175c:
    push ax ; 0175C 50
    %if ($ - %%insn_0175c) > 1
        %error "LONG_0175C"
    %endif
    times 1 - ($ - %%insn_0175c) db 0
    %%insn_0175d:
    pop si ; 0175D 5E
    %if ($ - %%insn_0175d) > 1
        %error "LONG_0175D"
    %endif
    times 1 - ($ - %%insn_0175d) db 0
    %%insn_0175e:
    add si,0x2 ; 0175E 83C602
    %if ($ - %%insn_0175e) > 3
        %error "LONG_0175E"
    %endif
    times 3 - ($ - %%insn_0175e) db 0
    %%insn_01761:
    mov word [bp-0x309e],0xd28e ; 01761 C78662CF8ED2
    %if ($ - %%insn_01761) > 6
        %error "LONG_01761"
    %endif
    times 6 - ($ - %%insn_01761) db 0
    %%insn_01767:
    nop ; 01767 90
    %if ($ - %%insn_01767) > 1
        %error "LONG_01767"
    %endif
    times 1 - ($ - %%insn_01767) db 0
    %%insn_01768:
    mov bx,[bp-0x309e] ; 01768 8B9E62CF
    %if ($ - %%insn_01768) > 4
        %error "LONG_01768"
    %endif
    times 4 - ($ - %%insn_01768) db 0
    %%insn_0176c:
    mov di,[ss:bx] ; 0176C 368B3F
    %if ($ - %%insn_0176c) > 3
        %error "LONG_0176C"
    %endif
    times 3 - ($ - %%insn_0176c) db 0
    %%insn_0176f:
    cmp di,0xffffffffffffffff ; 0176F 83FFFF
    %if ($ - %%insn_0176f) > 3
        %error "LONG_0176F"
    %endif
    times 3 - ($ - %%insn_0176f) db 0
    %%insn_01772:
    jnz short 0x1777 ; 01772 7503
    %if ($ - %%insn_01772) > 2
        %error "LONG_01772"
    %endif
    times 2 - ($ - %%insn_01772) db 0
    %%insn_01774:
    jmp 0x1edd ; 01774 E96607
    %if ($ - %%insn_01774) > 3
        %error "LONG_01774"
    %endif
    times 3 - ($ - %%insn_01774) db 0
    %%insn_01777:
    mov ax,[bp+di+0x2] ; 01777 8B4302
    %if ($ - %%insn_01777) > 3
        %error "LONG_01777"
    %endif
    times 3 - ($ - %%insn_01777) db 0
    %%insn_0177a:
    cmp al,[bp-0x30b6] ; 0177A 3A864ACF
    %if ($ - %%insn_0177a) > 4
        %error "LONG_0177A"
    %endif
    times 4 - ($ - %%insn_0177a) db 0
    %%insn_0177e:
    jz short 0x17eb ; 0177E 746B
    %if ($ - %%insn_0177e) > 2
        %error "LONG_0177E"
    %endif
    times 2 - ($ - %%insn_0177e) db 0
    %%insn_01780:
    mov [bp-0x30b6],al ; 01780 88864ACF
    %if ($ - %%insn_01780) > 4
        %error "LONG_01780"
    %endif
    times 4 - ($ - %%insn_01780) db 0
    db 0x32, 0xE4 ; 01784 32E4 | xor ah,ah | encoding preserved
    %%insn_01786:
    mov [bp-0x3076],al ; 01786 88868ACF
    %if ($ - %%insn_01786) > 4
        %error "LONG_01786"
    %endif
    times 4 - ($ - %%insn_01786) db 0
    %%insn_0178a:
    call word near [ss:0xd660] ; 0178A 36FF1660D6
    %if ($ - %%insn_0178a) > 5
        %error "LONG_0178A"
    %endif
    times 5 - ($ - %%insn_0178a) db 0
    %%insn_0178f:
    push word [bp-0x30ba] ; 0178F FFB646CF
    %if ($ - %%insn_0178f) > 4
        %error "LONG_0178F"
    %endif
    times 4 - ($ - %%insn_0178f) db 0
    %%insn_01793:
    push word [bp-0x30b8] ; 01793 FFB648CF
    %if ($ - %%insn_01793) > 4
        %error "LONG_01793"
    %endif
    times 4 - ($ - %%insn_01793) db 0
    %%insn_01797:
    pop word [bp-0x30ba] ; 01797 8F8646CF
    %if ($ - %%insn_01797) > 4
        %error "LONG_01797"
    %endif
    times 4 - ($ - %%insn_01797) db 0
    %%insn_0179b:
    pop word [bp-0x30b8] ; 0179B 8F8648CF
    %if ($ - %%insn_0179b) > 4
        %error "LONG_0179B"
    %endif
    times 4 - ($ - %%insn_0179b) db 0
    %%insn_0179f:
    pusha ; 0179F 60
    %if ($ - %%insn_0179f) > 1
        %error "LONG_0179F"
    %endif
    times 1 - ($ - %%insn_0179f) db 0
    %%insn_017a0:
    push ds ; 017A0 1E
    %if ($ - %%insn_017a0) > 1
        %error "LONG_017A0"
    %endif
    times 1 - ($ - %%insn_017a0) db 0
    %%insn_017a1:
    mov ds,word [bp-0x2aae] ; 017A1 8E9E52D5
    %if ($ - %%insn_017a1) > 4
        %error "LONG_017A1"
    %endif
    times 4 - ($ - %%insn_017a1) db 0
    %%insn_017a5:
    mov dword [bp-0x2b92],0x10000 ; 017A5 66C7866ED400000100
    %if ($ - %%insn_017a5) > 9
        %error "LONG_017A5"
    %endif
    times 9 - ($ - %%insn_017a5) db 0
    %%insn_017ae:
    mov word [bp-0x2b88],0x0 ; 017AE C78678D40000
    %if ($ - %%insn_017ae) > 6
        %error "LONG_017AE"
    %endif
    times 6 - ($ - %%insn_017ae) db 0
    %%insn_017b4:
    mov ax,[bp-0x30b8] ; 017B4 8B8648CF
    %if ($ - %%insn_017b4) > 4
        %error "LONG_017B4"
    %endif
    times 4 - ($ - %%insn_017b4) db 0
    %%insn_017b8:
    mov word [bp-0x2b86],0x0 ; 017B8 C7867AD40000
    %if ($ - %%insn_017b8) > 6
        %error "LONG_017B8"
    %endif
    times 6 - ($ - %%insn_017b8) db 0
    %%insn_017be:
    mov [bp-0x2b84],ax ; 017BE 89867CD4
    %if ($ - %%insn_017be) > 4
        %error "LONG_017BE"
    %endif
    times 4 - ($ - %%insn_017be) db 0
    %%insn_017c2:
    mov ax,[bp-0x2ab0] ; 017C2 8B8650D5
    %if ($ - %%insn_017c2) > 4
        %error "LONG_017C2"
    %endif
    times 4 - ($ - %%insn_017c2) db 0
    %%insn_017c6:
    mov [bp-0x2b8e],ax ; 017C6 898672D4
    %if ($ - %%insn_017c6) > 4
        %error "LONG_017C6"
    %endif
    times 4 - ($ - %%insn_017c6) db 0
    %%insn_017ca:
    mov al,[bp-0x3076] ; 017CA 8A868ACF
    %if ($ - %%insn_017ca) > 4
        %error "LONG_017CA"
    %endif
    times 4 - ($ - %%insn_017ca) db 0
    %%insn_017ce:
    inc al ; 017CE FEC0
    %if ($ - %%insn_017ce) > 2
        %error "LONG_017CE"
    %endif
    times 2 - ($ - %%insn_017ce) db 0
    db 0x32, 0xE4 ; 017D0 32E4 | xor ah,ah | encoding preserved
    %%insn_017d2:
    shl eax,byte 0x10 ; 017D2 66C1E010
    %if ($ - %%insn_017d2) > 4
        %error "LONG_017D2"
    %endif
    times 4 - ($ - %%insn_017d2) db 0
    %%insn_017d6:
    mov [bp-0x2b8c],eax ; 017D6 66898674D4
    %if ($ - %%insn_017d6) > 5
        %error "LONG_017D6"
    %endif
    times 5 - ($ - %%insn_017d6) db 0
    %%insn_017db:
    mov ah,0xb ; 017DB B40B
    %if ($ - %%insn_017db) > 2
        %error "LONG_017DB"
    %endif
    times 2 - ($ - %%insn_017db) db 0
    %%insn_017dd:
    mov si,0xd46e ; 017DD BE6ED4
    %if ($ - %%insn_017dd) > 3
        %error "LONG_017DD"
    %endif
    times 3 - ($ - %%insn_017dd) db 0
    %%insn_017e0:
    call word far [cs:0x3688] ; 017E0 2EFF1E8836
    %if ($ - %%insn_017e0) > 5
        %error "LONG_017E0"
    %endif
    times 5 - ($ - %%insn_017e0) db 0
    %%insn_017e5:
    pop ds ; 017E5 1F
    %if ($ - %%insn_017e5) > 1
        %error "LONG_017E5"
    %endif
    times 1 - ($ - %%insn_017e5) db 0
    %%insn_017e6:
    popa ; 017E6 61
    %if ($ - %%insn_017e6) > 1
        %error "LONG_017E6"
    %endif
    times 1 - ($ - %%insn_017e6) db 0
    %%insn_017e7:
    mov fs,word [bp-0x30ba] ; 017E7 8EA646CF
    %if ($ - %%insn_017e7) > 4
        %error "LONG_017E7"
    %endif
    times 4 - ($ - %%insn_017e7) db 0
    %%insn_017eb:
    nop ; 017EB 90
    %if ($ - %%insn_017eb) > 1
        %error "LONG_017EB"
    %endif
    times 1 - ($ - %%insn_017eb) db 0
    db 0x32, 0xE4 ; 017EC 32E4 | xor ah,ah | encoding preserved
    %%insn_017ee:
    lodsb ; 017EE AC
    %if ($ - %%insn_017ee) > 1
        %error "LONG_017EE"
    %endif
    times 1 - ($ - %%insn_017ee) db 0
    db 0x22, 0xC0 ; 017EF 22C0 | and al,al | encoding preserved
    %%insn_017f1:
    js 0x1ed5 ; 017F1 0F88E006
    %if ($ - %%insn_017f1) > 4
        %error "LONG_017F1"
    %endif
    times 4 - ($ - %%insn_017f1) db 0
    db 0x3D, 0x60, 0x00 ; 017F5 3D6000 | cmp ax,0x60 | encoding preserved
    %%insn_017f8:
    jnc 0x1a43 ; 017F8 0F834702
    %if ($ - %%insn_017f8) > 4
        %error "LONG_017F8"
    %endif
    times 4 - ($ - %%insn_017f8) db 0
    %%insn_017fc:
    mov bx,0xd48e ; 017FC BB8ED4
    %if ($ - %%insn_017fc) > 3
        %error "LONG_017FC"
    %endif
    times 3 - ($ - %%insn_017fc) db 0
    %%insn_017ff:
    shl ax,1 ; 017FF D1E0
    %if ($ - %%insn_017ff) > 2
        %error "LONG_017FF"
    %endif
    times 2 - ($ - %%insn_017ff) db 0
    db 0x03, 0xD8 ; 01801 03D8 | add bx,ax | encoding preserved
    %%insn_01803:
    mov dx,[ss:bx] ; 01803 368B17
    %if ($ - %%insn_01803) > 3
        %error "LONG_01803"
    %endif
    times 3 - ($ - %%insn_01803) db 0
    %%insn_01806:
    mov bx,[si] ; 01806 8B1C
    %if ($ - %%insn_01806) > 2
        %error "LONG_01806"
    %endif
    times 2 - ($ - %%insn_01806) db 0
    %%insn_01808:
    add si,0x2 ; 01808 83C602
    %if ($ - %%insn_01808) > 3
        %error "LONG_01808"
    %endif
    times 3 - ($ - %%insn_01808) db 0
    %%insn_0180b:
    push di ; 0180B 57
    %if ($ - %%insn_0180b) > 1
        %error "LONG_0180B"
    %endif
    times 1 - ($ - %%insn_0180b) db 0
    %%insn_0180c:
    mov ax,[bp+di+0x2] ; 0180C 8B4302
    %if ($ - %%insn_0180c) > 3
        %error "LONG_0180C"
    %endif
    times 3 - ($ - %%insn_0180c) db 0
    %%insn_0180f:
    mov di,[bp+di] ; 0180F 8B3B
    %if ($ - %%insn_0180f) > 2
        %error "LONG_0180F"
    %endif
    times 2 - ($ - %%insn_0180f) db 0
    %%insn_01811:
    cmp al,[bp-0x3076] ; 01811 3A868ACF
    %if ($ - %%insn_01811) > 4
        %error "LONG_01811"
    %endif
    times 4 - ($ - %%insn_01811) db 0
    %%insn_01815:
    jz short 0x183a ; 01815 7423
    %if ($ - %%insn_01815) > 2
        %error "LONG_01815"
    %endif
    times 2 - ($ - %%insn_01815) db 0
    db 0x32, 0xE4 ; 01817 32E4 | xor ah,ah | encoding preserved
    %%insn_01819:
    mov [bp-0x3076],al ; 01819 88868ACF
    %if ($ - %%insn_01819) > 4
        %error "LONG_01819"
    %endif
    times 4 - ($ - %%insn_01819) db 0
    %%insn_0181d:
    call word near [ss:0xd660] ; 0181D 36FF1660D6
    %if ($ - %%insn_0181d) > 5
        %error "LONG_0181D"
    %endif
    times 5 - ($ - %%insn_0181d) db 0
    %%insn_01822:
    mov al,[bp-0x30b6] ; 01822 8A864ACF
    %if ($ - %%insn_01822) > 4
        %error "LONG_01822"
    %endif
    times 4 - ($ - %%insn_01822) db 0
    %%insn_01826:
    cmp al,[bp-0x3076] ; 01826 3A868ACF
    %if ($ - %%insn_01826) > 4
        %error "LONG_01826"
    %endif
    times 4 - ($ - %%insn_01826) db 0
    %%insn_0182a:
    jnz short 0x1832 ; 0182A 7506
    %if ($ - %%insn_0182a) > 2
        %error "LONG_0182A"
    %endif
    times 2 - ($ - %%insn_0182a) db 0
    %%insn_0182c:
    mov fs,word [bp-0x30ba] ; 0182C 8EA646CF
    %if ($ - %%insn_0182c) > 4
        %error "LONG_0182C"
    %endif
    times 4 - ($ - %%insn_0182c) db 0
    %%insn_01830:
    jmp short 0x1836 ; 01830 EB04
    %if ($ - %%insn_01830) > 2
        %error "LONG_01830"
    %endif
    times 2 - ($ - %%insn_01830) db 0
    %%insn_01832:
    mov fs,word [bp-0x30b8] ; 01832 8EA648CF
    %if ($ - %%insn_01832) > 4
        %error "LONG_01832"
    %endif
    times 4 - ($ - %%insn_01832) db 0
    %%insn_01836:
    mov fs,word [bp-0x30ba] ; 01836 8EA646CF
    %if ($ - %%insn_01836) > 4
        %error "LONG_01836"
    %endif
    times 4 - ($ - %%insn_01836) db 0
    %%insn_0183a:
    mov ds,word [bp-0x2aa8] ; 0183A 8E9E58D5
    %if ($ - %%insn_0183a) > 4
        %error "LONG_0183A"
    %endif
    times 4 - ($ - %%insn_0183a) db 0
    db 0x8B, 0xC3 ; 0183E 8BC3 | mov ax,bx | encoding preserved
    %%insn_01840:
    test dx,0x8000 ; 01840 F7C20080
    %if ($ - %%insn_01840) > 4
        %error "LONG_01840"
    %endif
    times 4 - ($ - %%insn_01840) db 0
    %%insn_01844:
    jnz short 0x1848 ; 01844 7502
    %if ($ - %%insn_01844) > 2
        %error "LONG_01844"
    %endif
    times 2 - ($ - %%insn_01844) db 0
    db 0x8A, 0xC7 ; 01846 8AC7 | mov al,bh | encoding preserved
    %%insn_01848:
    test dx,0x4000 ; 01848 F7C20040
    %if ($ - %%insn_01848) > 4
        %error "LONG_01848"
    %endif
    times 4 - ($ - %%insn_01848) db 0
    %%insn_0184c:
    jz short 0x1850 ; 0184C 7402
    %if ($ - %%insn_0184c) > 2
        %error "LONG_0184C"
    %endif
    times 2 - ($ - %%insn_0184c) db 0
    db 0x8A, 0xE3 ; 0184E 8AE3 | mov ah,bl | encoding preserved
    %%insn_01850:
    push bx ; 01850 53
    %if ($ - %%insn_01850) > 1
        %error "LONG_01850"
    %endif
    times 1 - ($ - %%insn_01850) db 0
    %%insn_01851:
    mov bx,[fs:di] ; 01851 648B1D
    %if ($ - %%insn_01851) > 3
        %error "LONG_01851"
    %endif
    times 3 - ($ - %%insn_01851) db 0
    %%insn_01854:
    cmp bl,0xff ; 01854 80FBFF
    %if ($ - %%insn_01854) > 3
        %error "LONG_01854"
    %endif
    times 3 - ($ - %%insn_01854) db 0
    %%insn_01857:
    jz short 0x1861 ; 01857 7408
    %if ($ - %%insn_01857) > 2
        %error "LONG_01857"
    %endif
    times 2 - ($ - %%insn_01857) db 0
    %%insn_01859:
    cmp al,0xff ; 01859 3CFF
    %if ($ - %%insn_01859) > 2
        %error "LONG_01859"
    %endif
    times 2 - ($ - %%insn_01859) db 0
    %%insn_0185b:
    jnz short 0x185f ; 0185B 7502
    %if ($ - %%insn_0185b) > 2
        %error "LONG_0185B"
    %endif
    times 2 - ($ - %%insn_0185b) db 0
    db 0x8A, 0xC3 ; 0185D 8AC3 | mov al,bl | encoding preserved
    %%insn_0185f:
    mov [di],al ; 0185F 8805
    %if ($ - %%insn_0185f) > 2
        %error "LONG_0185F"
    %endif
    times 2 - ($ - %%insn_0185f) db 0
    %%insn_01861:
    cmp bh,0xff ; 01861 80FFFF
    %if ($ - %%insn_01861) > 3
        %error "LONG_01861"
    %endif
    times 3 - ($ - %%insn_01861) db 0
    %%insn_01864:
    jz short 0x1870 ; 01864 740A
    %if ($ - %%insn_01864) > 2
        %error "LONG_01864"
    %endif
    times 2 - ($ - %%insn_01864) db 0
    %%insn_01866:
    cmp ah,0xff ; 01866 80FCFF
    %if ($ - %%insn_01866) > 3
        %error "LONG_01866"
    %endif
    times 3 - ($ - %%insn_01866) db 0
    %%insn_01869:
    jnz short 0x186d ; 01869 7502
    %if ($ - %%insn_01869) > 2
        %error "LONG_01869"
    %endif
    times 2 - ($ - %%insn_01869) db 0
    db 0x8A, 0xE7 ; 0186B 8AE7 | mov ah,bh | encoding preserved
    %%insn_0186d:
    mov [di+0x1],ah ; 0186D 886501
    %if ($ - %%insn_0186d) > 3
        %error "LONG_0186D"
    %endif
    times 3 - ($ - %%insn_0186d) db 0
    %%insn_01870:
    pop bx ; 01870 5B
    %if ($ - %%insn_01870) > 1
        %error "LONG_01870"
    %endif
    times 1 - ($ - %%insn_01870) db 0
    db 0x8B, 0xC3 ; 01871 8BC3 | mov ax,bx | encoding preserved
    %%insn_01873:
    test dx,0x2000 ; 01873 F7C20020
    %if ($ - %%insn_01873) > 4
        %error "LONG_01873"
    %endif
    times 4 - ($ - %%insn_01873) db 0
    %%insn_01877:
    jnz short 0x187b ; 01877 7502
    %if ($ - %%insn_01877) > 2
        %error "LONG_01877"
    %endif
    times 2 - ($ - %%insn_01877) db 0
    db 0x8A, 0xC7 ; 01879 8AC7 | mov al,bh | encoding preserved
    %%insn_0187b:
    test dx,0x1000 ; 0187B F7C20010
    %if ($ - %%insn_0187b) > 4
        %error "LONG_0187B"
    %endif
    times 4 - ($ - %%insn_0187b) db 0
    %%insn_0187f:
    jz short 0x1883 ; 0187F 7402
    %if ($ - %%insn_0187f) > 2
        %error "LONG_0187F"
    %endif
    times 2 - ($ - %%insn_0187f) db 0
    db 0x8A, 0xE3 ; 01881 8AE3 | mov ah,bl | encoding preserved
    %%insn_01883:
    push bx ; 01883 53
    %if ($ - %%insn_01883) > 1
        %error "LONG_01883"
    %endif
    times 1 - ($ - %%insn_01883) db 0
    %%insn_01884:
    mov bx,[fs:di+0x2] ; 01884 648B5D02
    %if ($ - %%insn_01884) > 4
        %error "LONG_01884"
    %endif
    times 4 - ($ - %%insn_01884) db 0
    %%insn_01888:
    cmp bl,0xff ; 01888 80FBFF
    %if ($ - %%insn_01888) > 3
        %error "LONG_01888"
    %endif
    times 3 - ($ - %%insn_01888) db 0
    %%insn_0188b:
    jz short 0x1896 ; 0188B 7409
    %if ($ - %%insn_0188b) > 2
        %error "LONG_0188B"
    %endif
    times 2 - ($ - %%insn_0188b) db 0
    %%insn_0188d:
    cmp al,0xff ; 0188D 3CFF
    %if ($ - %%insn_0188d) > 2
        %error "LONG_0188D"
    %endif
    times 2 - ($ - %%insn_0188d) db 0
    %%insn_0188f:
    jnz short 0x1893 ; 0188F 7502
    %if ($ - %%insn_0188f) > 2
        %error "LONG_0188F"
    %endif
    times 2 - ($ - %%insn_0188f) db 0
    db 0x8A, 0xC3 ; 01891 8AC3 | mov al,bl | encoding preserved
    %%insn_01893:
    mov [di+0x2],al ; 01893 884502
    %if ($ - %%insn_01893) > 3
        %error "LONG_01893"
    %endif
    times 3 - ($ - %%insn_01893) db 0
    %%insn_01896:
    cmp bh,0xff ; 01896 80FFFF
    %if ($ - %%insn_01896) > 3
        %error "LONG_01896"
    %endif
    times 3 - ($ - %%insn_01896) db 0
    %%insn_01899:
    jz short 0x18a5 ; 01899 740A
    %if ($ - %%insn_01899) > 2
        %error "LONG_01899"
    %endif
    times 2 - ($ - %%insn_01899) db 0
    %%insn_0189b:
    cmp ah,0xff ; 0189B 80FCFF
    %if ($ - %%insn_0189b) > 3
        %error "LONG_0189B"
    %endif
    times 3 - ($ - %%insn_0189b) db 0
    %%insn_0189e:
    jnz short 0x18a2 ; 0189E 7502
    %if ($ - %%insn_0189e) > 2
        %error "LONG_0189E"
    %endif
    times 2 - ($ - %%insn_0189e) db 0
    db 0x8A, 0xE7 ; 018A0 8AE7 | mov ah,bh | encoding preserved
    %%insn_018a2:
    mov [di+0x3],ah ; 018A2 886503
    %if ($ - %%insn_018a2) > 3
        %error "LONG_018A2"
    %endif
    times 3 - ($ - %%insn_018a2) db 0
    %%insn_018a5:
    pop bx ; 018A5 5B
    %if ($ - %%insn_018a5) > 1
        %error "LONG_018A5"
    %endif
    times 1 - ($ - %%insn_018a5) db 0
    %%insn_018a6:
    shl dx,byte 0x4 ; 018A6 C1E204
    %if ($ - %%insn_018a6) > 3
        %error "LONG_018A6"
    %endif
    times 3 - ($ - %%insn_018a6) db 0
    %%insn_018a9:
    add di,[bp-0x2996] ; 018A9 03BE6AD6
    %if ($ - %%insn_018a9) > 4
        %error "LONG_018A9"
    %endif
    times 4 - ($ - %%insn_018a9) db 0
    %%insn_018ad:
    jnc short 0x18c4 ; 018AD 7315
    %if ($ - %%insn_018ad) > 2
        %error "LONG_018AD"
    %endif
    times 2 - ($ - %%insn_018ad) db 0
    %%insn_018af:
    mov al,[bp-0x3076] ; 018AF 8A868ACF
    %if ($ - %%insn_018af) > 4
        %error "LONG_018AF"
    %endif
    times 4 - ($ - %%insn_018af) db 0
    %%insn_018b3:
    inc al ; 018B3 FEC0
    %if ($ - %%insn_018b3) > 2
        %error "LONG_018B3"
    %endif
    times 2 - ($ - %%insn_018b3) db 0
    db 0x32, 0xE4 ; 018B5 32E4 | xor ah,ah | encoding preserved
    %%insn_018b7:
    mov [bp-0x3076],al ; 018B7 88868ACF
    %if ($ - %%insn_018b7) > 4
        %error "LONG_018B7"
    %endif
    times 4 - ($ - %%insn_018b7) db 0
    %%insn_018bb:
    call word near [ss:0xd660] ; 018BB 36FF1660D6
    %if ($ - %%insn_018bb) > 5
        %error "LONG_018BB"
    %endif
    times 5 - ($ - %%insn_018bb) db 0
    %%insn_018c0:
    mov fs,word [bp-0x30b8] ; 018C0 8EA648CF
    %if ($ - %%insn_018c0) > 4
        %error "LONG_018C0"
    %endif
    times 4 - ($ - %%insn_018c0) db 0
    db 0x8B, 0xC3 ; 018C4 8BC3 | mov ax,bx | encoding preserved
    %%insn_018c6:
    test dx,0x8000 ; 018C6 F7C20080
    %if ($ - %%insn_018c6) > 4
        %error "LONG_018C6"
    %endif
    times 4 - ($ - %%insn_018c6) db 0
    %%insn_018ca:
    jnz short 0x18ce ; 018CA 7502
    %if ($ - %%insn_018ca) > 2
        %error "LONG_018CA"
    %endif
    times 2 - ($ - %%insn_018ca) db 0
    db 0x8A, 0xC7 ; 018CC 8AC7 | mov al,bh | encoding preserved
    %%insn_018ce:
    test dx,0x4000 ; 018CE F7C20040
    %if ($ - %%insn_018ce) > 4
        %error "LONG_018CE"
    %endif
    times 4 - ($ - %%insn_018ce) db 0
    %%insn_018d2:
    jz short 0x18d6 ; 018D2 7402
    %if ($ - %%insn_018d2) > 2
        %error "LONG_018D2"
    %endif
    times 2 - ($ - %%insn_018d2) db 0
    db 0x8A, 0xE3 ; 018D4 8AE3 | mov ah,bl | encoding preserved
    %%insn_018d6:
    push bx ; 018D6 53
    %if ($ - %%insn_018d6) > 1
        %error "LONG_018D6"
    %endif
    times 1 - ($ - %%insn_018d6) db 0
    %%insn_018d7:
    mov bx,[fs:di] ; 018D7 648B1D
    %if ($ - %%insn_018d7) > 3
        %error "LONG_018D7"
    %endif
    times 3 - ($ - %%insn_018d7) db 0
    %%insn_018da:
    cmp bl,0xff ; 018DA 80FBFF
    %if ($ - %%insn_018da) > 3
        %error "LONG_018DA"
    %endif
    times 3 - ($ - %%insn_018da) db 0
    %%insn_018dd:
    jz short 0x18e7 ; 018DD 7408
    %if ($ - %%insn_018dd) > 2
        %error "LONG_018DD"
    %endif
    times 2 - ($ - %%insn_018dd) db 0
    %%insn_018df:
    cmp al,0xff ; 018DF 3CFF
    %if ($ - %%insn_018df) > 2
        %error "LONG_018DF"
    %endif
    times 2 - ($ - %%insn_018df) db 0
    %%insn_018e1:
    jnz short 0x18e5 ; 018E1 7502
    %if ($ - %%insn_018e1) > 2
        %error "LONG_018E1"
    %endif
    times 2 - ($ - %%insn_018e1) db 0
    db 0x8A, 0xC3 ; 018E3 8AC3 | mov al,bl | encoding preserved
    %%insn_018e5:
    mov [di],al ; 018E5 8805
    %if ($ - %%insn_018e5) > 2
        %error "LONG_018E5"
    %endif
    times 2 - ($ - %%insn_018e5) db 0
    %%insn_018e7:
    cmp bh,0xff ; 018E7 80FFFF
    %if ($ - %%insn_018e7) > 3
        %error "LONG_018E7"
    %endif
    times 3 - ($ - %%insn_018e7) db 0
    %%insn_018ea:
    jz short 0x18f6 ; 018EA 740A
    %if ($ - %%insn_018ea) > 2
        %error "LONG_018EA"
    %endif
    times 2 - ($ - %%insn_018ea) db 0
    %%insn_018ec:
    cmp ah,0xff ; 018EC 80FCFF
    %if ($ - %%insn_018ec) > 3
        %error "LONG_018EC"
    %endif
    times 3 - ($ - %%insn_018ec) db 0
    %%insn_018ef:
    jnz short 0x18f3 ; 018EF 7502
    %if ($ - %%insn_018ef) > 2
        %error "LONG_018EF"
    %endif
    times 2 - ($ - %%insn_018ef) db 0
    db 0x8A, 0xE7 ; 018F1 8AE7 | mov ah,bh | encoding preserved
    %%insn_018f3:
    mov [di+0x1],ah ; 018F3 886501
    %if ($ - %%insn_018f3) > 3
        %error "LONG_018F3"
    %endif
    times 3 - ($ - %%insn_018f3) db 0
    %%insn_018f6:
    pop bx ; 018F6 5B
    %if ($ - %%insn_018f6) > 1
        %error "LONG_018F6"
    %endif
    times 1 - ($ - %%insn_018f6) db 0
    db 0x8B, 0xC3 ; 018F7 8BC3 | mov ax,bx | encoding preserved
    %%insn_018f9:
    test dx,0x2000 ; 018F9 F7C20020
    %if ($ - %%insn_018f9) > 4
        %error "LONG_018F9"
    %endif
    times 4 - ($ - %%insn_018f9) db 0
    %%insn_018fd:
    jnz short 0x1901 ; 018FD 7502
    %if ($ - %%insn_018fd) > 2
        %error "LONG_018FD"
    %endif
    times 2 - ($ - %%insn_018fd) db 0
    db 0x8A, 0xC7 ; 018FF 8AC7 | mov al,bh | encoding preserved
    %%insn_01901:
    test dx,0x1000 ; 01901 F7C20010
    %if ($ - %%insn_01901) > 4
        %error "LONG_01901"
    %endif
    times 4 - ($ - %%insn_01901) db 0
    %%insn_01905:
    jz short 0x1909 ; 01905 7402
    %if ($ - %%insn_01905) > 2
        %error "LONG_01905"
    %endif
    times 2 - ($ - %%insn_01905) db 0
    db 0x8A, 0xE3 ; 01907 8AE3 | mov ah,bl | encoding preserved
    %%insn_01909:
    push bx ; 01909 53
    %if ($ - %%insn_01909) > 1
        %error "LONG_01909"
    %endif
    times 1 - ($ - %%insn_01909) db 0
    %%insn_0190a:
    mov bx,[fs:di+0x2] ; 0190A 648B5D02
    %if ($ - %%insn_0190a) > 4
        %error "LONG_0190A"
    %endif
    times 4 - ($ - %%insn_0190a) db 0
    %%insn_0190e:
    cmp bl,0xff ; 0190E 80FBFF
    %if ($ - %%insn_0190e) > 3
        %error "LONG_0190E"
    %endif
    times 3 - ($ - %%insn_0190e) db 0
    %%insn_01911:
    jz short 0x191c ; 01911 7409
    %if ($ - %%insn_01911) > 2
        %error "LONG_01911"
    %endif
    times 2 - ($ - %%insn_01911) db 0
    %%insn_01913:
    cmp al,0xff ; 01913 3CFF
    %if ($ - %%insn_01913) > 2
        %error "LONG_01913"
    %endif
    times 2 - ($ - %%insn_01913) db 0
    %%insn_01915:
    jnz short 0x1919 ; 01915 7502
    %if ($ - %%insn_01915) > 2
        %error "LONG_01915"
    %endif
    times 2 - ($ - %%insn_01915) db 0
    db 0x8A, 0xC3 ; 01917 8AC3 | mov al,bl | encoding preserved
    %%insn_01919:
    mov [di+0x2],al ; 01919 884502
    %if ($ - %%insn_01919) > 3
        %error "LONG_01919"
    %endif
    times 3 - ($ - %%insn_01919) db 0
    %%insn_0191c:
    cmp bh,0xff ; 0191C 80FFFF
    %if ($ - %%insn_0191c) > 3
        %error "LONG_0191C"
    %endif
    times 3 - ($ - %%insn_0191c) db 0
    %%insn_0191f:
    jz short 0x192b ; 0191F 740A
    %if ($ - %%insn_0191f) > 2
        %error "LONG_0191F"
    %endif
    times 2 - ($ - %%insn_0191f) db 0
    %%insn_01921:
    cmp ah,0xff ; 01921 80FCFF
    %if ($ - %%insn_01921) > 3
        %error "LONG_01921"
    %endif
    times 3 - ($ - %%insn_01921) db 0
    %%insn_01924:
    jnz short 0x1928 ; 01924 7502
    %if ($ - %%insn_01924) > 2
        %error "LONG_01924"
    %endif
    times 2 - ($ - %%insn_01924) db 0
    db 0x8A, 0xE7 ; 01926 8AE7 | mov ah,bh | encoding preserved
    %%insn_01928:
    mov [di+0x3],ah ; 01928 886503
    %if ($ - %%insn_01928) > 3
        %error "LONG_01928"
    %endif
    times 3 - ($ - %%insn_01928) db 0
    %%insn_0192b:
    pop bx ; 0192B 5B
    %if ($ - %%insn_0192b) > 1
        %error "LONG_0192B"
    %endif
    times 1 - ($ - %%insn_0192b) db 0
    %%insn_0192c:
    shl dx,byte 0x4 ; 0192C C1E204
    %if ($ - %%insn_0192c) > 3
        %error "LONG_0192C"
    %endif
    times 3 - ($ - %%insn_0192c) db 0
    %%insn_0192f:
    add di,[bp-0x2996] ; 0192F 03BE6AD6
    %if ($ - %%insn_0192f) > 4
        %error "LONG_0192F"
    %endif
    times 4 - ($ - %%insn_0192f) db 0
    %%insn_01933:
    jnc short 0x194a ; 01933 7315
    %if ($ - %%insn_01933) > 2
        %error "LONG_01933"
    %endif
    times 2 - ($ - %%insn_01933) db 0
    %%insn_01935:
    mov al,[bp-0x3076] ; 01935 8A868ACF
    %if ($ - %%insn_01935) > 4
        %error "LONG_01935"
    %endif
    times 4 - ($ - %%insn_01935) db 0
    %%insn_01939:
    inc al ; 01939 FEC0
    %if ($ - %%insn_01939) > 2
        %error "LONG_01939"
    %endif
    times 2 - ($ - %%insn_01939) db 0
    db 0x32, 0xE4 ; 0193B 32E4 | xor ah,ah | encoding preserved
    %%insn_0193d:
    mov [bp-0x3076],al ; 0193D 88868ACF
    %if ($ - %%insn_0193d) > 4
        %error "LONG_0193D"
    %endif
    times 4 - ($ - %%insn_0193d) db 0
    %%insn_01941:
    call word near [ss:0xd660] ; 01941 36FF1660D6
    %if ($ - %%insn_01941) > 5
        %error "LONG_01941"
    %endif
    times 5 - ($ - %%insn_01941) db 0
    %%insn_01946:
    mov fs,word [bp-0x30b8] ; 01946 8EA648CF
    %if ($ - %%insn_01946) > 4
        %error "LONG_01946"
    %endif
    times 4 - ($ - %%insn_01946) db 0
    db 0x8B, 0xC3 ; 0194A 8BC3 | mov ax,bx | encoding preserved
    %%insn_0194c:
    test dx,0x8000 ; 0194C F7C20080
    %if ($ - %%insn_0194c) > 4
        %error "LONG_0194C"
    %endif
    times 4 - ($ - %%insn_0194c) db 0
    %%insn_01950:
    jnz short 0x1954 ; 01950 7502
    %if ($ - %%insn_01950) > 2
        %error "LONG_01950"
    %endif
    times 2 - ($ - %%insn_01950) db 0
    db 0x8A, 0xC7 ; 01952 8AC7 | mov al,bh | encoding preserved
    %%insn_01954:
    test dx,0x4000 ; 01954 F7C20040
    %if ($ - %%insn_01954) > 4
        %error "LONG_01954"
    %endif
    times 4 - ($ - %%insn_01954) db 0
    %%insn_01958:
    jz short 0x195c ; 01958 7402
    %if ($ - %%insn_01958) > 2
        %error "LONG_01958"
    %endif
    times 2 - ($ - %%insn_01958) db 0
    db 0x8A, 0xE3 ; 0195A 8AE3 | mov ah,bl | encoding preserved
    %%insn_0195c:
    push bx ; 0195C 53
    %if ($ - %%insn_0195c) > 1
        %error "LONG_0195C"
    %endif
    times 1 - ($ - %%insn_0195c) db 0
    %%insn_0195d:
    mov bx,[fs:di] ; 0195D 648B1D
    %if ($ - %%insn_0195d) > 3
        %error "LONG_0195D"
    %endif
    times 3 - ($ - %%insn_0195d) db 0
    %%insn_01960:
    cmp bl,0xff ; 01960 80FBFF
    %if ($ - %%insn_01960) > 3
        %error "LONG_01960"
    %endif
    times 3 - ($ - %%insn_01960) db 0
    %%insn_01963:
    jz short 0x196d ; 01963 7408
    %if ($ - %%insn_01963) > 2
        %error "LONG_01963"
    %endif
    times 2 - ($ - %%insn_01963) db 0
    %%insn_01965:
    cmp al,0xff ; 01965 3CFF
    %if ($ - %%insn_01965) > 2
        %error "LONG_01965"
    %endif
    times 2 - ($ - %%insn_01965) db 0
    %%insn_01967:
    jnz short 0x196b ; 01967 7502
    %if ($ - %%insn_01967) > 2
        %error "LONG_01967"
    %endif
    times 2 - ($ - %%insn_01967) db 0
    db 0x8A, 0xC3 ; 01969 8AC3 | mov al,bl | encoding preserved
    %%insn_0196b:
    mov [di],al ; 0196B 8805
    %if ($ - %%insn_0196b) > 2
        %error "LONG_0196B"
    %endif
    times 2 - ($ - %%insn_0196b) db 0
    %%insn_0196d:
    cmp bh,0xff ; 0196D 80FFFF
    %if ($ - %%insn_0196d) > 3
        %error "LONG_0196D"
    %endif
    times 3 - ($ - %%insn_0196d) db 0
    %%insn_01970:
    jz short 0x197c ; 01970 740A
    %if ($ - %%insn_01970) > 2
        %error "LONG_01970"
    %endif
    times 2 - ($ - %%insn_01970) db 0
    %%insn_01972:
    cmp ah,0xff ; 01972 80FCFF
    %if ($ - %%insn_01972) > 3
        %error "LONG_01972"
    %endif
    times 3 - ($ - %%insn_01972) db 0
    %%insn_01975:
    jnz short 0x1979 ; 01975 7502
    %if ($ - %%insn_01975) > 2
        %error "LONG_01975"
    %endif
    times 2 - ($ - %%insn_01975) db 0
    db 0x8A, 0xE7 ; 01977 8AE7 | mov ah,bh | encoding preserved
    %%insn_01979:
    mov [di+0x1],ah ; 01979 886501
    %if ($ - %%insn_01979) > 3
        %error "LONG_01979"
    %endif
    times 3 - ($ - %%insn_01979) db 0
    %%insn_0197c:
    pop bx ; 0197C 5B
    %if ($ - %%insn_0197c) > 1
        %error "LONG_0197C"
    %endif
    times 1 - ($ - %%insn_0197c) db 0
    db 0x8B, 0xC3 ; 0197D 8BC3 | mov ax,bx | encoding preserved
    %%insn_0197f:
    test dx,0x2000 ; 0197F F7C20020
    %if ($ - %%insn_0197f) > 4
        %error "LONG_0197F"
    %endif
    times 4 - ($ - %%insn_0197f) db 0
    %%insn_01983:
    jnz short 0x1987 ; 01983 7502
    %if ($ - %%insn_01983) > 2
        %error "LONG_01983"
    %endif
    times 2 - ($ - %%insn_01983) db 0
    db 0x8A, 0xC7 ; 01985 8AC7 | mov al,bh | encoding preserved
    %%insn_01987:
    test dx,0x1000 ; 01987 F7C20010
    %if ($ - %%insn_01987) > 4
        %error "LONG_01987"
    %endif
    times 4 - ($ - %%insn_01987) db 0
    %%insn_0198b:
    jz short 0x198f ; 0198B 7402
    %if ($ - %%insn_0198b) > 2
        %error "LONG_0198B"
    %endif
    times 2 - ($ - %%insn_0198b) db 0
    db 0x8A, 0xE3 ; 0198D 8AE3 | mov ah,bl | encoding preserved
    %%insn_0198f:
    push bx ; 0198F 53
    %if ($ - %%insn_0198f) > 1
        %error "LONG_0198F"
    %endif
    times 1 - ($ - %%insn_0198f) db 0
    %%insn_01990:
    mov bx,[fs:di+0x2] ; 01990 648B5D02
    %if ($ - %%insn_01990) > 4
        %error "LONG_01990"
    %endif
    times 4 - ($ - %%insn_01990) db 0
    %%insn_01994:
    cmp bl,0xff ; 01994 80FBFF
    %if ($ - %%insn_01994) > 3
        %error "LONG_01994"
    %endif
    times 3 - ($ - %%insn_01994) db 0
    %%insn_01997:
    jz short 0x19a2 ; 01997 7409
    %if ($ - %%insn_01997) > 2
        %error "LONG_01997"
    %endif
    times 2 - ($ - %%insn_01997) db 0
    %%insn_01999:
    cmp al,0xff ; 01999 3CFF
    %if ($ - %%insn_01999) > 2
        %error "LONG_01999"
    %endif
    times 2 - ($ - %%insn_01999) db 0
    %%insn_0199b:
    jnz short 0x199f ; 0199B 7502
    %if ($ - %%insn_0199b) > 2
        %error "LONG_0199B"
    %endif
    times 2 - ($ - %%insn_0199b) db 0
    db 0x8A, 0xC3 ; 0199D 8AC3 | mov al,bl | encoding preserved
    %%insn_0199f:
    mov [di+0x2],al ; 0199F 884502
    %if ($ - %%insn_0199f) > 3
        %error "LONG_0199F"
    %endif
    times 3 - ($ - %%insn_0199f) db 0
    %%insn_019a2:
    cmp bh,0xff ; 019A2 80FFFF
    %if ($ - %%insn_019a2) > 3
        %error "LONG_019A2"
    %endif
    times 3 - ($ - %%insn_019a2) db 0
    %%insn_019a5:
    jz short 0x19b1 ; 019A5 740A
    %if ($ - %%insn_019a5) > 2
        %error "LONG_019A5"
    %endif
    times 2 - ($ - %%insn_019a5) db 0
    %%insn_019a7:
    cmp ah,0xff ; 019A7 80FCFF
    %if ($ - %%insn_019a7) > 3
        %error "LONG_019A7"
    %endif
    times 3 - ($ - %%insn_019a7) db 0
    %%insn_019aa:
    jnz short 0x19ae ; 019AA 7502
    %if ($ - %%insn_019aa) > 2
        %error "LONG_019AA"
    %endif
    times 2 - ($ - %%insn_019aa) db 0
    db 0x8A, 0xE7 ; 019AC 8AE7 | mov ah,bh | encoding preserved
    %%insn_019ae:
    mov [di+0x3],ah ; 019AE 886503
    %if ($ - %%insn_019ae) > 3
        %error "LONG_019AE"
    %endif
    times 3 - ($ - %%insn_019ae) db 0
    %%insn_019b1:
    pop bx ; 019B1 5B
    %if ($ - %%insn_019b1) > 1
        %error "LONG_019B1"
    %endif
    times 1 - ($ - %%insn_019b1) db 0
    %%insn_019b2:
    shl dx,byte 0x4 ; 019B2 C1E204
    %if ($ - %%insn_019b2) > 3
        %error "LONG_019B2"
    %endif
    times 3 - ($ - %%insn_019b2) db 0
    %%insn_019b5:
    add di,[bp-0x2996] ; 019B5 03BE6AD6
    %if ($ - %%insn_019b5) > 4
        %error "LONG_019B5"
    %endif
    times 4 - ($ - %%insn_019b5) db 0
    %%insn_019b9:
    jnc short 0x19d0 ; 019B9 7315
    %if ($ - %%insn_019b9) > 2
        %error "LONG_019B9"
    %endif
    times 2 - ($ - %%insn_019b9) db 0
    %%insn_019bb:
    mov al,[bp-0x3076] ; 019BB 8A868ACF
    %if ($ - %%insn_019bb) > 4
        %error "LONG_019BB"
    %endif
    times 4 - ($ - %%insn_019bb) db 0
    %%insn_019bf:
    inc al ; 019BF FEC0
    %if ($ - %%insn_019bf) > 2
        %error "LONG_019BF"
    %endif
    times 2 - ($ - %%insn_019bf) db 0
    db 0x32, 0xE4 ; 019C1 32E4 | xor ah,ah | encoding preserved
    %%insn_019c3:
    mov [bp-0x3076],al ; 019C3 88868ACF
    %if ($ - %%insn_019c3) > 4
        %error "LONG_019C3"
    %endif
    times 4 - ($ - %%insn_019c3) db 0
    %%insn_019c7:
    call word near [ss:0xd660] ; 019C7 36FF1660D6
    %if ($ - %%insn_019c7) > 5
        %error "LONG_019C7"
    %endif
    times 5 - ($ - %%insn_019c7) db 0
    %%insn_019cc:
    mov fs,word [bp-0x30b8] ; 019CC 8EA648CF
    %if ($ - %%insn_019cc) > 4
        %error "LONG_019CC"
    %endif
    times 4 - ($ - %%insn_019cc) db 0
    db 0x8B, 0xC3 ; 019D0 8BC3 | mov ax,bx | encoding preserved
    %%insn_019d2:
    test dx,0x8000 ; 019D2 F7C20080
    %if ($ - %%insn_019d2) > 4
        %error "LONG_019D2"
    %endif
    times 4 - ($ - %%insn_019d2) db 0
    %%insn_019d6:
    jnz short 0x19da ; 019D6 7502
    %if ($ - %%insn_019d6) > 2
        %error "LONG_019D6"
    %endif
    times 2 - ($ - %%insn_019d6) db 0
    db 0x8A, 0xC7 ; 019D8 8AC7 | mov al,bh | encoding preserved
    %%insn_019da:
    test dx,0x4000 ; 019DA F7C20040
    %if ($ - %%insn_019da) > 4
        %error "LONG_019DA"
    %endif
    times 4 - ($ - %%insn_019da) db 0
    %%insn_019de:
    jz short 0x19e2 ; 019DE 7402
    %if ($ - %%insn_019de) > 2
        %error "LONG_019DE"
    %endif
    times 2 - ($ - %%insn_019de) db 0
    db 0x8A, 0xE3 ; 019E0 8AE3 | mov ah,bl | encoding preserved
    %%insn_019e2:
    push bx ; 019E2 53
    %if ($ - %%insn_019e2) > 1
        %error "LONG_019E2"
    %endif
    times 1 - ($ - %%insn_019e2) db 0
    %%insn_019e3:
    mov bx,[fs:di] ; 019E3 648B1D
    %if ($ - %%insn_019e3) > 3
        %error "LONG_019E3"
    %endif
    times 3 - ($ - %%insn_019e3) db 0
    %%insn_019e6:
    cmp bl,0xff ; 019E6 80FBFF
    %if ($ - %%insn_019e6) > 3
        %error "LONG_019E6"
    %endif
    times 3 - ($ - %%insn_019e6) db 0
    %%insn_019e9:
    jz short 0x19f3 ; 019E9 7408
    %if ($ - %%insn_019e9) > 2
        %error "LONG_019E9"
    %endif
    times 2 - ($ - %%insn_019e9) db 0
    %%insn_019eb:
    cmp al,0xff ; 019EB 3CFF
    %if ($ - %%insn_019eb) > 2
        %error "LONG_019EB"
    %endif
    times 2 - ($ - %%insn_019eb) db 0
    %%insn_019ed:
    jnz short 0x19f1 ; 019ED 7502
    %if ($ - %%insn_019ed) > 2
        %error "LONG_019ED"
    %endif
    times 2 - ($ - %%insn_019ed) db 0
    db 0x8A, 0xC3 ; 019EF 8AC3 | mov al,bl | encoding preserved
    %%insn_019f1:
    mov [di],al ; 019F1 8805
    %if ($ - %%insn_019f1) > 2
        %error "LONG_019F1"
    %endif
    times 2 - ($ - %%insn_019f1) db 0
    %%insn_019f3:
    cmp bh,0xff ; 019F3 80FFFF
    %if ($ - %%insn_019f3) > 3
        %error "LONG_019F3"
    %endif
    times 3 - ($ - %%insn_019f3) db 0
    %%insn_019f6:
    jz short 0x1a02 ; 019F6 740A
    %if ($ - %%insn_019f6) > 2
        %error "LONG_019F6"
    %endif
    times 2 - ($ - %%insn_019f6) db 0
    %%insn_019f8:
    cmp ah,0xff ; 019F8 80FCFF
    %if ($ - %%insn_019f8) > 3
        %error "LONG_019F8"
    %endif
    times 3 - ($ - %%insn_019f8) db 0
    %%insn_019fb:
    jnz short 0x19ff ; 019FB 7502
    %if ($ - %%insn_019fb) > 2
        %error "LONG_019FB"
    %endif
    times 2 - ($ - %%insn_019fb) db 0
    db 0x8A, 0xE7 ; 019FD 8AE7 | mov ah,bh | encoding preserved
    %%insn_019ff:
    mov [di+0x1],ah ; 019FF 886501
    %if ($ - %%insn_019ff) > 3
        %error "LONG_019FF"
    %endif
    times 3 - ($ - %%insn_019ff) db 0
    %%insn_01a02:
    pop bx ; 01A02 5B
    %if ($ - %%insn_01a02) > 1
        %error "LONG_01A02"
    %endif
    times 1 - ($ - %%insn_01a02) db 0
    db 0x8B, 0xC3 ; 01A03 8BC3 | mov ax,bx | encoding preserved
    %%insn_01a05:
    test dx,0x2000 ; 01A05 F7C20020
    %if ($ - %%insn_01a05) > 4
        %error "LONG_01A05"
    %endif
    times 4 - ($ - %%insn_01a05) db 0
    %%insn_01a09:
    jnz short 0x1a0d ; 01A09 7502
    %if ($ - %%insn_01a09) > 2
        %error "LONG_01A09"
    %endif
    times 2 - ($ - %%insn_01a09) db 0
    db 0x8A, 0xC7 ; 01A0B 8AC7 | mov al,bh | encoding preserved
    %%insn_01a0d:
    test dx,0x1000 ; 01A0D F7C20010
    %if ($ - %%insn_01a0d) > 4
        %error "LONG_01A0D"
    %endif
    times 4 - ($ - %%insn_01a0d) db 0
    %%insn_01a11:
    jz short 0x1a15 ; 01A11 7402
    %if ($ - %%insn_01a11) > 2
        %error "LONG_01A11"
    %endif
    times 2 - ($ - %%insn_01a11) db 0
    db 0x8A, 0xE3 ; 01A13 8AE3 | mov ah,bl | encoding preserved
    %%insn_01a15:
    push bx ; 01A15 53
    %if ($ - %%insn_01a15) > 1
        %error "LONG_01A15"
    %endif
    times 1 - ($ - %%insn_01a15) db 0
    %%insn_01a16:
    mov bx,[fs:di+0x2] ; 01A16 648B5D02
    %if ($ - %%insn_01a16) > 4
        %error "LONG_01A16"
    %endif
    times 4 - ($ - %%insn_01a16) db 0
    %%insn_01a1a:
    cmp bl,0xff ; 01A1A 80FBFF
    %if ($ - %%insn_01a1a) > 3
        %error "LONG_01A1A"
    %endif
    times 3 - ($ - %%insn_01a1a) db 0
    %%insn_01a1d:
    jz short 0x1a28 ; 01A1D 7409
    %if ($ - %%insn_01a1d) > 2
        %error "LONG_01A1D"
    %endif
    times 2 - ($ - %%insn_01a1d) db 0
    %%insn_01a1f:
    cmp al,0xff ; 01A1F 3CFF
    %if ($ - %%insn_01a1f) > 2
        %error "LONG_01A1F"
    %endif
    times 2 - ($ - %%insn_01a1f) db 0
    %%insn_01a21:
    jnz short 0x1a25 ; 01A21 7502
    %if ($ - %%insn_01a21) > 2
        %error "LONG_01A21"
    %endif
    times 2 - ($ - %%insn_01a21) db 0
    db 0x8A, 0xC3 ; 01A23 8AC3 | mov al,bl | encoding preserved
    %%insn_01a25:
    mov [di+0x2],al ; 01A25 884502
    %if ($ - %%insn_01a25) > 3
        %error "LONG_01A25"
    %endif
    times 3 - ($ - %%insn_01a25) db 0
    %%insn_01a28:
    cmp bh,0xff ; 01A28 80FFFF
    %if ($ - %%insn_01a28) > 3
        %error "LONG_01A28"
    %endif
    times 3 - ($ - %%insn_01a28) db 0
    %%insn_01a2b:
    jz short 0x1a37 ; 01A2B 740A
    %if ($ - %%insn_01a2b) > 2
        %error "LONG_01A2B"
    %endif
    times 2 - ($ - %%insn_01a2b) db 0
    %%insn_01a2d:
    cmp ah,0xff ; 01A2D 80FCFF
    %if ($ - %%insn_01a2d) > 3
        %error "LONG_01A2D"
    %endif
    times 3 - ($ - %%insn_01a2d) db 0
    %%insn_01a30:
    jnz short 0x1a34 ; 01A30 7502
    %if ($ - %%insn_01a30) > 2
        %error "LONG_01A30"
    %endif
    times 2 - ($ - %%insn_01a30) db 0
    db 0x8A, 0xE7 ; 01A32 8AE7 | mov ah,bh | encoding preserved
    %%insn_01a34:
    mov [di+0x3],ah ; 01A34 886503
    %if ($ - %%insn_01a34) > 3
        %error "LONG_01A34"
    %endif
    times 3 - ($ - %%insn_01a34) db 0
    %%insn_01a37:
    pop bx ; 01A37 5B
    %if ($ - %%insn_01a37) > 1
        %error "LONG_01A37"
    %endif
    times 1 - ($ - %%insn_01a37) db 0
    %%insn_01a38:
    mov ds,word [bp-0x2aaa] ; 01A38 8E9E56D5
    %if ($ - %%insn_01a38) > 4
        %error "LONG_01A38"
    %endif
    times 4 - ($ - %%insn_01a38) db 0
    %%insn_01a3c:
    pop di ; 01A3C 5F
    %if ($ - %%insn_01a3c) > 1
        %error "LONG_01A3C"
    %endif
    times 1 - ($ - %%insn_01a3c) db 0
    %%insn_01a3d:
    add di,0x4 ; 01A3D 83C704
    %if ($ - %%insn_01a3d) > 3
        %error "LONG_01A3D"
    %endif
    times 3 - ($ - %%insn_01a3d) db 0
    %%insn_01a40:
    jmp 0x17ec ; 01A40 E9A9FD
    %if ($ - %%insn_01a40) > 3
        %error "LONG_01A40"
    %endif
    times 3 - ($ - %%insn_01a40) db 0
    db 0x3D, 0x60, 0x00 ; 01A43 3D6000 | cmp ax,0x60 | encoding preserved
    %%insn_01a46:
    jnz 0x1c32 ; 01A46 0F85E801
    %if ($ - %%insn_01a46) > 4
        %error "LONG_01A46"
    %endif
    times 4 - ($ - %%insn_01a46) db 0
    db 0x8B, 0xCF ; 01A4A 8BCF | mov cx,di | encoding preserved
    %%insn_01a4c:
    mov ax,[bp+di+0x2] ; 01A4C 8B4302
    %if ($ - %%insn_01a4c) > 3
        %error "LONG_01A4C"
    %endif
    times 3 - ($ - %%insn_01a4c) db 0
    %%insn_01a4f:
    mov di,[bp+di] ; 01A4F 8B3B
    %if ($ - %%insn_01a4f) > 2
        %error "LONG_01A4F"
    %endif
    times 2 - ($ - %%insn_01a4f) db 0
    %%insn_01a51:
    cmp al,[bp-0x3076] ; 01A51 3A868ACF
    %if ($ - %%insn_01a51) > 4
        %error "LONG_01A51"
    %endif
    times 4 - ($ - %%insn_01a51) db 0
    %%insn_01a55:
    jz short 0x1a7a ; 01A55 7423
    %if ($ - %%insn_01a55) > 2
        %error "LONG_01A55"
    %endif
    times 2 - ($ - %%insn_01a55) db 0
    db 0x32, 0xE4 ; 01A57 32E4 | xor ah,ah | encoding preserved
    %%insn_01a59:
    mov [bp-0x3076],al ; 01A59 88868ACF
    %if ($ - %%insn_01a59) > 4
        %error "LONG_01A59"
    %endif
    times 4 - ($ - %%insn_01a59) db 0
    %%insn_01a5d:
    call word near [ss:0xd660] ; 01A5D 36FF1660D6
    %if ($ - %%insn_01a5d) > 5
        %error "LONG_01A5D"
    %endif
    times 5 - ($ - %%insn_01a5d) db 0
    %%insn_01a62:
    mov al,[bp-0x30b6] ; 01A62 8A864ACF
    %if ($ - %%insn_01a62) > 4
        %error "LONG_01A62"
    %endif
    times 4 - ($ - %%insn_01a62) db 0
    %%insn_01a66:
    cmp al,[bp-0x3076] ; 01A66 3A868ACF
    %if ($ - %%insn_01a66) > 4
        %error "LONG_01A66"
    %endif
    times 4 - ($ - %%insn_01a66) db 0
    %%insn_01a6a:
    jnz short 0x1a72 ; 01A6A 7506
    %if ($ - %%insn_01a6a) > 2
        %error "LONG_01A6A"
    %endif
    times 2 - ($ - %%insn_01a6a) db 0
    %%insn_01a6c:
    mov fs,word [bp-0x30ba] ; 01A6C 8EA646CF
    %if ($ - %%insn_01a6c) > 4
        %error "LONG_01A6C"
    %endif
    times 4 - ($ - %%insn_01a6c) db 0
    %%insn_01a70:
    jmp short 0x1a76 ; 01A70 EB04
    %if ($ - %%insn_01a70) > 2
        %error "LONG_01A70"
    %endif
    times 2 - ($ - %%insn_01a70) db 0
    %%insn_01a72:
    mov fs,word [bp-0x30b8] ; 01A72 8EA648CF
    %if ($ - %%insn_01a72) > 4
        %error "LONG_01A72"
    %endif
    times 4 - ($ - %%insn_01a72) db 0
    %%insn_01a76:
    mov fs,word [bp-0x30ba] ; 01A76 8EA646CF
    %if ($ - %%insn_01a76) > 4
        %error "LONG_01A76"
    %endif
    times 4 - ($ - %%insn_01a76) db 0
    %%insn_01a7a:
    mov gs,word [bp-0x2aaa] ; 01A7A 8EAE56D5
    %if ($ - %%insn_01a7a) > 4
        %error "LONG_01A7A"
    %endif
    times 4 - ($ - %%insn_01a7a) db 0
    %%insn_01a7e:
    mov ds,word [bp-0x2aa8] ; 01A7E 8E9E58D5
    %if ($ - %%insn_01a7e) > 4
        %error "LONG_01A7E"
    %endif
    times 4 - ($ - %%insn_01a7e) db 0
    %%insn_01a82:
    mov ax,[gs:si] ; 01A82 658B04
    %if ($ - %%insn_01a82) > 3
        %error "LONG_01A82"
    %endif
    times 3 - ($ - %%insn_01a82) db 0
    %%insn_01a85:
    push bx ; 01A85 53
    %if ($ - %%insn_01a85) > 1
        %error "LONG_01A85"
    %endif
    times 1 - ($ - %%insn_01a85) db 0
    %%insn_01a86:
    mov bx,[fs:di] ; 01A86 648B1D
    %if ($ - %%insn_01a86) > 3
        %error "LONG_01A86"
    %endif
    times 3 - ($ - %%insn_01a86) db 0
    %%insn_01a89:
    cmp bl,0xff ; 01A89 80FBFF
    %if ($ - %%insn_01a89) > 3
        %error "LONG_01A89"
    %endif
    times 3 - ($ - %%insn_01a89) db 0
    %%insn_01a8c:
    jz short 0x1a96 ; 01A8C 7408
    %if ($ - %%insn_01a8c) > 2
        %error "LONG_01A8C"
    %endif
    times 2 - ($ - %%insn_01a8c) db 0
    %%insn_01a8e:
    cmp al,0xff ; 01A8E 3CFF
    %if ($ - %%insn_01a8e) > 2
        %error "LONG_01A8E"
    %endif
    times 2 - ($ - %%insn_01a8e) db 0
    %%insn_01a90:
    jnz short 0x1a94 ; 01A90 7502
    %if ($ - %%insn_01a90) > 2
        %error "LONG_01A90"
    %endif
    times 2 - ($ - %%insn_01a90) db 0
    db 0x8A, 0xC3 ; 01A92 8AC3 | mov al,bl | encoding preserved
    %%insn_01a94:
    mov [di],al ; 01A94 8805
    %if ($ - %%insn_01a94) > 2
        %error "LONG_01A94"
    %endif
    times 2 - ($ - %%insn_01a94) db 0
    %%insn_01a96:
    cmp bh,0xff ; 01A96 80FFFF
    %if ($ - %%insn_01a96) > 3
        %error "LONG_01A96"
    %endif
    times 3 - ($ - %%insn_01a96) db 0
    %%insn_01a99:
    jz short 0x1aa5 ; 01A99 740A
    %if ($ - %%insn_01a99) > 2
        %error "LONG_01A99"
    %endif
    times 2 - ($ - %%insn_01a99) db 0
    %%insn_01a9b:
    cmp ah,0xff ; 01A9B 80FCFF
    %if ($ - %%insn_01a9b) > 3
        %error "LONG_01A9B"
    %endif
    times 3 - ($ - %%insn_01a9b) db 0
    %%insn_01a9e:
    jnz short 0x1aa2 ; 01A9E 7502
    %if ($ - %%insn_01a9e) > 2
        %error "LONG_01A9E"
    %endif
    times 2 - ($ - %%insn_01a9e) db 0
    db 0x8A, 0xE7 ; 01AA0 8AE7 | mov ah,bh | encoding preserved
    %%insn_01aa2:
    mov [di+0x1],ah ; 01AA2 886501
    %if ($ - %%insn_01aa2) > 3
        %error "LONG_01AA2"
    %endif
    times 3 - ($ - %%insn_01aa2) db 0
    %%insn_01aa5:
    pop bx ; 01AA5 5B
    %if ($ - %%insn_01aa5) > 1
        %error "LONG_01AA5"
    %endif
    times 1 - ($ - %%insn_01aa5) db 0
    %%insn_01aa6:
    mov ax,[gs:si+0x2] ; 01AA6 658B4402
    %if ($ - %%insn_01aa6) > 4
        %error "LONG_01AA6"
    %endif
    times 4 - ($ - %%insn_01aa6) db 0
    %%insn_01aaa:
    push bx ; 01AAA 53
    %if ($ - %%insn_01aaa) > 1
        %error "LONG_01AAA"
    %endif
    times 1 - ($ - %%insn_01aaa) db 0
    %%insn_01aab:
    mov bx,[fs:di+0x2] ; 01AAB 648B5D02
    %if ($ - %%insn_01aab) > 4
        %error "LONG_01AAB"
    %endif
    times 4 - ($ - %%insn_01aab) db 0
    %%insn_01aaf:
    cmp bl,0xff ; 01AAF 80FBFF
    %if ($ - %%insn_01aaf) > 3
        %error "LONG_01AAF"
    %endif
    times 3 - ($ - %%insn_01aaf) db 0
    %%insn_01ab2:
    jz short 0x1abd ; 01AB2 7409
    %if ($ - %%insn_01ab2) > 2
        %error "LONG_01AB2"
    %endif
    times 2 - ($ - %%insn_01ab2) db 0
    %%insn_01ab4:
    cmp al,0xff ; 01AB4 3CFF
    %if ($ - %%insn_01ab4) > 2
        %error "LONG_01AB4"
    %endif
    times 2 - ($ - %%insn_01ab4) db 0
    %%insn_01ab6:
    jnz short 0x1aba ; 01AB6 7502
    %if ($ - %%insn_01ab6) > 2
        %error "LONG_01AB6"
    %endif
    times 2 - ($ - %%insn_01ab6) db 0
    db 0x8A, 0xC3 ; 01AB8 8AC3 | mov al,bl | encoding preserved
    %%insn_01aba:
    mov [di+0x2],al ; 01ABA 884502
    %if ($ - %%insn_01aba) > 3
        %error "LONG_01ABA"
    %endif
    times 3 - ($ - %%insn_01aba) db 0
    %%insn_01abd:
    cmp bh,0xff ; 01ABD 80FFFF
    %if ($ - %%insn_01abd) > 3
        %error "LONG_01ABD"
    %endif
    times 3 - ($ - %%insn_01abd) db 0
    %%insn_01ac0:
    jz short 0x1acc ; 01AC0 740A
    %if ($ - %%insn_01ac0) > 2
        %error "LONG_01AC0"
    %endif
    times 2 - ($ - %%insn_01ac0) db 0
    %%insn_01ac2:
    cmp ah,0xff ; 01AC2 80FCFF
    %if ($ - %%insn_01ac2) > 3
        %error "LONG_01AC2"
    %endif
    times 3 - ($ - %%insn_01ac2) db 0
    %%insn_01ac5:
    jnz short 0x1ac9 ; 01AC5 7502
    %if ($ - %%insn_01ac5) > 2
        %error "LONG_01AC5"
    %endif
    times 2 - ($ - %%insn_01ac5) db 0
    db 0x8A, 0xE7 ; 01AC7 8AE7 | mov ah,bh | encoding preserved
    %%insn_01ac9:
    mov [di+0x3],ah ; 01AC9 886503
    %if ($ - %%insn_01ac9) > 3
        %error "LONG_01AC9"
    %endif
    times 3 - ($ - %%insn_01ac9) db 0
    %%insn_01acc:
    pop bx ; 01ACC 5B
    %if ($ - %%insn_01acc) > 1
        %error "LONG_01ACC"
    %endif
    times 1 - ($ - %%insn_01acc) db 0
    %%insn_01acd:
    add si,0x4 ; 01ACD 83C604
    %if ($ - %%insn_01acd) > 3
        %error "LONG_01ACD"
    %endif
    times 3 - ($ - %%insn_01acd) db 0
    %%insn_01ad0:
    add di,[bp-0x2996] ; 01AD0 03BE6AD6
    %if ($ - %%insn_01ad0) > 4
        %error "LONG_01AD0"
    %endif
    times 4 - ($ - %%insn_01ad0) db 0
    %%insn_01ad4:
    jnc short 0x1aeb ; 01AD4 7315
    %if ($ - %%insn_01ad4) > 2
        %error "LONG_01AD4"
    %endif
    times 2 - ($ - %%insn_01ad4) db 0
    %%insn_01ad6:
    mov al,[bp-0x3076] ; 01AD6 8A868ACF
    %if ($ - %%insn_01ad6) > 4
        %error "LONG_01AD6"
    %endif
    times 4 - ($ - %%insn_01ad6) db 0
    %%insn_01ada:
    inc al ; 01ADA FEC0
    %if ($ - %%insn_01ada) > 2
        %error "LONG_01ADA"
    %endif
    times 2 - ($ - %%insn_01ada) db 0
    db 0x32, 0xE4 ; 01ADC 32E4 | xor ah,ah | encoding preserved
    %%insn_01ade:
    mov [bp-0x3076],al ; 01ADE 88868ACF
    %if ($ - %%insn_01ade) > 4
        %error "LONG_01ADE"
    %endif
    times 4 - ($ - %%insn_01ade) db 0
    %%insn_01ae2:
    call word near [ss:0xd660] ; 01AE2 36FF1660D6
    %if ($ - %%insn_01ae2) > 5
        %error "LONG_01AE2"
    %endif
    times 5 - ($ - %%insn_01ae2) db 0
    %%insn_01ae7:
    mov fs,word [bp-0x30b8] ; 01AE7 8EA648CF
    %if ($ - %%insn_01ae7) > 4
        %error "LONG_01AE7"
    %endif
    times 4 - ($ - %%insn_01ae7) db 0
    %%insn_01aeb:
    mov ax,[gs:si] ; 01AEB 658B04
    %if ($ - %%insn_01aeb) > 3
        %error "LONG_01AEB"
    %endif
    times 3 - ($ - %%insn_01aeb) db 0
    %%insn_01aee:
    push bx ; 01AEE 53
    %if ($ - %%insn_01aee) > 1
        %error "LONG_01AEE"
    %endif
    times 1 - ($ - %%insn_01aee) db 0
    %%insn_01aef:
    mov bx,[fs:di] ; 01AEF 648B1D
    %if ($ - %%insn_01aef) > 3
        %error "LONG_01AEF"
    %endif
    times 3 - ($ - %%insn_01aef) db 0
    %%insn_01af2:
    cmp bl,0xff ; 01AF2 80FBFF
    %if ($ - %%insn_01af2) > 3
        %error "LONG_01AF2"
    %endif
    times 3 - ($ - %%insn_01af2) db 0
    %%insn_01af5:
    jz short 0x1aff ; 01AF5 7408
    %if ($ - %%insn_01af5) > 2
        %error "LONG_01AF5"
    %endif
    times 2 - ($ - %%insn_01af5) db 0
    %%insn_01af7:
    cmp al,0xff ; 01AF7 3CFF
    %if ($ - %%insn_01af7) > 2
        %error "LONG_01AF7"
    %endif
    times 2 - ($ - %%insn_01af7) db 0
    %%insn_01af9:
    jnz short 0x1afd ; 01AF9 7502
    %if ($ - %%insn_01af9) > 2
        %error "LONG_01AF9"
    %endif
    times 2 - ($ - %%insn_01af9) db 0
    db 0x8A, 0xC3 ; 01AFB 8AC3 | mov al,bl | encoding preserved
    %%insn_01afd:
    mov [di],al ; 01AFD 8805
    %if ($ - %%insn_01afd) > 2
        %error "LONG_01AFD"
    %endif
    times 2 - ($ - %%insn_01afd) db 0
    %%insn_01aff:
    cmp bh,0xff ; 01AFF 80FFFF
    %if ($ - %%insn_01aff) > 3
        %error "LONG_01AFF"
    %endif
    times 3 - ($ - %%insn_01aff) db 0
    %%insn_01b02:
    jz short 0x1b0e ; 01B02 740A
    %if ($ - %%insn_01b02) > 2
        %error "LONG_01B02"
    %endif
    times 2 - ($ - %%insn_01b02) db 0
    %%insn_01b04:
    cmp ah,0xff ; 01B04 80FCFF
    %if ($ - %%insn_01b04) > 3
        %error "LONG_01B04"
    %endif
    times 3 - ($ - %%insn_01b04) db 0
    %%insn_01b07:
    jnz short 0x1b0b ; 01B07 7502
    %if ($ - %%insn_01b07) > 2
        %error "LONG_01B07"
    %endif
    times 2 - ($ - %%insn_01b07) db 0
    db 0x8A, 0xE7 ; 01B09 8AE7 | mov ah,bh | encoding preserved
    %%insn_01b0b:
    mov [di+0x1],ah ; 01B0B 886501
    %if ($ - %%insn_01b0b) > 3
        %error "LONG_01B0B"
    %endif
    times 3 - ($ - %%insn_01b0b) db 0
    %%insn_01b0e:
    pop bx ; 01B0E 5B
    %if ($ - %%insn_01b0e) > 1
        %error "LONG_01B0E"
    %endif
    times 1 - ($ - %%insn_01b0e) db 0
    %%insn_01b0f:
    mov ax,[gs:si+0x2] ; 01B0F 658B4402
    %if ($ - %%insn_01b0f) > 4
        %error "LONG_01B0F"
    %endif
    times 4 - ($ - %%insn_01b0f) db 0
    %%insn_01b13:
    push bx ; 01B13 53
    %if ($ - %%insn_01b13) > 1
        %error "LONG_01B13"
    %endif
    times 1 - ($ - %%insn_01b13) db 0
    %%insn_01b14:
    mov bx,[fs:di+0x2] ; 01B14 648B5D02
    %if ($ - %%insn_01b14) > 4
        %error "LONG_01B14"
    %endif
    times 4 - ($ - %%insn_01b14) db 0
    %%insn_01b18:
    cmp bl,0xff ; 01B18 80FBFF
    %if ($ - %%insn_01b18) > 3
        %error "LONG_01B18"
    %endif
    times 3 - ($ - %%insn_01b18) db 0
    %%insn_01b1b:
    jz short 0x1b26 ; 01B1B 7409
    %if ($ - %%insn_01b1b) > 2
        %error "LONG_01B1B"
    %endif
    times 2 - ($ - %%insn_01b1b) db 0
    %%insn_01b1d:
    cmp al,0xff ; 01B1D 3CFF
    %if ($ - %%insn_01b1d) > 2
        %error "LONG_01B1D"
    %endif
    times 2 - ($ - %%insn_01b1d) db 0
    %%insn_01b1f:
    jnz short 0x1b23 ; 01B1F 7502
    %if ($ - %%insn_01b1f) > 2
        %error "LONG_01B1F"
    %endif
    times 2 - ($ - %%insn_01b1f) db 0
    db 0x8A, 0xC3 ; 01B21 8AC3 | mov al,bl | encoding preserved
    %%insn_01b23:
    mov [di+0x2],al ; 01B23 884502
    %if ($ - %%insn_01b23) > 3
        %error "LONG_01B23"
    %endif
    times 3 - ($ - %%insn_01b23) db 0
    %%insn_01b26:
    cmp bh,0xff ; 01B26 80FFFF
    %if ($ - %%insn_01b26) > 3
        %error "LONG_01B26"
    %endif
    times 3 - ($ - %%insn_01b26) db 0
    %%insn_01b29:
    jz short 0x1b35 ; 01B29 740A
    %if ($ - %%insn_01b29) > 2
        %error "LONG_01B29"
    %endif
    times 2 - ($ - %%insn_01b29) db 0
    %%insn_01b2b:
    cmp ah,0xff ; 01B2B 80FCFF
    %if ($ - %%insn_01b2b) > 3
        %error "LONG_01B2B"
    %endif
    times 3 - ($ - %%insn_01b2b) db 0
    %%insn_01b2e:
    jnz short 0x1b32 ; 01B2E 7502
    %if ($ - %%insn_01b2e) > 2
        %error "LONG_01B2E"
    %endif
    times 2 - ($ - %%insn_01b2e) db 0
    db 0x8A, 0xE7 ; 01B30 8AE7 | mov ah,bh | encoding preserved
    %%insn_01b32:
    mov [di+0x3],ah ; 01B32 886503
    %if ($ - %%insn_01b32) > 3
        %error "LONG_01B32"
    %endif
    times 3 - ($ - %%insn_01b32) db 0
    %%insn_01b35:
    pop bx ; 01B35 5B
    %if ($ - %%insn_01b35) > 1
        %error "LONG_01B35"
    %endif
    times 1 - ($ - %%insn_01b35) db 0
    %%insn_01b36:
    add si,0x4 ; 01B36 83C604
    %if ($ - %%insn_01b36) > 3
        %error "LONG_01B36"
    %endif
    times 3 - ($ - %%insn_01b36) db 0
    %%insn_01b39:
    add di,[bp-0x2996] ; 01B39 03BE6AD6
    %if ($ - %%insn_01b39) > 4
        %error "LONG_01B39"
    %endif
    times 4 - ($ - %%insn_01b39) db 0
    %%insn_01b3d:
    jnc short 0x1b54 ; 01B3D 7315
    %if ($ - %%insn_01b3d) > 2
        %error "LONG_01B3D"
    %endif
    times 2 - ($ - %%insn_01b3d) db 0
    %%insn_01b3f:
    mov al,[bp-0x3076] ; 01B3F 8A868ACF
    %if ($ - %%insn_01b3f) > 4
        %error "LONG_01B3F"
    %endif
    times 4 - ($ - %%insn_01b3f) db 0
    %%insn_01b43:
    inc al ; 01B43 FEC0
    %if ($ - %%insn_01b43) > 2
        %error "LONG_01B43"
    %endif
    times 2 - ($ - %%insn_01b43) db 0
    db 0x32, 0xE4 ; 01B45 32E4 | xor ah,ah | encoding preserved
    %%insn_01b47:
    mov [bp-0x3076],al ; 01B47 88868ACF
    %if ($ - %%insn_01b47) > 4
        %error "LONG_01B47"
    %endif
    times 4 - ($ - %%insn_01b47) db 0
    %%insn_01b4b:
    call word near [ss:0xd660] ; 01B4B 36FF1660D6
    %if ($ - %%insn_01b4b) > 5
        %error "LONG_01B4B"
    %endif
    times 5 - ($ - %%insn_01b4b) db 0
    %%insn_01b50:
    mov fs,word [bp-0x30b8] ; 01B50 8EA648CF
    %if ($ - %%insn_01b50) > 4
        %error "LONG_01B50"
    %endif
    times 4 - ($ - %%insn_01b50) db 0
    %%insn_01b54:
    mov ax,[gs:si] ; 01B54 658B04
    %if ($ - %%insn_01b54) > 3
        %error "LONG_01B54"
    %endif
    times 3 - ($ - %%insn_01b54) db 0
    %%insn_01b57:
    push bx ; 01B57 53
    %if ($ - %%insn_01b57) > 1
        %error "LONG_01B57"
    %endif
    times 1 - ($ - %%insn_01b57) db 0
    %%insn_01b58:
    mov bx,[fs:di] ; 01B58 648B1D
    %if ($ - %%insn_01b58) > 3
        %error "LONG_01B58"
    %endif
    times 3 - ($ - %%insn_01b58) db 0
    %%insn_01b5b:
    cmp bl,0xff ; 01B5B 80FBFF
    %if ($ - %%insn_01b5b) > 3
        %error "LONG_01B5B"
    %endif
    times 3 - ($ - %%insn_01b5b) db 0
    %%insn_01b5e:
    jz short 0x1b68 ; 01B5E 7408
    %if ($ - %%insn_01b5e) > 2
        %error "LONG_01B5E"
    %endif
    times 2 - ($ - %%insn_01b5e) db 0
    %%insn_01b60:
    cmp al,0xff ; 01B60 3CFF
    %if ($ - %%insn_01b60) > 2
        %error "LONG_01B60"
    %endif
    times 2 - ($ - %%insn_01b60) db 0
    %%insn_01b62:
    jnz short 0x1b66 ; 01B62 7502
    %if ($ - %%insn_01b62) > 2
        %error "LONG_01B62"
    %endif
    times 2 - ($ - %%insn_01b62) db 0
    db 0x8A, 0xC3 ; 01B64 8AC3 | mov al,bl | encoding preserved
    %%insn_01b66:
    mov [di],al ; 01B66 8805
    %if ($ - %%insn_01b66) > 2
        %error "LONG_01B66"
    %endif
    times 2 - ($ - %%insn_01b66) db 0
    %%insn_01b68:
    cmp bh,0xff ; 01B68 80FFFF
    %if ($ - %%insn_01b68) > 3
        %error "LONG_01B68"
    %endif
    times 3 - ($ - %%insn_01b68) db 0
    %%insn_01b6b:
    jz short 0x1b77 ; 01B6B 740A
    %if ($ - %%insn_01b6b) > 2
        %error "LONG_01B6B"
    %endif
    times 2 - ($ - %%insn_01b6b) db 0
    %%insn_01b6d:
    cmp ah,0xff ; 01B6D 80FCFF
    %if ($ - %%insn_01b6d) > 3
        %error "LONG_01B6D"
    %endif
    times 3 - ($ - %%insn_01b6d) db 0
    %%insn_01b70:
    jnz short 0x1b74 ; 01B70 7502
    %if ($ - %%insn_01b70) > 2
        %error "LONG_01B70"
    %endif
    times 2 - ($ - %%insn_01b70) db 0
    db 0x8A, 0xE7 ; 01B72 8AE7 | mov ah,bh | encoding preserved
    %%insn_01b74:
    mov [di+0x1],ah ; 01B74 886501
    %if ($ - %%insn_01b74) > 3
        %error "LONG_01B74"
    %endif
    times 3 - ($ - %%insn_01b74) db 0
    %%insn_01b77:
    pop bx ; 01B77 5B
    %if ($ - %%insn_01b77) > 1
        %error "LONG_01B77"
    %endif
    times 1 - ($ - %%insn_01b77) db 0
    %%insn_01b78:
    mov ax,[gs:si+0x2] ; 01B78 658B4402
    %if ($ - %%insn_01b78) > 4
        %error "LONG_01B78"
    %endif
    times 4 - ($ - %%insn_01b78) db 0
    %%insn_01b7c:
    push bx ; 01B7C 53
    %if ($ - %%insn_01b7c) > 1
        %error "LONG_01B7C"
    %endif
    times 1 - ($ - %%insn_01b7c) db 0
    %%insn_01b7d:
    mov bx,[fs:di+0x2] ; 01B7D 648B5D02
    %if ($ - %%insn_01b7d) > 4
        %error "LONG_01B7D"
    %endif
    times 4 - ($ - %%insn_01b7d) db 0
    %%insn_01b81:
    cmp bl,0xff ; 01B81 80FBFF
    %if ($ - %%insn_01b81) > 3
        %error "LONG_01B81"
    %endif
    times 3 - ($ - %%insn_01b81) db 0
    %%insn_01b84:
    jz short 0x1b8f ; 01B84 7409
    %if ($ - %%insn_01b84) > 2
        %error "LONG_01B84"
    %endif
    times 2 - ($ - %%insn_01b84) db 0
    %%insn_01b86:
    cmp al,0xff ; 01B86 3CFF
    %if ($ - %%insn_01b86) > 2
        %error "LONG_01B86"
    %endif
    times 2 - ($ - %%insn_01b86) db 0
    %%insn_01b88:
    jnz short 0x1b8c ; 01B88 7502
    %if ($ - %%insn_01b88) > 2
        %error "LONG_01B88"
    %endif
    times 2 - ($ - %%insn_01b88) db 0
    db 0x8A, 0xC3 ; 01B8A 8AC3 | mov al,bl | encoding preserved
    %%insn_01b8c:
    mov [di+0x2],al ; 01B8C 884502
    %if ($ - %%insn_01b8c) > 3
        %error "LONG_01B8C"
    %endif
    times 3 - ($ - %%insn_01b8c) db 0
    %%insn_01b8f:
    cmp bh,0xff ; 01B8F 80FFFF
    %if ($ - %%insn_01b8f) > 3
        %error "LONG_01B8F"
    %endif
    times 3 - ($ - %%insn_01b8f) db 0
    %%insn_01b92:
    jz short 0x1b9e ; 01B92 740A
    %if ($ - %%insn_01b92) > 2
        %error "LONG_01B92"
    %endif
    times 2 - ($ - %%insn_01b92) db 0
    %%insn_01b94:
    cmp ah,0xff ; 01B94 80FCFF
    %if ($ - %%insn_01b94) > 3
        %error "LONG_01B94"
    %endif
    times 3 - ($ - %%insn_01b94) db 0
    %%insn_01b97:
    jnz short 0x1b9b ; 01B97 7502
    %if ($ - %%insn_01b97) > 2
        %error "LONG_01B97"
    %endif
    times 2 - ($ - %%insn_01b97) db 0
    db 0x8A, 0xE7 ; 01B99 8AE7 | mov ah,bh | encoding preserved
    %%insn_01b9b:
    mov [di+0x3],ah ; 01B9B 886503
    %if ($ - %%insn_01b9b) > 3
        %error "LONG_01B9B"
    %endif
    times 3 - ($ - %%insn_01b9b) db 0
    %%insn_01b9e:
    pop bx ; 01B9E 5B
    %if ($ - %%insn_01b9e) > 1
        %error "LONG_01B9E"
    %endif
    times 1 - ($ - %%insn_01b9e) db 0
    %%insn_01b9f:
    add si,0x4 ; 01B9F 83C604
    %if ($ - %%insn_01b9f) > 3
        %error "LONG_01B9F"
    %endif
    times 3 - ($ - %%insn_01b9f) db 0
    %%insn_01ba2:
    add di,[bp-0x2996] ; 01BA2 03BE6AD6
    %if ($ - %%insn_01ba2) > 4
        %error "LONG_01BA2"
    %endif
    times 4 - ($ - %%insn_01ba2) db 0
    %%insn_01ba6:
    jnc short 0x1bbd ; 01BA6 7315
    %if ($ - %%insn_01ba6) > 2
        %error "LONG_01BA6"
    %endif
    times 2 - ($ - %%insn_01ba6) db 0
    %%insn_01ba8:
    mov al,[bp-0x3076] ; 01BA8 8A868ACF
    %if ($ - %%insn_01ba8) > 4
        %error "LONG_01BA8"
    %endif
    times 4 - ($ - %%insn_01ba8) db 0
    %%insn_01bac:
    inc al ; 01BAC FEC0
    %if ($ - %%insn_01bac) > 2
        %error "LONG_01BAC"
    %endif
    times 2 - ($ - %%insn_01bac) db 0
    db 0x32, 0xE4 ; 01BAE 32E4 | xor ah,ah | encoding preserved
    %%insn_01bb0:
    mov [bp-0x3076],al ; 01BB0 88868ACF
    %if ($ - %%insn_01bb0) > 4
        %error "LONG_01BB0"
    %endif
    times 4 - ($ - %%insn_01bb0) db 0
    %%insn_01bb4:
    call word near [ss:0xd660] ; 01BB4 36FF1660D6
    %if ($ - %%insn_01bb4) > 5
        %error "LONG_01BB4"
    %endif
    times 5 - ($ - %%insn_01bb4) db 0
    %%insn_01bb9:
    mov fs,word [bp-0x30b8] ; 01BB9 8EA648CF
    %if ($ - %%insn_01bb9) > 4
        %error "LONG_01BB9"
    %endif
    times 4 - ($ - %%insn_01bb9) db 0
    %%insn_01bbd:
    mov ax,[gs:si] ; 01BBD 658B04
    %if ($ - %%insn_01bbd) > 3
        %error "LONG_01BBD"
    %endif
    times 3 - ($ - %%insn_01bbd) db 0
    %%insn_01bc0:
    push bx ; 01BC0 53
    %if ($ - %%insn_01bc0) > 1
        %error "LONG_01BC0"
    %endif
    times 1 - ($ - %%insn_01bc0) db 0
    %%insn_01bc1:
    mov bx,[fs:di] ; 01BC1 648B1D
    %if ($ - %%insn_01bc1) > 3
        %error "LONG_01BC1"
    %endif
    times 3 - ($ - %%insn_01bc1) db 0
    %%insn_01bc4:
    cmp bl,0xff ; 01BC4 80FBFF
    %if ($ - %%insn_01bc4) > 3
        %error "LONG_01BC4"
    %endif
    times 3 - ($ - %%insn_01bc4) db 0
    %%insn_01bc7:
    jz short 0x1bd1 ; 01BC7 7408
    %if ($ - %%insn_01bc7) > 2
        %error "LONG_01BC7"
    %endif
    times 2 - ($ - %%insn_01bc7) db 0
    %%insn_01bc9:
    cmp al,0xff ; 01BC9 3CFF
    %if ($ - %%insn_01bc9) > 2
        %error "LONG_01BC9"
    %endif
    times 2 - ($ - %%insn_01bc9) db 0
    %%insn_01bcb:
    jnz short 0x1bcf ; 01BCB 7502
    %if ($ - %%insn_01bcb) > 2
        %error "LONG_01BCB"
    %endif
    times 2 - ($ - %%insn_01bcb) db 0
    db 0x8A, 0xC3 ; 01BCD 8AC3 | mov al,bl | encoding preserved
    %%insn_01bcf:
    mov [di],al ; 01BCF 8805
    %if ($ - %%insn_01bcf) > 2
        %error "LONG_01BCF"
    %endif
    times 2 - ($ - %%insn_01bcf) db 0
    %%insn_01bd1:
    cmp bh,0xff ; 01BD1 80FFFF
    %if ($ - %%insn_01bd1) > 3
        %error "LONG_01BD1"
    %endif
    times 3 - ($ - %%insn_01bd1) db 0
    %%insn_01bd4:
    jz short 0x1be0 ; 01BD4 740A
    %if ($ - %%insn_01bd4) > 2
        %error "LONG_01BD4"
    %endif
    times 2 - ($ - %%insn_01bd4) db 0
    %%insn_01bd6:
    cmp ah,0xff ; 01BD6 80FCFF
    %if ($ - %%insn_01bd6) > 3
        %error "LONG_01BD6"
    %endif
    times 3 - ($ - %%insn_01bd6) db 0
    %%insn_01bd9:
    jnz short 0x1bdd ; 01BD9 7502
    %if ($ - %%insn_01bd9) > 2
        %error "LONG_01BD9"
    %endif
    times 2 - ($ - %%insn_01bd9) db 0
    db 0x8A, 0xE7 ; 01BDB 8AE7 | mov ah,bh | encoding preserved
    %%insn_01bdd:
    mov [di+0x1],ah ; 01BDD 886501
    %if ($ - %%insn_01bdd) > 3
        %error "LONG_01BDD"
    %endif
    times 3 - ($ - %%insn_01bdd) db 0
    %%insn_01be0:
    pop bx ; 01BE0 5B
    %if ($ - %%insn_01be0) > 1
        %error "LONG_01BE0"
    %endif
    times 1 - ($ - %%insn_01be0) db 0
    %%insn_01be1:
    mov ax,[gs:si+0x2] ; 01BE1 658B4402
    %if ($ - %%insn_01be1) > 4
        %error "LONG_01BE1"
    %endif
    times 4 - ($ - %%insn_01be1) db 0
    %%insn_01be5:
    push bx ; 01BE5 53
    %if ($ - %%insn_01be5) > 1
        %error "LONG_01BE5"
    %endif
    times 1 - ($ - %%insn_01be5) db 0
    %%insn_01be6:
    mov bx,[fs:di+0x2] ; 01BE6 648B5D02
    %if ($ - %%insn_01be6) > 4
        %error "LONG_01BE6"
    %endif
    times 4 - ($ - %%insn_01be6) db 0
    %%insn_01bea:
    cmp bl,0xff ; 01BEA 80FBFF
    %if ($ - %%insn_01bea) > 3
        %error "LONG_01BEA"
    %endif
    times 3 - ($ - %%insn_01bea) db 0
    %%insn_01bed:
    jz short 0x1bf8 ; 01BED 7409
    %if ($ - %%insn_01bed) > 2
        %error "LONG_01BED"
    %endif
    times 2 - ($ - %%insn_01bed) db 0
    %%insn_01bef:
    cmp al,0xff ; 01BEF 3CFF
    %if ($ - %%insn_01bef) > 2
        %error "LONG_01BEF"
    %endif
    times 2 - ($ - %%insn_01bef) db 0
    %%insn_01bf1:
    jnz short 0x1bf5 ; 01BF1 7502
    %if ($ - %%insn_01bf1) > 2
        %error "LONG_01BF1"
    %endif
    times 2 - ($ - %%insn_01bf1) db 0
    db 0x8A, 0xC3 ; 01BF3 8AC3 | mov al,bl | encoding preserved
    %%insn_01bf5:
    mov [di+0x2],al ; 01BF5 884502
    %if ($ - %%insn_01bf5) > 3
        %error "LONG_01BF5"
    %endif
    times 3 - ($ - %%insn_01bf5) db 0
    %%insn_01bf8:
    cmp bh,0xff ; 01BF8 80FFFF
    %if ($ - %%insn_01bf8) > 3
        %error "LONG_01BF8"
    %endif
    times 3 - ($ - %%insn_01bf8) db 0
    %%insn_01bfb:
    jz short 0x1c07 ; 01BFB 740A
    %if ($ - %%insn_01bfb) > 2
        %error "LONG_01BFB"
    %endif
    times 2 - ($ - %%insn_01bfb) db 0
    %%insn_01bfd:
    cmp ah,0xff ; 01BFD 80FCFF
    %if ($ - %%insn_01bfd) > 3
        %error "LONG_01BFD"
    %endif
    times 3 - ($ - %%insn_01bfd) db 0
    %%insn_01c00:
    jnz short 0x1c04 ; 01C00 7502
    %if ($ - %%insn_01c00) > 2
        %error "LONG_01C00"
    %endif
    times 2 - ($ - %%insn_01c00) db 0
    db 0x8A, 0xE7 ; 01C02 8AE7 | mov ah,bh | encoding preserved
    %%insn_01c04:
    mov [di+0x3],ah ; 01C04 886503
    %if ($ - %%insn_01c04) > 3
        %error "LONG_01C04"
    %endif
    times 3 - ($ - %%insn_01c04) db 0
    %%insn_01c07:
    pop bx ; 01C07 5B
    %if ($ - %%insn_01c07) > 1
        %error "LONG_01C07"
    %endif
    times 1 - ($ - %%insn_01c07) db 0
    %%insn_01c08:
    add si,0x4 ; 01C08 83C604
    %if ($ - %%insn_01c08) > 3
        %error "LONG_01C08"
    %endif
    times 3 - ($ - %%insn_01c08) db 0
    %%insn_01c0b:
    add di,[bp-0x2996] ; 01C0B 03BE6AD6
    %if ($ - %%insn_01c0b) > 4
        %error "LONG_01C0B"
    %endif
    times 4 - ($ - %%insn_01c0b) db 0
    %%insn_01c0f:
    jnc short 0x1c26 ; 01C0F 7315
    %if ($ - %%insn_01c0f) > 2
        %error "LONG_01C0F"
    %endif
    times 2 - ($ - %%insn_01c0f) db 0
    %%insn_01c11:
    mov al,[bp-0x3076] ; 01C11 8A868ACF
    %if ($ - %%insn_01c11) > 4
        %error "LONG_01C11"
    %endif
    times 4 - ($ - %%insn_01c11) db 0
    %%insn_01c15:
    inc al ; 01C15 FEC0
    %if ($ - %%insn_01c15) > 2
        %error "LONG_01C15"
    %endif
    times 2 - ($ - %%insn_01c15) db 0
    db 0x32, 0xE4 ; 01C17 32E4 | xor ah,ah | encoding preserved
    %%insn_01c19:
    mov [bp-0x3076],al ; 01C19 88868ACF
    %if ($ - %%insn_01c19) > 4
        %error "LONG_01C19"
    %endif
    times 4 - ($ - %%insn_01c19) db 0
    %%insn_01c1d:
    call word near [ss:0xd660] ; 01C1D 36FF1660D6
    %if ($ - %%insn_01c1d) > 5
        %error "LONG_01C1D"
    %endif
    times 5 - ($ - %%insn_01c1d) db 0
    %%insn_01c22:
    mov fs,word [bp-0x30b8] ; 01C22 8EA648CF
    %if ($ - %%insn_01c22) > 4
        %error "LONG_01C22"
    %endif
    times 4 - ($ - %%insn_01c22) db 0
    db 0x8B, 0xF9 ; 01C26 8BF9 | mov di,cx | encoding preserved
    %%insn_01c28:
    add di,0x4 ; 01C28 83C704
    %if ($ - %%insn_01c28) > 3
        %error "LONG_01C28"
    %endif
    times 3 - ($ - %%insn_01c28) db 0
    %%insn_01c2b:
    mov ds,word [bp-0x2aaa] ; 01C2B 8E9E56D5
    %if ($ - %%insn_01c2b) > 4
        %error "LONG_01C2B"
    %endif
    times 4 - ($ - %%insn_01c2b) db 0
    %%insn_01c2f:
    jmp 0x17ec ; 01C2F E9BAFB
    %if ($ - %%insn_01c2f) > 3
        %error "LONG_01C2F"
    %endif
    times 3 - ($ - %%insn_01c2f) db 0
    db 0x3D, 0x61, 0x00 ; 01C32 3D6100 | cmp ax,0x61 | encoding preserved
    %%insn_01c35:
    jnz short 0x1c3f ; 01C35 7508
    %if ($ - %%insn_01c35) > 2
        %error "LONG_01C35"
    %endif
    times 2 - ($ - %%insn_01c35) db 0
    %%insn_01c37:
    add word [bp-0x309e],0x4 ; 01C37 838662CF04
    %if ($ - %%insn_01c37) > 5
        %error "LONG_01C37"
    %endif
    times 5 - ($ - %%insn_01c37) db 0
    %%insn_01c3c:
    jmp 0x1768 ; 01C3C E929FB
    %if ($ - %%insn_01c3c) > 3
        %error "LONG_01C3C"
    %endif
    times 3 - ($ - %%insn_01c3c) db 0
    db 0x3D, 0x6C, 0x00 ; 01C3F 3D6C00 | cmp ax,0x6c | encoding preserved
    %%insn_01c42:
    jnc short 0x1c4f ; 01C42 730B
    %if ($ - %%insn_01c42) > 2
        %error "LONG_01C42"
    %endif
    times 2 - ($ - %%insn_01c42) db 0
    db 0x2D, 0x62, 0x00 ; 01C44 2D6200 | sub ax,0x62 | encoding preserved
    %%insn_01c47:
    shl ax,byte 0x2 ; 01C47 C1E002
    %if ($ - %%insn_01c47) > 3
        %error "LONG_01C47"
    %endif
    times 3 - ($ - %%insn_01c47) db 0
    db 0x03, 0xF8 ; 01C4A 03F8 | add di,ax | encoding preserved
    %%insn_01c4c:
    jmp 0x17ec ; 01C4C E99DFB
    %if ($ - %%insn_01c4c) > 3
        %error "LONG_01C4C"
    %endif
    times 3 - ($ - %%insn_01c4c) db 0
    db 0x3D, 0x76, 0x00 ; 01C4F 3D7600 | cmp ax,0x76 | encoding preserved
    %%insn_01c52:
    jnc 0x1d13 ; 01C52 0F83BD00
    %if ($ - %%insn_01c52) > 4
        %error "LONG_01C52"
    %endif
    times 4 - ($ - %%insn_01c52) db 0
    db 0x2D, 0x6B, 0x00 ; 01C56 2D6B00 | sub ax,0x6b | encoding preserved
    db 0x8B, 0xC8 ; 01C59 8BC8 | mov cx,ax | encoding preserved
    %%insn_01c5b:
    lodsb ; 01C5B AC
    %if ($ - %%insn_01c5b) > 1
        %error "LONG_01C5B"
    %endif
    times 1 - ($ - %%insn_01c5b) db 0
    %%insn_01c5c:
    push si ; 01C5C 56
    %if ($ - %%insn_01c5c) > 1
        %error "LONG_01C5C"
    %endif
    times 1 - ($ - %%insn_01c5c) db 0
    db 0x8B, 0xF7 ; 01C5D 8BF7 | mov si,di | encoding preserved
    db 0x8A, 0xE0 ; 01C5F 8AE0 | mov ah,al | encoding preserved
    db 0x8B, 0xD8 ; 01C61 8BD8 | mov bx,ax | encoding preserved
    %%insn_01c63:
    mov ds,word [bp-0x2aa8] ; 01C63 8E9E58D5
    %if ($ - %%insn_01c63) > 4
        %error "LONG_01C63"
    %endif
    times 4 - ($ - %%insn_01c63) db 0
    %%insn_01c67:
    nop ; 01C67 90
    %if ($ - %%insn_01c67) > 1
        %error "LONG_01C67"
    %endif
    times 1 - ($ - %%insn_01c67) db 0
    %%insn_01c68:
    mov ax,[bp+si+0x2] ; 01C68 8B4202
    %if ($ - %%insn_01c68) > 3
        %error "LONG_01C68"
    %endif
    times 3 - ($ - %%insn_01c68) db 0
    %%insn_01c6b:
    cmp al,[bp-0x3076] ; 01C6B 3A868ACF
    %if ($ - %%insn_01c6b) > 4
        %error "LONG_01C6B"
    %endif
    times 4 - ($ - %%insn_01c6b) db 0
    %%insn_01c6f:
    jz short 0x1c94 ; 01C6F 7423
    %if ($ - %%insn_01c6f) > 2
        %error "LONG_01C6F"
    %endif
    times 2 - ($ - %%insn_01c6f) db 0
    db 0x32, 0xE4 ; 01C71 32E4 | xor ah,ah | encoding preserved
    %%insn_01c73:
    mov [bp-0x3076],al ; 01C73 88868ACF
    %if ($ - %%insn_01c73) > 4
        %error "LONG_01C73"
    %endif
    times 4 - ($ - %%insn_01c73) db 0
    %%insn_01c77:
    call word near [ss:0xd660] ; 01C77 36FF1660D6
    %if ($ - %%insn_01c77) > 5
        %error "LONG_01C77"
    %endif
    times 5 - ($ - %%insn_01c77) db 0
    %%insn_01c7c:
    mov al,[bp-0x30b6] ; 01C7C 8A864ACF
    %if ($ - %%insn_01c7c) > 4
        %error "LONG_01C7C"
    %endif
    times 4 - ($ - %%insn_01c7c) db 0
    %%insn_01c80:
    cmp al,[bp-0x3076] ; 01C80 3A868ACF
    %if ($ - %%insn_01c80) > 4
        %error "LONG_01C80"
    %endif
    times 4 - ($ - %%insn_01c80) db 0
    %%insn_01c84:
    jnz short 0x1c8c ; 01C84 7506
    %if ($ - %%insn_01c84) > 2
        %error "LONG_01C84"
    %endif
    times 2 - ($ - %%insn_01c84) db 0
    %%insn_01c86:
    mov fs,word [bp-0x30ba] ; 01C86 8EA646CF
    %if ($ - %%insn_01c86) > 4
        %error "LONG_01C86"
    %endif
    times 4 - ($ - %%insn_01c86) db 0
    %%insn_01c8a:
    jmp short 0x1c90 ; 01C8A EB04
    %if ($ - %%insn_01c8a) > 2
        %error "LONG_01C8A"
    %endif
    times 2 - ($ - %%insn_01c8a) db 0
    %%insn_01c8c:
    mov fs,word [bp-0x30b8] ; 01C8C 8EA648CF
    %if ($ - %%insn_01c8c) > 4
        %error "LONG_01C8C"
    %endif
    times 4 - ($ - %%insn_01c8c) db 0
    %%insn_01c90:
    mov fs,word [bp-0x30ba] ; 01C90 8EA646CF
    %if ($ - %%insn_01c90) > 4
        %error "LONG_01C90"
    %endif
    times 4 - ($ - %%insn_01c90) db 0
    %%insn_01c94:
    mov di,[bp+si] ; 01C94 8B3A
    %if ($ - %%insn_01c94) > 2
        %error "LONG_01C94"
    %endif
    times 2 - ($ - %%insn_01c94) db 0
    %%insn_01c96:
    mov dx,0x4 ; 01C96 BA0400
    %if ($ - %%insn_01c96) > 3
        %error "LONG_01C96"
    %endif
    times 3 - ($ - %%insn_01c96) db 0
    db 0x8B, 0xC3 ; 01C99 8BC3 | mov ax,bx | encoding preserved
    %%insn_01c9b:
    push bx ; 01C9B 53
    %if ($ - %%insn_01c9b) > 1
        %error "LONG_01C9B"
    %endif
    times 1 - ($ - %%insn_01c9b) db 0
    %%insn_01c9c:
    mov bx,[fs:di] ; 01C9C 648B1D
    %if ($ - %%insn_01c9c) > 3
        %error "LONG_01C9C"
    %endif
    times 3 - ($ - %%insn_01c9c) db 0
    %%insn_01c9f:
    cmp bl,0xff ; 01C9F 80FBFF
    %if ($ - %%insn_01c9f) > 3
        %error "LONG_01C9F"
    %endif
    times 3 - ($ - %%insn_01c9f) db 0
    %%insn_01ca2:
    jz short 0x1cac ; 01CA2 7408
    %if ($ - %%insn_01ca2) > 2
        %error "LONG_01CA2"
    %endif
    times 2 - ($ - %%insn_01ca2) db 0
    %%insn_01ca4:
    cmp al,0xff ; 01CA4 3CFF
    %if ($ - %%insn_01ca4) > 2
        %error "LONG_01CA4"
    %endif
    times 2 - ($ - %%insn_01ca4) db 0
    %%insn_01ca6:
    jnz short 0x1caa ; 01CA6 7502
    %if ($ - %%insn_01ca6) > 2
        %error "LONG_01CA6"
    %endif
    times 2 - ($ - %%insn_01ca6) db 0
    db 0x8A, 0xC3 ; 01CA8 8AC3 | mov al,bl | encoding preserved
    %%insn_01caa:
    mov [di],al ; 01CAA 8805
    %if ($ - %%insn_01caa) > 2
        %error "LONG_01CAA"
    %endif
    times 2 - ($ - %%insn_01caa) db 0
    %%insn_01cac:
    cmp bh,0xff ; 01CAC 80FFFF
    %if ($ - %%insn_01cac) > 3
        %error "LONG_01CAC"
    %endif
    times 3 - ($ - %%insn_01cac) db 0
    %%insn_01caf:
    jz short 0x1cbb ; 01CAF 740A
    %if ($ - %%insn_01caf) > 2
        %error "LONG_01CAF"
    %endif
    times 2 - ($ - %%insn_01caf) db 0
    %%insn_01cb1:
    cmp ah,0xff ; 01CB1 80FCFF
    %if ($ - %%insn_01cb1) > 3
        %error "LONG_01CB1"
    %endif
    times 3 - ($ - %%insn_01cb1) db 0
    %%insn_01cb4:
    jnz short 0x1cb8 ; 01CB4 7502
    %if ($ - %%insn_01cb4) > 2
        %error "LONG_01CB4"
    %endif
    times 2 - ($ - %%insn_01cb4) db 0
    db 0x8A, 0xE7 ; 01CB6 8AE7 | mov ah,bh | encoding preserved
    %%insn_01cb8:
    mov [di+0x1],ah ; 01CB8 886501
    %if ($ - %%insn_01cb8) > 3
        %error "LONG_01CB8"
    %endif
    times 3 - ($ - %%insn_01cb8) db 0
    %%insn_01cbb:
    pop bx ; 01CBB 5B
    %if ($ - %%insn_01cbb) > 1
        %error "LONG_01CBB"
    %endif
    times 1 - ($ - %%insn_01cbb) db 0
    db 0x8B, 0xC3 ; 01CBC 8BC3 | mov ax,bx | encoding preserved
    %%insn_01cbe:
    push bx ; 01CBE 53
    %if ($ - %%insn_01cbe) > 1
        %error "LONG_01CBE"
    %endif
    times 1 - ($ - %%insn_01cbe) db 0
    %%insn_01cbf:
    mov bx,[fs:di+0x2] ; 01CBF 648B5D02
    %if ($ - %%insn_01cbf) > 4
        %error "LONG_01CBF"
    %endif
    times 4 - ($ - %%insn_01cbf) db 0
    %%insn_01cc3:
    cmp bl,0xff ; 01CC3 80FBFF
    %if ($ - %%insn_01cc3) > 3
        %error "LONG_01CC3"
    %endif
    times 3 - ($ - %%insn_01cc3) db 0
    %%insn_01cc6:
    jz short 0x1cd1 ; 01CC6 7409
    %if ($ - %%insn_01cc6) > 2
        %error "LONG_01CC6"
    %endif
    times 2 - ($ - %%insn_01cc6) db 0
    %%insn_01cc8:
    cmp al,0xff ; 01CC8 3CFF
    %if ($ - %%insn_01cc8) > 2
        %error "LONG_01CC8"
    %endif
    times 2 - ($ - %%insn_01cc8) db 0
    %%insn_01cca:
    jnz short 0x1cce ; 01CCA 7502
    %if ($ - %%insn_01cca) > 2
        %error "LONG_01CCA"
    %endif
    times 2 - ($ - %%insn_01cca) db 0
    db 0x8A, 0xC3 ; 01CCC 8AC3 | mov al,bl | encoding preserved
    %%insn_01cce:
    mov [di+0x2],al ; 01CCE 884502
    %if ($ - %%insn_01cce) > 3
        %error "LONG_01CCE"
    %endif
    times 3 - ($ - %%insn_01cce) db 0
    %%insn_01cd1:
    cmp bh,0xff ; 01CD1 80FFFF
    %if ($ - %%insn_01cd1) > 3
        %error "LONG_01CD1"
    %endif
    times 3 - ($ - %%insn_01cd1) db 0
    %%insn_01cd4:
    jz short 0x1ce0 ; 01CD4 740A
    %if ($ - %%insn_01cd4) > 2
        %error "LONG_01CD4"
    %endif
    times 2 - ($ - %%insn_01cd4) db 0
    %%insn_01cd6:
    cmp ah,0xff ; 01CD6 80FCFF
    %if ($ - %%insn_01cd6) > 3
        %error "LONG_01CD6"
    %endif
    times 3 - ($ - %%insn_01cd6) db 0
    %%insn_01cd9:
    jnz short 0x1cdd ; 01CD9 7502
    %if ($ - %%insn_01cd9) > 2
        %error "LONG_01CD9"
    %endif
    times 2 - ($ - %%insn_01cd9) db 0
    db 0x8A, 0xE7 ; 01CDB 8AE7 | mov ah,bh | encoding preserved
    %%insn_01cdd:
    mov [di+0x3],ah ; 01CDD 886503
    %if ($ - %%insn_01cdd) > 3
        %error "LONG_01CDD"
    %endif
    times 3 - ($ - %%insn_01cdd) db 0
    %%insn_01ce0:
    pop bx ; 01CE0 5B
    %if ($ - %%insn_01ce0) > 1
        %error "LONG_01CE0"
    %endif
    times 1 - ($ - %%insn_01ce0) db 0
    %%insn_01ce1:
    add di,[bp-0x2996] ; 01CE1 03BE6AD6
    %if ($ - %%insn_01ce1) > 4
        %error "LONG_01CE1"
    %endif
    times 4 - ($ - %%insn_01ce1) db 0
    %%insn_01ce5:
    jnc short 0x1cfc ; 01CE5 7315
    %if ($ - %%insn_01ce5) > 2
        %error "LONG_01CE5"
    %endif
    times 2 - ($ - %%insn_01ce5) db 0
    %%insn_01ce7:
    mov al,[bp-0x3076] ; 01CE7 8A868ACF
    %if ($ - %%insn_01ce7) > 4
        %error "LONG_01CE7"
    %endif
    times 4 - ($ - %%insn_01ce7) db 0
    %%insn_01ceb:
    inc al ; 01CEB FEC0
    %if ($ - %%insn_01ceb) > 2
        %error "LONG_01CEB"
    %endif
    times 2 - ($ - %%insn_01ceb) db 0
    db 0x32, 0xE4 ; 01CED 32E4 | xor ah,ah | encoding preserved
    %%insn_01cef:
    mov [bp-0x3076],al ; 01CEF 88868ACF
    %if ($ - %%insn_01cef) > 4
        %error "LONG_01CEF"
    %endif
    times 4 - ($ - %%insn_01cef) db 0
    %%insn_01cf3:
    call word near [ss:0xd660] ; 01CF3 36FF1660D6
    %if ($ - %%insn_01cf3) > 5
        %error "LONG_01CF3"
    %endif
    times 5 - ($ - %%insn_01cf3) db 0
    %%insn_01cf8:
    mov fs,word [bp-0x30b8] ; 01CF8 8EA648CF
    %if ($ - %%insn_01cf8) > 4
        %error "LONG_01CF8"
    %endif
    times 4 - ($ - %%insn_01cf8) db 0
    %%insn_01cfc:
    dec dx ; 01CFC 4A
    %if ($ - %%insn_01cfc) > 1
        %error "LONG_01CFC"
    %endif
    times 1 - ($ - %%insn_01cfc) db 0
    %%insn_01cfd:
    jnz short 0x1c99 ; 01CFD 759A
    %if ($ - %%insn_01cfd) > 2
        %error "LONG_01CFD"
    %endif
    times 2 - ($ - %%insn_01cfd) db 0
    %%insn_01cff:
    add si,0x4 ; 01CFF 83C604
    %if ($ - %%insn_01cff) > 3
        %error "LONG_01CFF"
    %endif
    times 3 - ($ - %%insn_01cff) db 0
    %%insn_01d02:
    loop short 0x1d06 ; 01D02 E202
    %if ($ - %%insn_01d02) > 2
        %error "LONG_01D02"
    %endif
    times 2 - ($ - %%insn_01d02) db 0
    %%insn_01d04:
    jmp short 0x1d09 ; 01D04 EB03
    %if ($ - %%insn_01d04) > 2
        %error "LONG_01D04"
    %endif
    times 2 - ($ - %%insn_01d04) db 0
    %%insn_01d06:
    jmp 0x1c68 ; 01D06 E95FFF
    %if ($ - %%insn_01d06) > 3
        %error "LONG_01D06"
    %endif
    times 3 - ($ - %%insn_01d06) db 0
    db 0x8B, 0xFE ; 01D09 8BFE | mov di,si | encoding preserved
    %%insn_01d0b:
    mov ds,word [bp-0x2aaa] ; 01D0B 8E9E56D5
    %if ($ - %%insn_01d0b) > 4
        %error "LONG_01D0B"
    %endif
    times 4 - ($ - %%insn_01d0b) db 0
    %%insn_01d0f:
    pop si ; 01D0F 5E
    %if ($ - %%insn_01d0f) > 1
        %error "LONG_01D0F"
    %endif
    times 1 - ($ - %%insn_01d0f) db 0
    %%insn_01d10:
    jmp 0x17ec ; 01D10 E9D9FA
    %if ($ - %%insn_01d10) > 3
        %error "LONG_01D10"
    %endif
    times 3 - ($ - %%insn_01d10) db 0
    db 0x2D, 0x75, 0x00 ; 01D13 2D7500 | sub ax,0x75 | encoding preserved
    db 0x8B, 0xC8 ; 01D16 8BC8 | mov cx,ax | encoding preserved
    %%insn_01d18:
    push di ; 01D18 57
    %if ($ - %%insn_01d18) > 1
        %error "LONG_01D18"
    %endif
    times 1 - ($ - %%insn_01d18) db 0
    %%insn_01d19:
    lodsb ; 01D19 AC
    %if ($ - %%insn_01d19) > 1
        %error "LONG_01D19"
    %endif
    times 1 - ($ - %%insn_01d19) db 0
    db 0x8A, 0xE0 ; 01D1A 8AE0 | mov ah,al | encoding preserved
    db 0x8B, 0xD8 ; 01D1C 8BD8 | mov bx,ax | encoding preserved
    %%insn_01d1e:
    mov ax,[bp+di+0x2] ; 01D1E 8B4302
    %if ($ - %%insn_01d1e) > 3
        %error "LONG_01D1E"
    %endif
    times 3 - ($ - %%insn_01d1e) db 0
    %%insn_01d21:
    mov di,[bp+di] ; 01D21 8B3B
    %if ($ - %%insn_01d21) > 2
        %error "LONG_01D21"
    %endif
    times 2 - ($ - %%insn_01d21) db 0
    %%insn_01d23:
    cmp al,[bp-0x3076] ; 01D23 3A868ACF
    %if ($ - %%insn_01d23) > 4
        %error "LONG_01D23"
    %endif
    times 4 - ($ - %%insn_01d23) db 0
    %%insn_01d27:
    jz short 0x1d4c ; 01D27 7423
    %if ($ - %%insn_01d27) > 2
        %error "LONG_01D27"
    %endif
    times 2 - ($ - %%insn_01d27) db 0
    db 0x32, 0xE4 ; 01D29 32E4 | xor ah,ah | encoding preserved
    %%insn_01d2b:
    mov [bp-0x3076],al ; 01D2B 88868ACF
    %if ($ - %%insn_01d2b) > 4
        %error "LONG_01D2B"
    %endif
    times 4 - ($ - %%insn_01d2b) db 0
    %%insn_01d2f:
    call word near [ss:0xd660] ; 01D2F 36FF1660D6
    %if ($ - %%insn_01d2f) > 5
        %error "LONG_01D2F"
    %endif
    times 5 - ($ - %%insn_01d2f) db 0
    %%insn_01d34:
    mov al,[bp-0x30b6] ; 01D34 8A864ACF
    %if ($ - %%insn_01d34) > 4
        %error "LONG_01D34"
    %endif
    times 4 - ($ - %%insn_01d34) db 0
    %%insn_01d38:
    cmp al,[bp-0x3076] ; 01D38 3A868ACF
    %if ($ - %%insn_01d38) > 4
        %error "LONG_01D38"
    %endif
    times 4 - ($ - %%insn_01d38) db 0
    %%insn_01d3c:
    jnz short 0x1d44 ; 01D3C 7506
    %if ($ - %%insn_01d3c) > 2
        %error "LONG_01D3C"
    %endif
    times 2 - ($ - %%insn_01d3c) db 0
    %%insn_01d3e:
    mov fs,word [bp-0x30ba] ; 01D3E 8EA646CF
    %if ($ - %%insn_01d3e) > 4
        %error "LONG_01D3E"
    %endif
    times 4 - ($ - %%insn_01d3e) db 0
    %%insn_01d42:
    jmp short 0x1d48 ; 01D42 EB04
    %if ($ - %%insn_01d42) > 2
        %error "LONG_01D42"
    %endif
    times 2 - ($ - %%insn_01d42) db 0
    %%insn_01d44:
    mov fs,word [bp-0x30b8] ; 01D44 8EA648CF
    %if ($ - %%insn_01d44) > 4
        %error "LONG_01D44"
    %endif
    times 4 - ($ - %%insn_01d44) db 0
    %%insn_01d48:
    mov fs,word [bp-0x30ba] ; 01D48 8EA646CF
    %if ($ - %%insn_01d48) > 4
        %error "LONG_01D48"
    %endif
    times 4 - ($ - %%insn_01d48) db 0
    %%insn_01d4c:
    mov ds,word [bp-0x2aa8] ; 01D4C 8E9E58D5
    %if ($ - %%insn_01d4c) > 4
        %error "LONG_01D4C"
    %endif
    times 4 - ($ - %%insn_01d4c) db 0
    db 0x8B, 0xC3 ; 01D50 8BC3 | mov ax,bx | encoding preserved
    %%insn_01d52:
    push bx ; 01D52 53
    %if ($ - %%insn_01d52) > 1
        %error "LONG_01D52"
    %endif
    times 1 - ($ - %%insn_01d52) db 0
    %%insn_01d53:
    mov bx,[fs:di] ; 01D53 648B1D
    %if ($ - %%insn_01d53) > 3
        %error "LONG_01D53"
    %endif
    times 3 - ($ - %%insn_01d53) db 0
    %%insn_01d56:
    cmp bl,0xff ; 01D56 80FBFF
    %if ($ - %%insn_01d56) > 3
        %error "LONG_01D56"
    %endif
    times 3 - ($ - %%insn_01d56) db 0
    %%insn_01d59:
    jz short 0x1d63 ; 01D59 7408
    %if ($ - %%insn_01d59) > 2
        %error "LONG_01D59"
    %endif
    times 2 - ($ - %%insn_01d59) db 0
    %%insn_01d5b:
    cmp al,0xff ; 01D5B 3CFF
    %if ($ - %%insn_01d5b) > 2
        %error "LONG_01D5B"
    %endif
    times 2 - ($ - %%insn_01d5b) db 0
    %%insn_01d5d:
    jnz short 0x1d61 ; 01D5D 7502
    %if ($ - %%insn_01d5d) > 2
        %error "LONG_01D5D"
    %endif
    times 2 - ($ - %%insn_01d5d) db 0
    db 0x8A, 0xC3 ; 01D5F 8AC3 | mov al,bl | encoding preserved
    %%insn_01d61:
    mov [di],al ; 01D61 8805
    %if ($ - %%insn_01d61) > 2
        %error "LONG_01D61"
    %endif
    times 2 - ($ - %%insn_01d61) db 0
    %%insn_01d63:
    cmp bh,0xff ; 01D63 80FFFF
    %if ($ - %%insn_01d63) > 3
        %error "LONG_01D63"
    %endif
    times 3 - ($ - %%insn_01d63) db 0
    %%insn_01d66:
    jz short 0x1d72 ; 01D66 740A
    %if ($ - %%insn_01d66) > 2
        %error "LONG_01D66"
    %endif
    times 2 - ($ - %%insn_01d66) db 0
    %%insn_01d68:
    cmp ah,0xff ; 01D68 80FCFF
    %if ($ - %%insn_01d68) > 3
        %error "LONG_01D68"
    %endif
    times 3 - ($ - %%insn_01d68) db 0
    %%insn_01d6b:
    jnz short 0x1d6f ; 01D6B 7502
    %if ($ - %%insn_01d6b) > 2
        %error "LONG_01D6B"
    %endif
    times 2 - ($ - %%insn_01d6b) db 0
    db 0x8A, 0xE7 ; 01D6D 8AE7 | mov ah,bh | encoding preserved
    %%insn_01d6f:
    mov [di+0x1],ah ; 01D6F 886501
    %if ($ - %%insn_01d6f) > 3
        %error "LONG_01D6F"
    %endif
    times 3 - ($ - %%insn_01d6f) db 0
    %%insn_01d72:
    pop bx ; 01D72 5B
    %if ($ - %%insn_01d72) > 1
        %error "LONG_01D72"
    %endif
    times 1 - ($ - %%insn_01d72) db 0
    db 0x8B, 0xC3 ; 01D73 8BC3 | mov ax,bx | encoding preserved
    %%insn_01d75:
    push bx ; 01D75 53
    %if ($ - %%insn_01d75) > 1
        %error "LONG_01D75"
    %endif
    times 1 - ($ - %%insn_01d75) db 0
    %%insn_01d76:
    mov bx,[fs:di+0x2] ; 01D76 648B5D02
    %if ($ - %%insn_01d76) > 4
        %error "LONG_01D76"
    %endif
    times 4 - ($ - %%insn_01d76) db 0
    %%insn_01d7a:
    cmp bl,0xff ; 01D7A 80FBFF
    %if ($ - %%insn_01d7a) > 3
        %error "LONG_01D7A"
    %endif
    times 3 - ($ - %%insn_01d7a) db 0
    %%insn_01d7d:
    jz short 0x1d88 ; 01D7D 7409
    %if ($ - %%insn_01d7d) > 2
        %error "LONG_01D7D"
    %endif
    times 2 - ($ - %%insn_01d7d) db 0
    %%insn_01d7f:
    cmp al,0xff ; 01D7F 3CFF
    %if ($ - %%insn_01d7f) > 2
        %error "LONG_01D7F"
    %endif
    times 2 - ($ - %%insn_01d7f) db 0
    %%insn_01d81:
    jnz short 0x1d85 ; 01D81 7502
    %if ($ - %%insn_01d81) > 2
        %error "LONG_01D81"
    %endif
    times 2 - ($ - %%insn_01d81) db 0
    db 0x8A, 0xC3 ; 01D83 8AC3 | mov al,bl | encoding preserved
    %%insn_01d85:
    mov [di+0x2],al ; 01D85 884502
    %if ($ - %%insn_01d85) > 3
        %error "LONG_01D85"
    %endif
    times 3 - ($ - %%insn_01d85) db 0
    %%insn_01d88:
    cmp bh,0xff ; 01D88 80FFFF
    %if ($ - %%insn_01d88) > 3
        %error "LONG_01D88"
    %endif
    times 3 - ($ - %%insn_01d88) db 0
    %%insn_01d8b:
    jz short 0x1d97 ; 01D8B 740A
    %if ($ - %%insn_01d8b) > 2
        %error "LONG_01D8B"
    %endif
    times 2 - ($ - %%insn_01d8b) db 0
    %%insn_01d8d:
    cmp ah,0xff ; 01D8D 80FCFF
    %if ($ - %%insn_01d8d) > 3
        %error "LONG_01D8D"
    %endif
    times 3 - ($ - %%insn_01d8d) db 0
    %%insn_01d90:
    jnz short 0x1d94 ; 01D90 7502
    %if ($ - %%insn_01d90) > 2
        %error "LONG_01D90"
    %endif
    times 2 - ($ - %%insn_01d90) db 0
    db 0x8A, 0xE7 ; 01D92 8AE7 | mov ah,bh | encoding preserved
    %%insn_01d94:
    mov [di+0x3],ah ; 01D94 886503
    %if ($ - %%insn_01d94) > 3
        %error "LONG_01D94"
    %endif
    times 3 - ($ - %%insn_01d94) db 0
    %%insn_01d97:
    pop bx ; 01D97 5B
    %if ($ - %%insn_01d97) > 1
        %error "LONG_01D97"
    %endif
    times 1 - ($ - %%insn_01d97) db 0
    %%insn_01d98:
    add di,[bp-0x2996] ; 01D98 03BE6AD6
    %if ($ - %%insn_01d98) > 4
        %error "LONG_01D98"
    %endif
    times 4 - ($ - %%insn_01d98) db 0
    %%insn_01d9c:
    jnc short 0x1db3 ; 01D9C 7315
    %if ($ - %%insn_01d9c) > 2
        %error "LONG_01D9C"
    %endif
    times 2 - ($ - %%insn_01d9c) db 0
    %%insn_01d9e:
    mov al,[bp-0x3076] ; 01D9E 8A868ACF
    %if ($ - %%insn_01d9e) > 4
        %error "LONG_01D9E"
    %endif
    times 4 - ($ - %%insn_01d9e) db 0
    %%insn_01da2:
    inc al ; 01DA2 FEC0
    %if ($ - %%insn_01da2) > 2
        %error "LONG_01DA2"
    %endif
    times 2 - ($ - %%insn_01da2) db 0
    db 0x32, 0xE4 ; 01DA4 32E4 | xor ah,ah | encoding preserved
    %%insn_01da6:
    mov [bp-0x3076],al ; 01DA6 88868ACF
    %if ($ - %%insn_01da6) > 4
        %error "LONG_01DA6"
    %endif
    times 4 - ($ - %%insn_01da6) db 0
    %%insn_01daa:
    call word near [ss:0xd660] ; 01DAA 36FF1660D6
    %if ($ - %%insn_01daa) > 5
        %error "LONG_01DAA"
    %endif
    times 5 - ($ - %%insn_01daa) db 0
    %%insn_01daf:
    mov fs,word [bp-0x30b8] ; 01DAF 8EA648CF
    %if ($ - %%insn_01daf) > 4
        %error "LONG_01DAF"
    %endif
    times 4 - ($ - %%insn_01daf) db 0
    db 0x8B, 0xC3 ; 01DB3 8BC3 | mov ax,bx | encoding preserved
    %%insn_01db5:
    push bx ; 01DB5 53
    %if ($ - %%insn_01db5) > 1
        %error "LONG_01DB5"
    %endif
    times 1 - ($ - %%insn_01db5) db 0
    %%insn_01db6:
    mov bx,[fs:di] ; 01DB6 648B1D
    %if ($ - %%insn_01db6) > 3
        %error "LONG_01DB6"
    %endif
    times 3 - ($ - %%insn_01db6) db 0
    %%insn_01db9:
    cmp bl,0xff ; 01DB9 80FBFF
    %if ($ - %%insn_01db9) > 3
        %error "LONG_01DB9"
    %endif
    times 3 - ($ - %%insn_01db9) db 0
    %%insn_01dbc:
    jz short 0x1dc6 ; 01DBC 7408
    %if ($ - %%insn_01dbc) > 2
        %error "LONG_01DBC"
    %endif
    times 2 - ($ - %%insn_01dbc) db 0
    %%insn_01dbe:
    cmp al,0xff ; 01DBE 3CFF
    %if ($ - %%insn_01dbe) > 2
        %error "LONG_01DBE"
    %endif
    times 2 - ($ - %%insn_01dbe) db 0
    %%insn_01dc0:
    jnz short 0x1dc4 ; 01DC0 7502
    %if ($ - %%insn_01dc0) > 2
        %error "LONG_01DC0"
    %endif
    times 2 - ($ - %%insn_01dc0) db 0
    db 0x8A, 0xC3 ; 01DC2 8AC3 | mov al,bl | encoding preserved
    %%insn_01dc4:
    mov [di],al ; 01DC4 8805
    %if ($ - %%insn_01dc4) > 2
        %error "LONG_01DC4"
    %endif
    times 2 - ($ - %%insn_01dc4) db 0
    %%insn_01dc6:
    cmp bh,0xff ; 01DC6 80FFFF
    %if ($ - %%insn_01dc6) > 3
        %error "LONG_01DC6"
    %endif
    times 3 - ($ - %%insn_01dc6) db 0
    %%insn_01dc9:
    jz short 0x1dd5 ; 01DC9 740A
    %if ($ - %%insn_01dc9) > 2
        %error "LONG_01DC9"
    %endif
    times 2 - ($ - %%insn_01dc9) db 0
    %%insn_01dcb:
    cmp ah,0xff ; 01DCB 80FCFF
    %if ($ - %%insn_01dcb) > 3
        %error "LONG_01DCB"
    %endif
    times 3 - ($ - %%insn_01dcb) db 0
    %%insn_01dce:
    jnz short 0x1dd2 ; 01DCE 7502
    %if ($ - %%insn_01dce) > 2
        %error "LONG_01DCE"
    %endif
    times 2 - ($ - %%insn_01dce) db 0
    db 0x8A, 0xE7 ; 01DD0 8AE7 | mov ah,bh | encoding preserved
    %%insn_01dd2:
    mov [di+0x1],ah ; 01DD2 886501
    %if ($ - %%insn_01dd2) > 3
        %error "LONG_01DD2"
    %endif
    times 3 - ($ - %%insn_01dd2) db 0
    %%insn_01dd5:
    pop bx ; 01DD5 5B
    %if ($ - %%insn_01dd5) > 1
        %error "LONG_01DD5"
    %endif
    times 1 - ($ - %%insn_01dd5) db 0
    db 0x8B, 0xC3 ; 01DD6 8BC3 | mov ax,bx | encoding preserved
    %%insn_01dd8:
    push bx ; 01DD8 53
    %if ($ - %%insn_01dd8) > 1
        %error "LONG_01DD8"
    %endif
    times 1 - ($ - %%insn_01dd8) db 0
    %%insn_01dd9:
    mov bx,[fs:di+0x2] ; 01DD9 648B5D02
    %if ($ - %%insn_01dd9) > 4
        %error "LONG_01DD9"
    %endif
    times 4 - ($ - %%insn_01dd9) db 0
    %%insn_01ddd:
    cmp bl,0xff ; 01DDD 80FBFF
    %if ($ - %%insn_01ddd) > 3
        %error "LONG_01DDD"
    %endif
    times 3 - ($ - %%insn_01ddd) db 0
    %%insn_01de0:
    jz short 0x1deb ; 01DE0 7409
    %if ($ - %%insn_01de0) > 2
        %error "LONG_01DE0"
    %endif
    times 2 - ($ - %%insn_01de0) db 0
    %%insn_01de2:
    cmp al,0xff ; 01DE2 3CFF
    %if ($ - %%insn_01de2) > 2
        %error "LONG_01DE2"
    %endif
    times 2 - ($ - %%insn_01de2) db 0
    %%insn_01de4:
    jnz short 0x1de8 ; 01DE4 7502
    %if ($ - %%insn_01de4) > 2
        %error "LONG_01DE4"
    %endif
    times 2 - ($ - %%insn_01de4) db 0
    db 0x8A, 0xC3 ; 01DE6 8AC3 | mov al,bl | encoding preserved
    %%insn_01de8:
    mov [di+0x2],al ; 01DE8 884502
    %if ($ - %%insn_01de8) > 3
        %error "LONG_01DE8"
    %endif
    times 3 - ($ - %%insn_01de8) db 0
    %%insn_01deb:
    cmp bh,0xff ; 01DEB 80FFFF
    %if ($ - %%insn_01deb) > 3
        %error "LONG_01DEB"
    %endif
    times 3 - ($ - %%insn_01deb) db 0
    %%insn_01dee:
    jz short 0x1dfa ; 01DEE 740A
    %if ($ - %%insn_01dee) > 2
        %error "LONG_01DEE"
    %endif
    times 2 - ($ - %%insn_01dee) db 0
    %%insn_01df0:
    cmp ah,0xff ; 01DF0 80FCFF
    %if ($ - %%insn_01df0) > 3
        %error "LONG_01DF0"
    %endif
    times 3 - ($ - %%insn_01df0) db 0
    %%insn_01df3:
    jnz short 0x1df7 ; 01DF3 7502
    %if ($ - %%insn_01df3) > 2
        %error "LONG_01DF3"
    %endif
    times 2 - ($ - %%insn_01df3) db 0
    db 0x8A, 0xE7 ; 01DF5 8AE7 | mov ah,bh | encoding preserved
    %%insn_01df7:
    mov [di+0x3],ah ; 01DF7 886503
    %if ($ - %%insn_01df7) > 3
        %error "LONG_01DF7"
    %endif
    times 3 - ($ - %%insn_01df7) db 0
    %%insn_01dfa:
    pop bx ; 01DFA 5B
    %if ($ - %%insn_01dfa) > 1
        %error "LONG_01DFA"
    %endif
    times 1 - ($ - %%insn_01dfa) db 0
    %%insn_01dfb:
    add di,[bp-0x2996] ; 01DFB 03BE6AD6
    %if ($ - %%insn_01dfb) > 4
        %error "LONG_01DFB"
    %endif
    times 4 - ($ - %%insn_01dfb) db 0
    %%insn_01dff:
    jnc short 0x1e16 ; 01DFF 7315
    %if ($ - %%insn_01dff) > 2
        %error "LONG_01DFF"
    %endif
    times 2 - ($ - %%insn_01dff) db 0
    %%insn_01e01:
    mov al,[bp-0x3076] ; 01E01 8A868ACF
    %if ($ - %%insn_01e01) > 4
        %error "LONG_01E01"
    %endif
    times 4 - ($ - %%insn_01e01) db 0
    %%insn_01e05:
    inc al ; 01E05 FEC0
    %if ($ - %%insn_01e05) > 2
        %error "LONG_01E05"
    %endif
    times 2 - ($ - %%insn_01e05) db 0
    db 0x32, 0xE4 ; 01E07 32E4 | xor ah,ah | encoding preserved
    %%insn_01e09:
    mov [bp-0x3076],al ; 01E09 88868ACF
    %if ($ - %%insn_01e09) > 4
        %error "LONG_01E09"
    %endif
    times 4 - ($ - %%insn_01e09) db 0
    %%insn_01e0d:
    call word near [ss:0xd660] ; 01E0D 36FF1660D6
    %if ($ - %%insn_01e0d) > 5
        %error "LONG_01E0D"
    %endif
    times 5 - ($ - %%insn_01e0d) db 0
    %%insn_01e12:
    mov fs,word [bp-0x30b8] ; 01E12 8EA648CF
    %if ($ - %%insn_01e12) > 4
        %error "LONG_01E12"
    %endif
    times 4 - ($ - %%insn_01e12) db 0
    db 0x8B, 0xC3 ; 01E16 8BC3 | mov ax,bx | encoding preserved
    %%insn_01e18:
    push bx ; 01E18 53
    %if ($ - %%insn_01e18) > 1
        %error "LONG_01E18"
    %endif
    times 1 - ($ - %%insn_01e18) db 0
    %%insn_01e19:
    mov bx,[fs:di] ; 01E19 648B1D
    %if ($ - %%insn_01e19) > 3
        %error "LONG_01E19"
    %endif
    times 3 - ($ - %%insn_01e19) db 0
    %%insn_01e1c:
    cmp bl,0xff ; 01E1C 80FBFF
    %if ($ - %%insn_01e1c) > 3
        %error "LONG_01E1C"
    %endif
    times 3 - ($ - %%insn_01e1c) db 0
    %%insn_01e1f:
    jz short 0x1e29 ; 01E1F 7408
    %if ($ - %%insn_01e1f) > 2
        %error "LONG_01E1F"
    %endif
    times 2 - ($ - %%insn_01e1f) db 0
    %%insn_01e21:
    cmp al,0xff ; 01E21 3CFF
    %if ($ - %%insn_01e21) > 2
        %error "LONG_01E21"
    %endif
    times 2 - ($ - %%insn_01e21) db 0
    %%insn_01e23:
    jnz short 0x1e27 ; 01E23 7502
    %if ($ - %%insn_01e23) > 2
        %error "LONG_01E23"
    %endif
    times 2 - ($ - %%insn_01e23) db 0
    db 0x8A, 0xC3 ; 01E25 8AC3 | mov al,bl | encoding preserved
    %%insn_01e27:
    mov [di],al ; 01E27 8805
    %if ($ - %%insn_01e27) > 2
        %error "LONG_01E27"
    %endif
    times 2 - ($ - %%insn_01e27) db 0
    %%insn_01e29:
    cmp bh,0xff ; 01E29 80FFFF
    %if ($ - %%insn_01e29) > 3
        %error "LONG_01E29"
    %endif
    times 3 - ($ - %%insn_01e29) db 0
    %%insn_01e2c:
    jz short 0x1e38 ; 01E2C 740A
    %if ($ - %%insn_01e2c) > 2
        %error "LONG_01E2C"
    %endif
    times 2 - ($ - %%insn_01e2c) db 0
    %%insn_01e2e:
    cmp ah,0xff ; 01E2E 80FCFF
    %if ($ - %%insn_01e2e) > 3
        %error "LONG_01E2E"
    %endif
    times 3 - ($ - %%insn_01e2e) db 0
    %%insn_01e31:
    jnz short 0x1e35 ; 01E31 7502
    %if ($ - %%insn_01e31) > 2
        %error "LONG_01E31"
    %endif
    times 2 - ($ - %%insn_01e31) db 0
    db 0x8A, 0xE7 ; 01E33 8AE7 | mov ah,bh | encoding preserved
    %%insn_01e35:
    mov [di+0x1],ah ; 01E35 886501
    %if ($ - %%insn_01e35) > 3
        %error "LONG_01E35"
    %endif
    times 3 - ($ - %%insn_01e35) db 0
    %%insn_01e38:
    pop bx ; 01E38 5B
    %if ($ - %%insn_01e38) > 1
        %error "LONG_01E38"
    %endif
    times 1 - ($ - %%insn_01e38) db 0
    db 0x8B, 0xC3 ; 01E39 8BC3 | mov ax,bx | encoding preserved
    %%insn_01e3b:
    push bx ; 01E3B 53
    %if ($ - %%insn_01e3b) > 1
        %error "LONG_01E3B"
    %endif
    times 1 - ($ - %%insn_01e3b) db 0
    %%insn_01e3c:
    mov bx,[fs:di+0x2] ; 01E3C 648B5D02
    %if ($ - %%insn_01e3c) > 4
        %error "LONG_01E3C"
    %endif
    times 4 - ($ - %%insn_01e3c) db 0
    %%insn_01e40:
    cmp bl,0xff ; 01E40 80FBFF
    %if ($ - %%insn_01e40) > 3
        %error "LONG_01E40"
    %endif
    times 3 - ($ - %%insn_01e40) db 0
    %%insn_01e43:
    jz short 0x1e4e ; 01E43 7409
    %if ($ - %%insn_01e43) > 2
        %error "LONG_01E43"
    %endif
    times 2 - ($ - %%insn_01e43) db 0
    %%insn_01e45:
    cmp al,0xff ; 01E45 3CFF
    %if ($ - %%insn_01e45) > 2
        %error "LONG_01E45"
    %endif
    times 2 - ($ - %%insn_01e45) db 0
    %%insn_01e47:
    jnz short 0x1e4b ; 01E47 7502
    %if ($ - %%insn_01e47) > 2
        %error "LONG_01E47"
    %endif
    times 2 - ($ - %%insn_01e47) db 0
    db 0x8A, 0xC3 ; 01E49 8AC3 | mov al,bl | encoding preserved
    %%insn_01e4b:
    mov [di+0x2],al ; 01E4B 884502
    %if ($ - %%insn_01e4b) > 3
        %error "LONG_01E4B"
    %endif
    times 3 - ($ - %%insn_01e4b) db 0
    %%insn_01e4e:
    cmp bh,0xff ; 01E4E 80FFFF
    %if ($ - %%insn_01e4e) > 3
        %error "LONG_01E4E"
    %endif
    times 3 - ($ - %%insn_01e4e) db 0
    %%insn_01e51:
    jz short 0x1e5d ; 01E51 740A
    %if ($ - %%insn_01e51) > 2
        %error "LONG_01E51"
    %endif
    times 2 - ($ - %%insn_01e51) db 0
    %%insn_01e53:
    cmp ah,0xff ; 01E53 80FCFF
    %if ($ - %%insn_01e53) > 3
        %error "LONG_01E53"
    %endif
    times 3 - ($ - %%insn_01e53) db 0
    %%insn_01e56:
    jnz short 0x1e5a ; 01E56 7502
    %if ($ - %%insn_01e56) > 2
        %error "LONG_01E56"
    %endif
    times 2 - ($ - %%insn_01e56) db 0
    db 0x8A, 0xE7 ; 01E58 8AE7 | mov ah,bh | encoding preserved
    %%insn_01e5a:
    mov [di+0x3],ah ; 01E5A 886503
    %if ($ - %%insn_01e5a) > 3
        %error "LONG_01E5A"
    %endif
    times 3 - ($ - %%insn_01e5a) db 0
    %%insn_01e5d:
    pop bx ; 01E5D 5B
    %if ($ - %%insn_01e5d) > 1
        %error "LONG_01E5D"
    %endif
    times 1 - ($ - %%insn_01e5d) db 0
    %%insn_01e5e:
    add di,[bp-0x2996] ; 01E5E 03BE6AD6
    %if ($ - %%insn_01e5e) > 4
        %error "LONG_01E5E"
    %endif
    times 4 - ($ - %%insn_01e5e) db 0
    %%insn_01e62:
    jnc short 0x1e79 ; 01E62 7315
    %if ($ - %%insn_01e62) > 2
        %error "LONG_01E62"
    %endif
    times 2 - ($ - %%insn_01e62) db 0
    %%insn_01e64:
    mov al,[bp-0x3076] ; 01E64 8A868ACF
    %if ($ - %%insn_01e64) > 4
        %error "LONG_01E64"
    %endif
    times 4 - ($ - %%insn_01e64) db 0
    %%insn_01e68:
    inc al ; 01E68 FEC0
    %if ($ - %%insn_01e68) > 2
        %error "LONG_01E68"
    %endif
    times 2 - ($ - %%insn_01e68) db 0
    db 0x32, 0xE4 ; 01E6A 32E4 | xor ah,ah | encoding preserved
    %%insn_01e6c:
    mov [bp-0x3076],al ; 01E6C 88868ACF
    %if ($ - %%insn_01e6c) > 4
        %error "LONG_01E6C"
    %endif
    times 4 - ($ - %%insn_01e6c) db 0
    %%insn_01e70:
    call word near [ss:0xd660] ; 01E70 36FF1660D6
    %if ($ - %%insn_01e70) > 5
        %error "LONG_01E70"
    %endif
    times 5 - ($ - %%insn_01e70) db 0
    %%insn_01e75:
    mov fs,word [bp-0x30b8] ; 01E75 8EA648CF
    %if ($ - %%insn_01e75) > 4
        %error "LONG_01E75"
    %endif
    times 4 - ($ - %%insn_01e75) db 0
    db 0x8B, 0xC3 ; 01E79 8BC3 | mov ax,bx | encoding preserved
    %%insn_01e7b:
    push bx ; 01E7B 53
    %if ($ - %%insn_01e7b) > 1
        %error "LONG_01E7B"
    %endif
    times 1 - ($ - %%insn_01e7b) db 0
    %%insn_01e7c:
    mov bx,[fs:di] ; 01E7C 648B1D
    %if ($ - %%insn_01e7c) > 3
        %error "LONG_01E7C"
    %endif
    times 3 - ($ - %%insn_01e7c) db 0
    %%insn_01e7f:
    cmp bl,0xff ; 01E7F 80FBFF
    %if ($ - %%insn_01e7f) > 3
        %error "LONG_01E7F"
    %endif
    times 3 - ($ - %%insn_01e7f) db 0
    %%insn_01e82:
    jz short 0x1e8c ; 01E82 7408
    %if ($ - %%insn_01e82) > 2
        %error "LONG_01E82"
    %endif
    times 2 - ($ - %%insn_01e82) db 0
    %%insn_01e84:
    cmp al,0xff ; 01E84 3CFF
    %if ($ - %%insn_01e84) > 2
        %error "LONG_01E84"
    %endif
    times 2 - ($ - %%insn_01e84) db 0
    %%insn_01e86:
    jnz short 0x1e8a ; 01E86 7502
    %if ($ - %%insn_01e86) > 2
        %error "LONG_01E86"
    %endif
    times 2 - ($ - %%insn_01e86) db 0
    db 0x8A, 0xC3 ; 01E88 8AC3 | mov al,bl | encoding preserved
    %%insn_01e8a:
    mov [di],al ; 01E8A 8805
    %if ($ - %%insn_01e8a) > 2
        %error "LONG_01E8A"
    %endif
    times 2 - ($ - %%insn_01e8a) db 0
    %%insn_01e8c:
    cmp bh,0xff ; 01E8C 80FFFF
    %if ($ - %%insn_01e8c) > 3
        %error "LONG_01E8C"
    %endif
    times 3 - ($ - %%insn_01e8c) db 0
    %%insn_01e8f:
    jz short 0x1e9b ; 01E8F 740A
    %if ($ - %%insn_01e8f) > 2
        %error "LONG_01E8F"
    %endif
    times 2 - ($ - %%insn_01e8f) db 0
    %%insn_01e91:
    cmp ah,0xff ; 01E91 80FCFF
    %if ($ - %%insn_01e91) > 3
        %error "LONG_01E91"
    %endif
    times 3 - ($ - %%insn_01e91) db 0
    %%insn_01e94:
    jnz short 0x1e98 ; 01E94 7502
    %if ($ - %%insn_01e94) > 2
        %error "LONG_01E94"
    %endif
    times 2 - ($ - %%insn_01e94) db 0
    db 0x8A, 0xE7 ; 01E96 8AE7 | mov ah,bh | encoding preserved
    %%insn_01e98:
    mov [di+0x1],ah ; 01E98 886501
    %if ($ - %%insn_01e98) > 3
        %error "LONG_01E98"
    %endif
    times 3 - ($ - %%insn_01e98) db 0
    %%insn_01e9b:
    pop bx ; 01E9B 5B
    %if ($ - %%insn_01e9b) > 1
        %error "LONG_01E9B"
    %endif
    times 1 - ($ - %%insn_01e9b) db 0
    db 0x8B, 0xC3 ; 01E9C 8BC3 | mov ax,bx | encoding preserved
    %%insn_01e9e:
    push bx ; 01E9E 53
    %if ($ - %%insn_01e9e) > 1
        %error "LONG_01E9E"
    %endif
    times 1 - ($ - %%insn_01e9e) db 0
    %%insn_01e9f:
    mov bx,[fs:di+0x2] ; 01E9F 648B5D02
    %if ($ - %%insn_01e9f) > 4
        %error "LONG_01E9F"
    %endif
    times 4 - ($ - %%insn_01e9f) db 0
    %%insn_01ea3:
    cmp bl,0xff ; 01EA3 80FBFF
    %if ($ - %%insn_01ea3) > 3
        %error "LONG_01EA3"
    %endif
    times 3 - ($ - %%insn_01ea3) db 0
    %%insn_01ea6:
    jz short 0x1eb1 ; 01EA6 7409
    %if ($ - %%insn_01ea6) > 2
        %error "LONG_01EA6"
    %endif
    times 2 - ($ - %%insn_01ea6) db 0
    %%insn_01ea8:
    cmp al,0xff ; 01EA8 3CFF
    %if ($ - %%insn_01ea8) > 2
        %error "LONG_01EA8"
    %endif
    times 2 - ($ - %%insn_01ea8) db 0
    %%insn_01eaa:
    jnz short 0x1eae ; 01EAA 7502
    %if ($ - %%insn_01eaa) > 2
        %error "LONG_01EAA"
    %endif
    times 2 - ($ - %%insn_01eaa) db 0
    db 0x8A, 0xC3 ; 01EAC 8AC3 | mov al,bl | encoding preserved
    %%insn_01eae:
    mov [di+0x2],al ; 01EAE 884502
    %if ($ - %%insn_01eae) > 3
        %error "LONG_01EAE"
    %endif
    times 3 - ($ - %%insn_01eae) db 0
    %%insn_01eb1:
    cmp bh,0xff ; 01EB1 80FFFF
    %if ($ - %%insn_01eb1) > 3
        %error "LONG_01EB1"
    %endif
    times 3 - ($ - %%insn_01eb1) db 0
    %%insn_01eb4:
    jz short 0x1ec0 ; 01EB4 740A
    %if ($ - %%insn_01eb4) > 2
        %error "LONG_01EB4"
    %endif
    times 2 - ($ - %%insn_01eb4) db 0
    %%insn_01eb6:
    cmp ah,0xff ; 01EB6 80FCFF
    %if ($ - %%insn_01eb6) > 3
        %error "LONG_01EB6"
    %endif
    times 3 - ($ - %%insn_01eb6) db 0
    %%insn_01eb9:
    jnz short 0x1ebd ; 01EB9 7502
    %if ($ - %%insn_01eb9) > 2
        %error "LONG_01EB9"
    %endif
    times 2 - ($ - %%insn_01eb9) db 0
    db 0x8A, 0xE7 ; 01EBB 8AE7 | mov ah,bh | encoding preserved
    %%insn_01ebd:
    mov [di+0x3],ah ; 01EBD 886503
    %if ($ - %%insn_01ebd) > 3
        %error "LONG_01EBD"
    %endif
    times 3 - ($ - %%insn_01ebd) db 0
    %%insn_01ec0:
    pop bx ; 01EC0 5B
    %if ($ - %%insn_01ec0) > 1
        %error "LONG_01EC0"
    %endif
    times 1 - ($ - %%insn_01ec0) db 0
    %%insn_01ec1:
    pop di ; 01EC1 5F
    %if ($ - %%insn_01ec1) > 1
        %error "LONG_01EC1"
    %endif
    times 1 - ($ - %%insn_01ec1) db 0
    %%insn_01ec2:
    add di,0x4 ; 01EC2 83C704
    %if ($ - %%insn_01ec2) > 3
        %error "LONG_01EC2"
    %endif
    times 3 - ($ - %%insn_01ec2) db 0
    %%insn_01ec5:
    mov ds,word [bp-0x2aaa] ; 01EC5 8E9E56D5
    %if ($ - %%insn_01ec5) > 4
        %error "LONG_01EC5"
    %endif
    times 4 - ($ - %%insn_01ec5) db 0
    %%insn_01ec9:
    loop short 0x1ecd ; 01EC9 E202
    %if ($ - %%insn_01ec9) > 2
        %error "LONG_01EC9"
    %endif
    times 2 - ($ - %%insn_01ec9) db 0
    %%insn_01ecb:
    jmp short 0x1ed0 ; 01ECB EB03
    %if ($ - %%insn_01ecb) > 2
        %error "LONG_01ECB"
    %endif
    times 2 - ($ - %%insn_01ecb) db 0
    %%insn_01ecd:
    jmp 0x1d18 ; 01ECD E948FE
    %if ($ - %%insn_01ecd) > 3
        %error "LONG_01ECD"
    %endif
    times 3 - ($ - %%insn_01ecd) db 0
    %%insn_01ed0:
    jmp 0x17ec ; 01ED0 E919F9
    %if ($ - %%insn_01ed0) > 3
        %error "LONG_01ED0"
    %endif
    times 3 - ($ - %%insn_01ed0) db 0
    %if ($ - %%fragment_start) != 2103
        %error "SIZE_0169C"
    %endif
%endmacro

%macro emit_decode_vdx_delta_frame_part_08 0
    %%fragment_start:
    db 0x8A, 0xD0 ; 01ED5 8AD0 | mov dl,al | encoding preserved
    %%insn_01ed7:
    lodsb ; 01ED7 AC
    %if ($ - %%insn_01ed7) > 1
        %error "LONG_01ED7"
    %endif
    times 1 - ($ - %%insn_01ed7) db 0
    db 0x8A, 0xF0 ; 01ED8 8AF0 | mov dh,al | encoding preserved
    %%insn_01eda:
    jmp 0x1806 ; 01EDA E929F9
    %if ($ - %%insn_01eda) > 3
        %error "LONG_01EDA"
    %endif
    times 3 - ($ - %%insn_01eda) db 0
    %%insn_01edd:
    ret ; 01EDD C3
    %if ($ - %%insn_01edd) > 1
        %error "LONG_01EDD"
    %endif
    times 1 - ($ - %%insn_01edd) db 0
    %%insn_01ede:
    mov fs,word [bp-0x2aac] ; 01EDE 8EA654D5
    %if ($ - %%insn_01ede) > 4
        %error "LONG_01EDE"
    %endif
    times 4 - ($ - %%insn_01ede) db 0
    %%insn_01ee2:
    pusha ; 01EE2 60
    %if ($ - %%insn_01ee2) > 1
        %error "LONG_01EE2"
    %endif
    times 1 - ($ - %%insn_01ee2) db 0
    %%insn_01ee3:
    push ds ; 01EE3 1E
    %if ($ - %%insn_01ee3) > 1
        %error "LONG_01EE3"
    %endif
    times 1 - ($ - %%insn_01ee3) db 0
    %%insn_01ee4:
    mov ds,word [bp-0x2aae] ; 01EE4 8E9E52D5
    %if ($ - %%insn_01ee4) > 4
        %error "LONG_01EE4"
    %endif
    times 4 - ($ - %%insn_01ee4) db 0
    %%insn_01ee8:
    mov dword [bp-0x2b92],0x10000 ; 01EE8 66C7866ED400000100
    %if ($ - %%insn_01ee8) > 9
        %error "LONG_01EE8"
    %endif
    times 9 - ($ - %%insn_01ee8) db 0
    %%insn_01ef1:
    mov word [bp-0x2b88],0x0 ; 01EF1 C78678D40000
    %if ($ - %%insn_01ef1) > 6
        %error "LONG_01EF1"
    %endif
    times 6 - ($ - %%insn_01ef1) db 0
    %%insn_01ef7:
    mov ax,[bp-0x2aac] ; 01EF7 8B8654D5
    %if ($ - %%insn_01ef7) > 4
        %error "LONG_01EF7"
    %endif
    times 4 - ($ - %%insn_01ef7) db 0
    %%insn_01efb:
    mov word [bp-0x2b86],0x0 ; 01EFB C7867AD40000
    %if ($ - %%insn_01efb) > 6
        %error "LONG_01EFB"
    %endif
    times 6 - ($ - %%insn_01efb) db 0
    %%insn_01f01:
    mov [bp-0x2b84],ax ; 01F01 89867CD4
    %if ($ - %%insn_01f01) > 4
        %error "LONG_01F01"
    %endif
    times 4 - ($ - %%insn_01f01) db 0
    %%insn_01f05:
    mov ax,[bp-0x2ab0] ; 01F05 8B8650D5
    %if ($ - %%insn_01f05) > 4
        %error "LONG_01F05"
    %endif
    times 4 - ($ - %%insn_01f05) db 0
    %%insn_01f09:
    mov [bp-0x2b8e],ax ; 01F09 898672D4
    %if ($ - %%insn_01f09) > 4
        %error "LONG_01F09"
    %endif
    times 4 - ($ - %%insn_01f09) db 0
    %%insn_01f0d:
    mov al,[bp-0x3076] ; 01F0D 8A868ACF
    %if ($ - %%insn_01f0d) > 4
        %error "LONG_01F0D"
    %endif
    times 4 - ($ - %%insn_01f0d) db 0
    db 0x32, 0xE4 ; 01F11 32E4 | xor ah,ah | encoding preserved
    %%insn_01f13:
    shl eax,byte 0x10 ; 01F13 66C1E010
    %if ($ - %%insn_01f13) > 4
        %error "LONG_01F13"
    %endif
    times 4 - ($ - %%insn_01f13) db 0
    %%insn_01f17:
    mov [bp-0x2b8c],eax ; 01F17 66898674D4
    %if ($ - %%insn_01f17) > 5
        %error "LONG_01F17"
    %endif
    times 5 - ($ - %%insn_01f17) db 0
    %%insn_01f1c:
    mov ah,0xb ; 01F1C B40B
    %if ($ - %%insn_01f1c) > 2
        %error "LONG_01F1C"
    %endif
    times 2 - ($ - %%insn_01f1c) db 0
    %%insn_01f1e:
    mov si,0xd46e ; 01F1E BE6ED4
    %if ($ - %%insn_01f1e) > 3
        %error "LONG_01F1E"
    %endif
    times 3 - ($ - %%insn_01f1e) db 0
    %%insn_01f21:
    call word far [cs:0x3688] ; 01F21 2EFF1E8836
    %if ($ - %%insn_01f21) > 5
        %error "LONG_01F21"
    %endif
    times 5 - ($ - %%insn_01f21) db 0
    %%insn_01f26:
    pop ds ; 01F26 1F
    %if ($ - %%insn_01f26) > 1
        %error "LONG_01F26"
    %endif
    times 1 - ($ - %%insn_01f26) db 0
    %%insn_01f27:
    popa ; 01F27 61
    %if ($ - %%insn_01f27) > 1
        %error "LONG_01F27"
    %endif
    times 1 - ($ - %%insn_01f27) db 0
    db 0x33, 0xF6 ; 01F28 33F6 | xor si,si | encoding preserved
    %%insn_01f2a:
    lodsw ; 01F2A AD
    %if ($ - %%insn_01f2a) > 1
        %error "LONG_01F2A"
    %endif
    times 1 - ($ - %%insn_01f2a) db 0
    db 0x23, 0xC0 ; 01F2B 23C0 | and ax,ax | encoding preserved
    %%insn_01f2d:
    jz short 0x1f34 ; 01F2D 7405
    %if ($ - %%insn_01f2d) > 2
        %error "LONG_01F2D"
    %endif
    times 2 - ($ - %%insn_01f2d) db 0
    %%insn_01f2f:
    push ax ; 01F2F 50
    %if ($ - %%insn_01f2f) > 1
        %error "LONG_01F2F"
    %endif
    times 1 - ($ - %%insn_01f2f) db 0
    %%insn_01f30:
    pop si ; 01F30 5E
    %if ($ - %%insn_01f30) > 1
        %error "LONG_01F30"
    %endif
    times 1 - ($ - %%insn_01f30) db 0
    %%insn_01f31:
    add si,0x2 ; 01F31 83C602
    %if ($ - %%insn_01f31) > 3
        %error "LONG_01F31"
    %endif
    times 3 - ($ - %%insn_01f31) db 0
    %%insn_01f34:
    mov word [bp-0x309e],0xd28e ; 01F34 C78662CF8ED2
    %if ($ - %%insn_01f34) > 6
        %error "LONG_01F34"
    %endif
    times 6 - ($ - %%insn_01f34) db 0
    %%insn_01f3a:
    mov bx,[bp-0x309e] ; 01F3A 8B9E62CF
    %if ($ - %%insn_01f3a) > 4
        %error "LONG_01F3A"
    %endif
    times 4 - ($ - %%insn_01f3a) db 0
    %%insn_01f3e:
    mov di,[ss:bx] ; 01F3E 368B3F
    %if ($ - %%insn_01f3e) > 3
        %error "LONG_01F3E"
    %endif
    times 3 - ($ - %%insn_01f3e) db 0
    %%insn_01f41:
    cmp di,0xffffffffffffffff ; 01F41 83FFFF
    %if ($ - %%insn_01f41) > 3
        %error "LONG_01F41"
    %endif
    times 3 - ($ - %%insn_01f41) db 0
    %%insn_01f44:
    jnz short 0x1f49 ; 01F44 7503
    %if ($ - %%insn_01f44) > 2
        %error "LONG_01F44"
    %endif
    times 2 - ($ - %%insn_01f44) db 0
    %%insn_01f46:
    jmp 0x2180 ; 01F46 E93702
    %if ($ - %%insn_01f46) > 3
        %error "LONG_01F46"
    %endif
    times 3 - ($ - %%insn_01f46) db 0
    %%insn_01f49:
    mov ax,[bp+di+0x2] ; 01F49 8B4302
    %if ($ - %%insn_01f49) > 3
        %error "LONG_01F49"
    %endif
    times 3 - ($ - %%insn_01f49) db 0
    db 0x32, 0xE4 ; 01F4C 32E4 | xor ah,ah | encoding preserved
    %%insn_01f4e:
    lodsb ; 01F4E AC
    %if ($ - %%insn_01f4e) > 1
        %error "LONG_01F4E"
    %endif
    times 1 - ($ - %%insn_01f4e) db 0
    db 0x22, 0xC0 ; 01F4F 22C0 | and al,al | encoding preserved
    %%insn_01f51:
    js 0x2178 ; 01F51 0F882302
    %if ($ - %%insn_01f51) > 4
        %error "LONG_01F51"
    %endif
    times 4 - ($ - %%insn_01f51) db 0
    db 0x3D, 0x60, 0x00 ; 01F55 3D6000 | cmp ax,0x60 | encoding preserved
    %%insn_01f58:
    jnc 0x1fe8 ; 01F58 0F838C00
    %if ($ - %%insn_01f58) > 4
        %error "LONG_01F58"
    %endif
    times 4 - ($ - %%insn_01f58) db 0
    %%insn_01f5c:
    mov bx,0xd48e ; 01F5C BB8ED4
    %if ($ - %%insn_01f5c) > 3
        %error "LONG_01F5C"
    %endif
    times 3 - ($ - %%insn_01f5c) db 0
    %%insn_01f5f:
    shl ax,1 ; 01F5F D1E0
    %if ($ - %%insn_01f5f) > 2
        %error "LONG_01F5F"
    %endif
    times 2 - ($ - %%insn_01f5f) db 0
    db 0x03, 0xD8 ; 01F61 03D8 | add bx,ax | encoding preserved
    %%insn_01f63:
    mov dx,[ss:bx] ; 01F63 368B17
    %if ($ - %%insn_01f63) > 3
        %error "LONG_01F63"
    %endif
    times 3 - ($ - %%insn_01f63) db 0
    %%insn_01f66:
    lodsw ; 01F66 AD
    %if ($ - %%insn_01f66) > 1
        %error "LONG_01F66"
    %endif
    times 1 - ($ - %%insn_01f66) db 0
    db 0x8B, 0xD8 ; 01F67 8BD8 | mov bx,ax | encoding preserved
    db 0x8B, 0xCF ; 01F69 8BCF | mov cx,di | encoding preserved
    %%insn_01f6b:
    mov di,[bp+di] ; 01F6B 8B3B
    %if ($ - %%insn_01f6b) > 2
        %error "LONG_01F6B"
    %endif
    times 2 - ($ - %%insn_01f6b) db 0
    %%insn_01f6d:
    mov ds,word [bp-0x2aa8] ; 01F6D 8E9E58D5
    %if ($ - %%insn_01f6d) > 4
        %error "LONG_01F6D"
    %endif
    times 4 - ($ - %%insn_01f6d) db 0
    db 0x8B, 0xC3 ; 01F71 8BC3 | mov ax,bx | encoding preserved
    %%insn_01f73:
    test dx,0x8000 ; 01F73 F7C20080
    %if ($ - %%insn_01f73) > 4
        %error "LONG_01F73"
    %endif
    times 4 - ($ - %%insn_01f73) db 0
    %%insn_01f77:
    jnz short 0x1f7b ; 01F77 7502
    %if ($ - %%insn_01f77) > 2
        %error "LONG_01F77"
    %endif
    times 2 - ($ - %%insn_01f77) db 0
    db 0x8A, 0xC7 ; 01F79 8AC7 | mov al,bh | encoding preserved
    %%insn_01f7b:
    test dx,0x2000 ; 01F7B F7C20020
    %if ($ - %%insn_01f7b) > 4
        %error "LONG_01F7B"
    %endif
    times 4 - ($ - %%insn_01f7b) db 0
    %%insn_01f7f:
    jz short 0x1f83 ; 01F7F 7402
    %if ($ - %%insn_01f7f) > 2
        %error "LONG_01F7F"
    %endif
    times 2 - ($ - %%insn_01f7f) db 0
    db 0x8A, 0xE3 ; 01F81 8AE3 | mov ah,bl | encoding preserved
    %%insn_01f83:
    push bx ; 01F83 53
    %if ($ - %%insn_01f83) > 1
        %error "LONG_01F83"
    %endif
    times 1 - ($ - %%insn_01f83) db 0
    %%insn_01f84:
    mov bx,[fs:di] ; 01F84 648B1D
    %if ($ - %%insn_01f84) > 3
        %error "LONG_01F84"
    %endif
    times 3 - ($ - %%insn_01f84) db 0
    %%insn_01f87:
    cmp bl,0xff ; 01F87 80FBFF
    %if ($ - %%insn_01f87) > 3
        %error "LONG_01F87"
    %endif
    times 3 - ($ - %%insn_01f87) db 0
    %%insn_01f8a:
    jz short 0x1f94 ; 01F8A 7408
    %if ($ - %%insn_01f8a) > 2
        %error "LONG_01F8A"
    %endif
    times 2 - ($ - %%insn_01f8a) db 0
    %%insn_01f8c:
    cmp al,0xff ; 01F8C 3CFF
    %if ($ - %%insn_01f8c) > 2
        %error "LONG_01F8C"
    %endif
    times 2 - ($ - %%insn_01f8c) db 0
    %%insn_01f8e:
    jnz short 0x1f92 ; 01F8E 7502
    %if ($ - %%insn_01f8e) > 2
        %error "LONG_01F8E"
    %endif
    times 2 - ($ - %%insn_01f8e) db 0
    db 0x8A, 0xC3 ; 01F90 8AC3 | mov al,bl | encoding preserved
    %%insn_01f92:
    mov [di],al ; 01F92 8805
    %if ($ - %%insn_01f92) > 2
        %error "LONG_01F92"
    %endif
    times 2 - ($ - %%insn_01f92) db 0
    %%insn_01f94:
    cmp bh,0xff ; 01F94 80FFFF
    %if ($ - %%insn_01f94) > 3
        %error "LONG_01F94"
    %endif
    times 3 - ($ - %%insn_01f94) db 0
    %%insn_01f97:
    jz short 0x1fa3 ; 01F97 740A
    %if ($ - %%insn_01f97) > 2
        %error "LONG_01F97"
    %endif
    times 2 - ($ - %%insn_01f97) db 0
    %%insn_01f99:
    cmp ah,0xff ; 01F99 80FCFF
    %if ($ - %%insn_01f99) > 3
        %error "LONG_01F99"
    %endif
    times 3 - ($ - %%insn_01f99) db 0
    %%insn_01f9c:
    jnz short 0x1fa0 ; 01F9C 7502
    %if ($ - %%insn_01f9c) > 2
        %error "LONG_01F9C"
    %endif
    times 2 - ($ - %%insn_01f9c) db 0
    db 0x8A, 0xE7 ; 01F9E 8AE7 | mov ah,bh | encoding preserved
    %%insn_01fa0:
    mov [di+0x1],ah ; 01FA0 886501
    %if ($ - %%insn_01fa0) > 3
        %error "LONG_01FA0"
    %endif
    times 3 - ($ - %%insn_01fa0) db 0
    %%insn_01fa3:
    pop bx ; 01FA3 5B
    %if ($ - %%insn_01fa3) > 1
        %error "LONG_01FA3"
    %endif
    times 1 - ($ - %%insn_01fa3) db 0
    %%insn_01fa4:
    add di,0x140 ; 01FA4 81C74001
    %if ($ - %%insn_01fa4) > 4
        %error "LONG_01FA4"
    %endif
    times 4 - ($ - %%insn_01fa4) db 0
    db 0x8B, 0xC3 ; 01FA8 8BC3 | mov ax,bx | encoding preserved
    %%insn_01faa:
    test dx,0x80 ; 01FAA F7C28000
    %if ($ - %%insn_01faa) > 4
        %error "LONG_01FAA"
    %endif
    times 4 - ($ - %%insn_01faa) db 0
    %%insn_01fae:
    jnz short 0x1fb2 ; 01FAE 7502
    %if ($ - %%insn_01fae) > 2
        %error "LONG_01FAE"
    %endif
    times 2 - ($ - %%insn_01fae) db 0
    db 0x8A, 0xC7 ; 01FB0 8AC7 | mov al,bh | encoding preserved
    %%insn_01fb2:
    test dx,0x20 ; 01FB2 F7C22000
    %if ($ - %%insn_01fb2) > 4
        %error "LONG_01FB2"
    %endif
    times 4 - ($ - %%insn_01fb2) db 0
    %%insn_01fb6:
    jz short 0x1fba ; 01FB6 7402
    %if ($ - %%insn_01fb6) > 2
        %error "LONG_01FB6"
    %endif
    times 2 - ($ - %%insn_01fb6) db 0
    db 0x8A, 0xE3 ; 01FB8 8AE3 | mov ah,bl | encoding preserved
    %%insn_01fba:
    push bx ; 01FBA 53
    %if ($ - %%insn_01fba) > 1
        %error "LONG_01FBA"
    %endif
    times 1 - ($ - %%insn_01fba) db 0
    %%insn_01fbb:
    mov bx,[fs:di] ; 01FBB 648B1D
    %if ($ - %%insn_01fbb) > 3
        %error "LONG_01FBB"
    %endif
    times 3 - ($ - %%insn_01fbb) db 0
    %%insn_01fbe:
    cmp bl,0xff ; 01FBE 80FBFF
    %if ($ - %%insn_01fbe) > 3
        %error "LONG_01FBE"
    %endif
    times 3 - ($ - %%insn_01fbe) db 0
    %%insn_01fc1:
    jz short 0x1fcb ; 01FC1 7408
    %if ($ - %%insn_01fc1) > 2
        %error "LONG_01FC1"
    %endif
    times 2 - ($ - %%insn_01fc1) db 0
    %%insn_01fc3:
    cmp al,0xff ; 01FC3 3CFF
    %if ($ - %%insn_01fc3) > 2
        %error "LONG_01FC3"
    %endif
    times 2 - ($ - %%insn_01fc3) db 0
    %%insn_01fc5:
    jnz short 0x1fc9 ; 01FC5 7502
    %if ($ - %%insn_01fc5) > 2
        %error "LONG_01FC5"
    %endif
    times 2 - ($ - %%insn_01fc5) db 0
    db 0x8A, 0xC3 ; 01FC7 8AC3 | mov al,bl | encoding preserved
    %%insn_01fc9:
    mov [di],al ; 01FC9 8805
    %if ($ - %%insn_01fc9) > 2
        %error "LONG_01FC9"
    %endif
    times 2 - ($ - %%insn_01fc9) db 0
    %%insn_01fcb:
    cmp bh,0xff ; 01FCB 80FFFF
    %if ($ - %%insn_01fcb) > 3
        %error "LONG_01FCB"
    %endif
    times 3 - ($ - %%insn_01fcb) db 0
    %%insn_01fce:
    jz short 0x1fda ; 01FCE 740A
    %if ($ - %%insn_01fce) > 2
        %error "LONG_01FCE"
    %endif
    times 2 - ($ - %%insn_01fce) db 0
    %%insn_01fd0:
    cmp ah,0xff ; 01FD0 80FCFF
    %if ($ - %%insn_01fd0) > 3
        %error "LONG_01FD0"
    %endif
    times 3 - ($ - %%insn_01fd0) db 0
    %%insn_01fd3:
    jnz short 0x1fd7 ; 01FD3 7502
    %if ($ - %%insn_01fd3) > 2
        %error "LONG_01FD3"
    %endif
    times 2 - ($ - %%insn_01fd3) db 0
    db 0x8A, 0xE7 ; 01FD5 8AE7 | mov ah,bh | encoding preserved
    %%insn_01fd7:
    mov [di+0x1],ah ; 01FD7 886501
    %if ($ - %%insn_01fd7) > 3
        %error "LONG_01FD7"
    %endif
    times 3 - ($ - %%insn_01fd7) db 0
    %%insn_01fda:
    pop bx ; 01FDA 5B
    %if ($ - %%insn_01fda) > 1
        %error "LONG_01FDA"
    %endif
    times 1 - ($ - %%insn_01fda) db 0
    %%insn_01fdb:
    mov ds,word [bp-0x2aaa] ; 01FDB 8E9E56D5
    %if ($ - %%insn_01fdb) > 4
        %error "LONG_01FDB"
    %endif
    times 4 - ($ - %%insn_01fdb) db 0
    db 0x8B, 0xF9 ; 01FDF 8BF9 | mov di,cx | encoding preserved
    %%insn_01fe1:
    add di,0x4 ; 01FE1 83C704
    %if ($ - %%insn_01fe1) > 3
        %error "LONG_01FE1"
    %endif
    times 3 - ($ - %%insn_01fe1) db 0
    %%insn_01fe4:
    jmp 0x1f4c ; 01FE4 E965FF
    %if ($ - %%insn_01fe4) > 3
        %error "LONG_01FE4"
    %endif
    times 3 - ($ - %%insn_01fe4) db 0
    %if ($ - %%fragment_start) != 274
        %error "SIZE_01ED5"
    %endif
%endmacro

%macro emit_decode_vdx_delta_frame_part_09 0
    %%fragment_start:
    db 0x3D, 0x60, 0x00 ; 01FE8 3D6000 | cmp ax,0x60 | encoding preserved
    %%insn_01feb:
    jnz short 0x205e ; 01FEB 7571
    %if ($ - %%insn_01feb) > 2
        %error "LONG_01FEB"
    %endif
    times 2 - ($ - %%insn_01feb) db 0
    %%insn_01fed:
    push di ; 01FED 57
    %if ($ - %%insn_01fed) > 1
        %error "LONG_01FED"
    %endif
    times 1 - ($ - %%insn_01fed) db 0
    %%insn_01fee:
    mov ds,word [bp-0x2aa8] ; 01FEE 8E9E58D5
    %if ($ - %%insn_01fee) > 4
        %error "LONG_01FEE"
    %endif
    times 4 - ($ - %%insn_01fee) db 0
    %%insn_01ff2:
    mov di,[bp+di] ; 01FF2 8B3B
    %if ($ - %%insn_01ff2) > 2
        %error "LONG_01FF2"
    %endif
    times 2 - ($ - %%insn_01ff2) db 0
    %%insn_01ff4:
    mov gs,word [bp-0x2aaa] ; 01FF4 8EAE56D5
    %if ($ - %%insn_01ff4) > 4
        %error "LONG_01FF4"
    %endif
    times 4 - ($ - %%insn_01ff4) db 0
    %%insn_01ff8:
    mov al,[gs:si] ; 01FF8 658A04
    %if ($ - %%insn_01ff8) > 3
        %error "LONG_01FF8"
    %endif
    times 3 - ($ - %%insn_01ff8) db 0
    %%insn_01ffb:
    mov ah,[gs:si+0x2] ; 01FFB 658A6402
    %if ($ - %%insn_01ffb) > 4
        %error "LONG_01FFB"
    %endif
    times 4 - ($ - %%insn_01ffb) db 0
    %%insn_01fff:
    push bx ; 01FFF 53
    %if ($ - %%insn_01fff) > 1
        %error "LONG_01FFF"
    %endif
    times 1 - ($ - %%insn_01fff) db 0
    %%insn_02000:
    mov bx,[fs:di] ; 02000 648B1D
    %if ($ - %%insn_02000) > 3
        %error "LONG_02000"
    %endif
    times 3 - ($ - %%insn_02000) db 0
    %%insn_02003:
    cmp bl,0xff ; 02003 80FBFF
    %if ($ - %%insn_02003) > 3
        %error "LONG_02003"
    %endif
    times 3 - ($ - %%insn_02003) db 0
    %%insn_02006:
    jz short 0x2010 ; 02006 7408
    %if ($ - %%insn_02006) > 2
        %error "LONG_02006"
    %endif
    times 2 - ($ - %%insn_02006) db 0
    %%insn_02008:
    cmp al,0xff ; 02008 3CFF
    %if ($ - %%insn_02008) > 2
        %error "LONG_02008"
    %endif
    times 2 - ($ - %%insn_02008) db 0
    %%insn_0200a:
    jnz short 0x200e ; 0200A 7502
    %if ($ - %%insn_0200a) > 2
        %error "LONG_0200A"
    %endif
    times 2 - ($ - %%insn_0200a) db 0
    db 0x8A, 0xC3 ; 0200C 8AC3 | mov al,bl | encoding preserved
    %%insn_0200e:
    mov [di],al ; 0200E 8805
    %if ($ - %%insn_0200e) > 2
        %error "LONG_0200E"
    %endif
    times 2 - ($ - %%insn_0200e) db 0
    %%insn_02010:
    cmp bh,0xff ; 02010 80FFFF
    %if ($ - %%insn_02010) > 3
        %error "LONG_02010"
    %endif
    times 3 - ($ - %%insn_02010) db 0
    %%insn_02013:
    jz short 0x201f ; 02013 740A
    %if ($ - %%insn_02013) > 2
        %error "LONG_02013"
    %endif
    times 2 - ($ - %%insn_02013) db 0
    %%insn_02015:
    cmp ah,0xff ; 02015 80FCFF
    %if ($ - %%insn_02015) > 3
        %error "LONG_02015"
    %endif
    times 3 - ($ - %%insn_02015) db 0
    %%insn_02018:
    jnz short 0x201c ; 02018 7502
    %if ($ - %%insn_02018) > 2
        %error "LONG_02018"
    %endif
    times 2 - ($ - %%insn_02018) db 0
    db 0x8A, 0xE7 ; 0201A 8AE7 | mov ah,bh | encoding preserved
    %%insn_0201c:
    mov [di+0x1],ah ; 0201C 886501
    %if ($ - %%insn_0201c) > 3
        %error "LONG_0201C"
    %endif
    times 3 - ($ - %%insn_0201c) db 0
    %%insn_0201f:
    pop bx ; 0201F 5B
    %if ($ - %%insn_0201f) > 1
        %error "LONG_0201F"
    %endif
    times 1 - ($ - %%insn_0201f) db 0
    %%insn_02020:
    add si,0x8 ; 02020 83C608
    %if ($ - %%insn_02020) > 3
        %error "LONG_02020"
    %endif
    times 3 - ($ - %%insn_02020) db 0
    %%insn_02023:
    add di,0x140 ; 02023 81C74001
    %if ($ - %%insn_02023) > 4
        %error "LONG_02023"
    %endif
    times 4 - ($ - %%insn_02023) db 0
    %%insn_02027:
    mov al,[gs:si] ; 02027 658A04
    %if ($ - %%insn_02027) > 3
        %error "LONG_02027"
    %endif
    times 3 - ($ - %%insn_02027) db 0
    %%insn_0202a:
    mov ah,[gs:si+0x2] ; 0202A 658A6402
    %if ($ - %%insn_0202a) > 4
        %error "LONG_0202A"
    %endif
    times 4 - ($ - %%insn_0202a) db 0
    %%insn_0202e:
    push bx ; 0202E 53
    %if ($ - %%insn_0202e) > 1
        %error "LONG_0202E"
    %endif
    times 1 - ($ - %%insn_0202e) db 0
    %%insn_0202f:
    mov bx,[fs:di] ; 0202F 648B1D
    %if ($ - %%insn_0202f) > 3
        %error "LONG_0202F"
    %endif
    times 3 - ($ - %%insn_0202f) db 0
    %%insn_02032:
    cmp bl,0xff ; 02032 80FBFF
    %if ($ - %%insn_02032) > 3
        %error "LONG_02032"
    %endif
    times 3 - ($ - %%insn_02032) db 0
    %%insn_02035:
    jz short 0x203f ; 02035 7408
    %if ($ - %%insn_02035) > 2
        %error "LONG_02035"
    %endif
    times 2 - ($ - %%insn_02035) db 0
    %%insn_02037:
    cmp al,0xff ; 02037 3CFF
    %if ($ - %%insn_02037) > 2
        %error "LONG_02037"
    %endif
    times 2 - ($ - %%insn_02037) db 0
    %%insn_02039:
    jnz short 0x203d ; 02039 7502
    %if ($ - %%insn_02039) > 2
        %error "LONG_02039"
    %endif
    times 2 - ($ - %%insn_02039) db 0
    db 0x8A, 0xC3 ; 0203B 8AC3 | mov al,bl | encoding preserved
    %%insn_0203d:
    mov [di],al ; 0203D 8805
    %if ($ - %%insn_0203d) > 2
        %error "LONG_0203D"
    %endif
    times 2 - ($ - %%insn_0203d) db 0
    %%insn_0203f:
    cmp bh,0xff ; 0203F 80FFFF
    %if ($ - %%insn_0203f) > 3
        %error "LONG_0203F"
    %endif
    times 3 - ($ - %%insn_0203f) db 0
    %%insn_02042:
    jz short 0x204e ; 02042 740A
    %if ($ - %%insn_02042) > 2
        %error "LONG_02042"
    %endif
    times 2 - ($ - %%insn_02042) db 0
    %%insn_02044:
    cmp ah,0xff ; 02044 80FCFF
    %if ($ - %%insn_02044) > 3
        %error "LONG_02044"
    %endif
    times 3 - ($ - %%insn_02044) db 0
    %%insn_02047:
    jnz short 0x204b ; 02047 7502
    %if ($ - %%insn_02047) > 2
        %error "LONG_02047"
    %endif
    times 2 - ($ - %%insn_02047) db 0
    db 0x8A, 0xE7 ; 02049 8AE7 | mov ah,bh | encoding preserved
    %%insn_0204b:
    mov [di+0x1],ah ; 0204B 886501
    %if ($ - %%insn_0204b) > 3
        %error "LONG_0204B"
    %endif
    times 3 - ($ - %%insn_0204b) db 0
    %%insn_0204e:
    pop bx ; 0204E 5B
    %if ($ - %%insn_0204e) > 1
        %error "LONG_0204E"
    %endif
    times 1 - ($ - %%insn_0204e) db 0
    %%insn_0204f:
    add si,0x8 ; 0204F 83C608
    %if ($ - %%insn_0204f) > 3
        %error "LONG_0204F"
    %endif
    times 3 - ($ - %%insn_0204f) db 0
    %%insn_02052:
    pop di ; 02052 5F
    %if ($ - %%insn_02052) > 1
        %error "LONG_02052"
    %endif
    times 1 - ($ - %%insn_02052) db 0
    %%insn_02053:
    add di,0x4 ; 02053 83C704
    %if ($ - %%insn_02053) > 3
        %error "LONG_02053"
    %endif
    times 3 - ($ - %%insn_02053) db 0
    %%insn_02056:
    mov ds,word [bp-0x2aaa] ; 02056 8E9E56D5
    %if ($ - %%insn_02056) > 4
        %error "LONG_02056"
    %endif
    times 4 - ($ - %%insn_02056) db 0
    %%insn_0205a:
    jmp 0x1f4c ; 0205A E9EFFE
    %if ($ - %%insn_0205a) > 3
        %error "LONG_0205A"
    %endif
    times 3 - ($ - %%insn_0205a) db 0
    %if ($ - %%fragment_start) != 117
        %error "SIZE_01FE8"
    %endif
%endmacro

%macro emit_decode_vdx_delta_frame_part_10 0
    %%fragment_start:
    db 0x3D, 0x61, 0x00 ; 0205E 3D6100 | cmp ax,0x61 | encoding preserved
    %%insn_02061:
    jnz short 0x206b ; 02061 7508
    %if ($ - %%insn_02061) > 2
        %error "LONG_02061"
    %endif
    times 2 - ($ - %%insn_02061) db 0
    %%insn_02063:
    add word [bp-0x309e],0x4 ; 02063 838662CF04
    %if ($ - %%insn_02063) > 5
        %error "LONG_02063"
    %endif
    times 5 - ($ - %%insn_02063) db 0
    %%insn_02068:
    jmp 0x1f3a ; 02068 E9CFFE
    %if ($ - %%insn_02068) > 3
        %error "LONG_02068"
    %endif
    times 3 - ($ - %%insn_02068) db 0
    db 0x3D, 0x6C, 0x00 ; 0206B 3D6C00 | cmp ax,0x6c | encoding preserved
    %%insn_0206e:
    jnc short 0x207c ; 0206E 730C
    %if ($ - %%insn_0206e) > 2
        %error "LONG_0206E"
    %endif
    times 2 - ($ - %%insn_0206e) db 0
    db 0x2D, 0x62, 0x00 ; 02070 2D6200 | sub ax,0x62 | encoding preserved
    %%insn_02073:
    shl ax,byte 0x2 ; 02073 C1E002
    %if ($ - %%insn_02073) > 3
        %error "LONG_02073"
    %endif
    times 3 - ($ - %%insn_02073) db 0
    db 0x03, 0xF8 ; 02076 03F8 | add di,ax | encoding preserved
    %%insn_02078:
    jmp 0x1f4c ; 02078 E9D1FE
    %if ($ - %%insn_02078) > 3
        %error "LONG_02078"
    %endif
    times 3 - ($ - %%insn_02078) db 0
    %if ($ - %%fragment_start) != 29
        %error "SIZE_0205E"
    %endif
%endmacro

%macro emit_decode_vdx_delta_frame_part_11 0
    %%fragment_start:
    db 0x3D, 0x76, 0x00 ; 0207C 3D7600 | cmp ax,0x76 | encoding preserved
    %%insn_0207f:
    jnc 0x210c ; 0207F 0F838900
    %if ($ - %%insn_0207f) > 4
        %error "LONG_0207F"
    %endif
    times 4 - ($ - %%insn_0207f) db 0
    db 0x2D, 0x6C, 0x00 ; 02083 2D6C00 | sub ax,0x6c | encoding preserved
    db 0x8B, 0xC8 ; 02086 8BC8 | mov cx,ax | encoding preserved
    %%insn_02088:
    lodsb ; 02088 AC
    %if ($ - %%insn_02088) > 1
        %error "LONG_02088"
    %endif
    times 1 - ($ - %%insn_02088) db 0
    %%insn_02089:
    push si ; 02089 56
    %if ($ - %%insn_02089) > 1
        %error "LONG_02089"
    %endif
    times 1 - ($ - %%insn_02089) db 0
    %%insn_0208a:
    inc cx ; 0208A 41
    %if ($ - %%insn_0208a) > 1
        %error "LONG_0208A"
    %endif
    times 1 - ($ - %%insn_0208a) db 0
    %%insn_0208b:
    mov ds,word [bp-0x2aa8] ; 0208B 8E9E58D5
    %if ($ - %%insn_0208b) > 4
        %error "LONG_0208B"
    %endif
    times 4 - ($ - %%insn_0208b) db 0
    %%insn_0208f:
    mov si,[bp+di] ; 0208F 8B33
    %if ($ - %%insn_0208f) > 2
        %error "LONG_0208F"
    %endif
    times 2 - ($ - %%insn_0208f) db 0
    db 0x8A, 0xD1 ; 02091 8AD1 | mov dl,cl | encoding preserved
    db 0x8A, 0xE0 ; 02093 8AE0 | mov ah,al | encoding preserved
    db 0x8B, 0xD9 ; 02095 8BD9 | mov bx,cx | encoding preserved
    %%insn_02097:
    shl bx,byte 0x2 ; 02097 C1E302
    %if ($ - %%insn_02097) > 3
        %error "LONG_02097"
    %endif
    times 3 - ($ - %%insn_02097) db 0
    db 0x03, 0xFB ; 0209A 03FB | add di,bx | encoding preserved
    db 0x32, 0xF6 ; 0209C 32F6 | xor dh,dh | encoding preserved
    db 0x8B, 0xCA ; 0209E 8BCA | mov cx,dx | encoding preserved
    %%insn_020a0:
    shl dx,1 ; 020A0 D1E2
    %if ($ - %%insn_020a0) > 2
        %error "LONG_020A0"
    %endif
    times 2 - ($ - %%insn_020a0) db 0
    %%insn_020a2:
    mov bx,0x140 ; 020A2 BB4001
    %if ($ - %%insn_020a2) > 3
        %error "LONG_020A2"
    %endif
    times 3 - ($ - %%insn_020a2) db 0
    db 0x2B, 0xDA ; 020A5 2BDA | sub bx,dx | encoding preserved
    db 0x8B, 0xD3 ; 020A7 8BD3 | mov dx,bx | encoding preserved
    db 0x8B, 0xD9 ; 020A9 8BD9 | mov bx,cx | encoding preserved
    %%insn_020ab:
    xchg di,si ; 020AB 87FE
    %if ($ - %%insn_020ab) > 2
        %error "LONG_020AB"
    %endif
    times 2 - ($ - %%insn_020ab) db 0
    %%insn_020ad:
    push ax ; 020AD 50
    %if ($ - %%insn_020ad) > 1
        %error "LONG_020AD"
    %endif
    times 1 - ($ - %%insn_020ad) db 0
    %%insn_020ae:
    push bx ; 020AE 53
    %if ($ - %%insn_020ae) > 1
        %error "LONG_020AE"
    %endif
    times 1 - ($ - %%insn_020ae) db 0
    %%insn_020af:
    mov bx,[fs:di] ; 020AF 648B1D
    %if ($ - %%insn_020af) > 3
        %error "LONG_020AF"
    %endif
    times 3 - ($ - %%insn_020af) db 0
    %%insn_020b2:
    cmp bl,0xff ; 020B2 80FBFF
    %if ($ - %%insn_020b2) > 3
        %error "LONG_020B2"
    %endif
    times 3 - ($ - %%insn_020b2) db 0
    %%insn_020b5:
    jz short 0x20bf ; 020B5 7408
    %if ($ - %%insn_020b5) > 2
        %error "LONG_020B5"
    %endif
    times 2 - ($ - %%insn_020b5) db 0
    %%insn_020b7:
    cmp al,0xff ; 020B7 3CFF
    %if ($ - %%insn_020b7) > 2
        %error "LONG_020B7"
    %endif
    times 2 - ($ - %%insn_020b7) db 0
    %%insn_020b9:
    jnz short 0x20bd ; 020B9 7502
    %if ($ - %%insn_020b9) > 2
        %error "LONG_020B9"
    %endif
    times 2 - ($ - %%insn_020b9) db 0
    db 0x8A, 0xC3 ; 020BB 8AC3 | mov al,bl | encoding preserved
    %%insn_020bd:
    mov [di],al ; 020BD 8805
    %if ($ - %%insn_020bd) > 2
        %error "LONG_020BD"
    %endif
    times 2 - ($ - %%insn_020bd) db 0
    %%insn_020bf:
    cmp bh,0xff ; 020BF 80FFFF
    %if ($ - %%insn_020bf) > 3
        %error "LONG_020BF"
    %endif
    times 3 - ($ - %%insn_020bf) db 0
    %%insn_020c2:
    jz short 0x20ce ; 020C2 740A
    %if ($ - %%insn_020c2) > 2
        %error "LONG_020C2"
    %endif
    times 2 - ($ - %%insn_020c2) db 0
    %%insn_020c4:
    cmp ah,0xff ; 020C4 80FCFF
    %if ($ - %%insn_020c4) > 3
        %error "LONG_020C4"
    %endif
    times 3 - ($ - %%insn_020c4) db 0
    %%insn_020c7:
    jnz short 0x20cb ; 020C7 7502
    %if ($ - %%insn_020c7) > 2
        %error "LONG_020C7"
    %endif
    times 2 - ($ - %%insn_020c7) db 0
    db 0x8A, 0xE7 ; 020C9 8AE7 | mov ah,bh | encoding preserved
    %%insn_020cb:
    mov [di+0x1],ah ; 020CB 886501
    %if ($ - %%insn_020cb) > 3
        %error "LONG_020CB"
    %endif
    times 3 - ($ - %%insn_020cb) db 0
    %%insn_020ce:
    pop bx ; 020CE 5B
    %if ($ - %%insn_020ce) > 1
        %error "LONG_020CE"
    %endif
    times 1 - ($ - %%insn_020ce) db 0
    %%insn_020cf:
    pop ax ; 020CF 58
    %if ($ - %%insn_020cf) > 1
        %error "LONG_020CF"
    %endif
    times 1 - ($ - %%insn_020cf) db 0
    %%insn_020d0:
    add di,0x2 ; 020D0 83C702
    %if ($ - %%insn_020d0) > 3
        %error "LONG_020D0"
    %endif
    times 3 - ($ - %%insn_020d0) db 0
    %%insn_020d3:
    dec cx ; 020D3 49
    %if ($ - %%insn_020d3) > 1
        %error "LONG_020D3"
    %endif
    times 1 - ($ - %%insn_020d3) db 0
    %%insn_020d4:
    jnz short 0x20ad ; 020D4 75D7
    %if ($ - %%insn_020d4) > 2
        %error "LONG_020D4"
    %endif
    times 2 - ($ - %%insn_020d4) db 0
    db 0x03, 0xFA ; 020D6 03FA | add di,dx | encoding preserved
    %%insn_020d8:
    push ax ; 020D8 50
    %if ($ - %%insn_020d8) > 1
        %error "LONG_020D8"
    %endif
    times 1 - ($ - %%insn_020d8) db 0
    %%insn_020d9:
    push bx ; 020D9 53
    %if ($ - %%insn_020d9) > 1
        %error "LONG_020D9"
    %endif
    times 1 - ($ - %%insn_020d9) db 0
    %%insn_020da:
    mov bx,[fs:di] ; 020DA 648B1D
    %if ($ - %%insn_020da) > 3
        %error "LONG_020DA"
    %endif
    times 3 - ($ - %%insn_020da) db 0
    %%insn_020dd:
    cmp bl,0xff ; 020DD 80FBFF
    %if ($ - %%insn_020dd) > 3
        %error "LONG_020DD"
    %endif
    times 3 - ($ - %%insn_020dd) db 0
    %%insn_020e0:
    jz short 0x20ea ; 020E0 7408
    %if ($ - %%insn_020e0) > 2
        %error "LONG_020E0"
    %endif
    times 2 - ($ - %%insn_020e0) db 0
    %%insn_020e2:
    cmp al,0xff ; 020E2 3CFF
    %if ($ - %%insn_020e2) > 2
        %error "LONG_020E2"
    %endif
    times 2 - ($ - %%insn_020e2) db 0
    %%insn_020e4:
    jnz short 0x20e8 ; 020E4 7502
    %if ($ - %%insn_020e4) > 2
        %error "LONG_020E4"
    %endif
    times 2 - ($ - %%insn_020e4) db 0
    db 0x8A, 0xC3 ; 020E6 8AC3 | mov al,bl | encoding preserved
    %%insn_020e8:
    mov [di],al ; 020E8 8805
    %if ($ - %%insn_020e8) > 2
        %error "LONG_020E8"
    %endif
    times 2 - ($ - %%insn_020e8) db 0
    %%insn_020ea:
    cmp bh,0xff ; 020EA 80FFFF
    %if ($ - %%insn_020ea) > 3
        %error "LONG_020EA"
    %endif
    times 3 - ($ - %%insn_020ea) db 0
    %%insn_020ed:
    jz short 0x20f9 ; 020ED 740A
    %if ($ - %%insn_020ed) > 2
        %error "LONG_020ED"
    %endif
    times 2 - ($ - %%insn_020ed) db 0
    %%insn_020ef:
    cmp ah,0xff ; 020EF 80FCFF
    %if ($ - %%insn_020ef) > 3
        %error "LONG_020EF"
    %endif
    times 3 - ($ - %%insn_020ef) db 0
    %%insn_020f2:
    jnz short 0x20f6 ; 020F2 7502
    %if ($ - %%insn_020f2) > 2
        %error "LONG_020F2"
    %endif
    times 2 - ($ - %%insn_020f2) db 0
    db 0x8A, 0xE7 ; 020F4 8AE7 | mov ah,bh | encoding preserved
    %%insn_020f6:
    mov [di+0x1],ah ; 020F6 886501
    %if ($ - %%insn_020f6) > 3
        %error "LONG_020F6"
    %endif
    times 3 - ($ - %%insn_020f6) db 0
    %%insn_020f9:
    pop bx ; 020F9 5B
    %if ($ - %%insn_020f9) > 1
        %error "LONG_020F9"
    %endif
    times 1 - ($ - %%insn_020f9) db 0
    %%insn_020fa:
    pop ax ; 020FA 58
    %if ($ - %%insn_020fa) > 1
        %error "LONG_020FA"
    %endif
    times 1 - ($ - %%insn_020fa) db 0
    %%insn_020fb:
    add di,0x2 ; 020FB 83C702
    %if ($ - %%insn_020fb) > 3
        %error "LONG_020FB"
    %endif
    times 3 - ($ - %%insn_020fb) db 0
    %%insn_020fe:
    dec bx ; 020FE 4B
    %if ($ - %%insn_020fe) > 1
        %error "LONG_020FE"
    %endif
    times 1 - ($ - %%insn_020fe) db 0
    %%insn_020ff:
    jnz short 0x20d8 ; 020FF 75D7
    %if ($ - %%insn_020ff) > 2
        %error "LONG_020FF"
    %endif
    times 2 - ($ - %%insn_020ff) db 0
    db 0x8B, 0xFE ; 02101 8BFE | mov di,si | encoding preserved
    %%insn_02103:
    mov ds,word [bp-0x2aaa] ; 02103 8E9E56D5
    %if ($ - %%insn_02103) > 4
        %error "LONG_02103"
    %endif
    times 4 - ($ - %%insn_02103) db 0
    %%insn_02107:
    pop si ; 02107 5E
    %if ($ - %%insn_02107) > 1
        %error "LONG_02107"
    %endif
    times 1 - ($ - %%insn_02107) db 0
    %%insn_02108:
    jmp 0x1f4c ; 02108 E941FE
    %if ($ - %%insn_02108) > 3
        %error "LONG_02108"
    %endif
    times 3 - ($ - %%insn_02108) db 0
    %if ($ - %%fragment_start) != 143
        %error "SIZE_0207C"
    %endif
%endmacro

%macro emit_decode_vdx_delta_frame_part_12 0
    %%fragment_start:
    db 0x2D, 0x75, 0x00 ; 0210C 2D7500 | sub ax,0x75 | encoding preserved
    db 0x8B, 0xC8 ; 0210F 8BC8 | mov cx,ax | encoding preserved
    %%insn_02111:
    nop ; 02111 90
    %if ($ - %%insn_02111) > 1
        %error "LONG_02111"
    %endif
    times 1 - ($ - %%insn_02111) db 0
    %%insn_02112:
    lodsb ; 02112 AC
    %if ($ - %%insn_02112) > 1
        %error "LONG_02112"
    %endif
    times 1 - ($ - %%insn_02112) db 0
    %%insn_02113:
    push di ; 02113 57
    %if ($ - %%insn_02113) > 1
        %error "LONG_02113"
    %endif
    times 1 - ($ - %%insn_02113) db 0
    db 0x8A, 0xE0 ; 02114 8AE0 | mov ah,al | encoding preserved
    db 0x8B, 0xD8 ; 02116 8BD8 | mov bx,ax | encoding preserved
    %%insn_02118:
    mov di,[bp+di] ; 02118 8B3B
    %if ($ - %%insn_02118) > 2
        %error "LONG_02118"
    %endif
    times 2 - ($ - %%insn_02118) db 0
    %%insn_0211a:
    mov ds,word [bp-0x2aa8] ; 0211A 8E9E58D5
    %if ($ - %%insn_0211a) > 4
        %error "LONG_0211A"
    %endif
    times 4 - ($ - %%insn_0211a) db 0
    db 0x8B, 0xC3 ; 0211E 8BC3 | mov ax,bx | encoding preserved
    %%insn_02120:
    push bx ; 02120 53
    %if ($ - %%insn_02120) > 1
        %error "LONG_02120"
    %endif
    times 1 - ($ - %%insn_02120) db 0
    %%insn_02121:
    mov bx,[fs:di] ; 02121 648B1D
    %if ($ - %%insn_02121) > 3
        %error "LONG_02121"
    %endif
    times 3 - ($ - %%insn_02121) db 0
    %%insn_02124:
    cmp bl,0xff ; 02124 80FBFF
    %if ($ - %%insn_02124) > 3
        %error "LONG_02124"
    %endif
    times 3 - ($ - %%insn_02124) db 0
    %%insn_02127:
    jz short 0x2131 ; 02127 7408
    %if ($ - %%insn_02127) > 2
        %error "LONG_02127"
    %endif
    times 2 - ($ - %%insn_02127) db 0
    %%insn_02129:
    cmp al,0xff ; 02129 3CFF
    %if ($ - %%insn_02129) > 2
        %error "LONG_02129"
    %endif
    times 2 - ($ - %%insn_02129) db 0
    %%insn_0212b:
    jnz short 0x212f ; 0212B 7502
    %if ($ - %%insn_0212b) > 2
        %error "LONG_0212B"
    %endif
    times 2 - ($ - %%insn_0212b) db 0
    db 0x8A, 0xC3 ; 0212D 8AC3 | mov al,bl | encoding preserved
    %%insn_0212f:
    mov [di],al ; 0212F 8805
    %if ($ - %%insn_0212f) > 2
        %error "LONG_0212F"
    %endif
    times 2 - ($ - %%insn_0212f) db 0
    %%insn_02131:
    cmp bh,0xff ; 02131 80FFFF
    %if ($ - %%insn_02131) > 3
        %error "LONG_02131"
    %endif
    times 3 - ($ - %%insn_02131) db 0
    %%insn_02134:
    jz short 0x2140 ; 02134 740A
    %if ($ - %%insn_02134) > 2
        %error "LONG_02134"
    %endif
    times 2 - ($ - %%insn_02134) db 0
    %%insn_02136:
    cmp ah,0xff ; 02136 80FCFF
    %if ($ - %%insn_02136) > 3
        %error "LONG_02136"
    %endif
    times 3 - ($ - %%insn_02136) db 0
    %%insn_02139:
    jnz short 0x213d ; 02139 7502
    %if ($ - %%insn_02139) > 2
        %error "LONG_02139"
    %endif
    times 2 - ($ - %%insn_02139) db 0
    db 0x8A, 0xE7 ; 0213B 8AE7 | mov ah,bh | encoding preserved
    %%insn_0213d:
    mov [di+0x1],ah ; 0213D 886501
    %if ($ - %%insn_0213d) > 3
        %error "LONG_0213D"
    %endif
    times 3 - ($ - %%insn_0213d) db 0
    %%insn_02140:
    pop bx ; 02140 5B
    %if ($ - %%insn_02140) > 1
        %error "LONG_02140"
    %endif
    times 1 - ($ - %%insn_02140) db 0
    db 0x8B, 0xC3 ; 02141 8BC3 | mov ax,bx | encoding preserved
    %%insn_02143:
    add di,0x140 ; 02143 81C74001
    %if ($ - %%insn_02143) > 4
        %error "LONG_02143"
    %endif
    times 4 - ($ - %%insn_02143) db 0
    %%insn_02147:
    push bx ; 02147 53
    %if ($ - %%insn_02147) > 1
        %error "LONG_02147"
    %endif
    times 1 - ($ - %%insn_02147) db 0
    %%insn_02148:
    mov bx,[fs:di] ; 02148 648B1D
    %if ($ - %%insn_02148) > 3
        %error "LONG_02148"
    %endif
    times 3 - ($ - %%insn_02148) db 0
    %%insn_0214b:
    cmp bl,0xff ; 0214B 80FBFF
    %if ($ - %%insn_0214b) > 3
        %error "LONG_0214B"
    %endif
    times 3 - ($ - %%insn_0214b) db 0
    %%insn_0214e:
    jz short 0x2158 ; 0214E 7408
    %if ($ - %%insn_0214e) > 2
        %error "LONG_0214E"
    %endif
    times 2 - ($ - %%insn_0214e) db 0
    %%insn_02150:
    cmp al,0xff ; 02150 3CFF
    %if ($ - %%insn_02150) > 2
        %error "LONG_02150"
    %endif
    times 2 - ($ - %%insn_02150) db 0
    %%insn_02152:
    jnz short 0x2156 ; 02152 7502
    %if ($ - %%insn_02152) > 2
        %error "LONG_02152"
    %endif
    times 2 - ($ - %%insn_02152) db 0
    db 0x8A, 0xC3 ; 02154 8AC3 | mov al,bl | encoding preserved
    %%insn_02156:
    mov [di],al ; 02156 8805
    %if ($ - %%insn_02156) > 2
        %error "LONG_02156"
    %endif
    times 2 - ($ - %%insn_02156) db 0
    %%insn_02158:
    cmp bh,0xff ; 02158 80FFFF
    %if ($ - %%insn_02158) > 3
        %error "LONG_02158"
    %endif
    times 3 - ($ - %%insn_02158) db 0
    %%insn_0215b:
    jz short 0x2167 ; 0215B 740A
    %if ($ - %%insn_0215b) > 2
        %error "LONG_0215B"
    %endif
    times 2 - ($ - %%insn_0215b) db 0
    %%insn_0215d:
    cmp ah,0xff ; 0215D 80FCFF
    %if ($ - %%insn_0215d) > 3
        %error "LONG_0215D"
    %endif
    times 3 - ($ - %%insn_0215d) db 0
    %%insn_02160:
    jnz short 0x2164 ; 02160 7502
    %if ($ - %%insn_02160) > 2
        %error "LONG_02160"
    %endif
    times 2 - ($ - %%insn_02160) db 0
    db 0x8A, 0xE7 ; 02162 8AE7 | mov ah,bh | encoding preserved
    %%insn_02164:
    mov [di+0x1],ah ; 02164 886501
    %if ($ - %%insn_02164) > 3
        %error "LONG_02164"
    %endif
    times 3 - ($ - %%insn_02164) db 0
    %%insn_02167:
    pop bx ; 02167 5B
    %if ($ - %%insn_02167) > 1
        %error "LONG_02167"
    %endif
    times 1 - ($ - %%insn_02167) db 0
    %%insn_02168:
    pop di ; 02168 5F
    %if ($ - %%insn_02168) > 1
        %error "LONG_02168"
    %endif
    times 1 - ($ - %%insn_02168) db 0
    %%insn_02169:
    add di,0x4 ; 02169 83C704
    %if ($ - %%insn_02169) > 3
        %error "LONG_02169"
    %endif
    times 3 - ($ - %%insn_02169) db 0
    %%insn_0216c:
    mov ds,word [bp-0x2aaa] ; 0216C 8E9E56D5
    %if ($ - %%insn_0216c) > 4
        %error "LONG_0216C"
    %endif
    times 4 - ($ - %%insn_0216c) db 0
    %%insn_02170:
    loop short 0x2112 ; 02170 E2A0
    %if ($ - %%insn_02170) > 2
        %error "LONG_02170"
    %endif
    times 2 - ($ - %%insn_02170) db 0
    %%insn_02172:
    jmp 0x1f4c ; 02172 E9D7FD
    %if ($ - %%insn_02172) > 3
        %error "LONG_02172"
    %endif
    times 3 - ($ - %%insn_02172) db 0
    %if ($ - %%fragment_start) != 105
        %error "SIZE_0210C"
    %endif
%endmacro

%macro emit_decode_vdx_delta_frame_part_13 0
    %%fragment_start:
    db 0x8A, 0xD0 ; 02178 8AD0 | mov dl,al | encoding preserved
    %%insn_0217a:
    lodsb ; 0217A AC
    %if ($ - %%insn_0217a) > 1
        %error "LONG_0217A"
    %endif
    times 1 - ($ - %%insn_0217a) db 0
    db 0x8A, 0xF0 ; 0217B 8AF0 | mov dh,al | encoding preserved
    %%insn_0217d:
    jmp 0x1f66 ; 0217D E9E6FD
    %if ($ - %%insn_0217d) > 3
        %error "LONG_0217D"
    %endif
    times 3 - ($ - %%insn_0217d) db 0
    %%insn_02180:
    ret ; 02180 C3
    %if ($ - %%insn_02180) > 1
        %error "LONG_02180"
    %endif
    times 1 - ($ - %%insn_02180) db 0
    %if ($ - %%fragment_start) != 9
        %error "SIZE_02178"
    %endif
%endmacro

%macro emit_decode_vdx_delta_frame_part_14 0
    %%fragment_start:
    %%insn_02182:
    cmp byte [bp-0x2606],0x2 ; 02182 80BEFAD902
    %if ($ - %%insn_02182) > 5
        %error "LONG_02182"
    %endif
    times 5 - ($ - %%insn_02182) db 0
    %%insn_02187:
    jnz short 0x218c ; 02187 7503
    %if ($ - %%insn_02187) > 2
        %error "LONG_02187"
    %endif
    times 2 - ($ - %%insn_02187) db 0
    %%insn_02189:
    jmp 0x1ede ; 02189 E952FD
    %if ($ - %%insn_02189) > 3
        %error "LONG_02189"
    %endif
    times 3 - ($ - %%insn_02189) db 0
    db 0x33, 0xF6 ; 0218C 33F6 | xor si,si | encoding preserved
    %%insn_0218e:
    lodsw ; 0218E AD
    %if ($ - %%insn_0218e) > 1
        %error "LONG_0218E"
    %endif
    times 1 - ($ - %%insn_0218e) db 0
    db 0x23, 0xC0 ; 0218F 23C0 | and ax,ax | encoding preserved
    %%insn_02191:
    jz short 0x219b ; 02191 7408
    %if ($ - %%insn_02191) > 2
        %error "LONG_02191"
    %endif
    times 2 - ($ - %%insn_02191) db 0
    %%insn_02193:
    push ax ; 02193 50
    %if ($ - %%insn_02193) > 1
        %error "LONG_02193"
    %endif
    times 1 - ($ - %%insn_02193) db 0
    %%insn_02194:
    call 0x40d ; 02194 E876E2
    %if ($ - %%insn_02194) > 3
        %error "LONG_02194"
    %endif
    times 3 - ($ - %%insn_02194) db 0
    %%insn_02197:
    pop si ; 02197 5E
    %if ($ - %%insn_02197) > 1
        %error "LONG_02197"
    %endif
    times 1 - ($ - %%insn_02197) db 0
    %%insn_02198:
    add si,0x2 ; 02198 83C602
    %if ($ - %%insn_02198) > 3
        %error "LONG_02198"
    %endif
    times 3 - ($ - %%insn_02198) db 0
    %%insn_0219b:
    mov word [bp-0x309e],0xd28e ; 0219B C78662CF8ED2
    %if ($ - %%insn_0219b) > 6
        %error "LONG_0219B"
    %endif
    times 6 - ($ - %%insn_0219b) db 0
    %%insn_021a1:
    nop ; 021A1 90
    %if ($ - %%insn_021a1) > 1
        %error "LONG_021A1"
    %endif
    times 1 - ($ - %%insn_021a1) db 0
    %%insn_021a2:
    mov bx,[bp-0x309e] ; 021A2 8B9E62CF
    %if ($ - %%insn_021a2) > 4
        %error "LONG_021A2"
    %endif
    times 4 - ($ - %%insn_021a2) db 0
    %%insn_021a6:
    mov di,[ss:bx] ; 021A6 368B3F
    %if ($ - %%insn_021a6) > 3
        %error "LONG_021A6"
    %endif
    times 3 - ($ - %%insn_021a6) db 0
    %%insn_021a9:
    cmp di,0xffffffffffffffff ; 021A9 83FFFF
    %if ($ - %%insn_021a9) > 3
        %error "LONG_021A9"
    %endif
    times 3 - ($ - %%insn_021a9) db 0
    %%insn_021ac:
    jnz short 0x21b1 ; 021AC 7503
    %if ($ - %%insn_021ac) > 2
        %error "LONG_021AC"
    %endif
    times 2 - ($ - %%insn_021ac) db 0
    %%insn_021ae:
    jmp 0x230e ; 021AE E95D01
    %if ($ - %%insn_021ae) > 3
        %error "LONG_021AE"
    %endif
    times 3 - ($ - %%insn_021ae) db 0
    %%insn_021b1:
    mov ax,[bp+di+0x2] ; 021B1 8B4302
    %if ($ - %%insn_021b1) > 3
        %error "LONG_021B1"
    %endif
    times 3 - ($ - %%insn_021b1) db 0
    db 0x32, 0xE4 ; 021B4 32E4 | xor ah,ah | encoding preserved
    %%insn_021b6:
    lodsb ; 021B6 AC
    %if ($ - %%insn_021b6) > 1
        %error "LONG_021B6"
    %endif
    times 1 - ($ - %%insn_021b6) db 0
    db 0x22, 0xC0 ; 021B7 22C0 | and al,al | encoding preserved
    %%insn_021b9:
    js 0x2306 ; 021B9 0F884901
    %if ($ - %%insn_021b9) > 4
        %error "LONG_021B9"
    %endif
    times 4 - ($ - %%insn_021b9) db 0
    db 0x3D, 0x60, 0x00 ; 021BD 3D6000 | cmp ax,0x60 | encoding preserved
    %%insn_021c0:
    jnc 0x2260 ; 021C0 0F839C00
    %if ($ - %%insn_021c0) > 4
        %error "LONG_021C0"
    %endif
    times 4 - ($ - %%insn_021c0) db 0
    %%insn_021c4:
    mov bx,0xd48e ; 021C4 BB8ED4
    %if ($ - %%insn_021c4) > 3
        %error "LONG_021C4"
    %endif
    times 3 - ($ - %%insn_021c4) db 0
    %%insn_021c7:
    shl ax,1 ; 021C7 D1E0
    %if ($ - %%insn_021c7) > 2
        %error "LONG_021C7"
    %endif
    times 2 - ($ - %%insn_021c7) db 0
    db 0x03, 0xD8 ; 021C9 03D8 | add bx,ax | encoding preserved
    %%insn_021cb:
    mov dx,[ss:bx] ; 021CB 368B17
    %if ($ - %%insn_021cb) > 3
        %error "LONG_021CB"
    %endif
    times 3 - ($ - %%insn_021cb) db 0
    %%insn_021ce:
    lodsw ; 021CE AD
    %if ($ - %%insn_021ce) > 1
        %error "LONG_021CE"
    %endif
    times 1 - ($ - %%insn_021ce) db 0
    db 0x8B, 0xCF ; 021CF 8BCF | mov cx,di | encoding preserved
    db 0x8B, 0xDE ; 021D1 8BDE | mov bx,si | encoding preserved
    %%insn_021d3:
    mov di,[bp+di] ; 021D3 8B3B
    %if ($ - %%insn_021d3) > 2
        %error "LONG_021D3"
    %endif
    times 2 - ($ - %%insn_021d3) db 0
    %%insn_021d5:
    mov [cs:0x221a],ah ; 021D5 2E88261A22
    %if ($ - %%insn_021d5) > 5
        %error "LONG_021D5"
    %endif
    times 5 - ($ - %%insn_021d5) db 0
    %%insn_021da:
    mov [cs:0x2219],al ; 021DA 2EA21922
    %if ($ - %%insn_021da) > 4
        %error "LONG_021DA"
    %endif
    times 4 - ($ - %%insn_021da) db 0
    %%insn_021de:
    shl dx,byte 0x2 ; 021DE C1E202
    %if ($ - %%insn_021de) > 3
        %error "LONG_021DE"
    %endif
    times 3 - ($ - %%insn_021de) db 0
    db 0x1B, 0xF6 ; 021E1 1BF6 | sbb si,si | encoding preserved
    %%insn_021e3:
    shl dx,byte 0x2 ; 021E3 C1E202
    %if ($ - %%insn_021e3) > 3
        %error "LONG_021E3"
    %endif
    times 3 - ($ - %%insn_021e3) db 0
    %%insn_021e6:
    mov al,[cs:si+0x221a] ; 021E6 2E8A841A22
    %if ($ - %%insn_021e6) > 5
        %error "LONG_021E6"
    %endif
    times 5 - ($ - %%insn_021e6) db 0
    db 0x1B, 0xF6 ; 021EB 1BF6 | sbb si,si | encoding preserved
    %%insn_021ed:
    shl dx,byte 0x6 ; 021ED C1E206
    %if ($ - %%insn_021ed) > 3
        %error "LONG_021ED"
    %endif
    times 3 - ($ - %%insn_021ed) db 0
    %%insn_021f0:
    mov ah,[cs:si+0x221a] ; 021F0 2E8AA41A22
    %if ($ - %%insn_021f0) > 5
        %error "LONG_021F0"
    %endif
    times 5 - ($ - %%insn_021f0) db 0
    %%insn_021f5:
    mov [es:di],ax ; 021F5 268905
    %if ($ - %%insn_021f5) > 3
        %error "LONG_021F5"
    %endif
    times 3 - ($ - %%insn_021f5) db 0
    db 0x1B, 0xF6 ; 021F8 1BF6 | sbb si,si | encoding preserved
    %%insn_021fa:
    add di,0x140 ; 021FA 81C74001
    %if ($ - %%insn_021fa) > 4
        %error "LONG_021FA"
    %endif
    times 4 - ($ - %%insn_021fa) db 0
    %%insn_021fe:
    shl dx,byte 0x2 ; 021FE C1E202
    %if ($ - %%insn_021fe) > 3
        %error "LONG_021FE"
    %endif
    times 3 - ($ - %%insn_021fe) db 0
    %%insn_02201:
    mov al,[cs:si+0x221a] ; 02201 2E8A841A22
    %if ($ - %%insn_02201) > 5
        %error "LONG_02201"
    %endif
    times 5 - ($ - %%insn_02201) db 0
    db 0x1B, 0xF6 ; 02206 1BF6 | sbb si,si | encoding preserved
    %%insn_02208:
    mov ah,[cs:si+0x221a] ; 02208 2E8AA41A22
    %if ($ - %%insn_02208) > 5
        %error "LONG_02208"
    %endif
    times 5 - ($ - %%insn_02208) db 0
    %%insn_0220d:
    mov [es:di],ax ; 0220D 268905
    %if ($ - %%insn_0220d) > 3
        %error "LONG_0220D"
    %endif
    times 3 - ($ - %%insn_0220d) db 0
    db 0x8B, 0xF3 ; 02210 8BF3 | mov si,bx | encoding preserved
    db 0x8B, 0xF9 ; 02212 8BF9 | mov di,cx | encoding preserved
    %%insn_02214:
    add di,0x4 ; 02214 83C704
    %if ($ - %%insn_02214) > 3
        %error "LONG_02214"
    %endif
    times 3 - ($ - %%insn_02214) db 0
    %%insn_02217:
    jmp short 0x21b4 ; 02217 EB9B
    %if ($ - %%insn_02217) > 2
        %error "LONG_02217"
    %endif
    times 2 - ($ - %%insn_02217) db 0
    %if ($ - %%fragment_start) != 151
        %error "SIZE_02182"
    %endif
%endmacro

%macro emit_decode_vdx_delta_frame_part_15 0
    %%fragment_start:
    db 0x3D, 0x60, 0x00 ; 02260 3D6000 | cmp ax,0x60 | encoding preserved
    %%insn_02263:
    jnz short 0x228a ; 02263 7525
    %if ($ - %%insn_02263) > 2
        %error "LONG_02263"
    %endif
    times 2 - ($ - %%insn_02263) db 0
    db 0x8B, 0xDF ; 02265 8BDF | mov bx,di | encoding preserved
    %%insn_02267:
    mov di,[bp+di] ; 02267 8B3B
    %if ($ - %%insn_02267) > 2
        %error "LONG_02267"
    %endif
    times 2 - ($ - %%insn_02267) db 0
    %%insn_02269:
    mov al,[si] ; 02269 8A04
    %if ($ - %%insn_02269) > 2
        %error "LONG_02269"
    %endif
    times 2 - ($ - %%insn_02269) db 0
    %%insn_0226b:
    mov ah,[si+0x2] ; 0226B 8A6402
    %if ($ - %%insn_0226b) > 3
        %error "LONG_0226B"
    %endif
    times 3 - ($ - %%insn_0226b) db 0
    %%insn_0226e:
    mov [es:di],ax ; 0226E 268905
    %if ($ - %%insn_0226e) > 3
        %error "LONG_0226E"
    %endif
    times 3 - ($ - %%insn_0226e) db 0
    %%insn_02271:
    add di,0x140 ; 02271 81C74001
    %if ($ - %%insn_02271) > 4
        %error "LONG_02271"
    %endif
    times 4 - ($ - %%insn_02271) db 0
    %%insn_02275:
    mov al,[si+0x8] ; 02275 8A4408
    %if ($ - %%insn_02275) > 3
        %error "LONG_02275"
    %endif
    times 3 - ($ - %%insn_02275) db 0
    %%insn_02278:
    mov ah,[si+0xa] ; 02278 8A640A
    %if ($ - %%insn_02278) > 3
        %error "LONG_02278"
    %endif
    times 3 - ($ - %%insn_02278) db 0
    %%insn_0227b:
    mov [es:di],ax ; 0227B 268905
    %if ($ - %%insn_0227b) > 3
        %error "LONG_0227B"
    %endif
    times 3 - ($ - %%insn_0227b) db 0
    %%insn_0227e:
    add si,0x10 ; 0227E 83C610
    %if ($ - %%insn_0227e) > 3
        %error "LONG_0227E"
    %endif
    times 3 - ($ - %%insn_0227e) db 0
    db 0x8B, 0xFB ; 02281 8BFB | mov di,bx | encoding preserved
    %%insn_02283:
    add di,0x4 ; 02283 83C704
    %if ($ - %%insn_02283) > 3
        %error "LONG_02283"
    %endif
    times 3 - ($ - %%insn_02283) db 0
    %%insn_02286:
    jmp 0x21b4 ; 02286 E92BFF
    %if ($ - %%insn_02286) > 3
        %error "LONG_02286"
    %endif
    times 3 - ($ - %%insn_02286) db 0
    %if ($ - %%fragment_start) != 41
        %error "SIZE_02260"
    %endif
%endmacro

%macro emit_decode_vdx_delta_frame_part_16 0
    %%fragment_start:
    db 0x3D, 0x61, 0x00 ; 0228A 3D6100 | cmp ax,0x61 | encoding preserved
    %%insn_0228d:
    jnz short 0x2297 ; 0228D 7508
    %if ($ - %%insn_0228d) > 2
        %error "LONG_0228D"
    %endif
    times 2 - ($ - %%insn_0228d) db 0
    %%insn_0228f:
    add word [bp-0x309e],0x4 ; 0228F 838662CF04
    %if ($ - %%insn_0228f) > 5
        %error "LONG_0228F"
    %endif
    times 5 - ($ - %%insn_0228f) db 0
    %%insn_02294:
    jmp 0x21a2 ; 02294 E90BFF
    %if ($ - %%insn_02294) > 3
        %error "LONG_02294"
    %endif
    times 3 - ($ - %%insn_02294) db 0
    db 0x3D, 0x6C, 0x00 ; 02297 3D6C00 | cmp ax,0x6c | encoding preserved
    %%insn_0229a:
    jnc short 0x22a8 ; 0229A 730C
    %if ($ - %%insn_0229a) > 2
        %error "LONG_0229A"
    %endif
    times 2 - ($ - %%insn_0229a) db 0
    db 0x2D, 0x62, 0x00 ; 0229C 2D6200 | sub ax,0x62 | encoding preserved
    %%insn_0229f:
    shl ax,byte 0x2 ; 0229F C1E002
    %if ($ - %%insn_0229f) > 3
        %error "LONG_0229F"
    %endif
    times 3 - ($ - %%insn_0229f) db 0
    db 0x03, 0xF8 ; 022A2 03F8 | add di,ax | encoding preserved
    %%insn_022a4:
    jmp 0x21b4 ; 022A4 E90DFF
    %if ($ - %%insn_022a4) > 3
        %error "LONG_022A4"
    %endif
    times 3 - ($ - %%insn_022a4) db 0
    %if ($ - %%fragment_start) != 29
        %error "SIZE_0228A"
    %endif
%endmacro

%macro emit_decode_vdx_delta_frame_part_17 0
    %%fragment_start:
    db 0x3D, 0x76, 0x00 ; 022A8 3D7600 | cmp ax,0x76 | encoding preserved
    %%insn_022ab:
    jnc short 0x22e2 ; 022AB 7335
    %if ($ - %%insn_022ab) > 2
        %error "LONG_022AB"
    %endif
    times 2 - ($ - %%insn_022ab) db 0
    db 0x2D, 0x6C, 0x00 ; 022AD 2D6C00 | sub ax,0x6c | encoding preserved
    db 0x8B, 0xC8 ; 022B0 8BC8 | mov cx,ax | encoding preserved
    %%insn_022b2:
    lodsb ; 022B2 AC
    %if ($ - %%insn_022b2) > 1
        %error "LONG_022B2"
    %endif
    times 1 - ($ - %%insn_022b2) db 0
    %%insn_022b3:
    push si ; 022B3 56
    %if ($ - %%insn_022b3) > 1
        %error "LONG_022B3"
    %endif
    times 1 - ($ - %%insn_022b3) db 0
    %%insn_022b4:
    inc cx ; 022B4 41
    %if ($ - %%insn_022b4) > 1
        %error "LONG_022B4"
    %endif
    times 1 - ($ - %%insn_022b4) db 0
    %%insn_022b5:
    mov si,[bp+di] ; 022B5 8B33
    %if ($ - %%insn_022b5) > 2
        %error "LONG_022B5"
    %endif
    times 2 - ($ - %%insn_022b5) db 0
    db 0x8A, 0xD1 ; 022B7 8AD1 | mov dl,cl | encoding preserved
    db 0x8A, 0xE0 ; 022B9 8AE0 | mov ah,al | encoding preserved
    db 0x8B, 0xD9 ; 022BB 8BD9 | mov bx,cx | encoding preserved
    %%insn_022bd:
    shl bx,byte 0x2 ; 022BD C1E302
    %if ($ - %%insn_022bd) > 3
        %error "LONG_022BD"
    %endif
    times 3 - ($ - %%insn_022bd) db 0
    db 0x03, 0xFB ; 022C0 03FB | add di,bx | encoding preserved
    db 0x32, 0xF6 ; 022C2 32F6 | xor dh,dh | encoding preserved
    db 0x8B, 0xCA ; 022C4 8BCA | mov cx,dx | encoding preserved
    %%insn_022c6:
    shl dx,1 ; 022C6 D1E2
    %if ($ - %%insn_022c6) > 2
        %error "LONG_022C6"
    %endif
    times 2 - ($ - %%insn_022c6) db 0
    %%insn_022c8:
    mov bx,0x140 ; 022C8 BB4001
    %if ($ - %%insn_022c8) > 3
        %error "LONG_022C8"
    %endif
    times 3 - ($ - %%insn_022c8) db 0
    db 0x2B, 0xDA ; 022CB 2BDA | sub bx,dx | encoding preserved
    db 0x8B, 0xD3 ; 022CD 8BD3 | mov dx,bx | encoding preserved
    db 0x8B, 0xD9 ; 022CF 8BD9 | mov bx,cx | encoding preserved
    %%insn_022d1:
    xchg di,si ; 022D1 87FE
    %if ($ - %%insn_022d1) > 2
        %error "LONG_022D1"
    %endif
    times 2 - ($ - %%insn_022d1) db 0
    %%insn_022d3:
    rep stosw ; 022D3 F3AB
    %if ($ - %%insn_022d3) > 2
        %error "LONG_022D3"
    %endif
    times 2 - ($ - %%insn_022d3) db 0
    db 0x03, 0xFA ; 022D5 03FA | add di,dx | encoding preserved
    db 0x8B, 0xCB ; 022D7 8BCB | mov cx,bx | encoding preserved
    %%insn_022d9:
    rep stosw ; 022D9 F3AB
    %if ($ - %%insn_022d9) > 2
        %error "LONG_022D9"
    %endif
    times 2 - ($ - %%insn_022d9) db 0
    db 0x8B, 0xFE ; 022DB 8BFE | mov di,si | encoding preserved
    %%insn_022dd:
    pop si ; 022DD 5E
    %if ($ - %%insn_022dd) > 1
        %error "LONG_022DD"
    %endif
    times 1 - ($ - %%insn_022dd) db 0
    %%insn_022de:
    jmp 0x21b4 ; 022DE E9D3FE
    %if ($ - %%insn_022de) > 3
        %error "LONG_022DE"
    %endif
    times 3 - ($ - %%insn_022de) db 0
    %if ($ - %%fragment_start) != 57
        %error "SIZE_022A8"
    %endif
%endmacro

%macro emit_decode_vdx_delta_frame_part_18 0
    %%fragment_start:
    db 0x2D, 0x75, 0x00 ; 022E2 2D7500 | sub ax,0x75 | encoding preserved
    db 0x8B, 0xC8 ; 022E5 8BC8 | mov cx,ax | encoding preserved
    %%insn_022e7:
    nop ; 022E7 90
    %if ($ - %%insn_022e7) > 1
        %error "LONG_022E7"
    %endif
    times 1 - ($ - %%insn_022e7) db 0
    %%insn_022e8:
    lodsb ; 022E8 AC
    %if ($ - %%insn_022e8) > 1
        %error "LONG_022E8"
    %endif
    times 1 - ($ - %%insn_022e8) db 0
    db 0x8B, 0xD7 ; 022E9 8BD7 | mov dx,di | encoding preserved
    db 0x8A, 0xE0 ; 022EB 8AE0 | mov ah,al | encoding preserved
    %%insn_022ed:
    mov di,[bp+di] ; 022ED 8B3B
    %if ($ - %%insn_022ed) > 2
        %error "LONG_022ED"
    %endif
    times 2 - ($ - %%insn_022ed) db 0
    %%insn_022ef:
    mov [es:di],ax ; 022EF 268905
    %if ($ - %%insn_022ef) > 3
        %error "LONG_022EF"
    %endif
    times 3 - ($ - %%insn_022ef) db 0
    %%insn_022f2:
    add di,0x140 ; 022F2 81C74001
    %if ($ - %%insn_022f2) > 4
        %error "LONG_022F2"
    %endif
    times 4 - ($ - %%insn_022f2) db 0
    %%insn_022f6:
    mov [es:di],ax ; 022F6 268905
    %if ($ - %%insn_022f6) > 3
        %error "LONG_022F6"
    %endif
    times 3 - ($ - %%insn_022f6) db 0
    db 0x8B, 0xFA ; 022F9 8BFA | mov di,dx | encoding preserved
    %%insn_022fb:
    add di,0x4 ; 022FB 83C704
    %if ($ - %%insn_022fb) > 3
        %error "LONG_022FB"
    %endif
    times 3 - ($ - %%insn_022fb) db 0
    %%insn_022fe:
    dec cx ; 022FE 49
    %if ($ - %%insn_022fe) > 1
        %error "LONG_022FE"
    %endif
    times 1 - ($ - %%insn_022fe) db 0
    %%insn_022ff:
    jnz short 0x22e8 ; 022FF 75E7
    %if ($ - %%insn_022ff) > 2
        %error "LONG_022FF"
    %endif
    times 2 - ($ - %%insn_022ff) db 0
    %%insn_02301:
    jmp 0x21b4 ; 02301 E9B0FE
    %if ($ - %%insn_02301) > 3
        %error "LONG_02301"
    %endif
    times 3 - ($ - %%insn_02301) db 0
    %if ($ - %%fragment_start) != 34
        %error "SIZE_022E2"
    %endif
%endmacro

%macro emit_decode_vdx_delta_frame_part_19 0
    %%fragment_start:
    db 0x8A, 0xD0 ; 02306 8AD0 | mov dl,al | encoding preserved
    %%insn_02308:
    lodsb ; 02308 AC
    %if ($ - %%insn_02308) > 1
        %error "LONG_02308"
    %endif
    times 1 - ($ - %%insn_02308) db 0
    db 0x8A, 0xF0 ; 02309 8AF0 | mov dh,al | encoding preserved
    %%insn_0230b:
    jmp 0x21ce ; 0230B E9C0FE
    %if ($ - %%insn_0230b) > 3
        %error "LONG_0230B"
    %endif
    times 3 - ($ - %%insn_0230b) db 0
    %%insn_0230e:
    ret ; 0230E C3
    %if ($ - %%insn_0230e) > 1
        %error "LONG_0230E"
    %endif
    times 1 - ($ - %%insn_0230e) db 0
    %if ($ - %%fragment_start) != 9
        %error "SIZE_02306"
    %endif
%endmacro
