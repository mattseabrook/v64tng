; PE virtual entry 0040D170
; Ghidra working symbol: FUN_0040d170
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040d170_part_00 0
    %%fragment_start:
func_0040d170:
    %%insn_0040d170:
    push esi ; 0040D170 56
    %if ($ - %%insn_0040d170) > 1
        %error "LONG_0040D170"
    %endif
    times 1 - ($ - %%insn_0040d170) db 0
    %%insn_0040d171:
    mov esi,[esp+0x14] ; 0040D171 8B742414
    %if ($ - %%insn_0040d171) > 4
        %error "LONG_0040D171"
    %endif
    times 4 - ($ - %%insn_0040d171) db 0
    %%insn_0040d175:
    push edi ; 0040D175 57
    %if ($ - %%insn_0040d175) > 1
        %error "LONG_0040D175"
    %endif
    times 1 - ($ - %%insn_0040d175) db 0
    %%insn_0040d176:
    push esi ; 0040D176 56
    %if ($ - %%insn_0040d176) > 1
        %error "LONG_0040D176"
    %endif
    times 1 - ($ - %%insn_0040d176) db 0
    %%insn_0040d177:
    call 0x40dfa0 ; 0040D177 E8240E0000
    %if ($ - %%insn_0040d177) > 5
        %error "LONG_0040D177"
    %endif
    times 5 - ($ - %%insn_0040d177) db 0
    %%insn_0040d17c:
    mov eax,[esp+0x18] ; 0040D17C 8B442418
    %if ($ - %%insn_0040d17c) > 4
        %error "LONG_0040D17C"
    %endif
    times 4 - ($ - %%insn_0040d17c) db 0
    %%insn_0040d180:
    mov ecx,[esp+0x14] ; 0040D180 8B4C2414
    %if ($ - %%insn_0040d180) > 4
        %error "LONG_0040D180"
    %endif
    times 4 - ($ - %%insn_0040d180) db 0
    %%insn_0040d184:
    mov edx,[esp+0x10] ; 0040D184 8B542410
    %if ($ - %%insn_0040d184) > 4
        %error "LONG_0040D184"
    %endif
    times 4 - ($ - %%insn_0040d184) db 0
    %%insn_0040d188:
    add esp,0x4 ; 0040D188 83C404
    %if ($ - %%insn_0040d188) > 3
        %error "LONG_0040D188"
    %endif
    times 3 - ($ - %%insn_0040d188) db 0
    %%insn_0040d18b:
    push esi ; 0040D18B 56
    %if ($ - %%insn_0040d18b) > 1
        %error "LONG_0040D18B"
    %endif
    times 1 - ($ - %%insn_0040d18b) db 0
    %%insn_0040d18c:
    push eax ; 0040D18C 50
    %if ($ - %%insn_0040d18c) > 1
        %error "LONG_0040D18C"
    %endif
    times 1 - ($ - %%insn_0040d18c) db 0
    %%insn_0040d18d:
    push ecx ; 0040D18D 51
    %if ($ - %%insn_0040d18d) > 1
        %error "LONG_0040D18D"
    %endif
    times 1 - ($ - %%insn_0040d18d) db 0
    %%insn_0040d18e:
    push edx ; 0040D18E 52
    %if ($ - %%insn_0040d18e) > 1
        %error "LONG_0040D18E"
    %endif
    times 1 - ($ - %%insn_0040d18e) db 0
    %%insn_0040d18f:
    call 0x40d1b0 ; 0040D18F E81C000000
    %if ($ - %%insn_0040d18f) > 5
        %error "LONG_0040D18F"
    %endif
    times 5 - ($ - %%insn_0040d18f) db 0
    %%insn_0040d194:
    add esp,0x10 ; 0040D194 83C410
    %if ($ - %%insn_0040d194) > 3
        %error "LONG_0040D194"
    %endif
    times 3 - ($ - %%insn_0040d194) db 0
    db 0x8B, 0xF8 ; 0040D197 8BF8 | mov edi,eax | encoding preserved
    %%insn_0040d199:
    push esi ; 0040D199 56
    %if ($ - %%insn_0040d199) > 1
        %error "LONG_0040D199"
    %endif
    times 1 - ($ - %%insn_0040d199) db 0
    %%insn_0040d19a:
    call 0x40e010 ; 0040D19A E8710E0000
    %if ($ - %%insn_0040d19a) > 5
        %error "LONG_0040D19A"
    %endif
    times 5 - ($ - %%insn_0040d19a) db 0
    %%insn_0040d19f:
    add esp,0x4 ; 0040D19F 83C404
    %if ($ - %%insn_0040d19f) > 3
        %error "LONG_0040D19F"
    %endif
    times 3 - ($ - %%insn_0040d19f) db 0
    db 0x8B, 0xC7 ; 0040D1A2 8BC7 | mov eax,edi | encoding preserved
    %%insn_0040d1a4:
    pop edi ; 0040D1A4 5F
    %if ($ - %%insn_0040d1a4) > 1
        %error "LONG_0040D1A4"
    %endif
    times 1 - ($ - %%insn_0040d1a4) db 0
    %%insn_0040d1a5:
    pop esi ; 0040D1A5 5E
    %if ($ - %%insn_0040d1a5) > 1
        %error "LONG_0040D1A5"
    %endif
    times 1 - ($ - %%insn_0040d1a5) db 0
    %%insn_0040d1a6:
    ret ; 0040D1A6 C3
    %if ($ - %%insn_0040d1a6) > 1
        %error "LONG_0040D1A6"
    %endif
    times 1 - ($ - %%insn_0040d1a6) db 0
    %if ($ - %%fragment_start) != 55
        %error "function fragment size drift: 0040D170"
    %endif
%endmacro
