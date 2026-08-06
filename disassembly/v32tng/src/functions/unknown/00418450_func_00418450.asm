; PE virtual entry 00418450
; Ghidra working symbol: FUN_00418450
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00418450_part_00 0
    %%fragment_start:
func_00418450:
    %%insn_00418450:
    push ecx ; 00418450 51
    %if ($ - %%insn_00418450) > 1
        %error "LONG_00418450"
    %endif
    times 1 - ($ - %%insn_00418450) db 0
    %%insn_00418451:
    mov eax,[esp+0x8] ; 00418451 8B442408
    %if ($ - %%insn_00418451) > 4
        %error "LONG_00418451"
    %endif
    times 4 - ($ - %%insn_00418451) db 0
    db 0x66, 0x3D, 0xFF, 0xFF ; 00418455 663DFFFF | cmp ax,0xffff | encoding preserved
    %%insn_00418459:
    jz short 0x4184b0 ; 00418459 7455
    %if ($ - %%insn_00418459) > 2
        %error "LONG_00418459"
    %endif
    times 2 - ($ - %%insn_00418459) db 0
    %%insn_0041845b:
    cmp ax,0x100 ; 0041845B 663D0001
    %if ($ - %%insn_0041845b) > 4
        %error "LONG_0041845B"
    %endif
    times 4 - ($ - %%insn_0041845b) db 0
    %%insn_0041845f:
    jnc short 0x418472 ; 0041845F 7311
    %if ($ - %%insn_0041845f) > 2
        %error "LONG_0041845F"
    %endif
    times 2 - ($ - %%insn_0041845f) db 0
    %%insn_00418461:
    mov ecx,[0x41e644] ; 00418461 8B0D44E64100
    %if ($ - %%insn_00418461) > 6
        %error "LONG_00418461"
    %endif
    times 6 - ($ - %%insn_00418461) db 0
    %%insn_00418467:
    and eax,0xffff ; 00418467 25FFFF0000
    %if ($ - %%insn_00418467) > 5
        %error "LONG_00418467"
    %endif
    times 5 - ($ - %%insn_00418467) db 0
    %%insn_0041846c:
    mov cx,[ecx+eax*2] ; 0041846C 668B0C41
    %if ($ - %%insn_0041846c) > 4
        %error "LONG_0041846C"
    %endif
    times 4 - ($ - %%insn_0041846c) db 0
    %%insn_00418470:
    jmp short 0x41849d ; 00418470 EB2B
    %if ($ - %%insn_00418470) > 2
        %error "LONG_00418470"
    %endif
    times 2 - ($ - %%insn_00418470) db 0
    %%insn_00418472:
    mov eax,[0x420f20] ; 00418472 A1200F4200
    %if ($ - %%insn_00418472) > 5
        %error "LONG_00418472"
    %endif
    times 5 - ($ - %%insn_00418472) db 0
    %%insn_00418477:
    test eax,eax ; 00418477 85C0
    %if ($ - %%insn_00418477) > 2
        %error "LONG_00418477"
    %endif
    times 2 - ($ - %%insn_00418477) db 0
    %%insn_00418479:
    jz short 0x4184b0 ; 00418479 7435
    %if ($ - %%insn_00418479) > 2
        %error "LONG_00418479"
    %endif
    times 2 - ($ - %%insn_00418479) db 0
    %%insn_0041847b:
    push dword 0x0 ; 0041847B 6A00
    %if ($ - %%insn_0041847b) > 2
        %error "LONG_0041847B"
    %endif
    times 2 - ($ - %%insn_0041847b) db 0
    %%insn_0041847d:
    lea edx,[esp+0x4] ; 0041847D 8D542404
    %if ($ - %%insn_0041847d) > 4
        %error "LONG_0041847D"
    %endif
    times 4 - ($ - %%insn_0041847d) db 0
    %%insn_00418481:
    push dword 0x0 ; 00418481 6A00
    %if ($ - %%insn_00418481) > 2
        %error "LONG_00418481"
    %endif
    times 2 - ($ - %%insn_00418481) db 0
    %%insn_00418483:
    push edx ; 00418483 52
    %if ($ - %%insn_00418483) > 1
        %error "LONG_00418483"
    %endif
    times 1 - ($ - %%insn_00418483) db 0
    %%insn_00418484:
    lea eax,[esp+0x14] ; 00418484 8D442414
    %if ($ - %%insn_00418484) > 4
        %error "LONG_00418484"
    %endif
    times 4 - ($ - %%insn_00418484) db 0
    %%insn_00418488:
    push dword 0x1 ; 00418488 6A01
    %if ($ - %%insn_00418488) > 2
        %error "LONG_00418488"
    %endif
    times 2 - ($ - %%insn_00418488) db 0
    %%insn_0041848a:
    push eax ; 0041848A 50
    %if ($ - %%insn_0041848a) > 1
        %error "LONG_0041848A"
    %endif
    times 1 - ($ - %%insn_0041848a) db 0
    %%insn_0041848b:
    push dword 0x1 ; 0041848B 6A01
    %if ($ - %%insn_0041848b) > 2
        %error "LONG_0041848B"
    %endif
    times 2 - ($ - %%insn_0041848b) db 0
    %%insn_0041848d:
    call 0x416bb0 ; 0041848D E81EE7FFFF
    %if ($ - %%insn_0041848d) > 5
        %error "LONG_0041848D"
    %endif
    times 5 - ($ - %%insn_0041848d) db 0
    %%insn_00418492:
    add esp,0x18 ; 00418492 83C418
    %if ($ - %%insn_00418492) > 3
        %error "LONG_00418492"
    %endif
    times 3 - ($ - %%insn_00418492) db 0
    %%insn_00418495:
    test eax,eax ; 00418495 85C0
    %if ($ - %%insn_00418495) > 2
        %error "LONG_00418495"
    %endif
    times 2 - ($ - %%insn_00418495) db 0
    %%insn_00418497:
    jz short 0x4184b0 ; 00418497 7417
    %if ($ - %%insn_00418497) > 2
        %error "LONG_00418497"
    %endif
    times 2 - ($ - %%insn_00418497) db 0
    db 0x8B, 0x4C, 0x24, 0x00 ; 00418499 8B4C2400 | mov ecx,[esp+0x0] | encoding preserved
    %%insn_0041849d:
    mov eax,[esp+0xc] ; 0041849D 8B44240C
    %if ($ - %%insn_0041849d) > 4
        %error "LONG_0041849D"
    %endif
    times 4 - ($ - %%insn_0041849d) db 0
    %%insn_004184a1:
    and ecx,0xffff ; 004184A1 81E1FFFF0000
    %if ($ - %%insn_004184a1) > 6
        %error "LONG_004184A1"
    %endif
    times 6 - ($ - %%insn_004184a1) db 0
    %%insn_004184a7:
    and eax,0xffff ; 004184A7 25FFFF0000
    %if ($ - %%insn_004184a7) > 5
        %error "LONG_004184A7"
    %endif
    times 5 - ($ - %%insn_004184a7) db 0
    db 0x23, 0xC1 ; 004184AC 23C1 | and eax,ecx | encoding preserved
    %%insn_004184ae:
    pop ecx ; 004184AE 59
    %if ($ - %%insn_004184ae) > 1
        %error "LONG_004184AE"
    %endif
    times 1 - ($ - %%insn_004184ae) db 0
    %%insn_004184af:
    ret ; 004184AF C3
    %if ($ - %%insn_004184af) > 1
        %error "LONG_004184AF"
    %endif
    times 1 - ($ - %%insn_004184af) db 0
    db 0x33, 0xC0 ; 004184B0 33C0 | xor eax,eax | encoding preserved
    %%insn_004184b2:
    pop ecx ; 004184B2 59
    %if ($ - %%insn_004184b2) > 1
        %error "LONG_004184B2"
    %endif
    times 1 - ($ - %%insn_004184b2) db 0
    %%insn_004184b3:
    ret ; 004184B3 C3
    %if ($ - %%insn_004184b3) > 1
        %error "LONG_004184B3"
    %endif
    times 1 - ($ - %%insn_004184b3) db 0
    %if ($ - %%fragment_start) != 100
        %error "function fragment size drift: 00418450"
    %endif
%endmacro
