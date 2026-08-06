; PE virtual entry 00401202
; Ghidra working symbol: FUN_00401202
; Verified GRV state/variable initialization ending in the initial script.grv load.
; Generated losslessly; preserve byte identity after edits.

%macro emit_initialize_grv_runtime_and_load_script_part_00 0
    %%fragment_start:
initialize_grv_runtime_and_load_script:
    %%insn_00401202:
    push ebp ; 00401202 55
    %if ($ - %%insn_00401202) > 1
        %error "LONG_00401202"
    %endif
    times 1 - ($ - %%insn_00401202) db 0
    db 0x8B, 0xEC ; 00401203 8BEC | mov ebp,esp | encoding preserved
    %%insn_00401205:
    push ecx ; 00401205 51
    %if ($ - %%insn_00401205) > 1
        %error "LONG_00401205"
    %endif
    times 1 - ($ - %%insn_00401205) db 0
    %%insn_00401206:
    mov word [0x41f28c],0x0 ; 00401206 66C7058CF241000000
    %if ($ - %%insn_00401206) > 9
        %error "LONG_00401206"
    %endif
    times 9 - ($ - %%insn_00401206) db 0
    %%insn_0040120f:
    mov dword [0x41f300],0x0 ; 0040120F C70500F3410000000000
    %if ($ - %%insn_0040120f) > 10
        %error "LONG_0040120F"
    %endif
    times 10 - ($ - %%insn_0040120f) db 0
    %%insn_00401219:
    mov dword [0x41f284],0x0 ; 00401219 C70584F2410000000000
    %if ($ - %%insn_00401219) > 10
        %error "LONG_00401219"
    %endif
    times 10 - ($ - %%insn_00401219) db 0
    %%insn_00401223:
    mov dword [0x41f2b8],0x0 ; 00401223 C705B8F2410000000000
    %if ($ - %%insn_00401223) > 10
        %error "LONG_00401223"
    %endif
    times 10 - ($ - %%insn_00401223) db 0
    %%insn_0040122d:
    mov dword [0x41f2a8],0x0 ; 0040122D C705A8F2410000000000
    %if ($ - %%insn_0040122d) > 10
        %error "LONG_0040122D"
    %endif
    times 10 - ($ - %%insn_0040122d) db 0
    %%insn_00401237:
    mov dword [0x41f304],0x0 ; 00401237 C70504F3410000000000
    %if ($ - %%insn_00401237) > 10
        %error "LONG_00401237"
    %endif
    times 10 - ($ - %%insn_00401237) db 0
    %%insn_00401241:
    mov dword [0x41f2e0],0x0 ; 00401241 C705E0F2410000000000
    %if ($ - %%insn_00401241) > 10
        %error "LONG_00401241"
    %endif
    times 10 - ($ - %%insn_00401241) db 0
    %%insn_0040124b:
    mov dword [0x41f2dc],0x0 ; 0040124B C705DCF2410000000000
    %if ($ - %%insn_0040124b) > 10
        %error "LONG_0040124B"
    %endif
    times 10 - ($ - %%insn_0040124b) db 0
    %%insn_00401255:
    mov dword [0x41f2f0],0x0 ; 00401255 C705F0F2410000000000
    %if ($ - %%insn_00401255) > 10
        %error "LONG_00401255"
    %endif
    times 10 - ($ - %%insn_00401255) db 0
    %%insn_0040125f:
    mov dword [0x41f29c],0x0 ; 0040125F C7059CF2410000000000
    %if ($ - %%insn_0040125f) > 10
        %error "LONG_0040125F"
    %endif
    times 10 - ($ - %%insn_0040125f) db 0
    %%insn_00401269:
    mov dword [0x41f2a0],0x0 ; 00401269 C705A0F2410000000000
    %if ($ - %%insn_00401269) > 10
        %error "LONG_00401269"
    %endif
    times 10 - ($ - %%insn_00401269) db 0
    %%insn_00401273:
    mov dword [0x41f2cc],0x0 ; 00401273 C705CCF2410000000000
    %if ($ - %%insn_00401273) > 10
        %error "LONG_00401273"
    %endif
    times 10 - ($ - %%insn_00401273) db 0
    %%insn_0040127d:
    mov dword [0x41f2f8],0x0 ; 0040127D C705F8F2410000000000
    %if ($ - %%insn_0040127d) > 10
        %error "LONG_0040127D"
    %endif
    times 10 - ($ - %%insn_0040127d) db 0
    %%insn_00401287:
    mov dword [0x41f2d4],0x0 ; 00401287 C705D4F2410000000000
    %if ($ - %%insn_00401287) > 10
        %error "LONG_00401287"
    %endif
    times 10 - ($ - %%insn_00401287) db 0
    %%insn_00401291:
    mov dword [0x41f2e8],0xffffffff ; 00401291 C705E8F24100FFFFFFFF
    %if ($ - %%insn_00401291) > 10
        %error "LONG_00401291"
    %endif
    times 10 - ($ - %%insn_00401291) db 0
    %%insn_0040129b:
    mov dword [0x41f2b0],0xffffffff ; 0040129B C705B0F24100FFFFFFFF
    %if ($ - %%insn_0040129b) > 10
        %error "LONG_0040129B"
    %endif
    times 10 - ($ - %%insn_0040129b) db 0
    %%insn_004012a5:
    mov word [0x41f2ac],0x0 ; 004012A5 66C705ACF241000000
    %if ($ - %%insn_004012a5) > 9
        %error "LONG_004012A5"
    %endif
    times 9 - ($ - %%insn_004012a5) db 0
    %%insn_004012ae:
    mov dword [0x41f2c8],0x0 ; 004012AE C705C8F2410000000000
    %if ($ - %%insn_004012ae) > 10
        %error "LONG_004012AE"
    %endif
    times 10 - ($ - %%insn_004012ae) db 0
    %%insn_004012b8:
    mov dword [0x41f2d0],0x0 ; 004012B8 C705D0F2410000000000
    %if ($ - %%insn_004012b8) > 10
        %error "LONG_004012B8"
    %endif
    times 10 - ($ - %%insn_004012b8) db 0
    %%insn_004012c2:
    mov dword [0x41f324],0x0 ; 004012C2 C70524F3410000000000
    %if ($ - %%insn_004012c2) > 10
        %error "LONG_004012C2"
    %endif
    times 10 - ($ - %%insn_004012c2) db 0
    %%insn_004012cc:
    mov dword [0x41f2e4],0x0 ; 004012CC C705E4F2410000000000
    %if ($ - %%insn_004012cc) > 10
        %error "LONG_004012CC"
    %endif
    times 10 - ($ - %%insn_004012cc) db 0
    %%insn_004012d6:
    mov dword [0x41f2f4],0x0 ; 004012D6 C705F4F2410000000000
    %if ($ - %%insn_004012d6) > 10
        %error "LONG_004012D6"
    %endif
    times 10 - ($ - %%insn_004012d6) db 0
    %%insn_004012e0:
    mov dword [0x41f294],0x0 ; 004012E0 C70594F2410000000000
    %if ($ - %%insn_004012e0) > 10
        %error "LONG_004012E0"
    %endif
    times 10 - ($ - %%insn_004012e0) db 0
    %%insn_004012ea:
    call 0x401000 ; 004012EA E811FDFFFF
    %if ($ - %%insn_004012ea) > 5
        %error "LONG_004012EA"
    %endif
    times 5 - ($ - %%insn_004012ea) db 0
    %%insn_004012ef:
    push dword 0x40 ; 004012EF 6A40
    %if ($ - %%insn_004012ef) > 2
        %error "LONG_004012EF"
    %endif
    times 2 - ($ - %%insn_004012ef) db 0
    %%insn_004012f1:
    call 0x40cdc0 ; 004012F1 E8CABA0000
    %if ($ - %%insn_004012f1) > 5
        %error "LONG_004012F1"
    %endif
    times 5 - ($ - %%insn_004012f1) db 0
    %%insn_004012f6:
    add esp,0x4 ; 004012F6 83C404
    %if ($ - %%insn_004012f6) > 3
        %error "LONG_004012F6"
    %endif
    times 3 - ($ - %%insn_004012f6) db 0
    %%insn_004012f9:
    mov [0x41f304],eax ; 004012F9 A304F34100
    %if ($ - %%insn_004012f9) > 5
        %error "LONG_004012F9"
    %endif
    times 5 - ($ - %%insn_004012f9) db 0
    %%insn_004012fe:
    push dword 0x400 ; 004012FE 6800040000
    %if ($ - %%insn_004012fe) > 5
        %error "LONG_004012FE"
    %endif
    times 5 - ($ - %%insn_004012fe) db 0
    %%insn_00401303:
    call 0x40cdc0 ; 00401303 E8B8BA0000
    %if ($ - %%insn_00401303) > 5
        %error "LONG_00401303"
    %endif
    times 5 - ($ - %%insn_00401303) db 0
    %%insn_00401308:
    add esp,0x4 ; 00401308 83C404
    %if ($ - %%insn_00401308) > 3
        %error "LONG_00401308"
    %endif
    times 3 - ($ - %%insn_00401308) db 0
    %%insn_0040130b:
    mov [0x41f2b8],eax ; 0040130B A3B8F24100
    %if ($ - %%insn_0040130b) > 5
        %error "LONG_0040130B"
    %endif
    times 5 - ($ - %%insn_0040130b) db 0
    %%insn_00401310:
    push dword 0x180 ; 00401310 6880010000
    %if ($ - %%insn_00401310) > 5
        %error "LONG_00401310"
    %endif
    times 5 - ($ - %%insn_00401310) db 0
    %%insn_00401315:
    call 0x40cdc0 ; 00401315 E8A6BA0000
    %if ($ - %%insn_00401315) > 5
        %error "LONG_00401315"
    %endif
    times 5 - ($ - %%insn_00401315) db 0
    %%insn_0040131a:
    add esp,0x4 ; 0040131A 83C404
    %if ($ - %%insn_0040131a) > 3
        %error "LONG_0040131A"
    %endif
    times 3 - ($ - %%insn_0040131a) db 0
    %%insn_0040131d:
    mov [0x41f2ec],eax ; 0040131D A3ECF24100
    %if ($ - %%insn_0040131d) > 5
        %error "LONG_0040131D"
    %endif
    times 5 - ($ - %%insn_0040131d) db 0
    %%insn_00401322:
    push dword 0x4000 ; 00401322 6800400000
    %if ($ - %%insn_00401322) > 5
        %error "LONG_00401322"
    %endif
    times 5 - ($ - %%insn_00401322) db 0
    %%insn_00401327:
    call 0x40cdc0 ; 00401327 E894BA0000
    %if ($ - %%insn_00401327) > 5
        %error "LONG_00401327"
    %endif
    times 5 - ($ - %%insn_00401327) db 0
    %%insn_0040132c:
    add esp,0x4 ; 0040132C 83C404
    %if ($ - %%insn_0040132c) > 3
        %error "LONG_0040132C"
    %endif
    times 3 - ($ - %%insn_0040132c) db 0
    %%insn_0040132f:
    mov [0x41f2a4],eax ; 0040132F A3A4F24100
    %if ($ - %%insn_0040132f) > 5
        %error "LONG_0040132F"
    %endif
    times 5 - ($ - %%insn_0040132f) db 0
    %%insn_00401334:
    mov dword [ebp-0x4],0x0 ; 00401334 C745FC00000000
    %if ($ - %%insn_00401334) > 7
        %error "LONG_00401334"
    %endif
    times 7 - ($ - %%insn_00401334) db 0
    %%insn_0040133b:
    jmp short 0x401346 ; 0040133B EB09
    %if ($ - %%insn_0040133b) > 2
        %error "LONG_0040133B"
    %endif
    times 2 - ($ - %%insn_0040133b) db 0
    %%insn_0040133d:
    mov eax,[ebp-0x4] ; 0040133D 8B45FC
    %if ($ - %%insn_0040133d) > 3
        %error "LONG_0040133D"
    %endif
    times 3 - ($ - %%insn_0040133d) db 0
    %%insn_00401340:
    add eax,0x1 ; 00401340 83C001
    %if ($ - %%insn_00401340) > 3
        %error "LONG_00401340"
    %endif
    times 3 - ($ - %%insn_00401340) db 0
    %%insn_00401343:
    mov [ebp-0x4],eax ; 00401343 8945FC
    %if ($ - %%insn_00401343) > 3
        %error "LONG_00401343"
    %endif
    times 3 - ($ - %%insn_00401343) db 0
    %%insn_00401346:
    cmp dword [ebp-0x4],0x400 ; 00401346 817DFC00040000
    %if ($ - %%insn_00401346) > 7
        %error "LONG_00401346"
    %endif
    times 7 - ($ - %%insn_00401346) db 0
    %%insn_0040134d:
    jnl short 0x40135d ; 0040134D 7D0E
    %if ($ - %%insn_0040134d) > 2
        %error "LONG_0040134D"
    %endif
    times 2 - ($ - %%insn_0040134d) db 0
    %%insn_0040134f:
    mov ecx,[0x41f2b8] ; 0040134F 8B0DB8F24100
    %if ($ - %%insn_0040134f) > 6
        %error "LONG_0040134F"
    %endif
    times 6 - ($ - %%insn_0040134f) db 0
    %%insn_00401355:
    add ecx,[ebp-0x4] ; 00401355 034DFC
    %if ($ - %%insn_00401355) > 3
        %error "LONG_00401355"
    %endif
    times 3 - ($ - %%insn_00401355) db 0
    %%insn_00401358:
    mov byte [ecx],0x0 ; 00401358 C60100
    %if ($ - %%insn_00401358) > 3
        %error "LONG_00401358"
    %endif
    times 3 - ($ - %%insn_00401358) db 0
    %%insn_0040135b:
    jmp short 0x40133d ; 0040135B EBE0
    %if ($ - %%insn_0040135b) > 2
        %error "LONG_0040135B"
    %endif
    times 2 - ($ - %%insn_0040135b) db 0
    %%insn_0040135d:
    push dword 0x41b0fc ; 0040135D 68FCB04100
    %if ($ - %%insn_0040135d) > 5
        %error "LONG_0040135D"
    %endif
    times 5 - ($ - %%insn_0040135d) db 0
    %%insn_00401362:
    call 0x4011a3 ; 00401362 E83CFEFFFF
    %if ($ - %%insn_00401362) > 5
        %error "LONG_00401362"
    %endif
    times 5 - ($ - %%insn_00401362) db 0
    %%insn_00401367:
    add esp,0x4 ; 00401367 83C404
    %if ($ - %%insn_00401367) > 3
        %error "LONG_00401367"
    %endif
    times 3 - ($ - %%insn_00401367) db 0
    db 0x8B, 0xE5 ; 0040136A 8BE5 | mov esp,ebp | encoding preserved
    %%insn_0040136c:
    pop ebp ; 0040136C 5D
    %if ($ - %%insn_0040136c) > 1
        %error "LONG_0040136C"
    %endif
    times 1 - ($ - %%insn_0040136c) db 0
    %%insn_0040136d:
    ret ; 0040136D C3
    %if ($ - %%insn_0040136d) > 1
        %error "LONG_0040136D"
    %endif
    times 1 - ($ - %%insn_0040136d) db 0
    %if ($ - %%fragment_start) != 364
        %error "function fragment size drift: 00401202"
    %endif
%endmacro
