; PE virtual entry 0040E2A0
; Ghidra working symbol: FUN_0040e2a0
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040e2a0_part_00 0
    %%fragment_start:
func_0040e2a0:
    %%insn_0040e2a0:
    push ebx ; 0040E2A0 53
    %if ($ - %%insn_0040e2a0) > 1
        %error "LONG_0040E2A0"
    %endif
    times 1 - ($ - %%insn_0040e2a0) db 0
    %%insn_0040e2a1:
    push ebp ; 0040E2A1 55
    %if ($ - %%insn_0040e2a1) > 1
        %error "LONG_0040E2A1"
    %endif
    times 1 - ($ - %%insn_0040e2a1) db 0
    %%insn_0040e2a2:
    push esi ; 0040E2A2 56
    %if ($ - %%insn_0040e2a2) > 1
        %error "LONG_0040E2A2"
    %endif
    times 1 - ($ - %%insn_0040e2a2) db 0
    %%insn_0040e2a3:
    push edi ; 0040E2A3 57
    %if ($ - %%insn_0040e2a3) > 1
        %error "LONG_0040E2A3"
    %endif
    times 1 - ($ - %%insn_0040e2a3) db 0
    %%insn_0040e2a4:
    mov edi,[0x41be64] ; 0040E2A4 8B3D64BE4100
    %if ($ - %%insn_0040e2a4) > 6
        %error "LONG_0040E2A4"
    %endif
    times 6 - ($ - %%insn_0040e2a4) db 0
    %%insn_0040e2aa:
    cmp dword [edi+0x10],0xffffffffffffffff ; 0040E2AA 837F10FF
    %if ($ - %%insn_0040e2aa) > 4
        %error "LONG_0040E2AA"
    %endif
    times 4 - ($ - %%insn_0040e2aa) db 0
    %%insn_0040e2ae:
    jz 0x40e354 ; 0040E2AE 0F84A0000000
    %if ($ - %%insn_0040e2ae) > 6
        %error "LONG_0040E2AE"
    %endif
    times 6 - ($ - %%insn_0040e2ae) db 0
    db 0x33, 0xED ; 0040E2B4 33ED | xor ebp,ebp | encoding preserved
    %%insn_0040e2b6:
    lea esi,[edi+0x2010] ; 0040E2B6 8DB710200000
    %if ($ - %%insn_0040e2b6) > 6
        %error "LONG_0040E2B6"
    %endif
    times 6 - ($ - %%insn_0040e2b6) db 0
    %%insn_0040e2bc:
    mov ebx,0x3ff000 ; 0040E2BC BB00F03F00
    %if ($ - %%insn_0040e2bc) > 5
        %error "LONG_0040E2BC"
    %endif
    times 5 - ($ - %%insn_0040e2bc) db 0
    %%insn_0040e2c1:
    cmp dword [esi],0xf0 ; 0040E2C1 813EF0000000
    %if ($ - %%insn_0040e2c1) > 6
        %error "LONG_0040E2C1"
    %endif
    times 6 - ($ - %%insn_0040e2c1) db 0
    %%insn_0040e2c7:
    jnz short 0x40e310 ; 0040E2C7 7547
    %if ($ - %%insn_0040e2c7) > 2
        %error "LONG_0040E2C7"
    %endif
    times 2 - ($ - %%insn_0040e2c7) db 0
    %%insn_0040e2c9:
    mov eax,[edi+0x10] ; 0040E2C9 8B4710
    %if ($ - %%insn_0040e2c9) > 3
        %error "LONG_0040E2C9"
    %endif
    times 3 - ($ - %%insn_0040e2c9) db 0
    %%insn_0040e2cc:
    push dword 0x4000 ; 0040E2CC 6800400000
    %if ($ - %%insn_0040e2cc) > 5
        %error "LONG_0040E2CC"
    %endif
    times 5 - ($ - %%insn_0040e2cc) db 0
    db 0x03, 0xC3 ; 0040E2D1 03C3 | add eax,ebx | encoding preserved
    %%insn_0040e2d3:
    push dword 0x1000 ; 0040E2D3 6800100000
    %if ($ - %%insn_0040e2d3) > 5
        %error "LONG_0040E2D3"
    %endif
    times 5 - ($ - %%insn_0040e2d3) db 0
    %%insn_0040e2d8:
    push eax ; 0040E2D8 50
    %if ($ - %%insn_0040e2d8) > 1
        %error "LONG_0040E2D8"
    %endif
    times 1 - ($ - %%insn_0040e2d8) db 0
    %%insn_0040e2d9:
    call dword near [0x424404] ; 0040E2D9 FF1504444200
    %if ($ - %%insn_0040e2d9) > 6
        %error "LONG_0040E2D9"
    %endif
    times 6 - ($ - %%insn_0040e2d9) db 0
    %%insn_0040e2df:
    test eax,eax ; 0040E2DF 85C0
    %if ($ - %%insn_0040e2df) > 2
        %error "LONG_0040E2DF"
    %endif
    times 2 - ($ - %%insn_0040e2df) db 0
    %%insn_0040e2e1:
    jz short 0x40e310 ; 0040E2E1 742D
    %if ($ - %%insn_0040e2e1) > 2
        %error "LONG_0040E2E1"
    %endif
    times 2 - ($ - %%insn_0040e2e1) db 0
    %%insn_0040e2e3:
    mov dword [esi],0xffffffff ; 0040E2E3 C706FFFFFFFF
    %if ($ - %%insn_0040e2e3) > 6
        %error "LONG_0040E2E3"
    %endif
    times 6 - ($ - %%insn_0040e2e3) db 0
    %%insn_0040e2e9:
    mov edx,[0x420f08] ; 0040E2E9 8B15080F4200
    %if ($ - %%insn_0040e2e9) > 6
        %error "LONG_0040E2E9"
    %endif
    times 6 - ($ - %%insn_0040e2e9) db 0
    %%insn_0040e2ef:
    dec edx ; 0040E2EF 4A
    %if ($ - %%insn_0040e2ef) > 1
        %error "LONG_0040E2EF"
    %endif
    times 1 - ($ - %%insn_0040e2ef) db 0
    %%insn_0040e2f0:
    mov [0x420f08],edx ; 0040E2F0 8915080F4200
    %if ($ - %%insn_0040e2f0) > 6
        %error "LONG_0040E2F0"
    %endif
    times 6 - ($ - %%insn_0040e2f0) db 0
    %%insn_0040e2f6:
    mov eax,[edi+0xc] ; 0040E2F6 8B470C
    %if ($ - %%insn_0040e2f6) > 3
        %error "LONG_0040E2F6"
    %endif
    times 3 - ($ - %%insn_0040e2f6) db 0
    %%insn_0040e2f9:
    test eax,eax ; 0040E2F9 85C0
    %if ($ - %%insn_0040e2f9) > 2
        %error "LONG_0040E2F9"
    %endif
    times 2 - ($ - %%insn_0040e2f9) db 0
    %%insn_0040e2fb:
    jz short 0x40e301 ; 0040E2FB 7404
    %if ($ - %%insn_0040e2fb) > 2
        %error "LONG_0040E2FB"
    %endif
    times 2 - ($ - %%insn_0040e2fb) db 0
    db 0x3B, 0xC6 ; 0040E2FD 3BC6 | cmp eax,esi | encoding preserved
    %%insn_0040e2ff:
    jna short 0x40e304 ; 0040E2FF 7603
    %if ($ - %%insn_0040e2ff) > 2
        %error "LONG_0040E2FF"
    %endif
    times 2 - ($ - %%insn_0040e2ff) db 0
    %%insn_0040e301:
    mov [edi+0xc],esi ; 0040E301 89770C
    %if ($ - %%insn_0040e301) > 3
        %error "LONG_0040E301"
    %endif
    times 3 - ($ - %%insn_0040e301) db 0
    %%insn_0040e304:
    mov eax,[esp+0x14] ; 0040E304 8B442414
    %if ($ - %%insn_0040e304) > 4
        %error "LONG_0040E304"
    %endif
    times 4 - ($ - %%insn_0040e304) db 0
    %%insn_0040e308:
    inc ebp ; 0040E308 45
    %if ($ - %%insn_0040e308) > 1
        %error "LONG_0040E308"
    %endif
    times 1 - ($ - %%insn_0040e308) db 0
    %%insn_0040e309:
    dec eax ; 0040E309 48
    %if ($ - %%insn_0040e309) > 1
        %error "LONG_0040E309"
    %endif
    times 1 - ($ - %%insn_0040e309) db 0
    %%insn_0040e30a:
    mov [esp+0x14],eax ; 0040E30A 89442414
    %if ($ - %%insn_0040e30a) > 4
        %error "LONG_0040E30A"
    %endif
    times 4 - ($ - %%insn_0040e30a) db 0
    %%insn_0040e30e:
    jz short 0x40e31d ; 0040E30E 740D
    %if ($ - %%insn_0040e30e) > 2
        %error "LONG_0040E30E"
    %endif
    times 2 - ($ - %%insn_0040e30e) db 0
    %%insn_0040e310:
    sub ebx,0x1000 ; 0040E310 81EB00100000
    %if ($ - %%insn_0040e310) > 6
        %error "LONG_0040E310"
    %endif
    times 6 - ($ - %%insn_0040e310) db 0
    %%insn_0040e316:
    sub esi,0x8 ; 0040E316 83EE08
    %if ($ - %%insn_0040e316) > 3
        %error "LONG_0040E316"
    %endif
    times 3 - ($ - %%insn_0040e316) db 0
    %%insn_0040e319:
    test ebx,ebx ; 0040E319 85DB
    %if ($ - %%insn_0040e319) > 2
        %error "LONG_0040E319"
    %endif
    times 2 - ($ - %%insn_0040e319) db 0
    %%insn_0040e31b:
    jnl short 0x40e2c1 ; 0040E31B 7DA4
    %if ($ - %%insn_0040e31b) > 2
        %error "LONG_0040E31B"
    %endif
    times 2 - ($ - %%insn_0040e31b) db 0
    db 0x8B, 0xD7 ; 0040E31D 8BD7 | mov edx,edi | encoding preserved
    %%insn_0040e31f:
    mov edi,[edi+0x4] ; 0040E31F 8B7F04
    %if ($ - %%insn_0040e31f) > 3
        %error "LONG_0040E31F"
    %endif
    times 3 - ($ - %%insn_0040e31f) db 0
    %%insn_0040e322:
    test ebp,ebp ; 0040E322 85ED
    %if ($ - %%insn_0040e322) > 2
        %error "LONG_0040E322"
    %endif
    times 2 - ($ - %%insn_0040e322) db 0
    %%insn_0040e324:
    jz short 0x40e354 ; 0040E324 742E
    %if ($ - %%insn_0040e324) > 2
        %error "LONG_0040E324"
    %endif
    times 2 - ($ - %%insn_0040e324) db 0
    %%insn_0040e326:
    cmp dword [edx+0x18],0xffffffffffffffff ; 0040E326 837A18FF
    %if ($ - %%insn_0040e326) > 4
        %error "LONG_0040E326"
    %endif
    times 4 - ($ - %%insn_0040e326) db 0
    %%insn_0040e32a:
    jnz short 0x40e354 ; 0040E32A 7528
    %if ($ - %%insn_0040e32a) > 2
        %error "LONG_0040E32A"
    %endif
    times 2 - ($ - %%insn_0040e32a) db 0
    %%insn_0040e32c:
    mov eax,0x1 ; 0040E32C B801000000
    %if ($ - %%insn_0040e32c) > 5
        %error "LONG_0040E32C"
    %endif
    times 5 - ($ - %%insn_0040e32c) db 0
    %%insn_0040e331:
    lea ecx,[edx+0x20] ; 0040E331 8D4A20
    %if ($ - %%insn_0040e331) > 3
        %error "LONG_0040E331"
    %endif
    times 3 - ($ - %%insn_0040e331) db 0
    %%insn_0040e334:
    cmp dword [ecx],0xffffffffffffffff ; 0040E334 8339FF
    %if ($ - %%insn_0040e334) > 3
        %error "LONG_0040E334"
    %endif
    times 3 - ($ - %%insn_0040e334) db 0
    %%insn_0040e337:
    jnz short 0x40e344 ; 0040E337 750B
    %if ($ - %%insn_0040e337) > 2
        %error "LONG_0040E337"
    %endif
    times 2 - ($ - %%insn_0040e337) db 0
    %%insn_0040e339:
    inc eax ; 0040E339 40
    %if ($ - %%insn_0040e339) > 1
        %error "LONG_0040E339"
    %endif
    times 1 - ($ - %%insn_0040e339) db 0
    %%insn_0040e33a:
    add ecx,0x8 ; 0040E33A 83C108
    %if ($ - %%insn_0040e33a) > 3
        %error "LONG_0040E33A"
    %endif
    times 3 - ($ - %%insn_0040e33a) db 0
    %%insn_0040e33d:
    cmp eax,0x400 ; 0040E33D 3D00040000
    %if ($ - %%insn_0040e33d) > 5
        %error "LONG_0040E33D"
    %endif
    times 5 - ($ - %%insn_0040e33d) db 0
    %%insn_0040e342:
    jl short 0x40e334 ; 0040E342 7CF0
    %if ($ - %%insn_0040e342) > 2
        %error "LONG_0040E342"
    %endif
    times 2 - ($ - %%insn_0040e342) db 0
    %%insn_0040e344:
    cmp eax,0x400 ; 0040E344 3D00040000
    %if ($ - %%insn_0040e344) > 5
        %error "LONG_0040E344"
    %endif
    times 5 - ($ - %%insn_0040e344) db 0
    %%insn_0040e349:
    jnz short 0x40e354 ; 0040E349 7509
    %if ($ - %%insn_0040e349) > 2
        %error "LONG_0040E349"
    %endif
    times 2 - ($ - %%insn_0040e349) db 0
    %%insn_0040e34b:
    push edx ; 0040E34B 52
    %if ($ - %%insn_0040e34b) > 1
        %error "LONG_0040E34B"
    %endif
    times 1 - ($ - %%insn_0040e34b) db 0
    %%insn_0040e34c:
    call 0x40e240 ; 0040E34C E8EFFEFFFF
    %if ($ - %%insn_0040e34c) > 5
        %error "LONG_0040E34C"
    %endif
    times 5 - ($ - %%insn_0040e34c) db 0
    %%insn_0040e351:
    add esp,0x4 ; 0040E351 83C404
    %if ($ - %%insn_0040e351) > 3
        %error "LONG_0040E351"
    %endif
    times 3 - ($ - %%insn_0040e351) db 0
    %%insn_0040e354:
    cmp edi,[0x41be64] ; 0040E354 3B3D64BE4100
    %if ($ - %%insn_0040e354) > 6
        %error "LONG_0040E354"
    %endif
    times 6 - ($ - %%insn_0040e354) db 0
    %%insn_0040e35a:
    jz short 0x40e368 ; 0040E35A 740C
    %if ($ - %%insn_0040e35a) > 2
        %error "LONG_0040E35A"
    %endif
    times 2 - ($ - %%insn_0040e35a) db 0
    %%insn_0040e35c:
    mov eax,[esp+0x14] ; 0040E35C 8B442414
    %if ($ - %%insn_0040e35c) > 4
        %error "LONG_0040E35C"
    %endif
    times 4 - ($ - %%insn_0040e35c) db 0
    %%insn_0040e360:
    test eax,eax ; 0040E360 85C0
    %if ($ - %%insn_0040e360) > 2
        %error "LONG_0040E360"
    %endif
    times 2 - ($ - %%insn_0040e360) db 0
    %%insn_0040e362:
    jg 0x40e2aa ; 0040E362 0F8F42FFFFFF
    %if ($ - %%insn_0040e362) > 6
        %error "LONG_0040E362"
    %endif
    times 6 - ($ - %%insn_0040e362) db 0
    %%insn_0040e368:
    pop edi ; 0040E368 5F
    %if ($ - %%insn_0040e368) > 1
        %error "LONG_0040E368"
    %endif
    times 1 - ($ - %%insn_0040e368) db 0
    %%insn_0040e369:
    pop esi ; 0040E369 5E
    %if ($ - %%insn_0040e369) > 1
        %error "LONG_0040E369"
    %endif
    times 1 - ($ - %%insn_0040e369) db 0
    %%insn_0040e36a:
    pop ebp ; 0040E36A 5D
    %if ($ - %%insn_0040e36a) > 1
        %error "LONG_0040E36A"
    %endif
    times 1 - ($ - %%insn_0040e36a) db 0
    %%insn_0040e36b:
    pop ebx ; 0040E36B 5B
    %if ($ - %%insn_0040e36b) > 1
        %error "LONG_0040E36B"
    %endif
    times 1 - ($ - %%insn_0040e36b) db 0
    %%insn_0040e36c:
    ret ; 0040E36C C3
    %if ($ - %%insn_0040e36c) > 1
        %error "LONG_0040E36C"
    %endif
    times 1 - ($ - %%insn_0040e36c) db 0
    %if ($ - %%fragment_start) != 205
        %error "function fragment size drift: 0040E2A0"
    %endif
%endmacro
