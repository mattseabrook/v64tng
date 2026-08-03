; PE virtual entry 0040CD50
; Ghidra working symbol: FUN_0040cd50
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040cd50_part_00 0
    %%fragment_start:
func_0040cd50:
    %%insn_0040cd50:
    sub esp,0x20 ; 0040CD50 83EC20
    %if ($ - %%insn_0040cd50) > 3
        %error "LONG_0040CD50"
    %endif
    times 3 - ($ - %%insn_0040cd50) db 0
    %%insn_0040cd53:
    mov eax,[esp+0x24] ; 0040CD53 8B442424
    %if ($ - %%insn_0040cd53) > 4
        %error "LONG_0040CD53"
    %endif
    times 4 - ($ - %%insn_0040cd53) db 0
    %%insn_0040cd57:
    mov ecx,[esp+0x28] ; 0040CD57 8B4C2428
    %if ($ - %%insn_0040cd57) > 4
        %error "LONG_0040CD57"
    %endif
    times 4 - ($ - %%insn_0040cd57) db 0
    %%insn_0040cd5b:
    mov [esp+0x8],eax ; 0040CD5B 89442408
    %if ($ - %%insn_0040cd5b) > 4
        %error "LONG_0040CD5B"
    %endif
    times 4 - ($ - %%insn_0040cd5b) db 0
    db 0x89, 0x44, 0x24, 0x00 ; 0040CD5F 89442400 | mov [esp+0x0],eax | encoding preserved
    %%insn_0040cd63:
    lea eax,[esp+0x2c] ; 0040CD63 8D44242C
    %if ($ - %%insn_0040cd63) > 4
        %error "LONG_0040CD63"
    %endif
    times 4 - ($ - %%insn_0040cd63) db 0
    %%insn_0040cd67:
    push esi ; 0040CD67 56
    %if ($ - %%insn_0040cd67) > 1
        %error "LONG_0040CD67"
    %endif
    times 1 - ($ - %%insn_0040cd67) db 0
    %%insn_0040cd68:
    push eax ; 0040CD68 50
    %if ($ - %%insn_0040cd68) > 1
        %error "LONG_0040CD68"
    %endif
    times 1 - ($ - %%insn_0040cd68) db 0
    %%insn_0040cd69:
    lea edx,[esp+0x8] ; 0040CD69 8D542408
    %if ($ - %%insn_0040cd69) > 4
        %error "LONG_0040CD69"
    %endif
    times 4 - ($ - %%insn_0040cd69) db 0
    %%insn_0040cd6d:
    push ecx ; 0040CD6D 51
    %if ($ - %%insn_0040cd6d) > 1
        %error "LONG_0040CD6D"
    %endif
    times 1 - ($ - %%insn_0040cd6d) db 0
    %%insn_0040cd6e:
    push edx ; 0040CD6E 52
    %if ($ - %%insn_0040cd6e) > 1
        %error "LONG_0040CD6E"
    %endif
    times 1 - ($ - %%insn_0040cd6e) db 0
    %%insn_0040cd6f:
    mov dword [esp+0x1c],0x42 ; 0040CD6F C744241C42000000
    %if ($ - %%insn_0040cd6f) > 8
        %error "LONG_0040CD6F"
    %endif
    times 8 - ($ - %%insn_0040cd6f) db 0
    %%insn_0040cd77:
    mov dword [esp+0x14],0x7fffffff ; 0040CD77 C7442414FFFFFF7F
    %if ($ - %%insn_0040cd77) > 8
        %error "LONG_0040CD77"
    %endif
    times 8 - ($ - %%insn_0040cd77) db 0
    %%insn_0040cd7f:
    call 0x40ebc0 ; 0040CD7F E83C1E0000
    %if ($ - %%insn_0040cd7f) > 5
        %error "LONG_0040CD7F"
    %endif
    times 5 - ($ - %%insn_0040cd7f) db 0
    db 0x8B, 0xF0 ; 0040CD84 8BF0 | mov esi,eax | encoding preserved
    %%insn_0040cd86:
    mov eax,[esp+0x14] ; 0040CD86 8B442414
    %if ($ - %%insn_0040cd86) > 4
        %error "LONG_0040CD86"
    %endif
    times 4 - ($ - %%insn_0040cd86) db 0
    %%insn_0040cd8a:
    add esp,0xc ; 0040CD8A 83C40C
    %if ($ - %%insn_0040cd8a) > 3
        %error "LONG_0040CD8A"
    %endif
    times 3 - ($ - %%insn_0040cd8a) db 0
    %%insn_0040cd8d:
    dec eax ; 0040CD8D 48
    %if ($ - %%insn_0040cd8d) > 1
        %error "LONG_0040CD8D"
    %endif
    times 1 - ($ - %%insn_0040cd8d) db 0
    %%insn_0040cd8e:
    mov [esp+0x8],eax ; 0040CD8E 89442408
    %if ($ - %%insn_0040cd8e) > 4
        %error "LONG_0040CD8E"
    %endif
    times 4 - ($ - %%insn_0040cd8e) db 0
    %%insn_0040cd92:
    js short 0x40cda2 ; 0040CD92 780E
    %if ($ - %%insn_0040cd92) > 2
        %error "LONG_0040CD92"
    %endif
    times 2 - ($ - %%insn_0040cd92) db 0
    %%insn_0040cd94:
    mov eax,[esp+0x4] ; 0040CD94 8B442404
    %if ($ - %%insn_0040cd94) > 4
        %error "LONG_0040CD94"
    %endif
    times 4 - ($ - %%insn_0040cd94) db 0
    %%insn_0040cd98:
    mov byte [eax],0x0 ; 0040CD98 C60000
    %if ($ - %%insn_0040cd98) > 3
        %error "LONG_0040CD98"
    %endif
    times 3 - ($ - %%insn_0040cd98) db 0
    db 0x8B, 0xC6 ; 0040CD9B 8BC6 | mov eax,esi | encoding preserved
    %%insn_0040cd9d:
    pop esi ; 0040CD9D 5E
    %if ($ - %%insn_0040cd9d) > 1
        %error "LONG_0040CD9D"
    %endif
    times 1 - ($ - %%insn_0040cd9d) db 0
    %%insn_0040cd9e:
    add esp,0x20 ; 0040CD9E 83C420
    %if ($ - %%insn_0040cd9e) > 3
        %error "LONG_0040CD9E"
    %endif
    times 3 - ($ - %%insn_0040cd9e) db 0
    %%insn_0040cda1:
    ret ; 0040CDA1 C3
    %if ($ - %%insn_0040cda1) > 1
        %error "LONG_0040CDA1"
    %endif
    times 1 - ($ - %%insn_0040cda1) db 0
    %%insn_0040cda2:
    lea ecx,[esp+0x4] ; 0040CDA2 8D4C2404
    %if ($ - %%insn_0040cda2) > 4
        %error "LONG_0040CDA2"
    %endif
    times 4 - ($ - %%insn_0040cda2) db 0
    %%insn_0040cda6:
    push ecx ; 0040CDA6 51
    %if ($ - %%insn_0040cda6) > 1
        %error "LONG_0040CDA6"
    %endif
    times 1 - ($ - %%insn_0040cda6) db 0
    %%insn_0040cda7:
    push dword 0x0 ; 0040CDA7 6A00
    %if ($ - %%insn_0040cda7) > 2
        %error "LONG_0040CDA7"
    %endif
    times 2 - ($ - %%insn_0040cda7) db 0
    %%insn_0040cda9:
    call 0x40ea90 ; 0040CDA9 E8E21C0000
    %if ($ - %%insn_0040cda9) > 5
        %error "LONG_0040CDA9"
    %endif
    times 5 - ($ - %%insn_0040cda9) db 0
    %%insn_0040cdae:
    add esp,0x8 ; 0040CDAE 83C408
    %if ($ - %%insn_0040cdae) > 3
        %error "LONG_0040CDAE"
    %endif
    times 3 - ($ - %%insn_0040cdae) db 0
    db 0x8B, 0xC6 ; 0040CDB1 8BC6 | mov eax,esi | encoding preserved
    %%insn_0040cdb3:
    pop esi ; 0040CDB3 5E
    %if ($ - %%insn_0040cdb3) > 1
        %error "LONG_0040CDB3"
    %endif
    times 1 - ($ - %%insn_0040cdb3) db 0
    %%insn_0040cdb4:
    add esp,0x20 ; 0040CDB4 83C420
    %if ($ - %%insn_0040cdb4) > 3
        %error "LONG_0040CDB4"
    %endif
    times 3 - ($ - %%insn_0040cdb4) db 0
    %%insn_0040cdb7:
    ret ; 0040CDB7 C3
    %if ($ - %%insn_0040cdb7) > 1
        %error "LONG_0040CDB7"
    %endif
    times 1 - ($ - %%insn_0040cdb7) db 0
    %if ($ - %%fragment_start) != 104
        %error "function fragment size drift: 0040CD50"
    %endif
%endmacro
