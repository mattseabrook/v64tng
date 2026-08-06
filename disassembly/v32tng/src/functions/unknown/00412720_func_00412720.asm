; PE virtual entry 00412720
; Ghidra working symbol: FUN_00412720
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00412720_part_00 0
    %%fragment_start:
func_00412720:
    %%insn_00412720:
    push esi ; 00412720 56
    %if ($ - %%insn_00412720) > 1
        %error "LONG_00412720"
    %endif
    times 1 - ($ - %%insn_00412720) db 0
    %%insn_00412721:
    call 0x40de50 ; 00412721 E82AB7FFFF
    %if ($ - %%insn_00412721) > 5
        %error "LONG_00412721"
    %endif
    times 5 - ($ - %%insn_00412721) db 0
    %%insn_00412726:
    call dword near [0x4244ac] ; 00412726 FF15AC444200
    %if ($ - %%insn_00412726) > 6
        %error "LONG_00412726"
    %endif
    times 6 - ($ - %%insn_00412726) db 0
    %%insn_0041272c:
    cmp eax,0xffffffffffffffff ; 0041272C 83F8FF
    %if ($ - %%insn_0041272c) > 3
        %error "LONG_0041272C"
    %endif
    times 3 - ($ - %%insn_0041272c) db 0
    %%insn_0041272f:
    mov [0x41e310],eax ; 0041272F A310E34100
    %if ($ - %%insn_0041272f) > 5
        %error "LONG_0041272F"
    %endif
    times 5 - ($ - %%insn_0041272f) db 0
    %%insn_00412734:
    jz short 0x412778 ; 00412734 7442
    %if ($ - %%insn_00412734) > 2
        %error "LONG_00412734"
    %endif
    times 2 - ($ - %%insn_00412734) db 0
    %%insn_00412736:
    push dword 0x74 ; 00412736 6A74
    %if ($ - %%insn_00412736) > 2
        %error "LONG_00412736"
    %endif
    times 2 - ($ - %%insn_00412736) db 0
    %%insn_00412738:
    push dword 0x1 ; 00412738 6A01
    %if ($ - %%insn_00412738) > 2
        %error "LONG_00412738"
    %endif
    times 2 - ($ - %%insn_00412738) db 0
    %%insn_0041273a:
    call 0x415550 ; 0041273A E8112E0000
    %if ($ - %%insn_0041273a) > 5
        %error "LONG_0041273A"
    %endif
    times 5 - ($ - %%insn_0041273a) db 0
    db 0x8B, 0xF0 ; 0041273F 8BF0 | mov esi,eax | encoding preserved
    %%insn_00412741:
    add esp,0x8 ; 00412741 83C408
    %if ($ - %%insn_00412741) > 3
        %error "LONG_00412741"
    %endif
    times 3 - ($ - %%insn_00412741) db 0
    %%insn_00412744:
    test esi,esi ; 00412744 85F6
    %if ($ - %%insn_00412744) > 2
        %error "LONG_00412744"
    %endif
    times 2 - ($ - %%insn_00412744) db 0
    %%insn_00412746:
    jz short 0x412778 ; 00412746 7430
    %if ($ - %%insn_00412746) > 2
        %error "LONG_00412746"
    %endif
    times 2 - ($ - %%insn_00412746) db 0
    %%insn_00412748:
    mov eax,[0x41e310] ; 00412748 A110E34100
    %if ($ - %%insn_00412748) > 5
        %error "LONG_00412748"
    %endif
    times 5 - ($ - %%insn_00412748) db 0
    %%insn_0041274d:
    push esi ; 0041274D 56
    %if ($ - %%insn_0041274d) > 1
        %error "LONG_0041274D"
    %endif
    times 1 - ($ - %%insn_0041274d) db 0
    %%insn_0041274e:
    push eax ; 0041274E 50
    %if ($ - %%insn_0041274e) > 1
        %error "LONG_0041274E"
    %endif
    times 1 - ($ - %%insn_0041274e) db 0
    %%insn_0041274f:
    call dword near [0x4244b0] ; 0041274F FF15B0444200
    %if ($ - %%insn_0041274f) > 6
        %error "LONG_0041274F"
    %endif
    times 6 - ($ - %%insn_0041274f) db 0
    %%insn_00412755:
    test eax,eax ; 00412755 85C0
    %if ($ - %%insn_00412755) > 2
        %error "LONG_00412755"
    %endif
    times 2 - ($ - %%insn_00412755) db 0
    %%insn_00412757:
    jz short 0x412778 ; 00412757 741F
    %if ($ - %%insn_00412757) > 2
        %error "LONG_00412757"
    %endif
    times 2 - ($ - %%insn_00412757) db 0
    %%insn_00412759:
    push esi ; 00412759 56
    %if ($ - %%insn_00412759) > 1
        %error "LONG_00412759"
    %endif
    times 1 - ($ - %%insn_00412759) db 0
    %%insn_0041275a:
    call 0x4127b0 ; 0041275A E851000000
    %if ($ - %%insn_0041275a) > 5
        %error "LONG_0041275A"
    %endif
    times 5 - ($ - %%insn_0041275a) db 0
    %%insn_0041275f:
    add esp,0x4 ; 0041275F 83C404
    %if ($ - %%insn_0041275f) > 3
        %error "LONG_0041275F"
    %endif
    times 3 - ($ - %%insn_0041275f) db 0
    %%insn_00412762:
    call dword near [0x4244c4] ; 00412762 FF15C4444200
    %if ($ - %%insn_00412762) > 6
        %error "LONG_00412762"
    %endif
    times 6 - ($ - %%insn_00412762) db 0
    %%insn_00412768:
    mov [esi],eax ; 00412768 8906
    %if ($ - %%insn_00412768) > 2
        %error "LONG_00412768"
    %endif
    times 2 - ($ - %%insn_00412768) db 0
    %%insn_0041276a:
    mov dword [esi+0x4],0xffffffff ; 0041276A C74604FFFFFFFF
    %if ($ - %%insn_0041276a) > 7
        %error "LONG_0041276A"
    %endif
    times 7 - ($ - %%insn_0041276a) db 0
    %%insn_00412771:
    mov eax,0x1 ; 00412771 B801000000
    %if ($ - %%insn_00412771) > 5
        %error "LONG_00412771"
    %endif
    times 5 - ($ - %%insn_00412771) db 0
    %%insn_00412776:
    pop esi ; 00412776 5E
    %if ($ - %%insn_00412776) > 1
        %error "LONG_00412776"
    %endif
    times 1 - ($ - %%insn_00412776) db 0
    %%insn_00412777:
    ret ; 00412777 C3
    %if ($ - %%insn_00412777) > 1
        %error "LONG_00412777"
    %endif
    times 1 - ($ - %%insn_00412777) db 0
    db 0x33, 0xC0 ; 00412778 33C0 | xor eax,eax | encoding preserved
    %%insn_0041277a:
    pop esi ; 0041277A 5E
    %if ($ - %%insn_0041277a) > 1
        %error "LONG_0041277A"
    %endif
    times 1 - ($ - %%insn_0041277a) db 0
    %%insn_0041277b:
    ret ; 0041277B C3
    %if ($ - %%insn_0041277b) > 1
        %error "LONG_0041277B"
    %endif
    times 1 - ($ - %%insn_0041277b) db 0
    %if ($ - %%fragment_start) != 92
        %error "function fragment size drift: 00412720"
    %endif
%endmacro
