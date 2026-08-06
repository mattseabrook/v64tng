; Linear entry 042CB (1000:42cb)
; Ghidra working symbol: FUN_1000_42cb
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_042cb_part_00 0
    %%fragment_start:
func_042cb:
    %%insn_042cb:
    call 0x400a ; 042CB E83CFD
    %if ($ - %%insn_042cb) > 3
        %error "LONG_042CB"
    %endif
    times 3 - ($ - %%insn_042cb) db 0
    %%insn_042ce:
    mov bx,0xdba2 ; 042CE BBA2DB
    %if ($ - %%insn_042ce) > 3
        %error "LONG_042CE"
    %endif
    times 3 - ($ - %%insn_042ce) db 0
    db 0x03, 0xD8 ; 042D1 03D8 | add bx,ax | encoding preserved
    %%insn_042d3:
    mov dl,0x1 ; 042D3 B201
    %if ($ - %%insn_042d3) > 2
        %error "LONG_042D3"
    %endif
    times 2 - ($ - %%insn_042d3) db 0
    %%insn_042d5:
    call 0x4016 ; 042D5 E83EFD
    %if ($ - %%insn_042d5) > 3
        %error "LONG_042D5"
    %endif
    times 3 - ($ - %%insn_042d5) db 0
    %%insn_042d8:
    cmp al,[ss:bx] ; 042D8 363A07
    %if ($ - %%insn_042d8) > 3
        %error "LONG_042D8"
    %endif
    times 3 - ($ - %%insn_042d8) db 0
    %%insn_042db:
    jz short 0x42df ; 042DB 7402
    %if ($ - %%insn_042db) > 2
        %error "LONG_042DB"
    %endif
    times 2 - ($ - %%insn_042db) db 0
    db 0x32, 0xD2 ; 042DD 32D2 | xor dl,dl | encoding preserved
    %%insn_042df:
    inc bx ; 042DF 43
    %if ($ - %%insn_042df) > 1
        %error "LONG_042DF"
    %endif
    times 1 - ($ - %%insn_042df) db 0
    %%insn_042e0:
    cmp dh,0x80 ; 042E0 80FE80
    %if ($ - %%insn_042e0) > 3
        %error "LONG_042E0"
    %endif
    times 3 - ($ - %%insn_042e0) db 0
    %%insn_042e3:
    jc short 0x42d5 ; 042E3 72F0
    %if ($ - %%insn_042e3) > 2
        %error "LONG_042E3"
    %endif
    times 2 - ($ - %%insn_042e3) db 0
    db 0x22, 0xD2 ; 042E5 22D2 | and dl,dl | encoding preserved
    %%insn_042e7:
    jnz short 0x42ee ; 042E7 7505
    %if ($ - %%insn_042e7) > 2
        %error "LONG_042E7"
    %endif
    times 2 - ($ - %%insn_042e7) db 0
    %%insn_042e9:
    add si,0x2 ; 042E9 83C602
    %if ($ - %%insn_042e9) > 3
        %error "LONG_042E9"
    %endif
    times 3 - ($ - %%insn_042e9) db 0
    %%insn_042ec:
    jmp short 0x42f0 ; 042EC EB02
    %if ($ - %%insn_042ec) > 2
        %error "LONG_042EC"
    %endif
    times 2 - ($ - %%insn_042ec) db 0
    %%insn_042ee:
    mov si,[si] ; 042EE 8B34
    %if ($ - %%insn_042ee) > 2
        %error "LONG_042EE"
    %endif
    times 2 - ($ - %%insn_042ee) db 0
    %%insn_042f0:
    ret ; 042F0 C3
    %if ($ - %%insn_042f0) > 1
        %error "LONG_042F0"
    %endif
    times 1 - ($ - %%insn_042f0) db 0
    %if ($ - %%fragment_start) != 38
        %error "SIZE_042CB"
    %endif
%endmacro
