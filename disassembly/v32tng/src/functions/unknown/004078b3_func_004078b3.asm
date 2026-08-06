; PE virtual entry 004078B3
; Ghidra working symbol: FUN_004078b3
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_004078b3_part_00 0
    %%fragment_start:
func_004078b3:
    %%insn_004078b3:
    push ebp ; 004078B3 55
    %if ($ - %%insn_004078b3) > 1
        %error "LONG_004078B3"
    %endif
    times 1 - ($ - %%insn_004078b3) db 0
    db 0x8B, 0xEC ; 004078B4 8BEC | mov ebp,esp | encoding preserved
    %%insn_004078b6:
    sub esp,0x8 ; 004078B6 83EC08
    %if ($ - %%insn_004078b6) > 3
        %error "LONG_004078B6"
    %endif
    times 3 - ($ - %%insn_004078b6) db 0
    %%insn_004078b9:
    mov [ebp-0x8],ecx ; 004078B9 894DF8
    %if ($ - %%insn_004078b9) > 3
        %error "LONG_004078B9"
    %endif
    times 3 - ($ - %%insn_004078b9) db 0
    %%insn_004078bc:
    push dword 0x8 ; 004078BC 6A08
    %if ($ - %%insn_004078bc) > 2
        %error "LONG_004078BC"
    %endif
    times 2 - ($ - %%insn_004078bc) db 0
    %%insn_004078be:
    push dword 0x1e0 ; 004078BE 68E0010000
    %if ($ - %%insn_004078be) > 5
        %error "LONG_004078BE"
    %endif
    times 5 - ($ - %%insn_004078be) db 0
    %%insn_004078c3:
    push dword 0x280 ; 004078C3 6880020000
    %if ($ - %%insn_004078c3) > 5
        %error "LONG_004078C3"
    %endif
    times 5 - ($ - %%insn_004078c3) db 0
    %%insn_004078c8:
    push dword 0x1e0 ; 004078C8 68E0010000
    %if ($ - %%insn_004078c8) > 5
        %error "LONG_004078C8"
    %endif
    times 5 - ($ - %%insn_004078c8) db 0
    %%insn_004078cd:
    mov edx,0x280 ; 004078CD BA80020000
    %if ($ - %%insn_004078cd) > 5
        %error "LONG_004078CD"
    %endif
    times 5 - ($ - %%insn_004078cd) db 0
    %%insn_004078d2:
    mov ecx,[0x41f5bc] ; 004078D2 8B0DBCF54100
    %if ($ - %%insn_004078d2) > 6
        %error "LONG_004078D2"
    %endif
    times 6 - ($ - %%insn_004078d2) db 0
    %%insn_004078d8:
    call 0x407c29 ; 004078D8 E84C030000
    %if ($ - %%insn_004078d8) > 5
        %error "LONG_004078D8"
    %endif
    times 5 - ($ - %%insn_004078d8) db 0
    %%insn_004078dd:
    mov ecx,[ebp-0x8] ; 004078DD 8B4DF8
    %if ($ - %%insn_004078dd) > 3
        %error "LONG_004078DD"
    %endif
    times 3 - ($ - %%insn_004078dd) db 0
    %%insn_004078e0:
    mov [ecx+0x3c],eax ; 004078E0 89413C
    %if ($ - %%insn_004078e0) > 3
        %error "LONG_004078E0"
    %endif
    times 3 - ($ - %%insn_004078e0) db 0
    %%insn_004078e3:
    mov ecx,[ebp-0x8] ; 004078E3 8B4DF8
    %if ($ - %%insn_004078e3) > 3
        %error "LONG_004078E3"
    %endif
    times 3 - ($ - %%insn_004078e3) db 0
    %%insn_004078e6:
    call 0x407842 ; 004078E6 E857FFFFFF
    %if ($ - %%insn_004078e6) > 5
        %error "LONG_004078E6"
    %endif
    times 5 - ($ - %%insn_004078e6) db 0
    %%insn_004078eb:
    mov [ebp-0x4],eax ; 004078EB 8945FC
    %if ($ - %%insn_004078eb) > 3
        %error "LONG_004078EB"
    %endif
    times 3 - ($ - %%insn_004078eb) db 0
    %%insn_004078ee:
    mov edx,[ebp-0x8] ; 004078EE 8B55F8
    %if ($ - %%insn_004078ee) > 3
        %error "LONG_004078EE"
    %endif
    times 3 - ($ - %%insn_004078ee) db 0
    %%insn_004078f1:
    cmp dword [edx+0x3c],0x0 ; 004078F1 837A3C00
    %if ($ - %%insn_004078f1) > 4
        %error "LONG_004078F1"
    %endif
    times 4 - ($ - %%insn_004078f1) db 0
    %%insn_004078f5:
    jz short 0x407901 ; 004078F5 740A
    %if ($ - %%insn_004078f5) > 2
        %error "LONG_004078F5"
    %endif
    times 2 - ($ - %%insn_004078f5) db 0
    %%insn_004078f7:
    cmp dword [ebp-0x4],0x0 ; 004078F7 837DFC00
    %if ($ - %%insn_004078f7) > 4
        %error "LONG_004078F7"
    %endif
    times 4 - ($ - %%insn_004078f7) db 0
    %%insn_004078fb:
    jnz short 0x407901 ; 004078FB 7504
    %if ($ - %%insn_004078fb) > 2
        %error "LONG_004078FB"
    %endif
    times 2 - ($ - %%insn_004078fb) db 0
    db 0x33, 0xC0 ; 004078FD 33C0 | xor eax,eax | encoding preserved
    %%insn_004078ff:
    jmp short 0x40792d ; 004078FF EB2C
    %if ($ - %%insn_004078ff) > 2
        %error "LONG_004078FF"
    %endif
    times 2 - ($ - %%insn_004078ff) db 0
    %%insn_00407901:
    mov eax,[ebp-0x8] ; 00407901 8B45F8
    %if ($ - %%insn_00407901) > 3
        %error "LONG_00407901"
    %endif
    times 3 - ($ - %%insn_00407901) db 0
    %%insn_00407904:
    cmp dword [eax+0x3c],0x0 ; 00407904 83783C00
    %if ($ - %%insn_00407904) > 4
        %error "LONG_00407904"
    %endif
    times 4 - ($ - %%insn_00407904) db 0
    %%insn_00407908:
    jnz short 0x407911 ; 00407908 7507
    %if ($ - %%insn_00407908) > 2
        %error "LONG_00407908"
    %endif
    times 2 - ($ - %%insn_00407908) db 0
    %%insn_0040790a:
    mov eax,0x200 ; 0040790A B800020000
    %if ($ - %%insn_0040790a) > 5
        %error "LONG_0040790A"
    %endif
    times 5 - ($ - %%insn_0040790a) db 0
    %%insn_0040790f:
    jmp short 0x40792d ; 0040790F EB1C
    %if ($ - %%insn_0040790f) > 2
        %error "LONG_0040790F"
    %endif
    times 2 - ($ - %%insn_0040790f) db 0
    %%insn_00407911:
    cmp dword [ebp-0x4],0x0 ; 00407911 837DFC00
    %if ($ - %%insn_00407911) > 4
        %error "LONG_00407911"
    %endif
    times 4 - ($ - %%insn_00407911) db 0
    %%insn_00407915:
    jz short 0x40791e ; 00407915 7407
    %if ($ - %%insn_00407915) > 2
        %error "LONG_00407915"
    %endif
    times 2 - ($ - %%insn_00407915) db 0
    %%insn_00407917:
    mov eax,0x303 ; 00407917 B803030000
    %if ($ - %%insn_00407917) > 5
        %error "LONG_00407917"
    %endif
    times 5 - ($ - %%insn_00407917) db 0
    %%insn_0040791c:
    jmp short 0x40792d ; 0040791C EB0F
    %if ($ - %%insn_0040791c) > 2
        %error "LONG_0040791C"
    %endif
    times 2 - ($ - %%insn_0040791c) db 0
    %%insn_0040791e:
    mov ecx,[0x41f5bc] ; 0040791E 8B0DBCF54100
    %if ($ - %%insn_0040791e) > 6
        %error "LONG_0040791E"
    %endif
    times 6 - ($ - %%insn_0040791e) db 0
    %%insn_00407924:
    push ecx ; 00407924 51
    %if ($ - %%insn_00407924) > 1
        %error "LONG_00407924"
    %endif
    times 1 - ($ - %%insn_00407924) db 0
    %%insn_00407925:
    call dword near [0x4244f4] ; 00407925 FF15F4444200
    %if ($ - %%insn_00407925) > 6
        %error "LONG_00407925"
    %endif
    times 6 - ($ - %%insn_00407925) db 0
    db 0x33, 0xC0 ; 0040792B 33C0 | xor eax,eax | encoding preserved
    db 0x8B, 0xE5 ; 0040792D 8BE5 | mov esp,ebp | encoding preserved
    %%insn_0040792f:
    pop ebp ; 0040792F 5D
    %if ($ - %%insn_0040792f) > 1
        %error "LONG_0040792F"
    %endif
    times 1 - ($ - %%insn_0040792f) db 0
    %%insn_00407930:
    ret ; 00407930 C3
    %if ($ - %%insn_00407930) > 1
        %error "LONG_00407930"
    %endif
    times 1 - ($ - %%insn_00407930) db 0
    %if ($ - %%fragment_start) != 126
        %error "function fragment size drift: 004078B3"
    %endif
%endmacro
