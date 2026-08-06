; Linear entry 002C0 (1000:02c0)
; Ghidra working symbol: FUN_1000_02c0
; Verified eight-byte VDX header reader; checks little-endian magic 9267h and derives the playback interval from the header rate or GRV override.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_read_and_validate_vdx_header_part_00 0
    %%fragment_start:
read_and_validate_vdx_header:
    %%insn_002c0:
    cmp word [bp-0xcea],0x2 ; 002C0 83BE16F302
    %if ($ - %%insn_002c0) > 5
        %error "LONG_002C0"
    %endif
    times 5 - ($ - %%insn_002c0) db 0
    %%insn_002c5:
    jnz short 0x2ca ; 002C5 7503
    %if ($ - %%insn_002c5) > 2
        %error "LONG_002C5"
    %endif
    times 2 - ($ - %%insn_002c5) db 0
    db 0x33, 0xC0 ; 002C7 33C0 | xor ax,ax | encoding preserved
    %%insn_002c9:
    ret ; 002C9 C3
    %if ($ - %%insn_002c9) > 1
        %error "LONG_002C9"
    %endif
    times 1 - ($ - %%insn_002c9) db 0
    %%insn_002ca:
    mov word [bp-0x30ca],0x1 ; 002CA C78636CF0100
    %if ($ - %%insn_002ca) > 6
        %error "LONG_002CA"
    %endif
    times 6 - ($ - %%insn_002ca) db 0
    %%insn_002d0:
    mov ds,word [bp-0x2aaa] ; 002D0 8E9E56D5
    %if ($ - %%insn_002d0) > 4
        %error "LONG_002D0"
    %endif
    times 4 - ($ - %%insn_002d0) db 0
    db 0x33, 0xD2 ; 002D4 33D2 | xor dx,dx | encoding preserved
    %%insn_002d6:
    mov cx,0x8 ; 002D6 B90800
    %if ($ - %%insn_002d6) > 3
        %error "LONG_002D6"
    %endif
    times 3 - ($ - %%insn_002d6) db 0
    %%insn_002d9:
    call 0x21b ; 002D9 E83FFF
    %if ($ - %%insn_002d9) > 3
        %error "LONG_002D9"
    %endif
    times 3 - ($ - %%insn_002d9) db 0
    db 0x33, 0xF6 ; 002DC 33F6 | xor si,si | encoding preserved
    %%insn_002de:
    cmp word [si],0x9267 ; 002DE 813C6792
    %if ($ - %%insn_002de) > 4
        %error "LONG_002DE"
    %endif
    times 4 - ($ - %%insn_002de) db 0
    %%insn_002e2:
    jnz short 0x30a ; 002E2 7526
    %if ($ - %%insn_002e2) > 2
        %error "LONG_002E2"
    %endif
    times 2 - ($ - %%insn_002e2) db 0
    %%insn_002e4:
    mov ax,[si+0x6] ; 002E4 8B4406
    %if ($ - %%insn_002e4) > 3
        %error "LONG_002E4"
    %endif
    times 3 - ($ - %%insn_002e4) db 0
    %%insn_002e7:
    cmp byte [bp-0x265b],0x0 ; 002E7 80BEA5D900
    %if ($ - %%insn_002e7) > 5
        %error "LONG_002E7"
    %endif
    times 5 - ($ - %%insn_002e7) db 0
    %%insn_002ec:
    jz short 0x2f4 ; 002EC 7406
    %if ($ - %%insn_002ec) > 2
        %error "LONG_002EC"
    %endif
    times 2 - ($ - %%insn_002ec) db 0
    %%insn_002ee:
    mov al,[bp-0x265b] ; 002EE 8A86A5D9
    %if ($ - %%insn_002ee) > 4
        %error "LONG_002EE"
    %endif
    times 4 - ($ - %%insn_002ee) db 0
    db 0x32, 0xE4 ; 002F2 32E4 | xor ah,ah | encoding preserved
    db 0x23, 0xC0 ; 002F4 23C0 | and ax,ax | encoding preserved
    %%insn_002f6:
    jz short 0x306 ; 002F6 740E
    %if ($ - %%insn_002f6) > 2
        %error "LONG_002F6"
    %endif
    times 2 - ($ - %%insn_002f6) db 0
    db 0x8B, 0xC8 ; 002F8 8BC8 | mov cx,ax | encoding preserved
    %%insn_002fa:
    mov ax,[bp-0x2656] ; 002FA 8B86AAD9
    %if ($ - %%insn_002fa) > 4
        %error "LONG_002FA"
    %endif
    times 4 - ($ - %%insn_002fa) db 0
    %%insn_002fe:
    div cl ; 002FE F6F1
    %if ($ - %%insn_002fe) > 2
        %error "LONG_002FE"
    %endif
    times 2 - ($ - %%insn_002fe) db 0
    db 0x32, 0xE4 ; 00300 32E4 | xor ah,ah | encoding preserved
    %%insn_00302:
    mov [bp-0x30a0],ax ; 00302 898660CF
    %if ($ - %%insn_00302) > 4
        %error "LONG_00302"
    %endif
    times 4 - ($ - %%insn_00302) db 0
    db 0x33, 0xC0 ; 00306 33C0 | xor ax,ax | encoding preserved
    %%insn_00308:
    jmp short 0x30d ; 00308 EB03
    %if ($ - %%insn_00308) > 2
        %error "LONG_00308"
    %endif
    times 2 - ($ - %%insn_00308) db 0
    %%insn_0030a:
    mov ax,0xffff ; 0030A B8FFFF
    %if ($ - %%insn_0030a) > 3
        %error "LONG_0030A"
    %endif
    times 3 - ($ - %%insn_0030a) db 0
    %%insn_0030d:
    ret ; 0030D C3
    %if ($ - %%insn_0030d) > 1
        %error "LONG_0030D"
    %endif
    times 1 - ($ - %%insn_0030d) db 0
    %if ($ - %%fragment_start) != 78
        %error "SIZE_002C0"
    %endif
%endmacro
