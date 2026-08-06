; Linear entry 05F6C (1000:5f6c)
; Ghidra working symbol: FUN_1000_5f6c
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_05f6c_part_00 0
    %%fragment_start:
func_05f6c:
    %%insn_05f6c:
    push di ; 05F6C 57
    %if ($ - %%insn_05f6c) > 1
        %error "LONG_05F6C"
    %endif
    times 1 - ($ - %%insn_05f6c) db 0
    %%insn_05f6d:
    push si ; 05F6D 56
    %if ($ - %%insn_05f6d) > 1
        %error "LONG_05F6D"
    %endif
    times 1 - ($ - %%insn_05f6d) db 0
    db 0x8B, 0xFB ; 05F6E 8BFB | mov di,bx | encoding preserved
    db 0x8B, 0xF3 ; 05F70 8BF3 | mov si,bx | encoding preserved
    %%insn_05f72:
    lea dx,[di+0x31] ; 05F72 8D5531
    %if ($ - %%insn_05f72) > 3
        %error "LONG_05F72"
    %endif
    times 3 - ($ - %%insn_05f72) db 0
    db 0x2A, 0xC0 ; 05F75 2AC0 | sub al,al | encoding preserved
    db 0x8B, 0xDA ; 05F77 8BDA | mov bx,dx | encoding preserved
    %%insn_05f79:
    mov [bx],al ; 05F79 8807
    %if ($ - %%insn_05f79) > 2
        %error "LONG_05F79"
    %endif
    times 2 - ($ - %%insn_05f79) db 0
    %%insn_05f7b:
    mov [di+0x32],al ; 05F7B 884532
    %if ($ - %%insn_05f7b) > 3
        %error "LONG_05F7B"
    %endif
    times 3 - ($ - %%insn_05f7b) db 0
    %%insn_05f7e:
    mov [di+0x33],al ; 05F7E 884533
    %if ($ - %%insn_05f7e) > 3
        %error "LONG_05F7E"
    %endif
    times 3 - ($ - %%insn_05f7e) db 0
    %%insn_05f81:
    mov [di+0x34],al ; 05F81 884534
    %if ($ - %%insn_05f81) > 3
        %error "LONG_05F81"
    %endif
    times 3 - ($ - %%insn_05f81) db 0
    db 0x3B, 0xDF ; 05F84 3BDF | cmp bx,di | encoding preserved
    %%insn_05f86:
    jna short 0x5fb3 ; 05F86 762B
    %if ($ - %%insn_05f86) > 2
        %error "LONG_05F86"
    %endif
    times 2 - ($ - %%insn_05f86) db 0
    %%insn_05f88:
    cmp byte [si],0x1 ; 05F88 803C01
    %if ($ - %%insn_05f88) > 3
        %error "LONG_05F88"
    %endif
    times 3 - ($ - %%insn_05f88) db 0
    %%insn_05f8b:
    jnz short 0x5f92 ; 05F8B 7505
    %if ($ - %%insn_05f8b) > 2
        %error "LONG_05F8B"
    %endif
    times 2 - ($ - %%insn_05f8b) db 0
    %%insn_05f8d:
    inc byte [di+0x31] ; 05F8D FE4531
    %if ($ - %%insn_05f8d) > 3
        %error "LONG_05F8D"
    %endif
    times 3 - ($ - %%insn_05f8d) db 0
    %%insn_05f90:
    jmp short 0x5fae ; 05F90 EB1C
    %if ($ - %%insn_05f90) > 2
        %error "LONG_05F90"
    %endif
    times 2 - ($ - %%insn_05f90) db 0
    %%insn_05f92:
    cmp byte [si],0x2 ; 05F92 803C02
    %if ($ - %%insn_05f92) > 3
        %error "LONG_05F92"
    %endif
    times 3 - ($ - %%insn_05f92) db 0
    %%insn_05f95:
    jnz short 0x5f9c ; 05F95 7505
    %if ($ - %%insn_05f95) > 2
        %error "LONG_05F95"
    %endif
    times 2 - ($ - %%insn_05f95) db 0
    %%insn_05f97:
    inc byte [di+0x32] ; 05F97 FE4532
    %if ($ - %%insn_05f97) > 3
        %error "LONG_05F97"
    %endif
    times 3 - ($ - %%insn_05f97) db 0
    %%insn_05f9a:
    jmp short 0x5fae ; 05F9A EB12
    %if ($ - %%insn_05f9a) > 2
        %error "LONG_05F9A"
    %endif
    times 2 - ($ - %%insn_05f9a) db 0
    %%insn_05f9c:
    cmp byte [si],0x3 ; 05F9C 803C03
    %if ($ - %%insn_05f9c) > 3
        %error "LONG_05F9C"
    %endif
    times 3 - ($ - %%insn_05f9c) db 0
    %%insn_05f9f:
    jnz short 0x5fa6 ; 05F9F 7505
    %if ($ - %%insn_05f9f) > 2
        %error "LONG_05F9F"
    %endif
    times 2 - ($ - %%insn_05f9f) db 0
    %%insn_05fa1:
    inc byte [di+0x33] ; 05FA1 FE4533
    %if ($ - %%insn_05fa1) > 3
        %error "LONG_05FA1"
    %endif
    times 3 - ($ - %%insn_05fa1) db 0
    %%insn_05fa4:
    jmp short 0x5fae ; 05FA4 EB08
    %if ($ - %%insn_05fa4) > 2
        %error "LONG_05FA4"
    %endif
    times 2 - ($ - %%insn_05fa4) db 0
    %%insn_05fa6:
    cmp byte [si],0x4 ; 05FA6 803C04
    %if ($ - %%insn_05fa6) > 3
        %error "LONG_05FA6"
    %endif
    times 3 - ($ - %%insn_05fa6) db 0
    %%insn_05fa9:
    jnz short 0x5fae ; 05FA9 7503
    %if ($ - %%insn_05fa9) > 2
        %error "LONG_05FA9"
    %endif
    times 2 - ($ - %%insn_05fa9) db 0
    %%insn_05fab:
    inc byte [di+0x34] ; 05FAB FE4534
    %if ($ - %%insn_05fab) > 3
        %error "LONG_05FAB"
    %endif
    times 3 - ($ - %%insn_05fab) db 0
    %%insn_05fae:
    inc si ; 05FAE 46
    %if ($ - %%insn_05fae) > 1
        %error "LONG_05FAE"
    %endif
    times 1 - ($ - %%insn_05fae) db 0
    db 0x3B, 0xF2 ; 05FAF 3BF2 | cmp si,dx | encoding preserved
    %%insn_05fb1:
    jc short 0x5f88 ; 05FB1 72D5
    %if ($ - %%insn_05fb1) > 2
        %error "LONG_05FB1"
    %endif
    times 2 - ($ - %%insn_05fb1) db 0
    %%insn_05fb3:
    pop si ; 05FB3 5E
    %if ($ - %%insn_05fb3) > 1
        %error "LONG_05FB3"
    %endif
    times 1 - ($ - %%insn_05fb3) db 0
    %%insn_05fb4:
    pop di ; 05FB4 5F
    %if ($ - %%insn_05fb4) > 1
        %error "LONG_05FB4"
    %endif
    times 1 - ($ - %%insn_05fb4) db 0
    %%insn_05fb5:
    ret ; 05FB5 C3
    %if ($ - %%insn_05fb5) > 1
        %error "LONG_05FB5"
    %endif
    times 1 - ($ - %%insn_05fb5) db 0
    %if ($ - %%fragment_start) != 74
        %error "SIZE_05F6C"
    %endif
%endmacro
