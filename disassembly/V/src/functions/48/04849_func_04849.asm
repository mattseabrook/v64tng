; Linear entry 04849 (1000:4849)
; Ghidra working symbol: FUN_1000_4849
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_04849_part_00 0
    %%fragment_start:
func_04849:
    %%insn_04849:
    push di ; 04849 57
    %if ($ - %%insn_04849) > 1
        %error "LONG_04849"
    %endif
    times 1 - ($ - %%insn_04849) db 0
    %%insn_0484a:
    push bx ; 0484A 53
    %if ($ - %%insn_0484a) > 1
        %error "LONG_0484A"
    %endif
    times 1 - ($ - %%insn_0484a) db 0
    %%insn_0484b:
    push es ; 0484B 06
    %if ($ - %%insn_0484b) > 1
        %error "LONG_0484B"
    %endif
    times 1 - ($ - %%insn_0484b) db 0
    %%insn_0484c:
    mov di,0xda02 ; 0484C BF02DA
    %if ($ - %%insn_0484c) > 3
        %error "LONG_0484C"
    %endif
    times 3 - ($ - %%insn_0484c) db 0
    %%insn_0484f:
    mov ax,0x893 ; 0484F B89308
    %if ($ - %%insn_0484f) > 3
        %error "LONG_0484F"
    %endif
    times 3 - ($ - %%insn_0484f) db 0
    %%insn_04852:
    mov es,ax ; 04852 8EC0
    %if ($ - %%insn_04852) > 2
        %error "LONG_04852"
    %endif
    times 2 - ($ - %%insn_04852) db 0
    %%insn_04854:
    lodsb ; 04854 AC
    %if ($ - %%insn_04854) > 1
        %error "LONG_04854"
    %endif
    times 1 - ($ - %%insn_04854) db 0
    db 0x22, 0xC0 ; 04855 22C0 | and al,al | encoding preserved
    %%insn_04857:
    jz short 0x486f ; 04857 7416
    %if ($ - %%insn_04857) > 2
        %error "LONG_04857"
    %endif
    times 2 - ($ - %%insn_04857) db 0
    %%insn_04859:
    cmp al,0x23 ; 04859 3C23
    %if ($ - %%insn_04859) > 2
        %error "LONG_04859"
    %endif
    times 2 - ($ - %%insn_04859) db 0
    %%insn_0485b:
    jnz short 0x486c ; 0485B 750F
    %if ($ - %%insn_0485b) > 2
        %error "LONG_0485B"
    %endif
    times 2 - ($ - %%insn_0485b) db 0
    %%insn_0485d:
    lodsb ; 0485D AC
    %if ($ - %%insn_0485d) > 1
        %error "LONG_0485D"
    %endif
    times 1 - ($ - %%insn_0485d) db 0
    %%insn_0485e:
    sub al,0x61 ; 0485E 2C61
    %if ($ - %%insn_0485e) > 2
        %error "LONG_0485E"
    %endif
    times 2 - ($ - %%insn_0485e) db 0
    db 0x32, 0xE4 ; 04860 32E4 | xor ah,ah | encoding preserved
    %%insn_04862:
    mov bx,0xdba2 ; 04862 BBA2DB
    %if ($ - %%insn_04862) > 3
        %error "LONG_04862"
    %endif
    times 3 - ($ - %%insn_04862) db 0
    db 0x03, 0xD8 ; 04865 03D8 | add bx,ax | encoding preserved
    %%insn_04867:
    mov al,[es:bx] ; 04867 268A07
    %if ($ - %%insn_04867) > 3
        %error "LONG_04867"
    %endif
    times 3 - ($ - %%insn_04867) db 0
    %%insn_0486a:
    add al,0x30 ; 0486A 0430
    %if ($ - %%insn_0486a) > 2
        %error "LONG_0486A"
    %endif
    times 2 - ($ - %%insn_0486a) db 0
    %%insn_0486c:
    stosb ; 0486C AA
    %if ($ - %%insn_0486c) > 1
        %error "LONG_0486C"
    %endif
    times 1 - ($ - %%insn_0486c) db 0
    %%insn_0486d:
    jmp short 0x4854 ; 0486D EBE5
    %if ($ - %%insn_0486d) > 2
        %error "LONG_0486D"
    %endif
    times 2 - ($ - %%insn_0486d) db 0
    %%insn_0486f:
    mov byte [es:di],0x2e ; 0486F 26C6052E
    %if ($ - %%insn_0486f) > 4
        %error "LONG_0486F"
    %endif
    times 4 - ($ - %%insn_0486f) db 0
    %%insn_04873:
    mov byte [es:di+0x1],0x76 ; 04873 26C6450176
    %if ($ - %%insn_04873) > 5
        %error "LONG_04873"
    %endif
    times 5 - ($ - %%insn_04873) db 0
    %%insn_04878:
    mov byte [es:di+0x2],0x64 ; 04878 26C6450264
    %if ($ - %%insn_04878) > 5
        %error "LONG_04878"
    %endif
    times 5 - ($ - %%insn_04878) db 0
    %%insn_0487d:
    mov byte [es:di+0x3],0x78 ; 0487D 26C6450378
    %if ($ - %%insn_0487d) > 5
        %error "LONG_0487D"
    %endif
    times 5 - ($ - %%insn_0487d) db 0
    %%insn_04882:
    mov byte [es:di+0x4],0x0 ; 04882 26C6450400
    %if ($ - %%insn_04882) > 5
        %error "LONG_04882"
    %endif
    times 5 - ($ - %%insn_04882) db 0
    %%insn_04887:
    mov di,0xda12 ; 04887 BF12DA
    %if ($ - %%insn_04887) > 3
        %error "LONG_04887"
    %endif
    times 3 - ($ - %%insn_04887) db 0
    %%insn_0488a:
    mov bx,0xda02 ; 0488A BB02DA
    %if ($ - %%insn_0488a) > 3
        %error "LONG_0488A"
    %endif
    times 3 - ($ - %%insn_0488a) db 0
    %%insn_0488d:
    mov al,[es:bx] ; 0488D 268A07
    %if ($ - %%insn_0488d) > 3
        %error "LONG_0488D"
    %endif
    times 3 - ($ - %%insn_0488d) db 0
    %%insn_04890:
    inc bx ; 04890 43
    %if ($ - %%insn_04890) > 1
        %error "LONG_04890"
    %endif
    times 1 - ($ - %%insn_04890) db 0
    db 0x22, 0xC0 ; 04891 22C0 | and al,al | encoding preserved
    %%insn_04893:
    jz short 0x48be ; 04893 7429
    %if ($ - %%insn_04893) > 2
        %error "LONG_04893"
    %endif
    times 2 - ($ - %%insn_04893) db 0
    %%insn_04895:
    cmp al,0x7c ; 04895 3C7C
    %if ($ - %%insn_04895) > 2
        %error "LONG_04895"
    %endif
    times 2 - ($ - %%insn_04895) db 0
    %%insn_04897:
    jnz short 0x48bb ; 04897 7522
    %if ($ - %%insn_04897) > 2
        %error "LONG_04897"
    %endif
    times 2 - ($ - %%insn_04897) db 0
    %%insn_04899:
    push bx ; 04899 53
    %if ($ - %%insn_04899) > 1
        %error "LONG_04899"
    %endif
    times 1 - ($ - %%insn_04899) db 0
    %%insn_0489a:
    push cx ; 0489A 51
    %if ($ - %%insn_0489a) > 1
        %error "LONG_0489A"
    %endif
    times 1 - ($ - %%insn_0489a) db 0
    %%insn_0489b:
    mov al,[es:bx] ; 0489B 268A07
    %if ($ - %%insn_0489b) > 3
        %error "LONG_0489B"
    %endif
    times 3 - ($ - %%insn_0489b) db 0
    %%insn_0489e:
    sub al,0x30 ; 0489E 2C30
    %if ($ - %%insn_0489e) > 2
        %error "LONG_0489E"
    %endif
    times 2 - ($ - %%insn_0489e) db 0
    %%insn_048a0:
    mov cl,0xa ; 048A0 B10A
    %if ($ - %%insn_048a0) > 2
        %error "LONG_048A0"
    %endif
    times 2 - ($ - %%insn_048a0) db 0
    %%insn_048a2:
    mul cl ; 048A2 F6E1
    %if ($ - %%insn_048a2) > 2
        %error "LONG_048A2"
    %endif
    times 2 - ($ - %%insn_048a2) db 0
    %%insn_048a4:
    add al,[es:bx+0x1] ; 048A4 26024701
    %if ($ - %%insn_048a4) > 4
        %error "LONG_048A4"
    %endif
    times 4 - ($ - %%insn_048a4) db 0
    %%insn_048a8:
    sub al,0x30 ; 048A8 2C30
    %if ($ - %%insn_048a8) > 2
        %error "LONG_048A8"
    %endif
    times 2 - ($ - %%insn_048a8) db 0
    db 0x32, 0xE4 ; 048AA 32E4 | xor ah,ah | encoding preserved
    %%insn_048ac:
    mov bx,0xdbbb ; 048AC BBBBDB
    %if ($ - %%insn_048ac) > 3
        %error "LONG_048AC"
    %endif
    times 3 - ($ - %%insn_048ac) db 0
    db 0x03, 0xD8 ; 048AF 03D8 | add bx,ax | encoding preserved
    %%insn_048b1:
    mov al,[ss:bx] ; 048B1 368A07
    %if ($ - %%insn_048b1) > 3
        %error "LONG_048B1"
    %endif
    times 3 - ($ - %%insn_048b1) db 0
    %%insn_048b4:
    add al,0x30 ; 048B4 0430
    %if ($ - %%insn_048b4) > 2
        %error "LONG_048B4"
    %endif
    times 2 - ($ - %%insn_048b4) db 0
    %%insn_048b6:
    pop cx ; 048B6 59
    %if ($ - %%insn_048b6) > 1
        %error "LONG_048B6"
    %endif
    times 1 - ($ - %%insn_048b6) db 0
    %%insn_048b7:
    pop bx ; 048B7 5B
    %if ($ - %%insn_048b7) > 1
        %error "LONG_048B7"
    %endif
    times 1 - ($ - %%insn_048b7) db 0
    %%insn_048b8:
    add bx,0x2 ; 048B8 83C302
    %if ($ - %%insn_048b8) > 3
        %error "LONG_048B8"
    %endif
    times 3 - ($ - %%insn_048b8) db 0
    %%insn_048bb:
    stosb ; 048BB AA
    %if ($ - %%insn_048bb) > 1
        %error "LONG_048BB"
    %endif
    times 1 - ($ - %%insn_048bb) db 0
    %%insn_048bc:
    jmp short 0x488d ; 048BC EBCF
    %if ($ - %%insn_048bc) > 2
        %error "LONG_048BC"
    %endif
    times 2 - ($ - %%insn_048bc) db 0
    %%insn_048be:
    mov byte [es:di],0x0 ; 048BE 26C60500
    %if ($ - %%insn_048be) > 4
        %error "LONG_048BE"
    %endif
    times 4 - ($ - %%insn_048be) db 0
    %%insn_048c2:
    mov dx,0xda12 ; 048C2 BA12DA
    %if ($ - %%insn_048c2) > 3
        %error "LONG_048C2"
    %endif
    times 3 - ($ - %%insn_048c2) db 0
    %%insn_048c5:
    pop es ; 048C5 07
    %if ($ - %%insn_048c5) > 1
        %error "LONG_048C5"
    %endif
    times 1 - ($ - %%insn_048c5) db 0
    %%insn_048c6:
    pop bx ; 048C6 5B
    %if ($ - %%insn_048c6) > 1
        %error "LONG_048C6"
    %endif
    times 1 - ($ - %%insn_048c6) db 0
    %%insn_048c7:
    pop di ; 048C7 5F
    %if ($ - %%insn_048c7) > 1
        %error "LONG_048C7"
    %endif
    times 1 - ($ - %%insn_048c7) db 0
    %%insn_048c8:
    ret ; 048C8 C3
    %if ($ - %%insn_048c8) > 1
        %error "LONG_048C8"
    %endif
    times 1 - ($ - %%insn_048c8) db 0
    %if ($ - %%fragment_start) != 128
        %error "SIZE_04849"
    %endif
%endmacro
