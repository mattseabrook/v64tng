; Linear entry 000D1 (1000:00d1)
; Ghidra working symbol: FUN_1000_00d1
; Verified ?, empty-tail, ~name, and loose-name.vdx startup path.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_standalone_vdx_or_diagnostics_part_00 0
    %%fragment_start:
standalone_vdx_or_diagnostics:
    %%insn_000d1:
    mov ds,word [bp-0x2aae] ; 000D1 8E9E52D5
    %if ($ - %%insn_000d1) > 4
        %error "LONG_000D1"
    %endif
    times 4 - ($ - %%insn_000d1) db 0
    %%insn_000d5:
    cmp word [bp-0x30d2],0x0 ; 000D5 83BE2ECF00
    %if ($ - %%insn_000d5) > 5
        %error "LONG_000D5"
    %endif
    times 5 - ($ - %%insn_000d5) db 0
    %%insn_000da:
    jnz short 0x132 ; 000DA 7556
    %if ($ - %%insn_000da) > 2
        %error "LONG_000DA"
    %endif
    times 2 - ($ - %%insn_000da) db 0
    %%insn_000dc:
    cmp byte [es:si],0x3f ; 000DC 26803C3F
    %if ($ - %%insn_000dc) > 4
        %error "LONG_000DC"
    %endif
    times 4 - ($ - %%insn_000dc) db 0
    %%insn_000e0:
    jnz short 0xed ; 000E0 750B
    %if ($ - %%insn_000e0) > 2
        %error "LONG_000E0"
    %endif
    times 2 - ($ - %%insn_000e0) db 0
    %%insn_000e2:
    call 0x2f84 ; 000E2 E89F2E
    %if ($ - %%insn_000e2) > 3
        %error "LONG_000E2"
    %endif
    times 3 - ($ - %%insn_000e2) db 0
    %%insn_000e5:
    call 0x3590 ; 000E5 E8A834
    %if ($ - %%insn_000e5) > 3
        %error "LONG_000E5"
    %endif
    times 3 - ($ - %%insn_000e5) db 0
    db 0x33, 0xC0 ; 000E8 33C0 | xor ax,ax | encoding preserved
    %%insn_000ea:
    jmp 0x5ced ; 000EA E9005C
    %if ($ - %%insn_000ea) > 3
        %error "LONG_000EA"
    %endif
    times 3 - ($ - %%insn_000ea) db 0
    %%insn_000ed:
    cmp byte [es:si],0x0 ; 000ED 26803C00
    %if ($ - %%insn_000ed) > 4
        %error "LONG_000ED"
    %endif
    times 4 - ($ - %%insn_000ed) db 0
    %%insn_000f1:
    jz short 0xe2 ; 000F1 74EF
    %if ($ - %%insn_000f1) > 2
        %error "LONG_000F1"
    %endif
    times 2 - ($ - %%insn_000f1) db 0
    %%insn_000f3:
    cmp byte [es:si],0x7e ; 000F3 26803C7E
    %if ($ - %%insn_000f3) > 4
        %error "LONG_000F3"
    %endif
    times 4 - ($ - %%insn_000f3) db 0
    %%insn_000f7:
    jnz short 0xfe ; 000F7 7505
    %if ($ - %%insn_000f7) > 2
        %error "LONG_000F7"
    %endif
    times 2 - ($ - %%insn_000f7) db 0
    %%insn_000f9:
    dec word [0xcf22] ; 000F9 FF0E22CF
    %if ($ - %%insn_000f9) > 4
        %error "LONG_000F9"
    %endif
    times 4 - ($ - %%insn_000f9) db 0
    %%insn_000fd:
    inc si ; 000FD 46
    %if ($ - %%insn_000fd) > 1
        %error "LONG_000FD"
    %endif
    times 1 - ($ - %%insn_000fd) db 0
    db 0x33, 0xED ; 000FE 33ED | xor bp,bp | encoding preserved
    db 0x32, 0xE4 ; 00100 32E4 | xor ah,ah | encoding preserved
    %%insn_00102:
    mov bx,0xcf68 ; 00102 BB68CF
    %if ($ - %%insn_00102) > 3
        %error "LONG_00102"
    %endif
    times 3 - ($ - %%insn_00102) db 0
    %%insn_00105:
    mov al,[es:si] ; 00105 268A04
    %if ($ - %%insn_00105) > 3
        %error "LONG_00105"
    %endif
    times 3 - ($ - %%insn_00105) db 0
    %%insn_00108:
    cmp al,0x2e ; 00108 3C2E
    %if ($ - %%insn_00108) > 2
        %error "LONG_00108"
    %endif
    times 2 - ($ - %%insn_00108) db 0
    %%insn_0010a:
    jz short 0x11f ; 0010A 7413
    %if ($ - %%insn_0010a) > 2
        %error "LONG_0010A"
    %endif
    times 2 - ($ - %%insn_0010a) db 0
    %%insn_0010c:
    cmp al,0xd ; 0010C 3C0D
    %if ($ - %%insn_0010c) > 2
        %error "LONG_0010C"
    %endif
    times 2 - ($ - %%insn_0010c) db 0
    %%insn_0010e:
    jz short 0x11f ; 0010E 740F
    %if ($ - %%insn_0010e) > 2
        %error "LONG_0010E"
    %endif
    times 2 - ($ - %%insn_0010e) db 0
    db 0x22, 0xC0 ; 00110 22C0 | and al,al | encoding preserved
    %%insn_00112:
    jz short 0x11f ; 00112 740B
    %if ($ - %%insn_00112) > 2
        %error "LONG_00112"
    %endif
    times 2 - ($ - %%insn_00112) db 0
    %%insn_00114:
    mov [bx],al ; 00114 8807
    %if ($ - %%insn_00114) > 2
        %error "LONG_00114"
    %endif
    times 2 - ($ - %%insn_00114) db 0
    %%insn_00116:
    inc si ; 00116 46
    %if ($ - %%insn_00116) > 1
        %error "LONG_00116"
    %endif
    times 1 - ($ - %%insn_00116) db 0
    %%insn_00117:
    inc bx ; 00117 43
    %if ($ - %%insn_00117) > 1
        %error "LONG_00117"
    %endif
    times 1 - ($ - %%insn_00117) db 0
    %%insn_00118:
    inc ah ; 00118 FEC4
    %if ($ - %%insn_00118) > 2
        %error "LONG_00118"
    %endif
    times 2 - ($ - %%insn_00118) db 0
    %%insn_0011a:
    cmp ah,0x40 ; 0011A 80FC40
    %if ($ - %%insn_0011a) > 3
        %error "LONG_0011A"
    %endif
    times 3 - ($ - %%insn_0011a) db 0
    %%insn_0011d:
    jc short 0x105 ; 0011D 72E6
    %if ($ - %%insn_0011d) > 2
        %error "LONG_0011D"
    %endif
    times 2 - ($ - %%insn_0011d) db 0
    %%insn_0011f:
    mov byte [bx],0x2e ; 0011F C6072E
    %if ($ - %%insn_0011f) > 3
        %error "LONG_0011F"
    %endif
    times 3 - ($ - %%insn_0011f) db 0
    %%insn_00122:
    mov byte [bx+0x1],0x76 ; 00122 C6470176
    %if ($ - %%insn_00122) > 4
        %error "LONG_00122"
    %endif
    times 4 - ($ - %%insn_00122) db 0
    %%insn_00126:
    mov byte [bx+0x2],0x64 ; 00126 C6470264
    %if ($ - %%insn_00126) > 4
        %error "LONG_00126"
    %endif
    times 4 - ($ - %%insn_00126) db 0
    %%insn_0012a:
    mov byte [bx+0x3],0x78 ; 0012A C6470378
    %if ($ - %%insn_0012a) > 4
        %error "LONG_0012A"
    %endif
    times 4 - ($ - %%insn_0012a) db 0
    %%insn_0012e:
    mov byte [bx+0x4],0x0 ; 0012E C6470400
    %if ($ - %%insn_0012e) > 4
        %error "LONG_0012E"
    %endif
    times 4 - ($ - %%insn_0012e) db 0
    %%insn_00132:
    call 0x1e1 ; 00132 E8AC00
    %if ($ - %%insn_00132) > 3
        %error "LONG_00132"
    %endif
    times 3 - ($ - %%insn_00132) db 0
    db 0x3D, 0xFF, 0xFF ; 00135 3DFFFF | cmp ax,0xffff | encoding preserved
    %%insn_00138:
    jnz short 0x140 ; 00138 7506
    %if ($ - %%insn_00138) > 2
        %error "LONG_00138"
    %endif
    times 2 - ($ - %%insn_00138) db 0
    %%insn_0013a:
    mov ax,0x2 ; 0013A B80200
    %if ($ - %%insn_0013a) > 3
        %error "LONG_0013A"
    %endif
    times 3 - ($ - %%insn_0013a) db 0
    %%insn_0013d:
    jmp 0x5ced ; 0013D E9AD5B
    %if ($ - %%insn_0013d) > 3
        %error "LONG_0013D"
    %endif
    times 3 - ($ - %%insn_0013d) db 0
    %%insn_00140:
    cmp word [bp-0x30ac],0x0 ; 00140 83BE54CF00
    %if ($ - %%insn_00140) > 5
        %error "LONG_00140"
    %endif
    times 5 - ($ - %%insn_00140) db 0
    %%insn_00145:
    jnz short 0x19e ; 00145 7557
    %if ($ - %%insn_00145) > 2
        %error "LONG_00145"
    %endif
    times 2 - ($ - %%insn_00145) db 0
    %%insn_00147:
    call 0x2f84 ; 00147 E83A2E
    %if ($ - %%insn_00147) > 3
        %error "LONG_00147"
    %endif
    times 3 - ($ - %%insn_00147) db 0
    db 0x23, 0xC0 ; 0014A 23C0 | and ax,ax | encoding preserved
    %%insn_0014c:
    jnz short 0x150 ; 0014C 7502
    %if ($ - %%insn_0014c) > 2
        %error "LONG_0014C"
    %endif
    times 2 - ($ - %%insn_0014c) db 0
    %%insn_0014e:
    jmp short 0xe5 ; 0014E EB95
    %if ($ - %%insn_0014e) > 2
        %error "LONG_0014E"
    %endif
    times 2 - ($ - %%insn_0014e) db 0
    %%insn_00150:
    cmp word [bp-0x2992],0x0 ; 00150 83BE6ED600
    %if ($ - %%insn_00150) > 5
        %error "LONG_00150"
    %endif
    times 5 - ($ - %%insn_00150) db 0
    %%insn_00155:
    jnz short 0x15d ; 00155 7506
    %if ($ - %%insn_00155) > 2
        %error "LONG_00155"
    %endif
    times 2 - ($ - %%insn_00155) db 0
    %%insn_00157:
    mov ax,0xb4 ; 00157 B8B400
    %if ($ - %%insn_00157) > 3
        %error "LONG_00157"
    %endif
    times 3 - ($ - %%insn_00157) db 0
    %%insn_0015a:
    jmp 0x5ced ; 0015A E9905B
    %if ($ - %%insn_0015a) > 3
        %error "LONG_0015A"
    %endif
    times 3 - ($ - %%insn_0015a) db 0
    %%insn_0015d:
    cmp word [bp-0x298e],0x400 ; 0015D 81BE72D60004
    %if ($ - %%insn_0015d) > 6
        %error "LONG_0015D"
    %endif
    times 6 - ($ - %%insn_0015d) db 0
    %%insn_00163:
    jnc short 0x16b ; 00163 7306
    %if ($ - %%insn_00163) > 2
        %error "LONG_00163"
    %endif
    times 2 - ($ - %%insn_00163) db 0
    %%insn_00165:
    mov ax,0xf0 ; 00165 B8F000
    %if ($ - %%insn_00165) > 3
        %error "LONG_00165"
    %endif
    times 3 - ($ - %%insn_00165) db 0
    %%insn_00168:
    jmp 0x5ced ; 00168 E9825B
    %if ($ - %%insn_00168) > 3
        %error "LONG_00168"
    %endif
    times 3 - ($ - %%insn_00168) db 0
    %%insn_0016b:
    mov ah,0x9 ; 0016B B409
    %if ($ - %%insn_0016b) > 2
        %error "LONG_0016B"
    %endif
    times 2 - ($ - %%insn_0016b) db 0
    %%insn_0016d:
    mov dx,0x200 ; 0016D BA0002
    %if ($ - %%insn_0016d) > 3
        %error "LONG_0016D"
    %endif
    times 3 - ($ - %%insn_0016d) db 0
    %%insn_00170:
    call word far [cs:0x3688] ; 00170 2EFF1E8836
    %if ($ - %%insn_00170) > 5
        %error "LONG_00170"
    %endif
    times 5 - ($ - %%insn_00170) db 0
    db 0x23, 0xC0 ; 00175 23C0 | and ax,ax | encoding preserved
    %%insn_00177:
    jnz short 0x17f ; 00177 7506
    %if ($ - %%insn_00177) > 2
        %error "LONG_00177"
    %endif
    times 2 - ($ - %%insn_00177) db 0
    %%insn_00179:
    mov ax,0xb4 ; 00179 B8B400
    %if ($ - %%insn_00179) > 3
        %error "LONG_00179"
    %endif
    times 3 - ($ - %%insn_00179) db 0
    %%insn_0017c:
    jmp 0x5ced ; 0017C E96E5B
    %if ($ - %%insn_0017c) > 3
        %error "LONG_0017C"
    %endif
    times 3 - ($ - %%insn_0017c) db 0
    %%insn_0017f:
    sub word [bp-0x298e],0x200 ; 0017F 81AE72D60002
    %if ($ - %%insn_0017f) > 6
        %error "LONG_0017F"
    %endif
    times 6 - ($ - %%insn_0017f) db 0
    %%insn_00185:
    mov [bp-0x2ab0],dx ; 00185 899650D5
    %if ($ - %%insn_00185) > 4
        %error "LONG_00185"
    %endif
    times 4 - ($ - %%insn_00185) db 0
    %%insn_00189:
    cmp word [bp-0x30de],0x0 ; 00189 83BE22CF00
    %if ($ - %%insn_00189) > 5
        %error "LONG_00189"
    %endif
    times 5 - ($ - %%insn_00189) db 0
    %%insn_0018e:
    jnz short 0x195 ; 0018E 7505
    %if ($ - %%insn_0018e) > 2
        %error "LONG_0018E"
    %endif
    times 2 - ($ - %%insn_0018e) db 0
    %%insn_00190:
    call 0x34a5 ; 00190 E81233
    %if ($ - %%insn_00190) > 3
        %error "LONG_00190"
    %endif
    times 3 - ($ - %%insn_00190) db 0
    %%insn_00193:
    jmp short 0x19a ; 00193 EB05
    %if ($ - %%insn_00193) > 2
        %error "LONG_00193"
    %endif
    times 2 - ($ - %%insn_00193) db 0
    %%insn_00195:
    mov ax,0x13 ; 00195 B81300
    %if ($ - %%insn_00195) > 3
        %error "LONG_00195"
    %endif
    times 3 - ($ - %%insn_00195) db 0
    %%insn_00198:
    int byte 0x10 ; 00198 CD10
    %if ($ - %%insn_00198) > 2
        %error "LONG_00198"
    %endif
    times 2 - ($ - %%insn_00198) db 0
    %%insn_0019a:
    inc word [bp-0x30ac] ; 0019A FF8654CF
    %if ($ - %%insn_0019a) > 4
        %error "LONG_0019A"
    %endif
    times 4 - ($ - %%insn_0019a) db 0
    %%insn_0019e:
    mov ax,[bp-0x2aaa] ; 0019E 8B8656D5
    %if ($ - %%insn_0019e) > 4
        %error "LONG_0019E"
    %endif
    times 4 - ($ - %%insn_0019e) db 0
    %%insn_001a2:
    mov ds,ax ; 001A2 8ED8
    %if ($ - %%insn_001a2) > 2
        %error "LONG_001A2"
    %endif
    times 2 - ($ - %%insn_001a2) db 0
    %%insn_001a4:
    mov es,ax ; 001A4 8EC0
    %if ($ - %%insn_001a4) > 2
        %error "LONG_001A4"
    %endif
    times 2 - ($ - %%insn_001a4) db 0
    %%insn_001a6:
    mov cx,0x8000 ; 001A6 B90080
    %if ($ - %%insn_001a6) > 3
        %error "LONG_001A6"
    %endif
    times 3 - ($ - %%insn_001a6) db 0
    db 0x33, 0xFF ; 001A9 33FF | xor di,di | encoding preserved
    db 0x33, 0xC0 ; 001AB 33C0 | xor ax,ax | encoding preserved
    %%insn_001ad:
    rep stosw ; 001AD F3AB
    %if ($ - %%insn_001ad) > 2
        %error "LONG_001AD"
    %endif
    times 2 - ($ - %%insn_001ad) db 0
    %%insn_001af:
    mov es,word [bp-0x2aa8] ; 001AF 8E8658D5
    %if ($ - %%insn_001af) > 4
        %error "LONG_001AF"
    %endif
    times 4 - ($ - %%insn_001af) db 0
    %%insn_001b3:
    mov dword [bp-0x30aa],0x0 ; 001B3 66C78656CF00000000
    %if ($ - %%insn_001b3) > 9
        %error "LONG_001B3"
    %endif
    times 9 - ($ - %%insn_001b3) db 0
    %%insn_001bc:
    mov word [bp-0x30a6],0x0 ; 001BC C7865ACF0000
    %if ($ - %%insn_001bc) > 6
        %error "LONG_001BC"
    %endif
    times 6 - ($ - %%insn_001bc) db 0
    %%insn_001c2:
    call 0x2c0 ; 001C2 E8FB00
    %if ($ - %%insn_001c2) > 3
        %error "LONG_001C2"
    %endif
    times 3 - ($ - %%insn_001c2) db 0
    db 0x3D, 0xFF, 0xFF ; 001C5 3DFFFF | cmp ax,0xffff | encoding preserved
    %%insn_001c8:
    jnz short 0x1d6 ; 001C8 750C
    %if ($ - %%insn_001c8) > 2
        %error "LONG_001C8"
    %endif
    times 2 - ($ - %%insn_001c8) db 0
    %%insn_001ca:
    call 0x20a ; 001CA E83D00
    %if ($ - %%insn_001ca) > 3
        %error "LONG_001CA"
    %endif
    times 3 - ($ - %%insn_001ca) db 0
    %%insn_001cd:
    call 0x358a ; 001CD E8BA33
    %if ($ - %%insn_001cd) > 3
        %error "LONG_001CD"
    %endif
    times 3 - ($ - %%insn_001cd) db 0
    %%insn_001d0:
    mov ax,0x13 ; 001D0 B81300
    %if ($ - %%insn_001d0) > 3
        %error "LONG_001D0"
    %endif
    times 3 - ($ - %%insn_001d0) db 0
    %%insn_001d3:
    jmp 0x5ced ; 001D3 E9175B
    %if ($ - %%insn_001d3) > 3
        %error "LONG_001D3"
    %endif
    times 3 - ($ - %%insn_001d3) db 0
    %%insn_001d6:
    call 0x30e ; 001D6 E83501
    %if ($ - %%insn_001d6) > 3
        %error "LONG_001D6"
    %endif
    times 3 - ($ - %%insn_001d6) db 0
    %%insn_001d9:
    call 0x20a ; 001D9 E82E00
    %if ($ - %%insn_001d9) > 3
        %error "LONG_001D9"
    %endif
    times 3 - ($ - %%insn_001d9) db 0
    %%insn_001dc:
    mov ds,word [bp-0x2aae] ; 001DC 8E9E52D5
    %if ($ - %%insn_001dc) > 4
        %error "LONG_001DC"
    %endif
    times 4 - ($ - %%insn_001dc) db 0
    %%insn_001e0:
    ret ; 001E0 C3
    %if ($ - %%insn_001e0) > 1
        %error "LONG_001E0"
    %endif
    times 1 - ($ - %%insn_001e0) db 0
    %if ($ - %%fragment_start) != 272
        %error "SIZE_000D1"
    %endif
%endmacro
