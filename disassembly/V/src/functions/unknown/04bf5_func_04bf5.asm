; Linear entry 04BF5 (1000:4bf5)
; Ghidra working symbol: FUN_1000_4bf5
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_04bf5_part_00 0
    %%fragment_start:
func_04bf5:
    %%insn_04bf5:
    cmp word [bp-0x2620],0x0 ; 04BF5 83BEE0D900
    %if ($ - %%insn_04bf5) > 5
        %error "LONG_04BF5"
    %endif
    times 5 - ($ - %%insn_04bf5) db 0
    %%insn_04bfa:
    jnz short 0x4bfd ; 04BFA 7501
    %if ($ - %%insn_04bfa) > 2
        %error "LONG_04BFA"
    %endif
    times 2 - ($ - %%insn_04bfa) db 0
    %%insn_04bfc:
    ret ; 04BFC C3
    %if ($ - %%insn_04bfc) > 1
        %error "LONG_04BFC"
    %endif
    times 1 - ($ - %%insn_04bfc) db 0
    %%insn_04bfd:
    cmp word [bp-0x262a],0x0 ; 04BFD 83BED6D900
    %if ($ - %%insn_04bfd) > 5
        %error "LONG_04BFD"
    %endif
    times 5 - ($ - %%insn_04bfd) db 0
    %%insn_04c02:
    jnz short 0x4c05 ; 04C02 7501
    %if ($ - %%insn_04c02) > 2
        %error "LONG_04C02"
    %endif
    times 2 - ($ - %%insn_04c02) db 0
    %%insn_04c04:
    ret ; 04C04 C3
    %if ($ - %%insn_04c04) > 1
        %error "LONG_04C04"
    %endif
    times 1 - ($ - %%insn_04c04) db 0
    %%insn_04c05:
    push si ; 04C05 56
    %if ($ - %%insn_04c05) > 1
        %error "LONG_04C05"
    %endif
    times 1 - ($ - %%insn_04c05) db 0
    %%insn_04c06:
    push es ; 04C06 06
    %if ($ - %%insn_04c06) > 1
        %error "LONG_04C06"
    %endif
    times 1 - ($ - %%insn_04c06) db 0
    %%insn_04c07:
    push ds ; 04C07 1E
    %if ($ - %%insn_04c07) > 1
        %error "LONG_04C07"
    %endif
    times 1 - ($ - %%insn_04c07) db 0
    %%insn_04c08:
    push bx ; 04C08 53
    %if ($ - %%insn_04c08) > 1
        %error "LONG_04C08"
    %endif
    times 1 - ($ - %%insn_04c08) db 0
    %%insn_04c09:
    push cx ; 04C09 51
    %if ($ - %%insn_04c09) > 1
        %error "LONG_04C09"
    %endif
    times 1 - ($ - %%insn_04c09) db 0
    %%insn_04c0a:
    push di ; 04C0A 57
    %if ($ - %%insn_04c0a) > 1
        %error "LONG_04C0A"
    %endif
    times 1 - ($ - %%insn_04c0a) db 0
    %%insn_04c0b:
    mov ax,[bp-0x2aaa] ; 04C0B 8B8656D5
    %if ($ - %%insn_04c0b) > 4
        %error "LONG_04C0B"
    %endif
    times 4 - ($ - %%insn_04c0b) db 0
    %%insn_04c0f:
    mov ds,ax ; 04C0F 8ED8
    %if ($ - %%insn_04c0f) > 2
        %error "LONG_04C0F"
    %endif
    times 2 - ($ - %%insn_04c0f) db 0
    %%insn_04c11:
    mov si,[bp-0x2648] ; 04C11 8BB6B8D9
    %if ($ - %%insn_04c11) > 4
        %error "LONG_04C11"
    %endif
    times 4 - ($ - %%insn_04c11) db 0
    %%insn_04c15:
    mov cx,[bp-0x262e] ; 04C15 8B8ED2D9
    %if ($ - %%insn_04c15) > 4
        %error "LONG_04C15"
    %endif
    times 4 - ($ - %%insn_04c15) db 0
    %%insn_04c19:
    mov dx,[bp-0x262c] ; 04C19 8B96D4D9
    %if ($ - %%insn_04c19) > 4
        %error "LONG_04C19"
    %endif
    times 4 - ($ - %%insn_04c19) db 0
    %%insn_04c1d:
    call 0x4eae ; 04C1D E88E02
    %if ($ - %%insn_04c1d) > 3
        %error "LONG_04C1D"
    %endif
    times 3 - ($ - %%insn_04c1d) db 0
    %%insn_04c20:
    pop di ; 04C20 5F
    %if ($ - %%insn_04c20) > 1
        %error "LONG_04C20"
    %endif
    times 1 - ($ - %%insn_04c20) db 0
    %%insn_04c21:
    pop cx ; 04C21 59
    %if ($ - %%insn_04c21) > 1
        %error "LONG_04C21"
    %endif
    times 1 - ($ - %%insn_04c21) db 0
    %%insn_04c22:
    pop bx ; 04C22 5B
    %if ($ - %%insn_04c22) > 1
        %error "LONG_04C22"
    %endif
    times 1 - ($ - %%insn_04c22) db 0
    %%insn_04c23:
    pop ds ; 04C23 1F
    %if ($ - %%insn_04c23) > 1
        %error "LONG_04C23"
    %endif
    times 1 - ($ - %%insn_04c23) db 0
    %%insn_04c24:
    pop es ; 04C24 07
    %if ($ - %%insn_04c24) > 1
        %error "LONG_04C24"
    %endif
    times 1 - ($ - %%insn_04c24) db 0
    %%insn_04c25:
    pop si ; 04C25 5E
    %if ($ - %%insn_04c25) > 1
        %error "LONG_04C25"
    %endif
    times 1 - ($ - %%insn_04c25) db 0
    %%insn_04c26:
    ret ; 04C26 C3
    %if ($ - %%insn_04c26) > 1
        %error "LONG_04C26"
    %endif
    times 1 - ($ - %%insn_04c26) db 0
    %if ($ - %%fragment_start) != 50
        %error "SIZE_04BF5"
    %endif
%endmacro
