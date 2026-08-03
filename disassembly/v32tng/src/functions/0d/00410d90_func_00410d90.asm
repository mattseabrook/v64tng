; PE virtual entry 00410D90
; Ghidra working symbol: FUN_00410d90
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00410d90_part_00 0
    %%fragment_start:
func_00410d90:
    %%insn_00410d90:
    push esi ; 00410D90 56
    %if ($ - %%insn_00410d90) > 1
        %error "LONG_00410D90"
    %endif
    times 1 - ($ - %%insn_00410d90) db 0
    %%insn_00410d91:
    call 0x410e20 ; 00410D91 E88A000000
    %if ($ - %%insn_00410d91) > 5
        %error "LONG_00410D91"
    %endif
    times 5 - ($ - %%insn_00410d91) db 0
    %%insn_00410d96:
    mov ecx,[esp+0x8] ; 00410D96 8B4C2408
    %if ($ - %%insn_00410d96) > 4
        %error "LONG_00410D96"
    %endif
    times 4 - ($ - %%insn_00410d96) db 0
    db 0x33, 0xF6 ; 00410D9A 33F6 | xor esi,esi | encoding preserved
    %%insn_00410d9c:
    mov [eax],ecx ; 00410D9C 8908
    %if ($ - %%insn_00410d9c) > 2
        %error "LONG_00410D9C"
    %endif
    times 2 - ($ - %%insn_00410d9c) db 0
    %%insn_00410d9e:
    mov eax,0x41dff0 ; 00410D9E B8F0DF4100
    %if ($ - %%insn_00410d9e) > 5
        %error "LONG_00410D9E"
    %endif
    times 5 - ($ - %%insn_00410d9e) db 0
    %%insn_00410da3:
    cmp ecx,[eax] ; 00410DA3 3B08
    %if ($ - %%insn_00410da3) > 2
        %error "LONG_00410DA3"
    %endif
    times 2 - ($ - %%insn_00410da3) db 0
    %%insn_00410da5:
    jz short 0x410df3 ; 00410DA5 744C
    %if ($ - %%insn_00410da5) > 2
        %error "LONG_00410DA5"
    %endif
    times 2 - ($ - %%insn_00410da5) db 0
    %%insn_00410da7:
    add eax,0x8 ; 00410DA7 83C008
    %if ($ - %%insn_00410da7) > 3
        %error "LONG_00410DA7"
    %endif
    times 3 - ($ - %%insn_00410da7) db 0
    %%insn_00410daa:
    inc esi ; 00410DAA 46
    %if ($ - %%insn_00410daa) > 1
        %error "LONG_00410DAA"
    %endif
    times 1 - ($ - %%insn_00410daa) db 0
    %%insn_00410dab:
    cmp eax,0x41e158 ; 00410DAB 3D58E14100
    %if ($ - %%insn_00410dab) > 5
        %error "LONG_00410DAB"
    %endif
    times 5 - ($ - %%insn_00410dab) db 0
    %%insn_00410db0:
    jc short 0x410da3 ; 00410DB0 72F1
    %if ($ - %%insn_00410db0) > 2
        %error "LONG_00410DB0"
    %endif
    times 2 - ($ - %%insn_00410db0) db 0
    %%insn_00410db2:
    cmp ecx,0x13 ; 00410DB2 83F913
    %if ($ - %%insn_00410db2) > 3
        %error "LONG_00410DB2"
    %endif
    times 3 - ($ - %%insn_00410db2) db 0
    %%insn_00410db5:
    jc short 0x410dc9 ; 00410DB5 7212
    %if ($ - %%insn_00410db5) > 2
        %error "LONG_00410DB5"
    %endif
    times 2 - ($ - %%insn_00410db5) db 0
    %%insn_00410db7:
    cmp ecx,0x24 ; 00410DB7 83F924
    %if ($ - %%insn_00410db7) > 3
        %error "LONG_00410DB7"
    %endif
    times 3 - ($ - %%insn_00410db7) db 0
    %%insn_00410dba:
    ja short 0x410dc9 ; 00410DBA 770D
    %if ($ - %%insn_00410dba) > 2
        %error "LONG_00410DBA"
    %endif
    times 2 - ($ - %%insn_00410dba) db 0
    %%insn_00410dbc:
    call 0x410e10 ; 00410DBC E84F000000
    %if ($ - %%insn_00410dbc) > 5
        %error "LONG_00410DBC"
    %endif
    times 5 - ($ - %%insn_00410dbc) db 0
    %%insn_00410dc1:
    mov dword [eax],0xd ; 00410DC1 C7000D000000
    %if ($ - %%insn_00410dc1) > 6
        %error "LONG_00410DC1"
    %endif
    times 6 - ($ - %%insn_00410dc1) db 0
    %%insn_00410dc7:
    pop esi ; 00410DC7 5E
    %if ($ - %%insn_00410dc7) > 1
        %error "LONG_00410DC7"
    %endif
    times 1 - ($ - %%insn_00410dc7) db 0
    %%insn_00410dc8:
    ret ; 00410DC8 C3
    %if ($ - %%insn_00410dc8) > 1
        %error "LONG_00410DC8"
    %endif
    times 1 - ($ - %%insn_00410dc8) db 0
    %%insn_00410dc9:
    cmp ecx,0xbc ; 00410DC9 81F9BC000000
    %if ($ - %%insn_00410dc9) > 6
        %error "LONG_00410DC9"
    %endif
    times 6 - ($ - %%insn_00410dc9) db 0
    %%insn_00410dcf:
    jc short 0x410de6 ; 00410DCF 7215
    %if ($ - %%insn_00410dcf) > 2
        %error "LONG_00410DCF"
    %endif
    times 2 - ($ - %%insn_00410dcf) db 0
    %%insn_00410dd1:
    cmp ecx,0xca ; 00410DD1 81F9CA000000
    %if ($ - %%insn_00410dd1) > 6
        %error "LONG_00410DD1"
    %endif
    times 6 - ($ - %%insn_00410dd1) db 0
    %%insn_00410dd7:
    ja short 0x410de6 ; 00410DD7 770D
    %if ($ - %%insn_00410dd7) > 2
        %error "LONG_00410DD7"
    %endif
    times 2 - ($ - %%insn_00410dd7) db 0
    %%insn_00410dd9:
    call 0x410e10 ; 00410DD9 E832000000
    %if ($ - %%insn_00410dd9) > 5
        %error "LONG_00410DD9"
    %endif
    times 5 - ($ - %%insn_00410dd9) db 0
    %%insn_00410dde:
    mov dword [eax],0x8 ; 00410DDE C70008000000
    %if ($ - %%insn_00410dde) > 6
        %error "LONG_00410DDE"
    %endif
    times 6 - ($ - %%insn_00410dde) db 0
    %%insn_00410de4:
    pop esi ; 00410DE4 5E
    %if ($ - %%insn_00410de4) > 1
        %error "LONG_00410DE4"
    %endif
    times 1 - ($ - %%insn_00410de4) db 0
    %%insn_00410de5:
    ret ; 00410DE5 C3
    %if ($ - %%insn_00410de5) > 1
        %error "LONG_00410DE5"
    %endif
    times 1 - ($ - %%insn_00410de5) db 0
    %%insn_00410de6:
    call 0x410e10 ; 00410DE6 E825000000
    %if ($ - %%insn_00410de6) > 5
        %error "LONG_00410DE6"
    %endif
    times 5 - ($ - %%insn_00410de6) db 0
    %%insn_00410deb:
    mov dword [eax],0x16 ; 00410DEB C70016000000
    %if ($ - %%insn_00410deb) > 6
        %error "LONG_00410DEB"
    %endif
    times 6 - ($ - %%insn_00410deb) db 0
    %%insn_00410df1:
    pop esi ; 00410DF1 5E
    %if ($ - %%insn_00410df1) > 1
        %error "LONG_00410DF1"
    %endif
    times 1 - ($ - %%insn_00410df1) db 0
    %%insn_00410df2:
    ret ; 00410DF2 C3
    %if ($ - %%insn_00410df2) > 1
        %error "LONG_00410DF2"
    %endif
    times 1 - ($ - %%insn_00410df2) db 0
    %%insn_00410df3:
    call 0x410e10 ; 00410DF3 E818000000
    %if ($ - %%insn_00410df3) > 5
        %error "LONG_00410DF3"
    %endif
    times 5 - ($ - %%insn_00410df3) db 0
    %%insn_00410df8:
    mov ecx,[esi*8+0x41dff4] ; 00410DF8 8B0CF5F4DF4100
    %if ($ - %%insn_00410df8) > 7
        %error "LONG_00410DF8"
    %endif
    times 7 - ($ - %%insn_00410df8) db 0
    %%insn_00410dff:
    pop esi ; 00410DFF 5E
    %if ($ - %%insn_00410dff) > 1
        %error "LONG_00410DFF"
    %endif
    times 1 - ($ - %%insn_00410dff) db 0
    %%insn_00410e00:
    mov [eax],ecx ; 00410E00 8908
    %if ($ - %%insn_00410e00) > 2
        %error "LONG_00410E00"
    %endif
    times 2 - ($ - %%insn_00410e00) db 0
    %%insn_00410e02:
    ret ; 00410E02 C3
    %if ($ - %%insn_00410e02) > 1
        %error "LONG_00410E02"
    %endif
    times 1 - ($ - %%insn_00410e02) db 0
    %if ($ - %%fragment_start) != 115
        %error "function fragment size drift: 00410D90"
    %endif
%endmacro
