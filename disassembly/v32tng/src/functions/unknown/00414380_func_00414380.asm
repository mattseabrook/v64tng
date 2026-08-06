; PE virtual entry 00414380
; Ghidra working symbol: _strcspn
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00414380_part_00 0
    %%fragment_start:
func_00414380:
    %%insn_00414380:
    push ebp ; 00414380 55
    %if ($ - %%insn_00414380) > 1
        %error "LONG_00414380"
    %endif
    times 1 - ($ - %%insn_00414380) db 0
    db 0x8B, 0xEC ; 00414381 8BEC | mov ebp,esp | encoding preserved
    %%insn_00414383:
    push esi ; 00414383 56
    %if ($ - %%insn_00414383) > 1
        %error "LONG_00414383"
    %endif
    times 1 - ($ - %%insn_00414383) db 0
    db 0x33, 0xC0 ; 00414384 33C0 | xor eax,eax | encoding preserved
    %%insn_00414386:
    push eax ; 00414386 50
    %if ($ - %%insn_00414386) > 1
        %error "LONG_00414386"
    %endif
    times 1 - ($ - %%insn_00414386) db 0
    %%insn_00414387:
    push eax ; 00414387 50
    %if ($ - %%insn_00414387) > 1
        %error "LONG_00414387"
    %endif
    times 1 - ($ - %%insn_00414387) db 0
    %%insn_00414388:
    push eax ; 00414388 50
    %if ($ - %%insn_00414388) > 1
        %error "LONG_00414388"
    %endif
    times 1 - ($ - %%insn_00414388) db 0
    %%insn_00414389:
    push eax ; 00414389 50
    %if ($ - %%insn_00414389) > 1
        %error "LONG_00414389"
    %endif
    times 1 - ($ - %%insn_00414389) db 0
    %%insn_0041438a:
    push eax ; 0041438A 50
    %if ($ - %%insn_0041438a) > 1
        %error "LONG_0041438A"
    %endif
    times 1 - ($ - %%insn_0041438a) db 0
    %%insn_0041438b:
    push eax ; 0041438B 50
    %if ($ - %%insn_0041438b) > 1
        %error "LONG_0041438B"
    %endif
    times 1 - ($ - %%insn_0041438b) db 0
    %%insn_0041438c:
    push eax ; 0041438C 50
    %if ($ - %%insn_0041438c) > 1
        %error "LONG_0041438C"
    %endif
    times 1 - ($ - %%insn_0041438c) db 0
    %%insn_0041438d:
    push eax ; 0041438D 50
    %if ($ - %%insn_0041438d) > 1
        %error "LONG_0041438D"
    %endif
    times 1 - ($ - %%insn_0041438d) db 0
    %%insn_0041438e:
    mov edx,[ebp+0xc] ; 0041438E 8B550C
    %if ($ - %%insn_0041438e) > 3
        %error "LONG_0041438E"
    %endif
    times 3 - ($ - %%insn_0041438e) db 0
    db 0x2E, 0x8B, 0xC0 ; 00414391 2E8BC0 | cs mov eax,eax | encoding preserved
    %%insn_00414394:
    mov al,[edx] ; 00414394 8A02
    %if ($ - %%insn_00414394) > 2
        %error "LONG_00414394"
    %endif
    times 2 - ($ - %%insn_00414394) db 0
    db 0x0A, 0xC0 ; 00414396 0AC0 | or al,al | encoding preserved
    %%insn_00414398:
    jz short 0x4143a1 ; 00414398 7407
    %if ($ - %%insn_00414398) > 2
        %error "LONG_00414398"
    %endif
    times 2 - ($ - %%insn_00414398) db 0
    %%insn_0041439a:
    inc edx ; 0041439A 42
    %if ($ - %%insn_0041439a) > 1
        %error "LONG_0041439A"
    %endif
    times 1 - ($ - %%insn_0041439a) db 0
    %%insn_0041439b:
    bts [esp],eax ; 0041439B 0FAB0424
    %if ($ - %%insn_0041439b) > 4
        %error "LONG_0041439B"
    %endif
    times 4 - ($ - %%insn_0041439b) db 0
    %%insn_0041439f:
    jmp short 0x414394 ; 0041439F EBF3
    %if ($ - %%insn_0041439f) > 2
        %error "LONG_0041439F"
    %endif
    times 2 - ($ - %%insn_0041439f) db 0
    %%insn_004143a1:
    mov esi,[ebp+0x8] ; 004143A1 8B7508
    %if ($ - %%insn_004143a1) > 3
        %error "LONG_004143A1"
    %endif
    times 3 - ($ - %%insn_004143a1) db 0
    %%insn_004143a4:
    or ecx,0xffffffffffffffff ; 004143A4 83C9FF
    %if ($ - %%insn_004143a4) > 3
        %error "LONG_004143A4"
    %endif
    times 3 - ($ - %%insn_004143a4) db 0
    %%insn_004143a7:
    nop ; 004143A7 90
    %if ($ - %%insn_004143a7) > 1
        %error "LONG_004143A7"
    %endif
    times 1 - ($ - %%insn_004143a7) db 0
    %%insn_004143a8:
    inc ecx ; 004143A8 41
    %if ($ - %%insn_004143a8) > 1
        %error "LONG_004143A8"
    %endif
    times 1 - ($ - %%insn_004143a8) db 0
    %%insn_004143a9:
    mov al,[esi] ; 004143A9 8A06
    %if ($ - %%insn_004143a9) > 2
        %error "LONG_004143A9"
    %endif
    times 2 - ($ - %%insn_004143a9) db 0
    db 0x0A, 0xC0 ; 004143AB 0AC0 | or al,al | encoding preserved
    %%insn_004143ad:
    jz short 0x4143b6 ; 004143AD 7407
    %if ($ - %%insn_004143ad) > 2
        %error "LONG_004143AD"
    %endif
    times 2 - ($ - %%insn_004143ad) db 0
    %%insn_004143af:
    inc esi ; 004143AF 46
    %if ($ - %%insn_004143af) > 1
        %error "LONG_004143AF"
    %endif
    times 1 - ($ - %%insn_004143af) db 0
    %%insn_004143b0:
    bt [esp],eax ; 004143B0 0FA30424
    %if ($ - %%insn_004143b0) > 4
        %error "LONG_004143B0"
    %endif
    times 4 - ($ - %%insn_004143b0) db 0
    %%insn_004143b4:
    jnc short 0x4143a8 ; 004143B4 73F2
    %if ($ - %%insn_004143b4) > 2
        %error "LONG_004143B4"
    %endif
    times 2 - ($ - %%insn_004143b4) db 0
    db 0x8B, 0xC1 ; 004143B6 8BC1 | mov eax,ecx | encoding preserved
    %%insn_004143b8:
    add esp,0x20 ; 004143B8 83C420
    %if ($ - %%insn_004143b8) > 3
        %error "LONG_004143B8"
    %endif
    times 3 - ($ - %%insn_004143b8) db 0
    %%insn_004143bb:
    pop esi ; 004143BB 5E
    %if ($ - %%insn_004143bb) > 1
        %error "LONG_004143BB"
    %endif
    times 1 - ($ - %%insn_004143bb) db 0
    %%insn_004143bc:
    leave ; 004143BC C9
    %if ($ - %%insn_004143bc) > 1
        %error "LONG_004143BC"
    %endif
    times 1 - ($ - %%insn_004143bc) db 0
    %%insn_004143bd:
    ret ; 004143BD C3
    %if ($ - %%insn_004143bd) > 1
        %error "LONG_004143BD"
    %endif
    times 1 - ($ - %%insn_004143bd) db 0
    %if ($ - %%fragment_start) != 62
        %error "function fragment size drift: 00414380"
    %endif
%endmacro
