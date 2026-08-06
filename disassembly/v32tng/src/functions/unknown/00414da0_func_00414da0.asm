; PE virtual entry 00414DA0
; Ghidra working symbol: FUN_00414da0
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00414da0_part_00 0
    %%fragment_start:
func_00414da0:
    %%insn_00414da0:
    push ecx ; 00414DA0 51
    %if ($ - %%insn_00414da0) > 1
        %error "LONG_00414DA0"
    %endif
    times 1 - ($ - %%insn_00414da0) db 0
    %%insn_00414da1:
    mov ecx,[esp+0x8] ; 00414DA1 8B4C2408
    %if ($ - %%insn_00414da1) > 4
        %error "LONG_00414DA1"
    %endif
    times 4 - ($ - %%insn_00414da1) db 0
    %%insn_00414da5:
    push esi ; 00414DA5 56
    %if ($ - %%insn_00414da5) > 1
        %error "LONG_00414DA5"
    %endif
    times 1 - ($ - %%insn_00414da5) db 0
    %%insn_00414da6:
    lea eax,[ecx+0x1] ; 00414DA6 8D4101
    %if ($ - %%insn_00414da6) > 3
        %error "LONG_00414DA6"
    %endif
    times 3 - ($ - %%insn_00414da6) db 0
    %%insn_00414da9:
    cmp eax,0x100 ; 00414DA9 3D00010000
    %if ($ - %%insn_00414da9) > 5
        %error "LONG_00414DA9"
    %endif
    times 5 - ($ - %%insn_00414da9) db 0
    %%insn_00414dae:
    ja short 0x414dc5 ; 00414DAE 7715
    %if ($ - %%insn_00414dae) > 2
        %error "LONG_00414DAE"
    %endif
    times 2 - ($ - %%insn_00414dae) db 0
    %%insn_00414db0:
    mov edx,[0x41e640] ; 00414DB0 8B1540E64100
    %if ($ - %%insn_00414db0) > 6
        %error "LONG_00414DB0"
    %endif
    times 6 - ($ - %%insn_00414db0) db 0
    db 0x33, 0xC0 ; 00414DB6 33C0 | xor eax,eax | encoding preserved
    %%insn_00414db8:
    mov ax,[edx+ecx*2] ; 00414DB8 668B044A
    %if ($ - %%insn_00414db8) > 4
        %error "LONG_00414DB8"
    %endif
    times 4 - ($ - %%insn_00414db8) db 0
    %%insn_00414dbc:
    mov ecx,[esp+0x10] ; 00414DBC 8B4C2410
    %if ($ - %%insn_00414dbc) > 4
        %error "LONG_00414DBC"
    %endif
    times 4 - ($ - %%insn_00414dbc) db 0
    db 0x23, 0xC1 ; 00414DC0 23C1 | and eax,ecx | encoding preserved
    %%insn_00414dc2:
    pop esi ; 00414DC2 5E
    %if ($ - %%insn_00414dc2) > 1
        %error "LONG_00414DC2"
    %endif
    times 1 - ($ - %%insn_00414dc2) db 0
    %%insn_00414dc3:
    pop ecx ; 00414DC3 59
    %if ($ - %%insn_00414dc3) > 1
        %error "LONG_00414DC3"
    %endif
    times 1 - ($ - %%insn_00414dc3) db 0
    %%insn_00414dc4:
    ret ; 00414DC4 C3
    %if ($ - %%insn_00414dc4) > 1
        %error "LONG_00414DC4"
    %endif
    times 1 - ($ - %%insn_00414dc4) db 0
    %%insn_00414dc5:
    mov esi,[0x41e640] ; 00414DC5 8B3540E64100
    %if ($ - %%insn_00414dc5) > 6
        %error "LONG_00414DC5"
    %endif
    times 6 - ($ - %%insn_00414dc5) db 0
    db 0x8B, 0xC1 ; 00414DCB 8BC1 | mov eax,ecx | encoding preserved
    %%insn_00414dcd:
    sar eax,byte 0x8 ; 00414DCD C1F808
    %if ($ - %%insn_00414dcd) > 3
        %error "LONG_00414DCD"
    %endif
    times 3 - ($ - %%insn_00414dcd) db 0
    db 0x8B, 0xD0 ; 00414DD0 8BD0 | mov edx,eax | encoding preserved
    %%insn_00414dd2:
    and edx,0xff ; 00414DD2 81E2FF000000
    %if ($ - %%insn_00414dd2) > 6
        %error "LONG_00414DD2"
    %endif
    times 6 - ($ - %%insn_00414dd2) db 0
    %%insn_00414dd8:
    test byte [esi+edx*2+0x1],0x80 ; 00414DD8 F644560180
    %if ($ - %%insn_00414dd8) > 5
        %error "LONG_00414DD8"
    %endif
    times 5 - ($ - %%insn_00414dd8) db 0
    %%insn_00414ddd:
    jz short 0x414df3 ; 00414DDD 7414
    %if ($ - %%insn_00414ddd) > 2
        %error "LONG_00414DDD"
    %endif
    times 2 - ($ - %%insn_00414ddd) db 0
    %%insn_00414ddf:
    mov [esp+0xc],al ; 00414DDF 8844240C
    %if ($ - %%insn_00414ddf) > 4
        %error "LONG_00414DDF"
    %endif
    times 4 - ($ - %%insn_00414ddf) db 0
    %%insn_00414de3:
    mov [esp+0xd],cl ; 00414DE3 884C240D
    %if ($ - %%insn_00414de3) > 4
        %error "LONG_00414DE3"
    %endif
    times 4 - ($ - %%insn_00414de3) db 0
    %%insn_00414de7:
    mov byte [esp+0xe],0x0 ; 00414DE7 C644240E00
    %if ($ - %%insn_00414de7) > 5
        %error "LONG_00414DE7"
    %endif
    times 5 - ($ - %%insn_00414de7) db 0
    %%insn_00414dec:
    mov eax,0x2 ; 00414DEC B802000000
    %if ($ - %%insn_00414dec) > 5
        %error "LONG_00414DEC"
    %endif
    times 5 - ($ - %%insn_00414dec) db 0
    %%insn_00414df1:
    jmp short 0x414e01 ; 00414DF1 EB0E
    %if ($ - %%insn_00414df1) > 2
        %error "LONG_00414DF1"
    %endif
    times 2 - ($ - %%insn_00414df1) db 0
    %%insn_00414df3:
    mov [esp+0xc],cl ; 00414DF3 884C240C
    %if ($ - %%insn_00414df3) > 4
        %error "LONG_00414DF3"
    %endif
    times 4 - ($ - %%insn_00414df3) db 0
    %%insn_00414df7:
    mov byte [esp+0xd],0x0 ; 00414DF7 C644240D00
    %if ($ - %%insn_00414df7) > 5
        %error "LONG_00414DF7"
    %endif
    times 5 - ($ - %%insn_00414df7) db 0
    %%insn_00414dfc:
    mov eax,0x1 ; 00414DFC B801000000
    %if ($ - %%insn_00414dfc) > 5
        %error "LONG_00414DFC"
    %endif
    times 5 - ($ - %%insn_00414dfc) db 0
    %%insn_00414e01:
    push dword 0x0 ; 00414E01 6A00
    %if ($ - %%insn_00414e01) > 2
        %error "LONG_00414E01"
    %endif
    times 2 - ($ - %%insn_00414e01) db 0
    %%insn_00414e03:
    lea ecx,[esp+0x8] ; 00414E03 8D4C2408
    %if ($ - %%insn_00414e03) > 4
        %error "LONG_00414E03"
    %endif
    times 4 - ($ - %%insn_00414e03) db 0
    %%insn_00414e07:
    push dword 0x0 ; 00414E07 6A00
    %if ($ - %%insn_00414e07) > 2
        %error "LONG_00414E07"
    %endif
    times 2 - ($ - %%insn_00414e07) db 0
    %%insn_00414e09:
    push ecx ; 00414E09 51
    %if ($ - %%insn_00414e09) > 1
        %error "LONG_00414E09"
    %endif
    times 1 - ($ - %%insn_00414e09) db 0
    %%insn_00414e0a:
    lea edx,[esp+0x18] ; 00414E0A 8D542418
    %if ($ - %%insn_00414e0a) > 4
        %error "LONG_00414E0A"
    %endif
    times 4 - ($ - %%insn_00414e0a) db 0
    %%insn_00414e0e:
    push eax ; 00414E0E 50
    %if ($ - %%insn_00414e0e) > 1
        %error "LONG_00414E0E"
    %endif
    times 1 - ($ - %%insn_00414e0e) db 0
    %%insn_00414e0f:
    push edx ; 00414E0F 52
    %if ($ - %%insn_00414e0f) > 1
        %error "LONG_00414E0F"
    %endif
    times 1 - ($ - %%insn_00414e0f) db 0
    %%insn_00414e10:
    push dword 0x1 ; 00414E10 6A01
    %if ($ - %%insn_00414e10) > 2
        %error "LONG_00414E10"
    %endif
    times 2 - ($ - %%insn_00414e10) db 0
    %%insn_00414e12:
    call 0x416d40 ; 00414E12 E8291F0000
    %if ($ - %%insn_00414e12) > 5
        %error "LONG_00414E12"
    %endif
    times 5 - ($ - %%insn_00414e12) db 0
    %%insn_00414e17:
    add esp,0x18 ; 00414E17 83C418
    %if ($ - %%insn_00414e17) > 3
        %error "LONG_00414E17"
    %endif
    times 3 - ($ - %%insn_00414e17) db 0
    %%insn_00414e1a:
    test eax,eax ; 00414E1A 85C0
    %if ($ - %%insn_00414e1a) > 2
        %error "LONG_00414E1A"
    %endif
    times 2 - ($ - %%insn_00414e1a) db 0
    %%insn_00414e1c:
    jnz short 0x414e21 ; 00414E1C 7503
    %if ($ - %%insn_00414e1c) > 2
        %error "LONG_00414E1C"
    %endif
    times 2 - ($ - %%insn_00414e1c) db 0
    %%insn_00414e1e:
    pop esi ; 00414E1E 5E
    %if ($ - %%insn_00414e1e) > 1
        %error "LONG_00414E1E"
    %endif
    times 1 - ($ - %%insn_00414e1e) db 0
    %%insn_00414e1f:
    pop ecx ; 00414E1F 59
    %if ($ - %%insn_00414e1f) > 1
        %error "LONG_00414E1F"
    %endif
    times 1 - ($ - %%insn_00414e1f) db 0
    %%insn_00414e20:
    ret ; 00414E20 C3
    %if ($ - %%insn_00414e20) > 1
        %error "LONG_00414E20"
    %endif
    times 1 - ($ - %%insn_00414e20) db 0
    %%insn_00414e21:
    mov eax,[esp+0x4] ; 00414E21 8B442404
    %if ($ - %%insn_00414e21) > 4
        %error "LONG_00414E21"
    %endif
    times 4 - ($ - %%insn_00414e21) db 0
    %%insn_00414e25:
    mov ecx,[esp+0x10] ; 00414E25 8B4C2410
    %if ($ - %%insn_00414e25) > 4
        %error "LONG_00414E25"
    %endif
    times 4 - ($ - %%insn_00414e25) db 0
    %%insn_00414e29:
    and eax,0xffff ; 00414E29 25FFFF0000
    %if ($ - %%insn_00414e29) > 5
        %error "LONG_00414E29"
    %endif
    times 5 - ($ - %%insn_00414e29) db 0
    %%insn_00414e2e:
    pop esi ; 00414E2E 5E
    %if ($ - %%insn_00414e2e) > 1
        %error "LONG_00414E2E"
    %endif
    times 1 - ($ - %%insn_00414e2e) db 0
    db 0x23, 0xC1 ; 00414E2F 23C1 | and eax,ecx | encoding preserved
    %%insn_00414e31:
    pop ecx ; 00414E31 59
    %if ($ - %%insn_00414e31) > 1
        %error "LONG_00414E31"
    %endif
    times 1 - ($ - %%insn_00414e31) db 0
    %%insn_00414e32:
    ret ; 00414E32 C3
    %if ($ - %%insn_00414e32) > 1
        %error "LONG_00414E32"
    %endif
    times 1 - ($ - %%insn_00414e32) db 0
    %if ($ - %%fragment_start) != 147
        %error "function fragment size drift: 00414DA0"
    %endif
%endmacro
