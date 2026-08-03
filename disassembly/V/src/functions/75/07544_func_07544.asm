; Linear entry 07544 (1702:0524)
; Ghidra working symbol: FUN_1702_0524
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_07544_part_00 0
    %%fragment_start:
func_07544:
    %%insn_07544:
    push ds ; 07544 1E
    %if ($ - %%insn_07544) > 1
        %error "LONG_07544"
    %endif
    times 1 - ($ - %%insn_07544) db 0
    %%insn_07545:
    push si ; 07545 56
    %if ($ - %%insn_07545) > 1
        %error "LONG_07545"
    %endif
    times 1 - ($ - %%insn_07545) db 0
    %%insn_07546:
    push di ; 07546 57
    %if ($ - %%insn_07546) > 1
        %error "LONG_07546"
    %endif
    times 1 - ($ - %%insn_07546) db 0
    %%insn_07547:
    pushf ; 07547 9C
    %if ($ - %%insn_07547) > 1
        %error "LONG_07547"
    %endif
    times 1 - ($ - %%insn_07547) db 0
    %%insn_07548:
    cli ; 07548 FA
    %if ($ - %%insn_07548) > 1
        %error "LONG_07548"
    %endif
    times 1 - ($ - %%insn_07548) db 0
    %%insn_07549:
    mov ax,0x0 ; 07549 B80000
    %if ($ - %%insn_07549) > 3
        %error "LONG_07549"
    %endif
    times 3 - ($ - %%insn_07549) db 0
    %%insn_0754c:
    mov es,ax ; 0754C 8EC0
    %if ($ - %%insn_0754c) > 2
        %error "LONG_0754C"
    %endif
    times 2 - ($ - %%insn_0754c) db 0
    %%insn_0754e:
    mov bx,[es:0x20] ; 0754E 268B1E2000
    %if ($ - %%insn_0754e) > 5
        %error "LONG_0754E"
    %endif
    times 5 - ($ - %%insn_0754e) db 0
    %%insn_07553:
    mov es,word [es:0x22] ; 07553 268E062200
    %if ($ - %%insn_07553) > 5
        %error "LONG_07553"
    %endif
    times 5 - ($ - %%insn_07553) db 0
    %%insn_07558:
    mov [cs:0x11e],bx ; 07558 2E891E1E01
    %if ($ - %%insn_07558) > 5
        %error "LONG_07558"
    %endif
    times 5 - ($ - %%insn_07558) db 0
    %%insn_0755d:
    mov word [cs:0x120],es ; 0755D 2E8C062001
    %if ($ - %%insn_0755d) > 5
        %error "LONG_0755D"
    %endif
    times 5 - ($ - %%insn_0755d) db 0
    %%insn_07562:
    mov bx,0x51d ; 07562 BB1D05
    %if ($ - %%insn_07562) > 3
        %error "LONG_07562"
    %endif
    times 3 - ($ - %%insn_07562) db 0
    %%insn_07565:
    mov [cs:0x4a],bx ; 07565 2E891E4A00
    %if ($ - %%insn_07565) > 5
        %error "LONG_07565"
    %endif
    times 5 - ($ - %%insn_07565) db 0
    %%insn_0756a:
    mov word [cs:0x4c],cs ; 0756A 2E8C0E4C00
    %if ($ - %%insn_0756a) > 5
        %error "LONG_0756A"
    %endif
    times 5 - ($ - %%insn_0756a) db 0
    %%insn_0756f:
    mov ax,cs ; 0756F 8CC8
    %if ($ - %%insn_0756f) > 2
        %error "LONG_0756F"
    %endif
    times 2 - ($ - %%insn_0756f) db 0
    %%insn_07571:
    mov ds,ax ; 07571 8ED8
    %if ($ - %%insn_07571) > 2
        %error "LONG_07571"
    %endif
    times 2 - ($ - %%insn_07571) db 0
    %%insn_07573:
    mov dx,0x410 ; 07573 BA1004
    %if ($ - %%insn_07573) > 3
        %error "LONG_07573"
    %endif
    times 3 - ($ - %%insn_07573) db 0
    %%insn_07576:
    mov ax,0x0 ; 07576 B80000
    %if ($ - %%insn_07576) > 3
        %error "LONG_07576"
    %endif
    times 3 - ($ - %%insn_07576) db 0
    %%insn_07579:
    mov es,ax ; 07579 8EC0
    %if ($ - %%insn_07579) > 2
        %error "LONG_07579"
    %endif
    times 2 - ($ - %%insn_07579) db 0
    %%insn_0757b:
    mov [es:0x20],dx ; 0757B 2689162000
    %if ($ - %%insn_0757b) > 5
        %error "LONG_0757B"
    %endif
    times 5 - ($ - %%insn_0757b) db 0
    %%insn_07580:
    mov word [es:0x22],ds ; 07580 268C1E2200
    %if ($ - %%insn_07580) > 5
        %error "LONG_07580"
    %endif
    times 5 - ($ - %%insn_07580) db 0
    %%insn_07585:
    db 0x80 ; 07585 80
    %if ($ - %%insn_07585) > 1
        %error "LONG_07585"
    %endif
    times 1 - ($ - %%insn_07585) db 0
    %if ($ - %%fragment_start) != 66
        %error "SIZE_07544"
    %endif
%endmacro

%macro emit_func_07544_part_01 0
    %%fragment_start:
    %%insn_07587:
    add [0xfae8],cl ; 07587 000EE8FA
    %if ($ - %%insn_07587) > 4
        %error "LONG_07587"
    %endif
    times 4 - ($ - %%insn_07587) db 0
    %%insn_0758b:
    call word far [bx+0x5e] ; 0758B FF5F5E
    %if ($ - %%insn_0758b) > 3
        %error "LONG_0758B"
    %endif
    times 3 - ($ - %%insn_0758b) db 0
    %%insn_0758e:
    pop ds ; 0758E 1F
    %if ($ - %%insn_0758e) > 1
        %error "LONG_0758E"
    %endif
    times 1 - ($ - %%insn_0758e) db 0
    %%insn_0758f:
    retf ; 0758F CB
    %if ($ - %%insn_0758f) > 1
        %error "LONG_0758F"
    %endif
    times 1 - ($ - %%insn_0758f) db 0
    %if ($ - %%fragment_start) != 9
        %error "SIZE_07587"
    %endif
%endmacro
