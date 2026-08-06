; PE virtual entry 00411CC0
; Ghidra working symbol: FUN_00411cc0
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00411cc0_part_00 0
    %%fragment_start:
func_00411cc0:
    %%insn_00411cc0:
    mov eax,[esp+0x4] ; 00411CC0 8B442404
    %if ($ - %%insn_00411cc0) > 4
        %error "LONG_00411CC0"
    %endif
    times 4 - ($ - %%insn_00411cc0) db 0
    %%insn_00411cc4:
    mov cl,[esp+0xc] ; 00411CC4 8A4C240C
    %if ($ - %%insn_00411cc4) > 4
        %error "LONG_00411CC4"
    %endif
    times 4 - ($ - %%insn_00411cc4) db 0
    %%insn_00411cc8:
    and eax,0xff ; 00411CC8 25FF000000
    %if ($ - %%insn_00411cc8) > 5
        %error "LONG_00411CC8"
    %endif
    times 5 - ($ - %%insn_00411cc8) db 0
    %%insn_00411ccd:
    test [eax+0x421051],cl ; 00411CCD 848851104200
    %if ($ - %%insn_00411ccd) > 6
        %error "LONG_00411CCD"
    %endif
    times 6 - ($ - %%insn_00411ccd) db 0
    %%insn_00411cd3:
    jnz short 0x411cf4 ; 00411CD3 751F
    %if ($ - %%insn_00411cd3) > 2
        %error "LONG_00411CD3"
    %endif
    times 2 - ($ - %%insn_00411cd3) db 0
    %%insn_00411cd5:
    mov ecx,[esp+0x8] ; 00411CD5 8B4C2408
    %if ($ - %%insn_00411cd5) > 4
        %error "LONG_00411CD5"
    %endif
    times 4 - ($ - %%insn_00411cd5) db 0
    %%insn_00411cd9:
    test ecx,ecx ; 00411CD9 85C9
    %if ($ - %%insn_00411cd9) > 2
        %error "LONG_00411CD9"
    %endif
    times 2 - ($ - %%insn_00411cd9) db 0
    %%insn_00411cdb:
    jz short 0x411ced ; 00411CDB 7410
    %if ($ - %%insn_00411cdb) > 2
        %error "LONG_00411CDB"
    %endif
    times 2 - ($ - %%insn_00411cdb) db 0
    db 0x33, 0xD2 ; 00411CDD 33D2 | xor edx,edx | encoding preserved
    db 0x66, 0x8B, 0x14, 0x45, 0x4A, 0xE6, 0x41, 0x00 ; 00411CDF 668B14454AE64100 | mov dx,[eax*2+0x41e64a] | encoding preserved
    db 0x8B, 0xC2 ; 00411CE7 8BC2 | mov eax,edx | encoding preserved
    db 0x23, 0xC1 ; 00411CE9 23C1 | and eax,ecx | encoding preserved
    %%insn_00411ceb:
    jmp short 0x411cef ; 00411CEB EB02
    %if ($ - %%insn_00411ceb) > 2
        %error "LONG_00411CEB"
    %endif
    times 2 - ($ - %%insn_00411ceb) db 0
    db 0x33, 0xC0 ; 00411CED 33C0 | xor eax,eax | encoding preserved
    %%insn_00411cef:
    test eax,eax ; 00411CEF 85C0
    %if ($ - %%insn_00411cef) > 2
        %error "LONG_00411CEF"
    %endif
    times 2 - ($ - %%insn_00411cef) db 0
    %%insn_00411cf1:
    jnz short 0x411cf4 ; 00411CF1 7501
    %if ($ - %%insn_00411cf1) > 2
        %error "LONG_00411CF1"
    %endif
    times 2 - ($ - %%insn_00411cf1) db 0
    %%insn_00411cf3:
    ret ; 00411CF3 C3
    %if ($ - %%insn_00411cf3) > 1
        %error "LONG_00411CF3"
    %endif
    times 1 - ($ - %%insn_00411cf3) db 0
    %%insn_00411cf4:
    mov eax,0x1 ; 00411CF4 B801000000
    %if ($ - %%insn_00411cf4) > 5
        %error "LONG_00411CF4"
    %endif
    times 5 - ($ - %%insn_00411cf4) db 0
    %%insn_00411cf9:
    ret ; 00411CF9 C3
    %if ($ - %%insn_00411cf9) > 1
        %error "LONG_00411CF9"
    %endif
    times 1 - ($ - %%insn_00411cf9) db 0
    %if ($ - %%fragment_start) != 58
        %error "function fragment size drift: 00411CC0"
    %endif
%endmacro
