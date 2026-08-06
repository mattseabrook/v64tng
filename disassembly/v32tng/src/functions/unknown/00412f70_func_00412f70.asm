; PE virtual entry 00412F70
; Ghidra working symbol: FUN_00412f70
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00412f70_part_00 0
    %%fragment_start:
func_00412f70:
    %%insn_00412f70:
    sub esp,0x14 ; 00412F70 83EC14
    %if ($ - %%insn_00412f70) > 3
        %error "LONG_00412F70"
    %endif
    times 3 - ($ - %%insn_00412f70) db 0
    %%insn_00412f73:
    mov ecx,[esp+0x1c] ; 00412F73 8B4C241C
    %if ($ - %%insn_00412f73) > 4
        %error "LONG_00412F73"
    %endif
    times 4 - ($ - %%insn_00412f73) db 0
    %%insn_00412f77:
    push ebx ; 00412F77 53
    %if ($ - %%insn_00412f77) > 1
        %error "LONG_00412F77"
    %endif
    times 1 - ($ - %%insn_00412f77) db 0
    %%insn_00412f78:
    push ebp ; 00412F78 55
    %if ($ - %%insn_00412f78) > 1
        %error "LONG_00412F78"
    %endif
    times 1 - ($ - %%insn_00412f78) db 0
    %%insn_00412f79:
    push esi ; 00412F79 56
    %if ($ - %%insn_00412f79) > 1
        %error "LONG_00412F79"
    %endif
    times 1 - ($ - %%insn_00412f79) db 0
    %%insn_00412f7a:
    mov dl,0x80 ; 00412F7A B280
    %if ($ - %%insn_00412f7a) > 2
        %error "LONG_00412F7A"
    %endif
    times 2 - ($ - %%insn_00412f7a) db 0
    db 0x33, 0xF6 ; 00412F7C 33F6 | xor esi,esi | encoding preserved
    %%insn_00412f7e:
    test dl,cl ; 00412F7E 84CA
    %if ($ - %%insn_00412f7e) > 2
        %error "LONG_00412F7E"
    %endif
    times 2 - ($ - %%insn_00412f7e) db 0
    %%insn_00412f80:
    push edi ; 00412F80 57
    %if ($ - %%insn_00412f80) > 1
        %error "LONG_00412F80"
    %endif
    times 1 - ($ - %%insn_00412f80) db 0
    %%insn_00412f81:
    mov dword [esp+0x18],0xc ; 00412F81 C74424180C000000
    %if ($ - %%insn_00412f81) > 8
        %error "LONG_00412F81"
    %endif
    times 8 - ($ - %%insn_00412f81) db 0
    %%insn_00412f89:
    mov [esp+0x1c],esi ; 00412F89 8974241C
    %if ($ - %%insn_00412f89) > 4
        %error "LONG_00412F89"
    %endif
    times 4 - ($ - %%insn_00412f89) db 0
    %%insn_00412f8d:
    jz short 0x412f9a ; 00412F8D 740B
    %if ($ - %%insn_00412f8d) > 2
        %error "LONG_00412F8D"
    %endif
    times 2 - ($ - %%insn_00412f8d) db 0
    %%insn_00412f8f:
    mov [esp+0x20],esi ; 00412F8F 89742420
    %if ($ - %%insn_00412f8f) > 4
        %error "LONG_00412F8F"
    %endif
    times 4 - ($ - %%insn_00412f8f) db 0
    %%insn_00412f93:
    mov byte [esp+0x13],0x10 ; 00412F93 C644241310
    %if ($ - %%insn_00412f93) > 5
        %error "LONG_00412F93"
    %endif
    times 5 - ($ - %%insn_00412f93) db 0
    %%insn_00412f98:
    jmp short 0x412fa7 ; 00412F98 EB0D
    %if ($ - %%insn_00412f98) > 2
        %error "LONG_00412F98"
    %endif
    times 2 - ($ - %%insn_00412f98) db 0
    %%insn_00412f9a:
    mov dword [esp+0x20],0x1 ; 00412F9A C744242001000000
    %if ($ - %%insn_00412f9a) > 8
        %error "LONG_00412F9A"
    %endif
    times 8 - ($ - %%insn_00412f9a) db 0
    %%insn_00412fa2:
    mov byte [esp+0x13],0x0 ; 00412FA2 C644241300
    %if ($ - %%insn_00412fa2) > 5
        %error "LONG_00412FA2"
    %endif
    times 5 - ($ - %%insn_00412fa2) db 0
    %%insn_00412fa7:
    test ch,0x80 ; 00412FA7 F6C580
    %if ($ - %%insn_00412fa7) > 3
        %error "LONG_00412FA7"
    %endif
    times 3 - ($ - %%insn_00412fa7) db 0
    %%insn_00412faa:
    jnz short 0x412fc1 ; 00412FAA 7515
    %if ($ - %%insn_00412faa) > 2
        %error "LONG_00412FAA"
    %endif
    times 2 - ($ - %%insn_00412faa) db 0
    %%insn_00412fac:
    test ch,0x40 ; 00412FAC F6C540
    %if ($ - %%insn_00412fac) > 3
        %error "LONG_00412FAC"
    %endif
    times 3 - ($ - %%insn_00412fac) db 0
    %%insn_00412faf:
    jnz short 0x412fbd ; 00412FAF 750C
    %if ($ - %%insn_00412faf) > 2
        %error "LONG_00412FAF"
    %endif
    times 2 - ($ - %%insn_00412faf) db 0
    %%insn_00412fb1:
    cmp dword [0x4211d0],0x8000 ; 00412FB1 813DD011420000800000
    %if ($ - %%insn_00412fb1) > 10
        %error "LONG_00412FB1"
    %endif
    times 10 - ($ - %%insn_00412fb1) db 0
    %%insn_00412fbb:
    jz short 0x412fc1 ; 00412FBB 7404
    %if ($ - %%insn_00412fbb) > 2
        %error "LONG_00412FBB"
    %endif
    times 2 - ($ - %%insn_00412fbb) db 0
    %%insn_00412fbd:
    or [esp+0x13],dl ; 00412FBD 08542413
    %if ($ - %%insn_00412fbd) > 4
        %error "LONG_00412FBD"
    %endif
    times 4 - ($ - %%insn_00412fbd) db 0
    db 0x8B, 0xC1 ; 00412FC1 8BC1 | mov eax,ecx | encoding preserved
    %%insn_00412fc3:
    and eax,0x3 ; 00412FC3 83E003
    %if ($ - %%insn_00412fc3) > 3
        %error "LONG_00412FC3"
    %endif
    times 3 - ($ - %%insn_00412fc3) db 0
    db 0x2B, 0xC6 ; 00412FC6 2BC6 | sub eax,esi | encoding preserved
    %%insn_00412fc8:
    jz short 0x412fe8 ; 00412FC8 741E
    %if ($ - %%insn_00412fc8) > 2
        %error "LONG_00412FC8"
    %endif
    times 2 - ($ - %%insn_00412fc8) db 0
    %%insn_00412fca:
    dec eax ; 00412FCA 48
    %if ($ - %%insn_00412fca) > 1
        %error "LONG_00412FCA"
    %endif
    times 1 - ($ - %%insn_00412fca) db 0
    %%insn_00412fcb:
    jz short 0x412fde ; 00412FCB 7411
    %if ($ - %%insn_00412fcb) > 2
        %error "LONG_00412FCB"
    %endif
    times 2 - ($ - %%insn_00412fcb) db 0
    %%insn_00412fcd:
    dec eax ; 00412FCD 48
    %if ($ - %%insn_00412fcd) > 1
        %error "LONG_00412FCD"
    %endif
    times 1 - ($ - %%insn_00412fcd) db 0
    %%insn_00412fce:
    jnz 0x4132a4 ; 00412FCE 0F85D0020000
    %if ($ - %%insn_00412fce) > 6
        %error "LONG_00412FCE"
    %endif
    times 6 - ($ - %%insn_00412fce) db 0
    %%insn_00412fd4:
    mov dword [esp+0x14],0xc0000000 ; 00412FD4 C7442414000000C0
    %if ($ - %%insn_00412fd4) > 8
        %error "LONG_00412FD4"
    %endif
    times 8 - ($ - %%insn_00412fd4) db 0
    %%insn_00412fdc:
    jmp short 0x412ff0 ; 00412FDC EB12
    %if ($ - %%insn_00412fdc) > 2
        %error "LONG_00412FDC"
    %endif
    times 2 - ($ - %%insn_00412fdc) db 0
    %%insn_00412fde:
    mov dword [esp+0x14],0x40000000 ; 00412FDE C744241400000040
    %if ($ - %%insn_00412fde) > 8
        %error "LONG_00412FDE"
    %endif
    times 8 - ($ - %%insn_00412fde) db 0
    %%insn_00412fe6:
    jmp short 0x412ff0 ; 00412FE6 EB08
    %if ($ - %%insn_00412fe6) > 2
        %error "LONG_00412FE6"
    %endif
    times 2 - ($ - %%insn_00412fe6) db 0
    %%insn_00412fe8:
    mov dword [esp+0x14],0x80000000 ; 00412FE8 C744241400000080
    %if ($ - %%insn_00412fe8) > 8
        %error "LONG_00412FE8"
    %endif
    times 8 - ($ - %%insn_00412fe8) db 0
    %%insn_00412ff0:
    mov eax,[esp+0x30] ; 00412FF0 8B442430
    %if ($ - %%insn_00412ff0) > 4
        %error "LONG_00412FF0"
    %endif
    times 4 - ($ - %%insn_00412ff0) db 0
    %%insn_00412ff4:
    add eax,0xfffffffffffffff0 ; 00412FF4 83C0F0
    %if ($ - %%insn_00412ff4) > 3
        %error "LONG_00412FF4"
    %endif
    times 3 - ($ - %%insn_00412ff4) db 0
    %%insn_00412ff7:
    cmp eax,0x30 ; 00412FF7 83F830
    %if ($ - %%insn_00412ff7) > 3
        %error "LONG_00412FF7"
    %endif
    times 3 - ($ - %%insn_00412ff7) db 0
    %%insn_00412ffa:
    ja 0x4132a4 ; 00412FFA 0F87A4020000
    %if ($ - %%insn_00412ffa) > 6
        %error "LONG_00412FFA"
    %endif
    times 6 - ($ - %%insn_00412ffa) db 0
    db 0x33, 0xDB ; 00413000 33DB | xor ebx,ebx | encoding preserved
    %%insn_00413002:
    mov bl,[eax+0x4132d8] ; 00413002 8A98D8324100
    %if ($ - %%insn_00413002) > 6
        %error "LONG_00413002"
    %endif
    times 6 - ($ - %%insn_00413002) db 0
    %%insn_00413008:
    jmp dword near [ebx*4+0x4132c4] ; 00413008 FF249DC4324100
    %if ($ - %%insn_00413008) > 7
        %error "LONG_00413008"
    %endif
    times 7 - ($ - %%insn_00413008) db 0
    db 0x33, 0xDB ; 0041300F 33DB | xor ebx,ebx | encoding preserved
    %%insn_00413011:
    jmp short 0x413026 ; 00413011 EB13
    %if ($ - %%insn_00413011) > 2
        %error "LONG_00413011"
    %endif
    times 2 - ($ - %%insn_00413011) db 0
    %%insn_00413013:
    mov ebx,0x1 ; 00413013 BB01000000
    %if ($ - %%insn_00413013) > 5
        %error "LONG_00413013"
    %endif
    times 5 - ($ - %%insn_00413013) db 0
    %%insn_00413018:
    jmp short 0x413026 ; 00413018 EB0C
    %if ($ - %%insn_00413018) > 2
        %error "LONG_00413018"
    %endif
    times 2 - ($ - %%insn_00413018) db 0
    %%insn_0041301a:
    mov ebx,0x2 ; 0041301A BB02000000
    %if ($ - %%insn_0041301a) > 5
        %error "LONG_0041301A"
    %endif
    times 5 - ($ - %%insn_0041301a) db 0
    %%insn_0041301f:
    jmp short 0x413026 ; 0041301F EB05
    %if ($ - %%insn_0041301f) > 2
        %error "LONG_0041301F"
    %endif
    times 2 - ($ - %%insn_0041301f) db 0
    %%insn_00413021:
    mov ebx,0x3 ; 00413021 BB03000000
    %if ($ - %%insn_00413021) > 5
        %error "LONG_00413021"
    %endif
    times 5 - ($ - %%insn_00413021) db 0
    db 0x8B, 0xC1 ; 00413026 8BC1 | mov eax,ecx | encoding preserved
    %%insn_00413028:
    and eax,0x700 ; 00413028 2500070000
    %if ($ - %%insn_00413028) > 5
        %error "LONG_00413028"
    %endif
    times 5 - ($ - %%insn_00413028) db 0
    %%insn_0041302d:
    cmp eax,0x100 ; 0041302D 3D00010000
    %if ($ - %%insn_0041302d) > 5
        %error "LONG_0041302D"
    %endif
    times 5 - ($ - %%insn_0041302d) db 0
    %%insn_00413032:
    jg short 0x413046 ; 00413032 7F12
    %if ($ - %%insn_00413032) > 2
        %error "LONG_00413032"
    %endif
    times 2 - ($ - %%insn_00413032) db 0
    %%insn_00413034:
    jz short 0x41303f ; 00413034 7409
    %if ($ - %%insn_00413034) > 2
        %error "LONG_00413034"
    %endif
    times 2 - ($ - %%insn_00413034) db 0
    db 0x3B, 0xC6 ; 00413036 3BC6 | cmp eax,esi | encoding preserved
    %%insn_00413038:
    jz short 0x413076 ; 00413038 743C
    %if ($ - %%insn_00413038) > 2
        %error "LONG_00413038"
    %endif
    times 2 - ($ - %%insn_00413038) db 0
    %%insn_0041303a:
    jmp 0x4132a4 ; 0041303A E965020000
    %if ($ - %%insn_0041303a) > 5
        %error "LONG_0041303A"
    %endif
    times 5 - ($ - %%insn_0041303a) db 0
    %%insn_0041303f:
    mov ebp,0x4 ; 0041303F BD04000000
    %if ($ - %%insn_0041303f) > 5
        %error "LONG_0041303F"
    %endif
    times 5 - ($ - %%insn_0041303f) db 0
    %%insn_00413044:
    jmp short 0x41309b ; 00413044 EB55
    %if ($ - %%insn_00413044) > 2
        %error "LONG_00413044"
    %endif
    times 2 - ($ - %%insn_00413044) db 0
    %%insn_00413046:
    cmp eax,0x300 ; 00413046 3D00030000
    %if ($ - %%insn_00413046) > 5
        %error "LONG_00413046"
    %endif
    times 5 - ($ - %%insn_00413046) db 0
    %%insn_0041304b:
    jg short 0x413062 ; 0041304B 7F15
    %if ($ - %%insn_0041304b) > 2
        %error "LONG_0041304B"
    %endif
    times 2 - ($ - %%insn_0041304b) db 0
    %%insn_0041304d:
    jz short 0x41305b ; 0041304D 740C
    %if ($ - %%insn_0041304d) > 2
        %error "LONG_0041304D"
    %endif
    times 2 - ($ - %%insn_0041304d) db 0
    %%insn_0041304f:
    cmp eax,0x200 ; 0041304F 3D00020000
    %if ($ - %%insn_0041304f) > 5
        %error "LONG_0041304F"
    %endif
    times 5 - ($ - %%insn_0041304f) db 0
    %%insn_00413054:
    jz short 0x413096 ; 00413054 7440
    %if ($ - %%insn_00413054) > 2
        %error "LONG_00413054"
    %endif
    times 2 - ($ - %%insn_00413054) db 0
    %%insn_00413056:
    jmp 0x4132a4 ; 00413056 E949020000
    %if ($ - %%insn_00413056) > 5
        %error "LONG_00413056"
    %endif
    times 5 - ($ - %%insn_00413056) db 0
    %%insn_0041305b:
    mov ebp,0x2 ; 0041305B BD02000000
    %if ($ - %%insn_0041305b) > 5
        %error "LONG_0041305B"
    %endif
    times 5 - ($ - %%insn_0041305b) db 0
    %%insn_00413060:
    jmp short 0x41309b ; 00413060 EB39
    %if ($ - %%insn_00413060) > 2
        %error "LONG_00413060"
    %endif
    times 2 - ($ - %%insn_00413060) db 0
    %%insn_00413062:
    cmp eax,0x500 ; 00413062 3D00050000
    %if ($ - %%insn_00413062) > 5
        %error "LONG_00413062"
    %endif
    times 5 - ($ - %%insn_00413062) db 0
    %%insn_00413067:
    jg short 0x41307d ; 00413067 7F14
    %if ($ - %%insn_00413067) > 2
        %error "LONG_00413067"
    %endif
    times 2 - ($ - %%insn_00413067) db 0
    %%insn_00413069:
    jz short 0x41308f ; 00413069 7424
    %if ($ - %%insn_00413069) > 2
        %error "LONG_00413069"
    %endif
    times 2 - ($ - %%insn_00413069) db 0
    %%insn_0041306b:
    cmp eax,0x400 ; 0041306B 3D00040000
    %if ($ - %%insn_0041306b) > 5
        %error "LONG_0041306B"
    %endif
    times 5 - ($ - %%insn_0041306b) db 0
    %%insn_00413070:
    jnz 0x4132a4 ; 00413070 0F852E020000
    %if ($ - %%insn_00413070) > 6
        %error "LONG_00413070"
    %endif
    times 6 - ($ - %%insn_00413070) db 0
    %%insn_00413076:
    mov ebp,0x3 ; 00413076 BD03000000
    %if ($ - %%insn_00413076) > 5
        %error "LONG_00413076"
    %endif
    times 5 - ($ - %%insn_00413076) db 0
    %%insn_0041307b:
    jmp short 0x41309b ; 0041307B EB1E
    %if ($ - %%insn_0041307b) > 2
        %error "LONG_0041307B"
    %endif
    times 2 - ($ - %%insn_0041307b) db 0
    %%insn_0041307d:
    cmp eax,0x600 ; 0041307D 3D00060000
    %if ($ - %%insn_0041307d) > 5
        %error "LONG_0041307D"
    %endif
    times 5 - ($ - %%insn_0041307d) db 0
    %%insn_00413082:
    jz short 0x413096 ; 00413082 7412
    %if ($ - %%insn_00413082) > 2
        %error "LONG_00413082"
    %endif
    times 2 - ($ - %%insn_00413082) db 0
    %%insn_00413084:
    cmp eax,0x700 ; 00413084 3D00070000
    %if ($ - %%insn_00413084) > 5
        %error "LONG_00413084"
    %endif
    times 5 - ($ - %%insn_00413084) db 0
    %%insn_00413089:
    jnz 0x4132a4 ; 00413089 0F8515020000
    %if ($ - %%insn_00413089) > 6
        %error "LONG_00413089"
    %endif
    times 6 - ($ - %%insn_00413089) db 0
    %%insn_0041308f:
    mov ebp,0x1 ; 0041308F BD01000000
    %if ($ - %%insn_0041308f) > 5
        %error "LONG_0041308F"
    %endif
    times 5 - ($ - %%insn_0041308f) db 0
    %%insn_00413094:
    jmp short 0x41309b ; 00413094 EB05
    %if ($ - %%insn_00413094) > 2
        %error "LONG_00413094"
    %endif
    times 2 - ($ - %%insn_00413094) db 0
    %%insn_00413096:
    mov ebp,0x5 ; 00413096 BD05000000
    %if ($ - %%insn_00413096) > 5
        %error "LONG_00413096"
    %endif
    times 5 - ($ - %%insn_00413096) db 0
    %%insn_0041309b:
    test ch,0x1 ; 0041309B F6C501
    %if ($ - %%insn_0041309b) > 3
        %error "LONG_0041309B"
    %endif
    times 3 - ($ - %%insn_0041309b) db 0
    %%insn_0041309e:
    mov edi,0x80 ; 0041309E BF80000000
    %if ($ - %%insn_0041309e) > 5
        %error "LONG_0041309E"
    %endif
    times 5 - ($ - %%insn_0041309e) db 0
    %%insn_004130a3:
    jz short 0x4130bc ; 004130A3 7417
    %if ($ - %%insn_004130a3) > 2
        %error "LONG_004130A3"
    %endif
    times 2 - ($ - %%insn_004130a3) db 0
    %%insn_004130a5:
    mov esi,[0x420e54] ; 004130A5 8B35540E4200
    %if ($ - %%insn_004130a5) > 6
        %error "LONG_004130A5"
    %endif
    times 6 - ($ - %%insn_004130a5) db 0
    %%insn_004130ab:
    mov eax,[esp+0x34] ; 004130AB 8B442434
    %if ($ - %%insn_004130ab) > 4
        %error "LONG_004130AB"
    %endif
    times 4 - ($ - %%insn_004130ab) db 0
    %%insn_004130af:
    not esi ; 004130AF F7D6
    %if ($ - %%insn_004130af) > 2
        %error "LONG_004130AF"
    %endif
    times 2 - ($ - %%insn_004130af) db 0
    db 0x23, 0xC6 ; 004130B1 23C6 | and eax,esi | encoding preserved
    %%insn_004130b3:
    test dl,al ; 004130B3 84C2
    %if ($ - %%insn_004130b3) > 2
        %error "LONG_004130B3"
    %endif
    times 2 - ($ - %%insn_004130b3) db 0
    %%insn_004130b5:
    jnz short 0x4130bc ; 004130B5 7505
    %if ($ - %%insn_004130b5) > 2
        %error "LONG_004130B5"
    %endif
    times 2 - ($ - %%insn_004130b5) db 0
    %%insn_004130b7:
    mov edi,0x1 ; 004130B7 BF01000000
    %if ($ - %%insn_004130b7) > 5
        %error "LONG_004130B7"
    %endif
    times 5 - ($ - %%insn_004130b7) db 0
    %%insn_004130bc:
    test cl,0x40 ; 004130BC F6C140
    %if ($ - %%insn_004130bc) > 3
        %error "LONG_004130BC"
    %endif
    times 3 - ($ - %%insn_004130bc) db 0
    %%insn_004130bf:
    jz short 0x4130d4 ; 004130BF 7413
    %if ($ - %%insn_004130bf) > 2
        %error "LONG_004130BF"
    %endif
    times 2 - ($ - %%insn_004130bf) db 0
    %%insn_004130c1:
    mov eax,[esp+0x14] ; 004130C1 8B442414
    %if ($ - %%insn_004130c1) > 4
        %error "LONG_004130C1"
    %endif
    times 4 - ($ - %%insn_004130c1) db 0
    %%insn_004130c5:
    or edi,0x4000000 ; 004130C5 81CF00000004
    %if ($ - %%insn_004130c5) > 6
        %error "LONG_004130C5"
    %endif
    times 6 - ($ - %%insn_004130c5) db 0
    %%insn_004130cb:
    or eax,0x10000 ; 004130CB 0D00000100
    %if ($ - %%insn_004130cb) > 5
        %error "LONG_004130CB"
    %endif
    times 5 - ($ - %%insn_004130cb) db 0
    %%insn_004130d0:
    mov [esp+0x14],eax ; 004130D0 89442414
    %if ($ - %%insn_004130d0) > 4
        %error "LONG_004130D0"
    %endif
    times 4 - ($ - %%insn_004130d0) db 0
    %%insn_004130d4:
    test ch,0x10 ; 004130D4 F6C510
    %if ($ - %%insn_004130d4) > 3
        %error "LONG_004130D4"
    %endif
    times 3 - ($ - %%insn_004130d4) db 0
    %%insn_004130d7:
    jz short 0x4130df ; 004130D7 7406
    %if ($ - %%insn_004130d7) > 2
        %error "LONG_004130D7"
    %endif
    times 2 - ($ - %%insn_004130d7) db 0
    %%insn_004130d9:
    or edi,0x100 ; 004130D9 81CF00010000
    %if ($ - %%insn_004130d9) > 6
        %error "LONG_004130D9"
    %endif
    times 6 - ($ - %%insn_004130d9) db 0
    %%insn_004130df:
    test cl,0x20 ; 004130DF F6C120
    %if ($ - %%insn_004130df) > 3
        %error "LONG_004130DF"
    %endif
    times 3 - ($ - %%insn_004130df) db 0
    %%insn_004130e2:
    jz short 0x4130ec ; 004130E2 7408
    %if ($ - %%insn_004130e2) > 2
        %error "LONG_004130E2"
    %endif
    times 2 - ($ - %%insn_004130e2) db 0
    %%insn_004130e4:
    or edi,0x8000000 ; 004130E4 81CF00000008
    %if ($ - %%insn_004130e4) > 6
        %error "LONG_004130E4"
    %endif
    times 6 - ($ - %%insn_004130e4) db 0
    %%insn_004130ea:
    jmp short 0x4130f7 ; 004130EA EB0B
    %if ($ - %%insn_004130ea) > 2
        %error "LONG_004130EA"
    %endif
    times 2 - ($ - %%insn_004130ea) db 0
    %%insn_004130ec:
    test cl,0x10 ; 004130EC F6C110
    %if ($ - %%insn_004130ec) > 3
        %error "LONG_004130EC"
    %endif
    times 3 - ($ - %%insn_004130ec) db 0
    %%insn_004130ef:
    jz short 0x4130f7 ; 004130EF 7406
    %if ($ - %%insn_004130ef) > 2
        %error "LONG_004130EF"
    %endif
    times 2 - ($ - %%insn_004130ef) db 0
    %%insn_004130f1:
    or edi,0x10000000 ; 004130F1 81CF00000010
    %if ($ - %%insn_004130f1) > 6
        %error "LONG_004130F1"
    %endif
    times 6 - ($ - %%insn_004130f1) db 0
    %%insn_004130f7:
    call 0x410e30 ; 004130F7 E834DDFFFF
    %if ($ - %%insn_004130f7) > 5
        %error "LONG_004130F7"
    %endif
    times 5 - ($ - %%insn_004130f7) db 0
    db 0x8B, 0xF0 ; 004130FC 8BF0 | mov esi,eax | encoding preserved
    %%insn_004130fe:
    cmp esi,0xffffffffffffffff ; 004130FE 83FEFF
    %if ($ - %%insn_004130fe) > 3
        %error "LONG_004130FE"
    %endif
    times 3 - ($ - %%insn_004130fe) db 0
    %%insn_00413101:
    jnz short 0x413123 ; 00413101 7520
    %if ($ - %%insn_00413101) > 2
        %error "LONG_00413101"
    %endif
    times 2 - ($ - %%insn_00413101) db 0
    %%insn_00413103:
    call 0x410e10 ; 00413103 E808DDFFFF
    %if ($ - %%insn_00413103) > 5
        %error "LONG_00413103"
    %endif
    times 5 - ($ - %%insn_00413103) db 0
    %%insn_00413108:
    mov dword [eax],0x18 ; 00413108 C70018000000
    %if ($ - %%insn_00413108) > 6
        %error "LONG_00413108"
    %endif
    times 6 - ($ - %%insn_00413108) db 0
    %%insn_0041310e:
    call 0x410e20 ; 0041310E E80DDDFFFF
    %if ($ - %%insn_0041310e) > 5
        %error "LONG_0041310E"
    %endif
    times 5 - ($ - %%insn_0041310e) db 0
    %%insn_00413113:
    mov dword [eax],0x0 ; 00413113 C70000000000
    %if ($ - %%insn_00413113) > 6
        %error "LONG_00413113"
    %endif
    times 6 - ($ - %%insn_00413113) db 0
    db 0x0B, 0xC6 ; 00413119 0BC6 | or eax,esi | encoding preserved
    %%insn_0041311b:
    pop edi ; 0041311B 5F
    %if ($ - %%insn_0041311b) > 1
        %error "LONG_0041311B"
    %endif
    times 1 - ($ - %%insn_0041311b) db 0
    %%insn_0041311c:
    pop esi ; 0041311C 5E
    %if ($ - %%insn_0041311c) > 1
        %error "LONG_0041311C"
    %endif
    times 1 - ($ - %%insn_0041311c) db 0
    %%insn_0041311d:
    pop ebp ; 0041311D 5D
    %if ($ - %%insn_0041311d) > 1
        %error "LONG_0041311D"
    %endif
    times 1 - ($ - %%insn_0041311d) db 0
    %%insn_0041311e:
    pop ebx ; 0041311E 5B
    %if ($ - %%insn_0041311e) > 1
        %error "LONG_0041311E"
    %endif
    times 1 - ($ - %%insn_0041311e) db 0
    %%insn_0041311f:
    add esp,0x14 ; 0041311F 83C414
    %if ($ - %%insn_0041311f) > 3
        %error "LONG_0041311F"
    %endif
    times 3 - ($ - %%insn_0041311f) db 0
    %%insn_00413122:
    ret ; 00413122 C3
    %if ($ - %%insn_00413122) > 1
        %error "LONG_00413122"
    %endif
    times 1 - ($ - %%insn_00413122) db 0
    %%insn_00413123:
    mov edx,[esp+0x14] ; 00413123 8B542414
    %if ($ - %%insn_00413123) > 4
        %error "LONG_00413123"
    %endif
    times 4 - ($ - %%insn_00413123) db 0
    %%insn_00413127:
    mov eax,[esp+0x28] ; 00413127 8B442428
    %if ($ - %%insn_00413127) > 4
        %error "LONG_00413127"
    %endif
    times 4 - ($ - %%insn_00413127) db 0
    %%insn_0041312b:
    push dword 0x0 ; 0041312B 6A00
    %if ($ - %%insn_0041312b) > 2
        %error "LONG_0041312B"
    %endif
    times 2 - ($ - %%insn_0041312b) db 0
    %%insn_0041312d:
    push edi ; 0041312D 57
    %if ($ - %%insn_0041312d) > 1
        %error "LONG_0041312D"
    %endif
    times 1 - ($ - %%insn_0041312d) db 0
    %%insn_0041312e:
    lea ecx,[esp+0x20] ; 0041312E 8D4C2420
    %if ($ - %%insn_0041312e) > 4
        %error "LONG_0041312E"
    %endif
    times 4 - ($ - %%insn_0041312e) db 0
    %%insn_00413132:
    push ebp ; 00413132 55
    %if ($ - %%insn_00413132) > 1
        %error "LONG_00413132"
    %endif
    times 1 - ($ - %%insn_00413132) db 0
    %%insn_00413133:
    push ecx ; 00413133 51
    %if ($ - %%insn_00413133) > 1
        %error "LONG_00413133"
    %endif
    times 1 - ($ - %%insn_00413133) db 0
    %%insn_00413134:
    push ebx ; 00413134 53
    %if ($ - %%insn_00413134) > 1
        %error "LONG_00413134"
    %endif
    times 1 - ($ - %%insn_00413134) db 0
    %%insn_00413135:
    push edx ; 00413135 52
    %if ($ - %%insn_00413135) > 1
        %error "LONG_00413135"
    %endif
    times 1 - ($ - %%insn_00413135) db 0
    %%insn_00413136:
    push eax ; 00413136 50
    %if ($ - %%insn_00413136) > 1
        %error "LONG_00413136"
    %endif
    times 1 - ($ - %%insn_00413136) db 0
    %%insn_00413137:
    call dword near [0x4243dc] ; 00413137 FF15DC434200
    %if ($ - %%insn_00413137) > 6
        %error "LONG_00413137"
    %endif
    times 6 - ($ - %%insn_00413137) db 0
    db 0x8B, 0xF8 ; 0041313D 8BF8 | mov edi,eax | encoding preserved
    %%insn_0041313f:
    cmp edi,0xffffffffffffffff ; 0041313F 83FFFF
    %if ($ - %%insn_0041313f) > 3
        %error "LONG_0041313F"
    %endif
    times 3 - ($ - %%insn_0041313f) db 0
    %%insn_00413142:
    jz short 0x413156 ; 00413142 7412
    %if ($ - %%insn_00413142) > 2
        %error "LONG_00413142"
    %endif
    times 2 - ($ - %%insn_00413142) db 0
    %%insn_00413144:
    push edi ; 00413144 57
    %if ($ - %%insn_00413144) > 1
        %error "LONG_00413144"
    %endif
    times 1 - ($ - %%insn_00413144) db 0
    %%insn_00413145:
    call dword near [0x42444c] ; 00413145 FF154C444200
    %if ($ - %%insn_00413145) > 6
        %error "LONG_00413145"
    %endif
    times 6 - ($ - %%insn_00413145) db 0
    %%insn_0041314b:
    test eax,eax ; 0041314B 85C0
    %if ($ - %%insn_0041314b) > 2
        %error "LONG_0041314B"
    %endif
    times 2 - ($ - %%insn_0041314b) db 0
    %%insn_0041314d:
    jnz short 0x413179 ; 0041314D 752A
    %if ($ - %%insn_0041314d) > 2
        %error "LONG_0041314D"
    %endif
    times 2 - ($ - %%insn_0041314d) db 0
    %%insn_0041314f:
    push edi ; 0041314F 57
    %if ($ - %%insn_0041314f) > 1
        %error "LONG_0041314F"
    %endif
    times 1 - ($ - %%insn_0041314f) db 0
    %%insn_00413150:
    call dword near [0x4243c8] ; 00413150 FF15C8434200
    %if ($ - %%insn_00413150) > 6
        %error "LONG_00413150"
    %endif
    times 6 - ($ - %%insn_00413150) db 0
    %%insn_00413156:
    call dword near [0x4243c4] ; 00413156 FF15C4434200
    %if ($ - %%insn_00413156) > 6
        %error "LONG_00413156"
    %endif
    times 6 - ($ - %%insn_00413156) db 0
    %%insn_0041315c:
    push eax ; 0041315C 50
    %if ($ - %%insn_0041315c) > 1
        %error "LONG_0041315C"
    %endif
    times 1 - ($ - %%insn_0041315c) db 0
    %%insn_0041315d:
    call 0x410d90 ; 0041315D E82EDCFFFF
    %if ($ - %%insn_0041315d) > 5
        %error "LONG_0041315D"
    %endif
    times 5 - ($ - %%insn_0041315d) db 0
    %%insn_00413162:
    add esp,0x4 ; 00413162 83C404
    %if ($ - %%insn_00413162) > 3
        %error "LONG_00413162"
    %endif
    times 3 - ($ - %%insn_00413162) db 0
    %%insn_00413165:
    push esi ; 00413165 56
    %if ($ - %%insn_00413165) > 1
        %error "LONG_00413165"
    %endif
    times 1 - ($ - %%insn_00413165) db 0
    %%insn_00413166:
    call 0x411260 ; 00413166 E8F5E0FFFF
    %if ($ - %%insn_00413166) > 5
        %error "LONG_00413166"
    %endif
    times 5 - ($ - %%insn_00413166) db 0
    %%insn_0041316b:
    add esp,0x4 ; 0041316B 83C404
    %if ($ - %%insn_0041316b) > 3
        %error "LONG_0041316B"
    %endif
    times 3 - ($ - %%insn_0041316b) db 0
    %%insn_0041316e:
    or eax,0xffffffffffffffff ; 0041316E 83C8FF
    %if ($ - %%insn_0041316e) > 3
        %error "LONG_0041316E"
    %endif
    times 3 - ($ - %%insn_0041316e) db 0
    %%insn_00413171:
    pop edi ; 00413171 5F
    %if ($ - %%insn_00413171) > 1
        %error "LONG_00413171"
    %endif
    times 1 - ($ - %%insn_00413171) db 0
    %%insn_00413172:
    pop esi ; 00413172 5E
    %if ($ - %%insn_00413172) > 1
        %error "LONG_00413172"
    %endif
    times 1 - ($ - %%insn_00413172) db 0
    %%insn_00413173:
    pop ebp ; 00413173 5D
    %if ($ - %%insn_00413173) > 1
        %error "LONG_00413173"
    %endif
    times 1 - ($ - %%insn_00413173) db 0
    %%insn_00413174:
    pop ebx ; 00413174 5B
    %if ($ - %%insn_00413174) > 1
        %error "LONG_00413174"
    %endif
    times 1 - ($ - %%insn_00413174) db 0
    %%insn_00413175:
    add esp,0x14 ; 00413175 83C414
    %if ($ - %%insn_00413175) > 3
        %error "LONG_00413175"
    %endif
    times 3 - ($ - %%insn_00413175) db 0
    %%insn_00413178:
    ret ; 00413178 C3
    %if ($ - %%insn_00413178) > 1
        %error "LONG_00413178"
    %endif
    times 1 - ($ - %%insn_00413178) db 0
    %%insn_00413179:
    cmp eax,0x2 ; 00413179 83F802
    %if ($ - %%insn_00413179) > 3
        %error "LONG_00413179"
    %endif
    times 3 - ($ - %%insn_00413179) db 0
    %%insn_0041317c:
    jnz short 0x413186 ; 0041317C 7508
    %if ($ - %%insn_0041317c) > 2
        %error "LONG_0041317C"
    %endif
    times 2 - ($ - %%insn_0041317c) db 0
    %%insn_0041317e:
    mov al,[esp+0x13] ; 0041317E 8A442413
    %if ($ - %%insn_0041317e) > 4
        %error "LONG_0041317E"
    %endif
    times 4 - ($ - %%insn_0041317e) db 0
    %%insn_00413182:
    or al,0x40 ; 00413182 0C40
    %if ($ - %%insn_00413182) > 2
        %error "LONG_00413182"
    %endif
    times 2 - ($ - %%insn_00413182) db 0
    %%insn_00413184:
    jmp short 0x413191 ; 00413184 EB0B
    %if ($ - %%insn_00413184) > 2
        %error "LONG_00413184"
    %endif
    times 2 - ($ - %%insn_00413184) db 0
    %%insn_00413186:
    cmp eax,0x3 ; 00413186 83F803
    %if ($ - %%insn_00413186) > 3
        %error "LONG_00413186"
    %endif
    times 3 - ($ - %%insn_00413186) db 0
    %%insn_00413189:
    jnz short 0x413195 ; 00413189 750A
    %if ($ - %%insn_00413189) > 2
        %error "LONG_00413189"
    %endif
    times 2 - ($ - %%insn_00413189) db 0
    %%insn_0041318b:
    mov al,[esp+0x13] ; 0041318B 8A442413
    %if ($ - %%insn_0041318b) > 4
        %error "LONG_0041318B"
    %endif
    times 4 - ($ - %%insn_0041318b) db 0
    %%insn_0041318f:
    or al,0x8 ; 0041318F 0C08
    %if ($ - %%insn_0041318f) > 2
        %error "LONG_0041318F"
    %endif
    times 2 - ($ - %%insn_0041318f) db 0
    %%insn_00413191:
    mov [esp+0x13],al ; 00413191 88442413
    %if ($ - %%insn_00413191) > 4
        %error "LONG_00413191"
    %endif
    times 4 - ($ - %%insn_00413191) db 0
    %%insn_00413195:
    push edi ; 00413195 57
    %if ($ - %%insn_00413195) > 1
        %error "LONG_00413195"
    %endif
    times 1 - ($ - %%insn_00413195) db 0
    %%insn_00413196:
    push esi ; 00413196 56
    %if ($ - %%insn_00413196) > 1
        %error "LONG_00413196"
    %endif
    times 1 - ($ - %%insn_00413196) db 0
    %%insn_00413197:
    call 0x410fa0 ; 00413197 E804DEFFFF
    %if ($ - %%insn_00413197) > 5
        %error "LONG_00413197"
    %endif
    times 5 - ($ - %%insn_00413197) db 0
    %%insn_0041319c:
    mov bl,[esp+0x1b] ; 0041319C 8A5C241B
    %if ($ - %%insn_0041319c) > 4
        %error "LONG_0041319C"
    %endif
    times 4 - ($ - %%insn_0041319c) db 0
    db 0x8B, 0xC6 ; 004131A0 8BC6 | mov eax,esi | encoding preserved
    db 0x8B, 0xCE ; 004131A2 8BCE | mov ecx,esi | encoding preserved
    %%insn_004131a4:
    or bl,0x1 ; 004131A4 80CB01
    %if ($ - %%insn_004131a4) > 3
        %error "LONG_004131A4"
    %endif
    times 3 - ($ - %%insn_004131a4) db 0
    %%insn_004131a7:
    and eax,0x1f ; 004131A7 83E01F
    %if ($ - %%insn_004131a7) > 3
        %error "LONG_004131A7"
    %endif
    times 3 - ($ - %%insn_004131a7) db 0
    %%insn_004131aa:
    mov [esp+0x1b],bl ; 004131AA 885C241B
    %if ($ - %%insn_004131aa) > 4
        %error "LONG_004131AA"
    %endif
    times 4 - ($ - %%insn_004131aa) db 0
    %%insn_004131ae:
    sar ecx,byte 0x5 ; 004131AE C1F905
    %if ($ - %%insn_004131ae) > 3
        %error "LONG_004131AE"
    %endif
    times 3 - ($ - %%insn_004131ae) db 0
    %%insn_004131b1:
    lea edi,[eax+eax*8] ; 004131B1 8D3CC0
    %if ($ - %%insn_004131b1) > 3
        %error "LONG_004131B1"
    %endif
    times 3 - ($ - %%insn_004131b1) db 0
    %%insn_004131b4:
    mov al,[esp+0x1b] ; 004131B4 8A44241B
    %if ($ - %%insn_004131b4) > 4
        %error "LONG_004131B4"
    %endif
    times 4 - ($ - %%insn_004131b4) db 0
    %%insn_004131b8:
    mov edx,[ecx*4+0x423480] ; 004131B8 8B148D80344200
    %if ($ - %%insn_004131b8) > 7
        %error "LONG_004131B8"
    %endif
    times 7 - ($ - %%insn_004131b8) db 0
    %%insn_004131bf:
    lea ebx,[ecx*4+0x423480] ; 004131BF 8D1C8D80344200
    %if ($ - %%insn_004131bf) > 7
        %error "LONG_004131BF"
    %endif
    times 7 - ($ - %%insn_004131bf) db 0
    db 0x8A, 0xC8 ; 004131C6 8AC8 | mov cl,al | encoding preserved
    %%insn_004131c8:
    add esp,0x8 ; 004131C8 83C408
    %if ($ - %%insn_004131c8) > 3
        %error "LONG_004131C8"
    %endif
    times 3 - ($ - %%insn_004131c8) db 0
    %%insn_004131cb:
    shl edi,byte 0x2 ; 004131CB C1E702
    %if ($ - %%insn_004131cb) > 3
        %error "LONG_004131CB"
    %endif
    times 3 - ($ - %%insn_004131cb) db 0
    %%insn_004131ce:
    and cl,0x48 ; 004131CE 80E148
    %if ($ - %%insn_004131ce) > 3
        %error "LONG_004131CE"
    %endif
    times 3 - ($ - %%insn_004131ce) db 0
    %%insn_004131d1:
    mov [edi+edx+0x4],al ; 004131D1 88441704
    %if ($ - %%insn_004131d1) > 4
        %error "LONG_004131D1"
    %endif
    times 4 - ($ - %%insn_004131d1) db 0
    %%insn_004131d5:
    mov [esp+0x28],cl ; 004131D5 884C2428
    %if ($ - %%insn_004131d5) > 4
        %error "LONG_004131D5"
    %endif
    times 4 - ($ - %%insn_004131d5) db 0
    %%insn_004131d9:
    jnz 0x413273 ; 004131D9 0F8594000000
    %if ($ - %%insn_004131d9) > 6
        %error "LONG_004131D9"
    %endif
    times 6 - ($ - %%insn_004131d9) db 0
    %%insn_004131df:
    test al,0x80 ; 004131DF A880
    %if ($ - %%insn_004131df) > 2
        %error "LONG_004131DF"
    %endif
    times 2 - ($ - %%insn_004131df) db 0
    %%insn_004131e1:
    jz 0x413273 ; 004131E1 0F848C000000
    %if ($ - %%insn_004131e1) > 6
        %error "LONG_004131E1"
    %endif
    times 6 - ($ - %%insn_004131e1) db 0
    %%insn_004131e7:
    test byte [esp+0x2c],0x2 ; 004131E7 F644242C02
    %if ($ - %%insn_004131e7) > 5
        %error "LONG_004131E7"
    %endif
    times 5 - ($ - %%insn_004131e7) db 0
    %%insn_004131ec:
    jz 0x413273 ; 004131EC 0F8481000000
    %if ($ - %%insn_004131ec) > 6
        %error "LONG_004131EC"
    %endif
    times 6 - ($ - %%insn_004131ec) db 0
    %%insn_004131f2:
    push dword 0x2 ; 004131F2 6A02
    %if ($ - %%insn_004131f2) > 2
        %error "LONG_004131F2"
    %endif
    times 2 - ($ - %%insn_004131f2) db 0
    %%insn_004131f4:
    push dword 0xffffffffffffffff ; 004131F4 6AFF
    %if ($ - %%insn_004131f4) > 2
        %error "LONG_004131F4"
    %endif
    times 2 - ($ - %%insn_004131f4) db 0
    %%insn_004131f6:
    push esi ; 004131F6 56
    %if ($ - %%insn_004131f6) > 1
        %error "LONG_004131F6"
    %endif
    times 1 - ($ - %%insn_004131f6) db 0
    %%insn_004131f7:
    call 0x411310 ; 004131F7 E814E1FFFF
    %if ($ - %%insn_004131f7) > 5
        %error "LONG_004131F7"
    %endif
    times 5 - ($ - %%insn_004131f7) db 0
    db 0x8B, 0xE8 ; 004131FC 8BE8 | mov ebp,eax | encoding preserved
    %%insn_004131fe:
    add esp,0xc ; 004131FE 83C40C
    %if ($ - %%insn_004131fe) > 3
        %error "LONG_004131FE"
    %endif
    times 3 - ($ - %%insn_004131fe) db 0
    %%insn_00413201:
    cmp ebp,0xffffffffffffffff ; 00413201 83FDFF
    %if ($ - %%insn_00413201) > 3
        %error "LONG_00413201"
    %endif
    times 3 - ($ - %%insn_00413201) db 0
    %%insn_00413204:
    jnz short 0x413215 ; 00413204 750F
    %if ($ - %%insn_00413204) > 2
        %error "LONG_00413204"
    %endif
    times 2 - ($ - %%insn_00413204) db 0
    %%insn_00413206:
    call 0x410e20 ; 00413206 E815DCFFFF
    %if ($ - %%insn_00413206) > 5
        %error "LONG_00413206"
    %endif
    times 5 - ($ - %%insn_00413206) db 0
    %%insn_0041320b:
    cmp dword [eax],0x83 ; 0041320B 813883000000
    %if ($ - %%insn_0041320b) > 6
        %error "LONG_0041320B"
    %endif
    times 6 - ($ - %%insn_0041320b) db 0
    %%insn_00413211:
    jz short 0x413273 ; 00413211 7460
    %if ($ - %%insn_00413211) > 2
        %error "LONG_00413211"
    %endif
    times 2 - ($ - %%insn_00413211) db 0
    %%insn_00413213:
    jmp short 0x413256 ; 00413213 EB41
    %if ($ - %%insn_00413213) > 2
        %error "LONG_00413213"
    %endif
    times 2 - ($ - %%insn_00413213) db 0
    %%insn_00413215:
    lea eax,[esp+0x30] ; 00413215 8D442430
    %if ($ - %%insn_00413215) > 4
        %error "LONG_00413215"
    %endif
    times 4 - ($ - %%insn_00413215) db 0
    %%insn_00413219:
    push dword 0x1 ; 00413219 6A01
    %if ($ - %%insn_00413219) > 2
        %error "LONG_00413219"
    %endif
    times 2 - ($ - %%insn_00413219) db 0
    %%insn_0041321b:
    push eax ; 0041321B 50
    %if ($ - %%insn_0041321b) > 1
        %error "LONG_0041321B"
    %endif
    times 1 - ($ - %%insn_0041321b) db 0
    %%insn_0041321c:
    push esi ; 0041321C 56
    %if ($ - %%insn_0041321c) > 1
        %error "LONG_0041321C"
    %endif
    times 1 - ($ - %%insn_0041321c) db 0
    %%insn_0041321d:
    mov byte [esp+0x3c],0x0 ; 0041321D C644243C00
    %if ($ - %%insn_0041321d) > 5
        %error "LONG_0041321D"
    %endif
    times 5 - ($ - %%insn_0041321d) db 0
    %%insn_00413222:
    call 0x410090 ; 00413222 E869CEFFFF
    %if ($ - %%insn_00413222) > 5
        %error "LONG_00413222"
    %endif
    times 5 - ($ - %%insn_00413222) db 0
    %%insn_00413227:
    add esp,0xc ; 00413227 83C40C
    %if ($ - %%insn_00413227) > 3
        %error "LONG_00413227"
    %endif
    times 3 - ($ - %%insn_00413227) db 0
    %%insn_0041322a:
    test eax,eax ; 0041322A 85C0
    %if ($ - %%insn_0041322a) > 2
        %error "LONG_0041322A"
    %endif
    times 2 - ($ - %%insn_0041322a) db 0
    %%insn_0041322c:
    jnz short 0x413244 ; 0041322C 7516
    %if ($ - %%insn_0041322c) > 2
        %error "LONG_0041322C"
    %endif
    times 2 - ($ - %%insn_0041322c) db 0
    %%insn_0041322e:
    cmp byte [esp+0x30],0x1a ; 0041322E 807C24301A
    %if ($ - %%insn_0041322e) > 5
        %error "LONG_0041322E"
    %endif
    times 5 - ($ - %%insn_0041322e) db 0
    %%insn_00413233:
    jnz short 0x413244 ; 00413233 750F
    %if ($ - %%insn_00413233) > 2
        %error "LONG_00413233"
    %endif
    times 2 - ($ - %%insn_00413233) db 0
    %%insn_00413235:
    push ebp ; 00413235 55
    %if ($ - %%insn_00413235) > 1
        %error "LONG_00413235"
    %endif
    times 1 - ($ - %%insn_00413235) db 0
    %%insn_00413236:
    push esi ; 00413236 56
    %if ($ - %%insn_00413236) > 1
        %error "LONG_00413236"
    %endif
    times 1 - ($ - %%insn_00413236) db 0
    %%insn_00413237:
    call 0x4157b0 ; 00413237 E874250000
    %if ($ - %%insn_00413237) > 5
        %error "LONG_00413237"
    %endif
    times 5 - ($ - %%insn_00413237) db 0
    %%insn_0041323c:
    add esp,0x8 ; 0041323C 83C408
    %if ($ - %%insn_0041323c) > 3
        %error "LONG_0041323C"
    %endif
    times 3 - ($ - %%insn_0041323c) db 0
    %%insn_0041323f:
    cmp eax,0xffffffffffffffff ; 0041323F 83F8FF
    %if ($ - %%insn_0041323f) > 3
        %error "LONG_0041323F"
    %endif
    times 3 - ($ - %%insn_0041323f) db 0
    %%insn_00413242:
    jz short 0x413256 ; 00413242 7412
    %if ($ - %%insn_00413242) > 2
        %error "LONG_00413242"
    %endif
    times 2 - ($ - %%insn_00413242) db 0
    %%insn_00413244:
    push dword 0x0 ; 00413244 6A00
    %if ($ - %%insn_00413244) > 2
        %error "LONG_00413244"
    %endif
    times 2 - ($ - %%insn_00413244) db 0
    %%insn_00413246:
    push dword 0x0 ; 00413246 6A00
    %if ($ - %%insn_00413246) > 2
        %error "LONG_00413246"
    %endif
    times 2 - ($ - %%insn_00413246) db 0
    %%insn_00413248:
    push esi ; 00413248 56
    %if ($ - %%insn_00413248) > 1
        %error "LONG_00413248"
    %endif
    times 1 - ($ - %%insn_00413248) db 0
    %%insn_00413249:
    call 0x411310 ; 00413249 E8C2E0FFFF
    %if ($ - %%insn_00413249) > 5
        %error "LONG_00413249"
    %endif
    times 5 - ($ - %%insn_00413249) db 0
    %%insn_0041324e:
    add esp,0xc ; 0041324E 83C40C
    %if ($ - %%insn_0041324e) > 3
        %error "LONG_0041324E"
    %endif
    times 3 - ($ - %%insn_0041324e) db 0
    %%insn_00413251:
    cmp eax,0xffffffffffffffff ; 00413251 83F8FF
    %if ($ - %%insn_00413251) > 3
        %error "LONG_00413251"
    %endif
    times 3 - ($ - %%insn_00413251) db 0
    %%insn_00413254:
    jnz short 0x413273 ; 00413254 751D
    %if ($ - %%insn_00413254) > 2
        %error "LONG_00413254"
    %endif
    times 2 - ($ - %%insn_00413254) db 0
    %%insn_00413256:
    push esi ; 00413256 56
    %if ($ - %%insn_00413256) > 1
        %error "LONG_00413256"
    %endif
    times 1 - ($ - %%insn_00413256) db 0
    %%insn_00413257:
    call 0x40f6e0 ; 00413257 E884C4FFFF
    %if ($ - %%insn_00413257) > 5
        %error "LONG_00413257"
    %endif
    times 5 - ($ - %%insn_00413257) db 0
    %%insn_0041325c:
    add esp,0x4 ; 0041325C 83C404
    %if ($ - %%insn_0041325c) > 3
        %error "LONG_0041325C"
    %endif
    times 3 - ($ - %%insn_0041325c) db 0
    %%insn_0041325f:
    push esi ; 0041325F 56
    %if ($ - %%insn_0041325f) > 1
        %error "LONG_0041325F"
    %endif
    times 1 - ($ - %%insn_0041325f) db 0
    %%insn_00413260:
    call 0x411260 ; 00413260 E8FBDFFFFF
    %if ($ - %%insn_00413260) > 5
        %error "LONG_00413260"
    %endif
    times 5 - ($ - %%insn_00413260) db 0
    %%insn_00413265:
    add esp,0x4 ; 00413265 83C404
    %if ($ - %%insn_00413265) > 3
        %error "LONG_00413265"
    %endif
    times 3 - ($ - %%insn_00413265) db 0
    %%insn_00413268:
    or eax,0xffffffffffffffff ; 00413268 83C8FF
    %if ($ - %%insn_00413268) > 3
        %error "LONG_00413268"
    %endif
    times 3 - ($ - %%insn_00413268) db 0
    %%insn_0041326b:
    pop edi ; 0041326B 5F
    %if ($ - %%insn_0041326b) > 1
        %error "LONG_0041326B"
    %endif
    times 1 - ($ - %%insn_0041326b) db 0
    %%insn_0041326c:
    pop esi ; 0041326C 5E
    %if ($ - %%insn_0041326c) > 1
        %error "LONG_0041326C"
    %endif
    times 1 - ($ - %%insn_0041326c) db 0
    %%insn_0041326d:
    pop ebp ; 0041326D 5D
    %if ($ - %%insn_0041326d) > 1
        %error "LONG_0041326D"
    %endif
    times 1 - ($ - %%insn_0041326d) db 0
    %%insn_0041326e:
    pop ebx ; 0041326E 5B
    %if ($ - %%insn_0041326e) > 1
        %error "LONG_0041326E"
    %endif
    times 1 - ($ - %%insn_0041326e) db 0
    %%insn_0041326f:
    add esp,0x14 ; 0041326F 83C414
    %if ($ - %%insn_0041326f) > 3
        %error "LONG_0041326F"
    %endif
    times 3 - ($ - %%insn_0041326f) db 0
    %%insn_00413272:
    ret ; 00413272 C3
    %if ($ - %%insn_00413272) > 1
        %error "LONG_00413272"
    %endif
    times 1 - ($ - %%insn_00413272) db 0
    %%insn_00413273:
    mov al,[esp+0x28] ; 00413273 8A442428
    %if ($ - %%insn_00413273) > 4
        %error "LONG_00413273"
    %endif
    times 4 - ($ - %%insn_00413273) db 0
    %%insn_00413277:
    test al,al ; 00413277 84C0
    %if ($ - %%insn_00413277) > 2
        %error "LONG_00413277"
    %endif
    times 2 - ($ - %%insn_00413277) db 0
    %%insn_00413279:
    jnz short 0x413291 ; 00413279 7516
    %if ($ - %%insn_00413279) > 2
        %error "LONG_00413279"
    %endif
    times 2 - ($ - %%insn_00413279) db 0
    %%insn_0041327b:
    test byte [esp+0x2c],0x8 ; 0041327B F644242C08
    %if ($ - %%insn_0041327b) > 5
        %error "LONG_0041327B"
    %endif
    times 5 - ($ - %%insn_0041327b) db 0
    %%insn_00413280:
    jz short 0x413291 ; 00413280 740F
    %if ($ - %%insn_00413280) > 2
        %error "LONG_00413280"
    %endif
    times 2 - ($ - %%insn_00413280) db 0
    %%insn_00413282:
    mov ecx,[ebx] ; 00413282 8B0B
    %if ($ - %%insn_00413282) > 2
        %error "LONG_00413282"
    %endif
    times 2 - ($ - %%insn_00413282) db 0
    %%insn_00413284:
    lea eax,[edi+ecx+0x4] ; 00413284 8D440F04
    %if ($ - %%insn_00413284) > 4
        %error "LONG_00413284"
    %endif
    times 4 - ($ - %%insn_00413284) db 0
    %%insn_00413288:
    mov cl,[edi+ecx+0x4] ; 00413288 8A4C0F04
    %if ($ - %%insn_00413288) > 4
        %error "LONG_00413288"
    %endif
    times 4 - ($ - %%insn_00413288) db 0
    %%insn_0041328c:
    or cl,0x20 ; 0041328C 80C920
    %if ($ - %%insn_0041328c) > 3
        %error "LONG_0041328C"
    %endif
    times 3 - ($ - %%insn_0041328c) db 0
    %%insn_0041328f:
    mov [eax],cl ; 0041328F 8808
    %if ($ - %%insn_0041328f) > 2
        %error "LONG_0041328F"
    %endif
    times 2 - ($ - %%insn_0041328f) db 0
    %%insn_00413291:
    push esi ; 00413291 56
    %if ($ - %%insn_00413291) > 1
        %error "LONG_00413291"
    %endif
    times 1 - ($ - %%insn_00413291) db 0
    %%insn_00413292:
    call 0x411260 ; 00413292 E8C9DFFFFF
    %if ($ - %%insn_00413292) > 5
        %error "LONG_00413292"
    %endif
    times 5 - ($ - %%insn_00413292) db 0
    %%insn_00413297:
    add esp,0x4 ; 00413297 83C404
    %if ($ - %%insn_00413297) > 3
        %error "LONG_00413297"
    %endif
    times 3 - ($ - %%insn_00413297) db 0
    db 0x8B, 0xC6 ; 0041329A 8BC6 | mov eax,esi | encoding preserved
    %%insn_0041329c:
    pop edi ; 0041329C 5F
    %if ($ - %%insn_0041329c) > 1
        %error "LONG_0041329C"
    %endif
    times 1 - ($ - %%insn_0041329c) db 0
    %%insn_0041329d:
    pop esi ; 0041329D 5E
    %if ($ - %%insn_0041329d) > 1
        %error "LONG_0041329D"
    %endif
    times 1 - ($ - %%insn_0041329d) db 0
    %%insn_0041329e:
    pop ebp ; 0041329E 5D
    %if ($ - %%insn_0041329e) > 1
        %error "LONG_0041329E"
    %endif
    times 1 - ($ - %%insn_0041329e) db 0
    %%insn_0041329f:
    pop ebx ; 0041329F 5B
    %if ($ - %%insn_0041329f) > 1
        %error "LONG_0041329F"
    %endif
    times 1 - ($ - %%insn_0041329f) db 0
    %%insn_004132a0:
    add esp,0x14 ; 004132A0 83C414
    %if ($ - %%insn_004132a0) > 3
        %error "LONG_004132A0"
    %endif
    times 3 - ($ - %%insn_004132a0) db 0
    %%insn_004132a3:
    ret ; 004132A3 C3
    %if ($ - %%insn_004132a3) > 1
        %error "LONG_004132A3"
    %endif
    times 1 - ($ - %%insn_004132a3) db 0
    %%insn_004132a4:
    call 0x410e10 ; 004132A4 E867DBFFFF
    %if ($ - %%insn_004132a4) > 5
        %error "LONG_004132A4"
    %endif
    times 5 - ($ - %%insn_004132a4) db 0
    %%insn_004132a9:
    mov dword [eax],0x16 ; 004132A9 C70016000000
    %if ($ - %%insn_004132a9) > 6
        %error "LONG_004132A9"
    %endif
    times 6 - ($ - %%insn_004132a9) db 0
    %%insn_004132af:
    call 0x410e20 ; 004132AF E86CDBFFFF
    %if ($ - %%insn_004132af) > 5
        %error "LONG_004132AF"
    %endif
    times 5 - ($ - %%insn_004132af) db 0
    %%insn_004132b4:
    mov [eax],esi ; 004132B4 8930
    %if ($ - %%insn_004132b4) > 2
        %error "LONG_004132B4"
    %endif
    times 2 - ($ - %%insn_004132b4) db 0
    %%insn_004132b6:
    pop edi ; 004132B6 5F
    %if ($ - %%insn_004132b6) > 1
        %error "LONG_004132B6"
    %endif
    times 1 - ($ - %%insn_004132b6) db 0
    %%insn_004132b7:
    pop esi ; 004132B7 5E
    %if ($ - %%insn_004132b7) > 1
        %error "LONG_004132B7"
    %endif
    times 1 - ($ - %%insn_004132b7) db 0
    %%insn_004132b8:
    pop ebp ; 004132B8 5D
    %if ($ - %%insn_004132b8) > 1
        %error "LONG_004132B8"
    %endif
    times 1 - ($ - %%insn_004132b8) db 0
    %%insn_004132b9:
    or eax,0xffffffffffffffff ; 004132B9 83C8FF
    %if ($ - %%insn_004132b9) > 3
        %error "LONG_004132B9"
    %endif
    times 3 - ($ - %%insn_004132b9) db 0
    %%insn_004132bc:
    pop ebx ; 004132BC 5B
    %if ($ - %%insn_004132bc) > 1
        %error "LONG_004132BC"
    %endif
    times 1 - ($ - %%insn_004132bc) db 0
    %%insn_004132bd:
    add esp,0x14 ; 004132BD 83C414
    %if ($ - %%insn_004132bd) > 3
        %error "LONG_004132BD"
    %endif
    times 3 - ($ - %%insn_004132bd) db 0
    %%insn_004132c0:
    ret ; 004132C0 C3
    %if ($ - %%insn_004132c0) > 1
        %error "LONG_004132C0"
    %endif
    times 1 - ($ - %%insn_004132c0) db 0
    %if ($ - %%fragment_start) != 849
        %error "function fragment size drift: 00412F70"
    %endif
%endmacro
