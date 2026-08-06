; PE virtual entry 00406AB0
; Ghidra working symbol: FUN_00406ab0
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00406ab0_part_00 0
    %%fragment_start:
func_00406ab0:
    %%insn_00406ab0:
    push ebp ; 00406AB0 55
    %if ($ - %%insn_00406ab0) > 1
        %error "LONG_00406AB0"
    %endif
    times 1 - ($ - %%insn_00406ab0) db 0
    db 0x8B, 0xEC ; 00406AB1 8BEC | mov ebp,esp | encoding preserved
    %%insn_00406ab3:
    mov eax,[ebp+0x8] ; 00406AB3 8B4508
    %if ($ - %%insn_00406ab3) > 3
        %error "LONG_00406AB3"
    %endif
    times 3 - ($ - %%insn_00406ab3) db 0
    %%insn_00406ab6:
    and eax,0xff ; 00406AB6 25FF000000
    %if ($ - %%insn_00406ab6) > 5
        %error "LONG_00406AB6"
    %endif
    times 5 - ($ - %%insn_00406ab6) db 0
    %%insn_00406abb:
    mov [0x41f4c0],ax ; 00406ABB 66A3C0F44100
    %if ($ - %%insn_00406abb) > 6
        %error "LONG_00406ABB"
    %endif
    times 6 - ($ - %%insn_00406abb) db 0
    %%insn_00406ac1:
    mov ecx,[ebp+0x8] ; 00406AC1 8B4D08
    %if ($ - %%insn_00406ac1) > 3
        %error "LONG_00406AC1"
    %endif
    times 3 - ($ - %%insn_00406ac1) db 0
    %%insn_00406ac4:
    sar ecx,byte 0x8 ; 00406AC4 C1F908
    %if ($ - %%insn_00406ac4) > 3
        %error "LONG_00406AC4"
    %endif
    times 3 - ($ - %%insn_00406ac4) db 0
    %%insn_00406ac7:
    and ecx,0xff ; 00406AC7 81E1FF000000
    %if ($ - %%insn_00406ac7) > 6
        %error "LONG_00406AC7"
    %endif
    times 6 - ($ - %%insn_00406ac7) db 0
    %%insn_00406acd:
    mov [0x41f4c4],cx ; 00406ACD 66890DC4F44100
    %if ($ - %%insn_00406acd) > 7
        %error "LONG_00406ACD"
    %endif
    times 7 - ($ - %%insn_00406acd) db 0
    %%insn_00406ad4:
    mov edx,[ebp+0x8] ; 00406AD4 8B5508
    %if ($ - %%insn_00406ad4) > 3
        %error "LONG_00406AD4"
    %endif
    times 3 - ($ - %%insn_00406ad4) db 0
    %%insn_00406ad7:
    sar edx,byte 0x10 ; 00406AD7 C1FA10
    %if ($ - %%insn_00406ad7) > 3
        %error "LONG_00406AD7"
    %endif
    times 3 - ($ - %%insn_00406ad7) db 0
    %%insn_00406ada:
    and edx,0xff ; 00406ADA 81E2FF000000
    %if ($ - %%insn_00406ada) > 6
        %error "LONG_00406ADA"
    %endif
    times 6 - ($ - %%insn_00406ada) db 0
    %%insn_00406ae0:
    mov [0x41f4c8],dx ; 00406AE0 668915C8F44100
    %if ($ - %%insn_00406ae0) > 7
        %error "LONG_00406AE0"
    %endif
    times 7 - ($ - %%insn_00406ae0) db 0
    %%insn_00406ae7:
    pop ebp ; 00406AE7 5D
    %if ($ - %%insn_00406ae7) > 1
        %error "LONG_00406AE7"
    %endif
    times 1 - ($ - %%insn_00406ae7) db 0
    %%insn_00406ae8:
    ret ; 00406AE8 C3
    %if ($ - %%insn_00406ae8) > 1
        %error "LONG_00406AE8"
    %endif
    times 1 - ($ - %%insn_00406ae8) db 0
    %if ($ - %%fragment_start) != 57
        %error "function fragment size drift: 00406AB0"
    %endif
%endmacro
