; Linear entry 04710 (1000:4710)
; Ghidra working symbol: FUN_1000_4710
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_04710_part_00 0
    %%fragment_start:
func_04710:
    %%insn_04710:
    mov bx,0xe02b ; 04710 BB2BE0
    %if ($ - %%insn_04710) > 3
        %error "LONG_04710"
    %endif
    times 3 - ($ - %%insn_04710) db 0
    db 0x03, 0xD8 ; 04713 03D8 | add bx,ax | encoding preserved
    db 0x03, 0xD8 ; 04715 03D8 | add bx,ax | encoding preserved
    %%insn_04717:
    mov ax,[ss:bx] ; 04717 368B07
    %if ($ - %%insn_04717) > 3
        %error "LONG_04717"
    %endif
    times 3 - ($ - %%insn_04717) db 0
    %%insn_0471a:
    mov [bp-0x2648],ax ; 0471A 8986B8D9
    %if ($ - %%insn_0471a) > 4
        %error "LONG_0471A"
    %endif
    times 4 - ($ - %%insn_0471a) db 0
    %%insn_0471e:
    add bx,0x16 ; 0471E 83C316
    %if ($ - %%insn_0471e) > 3
        %error "LONG_0471E"
    %endif
    times 3 - ($ - %%insn_0471e) db 0
    %%insn_04721:
    mov ax,[ss:bx] ; 04721 368B07
    %if ($ - %%insn_04721) > 3
        %error "LONG_04721"
    %endif
    times 3 - ($ - %%insn_04721) db 0
    %%insn_04724:
    mov [bp-0x2646],ax ; 04724 8986BAD9
    %if ($ - %%insn_04724) > 4
        %error "LONG_04724"
    %endif
    times 4 - ($ - %%insn_04724) db 0
    %%insn_04728:
    ret ; 04728 C3
    %if ($ - %%insn_04728) > 1
        %error "LONG_04728"
    %endif
    times 1 - ($ - %%insn_04728) db 0
    %if ($ - %%fragment_start) != 25
        %error "SIZE_04710"
    %endif
%endmacro
