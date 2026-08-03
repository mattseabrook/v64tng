; Linear entry 0388A (1000:388a)
; Ghidra working symbol: FUN_1000_388a
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_0388a_part_00 0
    %%fragment_start:
func_0388a:
    %%insn_0388a:
    pusha ; 0388A 60
    %if ($ - %%insn_0388a) > 1
        %error "LONG_0388A"
    %endif
    times 1 - ($ - %%insn_0388a) db 0
    %%insn_0388b:
    push ds ; 0388B 1E
    %if ($ - %%insn_0388b) > 1
        %error "LONG_0388B"
    %endif
    times 1 - ($ - %%insn_0388b) db 0
    %%insn_0388c:
    push ax ; 0388C 50
    %if ($ - %%insn_0388c) > 1
        %error "LONG_0388C"
    %endif
    times 1 - ($ - %%insn_0388c) db 0
    %%insn_0388d:
    mov bx,0x893 ; 0388D BB9308
    %if ($ - %%insn_0388d) > 3
        %error "LONG_0388D"
    %endif
    times 3 - ($ - %%insn_0388d) db 0
    %%insn_03890:
    mov ds,bx ; 03890 8EDB
    %if ($ - %%insn_03890) > 2
        %error "LONG_03890"
    %endif
    times 2 - ($ - %%insn_03890) db 0
    %%insn_03892:
    shr ax,byte 0xa ; 03892 C1E80A
    %if ($ - %%insn_03892) > 3
        %error "LONG_03892"
    %endif
    times 3 - ($ - %%insn_03892) db 0
    %%insn_03895:
    cmp ax,[0xd831] ; 03895 3B0631D8
    %if ($ - %%insn_03895) > 4
        %error "LONG_03895"
    %endif
    times 4 - ($ - %%insn_03895) db 0
    %%insn_03899:
    jz short 0x38d4 ; 03899 7439
    %if ($ - %%insn_03899) > 2
        %error "LONG_03899"
    %endif
    times 2 - ($ - %%insn_03899) db 0
    %%insn_0389b:
    cmp word [0xd849],0xffffffffffffffff ; 0389B 833E49D8FF
    %if ($ - %%insn_0389b) > 5
        %error "LONG_0389B"
    %endif
    times 5 - ($ - %%insn_0389b) db 0
    %%insn_038a0:
    jz short 0x38a7 ; 038A0 7405
    %if ($ - %%insn_038a0) > 2
        %error "LONG_038A0"
    %endif
    times 2 - ($ - %%insn_038a0) db 0
    %%insn_038a2:
    push ax ; 038A2 50
    %if ($ - %%insn_038a2) > 1
        %error "LONG_038A2"
    %endif
    times 1 - ($ - %%insn_038a2) db 0
    %%insn_038a3:
    call 0x3774 ; 038A3 E8CEFE
    %if ($ - %%insn_038a3) > 3
        %error "LONG_038A3"
    %endif
    times 3 - ($ - %%insn_038a3) db 0
    %%insn_038a6:
    pop ax ; 038A6 58
    %if ($ - %%insn_038a6) > 1
        %error "LONG_038A6"
    %endif
    times 1 - ($ - %%insn_038a6) db 0
    %%insn_038a7:
    mov [0xd831],ax ; 038A7 A331D8
    %if ($ - %%insn_038a7) > 3
        %error "LONG_038A7"
    %endif
    times 3 - ($ - %%insn_038a7) db 0
    db 0x03, 0xC0 ; 038AA 03C0 | add ax,ax | encoding preserved
    %%insn_038ac:
    add ax,0xd807 ; 038AC 0507D8
    %if ($ - %%insn_038ac) > 3
        %error "LONG_038AC"
    %endif
    times 3 - ($ - %%insn_038ac) db 0
    db 0x8B, 0xD8 ; 038AF 8BD8 | mov bx,ax | encoding preserved
    %%insn_038b1:
    mov ax,[bx] ; 038B1 8B07
    %if ($ - %%insn_038b1) > 2
        %error "LONG_038B1"
    %endif
    times 2 - ($ - %%insn_038b1) db 0
    db 0x8B, 0xD0 ; 038B3 8BD0 | mov dx,ax | encoding preserved
    db 0x8B, 0xD8 ; 038B5 8BD8 | mov bx,ax | encoding preserved
    %%insn_038b7:
    mov al,[bx] ; 038B7 8A07
    %if ($ - %%insn_038b7) > 2
        %error "LONG_038B7"
    %endif
    times 2 - ($ - %%insn_038b7) db 0
    %%insn_038b9:
    inc bx ; 038B9 43
    %if ($ - %%insn_038b9) > 1
        %error "LONG_038B9"
    %endif
    times 1 - ($ - %%insn_038b9) db 0
    db 0x22, 0xC0 ; 038BA 22C0 | and al,al | encoding preserved
    %%insn_038bc:
    jnz short 0x38b7 ; 038BC 75F9
    %if ($ - %%insn_038bc) > 2
        %error "LONG_038BC"
    %endif
    times 2 - ($ - %%insn_038bc) db 0
    %%insn_038be:
    mov [0xd833],bx ; 038BE 891E33D8
    %if ($ - %%insn_038be) > 4
        %error "LONG_038BE"
    %endif
    times 4 - ($ - %%insn_038be) db 0
    %%insn_038c2:
    call 0x3756 ; 038C2 E891FE
    %if ($ - %%insn_038c2) > 3
        %error "LONG_038C2"
    %endif
    times 3 - ($ - %%insn_038c2) db 0
    db 0x3D, 0xFF, 0xFF ; 038C5 3DFFFF | cmp ax,0xffff | encoding preserved
    %%insn_038c8:
    jnz short 0x38d0 ; 038C8 7506
    %if ($ - %%insn_038c8) > 2
        %error "LONG_038C8"
    %endif
    times 2 - ($ - %%insn_038c8) db 0
    %%insn_038ca:
    mov ax,0x6e5 ; 038CA B8E506
    %if ($ - %%insn_038ca) > 3
        %error "LONG_038CA"
    %endif
    times 3 - ($ - %%insn_038ca) db 0
    %%insn_038cd:
    jmp 0x5ced ; 038CD E91D24
    %if ($ - %%insn_038cd) > 3
        %error "LONG_038CD"
    %endif
    times 3 - ($ - %%insn_038cd) db 0
    %%insn_038d0:
    mov [0xd849],bx ; 038D0 891E49D8
    %if ($ - %%insn_038d0) > 4
        %error "LONG_038D0"
    %endif
    times 4 - ($ - %%insn_038d0) db 0
    %%insn_038d4:
    mov dx,[0xd833] ; 038D4 8B1633D8
    %if ($ - %%insn_038d4) > 4
        %error "LONG_038D4"
    %endif
    times 4 - ($ - %%insn_038d4) db 0
    %%insn_038d8:
    call 0x39f8 ; 038D8 E81D01
    %if ($ - %%insn_038d8) > 3
        %error "LONG_038D8"
    %endif
    times 3 - ($ - %%insn_038d8) db 0
    %%insn_038db:
    mov ax,0x3d00 ; 038DB B8003D
    %if ($ - %%insn_038db) > 3
        %error "LONG_038DB"
    %endif
    times 3 - ($ - %%insn_038db) db 0
    %%insn_038de:
    int byte 0x21 ; 038DE CD21
    %if ($ - %%insn_038de) > 2
        %error "LONG_038DE"
    %endif
    times 2 - ($ - %%insn_038de) db 0
    %%insn_038e0:
    jc short 0x38e7 ; 038E0 7205
    %if ($ - %%insn_038e0) > 2
        %error "LONG_038E0"
    %endif
    times 2 - ($ - %%insn_038e0) db 0
    %%insn_038e2:
    mov [0xd84b],ax ; 038E2 A34BD8
    %if ($ - %%insn_038e2) > 3
        %error "LONG_038E2"
    %endif
    times 3 - ($ - %%insn_038e2) db 0
    %%insn_038e5:
    jmp short 0x38ed ; 038E5 EB06
    %if ($ - %%insn_038e5) > 2
        %error "LONG_038E5"
    %endif
    times 2 - ($ - %%insn_038e5) db 0
    %%insn_038e7:
    mov ax,0x708 ; 038E7 B80807
    %if ($ - %%insn_038e7) > 3
        %error "LONG_038E7"
    %endif
    times 3 - ($ - %%insn_038e7) db 0
    %%insn_038ea:
    jmp 0x5ced ; 038EA E90024
    %if ($ - %%insn_038ea) > 3
        %error "LONG_038EA"
    %endif
    times 3 - ($ - %%insn_038ea) db 0
    %%insn_038ed:
    pop ax ; 038ED 58
    %if ($ - %%insn_038ed) > 1
        %error "LONG_038ED"
    %endif
    times 1 - ($ - %%insn_038ed) db 0
    %%insn_038ee:
    and ax,0x3ff ; 038EE 25FF03
    %if ($ - %%insn_038ee) > 3
        %error "LONG_038EE"
    %endif
    times 3 - ($ - %%insn_038ee) db 0
    %%insn_038f1:
    mov cx,0x14 ; 038F1 B91400
    %if ($ - %%insn_038f1) > 3
        %error "LONG_038F1"
    %endif
    times 3 - ($ - %%insn_038f1) db 0
    %%insn_038f4:
    mul cx ; 038F4 F7E1
    %if ($ - %%insn_038f4) > 2
        %error "LONG_038F4"
    %endif
    times 2 - ($ - %%insn_038f4) db 0
    db 0x8B, 0xD0 ; 038F6 8BD0 | mov dx,ax | encoding preserved
    db 0x33, 0xC9 ; 038F8 33C9 | xor cx,cx | encoding preserved
    %%insn_038fa:
    mov bx,[0xd84b] ; 038FA 8B1E4BD8
    %if ($ - %%insn_038fa) > 4
        %error "LONG_038FA"
    %endif
    times 4 - ($ - %%insn_038fa) db 0
    db 0x33, 0xC0 ; 038FE 33C0 | xor ax,ax | encoding preserved
    %%insn_03900:
    mov ax,0x4200 ; 03900 B80042
    %if ($ - %%insn_03900) > 3
        %error "LONG_03900"
    %endif
    times 3 - ($ - %%insn_03900) db 0
    %%insn_03903:
    int byte 0x21 ; 03903 CD21
    %if ($ - %%insn_03903) > 2
        %error "LONG_03903"
    %endif
    times 2 - ($ - %%insn_03903) db 0
    %%insn_03905:
    mov dx,0xd835 ; 03905 BA35D8
    %if ($ - %%insn_03905) > 3
        %error "LONG_03905"
    %endif
    times 3 - ($ - %%insn_03905) db 0
    %%insn_03908:
    mov cx,0x14 ; 03908 B91400
    %if ($ - %%insn_03908) > 3
        %error "LONG_03908"
    %endif
    times 3 - ($ - %%insn_03908) db 0
    %%insn_0390b:
    mov bx,[0xd84b] ; 0390B 8B1E4BD8
    %if ($ - %%insn_0390b) > 4
        %error "LONG_0390B"
    %endif
    times 4 - ($ - %%insn_0390b) db 0
    %%insn_0390f:
    mov ax,0x3f00 ; 0390F B8003F
    %if ($ - %%insn_0390f) > 3
        %error "LONG_0390F"
    %endif
    times 3 - ($ - %%insn_0390f) db 0
    %%insn_03912:
    int byte 0x21 ; 03912 CD21
    %if ($ - %%insn_03912) > 2
        %error "LONG_03912"
    %endif
    times 2 - ($ - %%insn_03912) db 0
    %%insn_03914:
    mov bx,[0xd84b] ; 03914 8B1E4BD8
    %if ($ - %%insn_03914) > 4
        %error "LONG_03914"
    %endif
    times 4 - ($ - %%insn_03914) db 0
    %%insn_03918:
    mov ax,0x3e00 ; 03918 B8003E
    %if ($ - %%insn_03918) > 3
        %error "LONG_03918"
    %endif
    times 3 - ($ - %%insn_03918) db 0
    %%insn_0391b:
    int byte 0x21 ; 0391B CD21
    %if ($ - %%insn_0391b) > 2
        %error "LONG_0391B"
    %endif
    times 2 - ($ - %%insn_0391b) db 0
    %%insn_0391d:
    mov dx,[bp-0x27bf] ; 0391D 8B9641D8
    %if ($ - %%insn_0391d) > 4
        %error "LONG_0391D"
    %endif
    times 4 - ($ - %%insn_0391d) db 0
    %%insn_03921:
    mov cx,[bp-0x27bd] ; 03921 8B8E43D8
    %if ($ - %%insn_03921) > 4
        %error "LONG_03921"
    %endif
    times 4 - ($ - %%insn_03921) db 0
    db 0x33, 0xC0 ; 03925 33C0 | xor ax,ax | encoding preserved
    %%insn_03927:
    mov bx,[bp-0x27b7] ; 03927 8B9E49D8
    %if ($ - %%insn_03927) > 4
        %error "LONG_03927"
    %endif
    times 4 - ($ - %%insn_03927) db 0
    %%insn_0392b:
    mov ax,0x4200 ; 0392B B80042
    %if ($ - %%insn_0392b) > 3
        %error "LONG_0392B"
    %endif
    times 3 - ($ - %%insn_0392b) db 0
    %%insn_0392e:
    int byte 0x21 ; 0392E CD21
    %if ($ - %%insn_0392e) > 2
        %error "LONG_0392E"
    %endif
    times 2 - ($ - %%insn_0392e) db 0
    %%insn_03930:
    pop ds ; 03930 1F
    %if ($ - %%insn_03930) > 1
        %error "LONG_03930"
    %endif
    times 1 - ($ - %%insn_03930) db 0
    %%insn_03931:
    popa ; 03931 61
    %if ($ - %%insn_03931) > 1
        %error "LONG_03931"
    %endif
    times 1 - ($ - %%insn_03931) db 0
    %%insn_03932:
    mov ax,[bp-0x27b7] ; 03932 8B8649D8
    %if ($ - %%insn_03932) > 4
        %error "LONG_03932"
    %endif
    times 4 - ($ - %%insn_03932) db 0
    %%insn_03936:
    ret ; 03936 C3
    %if ($ - %%insn_03936) > 1
        %error "LONG_03936"
    %endif
    times 1 - ($ - %%insn_03936) db 0
    %if ($ - %%fragment_start) != 173
        %error "SIZE_0388A"
    %endif
%endmacro
