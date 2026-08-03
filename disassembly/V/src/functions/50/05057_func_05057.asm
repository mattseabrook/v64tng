; Linear entry 05057 (1000:5057)
; Ghidra working symbol: FUN_1000_5057
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_05057_part_00 0
    %%fragment_start:
func_05057:
    %%insn_05057:
    mov bx,0x400 ; 05057 BB0004
    %if ($ - %%insn_05057) > 3
        %error "LONG_05057"
    %endif
    times 3 - ($ - %%insn_05057) db 0
    %%insn_0505a:
    call 0x5ec8 ; 0505A E86B0E
    %if ($ - %%insn_0505a) > 3
        %error "LONG_0505A"
    %endif
    times 3 - ($ - %%insn_0505a) db 0
    %%insn_0505d:
    mov [bp-0x2605],ax ; 0505D 8986FBD9
    %if ($ - %%insn_0505d) > 4
        %error "LONG_0505D"
    %endif
    times 4 - ($ - %%insn_0505d) db 0
    db 0x33, 0xED ; 05061 33ED | xor bp,bp | encoding preserved
    %%insn_05063:
    mov byte [bp-0x2608],0xff ; 05063 C686F8D9FF
    %if ($ - %%insn_05063) > 5
        %error "LONG_05063"
    %endif
    times 5 - ($ - %%insn_05063) db 0
    %%insn_05068:
    mov ax,0x893 ; 05068 B89308
    %if ($ - %%insn_05068) > 3
        %error "LONG_05068"
    %endif
    times 3 - ($ - %%insn_05068) db 0
    %%insn_0506b:
    mov ds,ax ; 0506B 8ED8
    %if ($ - %%insn_0506b) > 2
        %error "LONG_0506B"
    %endif
    times 2 - ($ - %%insn_0506b) db 0
    %%insn_0506d:
    mov byte [0xd9ed],0x0 ; 0506D C606EDD900
    %if ($ - %%insn_0506d) > 5
        %error "LONG_0506D"
    %endif
    times 5 - ($ - %%insn_0506d) db 0
    %%insn_05072:
    mov byte [0xd9ec],0x0 ; 05072 C606ECD900
    %if ($ - %%insn_05072) > 5
        %error "LONG_05072"
    %endif
    times 5 - ($ - %%insn_05072) db 0
    %%insn_05077:
    mov byte [0xd9ee],0x0 ; 05077 C606EED900
    %if ($ - %%insn_05077) > 5
        %error "LONG_05077"
    %endif
    times 5 - ($ - %%insn_05077) db 0
    %%insn_0507c:
    mov byte [0xd9eb],0x0 ; 0507C C606EBD900
    %if ($ - %%insn_0507c) > 5
        %error "LONG_0507C"
    %endif
    times 5 - ($ - %%insn_0507c) db 0
    %%insn_05081:
    mov byte [0xd8e3],0x0 ; 05081 C606E3D800
    %if ($ - %%insn_05081) > 5
        %error "LONG_05081"
    %endif
    times 5 - ($ - %%insn_05081) db 0
    %%insn_05086:
    mov byte [0xd923],0x0 ; 05086 C60623D900
    %if ($ - %%insn_05086) > 5
        %error "LONG_05086"
    %endif
    times 5 - ($ - %%insn_05086) db 0
    %%insn_0508b:
    mov dx,0xd8ae ; 0508B BAAED8
    %if ($ - %%insn_0508b) > 3
        %error "LONG_0508B"
    %endif
    times 3 - ($ - %%insn_0508b) db 0
    %%insn_0508e:
    call 0x3a31 ; 0508E E8A0E9
    %if ($ - %%insn_0508e) > 3
        %error "LONG_0508E"
    %endif
    times 3 - ($ - %%insn_0508e) db 0
    db 0x3D, 0xFF, 0xFF ; 05091 3DFFFF | cmp ax,0xffff | encoding preserved
    %%insn_05094:
    jnz short 0x50bc ; 05094 7526
    %if ($ - %%insn_05094) > 2
        %error "LONG_05094"
    %endif
    times 2 - ($ - %%insn_05094) db 0
    %%insn_05096:
    mov dx,0xd8bb ; 05096 BABBD8
    %if ($ - %%insn_05096) > 3
        %error "LONG_05096"
    %endif
    times 3 - ($ - %%insn_05096) db 0
    %%insn_05099:
    call 0x3a31 ; 05099 E895E9
    %if ($ - %%insn_05099) > 3
        %error "LONG_05099"
    %endif
    times 3 - ($ - %%insn_05099) db 0
    db 0x3D, 0xFF, 0xFF ; 0509C 3DFFFF | cmp ax,0xffff | encoding preserved
    %%insn_0509f:
    jnz short 0x50bc ; 0509F 751B
    %if ($ - %%insn_0509f) > 2
        %error "LONG_0509F"
    %endif
    times 2 - ($ - %%insn_0509f) db 0
    %%insn_050a1:
    mov byte [bp-0x2613],0x1 ; 050A1 C686EDD901
    %if ($ - %%insn_050a1) > 5
        %error "LONG_050A1"
    %endif
    times 5 - ($ - %%insn_050a1) db 0
    %%insn_050a6:
    mov byte [bp-0x2614],0x1 ; 050A6 C686ECD901
    %if ($ - %%insn_050a6) > 5
        %error "LONG_050A6"
    %endif
    times 5 - ($ - %%insn_050a6) db 0
    %%insn_050ab:
    mov byte [bp-0x2612],0x1 ; 050AB C686EED901
    %if ($ - %%insn_050ab) > 5
        %error "LONG_050AB"
    %endif
    times 5 - ($ - %%insn_050ab) db 0
    %%insn_050b0:
    mov byte [bp-0x2615],0x1 ; 050B0 C686EBD901
    %if ($ - %%insn_050b0) > 5
        %error "LONG_050B0"
    %endif
    times 5 - ($ - %%insn_050b0) db 0
    %%insn_050b5:
    mov word [bp-0x1b8a],0x80 ; 050B5 C78676E48000
    %if ($ - %%insn_050b5) > 6
        %error "LONG_050B5"
    %endif
    times 6 - ($ - %%insn_050b5) db 0
    %%insn_050bb:
    ret ; 050BB C3
    %if ($ - %%insn_050bb) > 1
        %error "LONG_050BB"
    %endif
    times 1 - ($ - %%insn_050bb) db 0
    %%insn_050bc:
    mov ds,word [bp-0x2605] ; 050BC 8E9EFBD9
    %if ($ - %%insn_050bc) > 4
        %error "LONG_050BC"
    %endif
    times 4 - ($ - %%insn_050bc) db 0
    db 0x33, 0xD2 ; 050C0 33D2 | xor dx,dx | encoding preserved
    %%insn_050c2:
    mov cx,0x800 ; 050C2 B90008
    %if ($ - %%insn_050c2) > 3
        %error "LONG_050C2"
    %endif
    times 3 - ($ - %%insn_050c2) db 0
    %%insn_050c5:
    call 0x3a51 ; 050C5 E889E9
    %if ($ - %%insn_050c5) > 3
        %error "LONG_050C5"
    %endif
    times 3 - ($ - %%insn_050c5) db 0
    %%insn_050c8:
    call 0x3a47 ; 050C8 E87CE9
    %if ($ - %%insn_050c8) > 3
        %error "LONG_050C8"
    %endif
    times 3 - ($ - %%insn_050c8) db 0
    %%insn_050cb:
    mov ax,0x893 ; 050CB B89308
    %if ($ - %%insn_050cb) > 3
        %error "LONG_050CB"
    %endif
    times 3 - ($ - %%insn_050cb) db 0
    %%insn_050ce:
    mov es,ax ; 050CE 8EC0
    %if ($ - %%insn_050ce) > 2
        %error "LONG_050CE"
    %endif
    times 2 - ($ - %%insn_050ce) db 0
    %%insn_050d0:
    mov bx,0xe0c8 ; 050D0 BBC8E0
    %if ($ - %%insn_050d0) > 3
        %error "LONG_050D0"
    %endif
    times 3 - ($ - %%insn_050d0) db 0
    %%insn_050d3:
    call 0x5018 ; 050D3 E842FF
    %if ($ - %%insn_050d3) > 3
        %error "LONG_050D3"
    %endif
    times 3 - ($ - %%insn_050d3) db 0
    %%insn_050d6:
    cmp byte [si],0x3b ; 050D6 803C3B
    %if ($ - %%insn_050d6) > 3
        %error "LONG_050D6"
    %endif
    times 3 - ($ - %%insn_050d6) db 0
    %%insn_050d9:
    jnz short 0x50e0 ; 050D9 7505
    %if ($ - %%insn_050d9) > 2
        %error "LONG_050D9"
    %endif
    times 2 - ($ - %%insn_050d9) db 0
    %%insn_050db:
    call 0x4fc7 ; 050DB E8E9FE
    %if ($ - %%insn_050db) > 3
        %error "LONG_050DB"
    %endif
    times 3 - ($ - %%insn_050db) db 0
    %%insn_050de:
    jmp short 0x50d6 ; 050DE EBF6
    %if ($ - %%insn_050de) > 2
        %error "LONG_050DE"
    %endif
    times 2 - ($ - %%insn_050de) db 0
    %%insn_050e0:
    cmp byte [si],0x5b ; 050E0 803C5B
    %if ($ - %%insn_050e0) > 3
        %error "LONG_050E0"
    %endif
    times 3 - ($ - %%insn_050e0) db 0
    %%insn_050e3:
    jnz short 0x50ea ; 050E3 7505
    %if ($ - %%insn_050e3) > 2
        %error "LONG_050E3"
    %endif
    times 2 - ($ - %%insn_050e3) db 0
    %%insn_050e5:
    call 0x4fc7 ; 050E5 E8DFFE
    %if ($ - %%insn_050e5) > 3
        %error "LONG_050E5"
    %endif
    times 3 - ($ - %%insn_050e5) db 0
    %%insn_050e8:
    jmp short 0x50d6 ; 050E8 EBEC
    %if ($ - %%insn_050e8) > 2
        %error "LONG_050E8"
    %endif
    times 2 - ($ - %%insn_050e8) db 0
    %%insn_050ea:
    call 0x48c9 ; 050EA E8DCF7
    %if ($ - %%insn_050ea) > 3
        %error "LONG_050EA"
    %endif
    times 3 - ($ - %%insn_050ea) db 0
    %%insn_050ed:
    inc si ; 050ED 46
    %if ($ - %%insn_050ed) > 1
        %error "LONG_050ED"
    %endif
    times 1 - ($ - %%insn_050ed) db 0
    %%insn_050ee:
    cmp word [bp-0x2611],0x1 ; 050EE 83BEEFD901
    %if ($ - %%insn_050ee) > 5
        %error "LONG_050EE"
    %endif
    times 5 - ($ - %%insn_050ee) db 0
    %%insn_050f3:
    jna short 0x515f ; 050F3 766A
    %if ($ - %%insn_050f3) > 2
        %error "LONG_050F3"
    %endif
    times 2 - ($ - %%insn_050f3) db 0
    %%insn_050f5:
    push ds ; 050F5 1E
    %if ($ - %%insn_050f5) > 1
        %error "LONG_050F5"
    %endif
    times 1 - ($ - %%insn_050f5) db 0
    %%insn_050f6:
    push si ; 050F6 56
    %if ($ - %%insn_050f6) > 1
        %error "LONG_050F6"
    %endif
    times 1 - ($ - %%insn_050f6) db 0
    %%insn_050f7:
    lds di,word [bp-0x260f] ; 050F7 C5BEF1D9
    %if ($ - %%insn_050f7) > 4
        %error "LONG_050F7"
    %endif
    times 4 - ($ - %%insn_050f7) db 0
    %%insn_050fb:
    add di,0x2 ; 050FB 83C702
    %if ($ - %%insn_050fb) > 3
        %error "LONG_050FB"
    %endif
    times 3 - ($ - %%insn_050fb) db 0
    %%insn_050fe:
    mov si,[di] ; 050FE 8B35
    %if ($ - %%insn_050fe) > 2
        %error "LONG_050FE"
    %endif
    times 2 - ($ - %%insn_050fe) db 0
    %%insn_05100:
    add di,0x2 ; 05100 83C702
    %if ($ - %%insn_05100) > 3
        %error "LONG_05100"
    %endif
    times 3 - ($ - %%insn_05100) db 0
    %%insn_05103:
    mov bx,[di] ; 05103 8B1D
    %if ($ - %%insn_05103) > 2
        %error "LONG_05103"
    %endif
    times 2 - ($ - %%insn_05103) db 0
    %%insn_05105:
    mov di,0xe10e ; 05105 BF0EE1
    %if ($ - %%insn_05105) > 3
        %error "LONG_05105"
    %endif
    times 3 - ($ - %%insn_05105) db 0
    %%insn_05108:
    call 0x4ff6 ; 05108 E8EBFE
    %if ($ - %%insn_05108) > 3
        %error "LONG_05108"
    %endif
    times 3 - ($ - %%insn_05108) db 0
    %%insn_0510b:
    jnz short 0x5110 ; 0510B 7503
    %if ($ - %%insn_0510b) > 2
        %error "LONG_0510B"
    %endif
    times 2 - ($ - %%insn_0510b) db 0
    %%insn_0510d:
    call 0x51cb ; 0510D E8BB00
    %if ($ - %%insn_0510d) > 3
        %error "LONG_0510D"
    %endif
    times 3 - ($ - %%insn_0510d) db 0
    %%insn_05110:
    mov di,0xe11c ; 05110 BF1CE1
    %if ($ - %%insn_05110) > 3
        %error "LONG_05110"
    %endif
    times 3 - ($ - %%insn_05110) db 0
    %%insn_05113:
    call 0x4ff6 ; 05113 E8E0FE
    %if ($ - %%insn_05113) > 3
        %error "LONG_05113"
    %endif
    times 3 - ($ - %%insn_05113) db 0
    %%insn_05116:
    jnz short 0x511b ; 05116 7503
    %if ($ - %%insn_05116) > 2
        %error "LONG_05116"
    %endif
    times 2 - ($ - %%insn_05116) db 0
    %%insn_05118:
    call 0x51e5 ; 05118 E8CA00
    %if ($ - %%insn_05118) > 3
        %error "LONG_05118"
    %endif
    times 3 - ($ - %%insn_05118) db 0
    %%insn_0511b:
    mov di,0xe0fe ; 0511B BFFEE0
    %if ($ - %%insn_0511b) > 3
        %error "LONG_0511B"
    %endif
    times 3 - ($ - %%insn_0511b) db 0
    %%insn_0511e:
    call 0x4ff6 ; 0511E E8D5FE
    %if ($ - %%insn_0511e) > 3
        %error "LONG_0511E"
    %endif
    times 3 - ($ - %%insn_0511e) db 0
    %%insn_05121:
    jnz short 0x5126 ; 05121 7503
    %if ($ - %%insn_05121) > 2
        %error "LONG_05121"
    %endif
    times 2 - ($ - %%insn_05121) db 0
    %%insn_05123:
    call 0x5226 ; 05123 E80001
    %if ($ - %%insn_05123) > 3
        %error "LONG_05123"
    %endif
    times 3 - ($ - %%insn_05123) db 0
    %%insn_05126:
    mov di,0xe106 ; 05126 BF06E1
    %if ($ - %%insn_05126) > 3
        %error "LONG_05126"
    %endif
    times 3 - ($ - %%insn_05126) db 0
    %%insn_05129:
    call 0x4ff6 ; 05129 E8CAFE
    %if ($ - %%insn_05129) > 3
        %error "LONG_05129"
    %endif
    times 3 - ($ - %%insn_05129) db 0
    %%insn_0512c:
    jnz short 0x5131 ; 0512C 7503
    %if ($ - %%insn_0512c) > 2
        %error "LONG_0512C"
    %endif
    times 2 - ($ - %%insn_0512c) db 0
    %%insn_0512e:
    call 0x5217 ; 0512E E8E600
    %if ($ - %%insn_0512e) > 3
        %error "LONG_0512E"
    %endif
    times 3 - ($ - %%insn_0512e) db 0
    %%insn_05131:
    mov di,0xe0d2 ; 05131 BFD2E0
    %if ($ - %%insn_05131) > 3
        %error "LONG_05131"
    %endif
    times 3 - ($ - %%insn_05131) db 0
    %%insn_05134:
    call 0x4ff6 ; 05134 E8BFFE
    %if ($ - %%insn_05134) > 3
        %error "LONG_05134"
    %endif
    times 3 - ($ - %%insn_05134) db 0
    %%insn_05137:
    jnz short 0x513c ; 05137 7503
    %if ($ - %%insn_05137) > 2
        %error "LONG_05137"
    %endif
    times 2 - ($ - %%insn_05137) db 0
    %%insn_05139:
    call 0x51c5 ; 05139 E88900
    %if ($ - %%insn_05139) > 3
        %error "LONG_05139"
    %endif
    times 3 - ($ - %%insn_05139) db 0
    %%insn_0513c:
    mov di,0xe0dc ; 0513C BFDCE0
    %if ($ - %%insn_0513c) > 3
        %error "LONG_0513C"
    %endif
    times 3 - ($ - %%insn_0513c) db 0
    %%insn_0513f:
    call 0x4ff6 ; 0513F E8B4FE
    %if ($ - %%insn_0513f) > 3
        %error "LONG_0513F"
    %endif
    times 3 - ($ - %%insn_0513f) db 0
    %%insn_05142:
    jnz short 0x5147 ; 05142 7503
    %if ($ - %%insn_05142) > 2
        %error "LONG_05142"
    %endif
    times 2 - ($ - %%insn_05142) db 0
    %%insn_05144:
    call 0x5235 ; 05144 E8EE00
    %if ($ - %%insn_05144) > 3
        %error "LONG_05144"
    %endif
    times 3 - ($ - %%insn_05144) db 0
    %%insn_05147:
    mov di,0xe0e1 ; 05147 BFE1E0
    %if ($ - %%insn_05147) > 3
        %error "LONG_05147"
    %endif
    times 3 - ($ - %%insn_05147) db 0
    %%insn_0514a:
    call 0x4ff6 ; 0514A E8A9FE
    %if ($ - %%insn_0514a) > 3
        %error "LONG_0514A"
    %endif
    times 3 - ($ - %%insn_0514a) db 0
    %%insn_0514d:
    jnz short 0x5152 ; 0514D 7503
    %if ($ - %%insn_0514d) > 2
        %error "LONG_0514D"
    %endif
    times 2 - ($ - %%insn_0514d) db 0
    %%insn_0514f:
    call 0x5379 ; 0514F E82702
    %if ($ - %%insn_0514f) > 3
        %error "LONG_0514F"
    %endif
    times 3 - ($ - %%insn_0514f) db 0
    %%insn_05152:
    mov di,0xe0cd ; 05152 BFCDE0
    %if ($ - %%insn_05152) > 3
        %error "LONG_05152"
    %endif
    times 3 - ($ - %%insn_05152) db 0
    %%insn_05155:
    call 0x4ff6 ; 05155 E89EFE
    %if ($ - %%insn_05155) > 3
        %error "LONG_05155"
    %endif
    times 3 - ($ - %%insn_05155) db 0
    %%insn_05158:
    jnz short 0x515d ; 05158 7503
    %if ($ - %%insn_05158) > 2
        %error "LONG_05158"
    %endif
    times 2 - ($ - %%insn_05158) db 0
    %%insn_0515a:
    call 0x51ff ; 0515A E8A200
    %if ($ - %%insn_0515a) > 3
        %error "LONG_0515A"
    %endif
    times 3 - ($ - %%insn_0515a) db 0
    %%insn_0515d:
    pop si ; 0515D 5E
    %if ($ - %%insn_0515d) > 1
        %error "LONG_0515D"
    %endif
    times 1 - ($ - %%insn_0515d) db 0
    %%insn_0515e:
    pop ds ; 0515E 1F
    %if ($ - %%insn_0515e) > 1
        %error "LONG_0515E"
    %endif
    times 1 - ($ - %%insn_0515e) db 0
    %%insn_0515f:
    mov al,[bp-0x2613] ; 0515F 8A86EDD9
    %if ($ - %%insn_0515f) > 4
        %error "LONG_0515F"
    %endif
    times 4 - ($ - %%insn_0515f) db 0
    %%insn_05163:
    add al,[bp-0x2614] ; 05163 0286ECD9
    %if ($ - %%insn_05163) > 4
        %error "LONG_05163"
    %endif
    times 4 - ($ - %%insn_05163) db 0
    %%insn_05167:
    add al,[bp-0x2612] ; 05167 0286EED9
    %if ($ - %%insn_05167) > 4
        %error "LONG_05167"
    %endif
    times 4 - ($ - %%insn_05167) db 0
    %%insn_0516b:
    add al,[bp-0x2615] ; 0516B 0286EBD9
    %if ($ - %%insn_0516b) > 4
        %error "LONG_0516B"
    %endif
    times 4 - ($ - %%insn_0516b) db 0
    %%insn_0516f:
    cmp byte [bp-0x271d],0x0 ; 0516F 80BEE3D800
    %if ($ - %%insn_0516f) > 5
        %error "LONG_0516F"
    %endif
    times 5 - ($ - %%insn_0516f) db 0
    %%insn_05174:
    jz short 0x5178 ; 05174 7402
    %if ($ - %%insn_05174) > 2
        %error "LONG_05174"
    %endif
    times 2 - ($ - %%insn_05174) db 0
    %%insn_05176:
    inc al ; 05176 FEC0
    %if ($ - %%insn_05176) > 2
        %error "LONG_05176"
    %endif
    times 2 - ($ - %%insn_05176) db 0
    %%insn_05178:
    cmp byte [bp-0x26dd],0x0 ; 05178 80BE23D900
    %if ($ - %%insn_05178) > 5
        %error "LONG_05178"
    %endif
    times 5 - ($ - %%insn_05178) db 0
    %%insn_0517d:
    jz short 0x5181 ; 0517D 7402
    %if ($ - %%insn_0517d) > 2
        %error "LONG_0517D"
    %endif
    times 2 - ($ - %%insn_0517d) db 0
    %%insn_0517f:
    inc al ; 0517F FEC0
    %if ($ - %%insn_0517f) > 2
        %error "LONG_0517F"
    %endif
    times 2 - ($ - %%insn_0517f) db 0
    %%insn_05181:
    cmp al,0x6 ; 05181 3C06
    %if ($ - %%insn_05181) > 2
        %error "LONG_05181"
    %endif
    times 2 - ($ - %%insn_05181) db 0
    %%insn_05183:
    jnc short 0x51b2 ; 05183 732D
    %if ($ - %%insn_05183) > 2
        %error "LONG_05183"
    %endif
    times 2 - ($ - %%insn_05183) db 0
    %%insn_05185:
    lodsb ; 05185 AC
    %if ($ - %%insn_05185) > 1
        %error "LONG_05185"
    %endif
    times 1 - ($ - %%insn_05185) db 0
    %%insn_05186:
    cmp al,0x0 ; 05186 3C00
    %if ($ - %%insn_05186) > 2
        %error "LONG_05186"
    %endif
    times 2 - ($ - %%insn_05186) db 0
    %%insn_05188:
    jnz short 0x5192 ; 05188 7508
    %if ($ - %%insn_05188) > 2
        %error "LONG_05188"
    %endif
    times 2 - ($ - %%insn_05188) db 0
    %%insn_0518a:
    mov ax,0x8bd ; 0518A B8BD08
    %if ($ - %%insn_0518a) > 3
        %error "LONG_0518A"
    %endif
    times 3 - ($ - %%insn_0518a) db 0
    %%insn_0518d:
    jmp 0x5ced ; 0518D E95D0B
    %if ($ - %%insn_0518d) > 3
        %error "LONG_0518D"
    %endif
    times 3 - ($ - %%insn_0518d) db 0
    %if ($ - %%fragment_start) != 313
        %error "SIZE_05057"
    %endif
%endmacro

%macro emit_func_05057_part_01 0
    %%fragment_start:
    %%insn_05192:
    cmp al,0x1a ; 05192 3C1A
    %if ($ - %%insn_05192) > 2
        %error "LONG_05192"
    %endif
    times 2 - ($ - %%insn_05192) db 0
    %%insn_05194:
    jnz short 0x519e ; 05194 7508
    %if ($ - %%insn_05194) > 2
        %error "LONG_05194"
    %endif
    times 2 - ($ - %%insn_05194) db 0
    %%insn_05196:
    mov ax,0x8bd ; 05196 B8BD08
    %if ($ - %%insn_05196) > 3
        %error "LONG_05196"
    %endif
    times 3 - ($ - %%insn_05196) db 0
    %%insn_05199:
    jmp 0x5ced ; 05199 E9510B
    %if ($ - %%insn_05199) > 3
        %error "LONG_05199"
    %endif
    times 3 - ($ - %%insn_05199) db 0
    %if ($ - %%fragment_start) != 10
        %error "SIZE_05192"
    %endif
%endmacro

%macro emit_func_05057_part_02 0
    %%fragment_start:
    %%insn_0519e:
    cmp al,0xd ; 0519E 3C0D
    %if ($ - %%insn_0519e) > 2
        %error "LONG_0519E"
    %endif
    times 2 - ($ - %%insn_0519e) db 0
    %%insn_051a0:
    jnz short 0x51a6 ; 051A0 7504
    %if ($ - %%insn_051a0) > 2
        %error "LONG_051A0"
    %endif
    times 2 - ($ - %%insn_051a0) db 0
    %%insn_051a2:
    jmp short 0x5185 ; 051A2 EBE1
    %if ($ - %%insn_051a2) > 2
        %error "LONG_051A2"
    %endif
    times 2 - ($ - %%insn_051a2) db 0
    %if ($ - %%fragment_start) != 6
        %error "SIZE_0519E"
    %endif
%endmacro

%macro emit_func_05057_part_03 0
    %%fragment_start:
    %%insn_051a6:
    cmp al,0xa ; 051A6 3C0A
    %if ($ - %%insn_051a6) > 2
        %error "LONG_051A6"
    %endif
    times 2 - ($ - %%insn_051a6) db 0
    %%insn_051a8:
    jnz short 0x51ae ; 051A8 7504
    %if ($ - %%insn_051a8) > 2
        %error "LONG_051A8"
    %endif
    times 2 - ($ - %%insn_051a8) db 0
    %%insn_051aa:
    jmp short 0x5185 ; 051AA EBD9
    %if ($ - %%insn_051aa) > 2
        %error "LONG_051AA"
    %endif
    times 2 - ($ - %%insn_051aa) db 0
    %if ($ - %%fragment_start) != 6
        %error "SIZE_051A6"
    %endif
%endmacro

%macro emit_func_05057_part_04 0
    %%fragment_start:
    %%insn_051ae:
    dec si ; 051AE 4E
    %if ($ - %%insn_051ae) > 1
        %error "LONG_051AE"
    %endif
    times 1 - ($ - %%insn_051ae) db 0
    %%insn_051af:
    jmp 0x50d6 ; 051AF E924FF
    %if ($ - %%insn_051af) > 3
        %error "LONG_051AF"
    %endif
    times 3 - ($ - %%insn_051af) db 0
    %%insn_051b2:
    mov byte [bp-0x2608],0x0 ; 051B2 C686F8D900
    %if ($ - %%insn_051b2) > 5
        %error "LONG_051B2"
    %endif
    times 5 - ($ - %%insn_051b2) db 0
    %%insn_051b7:
    mov es,word [bp-0x2605] ; 051B7 8E86FBD9
    %if ($ - %%insn_051b7) > 4
        %error "LONG_051B7"
    %endif
    times 4 - ($ - %%insn_051b7) db 0
    %%insn_051bb:
    call 0x5e8d ; 051BB E8CF0C
    %if ($ - %%insn_051bb) > 3
        %error "LONG_051BB"
    %endif
    times 3 - ($ - %%insn_051bb) db 0
    %%insn_051be:
    mov word [bp-0x2605],0x0 ; 051BE C786FBD90000
    %if ($ - %%insn_051be) > 6
        %error "LONG_051BE"
    %endif
    times 6 - ($ - %%insn_051be) db 0
    %%insn_051c4:
    ret ; 051C4 C3
    %if ($ - %%insn_051c4) > 1
        %error "LONG_051C4"
    %endif
    times 1 - ($ - %%insn_051c4) db 0
    %if ($ - %%fragment_start) != 23
        %error "SIZE_051AE"
    %endif
%endmacro
