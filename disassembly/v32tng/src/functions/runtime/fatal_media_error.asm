; PE virtual entry 00409691
; Ghidra working symbol: FUN_00409691
; Verified fatal media error-reporting path.
; Generated losslessly; preserve byte identity after edits.

%macro emit_fatal_media_error_part_00 0
    %%fragment_start:
fatal_media_error:
    %%insn_00409691:
    push ebp ; 00409691 55
    %if ($ - %%insn_00409691) > 1
        %error "LONG_00409691"
    %endif
    times 1 - ($ - %%insn_00409691) db 0
    db 0x8B, 0xEC ; 00409692 8BEC | mov ebp,esp | encoding preserved
    %%insn_00409694:
    sub esp,0x100 ; 00409694 81EC00010000
    %if ($ - %%insn_00409694) > 6
        %error "LONG_00409694"
    %endif
    times 6 - ($ - %%insn_00409694) db 0
    %%insn_0040969a:
    cmp dword [ebp+0x8],0xffffffffffffffff ; 0040969A 837D08FF
    %if ($ - %%insn_0040969a) > 4
        %error "LONG_0040969A"
    %endif
    times 4 - ($ - %%insn_0040969a) db 0
    %%insn_0040969e:
    jz short 0x4096ca ; 0040969E 742A
    %if ($ - %%insn_0040969e) > 2
        %error "LONG_0040969E"
    %endif
    times 2 - ($ - %%insn_0040969e) db 0
    %%insn_004096a0:
    push dword 0xff ; 004096A0 68FF000000
    %if ($ - %%insn_004096a0) > 5
        %error "LONG_004096A0"
    %endif
    times 5 - ($ - %%insn_004096a0) db 0
    %%insn_004096a5:
    lea eax,[ebp-0x100] ; 004096A5 8D8500FFFFFF
    %if ($ - %%insn_004096a5) > 6
        %error "LONG_004096A5"
    %endif
    times 6 - ($ - %%insn_004096a5) db 0
    %%insn_004096ab:
    push eax ; 004096AB 50
    %if ($ - %%insn_004096ab) > 1
        %error "LONG_004096AB"
    %endif
    times 1 - ($ - %%insn_004096ab) db 0
    %%insn_004096ac:
    mov ecx,[ebp+0x8] ; 004096AC 8B4D08
    %if ($ - %%insn_004096ac) > 3
        %error "LONG_004096AC"
    %endif
    times 3 - ($ - %%insn_004096ac) db 0
    %%insn_004096af:
    push ecx ; 004096AF 51
    %if ($ - %%insn_004096af) > 1
        %error "LONG_004096AF"
    %endif
    times 1 - ($ - %%insn_004096af) db 0
    %%insn_004096b0:
    mov edx,[0x4212e0] ; 004096B0 8B15E0124200
    %if ($ - %%insn_004096b0) > 6
        %error "LONG_004096B0"
    %endif
    times 6 - ($ - %%insn_004096b0) db 0
    %%insn_004096b6:
    push edx ; 004096B6 52
    %if ($ - %%insn_004096b6) > 1
        %error "LONG_004096B6"
    %endif
    times 1 - ($ - %%insn_004096b6) db 0
    %%insn_004096b7:
    call dword near [0x424570] ; 004096B7 FF1570454200
    %if ($ - %%insn_004096b7) > 6
        %error "LONG_004096B7"
    %endif
    times 6 - ($ - %%insn_004096b7) db 0
    %%insn_004096bd:
    test eax,eax ; 004096BD 85C0
    %if ($ - %%insn_004096bd) > 2
        %error "LONG_004096BD"
    %endif
    times 2 - ($ - %%insn_004096bd) db 0
    %%insn_004096bf:
    jnz short 0x4096c8 ; 004096BF 7507
    %if ($ - %%insn_004096bf) > 2
        %error "LONG_004096BF"
    %endif
    times 2 - ($ - %%insn_004096bf) db 0
    %%insn_004096c1:
    mov byte [ebp-0x100],0x0 ; 004096C1 C68500FFFFFF00
    %if ($ - %%insn_004096c1) > 7
        %error "LONG_004096C1"
    %endif
    times 7 - ($ - %%insn_004096c1) db 0
    %%insn_004096c8:
    jmp short 0x4096d1 ; 004096C8 EB07
    %if ($ - %%insn_004096c8) > 2
        %error "LONG_004096C8"
    %endif
    times 2 - ($ - %%insn_004096c8) db 0
    %%insn_004096ca:
    mov byte [ebp-0x100],0x0 ; 004096CA C68500FFFFFF00
    %if ($ - %%insn_004096ca) > 7
        %error "LONG_004096CA"
    %endif
    times 7 - ($ - %%insn_004096ca) db 0
    %%insn_004096d1:
    lea eax,[ebp-0x100] ; 004096D1 8D8500FFFFFF
    %if ($ - %%insn_004096d1) > 6
        %error "LONG_004096D1"
    %endif
    times 6 - ($ - %%insn_004096d1) db 0
    %%insn_004096d7:
    push eax ; 004096D7 50
    %if ($ - %%insn_004096d7) > 1
        %error "LONG_004096D7"
    %endif
    times 1 - ($ - %%insn_004096d7) db 0
    %%insn_004096d8:
    call 0x4096f0 ; 004096D8 E813000000
    %if ($ - %%insn_004096d8) > 5
        %error "LONG_004096D8"
    %endif
    times 5 - ($ - %%insn_004096d8) db 0
    %%insn_004096dd:
    add esp,0x4 ; 004096DD 83C404
    %if ($ - %%insn_004096dd) > 3
        %error "LONG_004096DD"
    %endif
    times 3 - ($ - %%insn_004096dd) db 0
    %%insn_004096e0:
    mov ecx,[ebp+0xc] ; 004096E0 8B4D0C
    %if ($ - %%insn_004096e0) > 3
        %error "LONG_004096E0"
    %endif
    times 3 - ($ - %%insn_004096e0) db 0
    %%insn_004096e3:
    push ecx ; 004096E3 51
    %if ($ - %%insn_004096e3) > 1
        %error "LONG_004096E3"
    %endif
    times 1 - ($ - %%insn_004096e3) db 0
    %%insn_004096e4:
    call 0x40d5f0 ; 004096E4 E8073F0000
    %if ($ - %%insn_004096e4) > 5
        %error "LONG_004096E4"
    %endif
    times 5 - ($ - %%insn_004096e4) db 0
    %%insn_004096e9:
    add esp,0x4 ; 004096E9 83C404
    %if ($ - %%insn_004096e9) > 3
        %error "LONG_004096E9"
    %endif
    times 3 - ($ - %%insn_004096e9) db 0
    db 0x8B, 0xE5 ; 004096EC 8BE5 | mov esp,ebp | encoding preserved
    %%insn_004096ee:
    pop ebp ; 004096EE 5D
    %if ($ - %%insn_004096ee) > 1
        %error "LONG_004096EE"
    %endif
    times 1 - ($ - %%insn_004096ee) db 0
    %%insn_004096ef:
    ret ; 004096EF C3
    %if ($ - %%insn_004096ef) > 1
        %error "LONG_004096EF"
    %endif
    times 1 - ($ - %%insn_004096ef) db 0
    %if ($ - %%fragment_start) != 95
        %error "function fragment size drift: 00409691"
    %endif
%endmacro
