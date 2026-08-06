; Linear entry 04D8C (1000:4d8c)
; Ghidra working symbol: FUN_1000_4d8c
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_04d8c_part_00 0
    %%fragment_start:
func_04d8c:
    %%insn_04d8c:
    push es ; 04D8C 06
    %if ($ - %%insn_04d8c) > 1
        %error "LONG_04D8C"
    %endif
    times 1 - ($ - %%insn_04d8c) db 0
    %%insn_04d8d:
    push ds ; 04D8D 1E
    %if ($ - %%insn_04d8d) > 1
        %error "LONG_04D8D"
    %endif
    times 1 - ($ - %%insn_04d8d) db 0
    %%insn_04d8e:
    mov ax,0xa000 ; 04D8E B800A0
    %if ($ - %%insn_04d8e) > 3
        %error "LONG_04D8E"
    %endif
    times 3 - ($ - %%insn_04d8e) db 0
    %%insn_04d91:
    mov es,ax ; 04D91 8EC0
    %if ($ - %%insn_04d91) > 2
        %error "LONG_04D91"
    %endif
    times 2 - ($ - %%insn_04d91) db 0
    db 0x8B, 0xD9 ; 04D93 8BD9 | mov bx,cx | encoding preserved
    %%insn_04d95:
    mov cx,0x140 ; 04D95 B94001
    %if ($ - %%insn_04d95) > 3
        %error "LONG_04D95"
    %endif
    times 3 - ($ - %%insn_04d95) db 0
    db 0x8B, 0xC2 ; 04D98 8BC2 | mov ax,dx | encoding preserved
    db 0x2D, 0x28, 0x00 ; 04D9A 2D2800 | sub ax,0x28 | encoding preserved
    %%insn_04d9d:
    jnc short 0x4da1 ; 04D9D 7302
    %if ($ - %%insn_04d9d) > 2
        %error "LONG_04D9D"
    %endif
    times 2 - ($ - %%insn_04d9d) db 0
    db 0x33, 0xC0 ; 04D9F 33C0 | xor ax,ax | encoding preserved
    %%insn_04da1:
    shr ax,1 ; 04DA1 D1E8
    %if ($ - %%insn_04da1) > 2
        %error "LONG_04DA1"
    %endif
    times 2 - ($ - %%insn_04da1) db 0
    %%insn_04da3:
    cmp ax,0xb4 ; 04DA3 3DB400
    %if ($ - %%insn_04da3) > 3
        %error "LONG_04DA3"
    %endif
    times 3 - ($ - %%insn_04da3) db 0
    %%insn_04da6:
    jna short 0x4dab ; 04DA6 7603
    %if ($ - %%insn_04da6) > 2
        %error "LONG_04DA6"
    %endif
    times 2 - ($ - %%insn_04da6) db 0
    %%insn_04da8:
    mov ax,0xb4 ; 04DA8 B8B400
    %if ($ - %%insn_04da8) > 3
        %error "LONG_04DA8"
    %endif
    times 3 - ($ - %%insn_04da8) db 0
    %%insn_04dab:
    mul cx ; 04DAB F7E1
    %if ($ - %%insn_04dab) > 2
        %error "LONG_04DAB"
    %endif
    times 2 - ($ - %%insn_04dab) db 0
    db 0x8B, 0xF8 ; 04DAD 8BF8 | mov di,ax | encoding preserved
    %%insn_04daf:
    shr bx,1 ; 04DAF D1EB
    %if ($ - %%insn_04daf) > 2
        %error "LONG_04DAF"
    %endif
    times 2 - ($ - %%insn_04daf) db 0
    %%insn_04db1:
    cmp bx,0x127 ; 04DB1 81FB2701
    %if ($ - %%insn_04db1) > 4
        %error "LONG_04DB1"
    %endif
    times 4 - ($ - %%insn_04db1) db 0
    %%insn_04db5:
    jna short 0x4dba ; 04DB5 7603
    %if ($ - %%insn_04db5) > 2
        %error "LONG_04DB5"
    %endif
    times 2 - ($ - %%insn_04db5) db 0
    %%insn_04db7:
    mov bx,0x127 ; 04DB7 BB2701
    %if ($ - %%insn_04db7) > 3
        %error "LONG_04DB7"
    %endif
    times 3 - ($ - %%insn_04db7) db 0
    db 0x03, 0xFB ; 04DBA 03FB | add di,bx | encoding preserved
    %%insn_04dbc:
    lodsb ; 04DBC AC
    %if ($ - %%insn_04dbc) > 1
        %error "LONG_04DBC"
    %endif
    times 1 - ($ - %%insn_04dbc) db 0
    db 0x8A, 0xE8 ; 04DBD 8AE8 | mov ch,al | encoding preserved
    %%insn_04dbf:
    lodsb ; 04DBF AC
    %if ($ - %%insn_04dbf) > 1
        %error "LONG_04DBF"
    %endif
    times 1 - ($ - %%insn_04dbf) db 0
    db 0x8A, 0xC8 ; 04DC0 8AC8 | mov cl,al | encoding preserved
    %%insn_04dc2:
    inc si ; 04DC2 46
    %if ($ - %%insn_04dc2) > 1
        %error "LONG_04DC2"
    %endif
    times 1 - ($ - %%insn_04dc2) db 0
    %%insn_04dc3:
    push cx ; 04DC3 51
    %if ($ - %%insn_04dc3) > 1
        %error "LONG_04DC3"
    %endif
    times 1 - ($ - %%insn_04dc3) db 0
    db 0x33, 0xC9 ; 04DC4 33C9 | xor cx,cx | encoding preserved
    db 0x33, 0xD2 ; 04DC6 33D2 | xor dx,dx | encoding preserved
    %%insn_04dc8:
    lodsw ; 04DC8 AD
    %if ($ - %%insn_04dc8) > 1
        %error "LONG_04DC8"
    %endif
    times 1 - ($ - %%insn_04dc8) db 0
    %%insn_04dc9:
    mov cl,[bp-0x2789] ; 04DC9 8A8E77D8
    %if ($ - %%insn_04dc9) > 4
        %error "LONG_04DC9"
    %endif
    times 4 - ($ - %%insn_04dc9) db 0
    %%insn_04dcd:
    mul cx ; 04DCD F7E1
    %if ($ - %%insn_04dcd) > 2
        %error "LONG_04DCD"
    %endif
    times 2 - ($ - %%insn_04dcd) db 0
    db 0x03, 0xF0 ; 04DCF 03F0 | add si,ax | encoding preserved
    %%insn_04dd1:
    pop cx ; 04DD1 59
    %if ($ - %%insn_04dd1) > 1
        %error "LONG_04DD1"
    %endif
    times 1 - ($ - %%insn_04dd1) db 0
    %%insn_04dd2:
    mov [bp-0x264e],cx ; 04DD2 898EB2D9
    %if ($ - %%insn_04dd2) > 4
        %error "LONG_04DD2"
    %endif
    times 4 - ($ - %%insn_04dd2) db 0
    db 0x8B, 0xD3 ; 04DD6 8BD3 | mov dx,bx | encoding preserved
    %%insn_04dd8:
    mov bx,0xc000 ; 04DD8 BB00C0
    %if ($ - %%insn_04dd8) > 3
        %error "LONG_04DD8"
    %endif
    times 3 - ($ - %%insn_04dd8) db 0
    %%insn_04ddb:
    shr cl,1 ; 04DDB D0E9
    %if ($ - %%insn_04ddb) > 2
        %error "LONG_04DDB"
    %endif
    times 2 - ($ - %%insn_04ddb) db 0
    %%insn_04ddd:
    shr ch,1 ; 04DDD D0ED
    %if ($ - %%insn_04ddd) > 2
        %error "LONG_04DDD"
    %endif
    times 2 - ($ - %%insn_04ddd) db 0
    %%insn_04ddf:
    push cx ; 04DDF 51
    %if ($ - %%insn_04ddf) > 1
        %error "LONG_04DDF"
    %endif
    times 1 - ($ - %%insn_04ddf) db 0
    %%insn_04de0:
    push di ; 04DE0 57
    %if ($ - %%insn_04de0) > 1
        %error "LONG_04DE0"
    %endif
    times 1 - ($ - %%insn_04de0) db 0
    %%insn_04de1:
    push si ; 04DE1 56
    %if ($ - %%insn_04de1) > 1
        %error "LONG_04DE1"
    %endif
    times 1 - ($ - %%insn_04de1) db 0
    %%insn_04de2:
    mov al,[es:di] ; 04DE2 268A05
    %if ($ - %%insn_04de2) > 3
        %error "LONG_04DE2"
    %endif
    times 3 - ($ - %%insn_04de2) db 0
    %%insn_04de5:
    mov [bx],al ; 04DE5 8807
    %if ($ - %%insn_04de5) > 2
        %error "LONG_04DE5"
    %endif
    times 2 - ($ - %%insn_04de5) db 0
    %%insn_04de7:
    inc bx ; 04DE7 43
    %if ($ - %%insn_04de7) > 1
        %error "LONG_04DE7"
    %endif
    times 1 - ($ - %%insn_04de7) db 0
    %%insn_04de8:
    lodsb ; 04DE8 AC
    %if ($ - %%insn_04de8) > 1
        %error "LONG_04DE8"
    %endif
    times 1 - ($ - %%insn_04de8) db 0
    %%insn_04de9:
    inc si ; 04DE9 46
    %if ($ - %%insn_04de9) > 1
        %error "LONG_04DE9"
    %endif
    times 1 - ($ - %%insn_04de9) db 0
    db 0x22, 0xC0 ; 04DEA 22C0 | and al,al | encoding preserved
    %%insn_04dec:
    jz short 0x4e00 ; 04DEC 7412
    %if ($ - %%insn_04dec) > 2
        %error "LONG_04DEC"
    %endif
    times 2 - ($ - %%insn_04dec) db 0
    db 0x8B, 0xD3 ; 04DEE 8BD3 | mov dx,bx | encoding preserved
    db 0x8A, 0xD8 ; 04DF0 8AD8 | mov bl,al | encoding preserved
    db 0x32, 0xFF ; 04DF2 32FF | xor bh,bh | encoding preserved
    %%insn_04df4:
    add bx,0xe166 ; 04DF4 81C366E1
    %if ($ - %%insn_04df4) > 4
        %error "LONG_04DF4"
    %endif
    times 4 - ($ - %%insn_04df4) db 0
    %%insn_04df8:
    mov al,[ss:bx] ; 04DF8 368A07
    %if ($ - %%insn_04df8) > 3
        %error "LONG_04DF8"
    %endif
    times 3 - ($ - %%insn_04df8) db 0
    %%insn_04dfb:
    stosb ; 04DFB AA
    %if ($ - %%insn_04dfb) > 1
        %error "LONG_04DFB"
    %endif
    times 1 - ($ - %%insn_04dfb) db 0
    db 0x8B, 0xDA ; 04DFC 8BDA | mov bx,dx | encoding preserved
    %%insn_04dfe:
    jmp short 0x4e01 ; 04DFE EB01
    %if ($ - %%insn_04dfe) > 2
        %error "LONG_04DFE"
    %endif
    times 2 - ($ - %%insn_04dfe) db 0
    %%insn_04e00:
    inc di ; 04E00 47
    %if ($ - %%insn_04e00) > 1
        %error "LONG_04E00"
    %endif
    times 1 - ($ - %%insn_04e00) db 0
    %%insn_04e01:
    dec ch ; 04E01 FECD
    %if ($ - %%insn_04e01) > 2
        %error "LONG_04E01"
    %endif
    times 2 - ($ - %%insn_04e01) db 0
    %%insn_04e03:
    jnz short 0x4de2 ; 04E03 75DD
    %if ($ - %%insn_04e03) > 2
        %error "LONG_04E03"
    %endif
    times 2 - ($ - %%insn_04e03) db 0
    %%insn_04e05:
    pop si ; 04E05 5E
    %if ($ - %%insn_04e05) > 1
        %error "LONG_04E05"
    %endif
    times 1 - ($ - %%insn_04e05) db 0
    %%insn_04e06:
    mov ax,[bp-0x264e] ; 04E06 8B86B2D9
    %if ($ - %%insn_04e06) > 4
        %error "LONG_04E06"
    %endif
    times 4 - ($ - %%insn_04e06) db 0
    db 0x32, 0xC0 ; 04E0A 32C0 | xor al,al | encoding preserved
    %%insn_04e0c:
    xchg al,ah ; 04E0C 86C4
    %if ($ - %%insn_04e0c) > 2
        %error "LONG_04E0C"
    %endif
    times 2 - ($ - %%insn_04e0c) db 0
    db 0x03, 0xF0 ; 04E0E 03F0 | add si,ax | encoding preserved
    db 0x03, 0xF0 ; 04E10 03F0 | add si,ax | encoding preserved
    %%insn_04e12:
    pop di ; 04E12 5F
    %if ($ - %%insn_04e12) > 1
        %error "LONG_04E12"
    %endif
    times 1 - ($ - %%insn_04e12) db 0
    %%insn_04e13:
    add di,0x140 ; 04E13 81C74001
    %if ($ - %%insn_04e13) > 4
        %error "LONG_04E13"
    %endif
    times 4 - ($ - %%insn_04e13) db 0
    %%insn_04e17:
    pop cx ; 04E17 59
    %if ($ - %%insn_04e17) > 1
        %error "LONG_04E17"
    %endif
    times 1 - ($ - %%insn_04e17) db 0
    %%insn_04e18:
    dec cl ; 04E18 FEC9
    %if ($ - %%insn_04e18) > 2
        %error "LONG_04E18"
    %endif
    times 2 - ($ - %%insn_04e18) db 0
    %%insn_04e1a:
    jnz short 0x4ddf ; 04E1A 75C3
    %if ($ - %%insn_04e1a) > 2
        %error "LONG_04E1A"
    %endif
    times 2 - ($ - %%insn_04e1a) db 0
    %%insn_04e1c:
    pop ds ; 04E1C 1F
    %if ($ - %%insn_04e1c) > 1
        %error "LONG_04E1C"
    %endif
    times 1 - ($ - %%insn_04e1c) db 0
    %%insn_04e1d:
    pop es ; 04E1D 07
    %if ($ - %%insn_04e1d) > 1
        %error "LONG_04E1D"
    %endif
    times 1 - ($ - %%insn_04e1d) db 0
    %%insn_04e1e:
    ret ; 04E1E C3
    %if ($ - %%insn_04e1e) > 1
        %error "LONG_04E1E"
    %endif
    times 1 - ($ - %%insn_04e1e) db 0
    %if ($ - %%fragment_start) != 147
        %error "SIZE_04D8C"
    %endif
%endmacro
