; Linear entry 08069 (1702:1049)
; Ghidra working symbol: FUN_1702_1049
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_08069_part_00 0
    %%fragment_start:
func_08069:
    %%insn_08069:
    push bp ; 08069 55
    %if ($ - %%insn_08069) > 1
        %error "LONG_08069"
    %endif
    times 1 - ($ - %%insn_08069) db 0
    db 0x8B, 0xEC ; 0806A 8BEC | mov bp,sp | encoding preserved
    %%insn_0806c:
    push ds ; 0806C 1E
    %if ($ - %%insn_0806c) > 1
        %error "LONG_0806C"
    %endif
    times 1 - ($ - %%insn_0806c) db 0
    %%insn_0806d:
    push si ; 0806D 56
    %if ($ - %%insn_0806d) > 1
        %error "LONG_0806D"
    %endif
    times 1 - ($ - %%insn_0806d) db 0
    %%insn_0806e:
    push di ; 0806E 57
    %if ($ - %%insn_0806e) > 1
        %error "LONG_0806E"
    %endif
    times 1 - ($ - %%insn_0806e) db 0
    %%insn_0806f:
    mov ax,cs ; 0806F 8CC8
    %if ($ - %%insn_0806f) > 2
        %error "LONG_0806F"
    %endif
    times 2 - ($ - %%insn_0806f) db 0
    %%insn_08071:
    mov ds,ax ; 08071 8ED8
    %if ($ - %%insn_08071) > 2
        %error "LONG_08071"
    %endif
    times 2 - ($ - %%insn_08071) db 0
    %%insn_08073:
    mov bx,[bp+0x6] ; 08073 8B5E06
    %if ($ - %%insn_08073) > 3
        %error "LONG_08073"
    %endif
    times 3 - ($ - %%insn_08073) db 0
    %%insn_08076:
    mov dx,[bp+0x8] ; 08076 8B5608
    %if ($ - %%insn_08076) > 3
        %error "LONG_08076"
    %endif
    times 3 - ($ - %%insn_08076) db 0
    %%insn_08079:
    mov ax,0x68e ; 08079 B88E06
    %if ($ - %%insn_08079) > 3
        %error "LONG_08079"
    %endif
    times 3 - ($ - %%insn_08079) db 0
    %%insn_0807c:
    int byte 0x66 ; 0807C CD66
    %if ($ - %%insn_0807c) > 2
        %error "LONG_0807C"
    %endif
    times 2 - ($ - %%insn_0807c) db 0
    %%insn_0807e:
    pop di ; 0807E 5F
    %if ($ - %%insn_0807e) > 1
        %error "LONG_0807E"
    %endif
    times 1 - ($ - %%insn_0807e) db 0
    %%insn_0807f:
    pop si ; 0807F 5E
    %if ($ - %%insn_0807f) > 1
        %error "LONG_0807F"
    %endif
    times 1 - ($ - %%insn_0807f) db 0
    %%insn_08080:
    pop ds ; 08080 1F
    %if ($ - %%insn_08080) > 1
        %error "LONG_08080"
    %endif
    times 1 - ($ - %%insn_08080) db 0
    %%insn_08081:
    pop bp ; 08081 5D
    %if ($ - %%insn_08081) > 1
        %error "LONG_08081"
    %endif
    times 1 - ($ - %%insn_08081) db 0
    %%insn_08082:
    retf ; 08082 CB
    %if ($ - %%insn_08082) > 1
        %error "LONG_08082"
    %endif
    times 1 - ($ - %%insn_08082) db 0
    %if ($ - %%fragment_start) != 26
        %error "SIZE_08069"
    %endif
%endmacro
