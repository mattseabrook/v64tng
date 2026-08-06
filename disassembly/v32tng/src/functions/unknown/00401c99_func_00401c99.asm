; PE virtual entry 00401C99
; Ghidra working symbol: FUN_00401c99
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00401c99_part_00 0
    %%fragment_start:
func_00401c99:
    %%insn_00401c99:
    push ebp ; 00401C99 55
    %if ($ - %%insn_00401c99) > 1
        %error "LONG_00401C99"
    %endif
    times 1 - ($ - %%insn_00401c99) db 0
    db 0x8B, 0xEC ; 00401C9A 8BEC | mov ebp,esp | encoding preserved
    %%insn_00401c9c:
    push dword 0x10000 ; 00401C9C 6800000100
    %if ($ - %%insn_00401c9c) > 5
        %error "LONG_00401C9C"
    %endif
    times 5 - ($ - %%insn_00401c9c) db 0
    %%insn_00401ca1:
    push dword 0x0 ; 00401CA1 6A00
    %if ($ - %%insn_00401ca1) > 2
        %error "LONG_00401CA1"
    %endif
    times 2 - ($ - %%insn_00401ca1) db 0
    %%insn_00401ca3:
    push dword 0x41b120 ; 00401CA3 6820B14100
    %if ($ - %%insn_00401ca3) > 5
        %error "LONG_00401CA3"
    %endif
    times 5 - ($ - %%insn_00401ca3) db 0
    %%insn_00401ca8:
    call dword near [0x424598] ; 00401CA8 FF1598454200
    %if ($ - %%insn_00401ca8) > 6
        %error "LONG_00401CA8"
    %endif
    times 6 - ($ - %%insn_00401ca8) db 0
    %%insn_00401cae:
    mov [0x41f31c],eax ; 00401CAE A31CF34100
    %if ($ - %%insn_00401cae) > 5
        %error "LONG_00401CAE"
    %endif
    times 5 - ($ - %%insn_00401cae) db 0
    %%insn_00401cb3:
    cmp dword [0x41f31c],0x0 ; 00401CB3 833D1CF3410000
    %if ($ - %%insn_00401cb3) > 7
        %error "LONG_00401CB3"
    %endif
    times 7 - ($ - %%insn_00401cb3) db 0
    %%insn_00401cba:
    jz short 0x401cd8 ; 00401CBA 741C
    %if ($ - %%insn_00401cba) > 2
        %error "LONG_00401CBA"
    %endif
    times 2 - ($ - %%insn_00401cba) db 0
    %%insn_00401cbc:
    push dword 0x0 ; 00401CBC 6A00
    %if ($ - %%insn_00401cbc) > 2
        %error "LONG_00401CBC"
    %endif
    times 2 - ($ - %%insn_00401cbc) db 0
    %%insn_00401cbe:
    push dword 0x0 ; 00401CBE 6A00
    %if ($ - %%insn_00401cbe) > 2
        %error "LONG_00401CBE"
    %endif
    times 2 - ($ - %%insn_00401cbe) db 0
    %%insn_00401cc0:
    push dword 0x0 ; 00401CC0 6A00
    %if ($ - %%insn_00401cc0) > 2
        %error "LONG_00401CC0"
    %endif
    times 2 - ($ - %%insn_00401cc0) db 0
    %%insn_00401cc2:
    push dword 0x0 ; 00401CC2 6A00
    %if ($ - %%insn_00401cc2) > 2
        %error "LONG_00401CC2"
    %endif
    times 2 - ($ - %%insn_00401cc2) db 0
    %%insn_00401cc4:
    mov eax,[0x41f31c] ; 00401CC4 A11CF34100
    %if ($ - %%insn_00401cc4) > 5
        %error "LONG_00401CC4"
    %endif
    times 5 - ($ - %%insn_00401cc4) db 0
    %%insn_00401cc9:
    push eax ; 00401CC9 50
    %if ($ - %%insn_00401cc9) > 1
        %error "LONG_00401CC9"
    %endif
    times 1 - ($ - %%insn_00401cc9) db 0
    %%insn_00401cca:
    call 0x408d24 ; 00401CCA E855700000
    %if ($ - %%insn_00401cca) > 5
        %error "LONG_00401CCA"
    %endif
    times 5 - ($ - %%insn_00401cca) db 0
    %%insn_00401ccf:
    add esp,0x14 ; 00401CCF 83C414
    %if ($ - %%insn_00401ccf) > 3
        %error "LONG_00401CCF"
    %endif
    times 3 - ($ - %%insn_00401ccf) db 0
    %%insn_00401cd2:
    mov ax,0x1 ; 00401CD2 66B80100
    %if ($ - %%insn_00401cd2) > 4
        %error "LONG_00401CD2"
    %endif
    times 4 - ($ - %%insn_00401cd2) db 0
    %%insn_00401cd6:
    jmp short 0x401cdb ; 00401CD6 EB03
    %if ($ - %%insn_00401cd6) > 2
        %error "LONG_00401CD6"
    %endif
    times 2 - ($ - %%insn_00401cd6) db 0
    db 0x66, 0x33, 0xC0 ; 00401CD8 6633C0 | xor ax,ax | encoding preserved
    %%insn_00401cdb:
    pop ebp ; 00401CDB 5D
    %if ($ - %%insn_00401cdb) > 1
        %error "LONG_00401CDB"
    %endif
    times 1 - ($ - %%insn_00401cdb) db 0
    %%insn_00401cdc:
    ret ; 00401CDC C3
    %if ($ - %%insn_00401cdc) > 1
        %error "LONG_00401CDC"
    %endif
    times 1 - ($ - %%insn_00401cdc) db 0
    %if ($ - %%fragment_start) != 68
        %error "function fragment size drift: 00401C99"
    %endif
%endmacro
