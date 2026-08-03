; Linear entry 06E72 (1000:6e72)
; Ghidra working symbol: FUN_1000_6e72
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_06e72_part_00 0
    %%fragment_start:
func_06e72:
    %%insn_06e72:
    cmp word [bp-0x298e],0xc8 ; 06E72 81BE72D6C800
    %if ($ - %%insn_06e72) > 6
        %error "LONG_06E72"
    %endif
    times 6 - ($ - %%insn_06e72) db 0
    %%insn_06e78:
    jnc short 0x6e81 ; 06E78 7307
    %if ($ - %%insn_06e78) > 2
        %error "LONG_06E78"
    %endif
    times 2 - ($ - %%insn_06e78) db 0
    %%insn_06e7a:
    mov word [bp-0x2992],0x0 ; 06E7A C7866ED60000
    %if ($ - %%insn_06e7a) > 6
        %error "LONG_06E7A"
    %endif
    times 6 - ($ - %%insn_06e7a) db 0
    %%insn_06e80:
    ret ; 06E80 C3
    %if ($ - %%insn_06e80) > 1
        %error "LONG_06E80"
    %endif
    times 1 - ($ - %%insn_06e80) db 0
    %%insn_06e81:
    mov ah,0x5 ; 06E81 B405
    %if ($ - %%insn_06e81) > 2
        %error "LONG_06E81"
    %endif
    times 2 - ($ - %%insn_06e81) db 0
    %%insn_06e83:
    call word far [cs:0x3688] ; 06E83 2EFF1E8836
    %if ($ - %%insn_06e83) > 5
        %error "LONG_06E83"
    %endif
    times 5 - ($ - %%insn_06e83) db 0
    %%insn_06e88:
    mov ah,0x9 ; 06E88 B409
    %if ($ - %%insn_06e88) > 2
        %error "LONG_06E88"
    %endif
    times 2 - ($ - %%insn_06e88) db 0
    %%insn_06e8a:
    mov dx,[bp-0x298e] ; 06E8A 8B9672D6
    %if ($ - %%insn_06e8a) > 4
        %error "LONG_06E8A"
    %endif
    times 4 - ($ - %%insn_06e8a) db 0
    %%insn_06e8e:
    call word far [cs:0x3688] ; 06E8E 2EFF1E8836
    %if ($ - %%insn_06e8e) > 5
        %error "LONG_06E8E"
    %endif
    times 5 - ($ - %%insn_06e8e) db 0
    db 0x0B, 0xC0 ; 06E93 0BC0 | or ax,ax | encoding preserved
    %%insn_06e95:
    jz short 0x6eb0 ; 06E95 7419
    %if ($ - %%insn_06e95) > 2
        %error "LONG_06E95"
    %endif
    times 2 - ($ - %%insn_06e95) db 0
    %%insn_06e97:
    mov [bp-0xcf2],dx ; 06E97 89960EF3
    %if ($ - %%insn_06e97) > 4
        %error "LONG_06E97"
    %endif
    times 4 - ($ - %%insn_06e97) db 0
    %%insn_06e9b:
    mov word [bp-0xcf0],0x0 ; 06E9B C78610F30000
    %if ($ - %%insn_06e9b) > 6
        %error "LONG_06E9B"
    %endif
    times 6 - ($ - %%insn_06e9b) db 0
    %%insn_06ea1:
    mov bx,[bp-0x298e] ; 06EA1 8B9E72D6
    %if ($ - %%insn_06ea1) > 4
        %error "LONG_06EA1"
    %endif
    times 4 - ($ - %%insn_06ea1) db 0
    %%insn_06ea5:
    mov [bp-0xcee],bx ; 06EA5 899E12F3
    %if ($ - %%insn_06ea5) > 4
        %error "LONG_06EA5"
    %endif
    times 4 - ($ - %%insn_06ea5) db 0
    %%insn_06ea9:
    mov word [bp-0xcec],0x0 ; 06EA9 C78614F30000
    %if ($ - %%insn_06ea9) > 6
        %error "LONG_06EA9"
    %endif
    times 6 - ($ - %%insn_06ea9) db 0
    %%insn_06eaf:
    ret ; 06EAF C3
    %if ($ - %%insn_06eaf) > 1
        %error "LONG_06EAF"
    %endif
    times 1 - ($ - %%insn_06eaf) db 0
    %%insn_06eb0:
    mov ax,0xb90 ; 06EB0 B8900B
    %if ($ - %%insn_06eb0) > 3
        %error "LONG_06EB0"
    %endif
    times 3 - ($ - %%insn_06eb0) db 0
    %%insn_06eb3:
    jmp 0x5ced ; 06EB3 E937EE
    %if ($ - %%insn_06eb3) > 3
        %error "LONG_06EB3"
    %endif
    times 3 - ($ - %%insn_06eb3) db 0
    %if ($ - %%fragment_start) != 68
        %error "SIZE_06E72"
    %endif
%endmacro
