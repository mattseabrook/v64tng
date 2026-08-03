; Linear entry 07501 (1702:04e1)
; Ghidra working symbol: FUN_1702_04e1
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_07501_part_00 0
    %%fragment_start:
func_07501:
    %%insn_07501:
    push ds ; 07501 1E
    %if ($ - %%insn_07501) > 1
        %error "LONG_07501"
    %endif
    times 1 - ($ - %%insn_07501) db 0
    %%insn_07502:
    push si ; 07502 56
    %if ($ - %%insn_07502) > 1
        %error "LONG_07502"
    %endif
    times 1 - ($ - %%insn_07502) db 0
    %%insn_07503:
    push di ; 07503 57
    %if ($ - %%insn_07503) > 1
        %error "LONG_07503"
    %endif
    times 1 - ($ - %%insn_07503) db 0
    %%insn_07504:
    pushf ; 07504 9C
    %if ($ - %%insn_07504) > 1
        %error "LONG_07504"
    %endif
    times 1 - ($ - %%insn_07504) db 0
    %%insn_07505:
    cli ; 07505 FA
    %if ($ - %%insn_07505) > 1
        %error "LONG_07505"
    %endif
    times 1 - ($ - %%insn_07505) db 0
    %%insn_07506:
    cld ; 07506 FC
    %if ($ - %%insn_07506) > 1
        %error "LONG_07506"
    %endif
    times 1 - ($ - %%insn_07506) db 0
    %%insn_07507:
    mov word [cs:0x11a],0xffff ; 07507 2EC7061A01FFFF
    %if ($ - %%insn_07507) > 7
        %error "LONG_07507"
    %endif
    times 7 - ($ - %%insn_07507) db 0
    %%insn_0750e:
    mov word [cs:0x11c],0xffff ; 0750E 2EC7061C01FFFF
    %if ($ - %%insn_0750e) > 7
        %error "LONG_0750E"
    %endif
    times 7 - ($ - %%insn_0750e) db 0
    %%insn_07515:
    push cs ; 07515 0E
    %if ($ - %%insn_07515) > 1
        %error "LONG_07515"
    %endif
    times 1 - ($ - %%insn_07515) db 0
    %%insn_07516:
    pop es ; 07516 07
    %if ($ - %%insn_07516) > 1
        %error "LONG_07516"
    %endif
    times 1 - ($ - %%insn_07516) db 0
    %%insn_07517:
    mov di,0x70 ; 07517 BF7000
    %if ($ - %%insn_07517) > 3
        %error "LONG_07517"
    %endif
    times 3 - ($ - %%insn_07517) db 0
    %%insn_0751a:
    mov cx,0x11 ; 0751A B91100
    %if ($ - %%insn_0751a) > 3
        %error "LONG_0751A"
    %endif
    times 3 - ($ - %%insn_0751a) db 0
    %%insn_0751d:
    mov ax,0x0 ; 0751D B80000
    %if ($ - %%insn_0751d) > 3
        %error "LONG_0751D"
    %endif
    times 3 - ($ - %%insn_0751d) db 0
    %%insn_07520:
    rep stosw ; 07520 F3AB
    %if ($ - %%insn_07520) > 2
        %error "LONG_07520"
    %endif
    times 2 - ($ - %%insn_07520) db 0
    %%insn_07522:
    mov di,0x92 ; 07522 BF9200
    %if ($ - %%insn_07522) > 3
        %error "LONG_07522"
    %endif
    times 3 - ($ - %%insn_07522) db 0
    %%insn_07525:
    mov cx,0x22 ; 07525 B92200
    %if ($ - %%insn_07525) > 3
        %error "LONG_07525"
    %endif
    times 3 - ($ - %%insn_07525) db 0
    %%insn_07528:
    rep stosw ; 07528 F3AB
    %if ($ - %%insn_07528) > 2
        %error "LONG_07528"
    %endif
    times 2 - ($ - %%insn_07528) db 0
    %%insn_0752a:
    mov di,0xd6 ; 0752A BFD600
    %if ($ - %%insn_0752a) > 3
        %error "LONG_0752A"
    %endif
    times 3 - ($ - %%insn_0752a) db 0
    %%insn_0752d:
    mov cx,0x22 ; 0752D B92200
    %if ($ - %%insn_0752d) > 3
        %error "LONG_0752D"
    %endif
    times 3 - ($ - %%insn_0752d) db 0
    %%insn_07530:
    rep stosw ; 07530 F3AB
    %if ($ - %%insn_07530) > 2
        %error "LONG_07530"
    %endif
    times 2 - ($ - %%insn_07530) db 0
    %%insn_07532:
    db 0x80 ; 07532 80
    %if ($ - %%insn_07532) > 1
        %error "LONG_07532"
    %endif
    times 1 - ($ - %%insn_07532) db 0
    %if ($ - %%fragment_start) != 50
        %error "SIZE_07501"
    %endif
%endmacro

%macro emit_func_07501_part_01 0
    %%fragment_start:
    %%insn_07534:
    add [0xfae8],cl ; 07534 000EE8FA
    %if ($ - %%insn_07534) > 4
        %error "LONG_07534"
    %endif
    times 4 - ($ - %%insn_07534) db 0
    %%insn_07538:
    call word far [bx+0x5e] ; 07538 FF5F5E
    %if ($ - %%insn_07538) > 3
        %error "LONG_07538"
    %endif
    times 3 - ($ - %%insn_07538) db 0
    %%insn_0753b:
    pop ds ; 0753B 1F
    %if ($ - %%insn_0753b) > 1
        %error "LONG_0753B"
    %endif
    times 1 - ($ - %%insn_0753b) db 0
    %%insn_0753c:
    retf ; 0753C CB
    %if ($ - %%insn_0753c) > 1
        %error "LONG_0753C"
    %endif
    times 1 - ($ - %%insn_0753c) db 0
    %if ($ - %%fragment_start) != 9
        %error "SIZE_07534"
    %endif
%endmacro
