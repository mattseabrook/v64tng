; PE virtual entry 0040FE40
; Ghidra working symbol: FUN_0040fe40
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040fe40_part_00 0
    %%fragment_start:
func_0040fe40:
    %%insn_0040fe40:
    push ebx ; 0040FE40 53
    %if ($ - %%insn_0040fe40) > 1
        %error "LONG_0040FE40"
    %endif
    times 1 - ($ - %%insn_0040fe40) db 0
    %%insn_0040fe41:
    push ebp ; 0040FE41 55
    %if ($ - %%insn_0040fe41) > 1
        %error "LONG_0040FE41"
    %endif
    times 1 - ($ - %%insn_0040fe41) db 0
    %%insn_0040fe42:
    push esi ; 0040FE42 56
    %if ($ - %%insn_0040fe42) > 1
        %error "LONG_0040FE42"
    %endif
    times 1 - ($ - %%insn_0040fe42) db 0
    %%insn_0040fe43:
    push edi ; 0040FE43 57
    %if ($ - %%insn_0040fe43) > 1
        %error "LONG_0040FE43"
    %endif
    times 1 - ($ - %%insn_0040fe43) db 0
    %%insn_0040fe44:
    push dword 0x2 ; 0040FE44 6A02
    %if ($ - %%insn_0040fe44) > 2
        %error "LONG_0040FE44"
    %endif
    times 2 - ($ - %%insn_0040fe44) db 0
    db 0x33, 0xED ; 0040FE46 33ED | xor ebp,ebp | encoding preserved
    db 0x33, 0xFF ; 0040FE48 33FF | xor edi,edi | encoding preserved
    %%insn_0040fe4a:
    call 0x40df00 ; 0040FE4A E8B1E0FFFF
    %if ($ - %%insn_0040fe4a) > 5
        %error "LONG_0040FE4A"
    %endif
    times 5 - ($ - %%insn_0040fe4a) db 0
    %%insn_0040fe4f:
    mov eax,[0x423460] ; 0040FE4F A160344200
    %if ($ - %%insn_0040fe4f) > 5
        %error "LONG_0040FE4F"
    %endif
    times 5 - ($ - %%insn_0040fe4f) db 0
    %%insn_0040fe54:
    add esp,0x4 ; 0040FE54 83C404
    %if ($ - %%insn_0040fe54) > 3
        %error "LONG_0040FE54"
    %endif
    times 3 - ($ - %%insn_0040fe54) db 0
    db 0x33, 0xF6 ; 0040FE57 33F6 | xor esi,esi | encoding preserved
    db 0x3B, 0xC5 ; 0040FE59 3BC5 | cmp eax,ebp | encoding preserved
    %%insn_0040fe5b:
    jng 0x40feef ; 0040FE5B 0F8E8E000000
    %if ($ - %%insn_0040fe5b) > 6
        %error "LONG_0040FE5B"
    %endif
    times 6 - ($ - %%insn_0040fe5b) db 0
    %%insn_0040fe61:
    mov bl,0x83 ; 0040FE61 B383
    %if ($ - %%insn_0040fe61) > 2
        %error "LONG_0040FE61"
    %endif
    times 2 - ($ - %%insn_0040fe61) db 0
    %%insn_0040fe63:
    mov eax,[0x42244c] ; 0040FE63 A14C244200
    %if ($ - %%insn_0040fe63) > 5
        %error "LONG_0040FE63"
    %endif
    times 5 - ($ - %%insn_0040fe63) db 0
    %%insn_0040fe68:
    mov eax,[eax+esi*4] ; 0040FE68 8B04B0
    %if ($ - %%insn_0040fe68) > 3
        %error "LONG_0040FE68"
    %endif
    times 3 - ($ - %%insn_0040fe68) db 0
    db 0x3B, 0xC5 ; 0040FE6B 3BC5 | cmp eax,ebp | encoding preserved
    %%insn_0040fe6d:
    jz short 0x40fea7 ; 0040FE6D 7438
    %if ($ - %%insn_0040fe6d) > 2
        %error "LONG_0040FE6D"
    %endif
    times 2 - ($ - %%insn_0040fe6d) db 0
    %%insn_0040fe6f:
    test [eax+0xc],bl ; 0040FE6F 84580C
    %if ($ - %%insn_0040fe6f) > 3
        %error "LONG_0040FE6F"
    %endif
    times 3 - ($ - %%insn_0040fe6f) db 0
    %%insn_0040fe72:
    jnz short 0x40fe96 ; 0040FE72 7522
    %if ($ - %%insn_0040fe72) > 2
        %error "LONG_0040FE72"
    %endif
    times 2 - ($ - %%insn_0040fe72) db 0
    %%insn_0040fe74:
    push eax ; 0040FE74 50
    %if ($ - %%insn_0040fe74) > 1
        %error "LONG_0040FE74"
    %endif
    times 1 - ($ - %%insn_0040fe74) db 0
    %%insn_0040fe75:
    push esi ; 0040FE75 56
    %if ($ - %%insn_0040fe75) > 1
        %error "LONG_0040FE75"
    %endif
    times 1 - ($ - %%insn_0040fe75) db 0
    %%insn_0040fe76:
    call 0x40dfe0 ; 0040FE76 E865E1FFFF
    %if ($ - %%insn_0040fe76) > 5
        %error "LONG_0040FE76"
    %endif
    times 5 - ($ - %%insn_0040fe76) db 0
    %%insn_0040fe7b:
    mov ecx,[0x42244c] ; 0040FE7B 8B0D4C244200
    %if ($ - %%insn_0040fe7b) > 6
        %error "LONG_0040FE7B"
    %endif
    times 6 - ($ - %%insn_0040fe7b) db 0
    %%insn_0040fe81:
    add esp,0x8 ; 0040FE81 83C408
    %if ($ - %%insn_0040fe81) > 3
        %error "LONG_0040FE81"
    %endif
    times 3 - ($ - %%insn_0040fe81) db 0
    %%insn_0040fe84:
    mov eax,[ecx+esi*4] ; 0040FE84 8B04B1
    %if ($ - %%insn_0040fe84) > 3
        %error "LONG_0040FE84"
    %endif
    times 3 - ($ - %%insn_0040fe84) db 0
    %%insn_0040fe87:
    test [eax+0xc],bl ; 0040FE87 84580C
    %if ($ - %%insn_0040fe87) > 3
        %error "LONG_0040FE87"
    %endif
    times 3 - ($ - %%insn_0040fe87) db 0
    %%insn_0040fe8a:
    jz short 0x40fea2 ; 0040FE8A 7416
    %if ($ - %%insn_0040fe8a) > 2
        %error "LONG_0040FE8A"
    %endif
    times 2 - ($ - %%insn_0040fe8a) db 0
    %%insn_0040fe8c:
    push eax ; 0040FE8C 50
    %if ($ - %%insn_0040fe8c) > 1
        %error "LONG_0040FE8C"
    %endif
    times 1 - ($ - %%insn_0040fe8c) db 0
    %%insn_0040fe8d:
    push esi ; 0040FE8D 56
    %if ($ - %%insn_0040fe8d) > 1
        %error "LONG_0040FE8D"
    %endif
    times 1 - ($ - %%insn_0040fe8d) db 0
    %%insn_0040fe8e:
    call 0x40e050 ; 0040FE8E E8BDE1FFFF
    %if ($ - %%insn_0040fe8e) > 5
        %error "LONG_0040FE8E"
    %endif
    times 5 - ($ - %%insn_0040fe8e) db 0
    %%insn_0040fe93:
    add esp,0x8 ; 0040FE93 83C408
    %if ($ - %%insn_0040fe93) > 3
        %error "LONG_0040FE93"
    %endif
    times 3 - ($ - %%insn_0040fe93) db 0
    %%insn_0040fe96:
    mov eax,[0x423460] ; 0040FE96 A160344200
    %if ($ - %%insn_0040fe96) > 5
        %error "LONG_0040FE96"
    %endif
    times 5 - ($ - %%insn_0040fe96) db 0
    %%insn_0040fe9b:
    inc esi ; 0040FE9B 46
    %if ($ - %%insn_0040fe9b) > 1
        %error "LONG_0040FE9B"
    %endif
    times 1 - ($ - %%insn_0040fe9b) db 0
    db 0x3B, 0xF0 ; 0040FE9C 3BF0 | cmp esi,eax | encoding preserved
    %%insn_0040fe9e:
    jl short 0x40fe63 ; 0040FE9E 7CC3
    %if ($ - %%insn_0040fe9e) > 2
        %error "LONG_0040FE9E"
    %endif
    times 2 - ($ - %%insn_0040fe9e) db 0
    %%insn_0040fea0:
    jmp short 0x40feef ; 0040FEA0 EB4D
    %if ($ - %%insn_0040fea0) > 2
        %error "LONG_0040FEA0"
    %endif
    times 2 - ($ - %%insn_0040fea0) db 0
    %%insn_0040fea2:
    mov edi,[ecx+esi*4] ; 0040FEA2 8B3CB1
    %if ($ - %%insn_0040fea2) > 3
        %error "LONG_0040FEA2"
    %endif
    times 3 - ($ - %%insn_0040fea2) db 0
    %%insn_0040fea5:
    jmp short 0x40feef ; 0040FEA5 EB48
    %if ($ - %%insn_0040fea5) > 2
        %error "LONG_0040FEA5"
    %endif
    times 2 - ($ - %%insn_0040fea5) db 0
    %%insn_0040fea7:
    push dword 0x38 ; 0040FEA7 6A38
    %if ($ - %%insn_0040fea7) > 2
        %error "LONG_0040FEA7"
    %endif
    times 2 - ($ - %%insn_0040fea7) db 0
    %%insn_0040fea9:
    shl esi,byte 0x2 ; 0040FEA9 C1E602
    %if ($ - %%insn_0040fea9) > 3
        %error "LONG_0040FEA9"
    %endif
    times 3 - ($ - %%insn_0040fea9) db 0
    %%insn_0040feac:
    call 0x40cdc0 ; 0040FEAC E80FCFFFFF
    %if ($ - %%insn_0040feac) > 5
        %error "LONG_0040FEAC"
    %endif
    times 5 - ($ - %%insn_0040feac) db 0
    %%insn_0040feb1:
    mov ecx,[0x42244c] ; 0040FEB1 8B0D4C244200
    %if ($ - %%insn_0040feb1) > 6
        %error "LONG_0040FEB1"
    %endif
    times 6 - ($ - %%insn_0040feb1) db 0
    %%insn_0040feb7:
    add esp,0x4 ; 0040FEB7 83C404
    %if ($ - %%insn_0040feb7) > 3
        %error "LONG_0040FEB7"
    %endif
    times 3 - ($ - %%insn_0040feb7) db 0
    %%insn_0040feba:
    mov [ecx+esi],eax ; 0040FEBA 890431
    %if ($ - %%insn_0040feba) > 3
        %error "LONG_0040FEBA"
    %endif
    times 3 - ($ - %%insn_0040feba) db 0
    %%insn_0040febd:
    mov edx,[0x42244c] ; 0040FEBD 8B154C244200
    %if ($ - %%insn_0040febd) > 6
        %error "LONG_0040FEBD"
    %endif
    times 6 - ($ - %%insn_0040febd) db 0
    %%insn_0040fec3:
    mov eax,[edx+esi] ; 0040FEC3 8B0432
    %if ($ - %%insn_0040fec3) > 3
        %error "LONG_0040FEC3"
    %endif
    times 3 - ($ - %%insn_0040fec3) db 0
    db 0x3B, 0xC5 ; 0040FEC6 3BC5 | cmp eax,ebp | encoding preserved
    %%insn_0040fec8:
    jz short 0x40feef ; 0040FEC8 7425
    %if ($ - %%insn_0040fec8) > 2
        %error "LONG_0040FEC8"
    %endif
    times 2 - ($ - %%insn_0040fec8) db 0
    %%insn_0040feca:
    add eax,0x20 ; 0040FECA 83C020
    %if ($ - %%insn_0040feca) > 3
        %error "LONG_0040FECA"
    %endif
    times 3 - ($ - %%insn_0040feca) db 0
    %%insn_0040fecd:
    push eax ; 0040FECD 50
    %if ($ - %%insn_0040fecd) > 1
        %error "LONG_0040FECD"
    %endif
    times 1 - ($ - %%insn_0040fecd) db 0
    %%insn_0040fece:
    call dword near [0x424400] ; 0040FECE FF1500444200
    %if ($ - %%insn_0040fece) > 6
        %error "LONG_0040FECE"
    %endif
    times 6 - ($ - %%insn_0040fece) db 0
    %%insn_0040fed4:
    mov eax,[0x42244c] ; 0040FED4 A14C244200
    %if ($ - %%insn_0040fed4) > 5
        %error "LONG_0040FED4"
    %endif
    times 5 - ($ - %%insn_0040fed4) db 0
    %%insn_0040fed9:
    mov ecx,[eax+esi] ; 0040FED9 8B0C30
    %if ($ - %%insn_0040fed9) > 3
        %error "LONG_0040FED9"
    %endif
    times 3 - ($ - %%insn_0040fed9) db 0
    %%insn_0040fedc:
    add ecx,0x20 ; 0040FEDC 83C120
    %if ($ - %%insn_0040fedc) > 3
        %error "LONG_0040FEDC"
    %endif
    times 3 - ($ - %%insn_0040fedc) db 0
    %%insn_0040fedf:
    push ecx ; 0040FEDF 51
    %if ($ - %%insn_0040fedf) > 1
        %error "LONG_0040FEDF"
    %endif
    times 1 - ($ - %%insn_0040fedf) db 0
    %%insn_0040fee0:
    call dword near [0x4243f8] ; 0040FEE0 FF15F8434200
    %if ($ - %%insn_0040fee0) > 6
        %error "LONG_0040FEE0"
    %endif
    times 6 - ($ - %%insn_0040fee0) db 0
    %%insn_0040fee6:
    mov edx,[0x42244c] ; 0040FEE6 8B154C244200
    %if ($ - %%insn_0040fee6) > 6
        %error "LONG_0040FEE6"
    %endif
    times 6 - ($ - %%insn_0040fee6) db 0
    %%insn_0040feec:
    mov edi,[edx+esi] ; 0040FEEC 8B3C32
    %if ($ - %%insn_0040feec) > 3
        %error "LONG_0040FEEC"
    %endif
    times 3 - ($ - %%insn_0040feec) db 0
    db 0x3B, 0xFD ; 0040FEEF 3BFD | cmp edi,ebp | encoding preserved
    %%insn_0040fef1:
    jz short 0x40ff08 ; 0040FEF1 7415
    %if ($ - %%insn_0040fef1) > 2
        %error "LONG_0040FEF1"
    %endif
    times 2 - ($ - %%insn_0040fef1) db 0
    %%insn_0040fef3:
    mov [edi+0x4],ebp ; 0040FEF3 896F04
    %if ($ - %%insn_0040fef3) > 3
        %error "LONG_0040FEF3"
    %endif
    times 3 - ($ - %%insn_0040fef3) db 0
    %%insn_0040fef6:
    mov [edi+0xc],ebp ; 0040FEF6 896F0C
    %if ($ - %%insn_0040fef6) > 3
        %error "LONG_0040FEF6"
    %endif
    times 3 - ($ - %%insn_0040fef6) db 0
    %%insn_0040fef9:
    mov [edi+0x8],ebp ; 0040FEF9 896F08
    %if ($ - %%insn_0040fef9) > 3
        %error "LONG_0040FEF9"
    %endif
    times 3 - ($ - %%insn_0040fef9) db 0
    %%insn_0040fefc:
    mov [edi],ebp ; 0040FEFC 892F
    %if ($ - %%insn_0040fefc) > 2
        %error "LONG_0040FEFC"
    %endif
    times 2 - ($ - %%insn_0040fefc) db 0
    %%insn_0040fefe:
    mov [edi+0x1c],ebp ; 0040FEFE 896F1C
    %if ($ - %%insn_0040fefe) > 3
        %error "LONG_0040FEFE"
    %endif
    times 3 - ($ - %%insn_0040fefe) db 0
    %%insn_0040ff01:
    mov dword [edi+0x10],0xffffffff ; 0040FF01 C74710FFFFFFFF
    %if ($ - %%insn_0040ff01) > 7
        %error "LONG_0040FF01"
    %endif
    times 7 - ($ - %%insn_0040ff01) db 0
    %%insn_0040ff08:
    push dword 0x2 ; 0040FF08 6A02
    %if ($ - %%insn_0040ff08) > 2
        %error "LONG_0040FF08"
    %endif
    times 2 - ($ - %%insn_0040ff08) db 0
    %%insn_0040ff0a:
    call 0x40df80 ; 0040FF0A E871E0FFFF
    %if ($ - %%insn_0040ff0a) > 5
        %error "LONG_0040FF0A"
    %endif
    times 5 - ($ - %%insn_0040ff0a) db 0
    %%insn_0040ff0f:
    add esp,0x4 ; 0040FF0F 83C404
    %if ($ - %%insn_0040ff0f) > 3
        %error "LONG_0040FF0F"
    %endif
    times 3 - ($ - %%insn_0040ff0f) db 0
    db 0x8B, 0xC7 ; 0040FF12 8BC7 | mov eax,edi | encoding preserved
    %%insn_0040ff14:
    pop edi ; 0040FF14 5F
    %if ($ - %%insn_0040ff14) > 1
        %error "LONG_0040FF14"
    %endif
    times 1 - ($ - %%insn_0040ff14) db 0
    %%insn_0040ff15:
    pop esi ; 0040FF15 5E
    %if ($ - %%insn_0040ff15) > 1
        %error "LONG_0040FF15"
    %endif
    times 1 - ($ - %%insn_0040ff15) db 0
    %%insn_0040ff16:
    pop ebp ; 0040FF16 5D
    %if ($ - %%insn_0040ff16) > 1
        %error "LONG_0040FF16"
    %endif
    times 1 - ($ - %%insn_0040ff16) db 0
    %%insn_0040ff17:
    pop ebx ; 0040FF17 5B
    %if ($ - %%insn_0040ff17) > 1
        %error "LONG_0040FF17"
    %endif
    times 1 - ($ - %%insn_0040ff17) db 0
    %%insn_0040ff18:
    ret ; 0040FF18 C3
    %if ($ - %%insn_0040ff18) > 1
        %error "LONG_0040FF18"
    %endif
    times 1 - ($ - %%insn_0040ff18) db 0
    %if ($ - %%fragment_start) != 217
        %error "function fragment size drift: 0040FE40"
    %endif
%endmacro
