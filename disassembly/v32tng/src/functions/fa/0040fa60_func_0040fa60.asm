; PE virtual entry 0040FA60
; Ghidra working symbol: FUN_0040fa60
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040fa60_part_00 0
    %%fragment_start:
func_0040fa60:
    %%insn_0040fa60:
    sub esp,0x41c ; 0040FA60 81EC1C040000
    %if ($ - %%insn_0040fa60) > 6
        %error "LONG_0040FA60"
    %endif
    times 6 - ($ - %%insn_0040fa60) db 0
    %%insn_0040fa66:
    push ebx ; 0040FA66 53
    %if ($ - %%insn_0040fa66) > 1
        %error "LONG_0040FA66"
    %endif
    times 1 - ($ - %%insn_0040fa66) db 0
    %%insn_0040fa67:
    mov ebx,[esp+0x42c] ; 0040FA67 8B9C242C040000
    %if ($ - %%insn_0040fa67) > 7
        %error "LONG_0040FA67"
    %endif
    times 7 - ($ - %%insn_0040fa67) db 0
    %%insn_0040fa6e:
    push ebp ; 0040FA6E 55
    %if ($ - %%insn_0040fa6e) > 1
        %error "LONG_0040FA6E"
    %endif
    times 1 - ($ - %%insn_0040fa6e) db 0
    db 0x33, 0xED ; 0040FA6F 33ED | xor ebp,ebp | encoding preserved
    %%insn_0040fa71:
    push esi ; 0040FA71 56
    %if ($ - %%insn_0040fa71) > 1
        %error "LONG_0040FA71"
    %endif
    times 1 - ($ - %%insn_0040fa71) db 0
    db 0x3B, 0xDD ; 0040FA72 3BDD | cmp ebx,ebp | encoding preserved
    %%insn_0040fa74:
    push edi ; 0040FA74 57
    %if ($ - %%insn_0040fa74) > 1
        %error "LONG_0040FA74"
    %endif
    times 1 - ($ - %%insn_0040fa74) db 0
    %%insn_0040fa75:
    mov [esp+0x10],ebp ; 0040FA75 896C2410
    %if ($ - %%insn_0040fa75) > 4
        %error "LONG_0040FA75"
    %endif
    times 4 - ($ - %%insn_0040fa75) db 0
    %%insn_0040fa79:
    mov [esp+0x20],ebp ; 0040FA79 896C2420
    %if ($ - %%insn_0040fa79) > 4
        %error "LONG_0040FA79"
    %endif
    times 4 - ($ - %%insn_0040fa79) db 0
    %%insn_0040fa7d:
    jnz short 0x40fa8c ; 0040FA7D 750D
    %if ($ - %%insn_0040fa7d) > 2
        %error "LONG_0040FA7D"
    %endif
    times 2 - ($ - %%insn_0040fa7d) db 0
    db 0x33, 0xC0 ; 0040FA7F 33C0 | xor eax,eax | encoding preserved
    %%insn_0040fa81:
    pop edi ; 0040FA81 5F
    %if ($ - %%insn_0040fa81) > 1
        %error "LONG_0040FA81"
    %endif
    times 1 - ($ - %%insn_0040fa81) db 0
    %%insn_0040fa82:
    pop esi ; 0040FA82 5E
    %if ($ - %%insn_0040fa82) > 1
        %error "LONG_0040FA82"
    %endif
    times 1 - ($ - %%insn_0040fa82) db 0
    %%insn_0040fa83:
    pop ebp ; 0040FA83 5D
    %if ($ - %%insn_0040fa83) > 1
        %error "LONG_0040FA83"
    %endif
    times 1 - ($ - %%insn_0040fa83) db 0
    %%insn_0040fa84:
    pop ebx ; 0040FA84 5B
    %if ($ - %%insn_0040fa84) > 1
        %error "LONG_0040FA84"
    %endif
    times 1 - ($ - %%insn_0040fa84) db 0
    %%insn_0040fa85:
    add esp,0x41c ; 0040FA85 81C41C040000
    %if ($ - %%insn_0040fa85) > 6
        %error "LONG_0040FA85"
    %endif
    times 6 - ($ - %%insn_0040fa85) db 0
    %%insn_0040fa8b:
    ret ; 0040FA8B C3
    %if ($ - %%insn_0040fa8b) > 1
        %error "LONG_0040FA8B"
    %endif
    times 1 - ($ - %%insn_0040fa8b) db 0
    %%insn_0040fa8c:
    mov ecx,[esp+0x430] ; 0040FA8C 8B8C2430040000
    %if ($ - %%insn_0040fa8c) > 7
        %error "LONG_0040FA8C"
    %endif
    times 7 - ($ - %%insn_0040fa8c) db 0
    db 0x8B, 0xC1 ; 0040FA93 8BC1 | mov eax,ecx | encoding preserved
    %%insn_0040fa95:
    sar eax,byte 0x5 ; 0040FA95 C1F805
    %if ($ - %%insn_0040fa95) > 3
        %error "LONG_0040FA95"
    %endif
    times 3 - ($ - %%insn_0040fa95) db 0
    %%insn_0040fa98:
    lea edi,[eax*4+0x423480] ; 0040FA98 8D3C8580344200
    %if ($ - %%insn_0040fa98) > 7
        %error "LONG_0040FA98"
    %endif
    times 7 - ($ - %%insn_0040fa98) db 0
    db 0x8B, 0xC1 ; 0040FA9F 8BC1 | mov eax,ecx | encoding preserved
    %%insn_0040faa1:
    and eax,0x1f ; 0040FAA1 83E01F
    %if ($ - %%insn_0040faa1) > 3
        %error "LONG_0040FAA1"
    %endif
    times 3 - ($ - %%insn_0040faa1) db 0
    %%insn_0040faa4:
    mov [esp+0x24],edi ; 0040FAA4 897C2424
    %if ($ - %%insn_0040faa4) > 4
        %error "LONG_0040FAA4"
    %endif
    times 4 - ($ - %%insn_0040faa4) db 0
    %%insn_0040faa8:
    mov edx,[edi] ; 0040FAA8 8B17
    %if ($ - %%insn_0040faa8) > 2
        %error "LONG_0040FAA8"
    %endif
    times 2 - ($ - %%insn_0040faa8) db 0
    %%insn_0040faaa:
    lea esi,[eax+eax*8] ; 0040FAAA 8D34C0
    %if ($ - %%insn_0040faaa) > 3
        %error "LONG_0040FAAA"
    %endif
    times 3 - ($ - %%insn_0040faaa) db 0
    %%insn_0040faad:
    shl esi,byte 0x2 ; 0040FAAD C1E602
    %if ($ - %%insn_0040faad) > 3
        %error "LONG_0040FAAD"
    %endif
    times 3 - ($ - %%insn_0040faad) db 0
    %%insn_0040fab0:
    mov [esp+0x14],esi ; 0040FAB0 89742414
    %if ($ - %%insn_0040fab0) > 4
        %error "LONG_0040FAB0"
    %endif
    times 4 - ($ - %%insn_0040fab0) db 0
    %%insn_0040fab4:
    test byte [esi+edx+0x4],0x20 ; 0040FAB4 F644160420
    %if ($ - %%insn_0040fab4) > 5
        %error "LONG_0040FAB4"
    %endif
    times 5 - ($ - %%insn_0040fab4) db 0
    %%insn_0040fab9:
    jz short 0x40fac7 ; 0040FAB9 740C
    %if ($ - %%insn_0040fab9) > 2
        %error "LONG_0040FAB9"
    %endif
    times 2 - ($ - %%insn_0040fab9) db 0
    %%insn_0040fabb:
    push dword 0x2 ; 0040FABB 6A02
    %if ($ - %%insn_0040fabb) > 2
        %error "LONG_0040FABB"
    %endif
    times 2 - ($ - %%insn_0040fabb) db 0
    %%insn_0040fabd:
    push ebp ; 0040FABD 55
    %if ($ - %%insn_0040fabd) > 1
        %error "LONG_0040FABD"
    %endif
    times 1 - ($ - %%insn_0040fabd) db 0
    %%insn_0040fabe:
    push ecx ; 0040FABE 51
    %if ($ - %%insn_0040fabe) > 1
        %error "LONG_0040FABE"
    %endif
    times 1 - ($ - %%insn_0040fabe) db 0
    %%insn_0040fabf:
    call 0x411310 ; 0040FABF E84C180000
    %if ($ - %%insn_0040fabf) > 5
        %error "LONG_0040FABF"
    %endif
    times 5 - ($ - %%insn_0040fabf) db 0
    %%insn_0040fac4:
    add esp,0xc ; 0040FAC4 83C40C
    %if ($ - %%insn_0040fac4) > 3
        %error "LONG_0040FAC4"
    %endif
    times 3 - ($ - %%insn_0040fac4) db 0
    %%insn_0040fac7:
    mov eax,[edi] ; 0040FAC7 8B07
    %if ($ - %%insn_0040fac7) > 2
        %error "LONG_0040FAC7"
    %endif
    times 2 - ($ - %%insn_0040fac7) db 0
    db 0x03, 0xC6 ; 0040FAC9 03C6 | add eax,esi | encoding preserved
    %%insn_0040facb:
    test byte [eax+0x4],0x80 ; 0040FACB F6400480
    %if ($ - %%insn_0040facb) > 4
        %error "LONG_0040FACB"
    %endif
    times 4 - ($ - %%insn_0040facb) db 0
    %%insn_0040facf:
    jz 0x40fc29 ; 0040FACF 0F8454010000
    %if ($ - %%insn_0040facf) > 6
        %error "LONG_0040FACF"
    %endif
    times 6 - ($ - %%insn_0040facf) db 0
    %%insn_0040fad5:
    mov ebp,[esp+0x434] ; 0040FAD5 8BAC2434040000
    %if ($ - %%insn_0040fad5) > 7
        %error "LONG_0040FAD5"
    %endif
    times 7 - ($ - %%insn_0040fad5) db 0
    %%insn_0040fadc:
    mov dword [esp+0x18],0x0 ; 0040FADC C744241800000000
    %if ($ - %%insn_0040fadc) > 8
        %error "LONG_0040FADC"
    %endif
    times 8 - ($ - %%insn_0040fadc) db 0
    %%insn_0040fae4:
    test ebx,ebx ; 0040FAE4 85DB
    %if ($ - %%insn_0040fae4) > 2
        %error "LONG_0040FAE4"
    %endif
    times 2 - ($ - %%insn_0040fae4) db 0
    db 0x8B, 0xFD ; 0040FAE6 8BFD | mov edi,ebp | encoding preserved
    %%insn_0040fae8:
    jna 0x40fb71 ; 0040FAE8 0F8683000000
    %if ($ - %%insn_0040fae8) > 6
        %error "LONG_0040FAE8"
    %endif
    times 6 - ($ - %%insn_0040fae8) db 0
    %%insn_0040faee:
    lea eax,[esp+0x28] ; 0040FAEE 8D442428
    %if ($ - %%insn_0040faee) > 4
        %error "LONG_0040FAEE"
    %endif
    times 4 - ($ - %%insn_0040faee) db 0
    db 0x8B, 0xCF ; 0040FAF2 8BCF | mov ecx,edi | encoding preserved
    db 0x2B, 0xCD ; 0040FAF4 2BCD | sub ecx,ebp | encoding preserved
    db 0x3B, 0xCB ; 0040FAF6 3BCB | cmp ecx,ebx | encoding preserved
    %%insn_0040faf8:
    jnc short 0x40fb22 ; 0040FAF8 7328
    %if ($ - %%insn_0040faf8) > 2
        %error "LONG_0040FAF8"
    %endif
    times 2 - ($ - %%insn_0040faf8) db 0
    %%insn_0040fafa:
    mov cl,[edi] ; 0040FAFA 8A0F
    %if ($ - %%insn_0040fafa) > 2
        %error "LONG_0040FAFA"
    %endif
    times 2 - ($ - %%insn_0040fafa) db 0
    %%insn_0040fafc:
    inc edi ; 0040FAFC 47
    %if ($ - %%insn_0040fafc) > 1
        %error "LONG_0040FAFC"
    %endif
    times 1 - ($ - %%insn_0040fafc) db 0
    %%insn_0040fafd:
    cmp cl,0xa ; 0040FAFD 80F90A
    %if ($ - %%insn_0040fafd) > 3
        %error "LONG_0040FAFD"
    %endif
    times 3 - ($ - %%insn_0040fafd) db 0
    %%insn_0040fb00:
    jnz short 0x40fb0f ; 0040FB00 750D
    %if ($ - %%insn_0040fb00) > 2
        %error "LONG_0040FB00"
    %endif
    times 2 - ($ - %%insn_0040fb00) db 0
    %%insn_0040fb02:
    mov esi,[esp+0x20] ; 0040FB02 8B742420
    %if ($ - %%insn_0040fb02) > 4
        %error "LONG_0040FB02"
    %endif
    times 4 - ($ - %%insn_0040fb02) db 0
    %%insn_0040fb06:
    mov byte [eax],0xd ; 0040FB06 C6000D
    %if ($ - %%insn_0040fb06) > 3
        %error "LONG_0040FB06"
    %endif
    times 3 - ($ - %%insn_0040fb06) db 0
    %%insn_0040fb09:
    inc esi ; 0040FB09 46
    %if ($ - %%insn_0040fb09) > 1
        %error "LONG_0040FB09"
    %endif
    times 1 - ($ - %%insn_0040fb09) db 0
    %%insn_0040fb0a:
    inc eax ; 0040FB0A 40
    %if ($ - %%insn_0040fb0a) > 1
        %error "LONG_0040FB0A"
    %endif
    times 1 - ($ - %%insn_0040fb0a) db 0
    %%insn_0040fb0b:
    mov [esp+0x20],esi ; 0040FB0B 89742420
    %if ($ - %%insn_0040fb0b) > 4
        %error "LONG_0040FB0B"
    %endif
    times 4 - ($ - %%insn_0040fb0b) db 0
    %%insn_0040fb0f:
    mov [eax],cl ; 0040FB0F 8808
    %if ($ - %%insn_0040fb0f) > 2
        %error "LONG_0040FB0F"
    %endif
    times 2 - ($ - %%insn_0040fb0f) db 0
    %%insn_0040fb11:
    inc eax ; 0040FB11 40
    %if ($ - %%insn_0040fb11) > 1
        %error "LONG_0040FB11"
    %endif
    times 1 - ($ - %%insn_0040fb11) db 0
    db 0x8B, 0xD0 ; 0040FB12 8BD0 | mov edx,eax | encoding preserved
    %%insn_0040fb14:
    lea ecx,[esp+0x28] ; 0040FB14 8D4C2428
    %if ($ - %%insn_0040fb14) > 4
        %error "LONG_0040FB14"
    %endif
    times 4 - ($ - %%insn_0040fb14) db 0
    db 0x2B, 0xD1 ; 0040FB18 2BD1 | sub edx,ecx | encoding preserved
    %%insn_0040fb1a:
    cmp edx,0x400 ; 0040FB1A 81FA00040000
    %if ($ - %%insn_0040fb1a) > 6
        %error "LONG_0040FB1A"
    %endif
    times 6 - ($ - %%insn_0040fb1a) db 0
    %%insn_0040fb20:
    jl short 0x40faf2 ; 0040FB20 7CD0
    %if ($ - %%insn_0040fb20) > 2
        %error "LONG_0040FB20"
    %endif
    times 2 - ($ - %%insn_0040fb20) db 0
    db 0x8B, 0xF0 ; 0040FB22 8BF0 | mov esi,eax | encoding preserved
    %%insn_0040fb24:
    lea edx,[esp+0x28] ; 0040FB24 8D542428
    %if ($ - %%insn_0040fb24) > 4
        %error "LONG_0040FB24"
    %endif
    times 4 - ($ - %%insn_0040fb24) db 0
    %%insn_0040fb28:
    lea eax,[esp+0x1c] ; 0040FB28 8D44241C
    %if ($ - %%insn_0040fb28) > 4
        %error "LONG_0040FB28"
    %endif
    times 4 - ($ - %%insn_0040fb28) db 0
    db 0x2B, 0xF2 ; 0040FB2C 2BF2 | sub esi,edx | encoding preserved
    %%insn_0040fb2e:
    mov edx,[esp+0x24] ; 0040FB2E 8B542424
    %if ($ - %%insn_0040fb2e) > 4
        %error "LONG_0040FB2E"
    %endif
    times 4 - ($ - %%insn_0040fb2e) db 0
    %%insn_0040fb32:
    push dword 0x0 ; 0040FB32 6A00
    %if ($ - %%insn_0040fb32) > 2
        %error "LONG_0040FB32"
    %endif
    times 2 - ($ - %%insn_0040fb32) db 0
    %%insn_0040fb34:
    push eax ; 0040FB34 50
    %if ($ - %%insn_0040fb34) > 1
        %error "LONG_0040FB34"
    %endif
    times 1 - ($ - %%insn_0040fb34) db 0
    %%insn_0040fb35:
    lea ecx,[esp+0x30] ; 0040FB35 8D4C2430
    %if ($ - %%insn_0040fb35) > 4
        %error "LONG_0040FB35"
    %endif
    times 4 - ($ - %%insn_0040fb35) db 0
    %%insn_0040fb39:
    mov eax,[edx] ; 0040FB39 8B02
    %if ($ - %%insn_0040fb39) > 2
        %error "LONG_0040FB39"
    %endif
    times 2 - ($ - %%insn_0040fb39) db 0
    %%insn_0040fb3b:
    push esi ; 0040FB3B 56
    %if ($ - %%insn_0040fb3b) > 1
        %error "LONG_0040FB3B"
    %endif
    times 1 - ($ - %%insn_0040fb3b) db 0
    %%insn_0040fb3c:
    push ecx ; 0040FB3C 51
    %if ($ - %%insn_0040fb3c) > 1
        %error "LONG_0040FB3C"
    %endif
    times 1 - ($ - %%insn_0040fb3c) db 0
    %%insn_0040fb3d:
    mov ecx,[esp+0x24] ; 0040FB3D 8B4C2424
    %if ($ - %%insn_0040fb3d) > 4
        %error "LONG_0040FB3D"
    %endif
    times 4 - ($ - %%insn_0040fb3d) db 0
    %%insn_0040fb41:
    mov edx,[ecx+eax] ; 0040FB41 8B1401
    %if ($ - %%insn_0040fb41) > 3
        %error "LONG_0040FB41"
    %endif
    times 3 - ($ - %%insn_0040fb41) db 0
    %%insn_0040fb44:
    push edx ; 0040FB44 52
    %if ($ - %%insn_0040fb44) > 1
        %error "LONG_0040FB44"
    %endif
    times 1 - ($ - %%insn_0040fb44) db 0
    %%insn_0040fb45:
    call dword near [0x4243e8] ; 0040FB45 FF15E8434200
    %if ($ - %%insn_0040fb45) > 6
        %error "LONG_0040FB45"
    %endif
    times 6 - ($ - %%insn_0040fb45) db 0
    %%insn_0040fb4b:
    test eax,eax ; 0040FB4B 85C0
    %if ($ - %%insn_0040fb4b) > 2
        %error "LONG_0040FB4B"
    %endif
    times 2 - ($ - %%insn_0040fb4b) db 0
    %%insn_0040fb4d:
    jz 0x40fc1a ; 0040FB4D 0F84C7000000
    %if ($ - %%insn_0040fb4d) > 6
        %error "LONG_0040FB4D"
    %endif
    times 6 - ($ - %%insn_0040fb4d) db 0
    %%insn_0040fb53:
    mov eax,[esp+0x1c] ; 0040FB53 8B44241C
    %if ($ - %%insn_0040fb53) > 4
        %error "LONG_0040FB53"
    %endif
    times 4 - ($ - %%insn_0040fb53) db 0
    %%insn_0040fb57:
    mov edx,[esp+0x10] ; 0040FB57 8B542410
    %if ($ - %%insn_0040fb57) > 4
        %error "LONG_0040FB57"
    %endif
    times 4 - ($ - %%insn_0040fb57) db 0
    db 0x03, 0xD0 ; 0040FB5B 03D0 | add edx,eax | encoding preserved
    db 0x3B, 0xC6 ; 0040FB5D 3BC6 | cmp eax,esi | encoding preserved
    %%insn_0040fb5f:
    mov [esp+0x10],edx ; 0040FB5F 89542410
    %if ($ - %%insn_0040fb5f) > 4
        %error "LONG_0040FB5F"
    %endif
    times 4 - ($ - %%insn_0040fb5f) db 0
    %%insn_0040fb63:
    jl short 0x40fb6d ; 0040FB63 7C08
    %if ($ - %%insn_0040fb63) > 2
        %error "LONG_0040FB63"
    %endif
    times 2 - ($ - %%insn_0040fb63) db 0
    db 0x8B, 0xC7 ; 0040FB65 8BC7 | mov eax,edi | encoding preserved
    db 0x2B, 0xC5 ; 0040FB67 2BC5 | sub eax,ebp | encoding preserved
    db 0x3B, 0xC3 ; 0040FB69 3BC3 | cmp eax,ebx | encoding preserved
    %%insn_0040fb6b:
    jc short 0x40faee ; 0040FB6B 7281
    %if ($ - %%insn_0040fb6b) > 2
        %error "LONG_0040FB6B"
    %endif
    times 2 - ($ - %%insn_0040fb6b) db 0
    %%insn_0040fb6d:
    mov esi,[esp+0x14] ; 0040FB6D 8B742414
    %if ($ - %%insn_0040fb6d) > 4
        %error "LONG_0040FB6D"
    %endif
    times 4 - ($ - %%insn_0040fb6d) db 0
    %%insn_0040fb71:
    mov eax,[esp+0x10] ; 0040FB71 8B442410
    %if ($ - %%insn_0040fb71) > 4
        %error "LONG_0040FB71"
    %endif
    times 4 - ($ - %%insn_0040fb71) db 0
    %%insn_0040fb75:
    test eax,eax ; 0040FB75 85C0
    %if ($ - %%insn_0040fb75) > 2
        %error "LONG_0040FB75"
    %endif
    times 2 - ($ - %%insn_0040fb75) db 0
    %%insn_0040fb77:
    jnz 0x40fc09 ; 0040FB77 0F858C000000
    %if ($ - %%insn_0040fb77) > 6
        %error "LONG_0040FB77"
    %endif
    times 6 - ($ - %%insn_0040fb77) db 0
    %%insn_0040fb7d:
    mov eax,[esp+0x18] ; 0040FB7D 8B442418
    %if ($ - %%insn_0040fb7d) > 4
        %error "LONG_0040FB7D"
    %endif
    times 4 - ($ - %%insn_0040fb7d) db 0
    %%insn_0040fb81:
    test eax,eax ; 0040FB81 85C0
    %if ($ - %%insn_0040fb81) > 2
        %error "LONG_0040FB81"
    %endif
    times 2 - ($ - %%insn_0040fb81) db 0
    %%insn_0040fb83:
    jz short 0x40fbc5 ; 0040FB83 7440
    %if ($ - %%insn_0040fb83) > 2
        %error "LONG_0040FB83"
    %endif
    times 2 - ($ - %%insn_0040fb83) db 0
    %%insn_0040fb85:
    cmp eax,0x5 ; 0040FB85 83F805
    %if ($ - %%insn_0040fb85) > 3
        %error "LONG_0040FB85"
    %endif
    times 3 - ($ - %%insn_0040fb85) db 0
    %%insn_0040fb88:
    jnz short 0x40fbae ; 0040FB88 7524
    %if ($ - %%insn_0040fb88) > 2
        %error "LONG_0040FB88"
    %endif
    times 2 - ($ - %%insn_0040fb88) db 0
    %%insn_0040fb8a:
    call 0x410e10 ; 0040FB8A E881120000
    %if ($ - %%insn_0040fb8a) > 5
        %error "LONG_0040FB8A"
    %endif
    times 5 - ($ - %%insn_0040fb8a) db 0
    %%insn_0040fb8f:
    mov dword [eax],0x9 ; 0040FB8F C70009000000
    %if ($ - %%insn_0040fb8f) > 6
        %error "LONG_0040FB8F"
    %endif
    times 6 - ($ - %%insn_0040fb8f) db 0
    %%insn_0040fb95:
    call 0x410e20 ; 0040FB95 E886120000
    %if ($ - %%insn_0040fb95) > 5
        %error "LONG_0040FB95"
    %endif
    times 5 - ($ - %%insn_0040fb95) db 0
    %%insn_0040fb9a:
    mov dword [eax],0x5 ; 0040FB9A C70005000000
    %if ($ - %%insn_0040fb9a) > 6
        %error "LONG_0040FB9A"
    %endif
    times 6 - ($ - %%insn_0040fb9a) db 0
    %%insn_0040fba0:
    or eax,0xffffffffffffffff ; 0040FBA0 83C8FF
    %if ($ - %%insn_0040fba0) > 3
        %error "LONG_0040FBA0"
    %endif
    times 3 - ($ - %%insn_0040fba0) db 0
    %%insn_0040fba3:
    pop edi ; 0040FBA3 5F
    %if ($ - %%insn_0040fba3) > 1
        %error "LONG_0040FBA3"
    %endif
    times 1 - ($ - %%insn_0040fba3) db 0
    %%insn_0040fba4:
    pop esi ; 0040FBA4 5E
    %if ($ - %%insn_0040fba4) > 1
        %error "LONG_0040FBA4"
    %endif
    times 1 - ($ - %%insn_0040fba4) db 0
    %%insn_0040fba5:
    pop ebp ; 0040FBA5 5D
    %if ($ - %%insn_0040fba5) > 1
        %error "LONG_0040FBA5"
    %endif
    times 1 - ($ - %%insn_0040fba5) db 0
    %%insn_0040fba6:
    pop ebx ; 0040FBA6 5B
    %if ($ - %%insn_0040fba6) > 1
        %error "LONG_0040FBA6"
    %endif
    times 1 - ($ - %%insn_0040fba6) db 0
    %%insn_0040fba7:
    add esp,0x41c ; 0040FBA7 81C41C040000
    %if ($ - %%insn_0040fba7) > 6
        %error "LONG_0040FBA7"
    %endif
    times 6 - ($ - %%insn_0040fba7) db 0
    %%insn_0040fbad:
    ret ; 0040FBAD C3
    %if ($ - %%insn_0040fbad) > 1
        %error "LONG_0040FBAD"
    %endif
    times 1 - ($ - %%insn_0040fbad) db 0
    %%insn_0040fbae:
    push eax ; 0040FBAE 50
    %if ($ - %%insn_0040fbae) > 1
        %error "LONG_0040FBAE"
    %endif
    times 1 - ($ - %%insn_0040fbae) db 0
    %%insn_0040fbaf:
    call 0x410d90 ; 0040FBAF E8DC110000
    %if ($ - %%insn_0040fbaf) > 5
        %error "LONG_0040FBAF"
    %endif
    times 5 - ($ - %%insn_0040fbaf) db 0
    %%insn_0040fbb4:
    add esp,0x4 ; 0040FBB4 83C404
    %if ($ - %%insn_0040fbb4) > 3
        %error "LONG_0040FBB4"
    %endif
    times 3 - ($ - %%insn_0040fbb4) db 0
    %%insn_0040fbb7:
    or eax,0xffffffffffffffff ; 0040FBB7 83C8FF
    %if ($ - %%insn_0040fbb7) > 3
        %error "LONG_0040FBB7"
    %endif
    times 3 - ($ - %%insn_0040fbb7) db 0
    %%insn_0040fbba:
    pop edi ; 0040FBBA 5F
    %if ($ - %%insn_0040fbba) > 1
        %error "LONG_0040FBBA"
    %endif
    times 1 - ($ - %%insn_0040fbba) db 0
    %%insn_0040fbbb:
    pop esi ; 0040FBBB 5E
    %if ($ - %%insn_0040fbbb) > 1
        %error "LONG_0040FBBB"
    %endif
    times 1 - ($ - %%insn_0040fbbb) db 0
    %%insn_0040fbbc:
    pop ebp ; 0040FBBC 5D
    %if ($ - %%insn_0040fbbc) > 1
        %error "LONG_0040FBBC"
    %endif
    times 1 - ($ - %%insn_0040fbbc) db 0
    %%insn_0040fbbd:
    pop ebx ; 0040FBBD 5B
    %if ($ - %%insn_0040fbbd) > 1
        %error "LONG_0040FBBD"
    %endif
    times 1 - ($ - %%insn_0040fbbd) db 0
    %%insn_0040fbbe:
    add esp,0x41c ; 0040FBBE 81C41C040000
    %if ($ - %%insn_0040fbbe) > 6
        %error "LONG_0040FBBE"
    %endif
    times 6 - ($ - %%insn_0040fbbe) db 0
    %%insn_0040fbc4:
    ret ; 0040FBC4 C3
    %if ($ - %%insn_0040fbc4) > 1
        %error "LONG_0040FBC4"
    %endif
    times 1 - ($ - %%insn_0040fbc4) db 0
    %%insn_0040fbc5:
    mov ecx,[esp+0x24] ; 0040FBC5 8B4C2424
    %if ($ - %%insn_0040fbc5) > 4
        %error "LONG_0040FBC5"
    %endif
    times 4 - ($ - %%insn_0040fbc5) db 0
    %%insn_0040fbc9:
    mov edx,[ecx] ; 0040FBC9 8B11
    %if ($ - %%insn_0040fbc9) > 2
        %error "LONG_0040FBC9"
    %endif
    times 2 - ($ - %%insn_0040fbc9) db 0
    %%insn_0040fbcb:
    test byte [esi+edx+0x4],0x40 ; 0040FBCB F644160440
    %if ($ - %%insn_0040fbcb) > 5
        %error "LONG_0040FBCB"
    %endif
    times 5 - ($ - %%insn_0040fbcb) db 0
    %%insn_0040fbd0:
    jz short 0x40fbe5 ; 0040FBD0 7413
    %if ($ - %%insn_0040fbd0) > 2
        %error "LONG_0040FBD0"
    %endif
    times 2 - ($ - %%insn_0040fbd0) db 0
    %%insn_0040fbd2:
    cmp byte [ebp+0x0],0x1a ; 0040FBD2 807D001A
    %if ($ - %%insn_0040fbd2) > 4
        %error "LONG_0040FBD2"
    %endif
    times 4 - ($ - %%insn_0040fbd2) db 0
    %%insn_0040fbd6:
    jnz short 0x40fbe5 ; 0040FBD6 750D
    %if ($ - %%insn_0040fbd6) > 2
        %error "LONG_0040FBD6"
    %endif
    times 2 - ($ - %%insn_0040fbd6) db 0
    db 0x33, 0xC0 ; 0040FBD8 33C0 | xor eax,eax | encoding preserved
    %%insn_0040fbda:
    pop edi ; 0040FBDA 5F
    %if ($ - %%insn_0040fbda) > 1
        %error "LONG_0040FBDA"
    %endif
    times 1 - ($ - %%insn_0040fbda) db 0
    %%insn_0040fbdb:
    pop esi ; 0040FBDB 5E
    %if ($ - %%insn_0040fbdb) > 1
        %error "LONG_0040FBDB"
    %endif
    times 1 - ($ - %%insn_0040fbdb) db 0
    %%insn_0040fbdc:
    pop ebp ; 0040FBDC 5D
    %if ($ - %%insn_0040fbdc) > 1
        %error "LONG_0040FBDC"
    %endif
    times 1 - ($ - %%insn_0040fbdc) db 0
    %%insn_0040fbdd:
    pop ebx ; 0040FBDD 5B
    %if ($ - %%insn_0040fbdd) > 1
        %error "LONG_0040FBDD"
    %endif
    times 1 - ($ - %%insn_0040fbdd) db 0
    %%insn_0040fbde:
    add esp,0x41c ; 0040FBDE 81C41C040000
    %if ($ - %%insn_0040fbde) > 6
        %error "LONG_0040FBDE"
    %endif
    times 6 - ($ - %%insn_0040fbde) db 0
    %%insn_0040fbe4:
    ret ; 0040FBE4 C3
    %if ($ - %%insn_0040fbe4) > 1
        %error "LONG_0040FBE4"
    %endif
    times 1 - ($ - %%insn_0040fbe4) db 0
    %%insn_0040fbe5:
    call 0x410e10 ; 0040FBE5 E826120000
    %if ($ - %%insn_0040fbe5) > 5
        %error "LONG_0040FBE5"
    %endif
    times 5 - ($ - %%insn_0040fbe5) db 0
    %%insn_0040fbea:
    mov dword [eax],0x1c ; 0040FBEA C7001C000000
    %if ($ - %%insn_0040fbea) > 6
        %error "LONG_0040FBEA"
    %endif
    times 6 - ($ - %%insn_0040fbea) db 0
    %%insn_0040fbf0:
    call 0x410e20 ; 0040FBF0 E82B120000
    %if ($ - %%insn_0040fbf0) > 5
        %error "LONG_0040FBF0"
    %endif
    times 5 - ($ - %%insn_0040fbf0) db 0
    %%insn_0040fbf5:
    mov dword [eax],0x0 ; 0040FBF5 C70000000000
    %if ($ - %%insn_0040fbf5) > 6
        %error "LONG_0040FBF5"
    %endif
    times 6 - ($ - %%insn_0040fbf5) db 0
    %%insn_0040fbfb:
    or eax,0xffffffffffffffff ; 0040FBFB 83C8FF
    %if ($ - %%insn_0040fbfb) > 3
        %error "LONG_0040FBFB"
    %endif
    times 3 - ($ - %%insn_0040fbfb) db 0
    %%insn_0040fbfe:
    pop edi ; 0040FBFE 5F
    %if ($ - %%insn_0040fbfe) > 1
        %error "LONG_0040FBFE"
    %endif
    times 1 - ($ - %%insn_0040fbfe) db 0
    %%insn_0040fbff:
    pop esi ; 0040FBFF 5E
    %if ($ - %%insn_0040fbff) > 1
        %error "LONG_0040FBFF"
    %endif
    times 1 - ($ - %%insn_0040fbff) db 0
    %%insn_0040fc00:
    pop ebp ; 0040FC00 5D
    %if ($ - %%insn_0040fc00) > 1
        %error "LONG_0040FC00"
    %endif
    times 1 - ($ - %%insn_0040fc00) db 0
    %%insn_0040fc01:
    pop ebx ; 0040FC01 5B
    %if ($ - %%insn_0040fc01) > 1
        %error "LONG_0040FC01"
    %endif
    times 1 - ($ - %%insn_0040fc01) db 0
    %%insn_0040fc02:
    add esp,0x41c ; 0040FC02 81C41C040000
    %if ($ - %%insn_0040fc02) > 6
        %error "LONG_0040FC02"
    %endif
    times 6 - ($ - %%insn_0040fc02) db 0
    %%insn_0040fc08:
    ret ; 0040FC08 C3
    %if ($ - %%insn_0040fc08) > 1
        %error "LONG_0040FC08"
    %endif
    times 1 - ($ - %%insn_0040fc08) db 0
    %%insn_0040fc09:
    mov ecx,[esp+0x20] ; 0040FC09 8B4C2420
    %if ($ - %%insn_0040fc09) > 4
        %error "LONG_0040FC09"
    %endif
    times 4 - ($ - %%insn_0040fc09) db 0
    %%insn_0040fc0d:
    pop edi ; 0040FC0D 5F
    %if ($ - %%insn_0040fc0d) > 1
        %error "LONG_0040FC0D"
    %endif
    times 1 - ($ - %%insn_0040fc0d) db 0
    %%insn_0040fc0e:
    pop esi ; 0040FC0E 5E
    %if ($ - %%insn_0040fc0e) > 1
        %error "LONG_0040FC0E"
    %endif
    times 1 - ($ - %%insn_0040fc0e) db 0
    %%insn_0040fc0f:
    pop ebp ; 0040FC0F 5D
    %if ($ - %%insn_0040fc0f) > 1
        %error "LONG_0040FC0F"
    %endif
    times 1 - ($ - %%insn_0040fc0f) db 0
    db 0x2B, 0xC1 ; 0040FC10 2BC1 | sub eax,ecx | encoding preserved
    %%insn_0040fc12:
    pop ebx ; 0040FC12 5B
    %if ($ - %%insn_0040fc12) > 1
        %error "LONG_0040FC12"
    %endif
    times 1 - ($ - %%insn_0040fc12) db 0
    %%insn_0040fc13:
    add esp,0x41c ; 0040FC13 81C41C040000
    %if ($ - %%insn_0040fc13) > 6
        %error "LONG_0040FC13"
    %endif
    times 6 - ($ - %%insn_0040fc13) db 0
    %%insn_0040fc19:
    ret ; 0040FC19 C3
    %if ($ - %%insn_0040fc19) > 1
        %error "LONG_0040FC19"
    %endif
    times 1 - ($ - %%insn_0040fc19) db 0
    %%insn_0040fc1a:
    call dword near [0x4243c4] ; 0040FC1A FF15C4434200
    %if ($ - %%insn_0040fc1a) > 6
        %error "LONG_0040FC1A"
    %endif
    times 6 - ($ - %%insn_0040fc1a) db 0
    %%insn_0040fc20:
    mov [esp+0x18],eax ; 0040FC20 89442418
    %if ($ - %%insn_0040fc20) > 4
        %error "LONG_0040FC20"
    %endif
    times 4 - ($ - %%insn_0040fc20) db 0
    %%insn_0040fc24:
    jmp 0x40fb6d ; 0040FC24 E944FFFFFF
    %if ($ - %%insn_0040fc24) > 5
        %error "LONG_0040FC24"
    %endif
    times 5 - ($ - %%insn_0040fc24) db 0
    %%insn_0040fc29:
    mov edx,[eax] ; 0040FC29 8B10
    %if ($ - %%insn_0040fc29) > 2
        %error "LONG_0040FC29"
    %endif
    times 2 - ($ - %%insn_0040fc29) db 0
    %%insn_0040fc2b:
    lea ecx,[esp+0x1c] ; 0040FC2B 8D4C241C
    %if ($ - %%insn_0040fc2b) > 4
        %error "LONG_0040FC2B"
    %endif
    times 4 - ($ - %%insn_0040fc2b) db 0
    %%insn_0040fc2f:
    push ebp ; 0040FC2F 55
    %if ($ - %%insn_0040fc2f) > 1
        %error "LONG_0040FC2F"
    %endif
    times 1 - ($ - %%insn_0040fc2f) db 0
    %%insn_0040fc30:
    mov ebp,[esp+0x438] ; 0040FC30 8BAC2438040000
    %if ($ - %%insn_0040fc30) > 7
        %error "LONG_0040FC30"
    %endif
    times 7 - ($ - %%insn_0040fc30) db 0
    %%insn_0040fc37:
    push ecx ; 0040FC37 51
    %if ($ - %%insn_0040fc37) > 1
        %error "LONG_0040FC37"
    %endif
    times 1 - ($ - %%insn_0040fc37) db 0
    %%insn_0040fc38:
    push ebx ; 0040FC38 53
    %if ($ - %%insn_0040fc38) > 1
        %error "LONG_0040FC38"
    %endif
    times 1 - ($ - %%insn_0040fc38) db 0
    %%insn_0040fc39:
    push ebp ; 0040FC39 55
    %if ($ - %%insn_0040fc39) > 1
        %error "LONG_0040FC39"
    %endif
    times 1 - ($ - %%insn_0040fc39) db 0
    %%insn_0040fc3a:
    push edx ; 0040FC3A 52
    %if ($ - %%insn_0040fc3a) > 1
        %error "LONG_0040FC3A"
    %endif
    times 1 - ($ - %%insn_0040fc3a) db 0
    %%insn_0040fc3b:
    call dword near [0x4243e8] ; 0040FC3B FF15E8434200
    %if ($ - %%insn_0040fc3b) > 6
        %error "LONG_0040FC3B"
    %endif
    times 6 - ($ - %%insn_0040fc3b) db 0
    %%insn_0040fc41:
    test eax,eax ; 0040FC41 85C0
    %if ($ - %%insn_0040fc41) > 2
        %error "LONG_0040FC41"
    %endif
    times 2 - ($ - %%insn_0040fc41) db 0
    %%insn_0040fc43:
    jz short 0x40fc5a ; 0040FC43 7415
    %if ($ - %%insn_0040fc43) > 2
        %error "LONG_0040FC43"
    %endif
    times 2 - ($ - %%insn_0040fc43) db 0
    %%insn_0040fc45:
    mov eax,[esp+0x1c] ; 0040FC45 8B44241C
    %if ($ - %%insn_0040fc45) > 4
        %error "LONG_0040FC45"
    %endif
    times 4 - ($ - %%insn_0040fc45) db 0
    %%insn_0040fc49:
    mov dword [esp+0x18],0x0 ; 0040FC49 C744241800000000
    %if ($ - %%insn_0040fc49) > 8
        %error "LONG_0040FC49"
    %endif
    times 8 - ($ - %%insn_0040fc49) db 0
    %%insn_0040fc51:
    mov [esp+0x10],eax ; 0040FC51 89442410
    %if ($ - %%insn_0040fc51) > 4
        %error "LONG_0040FC51"
    %endif
    times 4 - ($ - %%insn_0040fc51) db 0
    %%insn_0040fc55:
    jmp 0x40fb71 ; 0040FC55 E917FFFFFF
    %if ($ - %%insn_0040fc55) > 5
        %error "LONG_0040FC55"
    %endif
    times 5 - ($ - %%insn_0040fc55) db 0
    %%insn_0040fc5a:
    call dword near [0x4243c4] ; 0040FC5A FF15C4434200
    %if ($ - %%insn_0040fc5a) > 6
        %error "LONG_0040FC5A"
    %endif
    times 6 - ($ - %%insn_0040fc5a) db 0
    %%insn_0040fc60:
    mov [esp+0x18],eax ; 0040FC60 89442418
    %if ($ - %%insn_0040fc60) > 4
        %error "LONG_0040FC60"
    %endif
    times 4 - ($ - %%insn_0040fc60) db 0
    %%insn_0040fc64:
    jmp 0x40fb71 ; 0040FC64 E908FFFFFF
    %if ($ - %%insn_0040fc64) > 5
        %error "LONG_0040FC64"
    %endif
    times 5 - ($ - %%insn_0040fc64) db 0
    %if ($ - %%fragment_start) != 521
        %error "function fragment size drift: 0040FA60"
    %endif
%endmacro
