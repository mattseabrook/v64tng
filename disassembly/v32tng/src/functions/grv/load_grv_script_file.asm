; PE virtual entry 004011A3
; Ghidra working symbol: FUN_004011a3
; Verified mmioOpen/mmioRead path used for script.grv and GRV LOADSCRIPT files.
; Generated losslessly; preserve byte identity after edits.

%macro emit_load_grv_script_file_part_00 0
    %%fragment_start:
load_grv_script_file:
    %%insn_004011a3:
    push ebp ; 004011A3 55
    %if ($ - %%insn_004011a3) > 1
        %error "LONG_004011A3"
    %endif
    times 1 - ($ - %%insn_004011a3) db 0
    db 0x8B, 0xEC ; 004011A4 8BEC | mov ebp,esp | encoding preserved
    %%insn_004011a6:
    push ecx ; 004011A6 51
    %if ($ - %%insn_004011a6) > 1
        %error "LONG_004011A6"
    %endif
    times 1 - ($ - %%insn_004011a6) db 0
    %%insn_004011a7:
    push dword 0x0 ; 004011A7 6A00
    %if ($ - %%insn_004011a7) > 2
        %error "LONG_004011A7"
    %endif
    times 2 - ($ - %%insn_004011a7) db 0
    %%insn_004011a9:
    push dword 0x0 ; 004011A9 6A00
    %if ($ - %%insn_004011a9) > 2
        %error "LONG_004011A9"
    %endif
    times 2 - ($ - %%insn_004011a9) db 0
    %%insn_004011ab:
    mov eax,[ebp+0x8] ; 004011AB 8B4508
    %if ($ - %%insn_004011ab) > 3
        %error "LONG_004011AB"
    %endif
    times 3 - ($ - %%insn_004011ab) db 0
    %%insn_004011ae:
    push eax ; 004011AE 50
    %if ($ - %%insn_004011ae) > 1
        %error "LONG_004011AE"
    %endif
    times 1 - ($ - %%insn_004011ae) db 0
    %%insn_004011af:
    call dword near [0x424598] ; 004011AF FF1598454200
    %if ($ - %%insn_004011af) > 6
        %error "LONG_004011AF"
    %endif
    times 6 - ($ - %%insn_004011af) db 0
    %%insn_004011b5:
    mov [ebp-0x4],eax ; 004011B5 8945FC
    %if ($ - %%insn_004011b5) > 3
        %error "LONG_004011B5"
    %endif
    times 3 - ($ - %%insn_004011b5) db 0
    %%insn_004011b8:
    cmp dword [ebp-0x4],0x0 ; 004011B8 837DFC00
    %if ($ - %%insn_004011b8) > 4
        %error "LONG_004011B8"
    %endif
    times 4 - ($ - %%insn_004011b8) db 0
    %%insn_004011bc:
    jnz short 0x4011ca ; 004011BC 750C
    %if ($ - %%insn_004011bc) > 2
        %error "LONG_004011BC"
    %endif
    times 2 - ($ - %%insn_004011bc) db 0
    %%insn_004011be:
    push dword 0x1 ; 004011BE 6A01
    %if ($ - %%insn_004011be) > 2
        %error "LONG_004011BE"
    %endif
    times 2 - ($ - %%insn_004011be) db 0
    %%insn_004011c0:
    push dword 0xb ; 004011C0 6A0B
    %if ($ - %%insn_004011c0) > 2
        %error "LONG_004011C0"
    %endif
    times 2 - ($ - %%insn_004011c0) db 0
    %%insn_004011c2:
    call 0x409691 ; 004011C2 E8CA840000
    %if ($ - %%insn_004011c2) > 5
        %error "LONG_004011C2"
    %endif
    times 5 - ($ - %%insn_004011c2) db 0
    %%insn_004011c7:
    add esp,0x8 ; 004011C7 83C408
    %if ($ - %%insn_004011c7) > 3
        %error "LONG_004011C7"
    %endif
    times 3 - ($ - %%insn_004011c7) db 0
    %%insn_004011ca:
    push dword 0x10000 ; 004011CA 6800000100
    %if ($ - %%insn_004011ca) > 5
        %error "LONG_004011CA"
    %endif
    times 5 - ($ - %%insn_004011ca) db 0
    %%insn_004011cf:
    call 0x40cdc0 ; 004011CF E8ECBB0000
    %if ($ - %%insn_004011cf) > 5
        %error "LONG_004011CF"
    %endif
    times 5 - ($ - %%insn_004011cf) db 0
    %%insn_004011d4:
    add esp,0x4 ; 004011D4 83C404
    %if ($ - %%insn_004011d4) > 3
        %error "LONG_004011D4"
    %endif
    times 3 - ($ - %%insn_004011d4) db 0
    %%insn_004011d7:
    mov [0x41f284],eax ; 004011D7 A384F24100
    %if ($ - %%insn_004011d7) > 5
        %error "LONG_004011D7"
    %endif
    times 5 - ($ - %%insn_004011d7) db 0
    %%insn_004011dc:
    push dword 0x10000 ; 004011DC 6800000100
    %if ($ - %%insn_004011dc) > 5
        %error "LONG_004011DC"
    %endif
    times 5 - ($ - %%insn_004011dc) db 0
    %%insn_004011e1:
    mov ecx,[0x41f284] ; 004011E1 8B0D84F24100
    %if ($ - %%insn_004011e1) > 6
        %error "LONG_004011E1"
    %endif
    times 6 - ($ - %%insn_004011e1) db 0
    %%insn_004011e7:
    push ecx ; 004011E7 51
    %if ($ - %%insn_004011e7) > 1
        %error "LONG_004011E7"
    %endif
    times 1 - ($ - %%insn_004011e7) db 0
    %%insn_004011e8:
    mov edx,[ebp-0x4] ; 004011E8 8B55FC
    %if ($ - %%insn_004011e8) > 3
        %error "LONG_004011E8"
    %endif
    times 3 - ($ - %%insn_004011e8) db 0
    %%insn_004011eb:
    push edx ; 004011EB 52
    %if ($ - %%insn_004011eb) > 1
        %error "LONG_004011EB"
    %endif
    times 1 - ($ - %%insn_004011eb) db 0
    %%insn_004011ec:
    call dword near [0x424594] ; 004011EC FF1594454200
    %if ($ - %%insn_004011ec) > 6
        %error "LONG_004011EC"
    %endif
    times 6 - ($ - %%insn_004011ec) db 0
    %%insn_004011f2:
    push dword 0x0 ; 004011F2 6A00
    %if ($ - %%insn_004011f2) > 2
        %error "LONG_004011F2"
    %endif
    times 2 - ($ - %%insn_004011f2) db 0
    %%insn_004011f4:
    mov eax,[ebp-0x4] ; 004011F4 8B45FC
    %if ($ - %%insn_004011f4) > 3
        %error "LONG_004011F4"
    %endif
    times 3 - ($ - %%insn_004011f4) db 0
    %%insn_004011f7:
    push eax ; 004011F7 50
    %if ($ - %%insn_004011f7) > 1
        %error "LONG_004011F7"
    %endif
    times 1 - ($ - %%insn_004011f7) db 0
    %%insn_004011f8:
    call dword near [0x424590] ; 004011F8 FF1590454200
    %if ($ - %%insn_004011f8) > 6
        %error "LONG_004011F8"
    %endif
    times 6 - ($ - %%insn_004011f8) db 0
    db 0x8B, 0xE5 ; 004011FE 8BE5 | mov esp,ebp | encoding preserved
    %%insn_00401200:
    pop ebp ; 00401200 5D
    %if ($ - %%insn_00401200) > 1
        %error "LONG_00401200"
    %endif
    times 1 - ($ - %%insn_00401200) db 0
    %%insn_00401201:
    ret ; 00401201 C3
    %if ($ - %%insn_00401201) > 1
        %error "LONG_00401201"
    %endif
    times 1 - ($ - %%insn_00401201) db 0
    %if ($ - %%fragment_start) != 95
        %error "function fragment size drift: 004011A3"
    %endif
%endmacro
