; PE virtual entry 0040F9E0
; Ghidra working symbol: FUN_0040f9e0
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040f9e0_part_00 0
    %%fragment_start:
func_0040f9e0:
    %%insn_0040f9e0:
    mov eax,[0x423580] ; 0040F9E0 A180354200
    %if ($ - %%insn_0040f9e0) > 5
        %error "LONG_0040F9E0"
    %endif
    times 5 - ($ - %%insn_0040f9e0) db 0
    %%insn_0040f9e5:
    push esi ; 0040F9E5 56
    %if ($ - %%insn_0040f9e5) > 1
        %error "LONG_0040F9E5"
    %endif
    times 1 - ($ - %%insn_0040f9e5) db 0
    %%insn_0040f9e6:
    mov esi,[esp+0x8] ; 0040F9E6 8B742408
    %if ($ - %%insn_0040f9e6) > 4
        %error "LONG_0040F9E6"
    %endif
    times 4 - ($ - %%insn_0040f9e6) db 0
    %%insn_0040f9ea:
    push edi ; 0040F9EA 57
    %if ($ - %%insn_0040f9ea) > 1
        %error "LONG_0040F9EA"
    %endif
    times 1 - ($ - %%insn_0040f9ea) db 0
    db 0x3B, 0xF0 ; 0040F9EB 3BF0 | cmp esi,eax | encoding preserved
    %%insn_0040f9ed:
    jnc short 0x40fa36 ; 0040F9ED 7347
    %if ($ - %%insn_0040f9ed) > 2
        %error "LONG_0040F9ED"
    %endif
    times 2 - ($ - %%insn_0040f9ed) db 0
    db 0x8B, 0xC6 ; 0040F9EF 8BC6 | mov eax,esi | encoding preserved
    db 0x8B, 0xCE ; 0040F9F1 8BCE | mov ecx,esi | encoding preserved
    %%insn_0040f9f3:
    and eax,0x1f ; 0040F9F3 83E01F
    %if ($ - %%insn_0040f9f3) > 3
        %error "LONG_0040F9F3"
    %endif
    times 3 - ($ - %%insn_0040f9f3) db 0
    %%insn_0040f9f6:
    sar ecx,byte 0x5 ; 0040F9F6 C1F905
    %if ($ - %%insn_0040f9f6) > 3
        %error "LONG_0040F9F6"
    %endif
    times 3 - ($ - %%insn_0040f9f6) db 0
    %%insn_0040f9f9:
    lea edx,[eax+eax*8] ; 0040F9F9 8D14C0
    %if ($ - %%insn_0040f9f9) > 3
        %error "LONG_0040F9F9"
    %endif
    times 3 - ($ - %%insn_0040f9f9) db 0
    %%insn_0040f9fc:
    mov eax,[ecx*4+0x423480] ; 0040F9FC 8B048D80344200
    %if ($ - %%insn_0040f9fc) > 7
        %error "LONG_0040F9FC"
    %endif
    times 7 - ($ - %%insn_0040f9fc) db 0
    %%insn_0040fa03:
    test byte [eax+edx*4+0x4],0x1 ; 0040FA03 F644900401
    %if ($ - %%insn_0040fa03) > 5
        %error "LONG_0040FA03"
    %endif
    times 5 - ($ - %%insn_0040fa03) db 0
    %%insn_0040fa08:
    jz short 0x40fa36 ; 0040FA08 742C
    %if ($ - %%insn_0040fa08) > 2
        %error "LONG_0040FA08"
    %endif
    times 2 - ($ - %%insn_0040fa08) db 0
    %%insn_0040fa0a:
    push esi ; 0040FA0A 56
    %if ($ - %%insn_0040fa0a) > 1
        %error "LONG_0040FA0A"
    %endif
    times 1 - ($ - %%insn_0040fa0a) db 0
    %%insn_0040fa0b:
    call 0x4111f0 ; 0040FA0B E8E0170000
    %if ($ - %%insn_0040fa0b) > 5
        %error "LONG_0040FA0B"
    %endif
    times 5 - ($ - %%insn_0040fa0b) db 0
    %%insn_0040fa10:
    mov ecx,[esp+0x18] ; 0040FA10 8B4C2418
    %if ($ - %%insn_0040fa10) > 4
        %error "LONG_0040FA10"
    %endif
    times 4 - ($ - %%insn_0040fa10) db 0
    %%insn_0040fa14:
    mov edx,[esp+0x14] ; 0040FA14 8B542414
    %if ($ - %%insn_0040fa14) > 4
        %error "LONG_0040FA14"
    %endif
    times 4 - ($ - %%insn_0040fa14) db 0
    %%insn_0040fa18:
    add esp,0x4 ; 0040FA18 83C404
    %if ($ - %%insn_0040fa18) > 3
        %error "LONG_0040FA18"
    %endif
    times 3 - ($ - %%insn_0040fa18) db 0
    %%insn_0040fa1b:
    push ecx ; 0040FA1B 51
    %if ($ - %%insn_0040fa1b) > 1
        %error "LONG_0040FA1B"
    %endif
    times 1 - ($ - %%insn_0040fa1b) db 0
    %%insn_0040fa1c:
    push edx ; 0040FA1C 52
    %if ($ - %%insn_0040fa1c) > 1
        %error "LONG_0040FA1C"
    %endif
    times 1 - ($ - %%insn_0040fa1c) db 0
    %%insn_0040fa1d:
    push esi ; 0040FA1D 56
    %if ($ - %%insn_0040fa1d) > 1
        %error "LONG_0040FA1D"
    %endif
    times 1 - ($ - %%insn_0040fa1d) db 0
    %%insn_0040fa1e:
    call 0x40fa60 ; 0040FA1E E83D000000
    %if ($ - %%insn_0040fa1e) > 5
        %error "LONG_0040FA1E"
    %endif
    times 5 - ($ - %%insn_0040fa1e) db 0
    %%insn_0040fa23:
    add esp,0xc ; 0040FA23 83C40C
    %if ($ - %%insn_0040fa23) > 3
        %error "LONG_0040FA23"
    %endif
    times 3 - ($ - %%insn_0040fa23) db 0
    db 0x8B, 0xF8 ; 0040FA26 8BF8 | mov edi,eax | encoding preserved
    %%insn_0040fa28:
    push esi ; 0040FA28 56
    %if ($ - %%insn_0040fa28) > 1
        %error "LONG_0040FA28"
    %endif
    times 1 - ($ - %%insn_0040fa28) db 0
    %%insn_0040fa29:
    call 0x411260 ; 0040FA29 E832180000
    %if ($ - %%insn_0040fa29) > 5
        %error "LONG_0040FA29"
    %endif
    times 5 - ($ - %%insn_0040fa29) db 0
    %%insn_0040fa2e:
    add esp,0x4 ; 0040FA2E 83C404
    %if ($ - %%insn_0040fa2e) > 3
        %error "LONG_0040FA2E"
    %endif
    times 3 - ($ - %%insn_0040fa2e) db 0
    db 0x8B, 0xC7 ; 0040FA31 8BC7 | mov eax,edi | encoding preserved
    %%insn_0040fa33:
    pop edi ; 0040FA33 5F
    %if ($ - %%insn_0040fa33) > 1
        %error "LONG_0040FA33"
    %endif
    times 1 - ($ - %%insn_0040fa33) db 0
    %%insn_0040fa34:
    pop esi ; 0040FA34 5E
    %if ($ - %%insn_0040fa34) > 1
        %error "LONG_0040FA34"
    %endif
    times 1 - ($ - %%insn_0040fa34) db 0
    %%insn_0040fa35:
    ret ; 0040FA35 C3
    %if ($ - %%insn_0040fa35) > 1
        %error "LONG_0040FA35"
    %endif
    times 1 - ($ - %%insn_0040fa35) db 0
    %%insn_0040fa36:
    call 0x410e10 ; 0040FA36 E8D5130000
    %if ($ - %%insn_0040fa36) > 5
        %error "LONG_0040FA36"
    %endif
    times 5 - ($ - %%insn_0040fa36) db 0
    %%insn_0040fa3b:
    mov dword [eax],0x9 ; 0040FA3B C70009000000
    %if ($ - %%insn_0040fa3b) > 6
        %error "LONG_0040FA3B"
    %endif
    times 6 - ($ - %%insn_0040fa3b) db 0
    %%insn_0040fa41:
    call 0x410e20 ; 0040FA41 E8DA130000
    %if ($ - %%insn_0040fa41) > 5
        %error "LONG_0040FA41"
    %endif
    times 5 - ($ - %%insn_0040fa41) db 0
    %%insn_0040fa46:
    mov dword [eax],0x0 ; 0040FA46 C70000000000
    %if ($ - %%insn_0040fa46) > 6
        %error "LONG_0040FA46"
    %endif
    times 6 - ($ - %%insn_0040fa46) db 0
    %%insn_0040fa4c:
    pop edi ; 0040FA4C 5F
    %if ($ - %%insn_0040fa4c) > 1
        %error "LONG_0040FA4C"
    %endif
    times 1 - ($ - %%insn_0040fa4c) db 0
    %%insn_0040fa4d:
    or eax,0xffffffffffffffff ; 0040FA4D 83C8FF
    %if ($ - %%insn_0040fa4d) > 3
        %error "LONG_0040FA4D"
    %endif
    times 3 - ($ - %%insn_0040fa4d) db 0
    %%insn_0040fa50:
    pop esi ; 0040FA50 5E
    %if ($ - %%insn_0040fa50) > 1
        %error "LONG_0040FA50"
    %endif
    times 1 - ($ - %%insn_0040fa50) db 0
    %%insn_0040fa51:
    ret ; 0040FA51 C3
    %if ($ - %%insn_0040fa51) > 1
        %error "LONG_0040FA51"
    %endif
    times 1 - ($ - %%insn_0040fa51) db 0
    %if ($ - %%fragment_start) != 114
        %error "function fragment size drift: 0040F9E0"
    %endif
%endmacro
