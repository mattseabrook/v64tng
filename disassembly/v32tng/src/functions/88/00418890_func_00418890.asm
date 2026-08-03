; PE virtual entry 00418890
; Ghidra working symbol: FUN_00418890
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00418890_part_00 0
    %%fragment_start:
func_00418890:
    %%insn_00418890:
    mov eax,[esp+0xc] ; 00418890 8B44240C
    %if ($ - %%insn_00418890) > 4
        %error "LONG_00418890"
    %endif
    times 4 - ($ - %%insn_00418890) db 0
    %%insn_00418894:
    test eax,eax ; 00418894 85C0
    %if ($ - %%insn_00418894) > 2
        %error "LONG_00418894"
    %endif
    times 2 - ($ - %%insn_00418894) db 0
    %%insn_00418896:
    jnz short 0x418899 ; 00418896 7501
    %if ($ - %%insn_00418896) > 2
        %error "LONG_00418896"
    %endif
    times 2 - ($ - %%insn_00418896) db 0
    %%insn_00418898:
    ret ; 00418898 C3
    %if ($ - %%insn_00418898) > 1
        %error "LONG_00418898"
    %endif
    times 1 - ($ - %%insn_00418898) db 0
    %%insn_00418899:
    mov ecx,[0x421154] ; 00418899 8B0D54114200
    %if ($ - %%insn_00418899) > 6
        %error "LONG_00418899"
    %endif
    times 6 - ($ - %%insn_00418899) db 0
    %%insn_0041889f:
    mov edx,[esp+0x8] ; 0041889F 8B542408
    %if ($ - %%insn_0041889f) > 4
        %error "LONG_0041889F"
    %endif
    times 4 - ($ - %%insn_0041889f) db 0
    %%insn_004188a3:
    push ecx ; 004188A3 51
    %if ($ - %%insn_004188a3) > 1
        %error "LONG_004188A3"
    %endif
    times 1 - ($ - %%insn_004188a3) db 0
    %%insn_004188a4:
    mov ecx,[0x421158] ; 004188A4 8B0D58114200
    %if ($ - %%insn_004188a4) > 6
        %error "LONG_004188A4"
    %endif
    times 6 - ($ - %%insn_004188a4) db 0
    %%insn_004188aa:
    push eax ; 004188AA 50
    %if ($ - %%insn_004188aa) > 1
        %error "LONG_004188AA"
    %endif
    times 1 - ($ - %%insn_004188aa) db 0
    %%insn_004188ab:
    push edx ; 004188AB 52
    %if ($ - %%insn_004188ab) > 1
        %error "LONG_004188AB"
    %endif
    times 1 - ($ - %%insn_004188ab) db 0
    %%insn_004188ac:
    push eax ; 004188AC 50
    %if ($ - %%insn_004188ac) > 1
        %error "LONG_004188AC"
    %endif
    times 1 - ($ - %%insn_004188ac) db 0
    %%insn_004188ad:
    mov eax,[esp+0x14] ; 004188AD 8B442414
    %if ($ - %%insn_004188ad) > 4
        %error "LONG_004188AD"
    %endif
    times 4 - ($ - %%insn_004188ad) db 0
    %%insn_004188b1:
    push eax ; 004188B1 50
    %if ($ - %%insn_004188b1) > 1
        %error "LONG_004188B1"
    %endif
    times 1 - ($ - %%insn_004188b1) db 0
    %%insn_004188b2:
    push dword 0x1 ; 004188B2 6A01
    %if ($ - %%insn_004188b2) > 2
        %error "LONG_004188B2"
    %endif
    times 2 - ($ - %%insn_004188b2) db 0
    %%insn_004188b4:
    push ecx ; 004188B4 51
    %if ($ - %%insn_004188b4) > 1
        %error "LONG_004188B4"
    %endif
    times 1 - ($ - %%insn_004188b4) db 0
    %%insn_004188b5:
    call 0x418ba0 ; 004188B5 E8E6020000
    %if ($ - %%insn_004188b5) > 5
        %error "LONG_004188B5"
    %endif
    times 5 - ($ - %%insn_004188b5) db 0
    %%insn_004188ba:
    add esp,0x1c ; 004188BA 83C41C
    %if ($ - %%insn_004188ba) > 3
        %error "LONG_004188BA"
    %endif
    times 3 - ($ - %%insn_004188ba) db 0
    %%insn_004188bd:
    test eax,eax ; 004188BD 85C0
    %if ($ - %%insn_004188bd) > 2
        %error "LONG_004188BD"
    %endif
    times 2 - ($ - %%insn_004188bd) db 0
    %%insn_004188bf:
    jnz short 0x4188c7 ; 004188BF 7506
    %if ($ - %%insn_004188bf) > 2
        %error "LONG_004188BF"
    %endif
    times 2 - ($ - %%insn_004188bf) db 0
    %%insn_004188c1:
    mov eax,0x7fffffff ; 004188C1 B8FFFFFF7F
    %if ($ - %%insn_004188c1) > 5
        %error "LONG_004188C1"
    %endif
    times 5 - ($ - %%insn_004188c1) db 0
    %%insn_004188c6:
    ret ; 004188C6 C3
    %if ($ - %%insn_004188c6) > 1
        %error "LONG_004188C6"
    %endif
    times 1 - ($ - %%insn_004188c6) db 0
    %%insn_004188c7:
    add eax,0xfffffffffffffffe ; 004188C7 83C0FE
    %if ($ - %%insn_004188c7) > 3
        %error "LONG_004188C7"
    %endif
    times 3 - ($ - %%insn_004188c7) db 0
    %%insn_004188ca:
    ret ; 004188CA C3
    %if ($ - %%insn_004188ca) > 1
        %error "LONG_004188CA"
    %endif
    times 1 - ($ - %%insn_004188ca) db 0
    %if ($ - %%fragment_start) != 59
        %error "function fragment size drift: 00418890"
    %endif
%endmacro
