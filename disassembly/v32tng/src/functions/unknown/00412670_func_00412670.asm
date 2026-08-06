; PE virtual entry 00412670
; Ghidra working symbol: FUN_00412670
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00412670_part_00 0
    %%fragment_start:
func_00412670:
    %%insn_00412670:
    mov eax,[esp+0x4] ; 00412670 8B442404
    %if ($ - %%insn_00412670) > 4
        %error "LONG_00412670"
    %endif
    times 4 - ($ - %%insn_00412670) db 0
    %%insn_00412674:
    add eax,0xfffffc5c ; 00412674 055CFCFFFF
    %if ($ - %%insn_00412674) > 5
        %error "LONG_00412674"
    %endif
    times 5 - ($ - %%insn_00412674) db 0
    %%insn_00412679:
    cmp eax,0x12 ; 00412679 83F812
    %if ($ - %%insn_00412679) > 3
        %error "LONG_00412679"
    %endif
    times 3 - ($ - %%insn_00412679) db 0
    %%insn_0041267c:
    ja short 0x4126a5 ; 0041267C 7727
    %if ($ - %%insn_0041267c) > 2
        %error "LONG_0041267C"
    %endif
    times 2 - ($ - %%insn_0041267c) db 0
    db 0x33, 0xC9 ; 0041267E 33C9 | xor ecx,ecx | encoding preserved
    %%insn_00412680:
    mov cl,[eax+0x4126bc] ; 00412680 8A88BC264100
    %if ($ - %%insn_00412680) > 6
        %error "LONG_00412680"
    %endif
    times 6 - ($ - %%insn_00412680) db 0
    %%insn_00412686:
    jmp dword near [ecx*4+0x4126a8] ; 00412686 FF248DA8264100
    %if ($ - %%insn_00412686) > 7
        %error "LONG_00412686"
    %endif
    times 7 - ($ - %%insn_00412686) db 0
    %%insn_0041268d:
    mov eax,0x411 ; 0041268D B811040000
    %if ($ - %%insn_0041268d) > 5
        %error "LONG_0041268D"
    %endif
    times 5 - ($ - %%insn_0041268d) db 0
    %%insn_00412692:
    ret ; 00412692 C3
    %if ($ - %%insn_00412692) > 1
        %error "LONG_00412692"
    %endif
    times 1 - ($ - %%insn_00412692) db 0
    %%insn_00412693:
    mov eax,0x804 ; 00412693 B804080000
    %if ($ - %%insn_00412693) > 5
        %error "LONG_00412693"
    %endif
    times 5 - ($ - %%insn_00412693) db 0
    %%insn_00412698:
    ret ; 00412698 C3
    %if ($ - %%insn_00412698) > 1
        %error "LONG_00412698"
    %endif
    times 1 - ($ - %%insn_00412698) db 0
    %%insn_00412699:
    mov eax,0x412 ; 00412699 B812040000
    %if ($ - %%insn_00412699) > 5
        %error "LONG_00412699"
    %endif
    times 5 - ($ - %%insn_00412699) db 0
    %%insn_0041269e:
    ret ; 0041269E C3
    %if ($ - %%insn_0041269e) > 1
        %error "LONG_0041269E"
    %endif
    times 1 - ($ - %%insn_0041269e) db 0
    %%insn_0041269f:
    mov eax,0x404 ; 0041269F B804040000
    %if ($ - %%insn_0041269f) > 5
        %error "LONG_0041269F"
    %endif
    times 5 - ($ - %%insn_0041269f) db 0
    %%insn_004126a4:
    ret ; 004126A4 C3
    %if ($ - %%insn_004126a4) > 1
        %error "LONG_004126A4"
    %endif
    times 1 - ($ - %%insn_004126a4) db 0
    db 0x33, 0xC0 ; 004126A5 33C0 | xor eax,eax | encoding preserved
    %%insn_004126a7:
    ret ; 004126A7 C3
    %if ($ - %%insn_004126a7) > 1
        %error "LONG_004126A7"
    %endif
    times 1 - ($ - %%insn_004126a7) db 0
    %if ($ - %%fragment_start) != 56
        %error "function fragment size drift: 00412670"
    %endif
%endmacro
