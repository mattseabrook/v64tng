; Linear entry 08766 (1000:8766)
; Ghidra working symbol: FUN_1000_8766
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_08766_part_00 0
    %%fragment_start:
func_08766:
    %%insn_08766:
    push bp ; 08766 55
    %if ($ - %%insn_08766) > 1
        %error "LONG_08766"
    %endif
    times 1 - ($ - %%insn_08766) db 0
    db 0x8B, 0xEC ; 08767 8BEC | mov bp,sp | encoding preserved
    %%insn_08769:
    sub sp,0x8 ; 08769 83EC08
    %if ($ - %%insn_08769) > 3
        %error "LONG_08769"
    %endif
    times 3 - ($ - %%insn_08769) db 0
    %%insn_0876c:
    push ds ; 0876C 1E
    %if ($ - %%insn_0876c) > 1
        %error "LONG_0876C"
    %endif
    times 1 - ($ - %%insn_0876c) db 0
    %%insn_0876d:
    push si ; 0876D 56
    %if ($ - %%insn_0876d) > 1
        %error "LONG_0876D"
    %endif
    times 1 - ($ - %%insn_0876d) db 0
    %%insn_0876e:
    push di ; 0876E 57
    %if ($ - %%insn_0876e) > 1
        %error "LONG_0876E"
    %endif
    times 1 - ($ - %%insn_0876e) db 0
    %%insn_0876f:
    mov byte [bp-0x6],0xff ; 0876F C646FAFF
    %if ($ - %%insn_0876f) > 4
        %error "LONG_0876F"
    %endif
    times 4 - ($ - %%insn_0876f) db 0
    %%insn_08773:
    les di,word [bp+0x8] ; 08773 C47E08
    %if ($ - %%insn_08773) > 3
        %error "LONG_08773"
    %endif
    times 3 - ($ - %%insn_08773) db 0
    %%insn_08776:
    mov [bp-0x4],di ; 08776 897EFC
    %if ($ - %%insn_08776) > 3
        %error "LONG_08776"
    %endif
    times 3 - ($ - %%insn_08776) db 0
    %%insn_08779:
    mov word [bp-0x2],es ; 08779 8C46FE
    %if ($ - %%insn_08779) > 3
        %error "LONG_08779"
    %endif
    times 3 - ($ - %%insn_08779) db 0
    %%insn_0877c:
    lds si,word [bp-0x4] ; 0877C C576FC
    %if ($ - %%insn_0877c) > 3
        %error "LONG_0877C"
    %endif
    times 3 - ($ - %%insn_0877c) db 0
    %%insn_0877f:
    mov ax,[si+0x14] ; 0877F 8B4414
    %if ($ - %%insn_0877f) > 3
        %error "LONG_0877F"
    %endif
    times 3 - ($ - %%insn_0877f) db 0
    %%insn_08782:
    push bx ; 08782 53
    %if ($ - %%insn_08782) > 1
        %error "LONG_08782"
    %endif
    times 1 - ($ - %%insn_08782) db 0
    %%insn_08783:
    push cx ; 08783 51
    %if ($ - %%insn_08783) > 1
        %error "LONG_08783"
    %endif
    times 1 - ($ - %%insn_08783) db 0
    %%insn_08784:
    mov bx,ds ; 08784 8CDB
    %if ($ - %%insn_08784) > 2
        %error "LONG_08784"
    %endif
    times 2 - ($ - %%insn_08784) db 0
    db 0x33, 0xC9 ; 08786 33C9 | xor cx,cx | encoding preserved
    %%insn_08788:
    shl bx,1 ; 08788 D1E3
    %if ($ - %%insn_08788) > 2
        %error "LONG_08788"
    %endif
    times 2 - ($ - %%insn_08788) db 0
    %%insn_0878a:
    rcl cx,1 ; 0878A D1D1
    %if ($ - %%insn_0878a) > 2
        %error "LONG_0878A"
    %endif
    times 2 - ($ - %%insn_0878a) db 0
    %%insn_0878c:
    shl bx,1 ; 0878C D1E3
    %if ($ - %%insn_0878c) > 2
        %error "LONG_0878C"
    %endif
    times 2 - ($ - %%insn_0878c) db 0
    %%insn_0878e:
    rcl cx,1 ; 0878E D1D1
    %if ($ - %%insn_0878e) > 2
        %error "LONG_0878E"
    %endif
    times 2 - ($ - %%insn_0878e) db 0
    %%insn_08790:
    shl bx,1 ; 08790 D1E3
    %if ($ - %%insn_08790) > 2
        %error "LONG_08790"
    %endif
    times 2 - ($ - %%insn_08790) db 0
    %%insn_08792:
    rcl cx,1 ; 08792 D1D1
    %if ($ - %%insn_08792) > 2
        %error "LONG_08792"
    %endif
    times 2 - ($ - %%insn_08792) db 0
    %%insn_08794:
    shl bx,1 ; 08794 D1E3
    %if ($ - %%insn_08794) > 2
        %error "LONG_08794"
    %endif
    times 2 - ($ - %%insn_08794) db 0
    %%insn_08796:
    rcl cx,1 ; 08796 D1D1
    %if ($ - %%insn_08796) > 2
        %error "LONG_08796"
    %endif
    times 2 - ($ - %%insn_08796) db 0
    db 0x03, 0xDE ; 08798 03DE | add bx,si | encoding preserved
    %%insn_0879a:
    adc cx,0x0 ; 0879A 83D100
    %if ($ - %%insn_0879a) > 3
        %error "LONG_0879A"
    %endif
    times 3 - ($ - %%insn_0879a) db 0
    db 0x03, 0xD8 ; 0879D 03D8 | add bx,ax | encoding preserved
    %%insn_0879f:
    adc cx,0x0 ; 0879F 83D100
    %if ($ - %%insn_0879f) > 3
        %error "LONG_0879F"
    %endif
    times 3 - ($ - %%insn_0879f) db 0
    db 0x8B, 0xF3 ; 087A2 8BF3 | mov si,bx | encoding preserved
    %%insn_087a4:
    and si,0xf ; 087A4 83E60F
    %if ($ - %%insn_087a4) > 3
        %error "LONG_087A4"
    %endif
    times 3 - ($ - %%insn_087a4) db 0
    %%insn_087a7:
    shr cx,1 ; 087A7 D1E9
    %if ($ - %%insn_087a7) > 2
        %error "LONG_087A7"
    %endif
    times 2 - ($ - %%insn_087a7) db 0
    %%insn_087a9:
    rcr bx,1 ; 087A9 D1DB
    %if ($ - %%insn_087a9) > 2
        %error "LONG_087A9"
    %endif
    times 2 - ($ - %%insn_087a9) db 0
    %%insn_087ab:
    shr cx,1 ; 087AB D1E9
    %if ($ - %%insn_087ab) > 2
        %error "LONG_087AB"
    %endif
    times 2 - ($ - %%insn_087ab) db 0
    %%insn_087ad:
    rcr bx,1 ; 087AD D1DB
    %if ($ - %%insn_087ad) > 2
        %error "LONG_087AD"
    %endif
    times 2 - ($ - %%insn_087ad) db 0
    %%insn_087af:
    shr cx,1 ; 087AF D1E9
    %if ($ - %%insn_087af) > 2
        %error "LONG_087AF"
    %endif
    times 2 - ($ - %%insn_087af) db 0
    %%insn_087b1:
    rcr bx,1 ; 087B1 D1DB
    %if ($ - %%insn_087b1) > 2
        %error "LONG_087B1"
    %endif
    times 2 - ($ - %%insn_087b1) db 0
    %%insn_087b3:
    shr cx,1 ; 087B3 D1E9
    %if ($ - %%insn_087b3) > 2
        %error "LONG_087B3"
    %endif
    times 2 - ($ - %%insn_087b3) db 0
    %%insn_087b5:
    rcr bx,1 ; 087B5 D1DB
    %if ($ - %%insn_087b5) > 2
        %error "LONG_087B5"
    %endif
    times 2 - ($ - %%insn_087b5) db 0
    %%insn_087b7:
    mov ds,bx ; 087B7 8EDB
    %if ($ - %%insn_087b7) > 2
        %error "LONG_087B7"
    %endif
    times 2 - ($ - %%insn_087b7) db 0
    %%insn_087b9:
    pop cx ; 087B9 59
    %if ($ - %%insn_087b9) > 1
        %error "LONG_087B9"
    %endif
    times 1 - ($ - %%insn_087b9) db 0
    %%insn_087ba:
    pop bx ; 087BA 5B
    %if ($ - %%insn_087ba) > 1
        %error "LONG_087BA"
    %endif
    times 1 - ($ - %%insn_087ba) db 0
    %%insn_087bb:
    mov [cs:0xe66],si ; 087BB 2E8936660E
    %if ($ - %%insn_087bb) > 5
        %error "LONG_087BB"
    %endif
    times 5 - ($ - %%insn_087bb) db 0
    %%insn_087c0:
    mov word [cs:0xe68],ds ; 087C0 2E8C1E680E
    %if ($ - %%insn_087c0) > 5
        %error "LONG_087C0"
    %endif
    times 5 - ($ - %%insn_087c0) db 0
    %%insn_087c5:
    cmp word [bp+0xc],0xffffffffffffffff ; 087C5 837E0CFF
    %if ($ - %%insn_087c5) > 4
        %error "LONG_087C5"
    %endif
    times 4 - ($ - %%insn_087c5) db 0
    %%insn_087c9:
    jz short 0x87e3 ; 087C9 7418
    %if ($ - %%insn_087c9) > 2
        %error "LONG_087C9"
    %endif
    times 2 - ($ - %%insn_087c9) db 0
    %%insn_087cb:
    push cs ; 087CB 0E
    %if ($ - %%insn_087cb) > 1
        %error "LONG_087CB"
    %endif
    times 1 - ($ - %%insn_087cb) db 0
    %%insn_087cc:
    call 0x7f55 ; 087CC E886F7
    %if ($ - %%insn_087cc) > 3
        %error "LONG_087CC"
    %endif
    times 3 - ($ - %%insn_087cc) db 0
    db 0x3D, 0x00, 0x00 ; 087CF 3D0000 | cmp ax,0x0 | encoding preserved
    %%insn_087d2:
    jz short 0x884d ; 087D2 7479
    %if ($ - %%insn_087d2) > 2
        %error "LONG_087D2"
    %endif
    times 2 - ($ - %%insn_087d2) db 0
    %%insn_087d4:
    push cs ; 087D4 0E
    %if ($ - %%insn_087d4) > 1
        %error "LONG_087D4"
    %endif
    times 1 - ($ - %%insn_087d4) db 0
    %%insn_087d5:
    call 0x7f64 ; 087D5 E88CF7
    %if ($ - %%insn_087d5) > 3
        %error "LONG_087D5"
    %endif
    times 3 - ($ - %%insn_087d5) db 0
    db 0x8B, 0xF0 ; 087D8 8BF0 | mov si,ax | encoding preserved
    %%insn_087da:
    push cs ; 087DA 0E
    %if ($ - %%insn_087da) > 1
        %error "LONG_087DA"
    %endif
    times 1 - ($ - %%insn_087da) db 0
    %%insn_087db:
    call 0x80d6 ; 087DB E8F8F8
    %if ($ - %%insn_087db) > 3
        %error "LONG_087DB"
    %endif
    times 3 - ($ - %%insn_087db) db 0
    %%insn_087de:
    cmp si,[bp+0xc] ; 087DE 3B760C
    %if ($ - %%insn_087de) > 3
        %error "LONG_087DE"
    %endif
    times 3 - ($ - %%insn_087de) db 0
    %%insn_087e1:
    jnz short 0x87cb ; 087E1 75E8
    %if ($ - %%insn_087e1) > 2
        %error "LONG_087E1"
    %endif
    times 2 - ($ - %%insn_087e1) db 0
    %%insn_087e3:
    push cs ; 087E3 0E
    %if ($ - %%insn_087e3) > 1
        %error "LONG_087E3"
    %endif
    times 1 - ($ - %%insn_087e3) db 0
    %%insn_087e4:
    call 0x7f55 ; 087E4 E86EF7
    %if ($ - %%insn_087e4) > 3
        %error "LONG_087E4"
    %endif
    times 3 - ($ - %%insn_087e4) db 0
    db 0x3D, 0x00, 0x00 ; 087E7 3D0000 | cmp ax,0x0 | encoding preserved
    %%insn_087ea:
    jz short 0x884d ; 087EA 7461
    %if ($ - %%insn_087ea) > 2
        %error "LONG_087EA"
    %endif
    times 2 - ($ - %%insn_087ea) db 0
    db 0x3D, 0x01, 0x00 ; 087EC 3D0100 | cmp ax,0x1 | encoding preserved
    %%insn_087ef:
    jnz short 0x881e ; 087EF 752D
    %if ($ - %%insn_087ef) > 2
        %error "LONG_087EF"
    %endif
    times 2 - ($ - %%insn_087ef) db 0
    %%insn_087f1:
    lds si,word [cs:0xe66] ; 087F1 2EC536660E
    %if ($ - %%insn_087f1) > 5
        %error "LONG_087F1"
    %endif
    times 5 - ($ - %%insn_087f1) db 0
    %%insn_087f6:
    push word [si+0x4] ; 087F6 FF7404
    %if ($ - %%insn_087f6) > 3
        %error "LONG_087F6"
    %endif
    times 3 - ($ - %%insn_087f6) db 0
    %%insn_087f9:
    push cs ; 087F9 0E
    %if ($ - %%insn_087f9) > 1
        %error "LONG_087F9"
    %endif
    times 1 - ($ - %%insn_087f9) db 0
    %%insn_087fa:
    call 0x7f7b ; 087FA E87EF7
    %if ($ - %%insn_087fa) > 3
        %error "LONG_087FA"
    %endif
    times 3 - ($ - %%insn_087fa) db 0
    %%insn_087fd:
    add sp,0x2 ; 087FD 83C402
    %if ($ - %%insn_087fd) > 3
        %error "LONG_087FD"
    %endif
    times 3 - ($ - %%insn_087fd) db 0
    %%insn_08800:
    mov [bp-0x8],ax ; 08800 8946F8
    %if ($ - %%insn_08800) > 3
        %error "LONG_08800"
    %endif
    times 3 - ($ - %%insn_08800) db 0
    %%insn_08803:
    mov al,[si+0x5] ; 08803 8A4405
    %if ($ - %%insn_08803) > 3
        %error "LONG_08803"
    %endif
    times 3 - ($ - %%insn_08803) db 0
    %%insn_08806:
    and al,0xf ; 08806 240F
    %if ($ - %%insn_08806) > 2
        %error "LONG_08806"
    %endif
    times 2 - ($ - %%insn_08806) db 0
    %%insn_08808:
    mov [bp-0x6],al ; 08808 8846FA
    %if ($ - %%insn_08808) > 3
        %error "LONG_08808"
    %endif
    times 3 - ($ - %%insn_08808) db 0
    %%insn_0880b:
    mov ax,[si+0x1] ; 0880B 8B4401
    %if ($ - %%insn_0880b) > 3
        %error "LONG_0880B"
    %endif
    times 3 - ($ - %%insn_0880b) db 0
    %%insn_0880e:
    mov dx,[si+0x3] ; 0880E 8B5403
    %if ($ - %%insn_0880e) > 3
        %error "LONG_0880E"
    %endif
    times 3 - ($ - %%insn_0880e) db 0
    %%insn_08811:
    mov dh,0x0 ; 08811 B600
    %if ($ - %%insn_08811) > 2
        %error "LONG_08811"
    %endif
    times 2 - ($ - %%insn_08811) db 0
    db 0x2D, 0x02, 0x00 ; 08813 2D0200 | sub ax,0x2 | encoding preserved
    %%insn_08816:
    sbb dx,0x0 ; 08816 83DA00
    %if ($ - %%insn_08816) > 3
        %error "LONG_08816"
    %endif
    times 3 - ($ - %%insn_08816) db 0
    %%insn_08819:
    add si,0x6 ; 08819 83C606
    %if ($ - %%insn_08819) > 3
        %error "LONG_08819"
    %endif
    times 3 - ($ - %%insn_08819) db 0
    %%insn_0881c:
    jmp short 0x8833 ; 0881C EB15
    %if ($ - %%insn_0881c) > 2
        %error "LONG_0881C"
    %endif
    times 2 - ($ - %%insn_0881c) db 0
    db 0x3D, 0x02, 0x00 ; 0881E 3D0200 | cmp ax,0x2 | encoding preserved
    %%insn_08821:
    jnz short 0x8847 ; 08821 7524
    %if ($ - %%insn_08821) > 2
        %error "LONG_08821"
    %endif
    times 2 - ($ - %%insn_08821) db 0
    %%insn_08823:
    lds si,word [cs:0xe66] ; 08823 2EC536660E
    %if ($ - %%insn_08823) > 5
        %error "LONG_08823"
    %endif
    times 5 - ($ - %%insn_08823) db 0
    %%insn_08828:
    mov ax,[si+0x1] ; 08828 8B4401
    %if ($ - %%insn_08828) > 3
        %error "LONG_08828"
    %endif
    times 3 - ($ - %%insn_08828) db 0
    %%insn_0882b:
    mov dx,[si+0x3] ; 0882B 8B5403
    %if ($ - %%insn_0882b) > 3
        %error "LONG_0882B"
    %endif
    times 3 - ($ - %%insn_0882b) db 0
    %%insn_0882e:
    mov dh,0x0 ; 0882E B600
    %if ($ - %%insn_0882e) > 2
        %error "LONG_0882E"
    %endif
    times 2 - ($ - %%insn_0882e) db 0
    %%insn_08830:
    add si,0x4 ; 08830 83C604
    %if ($ - %%insn_08830) > 3
        %error "LONG_08830"
    %endif
    times 3 - ($ - %%insn_08830) db 0
    %%insn_08833:
    cmp byte [bp-0x6],0x0 ; 08833 807EFA00
    %if ($ - %%insn_08833) > 4
        %error "LONG_08833"
    %endif
    times 4 - ($ - %%insn_08833) db 0
    %%insn_08837:
    jnz short 0x8847 ; 08837 750E
    %if ($ - %%insn_08837) > 2
        %error "LONG_08837"
    %endif
    times 2 - ($ - %%insn_08837) db 0
    %%insn_08839:
    push dx ; 08839 52
    %if ($ - %%insn_08839) > 1
        %error "LONG_08839"
    %endif
    times 1 - ($ - %%insn_08839) db 0
    %%insn_0883a:
    push ax ; 0883A 50
    %if ($ - %%insn_0883a) > 1
        %error "LONG_0883A"
    %endif
    times 1 - ($ - %%insn_0883a) db 0
    %%insn_0883b:
    push ds ; 0883B 1E
    %if ($ - %%insn_0883b) > 1
        %error "LONG_0883B"
    %endif
    times 1 - ($ - %%insn_0883b) db 0
    %%insn_0883c:
    push si ; 0883C 56
    %if ($ - %%insn_0883c) > 1
        %error "LONG_0883C"
    %endif
    times 1 - ($ - %%insn_0883c) db 0
    %%insn_0883d:
    push word [bp-0x8] ; 0883D FF76F8
    %if ($ - %%insn_0883d) > 3
        %error "LONG_0883D"
    %endif
    times 3 - ($ - %%insn_0883d) db 0
    %%insn_08840:
    push cs ; 08840 0E
    %if ($ - %%insn_08840) > 1
        %error "LONG_08840"
    %endif
    times 1 - ($ - %%insn_08840) db 0
    %%insn_08841:
    call 0x7fb6 ; 08841 E872F7
    %if ($ - %%insn_08841) > 3
        %error "LONG_08841"
    %endif
    times 3 - ($ - %%insn_08841) db 0
    %%insn_08844:
    add sp,0xa ; 08844 83C40A
    %if ($ - %%insn_08844) > 3
        %error "LONG_08844"
    %endif
    times 3 - ($ - %%insn_08844) db 0
    %%insn_08847:
    push cs ; 08847 0E
    %if ($ - %%insn_08847) > 1
        %error "LONG_08847"
    %endif
    times 1 - ($ - %%insn_08847) db 0
    %%insn_08848:
    call 0x80d6 ; 08848 E88BF8
    %if ($ - %%insn_08848) > 3
        %error "LONG_08848"
    %endif
    times 3 - ($ - %%insn_08848) db 0
    %%insn_0884b:
    jmp short 0x87e3 ; 0884B EB96
    %if ($ - %%insn_0884b) > 2
        %error "LONG_0884B"
    %endif
    times 2 - ($ - %%insn_0884b) db 0
    %%insn_0884d:
    pop di ; 0884D 5F
    %if ($ - %%insn_0884d) > 1
        %error "LONG_0884D"
    %endif
    times 1 - ($ - %%insn_0884d) db 0
    %%insn_0884e:
    pop si ; 0884E 5E
    %if ($ - %%insn_0884e) > 1
        %error "LONG_0884E"
    %endif
    times 1 - ($ - %%insn_0884e) db 0
    %%insn_0884f:
    pop ds ; 0884F 1F
    %if ($ - %%insn_0884f) > 1
        %error "LONG_0884F"
    %endif
    times 1 - ($ - %%insn_0884f) db 0
    db 0x8B, 0xE5 ; 08850 8BE5 | mov sp,bp | encoding preserved
    %%insn_08852:
    pop bp ; 08852 5D
    %if ($ - %%insn_08852) > 1
        %error "LONG_08852"
    %endif
    times 1 - ($ - %%insn_08852) db 0
    %%insn_08853:
    retf ; 08853 CB
    %if ($ - %%insn_08853) > 1
        %error "LONG_08853"
    %endif
    times 1 - ($ - %%insn_08853) db 0
    %if ($ - %%fragment_start) != 238
        %error "SIZE_08766"
    %endif
%endmacro
