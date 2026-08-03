; PE virtual entry 004183D0
; Ghidra working symbol: FUN_004183d0
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_004183d0_part_00 0
    %%fragment_start:
func_004183d0:
    %%insn_004183d0:
    push ecx ; 004183D0 51
    %if ($ - %%insn_004183d0) > 1
        %error "LONG_004183D0"
    %endif
    times 1 - ($ - %%insn_004183d0) db 0
    %%insn_004183d1:
    mov eax,[esp+0x8] ; 004183D1 8B442408
    %if ($ - %%insn_004183d1) > 4
        %error "LONG_004183D1"
    %endif
    times 4 - ($ - %%insn_004183d1) db 0
    db 0x66, 0x3D, 0xFF, 0xFF ; 004183D5 663DFFFF | cmp ax,0xffff | encoding preserved
    %%insn_004183d9:
    jnz short 0x4183e0 ; 004183D9 7505
    %if ($ - %%insn_004183d9) > 2
        %error "LONG_004183D9"
    %endif
    times 2 - ($ - %%insn_004183d9) db 0
    db 0x66, 0x0B, 0xC0 ; 004183DB 660BC0 | or ax,ax | encoding preserved
    %%insn_004183de:
    pop ecx ; 004183DE 59
    %if ($ - %%insn_004183de) > 1
        %error "LONG_004183DE"
    %endif
    times 1 - ($ - %%insn_004183de) db 0
    %%insn_004183df:
    ret ; 004183DF C3
    %if ($ - %%insn_004183df) > 1
        %error "LONG_004183DF"
    %endif
    times 1 - ($ - %%insn_004183df) db 0
    %%insn_004183e0:
    mov ecx,[0x420f20] ; 004183E0 8B0D200F4200
    %if ($ - %%insn_004183e0) > 6
        %error "LONG_004183E0"
    %endif
    times 6 - ($ - %%insn_004183e0) db 0
    %%insn_004183e6:
    test ecx,ecx ; 004183E6 85C9
    %if ($ - %%insn_004183e6) > 2
        %error "LONG_004183E6"
    %endif
    times 2 - ($ - %%insn_004183e6) db 0
    %%insn_004183e8:
    jnz short 0x4183fd ; 004183E8 7513
    %if ($ - %%insn_004183e8) > 2
        %error "LONG_004183E8"
    %endif
    times 2 - ($ - %%insn_004183e8) db 0
    db 0x66, 0x3D, 0x61, 0x00 ; 004183EA 663D6100 | cmp ax,0x61 | encoding preserved
    %%insn_004183ee:
    jc short 0x41844b ; 004183EE 725B
    %if ($ - %%insn_004183ee) > 2
        %error "LONG_004183EE"
    %endif
    times 2 - ($ - %%insn_004183ee) db 0
    db 0x66, 0x3D, 0x7A, 0x00 ; 004183F0 663D7A00 | cmp ax,0x7a | encoding preserved
    %%insn_004183f4:
    ja short 0x41844b ; 004183F4 7755
    %if ($ - %%insn_004183f4) > 2
        %error "LONG_004183F4"
    %endif
    times 2 - ($ - %%insn_004183f4) db 0
    %%insn_004183f6:
    add eax,0xffe0 ; 004183F6 05E0FF0000
    %if ($ - %%insn_004183f6) > 5
        %error "LONG_004183F6"
    %endif
    times 5 - ($ - %%insn_004183f6) db 0
    %%insn_004183fb:
    pop ecx ; 004183FB 59
    %if ($ - %%insn_004183fb) > 1
        %error "LONG_004183FB"
    %endif
    times 1 - ($ - %%insn_004183fb) db 0
    %%insn_004183fc:
    ret ; 004183FC C3
    %if ($ - %%insn_004183fc) > 1
        %error "LONG_004183FC"
    %endif
    times 1 - ($ - %%insn_004183fc) db 0
    %%insn_004183fd:
    cmp ax,0x100 ; 004183FD 663D0001
    %if ($ - %%insn_004183fd) > 4
        %error "LONG_004183FD"
    %endif
    times 4 - ($ - %%insn_004183fd) db 0
    %%insn_00418401:
    jnc short 0x418419 ; 00418401 7316
    %if ($ - %%insn_00418401) > 2
        %error "LONG_00418401"
    %endif
    times 2 - ($ - %%insn_00418401) db 0
    %%insn_00418403:
    push dword 0x2 ; 00418403 6A02
    %if ($ - %%insn_00418403) > 2
        %error "LONG_00418403"
    %endif
    times 2 - ($ - %%insn_00418403) db 0
    %%insn_00418405:
    push eax ; 00418405 50
    %if ($ - %%insn_00418405) > 1
        %error "LONG_00418405"
    %endif
    times 1 - ($ - %%insn_00418405) db 0
    %%insn_00418406:
    call 0x418450 ; 00418406 E845000000
    %if ($ - %%insn_00418406) > 5
        %error "LONG_00418406"
    %endif
    times 5 - ($ - %%insn_00418406) db 0
    %%insn_0041840b:
    add esp,0x8 ; 0041840B 83C408
    %if ($ - %%insn_0041840b) > 3
        %error "LONG_0041840B"
    %endif
    times 3 - ($ - %%insn_0041840b) db 0
    %%insn_0041840e:
    test eax,eax ; 0041840E 85C0
    %if ($ - %%insn_0041840e) > 2
        %error "LONG_0041840E"
    %endif
    times 2 - ($ - %%insn_0041840e) db 0
    %%insn_00418410:
    jnz short 0x418419 ; 00418410 7507
    %if ($ - %%insn_00418410) > 2
        %error "LONG_00418410"
    %endif
    times 2 - ($ - %%insn_00418410) db 0
    %%insn_00418412:
    mov ax,[esp+0x8] ; 00418412 668B442408
    %if ($ - %%insn_00418412) > 5
        %error "LONG_00418412"
    %endif
    times 5 - ($ - %%insn_00418412) db 0
    %%insn_00418417:
    pop ecx ; 00418417 59
    %if ($ - %%insn_00418417) > 1
        %error "LONG_00418417"
    %endif
    times 1 - ($ - %%insn_00418417) db 0
    %%insn_00418418:
    ret ; 00418418 C3
    %if ($ - %%insn_00418418) > 1
        %error "LONG_00418418"
    %endif
    times 1 - ($ - %%insn_00418418) db 0
    %%insn_00418419:
    mov edx,[0x420f20] ; 00418419 8B15200F4200
    %if ($ - %%insn_00418419) > 6
        %error "LONG_00418419"
    %endif
    times 6 - ($ - %%insn_00418419) db 0
    %%insn_0041841f:
    push dword 0x0 ; 0041841F 6A00
    %if ($ - %%insn_0041841f) > 2
        %error "LONG_0041841F"
    %endif
    times 2 - ($ - %%insn_0041841f) db 0
    %%insn_00418421:
    lea eax,[esp+0x6] ; 00418421 8D442406
    %if ($ - %%insn_00418421) > 4
        %error "LONG_00418421"
    %endif
    times 4 - ($ - %%insn_00418421) db 0
    %%insn_00418425:
    push dword 0x1 ; 00418425 6A01
    %if ($ - %%insn_00418425) > 2
        %error "LONG_00418425"
    %endif
    times 2 - ($ - %%insn_00418425) db 0
    %%insn_00418427:
    push eax ; 00418427 50
    %if ($ - %%insn_00418427) > 1
        %error "LONG_00418427"
    %endif
    times 1 - ($ - %%insn_00418427) db 0
    %%insn_00418428:
    lea ecx,[esp+0x14] ; 00418428 8D4C2414
    %if ($ - %%insn_00418428) > 4
        %error "LONG_00418428"
    %endif
    times 4 - ($ - %%insn_00418428) db 0
    %%insn_0041842c:
    push dword 0x1 ; 0041842C 6A01
    %if ($ - %%insn_0041842c) > 2
        %error "LONG_0041842C"
    %endif
    times 2 - ($ - %%insn_0041842c) db 0
    %%insn_0041842e:
    push ecx ; 0041842E 51
    %if ($ - %%insn_0041842e) > 1
        %error "LONG_0041842E"
    %endif
    times 1 - ($ - %%insn_0041842e) db 0
    %%insn_0041842f:
    push dword 0x200 ; 0041842F 6800020000
    %if ($ - %%insn_0041842f) > 5
        %error "LONG_0041842F"
    %endif
    times 5 - ($ - %%insn_0041842f) db 0
    %%insn_00418434:
    push edx ; 00418434 52
    %if ($ - %%insn_00418434) > 1
        %error "LONG_00418434"
    %endif
    times 1 - ($ - %%insn_00418434) db 0
    %%insn_00418435:
    call 0x414900 ; 00418435 E8C6C4FFFF
    %if ($ - %%insn_00418435) > 5
        %error "LONG_00418435"
    %endif
    times 5 - ($ - %%insn_00418435) db 0
    %%insn_0041843a:
    add esp,0x1c ; 0041843A 83C41C
    %if ($ - %%insn_0041843a) > 3
        %error "LONG_0041843A"
    %endif
    times 3 - ($ - %%insn_0041843a) db 0
    %%insn_0041843d:
    test eax,eax ; 0041843D 85C0
    %if ($ - %%insn_0041843d) > 2
        %error "LONG_0041843D"
    %endif
    times 2 - ($ - %%insn_0041843d) db 0
    %%insn_0041843f:
    mov ax,[esp+0x8] ; 0041843F 668B442408
    %if ($ - %%insn_0041843f) > 5
        %error "LONG_0041843F"
    %endif
    times 5 - ($ - %%insn_0041843f) db 0
    %%insn_00418444:
    jz short 0x41844b ; 00418444 7405
    %if ($ - %%insn_00418444) > 2
        %error "LONG_00418444"
    %endif
    times 2 - ($ - %%insn_00418444) db 0
    %%insn_00418446:
    mov ax,[esp+0x2] ; 00418446 668B442402
    %if ($ - %%insn_00418446) > 5
        %error "LONG_00418446"
    %endif
    times 5 - ($ - %%insn_00418446) db 0
    %%insn_0041844b:
    pop ecx ; 0041844B 59
    %if ($ - %%insn_0041844b) > 1
        %error "LONG_0041844B"
    %endif
    times 1 - ($ - %%insn_0041844b) db 0
    %%insn_0041844c:
    ret ; 0041844C C3
    %if ($ - %%insn_0041844c) > 1
        %error "LONG_0041844C"
    %endif
    times 1 - ($ - %%insn_0041844c) db 0
    %if ($ - %%fragment_start) != 125
        %error "function fragment size drift: 004183D0"
    %endif
%endmacro
