; Linear entry 05018 (1000:5018)
; Ghidra working symbol: FUN_1000_5018
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_05018_part_00 0
    %%fragment_start:
func_05018:
    %%insn_05018:
    mov si,0x0 ; 05018 BE0000
    %if ($ - %%insn_05018) > 3
        %error "LONG_05018"
    %endif
    times 3 - ($ - %%insn_05018) db 0
    db 0x33, 0xD2 ; 0501B 33D2 | xor dx,dx | encoding preserved
    %%insn_0501d:
    mov ax,[bp-0x2605] ; 0501D 8B86FBD9
    %if ($ - %%insn_0501d) > 4
        %error "LONG_0501D"
    %endif
    times 4 - ($ - %%insn_0501d) db 0
    %%insn_05021:
    mov ds,ax ; 05021 8ED8
    %if ($ - %%insn_05021) > 2
        %error "LONG_05021"
    %endif
    times 2 - ($ - %%insn_05021) db 0
    %%insn_05023:
    call 0x4fc7 ; 05023 E8A1FF
    %if ($ - %%insn_05023) > 3
        %error "LONG_05023"
    %endif
    times 3 - ($ - %%insn_05023) db 0
    %%insn_05026:
    cmp byte [si],0x5b ; 05026 803C5B
    %if ($ - %%insn_05026) > 3
        %error "LONG_05026"
    %endif
    times 3 - ($ - %%insn_05026) db 0
    %%insn_05029:
    jnz short 0x5047 ; 05029 751C
    %if ($ - %%insn_05029) > 2
        %error "LONG_05029"
    %endif
    times 2 - ($ - %%insn_05029) db 0
    %%insn_0502b:
    inc si ; 0502B 46
    %if ($ - %%insn_0502b) > 1
        %error "LONG_0502B"
    %endif
    times 1 - ($ - %%insn_0502b) db 0
    %%insn_0502c:
    push bx ; 0502C 53
    %if ($ - %%insn_0502c) > 1
        %error "LONG_0502C"
    %endif
    times 1 - ($ - %%insn_0502c) db 0
    %%insn_0502d:
    lodsb ; 0502D AC
    %if ($ - %%insn_0502d) > 1
        %error "LONG_0502D"
    %endif
    times 1 - ($ - %%insn_0502d) db 0
    %%insn_0502e:
    cmp al,0x5d ; 0502E 3C5D
    %if ($ - %%insn_0502e) > 2
        %error "LONG_0502E"
    %endif
    times 2 - ($ - %%insn_0502e) db 0
    %%insn_05030:
    jz short 0x503d ; 05030 740B
    %if ($ - %%insn_05030) > 2
        %error "LONG_05030"
    %endif
    times 2 - ($ - %%insn_05030) db 0
    %%insn_05032:
    call 0x4feb ; 05032 E8B6FF
    %if ($ - %%insn_05032) > 3
        %error "LONG_05032"
    %endif
    times 3 - ($ - %%insn_05032) db 0
    %%insn_05035:
    cmp al,[es:bx] ; 05035 263A07
    %if ($ - %%insn_05035) > 3
        %error "LONG_05035"
    %endif
    times 3 - ($ - %%insn_05035) db 0
    %%insn_05038:
    jnz short 0x5044 ; 05038 750A
    %if ($ - %%insn_05038) > 2
        %error "LONG_05038"
    %endif
    times 2 - ($ - %%insn_05038) db 0
    %%insn_0503a:
    inc bx ; 0503A 43
    %if ($ - %%insn_0503a) > 1
        %error "LONG_0503A"
    %endif
    times 1 - ($ - %%insn_0503a) db 0
    %%insn_0503b:
    jmp short 0x502d ; 0503B EBF0
    %if ($ - %%insn_0503b) > 2
        %error "LONG_0503B"
    %endif
    times 2 - ($ - %%insn_0503b) db 0
    %%insn_0503d:
    cmp byte [es:bx],0x0 ; 0503D 26803F00
    %if ($ - %%insn_0503d) > 4
        %error "LONG_0503D"
    %endif
    times 4 - ($ - %%insn_0503d) db 0
    %%insn_05041:
    jnz short 0x5044 ; 05041 7501
    %if ($ - %%insn_05041) > 2
        %error "LONG_05041"
    %endif
    times 2 - ($ - %%insn_05041) db 0
    %%insn_05043:
    inc dx ; 05043 42
    %if ($ - %%insn_05043) > 1
        %error "LONG_05043"
    %endif
    times 1 - ($ - %%insn_05043) db 0
    %%insn_05044:
    pop bx ; 05044 5B
    %if ($ - %%insn_05044) > 1
        %error "LONG_05044"
    %endif
    times 1 - ($ - %%insn_05044) db 0
    %%insn_05045:
    jmp short 0x5052 ; 05045 EB0B
    %if ($ - %%insn_05045) > 2
        %error "LONG_05045"
    %endif
    times 2 - ($ - %%insn_05045) db 0
    %%insn_05047:
    cmp byte [si],0x1a ; 05047 803C1A
    %if ($ - %%insn_05047) > 3
        %error "LONG_05047"
    %endif
    times 3 - ($ - %%insn_05047) db 0
    %%insn_0504a:
    jnz short 0x5052 ; 0504A 7506
    %if ($ - %%insn_0504a) > 2
        %error "LONG_0504A"
    %endif
    times 2 - ($ - %%insn_0504a) db 0
    %%insn_0504c:
    mov ax,0x8a3 ; 0504C B8A308
    %if ($ - %%insn_0504c) > 3
        %error "LONG_0504C"
    %endif
    times 3 - ($ - %%insn_0504c) db 0
    %%insn_0504f:
    jmp 0x5ced ; 0504F E99B0C
    %if ($ - %%insn_0504f) > 3
        %error "LONG_0504F"
    %endif
    times 3 - ($ - %%insn_0504f) db 0
    db 0x23, 0xD2 ; 05052 23D2 | and dx,dx | encoding preserved
    %%insn_05054:
    jz short 0x5023 ; 05054 74CD
    %if ($ - %%insn_05054) > 2
        %error "LONG_05054"
    %endif
    times 2 - ($ - %%insn_05054) db 0
    %%insn_05056:
    ret ; 05056 C3
    %if ($ - %%insn_05056) > 1
        %error "LONG_05056"
    %endif
    times 1 - ($ - %%insn_05056) db 0
    %if ($ - %%fragment_start) != 63
        %error "SIZE_05018"
    %endif
%endmacro
