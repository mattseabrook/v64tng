; Linear entry 03756 (1000:3756)
; Ghidra working symbol: FUN_1000_3756
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_03756_part_00 0
    %%fragment_start:
func_03756:
    %%insn_03756:
    call 0x39f8 ; 03756 E89F02
    %if ($ - %%insn_03756) > 3
        %error "LONG_03756"
    %endif
    times 3 - ($ - %%insn_03756) db 0
    %%insn_03759:
    mov ax,0x3d00 ; 03759 B8003D
    %if ($ - %%insn_03759) > 3
        %error "LONG_03759"
    %endif
    times 3 - ($ - %%insn_03759) db 0
    %%insn_0375c:
    int byte 0x21 ; 0375C CD21
    %if ($ - %%insn_0375c) > 2
        %error "LONG_0375C"
    %endif
    times 2 - ($ - %%insn_0375c) db 0
    %%insn_0375e:
    jc short 0x3766 ; 0375E 7206
    %if ($ - %%insn_0375e) > 2
        %error "LONG_0375E"
    %endif
    times 2 - ($ - %%insn_0375e) db 0
    db 0x8B, 0xD8 ; 03760 8BD8 | mov bx,ax | encoding preserved
    db 0x33, 0xC0 ; 03762 33C0 | xor ax,ax | encoding preserved
    %%insn_03764:
    jmp short 0x3769 ; 03764 EB03
    %if ($ - %%insn_03764) > 2
        %error "LONG_03764"
    %endif
    times 2 - ($ - %%insn_03764) db 0
    %%insn_03766:
    mov ax,0xffff ; 03766 B8FFFF
    %if ($ - %%insn_03766) > 3
        %error "LONG_03766"
    %endif
    times 3 - ($ - %%insn_03766) db 0
    %%insn_03769:
    ret ; 03769 C3
    %if ($ - %%insn_03769) > 1
        %error "LONG_03769"
    %endif
    times 1 - ($ - %%insn_03769) db 0
    %if ($ - %%fragment_start) != 20
        %error "SIZE_03756"
    %endif
%endmacro
