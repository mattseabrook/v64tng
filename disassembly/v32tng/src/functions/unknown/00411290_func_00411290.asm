; PE virtual entry 00411290
; Ghidra working symbol: FUN_00411290
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00411290_part_00 0
    %%fragment_start:
func_00411290:
    %%insn_00411290:
    mov eax,[0x423580] ; 00411290 A180354200
    %if ($ - %%insn_00411290) > 5
        %error "LONG_00411290"
    %endif
    times 5 - ($ - %%insn_00411290) db 0
    %%insn_00411295:
    push esi ; 00411295 56
    %if ($ - %%insn_00411295) > 1
        %error "LONG_00411295"
    %endif
    times 1 - ($ - %%insn_00411295) db 0
    %%insn_00411296:
    mov esi,[esp+0x8] ; 00411296 8B742408
    %if ($ - %%insn_00411296) > 4
        %error "LONG_00411296"
    %endif
    times 4 - ($ - %%insn_00411296) db 0
    %%insn_0041129a:
    push edi ; 0041129A 57
    %if ($ - %%insn_0041129a) > 1
        %error "LONG_0041129A"
    %endif
    times 1 - ($ - %%insn_0041129a) db 0
    db 0x3B, 0xF0 ; 0041129B 3BF0 | cmp esi,eax | encoding preserved
    %%insn_0041129d:
    jnc short 0x4112e6 ; 0041129D 7347
    %if ($ - %%insn_0041129d) > 2
        %error "LONG_0041129D"
    %endif
    times 2 - ($ - %%insn_0041129d) db 0
    db 0x8B, 0xC6 ; 0041129F 8BC6 | mov eax,esi | encoding preserved
    db 0x8B, 0xCE ; 004112A1 8BCE | mov ecx,esi | encoding preserved
    %%insn_004112a3:
    and eax,0x1f ; 004112A3 83E01F
    %if ($ - %%insn_004112a3) > 3
        %error "LONG_004112A3"
    %endif
    times 3 - ($ - %%insn_004112a3) db 0
    %%insn_004112a6:
    sar ecx,byte 0x5 ; 004112A6 C1F905
    %if ($ - %%insn_004112a6) > 3
        %error "LONG_004112A6"
    %endif
    times 3 - ($ - %%insn_004112a6) db 0
    %%insn_004112a9:
    lea edx,[eax+eax*8] ; 004112A9 8D14C0
    %if ($ - %%insn_004112a9) > 3
        %error "LONG_004112A9"
    %endif
    times 3 - ($ - %%insn_004112a9) db 0
    %%insn_004112ac:
    mov eax,[ecx*4+0x423480] ; 004112AC 8B048D80344200
    %if ($ - %%insn_004112ac) > 7
        %error "LONG_004112AC"
    %endif
    times 7 - ($ - %%insn_004112ac) db 0
    %%insn_004112b3:
    test byte [eax+edx*4+0x4],0x1 ; 004112B3 F644900401
    %if ($ - %%insn_004112b3) > 5
        %error "LONG_004112B3"
    %endif
    times 5 - ($ - %%insn_004112b3) db 0
    %%insn_004112b8:
    jz short 0x4112e6 ; 004112B8 742C
    %if ($ - %%insn_004112b8) > 2
        %error "LONG_004112B8"
    %endif
    times 2 - ($ - %%insn_004112b8) db 0
    %%insn_004112ba:
    push esi ; 004112BA 56
    %if ($ - %%insn_004112ba) > 1
        %error "LONG_004112BA"
    %endif
    times 1 - ($ - %%insn_004112ba) db 0
    %%insn_004112bb:
    call 0x4111f0 ; 004112BB E830FFFFFF
    %if ($ - %%insn_004112bb) > 5
        %error "LONG_004112BB"
    %endif
    times 5 - ($ - %%insn_004112bb) db 0
    %%insn_004112c0:
    mov ecx,[esp+0x18] ; 004112C0 8B4C2418
    %if ($ - %%insn_004112c0) > 4
        %error "LONG_004112C0"
    %endif
    times 4 - ($ - %%insn_004112c0) db 0
    %%insn_004112c4:
    mov edx,[esp+0x14] ; 004112C4 8B542414
    %if ($ - %%insn_004112c4) > 4
        %error "LONG_004112C4"
    %endif
    times 4 - ($ - %%insn_004112c4) db 0
    %%insn_004112c8:
    add esp,0x4 ; 004112C8 83C404
    %if ($ - %%insn_004112c8) > 3
        %error "LONG_004112C8"
    %endif
    times 3 - ($ - %%insn_004112c8) db 0
    %%insn_004112cb:
    push ecx ; 004112CB 51
    %if ($ - %%insn_004112cb) > 1
        %error "LONG_004112CB"
    %endif
    times 1 - ($ - %%insn_004112cb) db 0
    %%insn_004112cc:
    push edx ; 004112CC 52
    %if ($ - %%insn_004112cc) > 1
        %error "LONG_004112CC"
    %endif
    times 1 - ($ - %%insn_004112cc) db 0
    %%insn_004112cd:
    push esi ; 004112CD 56
    %if ($ - %%insn_004112cd) > 1
        %error "LONG_004112CD"
    %endif
    times 1 - ($ - %%insn_004112cd) db 0
    %%insn_004112ce:
    call 0x411310 ; 004112CE E83D000000
    %if ($ - %%insn_004112ce) > 5
        %error "LONG_004112CE"
    %endif
    times 5 - ($ - %%insn_004112ce) db 0
    %%insn_004112d3:
    add esp,0xc ; 004112D3 83C40C
    %if ($ - %%insn_004112d3) > 3
        %error "LONG_004112D3"
    %endif
    times 3 - ($ - %%insn_004112d3) db 0
    db 0x8B, 0xF8 ; 004112D6 8BF8 | mov edi,eax | encoding preserved
    %%insn_004112d8:
    push esi ; 004112D8 56
    %if ($ - %%insn_004112d8) > 1
        %error "LONG_004112D8"
    %endif
    times 1 - ($ - %%insn_004112d8) db 0
    %%insn_004112d9:
    call 0x411260 ; 004112D9 E882FFFFFF
    %if ($ - %%insn_004112d9) > 5
        %error "LONG_004112D9"
    %endif
    times 5 - ($ - %%insn_004112d9) db 0
    %%insn_004112de:
    add esp,0x4 ; 004112DE 83C404
    %if ($ - %%insn_004112de) > 3
        %error "LONG_004112DE"
    %endif
    times 3 - ($ - %%insn_004112de) db 0
    db 0x8B, 0xC7 ; 004112E1 8BC7 | mov eax,edi | encoding preserved
    %%insn_004112e3:
    pop edi ; 004112E3 5F
    %if ($ - %%insn_004112e3) > 1
        %error "LONG_004112E3"
    %endif
    times 1 - ($ - %%insn_004112e3) db 0
    %%insn_004112e4:
    pop esi ; 004112E4 5E
    %if ($ - %%insn_004112e4) > 1
        %error "LONG_004112E4"
    %endif
    times 1 - ($ - %%insn_004112e4) db 0
    %%insn_004112e5:
    ret ; 004112E5 C3
    %if ($ - %%insn_004112e5) > 1
        %error "LONG_004112E5"
    %endif
    times 1 - ($ - %%insn_004112e5) db 0
    %%insn_004112e6:
    call 0x410e10 ; 004112E6 E825FBFFFF
    %if ($ - %%insn_004112e6) > 5
        %error "LONG_004112E6"
    %endif
    times 5 - ($ - %%insn_004112e6) db 0
    %%insn_004112eb:
    mov dword [eax],0x9 ; 004112EB C70009000000
    %if ($ - %%insn_004112eb) > 6
        %error "LONG_004112EB"
    %endif
    times 6 - ($ - %%insn_004112eb) db 0
    %%insn_004112f1:
    call 0x410e20 ; 004112F1 E82AFBFFFF
    %if ($ - %%insn_004112f1) > 5
        %error "LONG_004112F1"
    %endif
    times 5 - ($ - %%insn_004112f1) db 0
    %%insn_004112f6:
    mov dword [eax],0x0 ; 004112F6 C70000000000
    %if ($ - %%insn_004112f6) > 6
        %error "LONG_004112F6"
    %endif
    times 6 - ($ - %%insn_004112f6) db 0
    %%insn_004112fc:
    pop edi ; 004112FC 5F
    %if ($ - %%insn_004112fc) > 1
        %error "LONG_004112FC"
    %endif
    times 1 - ($ - %%insn_004112fc) db 0
    %%insn_004112fd:
    or eax,0xffffffffffffffff ; 004112FD 83C8FF
    %if ($ - %%insn_004112fd) > 3
        %error "LONG_004112FD"
    %endif
    times 3 - ($ - %%insn_004112fd) db 0
    %%insn_00411300:
    pop esi ; 00411300 5E
    %if ($ - %%insn_00411300) > 1
        %error "LONG_00411300"
    %endif
    times 1 - ($ - %%insn_00411300) db 0
    %%insn_00411301:
    ret ; 00411301 C3
    %if ($ - %%insn_00411301) > 1
        %error "LONG_00411301"
    %endif
    times 1 - ($ - %%insn_00411301) db 0
    %if ($ - %%fragment_start) != 114
        %error "function fragment size drift: 00411290"
    %endif
%endmacro
