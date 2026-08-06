; Linear entry 0285D (1000:285d)
; Ghidra working symbol: FUN_1000_285d
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_0285d_part_00 0
    %%fragment_start:
func_0285d:
    %%insn_0285d:
    push es ; 0285D 06
    %if ($ - %%insn_0285d) > 1
        %error "LONG_0285D"
    %endif
    times 1 - ($ - %%insn_0285d) db 0
    %%insn_0285e:
    mov es,word [bp-0x2aa8] ; 0285E 8E8658D5
    %if ($ - %%insn_0285e) > 4
        %error "LONG_0285E"
    %endif
    times 4 - ($ - %%insn_0285e) db 0
    %%insn_02862:
    cmp word [bp-0x30de],0x0 ; 02862 83BE22CF00
    %if ($ - %%insn_02862) > 5
        %error "LONG_02862"
    %endif
    times 5 - ($ - %%insn_02862) db 0
    %%insn_02867:
    jnz short 0x288b ; 02867 7522
    %if ($ - %%insn_02867) > 2
        %error "LONG_02867"
    %endif
    times 2 - ($ - %%insn_02867) db 0
    db 0x33, 0xC0 ; 02869 33C0 | xor ax,ax | encoding preserved
    db 0x8B, 0xD8 ; 0286B 8BD8 | mov bx,ax | encoding preserved
    db 0x32, 0xE4 ; 0286D 32E4 | xor ah,ah | encoding preserved
    %%insn_0286f:
    mov [bp-0x3076],al ; 0286F 88868ACF
    %if ($ - %%insn_0286f) > 4
        %error "LONG_0286F"
    %endif
    times 4 - ($ - %%insn_0286f) db 0
    %%insn_02873:
    call word near [ss:0xd660] ; 02873 36FF1660D6
    %if ($ - %%insn_02873) > 5
        %error "LONG_02873"
    %endif
    times 5 - ($ - %%insn_02873) db 0
    db 0x33, 0xFF ; 02878 33FF | xor di,di | encoding preserved
    db 0x33, 0xC0 ; 0287A 33C0 | xor ax,ax | encoding preserved
    %%insn_0287c:
    mov cx,0x8000 ; 0287C B90080
    %if ($ - %%insn_0287c) > 3
        %error "LONG_0287C"
    %endif
    times 3 - ($ - %%insn_0287c) db 0
    %%insn_0287f:
    rep stosw ; 0287F F3AB
    %if ($ - %%insn_0287f) > 2
        %error "LONG_0287F"
    %endif
    times 2 - ($ - %%insn_0287f) db 0
    db 0x8B, 0xC3 ; 02881 8BC3 | mov ax,bx | encoding preserved
    %%insn_02883:
    inc ax ; 02883 40
    %if ($ - %%insn_02883) > 1
        %error "LONG_02883"
    %endif
    times 1 - ($ - %%insn_02883) db 0
    db 0x3D, 0x05, 0x00 ; 02884 3D0500 | cmp ax,0x5 | encoding preserved
    %%insn_02887:
    jnz short 0x286b ; 02887 75E2
    %if ($ - %%insn_02887) > 2
        %error "LONG_02887"
    %endif
    times 2 - ($ - %%insn_02887) db 0
    %%insn_02889:
    jmp short 0x2894 ; 02889 EB09
    %if ($ - %%insn_02889) > 2
        %error "LONG_02889"
    %endif
    times 2 - ($ - %%insn_02889) db 0
    db 0x33, 0xFF ; 0288B 33FF | xor di,di | encoding preserved
    db 0x33, 0xC0 ; 0288D 33C0 | xor ax,ax | encoding preserved
    %%insn_0288f:
    mov cx,0x7d00 ; 0288F B9007D
    %if ($ - %%insn_0288f) > 3
        %error "LONG_0288F"
    %endif
    times 3 - ($ - %%insn_0288f) db 0
    %%insn_02892:
    rep stosw ; 02892 F3AB
    %if ($ - %%insn_02892) > 2
        %error "LONG_02892"
    %endif
    times 2 - ($ - %%insn_02892) db 0
    %%insn_02894:
    pop es ; 02894 07
    %if ($ - %%insn_02894) > 1
        %error "LONG_02894"
    %endif
    times 1 - ($ - %%insn_02894) db 0
    %%insn_02895:
    ret ; 02895 C3
    %if ($ - %%insn_02895) > 1
        %error "LONG_02895"
    %endif
    times 1 - ($ - %%insn_02895) db 0
    %if ($ - %%fragment_start) != 57
        %error "SIZE_0285D"
    %endif
%endmacro
