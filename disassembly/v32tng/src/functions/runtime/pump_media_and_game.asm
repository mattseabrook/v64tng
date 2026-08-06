; PE virtual entry 00408EB7
; Ghidra working symbol: FUN_00408eb7
; Verified media-aware game/message-loop pump role.
; Generated losslessly; preserve byte identity after edits.

%macro emit_pump_media_and_game_part_00 0
    %%fragment_start:
pump_media_and_game:
    %%insn_00408eb7:
    push ebp ; 00408EB7 55
    %if ($ - %%insn_00408eb7) > 1
        %error "LONG_00408EB7"
    %endif
    times 1 - ($ - %%insn_00408eb7) db 0
    db 0x8B, 0xEC ; 00408EB8 8BEC | mov ebp,esp | encoding preserved
    %%insn_00408eba:
    call 0x409396 ; 00408EBA E8D7040000
    %if ($ - %%insn_00408eba) > 5
        %error "LONG_00408EBA"
    %endif
    times 5 - ($ - %%insn_00408eba) db 0
    %%insn_00408ebf:
    cmp dword [0x4213c4],0x0 ; 00408EBF 833DC413420000
    %if ($ - %%insn_00408ebf) > 7
        %error "LONG_00408EBF"
    %endif
    times 7 - ($ - %%insn_00408ebf) db 0
    %%insn_00408ec6:
    jz short 0x408ed6 ; 00408EC6 740E
    %if ($ - %%insn_00408ec6) > 2
        %error "LONG_00408EC6"
    %endif
    times 2 - ($ - %%insn_00408ec6) db 0
    %%insn_00408ec8:
    push dword 0x4213c0 ; 00408EC8 68C0134200
    %if ($ - %%insn_00408ec8) > 5
        %error "LONG_00408EC8"
    %endif
    times 5 - ($ - %%insn_00408ec8) db 0
    %%insn_00408ecd:
    call dword near [0x4213c4] ; 00408ECD FF15C4134200
    %if ($ - %%insn_00408ecd) > 6
        %error "LONG_00408ECD"
    %endif
    times 6 - ($ - %%insn_00408ecd) db 0
    %%insn_00408ed3:
    add esp,0x4 ; 00408ED3 83C404
    %if ($ - %%insn_00408ed3) > 3
        %error "LONG_00408ED3"
    %endif
    times 3 - ($ - %%insn_00408ed3) db 0
    %%insn_00408ed6:
    cmp dword [0x41f590],0x0 ; 00408ED6 833D90F5410000
    %if ($ - %%insn_00408ed6) > 7
        %error "LONG_00408ED6"
    %endif
    times 7 - ($ - %%insn_00408ed6) db 0
    %%insn_00408edd:
    jz short 0x408ef4 ; 00408EDD 7415
    %if ($ - %%insn_00408edd) > 2
        %error "LONG_00408EDD"
    %endif
    times 2 - ($ - %%insn_00408edd) db 0
    %%insn_00408edf:
    mov ecx,0x421300 ; 00408EDF B900134200
    %if ($ - %%insn_00408edf) > 5
        %error "LONG_00408EDF"
    %endif
    times 5 - ($ - %%insn_00408edf) db 0
    %%insn_00408ee4:
    call dword near [0x4213b4] ; 00408EE4 FF15B4134200
    %if ($ - %%insn_00408ee4) > 6
        %error "LONG_00408EE4"
    %endif
    times 6 - ($ - %%insn_00408ee4) db 0
    %%insn_00408eea:
    mov dword [0x41f590],0x0 ; 00408EEA C70590F5410000000000
    %if ($ - %%insn_00408eea) > 10
        %error "LONG_00408EEA"
    %endif
    times 10 - ($ - %%insn_00408eea) db 0
    %%insn_00408ef4:
    mov eax,[0x41f594] ; 00408EF4 A194F54100
    %if ($ - %%insn_00408ef4) > 5
        %error "LONG_00408EF4"
    %endif
    times 5 - ($ - %%insn_00408ef4) db 0
    %%insn_00408ef9:
    and eax,0x1 ; 00408EF9 83E001
    %if ($ - %%insn_00408ef9) > 3
        %error "LONG_00408EF9"
    %endif
    times 3 - ($ - %%insn_00408ef9) db 0
    %%insn_00408efc:
    test eax,eax ; 00408EFC 85C0
    %if ($ - %%insn_00408efc) > 2
        %error "LONG_00408EFC"
    %endif
    times 2 - ($ - %%insn_00408efc) db 0
    %%insn_00408efe:
    jz short 0x408f0e ; 00408EFE 740E
    %if ($ - %%insn_00408efe) > 2
        %error "LONG_00408EFE"
    %endif
    times 2 - ($ - %%insn_00408efe) db 0
    %%insn_00408f00:
    cmp dword [0x41f598],0x0 ; 00408F00 833D98F5410000
    %if ($ - %%insn_00408f00) > 7
        %error "LONG_00408F00"
    %endif
    times 7 - ($ - %%insn_00408f00) db 0
    %%insn_00408f07:
    jnz short 0x408f0e ; 00408F07 7505
    %if ($ - %%insn_00408f07) > 2
        %error "LONG_00408F07"
    %endif
    times 2 - ($ - %%insn_00408f07) db 0
    %%insn_00408f09:
    call 0x4021d1 ; 00408F09 E8C392FFFF
    %if ($ - %%insn_00408f09) > 5
        %error "LONG_00408F09"
    %endif
    times 5 - ($ - %%insn_00408f09) db 0
    %%insn_00408f0e:
    pop ebp ; 00408F0E 5D
    %if ($ - %%insn_00408f0e) > 1
        %error "LONG_00408F0E"
    %endif
    times 1 - ($ - %%insn_00408f0e) db 0
    %%insn_00408f0f:
    ret ; 00408F0F C3
    %if ($ - %%insn_00408f0f) > 1
        %error "LONG_00408F0F"
    %endif
    times 1 - ($ - %%insn_00408f0f) db 0
    %if ($ - %%fragment_start) != 89
        %error "function fragment size drift: 00408EB7"
    %endif
%endmacro
