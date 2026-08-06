; PE virtual entry 004143C0
; Ghidra working symbol: _strpbrk
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_004143c0_part_00 0
    %%fragment_start:
func_004143c0:
    %%insn_004143c0:
    push ebp ; 004143C0 55
    %if ($ - %%insn_004143c0) > 1
        %error "LONG_004143C0"
    %endif
    times 1 - ($ - %%insn_004143c0) db 0
    db 0x8B, 0xEC ; 004143C1 8BEC | mov ebp,esp | encoding preserved
    %%insn_004143c3:
    push esi ; 004143C3 56
    %if ($ - %%insn_004143c3) > 1
        %error "LONG_004143C3"
    %endif
    times 1 - ($ - %%insn_004143c3) db 0
    db 0x33, 0xC0 ; 004143C4 33C0 | xor eax,eax | encoding preserved
    %%insn_004143c6:
    push eax ; 004143C6 50
    %if ($ - %%insn_004143c6) > 1
        %error "LONG_004143C6"
    %endif
    times 1 - ($ - %%insn_004143c6) db 0
    %%insn_004143c7:
    push eax ; 004143C7 50
    %if ($ - %%insn_004143c7) > 1
        %error "LONG_004143C7"
    %endif
    times 1 - ($ - %%insn_004143c7) db 0
    %%insn_004143c8:
    push eax ; 004143C8 50
    %if ($ - %%insn_004143c8) > 1
        %error "LONG_004143C8"
    %endif
    times 1 - ($ - %%insn_004143c8) db 0
    %%insn_004143c9:
    push eax ; 004143C9 50
    %if ($ - %%insn_004143c9) > 1
        %error "LONG_004143C9"
    %endif
    times 1 - ($ - %%insn_004143c9) db 0
    %%insn_004143ca:
    push eax ; 004143CA 50
    %if ($ - %%insn_004143ca) > 1
        %error "LONG_004143CA"
    %endif
    times 1 - ($ - %%insn_004143ca) db 0
    %%insn_004143cb:
    push eax ; 004143CB 50
    %if ($ - %%insn_004143cb) > 1
        %error "LONG_004143CB"
    %endif
    times 1 - ($ - %%insn_004143cb) db 0
    %%insn_004143cc:
    push eax ; 004143CC 50
    %if ($ - %%insn_004143cc) > 1
        %error "LONG_004143CC"
    %endif
    times 1 - ($ - %%insn_004143cc) db 0
    %%insn_004143cd:
    push eax ; 004143CD 50
    %if ($ - %%insn_004143cd) > 1
        %error "LONG_004143CD"
    %endif
    times 1 - ($ - %%insn_004143cd) db 0
    %%insn_004143ce:
    mov edx,[ebp+0xc] ; 004143CE 8B550C
    %if ($ - %%insn_004143ce) > 3
        %error "LONG_004143CE"
    %endif
    times 3 - ($ - %%insn_004143ce) db 0
    db 0x2E, 0x8B, 0xC0 ; 004143D1 2E8BC0 | cs mov eax,eax | encoding preserved
    %%insn_004143d4:
    mov al,[edx] ; 004143D4 8A02
    %if ($ - %%insn_004143d4) > 2
        %error "LONG_004143D4"
    %endif
    times 2 - ($ - %%insn_004143d4) db 0
    db 0x0A, 0xC0 ; 004143D6 0AC0 | or al,al | encoding preserved
    %%insn_004143d8:
    jz short 0x4143e1 ; 004143D8 7407
    %if ($ - %%insn_004143d8) > 2
        %error "LONG_004143D8"
    %endif
    times 2 - ($ - %%insn_004143d8) db 0
    %%insn_004143da:
    inc edx ; 004143DA 42
    %if ($ - %%insn_004143da) > 1
        %error "LONG_004143DA"
    %endif
    times 1 - ($ - %%insn_004143da) db 0
    %%insn_004143db:
    bts [esp],eax ; 004143DB 0FAB0424
    %if ($ - %%insn_004143db) > 4
        %error "LONG_004143DB"
    %endif
    times 4 - ($ - %%insn_004143db) db 0
    %%insn_004143df:
    jmp short 0x4143d4 ; 004143DF EBF3
    %if ($ - %%insn_004143df) > 2
        %error "LONG_004143DF"
    %endif
    times 2 - ($ - %%insn_004143df) db 0
    %%insn_004143e1:
    mov esi,[ebp+0x8] ; 004143E1 8B7508
    %if ($ - %%insn_004143e1) > 3
        %error "LONG_004143E1"
    %endif
    times 3 - ($ - %%insn_004143e1) db 0
    %%insn_004143e4:
    mov al,[esi] ; 004143E4 8A06
    %if ($ - %%insn_004143e4) > 2
        %error "LONG_004143E4"
    %endif
    times 2 - ($ - %%insn_004143e4) db 0
    db 0x0A, 0xC0 ; 004143E6 0AC0 | or al,al | encoding preserved
    %%insn_004143e8:
    jz short 0x4143f4 ; 004143E8 740A
    %if ($ - %%insn_004143e8) > 2
        %error "LONG_004143E8"
    %endif
    times 2 - ($ - %%insn_004143e8) db 0
    %%insn_004143ea:
    inc esi ; 004143EA 46
    %if ($ - %%insn_004143ea) > 1
        %error "LONG_004143EA"
    %endif
    times 1 - ($ - %%insn_004143ea) db 0
    %%insn_004143eb:
    bt [esp],eax ; 004143EB 0FA30424
    %if ($ - %%insn_004143eb) > 4
        %error "LONG_004143EB"
    %endif
    times 4 - ($ - %%insn_004143eb) db 0
    %%insn_004143ef:
    jnc short 0x4143e4 ; 004143EF 73F3
    %if ($ - %%insn_004143ef) > 2
        %error "LONG_004143EF"
    %endif
    times 2 - ($ - %%insn_004143ef) db 0
    %%insn_004143f1:
    lea eax,[esi-0x1] ; 004143F1 8D46FF
    %if ($ - %%insn_004143f1) > 3
        %error "LONG_004143F1"
    %endif
    times 3 - ($ - %%insn_004143f1) db 0
    %%insn_004143f4:
    add esp,0x20 ; 004143F4 83C420
    %if ($ - %%insn_004143f4) > 3
        %error "LONG_004143F4"
    %endif
    times 3 - ($ - %%insn_004143f4) db 0
    %%insn_004143f7:
    pop esi ; 004143F7 5E
    %if ($ - %%insn_004143f7) > 1
        %error "LONG_004143F7"
    %endif
    times 1 - ($ - %%insn_004143f7) db 0
    %%insn_004143f8:
    leave ; 004143F8 C9
    %if ($ - %%insn_004143f8) > 1
        %error "LONG_004143F8"
    %endif
    times 1 - ($ - %%insn_004143f8) db 0
    %%insn_004143f9:
    ret ; 004143F9 C3
    %if ($ - %%insn_004143f9) > 1
        %error "LONG_004143F9"
    %endif
    times 1 - ($ - %%insn_004143f9) db 0
    %if ($ - %%fragment_start) != 58
        %error "function fragment size drift: 004143C0"
    %endif
%endmacro
