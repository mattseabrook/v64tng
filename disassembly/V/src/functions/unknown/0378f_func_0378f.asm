; Linear entry 0378F (1000:378f)
; Ghidra working symbol: FUN_1000_378f
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_0378f_part_00 0
    %%fragment_start:
func_0378f:
    %%insn_0378f:
    pusha ; 0378F 60
    %if ($ - %%insn_0378f) > 1
        %error "LONG_0378F"
    %endif
    times 1 - ($ - %%insn_0378f) db 0
    %%insn_03790:
    push ds ; 03790 1E
    %if ($ - %%insn_03790) > 1
        %error "LONG_03790"
    %endif
    times 1 - ($ - %%insn_03790) db 0
    %%insn_03791:
    push es ; 03791 06
    %if ($ - %%insn_03791) > 1
        %error "LONG_03791"
    %endif
    times 1 - ($ - %%insn_03791) db 0
    db 0x8B, 0xF2 ; 03792 8BF2 | mov si,dx | encoding preserved
    %%insn_03794:
    mov ax,0x893 ; 03794 B89308
    %if ($ - %%insn_03794) > 3
        %error "LONG_03794"
    %endif
    times 3 - ($ - %%insn_03794) db 0
    %%insn_03797:
    mov ds,ax ; 03797 8ED8
    %if ($ - %%insn_03797) > 2
        %error "LONG_03797"
    %endif
    times 2 - ($ - %%insn_03797) db 0
    %%insn_03799:
    mov es,ax ; 03799 8EC0
    %if ($ - %%insn_03799) > 2
        %error "LONG_03799"
    %endif
    times 2 - ($ - %%insn_03799) db 0
    %%insn_0379b:
    mov ax,[0xd833] ; 0379B A133D8
    %if ($ - %%insn_0379b) > 3
        %error "LONG_0379B"
    %endif
    times 3 - ($ - %%insn_0379b) db 0
    db 0x8B, 0xD0 ; 0379E 8BD0 | mov dx,ax | encoding preserved
    %%insn_037a0:
    call 0x39f8 ; 037A0 E85502
    %if ($ - %%insn_037a0) > 3
        %error "LONG_037A0"
    %endif
    times 3 - ($ - %%insn_037a0) db 0
    %%insn_037a3:
    mov ax,0x3d00 ; 037A3 B8003D
    %if ($ - %%insn_037a3) > 3
        %error "LONG_037A3"
    %endif
    times 3 - ($ - %%insn_037a3) db 0
    %%insn_037a6:
    int byte 0x21 ; 037A6 CD21
    %if ($ - %%insn_037a6) > 2
        %error "LONG_037A6"
    %endif
    times 2 - ($ - %%insn_037a6) db 0
    %%insn_037a8:
    jc short 0x37b0 ; 037A8 7206
    %if ($ - %%insn_037a8) > 2
        %error "LONG_037A8"
    %endif
    times 2 - ($ - %%insn_037a8) db 0
    %%insn_037aa:
    mov [bp-0x27b5],ax ; 037AA 89864BD8
    %if ($ - %%insn_037aa) > 4
        %error "LONG_037AA"
    %endif
    times 4 - ($ - %%insn_037aa) db 0
    %%insn_037ae:
    jmp short 0x37b6 ; 037AE EB06
    %if ($ - %%insn_037ae) > 2
        %error "LONG_037AE"
    %endif
    times 2 - ($ - %%insn_037ae) db 0
    %%insn_037b0:
    mov ax,0x778 ; 037B0 B87807
    %if ($ - %%insn_037b0) > 3
        %error "LONG_037B0"
    %endif
    times 3 - ($ - %%insn_037b0) db 0
    %%insn_037b3:
    jmp 0x5ced ; 037B3 E93725
    %if ($ - %%insn_037b3) > 3
        %error "LONG_037B3"
    %endif
    times 3 - ($ - %%insn_037b3) db 0
    db 0x33, 0xC0 ; 037B6 33C0 | xor ax,ax | encoding preserved
    %%insn_037b8:
    mov [bp-0x27b1],ax ; 037B8 89864FD8
    %if ($ - %%insn_037b8) > 4
        %error "LONG_037B8"
    %endif
    times 4 - ($ - %%insn_037b8) db 0
    %%insn_037bc:
    mov cx,0x14 ; 037BC B91400
    %if ($ - %%insn_037bc) > 3
        %error "LONG_037BC"
    %endif
    times 3 - ($ - %%insn_037bc) db 0
    %%insn_037bf:
    mul cx ; 037BF F7E1
    %if ($ - %%insn_037bf) > 2
        %error "LONG_037BF"
    %endif
    times 2 - ($ - %%insn_037bf) db 0
    db 0x8B, 0xCA ; 037C1 8BCA | mov cx,dx | encoding preserved
    db 0x8B, 0xD0 ; 037C3 8BD0 | mov dx,ax | encoding preserved
    %%insn_037c5:
    mov bx,[bp-0x27b5] ; 037C5 8B9E4BD8
    %if ($ - %%insn_037c5) > 4
        %error "LONG_037C5"
    %endif
    times 4 - ($ - %%insn_037c5) db 0
    db 0x33, 0xC0 ; 037C9 33C0 | xor ax,ax | encoding preserved
    %%insn_037cb:
    mov ax,0x4200 ; 037CB B80042
    %if ($ - %%insn_037cb) > 3
        %error "LONG_037CB"
    %endif
    times 3 - ($ - %%insn_037cb) db 0
    %%insn_037ce:
    int byte 0x21 ; 037CE CD21
    %if ($ - %%insn_037ce) > 2
        %error "LONG_037CE"
    %endif
    times 2 - ($ - %%insn_037ce) db 0
    %%insn_037d0:
    mov dx,0xd835 ; 037D0 BA35D8
    %if ($ - %%insn_037d0) > 3
        %error "LONG_037D0"
    %endif
    times 3 - ($ - %%insn_037d0) db 0
    %%insn_037d3:
    mov cx,0x14 ; 037D3 B91400
    %if ($ - %%insn_037d3) > 3
        %error "LONG_037D3"
    %endif
    times 3 - ($ - %%insn_037d3) db 0
    %%insn_037d6:
    mov bx,[bp-0x27b5] ; 037D6 8B9E4BD8
    %if ($ - %%insn_037d6) > 4
        %error "LONG_037D6"
    %endif
    times 4 - ($ - %%insn_037d6) db 0
    %%insn_037da:
    mov ax,0x3f00 ; 037DA B8003F
    %if ($ - %%insn_037da) > 3
        %error "LONG_037DA"
    %endif
    times 3 - ($ - %%insn_037da) db 0
    %%insn_037dd:
    int byte 0x21 ; 037DD CD21
    %if ($ - %%insn_037dd) > 2
        %error "LONG_037DD"
    %endif
    times 2 - ($ - %%insn_037dd) db 0
    db 0x3D, 0x00, 0x00 ; 037DF 3D0000 | cmp ax,0x0 | encoding preserved
    %%insn_037e2:
    jnz short 0x37f7 ; 037E2 7513
    %if ($ - %%insn_037e2) > 2
        %error "LONG_037E2"
    %endif
    times 2 - ($ - %%insn_037e2) db 0
    %%insn_037e4:
    mov di,0x758 ; 037E4 BF5807
    %if ($ - %%insn_037e4) > 3
        %error "LONG_037E4"
    %endif
    times 3 - ($ - %%insn_037e4) db 0
    %%insn_037e7:
    mov ax,0x1815 ; 037E7 B81518
    %if ($ - %%insn_037e7) > 3
        %error "LONG_037E7"
    %endif
    times 3 - ($ - %%insn_037e7) db 0
    %%insn_037ea:
    mov es,ax ; 037EA 8EC0
    %if ($ - %%insn_037ea) > 2
        %error "LONG_037EA"
    %endif
    times 2 - ($ - %%insn_037ea) db 0
    %%insn_037ec:
    mov cx,0xc ; 037EC B90C00
    %if ($ - %%insn_037ec) > 3
        %error "LONG_037EC"
    %endif
    times 3 - ($ - %%insn_037ec) db 0
    %%insn_037ef:
    rep movsb ; 037EF F3A4
    %if ($ - %%insn_037ef) > 2
        %error "LONG_037EF"
    %endif
    times 2 - ($ - %%insn_037ef) db 0
    %%insn_037f1:
    mov ax,0x758 ; 037F1 B85807
    %if ($ - %%insn_037f1) > 3
        %error "LONG_037F1"
    %endif
    times 3 - ($ - %%insn_037f1) db 0
    %%insn_037f4:
    jmp 0x5ced ; 037F4 E9F624
    %if ($ - %%insn_037f4) > 3
        %error "LONG_037F4"
    %endif
    times 3 - ($ - %%insn_037f4) db 0
    %%insn_037f7:
    mov ax,[bp-0x27bf] ; 037F7 8B8641D8
    %if ($ - %%insn_037f7) > 4
        %error "LONG_037F7"
    %endif
    times 4 - ($ - %%insn_037f7) db 0
    %%insn_037fb:
    push ax ; 037FB 50
    %if ($ - %%insn_037fb) > 1
        %error "LONG_037FB"
    %endif
    times 1 - ($ - %%insn_037fb) db 0
    %%insn_037fc:
    mov word [bp-0x27bf],0x0 ; 037FC C78641D80000
    %if ($ - %%insn_037fc) > 6
        %error "LONG_037FC"
    %endif
    times 6 - ($ - %%insn_037fc) db 0
    %%insn_03802:
    mov di,0xd835 ; 03802 BF35D8
    %if ($ - %%insn_03802) > 3
        %error "LONG_03802"
    %endif
    times 3 - ($ - %%insn_03802) db 0
    %%insn_03805:
    call 0x4ff6 ; 03805 E8EE17
    %if ($ - %%insn_03805) > 3
        %error "LONG_03805"
    %endif
    times 3 - ($ - %%insn_03805) db 0
    %%insn_03808:
    pop ax ; 03808 58
    %if ($ - %%insn_03808) > 1
        %error "LONG_03808"
    %endif
    times 1 - ($ - %%insn_03808) db 0
    %%insn_03809:
    mov [bp-0x27bf],ax ; 03809 898641D8
    %if ($ - %%insn_03809) > 4
        %error "LONG_03809"
    %endif
    times 4 - ($ - %%insn_03809) db 0
    %%insn_0380d:
    jz short 0x3815 ; 0380D 7406
    %if ($ - %%insn_0380d) > 2
        %error "LONG_0380D"
    %endif
    times 2 - ($ - %%insn_0380d) db 0
    %%insn_0380f:
    inc word [bp-0x27b1] ; 0380F FF864FD8
    %if ($ - %%insn_0380f) > 4
        %error "LONG_0380F"
    %endif
    times 4 - ($ - %%insn_0380f) db 0
    %%insn_03813:
    jmp short 0x37d0 ; 03813 EBBB
    %if ($ - %%insn_03813) > 2
        %error "LONG_03813"
    %endif
    times 2 - ($ - %%insn_03813) db 0
    %%insn_03815:
    mov bx,[bp-0x27b5] ; 03815 8B9E4BD8
    %if ($ - %%insn_03815) > 4
        %error "LONG_03815"
    %endif
    times 4 - ($ - %%insn_03815) db 0
    %%insn_03819:
    mov ax,0x3e00 ; 03819 B8003E
    %if ($ - %%insn_03819) > 3
        %error "LONG_03819"
    %endif
    times 3 - ($ - %%insn_03819) db 0
    %%insn_0381c:
    int byte 0x21 ; 0381C CD21
    %if ($ - %%insn_0381c) > 2
        %error "LONG_0381C"
    %endif
    times 2 - ($ - %%insn_0381c) db 0
    %%insn_0381e:
    pop es ; 0381E 07
    %if ($ - %%insn_0381e) > 1
        %error "LONG_0381E"
    %endif
    times 1 - ($ - %%insn_0381e) db 0
    %%insn_0381f:
    pop ds ; 0381F 1F
    %if ($ - %%insn_0381f) > 1
        %error "LONG_0381F"
    %endif
    times 1 - ($ - %%insn_0381f) db 0
    %%insn_03820:
    popa ; 03820 61
    %if ($ - %%insn_03820) > 1
        %error "LONG_03820"
    %endif
    times 1 - ($ - %%insn_03820) db 0
    %%insn_03821:
    mov ax,[bp-0x27cf] ; 03821 8B8631D8
    %if ($ - %%insn_03821) > 4
        %error "LONG_03821"
    %endif
    times 4 - ($ - %%insn_03821) db 0
    %%insn_03825:
    shl ax,byte 0xa ; 03825 C1E00A
    %if ($ - %%insn_03825) > 3
        %error "LONG_03825"
    %endif
    times 3 - ($ - %%insn_03825) db 0
    %%insn_03828:
    add ax,[bp-0x27b1] ; 03828 03864FD8
    %if ($ - %%insn_03828) > 4
        %error "LONG_03828"
    %endif
    times 4 - ($ - %%insn_03828) db 0
    %%insn_0382c:
    ret ; 0382C C3
    %if ($ - %%insn_0382c) > 1
        %error "LONG_0382C"
    %endif
    times 1 - ($ - %%insn_0382c) db 0
    %if ($ - %%fragment_start) != 158
        %error "SIZE_0378F"
    %endif
%endmacro
