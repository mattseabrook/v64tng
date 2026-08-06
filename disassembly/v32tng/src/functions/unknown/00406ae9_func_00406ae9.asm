; PE virtual entry 00406AE9
; Ghidra working symbol: FUN_00406ae9
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00406ae9_part_00 0
    %%fragment_start:
func_00406ae9:
    %%insn_00406ae9:
    push ebp ; 00406AE9 55
    %if ($ - %%insn_00406ae9) > 1
        %error "LONG_00406AE9"
    %endif
    times 1 - ($ - %%insn_00406ae9) db 0
    db 0x8B, 0xEC ; 00406AEA 8BEC | mov ebp,esp | encoding preserved
    %%insn_00406aec:
    mov eax,[ebp+0x8] ; 00406AEC 8B4508
    %if ($ - %%insn_00406aec) > 3
        %error "LONG_00406AEC"
    %endif
    times 3 - ($ - %%insn_00406aec) db 0
    %%insn_00406aef:
    mov cx,[0x41f4c0] ; 00406AEF 668B0DC0F44100
    %if ($ - %%insn_00406aef) > 7
        %error "LONG_00406AEF"
    %endif
    times 7 - ($ - %%insn_00406aef) db 0
    %%insn_00406af6:
    mov [eax],cx ; 00406AF6 668908
    %if ($ - %%insn_00406af6) > 3
        %error "LONG_00406AF6"
    %endif
    times 3 - ($ - %%insn_00406af6) db 0
    %%insn_00406af9:
    mov edx,[ebp+0xc] ; 00406AF9 8B550C
    %if ($ - %%insn_00406af9) > 3
        %error "LONG_00406AF9"
    %endif
    times 3 - ($ - %%insn_00406af9) db 0
    %%insn_00406afc:
    mov ax,[0x41f4c4] ; 00406AFC 66A1C4F44100
    %if ($ - %%insn_00406afc) > 6
        %error "LONG_00406AFC"
    %endif
    times 6 - ($ - %%insn_00406afc) db 0
    %%insn_00406b02:
    mov [edx],ax ; 00406B02 668902
    %if ($ - %%insn_00406b02) > 3
        %error "LONG_00406B02"
    %endif
    times 3 - ($ - %%insn_00406b02) db 0
    %%insn_00406b05:
    mov ecx,[ebp+0x10] ; 00406B05 8B4D10
    %if ($ - %%insn_00406b05) > 3
        %error "LONG_00406B05"
    %endif
    times 3 - ($ - %%insn_00406b05) db 0
    %%insn_00406b08:
    mov dx,[0x41f4c8] ; 00406B08 668B15C8F44100
    %if ($ - %%insn_00406b08) > 7
        %error "LONG_00406B08"
    %endif
    times 7 - ($ - %%insn_00406b08) db 0
    %%insn_00406b0f:
    mov [ecx],dx ; 00406B0F 668911
    %if ($ - %%insn_00406b0f) > 3
        %error "LONG_00406B0F"
    %endif
    times 3 - ($ - %%insn_00406b0f) db 0
    %%insn_00406b12:
    pop ebp ; 00406B12 5D
    %if ($ - %%insn_00406b12) > 1
        %error "LONG_00406B12"
    %endif
    times 1 - ($ - %%insn_00406b12) db 0
    %%insn_00406b13:
    ret ; 00406B13 C3
    %if ($ - %%insn_00406b13) > 1
        %error "LONG_00406B13"
    %endif
    times 1 - ($ - %%insn_00406b13) db 0
    %if ($ - %%fragment_start) != 43
        %error "function fragment size drift: 00406AE9"
    %endif
%endmacro
