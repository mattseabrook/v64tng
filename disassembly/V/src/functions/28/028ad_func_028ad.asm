; Linear entry 028AD (1000:28ad)
; Ghidra working symbol: FUN_1000_28ad
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_028ad_part_00 0
    %%fragment_start:
func_028ad:
    %%insn_028ad:
    cmp word [bp-0x1b8a],0x80 ; 028AD 81BE76E48000
    %if ($ - %%insn_028ad) > 6
        %error "LONG_028AD"
    %endif
    times 6 - ($ - %%insn_028ad) db 0
    %%insn_028b3:
    jnz short 0x28b6 ; 028B3 7501
    %if ($ - %%insn_028b3) > 2
        %error "LONG_028B3"
    %endif
    times 2 - ($ - %%insn_028b3) db 0
    %%insn_028b5:
    ret ; 028B5 C3
    %if ($ - %%insn_028b5) > 1
        %error "LONG_028B5"
    %endif
    times 1 - ($ - %%insn_028b5) db 0
    %%insn_028b6:
    mov word [cs:0x5cde],0x0 ; 028B6 2EC706DE5C0000
    %if ($ - %%insn_028b6) > 7
        %error "LONG_028B6"
    %endif
    times 7 - ($ - %%insn_028b6) db 0
    %%insn_028bd:
    cmp byte [bp-0x1f3a],0x0 ; 028BD 80BEC6E000
    %if ($ - %%insn_028bd) > 5
        %error "LONG_028BD"
    %endif
    times 5 - ($ - %%insn_028bd) db 0
    %%insn_028c2:
    jnz short 0x291a ; 028C2 7556
    %if ($ - %%insn_028c2) > 2
        %error "LONG_028C2"
    %endif
    times 2 - ($ - %%insn_028c2) db 0
    %%insn_028c4:
    cmp word [bp-0x2b78],0x0 ; 028C4 83BE88D400
    %if ($ - %%insn_028c4) > 5
        %error "LONG_028C4"
    %endif
    times 5 - ($ - %%insn_028c4) db 0
    %%insn_028c9:
    jz short 0x2915 ; 028C9 744A
    %if ($ - %%insn_028c9) > 2
        %error "LONG_028C9"
    %endif
    times 2 - ($ - %%insn_028c9) db 0
    %%insn_028cb:
    call 0x2896 ; 028CB E8C8FF
    %if ($ - %%insn_028cb) > 3
        %error "LONG_028CB"
    %endif
    times 3 - ($ - %%insn_028cb) db 0
    %%insn_028ce:
    cmp word [cs:0x5cde],0x258 ; 028CE 2E813EDE5C5802
    %if ($ - %%insn_028ce) > 7
        %error "LONG_028CE"
    %endif
    times 7 - ($ - %%insn_028ce) db 0
    %%insn_028d5:
    jnc short 0x28db ; 028D5 7304
    %if ($ - %%insn_028d5) > 2
        %error "LONG_028D5"
    %endif
    times 2 - ($ - %%insn_028d5) db 0
    %%insn_028d7:
    jmp short 0x28c4 ; 028D7 EBEB
    %if ($ - %%insn_028d7) > 2
        %error "LONG_028D7"
    %endif
    times 2 - ($ - %%insn_028d7) db 0
    %if ($ - %%fragment_start) != 44
        %error "SIZE_028AD"
    %endif
%endmacro

%macro emit_func_028ad_part_01 0
    %%fragment_start:
    %%insn_028db:
    push word [bp-0x1bcc] ; 028DB FFB634E4
    %if ($ - %%insn_028db) > 4
        %error "LONG_028DB"
    %endif
    times 4 - ($ - %%insn_028db) db 0
    %%insn_028df:
    call word 0x702:word 0xc92 ; 028DF 9A920C0207
    %if ($ - %%insn_028df) > 5
        %error "LONG_028DF"
    %endif
    times 5 - ($ - %%insn_028df) db 0
    %%insn_028e4:
    add sp,0x2 ; 028E4 83C402
    %if ($ - %%insn_028e4) > 3
        %error "LONG_028E4"
    %endif
    times 3 - ($ - %%insn_028e4) db 0
    %%insn_028e7:
    mov word [bp-0x2b78],0x0 ; 028E7 C78688D40000
    %if ($ - %%insn_028e7) > 6
        %error "LONG_028E7"
    %endif
    times 6 - ($ - %%insn_028e7) db 0
    %%insn_028ed:
    mov ax,0x3 ; 028ED B80300
    %if ($ - %%insn_028ed) > 3
        %error "LONG_028ED"
    %endif
    times 3 - ($ - %%insn_028ed) db 0
    %%insn_028f0:
    mov [bp-0x309c],ax ; 028F0 898664CF
    %if ($ - %%insn_028f0) > 4
        %error "LONG_028F0"
    %endif
    times 4 - ($ - %%insn_028f0) db 0
    %%insn_028f4:
    mov [bp-0x309a],ax ; 028F4 898666CF
    %if ($ - %%insn_028f4) > 4
        %error "LONG_028F4"
    %endif
    times 4 - ($ - %%insn_028f4) db 0
    %%insn_028f8:
    ret ; 028F8 C3
    %if ($ - %%insn_028f8) > 1
        %error "LONG_028F8"
    %endif
    times 1 - ($ - %%insn_028f8) db 0
    %%insn_028f9:
    mov ax,0x1815 ; 028F9 B81518
    %if ($ - %%insn_028f9) > 3
        %error "LONG_028F9"
    %endif
    times 3 - ($ - %%insn_028f9) db 0
    %%insn_028fc:
    mov es,ax ; 028FC 8EC0
    %if ($ - %%insn_028fc) > 2
        %error "LONG_028FC"
    %endif
    times 2 - ($ - %%insn_028fc) db 0
    %%insn_028fe:
    mov di,0x2c ; 028FE BF2C00
    %if ($ - %%insn_028fe) > 3
        %error "LONG_028FE"
    %endif
    times 3 - ($ - %%insn_028fe) db 0
    %%insn_02901:
    mov al,[bp-0x309c] ; 02901 8A8664CF
    %if ($ - %%insn_02901) > 4
        %error "LONG_02901"
    %endif
    times 4 - ($ - %%insn_02901) db 0
    %%insn_02905:
    add al,0x30 ; 02905 0430
    %if ($ - %%insn_02905) > 2
        %error "LONG_02905"
    %endif
    times 2 - ($ - %%insn_02905) db 0
    %%insn_02907:
    stosb ; 02907 AA
    %if ($ - %%insn_02907) > 1
        %error "LONG_02907"
    %endif
    times 1 - ($ - %%insn_02907) db 0
    %%insn_02908:
    mov al,[bp-0x309a] ; 02908 8A8666CF
    %if ($ - %%insn_02908) > 4
        %error "LONG_02908"
    %endif
    times 4 - ($ - %%insn_02908) db 0
    %%insn_0290c:
    add al,0x30 ; 0290C 0430
    %if ($ - %%insn_0290c) > 2
        %error "LONG_0290C"
    %endif
    times 2 - ($ - %%insn_0290c) db 0
    %%insn_0290e:
    stosb ; 0290E AA
    %if ($ - %%insn_0290e) > 1
        %error "LONG_0290E"
    %endif
    times 1 - ($ - %%insn_0290e) db 0
    %%insn_0290f:
    mov ax,0x2c ; 0290F B82C00
    %if ($ - %%insn_0290f) > 3
        %error "LONG_0290F"
    %endif
    times 3 - ($ - %%insn_0290f) db 0
    %%insn_02912:
    jmp 0x5ced ; 02912 E9D833
    %if ($ - %%insn_02912) > 3
        %error "LONG_02912"
    %endif
    times 3 - ($ - %%insn_02912) db 0
    %%insn_02915:
    call 0x293b ; 02915 E82300
    %if ($ - %%insn_02915) > 3
        %error "LONG_02915"
    %endif
    times 3 - ($ - %%insn_02915) db 0
    %%insn_02918:
    jmp short 0x293a ; 02918 EB20
    %if ($ - %%insn_02918) > 2
        %error "LONG_02918"
    %endif
    times 2 - ($ - %%insn_02918) db 0
    %%insn_0291a:
    cmp word [bp-0x2b78],0x0 ; 0291A 83BE88D400
    %if ($ - %%insn_0291a) > 5
        %error "LONG_0291A"
    %endif
    times 5 - ($ - %%insn_0291a) db 0
    %%insn_0291f:
    jz short 0x2933 ; 0291F 7412
    %if ($ - %%insn_0291f) > 2
        %error "LONG_0291F"
    %endif
    times 2 - ($ - %%insn_0291f) db 0
    %%insn_02921:
    call 0x2896 ; 02921 E872FF
    %if ($ - %%insn_02921) > 3
        %error "LONG_02921"
    %endif
    times 3 - ($ - %%insn_02921) db 0
    %%insn_02924:
    cmp word [cs:0x5cde],0x258 ; 02924 2E813EDE5C5802
    %if ($ - %%insn_02924) > 7
        %error "LONG_02924"
    %endif
    times 7 - ($ - %%insn_02924) db 0
    %%insn_0292b:
    jnc short 0x2931 ; 0292B 7304
    %if ($ - %%insn_0292b) > 2
        %error "LONG_0292B"
    %endif
    times 2 - ($ - %%insn_0292b) db 0
    %%insn_0292d:
    jmp short 0x291a ; 0292D EBEB
    %if ($ - %%insn_0292d) > 2
        %error "LONG_0292D"
    %endif
    times 2 - ($ - %%insn_0292d) db 0
    %if ($ - %%fragment_start) != 84
        %error "SIZE_028DB"
    %endif
%endmacro

%macro emit_func_028ad_part_02 0
    %%fragment_start:
    %%insn_02931:
    jmp short 0x28f9 ; 02931 EBC6
    %if ($ - %%insn_02931) > 2
        %error "LONG_02931"
    %endif
    times 2 - ($ - %%insn_02931) db 0
    %%insn_02933:
    cmp byte [bp-0x30bc],0x0 ; 02933 80BE44CF00
    %if ($ - %%insn_02933) > 5
        %error "LONG_02933"
    %endif
    times 5 - ($ - %%insn_02933) db 0
    %%insn_02938:
    jnz short 0x2933 ; 02938 75F9
    %if ($ - %%insn_02938) > 2
        %error "LONG_02938"
    %endif
    times 2 - ($ - %%insn_02938) db 0
    %%insn_0293a:
    ret ; 0293A C3
    %if ($ - %%insn_0293a) > 1
        %error "LONG_0293A"
    %endif
    times 1 - ($ - %%insn_0293a) db 0
    %if ($ - %%fragment_start) != 10
        %error "SIZE_02931"
    %endif
%endmacro
