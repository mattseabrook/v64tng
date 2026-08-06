; Linear entry 05235 (1000:5235)
; Ghidra working symbol: FUN_1000_5235
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_05235_part_00 0
    %%fragment_start:
func_05235:
    %%insn_05235:
    mov word [bp-0x1bb0],0x0 ; 05235 C78650E40000
    %if ($ - %%insn_05235) > 6
        %error "LONG_05235"
    %endif
    times 6 - ($ - %%insn_05235) db 0
    %%insn_0523b:
    mov word [bp-0x1bae],0x0 ; 0523B C78652E40000
    %if ($ - %%insn_0523b) > 6
        %error "LONG_0523B"
    %endif
    times 6 - ($ - %%insn_0523b) db 0
    %%insn_05241:
    mov word [bp-0x1b8a],0xffff ; 05241 C78676E4FFFF
    %if ($ - %%insn_05241) > 6
        %error "LONG_05241"
    %endif
    times 6 - ($ - %%insn_05241) db 0
    db 0x8B, 0xF3 ; 05247 8BF3 | mov si,bx | encoding preserved
    %%insn_05249:
    push ds ; 05249 1E
    %if ($ - %%insn_05249) > 1
        %error "LONG_05249"
    %endif
    times 1 - ($ - %%insn_05249) db 0
    %%insn_0524a:
    mov ax,0x893 ; 0524A B89308
    %if ($ - %%insn_0524a) > 3
        %error "LONG_0524A"
    %endif
    times 3 - ($ - %%insn_0524a) db 0
    %%insn_0524d:
    mov ds,ax ; 0524D 8ED8
    %if ($ - %%insn_0524d) > 2
        %error "LONG_0524D"
    %endif
    times 2 - ($ - %%insn_0524d) db 0
    %%insn_0524f:
    mov di,0xe13c ; 0524F BF3CE1
    %if ($ - %%insn_0524f) > 3
        %error "LONG_0524F"
    %endif
    times 3 - ($ - %%insn_0524f) db 0
    %%insn_05252:
    call 0x4ff6 ; 05252 E8A1FD
    %if ($ - %%insn_05252) > 3
        %error "LONG_05252"
    %endif
    times 3 - ($ - %%insn_05252) db 0
    %%insn_05255:
    jnz short 0x5264 ; 05255 750D
    %if ($ - %%insn_05255) > 2
        %error "LONG_05255"
    %endif
    times 2 - ($ - %%insn_05255) db 0
    %%insn_05257:
    mov word [bp-0x1b8a],0x80 ; 05257 C78676E48000
    %if ($ - %%insn_05257) > 6
        %error "LONG_05257"
    %endif
    times 6 - ($ - %%insn_05257) db 0
    %%insn_0525d:
    mov byte [bp-0x2614],0x1 ; 0525D C686ECD901
    %if ($ - %%insn_0525d) > 5
        %error "LONG_0525D"
    %endif
    times 5 - ($ - %%insn_0525d) db 0
    %%insn_05262:
    pop ds ; 05262 1F
    %if ($ - %%insn_05262) > 1
        %error "LONG_05262"
    %endif
    times 1 - ($ - %%insn_05262) db 0
    %%insn_05263:
    ret ; 05263 C3
    %if ($ - %%insn_05263) > 1
        %error "LONG_05263"
    %endif
    times 1 - ($ - %%insn_05263) db 0
    %%insn_05264:
    mov byte [bp-0x235e],0x0 ; 05264 C686A2DC00
    %if ($ - %%insn_05264) > 5
        %error "LONG_05264"
    %endif
    times 5 - ($ - %%insn_05264) db 0
    %%insn_05269:
    mov byte [bp-0x1f3b],0x0 ; 05269 C686C5E000
    %if ($ - %%insn_05269) > 5
        %error "LONG_05269"
    %endif
    times 5 - ($ - %%insn_05269) db 0
    %%insn_0526e:
    mov di,0xe12b ; 0526E BF2BE1
    %if ($ - %%insn_0526e) > 3
        %error "LONG_0526E"
    %endif
    times 3 - ($ - %%insn_0526e) db 0
    %%insn_05271:
    call 0x4ff6 ; 05271 E882FD
    %if ($ - %%insn_05271) > 3
        %error "LONG_05271"
    %endif
    times 3 - ($ - %%insn_05271) db 0
    %%insn_05274:
    jnz short 0x5281 ; 05274 750B
    %if ($ - %%insn_05274) > 2
        %error "LONG_05274"
    %endif
    times 2 - ($ - %%insn_05274) db 0
    %%insn_05276:
    mov byte [bp-0x235e],0x1 ; 05276 C686A2DC01
    %if ($ - %%insn_05276) > 5
        %error "LONG_05276"
    %endif
    times 5 - ($ - %%insn_05276) db 0
    %%insn_0527b:
    mov word [bp-0x1b8a],0x0 ; 0527B C78676E40000
    %if ($ - %%insn_0527b) > 6
        %error "LONG_0527B"
    %endif
    times 6 - ($ - %%insn_0527b) db 0
    %%insn_05281:
    mov di,0xe137 ; 05281 BF37E1
    %if ($ - %%insn_05281) > 3
        %error "LONG_05281"
    %endif
    times 3 - ($ - %%insn_05281) db 0
    %%insn_05284:
    call 0x4ff6 ; 05284 E86FFD
    %if ($ - %%insn_05284) > 3
        %error "LONG_05284"
    %endif
    times 3 - ($ - %%insn_05284) db 0
    %%insn_05287:
    jnz short 0x5294 ; 05287 750B
    %if ($ - %%insn_05287) > 2
        %error "LONG_05287"
    %endif
    times 2 - ($ - %%insn_05287) db 0
    %%insn_05289:
    mov byte [bp-0x235e],0x2 ; 05289 C686A2DC02
    %if ($ - %%insn_05289) > 5
        %error "LONG_05289"
    %endif
    times 5 - ($ - %%insn_05289) db 0
    %%insn_0528e:
    mov word [bp-0x1b8a],0x1 ; 0528E C78676E40100
    %if ($ - %%insn_0528e) > 6
        %error "LONG_0528E"
    %endif
    times 6 - ($ - %%insn_0528e) db 0
    %%insn_05294:
    mov di,0xe141 ; 05294 BF41E1
    %if ($ - %%insn_05294) > 3
        %error "LONG_05294"
    %endif
    times 3 - ($ - %%insn_05294) db 0
    %%insn_05297:
    call 0x4ff6 ; 05297 E85CFD
    %if ($ - %%insn_05297) > 3
        %error "LONG_05297"
    %endif
    times 3 - ($ - %%insn_05297) db 0
    %%insn_0529a:
    jnz short 0x52a1 ; 0529A 7505
    %if ($ - %%insn_0529a) > 2
        %error "LONG_0529A"
    %endif
    times 2 - ($ - %%insn_0529a) db 0
    %%insn_0529c:
    mov byte [bp-0x1f3b],0x1 ; 0529C C686C5E001
    %if ($ - %%insn_0529c) > 5
        %error "LONG_0529C"
    %endif
    times 5 - ($ - %%insn_0529c) db 0
    %%insn_052a1:
    mov di,0xe14b ; 052A1 BF4BE1
    %if ($ - %%insn_052a1) > 3
        %error "LONG_052A1"
    %endif
    times 3 - ($ - %%insn_052a1) db 0
    %%insn_052a4:
    call 0x4ff6 ; 052A4 E84FFD
    %if ($ - %%insn_052a4) > 3
        %error "LONG_052A4"
    %endif
    times 3 - ($ - %%insn_052a4) db 0
    %%insn_052a7:
    jnz short 0x52ae ; 052A7 7505
    %if ($ - %%insn_052a7) > 2
        %error "LONG_052A7"
    %endif
    times 2 - ($ - %%insn_052a7) db 0
    %%insn_052a9:
    mov byte [bp-0x1f3a],0x1 ; 052A9 C686C6E001
    %if ($ - %%insn_052a9) > 5
        %error "LONG_052A9"
    %endif
    times 5 - ($ - %%insn_052a9) db 0
    %%insn_052ae:
    pop ds ; 052AE 1F
    %if ($ - %%insn_052ae) > 1
        %error "LONG_052AE"
    %endif
    times 1 - ($ - %%insn_052ae) db 0
    %%insn_052af:
    mov ax,ds ; 052AF 8CD8
    %if ($ - %%insn_052af) > 2
        %error "LONG_052AF"
    %endif
    times 2 - ($ - %%insn_052af) db 0
    %%insn_052b1:
    mov es,ax ; 052B1 8EC0
    %if ($ - %%insn_052b1) > 2
        %error "LONG_052B1"
    %endif
    times 2 - ($ - %%insn_052b1) db 0
    %%insn_052b3:
    call 0x5018 ; 052B3 E862FD
    %if ($ - %%insn_052b3) > 3
        %error "LONG_052B3"
    %endif
    times 3 - ($ - %%insn_052b3) db 0
    %%insn_052b6:
    mov ax,0x893 ; 052B6 B89308
    %if ($ - %%insn_052b6) > 3
        %error "LONG_052B6"
    %endif
    times 3 - ($ - %%insn_052b6) db 0
    %%insn_052b9:
    mov es,ax ; 052B9 8EC0
    %if ($ - %%insn_052b9) > 2
        %error "LONG_052B9"
    %endif
    times 2 - ($ - %%insn_052b9) db 0
    db 0x33, 0xD2 ; 052BB 33D2 | xor dx,dx | encoding preserved
    %%insn_052bd:
    cmp byte [si],0x3b ; 052BD 803C3B
    %if ($ - %%insn_052bd) > 3
        %error "LONG_052BD"
    %endif
    times 3 - ($ - %%insn_052bd) db 0
    %%insn_052c0:
    jnz short 0x52c7 ; 052C0 7505
    %if ($ - %%insn_052c0) > 2
        %error "LONG_052C0"
    %endif
    times 2 - ($ - %%insn_052c0) db 0
    %%insn_052c2:
    call 0x4fc7 ; 052C2 E802FD
    %if ($ - %%insn_052c2) > 3
        %error "LONG_052C2"
    %endif
    times 3 - ($ - %%insn_052c2) db 0
    %%insn_052c5:
    jmp short 0x52bd ; 052C5 EBF6
    %if ($ - %%insn_052c5) > 2
        %error "LONG_052C5"
    %endif
    times 2 - ($ - %%insn_052c5) db 0
    %%insn_052c7:
    cmp byte [si],0x5b ; 052C7 803C5B
    %if ($ - %%insn_052c7) > 3
        %error "LONG_052C7"
    %endif
    times 3 - ($ - %%insn_052c7) db 0
    %%insn_052ca:
    jnz short 0x52d1 ; 052CA 7505
    %if ($ - %%insn_052ca) > 2
        %error "LONG_052CA"
    %endif
    times 2 - ($ - %%insn_052ca) db 0
    %%insn_052cc:
    call 0x4fc7 ; 052CC E8F8FC
    %if ($ - %%insn_052cc) > 3
        %error "LONG_052CC"
    %endif
    times 3 - ($ - %%insn_052cc) db 0
    %%insn_052cf:
    jmp short 0x52bd ; 052CF EBEC
    %if ($ - %%insn_052cf) > 2
        %error "LONG_052CF"
    %endif
    times 2 - ($ - %%insn_052cf) db 0
    %%insn_052d1:
    call 0x48c9 ; 052D1 E8F5F5
    %if ($ - %%insn_052d1) > 3
        %error "LONG_052D1"
    %endif
    times 3 - ($ - %%insn_052d1) db 0
    %%insn_052d4:
    inc si ; 052D4 46
    %if ($ - %%insn_052d4) > 1
        %error "LONG_052D4"
    %endif
    times 1 - ($ - %%insn_052d4) db 0
    %%insn_052d5:
    cmp word [bp-0x2611],0x1 ; 052D5 83BEEFD901
    %if ($ - %%insn_052d5) > 5
        %error "LONG_052D5"
    %endif
    times 5 - ($ - %%insn_052d5) db 0
    %%insn_052da:
    jna short 0x5341 ; 052DA 7665
    %if ($ - %%insn_052da) > 2
        %error "LONG_052DA"
    %endif
    times 2 - ($ - %%insn_052da) db 0
    %%insn_052dc:
    push ds ; 052DC 1E
    %if ($ - %%insn_052dc) > 1
        %error "LONG_052DC"
    %endif
    times 1 - ($ - %%insn_052dc) db 0
    %%insn_052dd:
    push si ; 052DD 56
    %if ($ - %%insn_052dd) > 1
        %error "LONG_052DD"
    %endif
    times 1 - ($ - %%insn_052dd) db 0
    %%insn_052de:
    lds di,word [bp-0x260f] ; 052DE C5BEF1D9
    %if ($ - %%insn_052de) > 4
        %error "LONG_052DE"
    %endif
    times 4 - ($ - %%insn_052de) db 0
    %%insn_052e2:
    add di,0x2 ; 052E2 83C702
    %if ($ - %%insn_052e2) > 3
        %error "LONG_052E2"
    %endif
    times 3 - ($ - %%insn_052e2) db 0
    %%insn_052e5:
    mov si,[di] ; 052E5 8B35
    %if ($ - %%insn_052e5) > 2
        %error "LONG_052E5"
    %endif
    times 2 - ($ - %%insn_052e5) db 0
    %%insn_052e7:
    add di,0x2 ; 052E7 83C702
    %if ($ - %%insn_052e7) > 3
        %error "LONG_052E7"
    %endif
    times 3 - ($ - %%insn_052e7) db 0
    %%insn_052ea:
    mov bx,[di] ; 052EA 8B1D
    %if ($ - %%insn_052ea) > 2
        %error "LONG_052EA"
    %endif
    times 2 - ($ - %%insn_052ea) db 0
    %%insn_052ec:
    mov di,0xe0e9 ; 052EC BFE9E0
    %if ($ - %%insn_052ec) > 3
        %error "LONG_052EC"
    %endif
    times 3 - ($ - %%insn_052ec) db 0
    %%insn_052ef:
    call 0x4ff6 ; 052EF E804FD
    %if ($ - %%insn_052ef) > 3
        %error "LONG_052EF"
    %endif
    times 3 - ($ - %%insn_052ef) db 0
    %%insn_052f2:
    jnz short 0x530d ; 052F2 7519
    %if ($ - %%insn_052f2) > 2
        %error "LONG_052F2"
    %endif
    times 2 - ($ - %%insn_052f2) db 0
    %%insn_052f4:
    mov ax,[bx] ; 052F4 8B07
    %if ($ - %%insn_052f4) > 2
        %error "LONG_052F4"
    %endif
    times 2 - ($ - %%insn_052f4) db 0
    %%insn_052f6:
    cmp ax,0x6564 ; 052F6 3D6465
    %if ($ - %%insn_052f6) > 3
        %error "LONG_052F6"
    %endif
    times 3 - ($ - %%insn_052f6) db 0
    %%insn_052f9:
    jz short 0x5306 ; 052F9 740B
    %if ($ - %%insn_052f9) > 2
        %error "LONG_052F9"
    %endif
    times 2 - ($ - %%insn_052f9) db 0
    db 0x8B, 0xF3 ; 052FB 8BF3 | mov si,bx | encoding preserved
    %%insn_052fd:
    call 0x4a23 ; 052FD E823F7
    %if ($ - %%insn_052fd) > 3
        %error "LONG_052FD"
    %endif
    times 3 - ($ - %%insn_052fd) db 0
    %%insn_05300:
    mov [bp-0x1bb0],ax ; 05300 898650E4
    %if ($ - %%insn_05300) > 4
        %error "LONG_05300"
    %endif
    times 4 - ($ - %%insn_05300) db 0
    %%insn_05304:
    jmp short 0x530c ; 05304 EB06
    %if ($ - %%insn_05304) > 2
        %error "LONG_05304"
    %endif
    times 2 - ($ - %%insn_05304) db 0
    %%insn_05306:
    mov word [bp-0x1bb0],0xffff ; 05306 C78650E4FFFF
    %if ($ - %%insn_05306) > 6
        %error "LONG_05306"
    %endif
    times 6 - ($ - %%insn_05306) db 0
    %%insn_0530c:
    inc dx ; 0530C 42
    %if ($ - %%insn_0530c) > 1
        %error "LONG_0530C"
    %endif
    times 1 - ($ - %%insn_0530c) db 0
    %%insn_0530d:
    mov di,0xe0ed ; 0530D BFEDE0
    %if ($ - %%insn_0530d) > 3
        %error "LONG_0530D"
    %endif
    times 3 - ($ - %%insn_0530d) db 0
    %%insn_05310:
    call 0x4ff6 ; 05310 E8E3FC
    %if ($ - %%insn_05310) > 3
        %error "LONG_05310"
    %endif
    times 3 - ($ - %%insn_05310) db 0
    %%insn_05313:
    jnz short 0x532e ; 05313 7519
    %if ($ - %%insn_05313) > 2
        %error "LONG_05313"
    %endif
    times 2 - ($ - %%insn_05313) db 0
    %%insn_05315:
    mov ax,[bx] ; 05315 8B07
    %if ($ - %%insn_05315) > 2
        %error "LONG_05315"
    %endif
    times 2 - ($ - %%insn_05315) db 0
    %%insn_05317:
    cmp ax,0x6564 ; 05317 3D6465
    %if ($ - %%insn_05317) > 3
        %error "LONG_05317"
    %endif
    times 3 - ($ - %%insn_05317) db 0
    %%insn_0531a:
    jz short 0x5327 ; 0531A 740B
    %if ($ - %%insn_0531a) > 2
        %error "LONG_0531A"
    %endif
    times 2 - ($ - %%insn_0531a) db 0
    db 0x8B, 0xF3 ; 0531C 8BF3 | mov si,bx | encoding preserved
    %%insn_0531e:
    call 0x4a55 ; 0531E E834F7
    %if ($ - %%insn_0531e) > 3
        %error "LONG_0531E"
    %endif
    times 3 - ($ - %%insn_0531e) db 0
    %%insn_05321:
    mov [bp-0x1bae],ax ; 05321 898652E4
    %if ($ - %%insn_05321) > 4
        %error "LONG_05321"
    %endif
    times 4 - ($ - %%insn_05321) db 0
    %%insn_05325:
    jmp short 0x532d ; 05325 EB06
    %if ($ - %%insn_05325) > 2
        %error "LONG_05325"
    %endif
    times 2 - ($ - %%insn_05325) db 0
    %%insn_05327:
    mov word [bp-0x1bae],0xffff ; 05327 C78652E4FFFF
    %if ($ - %%insn_05327) > 6
        %error "LONG_05327"
    %endif
    times 6 - ($ - %%insn_05327) db 0
    %%insn_0532d:
    inc dx ; 0532D 42
    %if ($ - %%insn_0532d) > 1
        %error "LONG_0532D"
    %endif
    times 1 - ($ - %%insn_0532d) db 0
    %%insn_0532e:
    mov di,0xe0fa ; 0532E BFFAE0
    %if ($ - %%insn_0532e) > 3
        %error "LONG_0532E"
    %endif
    times 3 - ($ - %%insn_0532e) db 0
    %%insn_05331:
    call 0x4ff6 ; 05331 E8C2FC
    %if ($ - %%insn_05331) > 3
        %error "LONG_05331"
    %endif
    times 3 - ($ - %%insn_05331) db 0
    %%insn_05334:
    jnz short 0x533f ; 05334 7509
    %if ($ - %%insn_05334) > 2
        %error "LONG_05334"
    %endif
    times 2 - ($ - %%insn_05334) db 0
    db 0x8B, 0xF3 ; 05336 8BF3 | mov si,bx | encoding preserved
    %%insn_05338:
    mov di,0xe455 ; 05338 BF55E4
    %if ($ - %%insn_05338) > 3
        %error "LONG_05338"
    %endif
    times 3 - ($ - %%insn_05338) db 0
    %%insn_0533b:
    call 0x5010 ; 0533B E8D2FC
    %if ($ - %%insn_0533b) > 3
        %error "LONG_0533B"
    %endif
    times 3 - ($ - %%insn_0533b) db 0
    %%insn_0533e:
    inc dx ; 0533E 42
    %if ($ - %%insn_0533e) > 1
        %error "LONG_0533E"
    %endif
    times 1 - ($ - %%insn_0533e) db 0
    %%insn_0533f:
    pop si ; 0533F 5E
    %if ($ - %%insn_0533f) > 1
        %error "LONG_0533F"
    %endif
    times 1 - ($ - %%insn_0533f) db 0
    %%insn_05340:
    pop ds ; 05340 1F
    %if ($ - %%insn_05340) > 1
        %error "LONG_05340"
    %endif
    times 1 - ($ - %%insn_05340) db 0
    %%insn_05341:
    cmp dx,0x3 ; 05341 83FA03
    %if ($ - %%insn_05341) > 3
        %error "LONG_05341"
    %endif
    times 3 - ($ - %%insn_05341) db 0
    %%insn_05344:
    jz short 0x5373 ; 05344 742D
    %if ($ - %%insn_05344) > 2
        %error "LONG_05344"
    %endif
    times 2 - ($ - %%insn_05344) db 0
    %%insn_05346:
    lodsb ; 05346 AC
    %if ($ - %%insn_05346) > 1
        %error "LONG_05346"
    %endif
    times 1 - ($ - %%insn_05346) db 0
    %%insn_05347:
    cmp al,0x1a ; 05347 3C1A
    %if ($ - %%insn_05347) > 2
        %error "LONG_05347"
    %endif
    times 2 - ($ - %%insn_05347) db 0
    %%insn_05349:
    jnz short 0x5353 ; 05349 7508
    %if ($ - %%insn_05349) > 2
        %error "LONG_05349"
    %endif
    times 2 - ($ - %%insn_05349) db 0
    %%insn_0534b:
    mov ax,0x8bd ; 0534B B8BD08
    %if ($ - %%insn_0534b) > 3
        %error "LONG_0534B"
    %endif
    times 3 - ($ - %%insn_0534b) db 0
    %%insn_0534e:
    jmp 0x5ced ; 0534E E99C09
    %if ($ - %%insn_0534e) > 3
        %error "LONG_0534E"
    %endif
    times 3 - ($ - %%insn_0534e) db 0
    %if ($ - %%fragment_start) != 284
        %error "SIZE_05235"
    %endif
%endmacro

%macro emit_func_05235_part_01 0
    %%fragment_start:
    %%insn_05353:
    cmp al,0x0 ; 05353 3C00
    %if ($ - %%insn_05353) > 2
        %error "LONG_05353"
    %endif
    times 2 - ($ - %%insn_05353) db 0
    %%insn_05355:
    jnz short 0x535f ; 05355 7508
    %if ($ - %%insn_05355) > 2
        %error "LONG_05355"
    %endif
    times 2 - ($ - %%insn_05355) db 0
    %%insn_05357:
    mov ax,0x8bd ; 05357 B8BD08
    %if ($ - %%insn_05357) > 3
        %error "LONG_05357"
    %endif
    times 3 - ($ - %%insn_05357) db 0
    %%insn_0535a:
    jmp 0x5ced ; 0535A E99009
    %if ($ - %%insn_0535a) > 3
        %error "LONG_0535A"
    %endif
    times 3 - ($ - %%insn_0535a) db 0
    %if ($ - %%fragment_start) != 10
        %error "SIZE_05353"
    %endif
%endmacro

%macro emit_func_05235_part_02 0
    %%fragment_start:
    %%insn_0535f:
    cmp al,0xd ; 0535F 3C0D
    %if ($ - %%insn_0535f) > 2
        %error "LONG_0535F"
    %endif
    times 2 - ($ - %%insn_0535f) db 0
    %%insn_05361:
    jnz short 0x5367 ; 05361 7504
    %if ($ - %%insn_05361) > 2
        %error "LONG_05361"
    %endif
    times 2 - ($ - %%insn_05361) db 0
    %%insn_05363:
    jmp short 0x5346 ; 05363 EBE1
    %if ($ - %%insn_05363) > 2
        %error "LONG_05363"
    %endif
    times 2 - ($ - %%insn_05363) db 0
    %if ($ - %%fragment_start) != 6
        %error "SIZE_0535F"
    %endif
%endmacro

%macro emit_func_05235_part_03 0
    %%fragment_start:
    %%insn_05367:
    cmp al,0xa ; 05367 3C0A
    %if ($ - %%insn_05367) > 2
        %error "LONG_05367"
    %endif
    times 2 - ($ - %%insn_05367) db 0
    %%insn_05369:
    jnz short 0x536f ; 05369 7504
    %if ($ - %%insn_05369) > 2
        %error "LONG_05369"
    %endif
    times 2 - ($ - %%insn_05369) db 0
    %%insn_0536b:
    jmp short 0x5346 ; 0536B EBD9
    %if ($ - %%insn_0536b) > 2
        %error "LONG_0536B"
    %endif
    times 2 - ($ - %%insn_0536b) db 0
    %if ($ - %%fragment_start) != 6
        %error "SIZE_05367"
    %endif
%endmacro

%macro emit_func_05235_part_04 0
    %%fragment_start:
    %%insn_0536f:
    dec si ; 0536F 4E
    %if ($ - %%insn_0536f) > 1
        %error "LONG_0536F"
    %endif
    times 1 - ($ - %%insn_0536f) db 0
    %%insn_05370:
    jmp 0x52bd ; 05370 E94AFF
    %if ($ - %%insn_05370) > 3
        %error "LONG_05370"
    %endif
    times 3 - ($ - %%insn_05370) db 0
    %%insn_05373:
    mov byte [bp-0x2614],0x1 ; 05373 C686ECD901
    %if ($ - %%insn_05373) > 5
        %error "LONG_05373"
    %endif
    times 5 - ($ - %%insn_05373) db 0
    %%insn_05378:
    ret ; 05378 C3
    %if ($ - %%insn_05378) > 1
        %error "LONG_05378"
    %endif
    times 1 - ($ - %%insn_05378) db 0
    %if ($ - %%fragment_start) != 10
        %error "SIZE_0536F"
    %endif
%endmacro
