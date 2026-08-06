; Linear entry 048C9 (1000:48c9)
; Ghidra working symbol: FUN_1000_48c9
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_048c9_part_00 0
    %%fragment_start:
func_048c9:
    %%insn_048c9:
    mov di,0xe266 ; 048C9 BF66E2
    %if ($ - %%insn_048c9) > 3
        %error "LONG_048C9"
    %endif
    times 3 - ($ - %%insn_048c9) db 0
    %%insn_048cc:
    mov ax,0x893 ; 048CC B89308
    %if ($ - %%insn_048cc) > 3
        %error "LONG_048CC"
    %endif
    times 3 - ($ - %%insn_048cc) db 0
    %%insn_048cf:
    mov es,ax ; 048CF 8EC0
    %if ($ - %%insn_048cf) > 2
        %error "LONG_048CF"
    %endif
    times 2 - ($ - %%insn_048cf) db 0
    db 0x33, 0xED ; 048D1 33ED | xor bp,bp | encoding preserved
    %%insn_048d3:
    mov word [bp-0x2611],0x1 ; 048D3 C786EFD90100
    %if ($ - %%insn_048d3) > 6
        %error "LONG_048D3"
    %endif
    times 6 - ($ - %%insn_048d3) db 0
    %%insn_048d9:
    mov [bp-0x260f],di ; 048D9 89BEF1D9
    %if ($ - %%insn_048d9) > 4
        %error "LONG_048D9"
    %endif
    times 4 - ($ - %%insn_048d9) db 0
    %%insn_048dd:
    mov word [bp-0x260d],es ; 048DD 8C86F3D9
    %if ($ - %%insn_048dd) > 4
        %error "LONG_048DD"
    %endif
    times 4 - ($ - %%insn_048dd) db 0
    %%insn_048e1:
    mov ax,0x50 ; 048E1 B85000
    %if ($ - %%insn_048e1) > 3
        %error "LONG_048E1"
    %endif
    times 3 - ($ - %%insn_048e1) db 0
    %%insn_048e4:
    stosw ; 048E4 AB
    %if ($ - %%insn_048e4) > 1
        %error "LONG_048E4"
    %endif
    times 1 - ($ - %%insn_048e4) db 0
    %%insn_048e5:
    call 0x495d ; 048E5 E87500
    %if ($ - %%insn_048e5) > 3
        %error "LONG_048E5"
    %endif
    times 3 - ($ - %%insn_048e5) db 0
    %%insn_048e8:
    cmp al,0xd ; 048E8 3C0D
    %if ($ - %%insn_048e8) > 2
        %error "LONG_048E8"
    %endif
    times 2 - ($ - %%insn_048e8) db 0
    %%insn_048ea:
    jz short 0x4938 ; 048EA 744C
    %if ($ - %%insn_048ea) > 2
        %error "LONG_048EA"
    %endif
    times 2 - ($ - %%insn_048ea) db 0
    %%insn_048ec:
    cmp al,0x1a ; 048EC 3C1A
    %if ($ - %%insn_048ec) > 2
        %error "LONG_048EC"
    %endif
    times 2 - ($ - %%insn_048ec) db 0
    %%insn_048ee:
    jnz short 0x48f6 ; 048EE 7506
    %if ($ - %%insn_048ee) > 2
        %error "LONG_048EE"
    %endif
    times 2 - ($ - %%insn_048ee) db 0
    %%insn_048f0:
    mov ax,0x8bd ; 048F0 B8BD08
    %if ($ - %%insn_048f0) > 3
        %error "LONG_048F0"
    %endif
    times 3 - ($ - %%insn_048f0) db 0
    %%insn_048f3:
    jmp 0x5ced ; 048F3 E9F713
    %if ($ - %%insn_048f3) > 3
        %error "LONG_048F3"
    %endif
    times 3 - ($ - %%insn_048f3) db 0
    %%insn_048f6:
    inc word [bp-0x2611] ; 048F6 FF86EFD9
    %if ($ - %%insn_048f6) > 4
        %error "LONG_048F6"
    %endif
    times 4 - ($ - %%insn_048f6) db 0
    %%insn_048fa:
    jmp short 0x4907 ; 048FA EB0B
    %if ($ - %%insn_048fa) > 2
        %error "LONG_048FA"
    %endif
    times 2 - ($ - %%insn_048fa) db 0
    %%insn_048fc:
    cmp byte [bp-0x2608],0x0 ; 048FC 80BEF8D900
    %if ($ - %%insn_048fc) > 5
        %error "LONG_048FC"
    %endif
    times 5 - ($ - %%insn_048fc) db 0
    %%insn_04901:
    jz short 0x4906 ; 04901 7403
    %if ($ - %%insn_04901) > 2
        %error "LONG_04901"
    %endif
    times 2 - ($ - %%insn_04901) db 0
    %%insn_04903:
    call 0x4feb ; 04903 E8E506
    %if ($ - %%insn_04903) > 3
        %error "LONG_04903"
    %endif
    times 3 - ($ - %%insn_04903) db 0
    %%insn_04906:
    stosb ; 04906 AA
    %if ($ - %%insn_04906) > 1
        %error "LONG_04906"
    %endif
    times 1 - ($ - %%insn_04906) db 0
    %%insn_04907:
    lodsb ; 04907 AC
    %if ($ - %%insn_04907) > 1
        %error "LONG_04907"
    %endif
    times 1 - ($ - %%insn_04907) db 0
    %%insn_04908:
    cmp al,0x23 ; 04908 3C23
    %if ($ - %%insn_04908) > 2
        %error "LONG_04908"
    %endif
    times 2 - ($ - %%insn_04908) db 0
    %%insn_0490a:
    jnz short 0x491b ; 0490A 750F
    %if ($ - %%insn_0490a) > 2
        %error "LONG_0490A"
    %endif
    times 2 - ($ - %%insn_0490a) db 0
    %%insn_0490c:
    lodsb ; 0490C AC
    %if ($ - %%insn_0490c) > 1
        %error "LONG_0490C"
    %endif
    times 1 - ($ - %%insn_0490c) db 0
    %%insn_0490d:
    sub al,0x61 ; 0490D 2C61
    %if ($ - %%insn_0490d) > 2
        %error "LONG_0490D"
    %endif
    times 2 - ($ - %%insn_0490d) db 0
    db 0x32, 0xE4 ; 0490F 32E4 | xor ah,ah | encoding preserved
    %%insn_04911:
    mov bx,0xdba2 ; 04911 BBA2DB
    %if ($ - %%insn_04911) > 3
        %error "LONG_04911"
    %endif
    times 3 - ($ - %%insn_04911) db 0
    db 0x03, 0xD8 ; 04914 03D8 | add bx,ax | encoding preserved
    %%insn_04916:
    mov al,[ss:bx] ; 04916 368A07
    %if ($ - %%insn_04916) > 3
        %error "LONG_04916"
    %endif
    times 3 - ($ - %%insn_04916) db 0
    %%insn_04919:
    add al,0x30 ; 04919 0430
    %if ($ - %%insn_04919) > 2
        %error "LONG_04919"
    %endif
    times 2 - ($ - %%insn_04919) db 0
    %%insn_0491b:
    cmp al,0x40 ; 0491B 3C40
    %if ($ - %%insn_0491b) > 2
        %error "LONG_0491B"
    %endif
    times 2 - ($ - %%insn_0491b) db 0
    %%insn_0491d:
    jnz short 0x4921 ; 0491D 7502
    %if ($ - %%insn_0491d) > 2
        %error "LONG_0491D"
    %endif
    times 2 - ($ - %%insn_0491d) db 0
    %%insn_0491f:
    mov al,0x64 ; 0491F B064
    %if ($ - %%insn_0491f) > 2
        %error "LONG_0491F"
    %endif
    times 2 - ($ - %%insn_0491f) db 0
    %%insn_04921:
    cmp al,0x20 ; 04921 3C20
    %if ($ - %%insn_04921) > 2
        %error "LONG_04921"
    %endif
    times 2 - ($ - %%insn_04921) db 0
    %%insn_04923:
    jna short 0x4931 ; 04923 760C
    %if ($ - %%insn_04923) > 2
        %error "LONG_04923"
    %endif
    times 2 - ($ - %%insn_04923) db 0
    %%insn_04925:
    cmp al,0x2c ; 04925 3C2C
    %if ($ - %%insn_04925) > 2
        %error "LONG_04925"
    %endif
    times 2 - ($ - %%insn_04925) db 0
    %%insn_04927:
    jz short 0x4931 ; 04927 7408
    %if ($ - %%insn_04927) > 2
        %error "LONG_04927"
    %endif
    times 2 - ($ - %%insn_04927) db 0
    %%insn_04929:
    cmp al,0x3d ; 04929 3C3D
    %if ($ - %%insn_04929) > 2
        %error "LONG_04929"
    %endif
    times 2 - ($ - %%insn_04929) db 0
    %%insn_0492b:
    jz short 0x4931 ; 0492B 7404
    %if ($ - %%insn_0492b) > 2
        %error "LONG_0492B"
    %endif
    times 2 - ($ - %%insn_0492b) db 0
    %%insn_0492d:
    cmp al,0x7e ; 0492D 3C7E
    %if ($ - %%insn_0492d) > 2
        %error "LONG_0492D"
    %endif
    times 2 - ($ - %%insn_0492d) db 0
    %%insn_0492f:
    jna short 0x48fc ; 0492F 76CB
    %if ($ - %%insn_0492f) > 2
        %error "LONG_0492F"
    %endif
    times 2 - ($ - %%insn_0492f) db 0
    %%insn_04931:
    cmp al,0xd ; 04931 3C0D
    %if ($ - %%insn_04931) > 2
        %error "LONG_04931"
    %endif
    times 2 - ($ - %%insn_04931) db 0
    %%insn_04933:
    mov al,0x0 ; 04933 B000
    %if ($ - %%insn_04933) > 2
        %error "LONG_04933"
    %endif
    times 2 - ($ - %%insn_04933) db 0
    %%insn_04935:
    stosb ; 04935 AA
    %if ($ - %%insn_04935) > 1
        %error "LONG_04935"
    %endif
    times 1 - ($ - %%insn_04935) db 0
    %%insn_04936:
    jnz short 0x48e5 ; 04936 75AD
    %if ($ - %%insn_04936) > 2
        %error "LONG_04936"
    %endif
    times 2 - ($ - %%insn_04936) db 0
    %%insn_04938:
    inc di ; 04938 47
    %if ($ - %%insn_04938) > 1
        %error "LONG_04938"
    %endif
    times 1 - ($ - %%insn_04938) db 0
    %%insn_04939:
    and di,0xfffffffffffffffe ; 04939 83E7FE
    %if ($ - %%insn_04939) > 3
        %error "LONG_04939"
    %endif
    times 3 - ($ - %%insn_04939) db 0
    %%insn_0493c:
    push si ; 0493C 56
    %if ($ - %%insn_0493c) > 1
        %error "LONG_0493C"
    %endif
    times 1 - ($ - %%insn_0493c) db 0
    %%insn_0493d:
    push ds ; 0493D 1E
    %if ($ - %%insn_0493d) > 1
        %error "LONG_0493D"
    %endif
    times 1 - ($ - %%insn_0493d) db 0
    %%insn_0493e:
    lds si,word [bp-0x260f] ; 0493E C5B6F1D9
    %if ($ - %%insn_0493e) > 4
        %error "LONG_0493E"
    %endif
    times 4 - ($ - %%insn_0493e) db 0
    %%insn_04942:
    mov [bp-0x260f],di ; 04942 89BEF1D9
    %if ($ - %%insn_04942) > 4
        %error "LONG_04942"
    %endif
    times 4 - ($ - %%insn_04942) db 0
    %%insn_04946:
    mov cx,[bp-0x2611] ; 04946 8B8EEFD9
    %if ($ - %%insn_04946) > 4
        %error "LONG_04946"
    %endif
    times 4 - ($ - %%insn_04946) db 0
    db 0x8B, 0xC6 ; 0494A 8BC6 | mov ax,si | encoding preserved
    %%insn_0494c:
    stosw ; 0494C AB
    %if ($ - %%insn_0494c) > 1
        %error "LONG_0494C"
    %endif
    times 1 - ($ - %%insn_0494c) db 0
    %%insn_0494d:
    call 0x4957 ; 0494D E80700
    %if ($ - %%insn_0494d) > 3
        %error "LONG_0494D"
    %endif
    times 3 - ($ - %%insn_0494d) db 0
    %%insn_04950:
    dec cx ; 04950 49
    %if ($ - %%insn_04950) > 1
        %error "LONG_04950"
    %endif
    times 1 - ($ - %%insn_04950) db 0
    %%insn_04951:
    jnz short 0x494a ; 04951 75F7
    %if ($ - %%insn_04951) > 2
        %error "LONG_04951"
    %endif
    times 2 - ($ - %%insn_04951) db 0
    %%insn_04953:
    clc ; 04953 F8
    %if ($ - %%insn_04953) > 1
        %error "LONG_04953"
    %endif
    times 1 - ($ - %%insn_04953) db 0
    %%insn_04954:
    pop ds ; 04954 1F
    %if ($ - %%insn_04954) > 1
        %error "LONG_04954"
    %endif
    times 1 - ($ - %%insn_04954) db 0
    %%insn_04955:
    pop si ; 04955 5E
    %if ($ - %%insn_04955) > 1
        %error "LONG_04955"
    %endif
    times 1 - ($ - %%insn_04955) db 0
    %%insn_04956:
    ret ; 04956 C3
    %if ($ - %%insn_04956) > 1
        %error "LONG_04956"
    %endif
    times 1 - ($ - %%insn_04956) db 0
    %if ($ - %%fragment_start) != 142
        %error "SIZE_048C9"
    %endif
%endmacro
