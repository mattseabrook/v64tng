; PE virtual entry 004110F0
; Ghidra working symbol: FUN_004110f0
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_004110f0_part_00 0
    %%fragment_start:
func_004110f0:
    %%insn_004110f0:
    mov eax,[esp+0x4] ; 004110F0 8B442404
    %if ($ - %%insn_004110f0) > 4
        %error "LONG_004110F0"
    %endif
    times 4 - ($ - %%insn_004110f0) db 0
    %%insn_004110f4:
    mov ecx,[0x423580] ; 004110F4 8B0D80354200
    %if ($ - %%insn_004110f4) > 6
        %error "LONG_004110F4"
    %endif
    times 6 - ($ - %%insn_004110f4) db 0
    db 0x3B, 0xC1 ; 004110FA 3BC1 | cmp eax,ecx | encoding preserved
    %%insn_004110fc:
    jnc short 0x41111f ; 004110FC 7321
    %if ($ - %%insn_004110fc) > 2
        %error "LONG_004110FC"
    %endif
    times 2 - ($ - %%insn_004110fc) db 0
    db 0x8B, 0xC8 ; 004110FE 8BC8 | mov ecx,eax | encoding preserved
    %%insn_00411100:
    and eax,0x1f ; 00411100 83E01F
    %if ($ - %%insn_00411100) > 3
        %error "LONG_00411100"
    %endif
    times 3 - ($ - %%insn_00411100) db 0
    %%insn_00411103:
    sar ecx,byte 0x5 ; 00411103 C1F905
    %if ($ - %%insn_00411103) > 3
        %error "LONG_00411103"
    %endif
    times 3 - ($ - %%insn_00411103) db 0
    %%insn_00411106:
    lea edx,[eax+eax*8] ; 00411106 8D14C0
    %if ($ - %%insn_00411106) > 3
        %error "LONG_00411106"
    %endif
    times 3 - ($ - %%insn_00411106) db 0
    %%insn_00411109:
    mov eax,[ecx*4+0x423480] ; 00411109 8B048D80344200
    %if ($ - %%insn_00411109) > 7
        %error "LONG_00411109"
    %endif
    times 7 - ($ - %%insn_00411109) db 0
    %%insn_00411110:
    mov cl,[eax+edx*4+0x4] ; 00411110 8A4C9004
    %if ($ - %%insn_00411110) > 4
        %error "LONG_00411110"
    %endif
    times 4 - ($ - %%insn_00411110) db 0
    %%insn_00411114:
    lea eax,[eax+edx*4] ; 00411114 8D0490
    %if ($ - %%insn_00411114) > 3
        %error "LONG_00411114"
    %endif
    times 3 - ($ - %%insn_00411114) db 0
    %%insn_00411117:
    test cl,0x1 ; 00411117 F6C101
    %if ($ - %%insn_00411117) > 3
        %error "LONG_00411117"
    %endif
    times 3 - ($ - %%insn_00411117) db 0
    %%insn_0041111a:
    jz short 0x41111f ; 0041111A 7403
    %if ($ - %%insn_0041111a) > 2
        %error "LONG_0041111A"
    %endif
    times 2 - ($ - %%insn_0041111a) db 0
    %%insn_0041111c:
    mov eax,[eax] ; 0041111C 8B00
    %if ($ - %%insn_0041111c) > 2
        %error "LONG_0041111C"
    %endif
    times 2 - ($ - %%insn_0041111c) db 0
    %%insn_0041111e:
    ret ; 0041111E C3
    %if ($ - %%insn_0041111e) > 1
        %error "LONG_0041111E"
    %endif
    times 1 - ($ - %%insn_0041111e) db 0
    %%insn_0041111f:
    call 0x410e10 ; 0041111F E8ECFCFFFF
    %if ($ - %%insn_0041111f) > 5
        %error "LONG_0041111F"
    %endif
    times 5 - ($ - %%insn_0041111f) db 0
    %%insn_00411124:
    mov dword [eax],0x9 ; 00411124 C70009000000
    %if ($ - %%insn_00411124) > 6
        %error "LONG_00411124"
    %endif
    times 6 - ($ - %%insn_00411124) db 0
    %%insn_0041112a:
    call 0x410e20 ; 0041112A E8F1FCFFFF
    %if ($ - %%insn_0041112a) > 5
        %error "LONG_0041112A"
    %endif
    times 5 - ($ - %%insn_0041112a) db 0
    %%insn_0041112f:
    mov dword [eax],0x0 ; 0041112F C70000000000
    %if ($ - %%insn_0041112f) > 6
        %error "LONG_0041112F"
    %endif
    times 6 - ($ - %%insn_0041112f) db 0
    %%insn_00411135:
    or eax,0xffffffffffffffff ; 00411135 83C8FF
    %if ($ - %%insn_00411135) > 3
        %error "LONG_00411135"
    %endif
    times 3 - ($ - %%insn_00411135) db 0
    %%insn_00411138:
    ret ; 00411138 C3
    %if ($ - %%insn_00411138) > 1
        %error "LONG_00411138"
    %endif
    times 1 - ($ - %%insn_00411138) db 0
    %if ($ - %%fragment_start) != 73
        %error "function fragment size drift: 004110F0"
    %endif
%endmacro
