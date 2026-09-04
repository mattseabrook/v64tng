; PE virtual entry 004074C1
; Ghidra working symbol: FUN_004074c1
; Verified role: opens the Miles MIDI output driver, first using the mapper
; device and then the default fallback, returning the driver handle.
; Generated losslessly; preserve byte identity after edits.

%macro emit_open_miles_midi_driver_part_00 0
    %%fragment_start:
open_miles_midi_driver:
    %%insn_004074c1:
    push ebp ; 004074C1 55
    %if ($ - %%insn_004074c1) > 1
        %error "LONG_004074C1"
    %endif
    times 1 - ($ - %%insn_004074c1) db 0
    db 0x8B, 0xEC ; 004074C2 8BEC | mov ebp,esp | encoding preserved
    %%insn_004074c4:
    sub esp,0x8 ; 004074C4 83EC08
    %if ($ - %%insn_004074c4) > 3
        %error "LONG_004074C4"
    %endif
    times 3 - ($ - %%insn_004074c4) db 0
    %%insn_004074c7:
    push dword 0xffffffffffffffff ; 004074C7 6AFF
    %if ($ - %%insn_004074c7) > 2
        %error "LONG_004074C7"
    %endif
    times 2 - ($ - %%insn_004074c7) db 0
    %%insn_004074c9:
    push dword 0x0 ; 004074C9 6A00
    %if ($ - %%insn_004074c9) > 2
        %error "LONG_004074C9"
    %endif
    times 2 - ($ - %%insn_004074c9) db 0
    %%insn_004074cb:
    lea eax,[ebp-0x4] ; 004074CB 8D45FC
    %if ($ - %%insn_004074cb) > 3
        %error "LONG_004074CB"
    %endif
    times 3 - ($ - %%insn_004074cb) db 0
    %%insn_004074ce:
    push eax ; 004074CE 50
    %if ($ - %%insn_004074ce) > 1
        %error "LONG_004074CE"
    %endif
    times 1 - ($ - %%insn_004074ce) db 0
    %%insn_004074cf:
    call dword near [0x42462c] ; 004074CF FF152C464200
    %if ($ - %%insn_004074cf) > 6
        %error "LONG_004074CF"
    %endif
    times 6 - ($ - %%insn_004074cf) db 0
    %%insn_004074d5:
    mov [ebp-0x8],eax ; 004074D5 8945F8
    %if ($ - %%insn_004074d5) > 3
        %error "LONG_004074D5"
    %endif
    times 3 - ($ - %%insn_004074d5) db 0
    %%insn_004074d8:
    cmp dword [ebp-0x8],0x0 ; 004074D8 837DF800
    %if ($ - %%insn_004074d8) > 4
        %error "LONG_004074D8"
    %endif
    times 4 - ($ - %%insn_004074d8) db 0
    %%insn_004074dc:
    jz short 0x4074ef ; 004074DC 7411
    %if ($ - %%insn_004074dc) > 2
        %error "LONG_004074DC"
    %endif
    times 2 - ($ - %%insn_004074dc) db 0
    %%insn_004074de:
    push dword 0x0 ; 004074DE 6A00
    %if ($ - %%insn_004074de) > 2
        %error "LONG_004074DE"
    %endif
    times 2 - ($ - %%insn_004074de) db 0
    %%insn_004074e0:
    push dword 0x0 ; 004074E0 6A00
    %if ($ - %%insn_004074e0) > 2
        %error "LONG_004074E0"
    %endif
    times 2 - ($ - %%insn_004074e0) db 0
    %%insn_004074e2:
    lea ecx,[ebp-0x4] ; 004074E2 8D4DFC
    %if ($ - %%insn_004074e2) > 3
        %error "LONG_004074E2"
    %endif
    times 3 - ($ - %%insn_004074e2) db 0
    %%insn_004074e5:
    push ecx ; 004074E5 51
    %if ($ - %%insn_004074e5) > 1
        %error "LONG_004074E5"
    %endif
    times 1 - ($ - %%insn_004074e5) db 0
    %%insn_004074e6:
    call dword near [0x42462c] ; 004074E6 FF152C464200
    %if ($ - %%insn_004074e6) > 6
        %error "LONG_004074E6"
    %endif
    times 6 - ($ - %%insn_004074e6) db 0
    %%insn_004074ec:
    mov [ebp-0x8],eax ; 004074EC 8945F8
    %if ($ - %%insn_004074ec) > 3
        %error "LONG_004074EC"
    %endif
    times 3 - ($ - %%insn_004074ec) db 0
    %%insn_004074ef:
    cmp dword [ebp-0x8],0x0 ; 004074EF 837DF800
    %if ($ - %%insn_004074ef) > 4
        %error "LONG_004074EF"
    %endif
    times 4 - ($ - %%insn_004074ef) db 0
    %%insn_004074f3:
    jz short 0x407500 ; 004074F3 740B
    %if ($ - %%insn_004074f3) > 2
        %error "LONG_004074F3"
    %endif
    times 2 - ($ - %%insn_004074f3) db 0
    %%insn_004074f5:
    mov dword [ebp-0x4],0x0 ; 004074F5 C745FC00000000
    %if ($ - %%insn_004074f5) > 7
        %error "LONG_004074F5"
    %endif
    times 7 - ($ - %%insn_004074f5) db 0
    db 0x33, 0xC0 ; 004074FC 33C0 | xor eax,eax | encoding preserved
    %%insn_004074fe:
    jmp short 0x407503 ; 004074FE EB03
    %if ($ - %%insn_004074fe) > 2
        %error "LONG_004074FE"
    %endif
    times 2 - ($ - %%insn_004074fe) db 0
    %%insn_00407500:
    mov eax,[ebp-0x4] ; 00407500 8B45FC
    %if ($ - %%insn_00407500) > 3
        %error "LONG_00407500"
    %endif
    times 3 - ($ - %%insn_00407500) db 0
    db 0x8B, 0xE5 ; 00407503 8BE5 | mov esp,ebp | encoding preserved
    %%insn_00407505:
    pop ebp ; 00407505 5D
    %if ($ - %%insn_00407505) > 1
        %error "LONG_00407505"
    %endif
    times 1 - ($ - %%insn_00407505) db 0
    %%insn_00407506:
    ret ; 00407506 C3
    %if ($ - %%insn_00407506) > 1
        %error "LONG_00407506"
    %endif
    times 1 - ($ - %%insn_00407506) db 0
    %if ($ - %%fragment_start) != 70
        %error "function fragment size drift: 004074C1"
    %endif
%endmacro
