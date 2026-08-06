; Linear entry 05379 (1000:5379)
; Ghidra working symbol: FUN_1000_5379
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_05379_part_00 0
    %%fragment_start:
func_05379:
    %%insn_05379:
    mov word [bp-0x1b9e],0x0 ; 05379 C78662E40000
    %if ($ - %%insn_05379) > 6
        %error "LONG_05379"
    %endif
    times 6 - ($ - %%insn_05379) db 0
    %%insn_0537f:
    mov word [bp-0x1b9c],0x0 ; 0537F C78664E40000
    %if ($ - %%insn_0537f) > 6
        %error "LONG_0537F"
    %endif
    times 6 - ($ - %%insn_0537f) db 0
    %%insn_05385:
    cmp word [bp-0x1b8a],0x80 ; 05385 81BE76E48000
    %if ($ - %%insn_05385) > 6
        %error "LONG_05385"
    %endif
    times 6 - ($ - %%insn_05385) db 0
    %%insn_0538b:
    jnz short 0x5393 ; 0538B 7506
    %if ($ - %%insn_0538b) > 2
        %error "LONG_0538B"
    %endif
    times 2 - ($ - %%insn_0538b) db 0
    %%insn_0538d:
    mov byte [bp-0x2613],0x1 ; 0538D C686EDD901
    %if ($ - %%insn_0538d) > 5
        %error "LONG_0538D"
    %endif
    times 5 - ($ - %%insn_0538d) db 0
    %%insn_05392:
    ret ; 05392 C3
    %if ($ - %%insn_05392) > 1
        %error "LONG_05392"
    %endif
    times 1 - ($ - %%insn_05392) db 0
    %%insn_05393:
    mov ax,ds ; 05393 8CD8
    %if ($ - %%insn_05393) > 2
        %error "LONG_05393"
    %endif
    times 2 - ($ - %%insn_05393) db 0
    %%insn_05395:
    mov es,ax ; 05395 8EC0
    %if ($ - %%insn_05395) > 2
        %error "LONG_05395"
    %endif
    times 2 - ($ - %%insn_05395) db 0
    %%insn_05397:
    call 0x5018 ; 05397 E87EFC
    %if ($ - %%insn_05397) > 3
        %error "LONG_05397"
    %endif
    times 3 - ($ - %%insn_05397) db 0
    %%insn_0539a:
    mov ax,0x893 ; 0539A B89308
    %if ($ - %%insn_0539a) > 3
        %error "LONG_0539A"
    %endif
    times 3 - ($ - %%insn_0539a) db 0
    %%insn_0539d:
    mov es,ax ; 0539D 8EC0
    %if ($ - %%insn_0539d) > 2
        %error "LONG_0539D"
    %endif
    times 2 - ($ - %%insn_0539d) db 0
    db 0x33, 0xD2 ; 0539F 33D2 | xor dx,dx | encoding preserved
    %%insn_053a1:
    cmp byte [si],0x3b ; 053A1 803C3B
    %if ($ - %%insn_053a1) > 3
        %error "LONG_053A1"
    %endif
    times 3 - ($ - %%insn_053a1) db 0
    %%insn_053a4:
    jnz short 0x53ab ; 053A4 7505
    %if ($ - %%insn_053a4) > 2
        %error "LONG_053A4"
    %endif
    times 2 - ($ - %%insn_053a4) db 0
    %%insn_053a6:
    call 0x4fc7 ; 053A6 E81EFC
    %if ($ - %%insn_053a6) > 3
        %error "LONG_053A6"
    %endif
    times 3 - ($ - %%insn_053a6) db 0
    %%insn_053a9:
    jmp short 0x53a1 ; 053A9 EBF6
    %if ($ - %%insn_053a9) > 2
        %error "LONG_053A9"
    %endif
    times 2 - ($ - %%insn_053a9) db 0
    %%insn_053ab:
    cmp byte [si],0x5b ; 053AB 803C5B
    %if ($ - %%insn_053ab) > 3
        %error "LONG_053AB"
    %endif
    times 3 - ($ - %%insn_053ab) db 0
    %%insn_053ae:
    jnz short 0x53b5 ; 053AE 7505
    %if ($ - %%insn_053ae) > 2
        %error "LONG_053AE"
    %endif
    times 2 - ($ - %%insn_053ae) db 0
    %%insn_053b0:
    call 0x4fc7 ; 053B0 E814FC
    %if ($ - %%insn_053b0) > 3
        %error "LONG_053B0"
    %endif
    times 3 - ($ - %%insn_053b0) db 0
    %%insn_053b3:
    jmp short 0x53a1 ; 053B3 EBEC
    %if ($ - %%insn_053b3) > 2
        %error "LONG_053B3"
    %endif
    times 2 - ($ - %%insn_053b3) db 0
    %%insn_053b5:
    call 0x48c9 ; 053B5 E811F5
    %if ($ - %%insn_053b5) > 3
        %error "LONG_053B5"
    %endif
    times 3 - ($ - %%insn_053b5) db 0
    %%insn_053b8:
    inc si ; 053B8 46
    %if ($ - %%insn_053b8) > 1
        %error "LONG_053B8"
    %endif
    times 1 - ($ - %%insn_053b8) db 0
    %%insn_053b9:
    cmp word [bp-0x2611],0x1 ; 053B9 83BEEFD901
    %if ($ - %%insn_053b9) > 5
        %error "LONG_053B9"
    %endif
    times 5 - ($ - %%insn_053b9) db 0
    %%insn_053be:
    jna 0x5448 ; 053BE 0F868600
    %if ($ - %%insn_053be) > 4
        %error "LONG_053BE"
    %endif
    times 4 - ($ - %%insn_053be) db 0
    %%insn_053c2:
    push ds ; 053C2 1E
    %if ($ - %%insn_053c2) > 1
        %error "LONG_053C2"
    %endif
    times 1 - ($ - %%insn_053c2) db 0
    %%insn_053c3:
    push si ; 053C3 56
    %if ($ - %%insn_053c3) > 1
        %error "LONG_053C3"
    %endif
    times 1 - ($ - %%insn_053c3) db 0
    %%insn_053c4:
    lds di,word [bp-0x260f] ; 053C4 C5BEF1D9
    %if ($ - %%insn_053c4) > 4
        %error "LONG_053C4"
    %endif
    times 4 - ($ - %%insn_053c4) db 0
    %%insn_053c8:
    add di,0x2 ; 053C8 83C702
    %if ($ - %%insn_053c8) > 3
        %error "LONG_053C8"
    %endif
    times 3 - ($ - %%insn_053c8) db 0
    %%insn_053cb:
    mov si,[di] ; 053CB 8B35
    %if ($ - %%insn_053cb) > 2
        %error "LONG_053CB"
    %endif
    times 2 - ($ - %%insn_053cb) db 0
    %%insn_053cd:
    add di,0x2 ; 053CD 83C702
    %if ($ - %%insn_053cd) > 3
        %error "LONG_053CD"
    %endif
    times 3 - ($ - %%insn_053cd) db 0
    %%insn_053d0:
    mov bx,[di] ; 053D0 8B1D
    %if ($ - %%insn_053d0) > 2
        %error "LONG_053D0"
    %endif
    times 2 - ($ - %%insn_053d0) db 0
    %%insn_053d2:
    mov di,0xe0e9 ; 053D2 BFE9E0
    %if ($ - %%insn_053d2) > 3
        %error "LONG_053D2"
    %endif
    times 3 - ($ - %%insn_053d2) db 0
    %%insn_053d5:
    call 0x4ff6 ; 053D5 E81EFC
    %if ($ - %%insn_053d5) > 3
        %error "LONG_053D5"
    %endif
    times 3 - ($ - %%insn_053d5) db 0
    %%insn_053d8:
    jnz short 0x53f3 ; 053D8 7519
    %if ($ - %%insn_053d8) > 2
        %error "LONG_053D8"
    %endif
    times 2 - ($ - %%insn_053d8) db 0
    %%insn_053da:
    mov ax,[bx] ; 053DA 8B07
    %if ($ - %%insn_053da) > 2
        %error "LONG_053DA"
    %endif
    times 2 - ($ - %%insn_053da) db 0
    %%insn_053dc:
    cmp ax,0x6564 ; 053DC 3D6465
    %if ($ - %%insn_053dc) > 3
        %error "LONG_053DC"
    %endif
    times 3 - ($ - %%insn_053dc) db 0
    %%insn_053df:
    jz short 0x53ec ; 053DF 740B
    %if ($ - %%insn_053df) > 2
        %error "LONG_053DF"
    %endif
    times 2 - ($ - %%insn_053df) db 0
    db 0x8B, 0xF3 ; 053E1 8BF3 | mov si,bx | encoding preserved
    %%insn_053e3:
    call 0x4a23 ; 053E3 E83DF6
    %if ($ - %%insn_053e3) > 3
        %error "LONG_053E3"
    %endif
    times 3 - ($ - %%insn_053e3) db 0
    %%insn_053e6:
    mov [bp-0x1b9e],ax ; 053E6 898662E4
    %if ($ - %%insn_053e6) > 4
        %error "LONG_053E6"
    %endif
    times 4 - ($ - %%insn_053e6) db 0
    %%insn_053ea:
    jmp short 0x53f2 ; 053EA EB06
    %if ($ - %%insn_053ea) > 2
        %error "LONG_053EA"
    %endif
    times 2 - ($ - %%insn_053ea) db 0
    %%insn_053ec:
    mov word [bp-0x1b9e],0xffff ; 053EC C78662E4FFFF
    %if ($ - %%insn_053ec) > 6
        %error "LONG_053EC"
    %endif
    times 6 - ($ - %%insn_053ec) db 0
    %%insn_053f2:
    inc dx ; 053F2 42
    %if ($ - %%insn_053f2) > 1
        %error "LONG_053F2"
    %endif
    times 1 - ($ - %%insn_053f2) db 0
    %%insn_053f3:
    mov di,0xe0e5 ; 053F3 BFE5E0
    %if ($ - %%insn_053f3) > 3
        %error "LONG_053F3"
    %endif
    times 3 - ($ - %%insn_053f3) db 0
    %%insn_053f6:
    call 0x4ff6 ; 053F6 E8FDFB
    %if ($ - %%insn_053f6) > 3
        %error "LONG_053F6"
    %endif
    times 3 - ($ - %%insn_053f6) db 0
    %%insn_053f9:
    jnz short 0x5414 ; 053F9 7519
    %if ($ - %%insn_053f9) > 2
        %error "LONG_053F9"
    %endif
    times 2 - ($ - %%insn_053f9) db 0
    %%insn_053fb:
    mov ax,[bx] ; 053FB 8B07
    %if ($ - %%insn_053fb) > 2
        %error "LONG_053FB"
    %endif
    times 2 - ($ - %%insn_053fb) db 0
    %%insn_053fd:
    cmp ax,0x6564 ; 053FD 3D6465
    %if ($ - %%insn_053fd) > 3
        %error "LONG_053FD"
    %endif
    times 3 - ($ - %%insn_053fd) db 0
    %%insn_05400:
    jz short 0x540d ; 05400 740B
    %if ($ - %%insn_05400) > 2
        %error "LONG_05400"
    %endif
    times 2 - ($ - %%insn_05400) db 0
    db 0x8B, 0xF3 ; 05402 8BF3 | mov si,bx | encoding preserved
    %%insn_05404:
    call 0x4a23 ; 05404 E81CF6
    %if ($ - %%insn_05404) > 3
        %error "LONG_05404"
    %endif
    times 3 - ($ - %%insn_05404) db 0
    %%insn_05407:
    mov [bp-0x1b9a],ax ; 05407 898666E4
    %if ($ - %%insn_05407) > 4
        %error "LONG_05407"
    %endif
    times 4 - ($ - %%insn_05407) db 0
    %%insn_0540b:
    jmp short 0x5413 ; 0540B EB06
    %if ($ - %%insn_0540b) > 2
        %error "LONG_0540B"
    %endif
    times 2 - ($ - %%insn_0540b) db 0
    %%insn_0540d:
    mov word [bp-0x1b9a],0xffff ; 0540D C78666E4FFFF
    %if ($ - %%insn_0540d) > 6
        %error "LONG_0540D"
    %endif
    times 6 - ($ - %%insn_0540d) db 0
    %%insn_05413:
    inc dx ; 05413 42
    %if ($ - %%insn_05413) > 1
        %error "LONG_05413"
    %endif
    times 1 - ($ - %%insn_05413) db 0
    %%insn_05414:
    mov di,0xe0ed ; 05414 BFEDE0
    %if ($ - %%insn_05414) > 3
        %error "LONG_05414"
    %endif
    times 3 - ($ - %%insn_05414) db 0
    %%insn_05417:
    call 0x4ff6 ; 05417 E8DCFB
    %if ($ - %%insn_05417) > 3
        %error "LONG_05417"
    %endif
    times 3 - ($ - %%insn_05417) db 0
    %%insn_0541a:
    jnz short 0x5435 ; 0541A 7519
    %if ($ - %%insn_0541a) > 2
        %error "LONG_0541A"
    %endif
    times 2 - ($ - %%insn_0541a) db 0
    %%insn_0541c:
    mov ax,[bx] ; 0541C 8B07
    %if ($ - %%insn_0541c) > 2
        %error "LONG_0541C"
    %endif
    times 2 - ($ - %%insn_0541c) db 0
    %%insn_0541e:
    cmp ax,0x6564 ; 0541E 3D6465
    %if ($ - %%insn_0541e) > 3
        %error "LONG_0541E"
    %endif
    times 3 - ($ - %%insn_0541e) db 0
    %%insn_05421:
    jz short 0x542e ; 05421 740B
    %if ($ - %%insn_05421) > 2
        %error "LONG_05421"
    %endif
    times 2 - ($ - %%insn_05421) db 0
    db 0x8B, 0xF3 ; 05423 8BF3 | mov si,bx | encoding preserved
    %%insn_05425:
    call 0x4a55 ; 05425 E82DF6
    %if ($ - %%insn_05425) > 3
        %error "LONG_05425"
    %endif
    times 3 - ($ - %%insn_05425) db 0
    %%insn_05428:
    mov [bp-0x1b9c],ax ; 05428 898664E4
    %if ($ - %%insn_05428) > 4
        %error "LONG_05428"
    %endif
    times 4 - ($ - %%insn_05428) db 0
    %%insn_0542c:
    jmp short 0x5434 ; 0542C EB06
    %if ($ - %%insn_0542c) > 2
        %error "LONG_0542C"
    %endif
    times 2 - ($ - %%insn_0542c) db 0
    %%insn_0542e:
    mov word [bp-0x1b9c],0xffff ; 0542E C78664E4FFFF
    %if ($ - %%insn_0542e) > 6
        %error "LONG_0542E"
    %endif
    times 6 - ($ - %%insn_0542e) db 0
    %%insn_05434:
    inc dx ; 05434 42
    %if ($ - %%insn_05434) > 1
        %error "LONG_05434"
    %endif
    times 1 - ($ - %%insn_05434) db 0
    %%insn_05435:
    mov di,0xe0e1 ; 05435 BFE1E0
    %if ($ - %%insn_05435) > 3
        %error "LONG_05435"
    %endif
    times 3 - ($ - %%insn_05435) db 0
    %%insn_05438:
    call 0x4ff6 ; 05438 E8BBFB
    %if ($ - %%insn_05438) > 3
        %error "LONG_05438"
    %endif
    times 3 - ($ - %%insn_05438) db 0
    %%insn_0543b:
    jnz short 0x5446 ; 0543B 7509
    %if ($ - %%insn_0543b) > 2
        %error "LONG_0543B"
    %endif
    times 2 - ($ - %%insn_0543b) db 0
    db 0x8B, 0xF3 ; 0543D 8BF3 | mov si,bx | encoding preserved
    %%insn_0543f:
    mov di,0xe469 ; 0543F BF69E4
    %if ($ - %%insn_0543f) > 3
        %error "LONG_0543F"
    %endif
    times 3 - ($ - %%insn_0543f) db 0
    %%insn_05442:
    call 0x5010 ; 05442 E8CBFB
    %if ($ - %%insn_05442) > 3
        %error "LONG_05442"
    %endif
    times 3 - ($ - %%insn_05442) db 0
    %%insn_05445:
    inc dx ; 05445 42
    %if ($ - %%insn_05445) > 1
        %error "LONG_05445"
    %endif
    times 1 - ($ - %%insn_05445) db 0
    %%insn_05446:
    pop si ; 05446 5E
    %if ($ - %%insn_05446) > 1
        %error "LONG_05446"
    %endif
    times 1 - ($ - %%insn_05446) db 0
    %%insn_05447:
    pop ds ; 05447 1F
    %if ($ - %%insn_05447) > 1
        %error "LONG_05447"
    %endif
    times 1 - ($ - %%insn_05447) db 0
    %%insn_05448:
    cmp dx,0x4 ; 05448 83FA04
    %if ($ - %%insn_05448) > 3
        %error "LONG_05448"
    %endif
    times 3 - ($ - %%insn_05448) db 0
    %%insn_0544b:
    jz short 0x547a ; 0544B 742D
    %if ($ - %%insn_0544b) > 2
        %error "LONG_0544B"
    %endif
    times 2 - ($ - %%insn_0544b) db 0
    %%insn_0544d:
    lodsb ; 0544D AC
    %if ($ - %%insn_0544d) > 1
        %error "LONG_0544D"
    %endif
    times 1 - ($ - %%insn_0544d) db 0
    %%insn_0544e:
    cmp al,0x1a ; 0544E 3C1A
    %if ($ - %%insn_0544e) > 2
        %error "LONG_0544E"
    %endif
    times 2 - ($ - %%insn_0544e) db 0
    %%insn_05450:
    jnz short 0x545a ; 05450 7508
    %if ($ - %%insn_05450) > 2
        %error "LONG_05450"
    %endif
    times 2 - ($ - %%insn_05450) db 0
    %%insn_05452:
    mov ax,0x8bd ; 05452 B8BD08
    %if ($ - %%insn_05452) > 3
        %error "LONG_05452"
    %endif
    times 3 - ($ - %%insn_05452) db 0
    %%insn_05455:
    jmp 0x5ced ; 05455 E99508
    %if ($ - %%insn_05455) > 3
        %error "LONG_05455"
    %endif
    times 3 - ($ - %%insn_05455) db 0
    %if ($ - %%fragment_start) != 223
        %error "SIZE_05379"
    %endif
%endmacro

%macro emit_func_05379_part_01 0
    %%fragment_start:
    %%insn_0545a:
    cmp al,0x0 ; 0545A 3C00
    %if ($ - %%insn_0545a) > 2
        %error "LONG_0545A"
    %endif
    times 2 - ($ - %%insn_0545a) db 0
    %%insn_0545c:
    jnz short 0x5466 ; 0545C 7508
    %if ($ - %%insn_0545c) > 2
        %error "LONG_0545C"
    %endif
    times 2 - ($ - %%insn_0545c) db 0
    %%insn_0545e:
    mov ax,0x8bd ; 0545E B8BD08
    %if ($ - %%insn_0545e) > 3
        %error "LONG_0545E"
    %endif
    times 3 - ($ - %%insn_0545e) db 0
    %%insn_05461:
    jmp 0x5ced ; 05461 E98908
    %if ($ - %%insn_05461) > 3
        %error "LONG_05461"
    %endif
    times 3 - ($ - %%insn_05461) db 0
    %if ($ - %%fragment_start) != 10
        %error "SIZE_0545A"
    %endif
%endmacro

%macro emit_func_05379_part_02 0
    %%fragment_start:
    %%insn_05466:
    cmp al,0xd ; 05466 3C0D
    %if ($ - %%insn_05466) > 2
        %error "LONG_05466"
    %endif
    times 2 - ($ - %%insn_05466) db 0
    %%insn_05468:
    jnz short 0x546e ; 05468 7504
    %if ($ - %%insn_05468) > 2
        %error "LONG_05468"
    %endif
    times 2 - ($ - %%insn_05468) db 0
    %%insn_0546a:
    jmp short 0x544d ; 0546A EBE1
    %if ($ - %%insn_0546a) > 2
        %error "LONG_0546A"
    %endif
    times 2 - ($ - %%insn_0546a) db 0
    %if ($ - %%fragment_start) != 6
        %error "SIZE_05466"
    %endif
%endmacro

%macro emit_func_05379_part_03 0
    %%fragment_start:
    %%insn_0546e:
    cmp al,0xa ; 0546E 3C0A
    %if ($ - %%insn_0546e) > 2
        %error "LONG_0546E"
    %endif
    times 2 - ($ - %%insn_0546e) db 0
    %%insn_05470:
    jnz short 0x5476 ; 05470 7504
    %if ($ - %%insn_05470) > 2
        %error "LONG_05470"
    %endif
    times 2 - ($ - %%insn_05470) db 0
    %%insn_05472:
    jmp short 0x544d ; 05472 EBD9
    %if ($ - %%insn_05472) > 2
        %error "LONG_05472"
    %endif
    times 2 - ($ - %%insn_05472) db 0
    %if ($ - %%fragment_start) != 6
        %error "SIZE_0546E"
    %endif
%endmacro

%macro emit_func_05379_part_04 0
    %%fragment_start:
    %%insn_05476:
    dec si ; 05476 4E
    %if ($ - %%insn_05476) > 1
        %error "LONG_05476"
    %endif
    times 1 - ($ - %%insn_05476) db 0
    %%insn_05477:
    jmp 0x53a1 ; 05477 E927FF
    %if ($ - %%insn_05477) > 3
        %error "LONG_05477"
    %endif
    times 3 - ($ - %%insn_05477) db 0
    %%insn_0547a:
    mov byte [bp-0x2613],0x1 ; 0547A C686EDD901
    %if ($ - %%insn_0547a) > 5
        %error "LONG_0547A"
    %endif
    times 5 - ($ - %%insn_0547a) db 0
    %%insn_0547f:
    ret ; 0547F C3
    %if ($ - %%insn_0547f) > 1
        %error "LONG_0547F"
    %endif
    times 1 - ($ - %%insn_0547f) db 0
    %if ($ - %%fragment_start) != 10
        %error "SIZE_05476"
    %endif
%endmacro
