; Linear entry 07F7B (1702:0f5b)
; Ghidra working symbol: FUN_1702_0f5b
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_07f7b_part_00 0
    %%fragment_start:
func_07f7b:
    %%insn_07f7b:
    push bp ; 07F7B 55
    %if ($ - %%insn_07f7b) > 1
        %error "LONG_07F7B"
    %endif
    times 1 - ($ - %%insn_07f7b) db 0
    db 0x8B, 0xEC ; 07F7C 8BEC | mov bp,sp | encoding preserved
    %%insn_07f7e:
    push ds ; 07F7E 1E
    %if ($ - %%insn_07f7e) > 1
        %error "LONG_07F7E"
    %endif
    times 1 - ($ - %%insn_07f7e) db 0
    %%insn_07f7f:
    push si ; 07F7F 56
    %if ($ - %%insn_07f7f) > 1
        %error "LONG_07F7F"
    %endif
    times 1 - ($ - %%insn_07f7f) db 0
    %%insn_07f80:
    push di ; 07F80 57
    %if ($ - %%insn_07f80) > 1
        %error "LONG_07F80"
    %endif
    times 1 - ($ - %%insn_07f80) db 0
    %%insn_07f81:
    mov bx,[bp+0x6] ; 07F81 8B5E06
    %if ($ - %%insn_07f81) > 3
        %error "LONG_07F81"
    %endif
    times 3 - ($ - %%insn_07f81) db 0
    %%insn_07f84:
    mov bh,0x0 ; 07F84 B700
    %if ($ - %%insn_07f84) > 2
        %error "LONG_07F84"
    %endif
    times 2 - ($ - %%insn_07f84) db 0
    %%insn_07f86:
    mov ax,0x100 ; 07F86 B80001
    %if ($ - %%insn_07f86) > 3
        %error "LONG_07F86"
    %endif
    times 3 - ($ - %%insn_07f86) db 0
    db 0x2B, 0xC3 ; 07F89 2BC3 | sub ax,bx | encoding preserved
    %%insn_07f8b:
    push ax ; 07F8B 50
    %if ($ - %%insn_07f8b) > 1
        %error "LONG_07F8B"
    %endif
    times 1 - ($ - %%insn_07f8b) db 0
    %%insn_07f8c:
    push bp ; 07F8C 55
    %if ($ - %%insn_07f8c) > 1
        %error "LONG_07F8C"
    %endif
    times 1 - ($ - %%insn_07f8c) db 0
    db 0x8B, 0xEC ; 07F8D 8BEC | mov bp,sp | encoding preserved
    %%insn_07f8f:
    mov word [bp+0x2],0x0 ; 07F8F C746020000
    %if ($ - %%insn_07f8f) > 5
        %error "LONG_07F8F"
    %endif
    times 5 - ($ - %%insn_07f8f) db 0
    %%insn_07f94:
    pop bp ; 07F94 5D
    %if ($ - %%insn_07f94) > 1
        %error "LONG_07F94"
    %endif
    times 1 - ($ - %%insn_07f94) db 0
    %%insn_07f95:
    push ax ; 07F95 50
    %if ($ - %%insn_07f95) > 1
        %error "LONG_07F95"
    %endif
    times 1 - ($ - %%insn_07f95) db 0
    %%insn_07f96:
    push ax ; 07F96 50
    %if ($ - %%insn_07f96) > 1
        %error "LONG_07F96"
    %endif
    times 1 - ($ - %%insn_07f96) db 0
    %%insn_07f97:
    push bp ; 07F97 55
    %if ($ - %%insn_07f97) > 1
        %error "LONG_07F97"
    %endif
    times 1 - ($ - %%insn_07f97) db 0
    db 0x8B, 0xEC ; 07F98 8BEC | mov bp,sp | encoding preserved
    %%insn_07f9a:
    mov word [bp+0x2],0xf ; 07F9A C746020F00
    %if ($ - %%insn_07f9a) > 5
        %error "LONG_07F9A"
    %endif
    times 5 - ($ - %%insn_07f9a) db 0
    %%insn_07f9f:
    pop bp ; 07F9F 5D
    %if ($ - %%insn_07f9f) > 1
        %error "LONG_07F9F"
    %endif
    times 1 - ($ - %%insn_07f9f) db 0
    %%insn_07fa0:
    push ax ; 07FA0 50
    %if ($ - %%insn_07fa0) > 1
        %error "LONG_07FA0"
    %endif
    times 1 - ($ - %%insn_07fa0) db 0
    %%insn_07fa1:
    push bp ; 07FA1 55
    %if ($ - %%insn_07fa1) > 1
        %error "LONG_07FA1"
    %endif
    times 1 - ($ - %%insn_07fa1) db 0
    db 0x8B, 0xEC ; 07FA2 8BEC | mov bp,sp | encoding preserved
    %%insn_07fa4:
    mov word [bp+0x2],0x4240 ; 07FA4 C746024042
    %if ($ - %%insn_07fa4) > 5
        %error "LONG_07FA4"
    %endif
    times 5 - ($ - %%insn_07fa4) db 0
    %%insn_07fa9:
    pop bp ; 07FA9 5D
    %if ($ - %%insn_07fa9) > 1
        %error "LONG_07FA9"
    %endif
    times 1 - ($ - %%insn_07fa9) db 0
    %%insn_07faa:
    push cs ; 07FAA 0E
    %if ($ - %%insn_07faa) > 1
        %error "LONG_07FAA"
    %endif
    times 1 - ($ - %%insn_07faa) db 0
    %%insn_07fab:
    call 0x7613 ; 07FAB E865F6
    %if ($ - %%insn_07fab) > 3
        %error "LONG_07FAB"
    %endif
    times 3 - ($ - %%insn_07fab) db 0
    %%insn_07fae:
    add sp,0x8 ; 07FAE 83C408
    %if ($ - %%insn_07fae) > 3
        %error "LONG_07FAE"
    %endif
    times 3 - ($ - %%insn_07fae) db 0
    %%insn_07fb1:
    pop di ; 07FB1 5F
    %if ($ - %%insn_07fb1) > 1
        %error "LONG_07FB1"
    %endif
    times 1 - ($ - %%insn_07fb1) db 0
    %%insn_07fb2:
    pop si ; 07FB2 5E
    %if ($ - %%insn_07fb2) > 1
        %error "LONG_07FB2"
    %endif
    times 1 - ($ - %%insn_07fb2) db 0
    %%insn_07fb3:
    pop ds ; 07FB3 1F
    %if ($ - %%insn_07fb3) > 1
        %error "LONG_07FB3"
    %endif
    times 1 - ($ - %%insn_07fb3) db 0
    %%insn_07fb4:
    pop bp ; 07FB4 5D
    %if ($ - %%insn_07fb4) > 1
        %error "LONG_07FB4"
    %endif
    times 1 - ($ - %%insn_07fb4) db 0
    %%insn_07fb5:
    retf ; 07FB5 CB
    %if ($ - %%insn_07fb5) > 1
        %error "LONG_07FB5"
    %endif
    times 1 - ($ - %%insn_07fb5) db 0
    %if ($ - %%fragment_start) != 59
        %error "SIZE_07F7B"
    %endif
%endmacro
