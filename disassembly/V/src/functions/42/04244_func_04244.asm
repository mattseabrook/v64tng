; Linear entry 04244 (1000:4244)
; Ghidra working symbol: FUN_1000_4244
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_04244_part_00 0
    %%fragment_start:
func_04244:
    %%insn_04244:
    call 0x400a ; 04244 E8C3FD
    %if ($ - %%insn_04244) > 3
        %error "LONG_04244"
    %endif
    times 3 - ($ - %%insn_04244) db 0
    %%insn_04247:
    mov bx,0xdba2 ; 04247 BBA2DB
    %if ($ - %%insn_04247) > 3
        %error "LONG_04247"
    %endif
    times 3 - ($ - %%insn_04247) db 0
    db 0x03, 0xD8 ; 0424A 03D8 | add bx,ax | encoding preserved
    db 0x33, 0xD2 ; 0424C 33D2 | xor dx,dx | encoding preserved
    %%insn_0424e:
    call 0x4016 ; 0424E E8C5FD
    %if ($ - %%insn_0424e) > 3
        %error "LONG_0424E"
    %endif
    times 3 - ($ - %%insn_0424e) db 0
    %%insn_04251:
    cmp al,[ss:bx] ; 04251 363A07
    %if ($ - %%insn_04251) > 3
        %error "LONG_04251"
    %endif
    times 3 - ($ - %%insn_04251) db 0
    %%insn_04254:
    jna short 0x4258 ; 04254 7602
    %if ($ - %%insn_04254) > 2
        %error "LONG_04254"
    %endif
    times 2 - ($ - %%insn_04254) db 0
    %%insn_04256:
    inc dl ; 04256 FEC2
    %if ($ - %%insn_04256) > 2
        %error "LONG_04256"
    %endif
    times 2 - ($ - %%insn_04256) db 0
    %%insn_04258:
    inc bx ; 04258 43
    %if ($ - %%insn_04258) > 1
        %error "LONG_04258"
    %endif
    times 1 - ($ - %%insn_04258) db 0
    %%insn_04259:
    cmp dh,0x80 ; 04259 80FE80
    %if ($ - %%insn_04259) > 3
        %error "LONG_04259"
    %endif
    times 3 - ($ - %%insn_04259) db 0
    %%insn_0425c:
    jc short 0x424e ; 0425C 72F0
    %if ($ - %%insn_0425c) > 2
        %error "LONG_0425C"
    %endif
    times 2 - ($ - %%insn_0425c) db 0
    db 0x22, 0xD2 ; 0425E 22D2 | and dl,dl | encoding preserved
    %%insn_04260:
    jnz short 0x4267 ; 04260 7505
    %if ($ - %%insn_04260) > 2
        %error "LONG_04260"
    %endif
    times 2 - ($ - %%insn_04260) db 0
    %%insn_04262:
    add si,0x2 ; 04262 83C602
    %if ($ - %%insn_04262) > 3
        %error "LONG_04262"
    %endif
    times 3 - ($ - %%insn_04262) db 0
    %%insn_04265:
    jmp short 0x4269 ; 04265 EB02
    %if ($ - %%insn_04265) > 2
        %error "LONG_04265"
    %endif
    times 2 - ($ - %%insn_04265) db 0
    %%insn_04267:
    mov si,[si] ; 04267 8B34
    %if ($ - %%insn_04267) > 2
        %error "LONG_04267"
    %endif
    times 2 - ($ - %%insn_04267) db 0
    %%insn_04269:
    ret ; 04269 C3
    %if ($ - %%insn_04269) > 1
        %error "LONG_04269"
    %endif
    times 1 - ($ - %%insn_04269) db 0
    %if ($ - %%fragment_start) != 38
        %error "SIZE_04244"
    %endif
%endmacro
