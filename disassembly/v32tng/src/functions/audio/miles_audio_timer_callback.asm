; PE virtual entry 004072A1
; Ghidra working symbol: FUN_004072a1
; Verified role: periodic multimedia-timer callback installed by the Miles
; initializer. It guards reentry and advances the audio pacing counters.
; Generated losslessly; preserve byte identity after edits.

%macro emit_miles_audio_timer_callback_part_00 0
    %%fragment_start:
miles_audio_timer_callback:
    %%insn_004072a1:
    push ebp ; 004072A1 55
    %if ($ - %%insn_004072a1) > 1
        %error "LONG_004072A1"
    %endif
    times 1 - ($ - %%insn_004072a1) db 0
    db 0x8B, 0xEC ; 004072A2 8BEC | mov ebp,esp | encoding preserved
    %%insn_004072a4:
    push dword 0x1 ; 004072A4 6A01
    %if ($ - %%insn_004072a4) > 2
        %error "LONG_004072A4"
    %endif
    times 2 - ($ - %%insn_004072a4) db 0
    %%insn_004072a6:
    push dword 0x421440 ; 004072A6 6840144200
    %if ($ - %%insn_004072a6) > 5
        %error "LONG_004072A6"
    %endif
    times 5 - ($ - %%insn_004072a6) db 0
    %%insn_004072ab:
    call dword near [0x4243b0] ; 004072AB FF15B0434200
    %if ($ - %%insn_004072ab) > 6
        %error "LONG_004072AB"
    %endif
    times 6 - ($ - %%insn_004072ab) db 0
    %%insn_004072b1:
    test eax,eax ; 004072B1 85C0
    %if ($ - %%insn_004072b1) > 2
        %error "LONG_004072B1"
    %endif
    times 2 - ($ - %%insn_004072b1) db 0
    %%insn_004072b3:
    jz short 0x4072b7 ; 004072B3 7402
    %if ($ - %%insn_004072b3) > 2
        %error "LONG_004072B3"
    %endif
    times 2 - ($ - %%insn_004072b3) db 0
    %%insn_004072b5:
    jmp short 0x4072fe ; 004072B5 EB47
    %if ($ - %%insn_004072b5) > 2
        %error "LONG_004072B5"
    %endif
    times 2 - ($ - %%insn_004072b5) db 0
    %%insn_004072b7:
    push dword 0x41f524 ; 004072B7 6824F54100
    %if ($ - %%insn_004072b7) > 5
        %error "LONG_004072B7"
    %endif
    times 5 - ($ - %%insn_004072b7) db 0
    %%insn_004072bc:
    call dword near [0x4243b4] ; 004072BC FF15B4434200
    %if ($ - %%insn_004072bc) > 6
        %error "LONG_004072BC"
    %endif
    times 6 - ($ - %%insn_004072bc) db 0
    %%insn_004072c2:
    mov eax,[0x41f504] ; 004072C2 A104F54100
    %if ($ - %%insn_004072c2) > 5
        %error "LONG_004072C2"
    %endif
    times 5 - ($ - %%insn_004072c2) db 0
    %%insn_004072c7:
    add eax,0x1 ; 004072C7 83C001
    %if ($ - %%insn_004072c7) > 3
        %error "LONG_004072C7"
    %endif
    times 3 - ($ - %%insn_004072c7) db 0
    %%insn_004072ca:
    mov [0x41f504],eax ; 004072CA A304F54100
    %if ($ - %%insn_004072ca) > 5
        %error "LONG_004072CA"
    %endif
    times 5 - ($ - %%insn_004072ca) db 0
    %%insn_004072cf:
    cmp dword [0x41f504],0xf ; 004072CF 833D04F541000F
    %if ($ - %%insn_004072cf) > 7
        %error "LONG_004072CF"
    %endif
    times 7 - ($ - %%insn_004072cf) db 0
    %%insn_004072d6:
    jnz short 0x4072f1 ; 004072D6 7519
    %if ($ - %%insn_004072d6) > 2
        %error "LONG_004072D6"
    %endif
    times 2 - ($ - %%insn_004072d6) db 0
    %%insn_004072d8:
    mov dword [0x41f504],0x0 ; 004072D8 C70504F5410000000000
    %if ($ - %%insn_004072d8) > 10
        %error "LONG_004072D8"
    %endif
    times 10 - ($ - %%insn_004072d8) db 0
    %%insn_004072e2:
    mov ecx,[0x41f508] ; 004072E2 8B0D08F54100
    %if ($ - %%insn_004072e2) > 6
        %error "LONG_004072E2"
    %endif
    times 6 - ($ - %%insn_004072e2) db 0
    %%insn_004072e8:
    add ecx,0x1 ; 004072E8 83C101
    %if ($ - %%insn_004072e8) > 3
        %error "LONG_004072E8"
    %endif
    times 3 - ($ - %%insn_004072e8) db 0
    %%insn_004072eb:
    mov [0x41f508],ecx ; 004072EB 890D08F54100
    %if ($ - %%insn_004072eb) > 6
        %error "LONG_004072EB"
    %endif
    times 6 - ($ - %%insn_004072eb) db 0
    %%insn_004072f1:
    push dword 0x0 ; 004072F1 6A00
    %if ($ - %%insn_004072f1) > 2
        %error "LONG_004072F1"
    %endif
    times 2 - ($ - %%insn_004072f1) db 0
    %%insn_004072f3:
    push dword 0x421440 ; 004072F3 6840144200
    %if ($ - %%insn_004072f3) > 5
        %error "LONG_004072F3"
    %endif
    times 5 - ($ - %%insn_004072f3) db 0
    %%insn_004072f8:
    call dword near [0x4243b0] ; 004072F8 FF15B0434200
    %if ($ - %%insn_004072f8) > 6
        %error "LONG_004072F8"
    %endif
    times 6 - ($ - %%insn_004072f8) db 0
    %%insn_004072fe:
    pop ebp ; 004072FE 5D
    %if ($ - %%insn_004072fe) > 1
        %error "LONG_004072FE"
    %endif
    times 1 - ($ - %%insn_004072fe) db 0
    %%insn_004072ff:
    ret word 0x14 ; 004072FF C21400
    %if ($ - %%insn_004072ff) > 3
        %error "LONG_004072FF"
    %endif
    times 3 - ($ - %%insn_004072ff) db 0
    %if ($ - %%fragment_start) != 97
        %error "function fragment size drift: 004072A1"
    %endif
%endmacro
