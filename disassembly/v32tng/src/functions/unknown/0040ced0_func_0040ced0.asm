; PE virtual entry 0040CED0
; Ghidra working symbol: FUN_0040ced0
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040ced0_part_00 0
    %%fragment_start:
func_0040ced0:
    %%insn_0040ced0:
    push esi ; 0040CED0 56
    %if ($ - %%insn_0040ced0) > 1
        %error "LONG_0040CED0"
    %endif
    times 1 - ($ - %%insn_0040ced0) db 0
    %%insn_0040ced1:
    mov esi,[esp+0x8] ; 0040CED1 8B742408
    %if ($ - %%insn_0040ced1) > 4
        %error "LONG_0040CED1"
    %endif
    times 4 - ($ - %%insn_0040ced1) db 0
    %%insn_0040ced5:
    push edi ; 0040CED5 57
    %if ($ - %%insn_0040ced5) > 1
        %error "LONG_0040CED5"
    %endif
    times 1 - ($ - %%insn_0040ced5) db 0
    %%insn_0040ced6:
    or edi,0xffffffffffffffff ; 0040CED6 83CFFF
    %if ($ - %%insn_0040ced6) > 3
        %error "LONG_0040CED6"
    %endif
    times 3 - ($ - %%insn_0040ced6) db 0
    %%insn_0040ced9:
    test byte [esi+0xc],0x40 ; 0040CED9 F6460C40
    %if ($ - %%insn_0040ced9) > 4
        %error "LONG_0040CED9"
    %endif
    times 4 - ($ - %%insn_0040ced9) db 0
    %%insn_0040cedd:
    jz short 0x40ceeb ; 0040CEDD 740C
    %if ($ - %%insn_0040cedd) > 2
        %error "LONG_0040CEDD"
    %endif
    times 2 - ($ - %%insn_0040cedd) db 0
    %%insn_0040cedf:
    mov dword [esi+0xc],0x0 ; 0040CEDF C7460C00000000
    %if ($ - %%insn_0040cedf) > 7
        %error "LONG_0040CEDF"
    %endif
    times 7 - ($ - %%insn_0040cedf) db 0
    db 0x8B, 0xC7 ; 0040CEE6 8BC7 | mov eax,edi | encoding preserved
    %%insn_0040cee8:
    pop edi ; 0040CEE8 5F
    %if ($ - %%insn_0040cee8) > 1
        %error "LONG_0040CEE8"
    %endif
    times 1 - ($ - %%insn_0040cee8) db 0
    %%insn_0040cee9:
    pop esi ; 0040CEE9 5E
    %if ($ - %%insn_0040cee9) > 1
        %error "LONG_0040CEE9"
    %endif
    times 1 - ($ - %%insn_0040cee9) db 0
    %%insn_0040ceea:
    ret ; 0040CEEA C3
    %if ($ - %%insn_0040ceea) > 1
        %error "LONG_0040CEEA"
    %endif
    times 1 - ($ - %%insn_0040ceea) db 0
    %%insn_0040ceeb:
    push esi ; 0040CEEB 56
    %if ($ - %%insn_0040ceeb) > 1
        %error "LONG_0040CEEB"
    %endif
    times 1 - ($ - %%insn_0040ceeb) db 0
    %%insn_0040ceec:
    call 0x40dfa0 ; 0040CEEC E8AF100000
    %if ($ - %%insn_0040ceec) > 5
        %error "LONG_0040CEEC"
    %endif
    times 5 - ($ - %%insn_0040ceec) db 0
    %%insn_0040cef1:
    add esp,0x4 ; 0040CEF1 83C404
    %if ($ - %%insn_0040cef1) > 3
        %error "LONG_0040CEF1"
    %endif
    times 3 - ($ - %%insn_0040cef1) db 0
    %%insn_0040cef4:
    push esi ; 0040CEF4 56
    %if ($ - %%insn_0040cef4) > 1
        %error "LONG_0040CEF4"
    %endif
    times 1 - ($ - %%insn_0040cef4) db 0
    %%insn_0040cef5:
    call 0x40cf10 ; 0040CEF5 E816000000
    %if ($ - %%insn_0040cef5) > 5
        %error "LONG_0040CEF5"
    %endif
    times 5 - ($ - %%insn_0040cef5) db 0
    %%insn_0040cefa:
    add esp,0x4 ; 0040CEFA 83C404
    %if ($ - %%insn_0040cefa) > 3
        %error "LONG_0040CEFA"
    %endif
    times 3 - ($ - %%insn_0040cefa) db 0
    db 0x8B, 0xF8 ; 0040CEFD 8BF8 | mov edi,eax | encoding preserved
    %%insn_0040ceff:
    push esi ; 0040CEFF 56
    %if ($ - %%insn_0040ceff) > 1
        %error "LONG_0040CEFF"
    %endif
    times 1 - ($ - %%insn_0040ceff) db 0
    %%insn_0040cf00:
    call 0x40e010 ; 0040CF00 E80B110000
    %if ($ - %%insn_0040cf00) > 5
        %error "LONG_0040CF00"
    %endif
    times 5 - ($ - %%insn_0040cf00) db 0
    %%insn_0040cf05:
    add esp,0x4 ; 0040CF05 83C404
    %if ($ - %%insn_0040cf05) > 3
        %error "LONG_0040CF05"
    %endif
    times 3 - ($ - %%insn_0040cf05) db 0
    db 0x8B, 0xC7 ; 0040CF08 8BC7 | mov eax,edi | encoding preserved
    %%insn_0040cf0a:
    pop edi ; 0040CF0A 5F
    %if ($ - %%insn_0040cf0a) > 1
        %error "LONG_0040CF0A"
    %endif
    times 1 - ($ - %%insn_0040cf0a) db 0
    %%insn_0040cf0b:
    pop esi ; 0040CF0B 5E
    %if ($ - %%insn_0040cf0b) > 1
        %error "LONG_0040CF0B"
    %endif
    times 1 - ($ - %%insn_0040cf0b) db 0
    %%insn_0040cf0c:
    ret ; 0040CF0C C3
    %if ($ - %%insn_0040cf0c) > 1
        %error "LONG_0040CF0C"
    %endif
    times 1 - ($ - %%insn_0040cf0c) db 0
    %if ($ - %%fragment_start) != 61
        %error "function fragment size drift: 0040CED0"
    %endif
%endmacro
