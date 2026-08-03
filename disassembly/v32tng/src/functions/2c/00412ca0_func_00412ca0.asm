; PE virtual entry 00412CA0
; Ghidra working symbol: FUN_00412ca0
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00412ca0_part_00 0
    %%fragment_start:
func_00412ca0:
    %%insn_00412ca0:
    mov eax,[esp+0x4] ; 00412CA0 8B442404
    %if ($ - %%insn_00412ca0) > 4
        %error "LONG_00412CA0"
    %endif
    times 4 - ($ - %%insn_00412ca0) db 0
    %%insn_00412ca4:
    mov ecx,[0x423580] ; 00412CA4 8B0D80354200
    %if ($ - %%insn_00412ca4) > 6
        %error "LONG_00412CA4"
    %endif
    times 6 - ($ - %%insn_00412ca4) db 0
    db 0x3B, 0xC1 ; 00412CAA 3BC1 | cmp eax,ecx | encoding preserved
    %%insn_00412cac:
    jc short 0x412cb1 ; 00412CAC 7203
    %if ($ - %%insn_00412cac) > 2
        %error "LONG_00412CAC"
    %endif
    times 2 - ($ - %%insn_00412cac) db 0
    db 0x33, 0xC0 ; 00412CAE 33C0 | xor eax,eax | encoding preserved
    %%insn_00412cb0:
    ret ; 00412CB0 C3
    %if ($ - %%insn_00412cb0) > 1
        %error "LONG_00412CB0"
    %endif
    times 1 - ($ - %%insn_00412cb0) db 0
    db 0x8B, 0xC8 ; 00412CB1 8BC8 | mov ecx,eax | encoding preserved
    %%insn_00412cb3:
    and eax,0x1f ; 00412CB3 83E01F
    %if ($ - %%insn_00412cb3) > 3
        %error "LONG_00412CB3"
    %endif
    times 3 - ($ - %%insn_00412cb3) db 0
    %%insn_00412cb6:
    sar ecx,byte 0x5 ; 00412CB6 C1F905
    %if ($ - %%insn_00412cb6) > 3
        %error "LONG_00412CB6"
    %endif
    times 3 - ($ - %%insn_00412cb6) db 0
    %%insn_00412cb9:
    lea edx,[eax+eax*8] ; 00412CB9 8D14C0
    %if ($ - %%insn_00412cb9) > 3
        %error "LONG_00412CB9"
    %endif
    times 3 - ($ - %%insn_00412cb9) db 0
    %%insn_00412cbc:
    mov eax,[ecx*4+0x423480] ; 00412CBC 8B048D80344200
    %if ($ - %%insn_00412cbc) > 7
        %error "LONG_00412CBC"
    %endif
    times 7 - ($ - %%insn_00412cbc) db 0
    %%insn_00412cc3:
    mov al,[eax+edx*4+0x4] ; 00412CC3 8A449004
    %if ($ - %%insn_00412cc3) > 4
        %error "LONG_00412CC3"
    %endif
    times 4 - ($ - %%insn_00412cc3) db 0
    %%insn_00412cc7:
    and eax,0x40 ; 00412CC7 83E040
    %if ($ - %%insn_00412cc7) > 3
        %error "LONG_00412CC7"
    %endif
    times 3 - ($ - %%insn_00412cc7) db 0
    %%insn_00412cca:
    ret ; 00412CCA C3
    %if ($ - %%insn_00412cca) > 1
        %error "LONG_00412CCA"
    %endif
    times 1 - ($ - %%insn_00412cca) db 0
    %if ($ - %%fragment_start) != 43
        %error "function fragment size drift: 00412CA0"
    %endif
%endmacro
