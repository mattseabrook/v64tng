; Linear entry 05F22 (1000:5f22)
; Ghidra working symbol: FUN_1000_5f22
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_05f22_part_00 0
    %%fragment_start:
func_05f22:
    %%insn_05f22:
    push bp ; 05F22 55
    %if ($ - %%insn_05f22) > 1
        %error "LONG_05F22"
    %endif
    times 1 - ($ - %%insn_05f22) db 0
    db 0x8B, 0xEC ; 05F23 8BEC | mov bp,sp | encoding preserved
    %%insn_05f25:
    sub sp,0x2 ; 05F25 83EC02
    %if ($ - %%insn_05f25) > 3
        %error "LONG_05F25"
    %endif
    times 3 - ($ - %%insn_05f25) db 0
    %%insn_05f28:
    push dx ; 05F28 52
    %if ($ - %%insn_05f28) > 1
        %error "LONG_05F28"
    %endif
    times 1 - ($ - %%insn_05f28) db 0
    %%insn_05f29:
    push di ; 05F29 57
    %if ($ - %%insn_05f29) > 1
        %error "LONG_05F29"
    %endif
    times 1 - ($ - %%insn_05f29) db 0
    %%insn_05f2a:
    push si ; 05F2A 56
    %if ($ - %%insn_05f2a) > 1
        %error "LONG_05F2A"
    %endif
    times 1 - ($ - %%insn_05f2a) db 0
    db 0x8B, 0xF0 ; 05F2B 8BF0 | mov si,ax | encoding preserved
    %%insn_05f2d:
    shl si,1 ; 05F2D D1E6
    %if ($ - %%insn_05f2d) > 2
        %error "LONG_05F2D"
    %endif
    times 2 - ($ - %%insn_05f2d) db 0
    %%insn_05f2f:
    mov di,[si-0x17c9] ; 05F2F 8BBC37E8
    %if ($ - %%insn_05f2f) > 4
        %error "LONG_05F2F"
    %endif
    times 4 - ($ - %%insn_05f2f) db 0
    db 0x8A, 0xC2 ; 05F33 8AC2 | mov al,dl | encoding preserved
    %%insn_05f35:
    cbw ; 05F35 98
    %if ($ - %%insn_05f35) > 1
        %error "LONG_05F35"
    %endif
    times 1 - ($ - %%insn_05f35) db 0
    %%insn_05f36:
    add ax,0xebc6 ; 05F36 05C6EB
    %if ($ - %%insn_05f36) > 3
        %error "LONG_05F36"
    %endif
    times 3 - ($ - %%insn_05f36) db 0
    %%insn_05f39:
    mov [bp-0x2],ax ; 05F39 8946FE
    %if ($ - %%insn_05f39) > 3
        %error "LONG_05F39"
    %endif
    times 3 - ($ - %%insn_05f39) db 0
    %%insn_05f3c:
    jmp short 0x5f5c ; 05F3C EB1E
    %if ($ - %%insn_05f3c) > 2
        %error "LONG_05F3C"
    %endif
    times 2 - ($ - %%insn_05f3c) db 0
    %%insn_05f3e:
    cmp byte [si-0x146a],0x0 ; 05F3E 80BC96EB00
    %if ($ - %%insn_05f3e) > 5
        %error "LONG_05F3E"
    %endif
    times 5 - ($ - %%insn_05f3e) db 0
    %%insn_05f43:
    jng short 0x5f5c ; 05F43 7E17
    %if ($ - %%insn_05f43) > 2
        %error "LONG_05F43"
    %endif
    times 2 - ($ - %%insn_05f43) db 0
    %%insn_05f45:
    mov al,[si-0x146a] ; 05F45 8A8496EB
    %if ($ - %%insn_05f45) > 4
        %error "LONG_05F45"
    %endif
    times 4 - ($ - %%insn_05f45) db 0
    %%insn_05f49:
    cbw ; 05F49 98
    %if ($ - %%insn_05f49) > 1
        %error "LONG_05F49"
    %endif
    times 1 - ($ - %%insn_05f49) db 0
    db 0x8B, 0xD8 ; 05F4A 8BD8 | mov bx,ax | encoding preserved
    %%insn_05f4c:
    dec byte [bx-0x143a] ; 05F4C FE8FC6EB
    %if ($ - %%insn_05f4c) > 4
        %error "LONG_05F4C"
    %endif
    times 4 - ($ - %%insn_05f4c) db 0
    %%insn_05f50:
    mov al,[bp-0x4] ; 05F50 8A46FC
    %if ($ - %%insn_05f50) > 3
        %error "LONG_05F50"
    %endif
    times 3 - ($ - %%insn_05f50) db 0
    %%insn_05f53:
    mov [si-0x146a],al ; 05F53 888496EB
    %if ($ - %%insn_05f53) > 4
        %error "LONG_05F53"
    %endif
    times 4 - ($ - %%insn_05f53) db 0
    %%insn_05f57:
    mov bx,[bp-0x2] ; 05F57 8B5EFE
    %if ($ - %%insn_05f57) > 3
        %error "LONG_05F57"
    %endif
    times 3 - ($ - %%insn_05f57) db 0
    %%insn_05f5a:
    inc byte [bx] ; 05F5A FE07
    %if ($ - %%insn_05f5a) > 2
        %error "LONG_05F5A"
    %endif
    times 2 - ($ - %%insn_05f5a) db 0
    %%insn_05f5c:
    mov al,[di] ; 05F5C 8A05
    %if ($ - %%insn_05f5c) > 2
        %error "LONG_05F5C"
    %endif
    times 2 - ($ - %%insn_05f5c) db 0
    %%insn_05f5e:
    inc di ; 05F5E 47
    %if ($ - %%insn_05f5e) > 1
        %error "LONG_05F5E"
    %endif
    times 1 - ($ - %%insn_05f5e) db 0
    %%insn_05f5f:
    cbw ; 05F5F 98
    %if ($ - %%insn_05f5f) > 1
        %error "LONG_05F5F"
    %endif
    times 1 - ($ - %%insn_05f5f) db 0
    db 0x8B, 0xF0 ; 05F60 8BF0 | mov si,ax | encoding preserved
    db 0x0B, 0xF6 ; 05F62 0BF6 | or si,si | encoding preserved
    %%insn_05f64:
    jnl short 0x5f3e ; 05F64 7DD8
    %if ($ - %%insn_05f64) > 2
        %error "LONG_05F64"
    %endif
    times 2 - ($ - %%insn_05f64) db 0
    %%insn_05f66:
    pop si ; 05F66 5E
    %if ($ - %%insn_05f66) > 1
        %error "LONG_05F66"
    %endif
    times 1 - ($ - %%insn_05f66) db 0
    %%insn_05f67:
    pop di ; 05F67 5F
    %if ($ - %%insn_05f67) > 1
        %error "LONG_05F67"
    %endif
    times 1 - ($ - %%insn_05f67) db 0
    db 0x8B, 0xE5 ; 05F68 8BE5 | mov sp,bp | encoding preserved
    %%insn_05f6a:
    pop bp ; 05F6A 5D
    %if ($ - %%insn_05f6a) > 1
        %error "LONG_05F6A"
    %endif
    times 1 - ($ - %%insn_05f6a) db 0
    %%insn_05f6b:
    ret ; 05F6B C3
    %if ($ - %%insn_05f6b) > 1
        %error "LONG_05F6B"
    %endif
    times 1 - ($ - %%insn_05f6b) db 0
    %if ($ - %%fragment_start) != 74
        %error "SIZE_05F22"
    %endif
%endmacro
