; PE virtual entry 0040CA10
; Ghidra working symbol: FUN_0040ca10
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040ca10_part_00 0
    %%fragment_start:
func_0040ca10:
    %%insn_0040ca10:
    push ebp ; 0040CA10 55
    %if ($ - %%insn_0040ca10) > 1
        %error "LONG_0040CA10"
    %endif
    times 1 - ($ - %%insn_0040ca10) db 0
    db 0x8B, 0xEC ; 0040CA11 8BEC | mov ebp,esp | encoding preserved
    %%insn_0040ca13:
    push edi ; 0040CA13 57
    %if ($ - %%insn_0040ca13) > 1
        %error "LONG_0040CA13"
    %endif
    times 1 - ($ - %%insn_0040ca13) db 0
    %%insn_0040ca14:
    push esi ; 0040CA14 56
    %if ($ - %%insn_0040ca14) > 1
        %error "LONG_0040CA14"
    %endif
    times 1 - ($ - %%insn_0040ca14) db 0
    %%insn_0040ca15:
    mov esi,[ebp+0xc] ; 0040CA15 8B750C
    %if ($ - %%insn_0040ca15) > 3
        %error "LONG_0040CA15"
    %endif
    times 3 - ($ - %%insn_0040ca15) db 0
    %%insn_0040ca18:
    mov ecx,[ebp+0x10] ; 0040CA18 8B4D10
    %if ($ - %%insn_0040ca18) > 3
        %error "LONG_0040CA18"
    %endif
    times 3 - ($ - %%insn_0040ca18) db 0
    %%insn_0040ca1b:
    mov edi,[ebp+0x8] ; 0040CA1B 8B7D08
    %if ($ - %%insn_0040ca1b) > 3
        %error "LONG_0040CA1B"
    %endif
    times 3 - ($ - %%insn_0040ca1b) db 0
    db 0x8B, 0xC1 ; 0040CA1E 8BC1 | mov eax,ecx | encoding preserved
    db 0x8B, 0xD1 ; 0040CA20 8BD1 | mov edx,ecx | encoding preserved
    db 0x03, 0xC6 ; 0040CA22 03C6 | add eax,esi | encoding preserved
    db 0x3B, 0xFE ; 0040CA24 3BFE | cmp edi,esi | encoding preserved
    %%insn_0040ca26:
    jna short 0x40ca30 ; 0040CA26 7608
    %if ($ - %%insn_0040ca26) > 2
        %error "LONG_0040CA26"
    %endif
    times 2 - ($ - %%insn_0040ca26) db 0
    db 0x3B, 0xF8 ; 0040CA28 3BF8 | cmp edi,eax | encoding preserved
    %%insn_0040ca2a:
    jc 0x40cba8 ; 0040CA2A 0F8278010000
    %if ($ - %%insn_0040ca2a) > 6
        %error "LONG_0040CA2A"
    %endif
    times 6 - ($ - %%insn_0040ca2a) db 0
    %%insn_0040ca30:
    test edi,0x3 ; 0040CA30 F7C703000000
    %if ($ - %%insn_0040ca30) > 6
        %error "LONG_0040CA30"
    %endif
    times 6 - ($ - %%insn_0040ca30) db 0
    %%insn_0040ca36:
    jnz short 0x40ca4c ; 0040CA36 7514
    %if ($ - %%insn_0040ca36) > 2
        %error "LONG_0040CA36"
    %endif
    times 2 - ($ - %%insn_0040ca36) db 0
    %%insn_0040ca38:
    shr ecx,byte 0x2 ; 0040CA38 C1E902
    %if ($ - %%insn_0040ca38) > 3
        %error "LONG_0040CA38"
    %endif
    times 3 - ($ - %%insn_0040ca38) db 0
    %%insn_0040ca3b:
    and edx,0x3 ; 0040CA3B 83E203
    %if ($ - %%insn_0040ca3b) > 3
        %error "LONG_0040CA3B"
    %endif
    times 3 - ($ - %%insn_0040ca3b) db 0
    %%insn_0040ca3e:
    cmp ecx,0x8 ; 0040CA3E 83F908
    %if ($ - %%insn_0040ca3e) > 3
        %error "LONG_0040CA3E"
    %endif
    times 3 - ($ - %%insn_0040ca3e) db 0
    %%insn_0040ca41:
    jc short 0x40ca6c ; 0040CA41 7229
    %if ($ - %%insn_0040ca41) > 2
        %error "LONG_0040CA41"
    %endif
    times 2 - ($ - %%insn_0040ca41) db 0
    %%insn_0040ca43:
    rep movsd ; 0040CA43 F3A5
    %if ($ - %%insn_0040ca43) > 2
        %error "LONG_0040CA43"
    %endif
    times 2 - ($ - %%insn_0040ca43) db 0
    %%insn_0040ca45:
    jmp dword near [edx*4+0x40cb58] ; 0040CA45 FF249558CB4000
    %if ($ - %%insn_0040ca45) > 7
        %error "LONG_0040CA45"
    %endif
    times 7 - ($ - %%insn_0040ca45) db 0
    db 0x8B, 0xC7 ; 0040CA4C 8BC7 | mov eax,edi | encoding preserved
    %%insn_0040ca4e:
    mov edx,0x3 ; 0040CA4E BA03000000
    %if ($ - %%insn_0040ca4e) > 5
        %error "LONG_0040CA4E"
    %endif
    times 5 - ($ - %%insn_0040ca4e) db 0
    %%insn_0040ca53:
    sub ecx,0x4 ; 0040CA53 83E904
    %if ($ - %%insn_0040ca53) > 3
        %error "LONG_0040CA53"
    %endif
    times 3 - ($ - %%insn_0040ca53) db 0
    %%insn_0040ca56:
    jc short 0x40ca64 ; 0040CA56 720C
    %if ($ - %%insn_0040ca56) > 2
        %error "LONG_0040CA56"
    %endif
    times 2 - ($ - %%insn_0040ca56) db 0
    %%insn_0040ca58:
    and eax,0x3 ; 0040CA58 83E003
    %if ($ - %%insn_0040ca58) > 3
        %error "LONG_0040CA58"
    %endif
    times 3 - ($ - %%insn_0040ca58) db 0
    db 0x03, 0xC8 ; 0040CA5B 03C8 | add ecx,eax | encoding preserved
    %%insn_0040ca5d:
    jmp dword near [eax*4+0x40ca70] ; 0040CA5D FF248570CA4000
    %if ($ - %%insn_0040ca5d) > 7
        %error "LONG_0040CA5D"
    %endif
    times 7 - ($ - %%insn_0040ca5d) db 0
    %%insn_0040ca64:
    jmp dword near [ecx*4+0x40cb68] ; 0040CA64 FF248D68CB4000
    %if ($ - %%insn_0040ca64) > 7
        %error "LONG_0040CA64"
    %endif
    times 7 - ($ - %%insn_0040ca64) db 0
    %if ($ - %%fragment_start) != 91
        %error "function fragment size drift: 0040CA10"
    %endif
%endmacro

%macro emit_func_0040ca10_part_01 0
    %%fragment_start:
    %%insn_0040ca6c:
    jmp dword near [ecx*4+0x40caec] ; 0040CA6C FF248DECCA4000
    %if ($ - %%insn_0040ca6c) > 7
        %error "LONG_0040CA6C"
    %endif
    times 7 - ($ - %%insn_0040ca6c) db 0
    %if ($ - %%fragment_start) != 7
        %error "function fragment size drift: 0040CA6C"
    %endif
%endmacro

%macro emit_func_0040ca10_part_02 0
    %%fragment_start:
    db 0x23, 0xD1 ; 0040CA80 23D1 | and edx,ecx | encoding preserved
    %%insn_0040ca82:
    mov al,[esi] ; 0040CA82 8A06
    %if ($ - %%insn_0040ca82) > 2
        %error "LONG_0040CA82"
    %endif
    times 2 - ($ - %%insn_0040ca82) db 0
    %%insn_0040ca84:
    mov [edi],al ; 0040CA84 8807
    %if ($ - %%insn_0040ca84) > 2
        %error "LONG_0040CA84"
    %endif
    times 2 - ($ - %%insn_0040ca84) db 0
    %%insn_0040ca86:
    mov al,[esi+0x1] ; 0040CA86 8A4601
    %if ($ - %%insn_0040ca86) > 3
        %error "LONG_0040CA86"
    %endif
    times 3 - ($ - %%insn_0040ca86) db 0
    %%insn_0040ca89:
    mov [edi+0x1],al ; 0040CA89 884701
    %if ($ - %%insn_0040ca89) > 3
        %error "LONG_0040CA89"
    %endif
    times 3 - ($ - %%insn_0040ca89) db 0
    %%insn_0040ca8c:
    mov al,[esi+0x2] ; 0040CA8C 8A4602
    %if ($ - %%insn_0040ca8c) > 3
        %error "LONG_0040CA8C"
    %endif
    times 3 - ($ - %%insn_0040ca8c) db 0
    %%insn_0040ca8f:
    shr ecx,byte 0x2 ; 0040CA8F C1E902
    %if ($ - %%insn_0040ca8f) > 3
        %error "LONG_0040CA8F"
    %endif
    times 3 - ($ - %%insn_0040ca8f) db 0
    %%insn_0040ca92:
    mov [edi+0x2],al ; 0040CA92 884702
    %if ($ - %%insn_0040ca92) > 3
        %error "LONG_0040CA92"
    %endif
    times 3 - ($ - %%insn_0040ca92) db 0
    %%insn_0040ca95:
    add esi,0x3 ; 0040CA95 83C603
    %if ($ - %%insn_0040ca95) > 3
        %error "LONG_0040CA95"
    %endif
    times 3 - ($ - %%insn_0040ca95) db 0
    %%insn_0040ca98:
    add edi,0x3 ; 0040CA98 83C703
    %if ($ - %%insn_0040ca98) > 3
        %error "LONG_0040CA98"
    %endif
    times 3 - ($ - %%insn_0040ca98) db 0
    %%insn_0040ca9b:
    cmp ecx,0x8 ; 0040CA9B 83F908
    %if ($ - %%insn_0040ca9b) > 3
        %error "LONG_0040CA9B"
    %endif
    times 3 - ($ - %%insn_0040ca9b) db 0
    %%insn_0040ca9e:
    jc short 0x40ca6c ; 0040CA9E 72CC
    %if ($ - %%insn_0040ca9e) > 2
        %error "LONG_0040CA9E"
    %endif
    times 2 - ($ - %%insn_0040ca9e) db 0
    %%insn_0040caa0:
    rep movsd ; 0040CAA0 F3A5
    %if ($ - %%insn_0040caa0) > 2
        %error "LONG_0040CAA0"
    %endif
    times 2 - ($ - %%insn_0040caa0) db 0
    %%insn_0040caa2:
    jmp dword near [edx*4+0x40cb58] ; 0040CAA2 FF249558CB4000
    %if ($ - %%insn_0040caa2) > 7
        %error "LONG_0040CAA2"
    %endif
    times 7 - ($ - %%insn_0040caa2) db 0
    %if ($ - %%fragment_start) != 41
        %error "function fragment size drift: 0040CA80"
    %endif
%endmacro

%macro emit_func_0040ca10_part_03 0
    %%fragment_start:
    db 0x23, 0xD1 ; 0040CAAC 23D1 | and edx,ecx | encoding preserved
    %%insn_0040caae:
    mov al,[esi] ; 0040CAAE 8A06
    %if ($ - %%insn_0040caae) > 2
        %error "LONG_0040CAAE"
    %endif
    times 2 - ($ - %%insn_0040caae) db 0
    %%insn_0040cab0:
    mov [edi],al ; 0040CAB0 8807
    %if ($ - %%insn_0040cab0) > 2
        %error "LONG_0040CAB0"
    %endif
    times 2 - ($ - %%insn_0040cab0) db 0
    %%insn_0040cab2:
    mov al,[esi+0x1] ; 0040CAB2 8A4601
    %if ($ - %%insn_0040cab2) > 3
        %error "LONG_0040CAB2"
    %endif
    times 3 - ($ - %%insn_0040cab2) db 0
    %%insn_0040cab5:
    shr ecx,byte 0x2 ; 0040CAB5 C1E902
    %if ($ - %%insn_0040cab5) > 3
        %error "LONG_0040CAB5"
    %endif
    times 3 - ($ - %%insn_0040cab5) db 0
    %%insn_0040cab8:
    mov [edi+0x1],al ; 0040CAB8 884701
    %if ($ - %%insn_0040cab8) > 3
        %error "LONG_0040CAB8"
    %endif
    times 3 - ($ - %%insn_0040cab8) db 0
    %%insn_0040cabb:
    add esi,0x2 ; 0040CABB 83C602
    %if ($ - %%insn_0040cabb) > 3
        %error "LONG_0040CABB"
    %endif
    times 3 - ($ - %%insn_0040cabb) db 0
    %%insn_0040cabe:
    add edi,0x2 ; 0040CABE 83C702
    %if ($ - %%insn_0040cabe) > 3
        %error "LONG_0040CABE"
    %endif
    times 3 - ($ - %%insn_0040cabe) db 0
    %%insn_0040cac1:
    cmp ecx,0x8 ; 0040CAC1 83F908
    %if ($ - %%insn_0040cac1) > 3
        %error "LONG_0040CAC1"
    %endif
    times 3 - ($ - %%insn_0040cac1) db 0
    %%insn_0040cac4:
    jc short 0x40ca6c ; 0040CAC4 72A6
    %if ($ - %%insn_0040cac4) > 2
        %error "LONG_0040CAC4"
    %endif
    times 2 - ($ - %%insn_0040cac4) db 0
    %%insn_0040cac6:
    rep movsd ; 0040CAC6 F3A5
    %if ($ - %%insn_0040cac6) > 2
        %error "LONG_0040CAC6"
    %endif
    times 2 - ($ - %%insn_0040cac6) db 0
    %%insn_0040cac8:
    jmp dword near [edx*4+0x40cb58] ; 0040CAC8 FF249558CB4000
    %if ($ - %%insn_0040cac8) > 7
        %error "LONG_0040CAC8"
    %endif
    times 7 - ($ - %%insn_0040cac8) db 0
    %if ($ - %%fragment_start) != 35
        %error "function fragment size drift: 0040CAAC"
    %endif
%endmacro

%macro emit_func_0040ca10_part_04 0
    %%fragment_start:
    db 0x23, 0xD1 ; 0040CAD0 23D1 | and edx,ecx | encoding preserved
    %%insn_0040cad2:
    mov al,[esi] ; 0040CAD2 8A06
    %if ($ - %%insn_0040cad2) > 2
        %error "LONG_0040CAD2"
    %endif
    times 2 - ($ - %%insn_0040cad2) db 0
    %%insn_0040cad4:
    mov [edi],al ; 0040CAD4 8807
    %if ($ - %%insn_0040cad4) > 2
        %error "LONG_0040CAD4"
    %endif
    times 2 - ($ - %%insn_0040cad4) db 0
    %%insn_0040cad6:
    inc esi ; 0040CAD6 46
    %if ($ - %%insn_0040cad6) > 1
        %error "LONG_0040CAD6"
    %endif
    times 1 - ($ - %%insn_0040cad6) db 0
    %%insn_0040cad7:
    shr ecx,byte 0x2 ; 0040CAD7 C1E902
    %if ($ - %%insn_0040cad7) > 3
        %error "LONG_0040CAD7"
    %endif
    times 3 - ($ - %%insn_0040cad7) db 0
    %%insn_0040cada:
    inc edi ; 0040CADA 47
    %if ($ - %%insn_0040cada) > 1
        %error "LONG_0040CADA"
    %endif
    times 1 - ($ - %%insn_0040cada) db 0
    %%insn_0040cadb:
    cmp ecx,0x8 ; 0040CADB 83F908
    %if ($ - %%insn_0040cadb) > 3
        %error "LONG_0040CADB"
    %endif
    times 3 - ($ - %%insn_0040cadb) db 0
    %%insn_0040cade:
    jc short 0x40ca6c ; 0040CADE 728C
    %if ($ - %%insn_0040cade) > 2
        %error "LONG_0040CADE"
    %endif
    times 2 - ($ - %%insn_0040cade) db 0
    %%insn_0040cae0:
    rep movsd ; 0040CAE0 F3A5
    %if ($ - %%insn_0040cae0) > 2
        %error "LONG_0040CAE0"
    %endif
    times 2 - ($ - %%insn_0040cae0) db 0
    %%insn_0040cae2:
    jmp dword near [edx*4+0x40cb58] ; 0040CAE2 FF249558CB4000
    %if ($ - %%insn_0040cae2) > 7
        %error "LONG_0040CAE2"
    %endif
    times 7 - ($ - %%insn_0040cae2) db 0
    %if ($ - %%fragment_start) != 25
        %error "function fragment size drift: 0040CAD0"
    %endif
%endmacro

%macro emit_func_0040ca10_part_05 0
    %%fragment_start:
    %%insn_0040cb0c:
    mov eax,[esi+ecx*4-0x1c] ; 0040CB0C 8B448EE4
    %if ($ - %%insn_0040cb0c) > 4
        %error "LONG_0040CB0C"
    %endif
    times 4 - ($ - %%insn_0040cb0c) db 0
    %%insn_0040cb10:
    mov [edi+ecx*4-0x1c],eax ; 0040CB10 89448FE4
    %if ($ - %%insn_0040cb10) > 4
        %error "LONG_0040CB10"
    %endif
    times 4 - ($ - %%insn_0040cb10) db 0
    %%insn_0040cb14:
    mov eax,[esi+ecx*4-0x18] ; 0040CB14 8B448EE8
    %if ($ - %%insn_0040cb14) > 4
        %error "LONG_0040CB14"
    %endif
    times 4 - ($ - %%insn_0040cb14) db 0
    %%insn_0040cb18:
    mov [edi+ecx*4-0x18],eax ; 0040CB18 89448FE8
    %if ($ - %%insn_0040cb18) > 4
        %error "LONG_0040CB18"
    %endif
    times 4 - ($ - %%insn_0040cb18) db 0
    %%insn_0040cb1c:
    mov eax,[esi+ecx*4-0x14] ; 0040CB1C 8B448EEC
    %if ($ - %%insn_0040cb1c) > 4
        %error "LONG_0040CB1C"
    %endif
    times 4 - ($ - %%insn_0040cb1c) db 0
    %%insn_0040cb20:
    mov [edi+ecx*4-0x14],eax ; 0040CB20 89448FEC
    %if ($ - %%insn_0040cb20) > 4
        %error "LONG_0040CB20"
    %endif
    times 4 - ($ - %%insn_0040cb20) db 0
    %%insn_0040cb24:
    mov eax,[esi+ecx*4-0x10] ; 0040CB24 8B448EF0
    %if ($ - %%insn_0040cb24) > 4
        %error "LONG_0040CB24"
    %endif
    times 4 - ($ - %%insn_0040cb24) db 0
    %%insn_0040cb28:
    mov [edi+ecx*4-0x10],eax ; 0040CB28 89448FF0
    %if ($ - %%insn_0040cb28) > 4
        %error "LONG_0040CB28"
    %endif
    times 4 - ($ - %%insn_0040cb28) db 0
    %%insn_0040cb2c:
    mov eax,[esi+ecx*4-0xc] ; 0040CB2C 8B448EF4
    %if ($ - %%insn_0040cb2c) > 4
        %error "LONG_0040CB2C"
    %endif
    times 4 - ($ - %%insn_0040cb2c) db 0
    %%insn_0040cb30:
    mov [edi+ecx*4-0xc],eax ; 0040CB30 89448FF4
    %if ($ - %%insn_0040cb30) > 4
        %error "LONG_0040CB30"
    %endif
    times 4 - ($ - %%insn_0040cb30) db 0
    %%insn_0040cb34:
    mov eax,[esi+ecx*4-0x8] ; 0040CB34 8B448EF8
    %if ($ - %%insn_0040cb34) > 4
        %error "LONG_0040CB34"
    %endif
    times 4 - ($ - %%insn_0040cb34) db 0
    %%insn_0040cb38:
    mov [edi+ecx*4-0x8],eax ; 0040CB38 89448FF8
    %if ($ - %%insn_0040cb38) > 4
        %error "LONG_0040CB38"
    %endif
    times 4 - ($ - %%insn_0040cb38) db 0
    %%insn_0040cb3c:
    mov eax,[esi+ecx*4-0x4] ; 0040CB3C 8B448EFC
    %if ($ - %%insn_0040cb3c) > 4
        %error "LONG_0040CB3C"
    %endif
    times 4 - ($ - %%insn_0040cb3c) db 0
    %%insn_0040cb40:
    mov [edi+ecx*4-0x4],eax ; 0040CB40 89448FFC
    %if ($ - %%insn_0040cb40) > 4
        %error "LONG_0040CB40"
    %endif
    times 4 - ($ - %%insn_0040cb40) db 0
    %%insn_0040cb44:
    lea eax,[ecx*4+0x0] ; 0040CB44 8D048D00000000
    %if ($ - %%insn_0040cb44) > 7
        %error "LONG_0040CB44"
    %endif
    times 7 - ($ - %%insn_0040cb44) db 0
    db 0x03, 0xF0 ; 0040CB4B 03F0 | add esi,eax | encoding preserved
    db 0x03, 0xF8 ; 0040CB4D 03F8 | add edi,eax | encoding preserved
    %%insn_0040cb4f:
    jmp dword near [edx*4+0x40cb58] ; 0040CB4F FF249558CB4000
    %if ($ - %%insn_0040cb4f) > 7
        %error "LONG_0040CB4F"
    %endif
    times 7 - ($ - %%insn_0040cb4f) db 0
    %if ($ - %%fragment_start) != 74
        %error "function fragment size drift: 0040CB0C"
    %endif
%endmacro

%macro emit_func_0040ca10_part_06 0
    %%fragment_start:
    %%insn_0040cb68:
    mov eax,[ebp+0x8] ; 0040CB68 8B4508
    %if ($ - %%insn_0040cb68) > 3
        %error "LONG_0040CB68"
    %endif
    times 3 - ($ - %%insn_0040cb68) db 0
    %%insn_0040cb6b:
    pop esi ; 0040CB6B 5E
    %if ($ - %%insn_0040cb6b) > 1
        %error "LONG_0040CB6B"
    %endif
    times 1 - ($ - %%insn_0040cb6b) db 0
    %%insn_0040cb6c:
    pop edi ; 0040CB6C 5F
    %if ($ - %%insn_0040cb6c) > 1
        %error "LONG_0040CB6C"
    %endif
    times 1 - ($ - %%insn_0040cb6c) db 0
    %%insn_0040cb6d:
    leave ; 0040CB6D C9
    %if ($ - %%insn_0040cb6d) > 1
        %error "LONG_0040CB6D"
    %endif
    times 1 - ($ - %%insn_0040cb6d) db 0
    %%insn_0040cb6e:
    ret ; 0040CB6E C3
    %if ($ - %%insn_0040cb6e) > 1
        %error "LONG_0040CB6E"
    %endif
    times 1 - ($ - %%insn_0040cb6e) db 0
    %if ($ - %%fragment_start) != 7
        %error "function fragment size drift: 0040CB68"
    %endif
%endmacro

%macro emit_func_0040ca10_part_07 0
    %%fragment_start:
    %%insn_0040cb70:
    mov al,[esi] ; 0040CB70 8A06
    %if ($ - %%insn_0040cb70) > 2
        %error "LONG_0040CB70"
    %endif
    times 2 - ($ - %%insn_0040cb70) db 0
    %%insn_0040cb72:
    mov [edi],al ; 0040CB72 8807
    %if ($ - %%insn_0040cb72) > 2
        %error "LONG_0040CB72"
    %endif
    times 2 - ($ - %%insn_0040cb72) db 0
    %%insn_0040cb74:
    mov eax,[ebp+0x8] ; 0040CB74 8B4508
    %if ($ - %%insn_0040cb74) > 3
        %error "LONG_0040CB74"
    %endif
    times 3 - ($ - %%insn_0040cb74) db 0
    %%insn_0040cb77:
    pop esi ; 0040CB77 5E
    %if ($ - %%insn_0040cb77) > 1
        %error "LONG_0040CB77"
    %endif
    times 1 - ($ - %%insn_0040cb77) db 0
    %%insn_0040cb78:
    pop edi ; 0040CB78 5F
    %if ($ - %%insn_0040cb78) > 1
        %error "LONG_0040CB78"
    %endif
    times 1 - ($ - %%insn_0040cb78) db 0
    %%insn_0040cb79:
    leave ; 0040CB79 C9
    %if ($ - %%insn_0040cb79) > 1
        %error "LONG_0040CB79"
    %endif
    times 1 - ($ - %%insn_0040cb79) db 0
    %%insn_0040cb7a:
    ret ; 0040CB7A C3
    %if ($ - %%insn_0040cb7a) > 1
        %error "LONG_0040CB7A"
    %endif
    times 1 - ($ - %%insn_0040cb7a) db 0
    %if ($ - %%fragment_start) != 11
        %error "function fragment size drift: 0040CB70"
    %endif
%endmacro

%macro emit_func_0040ca10_part_08 0
    %%fragment_start:
    %%insn_0040cb7c:
    mov al,[esi] ; 0040CB7C 8A06
    %if ($ - %%insn_0040cb7c) > 2
        %error "LONG_0040CB7C"
    %endif
    times 2 - ($ - %%insn_0040cb7c) db 0
    %%insn_0040cb7e:
    mov [edi],al ; 0040CB7E 8807
    %if ($ - %%insn_0040cb7e) > 2
        %error "LONG_0040CB7E"
    %endif
    times 2 - ($ - %%insn_0040cb7e) db 0
    %%insn_0040cb80:
    mov al,[esi+0x1] ; 0040CB80 8A4601
    %if ($ - %%insn_0040cb80) > 3
        %error "LONG_0040CB80"
    %endif
    times 3 - ($ - %%insn_0040cb80) db 0
    %%insn_0040cb83:
    mov [edi+0x1],al ; 0040CB83 884701
    %if ($ - %%insn_0040cb83) > 3
        %error "LONG_0040CB83"
    %endif
    times 3 - ($ - %%insn_0040cb83) db 0
    %%insn_0040cb86:
    mov eax,[ebp+0x8] ; 0040CB86 8B4508
    %if ($ - %%insn_0040cb86) > 3
        %error "LONG_0040CB86"
    %endif
    times 3 - ($ - %%insn_0040cb86) db 0
    %%insn_0040cb89:
    pop esi ; 0040CB89 5E
    %if ($ - %%insn_0040cb89) > 1
        %error "LONG_0040CB89"
    %endif
    times 1 - ($ - %%insn_0040cb89) db 0
    %%insn_0040cb8a:
    pop edi ; 0040CB8A 5F
    %if ($ - %%insn_0040cb8a) > 1
        %error "LONG_0040CB8A"
    %endif
    times 1 - ($ - %%insn_0040cb8a) db 0
    %%insn_0040cb8b:
    leave ; 0040CB8B C9
    %if ($ - %%insn_0040cb8b) > 1
        %error "LONG_0040CB8B"
    %endif
    times 1 - ($ - %%insn_0040cb8b) db 0
    %%insn_0040cb8c:
    ret ; 0040CB8C C3
    %if ($ - %%insn_0040cb8c) > 1
        %error "LONG_0040CB8C"
    %endif
    times 1 - ($ - %%insn_0040cb8c) db 0
    %if ($ - %%fragment_start) != 17
        %error "function fragment size drift: 0040CB7C"
    %endif
%endmacro

%macro emit_func_0040ca10_part_09 0
    %%fragment_start:
    %%insn_0040cb90:
    mov al,[esi] ; 0040CB90 8A06
    %if ($ - %%insn_0040cb90) > 2
        %error "LONG_0040CB90"
    %endif
    times 2 - ($ - %%insn_0040cb90) db 0
    %%insn_0040cb92:
    mov [edi],al ; 0040CB92 8807
    %if ($ - %%insn_0040cb92) > 2
        %error "LONG_0040CB92"
    %endif
    times 2 - ($ - %%insn_0040cb92) db 0
    %%insn_0040cb94:
    mov al,[esi+0x1] ; 0040CB94 8A4601
    %if ($ - %%insn_0040cb94) > 3
        %error "LONG_0040CB94"
    %endif
    times 3 - ($ - %%insn_0040cb94) db 0
    %%insn_0040cb97:
    mov [edi+0x1],al ; 0040CB97 884701
    %if ($ - %%insn_0040cb97) > 3
        %error "LONG_0040CB97"
    %endif
    times 3 - ($ - %%insn_0040cb97) db 0
    %%insn_0040cb9a:
    mov al,[esi+0x2] ; 0040CB9A 8A4602
    %if ($ - %%insn_0040cb9a) > 3
        %error "LONG_0040CB9A"
    %endif
    times 3 - ($ - %%insn_0040cb9a) db 0
    %%insn_0040cb9d:
    mov [edi+0x2],al ; 0040CB9D 884702
    %if ($ - %%insn_0040cb9d) > 3
        %error "LONG_0040CB9D"
    %endif
    times 3 - ($ - %%insn_0040cb9d) db 0
    %%insn_0040cba0:
    mov eax,[ebp+0x8] ; 0040CBA0 8B4508
    %if ($ - %%insn_0040cba0) > 3
        %error "LONG_0040CBA0"
    %endif
    times 3 - ($ - %%insn_0040cba0) db 0
    %%insn_0040cba3:
    pop esi ; 0040CBA3 5E
    %if ($ - %%insn_0040cba3) > 1
        %error "LONG_0040CBA3"
    %endif
    times 1 - ($ - %%insn_0040cba3) db 0
    %%insn_0040cba4:
    pop edi ; 0040CBA4 5F
    %if ($ - %%insn_0040cba4) > 1
        %error "LONG_0040CBA4"
    %endif
    times 1 - ($ - %%insn_0040cba4) db 0
    %%insn_0040cba5:
    leave ; 0040CBA5 C9
    %if ($ - %%insn_0040cba5) > 1
        %error "LONG_0040CBA5"
    %endif
    times 1 - ($ - %%insn_0040cba5) db 0
    %%insn_0040cba6:
    ret ; 0040CBA6 C3
    %if ($ - %%insn_0040cba6) > 1
        %error "LONG_0040CBA6"
    %endif
    times 1 - ($ - %%insn_0040cba6) db 0
    %if ($ - %%fragment_start) != 23
        %error "function fragment size drift: 0040CB90"
    %endif
%endmacro

%macro emit_func_0040ca10_part_10 0
    %%fragment_start:
    %%insn_0040cba8:
    lea esi,[ecx+esi-0x4] ; 0040CBA8 8D7431FC
    %if ($ - %%insn_0040cba8) > 4
        %error "LONG_0040CBA8"
    %endif
    times 4 - ($ - %%insn_0040cba8) db 0
    %%insn_0040cbac:
    lea edi,[ecx+edi-0x4] ; 0040CBAC 8D7C39FC
    %if ($ - %%insn_0040cbac) > 4
        %error "LONG_0040CBAC"
    %endif
    times 4 - ($ - %%insn_0040cbac) db 0
    %%insn_0040cbb0:
    test edi,0x3 ; 0040CBB0 F7C703000000
    %if ($ - %%insn_0040cbb0) > 6
        %error "LONG_0040CBB0"
    %endif
    times 6 - ($ - %%insn_0040cbb0) db 0
    %%insn_0040cbb6:
    jnz short 0x40cbdc ; 0040CBB6 7524
    %if ($ - %%insn_0040cbb6) > 2
        %error "LONG_0040CBB6"
    %endif
    times 2 - ($ - %%insn_0040cbb6) db 0
    %%insn_0040cbb8:
    shr ecx,byte 0x2 ; 0040CBB8 C1E902
    %if ($ - %%insn_0040cbb8) > 3
        %error "LONG_0040CBB8"
    %endif
    times 3 - ($ - %%insn_0040cbb8) db 0
    %%insn_0040cbbb:
    and edx,0x3 ; 0040CBBB 83E203
    %if ($ - %%insn_0040cbbb) > 3
        %error "LONG_0040CBBB"
    %endif
    times 3 - ($ - %%insn_0040cbbb) db 0
    %%insn_0040cbbe:
    cmp ecx,0x8 ; 0040CBBE 83F908
    %if ($ - %%insn_0040cbbe) > 3
        %error "LONG_0040CBBE"
    %endif
    times 3 - ($ - %%insn_0040cbbe) db 0
    %%insn_0040cbc1:
    jc short 0x40cbd0 ; 0040CBC1 720D
    %if ($ - %%insn_0040cbc1) > 2
        %error "LONG_0040CBC1"
    %endif
    times 2 - ($ - %%insn_0040cbc1) db 0
    %%insn_0040cbc3:
    std ; 0040CBC3 FD
    %if ($ - %%insn_0040cbc3) > 1
        %error "LONG_0040CBC3"
    %endif
    times 1 - ($ - %%insn_0040cbc3) db 0
    %%insn_0040cbc4:
    rep movsd ; 0040CBC4 F3A5
    %if ($ - %%insn_0040cbc4) > 2
        %error "LONG_0040CBC4"
    %endif
    times 2 - ($ - %%insn_0040cbc4) db 0
    %%insn_0040cbc6:
    cld ; 0040CBC6 FC
    %if ($ - %%insn_0040cbc6) > 1
        %error "LONG_0040CBC6"
    %endif
    times 1 - ($ - %%insn_0040cbc6) db 0
    %%insn_0040cbc7:
    jmp dword near [edx*4+0x40ccf0] ; 0040CBC7 FF2495F0CC4000
    %if ($ - %%insn_0040cbc7) > 7
        %error "LONG_0040CBC7"
    %endif
    times 7 - ($ - %%insn_0040cbc7) db 0
    %if ($ - %%fragment_start) != 38
        %error "function fragment size drift: 0040CBA8"
    %endif
%endmacro

%macro emit_func_0040ca10_part_11 0
    %%fragment_start:
    %%insn_0040cbd0:
    neg ecx ; 0040CBD0 F7D9
    %if ($ - %%insn_0040cbd0) > 2
        %error "LONG_0040CBD0"
    %endif
    times 2 - ($ - %%insn_0040cbd0) db 0
    %%insn_0040cbd2:
    jmp dword near [ecx*4+0x40cca0] ; 0040CBD2 FF248DA0CC4000
    %if ($ - %%insn_0040cbd2) > 7
        %error "LONG_0040CBD2"
    %endif
    times 7 - ($ - %%insn_0040cbd2) db 0
    %if ($ - %%fragment_start) != 9
        %error "function fragment size drift: 0040CBD0"
    %endif
%endmacro

%macro emit_func_0040ca10_part_12 0
    %%fragment_start:
    db 0x8B, 0xC7 ; 0040CBDC 8BC7 | mov eax,edi | encoding preserved
    %%insn_0040cbde:
    mov edx,0x3 ; 0040CBDE BA03000000
    %if ($ - %%insn_0040cbde) > 5
        %error "LONG_0040CBDE"
    %endif
    times 5 - ($ - %%insn_0040cbde) db 0
    %%insn_0040cbe3:
    cmp ecx,0x4 ; 0040CBE3 83F904
    %if ($ - %%insn_0040cbe3) > 3
        %error "LONG_0040CBE3"
    %endif
    times 3 - ($ - %%insn_0040cbe3) db 0
    %%insn_0040cbe6:
    jc short 0x40cbf4 ; 0040CBE6 720C
    %if ($ - %%insn_0040cbe6) > 2
        %error "LONG_0040CBE6"
    %endif
    times 2 - ($ - %%insn_0040cbe6) db 0
    %%insn_0040cbe8:
    and eax,0x3 ; 0040CBE8 83E003
    %if ($ - %%insn_0040cbe8) > 3
        %error "LONG_0040CBE8"
    %endif
    times 3 - ($ - %%insn_0040cbe8) db 0
    db 0x2B, 0xC8 ; 0040CBEB 2BC8 | sub ecx,eax | encoding preserved
    %%insn_0040cbed:
    jmp dword near [eax*4+0x40cbf8] ; 0040CBED FF2485F8CB4000
    %if ($ - %%insn_0040cbed) > 7
        %error "LONG_0040CBED"
    %endif
    times 7 - ($ - %%insn_0040cbed) db 0
    %%insn_0040cbf4:
    jmp dword near [ecx*4+0x40ccf0] ; 0040CBF4 FF248DF0CC4000
    %if ($ - %%insn_0040cbf4) > 7
        %error "LONG_0040CBF4"
    %endif
    times 7 - ($ - %%insn_0040cbf4) db 0
    %if ($ - %%fragment_start) != 31
        %error "function fragment size drift: 0040CBDC"
    %endif
%endmacro

%macro emit_func_0040ca10_part_13 0
    %%fragment_start:
    %%insn_0040cc08:
    mov al,[esi+0x3] ; 0040CC08 8A4603
    %if ($ - %%insn_0040cc08) > 3
        %error "LONG_0040CC08"
    %endif
    times 3 - ($ - %%insn_0040cc08) db 0
    db 0x23, 0xD1 ; 0040CC0B 23D1 | and edx,ecx | encoding preserved
    %%insn_0040cc0d:
    mov [edi+0x3],al ; 0040CC0D 884703
    %if ($ - %%insn_0040cc0d) > 3
        %error "LONG_0040CC0D"
    %endif
    times 3 - ($ - %%insn_0040cc0d) db 0
    %%insn_0040cc10:
    dec esi ; 0040CC10 4E
    %if ($ - %%insn_0040cc10) > 1
        %error "LONG_0040CC10"
    %endif
    times 1 - ($ - %%insn_0040cc10) db 0
    %%insn_0040cc11:
    shr ecx,byte 0x2 ; 0040CC11 C1E902
    %if ($ - %%insn_0040cc11) > 3
        %error "LONG_0040CC11"
    %endif
    times 3 - ($ - %%insn_0040cc11) db 0
    %%insn_0040cc14:
    dec edi ; 0040CC14 4F
    %if ($ - %%insn_0040cc14) > 1
        %error "LONG_0040CC14"
    %endif
    times 1 - ($ - %%insn_0040cc14) db 0
    %%insn_0040cc15:
    cmp ecx,0x8 ; 0040CC15 83F908
    %if ($ - %%insn_0040cc15) > 3
        %error "LONG_0040CC15"
    %endif
    times 3 - ($ - %%insn_0040cc15) db 0
    %%insn_0040cc18:
    jc short 0x40cbd0 ; 0040CC18 72B6
    %if ($ - %%insn_0040cc18) > 2
        %error "LONG_0040CC18"
    %endif
    times 2 - ($ - %%insn_0040cc18) db 0
    %%insn_0040cc1a:
    std ; 0040CC1A FD
    %if ($ - %%insn_0040cc1a) > 1
        %error "LONG_0040CC1A"
    %endif
    times 1 - ($ - %%insn_0040cc1a) db 0
    %%insn_0040cc1b:
    rep movsd ; 0040CC1B F3A5
    %if ($ - %%insn_0040cc1b) > 2
        %error "LONG_0040CC1B"
    %endif
    times 2 - ($ - %%insn_0040cc1b) db 0
    %%insn_0040cc1d:
    cld ; 0040CC1D FC
    %if ($ - %%insn_0040cc1d) > 1
        %error "LONG_0040CC1D"
    %endif
    times 1 - ($ - %%insn_0040cc1d) db 0
    %%insn_0040cc1e:
    jmp dword near [edx*4+0x40ccf0] ; 0040CC1E FF2495F0CC4000
    %if ($ - %%insn_0040cc1e) > 7
        %error "LONG_0040CC1E"
    %endif
    times 7 - ($ - %%insn_0040cc1e) db 0
    %if ($ - %%fragment_start) != 29
        %error "function fragment size drift: 0040CC08"
    %endif
%endmacro

%macro emit_func_0040ca10_part_14 0
    %%fragment_start:
    %%insn_0040cc28:
    mov al,[esi+0x3] ; 0040CC28 8A4603
    %if ($ - %%insn_0040cc28) > 3
        %error "LONG_0040CC28"
    %endif
    times 3 - ($ - %%insn_0040cc28) db 0
    db 0x23, 0xD1 ; 0040CC2B 23D1 | and edx,ecx | encoding preserved
    %%insn_0040cc2d:
    mov [edi+0x3],al ; 0040CC2D 884703
    %if ($ - %%insn_0040cc2d) > 3
        %error "LONG_0040CC2D"
    %endif
    times 3 - ($ - %%insn_0040cc2d) db 0
    %%insn_0040cc30:
    mov al,[esi+0x2] ; 0040CC30 8A4602
    %if ($ - %%insn_0040cc30) > 3
        %error "LONG_0040CC30"
    %endif
    times 3 - ($ - %%insn_0040cc30) db 0
    %%insn_0040cc33:
    shr ecx,byte 0x2 ; 0040CC33 C1E902
    %if ($ - %%insn_0040cc33) > 3
        %error "LONG_0040CC33"
    %endif
    times 3 - ($ - %%insn_0040cc33) db 0
    %%insn_0040cc36:
    mov [edi+0x2],al ; 0040CC36 884702
    %if ($ - %%insn_0040cc36) > 3
        %error "LONG_0040CC36"
    %endif
    times 3 - ($ - %%insn_0040cc36) db 0
    %%insn_0040cc39:
    sub esi,0x2 ; 0040CC39 83EE02
    %if ($ - %%insn_0040cc39) > 3
        %error "LONG_0040CC39"
    %endif
    times 3 - ($ - %%insn_0040cc39) db 0
    %%insn_0040cc3c:
    sub edi,0x2 ; 0040CC3C 83EF02
    %if ($ - %%insn_0040cc3c) > 3
        %error "LONG_0040CC3C"
    %endif
    times 3 - ($ - %%insn_0040cc3c) db 0
    %%insn_0040cc3f:
    cmp ecx,0x8 ; 0040CC3F 83F908
    %if ($ - %%insn_0040cc3f) > 3
        %error "LONG_0040CC3F"
    %endif
    times 3 - ($ - %%insn_0040cc3f) db 0
    %%insn_0040cc42:
    jc short 0x40cbd0 ; 0040CC42 728C
    %if ($ - %%insn_0040cc42) > 2
        %error "LONG_0040CC42"
    %endif
    times 2 - ($ - %%insn_0040cc42) db 0
    %%insn_0040cc44:
    std ; 0040CC44 FD
    %if ($ - %%insn_0040cc44) > 1
        %error "LONG_0040CC44"
    %endif
    times 1 - ($ - %%insn_0040cc44) db 0
    %%insn_0040cc45:
    rep movsd ; 0040CC45 F3A5
    %if ($ - %%insn_0040cc45) > 2
        %error "LONG_0040CC45"
    %endif
    times 2 - ($ - %%insn_0040cc45) db 0
    %%insn_0040cc47:
    cld ; 0040CC47 FC
    %if ($ - %%insn_0040cc47) > 1
        %error "LONG_0040CC47"
    %endif
    times 1 - ($ - %%insn_0040cc47) db 0
    %%insn_0040cc48:
    jmp dword near [edx*4+0x40ccf0] ; 0040CC48 FF2495F0CC4000
    %if ($ - %%insn_0040cc48) > 7
        %error "LONG_0040CC48"
    %endif
    times 7 - ($ - %%insn_0040cc48) db 0
    %if ($ - %%fragment_start) != 39
        %error "function fragment size drift: 0040CC28"
    %endif
%endmacro

%macro emit_func_0040ca10_part_15 0
    %%fragment_start:
    %%insn_0040cc50:
    mov al,[esi+0x3] ; 0040CC50 8A4603
    %if ($ - %%insn_0040cc50) > 3
        %error "LONG_0040CC50"
    %endif
    times 3 - ($ - %%insn_0040cc50) db 0
    db 0x23, 0xD1 ; 0040CC53 23D1 | and edx,ecx | encoding preserved
    %%insn_0040cc55:
    mov [edi+0x3],al ; 0040CC55 884703
    %if ($ - %%insn_0040cc55) > 3
        %error "LONG_0040CC55"
    %endif
    times 3 - ($ - %%insn_0040cc55) db 0
    %%insn_0040cc58:
    mov al,[esi+0x2] ; 0040CC58 8A4602
    %if ($ - %%insn_0040cc58) > 3
        %error "LONG_0040CC58"
    %endif
    times 3 - ($ - %%insn_0040cc58) db 0
    %%insn_0040cc5b:
    mov [edi+0x2],al ; 0040CC5B 884702
    %if ($ - %%insn_0040cc5b) > 3
        %error "LONG_0040CC5B"
    %endif
    times 3 - ($ - %%insn_0040cc5b) db 0
    %%insn_0040cc5e:
    mov al,[esi+0x1] ; 0040CC5E 8A4601
    %if ($ - %%insn_0040cc5e) > 3
        %error "LONG_0040CC5E"
    %endif
    times 3 - ($ - %%insn_0040cc5e) db 0
    %%insn_0040cc61:
    shr ecx,byte 0x2 ; 0040CC61 C1E902
    %if ($ - %%insn_0040cc61) > 3
        %error "LONG_0040CC61"
    %endif
    times 3 - ($ - %%insn_0040cc61) db 0
    %%insn_0040cc64:
    mov [edi+0x1],al ; 0040CC64 884701
    %if ($ - %%insn_0040cc64) > 3
        %error "LONG_0040CC64"
    %endif
    times 3 - ($ - %%insn_0040cc64) db 0
    %%insn_0040cc67:
    sub esi,0x3 ; 0040CC67 83EE03
    %if ($ - %%insn_0040cc67) > 3
        %error "LONG_0040CC67"
    %endif
    times 3 - ($ - %%insn_0040cc67) db 0
    %%insn_0040cc6a:
    sub edi,0x3 ; 0040CC6A 83EF03
    %if ($ - %%insn_0040cc6a) > 3
        %error "LONG_0040CC6A"
    %endif
    times 3 - ($ - %%insn_0040cc6a) db 0
    %%insn_0040cc6d:
    cmp ecx,0x8 ; 0040CC6D 83F908
    %if ($ - %%insn_0040cc6d) > 3
        %error "LONG_0040CC6D"
    %endif
    times 3 - ($ - %%insn_0040cc6d) db 0
    %%insn_0040cc70:
    jc 0x40cbd0 ; 0040CC70 0F825AFFFFFF
    %if ($ - %%insn_0040cc70) > 6
        %error "LONG_0040CC70"
    %endif
    times 6 - ($ - %%insn_0040cc70) db 0
    %%insn_0040cc76:
    std ; 0040CC76 FD
    %if ($ - %%insn_0040cc76) > 1
        %error "LONG_0040CC76"
    %endif
    times 1 - ($ - %%insn_0040cc76) db 0
    %%insn_0040cc77:
    rep movsd ; 0040CC77 F3A5
    %if ($ - %%insn_0040cc77) > 2
        %error "LONG_0040CC77"
    %endif
    times 2 - ($ - %%insn_0040cc77) db 0
    %%insn_0040cc79:
    cld ; 0040CC79 FC
    %if ($ - %%insn_0040cc79) > 1
        %error "LONG_0040CC79"
    %endif
    times 1 - ($ - %%insn_0040cc79) db 0
    %%insn_0040cc7a:
    jmp dword near [edx*4+0x40ccf0] ; 0040CC7A FF2495F0CC4000
    %if ($ - %%insn_0040cc7a) > 7
        %error "LONG_0040CC7A"
    %endif
    times 7 - ($ - %%insn_0040cc7a) db 0
    %if ($ - %%fragment_start) != 49
        %error "function fragment size drift: 0040CC50"
    %endif
%endmacro

%macro emit_func_0040ca10_part_16 0
    %%fragment_start:
    %%insn_0040cca4:
    mov eax,[esi+ecx*4+0x1c] ; 0040CCA4 8B448E1C
    %if ($ - %%insn_0040cca4) > 4
        %error "LONG_0040CCA4"
    %endif
    times 4 - ($ - %%insn_0040cca4) db 0
    %%insn_0040cca8:
    mov [edi+ecx*4+0x1c],eax ; 0040CCA8 89448F1C
    %if ($ - %%insn_0040cca8) > 4
        %error "LONG_0040CCA8"
    %endif
    times 4 - ($ - %%insn_0040cca8) db 0
    %%insn_0040ccac:
    mov eax,[esi+ecx*4+0x18] ; 0040CCAC 8B448E18
    %if ($ - %%insn_0040ccac) > 4
        %error "LONG_0040CCAC"
    %endif
    times 4 - ($ - %%insn_0040ccac) db 0
    %%insn_0040ccb0:
    mov [edi+ecx*4+0x18],eax ; 0040CCB0 89448F18
    %if ($ - %%insn_0040ccb0) > 4
        %error "LONG_0040CCB0"
    %endif
    times 4 - ($ - %%insn_0040ccb0) db 0
    %%insn_0040ccb4:
    mov eax,[esi+ecx*4+0x14] ; 0040CCB4 8B448E14
    %if ($ - %%insn_0040ccb4) > 4
        %error "LONG_0040CCB4"
    %endif
    times 4 - ($ - %%insn_0040ccb4) db 0
    %%insn_0040ccb8:
    mov [edi+ecx*4+0x14],eax ; 0040CCB8 89448F14
    %if ($ - %%insn_0040ccb8) > 4
        %error "LONG_0040CCB8"
    %endif
    times 4 - ($ - %%insn_0040ccb8) db 0
    %%insn_0040ccbc:
    mov eax,[esi+ecx*4+0x10] ; 0040CCBC 8B448E10
    %if ($ - %%insn_0040ccbc) > 4
        %error "LONG_0040CCBC"
    %endif
    times 4 - ($ - %%insn_0040ccbc) db 0
    %%insn_0040ccc0:
    mov [edi+ecx*4+0x10],eax ; 0040CCC0 89448F10
    %if ($ - %%insn_0040ccc0) > 4
        %error "LONG_0040CCC0"
    %endif
    times 4 - ($ - %%insn_0040ccc0) db 0
    %%insn_0040ccc4:
    mov eax,[esi+ecx*4+0xc] ; 0040CCC4 8B448E0C
    %if ($ - %%insn_0040ccc4) > 4
        %error "LONG_0040CCC4"
    %endif
    times 4 - ($ - %%insn_0040ccc4) db 0
    %%insn_0040ccc8:
    mov [edi+ecx*4+0xc],eax ; 0040CCC8 89448F0C
    %if ($ - %%insn_0040ccc8) > 4
        %error "LONG_0040CCC8"
    %endif
    times 4 - ($ - %%insn_0040ccc8) db 0
    %%insn_0040cccc:
    mov eax,[esi+ecx*4+0x8] ; 0040CCCC 8B448E08
    %if ($ - %%insn_0040cccc) > 4
        %error "LONG_0040CCCC"
    %endif
    times 4 - ($ - %%insn_0040cccc) db 0
    %%insn_0040ccd0:
    mov [edi+ecx*4+0x8],eax ; 0040CCD0 89448F08
    %if ($ - %%insn_0040ccd0) > 4
        %error "LONG_0040CCD0"
    %endif
    times 4 - ($ - %%insn_0040ccd0) db 0
    %%insn_0040ccd4:
    mov eax,[esi+ecx*4+0x4] ; 0040CCD4 8B448E04
    %if ($ - %%insn_0040ccd4) > 4
        %error "LONG_0040CCD4"
    %endif
    times 4 - ($ - %%insn_0040ccd4) db 0
    %%insn_0040ccd8:
    mov [edi+ecx*4+0x4],eax ; 0040CCD8 89448F04
    %if ($ - %%insn_0040ccd8) > 4
        %error "LONG_0040CCD8"
    %endif
    times 4 - ($ - %%insn_0040ccd8) db 0
    %%insn_0040ccdc:
    lea eax,[ecx*4+0x0] ; 0040CCDC 8D048D00000000
    %if ($ - %%insn_0040ccdc) > 7
        %error "LONG_0040CCDC"
    %endif
    times 7 - ($ - %%insn_0040ccdc) db 0
    db 0x03, 0xF0 ; 0040CCE3 03F0 | add esi,eax | encoding preserved
    db 0x03, 0xF8 ; 0040CCE5 03F8 | add edi,eax | encoding preserved
    %%insn_0040cce7:
    jmp dword near [edx*4+0x40ccf0] ; 0040CCE7 FF2495F0CC4000
    %if ($ - %%insn_0040cce7) > 7
        %error "LONG_0040CCE7"
    %endif
    times 7 - ($ - %%insn_0040cce7) db 0
    %if ($ - %%fragment_start) != 74
        %error "function fragment size drift: 0040CCA4"
    %endif
%endmacro

%macro emit_func_0040ca10_part_17 0
    %%fragment_start:
    %%insn_0040cd00:
    mov eax,[ebp+0x8] ; 0040CD00 8B4508
    %if ($ - %%insn_0040cd00) > 3
        %error "LONG_0040CD00"
    %endif
    times 3 - ($ - %%insn_0040cd00) db 0
    %%insn_0040cd03:
    pop esi ; 0040CD03 5E
    %if ($ - %%insn_0040cd03) > 1
        %error "LONG_0040CD03"
    %endif
    times 1 - ($ - %%insn_0040cd03) db 0
    %%insn_0040cd04:
    pop edi ; 0040CD04 5F
    %if ($ - %%insn_0040cd04) > 1
        %error "LONG_0040CD04"
    %endif
    times 1 - ($ - %%insn_0040cd04) db 0
    %%insn_0040cd05:
    leave ; 0040CD05 C9
    %if ($ - %%insn_0040cd05) > 1
        %error "LONG_0040CD05"
    %endif
    times 1 - ($ - %%insn_0040cd05) db 0
    %%insn_0040cd06:
    ret ; 0040CD06 C3
    %if ($ - %%insn_0040cd06) > 1
        %error "LONG_0040CD06"
    %endif
    times 1 - ($ - %%insn_0040cd06) db 0
    %if ($ - %%fragment_start) != 7
        %error "function fragment size drift: 0040CD00"
    %endif
%endmacro

%macro emit_func_0040ca10_part_18 0
    %%fragment_start:
    %%insn_0040cd08:
    mov al,[esi+0x3] ; 0040CD08 8A4603
    %if ($ - %%insn_0040cd08) > 3
        %error "LONG_0040CD08"
    %endif
    times 3 - ($ - %%insn_0040cd08) db 0
    %%insn_0040cd0b:
    mov [edi+0x3],al ; 0040CD0B 884703
    %if ($ - %%insn_0040cd0b) > 3
        %error "LONG_0040CD0B"
    %endif
    times 3 - ($ - %%insn_0040cd0b) db 0
    %%insn_0040cd0e:
    mov eax,[ebp+0x8] ; 0040CD0E 8B4508
    %if ($ - %%insn_0040cd0e) > 3
        %error "LONG_0040CD0E"
    %endif
    times 3 - ($ - %%insn_0040cd0e) db 0
    %%insn_0040cd11:
    pop esi ; 0040CD11 5E
    %if ($ - %%insn_0040cd11) > 1
        %error "LONG_0040CD11"
    %endif
    times 1 - ($ - %%insn_0040cd11) db 0
    %%insn_0040cd12:
    pop edi ; 0040CD12 5F
    %if ($ - %%insn_0040cd12) > 1
        %error "LONG_0040CD12"
    %endif
    times 1 - ($ - %%insn_0040cd12) db 0
    %%insn_0040cd13:
    leave ; 0040CD13 C9
    %if ($ - %%insn_0040cd13) > 1
        %error "LONG_0040CD13"
    %endif
    times 1 - ($ - %%insn_0040cd13) db 0
    %%insn_0040cd14:
    ret ; 0040CD14 C3
    %if ($ - %%insn_0040cd14) > 1
        %error "LONG_0040CD14"
    %endif
    times 1 - ($ - %%insn_0040cd14) db 0
    %if ($ - %%fragment_start) != 13
        %error "function fragment size drift: 0040CD08"
    %endif
%endmacro

%macro emit_func_0040ca10_part_19 0
    %%fragment_start:
    %%insn_0040cd18:
    mov al,[esi+0x3] ; 0040CD18 8A4603
    %if ($ - %%insn_0040cd18) > 3
        %error "LONG_0040CD18"
    %endif
    times 3 - ($ - %%insn_0040cd18) db 0
    %%insn_0040cd1b:
    mov [edi+0x3],al ; 0040CD1B 884703
    %if ($ - %%insn_0040cd1b) > 3
        %error "LONG_0040CD1B"
    %endif
    times 3 - ($ - %%insn_0040cd1b) db 0
    %%insn_0040cd1e:
    mov al,[esi+0x2] ; 0040CD1E 8A4602
    %if ($ - %%insn_0040cd1e) > 3
        %error "LONG_0040CD1E"
    %endif
    times 3 - ($ - %%insn_0040cd1e) db 0
    %%insn_0040cd21:
    mov [edi+0x2],al ; 0040CD21 884702
    %if ($ - %%insn_0040cd21) > 3
        %error "LONG_0040CD21"
    %endif
    times 3 - ($ - %%insn_0040cd21) db 0
    %%insn_0040cd24:
    mov eax,[ebp+0x8] ; 0040CD24 8B4508
    %if ($ - %%insn_0040cd24) > 3
        %error "LONG_0040CD24"
    %endif
    times 3 - ($ - %%insn_0040cd24) db 0
    %%insn_0040cd27:
    pop esi ; 0040CD27 5E
    %if ($ - %%insn_0040cd27) > 1
        %error "LONG_0040CD27"
    %endif
    times 1 - ($ - %%insn_0040cd27) db 0
    %%insn_0040cd28:
    pop edi ; 0040CD28 5F
    %if ($ - %%insn_0040cd28) > 1
        %error "LONG_0040CD28"
    %endif
    times 1 - ($ - %%insn_0040cd28) db 0
    %%insn_0040cd29:
    leave ; 0040CD29 C9
    %if ($ - %%insn_0040cd29) > 1
        %error "LONG_0040CD29"
    %endif
    times 1 - ($ - %%insn_0040cd29) db 0
    %%insn_0040cd2a:
    ret ; 0040CD2A C3
    %if ($ - %%insn_0040cd2a) > 1
        %error "LONG_0040CD2A"
    %endif
    times 1 - ($ - %%insn_0040cd2a) db 0
    %if ($ - %%fragment_start) != 19
        %error "function fragment size drift: 0040CD18"
    %endif
%endmacro

%macro emit_func_0040ca10_part_20 0
    %%fragment_start:
    %%insn_0040cd2c:
    mov al,[esi+0x3] ; 0040CD2C 8A4603
    %if ($ - %%insn_0040cd2c) > 3
        %error "LONG_0040CD2C"
    %endif
    times 3 - ($ - %%insn_0040cd2c) db 0
    %%insn_0040cd2f:
    mov [edi+0x3],al ; 0040CD2F 884703
    %if ($ - %%insn_0040cd2f) > 3
        %error "LONG_0040CD2F"
    %endif
    times 3 - ($ - %%insn_0040cd2f) db 0
    %%insn_0040cd32:
    mov al,[esi+0x2] ; 0040CD32 8A4602
    %if ($ - %%insn_0040cd32) > 3
        %error "LONG_0040CD32"
    %endif
    times 3 - ($ - %%insn_0040cd32) db 0
    %%insn_0040cd35:
    mov [edi+0x2],al ; 0040CD35 884702
    %if ($ - %%insn_0040cd35) > 3
        %error "LONG_0040CD35"
    %endif
    times 3 - ($ - %%insn_0040cd35) db 0
    %%insn_0040cd38:
    mov al,[esi+0x1] ; 0040CD38 8A4601
    %if ($ - %%insn_0040cd38) > 3
        %error "LONG_0040CD38"
    %endif
    times 3 - ($ - %%insn_0040cd38) db 0
    %%insn_0040cd3b:
    mov [edi+0x1],al ; 0040CD3B 884701
    %if ($ - %%insn_0040cd3b) > 3
        %error "LONG_0040CD3B"
    %endif
    times 3 - ($ - %%insn_0040cd3b) db 0
    %%insn_0040cd3e:
    mov eax,[ebp+0x8] ; 0040CD3E 8B4508
    %if ($ - %%insn_0040cd3e) > 3
        %error "LONG_0040CD3E"
    %endif
    times 3 - ($ - %%insn_0040cd3e) db 0
    %%insn_0040cd41:
    pop esi ; 0040CD41 5E
    %if ($ - %%insn_0040cd41) > 1
        %error "LONG_0040CD41"
    %endif
    times 1 - ($ - %%insn_0040cd41) db 0
    %%insn_0040cd42:
    pop edi ; 0040CD42 5F
    %if ($ - %%insn_0040cd42) > 1
        %error "LONG_0040CD42"
    %endif
    times 1 - ($ - %%insn_0040cd42) db 0
    %%insn_0040cd43:
    leave ; 0040CD43 C9
    %if ($ - %%insn_0040cd43) > 1
        %error "LONG_0040CD43"
    %endif
    times 1 - ($ - %%insn_0040cd43) db 0
    %%insn_0040cd44:
    ret ; 0040CD44 C3
    %if ($ - %%insn_0040cd44) > 1
        %error "LONG_0040CD44"
    %endif
    times 1 - ($ - %%insn_0040cd44) db 0
    %if ($ - %%fragment_start) != 25
        %error "function fragment size drift: 0040CD2C"
    %endif
%endmacro
