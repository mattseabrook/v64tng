; Linear entry 0812B (1702:110b)
; Ghidra working symbol: FUN_1702_110b
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_0812b_part_00 0
    %%fragment_start:
func_0812b:
    %%insn_0812b:
    push ds ; 0812B 1E
    %if ($ - %%insn_0812b) > 1
        %error "LONG_0812B"
    %endif
    times 1 - ($ - %%insn_0812b) db 0
    %%insn_0812c:
    push si ; 0812C 56
    %if ($ - %%insn_0812c) > 1
        %error "LONG_0812C"
    %endif
    times 1 - ($ - %%insn_0812c) db 0
    %%insn_0812d:
    push di ; 0812D 57
    %if ($ - %%insn_0812d) > 1
        %error "LONG_0812D"
    %endif
    times 1 - ($ - %%insn_0812d) db 0
    %%insn_0812e:
    mov ax,0x0 ; 0812E B80000
    %if ($ - %%insn_0812e) > 3
        %error "LONG_0812E"
    %endif
    times 3 - ($ - %%insn_0812e) db 0
    %%insn_08131:
    cmp word [cs:0xe5c],0x0 ; 08131 2E833E5C0E00
    %if ($ - %%insn_08131) > 6
        %error "LONG_08131"
    %endif
    times 6 - ($ - %%insn_08131) db 0
    %%insn_08137:
    jz short 0x814e ; 08137 7415
    %if ($ - %%insn_08137) > 2
        %error "LONG_08137"
    %endif
    times 2 - ($ - %%insn_08137) db 0
    %%insn_08139:
    mov ax,0x1 ; 08139 B80100
    %if ($ - %%insn_08139) > 3
        %error "LONG_08139"
    %endif
    times 3 - ($ - %%insn_08139) db 0
    %%insn_0813c:
    cmp word [cs:0xe5e],0x0 ; 0813C 2E833E5E0E00
    %if ($ - %%insn_0813c) > 6
        %error "LONG_0813C"
    %endif
    times 6 - ($ - %%insn_0813c) db 0
    %%insn_08142:
    jz short 0x814e ; 08142 740A
    %if ($ - %%insn_08142) > 2
        %error "LONG_08142"
    %endif
    times 2 - ($ - %%insn_08142) db 0
    %%insn_08144:
    mov word [cs:0xe62],0x3 ; 08144 2EC706620E0300
    %if ($ - %%insn_08144) > 7
        %error "LONG_08144"
    %endif
    times 7 - ($ - %%insn_08144) db 0
    %%insn_0814b:
    mov ax,0xffff ; 0814B B8FFFF
    %if ($ - %%insn_0814b) > 3
        %error "LONG_0814B"
    %endif
    times 3 - ($ - %%insn_0814b) db 0
    %%insn_0814e:
    pop di ; 0814E 5F
    %if ($ - %%insn_0814e) > 1
        %error "LONG_0814E"
    %endif
    times 1 - ($ - %%insn_0814e) db 0
    %%insn_0814f:
    pop si ; 0814F 5E
    %if ($ - %%insn_0814f) > 1
        %error "LONG_0814F"
    %endif
    times 1 - ($ - %%insn_0814f) db 0
    %%insn_08150:
    pop ds ; 08150 1F
    %if ($ - %%insn_08150) > 1
        %error "LONG_08150"
    %endif
    times 1 - ($ - %%insn_08150) db 0
    %%insn_08151:
    retf ; 08151 CB
    %if ($ - %%insn_08151) > 1
        %error "LONG_08151"
    %endif
    times 1 - ($ - %%insn_08151) db 0
    %if ($ - %%fragment_start) != 39
        %error "SIZE_0812B"
    %endif
%endmacro
