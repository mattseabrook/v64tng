; Linear entry 0021B (1000:021b)
; Ghidra working symbol: FUN_1000_021b
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_0021b_part_00 0
    %%fragment_start:
func_0021b:
    %%insn_0021b:
    cmp word [bp-0xcea],0x2 ; 0021B 83BE16F302
    %if ($ - %%insn_0021b) > 5
        %error "LONG_0021B"
    %endif
    times 5 - ($ - %%insn_0021b) db 0
    %%insn_00220:
    jnz short 0x22e ; 00220 750C
    %if ($ - %%insn_00220) > 2
        %error "LONG_00220"
    %endif
    times 2 - ($ - %%insn_00220) db 0
    db 0x33, 0xF6 ; 00222 33F6 | xor si,si | encoding preserved
    %%insn_00224:
    mov word [si],0x20 ; 00224 C7042000
    %if ($ - %%insn_00224) > 4
        %error "LONG_00224"
    %endif
    times 4 - ($ - %%insn_00224) db 0
    %%insn_00228:
    mov ax,0xc800 ; 00228 B800C8
    %if ($ - %%insn_00228) > 3
        %error "LONG_00228"
    %endif
    times 3 - ($ - %%insn_00228) db 0
    db 0x23, 0xC0 ; 0022B 23C0 | and ax,ax | encoding preserved
    %%insn_0022d:
    ret ; 0022D C3
    %if ($ - %%insn_0022d) > 1
        %error "LONG_0022D"
    %endif
    times 1 - ($ - %%insn_0022d) db 0
    %%insn_0022e:
    and ecx,0xffff ; 0022E 6681E1FFFF0000
    %if ($ - %%insn_0022e) > 7
        %error "LONG_0022E"
    %endif
    times 7 - ($ - %%insn_0022e) db 0
    %%insn_00235:
    and edx,0xffff ; 00235 6681E2FFFF0000
    %if ($ - %%insn_00235) > 7
        %error "LONG_00235"
    %endif
    times 7 - ($ - %%insn_00235) db 0
    %%insn_0023c:
    cmp word [bp-0x30ca],0x1 ; 0023C 83BE36CF01
    %if ($ - %%insn_0023c) > 5
        %error "LONG_0023C"
    %endif
    times 5 - ($ - %%insn_0023c) db 0
    %%insn_00241:
    jnz short 0x267 ; 00241 7524
    %if ($ - %%insn_00241) > 2
        %error "LONG_00241"
    %endif
    times 2 - ($ - %%insn_00241) db 0
    %%insn_00243:
    add ecx,0x8 ; 00243 6683C108
    %if ($ - %%insn_00243) > 4
        %error "LONG_00243"
    %endif
    times 4 - ($ - %%insn_00243) db 0
    db 0x66, 0x8B, 0xC1 ; 00247 668BC1 | mov eax,ecx | encoding preserved
    db 0x66, 0x03, 0xC2 ; 0024A 6603C2 | add eax,edx | encoding preserved
    %%insn_0024d:
    cmp eax,0x10000 ; 0024D 663D00000100
    %if ($ - %%insn_0024d) > 6
        %error "LONG_0024D"
    %endif
    times 6 - ($ - %%insn_0024d) db 0
    %%insn_00253:
    jna short 0x261 ; 00253 760C
    %if ($ - %%insn_00253) > 2
        %error "LONG_00253"
    %endif
    times 2 - ($ - %%insn_00253) db 0
    %%insn_00255:
    sub ecx,0x8 ; 00255 6683E908
    %if ($ - %%insn_00255) > 4
        %error "LONG_00255"
    %endif
    times 4 - ($ - %%insn_00255) db 0
    %%insn_00259:
    mov word [bp-0x30ca],0x0 ; 00259 C78636CF0000
    %if ($ - %%insn_00259) > 6
        %error "LONG_00259"
    %endif
    times 6 - ($ - %%insn_00259) db 0
    %%insn_0025f:
    jmp short 0x267 ; 0025F EB06
    %if ($ - %%insn_0025f) > 2
        %error "LONG_0025F"
    %endif
    times 2 - ($ - %%insn_0025f) db 0
    %%insn_00261:
    mov word [bp-0x30ca],0x2 ; 00261 C78636CF0200
    %if ($ - %%insn_00261) > 6
        %error "LONG_00261"
    %endif
    times 6 - ($ - %%insn_00261) db 0
    %%insn_00267:
    add [bp-0x30aa],ecx ; 00267 66018E56CF
    %if ($ - %%insn_00267) > 5
        %error "LONG_00267"
    %endif
    times 5 - ($ - %%insn_00267) db 0
    %%insn_0026c:
    mov bx,[bp-0x2b82] ; 0026C 8B9E7ED4
    %if ($ - %%insn_0026c) > 4
        %error "LONG_0026C"
    %endif
    times 4 - ($ - %%insn_0026c) db 0
    %%insn_00270:
    mov ax,0x3f00 ; 00270 B8003F
    %if ($ - %%insn_00270) > 3
        %error "LONG_00270"
    %endif
    times 3 - ($ - %%insn_00270) db 0
    %%insn_00273:
    int byte 0x21 ; 00273 CD21
    %if ($ - %%insn_00273) > 2
        %error "LONG_00273"
    %endif
    times 2 - ($ - %%insn_00273) db 0
    %%insn_00275:
    jnc short 0x296 ; 00275 731F
    %if ($ - %%insn_00275) > 2
        %error "LONG_00275"
    %endif
    times 2 - ($ - %%insn_00275) db 0
    db 0x23, 0xC0 ; 00277 23C0 | and ax,ax | encoding preserved
    %%insn_00279:
    jz short 0x296 ; 00279 741B
    %if ($ - %%insn_00279) > 2
        %error "LONG_00279"
    %endif
    times 2 - ($ - %%insn_00279) db 0
    %%insn_0027b:
    push cx ; 0027B 51
    %if ($ - %%insn_0027b) > 1
        %error "LONG_0027B"
    %endif
    times 1 - ($ - %%insn_0027b) db 0
    %%insn_0027c:
    push dx ; 0027C 52
    %if ($ - %%insn_0027c) > 1
        %error "LONG_0027C"
    %endif
    times 1 - ($ - %%insn_0027c) db 0
    %%insn_0027d:
    mov dx,[bp-0x30aa] ; 0027D 8B9656CF
    %if ($ - %%insn_0027d) > 4
        %error "LONG_0027D"
    %endif
    times 4 - ($ - %%insn_0027d) db 0
    %%insn_00281:
    mov cx,[bp-0x30a8] ; 00281 8B8E58CF
    %if ($ - %%insn_00281) > 4
        %error "LONG_00281"
    %endif
    times 4 - ($ - %%insn_00281) db 0
    %%insn_00285:
    mov bx,[bp-0x2b82] ; 00285 8B9E7ED4
    %if ($ - %%insn_00285) > 4
        %error "LONG_00285"
    %endif
    times 4 - ($ - %%insn_00285) db 0
    %%insn_00289:
    mov ax,0x4200 ; 00289 B80042
    %if ($ - %%insn_00289) > 3
        %error "LONG_00289"
    %endif
    times 3 - ($ - %%insn_00289) db 0
    %%insn_0028c:
    int byte 0x21 ; 0028C CD21
    %if ($ - %%insn_0028c) > 2
        %error "LONG_0028C"
    %endif
    times 2 - ($ - %%insn_0028c) db 0
    %%insn_0028e:
    pop dx ; 0028E 5A
    %if ($ - %%insn_0028e) > 1
        %error "LONG_0028E"
    %endif
    times 1 - ($ - %%insn_0028e) db 0
    %%insn_0028f:
    pop cx ; 0028F 59
    %if ($ - %%insn_0028f) > 1
        %error "LONG_0028F"
    %endif
    times 1 - ($ - %%insn_0028f) db 0
    %%insn_00290:
    inc word [bp-0x30cc] ; 00290 FF8634CF
    %if ($ - %%insn_00290) > 4
        %error "LONG_00290"
    %endif
    times 4 - ($ - %%insn_00290) db 0
    %%insn_00294:
    jmp short 0x26c ; 00294 EBD6
    %if ($ - %%insn_00294) > 2
        %error "LONG_00294"
    %endif
    times 2 - ($ - %%insn_00294) db 0
    %%insn_00296:
    cmp word [bp-0x30ca],0x2 ; 00296 83BE36CF02
    %if ($ - %%insn_00296) > 5
        %error "LONG_00296"
    %endif
    times 5 - ($ - %%insn_00296) db 0
    %%insn_0029b:
    jnz short 0x2bd ; 0029B 7520
    %if ($ - %%insn_0029b) > 2
        %error "LONG_0029B"
    %endif
    times 2 - ($ - %%insn_0029b) db 0
    %%insn_0029d:
    push cx ; 0029D 51
    %if ($ - %%insn_0029d) > 1
        %error "LONG_0029D"
    %endif
    times 1 - ($ - %%insn_0029d) db 0
    %%insn_0029e:
    push ax ; 0029E 50
    %if ($ - %%insn_0029e) > 1
        %error "LONG_0029E"
    %endif
    times 1 - ($ - %%insn_0029e) db 0
    %%insn_0029f:
    push di ; 0029F 57
    %if ($ - %%insn_0029f) > 1
        %error "LONG_0029F"
    %endif
    times 1 - ($ - %%insn_0029f) db 0
    %%insn_002a0:
    push si ; 002A0 56
    %if ($ - %%insn_002a0) > 1
        %error "LONG_002A0"
    %endif
    times 1 - ($ - %%insn_002a0) db 0
    %%insn_002a1:
    push es ; 002A1 06
    %if ($ - %%insn_002a1) > 1
        %error "LONG_002A1"
    %endif
    times 1 - ($ - %%insn_002a1) db 0
    %%insn_002a2:
    mov es,word [bp-0x2aae] ; 002A2 8E8652D5
    %if ($ - %%insn_002a2) > 4
        %error "LONG_002A2"
    %endif
    times 4 - ($ - %%insn_002a2) db 0
    db 0x2D, 0x08, 0x00 ; 002A6 2D0800 | sub ax,0x8 | encoding preserved
    db 0x03, 0xC2 ; 002A9 03C2 | add ax,dx | encoding preserved
    db 0x8B, 0xF0 ; 002AB 8BF0 | mov si,ax | encoding preserved
    %%insn_002ad:
    mov di,0xcf38 ; 002AD BF38CF
    %if ($ - %%insn_002ad) > 3
        %error "LONG_002AD"
    %endif
    times 3 - ($ - %%insn_002ad) db 0
    %%insn_002b0:
    mov cx,0x4 ; 002B0 B90400
    %if ($ - %%insn_002b0) > 3
        %error "LONG_002B0"
    %endif
    times 3 - ($ - %%insn_002b0) db 0
    %%insn_002b3:
    rep movsw ; 002B3 F3A5
    %if ($ - %%insn_002b3) > 2
        %error "LONG_002B3"
    %endif
    times 2 - ($ - %%insn_002b3) db 0
    %%insn_002b5:
    pop es ; 002B5 07
    %if ($ - %%insn_002b5) > 1
        %error "LONG_002B5"
    %endif
    times 1 - ($ - %%insn_002b5) db 0
    %%insn_002b6:
    pop si ; 002B6 5E
    %if ($ - %%insn_002b6) > 1
        %error "LONG_002B6"
    %endif
    times 1 - ($ - %%insn_002b6) db 0
    %%insn_002b7:
    pop di ; 002B7 5F
    %if ($ - %%insn_002b7) > 1
        %error "LONG_002B7"
    %endif
    times 1 - ($ - %%insn_002b7) db 0
    %%insn_002b8:
    pop ax ; 002B8 58
    %if ($ - %%insn_002b8) > 1
        %error "LONG_002B8"
    %endif
    times 1 - ($ - %%insn_002b8) db 0
    %%insn_002b9:
    pop cx ; 002B9 59
    %if ($ - %%insn_002b9) > 1
        %error "LONG_002B9"
    %endif
    times 1 - ($ - %%insn_002b9) db 0
    db 0x2D, 0x08, 0x00 ; 002BA 2D0800 | sub ax,0x8 | encoding preserved
    db 0x23, 0xC0 ; 002BD 23C0 | and ax,ax | encoding preserved
    %%insn_002bf:
    ret ; 002BF C3
    %if ($ - %%insn_002bf) > 1
        %error "LONG_002BF"
    %endif
    times 1 - ($ - %%insn_002bf) db 0
    %if ($ - %%fragment_start) != 165
        %error "SIZE_0021B"
    %endif
%endmacro
