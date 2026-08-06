; PE virtual entry 00418000
; Ghidra working symbol: FUN_00418000
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00418000_part_00 0
    %%fragment_start:
func_00418000:
    %%insn_00418000:
    push ebp ; 00418000 55
    %if ($ - %%insn_00418000) > 1
        %error "LONG_00418000"
    %endif
    times 1 - ($ - %%insn_00418000) db 0
    db 0x8B, 0xEC ; 00418001 8BEC | mov ebp,esp | encoding preserved
    %%insn_00418003:
    push edi ; 00418003 57
    %if ($ - %%insn_00418003) > 1
        %error "LONG_00418003"
    %endif
    times 1 - ($ - %%insn_00418003) db 0
    %%insn_00418004:
    push esi ; 00418004 56
    %if ($ - %%insn_00418004) > 1
        %error "LONG_00418004"
    %endif
    times 1 - ($ - %%insn_00418004) db 0
    %%insn_00418005:
    mov esi,[ebp+0xc] ; 00418005 8B750C
    %if ($ - %%insn_00418005) > 3
        %error "LONG_00418005"
    %endif
    times 3 - ($ - %%insn_00418005) db 0
    %%insn_00418008:
    mov ecx,[ebp+0x10] ; 00418008 8B4D10
    %if ($ - %%insn_00418008) > 3
        %error "LONG_00418008"
    %endif
    times 3 - ($ - %%insn_00418008) db 0
    %%insn_0041800b:
    mov edi,[ebp+0x8] ; 0041800B 8B7D08
    %if ($ - %%insn_0041800b) > 3
        %error "LONG_0041800B"
    %endif
    times 3 - ($ - %%insn_0041800b) db 0
    db 0x8B, 0xC1 ; 0041800E 8BC1 | mov eax,ecx | encoding preserved
    db 0x8B, 0xD1 ; 00418010 8BD1 | mov edx,ecx | encoding preserved
    db 0x03, 0xC6 ; 00418012 03C6 | add eax,esi | encoding preserved
    db 0x3B, 0xFE ; 00418014 3BFE | cmp edi,esi | encoding preserved
    %%insn_00418016:
    jna short 0x418020 ; 00418016 7608
    %if ($ - %%insn_00418016) > 2
        %error "LONG_00418016"
    %endif
    times 2 - ($ - %%insn_00418016) db 0
    db 0x3B, 0xF8 ; 00418018 3BF8 | cmp edi,eax | encoding preserved
    %%insn_0041801a:
    jc 0x418198 ; 0041801A 0F8278010000
    %if ($ - %%insn_0041801a) > 6
        %error "LONG_0041801A"
    %endif
    times 6 - ($ - %%insn_0041801a) db 0
    %%insn_00418020:
    test edi,0x3 ; 00418020 F7C703000000
    %if ($ - %%insn_00418020) > 6
        %error "LONG_00418020"
    %endif
    times 6 - ($ - %%insn_00418020) db 0
    %%insn_00418026:
    jnz short 0x41803c ; 00418026 7514
    %if ($ - %%insn_00418026) > 2
        %error "LONG_00418026"
    %endif
    times 2 - ($ - %%insn_00418026) db 0
    %%insn_00418028:
    shr ecx,byte 0x2 ; 00418028 C1E902
    %if ($ - %%insn_00418028) > 3
        %error "LONG_00418028"
    %endif
    times 3 - ($ - %%insn_00418028) db 0
    %%insn_0041802b:
    and edx,0x3 ; 0041802B 83E203
    %if ($ - %%insn_0041802b) > 3
        %error "LONG_0041802B"
    %endif
    times 3 - ($ - %%insn_0041802b) db 0
    %%insn_0041802e:
    cmp ecx,0x8 ; 0041802E 83F908
    %if ($ - %%insn_0041802e) > 3
        %error "LONG_0041802E"
    %endif
    times 3 - ($ - %%insn_0041802e) db 0
    %%insn_00418031:
    jc short 0x41805c ; 00418031 7229
    %if ($ - %%insn_00418031) > 2
        %error "LONG_00418031"
    %endif
    times 2 - ($ - %%insn_00418031) db 0
    %%insn_00418033:
    rep movsd ; 00418033 F3A5
    %if ($ - %%insn_00418033) > 2
        %error "LONG_00418033"
    %endif
    times 2 - ($ - %%insn_00418033) db 0
    %%insn_00418035:
    jmp dword near [edx*4+0x418148] ; 00418035 FF249548814100
    %if ($ - %%insn_00418035) > 7
        %error "LONG_00418035"
    %endif
    times 7 - ($ - %%insn_00418035) db 0
    db 0x8B, 0xC7 ; 0041803C 8BC7 | mov eax,edi | encoding preserved
    %%insn_0041803e:
    mov edx,0x3 ; 0041803E BA03000000
    %if ($ - %%insn_0041803e) > 5
        %error "LONG_0041803E"
    %endif
    times 5 - ($ - %%insn_0041803e) db 0
    %%insn_00418043:
    sub ecx,0x4 ; 00418043 83E904
    %if ($ - %%insn_00418043) > 3
        %error "LONG_00418043"
    %endif
    times 3 - ($ - %%insn_00418043) db 0
    %%insn_00418046:
    jc short 0x418054 ; 00418046 720C
    %if ($ - %%insn_00418046) > 2
        %error "LONG_00418046"
    %endif
    times 2 - ($ - %%insn_00418046) db 0
    %%insn_00418048:
    and eax,0x3 ; 00418048 83E003
    %if ($ - %%insn_00418048) > 3
        %error "LONG_00418048"
    %endif
    times 3 - ($ - %%insn_00418048) db 0
    db 0x03, 0xC8 ; 0041804B 03C8 | add ecx,eax | encoding preserved
    %%insn_0041804d:
    jmp dword near [eax*4+0x418060] ; 0041804D FF248560804100
    %if ($ - %%insn_0041804d) > 7
        %error "LONG_0041804D"
    %endif
    times 7 - ($ - %%insn_0041804d) db 0
    %%insn_00418054:
    jmp dword near [ecx*4+0x418158] ; 00418054 FF248D58814100
    %if ($ - %%insn_00418054) > 7
        %error "LONG_00418054"
    %endif
    times 7 - ($ - %%insn_00418054) db 0
    %if ($ - %%fragment_start) != 91
        %error "function fragment size drift: 00418000"
    %endif
%endmacro

%macro emit_func_00418000_part_01 0
    %%fragment_start:
    %%insn_0041805c:
    jmp dword near [ecx*4+0x4180dc] ; 0041805C FF248DDC804100
    %if ($ - %%insn_0041805c) > 7
        %error "LONG_0041805C"
    %endif
    times 7 - ($ - %%insn_0041805c) db 0
    %if ($ - %%fragment_start) != 7
        %error "function fragment size drift: 0041805C"
    %endif
%endmacro

%macro emit_func_00418000_part_02 0
    %%fragment_start:
    db 0x23, 0xD1 ; 00418070 23D1 | and edx,ecx | encoding preserved
    %%insn_00418072:
    mov al,[esi] ; 00418072 8A06
    %if ($ - %%insn_00418072) > 2
        %error "LONG_00418072"
    %endif
    times 2 - ($ - %%insn_00418072) db 0
    %%insn_00418074:
    mov [edi],al ; 00418074 8807
    %if ($ - %%insn_00418074) > 2
        %error "LONG_00418074"
    %endif
    times 2 - ($ - %%insn_00418074) db 0
    %%insn_00418076:
    mov al,[esi+0x1] ; 00418076 8A4601
    %if ($ - %%insn_00418076) > 3
        %error "LONG_00418076"
    %endif
    times 3 - ($ - %%insn_00418076) db 0
    %%insn_00418079:
    mov [edi+0x1],al ; 00418079 884701
    %if ($ - %%insn_00418079) > 3
        %error "LONG_00418079"
    %endif
    times 3 - ($ - %%insn_00418079) db 0
    %%insn_0041807c:
    mov al,[esi+0x2] ; 0041807C 8A4602
    %if ($ - %%insn_0041807c) > 3
        %error "LONG_0041807C"
    %endif
    times 3 - ($ - %%insn_0041807c) db 0
    %%insn_0041807f:
    shr ecx,byte 0x2 ; 0041807F C1E902
    %if ($ - %%insn_0041807f) > 3
        %error "LONG_0041807F"
    %endif
    times 3 - ($ - %%insn_0041807f) db 0
    %%insn_00418082:
    mov [edi+0x2],al ; 00418082 884702
    %if ($ - %%insn_00418082) > 3
        %error "LONG_00418082"
    %endif
    times 3 - ($ - %%insn_00418082) db 0
    %%insn_00418085:
    add esi,0x3 ; 00418085 83C603
    %if ($ - %%insn_00418085) > 3
        %error "LONG_00418085"
    %endif
    times 3 - ($ - %%insn_00418085) db 0
    %%insn_00418088:
    add edi,0x3 ; 00418088 83C703
    %if ($ - %%insn_00418088) > 3
        %error "LONG_00418088"
    %endif
    times 3 - ($ - %%insn_00418088) db 0
    %%insn_0041808b:
    cmp ecx,0x8 ; 0041808B 83F908
    %if ($ - %%insn_0041808b) > 3
        %error "LONG_0041808B"
    %endif
    times 3 - ($ - %%insn_0041808b) db 0
    %%insn_0041808e:
    jc short 0x41805c ; 0041808E 72CC
    %if ($ - %%insn_0041808e) > 2
        %error "LONG_0041808E"
    %endif
    times 2 - ($ - %%insn_0041808e) db 0
    %%insn_00418090:
    rep movsd ; 00418090 F3A5
    %if ($ - %%insn_00418090) > 2
        %error "LONG_00418090"
    %endif
    times 2 - ($ - %%insn_00418090) db 0
    %%insn_00418092:
    jmp dword near [edx*4+0x418148] ; 00418092 FF249548814100
    %if ($ - %%insn_00418092) > 7
        %error "LONG_00418092"
    %endif
    times 7 - ($ - %%insn_00418092) db 0
    %if ($ - %%fragment_start) != 41
        %error "function fragment size drift: 00418070"
    %endif
%endmacro

%macro emit_func_00418000_part_03 0
    %%fragment_start:
    db 0x23, 0xD1 ; 0041809C 23D1 | and edx,ecx | encoding preserved
    %%insn_0041809e:
    mov al,[esi] ; 0041809E 8A06
    %if ($ - %%insn_0041809e) > 2
        %error "LONG_0041809E"
    %endif
    times 2 - ($ - %%insn_0041809e) db 0
    %%insn_004180a0:
    mov [edi],al ; 004180A0 8807
    %if ($ - %%insn_004180a0) > 2
        %error "LONG_004180A0"
    %endif
    times 2 - ($ - %%insn_004180a0) db 0
    %%insn_004180a2:
    mov al,[esi+0x1] ; 004180A2 8A4601
    %if ($ - %%insn_004180a2) > 3
        %error "LONG_004180A2"
    %endif
    times 3 - ($ - %%insn_004180a2) db 0
    %%insn_004180a5:
    shr ecx,byte 0x2 ; 004180A5 C1E902
    %if ($ - %%insn_004180a5) > 3
        %error "LONG_004180A5"
    %endif
    times 3 - ($ - %%insn_004180a5) db 0
    %%insn_004180a8:
    mov [edi+0x1],al ; 004180A8 884701
    %if ($ - %%insn_004180a8) > 3
        %error "LONG_004180A8"
    %endif
    times 3 - ($ - %%insn_004180a8) db 0
    %%insn_004180ab:
    add esi,0x2 ; 004180AB 83C602
    %if ($ - %%insn_004180ab) > 3
        %error "LONG_004180AB"
    %endif
    times 3 - ($ - %%insn_004180ab) db 0
    %%insn_004180ae:
    add edi,0x2 ; 004180AE 83C702
    %if ($ - %%insn_004180ae) > 3
        %error "LONG_004180AE"
    %endif
    times 3 - ($ - %%insn_004180ae) db 0
    %%insn_004180b1:
    cmp ecx,0x8 ; 004180B1 83F908
    %if ($ - %%insn_004180b1) > 3
        %error "LONG_004180B1"
    %endif
    times 3 - ($ - %%insn_004180b1) db 0
    %%insn_004180b4:
    jc short 0x41805c ; 004180B4 72A6
    %if ($ - %%insn_004180b4) > 2
        %error "LONG_004180B4"
    %endif
    times 2 - ($ - %%insn_004180b4) db 0
    %%insn_004180b6:
    rep movsd ; 004180B6 F3A5
    %if ($ - %%insn_004180b6) > 2
        %error "LONG_004180B6"
    %endif
    times 2 - ($ - %%insn_004180b6) db 0
    %%insn_004180b8:
    jmp dword near [edx*4+0x418148] ; 004180B8 FF249548814100
    %if ($ - %%insn_004180b8) > 7
        %error "LONG_004180B8"
    %endif
    times 7 - ($ - %%insn_004180b8) db 0
    %if ($ - %%fragment_start) != 35
        %error "function fragment size drift: 0041809C"
    %endif
%endmacro

%macro emit_func_00418000_part_04 0
    %%fragment_start:
    db 0x23, 0xD1 ; 004180C0 23D1 | and edx,ecx | encoding preserved
    %%insn_004180c2:
    mov al,[esi] ; 004180C2 8A06
    %if ($ - %%insn_004180c2) > 2
        %error "LONG_004180C2"
    %endif
    times 2 - ($ - %%insn_004180c2) db 0
    %%insn_004180c4:
    mov [edi],al ; 004180C4 8807
    %if ($ - %%insn_004180c4) > 2
        %error "LONG_004180C4"
    %endif
    times 2 - ($ - %%insn_004180c4) db 0
    %%insn_004180c6:
    inc esi ; 004180C6 46
    %if ($ - %%insn_004180c6) > 1
        %error "LONG_004180C6"
    %endif
    times 1 - ($ - %%insn_004180c6) db 0
    %%insn_004180c7:
    shr ecx,byte 0x2 ; 004180C7 C1E902
    %if ($ - %%insn_004180c7) > 3
        %error "LONG_004180C7"
    %endif
    times 3 - ($ - %%insn_004180c7) db 0
    %%insn_004180ca:
    inc edi ; 004180CA 47
    %if ($ - %%insn_004180ca) > 1
        %error "LONG_004180CA"
    %endif
    times 1 - ($ - %%insn_004180ca) db 0
    %%insn_004180cb:
    cmp ecx,0x8 ; 004180CB 83F908
    %if ($ - %%insn_004180cb) > 3
        %error "LONG_004180CB"
    %endif
    times 3 - ($ - %%insn_004180cb) db 0
    %%insn_004180ce:
    jc short 0x41805c ; 004180CE 728C
    %if ($ - %%insn_004180ce) > 2
        %error "LONG_004180CE"
    %endif
    times 2 - ($ - %%insn_004180ce) db 0
    %%insn_004180d0:
    rep movsd ; 004180D0 F3A5
    %if ($ - %%insn_004180d0) > 2
        %error "LONG_004180D0"
    %endif
    times 2 - ($ - %%insn_004180d0) db 0
    %%insn_004180d2:
    jmp dword near [edx*4+0x418148] ; 004180D2 FF249548814100
    %if ($ - %%insn_004180d2) > 7
        %error "LONG_004180D2"
    %endif
    times 7 - ($ - %%insn_004180d2) db 0
    %if ($ - %%fragment_start) != 25
        %error "function fragment size drift: 004180C0"
    %endif
%endmacro

%macro emit_func_00418000_part_05 0
    %%fragment_start:
    %%insn_004180fc:
    mov eax,[esi+ecx*4-0x1c] ; 004180FC 8B448EE4
    %if ($ - %%insn_004180fc) > 4
        %error "LONG_004180FC"
    %endif
    times 4 - ($ - %%insn_004180fc) db 0
    %%insn_00418100:
    mov [edi+ecx*4-0x1c],eax ; 00418100 89448FE4
    %if ($ - %%insn_00418100) > 4
        %error "LONG_00418100"
    %endif
    times 4 - ($ - %%insn_00418100) db 0
    %%insn_00418104:
    mov eax,[esi+ecx*4-0x18] ; 00418104 8B448EE8
    %if ($ - %%insn_00418104) > 4
        %error "LONG_00418104"
    %endif
    times 4 - ($ - %%insn_00418104) db 0
    %%insn_00418108:
    mov [edi+ecx*4-0x18],eax ; 00418108 89448FE8
    %if ($ - %%insn_00418108) > 4
        %error "LONG_00418108"
    %endif
    times 4 - ($ - %%insn_00418108) db 0
    %%insn_0041810c:
    mov eax,[esi+ecx*4-0x14] ; 0041810C 8B448EEC
    %if ($ - %%insn_0041810c) > 4
        %error "LONG_0041810C"
    %endif
    times 4 - ($ - %%insn_0041810c) db 0
    %%insn_00418110:
    mov [edi+ecx*4-0x14],eax ; 00418110 89448FEC
    %if ($ - %%insn_00418110) > 4
        %error "LONG_00418110"
    %endif
    times 4 - ($ - %%insn_00418110) db 0
    %%insn_00418114:
    mov eax,[esi+ecx*4-0x10] ; 00418114 8B448EF0
    %if ($ - %%insn_00418114) > 4
        %error "LONG_00418114"
    %endif
    times 4 - ($ - %%insn_00418114) db 0
    %%insn_00418118:
    mov [edi+ecx*4-0x10],eax ; 00418118 89448FF0
    %if ($ - %%insn_00418118) > 4
        %error "LONG_00418118"
    %endif
    times 4 - ($ - %%insn_00418118) db 0
    %%insn_0041811c:
    mov eax,[esi+ecx*4-0xc] ; 0041811C 8B448EF4
    %if ($ - %%insn_0041811c) > 4
        %error "LONG_0041811C"
    %endif
    times 4 - ($ - %%insn_0041811c) db 0
    %%insn_00418120:
    mov [edi+ecx*4-0xc],eax ; 00418120 89448FF4
    %if ($ - %%insn_00418120) > 4
        %error "LONG_00418120"
    %endif
    times 4 - ($ - %%insn_00418120) db 0
    %%insn_00418124:
    mov eax,[esi+ecx*4-0x8] ; 00418124 8B448EF8
    %if ($ - %%insn_00418124) > 4
        %error "LONG_00418124"
    %endif
    times 4 - ($ - %%insn_00418124) db 0
    %%insn_00418128:
    mov [edi+ecx*4-0x8],eax ; 00418128 89448FF8
    %if ($ - %%insn_00418128) > 4
        %error "LONG_00418128"
    %endif
    times 4 - ($ - %%insn_00418128) db 0
    %%insn_0041812c:
    mov eax,[esi+ecx*4-0x4] ; 0041812C 8B448EFC
    %if ($ - %%insn_0041812c) > 4
        %error "LONG_0041812C"
    %endif
    times 4 - ($ - %%insn_0041812c) db 0
    %%insn_00418130:
    mov [edi+ecx*4-0x4],eax ; 00418130 89448FFC
    %if ($ - %%insn_00418130) > 4
        %error "LONG_00418130"
    %endif
    times 4 - ($ - %%insn_00418130) db 0
    %%insn_00418134:
    lea eax,[ecx*4+0x0] ; 00418134 8D048D00000000
    %if ($ - %%insn_00418134) > 7
        %error "LONG_00418134"
    %endif
    times 7 - ($ - %%insn_00418134) db 0
    db 0x03, 0xF0 ; 0041813B 03F0 | add esi,eax | encoding preserved
    db 0x03, 0xF8 ; 0041813D 03F8 | add edi,eax | encoding preserved
    %%insn_0041813f:
    jmp dword near [edx*4+0x418148] ; 0041813F FF249548814100
    %if ($ - %%insn_0041813f) > 7
        %error "LONG_0041813F"
    %endif
    times 7 - ($ - %%insn_0041813f) db 0
    %if ($ - %%fragment_start) != 74
        %error "function fragment size drift: 004180FC"
    %endif
%endmacro

%macro emit_func_00418000_part_06 0
    %%fragment_start:
    %%insn_00418158:
    mov eax,[ebp+0x8] ; 00418158 8B4508
    %if ($ - %%insn_00418158) > 3
        %error "LONG_00418158"
    %endif
    times 3 - ($ - %%insn_00418158) db 0
    %%insn_0041815b:
    pop esi ; 0041815B 5E
    %if ($ - %%insn_0041815b) > 1
        %error "LONG_0041815B"
    %endif
    times 1 - ($ - %%insn_0041815b) db 0
    %%insn_0041815c:
    pop edi ; 0041815C 5F
    %if ($ - %%insn_0041815c) > 1
        %error "LONG_0041815C"
    %endif
    times 1 - ($ - %%insn_0041815c) db 0
    %%insn_0041815d:
    leave ; 0041815D C9
    %if ($ - %%insn_0041815d) > 1
        %error "LONG_0041815D"
    %endif
    times 1 - ($ - %%insn_0041815d) db 0
    %%insn_0041815e:
    ret ; 0041815E C3
    %if ($ - %%insn_0041815e) > 1
        %error "LONG_0041815E"
    %endif
    times 1 - ($ - %%insn_0041815e) db 0
    %if ($ - %%fragment_start) != 7
        %error "function fragment size drift: 00418158"
    %endif
%endmacro

%macro emit_func_00418000_part_07 0
    %%fragment_start:
    %%insn_00418160:
    mov al,[esi] ; 00418160 8A06
    %if ($ - %%insn_00418160) > 2
        %error "LONG_00418160"
    %endif
    times 2 - ($ - %%insn_00418160) db 0
    %%insn_00418162:
    mov [edi],al ; 00418162 8807
    %if ($ - %%insn_00418162) > 2
        %error "LONG_00418162"
    %endif
    times 2 - ($ - %%insn_00418162) db 0
    %%insn_00418164:
    mov eax,[ebp+0x8] ; 00418164 8B4508
    %if ($ - %%insn_00418164) > 3
        %error "LONG_00418164"
    %endif
    times 3 - ($ - %%insn_00418164) db 0
    %%insn_00418167:
    pop esi ; 00418167 5E
    %if ($ - %%insn_00418167) > 1
        %error "LONG_00418167"
    %endif
    times 1 - ($ - %%insn_00418167) db 0
    %%insn_00418168:
    pop edi ; 00418168 5F
    %if ($ - %%insn_00418168) > 1
        %error "LONG_00418168"
    %endif
    times 1 - ($ - %%insn_00418168) db 0
    %%insn_00418169:
    leave ; 00418169 C9
    %if ($ - %%insn_00418169) > 1
        %error "LONG_00418169"
    %endif
    times 1 - ($ - %%insn_00418169) db 0
    %%insn_0041816a:
    ret ; 0041816A C3
    %if ($ - %%insn_0041816a) > 1
        %error "LONG_0041816A"
    %endif
    times 1 - ($ - %%insn_0041816a) db 0
    %if ($ - %%fragment_start) != 11
        %error "function fragment size drift: 00418160"
    %endif
%endmacro

%macro emit_func_00418000_part_08 0
    %%fragment_start:
    %%insn_0041816c:
    mov al,[esi] ; 0041816C 8A06
    %if ($ - %%insn_0041816c) > 2
        %error "LONG_0041816C"
    %endif
    times 2 - ($ - %%insn_0041816c) db 0
    %%insn_0041816e:
    mov [edi],al ; 0041816E 8807
    %if ($ - %%insn_0041816e) > 2
        %error "LONG_0041816E"
    %endif
    times 2 - ($ - %%insn_0041816e) db 0
    %%insn_00418170:
    mov al,[esi+0x1] ; 00418170 8A4601
    %if ($ - %%insn_00418170) > 3
        %error "LONG_00418170"
    %endif
    times 3 - ($ - %%insn_00418170) db 0
    %%insn_00418173:
    mov [edi+0x1],al ; 00418173 884701
    %if ($ - %%insn_00418173) > 3
        %error "LONG_00418173"
    %endif
    times 3 - ($ - %%insn_00418173) db 0
    %%insn_00418176:
    mov eax,[ebp+0x8] ; 00418176 8B4508
    %if ($ - %%insn_00418176) > 3
        %error "LONG_00418176"
    %endif
    times 3 - ($ - %%insn_00418176) db 0
    %%insn_00418179:
    pop esi ; 00418179 5E
    %if ($ - %%insn_00418179) > 1
        %error "LONG_00418179"
    %endif
    times 1 - ($ - %%insn_00418179) db 0
    %%insn_0041817a:
    pop edi ; 0041817A 5F
    %if ($ - %%insn_0041817a) > 1
        %error "LONG_0041817A"
    %endif
    times 1 - ($ - %%insn_0041817a) db 0
    %%insn_0041817b:
    leave ; 0041817B C9
    %if ($ - %%insn_0041817b) > 1
        %error "LONG_0041817B"
    %endif
    times 1 - ($ - %%insn_0041817b) db 0
    %%insn_0041817c:
    ret ; 0041817C C3
    %if ($ - %%insn_0041817c) > 1
        %error "LONG_0041817C"
    %endif
    times 1 - ($ - %%insn_0041817c) db 0
    %if ($ - %%fragment_start) != 17
        %error "function fragment size drift: 0041816C"
    %endif
%endmacro

%macro emit_func_00418000_part_09 0
    %%fragment_start:
    %%insn_00418180:
    mov al,[esi] ; 00418180 8A06
    %if ($ - %%insn_00418180) > 2
        %error "LONG_00418180"
    %endif
    times 2 - ($ - %%insn_00418180) db 0
    %%insn_00418182:
    mov [edi],al ; 00418182 8807
    %if ($ - %%insn_00418182) > 2
        %error "LONG_00418182"
    %endif
    times 2 - ($ - %%insn_00418182) db 0
    %%insn_00418184:
    mov al,[esi+0x1] ; 00418184 8A4601
    %if ($ - %%insn_00418184) > 3
        %error "LONG_00418184"
    %endif
    times 3 - ($ - %%insn_00418184) db 0
    %%insn_00418187:
    mov [edi+0x1],al ; 00418187 884701
    %if ($ - %%insn_00418187) > 3
        %error "LONG_00418187"
    %endif
    times 3 - ($ - %%insn_00418187) db 0
    %%insn_0041818a:
    mov al,[esi+0x2] ; 0041818A 8A4602
    %if ($ - %%insn_0041818a) > 3
        %error "LONG_0041818A"
    %endif
    times 3 - ($ - %%insn_0041818a) db 0
    %%insn_0041818d:
    mov [edi+0x2],al ; 0041818D 884702
    %if ($ - %%insn_0041818d) > 3
        %error "LONG_0041818D"
    %endif
    times 3 - ($ - %%insn_0041818d) db 0
    %%insn_00418190:
    mov eax,[ebp+0x8] ; 00418190 8B4508
    %if ($ - %%insn_00418190) > 3
        %error "LONG_00418190"
    %endif
    times 3 - ($ - %%insn_00418190) db 0
    %%insn_00418193:
    pop esi ; 00418193 5E
    %if ($ - %%insn_00418193) > 1
        %error "LONG_00418193"
    %endif
    times 1 - ($ - %%insn_00418193) db 0
    %%insn_00418194:
    pop edi ; 00418194 5F
    %if ($ - %%insn_00418194) > 1
        %error "LONG_00418194"
    %endif
    times 1 - ($ - %%insn_00418194) db 0
    %%insn_00418195:
    leave ; 00418195 C9
    %if ($ - %%insn_00418195) > 1
        %error "LONG_00418195"
    %endif
    times 1 - ($ - %%insn_00418195) db 0
    %%insn_00418196:
    ret ; 00418196 C3
    %if ($ - %%insn_00418196) > 1
        %error "LONG_00418196"
    %endif
    times 1 - ($ - %%insn_00418196) db 0
    %if ($ - %%fragment_start) != 23
        %error "function fragment size drift: 00418180"
    %endif
%endmacro

%macro emit_func_00418000_part_10 0
    %%fragment_start:
    %%insn_00418198:
    lea esi,[ecx+esi-0x4] ; 00418198 8D7431FC
    %if ($ - %%insn_00418198) > 4
        %error "LONG_00418198"
    %endif
    times 4 - ($ - %%insn_00418198) db 0
    %%insn_0041819c:
    lea edi,[ecx+edi-0x4] ; 0041819C 8D7C39FC
    %if ($ - %%insn_0041819c) > 4
        %error "LONG_0041819C"
    %endif
    times 4 - ($ - %%insn_0041819c) db 0
    %%insn_004181a0:
    test edi,0x3 ; 004181A0 F7C703000000
    %if ($ - %%insn_004181a0) > 6
        %error "LONG_004181A0"
    %endif
    times 6 - ($ - %%insn_004181a0) db 0
    %%insn_004181a6:
    jnz short 0x4181cc ; 004181A6 7524
    %if ($ - %%insn_004181a6) > 2
        %error "LONG_004181A6"
    %endif
    times 2 - ($ - %%insn_004181a6) db 0
    %%insn_004181a8:
    shr ecx,byte 0x2 ; 004181A8 C1E902
    %if ($ - %%insn_004181a8) > 3
        %error "LONG_004181A8"
    %endif
    times 3 - ($ - %%insn_004181a8) db 0
    %%insn_004181ab:
    and edx,0x3 ; 004181AB 83E203
    %if ($ - %%insn_004181ab) > 3
        %error "LONG_004181AB"
    %endif
    times 3 - ($ - %%insn_004181ab) db 0
    %%insn_004181ae:
    cmp ecx,0x8 ; 004181AE 83F908
    %if ($ - %%insn_004181ae) > 3
        %error "LONG_004181AE"
    %endif
    times 3 - ($ - %%insn_004181ae) db 0
    %%insn_004181b1:
    jc short 0x4181c0 ; 004181B1 720D
    %if ($ - %%insn_004181b1) > 2
        %error "LONG_004181B1"
    %endif
    times 2 - ($ - %%insn_004181b1) db 0
    %%insn_004181b3:
    std ; 004181B3 FD
    %if ($ - %%insn_004181b3) > 1
        %error "LONG_004181B3"
    %endif
    times 1 - ($ - %%insn_004181b3) db 0
    %%insn_004181b4:
    rep movsd ; 004181B4 F3A5
    %if ($ - %%insn_004181b4) > 2
        %error "LONG_004181B4"
    %endif
    times 2 - ($ - %%insn_004181b4) db 0
    %%insn_004181b6:
    cld ; 004181B6 FC
    %if ($ - %%insn_004181b6) > 1
        %error "LONG_004181B6"
    %endif
    times 1 - ($ - %%insn_004181b6) db 0
    %%insn_004181b7:
    jmp dword near [edx*4+0x4182e0] ; 004181B7 FF2495E0824100
    %if ($ - %%insn_004181b7) > 7
        %error "LONG_004181B7"
    %endif
    times 7 - ($ - %%insn_004181b7) db 0
    %if ($ - %%fragment_start) != 38
        %error "function fragment size drift: 00418198"
    %endif
%endmacro

%macro emit_func_00418000_part_11 0
    %%fragment_start:
    %%insn_004181c0:
    neg ecx ; 004181C0 F7D9
    %if ($ - %%insn_004181c0) > 2
        %error "LONG_004181C0"
    %endif
    times 2 - ($ - %%insn_004181c0) db 0
    %%insn_004181c2:
    jmp dword near [ecx*4+0x418290] ; 004181C2 FF248D90824100
    %if ($ - %%insn_004181c2) > 7
        %error "LONG_004181C2"
    %endif
    times 7 - ($ - %%insn_004181c2) db 0
    %if ($ - %%fragment_start) != 9
        %error "function fragment size drift: 004181C0"
    %endif
%endmacro

%macro emit_func_00418000_part_12 0
    %%fragment_start:
    db 0x8B, 0xC7 ; 004181CC 8BC7 | mov eax,edi | encoding preserved
    %%insn_004181ce:
    mov edx,0x3 ; 004181CE BA03000000
    %if ($ - %%insn_004181ce) > 5
        %error "LONG_004181CE"
    %endif
    times 5 - ($ - %%insn_004181ce) db 0
    %%insn_004181d3:
    cmp ecx,0x4 ; 004181D3 83F904
    %if ($ - %%insn_004181d3) > 3
        %error "LONG_004181D3"
    %endif
    times 3 - ($ - %%insn_004181d3) db 0
    %%insn_004181d6:
    jc short 0x4181e4 ; 004181D6 720C
    %if ($ - %%insn_004181d6) > 2
        %error "LONG_004181D6"
    %endif
    times 2 - ($ - %%insn_004181d6) db 0
    %%insn_004181d8:
    and eax,0x3 ; 004181D8 83E003
    %if ($ - %%insn_004181d8) > 3
        %error "LONG_004181D8"
    %endif
    times 3 - ($ - %%insn_004181d8) db 0
    db 0x2B, 0xC8 ; 004181DB 2BC8 | sub ecx,eax | encoding preserved
    %%insn_004181dd:
    jmp dword near [eax*4+0x4181e8] ; 004181DD FF2485E8814100
    %if ($ - %%insn_004181dd) > 7
        %error "LONG_004181DD"
    %endif
    times 7 - ($ - %%insn_004181dd) db 0
    %%insn_004181e4:
    jmp dword near [ecx*4+0x4182e0] ; 004181E4 FF248DE0824100
    %if ($ - %%insn_004181e4) > 7
        %error "LONG_004181E4"
    %endif
    times 7 - ($ - %%insn_004181e4) db 0
    %if ($ - %%fragment_start) != 31
        %error "function fragment size drift: 004181CC"
    %endif
%endmacro

%macro emit_func_00418000_part_13 0
    %%fragment_start:
    %%insn_004181f8:
    mov al,[esi+0x3] ; 004181F8 8A4603
    %if ($ - %%insn_004181f8) > 3
        %error "LONG_004181F8"
    %endif
    times 3 - ($ - %%insn_004181f8) db 0
    db 0x23, 0xD1 ; 004181FB 23D1 | and edx,ecx | encoding preserved
    %%insn_004181fd:
    mov [edi+0x3],al ; 004181FD 884703
    %if ($ - %%insn_004181fd) > 3
        %error "LONG_004181FD"
    %endif
    times 3 - ($ - %%insn_004181fd) db 0
    %%insn_00418200:
    dec esi ; 00418200 4E
    %if ($ - %%insn_00418200) > 1
        %error "LONG_00418200"
    %endif
    times 1 - ($ - %%insn_00418200) db 0
    %%insn_00418201:
    shr ecx,byte 0x2 ; 00418201 C1E902
    %if ($ - %%insn_00418201) > 3
        %error "LONG_00418201"
    %endif
    times 3 - ($ - %%insn_00418201) db 0
    %%insn_00418204:
    dec edi ; 00418204 4F
    %if ($ - %%insn_00418204) > 1
        %error "LONG_00418204"
    %endif
    times 1 - ($ - %%insn_00418204) db 0
    %%insn_00418205:
    cmp ecx,0x8 ; 00418205 83F908
    %if ($ - %%insn_00418205) > 3
        %error "LONG_00418205"
    %endif
    times 3 - ($ - %%insn_00418205) db 0
    %%insn_00418208:
    jc short 0x4181c0 ; 00418208 72B6
    %if ($ - %%insn_00418208) > 2
        %error "LONG_00418208"
    %endif
    times 2 - ($ - %%insn_00418208) db 0
    %%insn_0041820a:
    std ; 0041820A FD
    %if ($ - %%insn_0041820a) > 1
        %error "LONG_0041820A"
    %endif
    times 1 - ($ - %%insn_0041820a) db 0
    %%insn_0041820b:
    rep movsd ; 0041820B F3A5
    %if ($ - %%insn_0041820b) > 2
        %error "LONG_0041820B"
    %endif
    times 2 - ($ - %%insn_0041820b) db 0
    %%insn_0041820d:
    cld ; 0041820D FC
    %if ($ - %%insn_0041820d) > 1
        %error "LONG_0041820D"
    %endif
    times 1 - ($ - %%insn_0041820d) db 0
    %%insn_0041820e:
    jmp dword near [edx*4+0x4182e0] ; 0041820E FF2495E0824100
    %if ($ - %%insn_0041820e) > 7
        %error "LONG_0041820E"
    %endif
    times 7 - ($ - %%insn_0041820e) db 0
    %if ($ - %%fragment_start) != 29
        %error "function fragment size drift: 004181F8"
    %endif
%endmacro

%macro emit_func_00418000_part_14 0
    %%fragment_start:
    %%insn_00418218:
    mov al,[esi+0x3] ; 00418218 8A4603
    %if ($ - %%insn_00418218) > 3
        %error "LONG_00418218"
    %endif
    times 3 - ($ - %%insn_00418218) db 0
    db 0x23, 0xD1 ; 0041821B 23D1 | and edx,ecx | encoding preserved
    %%insn_0041821d:
    mov [edi+0x3],al ; 0041821D 884703
    %if ($ - %%insn_0041821d) > 3
        %error "LONG_0041821D"
    %endif
    times 3 - ($ - %%insn_0041821d) db 0
    %%insn_00418220:
    mov al,[esi+0x2] ; 00418220 8A4602
    %if ($ - %%insn_00418220) > 3
        %error "LONG_00418220"
    %endif
    times 3 - ($ - %%insn_00418220) db 0
    %%insn_00418223:
    shr ecx,byte 0x2 ; 00418223 C1E902
    %if ($ - %%insn_00418223) > 3
        %error "LONG_00418223"
    %endif
    times 3 - ($ - %%insn_00418223) db 0
    %%insn_00418226:
    mov [edi+0x2],al ; 00418226 884702
    %if ($ - %%insn_00418226) > 3
        %error "LONG_00418226"
    %endif
    times 3 - ($ - %%insn_00418226) db 0
    %%insn_00418229:
    sub esi,0x2 ; 00418229 83EE02
    %if ($ - %%insn_00418229) > 3
        %error "LONG_00418229"
    %endif
    times 3 - ($ - %%insn_00418229) db 0
    %%insn_0041822c:
    sub edi,0x2 ; 0041822C 83EF02
    %if ($ - %%insn_0041822c) > 3
        %error "LONG_0041822C"
    %endif
    times 3 - ($ - %%insn_0041822c) db 0
    %%insn_0041822f:
    cmp ecx,0x8 ; 0041822F 83F908
    %if ($ - %%insn_0041822f) > 3
        %error "LONG_0041822F"
    %endif
    times 3 - ($ - %%insn_0041822f) db 0
    %%insn_00418232:
    jc short 0x4181c0 ; 00418232 728C
    %if ($ - %%insn_00418232) > 2
        %error "LONG_00418232"
    %endif
    times 2 - ($ - %%insn_00418232) db 0
    %%insn_00418234:
    std ; 00418234 FD
    %if ($ - %%insn_00418234) > 1
        %error "LONG_00418234"
    %endif
    times 1 - ($ - %%insn_00418234) db 0
    %%insn_00418235:
    rep movsd ; 00418235 F3A5
    %if ($ - %%insn_00418235) > 2
        %error "LONG_00418235"
    %endif
    times 2 - ($ - %%insn_00418235) db 0
    %%insn_00418237:
    cld ; 00418237 FC
    %if ($ - %%insn_00418237) > 1
        %error "LONG_00418237"
    %endif
    times 1 - ($ - %%insn_00418237) db 0
    %%insn_00418238:
    jmp dword near [edx*4+0x4182e0] ; 00418238 FF2495E0824100
    %if ($ - %%insn_00418238) > 7
        %error "LONG_00418238"
    %endif
    times 7 - ($ - %%insn_00418238) db 0
    %if ($ - %%fragment_start) != 39
        %error "function fragment size drift: 00418218"
    %endif
%endmacro

%macro emit_func_00418000_part_15 0
    %%fragment_start:
    %%insn_00418240:
    mov al,[esi+0x3] ; 00418240 8A4603
    %if ($ - %%insn_00418240) > 3
        %error "LONG_00418240"
    %endif
    times 3 - ($ - %%insn_00418240) db 0
    db 0x23, 0xD1 ; 00418243 23D1 | and edx,ecx | encoding preserved
    %%insn_00418245:
    mov [edi+0x3],al ; 00418245 884703
    %if ($ - %%insn_00418245) > 3
        %error "LONG_00418245"
    %endif
    times 3 - ($ - %%insn_00418245) db 0
    %%insn_00418248:
    mov al,[esi+0x2] ; 00418248 8A4602
    %if ($ - %%insn_00418248) > 3
        %error "LONG_00418248"
    %endif
    times 3 - ($ - %%insn_00418248) db 0
    %%insn_0041824b:
    mov [edi+0x2],al ; 0041824B 884702
    %if ($ - %%insn_0041824b) > 3
        %error "LONG_0041824B"
    %endif
    times 3 - ($ - %%insn_0041824b) db 0
    %%insn_0041824e:
    mov al,[esi+0x1] ; 0041824E 8A4601
    %if ($ - %%insn_0041824e) > 3
        %error "LONG_0041824E"
    %endif
    times 3 - ($ - %%insn_0041824e) db 0
    %%insn_00418251:
    shr ecx,byte 0x2 ; 00418251 C1E902
    %if ($ - %%insn_00418251) > 3
        %error "LONG_00418251"
    %endif
    times 3 - ($ - %%insn_00418251) db 0
    %%insn_00418254:
    mov [edi+0x1],al ; 00418254 884701
    %if ($ - %%insn_00418254) > 3
        %error "LONG_00418254"
    %endif
    times 3 - ($ - %%insn_00418254) db 0
    %%insn_00418257:
    sub esi,0x3 ; 00418257 83EE03
    %if ($ - %%insn_00418257) > 3
        %error "LONG_00418257"
    %endif
    times 3 - ($ - %%insn_00418257) db 0
    %%insn_0041825a:
    sub edi,0x3 ; 0041825A 83EF03
    %if ($ - %%insn_0041825a) > 3
        %error "LONG_0041825A"
    %endif
    times 3 - ($ - %%insn_0041825a) db 0
    %%insn_0041825d:
    cmp ecx,0x8 ; 0041825D 83F908
    %if ($ - %%insn_0041825d) > 3
        %error "LONG_0041825D"
    %endif
    times 3 - ($ - %%insn_0041825d) db 0
    %%insn_00418260:
    jc 0x4181c0 ; 00418260 0F825AFFFFFF
    %if ($ - %%insn_00418260) > 6
        %error "LONG_00418260"
    %endif
    times 6 - ($ - %%insn_00418260) db 0
    %%insn_00418266:
    std ; 00418266 FD
    %if ($ - %%insn_00418266) > 1
        %error "LONG_00418266"
    %endif
    times 1 - ($ - %%insn_00418266) db 0
    %%insn_00418267:
    rep movsd ; 00418267 F3A5
    %if ($ - %%insn_00418267) > 2
        %error "LONG_00418267"
    %endif
    times 2 - ($ - %%insn_00418267) db 0
    %%insn_00418269:
    cld ; 00418269 FC
    %if ($ - %%insn_00418269) > 1
        %error "LONG_00418269"
    %endif
    times 1 - ($ - %%insn_00418269) db 0
    %%insn_0041826a:
    jmp dword near [edx*4+0x4182e0] ; 0041826A FF2495E0824100
    %if ($ - %%insn_0041826a) > 7
        %error "LONG_0041826A"
    %endif
    times 7 - ($ - %%insn_0041826a) db 0
    %if ($ - %%fragment_start) != 49
        %error "function fragment size drift: 00418240"
    %endif
%endmacro

%macro emit_func_00418000_part_16 0
    %%fragment_start:
    %%insn_00418294:
    mov eax,[esi+ecx*4+0x1c] ; 00418294 8B448E1C
    %if ($ - %%insn_00418294) > 4
        %error "LONG_00418294"
    %endif
    times 4 - ($ - %%insn_00418294) db 0
    %%insn_00418298:
    mov [edi+ecx*4+0x1c],eax ; 00418298 89448F1C
    %if ($ - %%insn_00418298) > 4
        %error "LONG_00418298"
    %endif
    times 4 - ($ - %%insn_00418298) db 0
    %%insn_0041829c:
    mov eax,[esi+ecx*4+0x18] ; 0041829C 8B448E18
    %if ($ - %%insn_0041829c) > 4
        %error "LONG_0041829C"
    %endif
    times 4 - ($ - %%insn_0041829c) db 0
    %%insn_004182a0:
    mov [edi+ecx*4+0x18],eax ; 004182A0 89448F18
    %if ($ - %%insn_004182a0) > 4
        %error "LONG_004182A0"
    %endif
    times 4 - ($ - %%insn_004182a0) db 0
    %%insn_004182a4:
    mov eax,[esi+ecx*4+0x14] ; 004182A4 8B448E14
    %if ($ - %%insn_004182a4) > 4
        %error "LONG_004182A4"
    %endif
    times 4 - ($ - %%insn_004182a4) db 0
    %%insn_004182a8:
    mov [edi+ecx*4+0x14],eax ; 004182A8 89448F14
    %if ($ - %%insn_004182a8) > 4
        %error "LONG_004182A8"
    %endif
    times 4 - ($ - %%insn_004182a8) db 0
    %%insn_004182ac:
    mov eax,[esi+ecx*4+0x10] ; 004182AC 8B448E10
    %if ($ - %%insn_004182ac) > 4
        %error "LONG_004182AC"
    %endif
    times 4 - ($ - %%insn_004182ac) db 0
    %%insn_004182b0:
    mov [edi+ecx*4+0x10],eax ; 004182B0 89448F10
    %if ($ - %%insn_004182b0) > 4
        %error "LONG_004182B0"
    %endif
    times 4 - ($ - %%insn_004182b0) db 0
    %%insn_004182b4:
    mov eax,[esi+ecx*4+0xc] ; 004182B4 8B448E0C
    %if ($ - %%insn_004182b4) > 4
        %error "LONG_004182B4"
    %endif
    times 4 - ($ - %%insn_004182b4) db 0
    %%insn_004182b8:
    mov [edi+ecx*4+0xc],eax ; 004182B8 89448F0C
    %if ($ - %%insn_004182b8) > 4
        %error "LONG_004182B8"
    %endif
    times 4 - ($ - %%insn_004182b8) db 0
    %%insn_004182bc:
    mov eax,[esi+ecx*4+0x8] ; 004182BC 8B448E08
    %if ($ - %%insn_004182bc) > 4
        %error "LONG_004182BC"
    %endif
    times 4 - ($ - %%insn_004182bc) db 0
    %%insn_004182c0:
    mov [edi+ecx*4+0x8],eax ; 004182C0 89448F08
    %if ($ - %%insn_004182c0) > 4
        %error "LONG_004182C0"
    %endif
    times 4 - ($ - %%insn_004182c0) db 0
    %%insn_004182c4:
    mov eax,[esi+ecx*4+0x4] ; 004182C4 8B448E04
    %if ($ - %%insn_004182c4) > 4
        %error "LONG_004182C4"
    %endif
    times 4 - ($ - %%insn_004182c4) db 0
    %%insn_004182c8:
    mov [edi+ecx*4+0x4],eax ; 004182C8 89448F04
    %if ($ - %%insn_004182c8) > 4
        %error "LONG_004182C8"
    %endif
    times 4 - ($ - %%insn_004182c8) db 0
    %%insn_004182cc:
    lea eax,[ecx*4+0x0] ; 004182CC 8D048D00000000
    %if ($ - %%insn_004182cc) > 7
        %error "LONG_004182CC"
    %endif
    times 7 - ($ - %%insn_004182cc) db 0
    db 0x03, 0xF0 ; 004182D3 03F0 | add esi,eax | encoding preserved
    db 0x03, 0xF8 ; 004182D5 03F8 | add edi,eax | encoding preserved
    %%insn_004182d7:
    jmp dword near [edx*4+0x4182e0] ; 004182D7 FF2495E0824100
    %if ($ - %%insn_004182d7) > 7
        %error "LONG_004182D7"
    %endif
    times 7 - ($ - %%insn_004182d7) db 0
    %if ($ - %%fragment_start) != 74
        %error "function fragment size drift: 00418294"
    %endif
%endmacro

%macro emit_func_00418000_part_17 0
    %%fragment_start:
    %%insn_004182f0:
    mov eax,[ebp+0x8] ; 004182F0 8B4508
    %if ($ - %%insn_004182f0) > 3
        %error "LONG_004182F0"
    %endif
    times 3 - ($ - %%insn_004182f0) db 0
    %%insn_004182f3:
    pop esi ; 004182F3 5E
    %if ($ - %%insn_004182f3) > 1
        %error "LONG_004182F3"
    %endif
    times 1 - ($ - %%insn_004182f3) db 0
    %%insn_004182f4:
    pop edi ; 004182F4 5F
    %if ($ - %%insn_004182f4) > 1
        %error "LONG_004182F4"
    %endif
    times 1 - ($ - %%insn_004182f4) db 0
    %%insn_004182f5:
    leave ; 004182F5 C9
    %if ($ - %%insn_004182f5) > 1
        %error "LONG_004182F5"
    %endif
    times 1 - ($ - %%insn_004182f5) db 0
    %%insn_004182f6:
    ret ; 004182F6 C3
    %if ($ - %%insn_004182f6) > 1
        %error "LONG_004182F6"
    %endif
    times 1 - ($ - %%insn_004182f6) db 0
    %if ($ - %%fragment_start) != 7
        %error "function fragment size drift: 004182F0"
    %endif
%endmacro

%macro emit_func_00418000_part_18 0
    %%fragment_start:
    %%insn_004182f8:
    mov al,[esi+0x3] ; 004182F8 8A4603
    %if ($ - %%insn_004182f8) > 3
        %error "LONG_004182F8"
    %endif
    times 3 - ($ - %%insn_004182f8) db 0
    %%insn_004182fb:
    mov [edi+0x3],al ; 004182FB 884703
    %if ($ - %%insn_004182fb) > 3
        %error "LONG_004182FB"
    %endif
    times 3 - ($ - %%insn_004182fb) db 0
    %%insn_004182fe:
    mov eax,[ebp+0x8] ; 004182FE 8B4508
    %if ($ - %%insn_004182fe) > 3
        %error "LONG_004182FE"
    %endif
    times 3 - ($ - %%insn_004182fe) db 0
    %%insn_00418301:
    pop esi ; 00418301 5E
    %if ($ - %%insn_00418301) > 1
        %error "LONG_00418301"
    %endif
    times 1 - ($ - %%insn_00418301) db 0
    %%insn_00418302:
    pop edi ; 00418302 5F
    %if ($ - %%insn_00418302) > 1
        %error "LONG_00418302"
    %endif
    times 1 - ($ - %%insn_00418302) db 0
    %%insn_00418303:
    leave ; 00418303 C9
    %if ($ - %%insn_00418303) > 1
        %error "LONG_00418303"
    %endif
    times 1 - ($ - %%insn_00418303) db 0
    %%insn_00418304:
    ret ; 00418304 C3
    %if ($ - %%insn_00418304) > 1
        %error "LONG_00418304"
    %endif
    times 1 - ($ - %%insn_00418304) db 0
    %if ($ - %%fragment_start) != 13
        %error "function fragment size drift: 004182F8"
    %endif
%endmacro

%macro emit_func_00418000_part_19 0
    %%fragment_start:
    %%insn_00418308:
    mov al,[esi+0x3] ; 00418308 8A4603
    %if ($ - %%insn_00418308) > 3
        %error "LONG_00418308"
    %endif
    times 3 - ($ - %%insn_00418308) db 0
    %%insn_0041830b:
    mov [edi+0x3],al ; 0041830B 884703
    %if ($ - %%insn_0041830b) > 3
        %error "LONG_0041830B"
    %endif
    times 3 - ($ - %%insn_0041830b) db 0
    %%insn_0041830e:
    mov al,[esi+0x2] ; 0041830E 8A4602
    %if ($ - %%insn_0041830e) > 3
        %error "LONG_0041830E"
    %endif
    times 3 - ($ - %%insn_0041830e) db 0
    %%insn_00418311:
    mov [edi+0x2],al ; 00418311 884702
    %if ($ - %%insn_00418311) > 3
        %error "LONG_00418311"
    %endif
    times 3 - ($ - %%insn_00418311) db 0
    %%insn_00418314:
    mov eax,[ebp+0x8] ; 00418314 8B4508
    %if ($ - %%insn_00418314) > 3
        %error "LONG_00418314"
    %endif
    times 3 - ($ - %%insn_00418314) db 0
    %%insn_00418317:
    pop esi ; 00418317 5E
    %if ($ - %%insn_00418317) > 1
        %error "LONG_00418317"
    %endif
    times 1 - ($ - %%insn_00418317) db 0
    %%insn_00418318:
    pop edi ; 00418318 5F
    %if ($ - %%insn_00418318) > 1
        %error "LONG_00418318"
    %endif
    times 1 - ($ - %%insn_00418318) db 0
    %%insn_00418319:
    leave ; 00418319 C9
    %if ($ - %%insn_00418319) > 1
        %error "LONG_00418319"
    %endif
    times 1 - ($ - %%insn_00418319) db 0
    %%insn_0041831a:
    ret ; 0041831A C3
    %if ($ - %%insn_0041831a) > 1
        %error "LONG_0041831A"
    %endif
    times 1 - ($ - %%insn_0041831a) db 0
    %if ($ - %%fragment_start) != 19
        %error "function fragment size drift: 00418308"
    %endif
%endmacro

%macro emit_func_00418000_part_20 0
    %%fragment_start:
    %%insn_0041831c:
    mov al,[esi+0x3] ; 0041831C 8A4603
    %if ($ - %%insn_0041831c) > 3
        %error "LONG_0041831C"
    %endif
    times 3 - ($ - %%insn_0041831c) db 0
    %%insn_0041831f:
    mov [edi+0x3],al ; 0041831F 884703
    %if ($ - %%insn_0041831f) > 3
        %error "LONG_0041831F"
    %endif
    times 3 - ($ - %%insn_0041831f) db 0
    %%insn_00418322:
    mov al,[esi+0x2] ; 00418322 8A4602
    %if ($ - %%insn_00418322) > 3
        %error "LONG_00418322"
    %endif
    times 3 - ($ - %%insn_00418322) db 0
    %%insn_00418325:
    mov [edi+0x2],al ; 00418325 884702
    %if ($ - %%insn_00418325) > 3
        %error "LONG_00418325"
    %endif
    times 3 - ($ - %%insn_00418325) db 0
    %%insn_00418328:
    mov al,[esi+0x1] ; 00418328 8A4601
    %if ($ - %%insn_00418328) > 3
        %error "LONG_00418328"
    %endif
    times 3 - ($ - %%insn_00418328) db 0
    %%insn_0041832b:
    mov [edi+0x1],al ; 0041832B 884701
    %if ($ - %%insn_0041832b) > 3
        %error "LONG_0041832B"
    %endif
    times 3 - ($ - %%insn_0041832b) db 0
    %%insn_0041832e:
    mov eax,[ebp+0x8] ; 0041832E 8B4508
    %if ($ - %%insn_0041832e) > 3
        %error "LONG_0041832E"
    %endif
    times 3 - ($ - %%insn_0041832e) db 0
    %%insn_00418331:
    pop esi ; 00418331 5E
    %if ($ - %%insn_00418331) > 1
        %error "LONG_00418331"
    %endif
    times 1 - ($ - %%insn_00418331) db 0
    %%insn_00418332:
    pop edi ; 00418332 5F
    %if ($ - %%insn_00418332) > 1
        %error "LONG_00418332"
    %endif
    times 1 - ($ - %%insn_00418332) db 0
    %%insn_00418333:
    leave ; 00418333 C9
    %if ($ - %%insn_00418333) > 1
        %error "LONG_00418333"
    %endif
    times 1 - ($ - %%insn_00418333) db 0
    %%insn_00418334:
    ret ; 00418334 C3
    %if ($ - %%insn_00418334) > 1
        %error "LONG_00418334"
    %endif
    times 1 - ($ - %%insn_00418334) db 0
    %if ($ - %%fragment_start) != 25
        %error "function fragment size drift: 0041831C"
    %endif
%endmacro
