; PE virtual entry 00407748
; Ghidra working symbol: FUN_00407748
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00407748_part_00 0
    %%fragment_start:
func_00407748:
    %%insn_00407748:
    push ebp ; 00407748 55
    %if ($ - %%insn_00407748) > 1
        %error "LONG_00407748"
    %endif
    times 1 - ($ - %%insn_00407748) db 0
    db 0x8B, 0xEC ; 00407749 8BEC | mov ebp,esp | encoding preserved
    %%insn_0040774b:
    push ecx ; 0040774B 51
    %if ($ - %%insn_0040774b) > 1
        %error "LONG_0040774B"
    %endif
    times 1 - ($ - %%insn_0040774b) db 0
    %%insn_0040774c:
    mov [ebp-0x4],ecx ; 0040774C 894DFC
    %if ($ - %%insn_0040774c) > 3
        %error "LONG_0040774C"
    %endif
    times 3 - ($ - %%insn_0040774c) db 0
    %%insn_0040774f:
    cmp dword [0x421428],0x0 ; 0040774F 833D2814420000
    %if ($ - %%insn_0040774f) > 7
        %error "LONG_0040774F"
    %endif
    times 7 - ($ - %%insn_0040774f) db 0
    %%insn_00407756:
    jz short 0x407773 ; 00407756 741B
    %if ($ - %%insn_00407756) > 2
        %error "LONG_00407756"
    %endif
    times 2 - ($ - %%insn_00407756) db 0
    %%insn_00407758:
    mov eax,[0x421428] ; 00407758 A128144200
    %if ($ - %%insn_00407758) > 5
        %error "LONG_00407758"
    %endif
    times 5 - ($ - %%insn_00407758) db 0
    %%insn_0040775d:
    push eax ; 0040775D 50
    %if ($ - %%insn_0040775d) > 1
        %error "LONG_0040775D"
    %endif
    times 1 - ($ - %%insn_0040775d) db 0
    %%insn_0040775e:
    mov ecx,[0x421428] ; 0040775E 8B0D28144200
    %if ($ - %%insn_0040775e) > 6
        %error "LONG_0040775E"
    %endif
    times 6 - ($ - %%insn_0040775e) db 0
    %%insn_00407764:
    mov edx,[ecx] ; 00407764 8B11
    %if ($ - %%insn_00407764) > 2
        %error "LONG_00407764"
    %endif
    times 2 - ($ - %%insn_00407764) db 0
    %%insn_00407766:
    call dword near [edx+0x8] ; 00407766 FF5208
    %if ($ - %%insn_00407766) > 3
        %error "LONG_00407766"
    %endif
    times 3 - ($ - %%insn_00407766) db 0
    %%insn_00407769:
    mov dword [0x421428],0x0 ; 00407769 C7052814420000000000
    %if ($ - %%insn_00407769) > 10
        %error "LONG_00407769"
    %endif
    times 10 - ($ - %%insn_00407769) db 0
    %%insn_00407773:
    cmp dword [0x421438],0x0 ; 00407773 833D3814420000
    %if ($ - %%insn_00407773) > 7
        %error "LONG_00407773"
    %endif
    times 7 - ($ - %%insn_00407773) db 0
    %%insn_0040777a:
    jz short 0x407797 ; 0040777A 741B
    %if ($ - %%insn_0040777a) > 2
        %error "LONG_0040777A"
    %endif
    times 2 - ($ - %%insn_0040777a) db 0
    %%insn_0040777c:
    mov eax,[0x421438] ; 0040777C A138144200
    %if ($ - %%insn_0040777c) > 5
        %error "LONG_0040777C"
    %endif
    times 5 - ($ - %%insn_0040777c) db 0
    %%insn_00407781:
    push eax ; 00407781 50
    %if ($ - %%insn_00407781) > 1
        %error "LONG_00407781"
    %endif
    times 1 - ($ - %%insn_00407781) db 0
    %%insn_00407782:
    mov ecx,[0x421438] ; 00407782 8B0D38144200
    %if ($ - %%insn_00407782) > 6
        %error "LONG_00407782"
    %endif
    times 6 - ($ - %%insn_00407782) db 0
    %%insn_00407788:
    mov edx,[ecx] ; 00407788 8B11
    %if ($ - %%insn_00407788) > 2
        %error "LONG_00407788"
    %endif
    times 2 - ($ - %%insn_00407788) db 0
    %%insn_0040778a:
    call dword near [edx+0x8] ; 0040778A FF5208
    %if ($ - %%insn_0040778a) > 3
        %error "LONG_0040778A"
    %endif
    times 3 - ($ - %%insn_0040778a) db 0
    %%insn_0040778d:
    mov dword [0x421438],0x0 ; 0040778D C7053814420000000000
    %if ($ - %%insn_0040778d) > 10
        %error "LONG_0040778D"
    %endif
    times 10 - ($ - %%insn_0040778d) db 0
    %%insn_00407797:
    cmp dword [0x42142c],0x0 ; 00407797 833D2C14420000
    %if ($ - %%insn_00407797) > 7
        %error "LONG_00407797"
    %endif
    times 7 - ($ - %%insn_00407797) db 0
    %%insn_0040779e:
    jz short 0x4077bb ; 0040779E 741B
    %if ($ - %%insn_0040779e) > 2
        %error "LONG_0040779E"
    %endif
    times 2 - ($ - %%insn_0040779e) db 0
    %%insn_004077a0:
    mov eax,[0x42142c] ; 004077A0 A12C144200
    %if ($ - %%insn_004077a0) > 5
        %error "LONG_004077A0"
    %endif
    times 5 - ($ - %%insn_004077a0) db 0
    %%insn_004077a5:
    push eax ; 004077A5 50
    %if ($ - %%insn_004077a5) > 1
        %error "LONG_004077A5"
    %endif
    times 1 - ($ - %%insn_004077a5) db 0
    %%insn_004077a6:
    mov ecx,[0x42142c] ; 004077A6 8B0D2C144200
    %if ($ - %%insn_004077a6) > 6
        %error "LONG_004077A6"
    %endif
    times 6 - ($ - %%insn_004077a6) db 0
    %%insn_004077ac:
    mov edx,[ecx] ; 004077AC 8B11
    %if ($ - %%insn_004077ac) > 2
        %error "LONG_004077AC"
    %endif
    times 2 - ($ - %%insn_004077ac) db 0
    %%insn_004077ae:
    call dword near [edx+0x8] ; 004077AE FF5208
    %if ($ - %%insn_004077ae) > 3
        %error "LONG_004077AE"
    %endif
    times 3 - ($ - %%insn_004077ae) db 0
    %%insn_004077b1:
    mov dword [0x42142c],0x0 ; 004077B1 C7052C14420000000000
    %if ($ - %%insn_004077b1) > 10
        %error "LONG_004077B1"
    %endif
    times 10 - ($ - %%insn_004077b1) db 0
    %%insn_004077bb:
    cmp dword [0x41f54c],0x0 ; 004077BB 833D4CF5410000
    %if ($ - %%insn_004077bb) > 7
        %error "LONG_004077BB"
    %endif
    times 7 - ($ - %%insn_004077bb) db 0
    %%insn_004077c2:
    jz short 0x4077df ; 004077C2 741B
    %if ($ - %%insn_004077c2) > 2
        %error "LONG_004077C2"
    %endif
    times 2 - ($ - %%insn_004077c2) db 0
    %%insn_004077c4:
    mov eax,[0x41f54c] ; 004077C4 A14CF54100
    %if ($ - %%insn_004077c4) > 5
        %error "LONG_004077C4"
    %endif
    times 5 - ($ - %%insn_004077c4) db 0
    %%insn_004077c9:
    push eax ; 004077C9 50
    %if ($ - %%insn_004077c9) > 1
        %error "LONG_004077C9"
    %endif
    times 1 - ($ - %%insn_004077c9) db 0
    %%insn_004077ca:
    mov ecx,[0x41f54c] ; 004077CA 8B0D4CF54100
    %if ($ - %%insn_004077ca) > 6
        %error "LONG_004077CA"
    %endif
    times 6 - ($ - %%insn_004077ca) db 0
    %%insn_004077d0:
    mov edx,[ecx] ; 004077D0 8B11
    %if ($ - %%insn_004077d0) > 2
        %error "LONG_004077D0"
    %endif
    times 2 - ($ - %%insn_004077d0) db 0
    %%insn_004077d2:
    call dword near [edx+0x8] ; 004077D2 FF5208
    %if ($ - %%insn_004077d2) > 3
        %error "LONG_004077D2"
    %endif
    times 3 - ($ - %%insn_004077d2) db 0
    %%insn_004077d5:
    mov dword [0x41f54c],0x0 ; 004077D5 C7054CF5410000000000
    %if ($ - %%insn_004077d5) > 10
        %error "LONG_004077D5"
    %endif
    times 10 - ($ - %%insn_004077d5) db 0
    db 0x33, 0xC0 ; 004077DF 33C0 | xor eax,eax | encoding preserved
    db 0x8B, 0xE5 ; 004077E1 8BE5 | mov esp,ebp | encoding preserved
    %%insn_004077e3:
    pop ebp ; 004077E3 5D
    %if ($ - %%insn_004077e3) > 1
        %error "LONG_004077E3"
    %endif
    times 1 - ($ - %%insn_004077e3) db 0
    %%insn_004077e4:
    ret ; 004077E4 C3
    %if ($ - %%insn_004077e4) > 1
        %error "LONG_004077E4"
    %endif
    times 1 - ($ - %%insn_004077e4) db 0
    %if ($ - %%fragment_start) != 157
        %error "function fragment size drift: 00407748"
    %endif
%endmacro
