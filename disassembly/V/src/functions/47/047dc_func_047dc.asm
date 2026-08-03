; Linear entry 047DC (1000:47dc)
; Ghidra working symbol: FUN_1000_47dc
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_047dc_part_00 0
    %%fragment_start:
func_047dc:
    %%insn_047dc:
    mov ax,[bp-0x2648] ; 047DC 8B86B8D9
    %if ($ - %%insn_047dc) > 4
        %error "LONG_047DC"
    %endif
    times 4 - ($ - %%insn_047dc) db 0
    db 0x3D, 0x00, 0x00 ; 047E0 3D0000 | cmp ax,0x0 | encoding preserved
    %%insn_047e3:
    jz short 0x47e6 ; 047E3 7401
    %if ($ - %%insn_047e3) > 2
        %error "LONG_047E3"
    %endif
    times 2 - ($ - %%insn_047e3) db 0
    %%insn_047e5:
    ret ; 047E5 C3
    %if ($ - %%insn_047e5) > 1
        %error "LONG_047E5"
    %endif
    times 1 - ($ - %%insn_047e5) db 0
    %%insn_047e6:
    mov dx,[bp-0x2626] ; 047E6 8B96DAD9
    %if ($ - %%insn_047e6) > 4
        %error "LONG_047E6"
    %endif
    times 4 - ($ - %%insn_047e6) db 0
    %%insn_047ea:
    mov cx,[bp-0x2628] ; 047EA 8B8ED8D9
    %if ($ - %%insn_047ea) > 4
        %error "LONG_047EA"
    %endif
    times 4 - ($ - %%insn_047ea) db 0
    %%insn_047ee:
    add dx,0x10 ; 047EE 83C210
    %if ($ - %%insn_047ee) > 3
        %error "LONG_047EE"
    %endif
    times 3 - ($ - %%insn_047ee) db 0
    %%insn_047f1:
    add cx,0x10 ; 047F1 83C110
    %if ($ - %%insn_047f1) > 3
        %error "LONG_047F1"
    %endif
    times 3 - ($ - %%insn_047f1) db 0
    %%insn_047f4:
    mov ax,[si] ; 047F4 8B04
    %if ($ - %%insn_047f4) > 2
        %error "LONG_047F4"
    %endif
    times 2 - ($ - %%insn_047f4) db 0
    db 0x3B, 0xC8 ; 047F6 3BC8 | cmp cx,ax | encoding preserved
    %%insn_047f8:
    jc short 0x4848 ; 047F8 724E
    %if ($ - %%insn_047f8) > 2
        %error "LONG_047F8"
    %endif
    times 2 - ($ - %%insn_047f8) db 0
    %%insn_047fa:
    mov ax,[si+0x2] ; 047FA 8B4402
    %if ($ - %%insn_047fa) > 3
        %error "LONG_047FA"
    %endif
    times 3 - ($ - %%insn_047fa) db 0
    db 0x3B, 0xD0 ; 047FD 3BD0 | cmp dx,ax | encoding preserved
    %%insn_047ff:
    jc short 0x4848 ; 047FF 7247
    %if ($ - %%insn_047ff) > 2
        %error "LONG_047FF"
    %endif
    times 2 - ($ - %%insn_047ff) db 0
    %%insn_04801:
    mov ax,[si+0x4] ; 04801 8B4404
    %if ($ - %%insn_04801) > 3
        %error "LONG_04801"
    %endif
    times 3 - ($ - %%insn_04801) db 0
    db 0x3B, 0xC8 ; 04804 3BC8 | cmp cx,ax | encoding preserved
    %%insn_04806:
    ja short 0x4848 ; 04806 7740
    %if ($ - %%insn_04806) > 2
        %error "LONG_04806"
    %endif
    times 2 - ($ - %%insn_04806) db 0
    %%insn_04808:
    mov ax,[si+0x6] ; 04808 8B4406
    %if ($ - %%insn_04808) > 3
        %error "LONG_04808"
    %endif
    times 3 - ($ - %%insn_04808) db 0
    db 0x3B, 0xD0 ; 0480B 3BD0 | cmp dx,ax | encoding preserved
    %%insn_0480d:
    ja short 0x4848 ; 0480D 7739
    %if ($ - %%insn_0480d) > 2
        %error "LONG_0480D"
    %endif
    times 2 - ($ - %%insn_0480d) db 0
    %%insn_0480f:
    inc byte [bp-0x1e9b] ; 0480F FE8665E1
    %if ($ - %%insn_0480f) > 4
        %error "LONG_0480F"
    %endif
    times 4 - ($ - %%insn_0480f) db 0
    %%insn_04813:
    test word [bp-0x2622],0x1 ; 04813 F786DED90100
    %if ($ - %%insn_04813) > 6
        %error "LONG_04813"
    %endif
    times 6 - ($ - %%insn_04813) db 0
    %%insn_04819:
    jz short 0x4840 ; 04819 7425
    %if ($ - %%insn_04819) > 2
        %error "LONG_04819"
    %endif
    times 2 - ($ - %%insn_04819) db 0
    %%insn_0481b:
    mov si,[si+0x8] ; 0481B 8B7408
    %if ($ - %%insn_0481b) > 3
        %error "LONG_0481B"
    %endif
    times 3 - ($ - %%insn_0481b) db 0
    %%insn_0481e:
    push si ; 0481E 56
    %if ($ - %%insn_0481e) > 1
        %error "LONG_0481E"
    %endif
    times 1 - ($ - %%insn_0481e) db 0
    %%insn_0481f:
    push es ; 0481F 06
    %if ($ - %%insn_0481f) > 1
        %error "LONG_0481F"
    %endif
    times 1 - ($ - %%insn_0481f) db 0
    %%insn_04820:
    push ds ; 04820 1E
    %if ($ - %%insn_04820) > 1
        %error "LONG_04820"
    %endif
    times 1 - ($ - %%insn_04820) db 0
    %%insn_04821:
    mov ax,0x893 ; 04821 B89308
    %if ($ - %%insn_04821) > 3
        %error "LONG_04821"
    %endif
    times 3 - ($ - %%insn_04821) db 0
    %%insn_04824:
    mov ds,ax ; 04824 8ED8
    %if ($ - %%insn_04824) > 2
        %error "LONG_04824"
    %endif
    times 2 - ($ - %%insn_04824) db 0
    %%insn_04826:
    mov es,ax ; 04826 8EC0
    %if ($ - %%insn_04826) > 2
        %error "LONG_04826"
    %endif
    times 2 - ($ - %%insn_04826) db 0
    %%insn_04828:
    mov word [bp-0x2622],0x0 ; 04828 C786DED90000
    %if ($ - %%insn_04828) > 6
        %error "LONG_04828"
    %endif
    times 6 - ($ - %%insn_04828) db 0
    %%insn_0482e:
    call 0x4bf5 ; 0482E E8C403
    %if ($ - %%insn_0482e) > 3
        %error "LONG_0482E"
    %endif
    times 3 - ($ - %%insn_0482e) db 0
    %%insn_04831:
    call 0x2822 ; 04831 E8EEDF
    %if ($ - %%insn_04831) > 3
        %error "LONG_04831"
    %endif
    times 3 - ($ - %%insn_04831) db 0
    %%insn_04834:
    call 0x54f9 ; 04834 E8C20C
    %if ($ - %%insn_04834) > 3
        %error "LONG_04834"
    %endif
    times 3 - ($ - %%insn_04834) db 0
    %%insn_04837:
    pop ds ; 04837 1F
    %if ($ - %%insn_04837) > 1
        %error "LONG_04837"
    %endif
    times 1 - ($ - %%insn_04837) db 0
    %%insn_04838:
    pop es ; 04838 07
    %if ($ - %%insn_04838) > 1
        %error "LONG_04838"
    %endif
    times 1 - ($ - %%insn_04838) db 0
    %%insn_04839:
    pop si ; 04839 5E
    %if ($ - %%insn_04839) > 1
        %error "LONG_04839"
    %endif
    times 1 - ($ - %%insn_04839) db 0
    %%insn_0483a:
    pop ax ; 0483A 58
    %if ($ - %%insn_0483a) > 1
        %error "LONG_0483A"
    %endif
    times 1 - ($ - %%insn_0483a) db 0
    %%insn_0483b:
    pop ax ; 0483B 58
    %if ($ - %%insn_0483b) > 1
        %error "LONG_0483B"
    %endif
    times 1 - ($ - %%insn_0483b) db 0
    %%insn_0483c:
    pop ds ; 0483C 1F
    %if ($ - %%insn_0483c) > 1
        %error "LONG_0483C"
    %endif
    times 1 - ($ - %%insn_0483c) db 0
    %%insn_0483d:
    ret ; 0483D C3
    %if ($ - %%insn_0483d) > 1
        %error "LONG_0483D"
    %endif
    times 1 - ($ - %%insn_0483d) db 0
    %if ($ - %%fragment_start) != 98
        %error "SIZE_047DC"
    %endif
%endmacro

%macro emit_func_047dc_part_01 0
    %%fragment_start:
    %%insn_04840:
    mov al,[si+0xa] ; 04840 8A440A
    %if ($ - %%insn_04840) > 3
        %error "LONG_04840"
    %endif
    times 3 - ($ - %%insn_04840) db 0
    db 0x32, 0xE4 ; 04843 32E4 | xor ah,ah | encoding preserved
    %%insn_04845:
    call 0x4710 ; 04845 E8C8FE
    %if ($ - %%insn_04845) > 3
        %error "LONG_04845"
    %endif
    times 3 - ($ - %%insn_04845) db 0
    %%insn_04848:
    ret ; 04848 C3
    %if ($ - %%insn_04848) > 1
        %error "LONG_04848"
    %endif
    times 1 - ($ - %%insn_04848) db 0
    %if ($ - %%fragment_start) != 9
        %error "SIZE_04840"
    %endif
%endmacro
