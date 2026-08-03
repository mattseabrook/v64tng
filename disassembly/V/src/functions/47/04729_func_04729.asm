; Linear entry 04729 (1000:4729)
; Ghidra working symbol: FUN_1000_4729
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_04729_part_00 0
    %%fragment_start:
func_04729:
    %%insn_04729:
    mov al,[bp-0x2609] ; 04729 8A86F7D9
    %if ($ - %%insn_04729) > 4
        %error "LONG_04729"
    %endif
    times 4 - ($ - %%insn_04729) db 0
    db 0x22, 0xC0 ; 0472D 22C0 | and al,al | encoding preserved
    %%insn_0472f:
    jz short 0x4750 ; 0472F 741F
    %if ($ - %%insn_0472f) > 2
        %error "LONG_0472F"
    %endif
    times 2 - ($ - %%insn_0472f) db 0
    %%insn_04731:
    cmp al,[si] ; 04731 3A04
    %if ($ - %%insn_04731) > 2
        %error "LONG_04731"
    %endif
    times 2 - ($ - %%insn_04731) db 0
    %%insn_04733:
    jnz short 0x4750 ; 04733 751B
    %if ($ - %%insn_04733) > 2
        %error "LONG_04733"
    %endif
    times 2 - ($ - %%insn_04733) db 0
    %%insn_04735:
    push si ; 04735 56
    %if ($ - %%insn_04735) > 1
        %error "LONG_04735"
    %endif
    times 1 - ($ - %%insn_04735) db 0
    %%insn_04736:
    push es ; 04736 06
    %if ($ - %%insn_04736) > 1
        %error "LONG_04736"
    %endif
    times 1 - ($ - %%insn_04736) db 0
    %%insn_04737:
    push ds ; 04737 1E
    %if ($ - %%insn_04737) > 1
        %error "LONG_04737"
    %endif
    times 1 - ($ - %%insn_04737) db 0
    %%insn_04738:
    mov byte [bp-0x2609],0xff ; 04738 C686F7D9FF
    %if ($ - %%insn_04738) > 5
        %error "LONG_04738"
    %endif
    times 5 - ($ - %%insn_04738) db 0
    %%insn_0473d:
    mov ax,0x893 ; 0473D B89308
    %if ($ - %%insn_0473d) > 3
        %error "LONG_0473D"
    %endif
    times 3 - ($ - %%insn_0473d) db 0
    %%insn_04740:
    mov ds,ax ; 04740 8ED8
    %if ($ - %%insn_04740) > 2
        %error "LONG_04740"
    %endif
    times 2 - ($ - %%insn_04740) db 0
    %%insn_04742:
    mov es,ax ; 04742 8EC0
    %if ($ - %%insn_04742) > 2
        %error "LONG_04742"
    %endif
    times 2 - ($ - %%insn_04742) db 0
    %%insn_04744:
    call 0x4bf5 ; 04744 E8AE04
    %if ($ - %%insn_04744) > 3
        %error "LONG_04744"
    %endif
    times 3 - ($ - %%insn_04744) db 0
    %%insn_04747:
    pop ds ; 04747 1F
    %if ($ - %%insn_04747) > 1
        %error "LONG_04747"
    %endif
    times 1 - ($ - %%insn_04747) db 0
    %%insn_04748:
    pop es ; 04748 07
    %if ($ - %%insn_04748) > 1
        %error "LONG_04748"
    %endif
    times 1 - ($ - %%insn_04748) db 0
    %%insn_04749:
    pop si ; 04749 5E
    %if ($ - %%insn_04749) > 1
        %error "LONG_04749"
    %endif
    times 1 - ($ - %%insn_04749) db 0
    %%insn_0474a:
    pop ax ; 0474A 58
    %if ($ - %%insn_0474a) > 1
        %error "LONG_0474A"
    %endif
    times 1 - ($ - %%insn_0474a) db 0
    %%insn_0474b:
    pop ax ; 0474B 58
    %if ($ - %%insn_0474b) > 1
        %error "LONG_0474B"
    %endif
    times 1 - ($ - %%insn_0474b) db 0
    %%insn_0474c:
    mov si,[si+0x1] ; 0474C 8B7401
    %if ($ - %%insn_0474c) > 3
        %error "LONG_0474C"
    %endif
    times 3 - ($ - %%insn_0474c) db 0
    %%insn_0474f:
    ret ; 0474F C3
    %if ($ - %%insn_0474f) > 1
        %error "LONG_0474F"
    %endif
    times 1 - ($ - %%insn_0474f) db 0
    %%insn_04750:
    add si,0x3 ; 04750 83C603
    %if ($ - %%insn_04750) > 3
        %error "LONG_04750"
    %endif
    times 3 - ($ - %%insn_04750) db 0
    %%insn_04753:
    ret ; 04753 C3
    %if ($ - %%insn_04753) > 1
        %error "LONG_04753"
    %endif
    times 1 - ($ - %%insn_04753) db 0
    %if ($ - %%fragment_start) != 43
        %error "SIZE_04729"
    %endif
%endmacro
