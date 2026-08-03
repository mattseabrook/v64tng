; PE virtual entry 00411260
; Ghidra working symbol: FUN_00411260
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00411260_part_00 0
    %%fragment_start:
func_00411260:
    %%insn_00411260:
    mov eax,[esp+0x4] ; 00411260 8B442404
    %if ($ - %%insn_00411260) > 4
        %error "LONG_00411260"
    %endif
    times 4 - ($ - %%insn_00411260) db 0
    db 0x8B, 0xC8 ; 00411264 8BC8 | mov ecx,eax | encoding preserved
    %%insn_00411266:
    and eax,0x1f ; 00411266 83E01F
    %if ($ - %%insn_00411266) > 3
        %error "LONG_00411266"
    %endif
    times 3 - ($ - %%insn_00411266) db 0
    %%insn_00411269:
    sar ecx,byte 0x5 ; 00411269 C1F905
    %if ($ - %%insn_00411269) > 3
        %error "LONG_00411269"
    %endif
    times 3 - ($ - %%insn_00411269) db 0
    %%insn_0041126c:
    lea edx,[eax+eax*8] ; 0041126C 8D14C0
    %if ($ - %%insn_0041126c) > 3
        %error "LONG_0041126C"
    %endif
    times 3 - ($ - %%insn_0041126c) db 0
    %%insn_0041126f:
    mov eax,[ecx*4+0x423480] ; 0041126F 8B048D80344200
    %if ($ - %%insn_0041126f) > 7
        %error "LONG_0041126F"
    %endif
    times 7 - ($ - %%insn_0041126f) db 0
    %%insn_00411276:
    lea ecx,[eax+edx*4+0xc] ; 00411276 8D4C900C
    %if ($ - %%insn_00411276) > 4
        %error "LONG_00411276"
    %endif
    times 4 - ($ - %%insn_00411276) db 0
    %%insn_0041127a:
    push ecx ; 0041127A 51
    %if ($ - %%insn_0041127a) > 1
        %error "LONG_0041127A"
    %endif
    times 1 - ($ - %%insn_0041127a) db 0
    %%insn_0041127b:
    call dword near [0x4243f4] ; 0041127B FF15F4434200
    %if ($ - %%insn_0041127b) > 6
        %error "LONG_0041127B"
    %endif
    times 6 - ($ - %%insn_0041127b) db 0
    %%insn_00411281:
    ret ; 00411281 C3
    %if ($ - %%insn_00411281) > 1
        %error "LONG_00411281"
    %endif
    times 1 - ($ - %%insn_00411281) db 0
    %if ($ - %%fragment_start) != 34
        %error "function fragment size drift: 00411260"
    %endif
%endmacro
