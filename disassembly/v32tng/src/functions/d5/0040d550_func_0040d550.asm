; PE virtual entry 0040D550
; Ghidra working symbol: FUN_0040d550
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040d550_part_00 0
    %%fragment_start:
func_0040d550:
    %%insn_0040d550:
    sub esp,0x20 ; 0040D550 83EC20
    %if ($ - %%insn_0040d550) > 3
        %error "LONG_0040D550"
    %endif
    times 3 - ($ - %%insn_0040d550) db 0
    %%insn_0040d553:
    mov eax,[esp+0x24] ; 0040D553 8B442424
    %if ($ - %%insn_0040d553) > 4
        %error "LONG_0040D553"
    %endif
    times 4 - ($ - %%insn_0040d553) db 0
    %%insn_0040d557:
    mov ecx,[esp+0x28] ; 0040D557 8B4C2428
    %if ($ - %%insn_0040d557) > 4
        %error "LONG_0040D557"
    %endif
    times 4 - ($ - %%insn_0040d557) db 0
    %%insn_0040d55b:
    mov [esp+0x8],eax ; 0040D55B 89442408
    %if ($ - %%insn_0040d55b) > 4
        %error "LONG_0040D55B"
    %endif
    times 4 - ($ - %%insn_0040d55b) db 0
    db 0x89, 0x44, 0x24, 0x00 ; 0040D55F 89442400 | mov [esp+0x0],eax | encoding preserved
    %%insn_0040d563:
    mov eax,[esp+0x2c] ; 0040D563 8B44242C
    %if ($ - %%insn_0040d563) > 4
        %error "LONG_0040D563"
    %endif
    times 4 - ($ - %%insn_0040d563) db 0
    %%insn_0040d567:
    push esi ; 0040D567 56
    %if ($ - %%insn_0040d567) > 1
        %error "LONG_0040D567"
    %endif
    times 1 - ($ - %%insn_0040d567) db 0
    %%insn_0040d568:
    push eax ; 0040D568 50
    %if ($ - %%insn_0040d568) > 1
        %error "LONG_0040D568"
    %endif
    times 1 - ($ - %%insn_0040d568) db 0
    %%insn_0040d569:
    lea edx,[esp+0x8] ; 0040D569 8D542408
    %if ($ - %%insn_0040d569) > 4
        %error "LONG_0040D569"
    %endif
    times 4 - ($ - %%insn_0040d569) db 0
    %%insn_0040d56d:
    push ecx ; 0040D56D 51
    %if ($ - %%insn_0040d56d) > 1
        %error "LONG_0040D56D"
    %endif
    times 1 - ($ - %%insn_0040d56d) db 0
    %%insn_0040d56e:
    push edx ; 0040D56E 52
    %if ($ - %%insn_0040d56e) > 1
        %error "LONG_0040D56E"
    %endif
    times 1 - ($ - %%insn_0040d56e) db 0
    %%insn_0040d56f:
    mov dword [esp+0x1c],0x42 ; 0040D56F C744241C42000000
    %if ($ - %%insn_0040d56f) > 8
        %error "LONG_0040D56F"
    %endif
    times 8 - ($ - %%insn_0040d56f) db 0
    %%insn_0040d577:
    mov dword [esp+0x14],0x7fffffff ; 0040D577 C7442414FFFFFF7F
    %if ($ - %%insn_0040d577) > 8
        %error "LONG_0040D577"
    %endif
    times 8 - ($ - %%insn_0040d577) db 0
    %%insn_0040d57f:
    call 0x40ebc0 ; 0040D57F E83C160000
    %if ($ - %%insn_0040d57f) > 5
        %error "LONG_0040D57F"
    %endif
    times 5 - ($ - %%insn_0040d57f) db 0
    db 0x8B, 0xF0 ; 0040D584 8BF0 | mov esi,eax | encoding preserved
    %%insn_0040d586:
    mov eax,[esp+0x14] ; 0040D586 8B442414
    %if ($ - %%insn_0040d586) > 4
        %error "LONG_0040D586"
    %endif
    times 4 - ($ - %%insn_0040d586) db 0
    %%insn_0040d58a:
    add esp,0xc ; 0040D58A 83C40C
    %if ($ - %%insn_0040d58a) > 3
        %error "LONG_0040D58A"
    %endif
    times 3 - ($ - %%insn_0040d58a) db 0
    %%insn_0040d58d:
    dec eax ; 0040D58D 48
    %if ($ - %%insn_0040d58d) > 1
        %error "LONG_0040D58D"
    %endif
    times 1 - ($ - %%insn_0040d58d) db 0
    %%insn_0040d58e:
    mov [esp+0x8],eax ; 0040D58E 89442408
    %if ($ - %%insn_0040d58e) > 4
        %error "LONG_0040D58E"
    %endif
    times 4 - ($ - %%insn_0040d58e) db 0
    %%insn_0040d592:
    js short 0x40d5a2 ; 0040D592 780E
    %if ($ - %%insn_0040d592) > 2
        %error "LONG_0040D592"
    %endif
    times 2 - ($ - %%insn_0040d592) db 0
    %%insn_0040d594:
    mov eax,[esp+0x4] ; 0040D594 8B442404
    %if ($ - %%insn_0040d594) > 4
        %error "LONG_0040D594"
    %endif
    times 4 - ($ - %%insn_0040d594) db 0
    %%insn_0040d598:
    mov byte [eax],0x0 ; 0040D598 C60000
    %if ($ - %%insn_0040d598) > 3
        %error "LONG_0040D598"
    %endif
    times 3 - ($ - %%insn_0040d598) db 0
    db 0x8B, 0xC6 ; 0040D59B 8BC6 | mov eax,esi | encoding preserved
    %%insn_0040d59d:
    pop esi ; 0040D59D 5E
    %if ($ - %%insn_0040d59d) > 1
        %error "LONG_0040D59D"
    %endif
    times 1 - ($ - %%insn_0040d59d) db 0
    %%insn_0040d59e:
    add esp,0x20 ; 0040D59E 83C420
    %if ($ - %%insn_0040d59e) > 3
        %error "LONG_0040D59E"
    %endif
    times 3 - ($ - %%insn_0040d59e) db 0
    %%insn_0040d5a1:
    ret ; 0040D5A1 C3
    %if ($ - %%insn_0040d5a1) > 1
        %error "LONG_0040D5A1"
    %endif
    times 1 - ($ - %%insn_0040d5a1) db 0
    %%insn_0040d5a2:
    lea ecx,[esp+0x4] ; 0040D5A2 8D4C2404
    %if ($ - %%insn_0040d5a2) > 4
        %error "LONG_0040D5A2"
    %endif
    times 4 - ($ - %%insn_0040d5a2) db 0
    %%insn_0040d5a6:
    push ecx ; 0040D5A6 51
    %if ($ - %%insn_0040d5a6) > 1
        %error "LONG_0040D5A6"
    %endif
    times 1 - ($ - %%insn_0040d5a6) db 0
    %%insn_0040d5a7:
    push dword 0x0 ; 0040D5A7 6A00
    %if ($ - %%insn_0040d5a7) > 2
        %error "LONG_0040D5A7"
    %endif
    times 2 - ($ - %%insn_0040d5a7) db 0
    %%insn_0040d5a9:
    call 0x40ea90 ; 0040D5A9 E8E2140000
    %if ($ - %%insn_0040d5a9) > 5
        %error "LONG_0040D5A9"
    %endif
    times 5 - ($ - %%insn_0040d5a9) db 0
    %%insn_0040d5ae:
    add esp,0x8 ; 0040D5AE 83C408
    %if ($ - %%insn_0040d5ae) > 3
        %error "LONG_0040D5AE"
    %endif
    times 3 - ($ - %%insn_0040d5ae) db 0
    db 0x8B, 0xC6 ; 0040D5B1 8BC6 | mov eax,esi | encoding preserved
    %%insn_0040d5b3:
    pop esi ; 0040D5B3 5E
    %if ($ - %%insn_0040d5b3) > 1
        %error "LONG_0040D5B3"
    %endif
    times 1 - ($ - %%insn_0040d5b3) db 0
    %%insn_0040d5b4:
    add esp,0x20 ; 0040D5B4 83C420
    %if ($ - %%insn_0040d5b4) > 3
        %error "LONG_0040D5B4"
    %endif
    times 3 - ($ - %%insn_0040d5b4) db 0
    %%insn_0040d5b7:
    ret ; 0040D5B7 C3
    %if ($ - %%insn_0040d5b7) > 1
        %error "LONG_0040D5B7"
    %endif
    times 1 - ($ - %%insn_0040d5b7) db 0
    %if ($ - %%fragment_start) != 104
        %error "function fragment size drift: 0040D550"
    %endif
%endmacro
