; PE virtual entry 0040A786
; Ghidra working symbol: FUN_0040a786
; Verified GRV 22h full background-to-foreground copy.
; Copies 320 rows * 640 bytes from the indexed VDX background at [004212D0]
; to foreground rows y=80..399 at [0042133C]+0C800h.
; Generated losslessly; preserve byte identity after edits.

%macro emit_copy_background_to_foreground_0040a786_part_00 0
    %%fragment_start:
copy_background_to_foreground_0040a786:
    %%insn_0040a786:
    push ebp ; 0040A786 55
    %if ($ - %%insn_0040a786) > 1
        %error "LONG_0040A786"
    %endif
    times 1 - ($ - %%insn_0040a786) db 0
    db 0x8B, 0xEC ; 0040A787 8BEC | mov ebp,esp | encoding preserved
    %%insn_0040a789:
    push dword 0x32000 ; 0040A789 6800200300
    %if ($ - %%insn_0040a789) > 5
        %error "LONG_0040A789"
    %endif
    times 5 - ($ - %%insn_0040a789) db 0
    %%insn_0040a78e:
    mov eax,[0x42133c] ; 0040A78E A13C134200
    %if ($ - %%insn_0040a78e) > 5
        %error "LONG_0040A78E"
    %endif
    times 5 - ($ - %%insn_0040a78e) db 0
    %%insn_0040a793:
    add eax,0xc800 ; 0040A793 0500C80000
    %if ($ - %%insn_0040a793) > 5
        %error "LONG_0040A793"
    %endif
    times 5 - ($ - %%insn_0040a793) db 0
    %%insn_0040a798:
    push eax ; 0040A798 50
    %if ($ - %%insn_0040a798) > 1
        %error "LONG_0040A798"
    %endif
    times 1 - ($ - %%insn_0040a798) db 0
    %%insn_0040a799:
    mov ecx,[0x4212d0] ; 0040A799 8B0DD0124200
    %if ($ - %%insn_0040a799) > 6
        %error "LONG_0040A799"
    %endif
    times 6 - ($ - %%insn_0040a799) db 0
    %%insn_0040a79f:
    push ecx ; 0040A79F 51
    %if ($ - %%insn_0040a79f) > 1
        %error "LONG_0040A79F"
    %endif
    times 1 - ($ - %%insn_0040a79f) db 0
    %%insn_0040a7a0:
    call 0x40ca10 ; 0040A7A0 E86B220000
    %if ($ - %%insn_0040a7a0) > 5
        %error "LONG_0040A7A0"
    %endif
    times 5 - ($ - %%insn_0040a7a0) db 0
    %%insn_0040a7a5:
    add esp,0xc ; 0040A7A5 83C40C
    %if ($ - %%insn_0040a7a5) > 3
        %error "LONG_0040A7A5"
    %endif
    times 3 - ($ - %%insn_0040a7a5) db 0
    %%insn_0040a7a8:
    pop ebp ; 0040A7A8 5D
    %if ($ - %%insn_0040a7a8) > 1
        %error "LONG_0040A7A8"
    %endif
    times 1 - ($ - %%insn_0040a7a8) db 0
    %%insn_0040a7a9:
    ret ; 0040A7A9 C3
    %if ($ - %%insn_0040a7a9) > 1
        %error "LONG_0040A7A9"
    %endif
    times 1 - ($ - %%insn_0040a7a9) db 0
    %if ($ - %%fragment_start) != 36
        %error "function fragment size drift: 0040A786"
    %endif
%endmacro
