; Linear entry 02BF0 (1000:2bf0), recovered from former gap 02BE8..02C31.
; Verified additional interrupt entry, not one of the 261 Ghidra entries.
; 02B55 installs this as INT 15h; AX=91FBh submits a pending BIOS PCM block
; or clears CF44h when none remains. Other AX values chain through CS:2BE8.
; IRET restores the original interrupt frame; external INT 1Ah is not modeled here.
; Original byte identity is enforced by this project’s build.sh.

%macro emit_bios_pcm_completion_interrupt_part_00 0
    %%fragment_start:
bios_pcm_completion_interrupt:
    %%insn_02bf0:
    cmp ax,0x91fb ; 02BF0 3DFB91
    %if ($ - %%insn_02bf0) != 3
        %error "BIOS_PCM_INSTRUCTION_SIZE_02BF0"
    %endif
    %%insn_02bf3:
    jnz short 0x2c2c ; 02BF3 7537
    %if ($ - %%insn_02bf3) != 2
        %error "BIOS_PCM_INSTRUCTION_SIZE_02BF3"
    %endif
    %%insn_02bf5:
    push es ; 02BF5 06
    %if ($ - %%insn_02bf5) != 1
        %error "BIOS_PCM_INSTRUCTION_SIZE_02BF5"
    %endif
    %%insn_02bf6:
    push ds ; 02BF6 1E
    %if ($ - %%insn_02bf6) != 1
        %error "BIOS_PCM_INSTRUCTION_SIZE_02BF6"
    %endif
    %%insn_02bf7:
    pusha ; 02BF7 60
    %if ($ - %%insn_02bf7) != 1
        %error "BIOS_PCM_INSTRUCTION_SIZE_02BF7"
    %endif
    %%insn_02bf8:
    mov ax,0x893 ; 02BF8 B89308
    %if ($ - %%insn_02bf8) != 3
        %error "BIOS_PCM_INSTRUCTION_SIZE_02BF8"
    %endif
    %%insn_02bfb:
    mov ds,ax ; 02BFB 8ED8
    %if ($ - %%insn_02bfb) != 2
        %error "BIOS_PCM_INSTRUCTION_SIZE_02BFB"
    %endif
    %%insn_02bfd:
    cmp word [0xcf40],byte 0x0 ; 02BFD 833E40CF00
    %if ($ - %%insn_02bfd) != 5
        %error "BIOS_PCM_INSTRUCTION_SIZE_02BFD"
    %endif
    %%insn_02c02:
    jz short 0x2c21 ; 02C02 741D
    %if ($ - %%insn_02c02) != 2
        %error "BIOS_PCM_INSTRUCTION_SIZE_02C02"
    %endif
    %%insn_02c04:
    mov cx,[0xcf40] ; 02C04 8B0E40CF
    %if ($ - %%insn_02c04) != 4
        %error "BIOS_PCM_INSTRUCTION_SIZE_02C04"
    %endif
    %%insn_02c08:
    mov bx,[0xcf42] ; 02C08 8B1E42CF
    %if ($ - %%insn_02c08) != 4
        %error "BIOS_PCM_INSTRUCTION_SIZE_02C08"
    %endif
    %%insn_02c0c:
    mov es,word [0xd54e] ; 02C0C 8E064ED5
    %if ($ - %%insn_02c0c) != 4
        %error "BIOS_PCM_INSTRUCTION_SIZE_02C0C"
    %endif
    %%insn_02c10:
    mov dx,0xa2 ; 02C10 BAA200
    %if ($ - %%insn_02c10) != 3
        %error "BIOS_PCM_INSTRUCTION_SIZE_02C10"
    %endif
    %%insn_02c13:
    mov ah,0x83 ; 02C13 B483
    %if ($ - %%insn_02c13) != 2
        %error "BIOS_PCM_INSTRUCTION_SIZE_02C13"
    %endif
    %%insn_02c15:
    mov al,0x7 ; 02C15 B007
    %if ($ - %%insn_02c15) != 2
        %error "BIOS_PCM_INSTRUCTION_SIZE_02C15"
    %endif
    %%insn_02c17:
    int byte 0x1a ; 02C17 CD1A
    %if ($ - %%insn_02c17) != 2
        %error "BIOS_PCM_INSTRUCTION_SIZE_02C17"
    %endif
    %%insn_02c19:
    mov word [0xcf40],0x0 ; 02C19 C70640CF0000
    %if ($ - %%insn_02c19) != 6
        %error "BIOS_PCM_INSTRUCTION_SIZE_02C19"
    %endif
    %%insn_02c1f:
    jmp short 0x2c26 ; 02C1F EB05
    %if ($ - %%insn_02c1f) != 2
        %error "BIOS_PCM_INSTRUCTION_SIZE_02C1F"
    %endif
    %%insn_02c21:
    mov byte [0xcf44],0x0 ; 02C21 C60644CF00
    %if ($ - %%insn_02c21) != 5
        %error "BIOS_PCM_INSTRUCTION_SIZE_02C21"
    %endif
    %%insn_02c26:
    popa ; 02C26 61
    %if ($ - %%insn_02c26) != 1
        %error "BIOS_PCM_INSTRUCTION_SIZE_02C26"
    %endif
    %%insn_02c27:
    pop ds ; 02C27 1F
    %if ($ - %%insn_02c27) != 1
        %error "BIOS_PCM_INSTRUCTION_SIZE_02C27"
    %endif
    %%insn_02c28:
    pop es ; 02C28 07
    %if ($ - %%insn_02c28) != 1
        %error "BIOS_PCM_INSTRUCTION_SIZE_02C28"
    %endif
    %%insn_02c29:
    iret ; 02C29 CF
    %if ($ - %%insn_02c29) != 1
        %error "BIOS_PCM_INSTRUCTION_SIZE_02C29"
    %endif
    %if ($ - %%fragment_start) != 58
        %error "BIOS_PCM_FRAGMENT_SIZE_0"
    %endif
%endmacro

%macro emit_bios_pcm_completion_interrupt_part_01 0
    %%fragment_start:
    %%insn_02c2c:
    jmp word far [cs:0x2be8] ; 02C2C 2EFF2EE82B
    %if ($ - %%insn_02c2c) != 5
        %error "BIOS_PCM_INSTRUCTION_SIZE_02C2C"
    %endif
    %if ($ - %%fragment_start) != 5
        %error "BIOS_PCM_FRAGMENT_SIZE_1"
    %endif
%endmacro
