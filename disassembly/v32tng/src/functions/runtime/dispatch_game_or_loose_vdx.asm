; PE virtual entry 00408E75
; Ghidra working symbol: FUN_00408e75
; Verified empty command line selects game; any non-empty WinMain lpCmdLine is
; treated as one exact loose-VDX filename, not as a switch list.
; Generated losslessly; preserve byte identity after edits.

%macro emit_dispatch_game_or_loose_vdx_part_00 0
    %%fragment_start:
dispatch_game_or_loose_vdx:
    %%insn_00408e75:
    push ebp ; 00408E75 55
    %if ($ - %%insn_00408e75) > 1
        %error "LONG_00408E75"
    %endif
    times 1 - ($ - %%insn_00408e75) db 0
    db 0x8B, 0xEC ; 00408E76 8BEC | mov ebp,esp | encoding preserved
    %%insn_00408e78:
    mov eax,[ebp+0x8] ; 00408E78 8B4508
    %if ($ - %%insn_00408e78) > 3
        %error "LONG_00408E78"
    %endif
    times 3 - ($ - %%insn_00408e78) db 0
    %%insn_00408e7b:
    movsx ecx,byte [eax] ; 00408E7B 0FBE08
    %if ($ - %%insn_00408e7b) > 3
        %error "LONG_00408E7B"
    %endif
    times 3 - ($ - %%insn_00408e7b) db 0
    %%insn_00408e7e:
    test ecx,ecx ; 00408E7E 85C9
    %if ($ - %%insn_00408e7e) > 2
        %error "LONG_00408E7E"
    %endif
    times 2 - ($ - %%insn_00408e7e) db 0
    %%insn_00408e80:
    jz short 0x408e90 ; 00408E80 740E
    %if ($ - %%insn_00408e80) > 2
        %error "LONG_00408E80"
    %endif
    times 2 - ($ - %%insn_00408e80) db 0
    %%insn_00408e82:
    mov edx,[ebp+0x8] ; 00408E82 8B5508
    %if ($ - %%insn_00408e82) > 3
        %error "LONG_00408E82"
    %endif
    times 3 - ($ - %%insn_00408e82) db 0
    %%insn_00408e85:
    push edx ; 00408E85 52
    %if ($ - %%insn_00408e85) > 1
        %error "LONG_00408E85"
    %endif
    times 1 - ($ - %%insn_00408e85) db 0
    %%insn_00408e86:
    call 0x408df6 ; 00408E86 E86BFFFFFF
    %if ($ - %%insn_00408e86) > 5
        %error "LONG_00408E86"
    %endif
    times 5 - ($ - %%insn_00408e86) db 0
    %%insn_00408e8b:
    add esp,0x4 ; 00408E8B 83C404
    %if ($ - %%insn_00408e8b) > 3
        %error "LONG_00408E8B"
    %endif
    times 3 - ($ - %%insn_00408e8b) db 0
    %%insn_00408e8e:
    jmp short 0x408eb5 ; 00408E8E EB25
    %if ($ - %%insn_00408e8e) > 2
        %error "LONG_00408E8E"
    %endif
    times 2 - ($ - %%insn_00408e8e) db 0
    %%insn_00408e90:
    call 0x40c180 ; 00408E90 E8EB320000
    %if ($ - %%insn_00408e90) > 5
        %error "LONG_00408E90"
    %endif
    times 5 - ($ - %%insn_00408e90) db 0
    %%insn_00408e95:
    call 0x40c0e7 ; 00408E95 E84D320000
    %if ($ - %%insn_00408e95) > 5
        %error "LONG_00408E95"
    %endif
    times 5 - ($ - %%insn_00408e95) db 0
    %%insn_00408e9a:
    call 0x401202 ; 00408E9A E86383FFFF
    %if ($ - %%insn_00408e9a) > 5
        %error "LONG_00408E9A"
    %endif
    times 5 - ($ - %%insn_00408e9a) db 0
    %%insn_00408e9f:
    call 0x404350 ; 00408E9F E8ACB4FFFF
    %if ($ - %%insn_00408e9f) > 5
        %error "LONG_00408E9F"
    %endif
    times 5 - ($ - %%insn_00408e9f) db 0
    %%insn_00408ea4:
    call 0x409a90 ; 00408EA4 E8E70B0000
    %if ($ - %%insn_00408ea4) > 5
        %error "LONG_00408EA4"
    %endif
    times 5 - ($ - %%insn_00408ea4) db 0
    %%insn_00408ea9:
    mov eax,[0x41f594] ; 00408EA9 A194F54100
    %if ($ - %%insn_00408ea9) > 5
        %error "LONG_00408EA9"
    %endif
    times 5 - ($ - %%insn_00408ea9) db 0
    %%insn_00408eae:
    or al,0x1 ; 00408EAE 0C01
    %if ($ - %%insn_00408eae) > 2
        %error "LONG_00408EAE"
    %endif
    times 2 - ($ - %%insn_00408eae) db 0
    %%insn_00408eb0:
    mov [0x41f594],eax ; 00408EB0 A394F54100
    %if ($ - %%insn_00408eb0) > 5
        %error "LONG_00408EB0"
    %endif
    times 5 - ($ - %%insn_00408eb0) db 0
    %%insn_00408eb5:
    pop ebp ; 00408EB5 5D
    %if ($ - %%insn_00408eb5) > 1
        %error "LONG_00408EB5"
    %endif
    times 1 - ($ - %%insn_00408eb5) db 0
    %%insn_00408eb6:
    ret ; 00408EB6 C3
    %if ($ - %%insn_00408eb6) > 1
        %error "LONG_00408EB6"
    %endif
    times 1 - ($ - %%insn_00408eb6) db 0
    %if ($ - %%fragment_start) != 66
        %error "function fragment size drift: 00408E75"
    %endif
%endmacro
