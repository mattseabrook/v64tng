; PE virtual entry 0040F7E0
; Ghidra working symbol: FUN_0040f7e0
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040f7e0_part_00 0
    %%fragment_start:
func_0040f7e0:
    %%insn_0040f7e0:
    push esi ; 0040F7E0 56
    %if ($ - %%insn_0040f7e0) > 1
        %error "LONG_0040F7E0"
    %endif
    times 1 - ($ - %%insn_0040f7e0) db 0
    %%insn_0040f7e1:
    mov esi,[esp+0x8] ; 0040F7E1 8B742408
    %if ($ - %%insn_0040f7e1) > 4
        %error "LONG_0040F7E1"
    %endif
    times 4 - ($ - %%insn_0040f7e1) db 0
    %%insn_0040f7e5:
    mov eax,[esi+0xc] ; 0040F7E5 8B460C
    %if ($ - %%insn_0040f7e5) > 3
        %error "LONG_0040F7E5"
    %endif
    times 3 - ($ - %%insn_0040f7e5) db 0
    %%insn_0040f7e8:
    test al,0x83 ; 0040F7E8 A883
    %if ($ - %%insn_0040f7e8) > 2
        %error "LONG_0040F7E8"
    %endif
    times 2 - ($ - %%insn_0040f7e8) db 0
    %%insn_0040f7ea:
    jz short 0x40f811 ; 0040F7EA 7425
    %if ($ - %%insn_0040f7ea) > 2
        %error "LONG_0040F7EA"
    %endif
    times 2 - ($ - %%insn_0040f7ea) db 0
    %%insn_0040f7ec:
    test al,0x8 ; 0040F7EC A808
    %if ($ - %%insn_0040f7ec) > 2
        %error "LONG_0040F7EC"
    %endif
    times 2 - ($ - %%insn_0040f7ec) db 0
    %%insn_0040f7ee:
    jz short 0x40f811 ; 0040F7EE 7421
    %if ($ - %%insn_0040f7ee) > 2
        %error "LONG_0040F7EE"
    %endif
    times 2 - ($ - %%insn_0040f7ee) db 0
    %%insn_0040f7f0:
    mov eax,[esi+0x8] ; 0040F7F0 8B4608
    %if ($ - %%insn_0040f7f0) > 3
        %error "LONG_0040F7F0"
    %endif
    times 3 - ($ - %%insn_0040f7f0) db 0
    %%insn_0040f7f3:
    push eax ; 0040F7F3 50
    %if ($ - %%insn_0040f7f3) > 1
        %error "LONG_0040F7F3"
    %endif
    times 1 - ($ - %%insn_0040f7f3) db 0
    %%insn_0040f7f4:
    call 0x40c9a0 ; 0040F7F4 E8A7D1FFFF
    %if ($ - %%insn_0040f7f4) > 5
        %error "LONG_0040F7F4"
    %endif
    times 5 - ($ - %%insn_0040f7f4) db 0
    %%insn_0040f7f9:
    mov eax,[esi+0xc] ; 0040F7F9 8B460C
    %if ($ - %%insn_0040f7f9) > 3
        %error "LONG_0040F7F9"
    %endif
    times 3 - ($ - %%insn_0040f7f9) db 0
    %%insn_0040f7fc:
    add esp,0x4 ; 0040F7FC 83C404
    %if ($ - %%insn_0040f7fc) > 3
        %error "LONG_0040F7FC"
    %endif
    times 3 - ($ - %%insn_0040f7fc) db 0
    %%insn_0040f7ff:
    and eax,0xfffffbf7 ; 0040F7FF 25F7FBFFFF
    %if ($ - %%insn_0040f7ff) > 5
        %error "LONG_0040F7FF"
    %endif
    times 5 - ($ - %%insn_0040f7ff) db 0
    %%insn_0040f804:
    mov [esi+0xc],eax ; 0040F804 89460C
    %if ($ - %%insn_0040f804) > 3
        %error "LONG_0040F804"
    %endif
    times 3 - ($ - %%insn_0040f804) db 0
    db 0x33, 0xC0 ; 0040F807 33C0 | xor eax,eax | encoding preserved
    %%insn_0040f809:
    mov [esi],eax ; 0040F809 8906
    %if ($ - %%insn_0040f809) > 2
        %error "LONG_0040F809"
    %endif
    times 2 - ($ - %%insn_0040f809) db 0
    %%insn_0040f80b:
    mov [esi+0x8],eax ; 0040F80B 894608
    %if ($ - %%insn_0040f80b) > 3
        %error "LONG_0040F80B"
    %endif
    times 3 - ($ - %%insn_0040f80b) db 0
    %%insn_0040f80e:
    mov [esi+0x4],eax ; 0040F80E 894604
    %if ($ - %%insn_0040f80e) > 3
        %error "LONG_0040F80E"
    %endif
    times 3 - ($ - %%insn_0040f80e) db 0
    %%insn_0040f811:
    pop esi ; 0040F811 5E
    %if ($ - %%insn_0040f811) > 1
        %error "LONG_0040F811"
    %endif
    times 1 - ($ - %%insn_0040f811) db 0
    %%insn_0040f812:
    ret ; 0040F812 C3
    %if ($ - %%insn_0040f812) > 1
        %error "LONG_0040F812"
    %endif
    times 1 - ($ - %%insn_0040f812) db 0
    %if ($ - %%fragment_start) != 51
        %error "function fragment size drift: 0040F7E0"
    %endif
%endmacro
