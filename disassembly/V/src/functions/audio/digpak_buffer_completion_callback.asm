; Linear entry 080A2, original callback outside the 261-entry inventory.
; Contract: Resume the timer if needed; continue a partial block or mark the active buffer complete and schedule another ready buffer. Return far without inventing register preservation.
; Original byte identity is enforced by this project’s build.sh.

%macro emit_digpak_buffer_completion_callback_part_00 0
    %%fragment_start:
digpak_buffer_completion_callback:
    %%insn_080a2:
    cld ; 080A2 FC
    %if ($ - %%insn_080a2) != 1
        %error "DIGPAK_CALLBACK_INSN_080A2"
    %endif
    %%insn_080a3:
    push cs ; 080A3 0E
    %if ($ - %%insn_080a3) != 1
        %error "DIGPAK_CALLBACK_INSN_080A3"
    %endif
    %%insn_080a4:
    call 0x7ed7 ; 080A4 E830FE
    %if ($ - %%insn_080a4) != 3
        %error "DIGPAK_CALLBACK_INSN_080A4"
    %endif
    %%insn_080a7:
    mov ax,[cs:0xe74] ; 080A7 2EA1740E
    %if ($ - %%insn_080a7) != 4
        %error "DIGPAK_CALLBACK_INSN_080A7"
    %endif
    %%insn_080ab:
    or ax,[cs:0xe76] ; 080AB 2E0B06760E
    %if ($ - %%insn_080ab) != 5
        %error "DIGPAK_CALLBACK_INSN_080AB"
    %endif
    %%insn_080b0:
    jz short 0x80b8 ; 080B0 7406
    %if ($ - %%insn_080b0) != 2
        %error "DIGPAK_CALLBACK_INSN_080B0"
    %endif
    %%insn_080b2:
    push cs ; 080B2 0E
    %if ($ - %%insn_080b2) != 1
        %error "DIGPAK_CALLBACK_INSN_080B2"
    %endif
    %%insn_080b3:
    call 0x8327 ; 080B3 E87102
    %if ($ - %%insn_080b3) != 3
        %error "DIGPAK_CALLBACK_INSN_080B3"
    %endif
    %%insn_080b6:
    jmp short 0x80d5 ; 080B6 EB1D
    %if ($ - %%insn_080b6) != 2
        %error "DIGPAK_CALLBACK_INSN_080B6"
    %endif
    %%insn_080b8:
    mov bx,[cs:0xe64] ; 080B8 2E8B1E640E
    %if ($ - %%insn_080b8) != 5
        %error "DIGPAK_CALLBACK_INSN_080B8"
    %endif
    %%insn_080bd:
    mov word [cs:bx+0xe5c],0x3 ; 080BD 2EC7875C0E0300
    %if ($ - %%insn_080bd) != 7
        %error "DIGPAK_CALLBACK_INSN_080BD"
    %endif
    %%insn_080c4:
    push cs ; 080C4 0E
    %if ($ - %%insn_080c4) != 1
        %error "DIGPAK_CALLBACK_INSN_080C4"
    %endif
    %%insn_080c5:
    call 0x812b ; 080C5 E86300
    %if ($ - %%insn_080c5) != 3
        %error "DIGPAK_CALLBACK_INSN_080C5"
    %endif
    db 0x3D, 0xFF, 0xFF ; 080C8 3DFFFF | cmp ax,0xffff | encoding preserved
    %%insn_080cb:
    jz short 0x80d5 ; 080CB 7408
    %if ($ - %%insn_080cb) != 2
        %error "DIGPAK_CALLBACK_INSN_080CB"
    %endif
    %%insn_080cd:
    push ax ; 080CD 50
    %if ($ - %%insn_080cd) != 1
        %error "DIGPAK_CALLBACK_INSN_080CD"
    %endif
    %%insn_080ce:
    push cs ; 080CE 0E
    %if ($ - %%insn_080ce) != 1
        %error "DIGPAK_CALLBACK_INSN_080CE"
    %endif
    %%insn_080cf:
    call 0x82a9 ; 080CF E8D701
    %if ($ - %%insn_080cf) != 3
        %error "DIGPAK_CALLBACK_INSN_080CF"
    %endif
    %%insn_080d2:
    add sp,0x2 ; 080D2 83C402
    %if ($ - %%insn_080d2) != 3
        %error "DIGPAK_CALLBACK_INSN_080D2"
    %endif
    %%insn_080d5:
    retf ; 080D5 CB
    %if ($ - %%insn_080d5) != 1
        %error "DIGPAK_CALLBACK_INSN_080D5"
    %endif
    %if ($ - %%fragment_start) != 52
        %error "DIGPAK_CALLBACK_SIZE_080A2"
    %endif
%endmacro
