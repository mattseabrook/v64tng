; Linear entry 03838 (1000:3838)
; Ghidra working symbol: FUN_1000_3838
; Verified opcode 47h helper: restores the saved archive selector and reopens its indexed resource context when necessary.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_restore_selected_archive_context_part_00 0
    %%fragment_start:
restore_selected_archive_context:
    %%insn_03838:
    push ds ; 03838 1E
    %if ($ - %%insn_03838) > 1
        %error "LONG_03838"
    %endif
    times 1 - ($ - %%insn_03838) db 0
    %%insn_03839:
    push ax ; 03839 50
    %if ($ - %%insn_03839) > 1
        %error "LONG_03839"
    %endif
    times 1 - ($ - %%insn_03839) db 0
    %%insn_0383a:
    mov ds,word [bp-0x2aae] ; 0383A 8E9E52D5
    %if ($ - %%insn_0383a) > 4
        %error "LONG_0383A"
    %endif
    times 4 - ($ - %%insn_0383a) db 0
    %%insn_0383e:
    mov ax,[0xd851] ; 0383E A151D8
    %if ($ - %%insn_0383e) > 3
        %error "LONG_0383E"
    %endif
    times 3 - ($ - %%insn_0383e) db 0
    db 0x3D, 0xFF, 0xFF ; 03841 3DFFFF | cmp ax,0xffff | encoding preserved
    %%insn_03844:
    jz short 0x3887 ; 03844 7441
    %if ($ - %%insn_03844) > 2
        %error "LONG_03844"
    %endif
    times 2 - ($ - %%insn_03844) db 0
    %%insn_03846:
    cmp ax,[0xd831] ; 03846 3B0631D8
    %if ($ - %%insn_03846) > 4
        %error "LONG_03846"
    %endif
    times 4 - ($ - %%insn_03846) db 0
    %%insn_0384a:
    jz short 0x3887 ; 0384A 743B
    %if ($ - %%insn_0384a) > 2
        %error "LONG_0384A"
    %endif
    times 2 - ($ - %%insn_0384a) db 0
    %%insn_0384c:
    pusha ; 0384C 60
    %if ($ - %%insn_0384c) > 1
        %error "LONG_0384C"
    %endif
    times 1 - ($ - %%insn_0384c) db 0
    %%insn_0384d:
    cmp word [0xd849],0xffffffffffffffff ; 0384D 833E49D8FF
    %if ($ - %%insn_0384d) > 5
        %error "LONG_0384D"
    %endif
    times 5 - ($ - %%insn_0384d) db 0
    %%insn_03852:
    jz short 0x3859 ; 03852 7405
    %if ($ - %%insn_03852) > 2
        %error "LONG_03852"
    %endif
    times 2 - ($ - %%insn_03852) db 0
    %%insn_03854:
    push ax ; 03854 50
    %if ($ - %%insn_03854) > 1
        %error "LONG_03854"
    %endif
    times 1 - ($ - %%insn_03854) db 0
    %%insn_03855:
    call 0x3774 ; 03855 E81CFF
    %if ($ - %%insn_03855) > 3
        %error "LONG_03855"
    %endif
    times 3 - ($ - %%insn_03855) db 0
    %%insn_03858:
    pop ax ; 03858 58
    %if ($ - %%insn_03858) > 1
        %error "LONG_03858"
    %endif
    times 1 - ($ - %%insn_03858) db 0
    %%insn_03859:
    mov [0xd831],ax ; 03859 A331D8
    %if ($ - %%insn_03859) > 3
        %error "LONG_03859"
    %endif
    times 3 - ($ - %%insn_03859) db 0
    db 0x03, 0xC0 ; 0385C 03C0 | add ax,ax | encoding preserved
    %%insn_0385e:
    add ax,0xd807 ; 0385E 0507D8
    %if ($ - %%insn_0385e) > 3
        %error "LONG_0385E"
    %endif
    times 3 - ($ - %%insn_0385e) db 0
    db 0x8B, 0xD8 ; 03861 8BD8 | mov bx,ax | encoding preserved
    %%insn_03863:
    mov ax,[bx] ; 03863 8B07
    %if ($ - %%insn_03863) > 2
        %error "LONG_03863"
    %endif
    times 2 - ($ - %%insn_03863) db 0
    db 0x8B, 0xD0 ; 03865 8BD0 | mov dx,ax | encoding preserved
    db 0x8B, 0xD8 ; 03867 8BD8 | mov bx,ax | encoding preserved
    %%insn_03869:
    mov al,[bx] ; 03869 8A07
    %if ($ - %%insn_03869) > 2
        %error "LONG_03869"
    %endif
    times 2 - ($ - %%insn_03869) db 0
    %%insn_0386b:
    inc bx ; 0386B 43
    %if ($ - %%insn_0386b) > 1
        %error "LONG_0386B"
    %endif
    times 1 - ($ - %%insn_0386b) db 0
    db 0x22, 0xC0 ; 0386C 22C0 | and al,al | encoding preserved
    %%insn_0386e:
    jnz short 0x3869 ; 0386E 75F9
    %if ($ - %%insn_0386e) > 2
        %error "LONG_0386E"
    %endif
    times 2 - ($ - %%insn_0386e) db 0
    %%insn_03870:
    mov [0xd833],bx ; 03870 891E33D8
    %if ($ - %%insn_03870) > 4
        %error "LONG_03870"
    %endif
    times 4 - ($ - %%insn_03870) db 0
    %%insn_03874:
    call 0x3756 ; 03874 E8DFFE
    %if ($ - %%insn_03874) > 3
        %error "LONG_03874"
    %endif
    times 3 - ($ - %%insn_03874) db 0
    db 0x3D, 0xFF, 0xFF ; 03877 3DFFFF | cmp ax,0xffff | encoding preserved
    %%insn_0387a:
    jnz short 0x3882 ; 0387A 7506
    %if ($ - %%insn_0387a) > 2
        %error "LONG_0387A"
    %endif
    times 2 - ($ - %%insn_0387a) db 0
    %%insn_0387c:
    mov ax,0x6e0 ; 0387C B8E006
    %if ($ - %%insn_0387c) > 3
        %error "LONG_0387C"
    %endif
    times 3 - ($ - %%insn_0387c) db 0
    %%insn_0387f:
    jmp 0x5ced ; 0387F E96B24
    %if ($ - %%insn_0387f) > 3
        %error "LONG_0387F"
    %endif
    times 3 - ($ - %%insn_0387f) db 0
    %%insn_03882:
    mov [0xd849],bx ; 03882 891E49D8
    %if ($ - %%insn_03882) > 4
        %error "LONG_03882"
    %endif
    times 4 - ($ - %%insn_03882) db 0
    %%insn_03886:
    popa ; 03886 61
    %if ($ - %%insn_03886) > 1
        %error "LONG_03886"
    %endif
    times 1 - ($ - %%insn_03886) db 0
    %%insn_03887:
    pop ax ; 03887 58
    %if ($ - %%insn_03887) > 1
        %error "LONG_03887"
    %endif
    times 1 - ($ - %%insn_03887) db 0
    %%insn_03888:
    pop ds ; 03888 1F
    %if ($ - %%insn_03888) > 1
        %error "LONG_03888"
    %endif
    times 1 - ($ - %%insn_03888) db 0
    %%insn_03889:
    ret ; 03889 C3
    %if ($ - %%insn_03889) > 1
        %error "LONG_03889"
    %endif
    times 1 - ($ - %%insn_03889) db 0
    %if ($ - %%fragment_start) != 82
        %error "SIZE_03838"
    %endif
%endmacro
