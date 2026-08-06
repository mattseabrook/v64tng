; Linear entry 07F0E (1702:0eee)
; Ghidra working symbol: FUN_1702_0eee
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_07f0e_part_00 0
    %%fragment_start:
func_07f0e:
    %%insn_07f0e:
    push bp ; 07F0E 55
    %if ($ - %%insn_07f0e) > 1
        %error "LONG_07F0E"
    %endif
    times 1 - ($ - %%insn_07f0e) db 0
    db 0x8B, 0xEC ; 07F0F 8BEC | mov bp,sp | encoding preserved
    %%insn_07f11:
    push ds ; 07F11 1E
    %if ($ - %%insn_07f11) > 1
        %error "LONG_07F11"
    %endif
    times 1 - ($ - %%insn_07f11) db 0
    %%insn_07f12:
    push si ; 07F12 56
    %if ($ - %%insn_07f12) > 1
        %error "LONG_07F12"
    %endif
    times 1 - ($ - %%insn_07f12) db 0
    %%insn_07f13:
    push di ; 07F13 57
    %if ($ - %%insn_07f13) > 1
        %error "LONG_07F13"
    %endif
    times 1 - ($ - %%insn_07f13) db 0
    %%insn_07f14:
    mov ax,[bp+0xc] ; 07F14 8B460C
    %if ($ - %%insn_07f14) > 3
        %error "LONG_07F14"
    %endif
    times 3 - ($ - %%insn_07f14) db 0
    %%insn_07f17:
    mov dx,0x0 ; 07F17 BA0000
    %if ($ - %%insn_07f17) > 3
        %error "LONG_07F17"
    %endif
    times 3 - ($ - %%insn_07f17) db 0
    %%insn_07f1a:
    shl ax,1 ; 07F1A D1E0
    %if ($ - %%insn_07f1a) > 2
        %error "LONG_07F1A"
    %endif
    times 2 - ($ - %%insn_07f1a) db 0
    %%insn_07f1c:
    rcl dx,1 ; 07F1C D1D2
    %if ($ - %%insn_07f1c) > 2
        %error "LONG_07F1C"
    %endif
    times 2 - ($ - %%insn_07f1c) db 0
    %%insn_07f1e:
    shl ax,1 ; 07F1E D1E0
    %if ($ - %%insn_07f1e) > 2
        %error "LONG_07F1E"
    %endif
    times 2 - ($ - %%insn_07f1e) db 0
    %%insn_07f20:
    rcl dx,1 ; 07F20 D1D2
    %if ($ - %%insn_07f20) > 2
        %error "LONG_07F20"
    %endif
    times 2 - ($ - %%insn_07f20) db 0
    %%insn_07f22:
    shl ax,1 ; 07F22 D1E0
    %if ($ - %%insn_07f22) > 2
        %error "LONG_07F22"
    %endif
    times 2 - ($ - %%insn_07f22) db 0
    %%insn_07f24:
    rcl dx,1 ; 07F24 D1D2
    %if ($ - %%insn_07f24) > 2
        %error "LONG_07F24"
    %endif
    times 2 - ($ - %%insn_07f24) db 0
    %%insn_07f26:
    shl ax,1 ; 07F26 D1E0
    %if ($ - %%insn_07f26) > 2
        %error "LONG_07F26"
    %endif
    times 2 - ($ - %%insn_07f26) db 0
    %%insn_07f28:
    rcl dx,1 ; 07F28 D1D2
    %if ($ - %%insn_07f28) > 2
        %error "LONG_07F28"
    %endif
    times 2 - ($ - %%insn_07f28) db 0
    %%insn_07f2a:
    add ax,[bp+0xa] ; 07F2A 03460A
    %if ($ - %%insn_07f2a) > 3
        %error "LONG_07F2A"
    %endif
    times 3 - ($ - %%insn_07f2a) db 0
    %%insn_07f2d:
    adc dx,0x0 ; 07F2D 83D200
    %if ($ - %%insn_07f2d) > 3
        %error "LONG_07F2D"
    %endif
    times 3 - ($ - %%insn_07f2d) db 0
    %%insn_07f30:
    mov bx,[bp+0x8] ; 07F30 8B5E08
    %if ($ - %%insn_07f30) > 3
        %error "LONG_07F30"
    %endif
    times 3 - ($ - %%insn_07f30) db 0
    %%insn_07f33:
    mov cx,0x0 ; 07F33 B90000
    %if ($ - %%insn_07f33) > 3
        %error "LONG_07F33"
    %endif
    times 3 - ($ - %%insn_07f33) db 0
    %%insn_07f36:
    shl bx,1 ; 07F36 D1E3
    %if ($ - %%insn_07f36) > 2
        %error "LONG_07F36"
    %endif
    times 2 - ($ - %%insn_07f36) db 0
    %%insn_07f38:
    rcl cx,1 ; 07F38 D1D1
    %if ($ - %%insn_07f38) > 2
        %error "LONG_07F38"
    %endif
    times 2 - ($ - %%insn_07f38) db 0
    %%insn_07f3a:
    shl bx,1 ; 07F3A D1E3
    %if ($ - %%insn_07f3a) > 2
        %error "LONG_07F3A"
    %endif
    times 2 - ($ - %%insn_07f3a) db 0
    %%insn_07f3c:
    rcl cx,1 ; 07F3C D1D1
    %if ($ - %%insn_07f3c) > 2
        %error "LONG_07F3C"
    %endif
    times 2 - ($ - %%insn_07f3c) db 0
    %%insn_07f3e:
    shl bx,1 ; 07F3E D1E3
    %if ($ - %%insn_07f3e) > 2
        %error "LONG_07F3E"
    %endif
    times 2 - ($ - %%insn_07f3e) db 0
    %%insn_07f40:
    rcl cx,1 ; 07F40 D1D1
    %if ($ - %%insn_07f40) > 2
        %error "LONG_07F40"
    %endif
    times 2 - ($ - %%insn_07f40) db 0
    %%insn_07f42:
    shl bx,1 ; 07F42 D1E3
    %if ($ - %%insn_07f42) > 2
        %error "LONG_07F42"
    %endif
    times 2 - ($ - %%insn_07f42) db 0
    %%insn_07f44:
    rcl cx,1 ; 07F44 D1D1
    %if ($ - %%insn_07f44) > 2
        %error "LONG_07F44"
    %endif
    times 2 - ($ - %%insn_07f44) db 0
    %%insn_07f46:
    add bx,[bp+0x6] ; 07F46 035E06
    %if ($ - %%insn_07f46) > 3
        %error "LONG_07F46"
    %endif
    times 3 - ($ - %%insn_07f46) db 0
    %%insn_07f49:
    adc cx,0x0 ; 07F49 83D100
    %if ($ - %%insn_07f49) > 3
        %error "LONG_07F49"
    %endif
    times 3 - ($ - %%insn_07f49) db 0
    db 0x2B, 0xC3 ; 07F4C 2BC3 | sub ax,bx | encoding preserved
    db 0x1B, 0xD1 ; 07F4E 1BD1 | sbb dx,cx | encoding preserved
    %%insn_07f50:
    pop di ; 07F50 5F
    %if ($ - %%insn_07f50) > 1
        %error "LONG_07F50"
    %endif
    times 1 - ($ - %%insn_07f50) db 0
    %%insn_07f51:
    pop si ; 07F51 5E
    %if ($ - %%insn_07f51) > 1
        %error "LONG_07F51"
    %endif
    times 1 - ($ - %%insn_07f51) db 0
    %%insn_07f52:
    pop ds ; 07F52 1F
    %if ($ - %%insn_07f52) > 1
        %error "LONG_07F52"
    %endif
    times 1 - ($ - %%insn_07f52) db 0
    %%insn_07f53:
    pop bp ; 07F53 5D
    %if ($ - %%insn_07f53) > 1
        %error "LONG_07F53"
    %endif
    times 1 - ($ - %%insn_07f53) db 0
    %%insn_07f54:
    retf ; 07F54 CB
    %if ($ - %%insn_07f54) > 1
        %error "LONG_07F54"
    %endif
    times 1 - ($ - %%insn_07f54) db 0
    %if ($ - %%fragment_start) != 71
        %error "SIZE_07F0E"
    %endif
%endmacro
