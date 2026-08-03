; PE virtual entry 0040709F
; Ghidra working symbol: FUN_0040709f
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040709f_part_00 0
    %%fragment_start:
func_0040709f:
    %%insn_0040709f:
    push ebp ; 0040709F 55
    %if ($ - %%insn_0040709f) > 1
        %error "LONG_0040709F"
    %endif
    times 1 - ($ - %%insn_0040709f) db 0
    db 0x8B, 0xEC ; 004070A0 8BEC | mov ebp,esp | encoding preserved
    %%insn_004070a2:
    push ecx ; 004070A2 51
    %if ($ - %%insn_004070a2) > 1
        %error "LONG_004070A2"
    %endif
    times 1 - ($ - %%insn_004070a2) db 0
    %%insn_004070a3:
    cmp dword [ebp+0x8],0x0 ; 004070A3 837D0800
    %if ($ - %%insn_004070a3) > 4
        %error "LONG_004070A3"
    %endif
    times 4 - ($ - %%insn_004070a3) db 0
    %%insn_004070a7:
    jz short 0x4070d5 ; 004070A7 742C
    %if ($ - %%insn_004070a7) > 2
        %error "LONG_004070A7"
    %endif
    times 2 - ($ - %%insn_004070a7) db 0
    %%insn_004070a9:
    push dword 0x4000 ; 004070A9 6800400000
    %if ($ - %%insn_004070a9) > 5
        %error "LONG_004070A9"
    %endif
    times 5 - ($ - %%insn_004070a9) db 0
    %%insn_004070ae:
    call 0x40cdc0 ; 004070AE E80D5D0000
    %if ($ - %%insn_004070ae) > 5
        %error "LONG_004070AE"
    %endif
    times 5 - ($ - %%insn_004070ae) db 0
    %%insn_004070b3:
    add esp,0x4 ; 004070B3 83C404
    %if ($ - %%insn_004070b3) > 3
        %error "LONG_004070B3"
    %endif
    times 3 - ($ - %%insn_004070b3) db 0
    %%insn_004070b6:
    mov [0x41f4e4],eax ; 004070B6 A3E4F44100
    %if ($ - %%insn_004070b6) > 5
        %error "LONG_004070B6"
    %endif
    times 5 - ($ - %%insn_004070b6) db 0
    %%insn_004070bb:
    push dword 0x4000 ; 004070BB 6800400000
    %if ($ - %%insn_004070bb) > 5
        %error "LONG_004070BB"
    %endif
    times 5 - ($ - %%insn_004070bb) db 0
    %%insn_004070c0:
    mov eax,[ebp+0xc] ; 004070C0 8B450C
    %if ($ - %%insn_004070c0) > 3
        %error "LONG_004070C0"
    %endif
    times 3 - ($ - %%insn_004070c0) db 0
    %%insn_004070c3:
    push eax ; 004070C3 50
    %if ($ - %%insn_004070c3) > 1
        %error "LONG_004070C3"
    %endif
    times 1 - ($ - %%insn_004070c3) db 0
    %%insn_004070c4:
    mov ecx,[0x41f4e4] ; 004070C4 8B0DE4F44100
    %if ($ - %%insn_004070c4) > 6
        %error "LONG_004070C4"
    %endif
    times 6 - ($ - %%insn_004070c4) db 0
    %%insn_004070ca:
    push ecx ; 004070CA 51
    %if ($ - %%insn_004070ca) > 1
        %error "LONG_004070CA"
    %endif
    times 1 - ($ - %%insn_004070ca) db 0
    %%insn_004070cb:
    call 0x40ca10 ; 004070CB E840590000
    %if ($ - %%insn_004070cb) > 5
        %error "LONG_004070CB"
    %endif
    times 5 - ($ - %%insn_004070cb) db 0
    %%insn_004070d0:
    add esp,0xc ; 004070D0 83C40C
    %if ($ - %%insn_004070d0) > 3
        %error "LONG_004070D0"
    %endif
    times 3 - ($ - %%insn_004070d0) db 0
    %%insn_004070d3:
    jmp short 0x4070df ; 004070D3 EB0A
    %if ($ - %%insn_004070d3) > 2
        %error "LONG_004070D3"
    %endif
    times 2 - ($ - %%insn_004070d3) db 0
    %%insn_004070d5:
    mov dword [0x41f4e4],0x0 ; 004070D5 C705E4F4410000000000
    %if ($ - %%insn_004070d5) > 10
        %error "LONG_004070D5"
    %endif
    times 10 - ($ - %%insn_004070d5) db 0
    %%insn_004070df:
    cmp dword [0x41f4e4],0x0 ; 004070DF 833DE4F4410000
    %if ($ - %%insn_004070df) > 7
        %error "LONG_004070DF"
    %endif
    times 7 - ($ - %%insn_004070df) db 0
    %%insn_004070e6:
    jnz short 0x4070f3 ; 004070E6 750B
    %if ($ - %%insn_004070e6) > 2
        %error "LONG_004070E6"
    %endif
    times 2 - ($ - %%insn_004070e6) db 0
    %%insn_004070e8:
    mov dword [ebp-0x4],0x0 ; 004070E8 C745FC00000000
    %if ($ - %%insn_004070e8) > 7
        %error "LONG_004070E8"
    %endif
    times 7 - ($ - %%insn_004070e8) db 0
    db 0x33, 0xC0 ; 004070EF 33C0 | xor eax,eax | encoding preserved
    %%insn_004070f1:
    jmp short 0x407128 ; 004070F1 EB35
    %if ($ - %%insn_004070f1) > 2
        %error "LONG_004070F1"
    %endif
    times 2 - ($ - %%insn_004070f1) db 0
    %%insn_004070f3:
    mov edx,[ebp+0x8] ; 004070F3 8B5508
    %if ($ - %%insn_004070f3) > 3
        %error "LONG_004070F3"
    %endif
    times 3 - ($ - %%insn_004070f3) db 0
    %%insn_004070f6:
    push edx ; 004070F6 52
    %if ($ - %%insn_004070f6) > 1
        %error "LONG_004070F6"
    %endif
    times 1 - ($ - %%insn_004070f6) db 0
    %%insn_004070f7:
    call dword near [0x4245e8] ; 004070F7 FF15E8454200
    %if ($ - %%insn_004070f7) > 6
        %error "LONG_004070F7"
    %endif
    times 6 - ($ - %%insn_004070f7) db 0
    %%insn_004070fd:
    mov [ebp-0x4],eax ; 004070FD 8945FC
    %if ($ - %%insn_004070fd) > 3
        %error "LONG_004070FD"
    %endif
    times 3 - ($ - %%insn_004070fd) db 0
    %%insn_00407100:
    push dword 0x0 ; 00407100 6A00
    %if ($ - %%insn_00407100) > 2
        %error "LONG_00407100"
    %endif
    times 2 - ($ - %%insn_00407100) db 0
    %%insn_00407102:
    mov eax,[0x41f4e4] ; 00407102 A1E4F44100
    %if ($ - %%insn_00407102) > 5
        %error "LONG_00407102"
    %endif
    times 5 - ($ - %%insn_00407102) db 0
    %%insn_00407107:
    push eax ; 00407107 50
    %if ($ - %%insn_00407107) > 1
        %error "LONG_00407107"
    %endif
    times 1 - ($ - %%insn_00407107) db 0
    %%insn_00407108:
    mov ecx,[ebp-0x4] ; 00407108 8B4DFC
    %if ($ - %%insn_00407108) > 3
        %error "LONG_00407108"
    %endif
    times 3 - ($ - %%insn_00407108) db 0
    %%insn_0040710b:
    push ecx ; 0040710B 51
    %if ($ - %%insn_0040710b) > 1
        %error "LONG_0040710B"
    %endif
    times 1 - ($ - %%insn_0040710b) db 0
    %%insn_0040710c:
    call dword near [0x4245ec] ; 0040710C FF15EC454200
    %if ($ - %%insn_0040710c) > 6
        %error "LONG_0040710C"
    %endif
    times 6 - ($ - %%insn_0040710c) db 0
    %%insn_00407112:
    test eax,eax ; 00407112 85C0
    %if ($ - %%insn_00407112) > 2
        %error "LONG_00407112"
    %endif
    times 2 - ($ - %%insn_00407112) db 0
    %%insn_00407114:
    jnz short 0x407125 ; 00407114 750F
    %if ($ - %%insn_00407114) > 2
        %error "LONG_00407114"
    %endif
    times 2 - ($ - %%insn_00407114) db 0
    %%insn_00407116:
    call dword near [0x4245f0] ; 00407116 FF15F0454200
    %if ($ - %%insn_00407116) > 6
        %error "LONG_00407116"
    %endif
    times 6 - ($ - %%insn_00407116) db 0
    %%insn_0040711c:
    push eax ; 0040711C 50
    %if ($ - %%insn_0040711c) > 1
        %error "LONG_0040711C"
    %endif
    times 1 - ($ - %%insn_0040711c) db 0
    %%insn_0040711d:
    call 0x409760 ; 0040711D E83E260000
    %if ($ - %%insn_0040711d) > 5
        %error "LONG_0040711D"
    %endif
    times 5 - ($ - %%insn_0040711d) db 0
    %%insn_00407122:
    add esp,0x4 ; 00407122 83C404
    %if ($ - %%insn_00407122) > 3
        %error "LONG_00407122"
    %endif
    times 3 - ($ - %%insn_00407122) db 0
    %%insn_00407125:
    mov eax,[ebp-0x4] ; 00407125 8B45FC
    %if ($ - %%insn_00407125) > 3
        %error "LONG_00407125"
    %endif
    times 3 - ($ - %%insn_00407125) db 0
    db 0x8B, 0xE5 ; 00407128 8BE5 | mov esp,ebp | encoding preserved
    %%insn_0040712a:
    pop ebp ; 0040712A 5D
    %if ($ - %%insn_0040712a) > 1
        %error "LONG_0040712A"
    %endif
    times 1 - ($ - %%insn_0040712a) db 0
    %%insn_0040712b:
    ret ; 0040712B C3
    %if ($ - %%insn_0040712b) > 1
        %error "LONG_0040712B"
    %endif
    times 1 - ($ - %%insn_0040712b) db 0
    %if ($ - %%fragment_start) != 141
        %error "function fragment size drift: 0040709F"
    %endif
%endmacro
