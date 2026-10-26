; Linear entry 08083, original callback outside the 261-entry inventory.
; Contract: Resume the timer if needed, continue a partially submitted PCM block, or advance the VOC cursor and schedule the next block; CLD and RETF preserve the original callback convention.
; Original byte identity is enforced by this project’s build.sh.

%macro emit_digpak_voc_completion_callback_part_00 0
    %%fragment_start:
digpak_voc_completion_callback:
    %%insn_08083:
    cld ; 08083 FC
    %if ($ - %%insn_08083) != 1
        %error "DIGPAK_CALLBACK_INSN_08083"
    %endif
    %%insn_08084:
    push cs ; 08084 0E
    %if ($ - %%insn_08084) != 1
        %error "DIGPAK_CALLBACK_INSN_08084"
    %endif
    %%insn_08085:
    call 0x7ed7 ; 08085 E84FFE
    %if ($ - %%insn_08085) != 3
        %error "DIGPAK_CALLBACK_INSN_08085"
    %endif
    %%insn_08088:
    mov ax,[cs:0xe74] ; 08088 2EA1740E
    %if ($ - %%insn_08088) != 4
        %error "DIGPAK_CALLBACK_INSN_08088"
    %endif
    %%insn_0808c:
    or ax,[cs:0xe76] ; 0808C 2E0B06760E
    %if ($ - %%insn_0808c) != 5
        %error "DIGPAK_CALLBACK_INSN_0808C"
    %endif
    %%insn_08091:
    jz short 0x8099 ; 08091 7406
    %if ($ - %%insn_08091) != 2
        %error "DIGPAK_CALLBACK_INSN_08091"
    %endif
    %%insn_08093:
    push cs ; 08093 0E
    %if ($ - %%insn_08093) != 1
        %error "DIGPAK_CALLBACK_INSN_08093"
    %endif
    %%insn_08094:
    call 0x8327 ; 08094 E89002
    %if ($ - %%insn_08094) != 3
        %error "DIGPAK_CALLBACK_INSN_08094"
    %endif
    %%insn_08097:
    jmp short 0x80a1 ; 08097 EB08
    %if ($ - %%insn_08097) != 2
        %error "DIGPAK_CALLBACK_INSN_08097"
    %endif
    %%insn_08099:
    push cs ; 08099 0E
    %if ($ - %%insn_08099) != 1
        %error "DIGPAK_CALLBACK_INSN_08099"
    %endif
    %%insn_0809a:
    call 0x80d6 ; 0809A E83900
    %if ($ - %%insn_0809a) != 3
        %error "DIGPAK_CALLBACK_INSN_0809A"
    %endif
    %%insn_0809d:
    push cs ; 0809D 0E
    %if ($ - %%insn_0809d) != 1
        %error "DIGPAK_CALLBACK_INSN_0809D"
    %endif
    %%insn_0809e:
    call 0x8152 ; 0809E E8B100
    %if ($ - %%insn_0809e) != 3
        %error "DIGPAK_CALLBACK_INSN_0809E"
    %endif
    %%insn_080a1:
    retf ; 080A1 CB
    %if ($ - %%insn_080a1) != 1
        %error "DIGPAK_CALLBACK_INSN_080A1"
    %endif
    %if ($ - %%fragment_start) != 31
        %error "DIGPAK_CALLBACK_SIZE_08083"
    %endif
%endmacro
