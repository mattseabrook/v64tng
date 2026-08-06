; PE virtual entry 00412DC0
; Ghidra working symbol: __aulldiv
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00412dc0_part_00 0
    %%fragment_start:
func_00412dc0:
    %%insn_00412dc0:
    push ebx ; 00412DC0 53
    %if ($ - %%insn_00412dc0) > 1
        %error "LONG_00412DC0"
    %endif
    times 1 - ($ - %%insn_00412dc0) db 0
    %%insn_00412dc1:
    push esi ; 00412DC1 56
    %if ($ - %%insn_00412dc1) > 1
        %error "LONG_00412DC1"
    %endif
    times 1 - ($ - %%insn_00412dc1) db 0
    %%insn_00412dc2:
    mov eax,[esp+0x18] ; 00412DC2 8B442418
    %if ($ - %%insn_00412dc2) > 4
        %error "LONG_00412DC2"
    %endif
    times 4 - ($ - %%insn_00412dc2) db 0
    db 0x0B, 0xC0 ; 00412DC6 0BC0 | or eax,eax | encoding preserved
    %%insn_00412dc8:
    jnz short 0x412de2 ; 00412DC8 7518
    %if ($ - %%insn_00412dc8) > 2
        %error "LONG_00412DC8"
    %endif
    times 2 - ($ - %%insn_00412dc8) db 0
    %%insn_00412dca:
    mov ecx,[esp+0x14] ; 00412DCA 8B4C2414
    %if ($ - %%insn_00412dca) > 4
        %error "LONG_00412DCA"
    %endif
    times 4 - ($ - %%insn_00412dca) db 0
    %%insn_00412dce:
    mov eax,[esp+0x10] ; 00412DCE 8B442410
    %if ($ - %%insn_00412dce) > 4
        %error "LONG_00412DCE"
    %endif
    times 4 - ($ - %%insn_00412dce) db 0
    db 0x33, 0xD2 ; 00412DD2 33D2 | xor edx,edx | encoding preserved
    %%insn_00412dd4:
    div ecx ; 00412DD4 F7F1
    %if ($ - %%insn_00412dd4) > 2
        %error "LONG_00412DD4"
    %endif
    times 2 - ($ - %%insn_00412dd4) db 0
    db 0x8B, 0xD8 ; 00412DD6 8BD8 | mov ebx,eax | encoding preserved
    %%insn_00412dd8:
    mov eax,[esp+0xc] ; 00412DD8 8B44240C
    %if ($ - %%insn_00412dd8) > 4
        %error "LONG_00412DD8"
    %endif
    times 4 - ($ - %%insn_00412dd8) db 0
    %%insn_00412ddc:
    div ecx ; 00412DDC F7F1
    %if ($ - %%insn_00412ddc) > 2
        %error "LONG_00412DDC"
    %endif
    times 2 - ($ - %%insn_00412ddc) db 0
    db 0x8B, 0xD3 ; 00412DDE 8BD3 | mov edx,ebx | encoding preserved
    %%insn_00412de0:
    jmp short 0x412e23 ; 00412DE0 EB41
    %if ($ - %%insn_00412de0) > 2
        %error "LONG_00412DE0"
    %endif
    times 2 - ($ - %%insn_00412de0) db 0
    db 0x8B, 0xC8 ; 00412DE2 8BC8 | mov ecx,eax | encoding preserved
    %%insn_00412de4:
    mov ebx,[esp+0x14] ; 00412DE4 8B5C2414
    %if ($ - %%insn_00412de4) > 4
        %error "LONG_00412DE4"
    %endif
    times 4 - ($ - %%insn_00412de4) db 0
    %%insn_00412de8:
    mov edx,[esp+0x10] ; 00412DE8 8B542410
    %if ($ - %%insn_00412de8) > 4
        %error "LONG_00412DE8"
    %endif
    times 4 - ($ - %%insn_00412de8) db 0
    %%insn_00412dec:
    mov eax,[esp+0xc] ; 00412DEC 8B44240C
    %if ($ - %%insn_00412dec) > 4
        %error "LONG_00412DEC"
    %endif
    times 4 - ($ - %%insn_00412dec) db 0
    %%insn_00412df0:
    shr ecx,1 ; 00412DF0 D1E9
    %if ($ - %%insn_00412df0) > 2
        %error "LONG_00412DF0"
    %endif
    times 2 - ($ - %%insn_00412df0) db 0
    %%insn_00412df2:
    rcr ebx,1 ; 00412DF2 D1DB
    %if ($ - %%insn_00412df2) > 2
        %error "LONG_00412DF2"
    %endif
    times 2 - ($ - %%insn_00412df2) db 0
    %%insn_00412df4:
    shr edx,1 ; 00412DF4 D1EA
    %if ($ - %%insn_00412df4) > 2
        %error "LONG_00412DF4"
    %endif
    times 2 - ($ - %%insn_00412df4) db 0
    %%insn_00412df6:
    rcr eax,1 ; 00412DF6 D1D8
    %if ($ - %%insn_00412df6) > 2
        %error "LONG_00412DF6"
    %endif
    times 2 - ($ - %%insn_00412df6) db 0
    db 0x0B, 0xC9 ; 00412DF8 0BC9 | or ecx,ecx | encoding preserved
    %%insn_00412dfa:
    jnz short 0x412df0 ; 00412DFA 75F4
    %if ($ - %%insn_00412dfa) > 2
        %error "LONG_00412DFA"
    %endif
    times 2 - ($ - %%insn_00412dfa) db 0
    %%insn_00412dfc:
    div ebx ; 00412DFC F7F3
    %if ($ - %%insn_00412dfc) > 2
        %error "LONG_00412DFC"
    %endif
    times 2 - ($ - %%insn_00412dfc) db 0
    db 0x8B, 0xF0 ; 00412DFE 8BF0 | mov esi,eax | encoding preserved
    %%insn_00412e00:
    mul dword [esp+0x18] ; 00412E00 F7642418
    %if ($ - %%insn_00412e00) > 4
        %error "LONG_00412E00"
    %endif
    times 4 - ($ - %%insn_00412e00) db 0
    db 0x8B, 0xC8 ; 00412E04 8BC8 | mov ecx,eax | encoding preserved
    %%insn_00412e06:
    mov eax,[esp+0x14] ; 00412E06 8B442414
    %if ($ - %%insn_00412e06) > 4
        %error "LONG_00412E06"
    %endif
    times 4 - ($ - %%insn_00412e06) db 0
    %%insn_00412e0a:
    mul esi ; 00412E0A F7E6
    %if ($ - %%insn_00412e0a) > 2
        %error "LONG_00412E0A"
    %endif
    times 2 - ($ - %%insn_00412e0a) db 0
    db 0x03, 0xD1 ; 00412E0C 03D1 | add edx,ecx | encoding preserved
    %%insn_00412e0e:
    jc short 0x412e1e ; 00412E0E 720E
    %if ($ - %%insn_00412e0e) > 2
        %error "LONG_00412E0E"
    %endif
    times 2 - ($ - %%insn_00412e0e) db 0
    %%insn_00412e10:
    cmp edx,[esp+0x10] ; 00412E10 3B542410
    %if ($ - %%insn_00412e10) > 4
        %error "LONG_00412E10"
    %endif
    times 4 - ($ - %%insn_00412e10) db 0
    %%insn_00412e14:
    ja short 0x412e1e ; 00412E14 7708
    %if ($ - %%insn_00412e14) > 2
        %error "LONG_00412E14"
    %endif
    times 2 - ($ - %%insn_00412e14) db 0
    %%insn_00412e16:
    jc short 0x412e1f ; 00412E16 7207
    %if ($ - %%insn_00412e16) > 2
        %error "LONG_00412E16"
    %endif
    times 2 - ($ - %%insn_00412e16) db 0
    %%insn_00412e18:
    cmp eax,[esp+0xc] ; 00412E18 3B44240C
    %if ($ - %%insn_00412e18) > 4
        %error "LONG_00412E18"
    %endif
    times 4 - ($ - %%insn_00412e18) db 0
    %%insn_00412e1c:
    jna short 0x412e1f ; 00412E1C 7601
    %if ($ - %%insn_00412e1c) > 2
        %error "LONG_00412E1C"
    %endif
    times 2 - ($ - %%insn_00412e1c) db 0
    %%insn_00412e1e:
    dec esi ; 00412E1E 4E
    %if ($ - %%insn_00412e1e) > 1
        %error "LONG_00412E1E"
    %endif
    times 1 - ($ - %%insn_00412e1e) db 0
    db 0x33, 0xD2 ; 00412E1F 33D2 | xor edx,edx | encoding preserved
    db 0x8B, 0xC6 ; 00412E21 8BC6 | mov eax,esi | encoding preserved
    %%insn_00412e23:
    pop esi ; 00412E23 5E
    %if ($ - %%insn_00412e23) > 1
        %error "LONG_00412E23"
    %endif
    times 1 - ($ - %%insn_00412e23) db 0
    %%insn_00412e24:
    pop ebx ; 00412E24 5B
    %if ($ - %%insn_00412e24) > 1
        %error "LONG_00412E24"
    %endif
    times 1 - ($ - %%insn_00412e24) db 0
    %%insn_00412e25:
    ret word 0x10 ; 00412E25 C21000
    %if ($ - %%insn_00412e25) > 3
        %error "LONG_00412E25"
    %endif
    times 3 - ($ - %%insn_00412e25) db 0
    %if ($ - %%fragment_start) != 104
        %error "function fragment size drift: 00412DC0"
    %endif
%endmacro
