; Linear entry 0421E (1000:421e)
; Ghidra working symbol: FUN_1000_421e
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_0421e_part_00 0
    %%fragment_start:
func_0421e:
    %%insn_0421e:
    call 0x400a ; 0421E E8E9FD
    %if ($ - %%insn_0421e) > 3
        %error "LONG_0421E"
    %endif
    times 3 - ($ - %%insn_0421e) db 0
    %%insn_04221:
    mov bx,0xdba2 ; 04221 BBA2DB
    %if ($ - %%insn_04221) > 3
        %error "LONG_04221"
    %endif
    times 3 - ($ - %%insn_04221) db 0
    db 0x03, 0xD8 ; 04224 03D8 | add bx,ax | encoding preserved
    db 0x33, 0xD2 ; 04226 33D2 | xor dx,dx | encoding preserved
    %%insn_04228:
    call 0x4016 ; 04228 E8EBFD
    %if ($ - %%insn_04228) > 3
        %error "LONG_04228"
    %endif
    times 3 - ($ - %%insn_04228) db 0
    %%insn_0422b:
    cmp al,[ss:bx] ; 0422B 363A07
    %if ($ - %%insn_0422b) > 3
        %error "LONG_0422B"
    %endif
    times 3 - ($ - %%insn_0422b) db 0
    %%insn_0422e:
    jnc short 0x4232 ; 0422E 7302
    %if ($ - %%insn_0422e) > 2
        %error "LONG_0422E"
    %endif
    times 2 - ($ - %%insn_0422e) db 0
    %%insn_04230:
    inc dl ; 04230 FEC2
    %if ($ - %%insn_04230) > 2
        %error "LONG_04230"
    %endif
    times 2 - ($ - %%insn_04230) db 0
    %%insn_04232:
    inc bx ; 04232 43
    %if ($ - %%insn_04232) > 1
        %error "LONG_04232"
    %endif
    times 1 - ($ - %%insn_04232) db 0
    %%insn_04233:
    cmp dh,0x80 ; 04233 80FE80
    %if ($ - %%insn_04233) > 3
        %error "LONG_04233"
    %endif
    times 3 - ($ - %%insn_04233) db 0
    %%insn_04236:
    jc short 0x4228 ; 04236 72F0
    %if ($ - %%insn_04236) > 2
        %error "LONG_04236"
    %endif
    times 2 - ($ - %%insn_04236) db 0
    db 0x22, 0xD2 ; 04238 22D2 | and dl,dl | encoding preserved
    %%insn_0423a:
    jnz short 0x4241 ; 0423A 7505
    %if ($ - %%insn_0423a) > 2
        %error "LONG_0423A"
    %endif
    times 2 - ($ - %%insn_0423a) db 0
    %%insn_0423c:
    add si,0x2 ; 0423C 83C602
    %if ($ - %%insn_0423c) > 3
        %error "LONG_0423C"
    %endif
    times 3 - ($ - %%insn_0423c) db 0
    %%insn_0423f:
    jmp short 0x4243 ; 0423F EB02
    %if ($ - %%insn_0423f) > 2
        %error "LONG_0423F"
    %endif
    times 2 - ($ - %%insn_0423f) db 0
    %%insn_04241:
    mov si,[si] ; 04241 8B34
    %if ($ - %%insn_04241) > 2
        %error "LONG_04241"
    %endif
    times 2 - ($ - %%insn_04241) db 0
    %%insn_04243:
    ret ; 04243 C3
    %if ($ - %%insn_04243) > 1
        %error "LONG_04243"
    %endif
    times 1 - ($ - %%insn_04243) db 0
    %if ($ - %%fragment_start) != 38
        %error "SIZE_0421E"
    %endif
%endmacro
