; PE virtual entry 00405CBB
; Ghidra working symbol: FUN_00405cbb
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00405cbb_part_00 0
    %%fragment_start:
func_00405cbb:
    %%insn_00405cbb:
    push ebp ; 00405CBB 55
    %if ($ - %%insn_00405cbb) > 1
        %error "LONG_00405CBB"
    %endif
    times 1 - ($ - %%insn_00405cbb) db 0
    db 0x8B, 0xEC ; 00405CBC 8BEC | mov ebp,esp | encoding preserved
    %%insn_00405cbe:
    sub esp,0x18 ; 00405CBE 83EC18
    %if ($ - %%insn_00405cbe) > 3
        %error "LONG_00405CBE"
    %endif
    times 3 - ($ - %%insn_00405cbe) db 0
    %%insn_00405cc1:
    call 0x405b6f ; 00405CC1 E8A9FEFFFF
    %if ($ - %%insn_00405cc1) > 5
        %error "LONG_00405CC1"
    %endif
    times 5 - ($ - %%insn_00405cc1) db 0
    %%insn_00405cc6:
    call 0x404ebb ; 00405CC6 E8F0F1FFFF
    %if ($ - %%insn_00405cc6) > 5
        %error "LONG_00405CC6"
    %endif
    times 5 - ($ - %%insn_00405cc6) db 0
    %%insn_00405ccb:
    mov al,[ebp+0xc] ; 00405CCB 8A450C
    %if ($ - %%insn_00405ccb) > 3
        %error "LONG_00405CCB"
    %endif
    times 3 - ($ - %%insn_00405ccb) db 0
    %%insn_00405cce:
    mov [ebp-0x18],al ; 00405CCE 8845E8
    %if ($ - %%insn_00405cce) > 3
        %error "LONG_00405CCE"
    %endif
    times 3 - ($ - %%insn_00405cce) db 0
    %%insn_00405cd1:
    mov word [ebp-0x10],0x0 ; 00405CD1 66C745F00000
    %if ($ - %%insn_00405cd1) > 6
        %error "LONG_00405CD1"
    %endif
    times 6 - ($ - %%insn_00405cd1) db 0
    %%insn_00405cd7:
    jmp short 0x405ce5 ; 00405CD7 EB0C
    %if ($ - %%insn_00405cd7) > 2
        %error "LONG_00405CD7"
    %endif
    times 2 - ($ - %%insn_00405cd7) db 0
    %%insn_00405cd9:
    mov cx,[ebp-0x10] ; 00405CD9 668B4DF0
    %if ($ - %%insn_00405cd9) > 4
        %error "LONG_00405CD9"
    %endif
    times 4 - ($ - %%insn_00405cd9) db 0
    %%insn_00405cdd:
    add cx,0x1 ; 00405CDD 6683C101
    %if ($ - %%insn_00405cdd) > 4
        %error "LONG_00405CDD"
    %endif
    times 4 - ($ - %%insn_00405cdd) db 0
    %%insn_00405ce1:
    mov [ebp-0x10],cx ; 00405CE1 66894DF0
    %if ($ - %%insn_00405ce1) > 4
        %error "LONG_00405CE1"
    %endif
    times 4 - ($ - %%insn_00405ce1) db 0
    %%insn_00405ce5:
    movsx edx,word [ebp-0x10] ; 00405CE5 0FBF55F0
    %if ($ - %%insn_00405ce5) > 4
        %error "LONG_00405CE5"
    %endif
    times 4 - ($ - %%insn_00405ce5) db 0
    %%insn_00405ce9:
    cmp edx,0x4 ; 00405CE9 83FA04
    %if ($ - %%insn_00405ce9) > 3
        %error "LONG_00405CE9"
    %endif
    times 3 - ($ - %%insn_00405ce9) db 0
    %%insn_00405cec:
    jnl 0x406002 ; 00405CEC 0F8D10030000
    %if ($ - %%insn_00405cec) > 6
        %error "LONG_00405CEC"
    %endif
    times 6 - ($ - %%insn_00405cec) db 0
    %%insn_00405cf2:
    mov al,[ebp-0x18] ; 00405CF2 8A45E8
    %if ($ - %%insn_00405cf2) > 3
        %error "LONG_00405CF2"
    %endif
    times 3 - ($ - %%insn_00405cf2) db 0
    %%insn_00405cf5:
    add al,0x1 ; 00405CF5 0401
    %if ($ - %%insn_00405cf5) > 2
        %error "LONG_00405CF5"
    %endif
    times 2 - ($ - %%insn_00405cf5) db 0
    %%insn_00405cf7:
    mov [ebp-0x18],al ; 00405CF7 8845E8
    %if ($ - %%insn_00405cf7) > 3
        %error "LONG_00405CF7"
    %endif
    times 3 - ($ - %%insn_00405cf7) db 0
    %%insn_00405cfa:
    movsx ecx,byte [ebp-0x18] ; 00405CFA 0FBE4DE8
    %if ($ - %%insn_00405cfa) > 4
        %error "LONG_00405CFA"
    %endif
    times 4 - ($ - %%insn_00405cfa) db 0
    %%insn_00405cfe:
    cmp ecx,0x4 ; 00405CFE 83F904
    %if ($ - %%insn_00405cfe) > 3
        %error "LONG_00405CFE"
    %endif
    times 3 - ($ - %%insn_00405cfe) db 0
    %%insn_00405d01:
    jng short 0x405d07 ; 00405D01 7E04
    %if ($ - %%insn_00405d01) > 2
        %error "LONG_00405D01"
    %endif
    times 2 - ($ - %%insn_00405d01) db 0
    %%insn_00405d03:
    mov byte [ebp-0x18],0x1 ; 00405D03 C645E801
    %if ($ - %%insn_00405d03) > 4
        %error "LONG_00405D03"
    %endif
    times 4 - ($ - %%insn_00405d03) db 0
    %%insn_00405d07:
    movsx edx,byte [ebp-0x18] ; 00405D07 0FBE55E8
    %if ($ - %%insn_00405d07) > 4
        %error "LONG_00405D07"
    %endif
    times 4 - ($ - %%insn_00405d07) db 0
    %%insn_00405d0b:
    movsx eax,byte [edx+0x4215b0] ; 00405D0B 0FBE82B0154200
    %if ($ - %%insn_00405d0b) > 7
        %error "LONG_00405D0B"
    %endif
    times 7 - ($ - %%insn_00405d0b) db 0
    %%insn_00405d12:
    test eax,eax ; 00405D12 85C0
    %if ($ - %%insn_00405d12) > 2
        %error "LONG_00405D12"
    %endif
    times 2 - ($ - %%insn_00405d12) db 0
    %%insn_00405d14:
    jz 0x405ffd ; 00405D14 0F84E3020000
    %if ($ - %%insn_00405d14) > 6
        %error "LONG_00405D14"
    %endif
    times 6 - ($ - %%insn_00405d14) db 0
    %%insn_00405d1a:
    movsx ecx,byte [ebp-0x18] ; 00405D1A 0FBE4DE8
    %if ($ - %%insn_00405d1a) > 4
        %error "LONG_00405D1A"
    %endif
    times 4 - ($ - %%insn_00405d1a) db 0
    %%insn_00405d1e:
    movsx edx,byte [ecx+0x4215b0] ; 00405D1E 0FBE91B0154200
    %if ($ - %%insn_00405d1e) > 7
        %error "LONG_00405D1E"
    %endif
    times 7 - ($ - %%insn_00405d1e) db 0
    %%insn_00405d25:
    movsx eax,byte [0x4215b1] ; 00405D25 0FBE05B1154200
    %if ($ - %%insn_00405d25) > 7
        %error "LONG_00405D25"
    %endif
    times 7 - ($ - %%insn_00405d25) db 0
    %%insn_00405d2c:
    mov ecx,0x31 ; 00405D2C B931000000
    %if ($ - %%insn_00405d2c) > 5
        %error "LONG_00405D2C"
    %endif
    times 5 - ($ - %%insn_00405d2c) db 0
    db 0x2B, 0xC8 ; 00405D31 2BC8 | sub ecx,eax | encoding preserved
    %%insn_00405d33:
    movsx eax,byte [0x4215b2] ; 00405D33 0FBE05B2154200
    %if ($ - %%insn_00405d33) > 7
        %error "LONG_00405D33"
    %endif
    times 7 - ($ - %%insn_00405d33) db 0
    db 0x2B, 0xC8 ; 00405D3A 2BC8 | sub ecx,eax | encoding preserved
    %%insn_00405d3c:
    movsx eax,byte [0x4215b3] ; 00405D3C 0FBE05B3154200
    %if ($ - %%insn_00405d3c) > 7
        %error "LONG_00405D3C"
    %endif
    times 7 - ($ - %%insn_00405d3c) db 0
    db 0x2B, 0xC8 ; 00405D43 2BC8 | sub ecx,eax | encoding preserved
    %%insn_00405d45:
    movsx eax,byte [0x4215b4] ; 00405D45 0FBE05B4154200
    %if ($ - %%insn_00405d45) > 7
        %error "LONG_00405D45"
    %endif
    times 7 - ($ - %%insn_00405d45) db 0
    db 0x2B, 0xC8 ; 00405D4C 2BC8 | sub ecx,eax | encoding preserved
    db 0x3B, 0xD1 ; 00405D4E 3BD1 | cmp edx,ecx | encoding preserved
    %%insn_00405d50:
    jnl short 0x405d70 ; 00405D50 7D1E
    %if ($ - %%insn_00405d50) > 2
        %error "LONG_00405D50"
    %endif
    times 2 - ($ - %%insn_00405d50) db 0
    %%insn_00405d52:
    call 0x405045 ; 00405D52 E8EEF2FFFF
    %if ($ - %%insn_00405d52) > 5
        %error "LONG_00405D52"
    %endif
    times 5 - ($ - %%insn_00405d52) db 0
    %%insn_00405d57:
    mov dword [ebp-0x14],0x4050af ; 00405D57 C745ECAF504000
    %if ($ - %%insn_00405d57) > 7
        %error "LONG_00405D57"
    %endif
    times 7 - ($ - %%insn_00405d57) db 0
    %%insn_00405d5e:
    movsx ecx,word [ebp+0x10] ; 00405D5E 0FBF4D10
    %if ($ - %%insn_00405d5e) > 4
        %error "LONG_00405D5E"
    %endif
    times 4 - ($ - %%insn_00405d5e) db 0
    %%insn_00405d62:
    cmp ecx,0x1 ; 00405D62 83F901
    %if ($ - %%insn_00405d62) > 3
        %error "LONG_00405D62"
    %endif
    times 3 - ($ - %%insn_00405d62) db 0
    %%insn_00405d65:
    jnz short 0x405d6e ; 00405D65 7507
    %if ($ - %%insn_00405d65) > 2
        %error "LONG_00405D65"
    %endif
    times 2 - ($ - %%insn_00405d65) db 0
    %%insn_00405d67:
    mov dword [ebp-0x14],0x405291 ; 00405D67 C745EC91524000
    %if ($ - %%insn_00405d67) > 7
        %error "LONG_00405D67"
    %endif
    times 7 - ($ - %%insn_00405d67) db 0
    %%insn_00405d6e:
    jmp short 0x405d7c ; 00405D6E EB0C
    %if ($ - %%insn_00405d6e) > 2
        %error "LONG_00405D6E"
    %endif
    times 2 - ($ - %%insn_00405d6e) db 0
    %%insn_00405d70:
    call 0x405095 ; 00405D70 E820F3FFFF
    %if ($ - %%insn_00405d70) > 5
        %error "LONG_00405D70"
    %endif
    times 5 - ($ - %%insn_00405d70) db 0
    %%insn_00405d75:
    mov dword [ebp-0x14],0x4054b4 ; 00405D75 C745ECB4544000
    %if ($ - %%insn_00405d75) > 7
        %error "LONG_00405D75"
    %endif
    times 7 - ($ - %%insn_00405d75) db 0
    %%insn_00405d7c:
    mov dl,[ebp-0x18] ; 00405D7C 8A55E8
    %if ($ - %%insn_00405d7c) > 3
        %error "LONG_00405D7C"
    %endif
    times 3 - ($ - %%insn_00405d7c) db 0
    %%insn_00405d7f:
    push edx ; 00405D7F 52
    %if ($ - %%insn_00405d7f) > 1
        %error "LONG_00405D7F"
    %endif
    times 1 - ($ - %%insn_00405d7f) db 0
    %%insn_00405d80:
    call dword near [ebp-0x14] ; 00405D80 FF55EC
    %if ($ - %%insn_00405d80) > 3
        %error "LONG_00405D80"
    %endif
    times 3 - ($ - %%insn_00405d80) db 0
    %%insn_00405d83:
    add esp,0x4 ; 00405D83 83C404
    %if ($ - %%insn_00405d83) > 3
        %error "LONG_00405D83"
    %endif
    times 3 - ($ - %%insn_00405d83) db 0
    db 0x0F, 0xBF, 0xC0 ; 00405D86 0FBFC0 | movsx eax,ax | encoding preserved
    %%insn_00405d89:
    test eax,eax ; 00405D89 85C0
    %if ($ - %%insn_00405d89) > 2
        %error "LONG_00405D89"
    %endif
    times 2 - ($ - %%insn_00405d89) db 0
    %%insn_00405d8b:
    jz 0x405ffd ; 00405D8B 0F846C020000
    %if ($ - %%insn_00405d8b) > 6
        %error "LONG_00405D8B"
    %endif
    times 6 - ($ - %%insn_00405d8b) db 0
    %%insn_00405d91:
    movsx ecx,byte [0x41f458] ; 00405D91 0FBE0D58F44100
    %if ($ - %%insn_00405d91) > 7
        %error "LONG_00405D91"
    %endif
    times 7 - ($ - %%insn_00405d91) db 0
    %%insn_00405d98:
    test ecx,ecx ; 00405D98 85C9
    %if ($ - %%insn_00405d98) > 2
        %error "LONG_00405D98"
    %endif
    times 2 - ($ - %%insn_00405d98) db 0
    %%insn_00405d9a:
    jz short 0x405dad ; 00405D9A 7411
    %if ($ - %%insn_00405d9a) > 2
        %error "LONG_00405D9A"
    %endif
    times 2 - ($ - %%insn_00405d9a) db 0
    %%insn_00405d9c:
    call 0x405bc2 ; 00405D9C E821FEFFFF
    %if ($ - %%insn_00405d9c) > 5
        %error "LONG_00405D9C"
    %endif
    times 5 - ($ - %%insn_00405d9c) db 0
    %%insn_00405da1:
    movsx eax,byte [ebp+0x14] ; 00405DA1 0FBE4514
    %if ($ - %%insn_00405da1) > 4
        %error "LONG_00405DA1"
    %endif
    times 4 - ($ - %%insn_00405da1) db 0
    %%insn_00405da5:
    add eax,0x1 ; 00405DA5 83C001
    %if ($ - %%insn_00405da5) > 3
        %error "LONG_00405DA5"
    %endif
    times 3 - ($ - %%insn_00405da5) db 0
    %%insn_00405da8:
    jmp 0x406048 ; 00405DA8 E99B020000
    %if ($ - %%insn_00405da8) > 5
        %error "LONG_00405DA8"
    %endif
    times 5 - ($ - %%insn_00405da8) db 0
    %%insn_00405dad:
    mov dx,[ebp+0x10] ; 00405DAD 668B5510
    %if ($ - %%insn_00405dad) > 4
        %error "LONG_00405DAD"
    %endif
    times 4 - ($ - %%insn_00405dad) db 0
    %%insn_00405db1:
    sub dx,0x1 ; 00405DB1 6683EA01
    %if ($ - %%insn_00405db1) > 4
        %error "LONG_00405DB1"
    %endif
    times 4 - ($ - %%insn_00405db1) db 0
    %%insn_00405db5:
    mov [ebp+0x10],dx ; 00405DB5 66895510
    %if ($ - %%insn_00405db5) > 4
        %error "LONG_00405DB5"
    %endif
    times 4 - ($ - %%insn_00405db5) db 0
    %%insn_00405db9:
    movsx eax,word [ebp+0x10] ; 00405DB9 0FBF4510
    %if ($ - %%insn_00405db9) > 4
        %error "LONG_00405DB9"
    %endif
    times 4 - ($ - %%insn_00405db9) db 0
    %%insn_00405dbd:
    test eax,eax ; 00405DBD 85C0
    %if ($ - %%insn_00405dbd) > 2
        %error "LONG_00405DBD"
    %endif
    times 2 - ($ - %%insn_00405dbd) db 0
    %%insn_00405dbf:
    jz short 0x405e1c ; 00405DBF 745B
    %if ($ - %%insn_00405dbf) > 2
        %error "LONG_00405DBF"
    %endif
    times 2 - ($ - %%insn_00405dbf) db 0
    %%insn_00405dc1:
    mov cl,[ebp-0x18] ; 00405DC1 8A4DE8
    %if ($ - %%insn_00405dc1) > 3
        %error "LONG_00405DC1"
    %endif
    times 3 - ($ - %%insn_00405dc1) db 0
    %%insn_00405dc4:
    push ecx ; 00405DC4 51
    %if ($ - %%insn_00405dc4) > 1
        %error "LONG_00405DC4"
    %endif
    times 1 - ($ - %%insn_00405dc4) db 0
    %%insn_00405dc5:
    call 0x40563c ; 00405DC5 E872F8FFFF
    %if ($ - %%insn_00405dc5) > 5
        %error "LONG_00405DC5"
    %endif
    times 5 - ($ - %%insn_00405dc5) db 0
    %%insn_00405dca:
    add esp,0x4 ; 00405DCA 83C404
    %if ($ - %%insn_00405dca) > 3
        %error "LONG_00405DCA"
    %endif
    times 3 - ($ - %%insn_00405dca) db 0
    %%insn_00405dcd:
    cmp dword [ebp-0x14],0x4054b4 ; 00405DCD 817DECB4544000
    %if ($ - %%insn_00405dcd) > 7
        %error "LONG_00405DCD"
    %endif
    times 7 - ($ - %%insn_00405dcd) db 0
    %%insn_00405dd4:
    jnz short 0x405df4 ; 00405DD4 751E
    %if ($ - %%insn_00405dd4) > 2
        %error "LONG_00405DD4"
    %endif
    times 2 - ($ - %%insn_00405dd4) db 0
    %%insn_00405dd6:
    mov dl,[ebp+0x14] ; 00405DD6 8A5514
    %if ($ - %%insn_00405dd6) > 3
        %error "LONG_00405DD6"
    %endif
    times 3 - ($ - %%insn_00405dd6) db 0
    %%insn_00405dd9:
    push edx ; 00405DD9 52
    %if ($ - %%insn_00405dd9) > 1
        %error "LONG_00405DD9"
    %endif
    times 1 - ($ - %%insn_00405dd9) db 0
    %%insn_00405dda:
    mov ax,[ebp+0x10] ; 00405DDA 668B4510
    %if ($ - %%insn_00405dda) > 4
        %error "LONG_00405DDA"
    %endif
    times 4 - ($ - %%insn_00405dda) db 0
    %%insn_00405dde:
    push eax ; 00405DDE 50
    %if ($ - %%insn_00405dde) > 1
        %error "LONG_00405DDE"
    %endif
    times 1 - ($ - %%insn_00405dde) db 0
    %%insn_00405ddf:
    mov cl,[ebp-0x18] ; 00405DDF 8A4DE8
    %if ($ - %%insn_00405ddf) > 3
        %error "LONG_00405DDF"
    %endif
    times 3 - ($ - %%insn_00405ddf) db 0
    %%insn_00405de2:
    push ecx ; 00405DE2 51
    %if ($ - %%insn_00405de2) > 1
        %error "LONG_00405DE2"
    %endif
    times 1 - ($ - %%insn_00405de2) db 0
    %%insn_00405de3:
    mov dl,[ebp+0x8] ; 00405DE3 8A5508
    %if ($ - %%insn_00405de3) > 3
        %error "LONG_00405DE3"
    %endif
    times 3 - ($ - %%insn_00405de3) db 0
    %%insn_00405de6:
    push edx ; 00405DE6 52
    %if ($ - %%insn_00405de6) > 1
        %error "LONG_00405DE6"
    %endif
    times 1 - ($ - %%insn_00405de6) db 0
    %%insn_00405de7:
    call 0x405cbb ; 00405DE7 E8CFFEFFFF
    %if ($ - %%insn_00405de7) > 5
        %error "LONG_00405DE7"
    %endif
    times 5 - ($ - %%insn_00405de7) db 0
    %%insn_00405dec:
    add esp,0x10 ; 00405DEC 83C410
    %if ($ - %%insn_00405dec) > 3
        %error "LONG_00405DEC"
    %endif
    times 3 - ($ - %%insn_00405dec) db 0
    %%insn_00405def:
    mov [ebp-0x8],al ; 00405DEF 8845F8
    %if ($ - %%insn_00405def) > 3
        %error "LONG_00405DEF"
    %endif
    times 3 - ($ - %%insn_00405def) db 0
    %%insn_00405df2:
    jmp short 0x405e1a ; 00405DF2 EB26
    %if ($ - %%insn_00405df2) > 2
        %error "LONG_00405DF2"
    %endif
    times 2 - ($ - %%insn_00405df2) db 0
    %%insn_00405df4:
    call 0x405c15 ; 00405DF4 E81CFEFFFF
    %if ($ - %%insn_00405df4) > 5
        %error "LONG_00405DF4"
    %endif
    times 5 - ($ - %%insn_00405df4) db 0
    %%insn_00405df9:
    mov al,[ebp+0x14] ; 00405DF9 8A4514
    %if ($ - %%insn_00405df9) > 3
        %error "LONG_00405DF9"
    %endif
    times 3 - ($ - %%insn_00405df9) db 0
    %%insn_00405dfc:
    push eax ; 00405DFC 50
    %if ($ - %%insn_00405dfc) > 1
        %error "LONG_00405DFC"
    %endif
    times 1 - ($ - %%insn_00405dfc) db 0
    %%insn_00405dfd:
    mov cx,[ebp+0x10] ; 00405DFD 668B4D10
    %if ($ - %%insn_00405dfd) > 4
        %error "LONG_00405DFD"
    %endif
    times 4 - ($ - %%insn_00405dfd) db 0
    %%insn_00405e01:
    push ecx ; 00405E01 51
    %if ($ - %%insn_00405e01) > 1
        %error "LONG_00405E01"
    %endif
    times 1 - ($ - %%insn_00405e01) db 0
    %%insn_00405e02:
    mov dl,[ebp-0x18] ; 00405E02 8A55E8
    %if ($ - %%insn_00405e02) > 3
        %error "LONG_00405E02"
    %endif
    times 3 - ($ - %%insn_00405e02) db 0
    %%insn_00405e05:
    push edx ; 00405E05 52
    %if ($ - %%insn_00405e05) > 1
        %error "LONG_00405E05"
    %endif
    times 1 - ($ - %%insn_00405e05) db 0
    %%insn_00405e06:
    mov al,[ebp+0x8] ; 00405E06 8A4508
    %if ($ - %%insn_00405e06) > 3
        %error "LONG_00405E06"
    %endif
    times 3 - ($ - %%insn_00405e06) db 0
    %%insn_00405e09:
    push eax ; 00405E09 50
    %if ($ - %%insn_00405e09) > 1
        %error "LONG_00405E09"
    %endif
    times 1 - ($ - %%insn_00405e09) db 0
    %%insn_00405e0a:
    call 0x405cbb ; 00405E0A E8ACFEFFFF
    %if ($ - %%insn_00405e0a) > 5
        %error "LONG_00405E0A"
    %endif
    times 5 - ($ - %%insn_00405e0a) db 0
    %%insn_00405e0f:
    add esp,0x10 ; 00405E0F 83C410
    %if ($ - %%insn_00405e0f) > 3
        %error "LONG_00405E0F"
    %endif
    times 3 - ($ - %%insn_00405e0f) db 0
    %%insn_00405e12:
    mov [ebp-0x8],al ; 00405E12 8845F8
    %if ($ - %%insn_00405e12) > 3
        %error "LONG_00405E12"
    %endif
    times 3 - ($ - %%insn_00405e12) db 0
    %%insn_00405e15:
    call 0x405c68 ; 00405E15 E84EFEFFFF
    %if ($ - %%insn_00405e15) > 5
        %error "LONG_00405E15"
    %endif
    times 5 - ($ - %%insn_00405e15) db 0
    %%insn_00405e1a:
    jmp short 0x405e2f ; 00405E1A EB13
    %if ($ - %%insn_00405e1a) > 2
        %error "LONG_00405E1A"
    %endif
    times 2 - ($ - %%insn_00405e1a) db 0
    %%insn_00405e1c:
    mov cl,[ebp-0x18] ; 00405E1C 8A4DE8
    %if ($ - %%insn_00405e1c) > 3
        %error "LONG_00405E1C"
    %endif
    times 3 - ($ - %%insn_00405e1c) db 0
    %%insn_00405e1f:
    push ecx ; 00405E1F 51
    %if ($ - %%insn_00405e1f) > 1
        %error "LONG_00405E1F"
    %endif
    times 1 - ($ - %%insn_00405e1f) db 0
    %%insn_00405e20:
    mov dl,[ebp+0x8] ; 00405E20 8A5508
    %if ($ - %%insn_00405e20) > 3
        %error "LONG_00405E20"
    %endif
    times 3 - ($ - %%insn_00405e20) db 0
    %%insn_00405e23:
    push edx ; 00405E23 52
    %if ($ - %%insn_00405e23) > 1
        %error "LONG_00405E23"
    %endif
    times 1 - ($ - %%insn_00405e23) db 0
    %%insn_00405e24:
    call 0x4056b2 ; 00405E24 E889F8FFFF
    %if ($ - %%insn_00405e24) > 5
        %error "LONG_00405E24"
    %endif
    times 5 - ($ - %%insn_00405e24) db 0
    %%insn_00405e29:
    add esp,0x8 ; 00405E29 83C408
    %if ($ - %%insn_00405e29) > 3
        %error "LONG_00405E29"
    %endif
    times 3 - ($ - %%insn_00405e29) db 0
    %%insn_00405e2c:
    mov [ebp-0x8],al ; 00405E2C 8845F8
    %if ($ - %%insn_00405e2c) > 3
        %error "LONG_00405E2C"
    %endif
    times 3 - ($ - %%insn_00405e2c) db 0
    %%insn_00405e2f:
    movsx eax,byte [ebp-0x8] ; 00405E2F 0FBE45F8
    %if ($ - %%insn_00405e2f) > 4
        %error "LONG_00405E2F"
    %endif
    times 4 - ($ - %%insn_00405e2f) db 0
    %%insn_00405e33:
    movsx ecx,byte [ebp+0x14] ; 00405E33 0FBE4D14
    %if ($ - %%insn_00405e33) > 4
        %error "LONG_00405E33"
    %endif
    times 4 - ($ - %%insn_00405e33) db 0
    db 0x3B, 0xC1 ; 00405E37 3BC1 | cmp eax,ecx | encoding preserved
    %%insn_00405e39:
    jnl short 0x405e47 ; 00405E39 7D0C
    %if ($ - %%insn_00405e39) > 2
        %error "LONG_00405E39"
    %endif
    times 2 - ($ - %%insn_00405e39) db 0
    %%insn_00405e3b:
    movsx edx,byte [ebp+0x8] ; 00405E3B 0FBE5508
    %if ($ - %%insn_00405e3b) > 4
        %error "LONG_00405E3B"
    %endif
    times 4 - ($ - %%insn_00405e3b) db 0
    %%insn_00405e3f:
    movsx eax,byte [ebp-0x18] ; 00405E3F 0FBE45E8
    %if ($ - %%insn_00405e3f) > 4
        %error "LONG_00405E3F"
    %endif
    times 4 - ($ - %%insn_00405e3f) db 0
    db 0x3B, 0xD0 ; 00405E43 3BD0 | cmp edx,eax | encoding preserved
    %%insn_00405e45:
    jnz short 0x405e52 ; 00405E45 750B
    %if ($ - %%insn_00405e45) > 2
        %error "LONG_00405E45"
    %endif
    times 2 - ($ - %%insn_00405e45) db 0
    %%insn_00405e47:
    movsx ecx,word [0x41f470] ; 00405E47 0FBF0D70F44100
    %if ($ - %%insn_00405e47) > 7
        %error "LONG_00405E47"
    %endif
    times 7 - ($ - %%insn_00405e47) db 0
    %%insn_00405e4e:
    test ecx,ecx ; 00405E4E 85C9
    %if ($ - %%insn_00405e4e) > 2
        %error "LONG_00405E4E"
    %endif
    times 2 - ($ - %%insn_00405e4e) db 0
    %%insn_00405e50:
    jz short 0x405e5f ; 00405E50 740D
    %if ($ - %%insn_00405e50) > 2
        %error "LONG_00405E50"
    %endif
    times 2 - ($ - %%insn_00405e50) db 0
    %%insn_00405e52:
    call 0x405bc2 ; 00405E52 E86BFDFFFF
    %if ($ - %%insn_00405e52) > 5
        %error "LONG_00405E52"
    %endif
    times 5 - ($ - %%insn_00405e52) db 0
    %%insn_00405e57:
    mov al,[ebp-0x8] ; 00405E57 8A45F8
    %if ($ - %%insn_00405e57) > 3
        %error "LONG_00405E57"
    %endif
    times 3 - ($ - %%insn_00405e57) db 0
    %%insn_00405e5a:
    jmp 0x406048 ; 00405E5A E9E9010000
    %if ($ - %%insn_00405e5a) > 5
        %error "LONG_00405E5A"
    %endif
    times 5 - ($ - %%insn_00405e5a) db 0
    %%insn_00405e5f:
    movsx edx,byte [ebp+0x8] ; 00405E5F 0FBE5508
    %if ($ - %%insn_00405e5f) > 4
        %error "LONG_00405E5F"
    %endif
    times 4 - ($ - %%insn_00405e5f) db 0
    %%insn_00405e63:
    movsx eax,byte [edx+0x4215b0] ; 00405E63 0FBE82B0154200
    %if ($ - %%insn_00405e63) > 7
        %error "LONG_00405E63"
    %endif
    times 7 - ($ - %%insn_00405e63) db 0
    %%insn_00405e6a:
    shl eax,1 ; 00405E6A D1E0
    %if ($ - %%insn_00405e6a) > 2
        %error "LONG_00405E6A"
    %endif
    times 2 - ($ - %%insn_00405e6a) db 0
    %%insn_00405e6c:
    movsx ecx,byte [0x4215b1] ; 00405E6C 0FBE0DB1154200
    %if ($ - %%insn_00405e6c) > 7
        %error "LONG_00405E6C"
    %endif
    times 7 - ($ - %%insn_00405e6c) db 0
    db 0x2B, 0xC1 ; 00405E73 2BC1 | sub eax,ecx | encoding preserved
    %%insn_00405e75:
    movsx edx,byte [0x4215b2] ; 00405E75 0FBE15B2154200
    %if ($ - %%insn_00405e75) > 7
        %error "LONG_00405E75"
    %endif
    times 7 - ($ - %%insn_00405e75) db 0
    db 0x2B, 0xC2 ; 00405E7C 2BC2 | sub eax,edx | encoding preserved
    %%insn_00405e7e:
    movsx ecx,byte [0x4215b3] ; 00405E7E 0FBE0DB3154200
    %if ($ - %%insn_00405e7e) > 7
        %error "LONG_00405E7E"
    %endif
    times 7 - ($ - %%insn_00405e7e) db 0
    db 0x2B, 0xC1 ; 00405E85 2BC1 | sub eax,ecx | encoding preserved
    %%insn_00405e87:
    movsx edx,byte [0x4215b4] ; 00405E87 0FBE15B4154200
    %if ($ - %%insn_00405e87) > 7
        %error "LONG_00405E87"
    %endif
    times 7 - ($ - %%insn_00405e87) db 0
    db 0x2B, 0xC2 ; 00405E8E 2BC2 | sub eax,edx | encoding preserved
    %%insn_00405e90:
    movsx ecx,byte [0x41f45c] ; 00405E90 0FBE0D5CF44100
    %if ($ - %%insn_00405e90) > 7
        %error "LONG_00405E90"
    %endif
    times 7 - ($ - %%insn_00405e90) db 0
    %%insn_00405e97:
    lea edx,[ecx+eax*2] ; 00405E97 8D1441
    %if ($ - %%insn_00405e97) > 3
        %error "LONG_00405E97"
    %endif
    times 3 - ($ - %%insn_00405e97) db 0
    %%insn_00405e9a:
    mov [ebp-0xc],dl ; 00405E9A 8855F4
    %if ($ - %%insn_00405e9a) > 3
        %error "LONG_00405E9A"
    %endif
    times 3 - ($ - %%insn_00405e9a) db 0
    %%insn_00405e9d:
    mov al,[ebp-0x18] ; 00405E9D 8A45E8
    %if ($ - %%insn_00405e9d) > 3
        %error "LONG_00405E9D"
    %endif
    times 3 - ($ - %%insn_00405e9d) db 0
    %%insn_00405ea0:
    push eax ; 00405EA0 50
    %if ($ - %%insn_00405ea0) > 1
        %error "LONG_00405EA0"
    %endif
    times 1 - ($ - %%insn_00405ea0) db 0
    %%insn_00405ea1:
    call dword near [ebp-0x14] ; 00405EA1 FF55EC
    %if ($ - %%insn_00405ea1) > 3
        %error "LONG_00405EA1"
    %endif
    times 3 - ($ - %%insn_00405ea1) db 0
    %%insn_00405ea4:
    add esp,0x4 ; 00405EA4 83C404
    %if ($ - %%insn_00405ea4) > 3
        %error "LONG_00405EA4"
    %endif
    times 3 - ($ - %%insn_00405ea4) db 0
    %%insn_00405ea7:
    movsx ecx,ax ; 00405EA7 0FBFC8
    %if ($ - %%insn_00405ea7) > 3
        %error "LONG_00405EA7"
    %endif
    times 3 - ($ - %%insn_00405ea7) db 0
    %%insn_00405eaa:
    test ecx,ecx ; 00405EAA 85C9
    %if ($ - %%insn_00405eaa) > 2
        %error "LONG_00405EAA"
    %endif
    times 2 - ($ - %%insn_00405eaa) db 0
    %%insn_00405eac:
    jz 0x405ff3 ; 00405EAC 0F8441010000
    %if ($ - %%insn_00405eac) > 6
        %error "LONG_00405EAC"
    %endif
    times 6 - ($ - %%insn_00405eac) db 0
    %%insn_00405eb2:
    movsx edx,byte [0x41f458] ; 00405EB2 0FBE1558F44100
    %if ($ - %%insn_00405eb2) > 7
        %error "LONG_00405EB2"
    %endif
    times 7 - ($ - %%insn_00405eb2) db 0
    %%insn_00405eb9:
    test edx,edx ; 00405EB9 85D2
    %if ($ - %%insn_00405eb9) > 2
        %error "LONG_00405EB9"
    %endif
    times 2 - ($ - %%insn_00405eb9) db 0
    %%insn_00405ebb:
    jz short 0x405ece ; 00405EBB 7411
    %if ($ - %%insn_00405ebb) > 2
        %error "LONG_00405EBB"
    %endif
    times 2 - ($ - %%insn_00405ebb) db 0
    %%insn_00405ebd:
    call 0x405bc2 ; 00405EBD E800FDFFFF
    %if ($ - %%insn_00405ebd) > 5
        %error "LONG_00405EBD"
    %endif
    times 5 - ($ - %%insn_00405ebd) db 0
    %%insn_00405ec2:
    movsx eax,byte [ebp+0x14] ; 00405EC2 0FBE4514
    %if ($ - %%insn_00405ec2) > 4
        %error "LONG_00405EC2"
    %endif
    times 4 - ($ - %%insn_00405ec2) db 0
    %%insn_00405ec6:
    add eax,0x1 ; 00405EC6 83C001
    %if ($ - %%insn_00405ec6) > 3
        %error "LONG_00405EC6"
    %endif
    times 3 - ($ - %%insn_00405ec6) db 0
    %%insn_00405ec9:
    jmp 0x406048 ; 00405EC9 E97A010000
    %if ($ - %%insn_00405ec9) > 5
        %error "LONG_00405EC9"
    %endif
    times 5 - ($ - %%insn_00405ec9) db 0
    %%insn_00405ece:
    movsx eax,byte [0x4215b7] ; 00405ECE 0FBE05B7154200
    %if ($ - %%insn_00405ece) > 7
        %error "LONG_00405ECE"
    %endif
    times 7 - ($ - %%insn_00405ece) db 0
    %%insn_00405ed5:
    cmp eax,0x2 ; 00405ED5 83F802
    %if ($ - %%insn_00405ed5) > 3
        %error "LONG_00405ED5"
    %endif
    times 3 - ($ - %%insn_00405ed5) db 0
    %%insn_00405ed8:
    jnz short 0x405ef9 ; 00405ED8 751F
    %if ($ - %%insn_00405ed8) > 2
        %error "LONG_00405ED8"
    %endif
    times 2 - ($ - %%insn_00405ed8) db 0
    %%insn_00405eda:
    mov cl,[ebp-0x18] ; 00405EDA 8A4DE8
    %if ($ - %%insn_00405eda) > 3
        %error "LONG_00405EDA"
    %endif
    times 3 - ($ - %%insn_00405eda) db 0
    %%insn_00405edd:
    push ecx ; 00405EDD 51
    %if ($ - %%insn_00405edd) > 1
        %error "LONG_00405EDD"
    %endif
    times 1 - ($ - %%insn_00405edd) db 0
    %%insn_00405ede:
    mov dl,[ebp+0x8] ; 00405EDE 8A5508
    %if ($ - %%insn_00405ede) > 3
        %error "LONG_00405EDE"
    %endif
    times 3 - ($ - %%insn_00405ede) db 0
    %%insn_00405ee1:
    push edx ; 00405EE1 52
    %if ($ - %%insn_00405ee1) > 1
        %error "LONG_00405EE1"
    %endif
    times 1 - ($ - %%insn_00405ee1) db 0
    %%insn_00405ee2:
    call 0x4056b2 ; 00405EE2 E8CBF7FFFF
    %if ($ - %%insn_00405ee2) > 5
        %error "LONG_00405EE2"
    %endif
    times 5 - ($ - %%insn_00405ee2) db 0
    %%insn_00405ee7:
    add esp,0x8 ; 00405EE7 83C408
    %if ($ - %%insn_00405ee7) > 3
        %error "LONG_00405EE7"
    %endif
    times 3 - ($ - %%insn_00405ee7) db 0
    %%insn_00405eea:
    movsx eax,al ; 00405EEA 0FBEC0
    %if ($ - %%insn_00405eea) > 3
        %error "LONG_00405EEA"
    %endif
    times 3 - ($ - %%insn_00405eea) db 0
    %%insn_00405eed:
    movsx ecx,byte [ebp-0xc] ; 00405EED 0FBE4DF4
    %if ($ - %%insn_00405eed) > 4
        %error "LONG_00405EED"
    %endif
    times 4 - ($ - %%insn_00405eed) db 0
    db 0x3B, 0xC1 ; 00405EF1 3BC1 | cmp eax,ecx | encoding preserved
    %%insn_00405ef3:
    jz 0x405fee ; 00405EF3 0F84F5000000
    %if ($ - %%insn_00405ef3) > 6
        %error "LONG_00405EF3"
    %endif
    times 6 - ($ - %%insn_00405ef3) db 0
    %%insn_00405ef9:
    movsx edx,word [ebp+0x10] ; 00405EF9 0FBF5510
    %if ($ - %%insn_00405ef9) > 4
        %error "LONG_00405EF9"
    %endif
    times 4 - ($ - %%insn_00405ef9) db 0
    %%insn_00405efd:
    test edx,edx ; 00405EFD 85D2
    %if ($ - %%insn_00405efd) > 2
        %error "LONG_00405EFD"
    %endif
    times 2 - ($ - %%insn_00405efd) db 0
    %%insn_00405eff:
    jz short 0x405f5c ; 00405EFF 745B
    %if ($ - %%insn_00405eff) > 2
        %error "LONG_00405EFF"
    %endif
    times 2 - ($ - %%insn_00405eff) db 0
    %%insn_00405f01:
    mov al,[ebp-0x18] ; 00405F01 8A45E8
    %if ($ - %%insn_00405f01) > 3
        %error "LONG_00405F01"
    %endif
    times 3 - ($ - %%insn_00405f01) db 0
    %%insn_00405f04:
    push eax ; 00405F04 50
    %if ($ - %%insn_00405f04) > 1
        %error "LONG_00405F04"
    %endif
    times 1 - ($ - %%insn_00405f04) db 0
    %%insn_00405f05:
    call 0x40563c ; 00405F05 E832F7FFFF
    %if ($ - %%insn_00405f05) > 5
        %error "LONG_00405F05"
    %endif
    times 5 - ($ - %%insn_00405f05) db 0
    %%insn_00405f0a:
    add esp,0x4 ; 00405F0A 83C404
    %if ($ - %%insn_00405f0a) > 3
        %error "LONG_00405F0A"
    %endif
    times 3 - ($ - %%insn_00405f0a) db 0
    %%insn_00405f0d:
    cmp dword [ebp-0x14],0x4054b4 ; 00405F0D 817DECB4544000
    %if ($ - %%insn_00405f0d) > 7
        %error "LONG_00405F0D"
    %endif
    times 7 - ($ - %%insn_00405f0d) db 0
    %%insn_00405f14:
    jnz short 0x405f34 ; 00405F14 751E
    %if ($ - %%insn_00405f14) > 2
        %error "LONG_00405F14"
    %endif
    times 2 - ($ - %%insn_00405f14) db 0
    %%insn_00405f16:
    mov cl,[ebp+0x14] ; 00405F16 8A4D14
    %if ($ - %%insn_00405f16) > 3
        %error "LONG_00405F16"
    %endif
    times 3 - ($ - %%insn_00405f16) db 0
    %%insn_00405f19:
    push ecx ; 00405F19 51
    %if ($ - %%insn_00405f19) > 1
        %error "LONG_00405F19"
    %endif
    times 1 - ($ - %%insn_00405f19) db 0
    %%insn_00405f1a:
    mov dx,[ebp+0x10] ; 00405F1A 668B5510
    %if ($ - %%insn_00405f1a) > 4
        %error "LONG_00405F1A"
    %endif
    times 4 - ($ - %%insn_00405f1a) db 0
    %%insn_00405f1e:
    push edx ; 00405F1E 52
    %if ($ - %%insn_00405f1e) > 1
        %error "LONG_00405F1E"
    %endif
    times 1 - ($ - %%insn_00405f1e) db 0
    %%insn_00405f1f:
    mov al,[ebp-0x18] ; 00405F1F 8A45E8
    %if ($ - %%insn_00405f1f) > 3
        %error "LONG_00405F1F"
    %endif
    times 3 - ($ - %%insn_00405f1f) db 0
    %%insn_00405f22:
    push eax ; 00405F22 50
    %if ($ - %%insn_00405f22) > 1
        %error "LONG_00405F22"
    %endif
    times 1 - ($ - %%insn_00405f22) db 0
    %%insn_00405f23:
    mov cl,[ebp+0x8] ; 00405F23 8A4D08
    %if ($ - %%insn_00405f23) > 3
        %error "LONG_00405F23"
    %endif
    times 3 - ($ - %%insn_00405f23) db 0
    %%insn_00405f26:
    push ecx ; 00405F26 51
    %if ($ - %%insn_00405f26) > 1
        %error "LONG_00405F26"
    %endif
    times 1 - ($ - %%insn_00405f26) db 0
    %%insn_00405f27:
    call 0x405cbb ; 00405F27 E88FFDFFFF
    %if ($ - %%insn_00405f27) > 5
        %error "LONG_00405F27"
    %endif
    times 5 - ($ - %%insn_00405f27) db 0
    %%insn_00405f2c:
    add esp,0x10 ; 00405F2C 83C410
    %if ($ - %%insn_00405f2c) > 3
        %error "LONG_00405F2C"
    %endif
    times 3 - ($ - %%insn_00405f2c) db 0
    %%insn_00405f2f:
    mov [ebp-0x4],al ; 00405F2F 8845FC
    %if ($ - %%insn_00405f2f) > 3
        %error "LONG_00405F2F"
    %endif
    times 3 - ($ - %%insn_00405f2f) db 0
    %%insn_00405f32:
    jmp short 0x405f5a ; 00405F32 EB26
    %if ($ - %%insn_00405f32) > 2
        %error "LONG_00405F32"
    %endif
    times 2 - ($ - %%insn_00405f32) db 0
    %%insn_00405f34:
    call 0x405c15 ; 00405F34 E8DCFCFFFF
    %if ($ - %%insn_00405f34) > 5
        %error "LONG_00405F34"
    %endif
    times 5 - ($ - %%insn_00405f34) db 0
    %%insn_00405f39:
    mov dl,[ebp+0x14] ; 00405F39 8A5514
    %if ($ - %%insn_00405f39) > 3
        %error "LONG_00405F39"
    %endif
    times 3 - ($ - %%insn_00405f39) db 0
    %%insn_00405f3c:
    push edx ; 00405F3C 52
    %if ($ - %%insn_00405f3c) > 1
        %error "LONG_00405F3C"
    %endif
    times 1 - ($ - %%insn_00405f3c) db 0
    %%insn_00405f3d:
    mov ax,[ebp+0x10] ; 00405F3D 668B4510
    %if ($ - %%insn_00405f3d) > 4
        %error "LONG_00405F3D"
    %endif
    times 4 - ($ - %%insn_00405f3d) db 0
    %%insn_00405f41:
    push eax ; 00405F41 50
    %if ($ - %%insn_00405f41) > 1
        %error "LONG_00405F41"
    %endif
    times 1 - ($ - %%insn_00405f41) db 0
    %%insn_00405f42:
    mov cl,[ebp-0x18] ; 00405F42 8A4DE8
    %if ($ - %%insn_00405f42) > 3
        %error "LONG_00405F42"
    %endif
    times 3 - ($ - %%insn_00405f42) db 0
    %%insn_00405f45:
    push ecx ; 00405F45 51
    %if ($ - %%insn_00405f45) > 1
        %error "LONG_00405F45"
    %endif
    times 1 - ($ - %%insn_00405f45) db 0
    %%insn_00405f46:
    mov dl,[ebp+0x8] ; 00405F46 8A5508
    %if ($ - %%insn_00405f46) > 3
        %error "LONG_00405F46"
    %endif
    times 3 - ($ - %%insn_00405f46) db 0
    %%insn_00405f49:
    push edx ; 00405F49 52
    %if ($ - %%insn_00405f49) > 1
        %error "LONG_00405F49"
    %endif
    times 1 - ($ - %%insn_00405f49) db 0
    %%insn_00405f4a:
    call 0x405cbb ; 00405F4A E86CFDFFFF
    %if ($ - %%insn_00405f4a) > 5
        %error "LONG_00405F4A"
    %endif
    times 5 - ($ - %%insn_00405f4a) db 0
    %%insn_00405f4f:
    add esp,0x10 ; 00405F4F 83C410
    %if ($ - %%insn_00405f4f) > 3
        %error "LONG_00405F4F"
    %endif
    times 3 - ($ - %%insn_00405f4f) db 0
    %%insn_00405f52:
    mov [ebp-0x4],al ; 00405F52 8845FC
    %if ($ - %%insn_00405f52) > 3
        %error "LONG_00405F52"
    %endif
    times 3 - ($ - %%insn_00405f52) db 0
    %%insn_00405f55:
    call 0x405c68 ; 00405F55 E80EFDFFFF
    %if ($ - %%insn_00405f55) > 5
        %error "LONG_00405F55"
    %endif
    times 5 - ($ - %%insn_00405f55) db 0
    %%insn_00405f5a:
    jmp short 0x405f8b ; 00405F5A EB2F
    %if ($ - %%insn_00405f5a) > 2
        %error "LONG_00405F5A"
    %endif
    times 2 - ($ - %%insn_00405f5a) db 0
    %%insn_00405f5c:
    mov al,[ebp-0x18] ; 00405F5C 8A45E8
    %if ($ - %%insn_00405f5c) > 3
        %error "LONG_00405F5C"
    %endif
    times 3 - ($ - %%insn_00405f5c) db 0
    %%insn_00405f5f:
    push eax ; 00405F5F 50
    %if ($ - %%insn_00405f5f) > 1
        %error "LONG_00405F5F"
    %endif
    times 1 - ($ - %%insn_00405f5f) db 0
    %%insn_00405f60:
    mov cl,[ebp+0x8] ; 00405F60 8A4D08
    %if ($ - %%insn_00405f60) > 3
        %error "LONG_00405F60"
    %endif
    times 3 - ($ - %%insn_00405f60) db 0
    %%insn_00405f63:
    push ecx ; 00405F63 51
    %if ($ - %%insn_00405f63) > 1
        %error "LONG_00405F63"
    %endif
    times 1 - ($ - %%insn_00405f63) db 0
    %%insn_00405f64:
    call 0x4056b2 ; 00405F64 E849F7FFFF
    %if ($ - %%insn_00405f64) > 5
        %error "LONG_00405F64"
    %endif
    times 5 - ($ - %%insn_00405f64) db 0
    %%insn_00405f69:
    add esp,0x8 ; 00405F69 83C408
    %if ($ - %%insn_00405f69) > 3
        %error "LONG_00405F69"
    %endif
    times 3 - ($ - %%insn_00405f69) db 0
    %%insn_00405f6c:
    mov [ebp-0x4],al ; 00405F6C 8845FC
    %if ($ - %%insn_00405f6c) > 3
        %error "LONG_00405F6C"
    %endif
    times 3 - ($ - %%insn_00405f6c) db 0
    %%insn_00405f6f:
    cmp dword [ebp-0x14],0x4054b4 ; 00405F6F 817DECB4544000
    %if ($ - %%insn_00405f6f) > 7
        %error "LONG_00405F6F"
    %endif
    times 7 - ($ - %%insn_00405f6f) db 0
    %%insn_00405f76:
    jnz short 0x405f8b ; 00405F76 7513
    %if ($ - %%insn_00405f76) > 2
        %error "LONG_00405F76"
    %endif
    times 2 - ($ - %%insn_00405f76) db 0
    %%insn_00405f78:
    movsx edx,byte [0x4215b7] ; 00405F78 0FBE15B7154200
    %if ($ - %%insn_00405f78) > 7
        %error "LONG_00405F78"
    %endif
    times 7 - ($ - %%insn_00405f78) db 0
    %%insn_00405f7f:
    cmp edx,0x2 ; 00405F7F 83FA02
    %if ($ - %%insn_00405f7f) > 3
        %error "LONG_00405F7F"
    %endif
    times 3 - ($ - %%insn_00405f7f) db 0
    %%insn_00405f82:
    jnz short 0x405f8b ; 00405F82 7507
    %if ($ - %%insn_00405f82) > 2
        %error "LONG_00405F82"
    %endif
    times 2 - ($ - %%insn_00405f82) db 0
    %%insn_00405f84:
    mov byte [0x4215b8],0x10 ; 00405F84 C605B815420010
    %if ($ - %%insn_00405f84) > 7
        %error "LONG_00405F84"
    %endif
    times 7 - ($ - %%insn_00405f84) db 0
    %%insn_00405f8b:
    movsx eax,byte [ebp-0x4] ; 00405F8B 0FBE45FC
    %if ($ - %%insn_00405f8b) > 4
        %error "LONG_00405F8B"
    %endif
    times 4 - ($ - %%insn_00405f8b) db 0
    %%insn_00405f8f:
    movsx ecx,byte [ebp-0x8] ; 00405F8F 0FBE4DF8
    %if ($ - %%insn_00405f8f) > 4
        %error "LONG_00405F8F"
    %endif
    times 4 - ($ - %%insn_00405f8f) db 0
    db 0x3B, 0xC1 ; 00405F93 3BC1 | cmp eax,ecx | encoding preserved
    %%insn_00405f95:
    jnl short 0x405fa3 ; 00405F95 7D0C
    %if ($ - %%insn_00405f95) > 2
        %error "LONG_00405F95"
    %endif
    times 2 - ($ - %%insn_00405f95) db 0
    %%insn_00405f97:
    movsx edx,byte [ebp+0x8] ; 00405F97 0FBE5508
    %if ($ - %%insn_00405f97) > 4
        %error "LONG_00405F97"
    %endif
    times 4 - ($ - %%insn_00405f97) db 0
    %%insn_00405f9b:
    movsx eax,byte [ebp-0x18] ; 00405F9B 0FBE45E8
    %if ($ - %%insn_00405f9b) > 4
        %error "LONG_00405F9B"
    %endif
    times 4 - ($ - %%insn_00405f9b) db 0
    db 0x3B, 0xD0 ; 00405F9F 3BD0 | cmp edx,eax | encoding preserved
    %%insn_00405fa1:
    jnz short 0x405fbb ; 00405FA1 7518
    %if ($ - %%insn_00405fa1) > 2
        %error "LONG_00405FA1"
    %endif
    times 2 - ($ - %%insn_00405fa1) db 0
    %%insn_00405fa3:
    movsx ecx,byte [ebp-0x4] ; 00405FA3 0FBE4DFC
    %if ($ - %%insn_00405fa3) > 4
        %error "LONG_00405FA3"
    %endif
    times 4 - ($ - %%insn_00405fa3) db 0
    %%insn_00405fa7:
    movsx edx,byte [ebp-0x8] ; 00405FA7 0FBE55F8
    %if ($ - %%insn_00405fa7) > 4
        %error "LONG_00405FA7"
    %endif
    times 4 - ($ - %%insn_00405fa7) db 0
    db 0x3B, 0xCA ; 00405FAB 3BCA | cmp ecx,edx | encoding preserved
    %%insn_00405fad:
    jng short 0x405fc1 ; 00405FAD 7E12
    %if ($ - %%insn_00405fad) > 2
        %error "LONG_00405FAD"
    %endif
    times 2 - ($ - %%insn_00405fad) db 0
    %%insn_00405faf:
    movsx eax,byte [ebp+0x8] ; 00405FAF 0FBE4508
    %if ($ - %%insn_00405faf) > 4
        %error "LONG_00405FAF"
    %endif
    times 4 - ($ - %%insn_00405faf) db 0
    %%insn_00405fb3:
    movsx ecx,byte [ebp-0x18] ; 00405FB3 0FBE4DE8
    %if ($ - %%insn_00405fb3) > 4
        %error "LONG_00405FB3"
    %endif
    times 4 - ($ - %%insn_00405fb3) db 0
    db 0x3B, 0xC1 ; 00405FB7 3BC1 | cmp eax,ecx | encoding preserved
    %%insn_00405fb9:
    jnz short 0x405fc1 ; 00405FB9 7506
    %if ($ - %%insn_00405fb9) > 2
        %error "LONG_00405FB9"
    %endif
    times 2 - ($ - %%insn_00405fb9) db 0
    %%insn_00405fbb:
    mov dl,[ebp-0x4] ; 00405FBB 8A55FC
    %if ($ - %%insn_00405fbb) > 3
        %error "LONG_00405FBB"
    %endif
    times 3 - ($ - %%insn_00405fbb) db 0
    %%insn_00405fbe:
    mov [ebp-0x8],dl ; 00405FBE 8855F8
    %if ($ - %%insn_00405fbe) > 3
        %error "LONG_00405FBE"
    %endif
    times 3 - ($ - %%insn_00405fbe) db 0
    %%insn_00405fc1:
    movsx eax,byte [ebp-0x8] ; 00405FC1 0FBE45F8
    %if ($ - %%insn_00405fc1) > 4
        %error "LONG_00405FC1"
    %endif
    times 4 - ($ - %%insn_00405fc1) db 0
    %%insn_00405fc5:
    movsx ecx,byte [ebp+0x14] ; 00405FC5 0FBE4D14
    %if ($ - %%insn_00405fc5) > 4
        %error "LONG_00405FC5"
    %endif
    times 4 - ($ - %%insn_00405fc5) db 0
    db 0x3B, 0xC1 ; 00405FC9 3BC1 | cmp eax,ecx | encoding preserved
    %%insn_00405fcb:
    jnl short 0x405fd9 ; 00405FCB 7D0C
    %if ($ - %%insn_00405fcb) > 2
        %error "LONG_00405FCB"
    %endif
    times 2 - ($ - %%insn_00405fcb) db 0
    %%insn_00405fcd:
    movsx edx,byte [ebp+0x8] ; 00405FCD 0FBE5508
    %if ($ - %%insn_00405fcd) > 4
        %error "LONG_00405FCD"
    %endif
    times 4 - ($ - %%insn_00405fcd) db 0
    %%insn_00405fd1:
    movsx eax,byte [ebp-0x18] ; 00405FD1 0FBE45E8
    %if ($ - %%insn_00405fd1) > 4
        %error "LONG_00405FD1"
    %endif
    times 4 - ($ - %%insn_00405fd1) db 0
    db 0x3B, 0xD0 ; 00405FD5 3BD0 | cmp edx,eax | encoding preserved
    %%insn_00405fd7:
    jnz short 0x405fe4 ; 00405FD7 750B
    %if ($ - %%insn_00405fd7) > 2
        %error "LONG_00405FD7"
    %endif
    times 2 - ($ - %%insn_00405fd7) db 0
    %%insn_00405fd9:
    movsx ecx,word [0x41f470] ; 00405FD9 0FBF0D70F44100
    %if ($ - %%insn_00405fd9) > 7
        %error "LONG_00405FD9"
    %endif
    times 7 - ($ - %%insn_00405fd9) db 0
    %%insn_00405fe0:
    test ecx,ecx ; 00405FE0 85C9
    %if ($ - %%insn_00405fe0) > 2
        %error "LONG_00405FE0"
    %endif
    times 2 - ($ - %%insn_00405fe0) db 0
    %%insn_00405fe2:
    jz short 0x405fee ; 00405FE2 740A
    %if ($ - %%insn_00405fe2) > 2
        %error "LONG_00405FE2"
    %endif
    times 2 - ($ - %%insn_00405fe2) db 0
    %%insn_00405fe4:
    call 0x405bc2 ; 00405FE4 E8D9FBFFFF
    %if ($ - %%insn_00405fe4) > 5
        %error "LONG_00405FE4"
    %endif
    times 5 - ($ - %%insn_00405fe4) db 0
    %%insn_00405fe9:
    mov al,[ebp-0x8] ; 00405FE9 8A45F8
    %if ($ - %%insn_00405fe9) > 3
        %error "LONG_00405FE9"
    %endif
    times 3 - ($ - %%insn_00405fe9) db 0
    %%insn_00405fec:
    jmp short 0x406048 ; 00405FEC EB5A
    %if ($ - %%insn_00405fec) > 2
        %error "LONG_00405FEC"
    %endif
    times 2 - ($ - %%insn_00405fec) db 0
    %%insn_00405fee:
    jmp 0x405e9d ; 00405FEE E9AAFEFFFF
    %if ($ - %%insn_00405fee) > 5
        %error "LONG_00405FEE"
    %endif
    times 5 - ($ - %%insn_00405fee) db 0
    %%insn_00405ff3:
    call 0x405bc2 ; 00405FF3 E8CAFBFFFF
    %if ($ - %%insn_00405ff3) > 5
        %error "LONG_00405FF3"
    %endif
    times 5 - ($ - %%insn_00405ff3) db 0
    %%insn_00405ff8:
    mov al,[ebp-0x8] ; 00405FF8 8A45F8
    %if ($ - %%insn_00405ff8) > 3
        %error "LONG_00405FF8"
    %endif
    times 3 - ($ - %%insn_00405ff8) db 0
    %%insn_00405ffb:
    jmp short 0x406048 ; 00405FFB EB4B
    %if ($ - %%insn_00405ffb) > 2
        %error "LONG_00405FFB"
    %endif
    times 2 - ($ - %%insn_00405ffb) db 0
    %%insn_00405ffd:
    jmp 0x405cd9 ; 00405FFD E9D7FCFFFF
    %if ($ - %%insn_00405ffd) > 5
        %error "LONG_00405FFD"
    %endif
    times 5 - ($ - %%insn_00405ffd) db 0
    %%insn_00406002:
    movsx edx,byte [ebp+0x8] ; 00406002 0FBE5508
    %if ($ - %%insn_00406002) > 4
        %error "LONG_00406002"
    %endif
    times 4 - ($ - %%insn_00406002) db 0
    %%insn_00406006:
    movsx eax,byte [edx+0x4215b0] ; 00406006 0FBE82B0154200
    %if ($ - %%insn_00406006) > 7
        %error "LONG_00406006"
    %endif
    times 7 - ($ - %%insn_00406006) db 0
    %%insn_0040600d:
    shl eax,1 ; 0040600D D1E0
    %if ($ - %%insn_0040600d) > 2
        %error "LONG_0040600D"
    %endif
    times 2 - ($ - %%insn_0040600d) db 0
    %%insn_0040600f:
    movsx ecx,byte [0x4215b1] ; 0040600F 0FBE0DB1154200
    %if ($ - %%insn_0040600f) > 7
        %error "LONG_0040600F"
    %endif
    times 7 - ($ - %%insn_0040600f) db 0
    db 0x2B, 0xC1 ; 00406016 2BC1 | sub eax,ecx | encoding preserved
    %%insn_00406018:
    movsx edx,byte [0x4215b2] ; 00406018 0FBE15B2154200
    %if ($ - %%insn_00406018) > 7
        %error "LONG_00406018"
    %endif
    times 7 - ($ - %%insn_00406018) db 0
    db 0x2B, 0xC2 ; 0040601F 2BC2 | sub eax,edx | encoding preserved
    %%insn_00406021:
    movsx ecx,byte [0x4215b3] ; 00406021 0FBE0DB3154200
    %if ($ - %%insn_00406021) > 7
        %error "LONG_00406021"
    %endif
    times 7 - ($ - %%insn_00406021) db 0
    db 0x2B, 0xC1 ; 00406028 2BC1 | sub eax,ecx | encoding preserved
    %%insn_0040602a:
    movsx edx,byte [0x4215b4] ; 0040602A 0FBE15B4154200
    %if ($ - %%insn_0040602a) > 7
        %error "LONG_0040602A"
    %endif
    times 7 - ($ - %%insn_0040602a) db 0
    db 0x2B, 0xC2 ; 00406031 2BC2 | sub eax,edx | encoding preserved
    %%insn_00406033:
    movsx ecx,byte [0x41f45c] ; 00406033 0FBE0D5CF44100
    %if ($ - %%insn_00406033) > 7
        %error "LONG_00406033"
    %endif
    times 7 - ($ - %%insn_00406033) db 0
    %%insn_0040603a:
    lea edx,[ecx+eax*2] ; 0040603A 8D1441
    %if ($ - %%insn_0040603a) > 3
        %error "LONG_0040603A"
    %endif
    times 3 - ($ - %%insn_0040603a) db 0
    %%insn_0040603d:
    mov [ebp-0x8],dl ; 0040603D 8855F8
    %if ($ - %%insn_0040603d) > 3
        %error "LONG_0040603D"
    %endif
    times 3 - ($ - %%insn_0040603d) db 0
    %%insn_00406040:
    call 0x405bc2 ; 00406040 E87DFBFFFF
    %if ($ - %%insn_00406040) > 5
        %error "LONG_00406040"
    %endif
    times 5 - ($ - %%insn_00406040) db 0
    %%insn_00406045:
    mov al,[ebp-0x8] ; 00406045 8A45F8
    %if ($ - %%insn_00406045) > 3
        %error "LONG_00406045"
    %endif
    times 3 - ($ - %%insn_00406045) db 0
    db 0x8B, 0xE5 ; 00406048 8BE5 | mov esp,ebp | encoding preserved
    %%insn_0040604a:
    pop ebp ; 0040604A 5D
    %if ($ - %%insn_0040604a) > 1
        %error "LONG_0040604A"
    %endif
    times 1 - ($ - %%insn_0040604a) db 0
    %%insn_0040604b:
    ret ; 0040604B C3
    %if ($ - %%insn_0040604b) > 1
        %error "LONG_0040604B"
    %endif
    times 1 - ($ - %%insn_0040604b) db 0
    %if ($ - %%fragment_start) != 913
        %error "function fragment size drift: 00405CBB"
    %endif
%endmacro
