; Linear entry 077A3 (1702:0783)
; Ghidra working symbol: FUN_1702_0783
; Verified role; boundaries repaired where the IRET entry overlaps OR BH,0.
; Contract: Allocate the first free user slot 0..15, record callback far pointer and caller DS, and return its index or FFFFh if full.
; Evidence: On the first registration initialize timer tables, install INT 08h and reserve/start slot 16 for old interrupt chaining. Initial user state is stopped (1).
; Original byte identity is enforced by this project’s build.sh.
; Generated losslessly; edit names/comments only after preserving build identity.
; Instruction boundaries repaired: the flag-restoring IRET is entered inside
; OR BH,0; PUSH CS/CALL builds its IP:CS frame above the saved FLAGS.
; Former one-byte CF gap belongs to the overlapping OR/IRET sequence.

%macro emit_miles_register_timer_callback_part_00 0
    %%fragment_start:
miles_register_timer_callback:
    %%insn_077a3:
    push bp ; 077A3 55
    %if ($ - %%insn_077a3) != 1
        %error "MILES_INSTRUCTION_SIZE_077A3"
    %endif
    db 0x8B, 0xEC ; 077A4 8BEC | mov bp,sp | encoding preserved
    %%insn_077a6:
    push ds ; 077A6 1E
    %if ($ - %%insn_077a6) != 1
        %error "MILES_INSTRUCTION_SIZE_077A6"
    %endif
    %%insn_077a7:
    push si ; 077A7 56
    %if ($ - %%insn_077a7) != 1
        %error "MILES_INSTRUCTION_SIZE_077A7"
    %endif
    %%insn_077a8:
    push di ; 077A8 57
    %if ($ - %%insn_077a8) != 1
        %error "MILES_INSTRUCTION_SIZE_077A8"
    %endif
    %%insn_077a9:
    pushf ; 077A9 9C
    %if ($ - %%insn_077a9) != 1
        %error "MILES_INSTRUCTION_SIZE_077A9"
    %endif
    %%insn_077aa:
    cli ; 077AA FA
    %if ($ - %%insn_077aa) != 1
        %error "MILES_INSTRUCTION_SIZE_077AA"
    %endif
    %%insn_077ab:
    mov cx,ds ; 077AB 8CD9
    %if ($ - %%insn_077ab) != 2
        %error "MILES_INSTRUCTION_SIZE_077AB"
    %endif
    %%insn_077ad:
    mov bx,0x0 ; 077AD BB0000
    %if ($ - %%insn_077ad) != 3
        %error "MILES_INSTRUCTION_SIZE_077AD"
    %endif
    db 0x2E, 0x83, 0xBF, 0x70, 0x00, 0x00 ; 077B0 2E83BF700000 | cmp word [cs:bx+0x70],0x0 | encoding preserved
    %%insn_077b6:
    jz short 0x77c6 ; 077B6 740E
    %if ($ - %%insn_077b6) != 2
        %error "MILES_INSTRUCTION_SIZE_077B6"
    %endif
    %%insn_077b8:
    add bx,0x2 ; 077B8 83C302
    %if ($ - %%insn_077b8) != 3
        %error "MILES_INSTRUCTION_SIZE_077B8"
    %endif
    %%insn_077bb:
    cmp bx,0x20 ; 077BB 83FB20
    %if ($ - %%insn_077bb) != 3
        %error "MILES_INSTRUCTION_SIZE_077BB"
    %endif
    %%insn_077be:
    jc short 0x77b0 ; 077BE 72F0
    %if ($ - %%insn_077be) != 2
        %error "MILES_INSTRUCTION_SIZE_077BE"
    %endif
    %%insn_077c0:
    mov ax,0xffff ; 077C0 B8FFFF
    %if ($ - %%insn_077c0) != 3
        %error "MILES_INSTRUCTION_SIZE_077C0"
    %endif
    %%insn_077c3:
    jmp 0x7862 ; 077C3 E99C00
    %if ($ - %%insn_077c3) != 3
        %error "MILES_INSTRUCTION_SIZE_077C3"
    %endif
    db 0x8B, 0xC3 ; 077C6 8BC3 | mov ax,bx | encoding preserved
    %%insn_077c8:
    shr ax,1 ; 077C8 D1E8
    %if ($ - %%insn_077c8) != 2
        %error "MILES_INSTRUCTION_SIZE_077C8"
    %endif
    db 0x2E, 0xC7, 0x87, 0x70, 0x00, 0x01, 0x00 ; 077CA 2EC78770000100 | mov word [cs:bx+0x70],0x1 | encoding preserved
    db 0x2E, 0x89, 0x8F, 0x4E, 0x00 ; 077D1 2E898F4E00 | mov [cs:bx+0x4e],cx | encoding preserved
    %%insn_077d6:
    shl bx,1 ; 077D6 D1E3
    %if ($ - %%insn_077d6) != 2
        %error "MILES_INSTRUCTION_SIZE_077D6"
    %endif
    %%insn_077d8:
    lds si,word [bp+0x6] ; 077D8 C57606
    %if ($ - %%insn_077d8) != 3
        %error "MILES_INSTRUCTION_SIZE_077D8"
    %endif
    db 0x2E, 0x89, 0xB7, 0x0A, 0x00 ; 077DB 2E89B70A00 | mov [cs:bx+0xa],si | encoding preserved
    db 0x2E, 0x8C, 0x9F, 0x0C, 0x00 ; 077E0 2E8C9F0C00 | mov word [cs:bx+0xc],ds | encoding preserved
    %%insn_077e5:
    mov word [cs:bx+0xd6],0xffff ; 077E5 2EC787D600FFFF
    %if ($ - %%insn_077e5) != 7
        %error "MILES_INSTRUCTION_SIZE_077E5"
    %endif
    %%insn_077ec:
    mov word [cs:bx+0xd8],0xffff ; 077EC 2EC787D800FFFF
    %if ($ - %%insn_077ec) != 7
        %error "MILES_INSTRUCTION_SIZE_077EC"
    %endif
    %%insn_077f3:
    inc word [cs:0x6] ; 077F3 2EFF060600
    %if ($ - %%insn_077f3) != 5
        %error "MILES_INSTRUCTION_SIZE_077F3"
    %endif
    %%insn_077f8:
    cmp word [cs:0x6],0x1 ; 077F8 2E833E060001
    %if ($ - %%insn_077f8) != 6
        %error "MILES_INSTRUCTION_SIZE_077F8"
    %endif
    %%insn_077fe:
    jnz short 0x7862 ; 077FE 7562
    %if ($ - %%insn_077fe) != 2
        %error "MILES_INSTRUCTION_SIZE_077FE"
    %endif
    %%insn_07800:
    push ax ; 07800 50
    %if ($ - %%insn_07800) != 1
        %error "MILES_INSTRUCTION_SIZE_07800"
    %endif
    %%insn_07801:
    push cs ; 07801 0E
    %if ($ - %%insn_07801) != 1
        %error "MILES_INSTRUCTION_SIZE_07801"
    %endif
    %%insn_07802:
    call 0x7501 ; 07802 E8FCFC
    %if ($ - %%insn_07802) != 3
        %error "MILES_INSTRUCTION_SIZE_07802"
    %endif
    %%insn_07805:
    mov word [cs:0x90],0x1 ; 07805 2EC70690000100
    %if ($ - %%insn_07805) != 7
        %error "MILES_INSTRUCTION_SIZE_07805"
    %endif
    %%insn_0780c:
    push cs ; 0780C 0E
    %if ($ - %%insn_0780c) != 1
        %error "MILES_INSTRUCTION_SIZE_0780C"
    %endif
    %%insn_0780d:
    call 0x7544 ; 0780D E834FD
    %if ($ - %%insn_0780d) != 3
        %error "MILES_INSTRUCTION_SIZE_0780D"
    %endif
    %%insn_07810:
    push ax ; 07810 50
    %if ($ - %%insn_07810) != 1
        %error "MILES_INSTRUCTION_SIZE_07810"
    %endif
    %%insn_07811:
    push bp ; 07811 55
    %if ($ - %%insn_07811) != 1
        %error "MILES_INSTRUCTION_SIZE_07811"
    %endif
    db 0x8B, 0xEC ; 07812 8BEC | mov bp,sp | encoding preserved
    %%insn_07814:
    mov word [bp+0x2],0x0 ; 07814 C746020000
    %if ($ - %%insn_07814) != 5
        %error "MILES_INSTRUCTION_SIZE_07814"
    %endif
    %%insn_07819:
    pop bp ; 07819 5D
    %if ($ - %%insn_07819) != 1
        %error "MILES_INSTRUCTION_SIZE_07819"
    %endif
    %%insn_0781a:
    push ax ; 0781A 50
    %if ($ - %%insn_0781a) != 1
        %error "MILES_INSTRUCTION_SIZE_0781A"
    %endif
    %%insn_0781b:
    push bp ; 0781B 55
    %if ($ - %%insn_0781b) != 1
        %error "MILES_INSTRUCTION_SIZE_0781B"
    %endif
    db 0x8B, 0xEC ; 0781C 8BEC | mov bp,sp | encoding preserved
    %%insn_0781e:
    mov word [bp+0x2],0xd68d ; 0781E C746028DD6
    %if ($ - %%insn_0781e) != 5
        %error "MILES_INSTRUCTION_SIZE_0781E"
    %endif
    %%insn_07823:
    pop bp ; 07823 5D
    %if ($ - %%insn_07823) != 1
        %error "MILES_INSTRUCTION_SIZE_07823"
    %endif
    %%insn_07824:
    push ax ; 07824 50
    %if ($ - %%insn_07824) != 1
        %error "MILES_INSTRUCTION_SIZE_07824"
    %endif
    %%insn_07825:
    push bp ; 07825 55
    %if ($ - %%insn_07825) != 1
        %error "MILES_INSTRUCTION_SIZE_07825"
    %endif
    db 0x8B, 0xEC ; 07826 8BEC | mov bp,sp | encoding preserved
    %%insn_07828:
    mov word [bp+0x2],0x10 ; 07828 C746021000
    %if ($ - %%insn_07828) != 5
        %error "MILES_INSTRUCTION_SIZE_07828"
    %endif
    %%insn_0782d:
    pop bp ; 0782D 5D
    %if ($ - %%insn_0782d) != 1
        %error "MILES_INSTRUCTION_SIZE_0782D"
    %endif
    %%insn_0782e:
    push cs ; 0782E 0E
    %if ($ - %%insn_0782e) != 1
        %error "MILES_INSTRUCTION_SIZE_0782E"
    %endif
    %%insn_0782f:
    call 0x7961 ; 0782F E82F01
    %if ($ - %%insn_0782f) != 3
        %error "MILES_INSTRUCTION_SIZE_0782F"
    %endif
    %%insn_07832:
    add sp,0x6 ; 07832 83C406
    %if ($ - %%insn_07832) != 3
        %error "MILES_INSTRUCTION_SIZE_07832"
    %endif
    %%insn_07835:
    push ax ; 07835 50
    %if ($ - %%insn_07835) != 1
        %error "MILES_INSTRUCTION_SIZE_07835"
    %endif
    %%insn_07836:
    push bp ; 07836 55
    %if ($ - %%insn_07836) != 1
        %error "MILES_INSTRUCTION_SIZE_07836"
    %endif
    db 0x8B, 0xEC ; 07837 8BEC | mov bp,sp | encoding preserved
    %%insn_07839:
    mov word [bp+0x2],0x10 ; 07839 C746021000
    %if ($ - %%insn_07839) != 5
        %error "MILES_INSTRUCTION_SIZE_07839"
    %endif
    %%insn_0783e:
    pop bp ; 0783E 5D
    %if ($ - %%insn_0783e) != 1
        %error "MILES_INSTRUCTION_SIZE_0783E"
    %endif
    %%insn_0783f:
    push cs ; 0783F 0E
    %if ($ - %%insn_0783f) != 1
        %error "MILES_INSTRUCTION_SIZE_0783F"
    %endif
    %%insn_07840:
    call 0x78d5 ; 07840 E89200
    %if ($ - %%insn_07840) != 3
        %error "MILES_INSTRUCTION_SIZE_07840"
    %endif
    %%insn_07843:
    add sp,0x2 ; 07843 83C402
    %if ($ - %%insn_07843) != 3
        %error "MILES_INSTRUCTION_SIZE_07843"
    %endif
    %%insn_07846:
    pop ax ; 07846 58
    %if ($ - %%insn_07846) != 1
        %error "MILES_INSTRUCTION_SIZE_07846"
    %endif
    db 0x8B, 0xD8 ; 07847 8BD8 | mov bx,ax | encoding preserved
    %%insn_07849:
    shl bx,1 ; 07849 D1E3
    %if ($ - %%insn_07849) != 2
        %error "MILES_INSTRUCTION_SIZE_07849"
    %endif
    db 0x2E, 0xC7, 0x87, 0x70, 0x00, 0x01, 0x00 ; 0784B 2EC78770000100 | mov word [cs:bx+0x70],0x1 | encoding preserved
    %%insn_07852:
    shl bx,1 ; 07852 D1E3
    %if ($ - %%insn_07852) != 2
        %error "MILES_INSTRUCTION_SIZE_07852"
    %endif
    %%insn_07854:
    mov word [cs:bx+0xd6],0xffff ; 07854 2EC787D600FFFF
    %if ($ - %%insn_07854) != 7
        %error "MILES_INSTRUCTION_SIZE_07854"
    %endif
    %%insn_0785b:
    mov word [cs:bx+0xd8],0xffff ; 0785B 2EC787D800FFFF
    %if ($ - %%insn_0785b) != 7
        %error "MILES_INSTRUCTION_SIZE_0785B"
    %endif
    %%insn_07862:
    or bh,0x0 ; 07862 80CF00
    %if ($ - %%insn_07862) != 3
        %error "MILES_INSTRUCTION_SIZE_07862"
    %endif
    miles_register_timer_callback_restore_flags_iret equ $ - 2 ; alternate entry 07863: IRET
    %%insn_07865:
    push cs ; 07865 0E
    %if ($ - %%insn_07865) != 1
        %error "MILES_INSTRUCTION_SIZE_07865"
    %endif
    %%insn_07866:
    call 0x7863 ; 07866 E8FAFF
    %if ($ - %%insn_07866) != 3
        %error "MILES_INSTRUCTION_SIZE_07866"
    %endif
    %%insn_07869:
    pop di ; 07869 5F
    %if ($ - %%insn_07869) != 1
        %error "MILES_INSTRUCTION_SIZE_07869"
    %endif
    %%insn_0786a:
    pop si ; 0786A 5E
    %if ($ - %%insn_0786a) != 1
        %error "MILES_INSTRUCTION_SIZE_0786A"
    %endif
    %%insn_0786b:
    pop ds ; 0786B 1F
    %if ($ - %%insn_0786b) != 1
        %error "MILES_INSTRUCTION_SIZE_0786B"
    %endif
    %%insn_0786c:
    pop bp ; 0786C 5D
    %if ($ - %%insn_0786c) != 1
        %error "MILES_INSTRUCTION_SIZE_0786C"
    %endif
    %%insn_0786d:
    retf ; 0786D CB
    %if ($ - %%insn_0786d) != 1
        %error "MILES_INSTRUCTION_SIZE_0786D"
    %endif
    %if ($ - %%fragment_start) != 203
        %error "MILES_FUNCTION_SIZE_077A3"
    %endif
%endmacro
