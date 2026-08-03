; Linear entry 05FB6 (1000:5fb6)
; Ghidra working symbol: FUN_1000_5fb6
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_05fb6_part_00 0
    %%fragment_start:
func_05fb6:
    %%insn_05fb6:
    push di ; 05FB6 57
    %if ($ - %%insn_05fb6) > 1
        %error "LONG_05FB6"
    %endif
    times 1 - ($ - %%insn_05fb6) db 0
    %%insn_05fb7:
    push si ; 05FB7 56
    %if ($ - %%insn_05fb7) > 1
        %error "LONG_05FB7"
    %endif
    times 1 - ($ - %%insn_05fb7) db 0
    %%insn_05fb8:
    mov byte [0xe4bb],0x1 ; 05FB8 C606BBE401
    %if ($ - %%insn_05fb8) > 5
        %error "LONG_05FB8"
    %endif
    times 5 - ($ - %%insn_05fb8) db 0
    db 0x2A, 0xC0 ; 05FBD 2AC0 | sub al,al | encoding preserved
    %%insn_05fbf:
    mov [0xe4b9],al ; 05FBF A2B9E4
    %if ($ - %%insn_05fbf) > 3
        %error "LONG_05FBF"
    %endif
    times 3 - ($ - %%insn_05fbf) db 0
    %%insn_05fc2:
    mov [0xe4bc],al ; 05FC2 A2BCE4
    %if ($ - %%insn_05fc2) > 3
        %error "LONG_05FC2"
    %endif
    times 3 - ($ - %%insn_05fc2) db 0
    %%insn_05fc5:
    mov ax,0xeb5d ; 05FC5 B85DEB
    %if ($ - %%insn_05fc5) > 3
        %error "LONG_05FC5"
    %endif
    times 3 - ($ - %%insn_05fc5) db 0
    %%insn_05fc8:
    mov cx,0x18 ; 05FC8 B91800
    %if ($ - %%insn_05fc8) > 3
        %error "LONG_05FC8"
    %endif
    times 3 - ($ - %%insn_05fc8) db 0
    db 0x8B, 0xF8 ; 05FCB 8BF8 | mov di,ax | encoding preserved
    %%insn_05fcd:
    mov si,0xe484 ; 05FCD BE84E4
    %if ($ - %%insn_05fcd) > 3
        %error "LONG_05FCD"
    %endif
    times 3 - ($ - %%insn_05fcd) db 0
    %%insn_05fd0:
    push ds ; 05FD0 1E
    %if ($ - %%insn_05fd0) > 1
        %error "LONG_05FD0"
    %endif
    times 1 - ($ - %%insn_05fd0) db 0
    %%insn_05fd1:
    pop es ; 05FD1 07
    %if ($ - %%insn_05fd1) > 1
        %error "LONG_05FD1"
    %endif
    times 1 - ($ - %%insn_05fd1) db 0
    %%insn_05fd2:
    rep movsw ; 05FD2 F3A5
    %if ($ - %%insn_05fd2) > 2
        %error "LONG_05FD2"
    %endif
    times 2 - ($ - %%insn_05fd2) db 0
    %%insn_05fd4:
    movsb ; 05FD4 A4
    %if ($ - %%insn_05fd4) > 1
        %error "LONG_05FD4"
    %endif
    times 1 - ($ - %%insn_05fd4) db 0
    %%insn_05fd5:
    pop si ; 05FD5 5E
    %if ($ - %%insn_05fd5) > 1
        %error "LONG_05FD5"
    %endif
    times 1 - ($ - %%insn_05fd5) db 0
    %%insn_05fd6:
    pop di ; 05FD6 5F
    %if ($ - %%insn_05fd6) > 1
        %error "LONG_05FD6"
    %endif
    times 1 - ($ - %%insn_05fd6) db 0
    %%insn_05fd7:
    ret ; 05FD7 C3
    %if ($ - %%insn_05fd7) > 1
        %error "LONG_05FD7"
    %endif
    times 1 - ($ - %%insn_05fd7) db 0
    %if ($ - %%fragment_start) != 34
        %error "SIZE_05FB6"
    %endif
%endmacro
