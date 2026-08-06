; PE virtual entry 00414E90
; Ghidra working symbol: FUN_00414e90
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00414e90_part_00 0
    %%fragment_start:
func_00414e90:
    %%insn_00414e90:
    mov eax,[0x421154] ; 00414E90 A154114200
    %if ($ - %%insn_00414e90) > 5
        %error "LONG_00414E90"
    %endif
    times 5 - ($ - %%insn_00414e90) db 0
    %%insn_00414e95:
    push ebx ; 00414E95 53
    %if ($ - %%insn_00414e95) > 1
        %error "LONG_00414E95"
    %endif
    times 1 - ($ - %%insn_00414e95) db 0
    %%insn_00414e96:
    push esi ; 00414E96 56
    %if ($ - %%insn_00414e96) > 1
        %error "LONG_00414E96"
    %endif
    times 1 - ($ - %%insn_00414e96) db 0
    %%insn_00414e97:
    push edi ; 00414E97 57
    %if ($ - %%insn_00414e97) > 1
        %error "LONG_00414E97"
    %endif
    times 1 - ($ - %%insn_00414e97) db 0
    %%insn_00414e98:
    test eax,eax ; 00414E98 85C0
    %if ($ - %%insn_00414e98) > 2
        %error "LONG_00414E98"
    %endif
    times 2 - ($ - %%insn_00414e98) db 0
    %%insn_00414e9a:
    jnz short 0x414eb2 ; 00414E9A 7516
    %if ($ - %%insn_00414e9a) > 2
        %error "LONG_00414E9A"
    %endif
    times 2 - ($ - %%insn_00414e9a) db 0
    %%insn_00414e9c:
    mov eax,[esp+0x14] ; 00414E9C 8B442414
    %if ($ - %%insn_00414e9c) > 4
        %error "LONG_00414E9C"
    %endif
    times 4 - ($ - %%insn_00414e9c) db 0
    %%insn_00414ea0:
    mov ecx,[esp+0x10] ; 00414EA0 8B4C2410
    %if ($ - %%insn_00414ea0) > 4
        %error "LONG_00414EA0"
    %endif
    times 4 - ($ - %%insn_00414ea0) db 0
    %%insn_00414ea4:
    push eax ; 00414EA4 50
    %if ($ - %%insn_00414ea4) > 1
        %error "LONG_00414EA4"
    %endif
    times 1 - ($ - %%insn_00414ea4) db 0
    %%insn_00414ea5:
    push ecx ; 00414EA5 51
    %if ($ - %%insn_00414ea5) > 1
        %error "LONG_00414EA5"
    %endif
    times 1 - ($ - %%insn_00414ea5) db 0
    %%insn_00414ea6:
    call 0x4176b0 ; 00414EA6 E805280000
    %if ($ - %%insn_00414ea6) > 5
        %error "LONG_00414EA6"
    %endif
    times 5 - ($ - %%insn_00414ea6) db 0
    %%insn_00414eab:
    add esp,0x8 ; 00414EAB 83C408
    %if ($ - %%insn_00414eab) > 3
        %error "LONG_00414EAB"
    %endif
    times 3 - ($ - %%insn_00414eab) db 0
    %%insn_00414eae:
    pop edi ; 00414EAE 5F
    %if ($ - %%insn_00414eae) > 1
        %error "LONG_00414EAE"
    %endif
    times 1 - ($ - %%insn_00414eae) db 0
    %%insn_00414eaf:
    pop esi ; 00414EAF 5E
    %if ($ - %%insn_00414eaf) > 1
        %error "LONG_00414EAF"
    %endif
    times 1 - ($ - %%insn_00414eaf) db 0
    %%insn_00414eb0:
    pop ebx ; 00414EB0 5B
    %if ($ - %%insn_00414eb0) > 1
        %error "LONG_00414EB0"
    %endif
    times 1 - ($ - %%insn_00414eb0) db 0
    %%insn_00414eb1:
    ret ; 00414EB1 C3
    %if ($ - %%insn_00414eb1) > 1
        %error "LONG_00414EB1"
    %endif
    times 1 - ($ - %%insn_00414eb1) db 0
    %%insn_00414eb2:
    push dword 0x19 ; 00414EB2 6A19
    %if ($ - %%insn_00414eb2) > 2
        %error "LONG_00414EB2"
    %endif
    times 2 - ($ - %%insn_00414eb2) db 0
    %%insn_00414eb4:
    call 0x40df00 ; 00414EB4 E84790FFFF
    %if ($ - %%insn_00414eb4) > 5
        %error "LONG_00414EB4"
    %endif
    times 5 - ($ - %%insn_00414eb4) db 0
    %%insn_00414eb9:
    mov edi,[esp+0x14] ; 00414EB9 8B7C2414
    %if ($ - %%insn_00414eb9) > 4
        %error "LONG_00414EB9"
    %endif
    times 4 - ($ - %%insn_00414eb9) db 0
    %%insn_00414ebd:
    mov ebx,[esp+0x18] ; 00414EBD 8B5C2418
    %if ($ - %%insn_00414ebd) > 4
        %error "LONG_00414EBD"
    %endif
    times 4 - ($ - %%insn_00414ebd) db 0
    %%insn_00414ec1:
    add esp,0x4 ; 00414EC1 83C404
    %if ($ - %%insn_00414ec1) > 3
        %error "LONG_00414EC1"
    %endif
    times 3 - ($ - %%insn_00414ec1) db 0
    %%insn_00414ec4:
    movzx si,byte [edi] ; 00414EC4 660FB637
    %if ($ - %%insn_00414ec4) > 4
        %error "LONG_00414EC4"
    %endif
    times 4 - ($ - %%insn_00414ec4) db 0
    %%insn_00414ec8:
    test si,si ; 00414EC8 6685F6
    %if ($ - %%insn_00414ec8) > 3
        %error "LONG_00414EC8"
    %endif
    times 3 - ($ - %%insn_00414ec8) db 0
    %%insn_00414ecb:
    jz short 0x414f13 ; 00414ECB 7446
    %if ($ - %%insn_00414ecb) > 2
        %error "LONG_00414ECB"
    %endif
    times 2 - ($ - %%insn_00414ecb) db 0
    %%insn_00414ecd:
    mov cl,0x4 ; 00414ECD B104
    %if ($ - %%insn_00414ecd) > 2
        %error "LONG_00414ECD"
    %endif
    times 2 - ($ - %%insn_00414ecd) db 0
    db 0x8B, 0xD6 ; 00414ECF 8BD6 | mov edx,esi | encoding preserved
    %%insn_00414ed1:
    and edx,0xff ; 00414ED1 81E2FF000000
    %if ($ - %%insn_00414ed1) > 6
        %error "LONG_00414ED1"
    %endif
    times 6 - ($ - %%insn_00414ed1) db 0
    %%insn_00414ed7:
    test [edx+0x421051],cl ; 00414ED7 848A51104200
    %if ($ - %%insn_00414ed7) > 6
        %error "LONG_00414ED7"
    %endif
    times 6 - ($ - %%insn_00414ed7) db 0
    %%insn_00414edd:
    jz short 0x414efd ; 00414EDD 741E
    %if ($ - %%insn_00414edd) > 2
        %error "LONG_00414EDD"
    %endif
    times 2 - ($ - %%insn_00414edd) db 0
    %%insn_00414edf:
    mov al,[edi+0x1] ; 00414EDF 8A4701
    %if ($ - %%insn_00414edf) > 3
        %error "LONG_00414EDF"
    %endif
    times 3 - ($ - %%insn_00414edf) db 0
    %%insn_00414ee2:
    inc edi ; 00414EE2 47
    %if ($ - %%insn_00414ee2) > 1
        %error "LONG_00414EE2"
    %endif
    times 1 - ($ - %%insn_00414ee2) db 0
    %%insn_00414ee3:
    test al,al ; 00414EE3 84C0
    %if ($ - %%insn_00414ee3) > 2
        %error "LONG_00414EE3"
    %endif
    times 2 - ($ - %%insn_00414ee3) db 0
    %%insn_00414ee5:
    jz short 0x414f31 ; 00414EE5 744A
    %if ($ - %%insn_00414ee5) > 2
        %error "LONG_00414EE5"
    %endif
    times 2 - ($ - %%insn_00414ee5) db 0
    %%insn_00414ee7:
    and esi,0xffff ; 00414EE7 81E6FFFF0000
    %if ($ - %%insn_00414ee7) > 6
        %error "LONG_00414EE7"
    %endif
    times 6 - ($ - %%insn_00414ee7) db 0
    %%insn_00414eed:
    and eax,0xff ; 00414EED 25FF000000
    %if ($ - %%insn_00414eed) > 5
        %error "LONG_00414EED"
    %endif
    times 5 - ($ - %%insn_00414eed) db 0
    %%insn_00414ef2:
    shl esi,byte 0x8 ; 00414EF2 C1E608
    %if ($ - %%insn_00414ef2) > 3
        %error "LONG_00414EF2"
    %endif
    times 3 - ($ - %%insn_00414ef2) db 0
    db 0x0B, 0xF0 ; 00414EF5 0BF0 | or esi,eax | encoding preserved
    db 0x3B, 0xDE ; 00414EF7 3BDE | cmp ebx,esi | encoding preserved
    %%insn_00414ef9:
    jz short 0x414f41 ; 00414EF9 7446
    %if ($ - %%insn_00414ef9) > 2
        %error "LONG_00414EF9"
    %endif
    times 2 - ($ - %%insn_00414ef9) db 0
    %%insn_00414efb:
    jmp short 0x414f08 ; 00414EFB EB0B
    %if ($ - %%insn_00414efb) > 2
        %error "LONG_00414EFB"
    %endif
    times 2 - ($ - %%insn_00414efb) db 0
    db 0x8B, 0xC6 ; 00414EFD 8BC6 | mov eax,esi | encoding preserved
    %%insn_00414eff:
    and eax,0xffff ; 00414EFF 25FFFF0000
    %if ($ - %%insn_00414eff) > 5
        %error "LONG_00414EFF"
    %endif
    times 5 - ($ - %%insn_00414eff) db 0
    db 0x3B, 0xD8 ; 00414F04 3BD8 | cmp ebx,eax | encoding preserved
    %%insn_00414f06:
    jz short 0x414f13 ; 00414F06 740B
    %if ($ - %%insn_00414f06) > 2
        %error "LONG_00414F06"
    %endif
    times 2 - ($ - %%insn_00414f06) db 0
    %%insn_00414f08:
    movzx si,byte [edi+0x1] ; 00414F08 660FB67701
    %if ($ - %%insn_00414f08) > 5
        %error "LONG_00414F08"
    %endif
    times 5 - ($ - %%insn_00414f08) db 0
    %%insn_00414f0d:
    inc edi ; 00414F0D 47
    %if ($ - %%insn_00414f0d) > 1
        %error "LONG_00414F0D"
    %endif
    times 1 - ($ - %%insn_00414f0d) db 0
    %%insn_00414f0e:
    test si,si ; 00414F0E 6685F6
    %if ($ - %%insn_00414f0e) > 3
        %error "LONG_00414F0E"
    %endif
    times 3 - ($ - %%insn_00414f0e) db 0
    %%insn_00414f11:
    jnz short 0x414ecf ; 00414F11 75BC
    %if ($ - %%insn_00414f11) > 2
        %error "LONG_00414F11"
    %endif
    times 2 - ($ - %%insn_00414f11) db 0
    %%insn_00414f13:
    push dword 0x19 ; 00414F13 6A19
    %if ($ - %%insn_00414f13) > 2
        %error "LONG_00414F13"
    %endif
    times 2 - ($ - %%insn_00414f13) db 0
    %%insn_00414f15:
    call 0x40df80 ; 00414F15 E86690FFFF
    %if ($ - %%insn_00414f15) > 5
        %error "LONG_00414F15"
    %endif
    times 5 - ($ - %%insn_00414f15) db 0
    %%insn_00414f1a:
    and esi,0xffff ; 00414F1A 81E6FFFF0000
    %if ($ - %%insn_00414f1a) > 6
        %error "LONG_00414F1A"
    %endif
    times 6 - ($ - %%insn_00414f1a) db 0
    %%insn_00414f20:
    add esp,0x4 ; 00414F20 83C404
    %if ($ - %%insn_00414f20) > 3
        %error "LONG_00414F20"
    %endif
    times 3 - ($ - %%insn_00414f20) db 0
    db 0x33, 0xC0 ; 00414F23 33C0 | xor eax,eax | encoding preserved
    db 0x3B, 0xDE ; 00414F25 3BDE | cmp ebx,esi | encoding preserved
    %%insn_00414f27:
    setnz al ; 00414F27 0F95C0
    %if ($ - %%insn_00414f27) > 3
        %error "LONG_00414F27"
    %endif
    times 3 - ($ - %%insn_00414f27) db 0
    %%insn_00414f2a:
    dec eax ; 00414F2A 48
    %if ($ - %%insn_00414f2a) > 1
        %error "LONG_00414F2A"
    %endif
    times 1 - ($ - %%insn_00414f2a) db 0
    db 0x23, 0xC7 ; 00414F2B 23C7 | and eax,edi | encoding preserved
    %%insn_00414f2d:
    pop edi ; 00414F2D 5F
    %if ($ - %%insn_00414f2d) > 1
        %error "LONG_00414F2D"
    %endif
    times 1 - ($ - %%insn_00414f2d) db 0
    %%insn_00414f2e:
    pop esi ; 00414F2E 5E
    %if ($ - %%insn_00414f2e) > 1
        %error "LONG_00414F2E"
    %endif
    times 1 - ($ - %%insn_00414f2e) db 0
    %%insn_00414f2f:
    pop ebx ; 00414F2F 5B
    %if ($ - %%insn_00414f2f) > 1
        %error "LONG_00414F2F"
    %endif
    times 1 - ($ - %%insn_00414f2f) db 0
    %%insn_00414f30:
    ret ; 00414F30 C3
    %if ($ - %%insn_00414f30) > 1
        %error "LONG_00414F30"
    %endif
    times 1 - ($ - %%insn_00414f30) db 0
    %%insn_00414f31:
    push dword 0x19 ; 00414F31 6A19
    %if ($ - %%insn_00414f31) > 2
        %error "LONG_00414F31"
    %endif
    times 2 - ($ - %%insn_00414f31) db 0
    %%insn_00414f33:
    call 0x40df80 ; 00414F33 E84890FFFF
    %if ($ - %%insn_00414f33) > 5
        %error "LONG_00414F33"
    %endif
    times 5 - ($ - %%insn_00414f33) db 0
    %%insn_00414f38:
    add esp,0x4 ; 00414F38 83C404
    %if ($ - %%insn_00414f38) > 3
        %error "LONG_00414F38"
    %endif
    times 3 - ($ - %%insn_00414f38) db 0
    db 0x33, 0xC0 ; 00414F3B 33C0 | xor eax,eax | encoding preserved
    %%insn_00414f3d:
    pop edi ; 00414F3D 5F
    %if ($ - %%insn_00414f3d) > 1
        %error "LONG_00414F3D"
    %endif
    times 1 - ($ - %%insn_00414f3d) db 0
    %%insn_00414f3e:
    pop esi ; 00414F3E 5E
    %if ($ - %%insn_00414f3e) > 1
        %error "LONG_00414F3E"
    %endif
    times 1 - ($ - %%insn_00414f3e) db 0
    %%insn_00414f3f:
    pop ebx ; 00414F3F 5B
    %if ($ - %%insn_00414f3f) > 1
        %error "LONG_00414F3F"
    %endif
    times 1 - ($ - %%insn_00414f3f) db 0
    %%insn_00414f40:
    ret ; 00414F40 C3
    %if ($ - %%insn_00414f40) > 1
        %error "LONG_00414F40"
    %endif
    times 1 - ($ - %%insn_00414f40) db 0
    %%insn_00414f41:
    push dword 0x19 ; 00414F41 6A19
    %if ($ - %%insn_00414f41) > 2
        %error "LONG_00414F41"
    %endif
    times 2 - ($ - %%insn_00414f41) db 0
    %%insn_00414f43:
    call 0x40df80 ; 00414F43 E83890FFFF
    %if ($ - %%insn_00414f43) > 5
        %error "LONG_00414F43"
    %endif
    times 5 - ($ - %%insn_00414f43) db 0
    %%insn_00414f48:
    add esp,0x4 ; 00414F48 83C404
    %if ($ - %%insn_00414f48) > 3
        %error "LONG_00414F48"
    %endif
    times 3 - ($ - %%insn_00414f48) db 0
    %%insn_00414f4b:
    lea eax,[edi-0x1] ; 00414F4B 8D47FF
    %if ($ - %%insn_00414f4b) > 3
        %error "LONG_00414F4B"
    %endif
    times 3 - ($ - %%insn_00414f4b) db 0
    %%insn_00414f4e:
    pop edi ; 00414F4E 5F
    %if ($ - %%insn_00414f4e) > 1
        %error "LONG_00414F4E"
    %endif
    times 1 - ($ - %%insn_00414f4e) db 0
    %%insn_00414f4f:
    pop esi ; 00414F4F 5E
    %if ($ - %%insn_00414f4f) > 1
        %error "LONG_00414F4F"
    %endif
    times 1 - ($ - %%insn_00414f4f) db 0
    %%insn_00414f50:
    pop ebx ; 00414F50 5B
    %if ($ - %%insn_00414f50) > 1
        %error "LONG_00414F50"
    %endif
    times 1 - ($ - %%insn_00414f50) db 0
    %%insn_00414f51:
    ret ; 00414F51 C3
    %if ($ - %%insn_00414f51) > 1
        %error "LONG_00414F51"
    %endif
    times 1 - ($ - %%insn_00414f51) db 0
    %if ($ - %%fragment_start) != 194
        %error "function fragment size drift: 00414E90"
    %endif
%endmacro
