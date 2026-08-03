; Linear entry 03941 (1000:3941)
; Ghidra working symbol: FUN_1000_3941
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_03941_part_00 0
    %%fragment_start:
func_03941:
    %%insn_03941:
    pusha ; 03941 60
    %if ($ - %%insn_03941) > 1
        %error "LONG_03941"
    %endif
    times 1 - ($ - %%insn_03941) db 0
    %%insn_03942:
    push ds ; 03942 1E
    %if ($ - %%insn_03942) > 1
        %error "LONG_03942"
    %endif
    times 1 - ($ - %%insn_03942) db 0
    %%insn_03943:
    push ax ; 03943 50
    %if ($ - %%insn_03943) > 1
        %error "LONG_03943"
    %endif
    times 1 - ($ - %%insn_03943) db 0
    %%insn_03944:
    mov bx,0x893 ; 03944 BB9308
    %if ($ - %%insn_03944) > 3
        %error "LONG_03944"
    %endif
    times 3 - ($ - %%insn_03944) db 0
    %%insn_03947:
    mov ds,bx ; 03947 8EDB
    %if ($ - %%insn_03947) > 2
        %error "LONG_03947"
    %endif
    times 2 - ($ - %%insn_03947) db 0
    %%insn_03949:
    shr ax,byte 0xa ; 03949 C1E80A
    %if ($ - %%insn_03949) > 3
        %error "LONG_03949"
    %endif
    times 3 - ($ - %%insn_03949) db 0
    %%insn_0394c:
    cmp ax,[0xd853] ; 0394C 3B0653D8
    %if ($ - %%insn_0394c) > 4
        %error "LONG_0394C"
    %endif
    times 4 - ($ - %%insn_0394c) db 0
    %%insn_03950:
    jz short 0x398b ; 03950 7439
    %if ($ - %%insn_03950) > 2
        %error "LONG_03950"
    %endif
    times 2 - ($ - %%insn_03950) db 0
    %%insn_03952:
    cmp word [0xd86b],0xffffffffffffffff ; 03952 833E6BD8FF
    %if ($ - %%insn_03952) > 5
        %error "LONG_03952"
    %endif
    times 5 - ($ - %%insn_03952) db 0
    %%insn_03957:
    jz short 0x395e ; 03957 7405
    %if ($ - %%insn_03957) > 2
        %error "LONG_03957"
    %endif
    times 2 - ($ - %%insn_03957) db 0
    %%insn_03959:
    push ax ; 03959 50
    %if ($ - %%insn_03959) > 1
        %error "LONG_03959"
    %endif
    times 1 - ($ - %%insn_03959) db 0
    %%insn_0395a:
    call 0x376a ; 0395A E80DFE
    %if ($ - %%insn_0395a) > 3
        %error "LONG_0395A"
    %endif
    times 3 - ($ - %%insn_0395a) db 0
    %%insn_0395d:
    pop ax ; 0395D 58
    %if ($ - %%insn_0395d) > 1
        %error "LONG_0395D"
    %endif
    times 1 - ($ - %%insn_0395d) db 0
    %%insn_0395e:
    mov [0xd853],ax ; 0395E A353D8
    %if ($ - %%insn_0395e) > 3
        %error "LONG_0395E"
    %endif
    times 3 - ($ - %%insn_0395e) db 0
    db 0x03, 0xC0 ; 03961 03C0 | add ax,ax | encoding preserved
    %%insn_03963:
    add ax,0xd807 ; 03963 0507D8
    %if ($ - %%insn_03963) > 3
        %error "LONG_03963"
    %endif
    times 3 - ($ - %%insn_03963) db 0
    db 0x8B, 0xD8 ; 03966 8BD8 | mov bx,ax | encoding preserved
    %%insn_03968:
    mov ax,[bx] ; 03968 8B07
    %if ($ - %%insn_03968) > 2
        %error "LONG_03968"
    %endif
    times 2 - ($ - %%insn_03968) db 0
    db 0x8B, 0xD0 ; 0396A 8BD0 | mov dx,ax | encoding preserved
    db 0x8B, 0xD8 ; 0396C 8BD8 | mov bx,ax | encoding preserved
    %%insn_0396e:
    mov al,[bx] ; 0396E 8A07
    %if ($ - %%insn_0396e) > 2
        %error "LONG_0396E"
    %endif
    times 2 - ($ - %%insn_0396e) db 0
    %%insn_03970:
    inc bx ; 03970 43
    %if ($ - %%insn_03970) > 1
        %error "LONG_03970"
    %endif
    times 1 - ($ - %%insn_03970) db 0
    db 0x22, 0xC0 ; 03971 22C0 | and al,al | encoding preserved
    %%insn_03973:
    jnz short 0x396e ; 03973 75F9
    %if ($ - %%insn_03973) > 2
        %error "LONG_03973"
    %endif
    times 2 - ($ - %%insn_03973) db 0
    %%insn_03975:
    mov [0xd855],bx ; 03975 891E55D8
    %if ($ - %%insn_03975) > 4
        %error "LONG_03975"
    %endif
    times 4 - ($ - %%insn_03975) db 0
    %%insn_03979:
    call 0x3756 ; 03979 E8DAFD
    %if ($ - %%insn_03979) > 3
        %error "LONG_03979"
    %endif
    times 3 - ($ - %%insn_03979) db 0
    db 0x3D, 0xFF, 0xFF ; 0397C 3DFFFF | cmp ax,0xffff | encoding preserved
    %%insn_0397f:
    jnz short 0x3987 ; 0397F 7506
    %if ($ - %%insn_0397f) > 2
        %error "LONG_0397F"
    %endif
    times 2 - ($ - %%insn_0397f) db 0
    %%insn_03981:
    mov ax,0x6e0 ; 03981 B8E006
    %if ($ - %%insn_03981) > 3
        %error "LONG_03981"
    %endif
    times 3 - ($ - %%insn_03981) db 0
    %%insn_03984:
    jmp 0x5ced ; 03984 E96623
    %if ($ - %%insn_03984) > 3
        %error "LONG_03984"
    %endif
    times 3 - ($ - %%insn_03984) db 0
    %%insn_03987:
    mov [0xd86b],bx ; 03987 891E6BD8
    %if ($ - %%insn_03987) > 4
        %error "LONG_03987"
    %endif
    times 4 - ($ - %%insn_03987) db 0
    %%insn_0398b:
    mov dx,[0xd855] ; 0398B 8B1655D8
    %if ($ - %%insn_0398b) > 4
        %error "LONG_0398B"
    %endif
    times 4 - ($ - %%insn_0398b) db 0
    %%insn_0398f:
    call 0x39f8 ; 0398F E86600
    %if ($ - %%insn_0398f) > 3
        %error "LONG_0398F"
    %endif
    times 3 - ($ - %%insn_0398f) db 0
    %%insn_03992:
    mov ax,0x3d00 ; 03992 B8003D
    %if ($ - %%insn_03992) > 3
        %error "LONG_03992"
    %endif
    times 3 - ($ - %%insn_03992) db 0
    %%insn_03995:
    int byte 0x21 ; 03995 CD21
    %if ($ - %%insn_03995) > 2
        %error "LONG_03995"
    %endif
    times 2 - ($ - %%insn_03995) db 0
    %%insn_03997:
    jc short 0x399e ; 03997 7205
    %if ($ - %%insn_03997) > 2
        %error "LONG_03997"
    %endif
    times 2 - ($ - %%insn_03997) db 0
    %%insn_03999:
    mov [0xd86d],ax ; 03999 A36DD8
    %if ($ - %%insn_03999) > 3
        %error "LONG_03999"
    %endif
    times 3 - ($ - %%insn_03999) db 0
    %%insn_0399c:
    jmp short 0x39a4 ; 0399C EB06
    %if ($ - %%insn_0399c) > 2
        %error "LONG_0399C"
    %endif
    times 2 - ($ - %%insn_0399c) db 0
    %%insn_0399e:
    mov ax,0x708 ; 0399E B80807
    %if ($ - %%insn_0399e) > 3
        %error "LONG_0399E"
    %endif
    times 3 - ($ - %%insn_0399e) db 0
    %%insn_039a1:
    jmp 0x5ced ; 039A1 E94923
    %if ($ - %%insn_039a1) > 3
        %error "LONG_039A1"
    %endif
    times 3 - ($ - %%insn_039a1) db 0
    %%insn_039a4:
    pop ax ; 039A4 58
    %if ($ - %%insn_039a4) > 1
        %error "LONG_039A4"
    %endif
    times 1 - ($ - %%insn_039a4) db 0
    %%insn_039a5:
    and ax,0x3ff ; 039A5 25FF03
    %if ($ - %%insn_039a5) > 3
        %error "LONG_039A5"
    %endif
    times 3 - ($ - %%insn_039a5) db 0
    %%insn_039a8:
    mov cx,0x14 ; 039A8 B91400
    %if ($ - %%insn_039a8) > 3
        %error "LONG_039A8"
    %endif
    times 3 - ($ - %%insn_039a8) db 0
    %%insn_039ab:
    mul cx ; 039AB F7E1
    %if ($ - %%insn_039ab) > 2
        %error "LONG_039AB"
    %endif
    times 2 - ($ - %%insn_039ab) db 0
    db 0x8B, 0xD0 ; 039AD 8BD0 | mov dx,ax | encoding preserved
    db 0x33, 0xC9 ; 039AF 33C9 | xor cx,cx | encoding preserved
    %%insn_039b1:
    mov bx,[0xd86d] ; 039B1 8B1E6DD8
    %if ($ - %%insn_039b1) > 4
        %error "LONG_039B1"
    %endif
    times 4 - ($ - %%insn_039b1) db 0
    db 0x33, 0xC0 ; 039B5 33C0 | xor ax,ax | encoding preserved
    %%insn_039b7:
    mov ax,0x4200 ; 039B7 B80042
    %if ($ - %%insn_039b7) > 3
        %error "LONG_039B7"
    %endif
    times 3 - ($ - %%insn_039b7) db 0
    %%insn_039ba:
    int byte 0x21 ; 039BA CD21
    %if ($ - %%insn_039ba) > 2
        %error "LONG_039BA"
    %endif
    times 2 - ($ - %%insn_039ba) db 0
    %%insn_039bc:
    mov dx,0xd857 ; 039BC BA57D8
    %if ($ - %%insn_039bc) > 3
        %error "LONG_039BC"
    %endif
    times 3 - ($ - %%insn_039bc) db 0
    %%insn_039bf:
    mov cx,0x14 ; 039BF B91400
    %if ($ - %%insn_039bf) > 3
        %error "LONG_039BF"
    %endif
    times 3 - ($ - %%insn_039bf) db 0
    %%insn_039c2:
    mov bx,[0xd86d] ; 039C2 8B1E6DD8
    %if ($ - %%insn_039c2) > 4
        %error "LONG_039C2"
    %endif
    times 4 - ($ - %%insn_039c2) db 0
    %%insn_039c6:
    mov ax,0x3f00 ; 039C6 B8003F
    %if ($ - %%insn_039c6) > 3
        %error "LONG_039C6"
    %endif
    times 3 - ($ - %%insn_039c6) db 0
    %%insn_039c9:
    int byte 0x21 ; 039C9 CD21
    %if ($ - %%insn_039c9) > 2
        %error "LONG_039C9"
    %endif
    times 2 - ($ - %%insn_039c9) db 0
    %%insn_039cb:
    mov bx,[0xd86d] ; 039CB 8B1E6DD8
    %if ($ - %%insn_039cb) > 4
        %error "LONG_039CB"
    %endif
    times 4 - ($ - %%insn_039cb) db 0
    %%insn_039cf:
    mov ax,0x3e00 ; 039CF B8003E
    %if ($ - %%insn_039cf) > 3
        %error "LONG_039CF"
    %endif
    times 3 - ($ - %%insn_039cf) db 0
    %%insn_039d2:
    int byte 0x21 ; 039D2 CD21
    %if ($ - %%insn_039d2) > 2
        %error "LONG_039D2"
    %endif
    times 2 - ($ - %%insn_039d2) db 0
    %%insn_039d4:
    mov dx,[bp-0x279d] ; 039D4 8B9663D8
    %if ($ - %%insn_039d4) > 4
        %error "LONG_039D4"
    %endif
    times 4 - ($ - %%insn_039d4) db 0
    %%insn_039d8:
    mov cx,[bp-0x279b] ; 039D8 8B8E65D8
    %if ($ - %%insn_039d8) > 4
        %error "LONG_039D8"
    %endif
    times 4 - ($ - %%insn_039d8) db 0
    db 0x33, 0xC0 ; 039DC 33C0 | xor ax,ax | encoding preserved
    %%insn_039de:
    mov bx,[bp-0x2795] ; 039DE 8B9E6BD8
    %if ($ - %%insn_039de) > 4
        %error "LONG_039DE"
    %endif
    times 4 - ($ - %%insn_039de) db 0
    %%insn_039e2:
    mov ax,0x4200 ; 039E2 B80042
    %if ($ - %%insn_039e2) > 3
        %error "LONG_039E2"
    %endif
    times 3 - ($ - %%insn_039e2) db 0
    %%insn_039e5:
    int byte 0x21 ; 039E5 CD21
    %if ($ - %%insn_039e5) > 2
        %error "LONG_039E5"
    %endif
    times 2 - ($ - %%insn_039e5) db 0
    %%insn_039e7:
    pop ds ; 039E7 1F
    %if ($ - %%insn_039e7) > 1
        %error "LONG_039E7"
    %endif
    times 1 - ($ - %%insn_039e7) db 0
    %%insn_039e8:
    popa ; 039E8 61
    %if ($ - %%insn_039e8) > 1
        %error "LONG_039E8"
    %endif
    times 1 - ($ - %%insn_039e8) db 0
    %%insn_039e9:
    mov ax,[bp-0x2795] ; 039E9 8B866BD8
    %if ($ - %%insn_039e9) > 4
        %error "LONG_039E9"
    %endif
    times 4 - ($ - %%insn_039e9) db 0
    %%insn_039ed:
    ret ; 039ED C3
    %if ($ - %%insn_039ed) > 1
        %error "LONG_039ED"
    %endif
    times 1 - ($ - %%insn_039ed) db 0
    %if ($ - %%fragment_start) != 173
        %error "SIZE_03941"
    %endif
%endmacro
