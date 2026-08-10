; PE virtual entry 004021D1
; Ghidra working symbol: FUN_004021d1
; Verified central GRV bytecode interpreter and opcode dispatcher.
; RET (17h) writes its immediate byte to v[102h] before popping the call stack.
; LOADSTRING_INDIRECT (33h) dereferences pointerVar and subtracts 31h before decoding into the destination.
; VIDEOREF is synchronous: 03h/05h/06h/07h/0Ah stage bits 9/8/6/7/5, 09h resolves and plays one VDX, then transient flags clear.
; SCRIPT.GRV uses bit 5 to discard an overlay still and composite its deltas over the held background; interleaved sound remains part of that playback.
; Trace 20260809-164423 runtime-verified the no-save boot, exact Zaphod state machine/rate-15 groovie.vdx response, hidden-map hotspot installation, and normal YES-to-quit path.
; Trace 20260809-170739 runtime-verified GETCD=1, the Start-New PLAYCD 02 path, synchronous vielogo.vdx prelude, and re-executed Red Book request.
; Trace 20260809-180432 runtime-verified a nonzero data-disc device handle with zero track-2 bounds, continued execution, and the complete intro resource sequence.
; Generated losslessly; preserve byte identity after edits.

%macro emit_run_grv_vm_part_00 0
    %%fragment_start:
run_grv_vm:
    %%insn_004021d1:
    push ebp ; 004021D1 55
    %if ($ - %%insn_004021d1) > 1
        %error "LONG_004021D1"
    %endif
    times 1 - ($ - %%insn_004021d1) db 0
    db 0x8B, 0xEC ; 004021D2 8BEC | mov ebp,esp | encoding preserved
    %%insn_004021d4:
    sub esp,0x14c ; 004021D4 81EC4C010000
    %if ($ - %%insn_004021d4) > 6
        %error "LONG_004021D4"
    %endif
    times 6 - ($ - %%insn_004021d4) db 0
    %%insn_004021da:
    push esi ; 004021DA 56
    %if ($ - %%insn_004021da) > 1
        %error "LONG_004021DA"
    %endif
    times 1 - ($ - %%insn_004021da) db 0
    %%insn_004021db:
    mov eax,[0x41f284] ; 004021DB A184F24100
    %if ($ - %%insn_004021db) > 5
        %error "LONG_004021DB"
    %endif
    times 5 - ($ - %%insn_004021db) db 0
    %%insn_004021e0:
    add eax,[0x41f300] ; 004021E0 030500F34100
    %if ($ - %%insn_004021e0) > 6
        %error "LONG_004021E0"
    %endif
    times 6 - ($ - %%insn_004021e0) db 0
    db 0x33, 0xC9 ; 004021E6 33C9 | xor ecx,ecx | encoding preserved
    %%insn_004021e8:
    mov cl,[eax] ; 004021E8 8A08
    %if ($ - %%insn_004021e8) > 2
        %error "LONG_004021E8"
    %endif
    times 2 - ($ - %%insn_004021e8) db 0
    %%insn_004021ea:
    and ecx,0x80 ; 004021EA 81E180000000
    %if ($ - %%insn_004021ea) > 6
        %error "LONG_004021EA"
    %endif
    times 6 - ($ - %%insn_004021ea) db 0
    %%insn_004021f0:
    test ecx,ecx ; 004021F0 85C9
    %if ($ - %%insn_004021f0) > 2
        %error "LONG_004021F0"
    %endif
    times 2 - ($ - %%insn_004021f0) db 0
    %%insn_004021f2:
    jz short 0x4021ff ; 004021F2 740B
    %if ($ - %%insn_004021f2) > 2
        %error "LONG_004021F2"
    %endif
    times 2 - ($ - %%insn_004021f2) db 0
    %%insn_004021f4:
    mov word [ebp-0x124],0x1 ; 004021F4 66C785DCFEFFFF0100
    %if ($ - %%insn_004021f4) > 9
        %error "LONG_004021F4"
    %endif
    times 9 - ($ - %%insn_004021f4) db 0
    %%insn_004021fd:
    jmp short 0x402208 ; 004021FD EB09
    %if ($ - %%insn_004021fd) > 2
        %error "LONG_004021FD"
    %endif
    times 2 - ($ - %%insn_004021fd) db 0
    %%insn_004021ff:
    mov word [ebp-0x124],0x0 ; 004021FF 66C785DCFEFFFF0000
    %if ($ - %%insn_004021ff) > 9
        %error "LONG_004021FF"
    %endif
    times 9 - ($ - %%insn_004021ff) db 0
    db 0x33, 0xD2 ; 00402208 33D2 | xor edx,edx | encoding preserved
    %%insn_0040220a:
    mov dx,[0x41f328] ; 0040220A 668B1528F34100
    %if ($ - %%insn_0040220a) > 7
        %error "LONG_0040220A"
    %endif
    times 7 - ($ - %%insn_0040220a) db 0
    %%insn_00402211:
    test edx,edx ; 00402211 85D2
    %if ($ - %%insn_00402211) > 2
        %error "LONG_00402211"
    %endif
    times 2 - ($ - %%insn_00402211) db 0
    %%insn_00402213:
    jnz short 0x40221a ; 00402213 7505
    %if ($ - %%insn_00402213) > 2
        %error "LONG_00402213"
    %endif
    times 2 - ($ - %%insn_00402213) db 0
    %%insn_00402215:
    call 0x409503 ; 00402215 E8E9720000
    %if ($ - %%insn_00402215) > 5
        %error "LONG_00402215"
    %endif
    times 5 - ($ - %%insn_00402215) db 0
    %%insn_0040221a:
    mov eax,[0x41f2d8] ; 0040221A A1D8F24100
    %if ($ - %%insn_0040221a) > 5
        %error "LONG_0040221A"
    %endif
    times 5 - ($ - %%insn_0040221a) db 0
    %%insn_0040221f:
    cmp eax,[0x41f508] ; 0040221F 3B0508F54100
    %if ($ - %%insn_0040221f) > 6
        %error "LONG_0040221F"
    %endif
    times 6 - ($ - %%insn_0040221f) db 0
    %%insn_00402225:
    jz short 0x40224b ; 00402225 7424
    %if ($ - %%insn_00402225) > 2
        %error "LONG_00402225"
    %endif
    times 2 - ($ - %%insn_00402225) db 0
    %%insn_00402227:
    mov ecx,[0x41f2b8] ; 00402227 8B0DB8F24100
    %if ($ - %%insn_00402227) > 6
        %error "LONG_00402227"
    %endif
    times 6 - ($ - %%insn_00402227) db 0
    %%insn_0040222d:
    mov dl,[ecx+0x103] ; 0040222D 8A9103010000
    %if ($ - %%insn_0040222d) > 6
        %error "LONG_0040222D"
    %endif
    times 6 - ($ - %%insn_0040222d) db 0
    %%insn_00402233:
    add dl,0x1 ; 00402233 80C201
    %if ($ - %%insn_00402233) > 3
        %error "LONG_00402233"
    %endif
    times 3 - ($ - %%insn_00402233) db 0
    %%insn_00402236:
    mov eax,[0x41f2b8] ; 00402236 A1B8F24100
    %if ($ - %%insn_00402236) > 5
        %error "LONG_00402236"
    %endif
    times 5 - ($ - %%insn_00402236) db 0
    %%insn_0040223b:
    mov [eax+0x103],dl ; 0040223B 889003010000
    %if ($ - %%insn_0040223b) > 6
        %error "LONG_0040223B"
    %endif
    times 6 - ($ - %%insn_0040223b) db 0
    %%insn_00402241:
    mov dword [0x41f2d8],0x0 ; 00402241 C705D8F2410000000000
    %if ($ - %%insn_00402241) > 10
        %error "LONG_00402241"
    %endif
    times 10 - ($ - %%insn_00402241) db 0
    %%insn_0040224b:
    movsx ecx,word [0x41f314] ; 0040224B 0FBF0D14F34100
    %if ($ - %%insn_0040224b) > 7
        %error "LONG_0040224B"
    %endif
    times 7 - ($ - %%insn_0040224b) db 0
    %%insn_00402252:
    cmp ecx,0x2 ; 00402252 83F902
    %if ($ - %%insn_00402252) > 3
        %error "LONG_00402252"
    %endif
    times 3 - ($ - %%insn_00402252) db 0
    %%insn_00402255:
    jnz short 0x40226f ; 00402255 7518
    %if ($ - %%insn_00402255) > 2
        %error "LONG_00402255"
    %endif
    times 2 - ($ - %%insn_00402255) db 0
    %%insn_00402257:
    mov edx,[0x41b030] ; 00402257 8B1530B04100
    %if ($ - %%insn_00402257) > 6
        %error "LONG_00402257"
    %endif
    times 6 - ($ - %%insn_00402257) db 0
    %%insn_0040225d:
    push edx ; 0040225D 52
    %if ($ - %%insn_0040225d) > 1
        %error "LONG_0040225D"
    %endif
    times 1 - ($ - %%insn_0040225d) db 0
    %%insn_0040225e:
    call 0x401f5f ; 0040225E E8FCFCFFFF
    %if ($ - %%insn_0040225e) > 5
        %error "LONG_0040225E"
    %endif
    times 5 - ($ - %%insn_0040225e) db 0
    %%insn_00402263:
    add esp,0x4 ; 00402263 83C404
    %if ($ - %%insn_00402263) > 3
        %error "LONG_00402263"
    %endif
    times 3 - ($ - %%insn_00402263) db 0
    %%insn_00402266:
    mov word [0x41f314],0x0 ; 00402266 66C70514F341000000
    %if ($ - %%insn_00402266) > 9
        %error "LONG_00402266"
    %endif
    times 9 - ($ - %%insn_00402266) db 0
    %%insn_0040226f:
    movsx eax,word [0x41f30c] ; 0040226F 0FBF050CF34100
    %if ($ - %%insn_0040226f) > 7
        %error "LONG_0040226F"
    %endif
    times 7 - ($ - %%insn_0040226f) db 0
    %%insn_00402276:
    test eax,eax ; 00402276 85C0
    %if ($ - %%insn_00402276) > 2
        %error "LONG_00402276"
    %endif
    times 2 - ($ - %%insn_00402276) db 0
    %%insn_00402278:
    jng short 0x4022f1 ; 00402278 7E77
    %if ($ - %%insn_00402278) > 2
        %error "LONG_00402278"
    %endif
    times 2 - ($ - %%insn_00402278) db 0
    %%insn_0040227a:
    mov cx,[0x41f30c] ; 0040227A 668B0D0CF34100
    %if ($ - %%insn_0040227a) > 7
        %error "LONG_0040227A"
    %endif
    times 7 - ($ - %%insn_0040227a) db 0
    %%insn_00402281:
    add cx,0x1 ; 00402281 6683C101
    %if ($ - %%insn_00402281) > 4
        %error "LONG_00402281"
    %endif
    times 4 - ($ - %%insn_00402281) db 0
    %%insn_00402285:
    mov [0x41f30c],cx ; 00402285 66890D0CF34100
    %if ($ - %%insn_00402285) > 7
        %error "LONG_00402285"
    %endif
    times 7 - ($ - %%insn_00402285) db 0
    %%insn_0040228c:
    movsx eax,word [0x41f30c] ; 0040228C 0FBF050CF34100
    %if ($ - %%insn_0040228c) > 7
        %error "LONG_0040228C"
    %endif
    times 7 - ($ - %%insn_0040228c) db 0
    %%insn_00402293:
    cdq ; 00402293 99
    %if ($ - %%insn_00402293) > 1
        %error "LONG_00402293"
    %endif
    times 1 - ($ - %%insn_00402293) db 0
    db 0x33, 0xC2 ; 00402294 33C2 | xor eax,edx | encoding preserved
    db 0x2B, 0xC2 ; 00402296 2BC2 | sub eax,edx | encoding preserved
    %%insn_00402298:
    and eax,0x1 ; 00402298 83E001
    %if ($ - %%insn_00402298) > 3
        %error "LONG_00402298"
    %endif
    times 3 - ($ - %%insn_00402298) db 0
    db 0x33, 0xC2 ; 0040229B 33C2 | xor eax,edx | encoding preserved
    db 0x2B, 0xC2 ; 0040229D 2BC2 | sub eax,edx | encoding preserved
    %%insn_0040229f:
    test eax,eax ; 0040229F 85C0
    %if ($ - %%insn_0040229f) > 2
        %error "LONG_0040229F"
    %endif
    times 2 - ($ - %%insn_0040229f) db 0
    %%insn_004022a1:
    jnz short 0x4022ca ; 004022A1 7527
    %if ($ - %%insn_004022a1) > 2
        %error "LONG_004022A1"
    %endif
    times 2 - ($ - %%insn_004022a1) db 0
    %%insn_004022a3:
    movsx eax,word [0x41f30c] ; 004022A3 0FBF050CF34100
    %if ($ - %%insn_004022a3) > 7
        %error "LONG_004022A3"
    %endif
    times 7 - ($ - %%insn_004022a3) db 0
    %%insn_004022aa:
    cdq ; 004022AA 99
    %if ($ - %%insn_004022aa) > 1
        %error "LONG_004022AA"
    %endif
    times 1 - ($ - %%insn_004022aa) db 0
    db 0x2B, 0xC2 ; 004022AB 2BC2 | sub eax,edx | encoding preserved
    %%insn_004022ad:
    sar eax,1 ; 004022AD D1F8
    %if ($ - %%insn_004022ad) > 2
        %error "LONG_004022AD"
    %endif
    times 2 - ($ - %%insn_004022ad) db 0
    %%insn_004022af:
    push eax ; 004022AF 50
    %if ($ - %%insn_004022af) > 1
        %error "LONG_004022AF"
    %endif
    times 1 - ($ - %%insn_004022af) db 0
    %%insn_004022b0:
    call play_optional_numbered_credit_video ; 004022B0 E828FAFFFF
    %if ($ - %%insn_004022b0) > 5
        %error "LONG_004022B0"
    %endif
    times 5 - ($ - %%insn_004022b0) db 0
    %%insn_004022b5:
    add esp,0x4 ; 004022B5 83C404
    %if ($ - %%insn_004022b5) > 3
        %error "LONG_004022B5"
    %endif
    times 3 - ($ - %%insn_004022b5) db 0
    %%insn_004022b8:
    movsx edx,ax ; 004022B8 0FBFD0
    %if ($ - %%insn_004022b8) > 3
        %error "LONG_004022B8"
    %endif
    times 3 - ($ - %%insn_004022b8) db 0
    %%insn_004022bb:
    test edx,edx ; 004022BB 85D2
    %if ($ - %%insn_004022bb) > 2
        %error "LONG_004022BB"
    %endif
    times 2 - ($ - %%insn_004022bb) db 0
    %%insn_004022bd:
    jnz short 0x4022c8 ; 004022BD 7509
    %if ($ - %%insn_004022bd) > 2
        %error "LONG_004022BD"
    %endif
    times 2 - ($ - %%insn_004022bd) db 0
    %%insn_004022bf:
    mov word [0x41f30c],0x0 ; 004022BF 66C7050CF341000000
    %if ($ - %%insn_004022bf) > 9
        %error "LONG_004022BF"
    %endif
    times 9 - ($ - %%insn_004022bf) db 0
    %%insn_004022c8:
    jmp short 0x4022d7 ; 004022C8 EB0D
    %if ($ - %%insn_004022c8) > 2
        %error "LONG_004022C8"
    %endif
    times 2 - ($ - %%insn_004022c8) db 0
    %%insn_004022ca:
    push dword 0xe10 ; 004022CA 68100E0000
    %if ($ - %%insn_004022ca) > 5
        %error "LONG_004022CA"
    %endif
    times 5 - ($ - %%insn_004022ca) db 0
    %%insn_004022cf:
    call 0x4015bf ; 004022CF E8EBF2FFFF
    %if ($ - %%insn_004022cf) > 5
        %error "LONG_004022CF"
    %endif
    times 5 - ($ - %%insn_004022cf) db 0
    %%insn_004022d4:
    add esp,0x4 ; 004022D4 83C404
    %if ($ - %%insn_004022d4) > 3
        %error "LONG_004022D4"
    %endif
    times 3 - ($ - %%insn_004022d4) db 0
    %%insn_004022d7:
    movsx eax,word [0x41f30c] ; 004022D7 0FBF050CF34100
    %if ($ - %%insn_004022d7) > 7
        %error "LONG_004022D7"
    %endif
    times 7 - ($ - %%insn_004022d7) db 0
    %%insn_004022de:
    cmp eax,0x9 ; 004022DE 83F809
    %if ($ - %%insn_004022de) > 3
        %error "LONG_004022DE"
    %endif
    times 3 - ($ - %%insn_004022de) db 0
    %%insn_004022e1:
    jnz short 0x4022f1 ; 004022E1 750E
    %if ($ - %%insn_004022e1) > 2
        %error "LONG_004022E1"
    %endif
    times 2 - ($ - %%insn_004022e1) db 0
    %%insn_004022e3:
    call 0x407290 ; 004022E3 E8A84F0000
    %if ($ - %%insn_004022e3) > 5
        %error "LONG_004022E3"
    %endif
    times 5 - ($ - %%insn_004022e3) db 0
    %%insn_004022e8:
    mov word [0x41f30c],0x0 ; 004022E8 66C7050CF341000000
    %if ($ - %%insn_004022e8) > 9
        %error "LONG_004022E8"
    %endif
    times 9 - ($ - %%insn_004022e8) db 0
    %%insn_004022f1:
    movsx ecx,word [0x41f308] ; 004022F1 0FBF0D08F34100
    %if ($ - %%insn_004022f1) > 7
        %error "LONG_004022F1"
    %endif
    times 7 - ($ - %%insn_004022f1) db 0
    %%insn_004022f8:
    and ecx,0x80 ; 004022F8 81E180000000
    %if ($ - %%insn_004022f8) > 6
        %error "LONG_004022F8"
    %endif
    times 6 - ($ - %%insn_004022f8) db 0
    %%insn_004022fe:
    test ecx,ecx ; 004022FE 85C9
    %if ($ - %%insn_004022fe) > 2
        %error "LONG_004022FE"
    %endif
    times 2 - ($ - %%insn_004022fe) db 0
    %%insn_00402300:
    jz short 0x402338 ; 00402300 7436
    %if ($ - %%insn_00402300) > 2
        %error "LONG_00402300"
    %endif
    times 2 - ($ - %%insn_00402300) db 0
    %%insn_00402302:
    mov ecx,0x421300 ; 00402302 B900134200
    %if ($ - %%insn_00402302) > 5
        %error "LONG_00402302"
    %endif
    times 5 - ($ - %%insn_00402302) db 0
    %%insn_00402307:
    call dword near [0x4213a8] ; 00402307 FF15A8134200
    %if ($ - %%insn_00402307) > 6
        %error "LONG_00402307"
    %endif
    times 6 - ($ - %%insn_00402307) db 0
    %%insn_0040230d:
    movsx edx,word [0x41f308] ; 0040230D 0FBF1508F34100
    %if ($ - %%insn_0040230d) > 7
        %error "LONG_0040230D"
    %endif
    times 7 - ($ - %%insn_0040230d) db 0
    %%insn_00402314:
    cmp edx,0x81 ; 00402314 81FA81000000
    %if ($ - %%insn_00402314) > 6
        %error "LONG_00402314"
    %endif
    times 6 - ($ - %%insn_00402314) db 0
    %%insn_0040231a:
    jnz short 0x40232f ; 0040231A 7513
    %if ($ - %%insn_0040231a) > 2
        %error "LONG_0040231A"
    %endif
    times 2 - ($ - %%insn_0040231a) db 0
    %%insn_0040231c:
    mov word [ebp-0x124],0x1 ; 0040231C 66C785DCFEFFFF0100
    %if ($ - %%insn_0040231c) > 9
        %error "LONG_0040231C"
    %endif
    times 9 - ($ - %%insn_0040231c) db 0
    %%insn_00402325:
    mov dword [0x41f300],0x4dc ; 00402325 C70500F34100DC040000
    %if ($ - %%insn_00402325) > 10
        %error "LONG_00402325"
    %endif
    times 10 - ($ - %%insn_00402325) db 0
    %%insn_0040232f:
    mov word [0x41f308],0x0 ; 0040232F 66C70508F341000000
    %if ($ - %%insn_0040232f) > 9
        %error "LONG_0040232F"
    %endif
    times 9 - ($ - %%insn_0040232f) db 0
; Central GRV interpreter iteration: reads the opcode at script base plus PC, advances PC, and dispatches through the 01h-59h jump table.
grv_opcode_dispatch:
    %%insn_00402338:
    mov eax,[0x41f284] ; 00402338 A184F24100
    %if ($ - %%insn_00402338) > 5
        %error "LONG_00402338"
    %endif
    times 5 - ($ - %%insn_00402338) db 0
    %%insn_0040233d:
    add eax,[0x41f300] ; 0040233D 030500F34100
    %if ($ - %%insn_0040233d) > 6
        %error "LONG_0040233D"
    %endif
    times 6 - ($ - %%insn_0040233d) db 0
    db 0x33, 0xC9 ; 00402343 33C9 | xor ecx,ecx | encoding preserved
    %%insn_00402345:
    mov cl,[eax] ; 00402345 8A08
    %if ($ - %%insn_00402345) > 2
        %error "LONG_00402345"
    %endif
    times 2 - ($ - %%insn_00402345) db 0
    %%insn_00402347:
    and ecx,0x7f ; 00402347 83E17F
    %if ($ - %%insn_00402347) > 3
        %error "LONG_00402347"
    %endif
    times 3 - ($ - %%insn_00402347) db 0
    %%insn_0040234a:
    mov [ebp-0x148],ecx ; 0040234A 898DB8FEFFFF
    %if ($ - %%insn_0040234a) > 6
        %error "LONG_0040234A"
    %endif
    times 6 - ($ - %%insn_0040234a) db 0
    %%insn_00402350:
    mov edx,[0x41f300] ; 00402350 8B1500F34100
    %if ($ - %%insn_00402350) > 6
        %error "LONG_00402350"
    %endif
    times 6 - ($ - %%insn_00402350) db 0
    %%insn_00402356:
    add edx,0x1 ; 00402356 83C201
    %if ($ - %%insn_00402356) > 3
        %error "LONG_00402356"
    %endif
    times 3 - ($ - %%insn_00402356) db 0
    %%insn_00402359:
    mov [0x41f300],edx ; 00402359 891500F34100
    %if ($ - %%insn_00402359) > 6
        %error "LONG_00402359"
    %endif
    times 6 - ($ - %%insn_00402359) db 0
    %%insn_0040235f:
    mov eax,[ebp-0x148] ; 0040235F 8B85B8FEFFFF
    %if ($ - %%insn_0040235f) > 6
        %error "LONG_0040235F"
    %endif
    times 6 - ($ - %%insn_0040235f) db 0
    %%insn_00402365:
    mov [ebp-0x14c],eax ; 00402365 8985B4FEFFFF
    %if ($ - %%insn_00402365) > 6
        %error "LONG_00402365"
    %endif
    times 6 - ($ - %%insn_00402365) db 0
    %%insn_0040236b:
    mov ecx,[ebp-0x14c] ; 0040236B 8B8DB4FEFFFF
    %if ($ - %%insn_0040236b) > 6
        %error "LONG_0040236B"
    %endif
    times 6 - ($ - %%insn_0040236b) db 0
    %%insn_00402371:
    sub ecx,0x1 ; 00402371 83E901
    %if ($ - %%insn_00402371) > 3
        %error "LONG_00402371"
    %endif
    times 3 - ($ - %%insn_00402371) db 0
    %%insn_00402374:
    mov [ebp-0x14c],ecx ; 00402374 898DB4FEFFFF
    %if ($ - %%insn_00402374) > 6
        %error "LONG_00402374"
    %endif
    times 6 - ($ - %%insn_00402374) db 0
    %%insn_0040237a:
    cmp dword [ebp-0x14c],0x58 ; 0040237A 83BDB4FEFFFF58
    %if ($ - %%insn_0040237a) > 7
        %error "LONG_0040237A"
    %endif
    times 7 - ($ - %%insn_0040237a) db 0
    %%insn_00402381:
    ja 0x4041c2 ; 00402381 0F873B1E0000
    %if ($ - %%insn_00402381) > 6
        %error "LONG_00402381"
    %endif
    times 6 - ($ - %%insn_00402381) db 0
    %%insn_00402387:
    mov edx,[ebp-0x14c] ; 00402387 8B95B4FEFFFF
    %if ($ - %%insn_00402387) > 6
        %error "LONG_00402387"
    %endif
    times 6 - ($ - %%insn_00402387) db 0
    %%insn_0040238d:
    jmp dword near [edx*4+0x4041e0] ; 0040238D FF2495E0414000
    %if ($ - %%insn_0040238d) > 7
        %error "LONG_0040238D"
    %endif
    times 7 - ($ - %%insn_0040238d) db 0
    %%insn_00402394:
    jmp 0x4041db ; 00402394 E9421E0000
    %if ($ - %%insn_00402394) > 5
        %error "LONG_00402394"
    %endif
    times 5 - ($ - %%insn_00402394) db 0
    %%insn_00402399:
    call 0x401473 ; 00402399 E8D5F0FFFF
    %if ($ - %%insn_00402399) > 5
        %error "LONG_00402399"
    %endif
    times 5 - ($ - %%insn_00402399) db 0
    %%insn_0040239e:
    and eax,0xffff ; 0040239E 25FFFF0000
    %if ($ - %%insn_0040239e) > 5
        %error "LONG_0040239E"
    %endif
    times 5 - ($ - %%insn_0040239e) db 0
    %%insn_004023a3:
    mov [ebp-0x11c],eax ; 004023A3 8985E4FEFFFF
    %if ($ - %%insn_004023a3) > 6
        %error "LONG_004023A3"
    %endif
    times 6 - ($ - %%insn_004023a3) db 0
    %%insn_004023a9:
    cmp dword [ebp-0x11c],0x4c17 ; 004023A9 81BDE4FEFFFF174C0000
    %if ($ - %%insn_004023a9) > 10
        %error "LONG_004023A9"
    %endif
    times 10 - ($ - %%insn_004023a9) db 0
    %%insn_004023b3:
    jz short 0x4023c0 ; 004023B3 740B
    %if ($ - %%insn_004023b3) > 2
        %error "LONG_004023B3"
    %endif
    times 2 - ($ - %%insn_004023b3) db 0
    %%insn_004023b5:
    mov eax,[ebp-0x11c] ; 004023B5 8B85E4FEFFFF
    %if ($ - %%insn_004023b5) > 6
        %error "LONG_004023B5"
    %endif
    times 6 - ($ - %%insn_004023b5) db 0
    %%insn_004023bb:
    mov [0x41b030],eax ; 004023BB A330B04100
    %if ($ - %%insn_004023bb) > 5
        %error "LONG_004023BB"
    %endif
    times 5 - ($ - %%insn_004023bb) db 0
    %%insn_004023c0:
    mov ecx,[ebp-0x11c] ; 004023C0 8B8DE4FEFFFF
    %if ($ - %%insn_004023c0) > 6
        %error "LONG_004023C0"
    %endif
    times 6 - ($ - %%insn_004023c0) db 0
    %%insn_004023c6:
    push ecx ; 004023C6 51
    %if ($ - %%insn_004023c6) > 1
        %error "LONG_004023C6"
    %endif
    times 1 - ($ - %%insn_004023c6) db 0
    %%insn_004023c7:
    call 0x401f5f ; 004023C7 E893FBFFFF
    %if ($ - %%insn_004023c7) > 5
        %error "LONG_004023C7"
    %endif
    times 5 - ($ - %%insn_004023c7) db 0
    %%insn_004023cc:
    add esp,0x4 ; 004023CC 83C404
    %if ($ - %%insn_004023cc) > 3
        %error "LONG_004023CC"
    %endif
    times 3 - ($ - %%insn_004023cc) db 0
    %%insn_004023cf:
    jmp 0x4041db ; 004023CF E9071E0000
    %if ($ - %%insn_004023cf) > 5
        %error "LONG_004023CF"
    %endif
    times 5 - ($ - %%insn_004023cf) db 0
    %%insn_004023d4:
    mov dx,[0x41f2ac] ; 004023D4 668B15ACF24100
    %if ($ - %%insn_004023d4) > 7
        %error "LONG_004023D4"
    %endif
    times 7 - ($ - %%insn_004023d4) db 0
    %%insn_004023db:
    or dh,0x2 ; 004023DB 80CE02
    %if ($ - %%insn_004023db) > 3
        %error "LONG_004023DB"
    %endif
    times 3 - ($ - %%insn_004023db) db 0
    %%insn_004023de:
    mov [0x41f2ac],dx ; 004023DE 668915ACF24100
    %if ($ - %%insn_004023de) > 7
        %error "LONG_004023DE"
    %endif
    times 7 - ($ - %%insn_004023de) db 0
    %%insn_004023e5:
    jmp 0x4041db ; 004023E5 E9F11D0000
    %if ($ - %%insn_004023e5) > 5
        %error "LONG_004023E5"
    %endif
    times 5 - ($ - %%insn_004023e5) db 0
    %%insn_004023ea:
    call 0x40a84b ; 004023EA E85C840000
    %if ($ - %%insn_004023ea) > 5
        %error "LONG_004023EA"
    %endif
    times 5 - ($ - %%insn_004023ea) db 0
    %%insn_004023ef:
    jmp 0x4041db ; 004023EF E9E71D0000
    %if ($ - %%insn_004023ef) > 5
        %error "LONG_004023EF"
    %endif
    times 5 - ($ - %%insn_004023ef) db 0
    %%insn_004023f4:
    mov ax,[0x41f2ac] ; 004023F4 66A1ACF24100
    %if ($ - %%insn_004023f4) > 6
        %error "LONG_004023F4"
    %endif
    times 6 - ($ - %%insn_004023f4) db 0
    %%insn_004023fa:
    or ah,0x1 ; 004023FA 80CC01
    %if ($ - %%insn_004023fa) > 3
        %error "LONG_004023FA"
    %endif
    times 3 - ($ - %%insn_004023fa) db 0
    %%insn_004023fd:
    mov [0x41f2ac],ax ; 004023FD 66A3ACF24100
    %if ($ - %%insn_004023fd) > 6
        %error "LONG_004023FD"
    %endif
    times 6 - ($ - %%insn_004023fd) db 0
    %%insn_00402403:
    jmp 0x4041db ; 00402403 E9D31D0000
    %if ($ - %%insn_00402403) > 5
        %error "LONG_00402403"
    %endif
    times 5 - ($ - %%insn_00402403) db 0
    %%insn_00402408:
    mov cx,[0x41f2ac] ; 00402408 668B0DACF24100
    %if ($ - %%insn_00402408) > 7
        %error "LONG_00402408"
    %endif
    times 7 - ($ - %%insn_00402408) db 0
    %%insn_0040240f:
    or cl,0x40 ; 0040240F 80C940
    %if ($ - %%insn_0040240f) > 3
        %error "LONG_0040240F"
    %endif
    times 3 - ($ - %%insn_0040240f) db 0
    %%insn_00402412:
    mov [0x41f2ac],cx ; 00402412 66890DACF24100
    %if ($ - %%insn_00402412) > 7
        %error "LONG_00402412"
    %endif
    times 7 - ($ - %%insn_00402412) db 0
    %%insn_00402419:
    jmp 0x4041db ; 00402419 E9BD1D0000
    %if ($ - %%insn_00402419) > 5
        %error "LONG_00402419"
    %endif
    times 5 - ($ - %%insn_00402419) db 0
    %%insn_0040241e:
    mov dx,[0x41f2ac] ; 0040241E 668B15ACF24100
    %if ($ - %%insn_0040241e) > 7
        %error "LONG_0040241E"
    %endif
    times 7 - ($ - %%insn_0040241e) db 0
    %%insn_00402425:
    or dl,0x80 ; 00402425 80CA80
    %if ($ - %%insn_00402425) > 3
        %error "LONG_00402425"
    %endif
    times 3 - ($ - %%insn_00402425) db 0
    %%insn_00402428:
    mov [0x41f2ac],dx ; 00402428 668915ACF24100
    %if ($ - %%insn_00402428) > 7
        %error "LONG_00402428"
    %endif
    times 7 - ($ - %%insn_00402428) db 0
    %%insn_0040242f:
    jmp 0x4041db ; 0040242F E9A71D0000
    %if ($ - %%insn_0040242f) > 5
        %error "LONG_0040242F"
    %endif
    times 5 - ($ - %%insn_0040242f) db 0
    %%insn_00402434:
    call 0x401473 ; 00402434 E83AF0FFFF
    %if ($ - %%insn_00402434) > 5
        %error "LONG_00402434"
    %endif
    times 5 - ($ - %%insn_00402434) db 0
    %%insn_00402439:
    and eax,0xffff ; 00402439 25FFFF0000
    %if ($ - %%insn_00402439) > 5
        %error "LONG_00402439"
    %endif
    times 5 - ($ - %%insn_00402439) db 0
    %%insn_0040243e:
    mov [0x41f324],eax ; 0040243E A324F34100
    %if ($ - %%insn_0040243e) > 5
        %error "LONG_0040243E"
    %endif
    times 5 - ($ - %%insn_0040243e) db 0
    %%insn_00402443:
    jmp 0x4041db ; 00402443 E9931D0000
    %if ($ - %%insn_00402443) > 5
        %error "LONG_00402443"
    %endif
    times 5 - ($ - %%insn_00402443) db 0
    %%insn_00402448:
    call 0x404ca2 ; 00402448 E855280000
    %if ($ - %%insn_00402448) > 5
        %error "LONG_00402448"
    %endif
    times 5 - ($ - %%insn_00402448) db 0
    %%insn_0040244d:
    call 0x401473 ; 0040244D E821F0FFFF
    %if ($ - %%insn_0040244d) > 5
        %error "LONG_0040244D"
    %endif
    times 5 - ($ - %%insn_0040244d) db 0
    %%insn_00402452:
    and eax,0xffff ; 00402452 25FFFF0000
    %if ($ - %%insn_00402452) > 5
        %error "LONG_00402452"
    %endif
    times 5 - ($ - %%insn_00402452) db 0
    %%insn_00402457:
    mov [ebp-0x11c],eax ; 00402457 8985E4FEFFFF
    %if ($ - %%insn_00402457) > 6
        %error "LONG_00402457"
    %endif
    times 6 - ($ - %%insn_00402457) db 0
    %%insn_0040245d:
    cmp dword [ebp-0x11c],0x400d ; 0040245D 81BDE4FEFFFF0D400000
    %if ($ - %%insn_0040245d) > 10
        %error "LONG_0040245D"
    %endif
    times 10 - ($ - %%insn_0040245d) db 0
    %%insn_00402467:
    jnz short 0x402472 ; 00402467 7509
    %if ($ - %%insn_00402467) > 2
        %error "LONG_00402467"
    %endif
    times 2 - ($ - %%insn_00402467) db 0
    %%insn_00402469:
    mov word [0x41f314],0x1 ; 00402469 66C70514F341000100
    %if ($ - %%insn_00402469) > 9
        %error "LONG_00402469"
    %endif
    times 9 - ($ - %%insn_00402469) db 0
    %%insn_00402472:
    cmp dword [ebp-0x11c],0x5060 ; 00402472 81BDE4FEFFFF60500000
    %if ($ - %%insn_00402472) > 10
        %error "LONG_00402472"
    %endif
    times 10 - ($ - %%insn_00402472) db 0
    %%insn_0040247c:
    jnz short 0x402496 ; 0040247C 7518
    %if ($ - %%insn_0040247c) > 2
        %error "LONG_0040247C"
    %endif
    times 2 - ($ - %%insn_0040247c) db 0
    %%insn_0040247e:
    cmp dword [0x41f330],0x0 ; 0040247E 833D30F3410000
    %if ($ - %%insn_0040247e) > 7
        %error "LONG_0040247E"
    %endif
    times 7 - ($ - %%insn_0040247e) db 0
    %%insn_00402485:
    jz short 0x40248c ; 00402485 7405
    %if ($ - %%insn_00402485) > 2
        %error "LONG_00402485"
    %endif
    times 2 - ($ - %%insn_00402485) db 0
    %%insn_00402487:
    jmp 0x4041db ; 00402487 E94F1D0000
    %if ($ - %%insn_00402487) > 5
        %error "LONG_00402487"
    %endif
    times 5 - ($ - %%insn_00402487) db 0
    %%insn_0040248c:
    mov dword [0x41f330],0x1 ; 0040248C C70530F3410001000000
    %if ($ - %%insn_0040248c) > 10
        %error "LONG_0040248C"
    %endif
    times 10 - ($ - %%insn_0040248c) db 0
    %%insn_00402496:
    cmp dword [ebp-0x11c],0x5098 ; 00402496 81BDE4FEFFFF98500000
    %if ($ - %%insn_00402496) > 10
        %error "LONG_00402496"
    %endif
    times 10 - ($ - %%insn_00402496) db 0
    %%insn_004024a0:
    jnz short 0x4024ba ; 004024A0 7518
    %if ($ - %%insn_004024a0) > 2
        %error "LONG_004024A0"
    %endif
    times 2 - ($ - %%insn_004024a0) db 0
    %%insn_004024a2:
    cmp dword [0x41f334],0x0 ; 004024A2 833D34F3410000
    %if ($ - %%insn_004024a2) > 7
        %error "LONG_004024A2"
    %endif
    times 7 - ($ - %%insn_004024a2) db 0
    %%insn_004024a9:
    jz short 0x4024b0 ; 004024A9 7405
    %if ($ - %%insn_004024a9) > 2
        %error "LONG_004024A9"
    %endif
    times 2 - ($ - %%insn_004024a9) db 0
    %%insn_004024ab:
    jmp 0x4041db ; 004024AB E92B1D0000
    %if ($ - %%insn_004024ab) > 5
        %error "LONG_004024AB"
    %endif
    times 5 - ($ - %%insn_004024ab) db 0
    %%insn_004024b0:
    mov dword [0x41f334],0x1 ; 004024B0 C70534F3410001000000
    %if ($ - %%insn_004024b0) > 10
        %error "LONG_004024B0"
    %endif
    times 10 - ($ - %%insn_004024b0) db 0
    %%insn_004024ba:
    cmp dword [ebp-0x11c],0x1c04 ; 004024BA 81BDE4FEFFFF041C0000
    %if ($ - %%insn_004024ba) > 10
        %error "LONG_004024BA"
    %endif
    times 10 - ($ - %%insn_004024ba) db 0
    %%insn_004024c4:
    jnz short 0x4024dc ; 004024C4 7516
    %if ($ - %%insn_004024c4) > 2
        %error "LONG_004024C4"
    %endif
    times 2 - ($ - %%insn_004024c4) db 0
    %%insn_004024c6:
    movsx eax,word [0x41f318] ; 004024C6 0FBF0518F34100
    %if ($ - %%insn_004024c6) > 7
        %error "LONG_004024C6"
    %endif
    times 7 - ($ - %%insn_004024c6) db 0
    %%insn_004024cd:
    cmp eax,0x1 ; 004024CD 83F801
    %if ($ - %%insn_004024cd) > 3
        %error "LONG_004024CD"
    %endif
    times 3 - ($ - %%insn_004024cd) db 0
    %%insn_004024d0:
    jnz short 0x4024dc ; 004024D0 750A
    %if ($ - %%insn_004024d0) > 2
        %error "LONG_004024D0"
    %endif
    times 2 - ($ - %%insn_004024d0) db 0
    %%insn_004024d2:
    call play_optional_trilogo_video ; 004024D2 E8C2F7FFFF
    %if ($ - %%insn_004024d2) > 5
        %error "LONG_004024D2"
    %endif
    times 5 - ($ - %%insn_004024d2) db 0
    %%insn_004024d7:
    jmp 0x4041db ; 004024D7 E9FF1C0000
    %if ($ - %%insn_004024d7) > 5
        %error "LONG_004024D7"
    %endif
    times 5 - ($ - %%insn_004024d7) db 0
    %%insn_004024dc:
    cmp dword [ebp-0x11c],0x1c03 ; 004024DC 81BDE4FEFFFF031C0000
    %if ($ - %%insn_004024dc) > 10
        %error "LONG_004024DC"
    %endif
    times 10 - ($ - %%insn_004024dc) db 0
    %%insn_004024e6:
    jnz short 0x4024f9 ; 004024E6 7511
    %if ($ - %%insn_004024e6) > 2
        %error "LONG_004024E6"
    %endif
    times 2 - ($ - %%insn_004024e6) db 0
    %%insn_004024e8:
    movsx ecx,word [0x41f318] ; 004024E8 0FBF0D18F34100
    %if ($ - %%insn_004024e8) > 7
        %error "LONG_004024E8"
    %endif
    times 7 - ($ - %%insn_004024e8) db 0
    %%insn_004024ef:
    cmp ecx,0x1 ; 004024EF 83F901
    %if ($ - %%insn_004024ef) > 3
        %error "LONG_004024EF"
    %endif
    times 3 - ($ - %%insn_004024ef) db 0
    %%insn_004024f2:
    jnz short 0x4024f9 ; 004024F2 7505
    %if ($ - %%insn_004024f2) > 2
        %error "LONG_004024F2"
    %endif
    times 2 - ($ - %%insn_004024f2) db 0
    %%insn_004024f4:
    jmp 0x4041db ; 004024F4 E9E21C0000
    %if ($ - %%insn_004024f4) > 5
        %error "LONG_004024F4"
    %endif
    times 5 - ($ - %%insn_004024f4) db 0
    %%insn_004024f9:
    cmp dword [ebp-0x11c],0x1c05 ; 004024F9 81BDE4FEFFFF051C0000
    %if ($ - %%insn_004024f9) > 10
        %error "LONG_004024F9"
    %endif
    times 10 - ($ - %%insn_004024f9) db 0
    %%insn_00402503:
    jnz short 0x40250e ; 00402503 7509
    %if ($ - %%insn_00402503) > 2
        %error "LONG_00402503"
    %endif
    times 2 - ($ - %%insn_00402503) db 0
    %%insn_00402505:
    mov word [0x41f30c],0x1 ; 00402505 66C7050CF341000100
    %if ($ - %%insn_00402505) > 9
        %error "LONG_00402505"
    %endif
    times 9 - ($ - %%insn_00402505) db 0
    %%insn_0040250e:
    cmp dword [ebp-0x11c],0x2402 ; 0040250E 81BDE4FEFFFF02240000
    %if ($ - %%insn_0040250e) > 10
        %error "LONG_0040250E"
    %endif
    times 10 - ($ - %%insn_0040250e) db 0
    %%insn_00402518:
    jnz short 0x402523 ; 00402518 7509
    %if ($ - %%insn_00402518) > 2
        %error "LONG_00402518"
    %endif
    times 2 - ($ - %%insn_00402518) db 0
    %%insn_0040251a:
    mov word [0x41f308],0x1 ; 0040251A 66C70508F341000100
    %if ($ - %%insn_0040251a) > 9
        %error "LONG_0040251A"
    %endif
    times 9 - ($ - %%insn_0040251a) db 0
    %%insn_00402523:
    cmp dword [ebp-0x11c],0x1426 ; 00402523 81BDE4FEFFFF26140000
    %if ($ - %%insn_00402523) > 10
        %error "LONG_00402523"
    %endif
    times 10 - ($ - %%insn_00402523) db 0
    %%insn_0040252d:
    jnz short 0x402538 ; 0040252D 7509
    %if ($ - %%insn_0040252d) > 2
        %error "LONG_0040252D"
    %endif
    times 2 - ($ - %%insn_0040252d) db 0
    %%insn_0040252f:
    mov word [0x41f308],0x0 ; 0040252F 66C70508F341000000
    %if ($ - %%insn_0040252f) > 9
        %error "LONG_0040252F"
    %endif
    times 9 - ($ - %%insn_0040252f) db 0
    %%insn_00402538:
    cmp dword [ebp-0x11c],0x206d ; 00402538 81BDE4FEFFFF6D200000
    %if ($ - %%insn_00402538) > 10
        %error "LONG_00402538"
    %endif
    times 10 - ($ - %%insn_00402538) db 0
    %%insn_00402542:
    jz short 0x402550 ; 00402542 740C
    %if ($ - %%insn_00402542) > 2
        %error "LONG_00402542"
    %endif
    times 2 - ($ - %%insn_00402542) db 0
    %%insn_00402544:
    cmp dword [ebp-0x11c],0x2001 ; 00402544 81BDE4FEFFFF01200000
    %if ($ - %%insn_00402544) > 10
        %error "LONG_00402544"
    %endif
    times 10 - ($ - %%insn_00402544) db 0
    %%insn_0040254e:
    jnz short 0x402559 ; 0040254E 7509
    %if ($ - %%insn_0040254e) > 2
        %error "LONG_0040254E"
    %endif
    times 2 - ($ - %%insn_0040254e) db 0
    %%insn_00402550:
    mov word [0x41f338],0x0 ; 00402550 66C70538F341000000
    %if ($ - %%insn_00402550) > 9
        %error "LONG_00402550"
    %endif
    times 9 - ($ - %%insn_00402550) db 0
    %%insn_00402559:
    mov edx,[ebp-0x11c] ; 00402559 8B95E4FEFFFF
    %if ($ - %%insn_00402559) > 6
        %error "LONG_00402559"
    %endif
    times 6 - ($ - %%insn_00402559) db 0
    %%insn_0040255f:
    push edx ; 0040255F 52
    %if ($ - %%insn_0040255f) > 1
        %error "LONG_0040255F"
    %endif
    times 1 - ($ - %%insn_0040255f) db 0
    %%insn_00402560:
    call 0x401d3a ; 00402560 E8D5F7FFFF
    %if ($ - %%insn_00402560) > 5
        %error "LONG_00402560"
    %endif
    times 5 - ($ - %%insn_00402560) db 0
    %%insn_00402565:
    add esp,0x4 ; 00402565 83C404
    %if ($ - %%insn_00402565) > 3
        %error "LONG_00402565"
    %endif
    times 3 - ($ - %%insn_00402565) db 0
    %%insn_00402568:
    jmp 0x4041db ; 00402568 E96E1C0000
    %if ($ - %%insn_00402568) > 5
        %error "LONG_00402568"
    %endif
    times 5 - ($ - %%insn_00402568) db 0
    %%insn_0040256d:
    mov ax,[0x41f2ac] ; 0040256D 66A1ACF24100
    %if ($ - %%insn_0040256d) > 6
        %error "LONG_0040256D"
    %endif
    times 6 - ($ - %%insn_0040256d) db 0
    %%insn_00402573:
    or al,0x2 ; 00402573 0C02
    %if ($ - %%insn_00402573) > 2
        %error "LONG_00402573"
    %endif
    times 2 - ($ - %%insn_00402573) db 0
    %%insn_00402575:
    mov [0x41f2ac],ax ; 00402575 66A3ACF24100
    %if ($ - %%insn_00402575) > 6
        %error "LONG_00402575"
    %endif
    times 6 - ($ - %%insn_00402575) db 0
    %%insn_0040257b:
    mov cx,[0x41f2ac] ; 0040257B 668B0DACF24100
    %if ($ - %%insn_0040257b) > 7
        %error "LONG_0040257B"
    %endif
    times 7 - ($ - %%insn_0040257b) db 0
    %%insn_00402582:
    and cx,0xff7f ; 00402582 6681E17FFF
    %if ($ - %%insn_00402582) > 5
        %error "LONG_00402582"
    %endif
    times 5 - ($ - %%insn_00402582) db 0
    %%insn_00402587:
    mov [0x41f2ac],cx ; 00402587 66890DACF24100
    %if ($ - %%insn_00402587) > 7
        %error "LONG_00402587"
    %endif
    times 7 - ($ - %%insn_00402587) db 0
    %%insn_0040258e:
    mov edx,[ebp-0x124] ; 0040258E 8B95DCFEFFFF
    %if ($ - %%insn_0040258e) > 6
        %error "LONG_0040258E"
    %endif
    times 6 - ($ - %%insn_0040258e) db 0
    %%insn_00402594:
    and edx,0xffff ; 00402594 81E2FFFF0000
    %if ($ - %%insn_00402594) > 6
        %error "LONG_00402594"
    %endif
    times 6 - ($ - %%insn_00402594) db 0
    %%insn_0040259a:
    test edx,edx ; 0040259A 85D2
    %if ($ - %%insn_0040259a) > 2
        %error "LONG_0040259A"
    %endif
    times 2 - ($ - %%insn_0040259a) db 0
    %%insn_0040259c:
    jz short 0x4025ac ; 0040259C 740E
    %if ($ - %%insn_0040259c) > 2
        %error "LONG_0040259C"
    %endif
    times 2 - ($ - %%insn_0040259c) db 0
    %%insn_0040259e:
    mov ax,[0x41f2ac] ; 0040259E 66A1ACF24100
    %if ($ - %%insn_0040259e) > 6
        %error "LONG_0040259E"
    %endif
    times 6 - ($ - %%insn_0040259e) db 0
    %%insn_004025a4:
    or al,0x4 ; 004025A4 0C04
    %if ($ - %%insn_004025a4) > 2
        %error "LONG_004025A4"
    %endif
    times 2 - ($ - %%insn_004025a4) db 0
    %%insn_004025a6:
    mov [0x41f2ac],ax ; 004025A6 66A3ACF24100
    %if ($ - %%insn_004025a6) > 6
        %error "LONG_004025A6"
    %endif
    times 6 - ($ - %%insn_004025a6) db 0
    %%insn_004025ac:
    call 0x401473 ; 004025AC E8C2EEFFFF
    %if ($ - %%insn_004025ac) > 5
        %error "LONG_004025AC"
    %endif
    times 5 - ($ - %%insn_004025ac) db 0
    %%insn_004025b1:
    and eax,0xffff ; 004025B1 25FFFF0000
    %if ($ - %%insn_004025b1) > 5
        %error "LONG_004025B1"
    %endif
    times 5 - ($ - %%insn_004025b1) db 0
    %%insn_004025b6:
    mov [ebp-0x11c],eax ; 004025B6 8985E4FEFFFF
    %if ($ - %%insn_004025b6) > 6
        %error "LONG_004025B6"
    %endif
    times 6 - ($ - %%insn_004025b6) db 0
    %%insn_004025bc:
    mov ecx,[ebp-0x11c] ; 004025BC 8B8DE4FEFFFF
    %if ($ - %%insn_004025bc) > 6
        %error "LONG_004025BC"
    %endif
    times 6 - ($ - %%insn_004025bc) db 0
    %%insn_004025c2:
    push ecx ; 004025C2 51
    %if ($ - %%insn_004025c2) > 1
        %error "LONG_004025C2"
    %endif
    times 1 - ($ - %%insn_004025c2) db 0
    %%insn_004025c3:
    call 0x401d3a ; 004025C3 E872F7FFFF
    %if ($ - %%insn_004025c3) > 5
        %error "LONG_004025C3"
    %endif
    times 5 - ($ - %%insn_004025c3) db 0
    %%insn_004025c8:
    add esp,0x4 ; 004025C8 83C404
    %if ($ - %%insn_004025c8) > 3
        %error "LONG_004025C8"
    %endif
    times 3 - ($ - %%insn_004025c8) db 0
    %%insn_004025cb:
    jmp 0x4041db ; 004025CB E90B1C0000
    %if ($ - %%insn_004025cb) > 5
        %error "LONG_004025CB"
    %endif
    times 5 - ($ - %%insn_004025cb) db 0
    %%insn_004025d0:
    call 0x404ca2 ; 004025D0 E8CD260000
    %if ($ - %%insn_004025d0) > 5
        %error "LONG_004025D0"
    %endif
    times 5 - ($ - %%insn_004025d0) db 0
    %%insn_004025d5:
    call 0x401833 ; 004025D5 E859F2FFFF
    %if ($ - %%insn_004025d5) > 5
        %error "LONG_004025D5"
    %endif
    times 5 - ($ - %%insn_004025d5) db 0
    %%insn_004025da:
    mov [ebp-0x11c],eax ; 004025DA 8985E4FEFFFF
    %if ($ - %%insn_004025da) > 6
        %error "LONG_004025DA"
    %endif
    times 6 - ($ - %%insn_004025da) db 0
    %%insn_004025e0:
    cmp dword [ebp-0x11c],0x0 ; 004025E0 83BDE4FEFFFF00
    %if ($ - %%insn_004025e0) > 7
        %error "LONG_004025E0"
    %endif
    times 7 - ($ - %%insn_004025e0) db 0
    %%insn_004025e7:
    jl short 0x4025f8 ; 004025E7 7C0F
    %if ($ - %%insn_004025e7) > 2
        %error "LONG_004025E7"
    %endif
    times 2 - ($ - %%insn_004025e7) db 0
    %%insn_004025e9:
    mov edx,[ebp-0x11c] ; 004025E9 8B95E4FEFFFF
    %if ($ - %%insn_004025e9) > 6
        %error "LONG_004025E9"
    %endif
    times 6 - ($ - %%insn_004025e9) db 0
    %%insn_004025ef:
    push edx ; 004025EF 52
    %if ($ - %%insn_004025ef) > 1
        %error "LONG_004025EF"
    %endif
    times 1 - ($ - %%insn_004025ef) db 0
    %%insn_004025f0:
    call 0x401d3a ; 004025F0 E845F7FFFF
    %if ($ - %%insn_004025f0) > 5
        %error "LONG_004025F0"
    %endif
    times 5 - ($ - %%insn_004025f0) db 0
    %%insn_004025f5:
    add esp,0x4 ; 004025F5 83C404
    %if ($ - %%insn_004025f5) > 3
        %error "LONG_004025F5"
    %endif
    times 3 - ($ - %%insn_004025f5) db 0
    %%insn_004025f8:
    jmp 0x4041db ; 004025F8 E9DE1B0000
    %if ($ - %%insn_004025f8) > 5
        %error "LONG_004025F8"
    %endif
    times 5 - ($ - %%insn_004025f8) db 0
    %%insn_004025fd:
    mov ax,[0x41f2ac] ; 004025FD 66A1ACF24100
    %if ($ - %%insn_004025fd) > 6
        %error "LONG_004025FD"
    %endif
    times 6 - ($ - %%insn_004025fd) db 0
    %%insn_00402603:
    or al,0x2 ; 00402603 0C02
    %if ($ - %%insn_00402603) > 2
        %error "LONG_00402603"
    %endif
    times 2 - ($ - %%insn_00402603) db 0
    %%insn_00402605:
    mov [0x41f2ac],ax ; 00402605 66A3ACF24100
    %if ($ - %%insn_00402605) > 6
        %error "LONG_00402605"
    %endif
    times 6 - ($ - %%insn_00402605) db 0
    %%insn_0040260b:
    mov ecx,[ebp-0x124] ; 0040260B 8B8DDCFEFFFF
    %if ($ - %%insn_0040260b) > 6
        %error "LONG_0040260B"
    %endif
    times 6 - ($ - %%insn_0040260b) db 0
    %%insn_00402611:
    and ecx,0xffff ; 00402611 81E1FFFF0000
    %if ($ - %%insn_00402611) > 6
        %error "LONG_00402611"
    %endif
    times 6 - ($ - %%insn_00402611) db 0
    %%insn_00402617:
    test ecx,ecx ; 00402617 85C9
    %if ($ - %%insn_00402617) > 2
        %error "LONG_00402617"
    %endif
    times 2 - ($ - %%insn_00402617) db 0
    %%insn_00402619:
    jz short 0x40262c ; 00402619 7411
    %if ($ - %%insn_00402619) > 2
        %error "LONG_00402619"
    %endif
    times 2 - ($ - %%insn_00402619) db 0
    %%insn_0040261b:
    mov dx,[0x41f2ac] ; 0040261B 668B15ACF24100
    %if ($ - %%insn_0040261b) > 7
        %error "LONG_0040261B"
    %endif
    times 7 - ($ - %%insn_0040261b) db 0
    %%insn_00402622:
    or dl,0x4 ; 00402622 80CA04
    %if ($ - %%insn_00402622) > 3
        %error "LONG_00402622"
    %endif
    times 3 - ($ - %%insn_00402622) db 0
    %%insn_00402625:
    mov [0x41f2ac],dx ; 00402625 668915ACF24100
    %if ($ - %%insn_00402625) > 7
        %error "LONG_00402625"
    %endif
    times 7 - ($ - %%insn_00402625) db 0
    %%insn_0040262c:
    call 0x401833 ; 0040262C E802F2FFFF
    %if ($ - %%insn_0040262c) > 5
        %error "LONG_0040262C"
    %endif
    times 5 - ($ - %%insn_0040262c) db 0
    %%insn_00402631:
    mov [ebp-0x11c],eax ; 00402631 8985E4FEFFFF
    %if ($ - %%insn_00402631) > 6
        %error "LONG_00402631"
    %endif
    times 6 - ($ - %%insn_00402631) db 0
    %%insn_00402637:
    mov eax,[ebp-0x11c] ; 00402637 8B85E4FEFFFF
    %if ($ - %%insn_00402637) > 6
        %error "LONG_00402637"
    %endif
    times 6 - ($ - %%insn_00402637) db 0
    %%insn_0040263d:
    push eax ; 0040263D 50
    %if ($ - %%insn_0040263d) > 1
        %error "LONG_0040263D"
    %endif
    times 1 - ($ - %%insn_0040263d) db 0
    %%insn_0040263e:
    call 0x401d3a ; 0040263E E8F7F6FFFF
    %if ($ - %%insn_0040263e) > 5
        %error "LONG_0040263E"
    %endif
    times 5 - ($ - %%insn_0040263e) db 0
    %%insn_00402643:
    add esp,0x4 ; 00402643 83C404
    %if ($ - %%insn_00402643) > 3
        %error "LONG_00402643"
    %endif
    times 3 - ($ - %%insn_00402643) db 0
    %%insn_00402646:
    jmp 0x4041db ; 00402646 E9901B0000
    %if ($ - %%insn_00402646) > 5
        %error "LONG_00402646"
    %endif
    times 5 - ($ - %%insn_00402646) db 0
    %%insn_0040264b:
    mov cx,[0x41f2ac] ; 0040264B 668B0DACF24100
    %if ($ - %%insn_0040264b) > 7
        %error "LONG_0040264B"
    %endif
    times 7 - ($ - %%insn_0040264b) db 0
    %%insn_00402652:
    or cl,0x20 ; 00402652 80C920
    %if ($ - %%insn_00402652) > 3
        %error "LONG_00402652"
    %endif
    times 3 - ($ - %%insn_00402652) db 0
    %%insn_00402655:
    mov [0x41f2ac],cx ; 00402655 66890DACF24100
    %if ($ - %%insn_00402655) > 7
        %error "LONG_00402655"
    %endif
    times 7 - ($ - %%insn_00402655) db 0
    %%insn_0040265c:
    jmp 0x4041db ; 0040265C E97A1B0000
    %if ($ - %%insn_0040265c) > 5
        %error "LONG_0040265C"
    %endif
    times 5 - ($ - %%insn_0040265c) db 0
    db 0x33, 0xD2 ; 00402661 33D2 | xor edx,edx | encoding preserved
    %%insn_00402663:
    mov dx,[0x41f328] ; 00402663 668B1528F34100
    %if ($ - %%insn_00402663) > 7
        %error "LONG_00402663"
    %endif
    times 7 - ($ - %%insn_00402663) db 0
    %%insn_0040266a:
    test edx,edx ; 0040266A 85D2
    %if ($ - %%insn_0040266a) > 2
        %error "LONG_0040266A"
    %endif
    times 2 - ($ - %%insn_0040266a) db 0
    %%insn_0040266c:
    jnz short 0x40267c ; 0040266C 750E
    %if ($ - %%insn_0040266c) > 2
        %error "LONG_0040266C"
    %endif
    times 2 - ($ - %%insn_0040266c) db 0
    %%insn_0040266e:
    mov eax,[0x41f300] ; 0040266E A100F34100
    %if ($ - %%insn_0040266e) > 5
        %error "LONG_0040266E"
    %endif
    times 5 - ($ - %%insn_0040266e) db 0
    %%insn_00402673:
    sub eax,0x1 ; 00402673 83E801
    %if ($ - %%insn_00402673) > 3
        %error "LONG_00402673"
    %endif
    times 3 - ($ - %%insn_00402673) db 0
    %%insn_00402676:
    mov [0x41f328],ax ; 00402676 66A328F34100
    %if ($ - %%insn_00402676) > 6
        %error "LONG_00402676"
    %endif
    times 6 - ($ - %%insn_00402676) db 0
    %%insn_0040267c:
    mov dword [0x41f2bc],0x5 ; 0040267C C705BCF2410005000000
    %if ($ - %%insn_0040267c) > 10
        %error "LONG_0040267C"
    %endif
    times 10 - ($ - %%insn_0040267c) db 0
    %%insn_00402686:
    mov dword [0x41f2fc],0xffffffff ; 00402686 C705FCF24100FFFFFFFF
    %if ($ - %%insn_00402686) > 10
        %error "LONG_00402686"
    %endif
    times 10 - ($ - %%insn_00402686) db 0
    %%insn_00402690:
    call 0x4069e5 ; 00402690 E850430000
    %if ($ - %%insn_00402690) > 5
        %error "LONG_00402690"
    %endif
    times 5 - ($ - %%insn_00402690) db 0
    %%insn_00402695:
    mov [0x41f288],al ; 00402695 A288F24100
    %if ($ - %%insn_00402695) > 5
        %error "LONG_00402695"
    %endif
    times 5 - ($ - %%insn_00402695) db 0
    %%insn_0040269a:
    call 0x407146 ; 0040269A E8A74A0000
    %if ($ - %%insn_0040269a) > 5
        %error "LONG_0040269A"
    %endif
    times 5 - ($ - %%insn_0040269a) db 0
    %%insn_0040269f:
    test eax,eax ; 0040269F 85C0
    %if ($ - %%insn_0040269f) > 2
        %error "LONG_0040269F"
    %endif
    times 2 - ($ - %%insn_0040269f) db 0
    %%insn_004026a1:
    jnz short 0x4026d0 ; 004026A1 752D
    %if ($ - %%insn_004026a1) > 2
        %error "LONG_004026A1"
    %endif
    times 2 - ($ - %%insn_004026a1) db 0
    %%insn_004026a3:
    cmp dword [0x41f324],0x0 ; 004026A3 833D24F3410000
    %if ($ - %%insn_004026a3) > 7
        %error "LONG_004026A3"
    %endif
    times 7 - ($ - %%insn_004026a3) db 0
    %%insn_004026aa:
    jz short 0x4026d0 ; 004026AA 7424
    %if ($ - %%insn_004026aa) > 2
        %error "LONG_004026AA"
    %endif
    times 2 - ($ - %%insn_004026aa) db 0
    %%insn_004026ac:
    cmp dword [0x41f32c],0x0 ; 004026AC 833D2CF3410000
    %if ($ - %%insn_004026ac) > 7
        %error "LONG_004026AC"
    %endif
    times 7 - ($ - %%insn_004026ac) db 0
    %%insn_004026b3:
    jnz short 0x4026d0 ; 004026B3 751B
    %if ($ - %%insn_004026b3) > 2
        %error "LONG_004026B3"
    %endif
    times 2 - ($ - %%insn_004026b3) db 0
    %%insn_004026b5:
    mov ecx,[0x41f324] ; 004026B5 8B0D24F34100
    %if ($ - %%insn_004026b5) > 6
        %error "LONG_004026B5"
    %endif
    times 6 - ($ - %%insn_004026b5) db 0
    %%insn_004026bb:
    push ecx ; 004026BB 51
    %if ($ - %%insn_004026bb) > 1
        %error "LONG_004026BB"
    %endif
    times 1 - ($ - %%insn_004026bb) db 0
    %%insn_004026bc:
    call 0x401f5f ; 004026BC E89EF8FFFF
    %if ($ - %%insn_004026bc) > 5
        %error "LONG_004026BC"
    %endif
    times 5 - ($ - %%insn_004026bc) db 0
    %%insn_004026c1:
    add esp,0x4 ; 004026C1 83C404
    %if ($ - %%insn_004026c1) > 3
        %error "LONG_004026C1"
    %endif
    times 3 - ($ - %%insn_004026c1) db 0
    %%insn_004026c4:
    mov dword [0x41f32c],0x1 ; 004026C4 C7052CF3410001000000
    %if ($ - %%insn_004026c4) > 10
        %error "LONG_004026C4"
    %endif
    times 10 - ($ - %%insn_004026c4) db 0
    %%insn_004026ce:
    jmp short 0x4026da ; 004026CE EB0A
    %if ($ - %%insn_004026ce) > 2
        %error "LONG_004026CE"
    %endif
    times 2 - ($ - %%insn_004026ce) db 0
    %%insn_004026d0:
    mov dword [0x41f32c],0x0 ; 004026D0 C7052CF3410000000000
    %if ($ - %%insn_004026d0) > 10
        %error "LONG_004026D0"
    %endif
    times 10 - ($ - %%insn_004026d0) db 0
    %%insn_004026da:
    jmp 0x4041db ; 004026DA E9FC1A0000
    %if ($ - %%insn_004026da) > 5
        %error "LONG_004026DA"
    %endif
    times 5 - ($ - %%insn_004026da) db 0
    %%insn_004026df:
    call 0x401449 ; 004026DF E865EDFFFF
    %if ($ - %%insn_004026df) > 5
        %error "LONG_004026DF"
    %endif
    times 5 - ($ - %%insn_004026df) db 0
    %%insn_004026e4:
    mov [ebp-0x140],al ; 004026E4 8885C0FEFFFF
    %if ($ - %%insn_004026e4) > 6
        %error "LONG_004026E4"
    %endif
    times 6 - ($ - %%insn_004026e4) db 0
    %%insn_004026ea:
    call 0x401473 ; 004026EA E884EDFFFF
    %if ($ - %%insn_004026ea) > 5
        %error "LONG_004026EA"
    %endif
    times 5 - ($ - %%insn_004026ea) db 0
    %%insn_004026ef:
    mov [ebp-0x18],ax ; 004026EF 668945E8
    %if ($ - %%insn_004026ef) > 4
        %error "LONG_004026EF"
    %endif
    times 4 - ($ - %%insn_004026ef) db 0
    %%insn_004026f3:
    mov edx,[ebp-0x140] ; 004026F3 8B95C0FEFFFF
    %if ($ - %%insn_004026f3) > 6
        %error "LONG_004026F3"
    %endif
    times 6 - ($ - %%insn_004026f3) db 0
    %%insn_004026f9:
    and edx,0xff ; 004026F9 81E2FF000000
    %if ($ - %%insn_004026f9) > 6
        %error "LONG_004026F9"
    %endif
    times 6 - ($ - %%insn_004026f9) db 0
    db 0x33, 0xC0 ; 004026FF 33C0 | xor eax,eax | encoding preserved
    %%insn_00402701:
    mov al,[0x41f288] ; 00402701 A088F24100
    %if ($ - %%insn_00402701) > 5
        %error "LONG_00402701"
    %endif
    times 5 - ($ - %%insn_00402701) db 0
    db 0x3B, 0xD0 ; 00402706 3BD0 | cmp edx,eax | encoding preserved
    %%insn_00402708:
    jnz short 0x40272b ; 00402708 7521
    %if ($ - %%insn_00402708) > 2
        %error "LONG_00402708"
    %endif
    times 2 - ($ - %%insn_00402708) db 0
    %%insn_0040270a:
    cmp dword [0x41f2fc],0xffffffffffffffff ; 0040270A 833DFCF24100FF
    %if ($ - %%insn_0040270a) > 7
        %error "LONG_0040270A"
    %endif
    times 7 - ($ - %%insn_0040270a) db 0
    %%insn_00402711:
    jnz short 0x40272b ; 00402711 7518
    %if ($ - %%insn_00402711) > 2
        %error "LONG_00402711"
    %endif
    times 2 - ($ - %%insn_00402711) db 0
    %%insn_00402713:
    mov word [0x41f328],0x0 ; 00402713 66C70528F341000000
    %if ($ - %%insn_00402713) > 9
        %error "LONG_00402713"
    %endif
    times 9 - ($ - %%insn_00402713) db 0
    %%insn_0040271c:
    mov ecx,[ebp-0x18] ; 0040271C 8B4DE8
    %if ($ - %%insn_0040271c) > 3
        %error "LONG_0040271C"
    %endif
    times 3 - ($ - %%insn_0040271c) db 0
    %%insn_0040271f:
    and ecx,0xffff ; 0040271F 81E1FFFF0000
    %if ($ - %%insn_0040271f) > 6
        %error "LONG_0040271F"
    %endif
    times 6 - ($ - %%insn_0040271f) db 0
    %%insn_00402725:
    mov [0x41f2fc],ecx ; 00402725 890DFCF24100
    %if ($ - %%insn_00402725) > 6
        %error "LONG_00402725"
    %endif
    times 6 - ($ - %%insn_00402725) db 0
    %%insn_0040272b:
    jmp 0x4041db ; 0040272B E9AB1A0000
    %if ($ - %%insn_0040272b) > 5
        %error "LONG_0040272B"
    %endif
    times 5 - ($ - %%insn_0040272b) db 0
    %%insn_00402730:
    call 0x401473 ; 00402730 E83EEDFFFF
    %if ($ - %%insn_00402730) > 5
        %error "LONG_00402730"
    %endif
    times 5 - ($ - %%insn_00402730) db 0
    %%insn_00402735:
    and eax,0xffff ; 00402735 25FFFF0000
    %if ($ - %%insn_00402735) > 5
        %error "LONG_00402735"
    %endif
    times 5 - ($ - %%insn_00402735) db 0
    %%insn_0040273a:
    mov [ebp-0x8],eax ; 0040273A 8945F8
    %if ($ - %%insn_0040273a) > 3
        %error "LONG_0040273A"
    %endif
    times 3 - ($ - %%insn_0040273a) db 0
    %%insn_0040273d:
    call 0x401473 ; 0040273D E831EDFFFF
    %if ($ - %%insn_0040273d) > 5
        %error "LONG_0040273D"
    %endif
    times 5 - ($ - %%insn_0040273d) db 0
    %%insn_00402742:
    and eax,0xffff ; 00402742 25FFFF0000
    %if ($ - %%insn_00402742) > 5
        %error "LONG_00402742"
    %endif
    times 5 - ($ - %%insn_00402742) db 0
    %%insn_00402747:
    mov [ebp-0x4],eax ; 00402747 8945FC
    %if ($ - %%insn_00402747) > 3
        %error "LONG_00402747"
    %endif
    times 3 - ($ - %%insn_00402747) db 0
    %%insn_0040274a:
    call 0x401473 ; 0040274A E824EDFFFF
    %if ($ - %%insn_0040274a) > 5
        %error "LONG_0040274A"
    %endif
    times 5 - ($ - %%insn_0040274a) db 0
    %%insn_0040274f:
    and eax,0xffff ; 0040274F 25FFFF0000
    %if ($ - %%insn_0040274f) > 5
        %error "LONG_0040274F"
    %endif
    times 5 - ($ - %%insn_0040274f) db 0
    %%insn_00402754:
    mov [ebp-0x130],eax ; 00402754 8985D0FEFFFF
    %if ($ - %%insn_00402754) > 6
        %error "LONG_00402754"
    %endif
    times 6 - ($ - %%insn_00402754) db 0
    %%insn_0040275a:
    call 0x401473 ; 0040275A E814EDFFFF
    %if ($ - %%insn_0040275a) > 5
        %error "LONG_0040275A"
    %endif
    times 5 - ($ - %%insn_0040275a) db 0
    %%insn_0040275f:
    and eax,0xffff ; 0040275F 25FFFF0000
    %if ($ - %%insn_0040275f) > 5
        %error "LONG_0040275F"
    %endif
    times 5 - ($ - %%insn_0040275f) db 0
    %%insn_00402764:
    mov [ebp-0x138],eax ; 00402764 8985C8FEFFFF
    %if ($ - %%insn_00402764) > 6
        %error "LONG_00402764"
    %endif
    times 6 - ($ - %%insn_00402764) db 0
    %%insn_0040276a:
    call 0x401473 ; 0040276A E804EDFFFF
    %if ($ - %%insn_0040276a) > 5
        %error "LONG_0040276A"
    %endif
    times 5 - ($ - %%insn_0040276a) db 0
    %%insn_0040276f:
    mov [ebp-0x18],ax ; 0040276F 668945E8
    %if ($ - %%insn_0040276f) > 4
        %error "LONG_0040276F"
    %endif
    times 4 - ($ - %%insn_0040276f) db 0
    %%insn_00402773:
    mov edx,[0x41f5d0] ; 00402773 8B15D0F54100
    %if ($ - %%insn_00402773) > 6
        %error "LONG_00402773"
    %endif
    times 6 - ($ - %%insn_00402773) db 0
    %%insn_00402779:
    cmp edx,[ebp-0x8] ; 00402779 3B55F8
    %if ($ - %%insn_00402779) > 3
        %error "LONG_00402779"
    %endif
    times 3 - ($ - %%insn_00402779) db 0
    %%insn_0040277c:
    jl short 0x4027af ; 0040277C 7C31
    %if ($ - %%insn_0040277c) > 2
        %error "LONG_0040277C"
    %endif
    times 2 - ($ - %%insn_0040277c) db 0
    %%insn_0040277e:
    mov eax,[0x41f5d0] ; 0040277E A1D0F54100
    %if ($ - %%insn_0040277e) > 5
        %error "LONG_0040277E"
    %endif
    times 5 - ($ - %%insn_0040277e) db 0
    %%insn_00402783:
    cmp eax,[ebp-0x130] ; 00402783 3B85D0FEFFFF
    %if ($ - %%insn_00402783) > 6
        %error "LONG_00402783"
    %endif
    times 6 - ($ - %%insn_00402783) db 0
    %%insn_00402789:
    jg short 0x4027af ; 00402789 7F24
    %if ($ - %%insn_00402789) > 2
        %error "LONG_00402789"
    %endif
    times 2 - ($ - %%insn_00402789) db 0
    %%insn_0040278b:
    mov ecx,[0x41f5d4] ; 0040278B 8B0DD4F54100
    %if ($ - %%insn_0040278b) > 6
        %error "LONG_0040278B"
    %endif
    times 6 - ($ - %%insn_0040278b) db 0
    %%insn_00402791:
    cmp ecx,[ebp-0x4] ; 00402791 3B4DFC
    %if ($ - %%insn_00402791) > 3
        %error "LONG_00402791"
    %endif
    times 3 - ($ - %%insn_00402791) db 0
    %%insn_00402794:
    jl short 0x4027af ; 00402794 7C19
    %if ($ - %%insn_00402794) > 2
        %error "LONG_00402794"
    %endif
    times 2 - ($ - %%insn_00402794) db 0
    %%insn_00402796:
    mov edx,[0x41f5d4] ; 00402796 8B15D4F54100
    %if ($ - %%insn_00402796) > 6
        %error "LONG_00402796"
    %endif
    times 6 - ($ - %%insn_00402796) db 0
    %%insn_0040279c:
    cmp edx,[ebp-0x138] ; 0040279C 3B95C8FEFFFF
    %if ($ - %%insn_0040279c) > 6
        %error "LONG_0040279C"
    %endif
    times 6 - ($ - %%insn_0040279c) db 0
    %%insn_004027a2:
    jg short 0x4027af ; 004027A2 7F0B
    %if ($ - %%insn_004027a2) > 2
        %error "LONG_004027A2"
    %endif
    times 2 - ($ - %%insn_004027a2) db 0
    %%insn_004027a4:
    cmp dword [0x41f2fc],0xffffffffffffffff ; 004027A4 833DFCF24100FF
    %if ($ - %%insn_004027a4) > 7
        %error "LONG_004027A4"
    %endif
    times 7 - ($ - %%insn_004027a4) db 0
    %%insn_004027ab:
    jnz short 0x4027af ; 004027AB 7502
    %if ($ - %%insn_004027ab) > 2
        %error "LONG_004027AB"
    %endif
    times 2 - ($ - %%insn_004027ab) db 0
    %%insn_004027ad:
    jmp short 0x4027bc ; 004027AD EB0D
    %if ($ - %%insn_004027ad) > 2
        %error "LONG_004027AD"
    %endif
    times 2 - ($ - %%insn_004027ad) db 0
    %%insn_004027af:
    mov eax,[ebp-0x18] ; 004027AF 8B45E8
    %if ($ - %%insn_004027af) > 3
        %error "LONG_004027AF"
    %endif
    times 3 - ($ - %%insn_004027af) db 0
    %%insn_004027b2:
    and eax,0xffff ; 004027B2 25FFFF0000
    %if ($ - %%insn_004027b2) > 5
        %error "LONG_004027B2"
    %endif
    times 5 - ($ - %%insn_004027b2) db 0
    %%insn_004027b7:
    mov [0x41f2fc],eax ; 004027B7 A3FCF24100
    %if ($ - %%insn_004027b7) > 5
        %error "LONG_004027B7"
    %endif
    times 5 - ($ - %%insn_004027b7) db 0
    %%insn_004027bc:
    jmp 0x4041db ; 004027BC E91A1A0000
    %if ($ - %%insn_004027bc) > 5
        %error "LONG_004027BC"
    %endif
    times 5 - ($ - %%insn_004027bc) db 0
    %%insn_004027c1:
    call 0x401473 ; 004027C1 E8ADECFFFF
    %if ($ - %%insn_004027c1) > 5
        %error "LONG_004027C1"
    %endif
    times 5 - ($ - %%insn_004027c1) db 0
    %%insn_004027c6:
    and eax,0xffff ; 004027C6 25FFFF0000
    %if ($ - %%insn_004027c6) > 5
        %error "LONG_004027C6"
    %endif
    times 5 - ($ - %%insn_004027c6) db 0
    %%insn_004027cb:
    mov [ebp-0x8],eax ; 004027CB 8945F8
    %if ($ - %%insn_004027cb) > 3
        %error "LONG_004027CB"
    %endif
    times 3 - ($ - %%insn_004027cb) db 0
    %%insn_004027ce:
    call 0x401473 ; 004027CE E8A0ECFFFF
    %if ($ - %%insn_004027ce) > 5
        %error "LONG_004027CE"
    %endif
    times 5 - ($ - %%insn_004027ce) db 0
    %%insn_004027d3:
    and eax,0xffff ; 004027D3 25FFFF0000
    %if ($ - %%insn_004027d3) > 5
        %error "LONG_004027D3"
    %endif
    times 5 - ($ - %%insn_004027d3) db 0
    %%insn_004027d8:
    mov [ebp-0x4],eax ; 004027D8 8945FC
    %if ($ - %%insn_004027d8) > 3
        %error "LONG_004027D8"
    %endif
    times 3 - ($ - %%insn_004027d8) db 0
    %%insn_004027db:
    call 0x401473 ; 004027DB E893ECFFFF
    %if ($ - %%insn_004027db) > 5
        %error "LONG_004027DB"
    %endif
    times 5 - ($ - %%insn_004027db) db 0
    %%insn_004027e0:
    and eax,0xffff ; 004027E0 25FFFF0000
    %if ($ - %%insn_004027e0) > 5
        %error "LONG_004027E0"
    %endif
    times 5 - ($ - %%insn_004027e0) db 0
    %%insn_004027e5:
    mov [ebp-0x130],eax ; 004027E5 8985D0FEFFFF
    %if ($ - %%insn_004027e5) > 6
        %error "LONG_004027E5"
    %endif
    times 6 - ($ - %%insn_004027e5) db 0
    %%insn_004027eb:
    call 0x401473 ; 004027EB E883ECFFFF
    %if ($ - %%insn_004027eb) > 5
        %error "LONG_004027EB"
    %endif
    times 5 - ($ - %%insn_004027eb) db 0
    %%insn_004027f0:
    and eax,0xffff ; 004027F0 25FFFF0000
    %if ($ - %%insn_004027f0) > 5
        %error "LONG_004027F0"
    %endif
    times 5 - ($ - %%insn_004027f0) db 0
    %%insn_004027f5:
    mov [ebp-0x138],eax ; 004027F5 8985C8FEFFFF
    %if ($ - %%insn_004027f5) > 6
        %error "LONG_004027F5"
    %endif
    times 6 - ($ - %%insn_004027f5) db 0
    %%insn_004027fb:
    call 0x401473 ; 004027FB E873ECFFFF
    %if ($ - %%insn_004027fb) > 5
        %error "LONG_004027FB"
    %endif
    times 5 - ($ - %%insn_004027fb) db 0
    %%insn_00402800:
    mov [ebp-0x18],ax ; 00402800 668945E8
    %if ($ - %%insn_00402800) > 4
        %error "LONG_00402800"
    %endif
    times 4 - ($ - %%insn_00402800) db 0
    %%insn_00402804:
    call 0x401449 ; 00402804 E840ECFFFF
    %if ($ - %%insn_00402804) > 5
        %error "LONG_00402804"
    %endif
    times 5 - ($ - %%insn_00402804) db 0
    %%insn_00402809:
    mov [ebp-0x140],al ; 00402809 8885C0FEFFFF
    %if ($ - %%insn_00402809) > 6
        %error "LONG_00402809"
    %endif
    times 6 - ($ - %%insn_00402809) db 0
    %%insn_0040280f:
    mov ecx,[0x41f5d0] ; 0040280F 8B0DD0F54100
    %if ($ - %%insn_0040280f) > 6
        %error "LONG_0040280F"
    %endif
    times 6 - ($ - %%insn_0040280f) db 0
    %%insn_00402815:
    cmp ecx,[ebp-0x8] ; 00402815 3B4DF8
    %if ($ - %%insn_00402815) > 3
        %error "LONG_00402815"
    %endif
    times 3 - ($ - %%insn_00402815) db 0
    %%insn_00402818:
    jl short 0x40287f ; 00402818 7C65
    %if ($ - %%insn_00402818) > 2
        %error "LONG_00402818"
    %endif
    times 2 - ($ - %%insn_00402818) db 0
    %%insn_0040281a:
    mov edx,[0x41f5d0] ; 0040281A 8B15D0F54100
    %if ($ - %%insn_0040281a) > 6
        %error "LONG_0040281A"
    %endif
    times 6 - ($ - %%insn_0040281a) db 0
    %%insn_00402820:
    cmp edx,[ebp-0x130] ; 00402820 3B95D0FEFFFF
    %if ($ - %%insn_00402820) > 6
        %error "LONG_00402820"
    %endif
    times 6 - ($ - %%insn_00402820) db 0
    %%insn_00402826:
    jg short 0x40287f ; 00402826 7F57
    %if ($ - %%insn_00402826) > 2
        %error "LONG_00402826"
    %endif
    times 2 - ($ - %%insn_00402826) db 0
    %%insn_00402828:
    mov eax,[0x41f5d4] ; 00402828 A1D4F54100
    %if ($ - %%insn_00402828) > 5
        %error "LONG_00402828"
    %endif
    times 5 - ($ - %%insn_00402828) db 0
    %%insn_0040282d:
    cmp eax,[ebp-0x4] ; 0040282D 3B45FC
    %if ($ - %%insn_0040282d) > 3
        %error "LONG_0040282D"
    %endif
    times 3 - ($ - %%insn_0040282d) db 0
    %%insn_00402830:
    jl short 0x40287f ; 00402830 7C4D
    %if ($ - %%insn_00402830) > 2
        %error "LONG_00402830"
    %endif
    times 2 - ($ - %%insn_00402830) db 0
    %%insn_00402832:
    mov ecx,[0x41f5d4] ; 00402832 8B0DD4F54100
    %if ($ - %%insn_00402832) > 6
        %error "LONG_00402832"
    %endif
    times 6 - ($ - %%insn_00402832) db 0
    %%insn_00402838:
    cmp ecx,[ebp-0x138] ; 00402838 3B8DC8FEFFFF
    %if ($ - %%insn_00402838) > 6
        %error "LONG_00402838"
    %endif
    times 6 - ($ - %%insn_00402838) db 0
    %%insn_0040283e:
    jg short 0x40287f ; 0040283E 7F3F
    %if ($ - %%insn_0040283e) > 2
        %error "LONG_0040283E"
    %endif
    times 2 - ($ - %%insn_0040283e) db 0
    %%insn_00402840:
    cmp dword [0x41f2fc],0xffffffffffffffff ; 00402840 833DFCF24100FF
    %if ($ - %%insn_00402840) > 7
        %error "LONG_00402840"
    %endif
    times 7 - ($ - %%insn_00402840) db 0
    %%insn_00402847:
    jnz short 0x40287f ; 00402847 7536
    %if ($ - %%insn_00402847) > 2
        %error "LONG_00402847"
    %endif
    times 2 - ($ - %%insn_00402847) db 0
    %%insn_00402849:
    cmp dword [0x41f2bc],0x5 ; 00402849 833DBCF2410005
    %if ($ - %%insn_00402849) > 7
        %error "LONG_00402849"
    %endif
    times 7 - ($ - %%insn_00402849) db 0
    %%insn_00402850:
    jnz short 0x402864 ; 00402850 7512
    %if ($ - %%insn_00402850) > 2
        %error "LONG_00402850"
    %endif
    times 2 - ($ - %%insn_00402850) db 0
    %%insn_00402852:
    mov edx,[ebp-0x140] ; 00402852 8B95C0FEFFFF
    %if ($ - %%insn_00402852) > 6
        %error "LONG_00402852"
    %endif
    times 6 - ($ - %%insn_00402852) db 0
    %%insn_00402858:
    and edx,0xff ; 00402858 81E2FF000000
    %if ($ - %%insn_00402858) > 6
        %error "LONG_00402858"
    %endif
    times 6 - ($ - %%insn_00402858) db 0
    %%insn_0040285e:
    mov [0x41f2bc],edx ; 0040285E 8915BCF24100
    %if ($ - %%insn_0040285e) > 6
        %error "LONG_0040285E"
    %endif
    times 6 - ($ - %%insn_0040285e) db 0
    %%insn_00402864:
    mov eax,[0x41f5c8] ; 00402864 A1C8F54100
    %if ($ - %%insn_00402864) > 5
        %error "LONG_00402864"
    %endif
    times 5 - ($ - %%insn_00402864) db 0
    %%insn_00402869:
    and eax,0x1 ; 00402869 83E001
    %if ($ - %%insn_00402869) > 3
        %error "LONG_00402869"
    %endif
    times 3 - ($ - %%insn_00402869) db 0
    %%insn_0040286c:
    test eax,eax ; 0040286C 85C0
    %if ($ - %%insn_0040286c) > 2
        %error "LONG_0040286C"
    %endif
    times 2 - ($ - %%insn_0040286c) db 0
    %%insn_0040286e:
    jz short 0x40287f ; 0040286E 740F
    %if ($ - %%insn_0040286e) > 2
        %error "LONG_0040286E"
    %endif
    times 2 - ($ - %%insn_0040286e) db 0
    %%insn_00402870:
    mov ecx,[ebp-0x18] ; 00402870 8B4DE8
    %if ($ - %%insn_00402870) > 3
        %error "LONG_00402870"
    %endif
    times 3 - ($ - %%insn_00402870) db 0
    %%insn_00402873:
    and ecx,0xffff ; 00402873 81E1FFFF0000
    %if ($ - %%insn_00402873) > 6
        %error "LONG_00402873"
    %endif
    times 6 - ($ - %%insn_00402873) db 0
    %%insn_00402879:
    mov [0x41f2fc],ecx ; 00402879 890DFCF24100
    %if ($ - %%insn_00402879) > 6
        %error "LONG_00402879"
    %endif
    times 6 - ($ - %%insn_00402879) db 0
    %%insn_0040287f:
    jmp 0x4041db ; 0040287F E957190000
    %if ($ - %%insn_0040287f) > 5
        %error "LONG_0040287F"
    %endif
    times 5 - ($ - %%insn_0040287f) db 0
    %%insn_00402884:
    call 0x401449 ; 00402884 E8C0EBFFFF
    %if ($ - %%insn_00402884) > 5
        %error "LONG_00402884"
    %endif
    times 5 - ($ - %%insn_00402884) db 0
    %%insn_00402889:
    and eax,0xff ; 00402889 25FF000000
    %if ($ - %%insn_00402889) > 5
        %error "LONG_00402889"
    %endif
    times 5 - ($ - %%insn_00402889) db 0
    %%insn_0040288e:
    mov [ebp-0xc],eax ; 0040288E 8945F4
    %if ($ - %%insn_0040288e) > 3
        %error "LONG_0040288E"
    %endif
    times 3 - ($ - %%insn_0040288e) db 0
    %%insn_00402891:
    call 0x401473 ; 00402891 E8DDEBFFFF
    %if ($ - %%insn_00402891) > 5
        %error "LONG_00402891"
    %endif
    times 5 - ($ - %%insn_00402891) db 0
    %%insn_00402896:
    and eax,0xffff ; 00402896 25FFFF0000
    %if ($ - %%insn_00402896) > 5
        %error "LONG_00402896"
    %endif
    times 5 - ($ - %%insn_00402896) db 0
    %%insn_0040289b:
    mov [ebp-0x8],eax ; 0040289B 8945F8
    %if ($ - %%insn_0040289b) > 3
        %error "LONG_0040289B"
    %endif
    times 3 - ($ - %%insn_0040289b) db 0
    %%insn_0040289e:
    call 0x401473 ; 0040289E E8D0EBFFFF
    %if ($ - %%insn_0040289e) > 5
        %error "LONG_0040289E"
    %endif
    times 5 - ($ - %%insn_0040289e) db 0
    %%insn_004028a3:
    and eax,0xffff ; 004028A3 25FFFF0000
    %if ($ - %%insn_004028a3) > 5
        %error "LONG_004028A3"
    %endif
    times 5 - ($ - %%insn_004028a3) db 0
    %%insn_004028a8:
    mov [ebp-0x4],eax ; 004028A8 8945FC
    %if ($ - %%insn_004028a8) > 3
        %error "LONG_004028A8"
    %endif
    times 3 - ($ - %%insn_004028a8) db 0
    %%insn_004028ab:
    call 0x401473 ; 004028AB E8C3EBFFFF
    %if ($ - %%insn_004028ab) > 5
        %error "LONG_004028AB"
    %endif
    times 5 - ($ - %%insn_004028ab) db 0
    %%insn_004028b0:
    and eax,0xffff ; 004028B0 25FFFF0000
    %if ($ - %%insn_004028b0) > 5
        %error "LONG_004028B0"
    %endif
    times 5 - ($ - %%insn_004028b0) db 0
    %%insn_004028b5:
    mov [ebp-0x130],eax ; 004028B5 8985D0FEFFFF
    %if ($ - %%insn_004028b5) > 6
        %error "LONG_004028B5"
    %endif
    times 6 - ($ - %%insn_004028b5) db 0
    %%insn_004028bb:
    call 0x401473 ; 004028BB E8B3EBFFFF
    %if ($ - %%insn_004028bb) > 5
        %error "LONG_004028BB"
    %endif
    times 5 - ($ - %%insn_004028bb) db 0
    %%insn_004028c0:
    and eax,0xffff ; 004028C0 25FFFF0000
    %if ($ - %%insn_004028c0) > 5
        %error "LONG_004028C0"
    %endif
    times 5 - ($ - %%insn_004028c0) db 0
    %%insn_004028c5:
    mov [ebp-0x138],eax ; 004028C5 8985C8FEFFFF
    %if ($ - %%insn_004028c5) > 6
        %error "LONG_004028C5"
    %endif
    times 6 - ($ - %%insn_004028c5) db 0
    %%insn_004028cb:
    call 0x401473 ; 004028CB E8A3EBFFFF
    %if ($ - %%insn_004028cb) > 5
        %error "LONG_004028CB"
    %endif
    times 5 - ($ - %%insn_004028cb) db 0
    %%insn_004028d0:
    mov [ebp-0x18],ax ; 004028D0 668945E8
    %if ($ - %%insn_004028d0) > 4
        %error "LONG_004028D0"
    %endif
    times 4 - ($ - %%insn_004028d0) db 0
    %%insn_004028d4:
    call 0x401449 ; 004028D4 E870EBFFFF
    %if ($ - %%insn_004028d4) > 5
        %error "LONG_004028D4"
    %endif
    times 5 - ($ - %%insn_004028d4) db 0
    %%insn_004028d9:
    mov [ebp-0x140],al ; 004028D9 8885C0FEFFFF
    %if ($ - %%insn_004028d9) > 6
        %error "LONG_004028D9"
    %endif
    times 6 - ($ - %%insn_004028d9) db 0
    %%insn_004028df:
    mov edx,[0x41f5d0] ; 004028DF 8B15D0F54100
    %if ($ - %%insn_004028df) > 6
        %error "LONG_004028DF"
    %endif
    times 6 - ($ - %%insn_004028df) db 0
    %%insn_004028e5:
    cmp edx,[ebp-0x8] ; 004028E5 3B55F8
    %if ($ - %%insn_004028e5) > 3
        %error "LONG_004028E5"
    %endif
    times 3 - ($ - %%insn_004028e5) db 0
    %%insn_004028e8:
    jl 0x402a4e ; 004028E8 0F8C60010000
    %if ($ - %%insn_004028e8) > 6
        %error "LONG_004028E8"
    %endif
    times 6 - ($ - %%insn_004028e8) db 0
    %%insn_004028ee:
    mov eax,[0x41f5d0] ; 004028EE A1D0F54100
    %if ($ - %%insn_004028ee) > 5
        %error "LONG_004028EE"
    %endif
    times 5 - ($ - %%insn_004028ee) db 0
    %%insn_004028f3:
    cmp eax,[ebp-0x130] ; 004028F3 3B85D0FEFFFF
    %if ($ - %%insn_004028f3) > 6
        %error "LONG_004028F3"
    %endif
    times 6 - ($ - %%insn_004028f3) db 0
    %%insn_004028f9:
    jg 0x402a4e ; 004028F9 0F8F4F010000
    %if ($ - %%insn_004028f9) > 6
        %error "LONG_004028F9"
    %endif
    times 6 - ($ - %%insn_004028f9) db 0
    %%insn_004028ff:
    mov ecx,[0x41f5d4] ; 004028FF 8B0DD4F54100
    %if ($ - %%insn_004028ff) > 6
        %error "LONG_004028FF"
    %endif
    times 6 - ($ - %%insn_004028ff) db 0
    %%insn_00402905:
    cmp ecx,[ebp-0x4] ; 00402905 3B4DFC
    %if ($ - %%insn_00402905) > 3
        %error "LONG_00402905"
    %endif
    times 3 - ($ - %%insn_00402905) db 0
    %%insn_00402908:
    jl 0x402a4e ; 00402908 0F8C40010000
    %if ($ - %%insn_00402908) > 6
        %error "LONG_00402908"
    %endif
    times 6 - ($ - %%insn_00402908) db 0
    %%insn_0040290e:
    mov edx,[0x41f5d4] ; 0040290E 8B15D4F54100
    %if ($ - %%insn_0040290e) > 6
        %error "LONG_0040290E"
    %endif
    times 6 - ($ - %%insn_0040290e) db 0
    %%insn_00402914:
    cmp edx,[ebp-0x138] ; 00402914 3B95C8FEFFFF
    %if ($ - %%insn_00402914) > 6
        %error "LONG_00402914"
    %endif
    times 6 - ($ - %%insn_00402914) db 0
    %%insn_0040291a:
    jg 0x402a4e ; 0040291A 0F8F2E010000
    %if ($ - %%insn_0040291a) > 6
        %error "LONG_0040291A"
    %endif
    times 6 - ($ - %%insn_0040291a) db 0
    %%insn_00402920:
    cmp dword [0x41f2fc],0xffffffffffffffff ; 00402920 833DFCF24100FF
    %if ($ - %%insn_00402920) > 7
        %error "LONG_00402920"
    %endif
    times 7 - ($ - %%insn_00402920) db 0
    %%insn_00402927:
    jnz 0x402a4e ; 00402927 0F8521010000
    %if ($ - %%insn_00402927) > 6
        %error "LONG_00402927"
    %endif
    times 6 - ($ - %%insn_00402927) db 0
    %%insn_0040292d:
    cmp dword [0x41f2bc],0x5 ; 0040292D 833DBCF2410005
    %if ($ - %%insn_0040292d) > 7
        %error "LONG_0040292D"
    %endif
    times 7 - ($ - %%insn_0040292d) db 0
    %%insn_00402934:
    jnz short 0x402946 ; 00402934 7510
    %if ($ - %%insn_00402934) > 2
        %error "LONG_00402934"
    %endif
    times 2 - ($ - %%insn_00402934) db 0
    %%insn_00402936:
    mov eax,[ebp-0x140] ; 00402936 8B85C0FEFFFF
    %if ($ - %%insn_00402936) > 6
        %error "LONG_00402936"
    %endif
    times 6 - ($ - %%insn_00402936) db 0
    %%insn_0040293c:
    and eax,0xff ; 0040293C 25FF000000
    %if ($ - %%insn_0040293c) > 5
        %error "LONG_0040293C"
    %endif
    times 5 - ($ - %%insn_0040293c) db 0
    %%insn_00402941:
    mov [0x41f2bc],eax ; 00402941 A3BCF24100
    %if ($ - %%insn_00402941) > 5
        %error "LONG_00402941"
    %endif
    times 5 - ($ - %%insn_00402941) db 0
    %%insn_00402946:
    mov ecx,[ebp-0xc] ; 00402946 8B4DF4
    %if ($ - %%insn_00402946) > 3
        %error "LONG_00402946"
    %endif
    times 3 - ($ - %%insn_00402946) db 0
    %%insn_00402949:
    push ecx ; 00402949 51
    %if ($ - %%insn_00402949) > 1
        %error "LONG_00402949"
    %endif
    times 1 - ($ - %%insn_00402949) db 0
    %%insn_0040294a:
    push dword 0x41b1a4 ; 0040294A 68A4B14100
    %if ($ - %%insn_0040294a) > 5
        %error "LONG_0040294A"
    %endif
    times 5 - ($ - %%insn_0040294a) db 0
    %%insn_0040294f:
    lea edx,[ebp-0x118] ; 0040294F 8D95E8FEFFFF
    %if ($ - %%insn_0040294f) > 6
        %error "LONG_0040294F"
    %endif
    times 6 - ($ - %%insn_0040294f) db 0
    %%insn_00402955:
    push edx ; 00402955 52
    %if ($ - %%insn_00402955) > 1
        %error "LONG_00402955"
    %endif
    times 1 - ($ - %%insn_00402955) db 0
    %%insn_00402956:
    call 0x40cd50 ; 00402956 E8F5A30000
    %if ($ - %%insn_00402956) > 5
        %error "LONG_00402956"
    %endif
    times 5 - ($ - %%insn_00402956) db 0
    %%insn_0040295b:
    add esp,0xc ; 0040295B 83C40C
    %if ($ - %%insn_0040295b) > 3
        %error "LONG_0040295B"
    %endif
    times 3 - ($ - %%insn_0040295b) db 0
    %%insn_0040295e:
    push dword 0x41b1ac ; 0040295E 68ACB14100
    %if ($ - %%insn_0040295e) > 5
        %error "LONG_0040295E"
    %endif
    times 5 - ($ - %%insn_0040295e) db 0
    %%insn_00402963:
    lea eax,[ebp-0x118] ; 00402963 8D85E8FEFFFF
    %if ($ - %%insn_00402963) > 6
        %error "LONG_00402963"
    %endif
    times 6 - ($ - %%insn_00402963) db 0
    %%insn_00402969:
    push eax ; 00402969 50
    %if ($ - %%insn_00402969) > 1
        %error "LONG_00402969"
    %endif
    times 1 - ($ - %%insn_00402969) db 0
    %%insn_0040296a:
    call 0x40d150 ; 0040296A E8E1A70000
    %if ($ - %%insn_0040296a) > 5
        %error "LONG_0040296A"
    %endif
    times 5 - ($ - %%insn_0040296a) db 0
    %%insn_0040296f:
    add esp,0x8 ; 0040296F 83C408
    %if ($ - %%insn_0040296f) > 3
        %error "LONG_0040296F"
    %endif
    times 3 - ($ - %%insn_0040296f) db 0
    %%insn_00402972:
    mov [ebp-0x144],eax ; 00402972 8985BCFEFFFF
    %if ($ - %%insn_00402972) > 6
        %error "LONG_00402972"
    %endif
    times 6 - ($ - %%insn_00402972) db 0
    %%insn_00402978:
    cmp dword [ebp-0x144],0x0 ; 00402978 83BDBCFEFFFF00
    %if ($ - %%insn_00402978) > 7
        %error "LONG_00402978"
    %endif
    times 7 - ($ - %%insn_00402978) db 0
    %%insn_0040297f:
    jz short 0x4029fc ; 0040297F 747B
    %if ($ - %%insn_0040297f) > 2
        %error "LONG_0040297F"
    %endif
    times 2 - ($ - %%insn_0040297f) db 0
    %%insn_00402981:
    mov ecx,[ebp-0x144] ; 00402981 8B8DBCFEFFFF
    %if ($ - %%insn_00402981) > 6
        %error "LONG_00402981"
    %endif
    times 6 - ($ - %%insn_00402981) db 0
    %%insn_00402987:
    push ecx ; 00402987 51
    %if ($ - %%insn_00402987) > 1
        %error "LONG_00402987"
    %endif
    times 1 - ($ - %%insn_00402987) db 0
    %%insn_00402988:
    push dword 0x1 ; 00402988 6A01
    %if ($ - %%insn_00402988) > 2
        %error "LONG_00402988"
    %endif
    times 2 - ($ - %%insn_00402988) db 0
    %%insn_0040298a:
    push dword 0xf ; 0040298A 6A0F
    %if ($ - %%insn_0040298a) > 2
        %error "LONG_0040298A"
    %endif
    times 2 - ($ - %%insn_0040298a) db 0
    %%insn_0040298c:
    lea edx,[ebp-0x118] ; 0040298C 8D95E8FEFFFF
    %if ($ - %%insn_0040298c) > 6
        %error "LONG_0040298C"
    %endif
    times 6 - ($ - %%insn_0040298c) db 0
    %%insn_00402992:
    push edx ; 00402992 52
    %if ($ - %%insn_00402992) > 1
        %error "LONG_00402992"
    %endif
    times 1 - ($ - %%insn_00402992) db 0
    %%insn_00402993:
    call 0x40d170 ; 00402993 E8D8A70000
    %if ($ - %%insn_00402993) > 5
        %error "LONG_00402993"
    %endif
    times 5 - ($ - %%insn_00402993) db 0
    %%insn_00402998:
    add esp,0x10 ; 00402998 83C410
    %if ($ - %%insn_00402998) > 3
        %error "LONG_00402998"
    %endif
    times 3 - ($ - %%insn_00402998) db 0
    %%insn_0040299b:
    mov eax,[ebp-0x144] ; 0040299B 8B85BCFEFFFF
    %if ($ - %%insn_0040299b) > 6
        %error "LONG_0040299B"
    %endif
    times 6 - ($ - %%insn_0040299b) db 0
    %%insn_004029a1:
    push eax ; 004029A1 50
    %if ($ - %%insn_004029a1) > 1
        %error "LONG_004029A1"
    %endif
    times 1 - ($ - %%insn_004029a1) db 0
    %%insn_004029a2:
    call 0x40ced0 ; 004029A2 E829A50000
    %if ($ - %%insn_004029a2) > 5
        %error "LONG_004029A2"
    %endif
    times 5 - ($ - %%insn_004029a2) db 0
    %%insn_004029a7:
    add esp,0x4 ; 004029A7 83C404
    %if ($ - %%insn_004029a7) > 3
        %error "LONG_004029A7"
    %endif
    times 3 - ($ - %%insn_004029a7) db 0
    %%insn_004029aa:
    mov dword [ebp-0x134],0x0 ; 004029AA C785CCFEFFFF00000000
    %if ($ - %%insn_004029aa) > 10
        %error "LONG_004029AA"
    %endif
    times 10 - ($ - %%insn_004029aa) db 0
    %%insn_004029b4:
    jmp short 0x4029c5 ; 004029B4 EB0F
    %if ($ - %%insn_004029b4) > 2
        %error "LONG_004029B4"
    %endif
    times 2 - ($ - %%insn_004029b4) db 0
    %%insn_004029b6:
    mov ecx,[ebp-0x134] ; 004029B6 8B8DCCFEFFFF
    %if ($ - %%insn_004029b6) > 6
        %error "LONG_004029B6"
    %endif
    times 6 - ($ - %%insn_004029b6) db 0
    %%insn_004029bc:
    add ecx,0x1 ; 004029BC 83C101
    %if ($ - %%insn_004029bc) > 3
        %error "LONG_004029BC"
    %endif
    times 3 - ($ - %%insn_004029bc) db 0
    %%insn_004029bf:
    mov [ebp-0x134],ecx ; 004029BF 898DCCFEFFFF
    %if ($ - %%insn_004029bf) > 6
        %error "LONG_004029BF"
    %endif
    times 6 - ($ - %%insn_004029bf) db 0
    %%insn_004029c5:
    cmp dword [ebp-0x134],0xf ; 004029C5 83BDCCFEFFFF0F
    %if ($ - %%insn_004029c5) > 7
        %error "LONG_004029C5"
    %endif
    times 7 - ($ - %%insn_004029c5) db 0
    %%insn_004029cc:
    jnl short 0x4029ec ; 004029CC 7D1E
    %if ($ - %%insn_004029cc) > 2
        %error "LONG_004029CC"
    %endif
    times 2 - ($ - %%insn_004029cc) db 0
    %%insn_004029ce:
    mov edx,[ebp-0x134] ; 004029CE 8B95CCFEFFFF
    %if ($ - %%insn_004029ce) > 6
        %error "LONG_004029CE"
    %endif
    times 6 - ($ - %%insn_004029ce) db 0
    %%insn_004029d4:
    mov al,[ebp+edx-0x118] ; 004029D4 8A8415E8FEFFFF
    %if ($ - %%insn_004029d4) > 7
        %error "LONG_004029D4"
    %endif
    times 7 - ($ - %%insn_004029d4) db 0
    %%insn_004029db:
    add al,0x30 ; 004029DB 0430
    %if ($ - %%insn_004029db) > 2
        %error "LONG_004029DB"
    %endif
    times 2 - ($ - %%insn_004029db) db 0
    %%insn_004029dd:
    mov ecx,[ebp-0x134] ; 004029DD 8B8DCCFEFFFF
    %if ($ - %%insn_004029dd) > 6
        %error "LONG_004029DD"
    %endif
    times 6 - ($ - %%insn_004029dd) db 0
    %%insn_004029e3:
    mov [ebp+ecx-0x118],al ; 004029E3 88840DE8FEFFFF
    %if ($ - %%insn_004029e3) > 7
        %error "LONG_004029E3"
    %endif
    times 7 - ($ - %%insn_004029e3) db 0
    %%insn_004029ea:
    jmp short 0x4029b6 ; 004029EA EBCA
    %if ($ - %%insn_004029ea) > 2
        %error "LONG_004029EA"
    %endif
    times 2 - ($ - %%insn_004029ea) db 0
    %%insn_004029ec:
    mov edx,[ebp-0x134] ; 004029EC 8B95CCFEFFFF
    %if ($ - %%insn_004029ec) > 6
        %error "LONG_004029EC"
    %endif
    times 6 - ($ - %%insn_004029ec) db 0
    %%insn_004029f2:
    mov byte [ebp+edx-0x118],0x0 ; 004029F2 C68415E8FEFFFF00
    %if ($ - %%insn_004029f2) > 8
        %error "LONG_004029F2"
    %endif
    times 8 - ($ - %%insn_004029f2) db 0
    %%insn_004029fa:
    jmp short 0x402a10 ; 004029FA EB14
    %if ($ - %%insn_004029fa) > 2
        %error "LONG_004029FA"
    %endif
    times 2 - ($ - %%insn_004029fa) db 0
    %%insn_004029fc:
    push dword 0x41b1b0 ; 004029FC 68B0B14100
    %if ($ - %%insn_004029fc) > 5
        %error "LONG_004029FC"
    %endif
    times 5 - ($ - %%insn_004029fc) db 0
    %%insn_00402a01:
    lea eax,[ebp-0x118] ; 00402A01 8D85E8FEFFFF
    %if ($ - %%insn_00402a01) > 6
        %error "LONG_00402A01"
    %endif
    times 6 - ($ - %%insn_00402a01) db 0
    %%insn_00402a07:
    push eax ; 00402A07 50
    %if ($ - %%insn_00402a07) > 1
        %error "LONG_00402A07"
    %endif
    times 1 - ($ - %%insn_00402a07) db 0
    %%insn_00402a08:
    call 0x40cd50 ; 00402A08 E843A30000
    %if ($ - %%insn_00402a08) > 5
        %error "LONG_00402A08"
    %endif
    times 5 - ($ - %%insn_00402a08) db 0
    %%insn_00402a0d:
    add esp,0x8 ; 00402A0D 83C408
    %if ($ - %%insn_00402a0d) > 3
        %error "LONG_00402A0D"
    %endif
    times 3 - ($ - %%insn_00402a0d) db 0
    %%insn_00402a10:
    lea ecx,[ebp-0x118] ; 00402A10 8D8DE8FEFFFF
    %if ($ - %%insn_00402a10) > 6
        %error "LONG_00402A10"
    %endif
    times 6 - ($ - %%insn_00402a10) db 0
    %%insn_00402a16:
    push ecx ; 00402A16 51
    %if ($ - %%insn_00402a16) > 1
        %error "LONG_00402A16"
    %endif
    times 1 - ($ - %%insn_00402a16) db 0
    %%insn_00402a17:
    push dword 0xa ; 00402A17 6A0A
    %if ($ - %%insn_00402a17) > 2
        %error "LONG_00402A17"
    %endif
    times 2 - ($ - %%insn_00402a17) db 0
    %%insn_00402a19:
    push dword 0xa ; 00402A19 6A0A
    %if ($ - %%insn_00402a19) > 2
        %error "LONG_00402A19"
    %endif
    times 2 - ($ - %%insn_00402a19) db 0
    %%insn_00402a1b:
    push dword 0xff ; 00402A1B 68FF000000
    %if ($ - %%insn_00402a1b) > 5
        %error "LONG_00402A1B"
    %endif
    times 5 - ($ - %%insn_00402a1b) db 0
    %%insn_00402a20:
    push dword 0xbe ; 00402A20 68BE000000
    %if ($ - %%insn_00402a20) > 5
        %error "LONG_00402A20"
    %endif
    times 5 - ($ - %%insn_00402a20) db 0
    %%insn_00402a25:
    push dword 0xbe ; 00402A25 68BE000000
    %if ($ - %%insn_00402a25) > 5
        %error "LONG_00402A25"
    %endif
    times 5 - ($ - %%insn_00402a25) db 0
    %%insn_00402a2a:
    call 0x40a430 ; 00402A2A E8017A0000
    %if ($ - %%insn_00402a2a) > 5
        %error "LONG_00402A2A"
    %endif
    times 5 - ($ - %%insn_00402a2a) db 0
    %%insn_00402a2f:
    add esp,0x18 ; 00402A2F 83C418
    %if ($ - %%insn_00402a2f) > 3
        %error "LONG_00402A2F"
    %endif
    times 3 - ($ - %%insn_00402a2f) db 0
    %%insn_00402a32:
    mov edx,[0x41f5c8] ; 00402A32 8B15C8F54100
    %if ($ - %%insn_00402a32) > 6
        %error "LONG_00402A32"
    %endif
    times 6 - ($ - %%insn_00402a32) db 0
    %%insn_00402a38:
    and edx,0x1 ; 00402A38 83E201
    %if ($ - %%insn_00402a38) > 3
        %error "LONG_00402A38"
    %endif
    times 3 - ($ - %%insn_00402a38) db 0
    %%insn_00402a3b:
    test edx,edx ; 00402A3B 85D2
    %if ($ - %%insn_00402a3b) > 2
        %error "LONG_00402A3B"
    %endif
    times 2 - ($ - %%insn_00402a3b) db 0
    %%insn_00402a3d:
    jz short 0x402a4c ; 00402A3D 740D
    %if ($ - %%insn_00402a3d) > 2
        %error "LONG_00402A3D"
    %endif
    times 2 - ($ - %%insn_00402a3d) db 0
    %%insn_00402a3f:
    mov eax,[ebp-0x18] ; 00402A3F 8B45E8
    %if ($ - %%insn_00402a3f) > 3
        %error "LONG_00402A3F"
    %endif
    times 3 - ($ - %%insn_00402a3f) db 0
    %%insn_00402a42:
    and eax,0xffff ; 00402A42 25FFFF0000
    %if ($ - %%insn_00402a42) > 5
        %error "LONG_00402A42"
    %endif
    times 5 - ($ - %%insn_00402a42) db 0
    %%insn_00402a47:
    mov [0x41f2fc],eax ; 00402A47 A3FCF24100
    %if ($ - %%insn_00402a47) > 5
        %error "LONG_00402A47"
    %endif
    times 5 - ($ - %%insn_00402a47) db 0
    %%insn_00402a4c:
    jmp short 0x402a8b ; 00402A4C EB3D
    %if ($ - %%insn_00402a4c) > 2
        %error "LONG_00402A4C"
    %endif
    times 2 - ($ - %%insn_00402a4c) db 0
    %%insn_00402a4e:
    movsx ecx,word [0x41f298] ; 00402A4E 0FBF0D98F24100
    %if ($ - %%insn_00402a4e) > 7
        %error "LONG_00402A4E"
    %endif
    times 7 - ($ - %%insn_00402a4e) db 0
    %%insn_00402a55:
    cmp [0x41f5d0],ecx ; 00402A55 390DD0F54100
    %if ($ - %%insn_00402a55) > 6
        %error "LONG_00402A55"
    %endif
    times 6 - ($ - %%insn_00402a55) db 0
    %%insn_00402a5b:
    jnz short 0x402a6c ; 00402A5B 750F
    %if ($ - %%insn_00402a5b) > 2
        %error "LONG_00402A5B"
    %endif
    times 2 - ($ - %%insn_00402a5b) db 0
    %%insn_00402a5d:
    movsx edx,word [0x41f2c0] ; 00402A5D 0FBF15C0F24100
    %if ($ - %%insn_00402a5d) > 7
        %error "LONG_00402A5D"
    %endif
    times 7 - ($ - %%insn_00402a5d) db 0
    %%insn_00402a64:
    cmp [0x41f5d4],edx ; 00402A64 3915D4F54100
    %if ($ - %%insn_00402a64) > 6
        %error "LONG_00402A64"
    %endif
    times 6 - ($ - %%insn_00402a64) db 0
    %%insn_00402a6a:
    jz short 0x402a8b ; 00402A6A 741F
    %if ($ - %%insn_00402a6a) > 2
        %error "LONG_00402A6A"
    %endif
    times 2 - ($ - %%insn_00402a6a) db 0
    %%insn_00402a6c:
    call 0x40a73a ; 00402A6C E8C97C0000
    %if ($ - %%insn_00402a6c) > 5
        %error "LONG_00402A6C"
    %endif
    times 5 - ($ - %%insn_00402a6c) db 0
    %%insn_00402a71:
    mov ax,[0x41f5d0] ; 00402A71 66A1D0F54100
    %if ($ - %%insn_00402a71) > 6
        %error "LONG_00402A71"
    %endif
    times 6 - ($ - %%insn_00402a71) db 0
    %%insn_00402a77:
    mov [0x41f298],ax ; 00402A77 66A398F24100
    %if ($ - %%insn_00402a77) > 6
        %error "LONG_00402A77"
    %endif
    times 6 - ($ - %%insn_00402a77) db 0
    %%insn_00402a7d:
    mov cx,[0x41f5d4] ; 00402A7D 668B0DD4F54100
    %if ($ - %%insn_00402a7d) > 7
        %error "LONG_00402A7D"
    %endif
    times 7 - ($ - %%insn_00402a7d) db 0
    %%insn_00402a84:
    mov [0x41f2c0],cx ; 00402A84 66890DC0F24100
    %if ($ - %%insn_00402a84) > 7
        %error "LONG_00402A84"
    %endif
    times 7 - ($ - %%insn_00402a84) db 0
    %%insn_00402a8b:
    jmp 0x4041db ; 00402A8B E94B170000
    %if ($ - %%insn_00402a8b) > 5
        %error "LONG_00402A8B"
    %endif
    times 5 - ($ - %%insn_00402a8b) db 0
    %%insn_00402a90:
    call 0x401473 ; 00402A90 E8DEE9FFFF
    %if ($ - %%insn_00402a90) > 5
        %error "LONG_00402A90"
    %endif
    times 5 - ($ - %%insn_00402a90) db 0
    %%insn_00402a95:
    mov [ebp-0x18],ax ; 00402A95 668945E8
    %if ($ - %%insn_00402a95) > 4
        %error "LONG_00402A95"
    %endif
    times 4 - ($ - %%insn_00402a95) db 0
    %%insn_00402a99:
    cmp dword [0x41f5d0],0x64 ; 00402A99 833DD0F5410064
    %if ($ - %%insn_00402a99) > 7
        %error "LONG_00402A99"
    %endif
    times 7 - ($ - %%insn_00402a99) db 0
    %%insn_00402aa0:
    jnl short 0x402aed ; 00402AA0 7D4B
    %if ($ - %%insn_00402aa0) > 2
        %error "LONG_00402AA0"
    %endif
    times 2 - ($ - %%insn_00402aa0) db 0
    %%insn_00402aa2:
    cmp dword [0x41f5d4],0x50 ; 00402AA2 833DD4F5410050
    %if ($ - %%insn_00402aa2) > 7
        %error "LONG_00402AA2"
    %endif
    times 7 - ($ - %%insn_00402aa2) db 0
    %%insn_00402aa9:
    jl short 0x402aed ; 00402AA9 7C42
    %if ($ - %%insn_00402aa9) > 2
        %error "LONG_00402AA9"
    %endif
    times 2 - ($ - %%insn_00402aa9) db 0
    %%insn_00402aab:
    cmp dword [0x41f5d4],0x190 ; 00402AAB 813DD4F5410090010000
    %if ($ - %%insn_00402aab) > 10
        %error "LONG_00402AAB"
    %endif
    times 10 - ($ - %%insn_00402aab) db 0
    %%insn_00402ab5:
    jg short 0x402aed ; 00402AB5 7F36
    %if ($ - %%insn_00402ab5) > 2
        %error "LONG_00402AB5"
    %endif
    times 2 - ($ - %%insn_00402ab5) db 0
    %%insn_00402ab7:
    cmp dword [0x41f2fc],0xffffffffffffffff ; 00402AB7 833DFCF24100FF
    %if ($ - %%insn_00402ab7) > 7
        %error "LONG_00402AB7"
    %endif
    times 7 - ($ - %%insn_00402ab7) db 0
    %%insn_00402abe:
    jnz short 0x402aed ; 00402ABE 752D
    %if ($ - %%insn_00402abe) > 2
        %error "LONG_00402ABE"
    %endif
    times 2 - ($ - %%insn_00402abe) db 0
    %%insn_00402ac0:
    cmp dword [0x41f2bc],0x5 ; 00402AC0 833DBCF2410005
    %if ($ - %%insn_00402ac0) > 7
        %error "LONG_00402AC0"
    %endif
    times 7 - ($ - %%insn_00402ac0) db 0
    %%insn_00402ac7:
    jnz short 0x402ad3 ; 00402AC7 750A
    %if ($ - %%insn_00402ac7) > 2
        %error "LONG_00402AC7"
    %endif
    times 2 - ($ - %%insn_00402ac7) db 0
    %%insn_00402ac9:
    mov dword [0x41f2bc],0x1 ; 00402AC9 C705BCF2410001000000
    %if ($ - %%insn_00402ac9) > 10
        %error "LONG_00402AC9"
    %endif
    times 10 - ($ - %%insn_00402ac9) db 0
    %%insn_00402ad3:
    mov edx,[0x41f5c8] ; 00402AD3 8B15C8F54100
    %if ($ - %%insn_00402ad3) > 6
        %error "LONG_00402AD3"
    %endif
    times 6 - ($ - %%insn_00402ad3) db 0
    %%insn_00402ad9:
    and edx,0x1 ; 00402AD9 83E201
    %if ($ - %%insn_00402ad9) > 3
        %error "LONG_00402AD9"
    %endif
    times 3 - ($ - %%insn_00402ad9) db 0
    %%insn_00402adc:
    test edx,edx ; 00402ADC 85D2
    %if ($ - %%insn_00402adc) > 2
        %error "LONG_00402ADC"
    %endif
    times 2 - ($ - %%insn_00402adc) db 0
    %%insn_00402ade:
    jz short 0x402aed ; 00402ADE 740D
    %if ($ - %%insn_00402ade) > 2
        %error "LONG_00402ADE"
    %endif
    times 2 - ($ - %%insn_00402ade) db 0
    %%insn_00402ae0:
    mov eax,[ebp-0x18] ; 00402AE0 8B45E8
    %if ($ - %%insn_00402ae0) > 3
        %error "LONG_00402AE0"
    %endif
    times 3 - ($ - %%insn_00402ae0) db 0
    %%insn_00402ae3:
    and eax,0xffff ; 00402AE3 25FFFF0000
    %if ($ - %%insn_00402ae3) > 5
        %error "LONG_00402AE3"
    %endif
    times 5 - ($ - %%insn_00402ae3) db 0
    %%insn_00402ae8:
    mov [0x41f2fc],eax ; 00402AE8 A3FCF24100
    %if ($ - %%insn_00402ae8) > 5
        %error "LONG_00402AE8"
    %endif
    times 5 - ($ - %%insn_00402ae8) db 0
    %%insn_00402aed:
    jmp 0x4041db ; 00402AED E9E9160000
    %if ($ - %%insn_00402aed) > 5
        %error "LONG_00402AED"
    %endif
    times 5 - ($ - %%insn_00402aed) db 0
    %%insn_00402af2:
    call 0x401473 ; 00402AF2 E87CE9FFFF
    %if ($ - %%insn_00402af2) > 5
        %error "LONG_00402AF2"
    %endif
    times 5 - ($ - %%insn_00402af2) db 0
    %%insn_00402af7:
    mov [ebp-0x18],ax ; 00402AF7 668945E8
    %if ($ - %%insn_00402af7) > 4
        %error "LONG_00402AF7"
    %endif
    times 4 - ($ - %%insn_00402af7) db 0
    %%insn_00402afb:
    cmp dword [0x41f5d0],0x21c ; 00402AFB 813DD0F541001C020000
    %if ($ - %%insn_00402afb) > 10
        %error "LONG_00402AFB"
    %endif
    times 10 - ($ - %%insn_00402afb) db 0
    %%insn_00402b05:
    jng short 0x402b54 ; 00402B05 7E4D
    %if ($ - %%insn_00402b05) > 2
        %error "LONG_00402B05"
    %endif
    times 2 - ($ - %%insn_00402b05) db 0
    %%insn_00402b07:
    cmp dword [0x41f5d4],0x50 ; 00402B07 833DD4F5410050
    %if ($ - %%insn_00402b07) > 7
        %error "LONG_00402B07"
    %endif
    times 7 - ($ - %%insn_00402b07) db 0
    %%insn_00402b0e:
    jl short 0x402b54 ; 00402B0E 7C44
    %if ($ - %%insn_00402b0e) > 2
        %error "LONG_00402B0E"
    %endif
    times 2 - ($ - %%insn_00402b0e) db 0
    %%insn_00402b10:
    cmp dword [0x41f5d4],0x190 ; 00402B10 813DD4F5410090010000
    %if ($ - %%insn_00402b10) > 10
        %error "LONG_00402B10"
    %endif
    times 10 - ($ - %%insn_00402b10) db 0
    %%insn_00402b1a:
    jg short 0x402b54 ; 00402B1A 7F38
    %if ($ - %%insn_00402b1a) > 2
        %error "LONG_00402B1A"
    %endif
    times 2 - ($ - %%insn_00402b1a) db 0
    %%insn_00402b1c:
    cmp dword [0x41f2fc],0xffffffffffffffff ; 00402B1C 833DFCF24100FF
    %if ($ - %%insn_00402b1c) > 7
        %error "LONG_00402B1C"
    %endif
    times 7 - ($ - %%insn_00402b1c) db 0
    %%insn_00402b23:
    jnz short 0x402b54 ; 00402B23 752F
    %if ($ - %%insn_00402b23) > 2
        %error "LONG_00402B23"
    %endif
    times 2 - ($ - %%insn_00402b23) db 0
    %%insn_00402b25:
    cmp dword [0x41f2bc],0x5 ; 00402B25 833DBCF2410005
    %if ($ - %%insn_00402b25) > 7
        %error "LONG_00402B25"
    %endif
    times 7 - ($ - %%insn_00402b25) db 0
    %%insn_00402b2c:
    jnz short 0x402b38 ; 00402B2C 750A
    %if ($ - %%insn_00402b2c) > 2
        %error "LONG_00402B2C"
    %endif
    times 2 - ($ - %%insn_00402b2c) db 0
    %%insn_00402b2e:
    mov dword [0x41f2bc],0x2 ; 00402B2E C705BCF2410002000000
    %if ($ - %%insn_00402b2e) > 10
        %error "LONG_00402B2E"
    %endif
    times 10 - ($ - %%insn_00402b2e) db 0
    %%insn_00402b38:
    mov ecx,[0x41f5c8] ; 00402B38 8B0DC8F54100
    %if ($ - %%insn_00402b38) > 6
        %error "LONG_00402B38"
    %endif
    times 6 - ($ - %%insn_00402b38) db 0
    %%insn_00402b3e:
    and ecx,0x1 ; 00402B3E 83E101
    %if ($ - %%insn_00402b3e) > 3
        %error "LONG_00402B3E"
    %endif
    times 3 - ($ - %%insn_00402b3e) db 0
    %%insn_00402b41:
    test ecx,ecx ; 00402B41 85C9
    %if ($ - %%insn_00402b41) > 2
        %error "LONG_00402B41"
    %endif
    times 2 - ($ - %%insn_00402b41) db 0
    %%insn_00402b43:
    jz short 0x402b54 ; 00402B43 740F
    %if ($ - %%insn_00402b43) > 2
        %error "LONG_00402B43"
    %endif
    times 2 - ($ - %%insn_00402b43) db 0
    %%insn_00402b45:
    mov edx,[ebp-0x18] ; 00402B45 8B55E8
    %if ($ - %%insn_00402b45) > 3
        %error "LONG_00402B45"
    %endif
    times 3 - ($ - %%insn_00402b45) db 0
    %%insn_00402b48:
    and edx,0xffff ; 00402B48 81E2FFFF0000
    %if ($ - %%insn_00402b48) > 6
        %error "LONG_00402B48"
    %endif
    times 6 - ($ - %%insn_00402b48) db 0
    %%insn_00402b4e:
    mov [0x41f2fc],edx ; 00402B4E 8915FCF24100
    %if ($ - %%insn_00402b4e) > 6
        %error "LONG_00402B4E"
    %endif
    times 6 - ($ - %%insn_00402b4e) db 0
    %%insn_00402b54:
    jmp 0x4041db ; 00402B54 E982160000
    %if ($ - %%insn_00402b54) > 5
        %error "LONG_00402B54"
    %endif
    times 5 - ($ - %%insn_00402b54) db 0
    %%insn_00402b59:
    call 0x401473 ; 00402B59 E815E9FFFF
    %if ($ - %%insn_00402b59) > 5
        %error "LONG_00402B59"
    %endif
    times 5 - ($ - %%insn_00402b59) db 0
    %%insn_00402b5e:
    mov [ebp-0x18],ax ; 00402B5E 668945E8
    %if ($ - %%insn_00402b5e) > 4
        %error "LONG_00402B5E"
    %endif
    times 4 - ($ - %%insn_00402b5e) db 0
    %%insn_00402b62:
    cmp dword [0x41f5d0],0xc8 ; 00402B62 813DD0F54100C8000000
    %if ($ - %%insn_00402b62) > 10
        %error "LONG_00402B62"
    %endif
    times 10 - ($ - %%insn_00402b62) db 0
    %%insn_00402b6c:
    jng short 0x402bc6 ; 00402B6C 7E58
    %if ($ - %%insn_00402b6c) > 2
        %error "LONG_00402B6C"
    %endif
    times 2 - ($ - %%insn_00402b6c) db 0
    %%insn_00402b6e:
    cmp dword [0x41f5d0],0x1b8 ; 00402B6E 813DD0F54100B8010000
    %if ($ - %%insn_00402b6e) > 10
        %error "LONG_00402B6E"
    %endif
    times 10 - ($ - %%insn_00402b6e) db 0
    %%insn_00402b78:
    jnl short 0x402bc6 ; 00402B78 7D4C
    %if ($ - %%insn_00402b78) > 2
        %error "LONG_00402B78"
    %endif
    times 2 - ($ - %%insn_00402b78) db 0
    %%insn_00402b7a:
    cmp dword [0x41f5d4],0x50 ; 00402B7A 833DD4F5410050
    %if ($ - %%insn_00402b7a) > 7
        %error "LONG_00402B7A"
    %endif
    times 7 - ($ - %%insn_00402b7a) db 0
    %%insn_00402b81:
    jl short 0x402bc6 ; 00402B81 7C43
    %if ($ - %%insn_00402b81) > 2
        %error "LONG_00402B81"
    %endif
    times 2 - ($ - %%insn_00402b81) db 0
    %%insn_00402b83:
    cmp dword [0x41f5d4],0x190 ; 00402B83 813DD4F5410090010000
    %if ($ - %%insn_00402b83) > 10
        %error "LONG_00402B83"
    %endif
    times 10 - ($ - %%insn_00402b83) db 0
    %%insn_00402b8d:
    jg short 0x402bc6 ; 00402B8D 7F37
    %if ($ - %%insn_00402b8d) > 2
        %error "LONG_00402B8D"
    %endif
    times 2 - ($ - %%insn_00402b8d) db 0
    %%insn_00402b8f:
    cmp dword [0x41f2fc],0xffffffffffffffff ; 00402B8F 833DFCF24100FF
    %if ($ - %%insn_00402b8f) > 7
        %error "LONG_00402B8F"
    %endif
    times 7 - ($ - %%insn_00402b8f) db 0
    %%insn_00402b96:
    jnz short 0x402bc6 ; 00402B96 752E
    %if ($ - %%insn_00402b96) > 2
        %error "LONG_00402B96"
    %endif
    times 2 - ($ - %%insn_00402b96) db 0
    %%insn_00402b98:
    cmp dword [0x41f2bc],0x5 ; 00402B98 833DBCF2410005
    %if ($ - %%insn_00402b98) > 7
        %error "LONG_00402B98"
    %endif
    times 7 - ($ - %%insn_00402b98) db 0
    %%insn_00402b9f:
    jnz short 0x402bab ; 00402B9F 750A
    %if ($ - %%insn_00402b9f) > 2
        %error "LONG_00402B9F"
    %endif
    times 2 - ($ - %%insn_00402b9f) db 0
    %%insn_00402ba1:
    mov dword [0x41f2bc],0x0 ; 00402BA1 C705BCF2410000000000
    %if ($ - %%insn_00402ba1) > 10
        %error "LONG_00402BA1"
    %endif
    times 10 - ($ - %%insn_00402ba1) db 0
    %%insn_00402bab:
    mov eax,[0x41f5c8] ; 00402BAB A1C8F54100
    %if ($ - %%insn_00402bab) > 5
        %error "LONG_00402BAB"
    %endif
    times 5 - ($ - %%insn_00402bab) db 0
    %%insn_00402bb0:
    and eax,0x1 ; 00402BB0 83E001
    %if ($ - %%insn_00402bb0) > 3
        %error "LONG_00402BB0"
    %endif
    times 3 - ($ - %%insn_00402bb0) db 0
    %%insn_00402bb3:
    test eax,eax ; 00402BB3 85C0
    %if ($ - %%insn_00402bb3) > 2
        %error "LONG_00402BB3"
    %endif
    times 2 - ($ - %%insn_00402bb3) db 0
    %%insn_00402bb5:
    jz short 0x402bc6 ; 00402BB5 740F
    %if ($ - %%insn_00402bb5) > 2
        %error "LONG_00402BB5"
    %endif
    times 2 - ($ - %%insn_00402bb5) db 0
    %%insn_00402bb7:
    mov ecx,[ebp-0x18] ; 00402BB7 8B4DE8
    %if ($ - %%insn_00402bb7) > 3
        %error "LONG_00402BB7"
    %endif
    times 3 - ($ - %%insn_00402bb7) db 0
    %%insn_00402bba:
    and ecx,0xffff ; 00402BBA 81E1FFFF0000
    %if ($ - %%insn_00402bba) > 6
        %error "LONG_00402BBA"
    %endif
    times 6 - ($ - %%insn_00402bba) db 0
    %%insn_00402bc0:
    mov [0x41f2fc],ecx ; 00402BC0 890DFCF24100
    %if ($ - %%insn_00402bc0) > 6
        %error "LONG_00402BC0"
    %endif
    times 6 - ($ - %%insn_00402bc0) db 0
    %%insn_00402bc6:
    jmp 0x4041db ; 00402BC6 E910160000
    %if ($ - %%insn_00402bc6) > 5
        %error "LONG_00402BC6"
    %endif
    times 5 - ($ - %%insn_00402bc6) db 0
    %%insn_00402bcb:
    call 0x401473 ; 00402BCB E8A3E8FFFF
    %if ($ - %%insn_00402bcb) > 5
        %error "LONG_00402BCB"
    %endif
    times 5 - ($ - %%insn_00402bcb) db 0
    %%insn_00402bd0:
    mov [ebp-0x18],ax ; 00402BD0 668945E8
    %if ($ - %%insn_00402bd0) > 4
        %error "LONG_00402BD0"
    %endif
    times 4 - ($ - %%insn_00402bd0) db 0
    %%insn_00402bd4:
    cmp dword [0x41f2bc],0x5 ; 00402BD4 833DBCF2410005
    %if ($ - %%insn_00402bd4) > 7
        %error "LONG_00402BD4"
    %endif
    times 7 - ($ - %%insn_00402bd4) db 0
    %%insn_00402bdb:
    jnz short 0x402be7 ; 00402BDB 750A
    %if ($ - %%insn_00402bdb) > 2
        %error "LONG_00402BDB"
    %endif
    times 2 - ($ - %%insn_00402bdb) db 0
    %%insn_00402bdd:
    mov dword [0x41f2bc],0x0 ; 00402BDD C705BCF2410000000000
    %if ($ - %%insn_00402bdd) > 10
        %error "LONG_00402BDD"
    %endif
    times 10 - ($ - %%insn_00402bdd) db 0
    %%insn_00402be7:
    mov edx,[0x41f5c8] ; 00402BE7 8B15C8F54100
    %if ($ - %%insn_00402be7) > 6
        %error "LONG_00402BE7"
    %endif
    times 6 - ($ - %%insn_00402be7) db 0
    %%insn_00402bed:
    and edx,0x1 ; 00402BED 83E201
    %if ($ - %%insn_00402bed) > 3
        %error "LONG_00402BED"
    %endif
    times 3 - ($ - %%insn_00402bed) db 0
    %%insn_00402bf0:
    test edx,edx ; 00402BF0 85D2
    %if ($ - %%insn_00402bf0) > 2
        %error "LONG_00402BF0"
    %endif
    times 2 - ($ - %%insn_00402bf0) db 0
    %%insn_00402bf2:
    jz short 0x402c0a ; 00402BF2 7416
    %if ($ - %%insn_00402bf2) > 2
        %error "LONG_00402BF2"
    %endif
    times 2 - ($ - %%insn_00402bf2) db 0
    %%insn_00402bf4:
    cmp dword [0x41f2fc],0xffffffffffffffff ; 00402BF4 833DFCF24100FF
    %if ($ - %%insn_00402bf4) > 7
        %error "LONG_00402BF4"
    %endif
    times 7 - ($ - %%insn_00402bf4) db 0
    %%insn_00402bfb:
    jnz short 0x402c0a ; 00402BFB 750D
    %if ($ - %%insn_00402bfb) > 2
        %error "LONG_00402BFB"
    %endif
    times 2 - ($ - %%insn_00402bfb) db 0
    %%insn_00402bfd:
    mov eax,[ebp-0x18] ; 00402BFD 8B45E8
    %if ($ - %%insn_00402bfd) > 3
        %error "LONG_00402BFD"
    %endif
    times 3 - ($ - %%insn_00402bfd) db 0
    %%insn_00402c00:
    and eax,0xffff ; 00402C00 25FFFF0000
    %if ($ - %%insn_00402c00) > 5
        %error "LONG_00402C00"
    %endif
    times 5 - ($ - %%insn_00402c00) db 0
    %%insn_00402c05:
    mov [0x41f2fc],eax ; 00402C05 A3FCF24100
    %if ($ - %%insn_00402c05) > 5
        %error "LONG_00402C05"
    %endif
    times 5 - ($ - %%insn_00402c05) db 0
    %%insn_00402c0a:
    jmp 0x4041db ; 00402C0A E9CC150000
    %if ($ - %%insn_00402c0a) > 5
        %error "LONG_00402C0A"
    %endif
    times 5 - ($ - %%insn_00402c0a) db 0
    %%insn_00402c0f:
    call 0x401473 ; 00402C0F E85FE8FFFF
    %if ($ - %%insn_00402c0f) > 5
        %error "LONG_00402C0F"
    %endif
    times 5 - ($ - %%insn_00402c0f) db 0
    %%insn_00402c14:
    mov [ebp-0x18],ax ; 00402C14 668945E8
    %if ($ - %%insn_00402c14) > 4
        %error "LONG_00402C14"
    %endif
    times 4 - ($ - %%insn_00402c14) db 0
    %%insn_00402c18:
    cmp dword [0x41f5d4],0x190 ; 00402C18 813DD4F5410090010000
    %if ($ - %%insn_00402c18) > 10
        %error "LONG_00402C18"
    %endif
    times 10 - ($ - %%insn_00402c18) db 0
    %%insn_00402c22:
    jng short 0x402c5c ; 00402C22 7E38
    %if ($ - %%insn_00402c22) > 2
        %error "LONG_00402C22"
    %endif
    times 2 - ($ - %%insn_00402c22) db 0
    %%insn_00402c24:
    cmp dword [0x41f2fc],0xffffffffffffffff ; 00402C24 833DFCF24100FF
    %if ($ - %%insn_00402c24) > 7
        %error "LONG_00402C24"
    %endif
    times 7 - ($ - %%insn_00402c24) db 0
    %%insn_00402c2b:
    jnz short 0x402c5c ; 00402C2B 752F
    %if ($ - %%insn_00402c2b) > 2
        %error "LONG_00402C2B"
    %endif
    times 2 - ($ - %%insn_00402c2b) db 0
    %%insn_00402c2d:
    cmp dword [0x41f2bc],0x5 ; 00402C2D 833DBCF2410005
    %if ($ - %%insn_00402c2d) > 7
        %error "LONG_00402C2D"
    %endif
    times 7 - ($ - %%insn_00402c2d) db 0
    %%insn_00402c34:
    jnz short 0x402c40 ; 00402C34 750A
    %if ($ - %%insn_00402c34) > 2
        %error "LONG_00402C34"
    %endif
    times 2 - ($ - %%insn_00402c34) db 0
    %%insn_00402c36:
    mov dword [0x41f2bc],0x4 ; 00402C36 C705BCF2410004000000
    %if ($ - %%insn_00402c36) > 10
        %error "LONG_00402C36"
    %endif
    times 10 - ($ - %%insn_00402c36) db 0
    %%insn_00402c40:
    mov ecx,[0x41f5c8] ; 00402C40 8B0DC8F54100
    %if ($ - %%insn_00402c40) > 6
        %error "LONG_00402C40"
    %endif
    times 6 - ($ - %%insn_00402c40) db 0
    %%insn_00402c46:
    and ecx,0x1 ; 00402C46 83E101
    %if ($ - %%insn_00402c46) > 3
        %error "LONG_00402C46"
    %endif
    times 3 - ($ - %%insn_00402c46) db 0
    %%insn_00402c49:
    test ecx,ecx ; 00402C49 85C9
    %if ($ - %%insn_00402c49) > 2
        %error "LONG_00402C49"
    %endif
    times 2 - ($ - %%insn_00402c49) db 0
    %%insn_00402c4b:
    jz short 0x402c5c ; 00402C4B 740F
    %if ($ - %%insn_00402c4b) > 2
        %error "LONG_00402C4B"
    %endif
    times 2 - ($ - %%insn_00402c4b) db 0
    %%insn_00402c4d:
    mov edx,[ebp-0x18] ; 00402C4D 8B55E8
    %if ($ - %%insn_00402c4d) > 3
        %error "LONG_00402C4D"
    %endif
    times 3 - ($ - %%insn_00402c4d) db 0
    %%insn_00402c50:
    and edx,0xffff ; 00402C50 81E2FFFF0000
    %if ($ - %%insn_00402c50) > 6
        %error "LONG_00402C50"
    %endif
    times 6 - ($ - %%insn_00402c50) db 0
    %%insn_00402c56:
    mov [0x41f2fc],edx ; 00402C56 8915FCF24100
    %if ($ - %%insn_00402c56) > 6
        %error "LONG_00402C56"
    %endif
    times 6 - ($ - %%insn_00402c56) db 0
    %%insn_00402c5c:
    jmp 0x4041db ; 00402C5C E97A150000
    %if ($ - %%insn_00402c5c) > 5
        %error "LONG_00402C5C"
    %endif
    times 5 - ($ - %%insn_00402c5c) db 0
    %%insn_00402c61:
    cmp dword [0x41f2e0],0x0 ; 00402C61 833DE0F2410000
    %if ($ - %%insn_00402c61) > 7
        %error "LONG_00402C61"
    %endif
    times 7 - ($ - %%insn_00402c61) db 0
    %%insn_00402c68:
    jz short 0x402ca8 ; 00402C68 743E
    %if ($ - %%insn_00402c68) > 2
        %error "LONG_00402C68"
    %endif
    times 2 - ($ - %%insn_00402c68) db 0
    %%insn_00402c6a:
    cmp dword [0x41f5d4],0x50 ; 00402C6A 833DD4F5410050
    %if ($ - %%insn_00402c6a) > 7
        %error "LONG_00402C6A"
    %endif
    times 7 - ($ - %%insn_00402c6a) db 0
    %%insn_00402c71:
    jnl short 0x402ca8 ; 00402C71 7D35
    %if ($ - %%insn_00402c71) > 2
        %error "LONG_00402C71"
    %endif
    times 2 - ($ - %%insn_00402c71) db 0
    %%insn_00402c73:
    cmp dword [0x41f2fc],0xffffffffffffffff ; 00402C73 833DFCF24100FF
    %if ($ - %%insn_00402c73) > 7
        %error "LONG_00402C73"
    %endif
    times 7 - ($ - %%insn_00402c73) db 0
    %%insn_00402c7a:
    jnz short 0x402ca8 ; 00402C7A 752C
    %if ($ - %%insn_00402c7a) > 2
        %error "LONG_00402C7A"
    %endif
    times 2 - ($ - %%insn_00402c7a) db 0
    %%insn_00402c7c:
    cmp dword [0x41f2bc],0x5 ; 00402C7C 833DBCF2410005
    %if ($ - %%insn_00402c7c) > 7
        %error "LONG_00402C7C"
    %endif
    times 7 - ($ - %%insn_00402c7c) db 0
    %%insn_00402c83:
    jnz short 0x402c8f ; 00402C83 750A
    %if ($ - %%insn_00402c83) > 2
        %error "LONG_00402C83"
    %endif
    times 2 - ($ - %%insn_00402c83) db 0
    %%insn_00402c85:
    mov eax,[0x41f2dc] ; 00402C85 A1DCF24100
    %if ($ - %%insn_00402c85) > 5
        %error "LONG_00402C85"
    %endif
    times 5 - ($ - %%insn_00402c85) db 0
    %%insn_00402c8a:
    mov [0x41f2bc],eax ; 00402C8A A3BCF24100
    %if ($ - %%insn_00402c8a) > 5
        %error "LONG_00402C8A"
    %endif
    times 5 - ($ - %%insn_00402c8a) db 0
    %%insn_00402c8f:
    mov ecx,[0x41f5c8] ; 00402C8F 8B0DC8F54100
    %if ($ - %%insn_00402c8f) > 6
        %error "LONG_00402C8F"
    %endif
    times 6 - ($ - %%insn_00402c8f) db 0
    %%insn_00402c95:
    and ecx,0x1 ; 00402C95 83E101
    %if ($ - %%insn_00402c95) > 3
        %error "LONG_00402C95"
    %endif
    times 3 - ($ - %%insn_00402c95) db 0
    %%insn_00402c98:
    test ecx,ecx ; 00402C98 85C9
    %if ($ - %%insn_00402c98) > 2
        %error "LONG_00402C98"
    %endif
    times 2 - ($ - %%insn_00402c98) db 0
    %%insn_00402c9a:
    jz short 0x402ca8 ; 00402C9A 740C
    %if ($ - %%insn_00402c9a) > 2
        %error "LONG_00402C9A"
    %endif
    times 2 - ($ - %%insn_00402c9a) db 0
    %%insn_00402c9c:
    mov edx,[0x41f2e0] ; 00402C9C 8B15E0F24100
    %if ($ - %%insn_00402c9c) > 6
        %error "LONG_00402C9C"
    %endif
    times 6 - ($ - %%insn_00402c9c) db 0
    %%insn_00402ca2:
    mov [0x41f2fc],edx ; 00402CA2 8915FCF24100
    %if ($ - %%insn_00402ca2) > 6
        %error "LONG_00402CA2"
    %endif
    times 6 - ($ - %%insn_00402ca2) db 0
    %%insn_00402ca8:
    cmp dword [0x41f2f0],0x0 ; 00402CA8 833DF0F2410000
    %if ($ - %%insn_00402ca8) > 7
        %error "LONG_00402CA8"
    %endif
    times 7 - ($ - %%insn_00402ca8) db 0
    %%insn_00402caf:
    jz short 0x402cf2 ; 00402CAF 7441
    %if ($ - %%insn_00402caf) > 2
        %error "LONG_00402CAF"
    %endif
    times 2 - ($ - %%insn_00402caf) db 0
    %%insn_00402cb1:
    cmp dword [0x41f5d4],0x190 ; 00402CB1 813DD4F5410090010000
    %if ($ - %%insn_00402cb1) > 10
        %error "LONG_00402CB1"
    %endif
    times 10 - ($ - %%insn_00402cb1) db 0
    %%insn_00402cbb:
    jng short 0x402cf2 ; 00402CBB 7E35
    %if ($ - %%insn_00402cbb) > 2
        %error "LONG_00402CBB"
    %endif
    times 2 - ($ - %%insn_00402cbb) db 0
    %%insn_00402cbd:
    cmp dword [0x41f2fc],0xffffffffffffffff ; 00402CBD 833DFCF24100FF
    %if ($ - %%insn_00402cbd) > 7
        %error "LONG_00402CBD"
    %endif
    times 7 - ($ - %%insn_00402cbd) db 0
    %%insn_00402cc4:
    jnz short 0x402cf2 ; 00402CC4 752C
    %if ($ - %%insn_00402cc4) > 2
        %error "LONG_00402CC4"
    %endif
    times 2 - ($ - %%insn_00402cc4) db 0
    %%insn_00402cc6:
    cmp dword [0x41f2bc],0x5 ; 00402CC6 833DBCF2410005
    %if ($ - %%insn_00402cc6) > 7
        %error "LONG_00402CC6"
    %endif
    times 7 - ($ - %%insn_00402cc6) db 0
    %%insn_00402ccd:
    jnz short 0x402cd9 ; 00402CCD 750A
    %if ($ - %%insn_00402ccd) > 2
        %error "LONG_00402CCD"
    %endif
    times 2 - ($ - %%insn_00402ccd) db 0
    %%insn_00402ccf:
    mov eax,[0x41f29c] ; 00402CCF A19CF24100
    %if ($ - %%insn_00402ccf) > 5
        %error "LONG_00402CCF"
    %endif
    times 5 - ($ - %%insn_00402ccf) db 0
    %%insn_00402cd4:
    mov [0x41f2bc],eax ; 00402CD4 A3BCF24100
    %if ($ - %%insn_00402cd4) > 5
        %error "LONG_00402CD4"
    %endif
    times 5 - ($ - %%insn_00402cd4) db 0
    %%insn_00402cd9:
    mov ecx,[0x41f5c8] ; 00402CD9 8B0DC8F54100
    %if ($ - %%insn_00402cd9) > 6
        %error "LONG_00402CD9"
    %endif
    times 6 - ($ - %%insn_00402cd9) db 0
    %%insn_00402cdf:
    and ecx,0x1 ; 00402CDF 83E101
    %if ($ - %%insn_00402cdf) > 3
        %error "LONG_00402CDF"
    %endif
    times 3 - ($ - %%insn_00402cdf) db 0
    %%insn_00402ce2:
    test ecx,ecx ; 00402CE2 85C9
    %if ($ - %%insn_00402ce2) > 2
        %error "LONG_00402CE2"
    %endif
    times 2 - ($ - %%insn_00402ce2) db 0
    %%insn_00402ce4:
    jz short 0x402cf2 ; 00402CE4 740C
    %if ($ - %%insn_00402ce4) > 2
        %error "LONG_00402CE4"
    %endif
    times 2 - ($ - %%insn_00402ce4) db 0
    %%insn_00402ce6:
    mov edx,[0x41f2f0] ; 00402CE6 8B15F0F24100
    %if ($ - %%insn_00402ce6) > 6
        %error "LONG_00402CE6"
    %endif
    times 6 - ($ - %%insn_00402ce6) db 0
    %%insn_00402cec:
    mov [0x41f2fc],edx ; 00402CEC 8915FCF24100
    %if ($ - %%insn_00402cec) > 6
        %error "LONG_00402CEC"
    %endif
    times 6 - ($ - %%insn_00402cec) db 0
    %%insn_00402cf2:
    cmp dword [0x41f2cc],0x0 ; 00402CF2 833DCCF2410000
    %if ($ - %%insn_00402cf2) > 7
        %error "LONG_00402CF2"
    %endif
    times 7 - ($ - %%insn_00402cf2) db 0
    %%insn_00402cf9:
    jz short 0x402d38 ; 00402CF9 743D
    %if ($ - %%insn_00402cf9) > 2
        %error "LONG_00402CF9"
    %endif
    times 2 - ($ - %%insn_00402cf9) db 0
    %%insn_00402cfb:
    cmp dword [0x41f5d0],0x50 ; 00402CFB 833DD0F5410050
    %if ($ - %%insn_00402cfb) > 7
        %error "LONG_00402CFB"
    %endif
    times 7 - ($ - %%insn_00402cfb) db 0
    %%insn_00402d02:
    jnl short 0x402d38 ; 00402D02 7D34
    %if ($ - %%insn_00402d02) > 2
        %error "LONG_00402D02"
    %endif
    times 2 - ($ - %%insn_00402d02) db 0
    %%insn_00402d04:
    cmp dword [0x41f2fc],0xffffffffffffffff ; 00402D04 833DFCF24100FF
    %if ($ - %%insn_00402d04) > 7
        %error "LONG_00402D04"
    %endif
    times 7 - ($ - %%insn_00402d04) db 0
    %%insn_00402d0b:
    jnz short 0x402d38 ; 00402D0B 752B
    %if ($ - %%insn_00402d0b) > 2
        %error "LONG_00402D0B"
    %endif
    times 2 - ($ - %%insn_00402d0b) db 0
    %%insn_00402d0d:
    cmp dword [0x41f2bc],0x5 ; 00402D0D 833DBCF2410005
    %if ($ - %%insn_00402d0d) > 7
        %error "LONG_00402D0D"
    %endif
    times 7 - ($ - %%insn_00402d0d) db 0
    %%insn_00402d14:
    jnz short 0x402d20 ; 00402D14 750A
    %if ($ - %%insn_00402d14) > 2
        %error "LONG_00402D14"
    %endif
    times 2 - ($ - %%insn_00402d14) db 0
    %%insn_00402d16:
    mov dword [0x41f2bc],0x1 ; 00402D16 C705BCF2410001000000
    %if ($ - %%insn_00402d16) > 10
        %error "LONG_00402D16"
    %endif
    times 10 - ($ - %%insn_00402d16) db 0
    %%insn_00402d20:
    mov eax,[0x41f5c8] ; 00402D20 A1C8F54100
    %if ($ - %%insn_00402d20) > 5
        %error "LONG_00402D20"
    %endif
    times 5 - ($ - %%insn_00402d20) db 0
    %%insn_00402d25:
    and eax,0x1 ; 00402D25 83E001
    %if ($ - %%insn_00402d25) > 3
        %error "LONG_00402D25"
    %endif
    times 3 - ($ - %%insn_00402d25) db 0
    %%insn_00402d28:
    test eax,eax ; 00402D28 85C0
    %if ($ - %%insn_00402d28) > 2
        %error "LONG_00402D28"
    %endif
    times 2 - ($ - %%insn_00402d28) db 0
    %%insn_00402d2a:
    jz short 0x402d38 ; 00402D2A 740C
    %if ($ - %%insn_00402d2a) > 2
        %error "LONG_00402D2A"
    %endif
    times 2 - ($ - %%insn_00402d2a) db 0
    %%insn_00402d2c:
    mov ecx,[0x41f2cc] ; 00402D2C 8B0DCCF24100
    %if ($ - %%insn_00402d2c) > 6
        %error "LONG_00402D2C"
    %endif
    times 6 - ($ - %%insn_00402d2c) db 0
    %%insn_00402d32:
    mov [0x41f2fc],ecx ; 00402D32 890DFCF24100
    %if ($ - %%insn_00402d32) > 6
        %error "LONG_00402D32"
    %endif
    times 6 - ($ - %%insn_00402d32) db 0
    %%insn_00402d38:
    cmp dword [0x41f2a0],0x0 ; 00402D38 833DA0F2410000
    %if ($ - %%insn_00402d38) > 7
        %error "LONG_00402D38"
    %endif
    times 7 - ($ - %%insn_00402d38) db 0
    %%insn_00402d3f:
    jz short 0x402d80 ; 00402D3F 743F
    %if ($ - %%insn_00402d3f) > 2
        %error "LONG_00402D3F"
    %endif
    times 2 - ($ - %%insn_00402d3f) db 0
    %%insn_00402d41:
    cmp dword [0x41f5d0],0x230 ; 00402D41 813DD0F5410030020000
    %if ($ - %%insn_00402d41) > 10
        %error "LONG_00402D41"
    %endif
    times 10 - ($ - %%insn_00402d41) db 0
    %%insn_00402d4b:
    jng short 0x402d80 ; 00402D4B 7E33
    %if ($ - %%insn_00402d4b) > 2
        %error "LONG_00402D4B"
    %endif
    times 2 - ($ - %%insn_00402d4b) db 0
    %%insn_00402d4d:
    cmp dword [0x41f2fc],0xffffffffffffffff ; 00402D4D 833DFCF24100FF
    %if ($ - %%insn_00402d4d) > 7
        %error "LONG_00402D4D"
    %endif
    times 7 - ($ - %%insn_00402d4d) db 0
    %%insn_00402d54:
    jnz short 0x402d80 ; 00402D54 752A
    %if ($ - %%insn_00402d54) > 2
        %error "LONG_00402D54"
    %endif
    times 2 - ($ - %%insn_00402d54) db 0
    %%insn_00402d56:
    cmp dword [0x41f2bc],0x5 ; 00402D56 833DBCF2410005
    %if ($ - %%insn_00402d56) > 7
        %error "LONG_00402D56"
    %endif
    times 7 - ($ - %%insn_00402d56) db 0
    %%insn_00402d5d:
    jnz short 0x402d69 ; 00402D5D 750A
    %if ($ - %%insn_00402d5d) > 2
        %error "LONG_00402D5D"
    %endif
    times 2 - ($ - %%insn_00402d5d) db 0
    %%insn_00402d5f:
    mov dword [0x41f2bc],0x2 ; 00402D5F C705BCF2410002000000
    %if ($ - %%insn_00402d5f) > 10
        %error "LONG_00402D5F"
    %endif
    times 10 - ($ - %%insn_00402d5f) db 0
    %%insn_00402d69:
    mov edx,[0x41f5c8] ; 00402D69 8B15C8F54100
    %if ($ - %%insn_00402d69) > 6
        %error "LONG_00402D69"
    %endif
    times 6 - ($ - %%insn_00402d69) db 0
    %%insn_00402d6f:
    and edx,0x1 ; 00402D6F 83E201
    %if ($ - %%insn_00402d6f) > 3
        %error "LONG_00402D6F"
    %endif
    times 3 - ($ - %%insn_00402d6f) db 0
    %%insn_00402d72:
    test edx,edx ; 00402D72 85D2
    %if ($ - %%insn_00402d72) > 2
        %error "LONG_00402D72"
    %endif
    times 2 - ($ - %%insn_00402d72) db 0
    %%insn_00402d74:
    jz short 0x402d80 ; 00402D74 740A
    %if ($ - %%insn_00402d74) > 2
        %error "LONG_00402D74"
    %endif
    times 2 - ($ - %%insn_00402d74) db 0
    %%insn_00402d76:
    mov eax,[0x41f2a0] ; 00402D76 A1A0F24100
    %if ($ - %%insn_00402d76) > 5
        %error "LONG_00402D76"
    %endif
    times 5 - ($ - %%insn_00402d76) db 0
    %%insn_00402d7b:
    mov [0x41f2fc],eax ; 00402D7B A3FCF24100
    %if ($ - %%insn_00402d7b) > 5
        %error "LONG_00402D7B"
    %endif
    times 5 - ($ - %%insn_00402d7b) db 0
    %%insn_00402d80:
    cmp dword [0x41f2fc],0xffffffffffffffff ; 00402D80 833DFCF24100FF
    %if ($ - %%insn_00402d80) > 7
        %error "LONG_00402D80"
    %endif
    times 7 - ($ - %%insn_00402d80) db 0
    %%insn_00402d87:
    jz short 0x402da3 ; 00402D87 741A
    %if ($ - %%insn_00402d87) > 2
        %error "LONG_00402D87"
    %endif
    times 2 - ($ - %%insn_00402d87) db 0
    %%insn_00402d89:
    call 0x404ca2 ; 00402D89 E8141F0000
    %if ($ - %%insn_00402d89) > 5
        %error "LONG_00402D89"
    %endif
    times 5 - ($ - %%insn_00402d89) db 0
    %%insn_00402d8e:
    mov ecx,[0x41f2fc] ; 00402D8E 8B0DFCF24100
    %if ($ - %%insn_00402d8e) > 6
        %error "LONG_00402D8E"
    %endif
    times 6 - ($ - %%insn_00402d8e) db 0
    %%insn_00402d94:
    mov [0x41f300],ecx ; 00402D94 890D00F34100
    %if ($ - %%insn_00402d94) > 6
        %error "LONG_00402D94"
    %endif
    times 6 - ($ - %%insn_00402d94) db 0
    %%insn_00402d9a:
    mov word [0x41f328],0x0 ; 00402D9A 66C70528F341000000
    %if ($ - %%insn_00402d9a) > 9
        %error "LONG_00402D9A"
    %endif
    times 9 - ($ - %%insn_00402d9a) db 0
    db 0x33, 0xD2 ; 00402DA3 33D2 | xor edx,edx | encoding preserved
    %%insn_00402da5:
    mov dx,[0x41f328] ; 00402DA5 668B1528F34100
    %if ($ - %%insn_00402da5) > 7
        %error "LONG_00402DA5"
    %endif
    times 7 - ($ - %%insn_00402da5) db 0
    %%insn_00402dac:
    test edx,edx ; 00402DAC 85D2
    %if ($ - %%insn_00402dac) > 2
        %error "LONG_00402DAC"
    %endif
    times 2 - ($ - %%insn_00402dac) db 0
    %%insn_00402dae:
    jz short 0x402dd8 ; 00402DAE 7428
    %if ($ - %%insn_00402dae) > 2
        %error "LONG_00402DAE"
    %endif
    times 2 - ($ - %%insn_00402dae) db 0
    %%insn_00402db0:
    mov eax,[0x41f2bc] ; 00402DB0 A1BCF24100
    %if ($ - %%insn_00402db0) > 5
        %error "LONG_00402DB0"
    %endif
    times 5 - ($ - %%insn_00402db0) db 0
    %%insn_00402db5:
    mov [0x41f290],eax ; 00402DB5 A390F24100
    %if ($ - %%insn_00402db5) > 5
        %error "LONG_00402DB5"
    %endif
    times 5 - ($ - %%insn_00402db5) db 0
    %%insn_00402dba:
    mov ecx,[0x41f290] ; 00402DBA 8B0D90F24100
    %if ($ - %%insn_00402dba) > 6
        %error "LONG_00402DBA"
    %endif
    times 6 - ($ - %%insn_00402dba) db 0
    %%insn_00402dc0:
    push ecx ; 00402DC0 51
    %if ($ - %%insn_00402dc0) > 1
        %error "LONG_00402DC0"
    %endif
    times 1 - ($ - %%insn_00402dc0) db 0
    %%insn_00402dc1:
    call 0x404469 ; 00402DC1 E8A3160000
    %if ($ - %%insn_00402dc1) > 5
        %error "LONG_00402DC1"
    %endif
    times 5 - ($ - %%insn_00402dc1) db 0
    %%insn_00402dc6:
    add esp,0x4 ; 00402DC6 83C404
    %if ($ - %%insn_00402dc6) > 3
        %error "LONG_00402DC6"
    %endif
    times 3 - ($ - %%insn_00402dc6) db 0
    db 0x33, 0xD2 ; 00402DC9 33D2 | xor edx,edx | encoding preserved
    %%insn_00402dcb:
    mov dx,[0x41f328] ; 00402DCB 668B1528F34100
    %if ($ - %%insn_00402dcb) > 7
        %error "LONG_00402DCB"
    %endif
    times 7 - ($ - %%insn_00402dcb) db 0
    %%insn_00402dd2:
    mov [0x41f300],edx ; 00402DD2 891500F34100
    %if ($ - %%insn_00402dd2) > 6
        %error "LONG_00402DD2"
    %endif
    times 6 - ($ - %%insn_00402dd2) db 0
    %%insn_00402dd8:
    jmp 0x4041db ; 00402DD8 E9FE130000
    %if ($ - %%insn_00402dd8) > 5
        %error "LONG_00402DD8"
    %endif
    times 5 - ($ - %%insn_00402dd8) db 0
    %%insn_00402ddd:
    mov ax,[ebp-0x124] ; 00402DDD 668B85DCFEFFFF
    %if ($ - %%insn_00402ddd) > 7
        %error "LONG_00402DDD"
    %endif
    times 7 - ($ - %%insn_00402ddd) db 0
    %%insn_00402de4:
    push eax ; 00402DE4 50
    %if ($ - %%insn_00402de4) > 1
        %error "LONG_00402DE4"
    %endif
    times 1 - ($ - %%insn_00402de4) db 0
    %%insn_00402de5:
    call 0x4017ee ; 00402DE5 E804EAFFFF
    %if ($ - %%insn_00402de5) > 5
        %error "LONG_00402DE5"
    %endif
    times 5 - ($ - %%insn_00402de5) db 0
    %%insn_00402dea:
    add esp,0x4 ; 00402DEA 83C404
    %if ($ - %%insn_00402dea) > 3
        %error "LONG_00402DEA"
    %endif
    times 3 - ($ - %%insn_00402dea) db 0
    %%insn_00402ded:
    mov [ebp-0x12c],ax ; 00402DED 668985D4FEFFFF
    %if ($ - %%insn_00402ded) > 7
        %error "LONG_00402DED"
    %endif
    times 7 - ($ - %%insn_00402ded) db 0
    %%insn_00402df4:
    call 0x401449 ; 00402DF4 E850E6FFFF
    %if ($ - %%insn_00402df4) > 5
        %error "LONG_00402DF4"
    %endif
    times 5 - ($ - %%insn_00402df4) db 0
    %%insn_00402df9:
    mov [ebp-0x140],al ; 00402DF9 8885C0FEFFFF
    %if ($ - %%insn_00402df9) > 6
        %error "LONG_00402DF9"
    %endif
    times 6 - ($ - %%insn_00402df9) db 0
    %%insn_00402dff:
    mov ecx,[ebp-0x140] ; 00402DFF 8B8DC0FEFFFF
    %if ($ - %%insn_00402dff) > 6
        %error "LONG_00402DFF"
    %endif
    times 6 - ($ - %%insn_00402dff) db 0
    %%insn_00402e05:
    and ecx,0xff ; 00402E05 81E1FF000000
    %if ($ - %%insn_00402e05) > 6
        %error "LONG_00402E05"
    %endif
    times 6 - ($ - %%insn_00402e05) db 0
    %%insn_00402e0b:
    push ecx ; 00402E0B 51
    %if ($ - %%insn_00402e0b) > 1
        %error "LONG_00402E0B"
    %endif
    times 1 - ($ - %%insn_00402e0b) db 0
    %%insn_00402e0c:
    call 0x401572 ; 00402E0C E861E7FFFF
    %if ($ - %%insn_00402e0c) > 5
        %error "LONG_00402E0C"
    %endif
    times 5 - ($ - %%insn_00402e0c) db 0
    %%insn_00402e11:
    add esp,0x4 ; 00402E11 83C404
    %if ($ - %%insn_00402e11) > 3
        %error "LONG_00402E11"
    %endif
    times 3 - ($ - %%insn_00402e11) db 0
    %%insn_00402e14:
    mov edx,[ebp-0x12c] ; 00402E14 8B95D4FEFFFF
    %if ($ - %%insn_00402e14) > 6
        %error "LONG_00402E14"
    %endif
    times 6 - ($ - %%insn_00402e14) db 0
    %%insn_00402e1a:
    and edx,0xffff ; 00402E1A 81E2FFFF0000
    %if ($ - %%insn_00402e1a) > 6
        %error "LONG_00402E1A"
    %endif
    times 6 - ($ - %%insn_00402e1a) db 0
    %%insn_00402e20:
    mov ecx,[0x41f2b8] ; 00402E20 8B0DB8F24100
    %if ($ - %%insn_00402e20) > 6
        %error "LONG_00402E20"
    %endif
    times 6 - ($ - %%insn_00402e20) db 0
    %%insn_00402e26:
    mov [ecx+edx],al ; 00402E26 880411
    %if ($ - %%insn_00402e26) > 3
        %error "LONG_00402E26"
    %endif
    times 3 - ($ - %%insn_00402e26) db 0
    %%insn_00402e29:
    jmp 0x4041db ; 00402E29 E9AD130000
    %if ($ - %%insn_00402e29) > 5
        %error "LONG_00402E29"
    %endif
    times 5 - ($ - %%insn_00402e29) db 0
    %%insn_00402e2e:
    call 0x401473 ; 00402E2E E840E6FFFF
    %if ($ - %%insn_00402e2e) > 5
        %error "LONG_00402E2E"
    %endif
    times 5 - ($ - %%insn_00402e2e) db 0
    %%insn_00402e33:
    and eax,0xffff ; 00402E33 25FFFF0000
    %if ($ - %%insn_00402e33) > 5
        %error "LONG_00402E33"
    %endif
    times 5 - ($ - %%insn_00402e33) db 0
    %%insn_00402e38:
    mov [0x41f300],eax ; 00402E38 A300F34100
    %if ($ - %%insn_00402e38) > 5
        %error "LONG_00402E38"
    %endif
    times 5 - ($ - %%insn_00402e38) db 0
    %%insn_00402e3d:
    jmp 0x4041db ; 00402E3D E999130000
    %if ($ - %%insn_00402e3d) > 5
        %error "LONG_00402E3D"
    %endif
    times 5 - ($ - %%insn_00402e3d) db 0
    %%insn_00402e42:
    mov dx,[ebp-0x124] ; 00402E42 668B95DCFEFFFF
    %if ($ - %%insn_00402e42) > 7
        %error "LONG_00402E42"
    %endif
    times 7 - ($ - %%insn_00402e42) db 0
    %%insn_00402e49:
    push edx ; 00402E49 52
    %if ($ - %%insn_00402e49) > 1
        %error "LONG_00402E49"
    %endif
    times 1 - ($ - %%insn_00402e49) db 0
    %%insn_00402e4a:
    call 0x4017ee ; 00402E4A E89FE9FFFF
    %if ($ - %%insn_00402e4a) > 5
        %error "LONG_00402E4A"
    %endif
    times 5 - ($ - %%insn_00402e4a) db 0
    %%insn_00402e4f:
    add esp,0x4 ; 00402E4F 83C404
    %if ($ - %%insn_00402e4f) > 3
        %error "LONG_00402E4F"
    %endif
    times 3 - ($ - %%insn_00402e4f) db 0
    %%insn_00402e52:
    mov [ebp-0x12c],ax ; 00402E52 668985D4FEFFFF
    %if ($ - %%insn_00402e52) > 7
        %error "LONG_00402E52"
    %endif
    times 7 - ($ - %%insn_00402e52) db 0
    %%insn_00402e59:
    call 0x4015e6 ; 00402E59 E888E7FFFF
    %if ($ - %%insn_00402e59) > 5
        %error "LONG_00402E59"
    %endif
    times 5 - ($ - %%insn_00402e59) db 0
    %%insn_00402e5e:
    mov ecx,[ebp-0x12c] ; 00402E5E 8B8DD4FEFFFF
    %if ($ - %%insn_00402e5e) > 6
        %error "LONG_00402E5E"
    %endif
    times 6 - ($ - %%insn_00402e5e) db 0
    %%insn_00402e64:
    and ecx,0xffff ; 00402E64 81E1FFFF0000
    %if ($ - %%insn_00402e64) > 6
        %error "LONG_00402E64"
    %endif
    times 6 - ($ - %%insn_00402e64) db 0
    %%insn_00402e6a:
    mov edx,[0x41f2b8] ; 00402E6A 8B15B8F24100
    %if ($ - %%insn_00402e6a) > 6
        %error "LONG_00402E6A"
    %endif
    times 6 - ($ - %%insn_00402e6a) db 0
    %%insn_00402e70:
    mov [edx+ecx],al ; 00402E70 88040A
    %if ($ - %%insn_00402e70) > 3
        %error "LONG_00402E70"
    %endif
    times 3 - ($ - %%insn_00402e70) db 0
    %%insn_00402e73:
    mov ax,[ebp-0x12c] ; 00402E73 668B85D4FEFFFF
    %if ($ - %%insn_00402e73) > 7
        %error "LONG_00402E73"
    %endif
    times 7 - ($ - %%insn_00402e73) db 0
    db 0x66, 0x05, 0x01, 0x00 ; 00402E7A 66050100 | add ax,0x1 | encoding preserved
    %%insn_00402e7e:
    mov [ebp-0x12c],ax ; 00402E7E 668985D4FEFFFF
    %if ($ - %%insn_00402e7e) > 7
        %error "LONG_00402E7E"
    %endif
    times 7 - ($ - %%insn_00402e7e) db 0
    %%insn_00402e85:
    mov ecx,[0x41f284] ; 00402E85 8B0D84F24100
    %if ($ - %%insn_00402e85) > 6
        %error "LONG_00402E85"
    %endif
    times 6 - ($ - %%insn_00402e85) db 0
    %%insn_00402e8b:
    add ecx,[0x41f300] ; 00402E8B 030D00F34100
    %if ($ - %%insn_00402e8b) > 6
        %error "LONG_00402E8B"
    %endif
    times 6 - ($ - %%insn_00402e8b) db 0
    db 0x33, 0xD2 ; 00402E91 33D2 | xor edx,edx | encoding preserved
    %%insn_00402e93:
    mov dl,[ecx-0x1] ; 00402E93 8A51FF
    %if ($ - %%insn_00402e93) > 3
        %error "LONG_00402E93"
    %endif
    times 3 - ($ - %%insn_00402e93) db 0
    %%insn_00402e96:
    and edx,0x80 ; 00402E96 81E280000000
    %if ($ - %%insn_00402e96) > 6
        %error "LONG_00402E96"
    %endif
    times 6 - ($ - %%insn_00402e96) db 0
    %%insn_00402e9c:
    test edx,edx ; 00402E9C 85D2
    %if ($ - %%insn_00402e9c) > 2
        %error "LONG_00402E9C"
    %endif
    times 2 - ($ - %%insn_00402e9c) db 0
    %%insn_00402e9e:
    jz short 0x402e59 ; 00402E9E 74B9
    %if ($ - %%insn_00402e9e) > 2
        %error "LONG_00402E9E"
    %endif
    times 2 - ($ - %%insn_00402e9e) db 0
    %%insn_00402ea0:
    jmp 0x4041db ; 00402EA0 E936130000
    %if ($ - %%insn_00402ea0) > 5
        %error "LONG_00402EA0"
    %endif
    times 5 - ($ - %%insn_00402ea0) db 0
    %%insn_00402ea5:
    call 0x401449 ; 00402EA5 E89FE5FFFF
    %if ($ - %%insn_00402ea5) > 5
        %error "LONG_00402EA5"
    %endif
    times 5 - ($ - %%insn_00402ea5) db 0
    %%insn_00402eaa:
    mov ecx,[0x41f2b8] ; 00402EAA 8B0DB8F24100
    %if ($ - %%insn_00402eaa) > 6
        %error "LONG_00402EAA"
    %endif
    times 6 - ($ - %%insn_00402eaa) db 0
    %%insn_00402eb0:
    mov [ecx+0x102],al ; 00402EB0 888102010000
    %if ($ - %%insn_00402eb0) > 6
        %error "LONG_00402EB0"
    %endif
    times 6 - ($ - %%insn_00402eb0) db 0
    %%insn_00402eb6:
    cmp dword [0x41f2a8],0x0 ; 00402EB6 833DA8F2410000
    %if ($ - %%insn_00402eb6) > 7
        %error "LONG_00402EB6"
    %endif
    times 7 - ($ - %%insn_00402eb6) db 0
    %%insn_00402ebd:
    jnz short 0x402ecb ; 00402EBD 750C
    %if ($ - %%insn_00402ebd) > 2
        %error "LONG_00402EBD"
    %endif
    times 2 - ($ - %%insn_00402ebd) db 0
    %%insn_00402ebf:
    push dword 0x1 ; 00402EBF 6A01
    %if ($ - %%insn_00402ebf) > 2
        %error "LONG_00402EBF"
    %endif
    times 2 - ($ - %%insn_00402ebf) db 0
    %%insn_00402ec1:
    push dword 0xd ; 00402EC1 6A0D
    %if ($ - %%insn_00402ec1) > 2
        %error "LONG_00402EC1"
    %endif
    times 2 - ($ - %%insn_00402ec1) db 0
    %%insn_00402ec3:
    call 0x409691 ; 00402EC3 E8C9670000
    %if ($ - %%insn_00402ec3) > 5
        %error "LONG_00402EC3"
    %endif
    times 5 - ($ - %%insn_00402ec3) db 0
    %%insn_00402ec8:
    add esp,0x8 ; 00402EC8 83C408
    %if ($ - %%insn_00402ec8) > 3
        %error "LONG_00402EC8"
    %endif
    times 3 - ($ - %%insn_00402ec8) db 0
    %%insn_00402ecb:
    mov edx,[0x41f2a8] ; 00402ECB 8B15A8F24100
    %if ($ - %%insn_00402ecb) > 6
        %error "LONG_00402ECB"
    %endif
    times 6 - ($ - %%insn_00402ecb) db 0
    %%insn_00402ed1:
    sub edx,0x1 ; 00402ED1 83EA01
    %if ($ - %%insn_00402ed1) > 3
        %error "LONG_00402ED1"
    %endif
    times 3 - ($ - %%insn_00402ed1) db 0
    %%insn_00402ed4:
    mov [0x41f2a8],edx ; 00402ED4 8915A8F24100
    %if ($ - %%insn_00402ed4) > 6
        %error "LONG_00402ED4"
    %endif
    times 6 - ($ - %%insn_00402ed4) db 0
    %%insn_00402eda:
    mov eax,[0x41f2a8] ; 00402EDA A1A8F24100
    %if ($ - %%insn_00402eda) > 5
        %error "LONG_00402EDA"
    %endif
    times 5 - ($ - %%insn_00402eda) db 0
    %%insn_00402edf:
    mov ecx,[0x41f304] ; 00402EDF 8B0D04F34100
    %if ($ - %%insn_00402edf) > 6
        %error "LONG_00402EDF"
    %endif
    times 6 - ($ - %%insn_00402edf) db 0
    db 0x33, 0xD2 ; 00402EE5 33D2 | xor edx,edx | encoding preserved
    %%insn_00402ee7:
    mov dx,[ecx+eax*2] ; 00402EE7 668B1441
    %if ($ - %%insn_00402ee7) > 4
        %error "LONG_00402EE7"
    %endif
    times 4 - ($ - %%insn_00402ee7) db 0
    %%insn_00402eeb:
    mov [0x41f300],edx ; 00402EEB 891500F34100
    %if ($ - %%insn_00402eeb) > 6
        %error "LONG_00402EEB"
    %endif
    times 6 - ($ - %%insn_00402eeb) db 0
    %%insn_00402ef1:
    jmp 0x4041db ; 00402EF1 E9E5120000
    %if ($ - %%insn_00402ef1) > 5
        %error "LONG_00402EF1"
    %endif
    times 5 - ($ - %%insn_00402ef1) db 0
    %%insn_00402ef6:
    mov eax,[0x41f300] ; 00402EF6 A100F34100
    %if ($ - %%insn_00402ef6) > 5
        %error "LONG_00402EF6"
    %endif
    times 5 - ($ - %%insn_00402ef6) db 0
    %%insn_00402efb:
    add eax,0x2 ; 00402EFB 83C002
    %if ($ - %%insn_00402efb) > 3
        %error "LONG_00402EFB"
    %endif
    times 3 - ($ - %%insn_00402efb) db 0
    %%insn_00402efe:
    mov ecx,[0x41f2a8] ; 00402EFE 8B0DA8F24100
    %if ($ - %%insn_00402efe) > 6
        %error "LONG_00402EFE"
    %endif
    times 6 - ($ - %%insn_00402efe) db 0
    %%insn_00402f04:
    mov edx,[0x41f304] ; 00402F04 8B1504F34100
    %if ($ - %%insn_00402f04) > 6
        %error "LONG_00402F04"
    %endif
    times 6 - ($ - %%insn_00402f04) db 0
    %%insn_00402f0a:
    mov [edx+ecx*2],ax ; 00402F0A 6689044A
    %if ($ - %%insn_00402f0a) > 4
        %error "LONG_00402F0A"
    %endif
    times 4 - ($ - %%insn_00402f0a) db 0
    %%insn_00402f0e:
    mov eax,[0x41f2a8] ; 00402F0E A1A8F24100
    %if ($ - %%insn_00402f0e) > 5
        %error "LONG_00402F0E"
    %endif
    times 5 - ($ - %%insn_00402f0e) db 0
    %%insn_00402f13:
    add eax,0x1 ; 00402F13 83C001
    %if ($ - %%insn_00402f13) > 3
        %error "LONG_00402F13"
    %endif
    times 3 - ($ - %%insn_00402f13) db 0
    %%insn_00402f16:
    mov [0x41f2a8],eax ; 00402F16 A3A8F24100
    %if ($ - %%insn_00402f16) > 5
        %error "LONG_00402F16"
    %endif
    times 5 - ($ - %%insn_00402f16) db 0
    %%insn_00402f1b:
    call 0x401473 ; 00402F1B E853E5FFFF
    %if ($ - %%insn_00402f1b) > 5
        %error "LONG_00402F1B"
    %endif
    times 5 - ($ - %%insn_00402f1b) db 0
    %%insn_00402f20:
    and eax,0xffff ; 00402F20 25FFFF0000
    %if ($ - %%insn_00402f20) > 5
        %error "LONG_00402F20"
    %endif
    times 5 - ($ - %%insn_00402f20) db 0
    %%insn_00402f25:
    mov [0x41f300],eax ; 00402F25 A300F34100
    %if ($ - %%insn_00402f25) > 5
        %error "LONG_00402F25"
    %endif
    times 5 - ($ - %%insn_00402f25) db 0
    %%insn_00402f2a:
    jmp 0x4041db ; 00402F2A E9AC120000
    %if ($ - %%insn_00402f2a) > 5
        %error "LONG_00402F2A"
    %endif
    times 5 - ($ - %%insn_00402f2a) db 0
    %%insn_00402f2f:
    call 0x401473 ; 00402F2F E83FE5FFFF
    %if ($ - %%insn_00402f2f) > 5
        %error "LONG_00402F2F"
    %endif
    times 5 - ($ - %%insn_00402f2f) db 0
    %%insn_00402f34:
    mov [ebp-0x18],ax ; 00402F34 668945E8
    %if ($ - %%insn_00402f34) > 4
        %error "LONG_00402F34"
    %endif
    times 4 - ($ - %%insn_00402f34) db 0
    %%insn_00402f38:
    mov ecx,[ebp-0x18] ; 00402F38 8B4DE8
    %if ($ - %%insn_00402f38) > 3
        %error "LONG_00402F38"
    %endif
    times 3 - ($ - %%insn_00402f38) db 0
    %%insn_00402f3b:
    and ecx,0xffff ; 00402F3B 81E1FFFF0000
    %if ($ - %%insn_00402f3b) > 6
        %error "LONG_00402F3B"
    %endif
    times 6 - ($ - %%insn_00402f3b) db 0
    %%insn_00402f41:
    imul ecx,ecx,0x3 ; 00402F41 6BC903
    %if ($ - %%insn_00402f41) > 3
        %error "LONG_00402F41"
    %endif
    times 3 - ($ - %%insn_00402f41) db 0
    %%insn_00402f44:
    push ecx ; 00402F44 51
    %if ($ - %%insn_00402f44) > 1
        %error "LONG_00402F44"
    %endif
    times 1 - ($ - %%insn_00402f44) db 0
    %%insn_00402f45:
    call 0x4015bf ; 00402F45 E875E6FFFF
    %if ($ - %%insn_00402f45) > 5
        %error "LONG_00402F45"
    %endif
    times 5 - ($ - %%insn_00402f45) db 0
    %%insn_00402f4a:
    add esp,0x4 ; 00402F4A 83C404
    %if ($ - %%insn_00402f4a) > 3
        %error "LONG_00402F4A"
    %endif
    times 3 - ($ - %%insn_00402f4a) db 0
    %%insn_00402f4d:
    jmp 0x4041db ; 00402F4D E989120000
    %if ($ - %%insn_00402f4d) > 5
        %error "LONG_00402F4D"
    %endif
    times 5 - ($ - %%insn_00402f4d) db 0
    %%insn_00402f52:
    mov dx,[ebp-0x124] ; 00402F52 668B95DCFEFFFF
    %if ($ - %%insn_00402f52) > 7
        %error "LONG_00402F52"
    %endif
    times 7 - ($ - %%insn_00402f52) db 0
    %%insn_00402f59:
    push edx ; 00402F59 52
    %if ($ - %%insn_00402f59) > 1
        %error "LONG_00402F59"
    %endif
    times 1 - ($ - %%insn_00402f59) db 0
    %%insn_00402f5a:
    call 0x4017ee ; 00402F5A E88FE8FFFF
    %if ($ - %%insn_00402f5a) > 5
        %error "LONG_00402F5A"
    %endif
    times 5 - ($ - %%insn_00402f5a) db 0
    %%insn_00402f5f:
    add esp,0x4 ; 00402F5F 83C404
    %if ($ - %%insn_00402f5f) > 3
        %error "LONG_00402F5F"
    %endif
    times 3 - ($ - %%insn_00402f5f) db 0
    %%insn_00402f62:
    mov [ebp-0x12c],ax ; 00402F62 668985D4FEFFFF
    %if ($ - %%insn_00402f62) > 7
        %error "LONG_00402F62"
    %endif
    times 7 - ($ - %%insn_00402f62) db 0
    %%insn_00402f69:
    mov word [ebp-0x120],0x1 ; 00402F69 66C785E0FEFFFF0100
    %if ($ - %%insn_00402f69) > 9
        %error "LONG_00402F69"
    %endif
    times 9 - ($ - %%insn_00402f69) db 0
    %%insn_00402f72:
    mov eax,[ebp-0x12c] ; 00402F72 8B85D4FEFFFF
    %if ($ - %%insn_00402f72) > 6
        %error "LONG_00402F72"
    %endif
    times 6 - ($ - %%insn_00402f72) db 0
    %%insn_00402f78:
    and eax,0xffff ; 00402F78 25FFFF0000
    %if ($ - %%insn_00402f78) > 5
        %error "LONG_00402F78"
    %endif
    times 5 - ($ - %%insn_00402f78) db 0
    %%insn_00402f7d:
    mov ecx,[0x41f2b8] ; 00402F7D 8B0DB8F24100
    %if ($ - %%insn_00402f7d) > 6
        %error "LONG_00402F7D"
    %endif
    times 6 - ($ - %%insn_00402f7d) db 0
    db 0x33, 0xD2 ; 00402F83 33D2 | xor edx,edx | encoding preserved
    %%insn_00402f85:
    mov dl,[ecx+eax] ; 00402F85 8A1401
    %if ($ - %%insn_00402f85) > 3
        %error "LONG_00402F85"
    %endif
    times 3 - ($ - %%insn_00402f85) db 0
    db 0x8B, 0xF2 ; 00402F88 8BF2 | mov esi,edx | encoding preserved
    %%insn_00402f8a:
    call 0x4015e6 ; 00402F8A E857E6FFFF
    %if ($ - %%insn_00402f8a) > 5
        %error "LONG_00402F8A"
    %endif
    times 5 - ($ - %%insn_00402f8a) db 0
    %%insn_00402f8f:
    and eax,0xff ; 00402F8F 25FF000000
    %if ($ - %%insn_00402f8f) > 5
        %error "LONG_00402F8F"
    %endif
    times 5 - ($ - %%insn_00402f8f) db 0
    %%insn_00402f94:
    mov cx,[ebp-0x12c] ; 00402F94 668B8DD4FEFFFF
    %if ($ - %%insn_00402f94) > 7
        %error "LONG_00402F94"
    %endif
    times 7 - ($ - %%insn_00402f94) db 0
    %%insn_00402f9b:
    add cx,0x1 ; 00402F9B 6683C101
    %if ($ - %%insn_00402f9b) > 4
        %error "LONG_00402F9B"
    %endif
    times 4 - ($ - %%insn_00402f9b) db 0
    %%insn_00402f9f:
    mov [ebp-0x12c],cx ; 00402F9F 66898DD4FEFFFF
    %if ($ - %%insn_00402f9f) > 7
        %error "LONG_00402F9F"
    %endif
    times 7 - ($ - %%insn_00402f9f) db 0
    db 0x3B, 0xF0 ; 00402FA6 3BF0 | cmp esi,eax | encoding preserved
    %%insn_00402fa8:
    jz short 0x402fb3 ; 00402FA8 7409
    %if ($ - %%insn_00402fa8) > 2
        %error "LONG_00402FA8"
    %endif
    times 2 - ($ - %%insn_00402fa8) db 0
    %%insn_00402faa:
    mov word [ebp-0x120],0x0 ; 00402FAA 66C785E0FEFFFF0000
    %if ($ - %%insn_00402faa) > 9
        %error "LONG_00402FAA"
    %endif
    times 9 - ($ - %%insn_00402faa) db 0
    %%insn_00402fb3:
    mov edx,[0x41f284] ; 00402FB3 8B1584F24100
    %if ($ - %%insn_00402fb3) > 6
        %error "LONG_00402FB3"
    %endif
    times 6 - ($ - %%insn_00402fb3) db 0
    %%insn_00402fb9:
    add edx,[0x41f300] ; 00402FB9 031500F34100
    %if ($ - %%insn_00402fb9) > 6
        %error "LONG_00402FB9"
    %endif
    times 6 - ($ - %%insn_00402fb9) db 0
    db 0x33, 0xC0 ; 00402FBF 33C0 | xor eax,eax | encoding preserved
    %%insn_00402fc1:
    mov al,[edx-0x1] ; 00402FC1 8A42FF
    %if ($ - %%insn_00402fc1) > 3
        %error "LONG_00402FC1"
    %endif
    times 3 - ($ - %%insn_00402fc1) db 0
    %%insn_00402fc4:
    and eax,0x80 ; 00402FC4 2580000000
    %if ($ - %%insn_00402fc4) > 5
        %error "LONG_00402FC4"
    %endif
    times 5 - ($ - %%insn_00402fc4) db 0
    %%insn_00402fc9:
    test eax,eax ; 00402FC9 85C0
    %if ($ - %%insn_00402fc9) > 2
        %error "LONG_00402FC9"
    %endif
    times 2 - ($ - %%insn_00402fc9) db 0
    %%insn_00402fcb:
    jz short 0x402f72 ; 00402FCB 74A5
    %if ($ - %%insn_00402fcb) > 2
        %error "LONG_00402FCB"
    %endif
    times 2 - ($ - %%insn_00402fcb) db 0
    %%insn_00402fcd:
    call 0x401473 ; 00402FCD E8A1E4FFFF
    %if ($ - %%insn_00402fcd) > 5
        %error "LONG_00402FCD"
    %endif
    times 5 - ($ - %%insn_00402fcd) db 0
    %%insn_00402fd2:
    mov [ebp-0x18],ax ; 00402FD2 668945E8
    %if ($ - %%insn_00402fd2) > 4
        %error "LONG_00402FD2"
    %endif
    times 4 - ($ - %%insn_00402fd2) db 0
    %%insn_00402fd6:
    mov ecx,[ebp-0x120] ; 00402FD6 8B8DE0FEFFFF
    %if ($ - %%insn_00402fd6) > 6
        %error "LONG_00402FD6"
    %endif
    times 6 - ($ - %%insn_00402fd6) db 0
    %%insn_00402fdc:
    and ecx,0xffff ; 00402FDC 81E1FFFF0000
    %if ($ - %%insn_00402fdc) > 6
        %error "LONG_00402FDC"
    %endif
    times 6 - ($ - %%insn_00402fdc) db 0
    %%insn_00402fe2:
    test ecx,ecx ; 00402FE2 85C9
    %if ($ - %%insn_00402fe2) > 2
        %error "LONG_00402FE2"
    %endif
    times 2 - ($ - %%insn_00402fe2) db 0
    %%insn_00402fe4:
    jnz short 0x402ff5 ; 00402FE4 750F
    %if ($ - %%insn_00402fe4) > 2
        %error "LONG_00402FE4"
    %endif
    times 2 - ($ - %%insn_00402fe4) db 0
    %%insn_00402fe6:
    mov edx,[ebp-0x18] ; 00402FE6 8B55E8
    %if ($ - %%insn_00402fe6) > 3
        %error "LONG_00402FE6"
    %endif
    times 3 - ($ - %%insn_00402fe6) db 0
    %%insn_00402fe9:
    and edx,0xffff ; 00402FE9 81E2FFFF0000
    %if ($ - %%insn_00402fe9) > 6
        %error "LONG_00402FE9"
    %endif
    times 6 - ($ - %%insn_00402fe9) db 0
    %%insn_00402fef:
    mov [0x41f300],edx ; 00402FEF 891500F34100
    %if ($ - %%insn_00402fef) > 6
        %error "LONG_00402FEF"
    %endif
    times 6 - ($ - %%insn_00402fef) db 0
    %%insn_00402ff5:
    jmp 0x4041db ; 00402FF5 E9E1110000
    %if ($ - %%insn_00402ff5) > 5
        %error "LONG_00402FF5"
    %endif
    times 5 - ($ - %%insn_00402ff5) db 0
    %%insn_00402ffa:
    mov ax,[ebp-0x124] ; 00402FFA 668B85DCFEFFFF
    %if ($ - %%insn_00402ffa) > 7
        %error "LONG_00402FFA"
    %endif
    times 7 - ($ - %%insn_00402ffa) db 0
    %%insn_00403001:
    push eax ; 00403001 50
    %if ($ - %%insn_00403001) > 1
        %error "LONG_00403001"
    %endif
    times 1 - ($ - %%insn_00403001) db 0
    %%insn_00403002:
    call 0x4017ee ; 00403002 E8E7E7FFFF
    %if ($ - %%insn_00403002) > 5
        %error "LONG_00403002"
    %endif
    times 5 - ($ - %%insn_00403002) db 0
    %%insn_00403007:
    add esp,0x4 ; 00403007 83C404
    %if ($ - %%insn_00403007) > 3
        %error "LONG_00403007"
    %endif
    times 3 - ($ - %%insn_00403007) db 0
    %%insn_0040300a:
    mov [ebp-0x12c],ax ; 0040300A 668985D4FEFFFF
    %if ($ - %%insn_0040300a) > 7
        %error "LONG_0040300A"
    %endif
    times 7 - ($ - %%insn_0040300a) db 0
    %%insn_00403011:
    call 0x401449 ; 00403011 E833E4FFFF
    %if ($ - %%insn_00403011) > 5
        %error "LONG_00403011"
    %endif
    times 5 - ($ - %%insn_00403011) db 0
    %%insn_00403016:
    and eax,0xff ; 00403016 25FF000000
    %if ($ - %%insn_00403016) > 5
        %error "LONG_00403016"
    %endif
    times 5 - ($ - %%insn_00403016) db 0
    %%insn_0040301b:
    and eax,0x4f ; 0040301B 83E04F
    %if ($ - %%insn_0040301b) > 3
        %error "LONG_0040301B"
    %endif
    times 3 - ($ - %%insn_0040301b) db 0
    %%insn_0040301e:
    mov [ebp-0x140],al ; 0040301E 8885C0FEFFFF
    %if ($ - %%insn_0040301e) > 6
        %error "LONG_0040301E"
    %endif
    times 6 - ($ - %%insn_0040301e) db 0
    %%insn_00403024:
    mov ecx,[ebp-0x12c] ; 00403024 8B8DD4FEFFFF
    %if ($ - %%insn_00403024) > 6
        %error "LONG_00403024"
    %endif
    times 6 - ($ - %%insn_00403024) db 0
    %%insn_0040302a:
    and ecx,0xffff ; 0040302A 81E1FFFF0000
    %if ($ - %%insn_0040302a) > 6
        %error "LONG_0040302A"
    %endif
    times 6 - ($ - %%insn_0040302a) db 0
    %%insn_00403030:
    mov edx,[0x41f2b8] ; 00403030 8B15B8F24100
    %if ($ - %%insn_00403030) > 6
        %error "LONG_00403030"
    %endif
    times 6 - ($ - %%insn_00403030) db 0
    %%insn_00403036:
    mov al,[edx+ecx] ; 00403036 8A040A
    %if ($ - %%insn_00403036) > 3
        %error "LONG_00403036"
    %endif
    times 3 - ($ - %%insn_00403036) db 0
    %%insn_00403039:
    xor al,[ebp-0x140] ; 00403039 3285C0FEFFFF
    %if ($ - %%insn_00403039) > 6
        %error "LONG_00403039"
    %endif
    times 6 - ($ - %%insn_00403039) db 0
    %%insn_0040303f:
    mov ecx,[ebp-0x12c] ; 0040303F 8B8DD4FEFFFF
    %if ($ - %%insn_0040303f) > 6
        %error "LONG_0040303F"
    %endif
    times 6 - ($ - %%insn_0040303f) db 0
    %%insn_00403045:
    and ecx,0xffff ; 00403045 81E1FFFF0000
    %if ($ - %%insn_00403045) > 6
        %error "LONG_00403045"
    %endif
    times 6 - ($ - %%insn_00403045) db 0
    %%insn_0040304b:
    mov edx,[0x41f2b8] ; 0040304B 8B15B8F24100
    %if ($ - %%insn_0040304b) > 6
        %error "LONG_0040304B"
    %endif
    times 6 - ($ - %%insn_0040304b) db 0
    %%insn_00403051:
    mov [edx+ecx],al ; 00403051 88040A
    %if ($ - %%insn_00403051) > 3
        %error "LONG_00403051"
    %endif
    times 3 - ($ - %%insn_00403051) db 0
    %%insn_00403054:
    mov ax,[ebp-0x12c] ; 00403054 668B85D4FEFFFF
    %if ($ - %%insn_00403054) > 7
        %error "LONG_00403054"
    %endif
    times 7 - ($ - %%insn_00403054) db 0
    db 0x66, 0x05, 0x01, 0x00 ; 0040305B 66050100 | add ax,0x1 | encoding preserved
    %%insn_0040305f:
    mov [ebp-0x12c],ax ; 0040305F 668985D4FEFFFF
    %if ($ - %%insn_0040305f) > 7
        %error "LONG_0040305F"
    %endif
    times 7 - ($ - %%insn_0040305f) db 0
    %%insn_00403066:
    mov ecx,[0x41f284] ; 00403066 8B0D84F24100
    %if ($ - %%insn_00403066) > 6
        %error "LONG_00403066"
    %endif
    times 6 - ($ - %%insn_00403066) db 0
    %%insn_0040306c:
    add ecx,[0x41f300] ; 0040306C 030D00F34100
    %if ($ - %%insn_0040306c) > 6
        %error "LONG_0040306C"
    %endif
    times 6 - ($ - %%insn_0040306c) db 0
    db 0x33, 0xD2 ; 00403072 33D2 | xor edx,edx | encoding preserved
    %%insn_00403074:
    mov dl,[ecx-0x1] ; 00403074 8A51FF
    %if ($ - %%insn_00403074) > 3
        %error "LONG_00403074"
    %endif
    times 3 - ($ - %%insn_00403074) db 0
    %%insn_00403077:
    and edx,0x80 ; 00403077 81E280000000
    %if ($ - %%insn_00403077) > 6
        %error "LONG_00403077"
    %endif
    times 6 - ($ - %%insn_00403077) db 0
    %%insn_0040307d:
    test edx,edx ; 0040307D 85D2
    %if ($ - %%insn_0040307d) > 2
        %error "LONG_0040307D"
    %endif
    times 2 - ($ - %%insn_0040307d) db 0
    %%insn_0040307f:
    jz short 0x403011 ; 0040307F 7490
    %if ($ - %%insn_0040307f) > 2
        %error "LONG_0040307F"
    %endif
    times 2 - ($ - %%insn_0040307f) db 0
    %%insn_00403081:
    jmp 0x4041db ; 00403081 E955110000
    %if ($ - %%insn_00403081) > 5
        %error "LONG_00403081"
    %endif
    times 5 - ($ - %%insn_00403081) db 0
    %%insn_00403086:
    mov ax,[ebp-0x124] ; 00403086 668B85DCFEFFFF
    %if ($ - %%insn_00403086) > 7
        %error "LONG_00403086"
    %endif
    times 7 - ($ - %%insn_00403086) db 0
    %%insn_0040308d:
    push eax ; 0040308D 50
    %if ($ - %%insn_0040308d) > 1
        %error "LONG_0040308D"
    %endif
    times 1 - ($ - %%insn_0040308d) db 0
    %%insn_0040308e:
    call 0x4017ee ; 0040308E E85BE7FFFF
    %if ($ - %%insn_0040308e) > 5
        %error "LONG_0040308E"
    %endif
    times 5 - ($ - %%insn_0040308e) db 0
    %%insn_00403093:
    add esp,0x4 ; 00403093 83C404
    %if ($ - %%insn_00403093) > 3
        %error "LONG_00403093"
    %endif
    times 3 - ($ - %%insn_00403093) db 0
    %%insn_00403096:
    mov [ebp-0x12c],ax ; 00403096 668985D4FEFFFF
    %if ($ - %%insn_00403096) > 7
        %error "LONG_00403096"
    %endif
    times 7 - ($ - %%insn_00403096) db 0
    %%insn_0040309d:
    call 0x401473 ; 0040309D E8D1E3FFFF
    %if ($ - %%insn_0040309d) > 5
        %error "LONG_0040309D"
    %endif
    times 5 - ($ - %%insn_0040309d) db 0
    %%insn_004030a2:
    mov [ebp-0x18],ax ; 004030A2 668945E8
    %if ($ - %%insn_004030a2) > 4
        %error "LONG_004030A2"
    %endif
    times 4 - ($ - %%insn_004030a2) db 0
    %%insn_004030a6:
    mov ecx,[ebp-0x18] ; 004030A6 8B4DE8
    %if ($ - %%insn_004030a6) > 3
        %error "LONG_004030A6"
    %endif
    times 3 - ($ - %%insn_004030a6) db 0
    %%insn_004030a9:
    and ecx,0xffff ; 004030A9 81E1FFFF0000
    %if ($ - %%insn_004030a9) > 6
        %error "LONG_004030A9"
    %endif
    times 6 - ($ - %%insn_004030a9) db 0
    %%insn_004030af:
    mov edx,[0x41f2b8] ; 004030AF 8B15B8F24100
    %if ($ - %%insn_004030af) > 6
        %error "LONG_004030AF"
    %endif
    times 6 - ($ - %%insn_004030af) db 0
    %%insn_004030b5:
    mov al,[edx+ecx] ; 004030B5 8A040A
    %if ($ - %%insn_004030b5) > 3
        %error "LONG_004030B5"
    %endif
    times 3 - ($ - %%insn_004030b5) db 0
    %%insn_004030b8:
    mov [ebp-0x140],al ; 004030B8 8885C0FEFFFF
    %if ($ - %%insn_004030b8) > 6
        %error "LONG_004030B8"
    %endif
    times 6 - ($ - %%insn_004030b8) db 0
    %%insn_004030be:
    mov ecx,[ebp-0x12c] ; 004030BE 8B8DD4FEFFFF
    %if ($ - %%insn_004030be) > 6
        %error "LONG_004030BE"
    %endif
    times 6 - ($ - %%insn_004030be) db 0
    %%insn_004030c4:
    and ecx,0xffff ; 004030C4 81E1FFFF0000
    %if ($ - %%insn_004030c4) > 6
        %error "LONG_004030C4"
    %endif
    times 6 - ($ - %%insn_004030c4) db 0
    %%insn_004030ca:
    mov edx,[ebp-0x18] ; 004030CA 8B55E8
    %if ($ - %%insn_004030ca) > 3
        %error "LONG_004030CA"
    %endif
    times 3 - ($ - %%insn_004030ca) db 0
    %%insn_004030cd:
    and edx,0xffff ; 004030CD 81E2FFFF0000
    %if ($ - %%insn_004030cd) > 6
        %error "LONG_004030CD"
    %endif
    times 6 - ($ - %%insn_004030cd) db 0
    %%insn_004030d3:
    mov eax,[0x41f2b8] ; 004030D3 A1B8F24100
    %if ($ - %%insn_004030d3) > 5
        %error "LONG_004030D3"
    %endif
    times 5 - ($ - %%insn_004030d3) db 0
    %%insn_004030d8:
    mov esi,[0x41f2b8] ; 004030D8 8B35B8F24100
    %if ($ - %%insn_004030d8) > 6
        %error "LONG_004030D8"
    %endif
    times 6 - ($ - %%insn_004030d8) db 0
    %%insn_004030de:
    mov cl,[esi+ecx] ; 004030DE 8A0C0E
    %if ($ - %%insn_004030de) > 3
        %error "LONG_004030DE"
    %endif
    times 3 - ($ - %%insn_004030de) db 0
    %%insn_004030e1:
    mov [eax+edx],cl ; 004030E1 880C10
    %if ($ - %%insn_004030e1) > 3
        %error "LONG_004030E1"
    %endif
    times 3 - ($ - %%insn_004030e1) db 0
    %%insn_004030e4:
    mov edx,[ebp-0x12c] ; 004030E4 8B95D4FEFFFF
    %if ($ - %%insn_004030e4) > 6
        %error "LONG_004030E4"
    %endif
    times 6 - ($ - %%insn_004030e4) db 0
    %%insn_004030ea:
    and edx,0xffff ; 004030EA 81E2FFFF0000
    %if ($ - %%insn_004030ea) > 6
        %error "LONG_004030EA"
    %endif
    times 6 - ($ - %%insn_004030ea) db 0
    %%insn_004030f0:
    mov eax,[0x41f2b8] ; 004030F0 A1B8F24100
    %if ($ - %%insn_004030f0) > 5
        %error "LONG_004030F0"
    %endif
    times 5 - ($ - %%insn_004030f0) db 0
    %%insn_004030f5:
    mov cl,[ebp-0x140] ; 004030F5 8A8DC0FEFFFF
    %if ($ - %%insn_004030f5) > 6
        %error "LONG_004030F5"
    %endif
    times 6 - ($ - %%insn_004030f5) db 0
    %%insn_004030fb:
    mov [eax+edx],cl ; 004030FB 880C10
    %if ($ - %%insn_004030fb) > 3
        %error "LONG_004030FB"
    %endif
    times 3 - ($ - %%insn_004030fb) db 0
    %%insn_004030fe:
    jmp 0x4041db ; 004030FE E9D8100000
    %if ($ - %%insn_004030fe) > 5
        %error "LONG_004030FE"
    %endif
    times 5 - ($ - %%insn_004030fe) db 0
    %%insn_00403103:
    mov dx,[ebp-0x124] ; 00403103 668B95DCFEFFFF
    %if ($ - %%insn_00403103) > 7
        %error "LONG_00403103"
    %endif
    times 7 - ($ - %%insn_00403103) db 0
    %%insn_0040310a:
    push edx ; 0040310A 52
    %if ($ - %%insn_0040310a) > 1
        %error "LONG_0040310A"
    %endif
    times 1 - ($ - %%insn_0040310a) db 0
    %%insn_0040310b:
    call 0x4017ee ; 0040310B E8DEE6FFFF
    %if ($ - %%insn_0040310b) > 5
        %error "LONG_0040310B"
    %endif
    times 5 - ($ - %%insn_0040310b) db 0
    %%insn_00403110:
    add esp,0x4 ; 00403110 83C404
    %if ($ - %%insn_00403110) > 3
        %error "LONG_00403110"
    %endif
    times 3 - ($ - %%insn_00403110) db 0
    %%insn_00403113:
    mov [ebp-0x12c],ax ; 00403113 668985D4FEFFFF
    %if ($ - %%insn_00403113) > 7
        %error "LONG_00403113"
    %endif
    times 7 - ($ - %%insn_00403113) db 0
    %%insn_0040311a:
    mov eax,[ebp-0x12c] ; 0040311A 8B85D4FEFFFF
    %if ($ - %%insn_0040311a) > 6
        %error "LONG_0040311A"
    %endif
    times 6 - ($ - %%insn_0040311a) db 0
    %%insn_00403120:
    and eax,0xffff ; 00403120 25FFFF0000
    %if ($ - %%insn_00403120) > 5
        %error "LONG_00403120"
    %endif
    times 5 - ($ - %%insn_00403120) db 0
    %%insn_00403125:
    mov ecx,[0x41f2b8] ; 00403125 8B0DB8F24100
    %if ($ - %%insn_00403125) > 6
        %error "LONG_00403125"
    %endif
    times 6 - ($ - %%insn_00403125) db 0
    %%insn_0040312b:
    mov dl,[ecx+eax] ; 0040312B 8A1401
    %if ($ - %%insn_0040312b) > 3
        %error "LONG_0040312B"
    %endif
    times 3 - ($ - %%insn_0040312b) db 0
    %%insn_0040312e:
    add dl,0x1 ; 0040312E 80C201
    %if ($ - %%insn_0040312e) > 3
        %error "LONG_0040312E"
    %endif
    times 3 - ($ - %%insn_0040312e) db 0
    %%insn_00403131:
    mov eax,[ebp-0x12c] ; 00403131 8B85D4FEFFFF
    %if ($ - %%insn_00403131) > 6
        %error "LONG_00403131"
    %endif
    times 6 - ($ - %%insn_00403131) db 0
    %%insn_00403137:
    and eax,0xffff ; 00403137 25FFFF0000
    %if ($ - %%insn_00403137) > 5
        %error "LONG_00403137"
    %endif
    times 5 - ($ - %%insn_00403137) db 0
    %%insn_0040313c:
    mov ecx,[0x41f2b8] ; 0040313C 8B0DB8F24100
    %if ($ - %%insn_0040313c) > 6
        %error "LONG_0040313C"
    %endif
    times 6 - ($ - %%insn_0040313c) db 0
    %%insn_00403142:
    mov [ecx+eax],dl ; 00403142 881401
    %if ($ - %%insn_00403142) > 3
        %error "LONG_00403142"
    %endif
    times 3 - ($ - %%insn_00403142) db 0
    %%insn_00403145:
    jmp 0x4041db ; 00403145 E991100000
    %if ($ - %%insn_00403145) > 5
        %error "LONG_00403145"
    %endif
    times 5 - ($ - %%insn_00403145) db 0
    %%insn_0040314a:
    mov dx,[ebp-0x124] ; 0040314A 668B95DCFEFFFF
    %if ($ - %%insn_0040314a) > 7
        %error "LONG_0040314A"
    %endif
    times 7 - ($ - %%insn_0040314a) db 0
    %%insn_00403151:
    push edx ; 00403151 52
    %if ($ - %%insn_00403151) > 1
        %error "LONG_00403151"
    %endif
    times 1 - ($ - %%insn_00403151) db 0
    %%insn_00403152:
    call 0x4017ee ; 00403152 E897E6FFFF
    %if ($ - %%insn_00403152) > 5
        %error "LONG_00403152"
    %endif
    times 5 - ($ - %%insn_00403152) db 0
    %%insn_00403157:
    add esp,0x4 ; 00403157 83C404
    %if ($ - %%insn_00403157) > 3
        %error "LONG_00403157"
    %endif
    times 3 - ($ - %%insn_00403157) db 0
    %%insn_0040315a:
    mov [ebp-0x12c],ax ; 0040315A 668985D4FEFFFF
    %if ($ - %%insn_0040315a) > 7
        %error "LONG_0040315A"
    %endif
    times 7 - ($ - %%insn_0040315a) db 0
    %%insn_00403161:
    mov eax,[ebp-0x12c] ; 00403161 8B85D4FEFFFF
    %if ($ - %%insn_00403161) > 6
        %error "LONG_00403161"
    %endif
    times 6 - ($ - %%insn_00403161) db 0
    %%insn_00403167:
    and eax,0xffff ; 00403167 25FFFF0000
    %if ($ - %%insn_00403167) > 5
        %error "LONG_00403167"
    %endif
    times 5 - ($ - %%insn_00403167) db 0
    %%insn_0040316c:
    mov ecx,[0x41f2b8] ; 0040316C 8B0DB8F24100
    %if ($ - %%insn_0040316c) > 6
        %error "LONG_0040316C"
    %endif
    times 6 - ($ - %%insn_0040316c) db 0
    %%insn_00403172:
    mov dl,[ecx+eax] ; 00403172 8A1401
    %if ($ - %%insn_00403172) > 3
        %error "LONG_00403172"
    %endif
    times 3 - ($ - %%insn_00403172) db 0
    %%insn_00403175:
    sub dl,0x1 ; 00403175 80EA01
    %if ($ - %%insn_00403175) > 3
        %error "LONG_00403175"
    %endif
    times 3 - ($ - %%insn_00403175) db 0
    %%insn_00403178:
    mov eax,[ebp-0x12c] ; 00403178 8B85D4FEFFFF
    %if ($ - %%insn_00403178) > 6
        %error "LONG_00403178"
    %endif
    times 6 - ($ - %%insn_00403178) db 0
    %%insn_0040317e:
    and eax,0xffff ; 0040317E 25FFFF0000
    %if ($ - %%insn_0040317e) > 5
        %error "LONG_0040317E"
    %endif
    times 5 - ($ - %%insn_0040317e) db 0
    %%insn_00403183:
    mov ecx,[0x41f2b8] ; 00403183 8B0DB8F24100
    %if ($ - %%insn_00403183) > 6
        %error "LONG_00403183"
    %endif
    times 6 - ($ - %%insn_00403183) db 0
    %%insn_00403189:
    mov [ecx+eax],dl ; 00403189 881401
    %if ($ - %%insn_00403189) > 3
        %error "LONG_00403189"
    %endif
    times 3 - ($ - %%insn_00403189) db 0
    %%insn_0040318c:
    jmp 0x4041db ; 0040318C E94A100000
    %if ($ - %%insn_0040318c) > 5
        %error "LONG_0040318C"
    %endif
    times 5 - ($ - %%insn_0040318c) db 0
    %%insn_00403191:
    mov dx,[ebp-0x124] ; 00403191 668B95DCFEFFFF
    %if ($ - %%insn_00403191) > 7
        %error "LONG_00403191"
    %endif
    times 7 - ($ - %%insn_00403191) db 0
    %%insn_00403198:
    push edx ; 00403198 52
    %if ($ - %%insn_00403198) > 1
        %error "LONG_00403198"
    %endif
    times 1 - ($ - %%insn_00403198) db 0
    %%insn_00403199:
    call 0x40179b ; 00403199 E8FDE5FFFF
    %if ($ - %%insn_00403199) > 5
        %error "LONG_00403199"
    %endif
    times 5 - ($ - %%insn_00403199) db 0
    %%insn_0040319e:
    add esp,0x4 ; 0040319E 83C404
    %if ($ - %%insn_0040319e) > 3
        %error "LONG_0040319E"
    %endif
    times 3 - ($ - %%insn_0040319e) db 0
    %%insn_004031a1:
    movzx ax,al ; 004031A1 660FB6C0
    %if ($ - %%insn_004031a1) > 4
        %error "LONG_004031A1"
    %endif
    times 4 - ($ - %%insn_004031a1) db 0
    %%insn_004031a5:
    mov [ebp-0x12c],ax ; 004031A5 668985D4FEFFFF
    %if ($ - %%insn_004031a5) > 7
        %error "LONG_004031A5"
    %endif
    times 7 - ($ - %%insn_004031a5) db 0
    %%insn_004031ac:
    mov ecx,[ebp-0x12c] ; 004031AC 8B8DD4FEFFFF
    %if ($ - %%insn_004031ac) > 6
        %error "LONG_004031AC"
    %endif
    times 6 - ($ - %%insn_004031ac) db 0
    %%insn_004031b2:
    and ecx,0xffff ; 004031B2 81E1FFFF0000
    %if ($ - %%insn_004031b2) > 6
        %error "LONG_004031B2"
    %endif
    times 6 - ($ - %%insn_004031b2) db 0
    %%insn_004031b8:
    cmp ecx,0x9 ; 004031B8 83F909
    %if ($ - %%insn_004031b8) > 3
        %error "LONG_004031B8"
    %endif
    times 3 - ($ - %%insn_004031b8) db 0
    %%insn_004031bb:
    jng short 0x4031cf ; 004031BB 7E12
    %if ($ - %%insn_004031bb) > 2
        %error "LONG_004031BB"
    %endif
    times 2 - ($ - %%insn_004031bb) db 0
    %%insn_004031bd:
    mov dx,[ebp-0x12c] ; 004031BD 668B95D4FEFFFF
    %if ($ - %%insn_004031bd) > 7
        %error "LONG_004031BD"
    %endif
    times 7 - ($ - %%insn_004031bd) db 0
    %%insn_004031c4:
    sub dx,0x7 ; 004031C4 6683EA07
    %if ($ - %%insn_004031c4) > 4
        %error "LONG_004031C4"
    %endif
    times 4 - ($ - %%insn_004031c4) db 0
    %%insn_004031c8:
    mov [ebp-0x12c],dx ; 004031C8 668995D4FEFFFF
    %if ($ - %%insn_004031c8) > 7
        %error "LONG_004031C8"
    %endif
    times 7 - ($ - %%insn_004031c8) db 0
    %%insn_004031cf:
    mov eax,[ebp-0x12c] ; 004031CF 8B85D4FEFFFF
    %if ($ - %%insn_004031cf) > 6
        %error "LONG_004031CF"
    %endif
    times 6 - ($ - %%insn_004031cf) db 0
    %%insn_004031d5:
    and eax,0xffff ; 004031D5 25FFFF0000
    %if ($ - %%insn_004031d5) > 5
        %error "LONG_004031D5"
    %endif
    times 5 - ($ - %%insn_004031d5) db 0
    %%insn_004031da:
    mov ecx,[0x41f2b8] ; 004031DA 8B0DB8F24100
    %if ($ - %%insn_004031da) > 6
        %error "LONG_004031DA"
    %endif
    times 6 - ($ - %%insn_004031da) db 0
    %%insn_004031e0:
    movzx dx,byte [ecx+eax+0x19] ; 004031E0 660FB6540119
    %if ($ - %%insn_004031e0) > 6
        %error "LONG_004031E0"
    %endif
    times 6 - ($ - %%insn_004031e0) db 0
    %%insn_004031e6:
    mov [ebp-0x12c],dx ; 004031E6 668995D4FEFFFF
    %if ($ - %%insn_004031e6) > 7
        %error "LONG_004031E6"
    %endif
    times 7 - ($ - %%insn_004031e6) db 0
    %%insn_004031ed:
    mov word [ebp-0x120],0x1 ; 004031ED 66C785E0FEFFFF0100
    %if ($ - %%insn_004031ed) > 9
        %error "LONG_004031ED"
    %endif
    times 9 - ($ - %%insn_004031ed) db 0
    %%insn_004031f6:
    mov eax,[ebp-0x12c] ; 004031F6 8B85D4FEFFFF
    %if ($ - %%insn_004031f6) > 6
        %error "LONG_004031F6"
    %endif
    times 6 - ($ - %%insn_004031f6) db 0
    %%insn_004031fc:
    and eax,0xffff ; 004031FC 25FFFF0000
    %if ($ - %%insn_004031fc) > 5
        %error "LONG_004031FC"
    %endif
    times 5 - ($ - %%insn_004031fc) db 0
    %%insn_00403201:
    mov ecx,[0x41f2b8] ; 00403201 8B0DB8F24100
    %if ($ - %%insn_00403201) > 6
        %error "LONG_00403201"
    %endif
    times 6 - ($ - %%insn_00403201) db 0
    db 0x33, 0xD2 ; 00403207 33D2 | xor edx,edx | encoding preserved
    %%insn_00403209:
    mov dl,[ecx+eax] ; 00403209 8A1401
    %if ($ - %%insn_00403209) > 3
        %error "LONG_00403209"
    %endif
    times 3 - ($ - %%insn_00403209) db 0
    db 0x8B, 0xF2 ; 0040320C 8BF2 | mov esi,edx | encoding preserved
    %%insn_0040320e:
    call 0x4015e6 ; 0040320E E8D3E3FFFF
    %if ($ - %%insn_0040320e) > 5
        %error "LONG_0040320E"
    %endif
    times 5 - ($ - %%insn_0040320e) db 0
    %%insn_00403213:
    and eax,0xff ; 00403213 25FF000000
    %if ($ - %%insn_00403213) > 5
        %error "LONG_00403213"
    %endif
    times 5 - ($ - %%insn_00403213) db 0
    %%insn_00403218:
    mov cx,[ebp-0x12c] ; 00403218 668B8DD4FEFFFF
    %if ($ - %%insn_00403218) > 7
        %error "LONG_00403218"
    %endif
    times 7 - ($ - %%insn_00403218) db 0
    %%insn_0040321f:
    add cx,0x1 ; 0040321F 6683C101
    %if ($ - %%insn_0040321f) > 4
        %error "LONG_0040321F"
    %endif
    times 4 - ($ - %%insn_0040321f) db 0
    %%insn_00403223:
    mov [ebp-0x12c],cx ; 00403223 66898DD4FEFFFF
    %if ($ - %%insn_00403223) > 7
        %error "LONG_00403223"
    %endif
    times 7 - ($ - %%insn_00403223) db 0
    db 0x3B, 0xF0 ; 0040322A 3BF0 | cmp esi,eax | encoding preserved
    %%insn_0040322c:
    jz short 0x403237 ; 0040322C 7409
    %if ($ - %%insn_0040322c) > 2
        %error "LONG_0040322C"
    %endif
    times 2 - ($ - %%insn_0040322c) db 0
    %%insn_0040322e:
    mov word [ebp-0x120],0x0 ; 0040322E 66C785E0FEFFFF0000
    %if ($ - %%insn_0040322e) > 9
        %error "LONG_0040322E"
    %endif
    times 9 - ($ - %%insn_0040322e) db 0
    %%insn_00403237:
    mov edx,[0x41f284] ; 00403237 8B1584F24100
    %if ($ - %%insn_00403237) > 6
        %error "LONG_00403237"
    %endif
    times 6 - ($ - %%insn_00403237) db 0
    %%insn_0040323d:
    add edx,[0x41f300] ; 0040323D 031500F34100
    %if ($ - %%insn_0040323d) > 6
        %error "LONG_0040323D"
    %endif
    times 6 - ($ - %%insn_0040323d) db 0
    db 0x33, 0xC0 ; 00403243 33C0 | xor eax,eax | encoding preserved
    %%insn_00403245:
    mov al,[edx-0x1] ; 00403245 8A42FF
    %if ($ - %%insn_00403245) > 3
        %error "LONG_00403245"
    %endif
    times 3 - ($ - %%insn_00403245) db 0
    %%insn_00403248:
    and eax,0x80 ; 00403248 2580000000
    %if ($ - %%insn_00403248) > 5
        %error "LONG_00403248"
    %endif
    times 5 - ($ - %%insn_00403248) db 0
    %%insn_0040324d:
    test eax,eax ; 0040324D 85C0
    %if ($ - %%insn_0040324d) > 2
        %error "LONG_0040324D"
    %endif
    times 2 - ($ - %%insn_0040324d) db 0
    %%insn_0040324f:
    jz short 0x4031f6 ; 0040324F 74A5
    %if ($ - %%insn_0040324f) > 2
        %error "LONG_0040324F"
    %endif
    times 2 - ($ - %%insn_0040324f) db 0
    %%insn_00403251:
    call 0x401473 ; 00403251 E81DE2FFFF
    %if ($ - %%insn_00403251) > 5
        %error "LONG_00403251"
    %endif
    times 5 - ($ - %%insn_00403251) db 0
    %%insn_00403256:
    mov [ebp-0x18],ax ; 00403256 668945E8
    %if ($ - %%insn_00403256) > 4
        %error "LONG_00403256"
    %endif
    times 4 - ($ - %%insn_00403256) db 0
    %%insn_0040325a:
    mov ecx,[ebp-0x120] ; 0040325A 8B8DE0FEFFFF
    %if ($ - %%insn_0040325a) > 6
        %error "LONG_0040325A"
    %endif
    times 6 - ($ - %%insn_0040325a) db 0
    %%insn_00403260:
    and ecx,0xffff ; 00403260 81E1FFFF0000
    %if ($ - %%insn_00403260) > 6
        %error "LONG_00403260"
    %endif
    times 6 - ($ - %%insn_00403260) db 0
    %%insn_00403266:
    test ecx,ecx ; 00403266 85C9
    %if ($ - %%insn_00403266) > 2
        %error "LONG_00403266"
    %endif
    times 2 - ($ - %%insn_00403266) db 0
    %%insn_00403268:
    jnz short 0x403279 ; 00403268 750F
    %if ($ - %%insn_00403268) > 2
        %error "LONG_00403268"
    %endif
    times 2 - ($ - %%insn_00403268) db 0
    %%insn_0040326a:
    mov edx,[ebp-0x18] ; 0040326A 8B55E8
    %if ($ - %%insn_0040326a) > 3
        %error "LONG_0040326A"
    %endif
    times 3 - ($ - %%insn_0040326a) db 0
    %%insn_0040326d:
    and edx,0xffff ; 0040326D 81E2FFFF0000
    %if ($ - %%insn_0040326d) > 6
        %error "LONG_0040326D"
    %endif
    times 6 - ($ - %%insn_0040326d) db 0
    %%insn_00403273:
    mov [0x41f300],edx ; 00403273 891500F34100
    %if ($ - %%insn_00403273) > 6
        %error "LONG_00403273"
    %endif
    times 6 - ($ - %%insn_00403273) db 0
    %%insn_00403279:
    jmp 0x4041db ; 00403279 E95D0F0000
    %if ($ - %%insn_00403279) > 5
        %error "LONG_00403279"
    %endif
    times 5 - ($ - %%insn_00403279) db 0
    %%insn_0040327e:
    call 0x40a786 ; 0040327E E803750000
    %if ($ - %%insn_0040327e) > 5
        %error "LONG_0040327E"
    %endif
    times 5 - ($ - %%insn_0040327e) db 0
    %%insn_00403283:
    jmp 0x4041db ; 00403283 E9530F0000
    %if ($ - %%insn_00403283) > 5
        %error "LONG_00403283"
    %endif
    times 5 - ($ - %%insn_00403283) db 0
    %%insn_00403288:
    mov ax,[ebp-0x124] ; 00403288 668B85DCFEFFFF
    %if ($ - %%insn_00403288) > 7
        %error "LONG_00403288"
    %endif
    times 7 - ($ - %%insn_00403288) db 0
    %%insn_0040328f:
    push eax ; 0040328F 50
    %if ($ - %%insn_0040328f) > 1
        %error "LONG_0040328F"
    %endif
    times 1 - ($ - %%insn_0040328f) db 0
    %%insn_00403290:
    call 0x4017ee ; 00403290 E859E5FFFF
    %if ($ - %%insn_00403290) > 5
        %error "LONG_00403290"
    %endif
    times 5 - ($ - %%insn_00403290) db 0
    %%insn_00403295:
    add esp,0x4 ; 00403295 83C404
    %if ($ - %%insn_00403295) > 3
        %error "LONG_00403295"
    %endif
    times 3 - ($ - %%insn_00403295) db 0
    %%insn_00403298:
    mov [ebp-0x12c],ax ; 00403298 668985D4FEFFFF
    %if ($ - %%insn_00403298) > 7
        %error "LONG_00403298"
    %endif
    times 7 - ($ - %%insn_00403298) db 0
    %%insn_0040329f:
    mov word [ebp-0x120],0x1 ; 0040329F 66C785E0FEFFFF0100
    %if ($ - %%insn_0040329f) > 9
        %error "LONG_0040329F"
    %endif
    times 9 - ($ - %%insn_0040329f) db 0
    %%insn_004032a8:
    mov ecx,[ebp-0x12c] ; 004032A8 8B8DD4FEFFFF
    %if ($ - %%insn_004032a8) > 6
        %error "LONG_004032A8"
    %endif
    times 6 - ($ - %%insn_004032a8) db 0
    %%insn_004032ae:
    and ecx,0xffff ; 004032AE 81E1FFFF0000
    %if ($ - %%insn_004032ae) > 6
        %error "LONG_004032AE"
    %endif
    times 6 - ($ - %%insn_004032ae) db 0
    %%insn_004032b4:
    mov edx,[0x41f2b8] ; 004032B4 8B15B8F24100
    %if ($ - %%insn_004032b4) > 6
        %error "LONG_004032B4"
    %endif
    times 6 - ($ - %%insn_004032b4) db 0
    db 0x33, 0xC0 ; 004032BA 33C0 | xor eax,eax | encoding preserved
    %%insn_004032bc:
    mov al,[edx+ecx] ; 004032BC 8A040A
    %if ($ - %%insn_004032bc) > 3
        %error "LONG_004032BC"
    %endif
    times 3 - ($ - %%insn_004032bc) db 0
    db 0x8B, 0xF0 ; 004032BF 8BF0 | mov esi,eax | encoding preserved
    %%insn_004032c1:
    call 0x4015e6 ; 004032C1 E820E3FFFF
    %if ($ - %%insn_004032c1) > 5
        %error "LONG_004032C1"
    %endif
    times 5 - ($ - %%insn_004032c1) db 0
    %%insn_004032c6:
    and eax,0xff ; 004032C6 25FF000000
    %if ($ - %%insn_004032c6) > 5
        %error "LONG_004032C6"
    %endif
    times 5 - ($ - %%insn_004032c6) db 0
    %%insn_004032cb:
    mov cx,[ebp-0x12c] ; 004032CB 668B8DD4FEFFFF
    %if ($ - %%insn_004032cb) > 7
        %error "LONG_004032CB"
    %endif
    times 7 - ($ - %%insn_004032cb) db 0
    %%insn_004032d2:
    add cx,0x1 ; 004032D2 6683C101
    %if ($ - %%insn_004032d2) > 4
        %error "LONG_004032D2"
    %endif
    times 4 - ($ - %%insn_004032d2) db 0
    %%insn_004032d6:
    mov [ebp-0x12c],cx ; 004032D6 66898DD4FEFFFF
    %if ($ - %%insn_004032d6) > 7
        %error "LONG_004032D6"
    %endif
    times 7 - ($ - %%insn_004032d6) db 0
    db 0x3B, 0xF0 ; 004032DD 3BF0 | cmp esi,eax | encoding preserved
    %%insn_004032df:
    jz short 0x4032ea ; 004032DF 7409
    %if ($ - %%insn_004032df) > 2
        %error "LONG_004032DF"
    %endif
    times 2 - ($ - %%insn_004032df) db 0
    %%insn_004032e1:
    mov word [ebp-0x120],0x0 ; 004032E1 66C785E0FEFFFF0000
    %if ($ - %%insn_004032e1) > 9
        %error "LONG_004032E1"
    %endif
    times 9 - ($ - %%insn_004032e1) db 0
    %%insn_004032ea:
    mov edx,[0x41f284] ; 004032EA 8B1584F24100
    %if ($ - %%insn_004032ea) > 6
        %error "LONG_004032EA"
    %endif
    times 6 - ($ - %%insn_004032ea) db 0
    %%insn_004032f0:
    add edx,[0x41f300] ; 004032F0 031500F34100
    %if ($ - %%insn_004032f0) > 6
        %error "LONG_004032F0"
    %endif
    times 6 - ($ - %%insn_004032f0) db 0
    db 0x33, 0xC0 ; 004032F6 33C0 | xor eax,eax | encoding preserved
    %%insn_004032f8:
    mov al,[edx-0x1] ; 004032F8 8A42FF
    %if ($ - %%insn_004032f8) > 3
        %error "LONG_004032F8"
    %endif
    times 3 - ($ - %%insn_004032f8) db 0
    %%insn_004032fb:
    and eax,0x80 ; 004032FB 2580000000
    %if ($ - %%insn_004032fb) > 5
        %error "LONG_004032FB"
    %endif
    times 5 - ($ - %%insn_004032fb) db 0
    %%insn_00403300:
    test eax,eax ; 00403300 85C0
    %if ($ - %%insn_00403300) > 2
        %error "LONG_00403300"
    %endif
    times 2 - ($ - %%insn_00403300) db 0
    %%insn_00403302:
    jz short 0x4032a8 ; 00403302 74A4
    %if ($ - %%insn_00403302) > 2
        %error "LONG_00403302"
    %endif
    times 2 - ($ - %%insn_00403302) db 0
    %%insn_00403304:
    call 0x401473 ; 00403304 E86AE1FFFF
    %if ($ - %%insn_00403304) > 5
        %error "LONG_00403304"
    %endif
    times 5 - ($ - %%insn_00403304) db 0
    %%insn_00403309:
    mov [ebp-0x18],ax ; 00403309 668945E8
    %if ($ - %%insn_00403309) > 4
        %error "LONG_00403309"
    %endif
    times 4 - ($ - %%insn_00403309) db 0
    %%insn_0040330d:
    mov ecx,[ebp-0x120] ; 0040330D 8B8DE0FEFFFF
    %if ($ - %%insn_0040330d) > 6
        %error "LONG_0040330D"
    %endif
    times 6 - ($ - %%insn_0040330d) db 0
    %%insn_00403313:
    and ecx,0xffff ; 00403313 81E1FFFF0000
    %if ($ - %%insn_00403313) > 6
        %error "LONG_00403313"
    %endif
    times 6 - ($ - %%insn_00403313) db 0
    %%insn_00403319:
    cmp ecx,0x1 ; 00403319 83F901
    %if ($ - %%insn_00403319) > 3
        %error "LONG_00403319"
    %endif
    times 3 - ($ - %%insn_00403319) db 0
    %%insn_0040331c:
    jnz short 0x40332d ; 0040331C 750F
    %if ($ - %%insn_0040331c) > 2
        %error "LONG_0040331C"
    %endif
    times 2 - ($ - %%insn_0040331c) db 0
    %%insn_0040331e:
    mov edx,[ebp-0x18] ; 0040331E 8B55E8
    %if ($ - %%insn_0040331e) > 3
        %error "LONG_0040331E"
    %endif
    times 3 - ($ - %%insn_0040331e) db 0
    %%insn_00403321:
    and edx,0xffff ; 00403321 81E2FFFF0000
    %if ($ - %%insn_00403321) > 6
        %error "LONG_00403321"
    %endif
    times 6 - ($ - %%insn_00403321) db 0
    %%insn_00403327:
    mov [0x41f300],edx ; 00403327 891500F34100
    %if ($ - %%insn_00403327) > 6
        %error "LONG_00403327"
    %endif
    times 6 - ($ - %%insn_00403327) db 0
    %%insn_0040332d:
    jmp 0x4041db ; 0040332D E9A90E0000
    %if ($ - %%insn_0040332d) > 5
        %error "LONG_0040332D"
    %endif
    times 5 - ($ - %%insn_0040332d) db 0
    %%insn_00403332:
    mov ax,[ebp-0x124] ; 00403332 668B85DCFEFFFF
    %if ($ - %%insn_00403332) > 7
        %error "LONG_00403332"
    %endif
    times 7 - ($ - %%insn_00403332) db 0
    %%insn_00403339:
    push eax ; 00403339 50
    %if ($ - %%insn_00403339) > 1
        %error "LONG_00403339"
    %endif
    times 1 - ($ - %%insn_00403339) db 0
    %%insn_0040333a:
    call 0x4017ee ; 0040333A E8AFE4FFFF
    %if ($ - %%insn_0040333a) > 5
        %error "LONG_0040333A"
    %endif
    times 5 - ($ - %%insn_0040333a) db 0
    %%insn_0040333f:
    add esp,0x4 ; 0040333F 83C404
    %if ($ - %%insn_0040333f) > 3
        %error "LONG_0040333F"
    %endif
    times 3 - ($ - %%insn_0040333f) db 0
    %%insn_00403342:
    mov [ebp-0x12c],ax ; 00403342 668985D4FEFFFF
    %if ($ - %%insn_00403342) > 7
        %error "LONG_00403342"
    %endif
    times 7 - ($ - %%insn_00403342) db 0
    %%insn_00403349:
    call 0x401473 ; 00403349 E825E1FFFF
    %if ($ - %%insn_00403349) > 5
        %error "LONG_00403349"
    %endif
    times 5 - ($ - %%insn_00403349) db 0
    %%insn_0040334e:
    mov [ebp-0x18],ax ; 0040334E 668945E8
    %if ($ - %%insn_0040334e) > 4
        %error "LONG_0040334E"
    %endif
    times 4 - ($ - %%insn_0040334e) db 0
    %%insn_00403352:
    mov ecx,[ebp-0x18] ; 00403352 8B4DE8
    %if ($ - %%insn_00403352) > 3
        %error "LONG_00403352"
    %endif
    times 3 - ($ - %%insn_00403352) db 0
    %%insn_00403355:
    and ecx,0xffff ; 00403355 81E1FFFF0000
    %if ($ - %%insn_00403355) > 6
        %error "LONG_00403355"
    %endif
    times 6 - ($ - %%insn_00403355) db 0
    %%insn_0040335b:
    mov edx,[ebp-0x12c] ; 0040335B 8B95D4FEFFFF
    %if ($ - %%insn_0040335b) > 6
        %error "LONG_0040335B"
    %endif
    times 6 - ($ - %%insn_0040335b) db 0
    %%insn_00403361:
    and edx,0xffff ; 00403361 81E2FFFF0000
    %if ($ - %%insn_00403361) > 6
        %error "LONG_00403361"
    %endif
    times 6 - ($ - %%insn_00403361) db 0
    %%insn_00403367:
    mov eax,[0x41f2b8] ; 00403367 A1B8F24100
    %if ($ - %%insn_00403367) > 5
        %error "LONG_00403367"
    %endif
    times 5 - ($ - %%insn_00403367) db 0
    %%insn_0040336c:
    mov esi,[0x41f2b8] ; 0040336C 8B35B8F24100
    %if ($ - %%insn_0040336c) > 6
        %error "LONG_0040336C"
    %endif
    times 6 - ($ - %%insn_0040336c) db 0
    %%insn_00403372:
    mov cl,[esi+ecx] ; 00403372 8A0C0E
    %if ($ - %%insn_00403372) > 3
        %error "LONG_00403372"
    %endif
    times 3 - ($ - %%insn_00403372) db 0
    %%insn_00403375:
    mov [eax+edx],cl ; 00403375 880C10
    %if ($ - %%insn_00403375) > 3
        %error "LONG_00403375"
    %endif
    times 3 - ($ - %%insn_00403375) db 0
    %%insn_00403378:
    jmp 0x4041db ; 00403378 E95E0E0000
    %if ($ - %%insn_00403378) > 5
        %error "LONG_00403378"
    %endif
    times 5 - ($ - %%insn_00403378) db 0
    %%insn_0040337d:
    mov dx,[ebp-0x124] ; 0040337D 668B95DCFEFFFF
    %if ($ - %%insn_0040337d) > 7
        %error "LONG_0040337D"
    %endif
    times 7 - ($ - %%insn_0040337d) db 0
    %%insn_00403384:
    push edx ; 00403384 52
    %if ($ - %%insn_00403384) > 1
        %error "LONG_00403384"
    %endif
    times 1 - ($ - %%insn_00403384) db 0
    %%insn_00403385:
    call 0x4017ee ; 00403385 E864E4FFFF
    %if ($ - %%insn_00403385) > 5
        %error "LONG_00403385"
    %endif
    times 5 - ($ - %%insn_00403385) db 0
    %%insn_0040338a:
    add esp,0x4 ; 0040338A 83C404
    %if ($ - %%insn_0040338a) > 3
        %error "LONG_0040338A"
    %endif
    times 3 - ($ - %%insn_0040338a) db 0
    %%insn_0040338d:
    mov [ebp-0x12c],ax ; 0040338D 668985D4FEFFFF
    %if ($ - %%insn_0040338d) > 7
        %error "LONG_0040338D"
    %endif
    times 7 - ($ - %%insn_0040338d) db 0
    %%insn_00403394:
    call 0x401473 ; 00403394 E8DAE0FFFF
    %if ($ - %%insn_00403394) > 5
        %error "LONG_00403394"
    %endif
    times 5 - ($ - %%insn_00403394) db 0
    %%insn_00403399:
    mov [ebp-0x18],ax ; 00403399 668945E8
    %if ($ - %%insn_00403399) > 4
        %error "LONG_00403399"
    %endif
    times 4 - ($ - %%insn_00403399) db 0
    %%insn_0040339d:
    mov eax,[ebp-0x12c] ; 0040339D 8B85D4FEFFFF
    %if ($ - %%insn_0040339d) > 6
        %error "LONG_0040339D"
    %endif
    times 6 - ($ - %%insn_0040339d) db 0
    %%insn_004033a3:
    and eax,0xffff ; 004033A3 25FFFF0000
    %if ($ - %%insn_004033a3) > 5
        %error "LONG_004033A3"
    %endif
    times 5 - ($ - %%insn_004033a3) db 0
    %%insn_004033a8:
    mov ecx,[ebp-0x18] ; 004033A8 8B4DE8
    %if ($ - %%insn_004033a8) > 3
        %error "LONG_004033A8"
    %endif
    times 3 - ($ - %%insn_004033a8) db 0
    %%insn_004033ab:
    and ecx,0xffff ; 004033AB 81E1FFFF0000
    %if ($ - %%insn_004033ab) > 6
        %error "LONG_004033AB"
    %endif
    times 6 - ($ - %%insn_004033ab) db 0
    %%insn_004033b1:
    mov edx,[0x41f2b8] ; 004033B1 8B15B8F24100
    %if ($ - %%insn_004033b1) > 6
        %error "LONG_004033B1"
    %endif
    times 6 - ($ - %%insn_004033b1) db 0
    %%insn_004033b7:
    mov esi,[0x41f2b8] ; 004033B7 8B35B8F24100
    %if ($ - %%insn_004033b7) > 6
        %error "LONG_004033B7"
    %endif
    times 6 - ($ - %%insn_004033b7) db 0
    %%insn_004033bd:
    mov al,[edx+eax] ; 004033BD 8A0402
    %if ($ - %%insn_004033bd) > 3
        %error "LONG_004033BD"
    %endif
    times 3 - ($ - %%insn_004033bd) db 0
    %%insn_004033c0:
    add al,[esi+ecx] ; 004033C0 02040E
    %if ($ - %%insn_004033c0) > 3
        %error "LONG_004033C0"
    %endif
    times 3 - ($ - %%insn_004033c0) db 0
    %%insn_004033c3:
    mov ecx,[ebp-0x12c] ; 004033C3 8B8DD4FEFFFF
    %if ($ - %%insn_004033c3) > 6
        %error "LONG_004033C3"
    %endif
    times 6 - ($ - %%insn_004033c3) db 0
    %%insn_004033c9:
    and ecx,0xffff ; 004033C9 81E1FFFF0000
    %if ($ - %%insn_004033c9) > 6
        %error "LONG_004033C9"
    %endif
    times 6 - ($ - %%insn_004033c9) db 0
    %%insn_004033cf:
    mov edx,[0x41f2b8] ; 004033CF 8B15B8F24100
    %if ($ - %%insn_004033cf) > 6
        %error "LONG_004033CF"
    %endif
    times 6 - ($ - %%insn_004033cf) db 0
    %%insn_004033d5:
    mov [edx+ecx],al ; 004033D5 88040A
    %if ($ - %%insn_004033d5) > 3
        %error "LONG_004033D5"
    %endif
    times 3 - ($ - %%insn_004033d5) db 0
    %%insn_004033d8:
    jmp 0x4041db ; 004033D8 E9FE0D0000
    %if ($ - %%insn_004033d8) > 5
        %error "LONG_004033D8"
    %endif
    times 5 - ($ - %%insn_004033d8) db 0
    %%insn_004033dd:
    call end_active_midi_sequence ; 004033DD E84A3D0000
    %if ($ - %%insn_004033dd) > 5
        %error "LONG_004033DD"
    %endif
    times 5 - ($ - %%insn_004033dd) db 0
    %%insn_004033e2:
    jmp 0x4041db ; 004033E2 E9F40D0000
    %if ($ - %%insn_004033e2) > 5
        %error "LONG_004033E2"
    %endif
    times 5 - ($ - %%insn_004033e2) db 0
    %%insn_004033e7:
    cmp dword [0x41f2f8],0x0 ; 004033E7 833DF8F2410000
    %if ($ - %%insn_004033e7) > 7
        %error "LONG_004033E7"
    %endif
    times 7 - ($ - %%insn_004033e7) db 0
    %%insn_004033ee:
    jz short 0x403408 ; 004033EE 7418
    %if ($ - %%insn_004033ee) > 2
        %error "LONG_004033EE"
    %endif
    times 2 - ($ - %%insn_004033ee) db 0
    %%insn_004033f0:
    push dword 0x0 ; 004033F0 6A00
    %if ($ - %%insn_004033f0) > 2
        %error "LONG_004033F0"
    %endif
    times 2 - ($ - %%insn_004033f0) db 0
    %%insn_004033f2:
    mov eax,[0x41f2f8] ; 004033F2 A1F8F24100
    %if ($ - %%insn_004033f2) > 5
        %error "LONG_004033F2"
    %endif
    times 5 - ($ - %%insn_004033f2) db 0
    %%insn_004033f7:
    push eax ; 004033F7 50
    %if ($ - %%insn_004033f7) > 1
        %error "LONG_004033F7"
    %endif
    times 1 - ($ - %%insn_004033f7) db 0
    %%insn_004033f8:
    call dword near [0x424590] ; 004033F8 FF1590454200
    %if ($ - %%insn_004033f8) > 6
        %error "LONG_004033F8"
    %endif
    times 6 - ($ - %%insn_004033f8) db 0
    %%insn_004033fe:
    mov dword [0x41f2f8],0x0 ; 004033FE C705F8F2410000000000
    %if ($ - %%insn_004033fe) > 10
        %error "LONG_004033FE"
    %endif
    times 10 - ($ - %%insn_004033fe) db 0
    %%insn_00403408:
    cmp dword [0x41f2d4],0x0 ; 00403408 833DD4F2410000
    %if ($ - %%insn_00403408) > 7
        %error "LONG_00403408"
    %endif
    times 7 - ($ - %%insn_00403408) db 0
    %%insn_0040340f:
    jz short 0x40342a ; 0040340F 7419
    %if ($ - %%insn_0040340f) > 2
        %error "LONG_0040340F"
    %endif
    times 2 - ($ - %%insn_0040340f) db 0
    %%insn_00403411:
    push dword 0x0 ; 00403411 6A00
    %if ($ - %%insn_00403411) > 2
        %error "LONG_00403411"
    %endif
    times 2 - ($ - %%insn_00403411) db 0
    %%insn_00403413:
    mov ecx,[0x41f2d4] ; 00403413 8B0DD4F24100
    %if ($ - %%insn_00403413) > 6
        %error "LONG_00403413"
    %endif
    times 6 - ($ - %%insn_00403413) db 0
    %%insn_00403419:
    push ecx ; 00403419 51
    %if ($ - %%insn_00403419) > 1
        %error "LONG_00403419"
    %endif
    times 1 - ($ - %%insn_00403419) db 0
    %%insn_0040341a:
    call dword near [0x424590] ; 0040341A FF1590454200
    %if ($ - %%insn_0040341a) > 6
        %error "LONG_0040341A"
    %endif
    times 6 - ($ - %%insn_0040341a) db 0
    %%insn_00403420:
    mov dword [0x41f2d4],0x0 ; 00403420 C705D4F2410000000000
    %if ($ - %%insn_00403420) > 10
        %error "LONG_00403420"
    %endif
    times 10 - ($ - %%insn_00403420) db 0
    %%insn_0040342a:
    mov dword [0x41f2e8],0xffffffff ; 0040342A C705E8F24100FFFFFFFF
    %if ($ - %%insn_0040342a) > 10
        %error "LONG_0040342A"
    %endif
    times 10 - ($ - %%insn_0040342a) db 0
    %%insn_00403434:
    mov dword [0x41f2b0],0xffffffff ; 00403434 C705B0F24100FFFFFFFF
    %if ($ - %%insn_00403434) > 10
        %error "LONG_00403434"
    %endif
    times 10 - ($ - %%insn_00403434) db 0
    %%insn_0040343e:
    mov dword [0x41f300],0x0 ; 0040343E C70500F3410000000000
    %if ($ - %%insn_0040343e) > 10
        %error "LONG_0040343E"
    %endif
    times 10 - ($ - %%insn_0040343e) db 0
    %%insn_00403448:
    mov dword [0x41f2e0],0x0 ; 00403448 C705E0F2410000000000
    %if ($ - %%insn_00403448) > 10
        %error "LONG_00403448"
    %endif
    times 10 - ($ - %%insn_00403448) db 0
    %%insn_00403452:
    mov dword [0x41f2dc],0x0 ; 00403452 C705DCF2410000000000
    %if ($ - %%insn_00403452) > 10
        %error "LONG_00403452"
    %endif
    times 10 - ($ - %%insn_00403452) db 0
    %%insn_0040345c:
    mov dword [0x41f2f0],0x0 ; 0040345C C705F0F2410000000000
    %if ($ - %%insn_0040345c) > 10
        %error "LONG_0040345C"
    %endif
    times 10 - ($ - %%insn_0040345c) db 0
    %%insn_00403466:
    mov dword [0x41f29c],0x0 ; 00403466 C7059CF2410000000000
    %if ($ - %%insn_00403466) > 10
        %error "LONG_00403466"
    %endif
    times 10 - ($ - %%insn_00403466) db 0
    %%insn_00403470:
    mov dword [0x41f2a0],0x0 ; 00403470 C705A0F2410000000000
    %if ($ - %%insn_00403470) > 10
        %error "LONG_00403470"
    %endif
    times 10 - ($ - %%insn_00403470) db 0
    %%insn_0040347a:
    mov dword [0x41f2cc],0x0 ; 0040347A C705CCF2410000000000
    %if ($ - %%insn_0040347a) > 10
        %error "LONG_0040347A"
    %endif
    times 10 - ($ - %%insn_0040347a) db 0
    %%insn_00403484:
    mov dword [0x41f2e4],0x0 ; 00403484 C705E4F2410000000000
    %if ($ - %%insn_00403484) > 10
        %error "LONG_00403484"
    %endif
    times 10 - ($ - %%insn_00403484) db 0
    %%insn_0040348e:
    mov dword [0x41f324],0x0 ; 0040348E C70524F3410000000000
    %if ($ - %%insn_0040348e) > 10
        %error "LONG_0040348E"
    %endif
    times 10 - ($ - %%insn_0040348e) db 0
    %%insn_00403498:
    push dword 0x1 ; 00403498 6A01
    %if ($ - %%insn_00403498) > 2
        %error "LONG_00403498"
    %endif
    times 2 - ($ - %%insn_00403498) db 0
    %%insn_0040349a:
    push dword 0xffffffffffffffff ; 0040349A 6AFF
    %if ($ - %%insn_0040349a) > 2
        %error "LONG_0040349A"
    %endif
    times 2 - ($ - %%insn_0040349a) db 0
    %%insn_0040349c:
    call 0x409691 ; 0040349C E8F0610000
    %if ($ - %%insn_0040349c) > 5
        %error "LONG_0040349C"
    %endif
    times 5 - ($ - %%insn_0040349c) db 0
    %%insn_004034a1:
    add esp,0x8 ; 004034A1 83C408
    %if ($ - %%insn_004034a1) > 3
        %error "LONG_004034A1"
    %endif
    times 3 - ($ - %%insn_004034a1) db 0
    %%insn_004034a4:
    jmp 0x4041db ; 004034A4 E9320D0000
    %if ($ - %%insn_004034a4) > 5
        %error "LONG_004034A4"
    %endif
    times 5 - ($ - %%insn_004034a4) db 0
    %%insn_004034a9:
    call 0x401473 ; 004034A9 E8C5DFFFFF
    %if ($ - %%insn_004034a9) > 5
        %error "LONG_004034A9"
    %endif
    times 5 - ($ - %%insn_004034a9) db 0
    %%insn_004034ae:
    and eax,0xffff ; 004034AE 25FFFF0000
    %if ($ - %%insn_004034ae) > 5
        %error "LONG_004034AE"
    %endif
    times 5 - ($ - %%insn_004034ae) db 0
    %%insn_004034b3:
    mov [0x41f2e0],eax ; 004034B3 A3E0F24100
    %if ($ - %%insn_004034b3) > 5
        %error "LONG_004034B3"
    %endif
    times 5 - ($ - %%insn_004034b3) db 0
    %%insn_004034b8:
    call 0x401449 ; 004034B8 E88CDFFFFF
    %if ($ - %%insn_004034b8) > 5
        %error "LONG_004034B8"
    %endif
    times 5 - ($ - %%insn_004034b8) db 0
    %%insn_004034bd:
    and eax,0xff ; 004034BD 25FF000000
    %if ($ - %%insn_004034bd) > 5
        %error "LONG_004034BD"
    %endif
    times 5 - ($ - %%insn_004034bd) db 0
    %%insn_004034c2:
    mov [0x41f2dc],eax ; 004034C2 A3DCF24100
    %if ($ - %%insn_004034c2) > 5
        %error "LONG_004034C2"
    %endif
    times 5 - ($ - %%insn_004034c2) db 0
    %%insn_004034c7:
    jmp 0x4041db ; 004034C7 E90F0D0000
    %if ($ - %%insn_004034c7) > 5
        %error "LONG_004034C7"
    %endif
    times 5 - ($ - %%insn_004034c7) db 0
    %%insn_004034cc:
    call 0x401473 ; 004034CC E8A2DFFFFF
    %if ($ - %%insn_004034cc) > 5
        %error "LONG_004034CC"
    %endif
    times 5 - ($ - %%insn_004034cc) db 0
    %%insn_004034d1:
    and eax,0xffff ; 004034D1 25FFFF0000
    %if ($ - %%insn_004034d1) > 5
        %error "LONG_004034D1"
    %endif
    times 5 - ($ - %%insn_004034d1) db 0
    %%insn_004034d6:
    mov [0x41f2f0],eax ; 004034D6 A3F0F24100
    %if ($ - %%insn_004034d6) > 5
        %error "LONG_004034D6"
    %endif
    times 5 - ($ - %%insn_004034d6) db 0
    %%insn_004034db:
    call 0x401449 ; 004034DB E869DFFFFF
    %if ($ - %%insn_004034db) > 5
        %error "LONG_004034DB"
    %endif
    times 5 - ($ - %%insn_004034db) db 0
    %%insn_004034e0:
    and eax,0xff ; 004034E0 25FF000000
    %if ($ - %%insn_004034e0) > 5
        %error "LONG_004034E0"
    %endif
    times 5 - ($ - %%insn_004034e0) db 0
    %%insn_004034e5:
    mov [0x41f29c],eax ; 004034E5 A39CF24100
    %if ($ - %%insn_004034e5) > 5
        %error "LONG_004034E5"
    %endif
    times 5 - ($ - %%insn_004034e5) db 0
    %%insn_004034ea:
    jmp 0x4041db ; 004034EA E9EC0C0000
    %if ($ - %%insn_004034ea) > 5
        %error "LONG_004034EA"
    %endif
    times 5 - ($ - %%insn_004034ea) db 0
; Opcode 2Eh: decode the slot-variable operand, fetch its byte value from the
; GRV bank, and load that st7g.N file through grv_load_game.
grv_opcode_load_game:
    %%insn_004034ef:
    mov dx,[ebp-0x124] ; 004034EF 668B95DCFEFFFF
    %if ($ - %%insn_004034ef) > 7
        %error "LONG_004034EF"
    %endif
    times 7 - ($ - %%insn_004034ef) db 0
    %%insn_004034f6:
    push edx ; 004034F6 52
    %if ($ - %%insn_004034f6) > 1
        %error "LONG_004034F6"
    %endif
    times 1 - ($ - %%insn_004034f6) db 0
    %%insn_004034f7:
    call 0x4017ee ; 004034F7 E8F2E2FFFF
    %if ($ - %%insn_004034f7) > 5
        %error "LONG_004034F7"
    %endif
    times 5 - ($ - %%insn_004034f7) db 0
    %%insn_004034fc:
    add esp,0x4 ; 004034FC 83C404
    %if ($ - %%insn_004034fc) > 3
        %error "LONG_004034FC"
    %endif
    times 3 - ($ - %%insn_004034fc) db 0
    %%insn_004034ff:
    mov [ebp-0x18],ax ; 004034FF 668945E8
    %if ($ - %%insn_004034ff) > 4
        %error "LONG_004034FF"
    %endif
    times 4 - ($ - %%insn_004034ff) db 0
    %%insn_00403503:
    mov eax,[ebp-0x18] ; 00403503 8B45E8
    %if ($ - %%insn_00403503) > 3
        %error "LONG_00403503"
    %endif
    times 3 - ($ - %%insn_00403503) db 0
    %%insn_00403506:
    and eax,0xffff ; 00403506 25FFFF0000
    %if ($ - %%insn_00403506) > 5
        %error "LONG_00403506"
    %endif
    times 5 - ($ - %%insn_00403506) db 0
    %%insn_0040350b:
    mov ecx,[0x41f2b8] ; 0040350B 8B0DB8F24100
    %if ($ - %%insn_0040350b) > 6
        %error "LONG_0040350B"
    %endif
    times 6 - ($ - %%insn_0040350b) db 0
    db 0x33, 0xD2 ; 00403511 33D2 | xor edx,edx | encoding preserved
    %%insn_00403513:
    mov dl,[ecx+eax] ; 00403513 8A1401
    %if ($ - %%insn_00403513) > 3
        %error "LONG_00403513"
    %endif
    times 3 - ($ - %%insn_00403513) db 0
    %%insn_00403516:
    push edx ; 00403516 52
    %if ($ - %%insn_00403516) > 1
        %error "LONG_00403516"
    %endif
    times 1 - ($ - %%insn_00403516) db 0
    %%insn_00403517:
    call grv_save_game ; 00403517 E8CBEBFFFF
    %if ($ - %%insn_00403517) > 5
        %error "LONG_00403517"
    %endif
    times 5 - ($ - %%insn_00403517) db 0
    %%insn_0040351c:
    add esp,0x4 ; 0040351C 83C404
    %if ($ - %%insn_0040351c) > 3
        %error "LONG_0040351C"
    %endif
    times 3 - ($ - %%insn_0040351c) db 0
    %%insn_0040351f:
    jmp 0x4041db ; 0040351F E9B70C0000
    %if ($ - %%insn_0040351f) > 5
        %error "LONG_0040351F"
    %endif
    times 5 - ($ - %%insn_0040351f) db 0
; Opcode 2Fh: decode the slot-variable operand, fetch its byte value from the
; GRV bank, and write that st7g.N file through grv_save_game.  Trace
; 20260809-195435 reached this entry from SCRIPT.GRV PC 2156 with v[019]=1.
grv_opcode_save_game:
    %%insn_00403524:
    mov ax,[ebp-0x124] ; 00403524 668B85DCFEFFFF
    %if ($ - %%insn_00403524) > 7
        %error "LONG_00403524"
    %endif
    times 7 - ($ - %%insn_00403524) db 0
    %%insn_0040352b:
    push eax ; 0040352B 50
    %if ($ - %%insn_0040352b) > 1
        %error "LONG_0040352B"
    %endif
    times 1 - ($ - %%insn_0040352b) db 0
    %%insn_0040352c:
    call 0x4017ee ; 0040352C E8BDE2FFFF
    %if ($ - %%insn_0040352c) > 5
        %error "LONG_0040352C"
    %endif
    times 5 - ($ - %%insn_0040352c) db 0
    %%insn_00403531:
    add esp,0x4 ; 00403531 83C404
    %if ($ - %%insn_00403531) > 3
        %error "LONG_00403531"
    %endif
    times 3 - ($ - %%insn_00403531) db 0
    %%insn_00403534:
    mov [ebp-0x18],ax ; 00403534 668945E8
    %if ($ - %%insn_00403534) > 4
        %error "LONG_00403534"
    %endif
    times 4 - ($ - %%insn_00403534) db 0
    %%insn_00403538:
    mov ecx,[ebp-0x18] ; 00403538 8B4DE8
    %if ($ - %%insn_00403538) > 3
        %error "LONG_00403538"
    %endif
    times 3 - ($ - %%insn_00403538) db 0
    %%insn_0040353b:
    and ecx,0xffff ; 0040353B 81E1FFFF0000
    %if ($ - %%insn_0040353b) > 6
        %error "LONG_0040353B"
    %endif
    times 6 - ($ - %%insn_0040353b) db 0
    %%insn_00403541:
    mov edx,[0x41f2b8] ; 00403541 8B15B8F24100
    %if ($ - %%insn_00403541) > 6
        %error "LONG_00403541"
    %endif
    times 6 - ($ - %%insn_00403541) db 0
    db 0x33, 0xC0 ; 00403547 33C0 | xor eax,eax | encoding preserved
    %%insn_00403549:
    mov al,[edx+ecx] ; 00403549 8A040A
    %if ($ - %%insn_00403549) > 3
        %error "LONG_00403549"
    %endif
    times 3 - ($ - %%insn_00403549) db 0
    %%insn_0040354c:
    push eax ; 0040354C 50
    %if ($ - %%insn_0040354c) > 1
        %error "LONG_0040354C"
    %endif
    times 1 - ($ - %%insn_0040354c) db 0
    %%insn_0040354d:
    call grv_load_game ; 0040354D E815EBFFFF
    %if ($ - %%insn_0040354d) > 5
        %error "LONG_0040354D"
    %endif
    times 5 - ($ - %%insn_0040354d) db 0
    %%insn_00403552:
    add esp,0x4 ; 00403552 83C404
    %if ($ - %%insn_00403552) > 3
        %error "LONG_00403552"
    %endif
    times 3 - ($ - %%insn_00403552) db 0
    %%insn_00403555:
    jmp 0x4041db ; 00403555 E9810C0000
    %if ($ - %%insn_00403555) > 5
        %error "LONG_00403555"
    %endif
    times 5 - ($ - %%insn_00403555) db 0
    %%insn_0040355a:
    call 0x401473 ; 0040355A E814DFFFFF
    %if ($ - %%insn_0040355a) > 5
        %error "LONG_0040355A"
    %endif
    times 5 - ($ - %%insn_0040355a) db 0
    %%insn_0040355f:
    and eax,0xffff ; 0040355F 25FFFF0000
    %if ($ - %%insn_0040355f) > 5
        %error "LONG_0040355F"
    %endif
    times 5 - ($ - %%insn_0040355f) db 0
    %%insn_00403564:
    mov [ebp-0xc],eax ; 00403564 8945F4
    %if ($ - %%insn_00403564) > 3
        %error "LONG_00403564"
    %endif
    times 3 - ($ - %%insn_00403564) db 0
    %%insn_00403567:
    call 0x401473 ; 00403567 E807DFFFFF
    %if ($ - %%insn_00403567) > 5
        %error "LONG_00403567"
    %endif
    times 5 - ($ - %%insn_00403567) db 0
    %%insn_0040356c:
    and eax,0xffff ; 0040356C 25FFFF0000
    %if ($ - %%insn_0040356c) > 5
        %error "LONG_0040356C"
    %endif
    times 5 - ($ - %%insn_0040356c) db 0
    %%insn_00403571:
    mov [ebp-0x10],eax ; 00403571 8945F0
    %if ($ - %%insn_00403571) > 3
        %error "LONG_00403571"
    %endif
    times 3 - ($ - %%insn_00403571) db 0
    %%insn_00403574:
    cmp dword [ebp-0xc],0x0 ; 00403574 837DF400
    %if ($ - %%insn_00403574) > 4
        %error "LONG_00403574"
    %endif
    times 4 - ($ - %%insn_00403574) db 0
    %%insn_00403578:
    jz short 0x40358c ; 00403578 7412
    %if ($ - %%insn_00403578) > 2
        %error "LONG_00403578"
    %endif
    times 2 - ($ - %%insn_00403578) db 0
    %%insn_0040357a:
    mov ecx,[ebp-0x10] ; 0040357A 8B4DF0
    %if ($ - %%insn_0040357a) > 3
        %error "LONG_0040357A"
    %endif
    times 3 - ($ - %%insn_0040357a) db 0
    %%insn_0040357d:
    push ecx ; 0040357D 51
    %if ($ - %%insn_0040357d) > 1
        %error "LONG_0040357D"
    %endif
    times 1 - ($ - %%insn_0040357d) db 0
    %%insn_0040357e:
    mov edx,[ebp-0xc] ; 0040357E 8B55F4
    %if ($ - %%insn_0040357e) > 3
        %error "LONG_0040357E"
    %endif
    times 3 - ($ - %%insn_0040357e) db 0
    %%insn_00403581:
    push edx ; 00403581 52
    %if ($ - %%insn_00403581) > 1
        %error "LONG_00403581"
    %endif
    times 1 - ($ - %%insn_00403581) db 0
    %%insn_00403582:
    call 0x40716e ; 00403582 E8E73B0000
    %if ($ - %%insn_00403582) > 5
        %error "LONG_00403582"
    %endif
    times 5 - ($ - %%insn_00403582) db 0
    %%insn_00403587:
    add esp,0x8 ; 00403587 83C408
    %if ($ - %%insn_00403587) > 3
        %error "LONG_00403587"
    %endif
    times 3 - ($ - %%insn_00403587) db 0
    %%insn_0040358a:
    jmp short 0x403591 ; 0040358A EB05
    %if ($ - %%insn_0040358a) > 2
        %error "LONG_0040358A"
    %endif
    times 2 - ($ - %%insn_0040358a) db 0
    %%insn_0040358c:
    call end_active_midi_sequence ; 0040358C E89B3B0000
    %if ($ - %%insn_0040358c) > 5
        %error "LONG_0040358C"
    %endif
    times 5 - ($ - %%insn_0040358c) db 0
    %%insn_00403591:
    jmp 0x4041db ; 00403591 E9450C0000
    %if ($ - %%insn_00403591) > 5
        %error "LONG_00403591"
    %endif
    times 5 - ($ - %%insn_00403591) db 0
    %%insn_00403596:
    mov ax,[ebp-0x124] ; 00403596 668B85DCFEFFFF
    %if ($ - %%insn_00403596) > 7
        %error "LONG_00403596"
    %endif
    times 7 - ($ - %%insn_00403596) db 0
    %%insn_0040359d:
    push eax ; 0040359D 50
    %if ($ - %%insn_0040359d) > 1
        %error "LONG_0040359D"
    %endif
    times 1 - ($ - %%insn_0040359d) db 0
    %%insn_0040359e:
    call 0x4017ee ; 0040359E E84BE2FFFF
    %if ($ - %%insn_0040359e) > 5
        %error "LONG_0040359E"
    %endif
    times 5 - ($ - %%insn_0040359e) db 0
    %%insn_004035a3:
    add esp,0x4 ; 004035A3 83C404
    %if ($ - %%insn_004035a3) > 3
        %error "LONG_004035A3"
    %endif
    times 3 - ($ - %%insn_004035a3) db 0
    %%insn_004035a6:
    mov [ebp-0x12c],ax ; 004035A6 668985D4FEFFFF
    %if ($ - %%insn_004035a6) > 7
        %error "LONG_004035A6"
    %endif
    times 7 - ($ - %%insn_004035a6) db 0
    %%insn_004035ad:
    mov ecx,[ebp-0x12c] ; 004035AD 8B8DD4FEFFFF
    %if ($ - %%insn_004035ad) > 6
        %error "LONG_004035AD"
    %endif
    times 6 - ($ - %%insn_004035ad) db 0
    %%insn_004035b3:
    and ecx,0xffff ; 004035B3 81E1FFFF0000
    %if ($ - %%insn_004035b3) > 6
        %error "LONG_004035B3"
    %endif
    times 6 - ($ - %%insn_004035b3) db 0
    %%insn_004035b9:
    mov edx,[0x41f2b8] ; 004035B9 8B15B8F24100
    %if ($ - %%insn_004035b9) > 6
        %error "LONG_004035B9"
    %endif
    times 6 - ($ - %%insn_004035b9) db 0
    db 0x33, 0xC0 ; 004035BF 33C0 | xor eax,eax | encoding preserved
    %%insn_004035c1:
    mov al,[edx+ecx] ; 004035C1 8A040A
    %if ($ - %%insn_004035c1) > 3
        %error "LONG_004035C1"
    %endif
    times 3 - ($ - %%insn_004035c1) db 0
    %%insn_004035c4:
    sub eax,0x31 ; 004035C4 83E831
    %if ($ - %%insn_004035c4) > 3
        %error "LONG_004035C4"
    %endif
    times 3 - ($ - %%insn_004035c4) db 0
    %%insn_004035c7:
    mov [ebp-0x12c],ax ; 004035C7 668985D4FEFFFF
    %if ($ - %%insn_004035c7) > 7
        %error "LONG_004035C7"
    %endif
    times 7 - ($ - %%insn_004035c7) db 0
    %%insn_004035ce:
    mov ecx,[ebp-0x12c] ; 004035CE 8B8DD4FEFFFF
    %if ($ - %%insn_004035ce) > 6
        %error "LONG_004035CE"
    %endif
    times 6 - ($ - %%insn_004035ce) db 0
    %%insn_004035d4:
    and ecx,0xffff ; 004035D4 81E1FFFF0000
    %if ($ - %%insn_004035d4) > 6
        %error "LONG_004035D4"
    %endif
    times 6 - ($ - %%insn_004035d4) db 0
    %%insn_004035da:
    mov edx,[0x41f2b8] ; 004035DA 8B15B8F24100
    %if ($ - %%insn_004035da) > 6
        %error "LONG_004035DA"
    %endif
    times 6 - ($ - %%insn_004035da) db 0
    %%insn_004035e0:
    movzx ax,byte [edx+ecx] ; 004035E0 660FB6040A
    %if ($ - %%insn_004035e0) > 5
        %error "LONG_004035E0"
    %endif
    times 5 - ($ - %%insn_004035e0) db 0
    %%insn_004035e5:
    mov [ebp-0x12c],ax ; 004035E5 668985D4FEFFFF
    %if ($ - %%insn_004035e5) > 7
        %error "LONG_004035E5"
    %endif
    times 7 - ($ - %%insn_004035e5) db 0
    %%insn_004035ec:
    call 0x401473 ; 004035EC E882DEFFFF
    %if ($ - %%insn_004035ec) > 5
        %error "LONG_004035EC"
    %endif
    times 5 - ($ - %%insn_004035ec) db 0
    %%insn_004035f1:
    and eax,0xffff ; 004035F1 25FFFF0000
    %if ($ - %%insn_004035f1) > 5
        %error "LONG_004035F1"
    %endif
    times 5 - ($ - %%insn_004035f1) db 0
    %%insn_004035f6:
    mov ecx,[0x41f2b8] ; 004035F6 8B0DB8F24100
    %if ($ - %%insn_004035f6) > 6
        %error "LONG_004035F6"
    %endif
    times 6 - ($ - %%insn_004035f6) db 0
    %%insn_004035fc:
    movzx dx,byte [ecx+eax] ; 004035FC 660FB61401
    %if ($ - %%insn_004035fc) > 5
        %error "LONG_004035FC"
    %endif
    times 5 - ($ - %%insn_004035fc) db 0
    %%insn_00403601:
    mov [ebp-0x128],dx ; 00403601 668995D8FEFFFF
    %if ($ - %%insn_00403601) > 7
        %error "LONG_00403601"
    %endif
    times 7 - ($ - %%insn_00403601) db 0
    %%insn_00403608:
    call 0x401473 ; 00403608 E866DEFFFF
    %if ($ - %%insn_00403608) > 5
        %error "LONG_00403608"
    %endif
    times 5 - ($ - %%insn_00403608) db 0
    %%insn_0040360d:
    mov [ebp-0x18],ax ; 0040360D 668945E8
    %if ($ - %%insn_0040360d) > 4
        %error "LONG_0040360D"
    %endif
    times 4 - ($ - %%insn_0040360d) db 0
    %%insn_00403611:
    mov eax,[ebp-0x12c] ; 00403611 8B85D4FEFFFF
    %if ($ - %%insn_00403611) > 6
        %error "LONG_00403611"
    %endif
    times 6 - ($ - %%insn_00403611) db 0
    %%insn_00403617:
    and eax,0xffff ; 00403617 25FFFF0000
    %if ($ - %%insn_00403617) > 5
        %error "LONG_00403617"
    %endif
    times 5 - ($ - %%insn_00403617) db 0
    %%insn_0040361c:
    mov ecx,[ebp-0x128] ; 0040361C 8B8DD8FEFFFF
    %if ($ - %%insn_0040361c) > 6
        %error "LONG_0040361C"
    %endif
    times 6 - ($ - %%insn_0040361c) db 0
    %%insn_00403622:
    and ecx,0xffff ; 00403622 81E1FFFF0000
    %if ($ - %%insn_00403622) > 6
        %error "LONG_00403622"
    %endif
    times 6 - ($ - %%insn_00403622) db 0
    db 0x3B, 0xC1 ; 00403628 3BC1 | cmp eax,ecx | encoding preserved
    %%insn_0040362a:
    jz short 0x40363b ; 0040362A 740F
    %if ($ - %%insn_0040362a) > 2
        %error "LONG_0040362A"
    %endif
    times 2 - ($ - %%insn_0040362a) db 0
    %%insn_0040362c:
    mov edx,[ebp-0x18] ; 0040362C 8B55E8
    %if ($ - %%insn_0040362c) > 3
        %error "LONG_0040362C"
    %endif
    times 3 - ($ - %%insn_0040362c) db 0
    %%insn_0040362f:
    and edx,0xffff ; 0040362F 81E2FFFF0000
    %if ($ - %%insn_0040362f) > 6
        %error "LONG_0040362F"
    %endif
    times 6 - ($ - %%insn_0040362f) db 0
    %%insn_00403635:
    mov [0x41f300],edx ; 00403635 891500F34100
    %if ($ - %%insn_00403635) > 6
        %error "LONG_00403635"
    %endif
    times 6 - ($ - %%insn_00403635) db 0
    %%insn_0040363b:
    jmp 0x4041db ; 0040363B E99B0B0000
    %if ($ - %%insn_0040363b) > 5
        %error "LONG_0040363B"
    %endif
    times 5 - ($ - %%insn_0040363b) db 0
    %%insn_00403640:
    mov ax,[ebp-0x124] ; 00403640 668B85DCFEFFFF
    %if ($ - %%insn_00403640) > 7
        %error "LONG_00403640"
    %endif
    times 7 - ($ - %%insn_00403640) db 0
    %%insn_00403647:
    push eax ; 00403647 50
    %if ($ - %%insn_00403647) > 1
        %error "LONG_00403647"
    %endif
    times 1 - ($ - %%insn_00403647) db 0
    %%insn_00403648:
    call 0x4017ee ; 00403648 E8A1E1FFFF
    %if ($ - %%insn_00403648) > 5
        %error "LONG_00403648"
    %endif
    times 5 - ($ - %%insn_00403648) db 0
    %%insn_0040364d:
    add esp,0x4 ; 0040364D 83C404
    %if ($ - %%insn_0040364d) > 3
        %error "LONG_0040364D"
    %endif
    times 3 - ($ - %%insn_0040364d) db 0
    %%insn_00403650:
    mov [ebp-0x12c],ax ; 00403650 668985D4FEFFFF
    %if ($ - %%insn_00403650) > 7
        %error "LONG_00403650"
    %endif
    times 7 - ($ - %%insn_00403650) db 0
    %%insn_00403657:
    mov ecx,[ebp-0x12c] ; 00403657 8B8DD4FEFFFF
    %if ($ - %%insn_00403657) > 6
        %error "LONG_00403657"
    %endif
    times 6 - ($ - %%insn_00403657) db 0
    %%insn_0040365d:
    and ecx,0xffff ; 0040365D 81E1FFFF0000
    %if ($ - %%insn_0040365d) > 6
        %error "LONG_0040365D"
    %endif
    times 6 - ($ - %%insn_0040365d) db 0
    %%insn_00403663:
    mov edx,[0x41f2b8] ; 00403663 8B15B8F24100
    %if ($ - %%insn_00403663) > 6
        %error "LONG_00403663"
    %endif
    times 6 - ($ - %%insn_00403663) db 0
    db 0x33, 0xC0 ; 00403669 33C0 | xor eax,eax | encoding preserved
    %%insn_0040366b:
    mov al,[edx+ecx] ; 0040366B 8A040A
    %if ($ - %%insn_0040366b) > 3
        %error "LONG_0040366B"
    %endif
    times 3 - ($ - %%insn_0040366b) db 0
    %%insn_0040366e:
    sub eax,0x31 ; 0040366E 83E831
    %if ($ - %%insn_0040366e) > 3
        %error "LONG_0040366E"
    %endif
    times 3 - ($ - %%insn_0040366e) db 0
    %%insn_00403671:
    mov [ebp-0x12c],ax ; 00403671 668985D4FEFFFF
    %if ($ - %%insn_00403671) > 7
        %error "LONG_00403671"
    %endif
    times 7 - ($ - %%insn_00403671) db 0
    %%insn_00403678:
    call 0x4015e6 ; 00403678 E869DFFFFF
    %if ($ - %%insn_00403678) > 5
        %error "LONG_00403678"
    %endif
    times 5 - ($ - %%insn_00403678) db 0
    %%insn_0040367d:
    mov ecx,[ebp-0x12c] ; 0040367D 8B8DD4FEFFFF
    %if ($ - %%insn_0040367d) > 6
        %error "LONG_0040367D"
    %endif
    times 6 - ($ - %%insn_0040367d) db 0
    %%insn_00403683:
    and ecx,0xffff ; 00403683 81E1FFFF0000
    %if ($ - %%insn_00403683) > 6
        %error "LONG_00403683"
    %endif
    times 6 - ($ - %%insn_00403683) db 0
    %%insn_00403689:
    mov edx,[0x41f2b8] ; 00403689 8B15B8F24100
    %if ($ - %%insn_00403689) > 6
        %error "LONG_00403689"
    %endif
    times 6 - ($ - %%insn_00403689) db 0
    %%insn_0040368f:
    mov [edx+ecx],al ; 0040368F 88040A
    %if ($ - %%insn_0040368f) > 3
        %error "LONG_0040368F"
    %endif
    times 3 - ($ - %%insn_0040368f) db 0
    %%insn_00403692:
    mov ax,[ebp-0x12c] ; 00403692 668B85D4FEFFFF
    %if ($ - %%insn_00403692) > 7
        %error "LONG_00403692"
    %endif
    times 7 - ($ - %%insn_00403692) db 0
    db 0x66, 0x05, 0x01, 0x00 ; 00403699 66050100 | add ax,0x1 | encoding preserved
    %%insn_0040369d:
    mov [ebp-0x12c],ax ; 0040369D 668985D4FEFFFF
    %if ($ - %%insn_0040369d) > 7
        %error "LONG_0040369D"
    %endif
    times 7 - ($ - %%insn_0040369d) db 0
    %%insn_004036a4:
    mov ecx,[0x41f284] ; 004036A4 8B0D84F24100
    %if ($ - %%insn_004036a4) > 6
        %error "LONG_004036A4"
    %endif
    times 6 - ($ - %%insn_004036a4) db 0
    %%insn_004036aa:
    add ecx,[0x41f300] ; 004036AA 030D00F34100
    %if ($ - %%insn_004036aa) > 6
        %error "LONG_004036AA"
    %endif
    times 6 - ($ - %%insn_004036aa) db 0
    db 0x33, 0xD2 ; 004036B0 33D2 | xor edx,edx | encoding preserved
    %%insn_004036b2:
    mov dl,[ecx-0x1] ; 004036B2 8A51FF
    %if ($ - %%insn_004036b2) > 3
        %error "LONG_004036B2"
    %endif
    times 3 - ($ - %%insn_004036b2) db 0
    %%insn_004036b5:
    and edx,0x80 ; 004036B5 81E280000000
    %if ($ - %%insn_004036b5) > 6
        %error "LONG_004036B5"
    %endif
    times 6 - ($ - %%insn_004036b5) db 0
    %%insn_004036bb:
    test edx,edx ; 004036BB 85D2
    %if ($ - %%insn_004036bb) > 2
        %error "LONG_004036BB"
    %endif
    times 2 - ($ - %%insn_004036bb) db 0
    %%insn_004036bd:
    jz short 0x403678 ; 004036BD 74B9
    %if ($ - %%insn_004036bd) > 2
        %error "LONG_004036BD"
    %endif
    times 2 - ($ - %%insn_004036bd) db 0
    %%insn_004036bf:
    jmp 0x4041db ; 004036BF E9170B0000
    %if ($ - %%insn_004036bf) > 5
        %error "LONG_004036BF"
    %endif
    times 5 - ($ - %%insn_004036bf) db 0
    %%insn_004036c4:
    mov ax,[ebp-0x124] ; 004036C4 668B85DCFEFFFF
    %if ($ - %%insn_004036c4) > 7
        %error "LONG_004036C4"
    %endif
    times 7 - ($ - %%insn_004036c4) db 0
    %%insn_004036cb:
    push eax ; 004036CB 50
    %if ($ - %%insn_004036cb) > 1
        %error "LONG_004036CB"
    %endif
    times 1 - ($ - %%insn_004036cb) db 0
    %%insn_004036cc:
    call 0x4017ee ; 004036CC E81DE1FFFF
    %if ($ - %%insn_004036cc) > 5
        %error "LONG_004036CC"
    %endif
    times 5 - ($ - %%insn_004036cc) db 0
    %%insn_004036d1:
    add esp,0x4 ; 004036D1 83C404
    %if ($ - %%insn_004036d1) > 3
        %error "LONG_004036D1"
    %endif
    times 3 - ($ - %%insn_004036d1) db 0
    %%insn_004036d4:
    mov [ebp-0x12c],ax ; 004036D4 668985D4FEFFFF
    %if ($ - %%insn_004036d4) > 7
        %error "LONG_004036D4"
    %endif
    times 7 - ($ - %%insn_004036d4) db 0
    %%insn_004036db:
    mov word [ebp-0x120],0x0 ; 004036DB 66C785E0FEFFFF0000
    %if ($ - %%insn_004036db) > 9
        %error "LONG_004036DB"
    %endif
    times 9 - ($ - %%insn_004036db) db 0
    %%insn_004036e4:
    mov ecx,[ebp-0x12c] ; 004036E4 8B8DD4FEFFFF
    %if ($ - %%insn_004036e4) > 6
        %error "LONG_004036E4"
    %endif
    times 6 - ($ - %%insn_004036e4) db 0
    %%insn_004036ea:
    and ecx,0xffff ; 004036EA 81E1FFFF0000
    %if ($ - %%insn_004036ea) > 6
        %error "LONG_004036EA"
    %endif
    times 6 - ($ - %%insn_004036ea) db 0
    %%insn_004036f0:
    mov edx,[0x41f2b8] ; 004036F0 8B15B8F24100
    %if ($ - %%insn_004036f0) > 6
        %error "LONG_004036F0"
    %endif
    times 6 - ($ - %%insn_004036f0) db 0
    db 0x33, 0xC0 ; 004036F6 33C0 | xor eax,eax | encoding preserved
    %%insn_004036f8:
    mov al,[edx+ecx] ; 004036F8 8A040A
    %if ($ - %%insn_004036f8) > 3
        %error "LONG_004036F8"
    %endif
    times 3 - ($ - %%insn_004036f8) db 0
    db 0x8B, 0xF0 ; 004036FB 8BF0 | mov esi,eax | encoding preserved
    %%insn_004036fd:
    call 0x4015e6 ; 004036FD E8E4DEFFFF
    %if ($ - %%insn_004036fd) > 5
        %error "LONG_004036FD"
    %endif
    times 5 - ($ - %%insn_004036fd) db 0
    %%insn_00403702:
    and eax,0xff ; 00403702 25FF000000
    %if ($ - %%insn_00403702) > 5
        %error "LONG_00403702"
    %endif
    times 5 - ($ - %%insn_00403702) db 0
    %%insn_00403707:
    mov cx,[ebp-0x12c] ; 00403707 668B8DD4FEFFFF
    %if ($ - %%insn_00403707) > 7
        %error "LONG_00403707"
    %endif
    times 7 - ($ - %%insn_00403707) db 0
    %%insn_0040370e:
    add cx,0x1 ; 0040370E 6683C101
    %if ($ - %%insn_0040370e) > 4
        %error "LONG_0040370E"
    %endif
    times 4 - ($ - %%insn_0040370e) db 0
    %%insn_00403712:
    mov [ebp-0x12c],cx ; 00403712 66898DD4FEFFFF
    %if ($ - %%insn_00403712) > 7
        %error "LONG_00403712"
    %endif
    times 7 - ($ - %%insn_00403712) db 0
    db 0x3B, 0xF0 ; 00403719 3BF0 | cmp esi,eax | encoding preserved
    %%insn_0040371b:
    jng short 0x403726 ; 0040371B 7E09
    %if ($ - %%insn_0040371b) > 2
        %error "LONG_0040371B"
    %endif
    times 2 - ($ - %%insn_0040371b) db 0
    %%insn_0040371d:
    mov word [ebp-0x120],0x1 ; 0040371D 66C785E0FEFFFF0100
    %if ($ - %%insn_0040371d) > 9
        %error "LONG_0040371D"
    %endif
    times 9 - ($ - %%insn_0040371d) db 0
    %%insn_00403726:
    mov edx,[0x41f284] ; 00403726 8B1584F24100
    %if ($ - %%insn_00403726) > 6
        %error "LONG_00403726"
    %endif
    times 6 - ($ - %%insn_00403726) db 0
    %%insn_0040372c:
    add edx,[0x41f300] ; 0040372C 031500F34100
    %if ($ - %%insn_0040372c) > 6
        %error "LONG_0040372C"
    %endif
    times 6 - ($ - %%insn_0040372c) db 0
    db 0x33, 0xC0 ; 00403732 33C0 | xor eax,eax | encoding preserved
    %%insn_00403734:
    mov al,[edx-0x1] ; 00403734 8A42FF
    %if ($ - %%insn_00403734) > 3
        %error "LONG_00403734"
    %endif
    times 3 - ($ - %%insn_00403734) db 0
    %%insn_00403737:
    and eax,0x80 ; 00403737 2580000000
    %if ($ - %%insn_00403737) > 5
        %error "LONG_00403737"
    %endif
    times 5 - ($ - %%insn_00403737) db 0
    %%insn_0040373c:
    test eax,eax ; 0040373C 85C0
    %if ($ - %%insn_0040373c) > 2
        %error "LONG_0040373C"
    %endif
    times 2 - ($ - %%insn_0040373c) db 0
    %%insn_0040373e:
    jz short 0x4036e4 ; 0040373E 74A4
    %if ($ - %%insn_0040373e) > 2
        %error "LONG_0040373E"
    %endif
    times 2 - ($ - %%insn_0040373e) db 0
    %%insn_00403740:
    call 0x401473 ; 00403740 E82EDDFFFF
    %if ($ - %%insn_00403740) > 5
        %error "LONG_00403740"
    %endif
    times 5 - ($ - %%insn_00403740) db 0
    %%insn_00403745:
    mov [ebp-0x18],ax ; 00403745 668945E8
    %if ($ - %%insn_00403745) > 4
        %error "LONG_00403745"
    %endif
    times 4 - ($ - %%insn_00403745) db 0
    %%insn_00403749:
    mov ecx,[ebp-0x120] ; 00403749 8B8DE0FEFFFF
    %if ($ - %%insn_00403749) > 6
        %error "LONG_00403749"
    %endif
    times 6 - ($ - %%insn_00403749) db 0
    %%insn_0040374f:
    and ecx,0xffff ; 0040374F 81E1FFFF0000
    %if ($ - %%insn_0040374f) > 6
        %error "LONG_0040374F"
    %endif
    times 6 - ($ - %%insn_0040374f) db 0
    %%insn_00403755:
    cmp ecx,0x1 ; 00403755 83F901
    %if ($ - %%insn_00403755) > 3
        %error "LONG_00403755"
    %endif
    times 3 - ($ - %%insn_00403755) db 0
    %%insn_00403758:
    jnz short 0x403769 ; 00403758 750F
    %if ($ - %%insn_00403758) > 2
        %error "LONG_00403758"
    %endif
    times 2 - ($ - %%insn_00403758) db 0
    %%insn_0040375a:
    mov edx,[ebp-0x18] ; 0040375A 8B55E8
    %if ($ - %%insn_0040375a) > 3
        %error "LONG_0040375A"
    %endif
    times 3 - ($ - %%insn_0040375a) db 0
    %%insn_0040375d:
    and edx,0xffff ; 0040375D 81E2FFFF0000
    %if ($ - %%insn_0040375d) > 6
        %error "LONG_0040375D"
    %endif
    times 6 - ($ - %%insn_0040375d) db 0
    %%insn_00403763:
    mov [0x41f300],edx ; 00403763 891500F34100
    %if ($ - %%insn_00403763) > 6
        %error "LONG_00403763"
    %endif
    times 6 - ($ - %%insn_00403763) db 0
    %%insn_00403769:
    jmp 0x4041db ; 00403769 E96D0A0000
    %if ($ - %%insn_00403769) > 5
        %error "LONG_00403769"
    %endif
    times 5 - ($ - %%insn_00403769) db 0
    %%insn_0040376e:
    mov ax,[0x41f2ac] ; 0040376E 66A1ACF24100
    %if ($ - %%insn_0040376e) > 6
        %error "LONG_0040376E"
    %endif
    times 6 - ($ - %%insn_0040376e) db 0
    %%insn_00403774:
    and ax,0xff7f ; 00403774 66257FFF
    %if ($ - %%insn_00403774) > 4
        %error "LONG_00403774"
    %endif
    times 4 - ($ - %%insn_00403774) db 0
    %%insn_00403778:
    mov [0x41f2ac],ax ; 00403778 66A3ACF24100
    %if ($ - %%insn_00403778) > 6
        %error "LONG_00403778"
    %endif
    times 6 - ($ - %%insn_00403778) db 0
    %%insn_0040377e:
    jmp 0x4041db ; 0040377E E9580A0000
    %if ($ - %%insn_0040377e) > 5
        %error "LONG_0040377E"
    %endif
    times 5 - ($ - %%insn_0040377e) db 0
    %%insn_00403783:
    mov cx,[ebp-0x124] ; 00403783 668B8DDCFEFFFF
    %if ($ - %%insn_00403783) > 7
        %error "LONG_00403783"
    %endif
    times 7 - ($ - %%insn_00403783) db 0
    %%insn_0040378a:
    push ecx ; 0040378A 51
    %if ($ - %%insn_0040378a) > 1
        %error "LONG_0040378A"
    %endif
    times 1 - ($ - %%insn_0040378a) db 0
    %%insn_0040378b:
    call 0x4017ee ; 0040378B E85EE0FFFF
    %if ($ - %%insn_0040378b) > 5
        %error "LONG_0040378B"
    %endif
    times 5 - ($ - %%insn_0040378b) db 0
    %%insn_00403790:
    add esp,0x4 ; 00403790 83C404
    %if ($ - %%insn_00403790) > 3
        %error "LONG_00403790"
    %endif
    times 3 - ($ - %%insn_00403790) db 0
    %%insn_00403793:
    mov [ebp-0x12c],ax ; 00403793 668985D4FEFFFF
    %if ($ - %%insn_00403793) > 7
        %error "LONG_00403793"
    %endif
    times 7 - ($ - %%insn_00403793) db 0
    %%insn_0040379a:
    mov word [ebp-0x120],0x0 ; 0040379A 66C785E0FEFFFF0000
    %if ($ - %%insn_0040379a) > 9
        %error "LONG_0040379A"
    %endif
    times 9 - ($ - %%insn_0040379a) db 0
    %%insn_004037a3:
    mov edx,[ebp-0x12c] ; 004037A3 8B95D4FEFFFF
    %if ($ - %%insn_004037a3) > 6
        %error "LONG_004037A3"
    %endif
    times 6 - ($ - %%insn_004037a3) db 0
    %%insn_004037a9:
    and edx,0xffff ; 004037A9 81E2FFFF0000
    %if ($ - %%insn_004037a9) > 6
        %error "LONG_004037A9"
    %endif
    times 6 - ($ - %%insn_004037a9) db 0
    %%insn_004037af:
    mov eax,[0x41f2b8] ; 004037AF A1B8F24100
    %if ($ - %%insn_004037af) > 5
        %error "LONG_004037AF"
    %endif
    times 5 - ($ - %%insn_004037af) db 0
    db 0x33, 0xC9 ; 004037B4 33C9 | xor ecx,ecx | encoding preserved
    %%insn_004037b6:
    mov cl,[eax+edx] ; 004037B6 8A0C10
    %if ($ - %%insn_004037b6) > 3
        %error "LONG_004037B6"
    %endif
    times 3 - ($ - %%insn_004037b6) db 0
    db 0x8B, 0xF1 ; 004037B9 8BF1 | mov esi,ecx | encoding preserved
    %%insn_004037bb:
    call 0x4015e6 ; 004037BB E826DEFFFF
    %if ($ - %%insn_004037bb) > 5
        %error "LONG_004037BB"
    %endif
    times 5 - ($ - %%insn_004037bb) db 0
    %%insn_004037c0:
    and eax,0xff ; 004037C0 25FF000000
    %if ($ - %%insn_004037c0) > 5
        %error "LONG_004037C0"
    %endif
    times 5 - ($ - %%insn_004037c0) db 0
    %%insn_004037c5:
    mov dx,[ebp-0x12c] ; 004037C5 668B95D4FEFFFF
    %if ($ - %%insn_004037c5) > 7
        %error "LONG_004037C5"
    %endif
    times 7 - ($ - %%insn_004037c5) db 0
    %%insn_004037cc:
    add dx,0x1 ; 004037CC 6683C201
    %if ($ - %%insn_004037cc) > 4
        %error "LONG_004037CC"
    %endif
    times 4 - ($ - %%insn_004037cc) db 0
    %%insn_004037d0:
    mov [ebp-0x12c],dx ; 004037D0 668995D4FEFFFF
    %if ($ - %%insn_004037d0) > 7
        %error "LONG_004037D0"
    %endif
    times 7 - ($ - %%insn_004037d0) db 0
    db 0x3B, 0xF0 ; 004037D7 3BF0 | cmp esi,eax | encoding preserved
    %%insn_004037d9:
    jnl short 0x4037e4 ; 004037D9 7D09
    %if ($ - %%insn_004037d9) > 2
        %error "LONG_004037D9"
    %endif
    times 2 - ($ - %%insn_004037d9) db 0
    %%insn_004037db:
    mov word [ebp-0x120],0x1 ; 004037DB 66C785E0FEFFFF0100
    %if ($ - %%insn_004037db) > 9
        %error "LONG_004037DB"
    %endif
    times 9 - ($ - %%insn_004037db) db 0
    %%insn_004037e4:
    mov eax,[0x41f284] ; 004037E4 A184F24100
    %if ($ - %%insn_004037e4) > 5
        %error "LONG_004037E4"
    %endif
    times 5 - ($ - %%insn_004037e4) db 0
    %%insn_004037e9:
    add eax,[0x41f300] ; 004037E9 030500F34100
    %if ($ - %%insn_004037e9) > 6
        %error "LONG_004037E9"
    %endif
    times 6 - ($ - %%insn_004037e9) db 0
    db 0x33, 0xC9 ; 004037EF 33C9 | xor ecx,ecx | encoding preserved
    %%insn_004037f1:
    mov cl,[eax-0x1] ; 004037F1 8A48FF
    %if ($ - %%insn_004037f1) > 3
        %error "LONG_004037F1"
    %endif
    times 3 - ($ - %%insn_004037f1) db 0
    %%insn_004037f4:
    and ecx,0x80 ; 004037F4 81E180000000
    %if ($ - %%insn_004037f4) > 6
        %error "LONG_004037F4"
    %endif
    times 6 - ($ - %%insn_004037f4) db 0
    %%insn_004037fa:
    test ecx,ecx ; 004037FA 85C9
    %if ($ - %%insn_004037fa) > 2
        %error "LONG_004037FA"
    %endif
    times 2 - ($ - %%insn_004037fa) db 0
    %%insn_004037fc:
    jz short 0x4037a3 ; 004037FC 74A5
    %if ($ - %%insn_004037fc) > 2
        %error "LONG_004037FC"
    %endif
    times 2 - ($ - %%insn_004037fc) db 0
    %%insn_004037fe:
    call 0x401473 ; 004037FE E870DCFFFF
    %if ($ - %%insn_004037fe) > 5
        %error "LONG_004037FE"
    %endif
    times 5 - ($ - %%insn_004037fe) db 0
    %%insn_00403803:
    mov [ebp-0x18],ax ; 00403803 668945E8
    %if ($ - %%insn_00403803) > 4
        %error "LONG_00403803"
    %endif
    times 4 - ($ - %%insn_00403803) db 0
    %%insn_00403807:
    mov edx,[ebp-0x120] ; 00403807 8B95E0FEFFFF
    %if ($ - %%insn_00403807) > 6
        %error "LONG_00403807"
    %endif
    times 6 - ($ - %%insn_00403807) db 0
    %%insn_0040380d:
    and edx,0xffff ; 0040380D 81E2FFFF0000
    %if ($ - %%insn_0040380d) > 6
        %error "LONG_0040380D"
    %endif
    times 6 - ($ - %%insn_0040380d) db 0
    %%insn_00403813:
    cmp edx,0x1 ; 00403813 83FA01
    %if ($ - %%insn_00403813) > 3
        %error "LONG_00403813"
    %endif
    times 3 - ($ - %%insn_00403813) db 0
    %%insn_00403816:
    jnz short 0x403825 ; 00403816 750D
    %if ($ - %%insn_00403816) > 2
        %error "LONG_00403816"
    %endif
    times 2 - ($ - %%insn_00403816) db 0
    %%insn_00403818:
    mov eax,[ebp-0x18] ; 00403818 8B45E8
    %if ($ - %%insn_00403818) > 3
        %error "LONG_00403818"
    %endif
    times 3 - ($ - %%insn_00403818) db 0
    %%insn_0040381b:
    and eax,0xffff ; 0040381B 25FFFF0000
    %if ($ - %%insn_0040381b) > 5
        %error "LONG_0040381B"
    %endif
    times 5 - ($ - %%insn_0040381b) db 0
    %%insn_00403820:
    mov [0x41f300],eax ; 00403820 A300F34100
    %if ($ - %%insn_00403820) > 5
        %error "LONG_00403820"
    %endif
    times 5 - ($ - %%insn_00403820) db 0
    %%insn_00403825:
    jmp 0x4041db ; 00403825 E9B1090000
    %if ($ - %%insn_00403825) > 5
        %error "LONG_00403825"
    %endif
    times 5 - ($ - %%insn_00403825) db 0
    %%insn_0040382a:
    call 0x401473 ; 0040382A E844DCFFFF
    %if ($ - %%insn_0040382a) > 5
        %error "LONG_0040382A"
    %endif
    times 5 - ($ - %%insn_0040382a) db 0
    %%insn_0040382f:
    and eax,0xffff ; 0040382F 25FFFF0000
    %if ($ - %%insn_0040382f) > 5
        %error "LONG_0040382F"
    %endif
    times 5 - ($ - %%insn_0040382f) db 0
    %%insn_00403834:
    mov [ebp-0x8],eax ; 00403834 8945F8
    %if ($ - %%insn_00403834) > 3
        %error "LONG_00403834"
    %endif
    times 3 - ($ - %%insn_00403834) db 0
    %%insn_00403837:
    call 0x401473 ; 00403837 E837DCFFFF
    %if ($ - %%insn_00403837) > 5
        %error "LONG_00403837"
    %endif
    times 5 - ($ - %%insn_00403837) db 0
    %%insn_0040383c:
    and eax,0xffff ; 0040383C 25FFFF0000
    %if ($ - %%insn_0040383c) > 5
        %error "LONG_0040383C"
    %endif
    times 5 - ($ - %%insn_0040383c) db 0
    %%insn_00403841:
    mov [ebp-0x4],eax ; 00403841 8945FC
    %if ($ - %%insn_00403841) > 3
        %error "LONG_00403841"
    %endif
    times 3 - ($ - %%insn_00403841) db 0
    %%insn_00403844:
    call 0x401473 ; 00403844 E82ADCFFFF
    %if ($ - %%insn_00403844) > 5
        %error "LONG_00403844"
    %endif
    times 5 - ($ - %%insn_00403844) db 0
    %%insn_00403849:
    and eax,0xffff ; 00403849 25FFFF0000
    %if ($ - %%insn_00403849) > 5
        %error "LONG_00403849"
    %endif
    times 5 - ($ - %%insn_00403849) db 0
    %%insn_0040384e:
    mov [ebp-0x130],eax ; 0040384E 8985D0FEFFFF
    %if ($ - %%insn_0040384e) > 6
        %error "LONG_0040384E"
    %endif
    times 6 - ($ - %%insn_0040384e) db 0
    %%insn_00403854:
    call 0x401473 ; 00403854 E81ADCFFFF
    %if ($ - %%insn_00403854) > 5
        %error "LONG_00403854"
    %endif
    times 5 - ($ - %%insn_00403854) db 0
    %%insn_00403859:
    and eax,0xffff ; 00403859 25FFFF0000
    %if ($ - %%insn_00403859) > 5
        %error "LONG_00403859"
    %endif
    times 5 - ($ - %%insn_00403859) db 0
    %%insn_0040385e:
    mov [ebp-0x138],eax ; 0040385E 8985C8FEFFFF
    %if ($ - %%insn_0040385e) > 6
        %error "LONG_0040385E"
    %endif
    times 6 - ($ - %%insn_0040385e) db 0
    %%insn_00403864:
    mov ecx,[ebp-0x138] ; 00403864 8B8DC8FEFFFF
    %if ($ - %%insn_00403864) > 6
        %error "LONG_00403864"
    %endif
    times 6 - ($ - %%insn_00403864) db 0
    %%insn_0040386a:
    push ecx ; 0040386A 51
    %if ($ - %%insn_0040386a) > 1
        %error "LONG_0040386A"
    %endif
    times 1 - ($ - %%insn_0040386a) db 0
    %%insn_0040386b:
    mov edx,[ebp-0x130] ; 0040386B 8B95D0FEFFFF
    %if ($ - %%insn_0040386b) > 6
        %error "LONG_0040386B"
    %endif
    times 6 - ($ - %%insn_0040386b) db 0
    %%insn_00403871:
    push edx ; 00403871 52
    %if ($ - %%insn_00403871) > 1
        %error "LONG_00403871"
    %endif
    times 1 - ($ - %%insn_00403871) db 0
    %%insn_00403872:
    mov eax,[ebp-0x4] ; 00403872 8B45FC
    %if ($ - %%insn_00403872) > 3
        %error "LONG_00403872"
    %endif
    times 3 - ($ - %%insn_00403872) db 0
    %%insn_00403875:
    push eax ; 00403875 50
    %if ($ - %%insn_00403875) > 1
        %error "LONG_00403875"
    %endif
    times 1 - ($ - %%insn_00403875) db 0
    %%insn_00403876:
    mov ecx,[ebp-0x8] ; 00403876 8B4DF8
    %if ($ - %%insn_00403876) > 3
        %error "LONG_00403876"
    %endif
    times 3 - ($ - %%insn_00403876) db 0
    %%insn_00403879:
    push ecx ; 00403879 51
    %if ($ - %%insn_00403879) > 1
        %error "LONG_00403879"
    %endif
    times 1 - ($ - %%insn_00403879) db 0
    %%insn_0040387a:
    call 0x40a7aa ; 0040387A E82B6F0000
    %if ($ - %%insn_0040387a) > 5
        %error "LONG_0040387A"
    %endif
    times 5 - ($ - %%insn_0040387a) db 0
    %%insn_0040387f:
    add esp,0x10 ; 0040387F 83C410
    %if ($ - %%insn_0040387f) > 3
        %error "LONG_0040387F"
    %endif
    times 3 - ($ - %%insn_0040387f) db 0
    %%insn_00403882:
    jmp 0x4041db ; 00403882 E954090000
    %if ($ - %%insn_00403882) > 5
        %error "LONG_00403882"
    %endif
    times 5 - ($ - %%insn_00403882) db 0
    db 0x33, 0xD2 ; 00403887 33D2 | xor edx,edx | encoding preserved
    %%insn_00403889:
    mov dx,[0x41f28c] ; 00403889 668B158CF24100
    %if ($ - %%insn_00403889) > 7
        %error "LONG_00403889"
    %endif
    times 7 - ($ - %%insn_00403889) db 0
    %%insn_00403890:
    mov [0x41f2a8],edx ; 00403890 8915A8F24100
    %if ($ - %%insn_00403890) > 6
        %error "LONG_00403890"
    %endif
    times 6 - ($ - %%insn_00403890) db 0
    %%insn_00403896:
    jmp 0x4041db ; 00403896 E940090000
    %if ($ - %%insn_00403896) > 5
        %error "LONG_00403896"
    %endif
    times 5 - ($ - %%insn_00403896) db 0
    %%insn_0040389b:
    call 0x401449 ; 0040389B E8A9DBFFFF
    %if ($ - %%insn_0040389b) > 5
        %error "LONG_0040389B"
    %endif
    times 5 - ($ - %%insn_0040389b) db 0
    %%insn_004038a0:
    and eax,0xff ; 004038A0 25FF000000
    %if ($ - %%insn_004038a0) > 5
        %error "LONG_004038A0"
    %endif
    times 5 - ($ - %%insn_004038a0) db 0
    %%insn_004038a5:
    and eax,0x7f ; 004038A5 83E07F
    %if ($ - %%insn_004038a5) > 3
        %error "LONG_004038A5"
    %endif
    times 3 - ($ - %%insn_004038a5) db 0
    %%insn_004038a8:
    mov [ebp-0x10],eax ; 004038A8 8945F0
    %if ($ - %%insn_004038a8) > 3
        %error "LONG_004038A8"
    %endif
    times 3 - ($ - %%insn_004038a8) db 0
    %%insn_004038ab:
    cmp dword [ebp-0x10],0x23 ; 004038AB 837DF023
    %if ($ - %%insn_004038ab) > 4
        %error "LONG_004038AB"
    %endif
    times 4 - ($ - %%insn_004038ab) db 0
    %%insn_004038af:
    jnz short 0x4038d9 ; 004038AF 7528
    %if ($ - %%insn_004038af) > 2
        %error "LONG_004038AF"
    %endif
    times 2 - ($ - %%insn_004038af) db 0
    %%insn_004038b1:
    call 0x401449 ; 004038B1 E893DBFFFF
    %if ($ - %%insn_004038b1) > 5
        %error "LONG_004038B1"
    %endif
    times 5 - ($ - %%insn_004038b1) db 0
    %%insn_004038b6:
    and eax,0xff ; 004038B6 25FF000000
    %if ($ - %%insn_004038b6) > 5
        %error "LONG_004038B6"
    %endif
    times 5 - ($ - %%insn_004038b6) db 0
    %%insn_004038bb:
    and eax,0x7f ; 004038BB 83E07F
    %if ($ - %%insn_004038bb) > 3
        %error "LONG_004038BB"
    %endif
    times 3 - ($ - %%insn_004038bb) db 0
    %%insn_004038be:
    mov [ebp-0x10],eax ; 004038BE 8945F0
    %if ($ - %%insn_004038be) > 3
        %error "LONG_004038BE"
    %endif
    times 3 - ($ - %%insn_004038be) db 0
    %%insn_004038c1:
    mov eax,[0x41f2b8] ; 004038C1 A1B8F24100
    %if ($ - %%insn_004038c1) > 5
        %error "LONG_004038C1"
    %endif
    times 5 - ($ - %%insn_004038c1) db 0
    %%insn_004038c6:
    add eax,[ebp-0x10] ; 004038C6 0345F0
    %if ($ - %%insn_004038c6) > 3
        %error "LONG_004038C6"
    %endif
    times 3 - ($ - %%insn_004038c6) db 0
    db 0x33, 0xC9 ; 004038C9 33C9 | xor ecx,ecx | encoding preserved
    %%insn_004038cb:
    mov cl,[eax-0x61] ; 004038CB 8A489F
    %if ($ - %%insn_004038cb) > 3
        %error "LONG_004038CB"
    %endif
    times 3 - ($ - %%insn_004038cb) db 0
    %%insn_004038ce:
    imul ecx,ecx,0xa ; 004038CE 6BC90A
    %if ($ - %%insn_004038ce) > 3
        %error "LONG_004038CE"
    %endif
    times 3 - ($ - %%insn_004038ce) db 0
    %%insn_004038d1:
    mov [ebp-0x134],ecx ; 004038D1 898DCCFEFFFF
    %if ($ - %%insn_004038d1) > 6
        %error "LONG_004038D1"
    %endif
    times 6 - ($ - %%insn_004038d1) db 0
    %%insn_004038d7:
    jmp short 0x4038e8 ; 004038D7 EB0F
    %if ($ - %%insn_004038d7) > 2
        %error "LONG_004038D7"
    %endif
    times 2 - ($ - %%insn_004038d7) db 0
    %%insn_004038d9:
    mov edx,[ebp-0x10] ; 004038D9 8B55F0
    %if ($ - %%insn_004038d9) > 3
        %error "LONG_004038D9"
    %endif
    times 3 - ($ - %%insn_004038d9) db 0
    %%insn_004038dc:
    sub edx,0x30 ; 004038DC 83EA30
    %if ($ - %%insn_004038dc) > 3
        %error "LONG_004038DC"
    %endif
    times 3 - ($ - %%insn_004038dc) db 0
    %%insn_004038df:
    imul edx,edx,0xa ; 004038DF 6BD20A
    %if ($ - %%insn_004038df) > 3
        %error "LONG_004038DF"
    %endif
    times 3 - ($ - %%insn_004038df) db 0
    %%insn_004038e2:
    mov [ebp-0x134],edx ; 004038E2 8995CCFEFFFF
    %if ($ - %%insn_004038e2) > 6
        %error "LONG_004038E2"
    %endif
    times 6 - ($ - %%insn_004038e2) db 0
    %%insn_004038e8:
    call 0x401449 ; 004038E8 E85CDBFFFF
    %if ($ - %%insn_004038e8) > 5
        %error "LONG_004038E8"
    %endif
    times 5 - ($ - %%insn_004038e8) db 0
    %%insn_004038ed:
    and eax,0xff ; 004038ED 25FF000000
    %if ($ - %%insn_004038ed) > 5
        %error "LONG_004038ED"
    %endif
    times 5 - ($ - %%insn_004038ed) db 0
    %%insn_004038f2:
    and eax,0x7f ; 004038F2 83E07F
    %if ($ - %%insn_004038f2) > 3
        %error "LONG_004038F2"
    %endif
    times 3 - ($ - %%insn_004038f2) db 0
    %%insn_004038f5:
    mov [ebp-0x10],eax ; 004038F5 8945F0
    %if ($ - %%insn_004038f5) > 3
        %error "LONG_004038F5"
    %endif
    times 3 - ($ - %%insn_004038f5) db 0
    %%insn_004038f8:
    cmp dword [ebp-0x10],0x23 ; 004038F8 837DF023
    %if ($ - %%insn_004038f8) > 4
        %error "LONG_004038F8"
    %endif
    times 4 - ($ - %%insn_004038f8) db 0
    %%insn_004038fc:
    jnz short 0x40392b ; 004038FC 752D
    %if ($ - %%insn_004038fc) > 2
        %error "LONG_004038FC"
    %endif
    times 2 - ($ - %%insn_004038fc) db 0
    %%insn_004038fe:
    call 0x401449 ; 004038FE E846DBFFFF
    %if ($ - %%insn_004038fe) > 5
        %error "LONG_004038FE"
    %endif
    times 5 - ($ - %%insn_004038fe) db 0
    %%insn_00403903:
    and eax,0xff ; 00403903 25FF000000
    %if ($ - %%insn_00403903) > 5
        %error "LONG_00403903"
    %endif
    times 5 - ($ - %%insn_00403903) db 0
    %%insn_00403908:
    and eax,0x7f ; 00403908 83E07F
    %if ($ - %%insn_00403908) > 3
        %error "LONG_00403908"
    %endif
    times 3 - ($ - %%insn_00403908) db 0
    %%insn_0040390b:
    mov [ebp-0x10],eax ; 0040390B 8945F0
    %if ($ - %%insn_0040390b) > 3
        %error "LONG_0040390B"
    %endif
    times 3 - ($ - %%insn_0040390b) db 0
    %%insn_0040390e:
    mov eax,[0x41f2b8] ; 0040390E A1B8F24100
    %if ($ - %%insn_0040390e) > 5
        %error "LONG_0040390E"
    %endif
    times 5 - ($ - %%insn_0040390e) db 0
    %%insn_00403913:
    add eax,[ebp-0x10] ; 00403913 0345F0
    %if ($ - %%insn_00403913) > 3
        %error "LONG_00403913"
    %endif
    times 3 - ($ - %%insn_00403913) db 0
    db 0x33, 0xC9 ; 00403916 33C9 | xor ecx,ecx | encoding preserved
    %%insn_00403918:
    mov cl,[eax-0x61] ; 00403918 8A489F
    %if ($ - %%insn_00403918) > 3
        %error "LONG_00403918"
    %endif
    times 3 - ($ - %%insn_00403918) db 0
    %%insn_0040391b:
    mov edx,[ebp-0x134] ; 0040391B 8B95CCFEFFFF
    %if ($ - %%insn_0040391b) > 6
        %error "LONG_0040391B"
    %endif
    times 6 - ($ - %%insn_0040391b) db 0
    db 0x03, 0xD1 ; 00403921 03D1 | add edx,ecx | encoding preserved
    %%insn_00403923:
    mov [ebp-0x134],edx ; 00403923 8995CCFEFFFF
    %if ($ - %%insn_00403923) > 6
        %error "LONG_00403923"
    %endif
    times 6 - ($ - %%insn_00403923) db 0
    %%insn_00403929:
    jmp short 0x40393e ; 00403929 EB13
    %if ($ - %%insn_00403929) > 2
        %error "LONG_00403929"
    %endif
    times 2 - ($ - %%insn_00403929) db 0
    %%insn_0040392b:
    mov eax,[ebp-0x10] ; 0040392B 8B45F0
    %if ($ - %%insn_0040392b) > 3
        %error "LONG_0040392B"
    %endif
    times 3 - ($ - %%insn_0040392b) db 0
    %%insn_0040392e:
    mov ecx,[ebp-0x134] ; 0040392E 8B8DCCFEFFFF
    %if ($ - %%insn_0040392e) > 6
        %error "LONG_0040392E"
    %endif
    times 6 - ($ - %%insn_0040392e) db 0
    %%insn_00403934:
    lea edx,[ecx+eax-0x30] ; 00403934 8D5401D0
    %if ($ - %%insn_00403934) > 4
        %error "LONG_00403934"
    %endif
    times 4 - ($ - %%insn_00403934) db 0
    %%insn_00403938:
    mov [ebp-0x134],edx ; 00403938 8995CCFEFFFF
    %if ($ - %%insn_00403938) > 6
        %error "LONG_00403938"
    %endif
    times 6 - ($ - %%insn_00403938) db 0
    %%insn_0040393e:
    mov eax,[ebp-0x134] ; 0040393E 8B85CCFEFFFF
    %if ($ - %%insn_0040393e) > 6
        %error "LONG_0040393E"
    %endif
    times 6 - ($ - %%insn_0040393e) db 0
    %%insn_00403944:
    add eax,0x19 ; 00403944 83C019
    %if ($ - %%insn_00403944) > 3
        %error "LONG_00403944"
    %endif
    times 3 - ($ - %%insn_00403944) db 0
    %%insn_00403947:
    mov [ebp-0x134],eax ; 00403947 8985CCFEFFFF
    %if ($ - %%insn_00403947) > 6
        %error "LONG_00403947"
    %endif
    times 6 - ($ - %%insn_00403947) db 0
    %%insn_0040394d:
    call 0x401449 ; 0040394D E8F7DAFFFF
    %if ($ - %%insn_0040394d) > 5
        %error "LONG_0040394D"
    %endif
    times 5 - ($ - %%insn_0040394d) db 0
    %%insn_00403952:
    and eax,0xff ; 00403952 25FF000000
    %if ($ - %%insn_00403952) > 5
        %error "LONG_00403952"
    %endif
    times 5 - ($ - %%insn_00403952) db 0
    %%insn_00403957:
    and eax,0x7f ; 00403957 83E07F
    %if ($ - %%insn_00403957) > 3
        %error "LONG_00403957"
    %endif
    times 3 - ($ - %%insn_00403957) db 0
    %%insn_0040395a:
    mov [ebp-0x10],eax ; 0040395A 8945F0
    %if ($ - %%insn_0040395a) > 3
        %error "LONG_0040395A"
    %endif
    times 3 - ($ - %%insn_0040395a) db 0
    %%insn_0040395d:
    cmp dword [ebp-0x10],0x23 ; 0040395D 837DF023
    %if ($ - %%insn_0040395d) > 4
        %error "LONG_0040395D"
    %endif
    times 4 - ($ - %%insn_0040395d) db 0
    %%insn_00403961:
    jnz short 0x40398c ; 00403961 7529
    %if ($ - %%insn_00403961) > 2
        %error "LONG_00403961"
    %endif
    times 2 - ($ - %%insn_00403961) db 0
    %%insn_00403963:
    call 0x401449 ; 00403963 E8E1DAFFFF
    %if ($ - %%insn_00403963) > 5
        %error "LONG_00403963"
    %endif
    times 5 - ($ - %%insn_00403963) db 0
    %%insn_00403968:
    and eax,0xff ; 00403968 25FF000000
    %if ($ - %%insn_00403968) > 5
        %error "LONG_00403968"
    %endif
    times 5 - ($ - %%insn_00403968) db 0
    %%insn_0040396d:
    and eax,0x7f ; 0040396D 83E07F
    %if ($ - %%insn_0040396d) > 3
        %error "LONG_0040396D"
    %endif
    times 3 - ($ - %%insn_0040396d) db 0
    %%insn_00403970:
    mov [ebp-0x10],eax ; 00403970 8945F0
    %if ($ - %%insn_00403970) > 3
        %error "LONG_00403970"
    %endif
    times 3 - ($ - %%insn_00403970) db 0
    %%insn_00403973:
    mov ecx,[0x41f2b8] ; 00403973 8B0DB8F24100
    %if ($ - %%insn_00403973) > 6
        %error "LONG_00403973"
    %endif
    times 6 - ($ - %%insn_00403973) db 0
    %%insn_00403979:
    add ecx,[ebp-0x10] ; 00403979 034DF0
    %if ($ - %%insn_00403979) > 3
        %error "LONG_00403979"
    %endif
    times 3 - ($ - %%insn_00403979) db 0
    db 0x33, 0xD2 ; 0040397C 33D2 | xor edx,edx | encoding preserved
    %%insn_0040397e:
    mov dl,[ecx-0x61] ; 0040397E 8A519F
    %if ($ - %%insn_0040397e) > 3
        %error "LONG_0040397E"
    %endif
    times 3 - ($ - %%insn_0040397e) db 0
    %%insn_00403981:
    imul edx,edx,0xa ; 00403981 6BD20A
    %if ($ - %%insn_00403981) > 3
        %error "LONG_00403981"
    %endif
    times 3 - ($ - %%insn_00403981) db 0
    %%insn_00403984:
    mov [ebp-0x13c],edx ; 00403984 8995C4FEFFFF
    %if ($ - %%insn_00403984) > 6
        %error "LONG_00403984"
    %endif
    times 6 - ($ - %%insn_00403984) db 0
    %%insn_0040398a:
    jmp short 0x40399b ; 0040398A EB0F
    %if ($ - %%insn_0040398a) > 2
        %error "LONG_0040398A"
    %endif
    times 2 - ($ - %%insn_0040398a) db 0
    %%insn_0040398c:
    mov eax,[ebp-0x10] ; 0040398C 8B45F0
    %if ($ - %%insn_0040398c) > 3
        %error "LONG_0040398C"
    %endif
    times 3 - ($ - %%insn_0040398c) db 0
    %%insn_0040398f:
    sub eax,0x30 ; 0040398F 83E830
    %if ($ - %%insn_0040398f) > 3
        %error "LONG_0040398F"
    %endif
    times 3 - ($ - %%insn_0040398f) db 0
    %%insn_00403992:
    imul eax,eax,0xa ; 00403992 6BC00A
    %if ($ - %%insn_00403992) > 3
        %error "LONG_00403992"
    %endif
    times 3 - ($ - %%insn_00403992) db 0
    %%insn_00403995:
    mov [ebp-0x13c],eax ; 00403995 8985C4FEFFFF
    %if ($ - %%insn_00403995) > 6
        %error "LONG_00403995"
    %endif
    times 6 - ($ - %%insn_00403995) db 0
    %%insn_0040399b:
    call 0x401449 ; 0040399B E8A9DAFFFF
    %if ($ - %%insn_0040399b) > 5
        %error "LONG_0040399B"
    %endif
    times 5 - ($ - %%insn_0040399b) db 0
    %%insn_004039a0:
    and eax,0xff ; 004039A0 25FF000000
    %if ($ - %%insn_004039a0) > 5
        %error "LONG_004039A0"
    %endif
    times 5 - ($ - %%insn_004039a0) db 0
    %%insn_004039a5:
    and eax,0x7f ; 004039A5 83E07F
    %if ($ - %%insn_004039a5) > 3
        %error "LONG_004039A5"
    %endif
    times 3 - ($ - %%insn_004039a5) db 0
    %%insn_004039a8:
    mov [ebp-0x10],eax ; 004039A8 8945F0
    %if ($ - %%insn_004039a8) > 3
        %error "LONG_004039A8"
    %endif
    times 3 - ($ - %%insn_004039a8) db 0
    %%insn_004039ab:
    cmp dword [ebp-0x10],0x23 ; 004039AB 837DF023
    %if ($ - %%insn_004039ab) > 4
        %error "LONG_004039AB"
    %endif
    times 4 - ($ - %%insn_004039ab) db 0
    %%insn_004039af:
    jnz short 0x4039df ; 004039AF 752E
    %if ($ - %%insn_004039af) > 2
        %error "LONG_004039AF"
    %endif
    times 2 - ($ - %%insn_004039af) db 0
    %%insn_004039b1:
    call 0x401449 ; 004039B1 E893DAFFFF
    %if ($ - %%insn_004039b1) > 5
        %error "LONG_004039B1"
    %endif
    times 5 - ($ - %%insn_004039b1) db 0
    %%insn_004039b6:
    and eax,0xff ; 004039B6 25FF000000
    %if ($ - %%insn_004039b6) > 5
        %error "LONG_004039B6"
    %endif
    times 5 - ($ - %%insn_004039b6) db 0
    %%insn_004039bb:
    and eax,0x7f ; 004039BB 83E07F
    %if ($ - %%insn_004039bb) > 3
        %error "LONG_004039BB"
    %endif
    times 3 - ($ - %%insn_004039bb) db 0
    %%insn_004039be:
    mov [ebp-0x10],eax ; 004039BE 8945F0
    %if ($ - %%insn_004039be) > 3
        %error "LONG_004039BE"
    %endif
    times 3 - ($ - %%insn_004039be) db 0
    %%insn_004039c1:
    mov ecx,[0x41f2b8] ; 004039C1 8B0DB8F24100
    %if ($ - %%insn_004039c1) > 6
        %error "LONG_004039C1"
    %endif
    times 6 - ($ - %%insn_004039c1) db 0
    %%insn_004039c7:
    add ecx,[ebp-0x10] ; 004039C7 034DF0
    %if ($ - %%insn_004039c7) > 3
        %error "LONG_004039C7"
    %endif
    times 3 - ($ - %%insn_004039c7) db 0
    db 0x33, 0xD2 ; 004039CA 33D2 | xor edx,edx | encoding preserved
    %%insn_004039cc:
    mov dl,[ecx-0x61] ; 004039CC 8A519F
    %if ($ - %%insn_004039cc) > 3
        %error "LONG_004039CC"
    %endif
    times 3 - ($ - %%insn_004039cc) db 0
    %%insn_004039cf:
    mov eax,[ebp-0x13c] ; 004039CF 8B85C4FEFFFF
    %if ($ - %%insn_004039cf) > 6
        %error "LONG_004039CF"
    %endif
    times 6 - ($ - %%insn_004039cf) db 0
    db 0x03, 0xC2 ; 004039D5 03C2 | add eax,edx | encoding preserved
    %%insn_004039d7:
    mov [ebp-0x13c],eax ; 004039D7 8985C4FEFFFF
    %if ($ - %%insn_004039d7) > 6
        %error "LONG_004039D7"
    %endif
    times 6 - ($ - %%insn_004039d7) db 0
    %%insn_004039dd:
    jmp short 0x4039f2 ; 004039DD EB13
    %if ($ - %%insn_004039dd) > 2
        %error "LONG_004039DD"
    %endif
    times 2 - ($ - %%insn_004039dd) db 0
    %%insn_004039df:
    mov ecx,[ebp-0x10] ; 004039DF 8B4DF0
    %if ($ - %%insn_004039df) > 3
        %error "LONG_004039DF"
    %endif
    times 3 - ($ - %%insn_004039df) db 0
    %%insn_004039e2:
    mov edx,[ebp-0x13c] ; 004039E2 8B95C4FEFFFF
    %if ($ - %%insn_004039e2) > 6
        %error "LONG_004039E2"
    %endif
    times 6 - ($ - %%insn_004039e2) db 0
    %%insn_004039e8:
    lea eax,[edx+ecx-0x30] ; 004039E8 8D440AD0
    %if ($ - %%insn_004039e8) > 4
        %error "LONG_004039E8"
    %endif
    times 4 - ($ - %%insn_004039e8) db 0
    %%insn_004039ec:
    mov [ebp-0x13c],eax ; 004039EC 8985C4FEFFFF
    %if ($ - %%insn_004039ec) > 6
        %error "LONG_004039EC"
    %endif
    times 6 - ($ - %%insn_004039ec) db 0
    %%insn_004039f2:
    mov ecx,[ebp-0x13c] ; 004039F2 8B8DC4FEFFFF
    %if ($ - %%insn_004039f2) > 6
        %error "LONG_004039F2"
    %endif
    times 6 - ($ - %%insn_004039f2) db 0
    %%insn_004039f8:
    add ecx,0x19 ; 004039F8 83C119
    %if ($ - %%insn_004039f8) > 3
        %error "LONG_004039F8"
    %endif
    times 3 - ($ - %%insn_004039f8) db 0
    %%insn_004039fb:
    mov [ebp-0x13c],ecx ; 004039FB 898DC4FEFFFF
    %if ($ - %%insn_004039fb) > 6
        %error "LONG_004039FB"
    %endif
    times 6 - ($ - %%insn_004039fb) db 0
    %%insn_00403a01:
    mov edx,[0x41f2b8] ; 00403A01 8B15B8F24100
    %if ($ - %%insn_00403a01) > 6
        %error "LONG_00403A01"
    %endif
    times 6 - ($ - %%insn_00403a01) db 0
    %%insn_00403a07:
    add edx,[ebp-0x134] ; 00403A07 0395CCFEFFFF
    %if ($ - %%insn_00403a07) > 6
        %error "LONG_00403A07"
    %endif
    times 6 - ($ - %%insn_00403a07) db 0
    db 0x33, 0xC0 ; 00403A0D 33C0 | xor eax,eax | encoding preserved
    %%insn_00403a0f:
    mov al,[edx] ; 00403A0F 8A02
    %if ($ - %%insn_00403a0f) > 2
        %error "LONG_00403A0F"
    %endif
    times 2 - ($ - %%insn_00403a0f) db 0
    %%insn_00403a11:
    mov [ebp-0x14],eax ; 00403A11 8945EC
    %if ($ - %%insn_00403a11) > 3
        %error "LONG_00403A11"
    %endif
    times 3 - ($ - %%insn_00403a11) db 0
    %%insn_00403a14:
    mov ecx,[0x41f2b8] ; 00403A14 8B0DB8F24100
    %if ($ - %%insn_00403a14) > 6
        %error "LONG_00403A14"
    %endif
    times 6 - ($ - %%insn_00403a14) db 0
    %%insn_00403a1a:
    add ecx,[ebp-0x134] ; 00403A1A 038DCCFEFFFF
    %if ($ - %%insn_00403a1a) > 6
        %error "LONG_00403A1A"
    %endif
    times 6 - ($ - %%insn_00403a1a) db 0
    %%insn_00403a20:
    mov edx,[0x41f2b8] ; 00403A20 8B15B8F24100
    %if ($ - %%insn_00403a20) > 6
        %error "LONG_00403A20"
    %endif
    times 6 - ($ - %%insn_00403a20) db 0
    %%insn_00403a26:
    add edx,[ebp-0x13c] ; 00403A26 0395C4FEFFFF
    %if ($ - %%insn_00403a26) > 6
        %error "LONG_00403A26"
    %endif
    times 6 - ($ - %%insn_00403a26) db 0
    %%insn_00403a2c:
    mov al,[edx] ; 00403A2C 8A02
    %if ($ - %%insn_00403a2c) > 2
        %error "LONG_00403A2C"
    %endif
    times 2 - ($ - %%insn_00403a2c) db 0
    %%insn_00403a2e:
    mov [ecx],al ; 00403A2E 8801
    %if ($ - %%insn_00403a2e) > 2
        %error "LONG_00403A2E"
    %endif
    times 2 - ($ - %%insn_00403a2e) db 0
    %%insn_00403a30:
    mov ecx,[0x41f2b8] ; 00403A30 8B0DB8F24100
    %if ($ - %%insn_00403a30) > 6
        %error "LONG_00403A30"
    %endif
    times 6 - ($ - %%insn_00403a30) db 0
    %%insn_00403a36:
    add ecx,[ebp-0x13c] ; 00403A36 038DC4FEFFFF
    %if ($ - %%insn_00403a36) > 6
        %error "LONG_00403A36"
    %endif
    times 6 - ($ - %%insn_00403a36) db 0
    %%insn_00403a3c:
    mov dl,[ebp-0x14] ; 00403A3C 8A55EC
    %if ($ - %%insn_00403a3c) > 3
        %error "LONG_00403A3C"
    %endif
    times 3 - ($ - %%insn_00403a3c) db 0
    %%insn_00403a3f:
    mov [ecx],dl ; 00403A3F 8811
    %if ($ - %%insn_00403a3f) > 2
        %error "LONG_00403A3F"
    %endif
    times 2 - ($ - %%insn_00403a3f) db 0
    %%insn_00403a41:
    jmp 0x4041db ; 00403A41 E995070000
    %if ($ - %%insn_00403a41) > 5
        %error "LONG_00403A41"
    %endif
    times 5 - ($ - %%insn_00403a41) db 0
    %%insn_00403a46:
    mov dword [ebp-0x134],0x0 ; 00403A46 C785CCFEFFFF00000000
    %if ($ - %%insn_00403a46) > 10
        %error "LONG_00403A46"
    %endif
    times 10 - ($ - %%insn_00403a46) db 0
    %%insn_00403a50:
    call 0x4015e6 ; 00403A50 E891DBFFFF
    %if ($ - %%insn_00403a50) > 5
        %error "LONG_00403A50"
    %endif
    times 5 - ($ - %%insn_00403a50) db 0
    %%insn_00403a55:
    and eax,0xff ; 00403A55 25FF000000
    %if ($ - %%insn_00403a55) > 5
        %error "LONG_00403A55"
    %endif
    times 5 - ($ - %%insn_00403a55) db 0
    %%insn_00403a5a:
    add eax,0x30 ; 00403A5A 83C030
    %if ($ - %%insn_00403a5a) > 3
        %error "LONG_00403A5A"
    %endif
    times 3 - ($ - %%insn_00403a5a) db 0
    %%insn_00403a5d:
    mov [ebp-0x140],al ; 00403A5D 8885C0FEFFFF
    %if ($ - %%insn_00403a5d) > 6
        %error "LONG_00403A5D"
    %endif
    times 6 - ($ - %%insn_00403a5d) db 0
    %%insn_00403a63:
    mov eax,[ebp-0x140] ; 00403A63 8B85C0FEFFFF
    %if ($ - %%insn_00403a63) > 6
        %error "LONG_00403A63"
    %endif
    times 6 - ($ - %%insn_00403a63) db 0
    %%insn_00403a69:
    and eax,0xff ; 00403A69 25FF000000
    %if ($ - %%insn_00403a69) > 5
        %error "LONG_00403A69"
    %endif
    times 5 - ($ - %%insn_00403a69) db 0
    %%insn_00403a6e:
    cmp eax,0x30 ; 00403A6E 83F830
    %if ($ - %%insn_00403a6e) > 3
        %error "LONG_00403A6E"
    %endif
    times 3 - ($ - %%insn_00403a6e) db 0
    %%insn_00403a71:
    jl short 0x403a84 ; 00403A71 7C11
    %if ($ - %%insn_00403a71) > 2
        %error "LONG_00403A71"
    %endif
    times 2 - ($ - %%insn_00403a71) db 0
    %%insn_00403a73:
    mov ecx,[ebp-0x140] ; 00403A73 8B8DC0FEFFFF
    %if ($ - %%insn_00403a73) > 6
        %error "LONG_00403A73"
    %endif
    times 6 - ($ - %%insn_00403a73) db 0
    %%insn_00403a79:
    and ecx,0xff ; 00403A79 81E1FF000000
    %if ($ - %%insn_00403a79) > 6
        %error "LONG_00403A79"
    %endif
    times 6 - ($ - %%insn_00403a79) db 0
    %%insn_00403a7f:
    cmp ecx,0x39 ; 00403A7F 83F939
    %if ($ - %%insn_00403a7f) > 3
        %error "LONG_00403A7F"
    %endif
    times 3 - ($ - %%insn_00403a7f) db 0
    %%insn_00403a82:
    jng short 0x403aac ; 00403A82 7E28
    %if ($ - %%insn_00403a82) > 2
        %error "LONG_00403A82"
    %endif
    times 2 - ($ - %%insn_00403a82) db 0
    %%insn_00403a84:
    mov edx,[ebp-0x140] ; 00403A84 8B95C0FEFFFF
    %if ($ - %%insn_00403a84) > 6
        %error "LONG_00403A84"
    %endif
    times 6 - ($ - %%insn_00403a84) db 0
    %%insn_00403a8a:
    and edx,0xff ; 00403A8A 81E2FF000000
    %if ($ - %%insn_00403a8a) > 6
        %error "LONG_00403A8A"
    %endif
    times 6 - ($ - %%insn_00403a8a) db 0
    %%insn_00403a90:
    cmp edx,0x41 ; 00403A90 83FA41
    %if ($ - %%insn_00403a90) > 3
        %error "LONG_00403A90"
    %endif
    times 3 - ($ - %%insn_00403a90) db 0
    %%insn_00403a93:
    jl short 0x403aa5 ; 00403A93 7C10
    %if ($ - %%insn_00403a93) > 2
        %error "LONG_00403A93"
    %endif
    times 2 - ($ - %%insn_00403a93) db 0
    %%insn_00403a95:
    mov eax,[ebp-0x140] ; 00403A95 8B85C0FEFFFF
    %if ($ - %%insn_00403a95) > 6
        %error "LONG_00403A95"
    %endif
    times 6 - ($ - %%insn_00403a95) db 0
    %%insn_00403a9b:
    and eax,0xff ; 00403A9B 25FF000000
    %if ($ - %%insn_00403a9b) > 5
        %error "LONG_00403A9B"
    %endif
    times 5 - ($ - %%insn_00403a9b) db 0
    %%insn_00403aa0:
    cmp eax,0x7a ; 00403AA0 83F87A
    %if ($ - %%insn_00403aa0) > 3
        %error "LONG_00403AA0"
    %endif
    times 3 - ($ - %%insn_00403aa0) db 0
    %%insn_00403aa3:
    jng short 0x403aac ; 00403AA3 7E07
    %if ($ - %%insn_00403aa3) > 2
        %error "LONG_00403AA3"
    %endif
    times 2 - ($ - %%insn_00403aa3) db 0
    %%insn_00403aa5:
    mov byte [ebp-0x140],0x20 ; 00403AA5 C685C0FEFFFF20
    %if ($ - %%insn_00403aa5) > 7
        %error "LONG_00403AA5"
    %endif
    times 7 - ($ - %%insn_00403aa5) db 0
    %%insn_00403aac:
    mov ecx,[ebp-0x134] ; 00403AAC 8B8DCCFEFFFF
    %if ($ - %%insn_00403aac) > 6
        %error "LONG_00403AAC"
    %endif
    times 6 - ($ - %%insn_00403aac) db 0
    %%insn_00403ab2:
    mov dl,[ebp-0x140] ; 00403AB2 8A95C0FEFFFF
    %if ($ - %%insn_00403ab2) > 6
        %error "LONG_00403AB2"
    %endif
    times 6 - ($ - %%insn_00403ab2) db 0
    %%insn_00403ab8:
    mov [ebp+ecx-0x118],dl ; 00403AB8 88940DE8FEFFFF
    %if ($ - %%insn_00403ab8) > 7
        %error "LONG_00403AB8"
    %endif
    times 7 - ($ - %%insn_00403ab8) db 0
    %%insn_00403abf:
    mov eax,[ebp-0x134] ; 00403ABF 8B85CCFEFFFF
    %if ($ - %%insn_00403abf) > 6
        %error "LONG_00403ABF"
    %endif
    times 6 - ($ - %%insn_00403abf) db 0
    %%insn_00403ac5:
    add eax,0x1 ; 00403AC5 83C001
    %if ($ - %%insn_00403ac5) > 3
        %error "LONG_00403AC5"
    %endif
    times 3 - ($ - %%insn_00403ac5) db 0
    %%insn_00403ac8:
    mov [ebp-0x134],eax ; 00403AC8 8985CCFEFFFF
    %if ($ - %%insn_00403ac8) > 6
        %error "LONG_00403AC8"
    %endif
    times 6 - ($ - %%insn_00403ac8) db 0
    %%insn_00403ace:
    mov ecx,[0x41f284] ; 00403ACE 8B0D84F24100
    %if ($ - %%insn_00403ace) > 6
        %error "LONG_00403ACE"
    %endif
    times 6 - ($ - %%insn_00403ace) db 0
    %%insn_00403ad4:
    add ecx,[0x41f300] ; 00403AD4 030D00F34100
    %if ($ - %%insn_00403ad4) > 6
        %error "LONG_00403AD4"
    %endif
    times 6 - ($ - %%insn_00403ad4) db 0
    db 0x33, 0xD2 ; 00403ADA 33D2 | xor edx,edx | encoding preserved
    %%insn_00403adc:
    mov dl,[ecx-0x1] ; 00403ADC 8A51FF
    %if ($ - %%insn_00403adc) > 3
        %error "LONG_00403ADC"
    %endif
    times 3 - ($ - %%insn_00403adc) db 0
    %%insn_00403adf:
    and edx,0x80 ; 00403ADF 81E280000000
    %if ($ - %%insn_00403adf) > 6
        %error "LONG_00403ADF"
    %endif
    times 6 - ($ - %%insn_00403adf) db 0
    %%insn_00403ae5:
    test edx,edx ; 00403AE5 85D2
    %if ($ - %%insn_00403ae5) > 2
        %error "LONG_00403AE5"
    %endif
    times 2 - ($ - %%insn_00403ae5) db 0
    %%insn_00403ae7:
    jz 0x403a50 ; 00403AE7 0F8463FFFFFF
    %if ($ - %%insn_00403ae7) > 6
        %error "LONG_00403AE7"
    %endif
    times 6 - ($ - %%insn_00403ae7) db 0
    %%insn_00403aed:
    mov eax,[ebp-0x134] ; 00403AED 8B85CCFEFFFF
    %if ($ - %%insn_00403aed) > 6
        %error "LONG_00403AED"
    %endif
    times 6 - ($ - %%insn_00403aed) db 0
    %%insn_00403af3:
    mov byte [ebp+eax-0x118],0x0 ; 00403AF3 C68405E8FEFFFF00
    %if ($ - %%insn_00403af3) > 8
        %error "LONG_00403AF3"
    %endif
    times 8 - ($ - %%insn_00403af3) db 0
    %%insn_00403afb:
    lea ecx,[ebp-0x118] ; 00403AFB 8D8DE8FEFFFF
    %if ($ - %%insn_00403afb) > 6
        %error "LONG_00403AFB"
    %endif
    times 6 - ($ - %%insn_00403afb) db 0
    %%insn_00403b01:
    push ecx ; 00403B01 51
    %if ($ - %%insn_00403b01) > 1
        %error "LONG_00403B01"
    %endif
    times 1 - ($ - %%insn_00403b01) db 0
    %%insn_00403b02:
    push dword 0xa ; 00403B02 6A0A
    %if ($ - %%insn_00403b02) > 2
        %error "LONG_00403B02"
    %endif
    times 2 - ($ - %%insn_00403b02) db 0
    %%insn_00403b04:
    push dword 0xa ; 00403B04 6A0A
    %if ($ - %%insn_00403b04) > 2
        %error "LONG_00403B04"
    %endif
    times 2 - ($ - %%insn_00403b04) db 0
    %%insn_00403b06:
    push dword 0xff ; 00403B06 68FF000000
    %if ($ - %%insn_00403b06) > 5
        %error "LONG_00403B06"
    %endif
    times 5 - ($ - %%insn_00403b06) db 0
    %%insn_00403b0b:
    push dword 0xbe ; 00403B0B 68BE000000
    %if ($ - %%insn_00403b0b) > 5
        %error "LONG_00403B0B"
    %endif
    times 5 - ($ - %%insn_00403b0b) db 0
    %%insn_00403b10:
    push dword 0xbe ; 00403B10 68BE000000
    %if ($ - %%insn_00403b10) > 5
        %error "LONG_00403B10"
    %endif
    times 5 - ($ - %%insn_00403b10) db 0
    %%insn_00403b15:
    call 0x40a430 ; 00403B15 E816690000
    %if ($ - %%insn_00403b15) > 5
        %error "LONG_00403B15"
    %endif
    times 5 - ($ - %%insn_00403b15) db 0
    %%insn_00403b1a:
    add esp,0x18 ; 00403B1A 83C418
    %if ($ - %%insn_00403b1a) > 3
        %error "LONG_00403B1A"
    %endif
    times 3 - ($ - %%insn_00403b1a) db 0
    %%insn_00403b1d:
    jmp 0x4041db ; 00403B1D E9B9060000
    %if ($ - %%insn_00403b1d) > 5
        %error "LONG_00403B1D"
    %endif
    times 5 - ($ - %%insn_00403b1d) db 0
    %%insn_00403b22:
    call 0x404ca2 ; 00403B22 E87B110000
    %if ($ - %%insn_00403b22) > 5
        %error "LONG_00403B22"
    %endif
    times 5 - ($ - %%insn_00403b22) db 0
    %%insn_00403b27:
    call 0x401449 ; 00403B27 E81DD9FFFF
    %if ($ - %%insn_00403b27) > 5
        %error "LONG_00403B27"
    %endif
    times 5 - ($ - %%insn_00403b27) db 0
    %%insn_00403b2c:
    mov [ebp-0x140],al ; 00403B2C 8885C0FEFFFF
    %if ($ - %%insn_00403b2c) > 6
        %error "LONG_00403B2C"
    %endif
    times 6 - ($ - %%insn_00403b2c) db 0
    %%insn_00403b32:
    jmp 0x4041db ; 00403B32 E9A4060000
    %if ($ - %%insn_00403b32) > 5
        %error "LONG_00403B32"
    %endif
    times 5 - ($ - %%insn_00403b32) db 0
    %%insn_00403b37:
    call 0x401473 ; 00403B37 E837D9FFFF
    %if ($ - %%insn_00403b37) > 5
        %error "LONG_00403B37"
    %endif
    times 5 - ($ - %%insn_00403b37) db 0
    %%insn_00403b3c:
    and eax,0xffff ; 00403B3C 25FFFF0000
    %if ($ - %%insn_00403b3c) > 5
        %error "LONG_00403B3C"
    %endif
    times 5 - ($ - %%insn_00403b3c) db 0
    %%insn_00403b41:
    mov [0x41f2e4],eax ; 00403B41 A3E4F24100
    %if ($ - %%insn_00403b41) > 5
        %error "LONG_00403B41"
    %endif
    times 5 - ($ - %%insn_00403b41) db 0
    %%insn_00403b46:
    jmp 0x4041db ; 00403B46 E990060000
    %if ($ - %%insn_00403b46) > 5
        %error "LONG_00403B46"
    %endif
    times 5 - ($ - %%insn_00403b46) db 0
    %%insn_00403b4b:
    call 0x401473 ; 00403B4B E823D9FFFF
    %if ($ - %%insn_00403b4b) > 5
        %error "LONG_00403B4B"
    %endif
    times 5 - ($ - %%insn_00403b4b) db 0
    %%insn_00403b50:
    and eax,0xffff ; 00403B50 25FFFF0000
    %if ($ - %%insn_00403b50) > 5
        %error "LONG_00403B50"
    %endif
    times 5 - ($ - %%insn_00403b50) db 0
    %%insn_00403b55:
    mov [0x41f2f4],eax ; 00403B55 A3F4F24100
    %if ($ - %%insn_00403b55) > 5
        %error "LONG_00403B55"
    %endif
    times 5 - ($ - %%insn_00403b55) db 0
    %%insn_00403b5a:
    jmp 0x4041db ; 00403B5A E97C060000
    %if ($ - %%insn_00403b5a) > 5
        %error "LONG_00403B5A"
    %endif
    times 5 - ($ - %%insn_00403b5a) db 0
; Opcode 3Ch: probes st7g.0 through st7g.9 and stores slot flags plus v[104h] count.
grv_check_valid_saves:
    %%insn_00403b5f:
    mov dword [ebp-0xc],0x0 ; 00403B5F C745F400000000
    %if ($ - %%insn_00403b5f) > 7
        %error "LONG_00403B5F"
    %endif
    times 7 - ($ - %%insn_00403b5f) db 0
    %%insn_00403b66:
    mov dword [ebp-0x134],0x0 ; 00403B66 C785CCFEFFFF00000000
    %if ($ - %%insn_00403b66) > 10
        %error "LONG_00403B66"
    %endif
    times 10 - ($ - %%insn_00403b66) db 0
    %%insn_00403b70:
    jmp short 0x403b81 ; 00403B70 EB0F
    %if ($ - %%insn_00403b70) > 2
        %error "LONG_00403B70"
    %endif
    times 2 - ($ - %%insn_00403b70) db 0
    %%insn_00403b72:
    mov edx,[ebp-0x134] ; 00403B72 8B95CCFEFFFF
    %if ($ - %%insn_00403b72) > 6
        %error "LONG_00403B72"
    %endif
    times 6 - ($ - %%insn_00403b72) db 0
    %%insn_00403b78:
    add edx,0x1 ; 00403B78 83C201
    %if ($ - %%insn_00403b78) > 3
        %error "LONG_00403B78"
    %endif
    times 3 - ($ - %%insn_00403b78) db 0
    %%insn_00403b7b:
    mov [ebp-0x134],edx ; 00403B7B 8995CCFEFFFF
    %if ($ - %%insn_00403b7b) > 6
        %error "LONG_00403B7B"
    %endif
    times 6 - ($ - %%insn_00403b7b) db 0
    %%insn_00403b81:
    cmp dword [ebp-0x134],0xa ; 00403B81 83BDCCFEFFFF0A
    %if ($ - %%insn_00403b81) > 7
        %error "LONG_00403B81"
    %endif
    times 7 - ($ - %%insn_00403b81) db 0
    %%insn_00403b88:
    jnl short 0x403c03 ; 00403B88 7D79
    %if ($ - %%insn_00403b88) > 2
        %error "LONG_00403B88"
    %endif
    times 2 - ($ - %%insn_00403b88) db 0
    %%insn_00403b8a:
    mov eax,[ebp-0x134] ; 00403B8A 8B85CCFEFFFF
    %if ($ - %%insn_00403b8a) > 6
        %error "LONG_00403B8A"
    %endif
    times 6 - ($ - %%insn_00403b8a) db 0
    %%insn_00403b90:
    push eax ; 00403B90 50
    %if ($ - %%insn_00403b90) > 1
        %error "LONG_00403B90"
    %endif
    times 1 - ($ - %%insn_00403b90) db 0
    %%insn_00403b91:
    push dword 0x41b1bc ; 00403B91 68BCB14100
    %if ($ - %%insn_00403b91) > 5
        %error "LONG_00403B91"
    %endif
    times 5 - ($ - %%insn_00403b91) db 0
    %%insn_00403b96:
    lea ecx,[ebp-0x118] ; 00403B96 8D8DE8FEFFFF
    %if ($ - %%insn_00403b96) > 6
        %error "LONG_00403B96"
    %endif
    times 6 - ($ - %%insn_00403b96) db 0
    %%insn_00403b9c:
    push ecx ; 00403B9C 51
    %if ($ - %%insn_00403b9c) > 1
        %error "LONG_00403B9C"
    %endif
    times 1 - ($ - %%insn_00403b9c) db 0
    %%insn_00403b9d:
    call 0x40cd50 ; 00403B9D E8AE910000
    %if ($ - %%insn_00403b9d) > 5
        %error "LONG_00403B9D"
    %endif
    times 5 - ($ - %%insn_00403b9d) db 0
    %%insn_00403ba2:
    add esp,0xc ; 00403BA2 83C40C
    %if ($ - %%insn_00403ba2) > 3
        %error "LONG_00403BA2"
    %endif
    times 3 - ($ - %%insn_00403ba2) db 0
    %%insn_00403ba5:
    push dword 0x41b1c4 ; 00403BA5 68C4B14100
    %if ($ - %%insn_00403ba5) > 5
        %error "LONG_00403BA5"
    %endif
    times 5 - ($ - %%insn_00403ba5) db 0
    %%insn_00403baa:
    lea edx,[ebp-0x118] ; 00403BAA 8D95E8FEFFFF
    %if ($ - %%insn_00403baa) > 6
        %error "LONG_00403BAA"
    %endif
    times 6 - ($ - %%insn_00403baa) db 0
    %%insn_00403bb0:
    push edx ; 00403BB0 52
    %if ($ - %%insn_00403bb0) > 1
        %error "LONG_00403BB0"
    %endif
    times 1 - ($ - %%insn_00403bb0) db 0
    %%insn_00403bb1:
    call 0x40d150 ; 00403BB1 E89A950000
    %if ($ - %%insn_00403bb1) > 5
        %error "LONG_00403BB1"
    %endif
    times 5 - ($ - %%insn_00403bb1) db 0
    %%insn_00403bb6:
    add esp,0x8 ; 00403BB6 83C408
    %if ($ - %%insn_00403bb6) > 3
        %error "LONG_00403BB6"
    %endif
    times 3 - ($ - %%insn_00403bb6) db 0
    %%insn_00403bb9:
    mov [ebp-0x144],eax ; 00403BB9 8985BCFEFFFF
    %if ($ - %%insn_00403bb9) > 6
        %error "LONG_00403BB9"
    %endif
    times 6 - ($ - %%insn_00403bb9) db 0
    %%insn_00403bbf:
    cmp dword [ebp-0x144],0x0 ; 00403BBF 83BDBCFEFFFF00
    %if ($ - %%insn_00403bbf) > 7
        %error "LONG_00403BBF"
    %endif
    times 7 - ($ - %%insn_00403bbf) db 0
    %%insn_00403bc6:
    jz short 0x403bf0 ; 00403BC6 7428
    %if ($ - %%insn_00403bc6) > 2
        %error "LONG_00403BC6"
    %endif
    times 2 - ($ - %%insn_00403bc6) db 0
    %%insn_00403bc8:
    mov eax,[0x41f2b8] ; 00403BC8 A1B8F24100
    %if ($ - %%insn_00403bc8) > 5
        %error "LONG_00403BC8"
    %endif
    times 5 - ($ - %%insn_00403bc8) db 0
    %%insn_00403bcd:
    add eax,[ebp-0x134] ; 00403BCD 0385CCFEFFFF
    %if ($ - %%insn_00403bcd) > 6
        %error "LONG_00403BCD"
    %endif
    times 6 - ($ - %%insn_00403bcd) db 0
    %%insn_00403bd3:
    mov byte [eax],0x1 ; 00403BD3 C60001
    %if ($ - %%insn_00403bd3) > 3
        %error "LONG_00403BD3"
    %endif
    times 3 - ($ - %%insn_00403bd3) db 0
    %%insn_00403bd6:
    mov ecx,[ebp-0xc] ; 00403BD6 8B4DF4
    %if ($ - %%insn_00403bd6) > 3
        %error "LONG_00403BD6"
    %endif
    times 3 - ($ - %%insn_00403bd6) db 0
    %%insn_00403bd9:
    add ecx,0x1 ; 00403BD9 83C101
    %if ($ - %%insn_00403bd9) > 3
        %error "LONG_00403BD9"
    %endif
    times 3 - ($ - %%insn_00403bd9) db 0
    %%insn_00403bdc:
    mov [ebp-0xc],ecx ; 00403BDC 894DF4
    %if ($ - %%insn_00403bdc) > 3
        %error "LONG_00403BDC"
    %endif
    times 3 - ($ - %%insn_00403bdc) db 0
    %%insn_00403bdf:
    mov edx,[ebp-0x144] ; 00403BDF 8B95BCFEFFFF
    %if ($ - %%insn_00403bdf) > 6
        %error "LONG_00403BDF"
    %endif
    times 6 - ($ - %%insn_00403bdf) db 0
    %%insn_00403be5:
    push edx ; 00403BE5 52
    %if ($ - %%insn_00403be5) > 1
        %error "LONG_00403BE5"
    %endif
    times 1 - ($ - %%insn_00403be5) db 0
    %%insn_00403be6:
    call 0x40ced0 ; 00403BE6 E8E5920000
    %if ($ - %%insn_00403be6) > 5
        %error "LONG_00403BE6"
    %endif
    times 5 - ($ - %%insn_00403be6) db 0
    %%insn_00403beb:
    add esp,0x4 ; 00403BEB 83C404
    %if ($ - %%insn_00403beb) > 3
        %error "LONG_00403BEB"
    %endif
    times 3 - ($ - %%insn_00403beb) db 0
    %%insn_00403bee:
    jmp short 0x403bfe ; 00403BEE EB0E
    %if ($ - %%insn_00403bee) > 2
        %error "LONG_00403BEE"
    %endif
    times 2 - ($ - %%insn_00403bee) db 0
    %%insn_00403bf0:
    mov eax,[0x41f2b8] ; 00403BF0 A1B8F24100
    %if ($ - %%insn_00403bf0) > 5
        %error "LONG_00403BF0"
    %endif
    times 5 - ($ - %%insn_00403bf0) db 0
    %%insn_00403bf5:
    add eax,[ebp-0x134] ; 00403BF5 0385CCFEFFFF
    %if ($ - %%insn_00403bf5) > 6
        %error "LONG_00403BF5"
    %endif
    times 6 - ($ - %%insn_00403bf5) db 0
    %%insn_00403bfb:
    mov byte [eax],0x0 ; 00403BFB C60000
    %if ($ - %%insn_00403bfb) > 3
        %error "LONG_00403BFB"
    %endif
    times 3 - ($ - %%insn_00403bfb) db 0
    %%insn_00403bfe:
    jmp 0x403b72 ; 00403BFE E96FFFFFFF
    %if ($ - %%insn_00403bfe) > 5
        %error "LONG_00403BFE"
    %endif
    times 5 - ($ - %%insn_00403bfe) db 0
    %%insn_00403c03:
    mov ecx,[0x41f2b8] ; 00403C03 8B0DB8F24100
    %if ($ - %%insn_00403c03) > 6
        %error "LONG_00403C03"
    %endif
    times 6 - ($ - %%insn_00403c03) db 0
    %%insn_00403c09:
    mov dl,[ebp-0xc] ; 00403C09 8A55F4
    %if ($ - %%insn_00403c09) > 3
        %error "LONG_00403C09"
    %endif
    times 3 - ($ - %%insn_00403c09) db 0
    %%insn_00403c0c:
    mov [ecx+0x104],dl ; 00403C0C 889104010000
    %if ($ - %%insn_00403c0c) > 6
        %error "LONG_00403C0C"
    %endif
    times 6 - ($ - %%insn_00403c0c) db 0
    %%insn_00403c12:
    jmp 0x4041db ; 00403C12 E9C4050000
    %if ($ - %%insn_00403c12) > 5
        %error "LONG_00403C12"
    %endif
    times 5 - ($ - %%insn_00403c12) db 0
    %%insn_00403c17:
    mov dword [ebp-0x134],0x0 ; 00403C17 C785CCFEFFFF00000000
    %if ($ - %%insn_00403c17) > 10
        %error "LONG_00403C17"
    %endif
    times 10 - ($ - %%insn_00403c17) db 0
    %%insn_00403c21:
    jmp short 0x403c32 ; 00403C21 EB0F
    %if ($ - %%insn_00403c21) > 2
        %error "LONG_00403C21"
    %endif
    times 2 - ($ - %%insn_00403c21) db 0
    %%insn_00403c23:
    mov eax,[ebp-0x134] ; 00403C23 8B85CCFEFFFF
    %if ($ - %%insn_00403c23) > 6
        %error "LONG_00403C23"
    %endif
    times 6 - ($ - %%insn_00403c23) db 0
    %%insn_00403c29:
    add eax,0x1 ; 00403C29 83C001
    %if ($ - %%insn_00403c29) > 3
        %error "LONG_00403C29"
    %endif
    times 3 - ($ - %%insn_00403c29) db 0
    %%insn_00403c2c:
    mov [ebp-0x134],eax ; 00403C2C 8985CCFEFFFF
    %if ($ - %%insn_00403c2c) > 6
        %error "LONG_00403C2C"
    %endif
    times 6 - ($ - %%insn_00403c2c) db 0
    %%insn_00403c32:
    cmp dword [ebp-0x134],0x100 ; 00403C32 81BDCCFEFFFF00010000
    %if ($ - %%insn_00403c32) > 10
        %error "LONG_00403C32"
    %endif
    times 10 - ($ - %%insn_00403c32) db 0
    %%insn_00403c3c:
    jnl short 0x403c4f ; 00403C3C 7D11
    %if ($ - %%insn_00403c3c) > 2
        %error "LONG_00403C3C"
    %endif
    times 2 - ($ - %%insn_00403c3c) db 0
    %%insn_00403c3e:
    mov ecx,[0x41f2b8] ; 00403C3E 8B0DB8F24100
    %if ($ - %%insn_00403c3e) > 6
        %error "LONG_00403C3E"
    %endif
    times 6 - ($ - %%insn_00403c3e) db 0
    %%insn_00403c44:
    add ecx,[ebp-0x134] ; 00403C44 038DCCFEFFFF
    %if ($ - %%insn_00403c44) > 6
        %error "LONG_00403C44"
    %endif
    times 6 - ($ - %%insn_00403c44) db 0
    %%insn_00403c4a:
    mov byte [ecx],0x0 ; 00403C4A C60100
    %if ($ - %%insn_00403c4a) > 3
        %error "LONG_00403C4A"
    %endif
    times 3 - ($ - %%insn_00403c4a) db 0
    %%insn_00403c4d:
    jmp short 0x403c23 ; 00403C4D EBD4
    %if ($ - %%insn_00403c4d) > 2
        %error "LONG_00403C4D"
    %endif
    times 2 - ($ - %%insn_00403c4d) db 0
    %%insn_00403c4f:
    jmp 0x4041db ; 00403C4F E987050000
    %if ($ - %%insn_00403c4f) > 5
        %error "LONG_00403C4F"
    %endif
    times 5 - ($ - %%insn_00403c4f) db 0
    %%insn_00403c54:
    mov dx,[ebp-0x124] ; 00403C54 668B95DCFEFFFF
    %if ($ - %%insn_00403c54) > 7
        %error "LONG_00403C54"
    %endif
    times 7 - ($ - %%insn_00403c54) db 0
    %%insn_00403c5b:
    push edx ; 00403C5B 52
    %if ($ - %%insn_00403c5b) > 1
        %error "LONG_00403C5B"
    %endif
    times 1 - ($ - %%insn_00403c5b) db 0
    %%insn_00403c5c:
    call 0x4017ee ; 00403C5C E88DDBFFFF
    %if ($ - %%insn_00403c5c) > 5
        %error "LONG_00403C5C"
    %endif
    times 5 - ($ - %%insn_00403c5c) db 0
    %%insn_00403c61:
    add esp,0x4 ; 00403C61 83C404
    %if ($ - %%insn_00403c61) > 3
        %error "LONG_00403C61"
    %endif
    times 3 - ($ - %%insn_00403c61) db 0
    %%insn_00403c64:
    mov [ebp-0x12c],ax ; 00403C64 668985D4FEFFFF
    %if ($ - %%insn_00403c64) > 7
        %error "LONG_00403C64"
    %endif
    times 7 - ($ - %%insn_00403c64) db 0
    %%insn_00403c6b:
    call 0x401449 ; 00403C6B E8D9D7FFFF
    %if ($ - %%insn_00403c6b) > 5
        %error "LONG_00403C6B"
    %endif
    times 5 - ($ - %%insn_00403c6b) db 0
    %%insn_00403c70:
    mov [ebp-0x140],al ; 00403C70 8885C0FEFFFF
    %if ($ - %%insn_00403c70) > 6
        %error "LONG_00403C70"
    %endif
    times 6 - ($ - %%insn_00403c70) db 0
    %%insn_00403c76:
    mov eax,[ebp-0x12c] ; 00403C76 8B85D4FEFFFF
    %if ($ - %%insn_00403c76) > 6
        %error "LONG_00403C76"
    %endif
    times 6 - ($ - %%insn_00403c76) db 0
    %%insn_00403c7c:
    and eax,0xffff ; 00403C7C 25FFFF0000
    %if ($ - %%insn_00403c7c) > 5
        %error "LONG_00403C7C"
    %endif
    times 5 - ($ - %%insn_00403c7c) db 0
    %%insn_00403c81:
    mov ecx,[0x41f2b8] ; 00403C81 8B0DB8F24100
    %if ($ - %%insn_00403c81) > 6
        %error "LONG_00403C81"
    %endif
    times 6 - ($ - %%insn_00403c81) db 0
    db 0x33, 0xD2 ; 00403C87 33D2 | xor edx,edx | encoding preserved
    %%insn_00403c89:
    mov dl,[ecx+eax] ; 00403C89 8A1401
    %if ($ - %%insn_00403c89) > 3
        %error "LONG_00403C89"
    %endif
    times 3 - ($ - %%insn_00403c89) db 0
    %%insn_00403c8c:
    mov eax,[ebp-0x140] ; 00403C8C 8B85C0FEFFFF
    %if ($ - %%insn_00403c8c) > 6
        %error "LONG_00403C8C"
    %endif
    times 6 - ($ - %%insn_00403c8c) db 0
    %%insn_00403c92:
    and eax,0xff ; 00403C92 25FF000000
    %if ($ - %%insn_00403c92) > 5
        %error "LONG_00403C92"
    %endif
    times 5 - ($ - %%insn_00403c92) db 0
    db 0x3B, 0xD0 ; 00403C97 3BD0 | cmp edx,eax | encoding preserved
    %%insn_00403c99:
    jl short 0x403ccd ; 00403C99 7C32
    %if ($ - %%insn_00403c99) > 2
        %error "LONG_00403C99"
    %endif
    times 2 - ($ - %%insn_00403c99) db 0
    %%insn_00403c9b:
    mov ecx,[ebp-0x12c] ; 00403C9B 8B8DD4FEFFFF
    %if ($ - %%insn_00403c9b) > 6
        %error "LONG_00403C9B"
    %endif
    times 6 - ($ - %%insn_00403c9b) db 0
    %%insn_00403ca1:
    and ecx,0xffff ; 00403CA1 81E1FFFF0000
    %if ($ - %%insn_00403ca1) > 6
        %error "LONG_00403CA1"
    %endif
    times 6 - ($ - %%insn_00403ca1) db 0
    %%insn_00403ca7:
    mov edx,[0x41f2b8] ; 00403CA7 8B15B8F24100
    %if ($ - %%insn_00403ca7) > 6
        %error "LONG_00403CA7"
    %endif
    times 6 - ($ - %%insn_00403ca7) db 0
    %%insn_00403cad:
    mov al,[edx+ecx] ; 00403CAD 8A040A
    %if ($ - %%insn_00403cad) > 3
        %error "LONG_00403CAD"
    %endif
    times 3 - ($ - %%insn_00403cad) db 0
    %%insn_00403cb0:
    sub al,[ebp-0x140] ; 00403CB0 2A85C0FEFFFF
    %if ($ - %%insn_00403cb0) > 6
        %error "LONG_00403CB0"
    %endif
    times 6 - ($ - %%insn_00403cb0) db 0
    %%insn_00403cb6:
    mov ecx,[ebp-0x12c] ; 00403CB6 8B8DD4FEFFFF
    %if ($ - %%insn_00403cb6) > 6
        %error "LONG_00403CB6"
    %endif
    times 6 - ($ - %%insn_00403cb6) db 0
    %%insn_00403cbc:
    and ecx,0xffff ; 00403CBC 81E1FFFF0000
    %if ($ - %%insn_00403cbc) > 6
        %error "LONG_00403CBC"
    %endif
    times 6 - ($ - %%insn_00403cbc) db 0
    %%insn_00403cc2:
    mov edx,[0x41f2b8] ; 00403CC2 8B15B8F24100
    %if ($ - %%insn_00403cc2) > 6
        %error "LONG_00403CC2"
    %endif
    times 6 - ($ - %%insn_00403cc2) db 0
    %%insn_00403cc8:
    mov [edx+ecx],al ; 00403CC8 88040A
    %if ($ - %%insn_00403cc8) > 3
        %error "LONG_00403CC8"
    %endif
    times 3 - ($ - %%insn_00403cc8) db 0
    %%insn_00403ccb:
    jmp short 0x403c76 ; 00403CCB EBA9
    %if ($ - %%insn_00403ccb) > 2
        %error "LONG_00403CCB"
    %endif
    times 2 - ($ - %%insn_00403ccb) db 0
    %%insn_00403ccd:
    jmp 0x4041db ; 00403CCD E909050000
    %if ($ - %%insn_00403ccd) > 5
        %error "LONG_00403CCD"
    %endif
    times 5 - ($ - %%insn_00403ccd) db 0
    %%insn_00403cd2:
    mov dword [ebp-0x134],0x0 ; 00403CD2 C785CCFEFFFF00000000
    %if ($ - %%insn_00403cd2) > 10
        %error "LONG_00403CD2"
    %endif
    times 10 - ($ - %%insn_00403cd2) db 0
    %%insn_00403cdc:
    mov eax,[0x41f284] ; 00403CDC A184F24100
    %if ($ - %%insn_00403cdc) > 5
        %error "LONG_00403CDC"
    %endif
    times 5 - ($ - %%insn_00403cdc) db 0
    %%insn_00403ce1:
    add eax,[0x41f300] ; 00403CE1 030500F34100
    %if ($ - %%insn_00403ce1) > 6
        %error "LONG_00403CE1"
    %endif
    times 6 - ($ - %%insn_00403ce1) db 0
    %%insn_00403ce7:
    mov ecx,[ebp-0x134] ; 00403CE7 8B8DCCFEFFFF
    %if ($ - %%insn_00403ce7) > 6
        %error "LONG_00403CE7"
    %endif
    times 6 - ($ - %%insn_00403ce7) db 0
    %%insn_00403ced:
    mov dl,[eax] ; 00403CED 8A10
    %if ($ - %%insn_00403ced) > 2
        %error "LONG_00403CED"
    %endif
    times 2 - ($ - %%insn_00403ced) db 0
    %%insn_00403cef:
    mov [ebp+ecx-0x118],dl ; 00403CEF 88940DE8FEFFFF
    %if ($ - %%insn_00403cef) > 7
        %error "LONG_00403CEF"
    %endif
    times 7 - ($ - %%insn_00403cef) db 0
    %%insn_00403cf6:
    mov eax,[ebp-0x134] ; 00403CF6 8B85CCFEFFFF
    %if ($ - %%insn_00403cf6) > 6
        %error "LONG_00403CF6"
    %endif
    times 6 - ($ - %%insn_00403cf6) db 0
    %%insn_00403cfc:
    add eax,0x1 ; 00403CFC 83C001
    %if ($ - %%insn_00403cfc) > 3
        %error "LONG_00403CFC"
    %endif
    times 3 - ($ - %%insn_00403cfc) db 0
    %%insn_00403cff:
    mov [ebp-0x134],eax ; 00403CFF 8985CCFEFFFF
    %if ($ - %%insn_00403cff) > 6
        %error "LONG_00403CFF"
    %endif
    times 6 - ($ - %%insn_00403cff) db 0
    %%insn_00403d05:
    mov ecx,[0x41f284] ; 00403D05 8B0D84F24100
    %if ($ - %%insn_00403d05) > 6
        %error "LONG_00403D05"
    %endif
    times 6 - ($ - %%insn_00403d05) db 0
    %%insn_00403d0b:
    add ecx,[0x41f300] ; 00403D0B 030D00F34100
    %if ($ - %%insn_00403d0b) > 6
        %error "LONG_00403D0B"
    %endif
    times 6 - ($ - %%insn_00403d0b) db 0
    db 0x33, 0xD2 ; 00403D11 33D2 | xor edx,edx | encoding preserved
    %%insn_00403d13:
    mov dl,[ecx] ; 00403D13 8A11
    %if ($ - %%insn_00403d13) > 2
        %error "LONG_00403D13"
    %endif
    times 2 - ($ - %%insn_00403d13) db 0
    %%insn_00403d15:
    mov eax,[0x41f300] ; 00403D15 A100F34100
    %if ($ - %%insn_00403d15) > 5
        %error "LONG_00403D15"
    %endif
    times 5 - ($ - %%insn_00403d15) db 0
    %%insn_00403d1a:
    add eax,0x1 ; 00403D1A 83C001
    %if ($ - %%insn_00403d1a) > 3
        %error "LONG_00403D1A"
    %endif
    times 3 - ($ - %%insn_00403d1a) db 0
    %%insn_00403d1d:
    mov [0x41f300],eax ; 00403D1D A300F34100
    %if ($ - %%insn_00403d1d) > 5
        %error "LONG_00403D1D"
    %endif
    times 5 - ($ - %%insn_00403d1d) db 0
    %%insn_00403d22:
    test edx,edx ; 00403D22 85D2
    %if ($ - %%insn_00403d22) > 2
        %error "LONG_00403D22"
    %endif
    times 2 - ($ - %%insn_00403d22) db 0
    %%insn_00403d24:
    jnz short 0x403cdc ; 00403D24 75B6
    %if ($ - %%insn_00403d24) > 2
        %error "LONG_00403D24"
    %endif
    times 2 - ($ - %%insn_00403d24) db 0
    %%insn_00403d26:
    mov ecx,[0x41f300] ; 00403D26 8B0D00F34100
    %if ($ - %%insn_00403d26) > 6
        %error "LONG_00403D26"
    %endif
    times 6 - ($ - %%insn_00403d26) db 0
    %%insn_00403d2c:
    mov [0x41f2b4],ecx ; 00403D2C 890DB4F24100
    %if ($ - %%insn_00403d2c) > 6
        %error "LONG_00403D2C"
    %endif
    times 6 - ($ - %%insn_00403d2c) db 0
    %%insn_00403d32:
    mov edx,[0x41f284] ; 00403D32 8B1584F24100
    %if ($ - %%insn_00403d32) > 6
        %error "LONG_00403D32"
    %endif
    times 6 - ($ - %%insn_00403d32) db 0
    %%insn_00403d38:
    mov [0x41f2c4],edx ; 00403D38 8915C4F24100
    %if ($ - %%insn_00403d38) > 6
        %error "LONG_00403D38"
    %endif
    times 6 - ($ - %%insn_00403d38) db 0
    %%insn_00403d3e:
    lea eax,[ebp-0x118] ; 00403D3E 8D85E8FEFFFF
    %if ($ - %%insn_00403d3e) > 6
        %error "LONG_00403D3E"
    %endif
    times 6 - ($ - %%insn_00403d3e) db 0
    %%insn_00403d44:
    push eax ; 00403D44 50
    %if ($ - %%insn_00403d44) > 1
        %error "LONG_00403D44"
    %endif
    times 1 - ($ - %%insn_00403d44) db 0
    %%insn_00403d45:
    call 0x4011a3 ; 00403D45 E859D4FFFF
    %if ($ - %%insn_00403d45) > 5
        %error "LONG_00403D45"
    %endif
    times 5 - ($ - %%insn_00403d45) db 0
    %%insn_00403d4a:
    add esp,0x4 ; 00403D4A 83C404
    %if ($ - %%insn_00403d4a) > 3
        %error "LONG_00403D4A"
    %endif
    times 3 - ($ - %%insn_00403d4a) db 0
    %%insn_00403d4d:
    mov dword [0x41f300],0x0 ; 00403D4D C70500F3410000000000
    %if ($ - %%insn_00403d4d) > 10
        %error "LONG_00403D4D"
    %endif
    times 10 - ($ - %%insn_00403d4d) db 0
    %%insn_00403d57:
    mov cx,[0x41f2a8] ; 00403D57 668B0DA8F24100
    %if ($ - %%insn_00403d57) > 7
        %error "LONG_00403D57"
    %endif
    times 7 - ($ - %%insn_00403d57) db 0
    %%insn_00403d5e:
    mov [0x41f28c],cx ; 00403D5E 66890D8CF24100
    %if ($ - %%insn_00403d5e) > 7
        %error "LONG_00403D5E"
    %endif
    times 7 - ($ - %%insn_00403d5e) db 0
    %%insn_00403d65:
    push dword 0x180 ; 00403D65 6880010000
    %if ($ - %%insn_00403d65) > 5
        %error "LONG_00403D65"
    %endif
    times 5 - ($ - %%insn_00403d65) db 0
    %%insn_00403d6a:
    mov edx,[0x41f2b8] ; 00403D6A 8B15B8F24100
    %if ($ - %%insn_00403d6a) > 6
        %error "LONG_00403D6A"
    %endif
    times 6 - ($ - %%insn_00403d6a) db 0
    %%insn_00403d70:
    add edx,0x107 ; 00403D70 81C207010000
    %if ($ - %%insn_00403d70) > 6
        %error "LONG_00403D70"
    %endif
    times 6 - ($ - %%insn_00403d70) db 0
    %%insn_00403d76:
    push edx ; 00403D76 52
    %if ($ - %%insn_00403d76) > 1
        %error "LONG_00403D76"
    %endif
    times 1 - ($ - %%insn_00403d76) db 0
    %%insn_00403d77:
    mov eax,[0x41f2ec] ; 00403D77 A1ECF24100
    %if ($ - %%insn_00403d77) > 5
        %error "LONG_00403D77"
    %endif
    times 5 - ($ - %%insn_00403d77) db 0
    %%insn_00403d7c:
    push eax ; 00403D7C 50
    %if ($ - %%insn_00403d7c) > 1
        %error "LONG_00403D7C"
    %endif
    times 1 - ($ - %%insn_00403d7c) db 0
    %%insn_00403d7d:
    call 0x40ca10 ; 00403D7D E88E8C0000
    %if ($ - %%insn_00403d7d) > 5
        %error "LONG_00403D7D"
    %endif
    times 5 - ($ - %%insn_00403d7d) db 0
    %%insn_00403d82:
    add esp,0xc ; 00403D82 83C40C
    %if ($ - %%insn_00403d82) > 3
        %error "LONG_00403D82"
    %endif
    times 3 - ($ - %%insn_00403d82) db 0
    %%insn_00403d85:
    push dword 0x41b1c8 ; 00403D85 68C8B14100
    %if ($ - %%insn_00403d85) > 5
        %error "LONG_00403D85"
    %endif
    times 5 - ($ - %%insn_00403d85) db 0
    %%insn_00403d8a:
    lea ecx,[ebp-0x118] ; 00403D8A 8D8DE8FEFFFF
    %if ($ - %%insn_00403d8a) > 6
        %error "LONG_00403D8A"
    %endif
    times 6 - ($ - %%insn_00403d8a) db 0
    %%insn_00403d90:
    push ecx ; 00403D90 51
    %if ($ - %%insn_00403d90) > 1
        %error "LONG_00403D90"
    %endif
    times 1 - ($ - %%insn_00403d90) db 0
    %%insn_00403d91:
    call 0x40d2f0 ; 00403D91 E85A950000
    %if ($ - %%insn_00403d91) > 5
        %error "LONG_00403D91"
    %endif
    times 5 - ($ - %%insn_00403d91) db 0
    %%insn_00403d96:
    add esp,0x8 ; 00403D96 83C408
    %if ($ - %%insn_00403d96) > 3
        %error "LONG_00403D96"
    %endif
    times 3 - ($ - %%insn_00403d96) db 0
    %%insn_00403d99:
    test eax,eax ; 00403D99 85C0
    %if ($ - %%insn_00403d99) > 2
        %error "LONG_00403D99"
    %endif
    times 2 - ($ - %%insn_00403d99) db 0
    %%insn_00403d9b:
    jnz short 0x403da6 ; 00403D9B 7509
    %if ($ - %%insn_00403d9b) > 2
        %error "LONG_00403D9B"
    %endif
    times 2 - ($ - %%insn_00403d9b) db 0
    %%insn_00403d9d:
    mov word [0x41f310],0x1 ; 00403D9D 66C70510F341000100
    %if ($ - %%insn_00403d9d) > 9
        %error "LONG_00403D9D"
    %endif
    times 9 - ($ - %%insn_00403d9d) db 0
    %%insn_00403da6:
    jmp 0x4041db ; 00403DA6 E930040000
    %if ($ - %%insn_00403da6) > 5
        %error "LONG_00403DA6"
    %endif
    times 5 - ($ - %%insn_00403da6) db 0
    %%insn_00403dab:
    call 0x401449 ; 00403DAB E899D6FFFF
    %if ($ - %%insn_00403dab) > 5
        %error "LONG_00403DAB"
    %endif
    times 5 - ($ - %%insn_00403dab) db 0
    %%insn_00403db0:
    mov edx,[0x41f2b8] ; 00403DB0 8B15B8F24100
    %if ($ - %%insn_00403db0) > 6
        %error "LONG_00403DB0"
    %endif
    times 6 - ($ - %%insn_00403db0) db 0
    %%insn_00403db6:
    mov [edx+0x102],al ; 00403DB6 888202010000
    %if ($ - %%insn_00403db6) > 6
        %error "LONG_00403DB6"
    %endif
    times 6 - ($ - %%insn_00403db6) db 0
    %%insn_00403dbc:
    mov eax,[0x41f284] ; 00403DBC A184F24100
    %if ($ - %%insn_00403dbc) > 5
        %error "LONG_00403DBC"
    %endif
    times 5 - ($ - %%insn_00403dbc) db 0
    %%insn_00403dc1:
    push eax ; 00403DC1 50
    %if ($ - %%insn_00403dc1) > 1
        %error "LONG_00403DC1"
    %endif
    times 1 - ($ - %%insn_00403dc1) db 0
    %%insn_00403dc2:
    call 0x40c9a0 ; 00403DC2 E8D98B0000
    %if ($ - %%insn_00403dc2) > 5
        %error "LONG_00403DC2"
    %endif
    times 5 - ($ - %%insn_00403dc2) db 0
    %%insn_00403dc7:
    add esp,0x4 ; 00403DC7 83C404
    %if ($ - %%insn_00403dc7) > 3
        %error "LONG_00403DC7"
    %endif
    times 3 - ($ - %%insn_00403dc7) db 0
    %%insn_00403dca:
    mov ecx,[0x41f2b4] ; 00403DCA 8B0DB4F24100
    %if ($ - %%insn_00403dca) > 6
        %error "LONG_00403DCA"
    %endif
    times 6 - ($ - %%insn_00403dca) db 0
    %%insn_00403dd0:
    mov [0x41f300],ecx ; 00403DD0 890D00F34100
    %if ($ - %%insn_00403dd0) > 6
        %error "LONG_00403DD0"
    %endif
    times 6 - ($ - %%insn_00403dd0) db 0
    %%insn_00403dd6:
    mov edx,[0x41f2c4] ; 00403DD6 8B15C4F24100
    %if ($ - %%insn_00403dd6) > 6
        %error "LONG_00403DD6"
    %endif
    times 6 - ($ - %%insn_00403dd6) db 0
    %%insn_00403ddc:
    mov [0x41f284],edx ; 00403DDC 891584F24100
    %if ($ - %%insn_00403ddc) > 6
        %error "LONG_00403DDC"
    %endif
    times 6 - ($ - %%insn_00403ddc) db 0
    db 0x33, 0xC0 ; 00403DE2 33C0 | xor eax,eax | encoding preserved
    %%insn_00403de4:
    mov ax,[0x41f28c] ; 00403DE4 66A18CF24100
    %if ($ - %%insn_00403de4) > 6
        %error "LONG_00403DE4"
    %endif
    times 6 - ($ - %%insn_00403de4) db 0
    %%insn_00403dea:
    mov [0x41f2a8],eax ; 00403DEA A3A8F24100
    %if ($ - %%insn_00403dea) > 5
        %error "LONG_00403DEA"
    %endif
    times 5 - ($ - %%insn_00403dea) db 0
    %%insn_00403def:
    mov word [0x41f28c],0x0 ; 00403DEF 66C7058CF241000000
    %if ($ - %%insn_00403def) > 9
        %error "LONG_00403DEF"
    %endif
    times 9 - ($ - %%insn_00403def) db 0
    %%insn_00403df8:
    push dword 0x180 ; 00403DF8 6880010000
    %if ($ - %%insn_00403df8) > 5
        %error "LONG_00403DF8"
    %endif
    times 5 - ($ - %%insn_00403df8) db 0
    %%insn_00403dfd:
    mov ecx,[0x41f2ec] ; 00403DFD 8B0DECF24100
    %if ($ - %%insn_00403dfd) > 6
        %error "LONG_00403DFD"
    %endif
    times 6 - ($ - %%insn_00403dfd) db 0
    %%insn_00403e03:
    push ecx ; 00403E03 51
    %if ($ - %%insn_00403e03) > 1
        %error "LONG_00403E03"
    %endif
    times 1 - ($ - %%insn_00403e03) db 0
    %%insn_00403e04:
    mov edx,[0x41f2b8] ; 00403E04 8B15B8F24100
    %if ($ - %%insn_00403e04) > 6
        %error "LONG_00403E04"
    %endif
    times 6 - ($ - %%insn_00403e04) db 0
    %%insn_00403e0a:
    add edx,0x107 ; 00403E0A 81C207010000
    %if ($ - %%insn_00403e0a) > 6
        %error "LONG_00403E0A"
    %endif
    times 6 - ($ - %%insn_00403e0a) db 0
    %%insn_00403e10:
    push edx ; 00403E10 52
    %if ($ - %%insn_00403e10) > 1
        %error "LONG_00403E10"
    %endif
    times 1 - ($ - %%insn_00403e10) db 0
    %%insn_00403e11:
    call 0x40ca10 ; 00403E11 E8FA8B0000
    %if ($ - %%insn_00403e11) > 5
        %error "LONG_00403E11"
    %endif
    times 5 - ($ - %%insn_00403e11) db 0
    %%insn_00403e16:
    add esp,0xc ; 00403E16 83C40C
    %if ($ - %%insn_00403e16) > 3
        %error "LONG_00403E16"
    %endif
    times 3 - ($ - %%insn_00403e16) db 0
    %%insn_00403e19:
    mov word [0x41f310],0x0 ; 00403E19 66C70510F341000000
    %if ($ - %%insn_00403e19) > 9
        %error "LONG_00403E19"
    %endif
    times 9 - ($ - %%insn_00403e19) db 0
    %%insn_00403e22:
    mov word [0x41f2ac],0x0 ; 00403E22 66C705ACF241000000
    %if ($ - %%insn_00403e22) > 9
        %error "LONG_00403E22"
    %endif
    times 9 - ($ - %%insn_00403e22) db 0
    %%insn_00403e2b:
    mov word [0x41f338],0x0 ; 00403E2B 66C70538F341000000
    %if ($ - %%insn_00403e2b) > 9
        %error "LONG_00403E2B"
    %endif
    times 9 - ($ - %%insn_00403e2b) db 0
    %%insn_00403e34:
    jmp 0x4041db ; 00403E34 E9A2030000
    %if ($ - %%insn_00403e34) > 5
        %error "LONG_00403E34"
    %endif
    times 5 - ($ - %%insn_00403e34) db 0
    %%insn_00403e39:
    mov ax,[0x41f2ac] ; 00403E39 66A1ACF24100
    %if ($ - %%insn_00403e39) > 6
        %error "LONG_00403E39"
    %endif
    times 6 - ($ - %%insn_00403e39) db 0
    %%insn_00403e3f:
    or al,0x80 ; 00403E3F 0C80
    %if ($ - %%insn_00403e3f) > 2
        %error "LONG_00403E3F"
    %endif
    times 2 - ($ - %%insn_00403e3f) db 0
    %%insn_00403e41:
    mov [0x41f2ac],ax ; 00403E41 66A3ACF24100
    %if ($ - %%insn_00403e41) > 6
        %error "LONG_00403E41"
    %endif
    times 6 - ($ - %%insn_00403e41) db 0
    %%insn_00403e47:
    call 0x401473 ; 00403E47 E827D6FFFF
    %if ($ - %%insn_00403e47) > 5
        %error "LONG_00403E47"
    %endif
    times 5 - ($ - %%insn_00403e47) db 0
    %%insn_00403e4c:
    and eax,0xffff ; 00403E4C 25FFFF0000
    %if ($ - %%insn_00403e4c) > 5
        %error "LONG_00403E4C"
    %endif
    times 5 - ($ - %%insn_00403e4c) db 0
    %%insn_00403e51:
    mov [0x41f2c8],eax ; 00403E51 A3C8F24100
    %if ($ - %%insn_00403e51) > 5
        %error "LONG_00403E51"
    %endif
    times 5 - ($ - %%insn_00403e51) db 0
    %%insn_00403e56:
    cmp dword [0x41f2c8],0x7fff ; 00403E56 813DC8F24100FF7F0000
    %if ($ - %%insn_00403e56) > 10
        %error "LONG_00403E56"
    %endif
    times 10 - ($ - %%insn_00403e56) db 0
    %%insn_00403e60:
    jng short 0x403e74 ; 00403E60 7E12
    %if ($ - %%insn_00403e60) > 2
        %error "LONG_00403E60"
    %endif
    times 2 - ($ - %%insn_00403e60) db 0
    %%insn_00403e62:
    mov ecx,[0x41f2c8] ; 00403E62 8B0DC8F24100
    %if ($ - %%insn_00403e62) > 6
        %error "LONG_00403E62"
    %endif
    times 6 - ($ - %%insn_00403e62) db 0
    %%insn_00403e68:
    sub ecx,0x10000 ; 00403E68 81E900000100
    %if ($ - %%insn_00403e68) > 6
        %error "LONG_00403E68"
    %endif
    times 6 - ($ - %%insn_00403e68) db 0
    %%insn_00403e6e:
    mov [0x41f2c8],ecx ; 00403E6E 890DC8F24100
    %if ($ - %%insn_00403e6e) > 6
        %error "LONG_00403E6E"
    %endif
    times 6 - ($ - %%insn_00403e6e) db 0
    %%insn_00403e74:
    call 0x401473 ; 00403E74 E8FAD5FFFF
    %if ($ - %%insn_00403e74) > 5
        %error "LONG_00403E74"
    %endif
    times 5 - ($ - %%insn_00403e74) db 0
    %%insn_00403e79:
    and eax,0xffff ; 00403E79 25FFFF0000
    %if ($ - %%insn_00403e79) > 5
        %error "LONG_00403E79"
    %endif
    times 5 - ($ - %%insn_00403e79) db 0
    %%insn_00403e7e:
    mov [0x41f2d0],eax ; 00403E7E A3D0F24100
    %if ($ - %%insn_00403e7e) > 5
        %error "LONG_00403E7E"
    %endif
    times 5 - ($ - %%insn_00403e7e) db 0
    %%insn_00403e83:
    cmp dword [0x41f2d0],0x7fff ; 00403E83 813DD0F24100FF7F0000
    %if ($ - %%insn_00403e83) > 10
        %error "LONG_00403E83"
    %endif
    times 10 - ($ - %%insn_00403e83) db 0
    %%insn_00403e8d:
    jng short 0x403ea1 ; 00403E8D 7E12
    %if ($ - %%insn_00403e8d) > 2
        %error "LONG_00403E8D"
    %endif
    times 2 - ($ - %%insn_00403e8d) db 0
    %%insn_00403e8f:
    mov edx,[0x41f2d0] ; 00403E8F 8B15D0F24100
    %if ($ - %%insn_00403e8f) > 6
        %error "LONG_00403E8F"
    %endif
    times 6 - ($ - %%insn_00403e8f) db 0
    %%insn_00403e95:
    sub edx,0x10000 ; 00403E95 81EA00000100
    %if ($ - %%insn_00403e95) > 6
        %error "LONG_00403E95"
    %endif
    times 6 - ($ - %%insn_00403e95) db 0
    %%insn_00403e9b:
    mov [0x41f2d0],edx ; 00403E9B 8915D0F24100
    %if ($ - %%insn_00403e9b) > 6
        %error "LONG_00403E9B"
    %endif
    times 6 - ($ - %%insn_00403e9b) db 0
    %%insn_00403ea1:
    jmp 0x4041db ; 00403EA1 E935030000
    %if ($ - %%insn_00403ea1) > 5
        %error "LONG_00403EA1"
    %endif
    times 5 - ($ - %%insn_00403ea1) db 0
    %%insn_00403ea6:
    mov ax,[ebp-0x124] ; 00403EA6 668B85DCFEFFFF
    %if ($ - %%insn_00403ea6) > 7
        %error "LONG_00403EA6"
    %endif
    times 7 - ($ - %%insn_00403ea6) db 0
    %%insn_00403ead:
    push eax ; 00403EAD 50
    %if ($ - %%insn_00403ead) > 1
        %error "LONG_00403EAD"
    %endif
    times 1 - ($ - %%insn_00403ead) db 0
    %%insn_00403eae:
    call 0x4017ee ; 00403EAE E83BD9FFFF
    %if ($ - %%insn_00403eae) > 5
        %error "LONG_00403EAE"
    %endif
    times 5 - ($ - %%insn_00403eae) db 0
    %%insn_00403eb3:
    add esp,0x4 ; 00403EB3 83C404
    %if ($ - %%insn_00403eb3) > 3
        %error "LONG_00403EB3"
    %endif
    times 3 - ($ - %%insn_00403eb3) db 0
    %%insn_00403eb6:
    mov [ebp-0x12c],ax ; 00403EB6 668985D4FEFFFF
    %if ($ - %%insn_00403eb6) > 7
        %error "LONG_00403EB6"
    %endif
    times 7 - ($ - %%insn_00403eb6) db 0
    %%insn_00403ebd:
    call 0x401473 ; 00403EBD E8B1D5FFFF
    %if ($ - %%insn_00403ebd) > 5
        %error "LONG_00403EBD"
    %endif
    times 5 - ($ - %%insn_00403ebd) db 0
    %%insn_00403ec2:
    mov [ebp-0x18],ax ; 00403EC2 668945E8
    %if ($ - %%insn_00403ec2) > 4
        %error "LONG_00403EC2"
    %endif
    times 4 - ($ - %%insn_00403ec2) db 0
    %%insn_00403ec6:
    mov ecx,[ebp-0x12c] ; 00403EC6 8B8DD4FEFFFF
    %if ($ - %%insn_00403ec6) > 6
        %error "LONG_00403EC6"
    %endif
    times 6 - ($ - %%insn_00403ec6) db 0
    %%insn_00403ecc:
    and ecx,0xffff ; 00403ECC 81E1FFFF0000
    %if ($ - %%insn_00403ecc) > 6
        %error "LONG_00403ECC"
    %endif
    times 6 - ($ - %%insn_00403ecc) db 0
    %%insn_00403ed2:
    mov edx,[ebp-0x18] ; 00403ED2 8B55E8
    %if ($ - %%insn_00403ed2) > 3
        %error "LONG_00403ED2"
    %endif
    times 3 - ($ - %%insn_00403ed2) db 0
    %%insn_00403ed5:
    and edx,0xffff ; 00403ED5 81E2FFFF0000
    %if ($ - %%insn_00403ed5) > 6
        %error "LONG_00403ED5"
    %endif
    times 6 - ($ - %%insn_00403ed5) db 0
    %%insn_00403edb:
    mov eax,[0x41f2b8] ; 00403EDB A1B8F24100
    %if ($ - %%insn_00403edb) > 5
        %error "LONG_00403EDB"
    %endif
    times 5 - ($ - %%insn_00403edb) db 0
    %%insn_00403ee0:
    mov esi,[0x41f2b8] ; 00403EE0 8B35B8F24100
    %if ($ - %%insn_00403ee0) > 6
        %error "LONG_00403EE0"
    %endif
    times 6 - ($ - %%insn_00403ee0) db 0
    %%insn_00403ee6:
    mov cl,[eax+ecx] ; 00403EE6 8A0C08
    %if ($ - %%insn_00403ee6) > 3
        %error "LONG_00403EE6"
    %endif
    times 3 - ($ - %%insn_00403ee6) db 0
    %%insn_00403ee9:
    sub cl,[esi+edx] ; 00403EE9 2A0C16
    %if ($ - %%insn_00403ee9) > 3
        %error "LONG_00403EE9"
    %endif
    times 3 - ($ - %%insn_00403ee9) db 0
    %%insn_00403eec:
    mov edx,[ebp-0x12c] ; 00403EEC 8B95D4FEFFFF
    %if ($ - %%insn_00403eec) > 6
        %error "LONG_00403EEC"
    %endif
    times 6 - ($ - %%insn_00403eec) db 0
    %%insn_00403ef2:
    and edx,0xffff ; 00403EF2 81E2FFFF0000
    %if ($ - %%insn_00403ef2) > 6
        %error "LONG_00403EF2"
    %endif
    times 6 - ($ - %%insn_00403ef2) db 0
    %%insn_00403ef8:
    mov eax,[0x41f2b8] ; 00403EF8 A1B8F24100
    %if ($ - %%insn_00403ef8) > 5
        %error "LONG_00403EF8"
    %endif
    times 5 - ($ - %%insn_00403ef8) db 0
    %%insn_00403efd:
    mov [eax+edx],cl ; 00403EFD 880C10
    %if ($ - %%insn_00403efd) > 3
        %error "LONG_00403EFD"
    %endif
    times 3 - ($ - %%insn_00403efd) db 0
    %%insn_00403f00:
    jmp 0x4041db ; 00403F00 E9D6020000
    %if ($ - %%insn_00403f00) > 5
        %error "LONG_00403F00"
    %endif
    times 5 - ($ - %%insn_00403f00) db 0
    %%insn_00403f05:
    call 0x401449 ; 00403F05 E83FD5FFFF
    %if ($ - %%insn_00403f05) > 5
        %error "LONG_00403F05"
    %endif
    times 5 - ($ - %%insn_00403f05) db 0
    %%insn_00403f0a:
    mov [ebp-0x140],al ; 00403F0A 8885C0FEFFFF
    %if ($ - %%insn_00403f0a) > 6
        %error "LONG_00403F0A"
    %endif
    times 6 - ($ - %%insn_00403f0a) db 0
    %%insn_00403f10:
    mov ecx,[0x41f2b8] ; 00403F10 8B0DB8F24100
    %if ($ - %%insn_00403f10) > 6
        %error "LONG_00403F10"
    %endif
    times 6 - ($ - %%insn_00403f10) db 0
    %%insn_00403f16:
    add ecx,0x19 ; 00403F16 83C119
    %if ($ - %%insn_00403f16) > 3
        %error "LONG_00403F16"
    %endif
    times 3 - ($ - %%insn_00403f16) db 0
    %%insn_00403f19:
    push ecx ; 00403F19 51
    %if ($ - %%insn_00403f19) > 1
        %error "LONG_00403F19"
    %endif
    times 1 - ($ - %%insn_00403f19) db 0
    %%insn_00403f1a:
    mov edx,[ebp-0x140] ; 00403F1A 8B95C0FEFFFF
    %if ($ - %%insn_00403f1a) > 6
        %error "LONG_00403F1A"
    %endif
    times 6 - ($ - %%insn_00403f1a) db 0
    %%insn_00403f20:
    and edx,0xff ; 00403F20 81E2FF000000
    %if ($ - %%insn_00403f20) > 6
        %error "LONG_00403F20"
    %endif
    times 6 - ($ - %%insn_00403f20) db 0
    %%insn_00403f26:
    push edx ; 00403F26 52
    %if ($ - %%insn_00403f26) > 1
        %error "LONG_00403F26"
    %endif
    times 1 - ($ - %%insn_00403f26) db 0
    %%insn_00403f27:
    push dword 0x2 ; 00403F27 6A02
    %if ($ - %%insn_00403f27) > 2
        %error "LONG_00403F27"
    %endif
    times 2 - ($ - %%insn_00403f27) db 0
    %%insn_00403f29:
    call 0x406809 ; 00403F29 E8DB280000
    %if ($ - %%insn_00403f29) > 5
        %error "LONG_00403F29"
    %endif
    times 5 - ($ - %%insn_00403f29) db 0
    %%insn_00403f2e:
    add esp,0xc ; 00403F2E 83C40C
    %if ($ - %%insn_00403f2e) > 3
        %error "LONG_00403F2E"
    %endif
    times 3 - ($ - %%insn_00403f2e) db 0
    %%insn_00403f31:
    cmp dword [0x41f464],0x0 ; 00403F31 833D64F4410000
    %if ($ - %%insn_00403f31) > 7
        %error "LONG_00403F31"
    %endif
    times 7 - ($ - %%insn_00403f31) db 0
    %%insn_00403f38:
    jz short 0x403f51 ; 00403F38 7417
    %if ($ - %%insn_00403f38) > 2
        %error "LONG_00403F38"
    %endif
    times 2 - ($ - %%insn_00403f38) db 0
    %%insn_00403f3a:
    mov eax,[0x41f464] ; 00403F3A A164F44100
    %if ($ - %%insn_00403f3a) > 5
        %error "LONG_00403F3A"
    %endif
    times 5 - ($ - %%insn_00403f3a) db 0
    %%insn_00403f3f:
    cdq ; 00403F3F 99
    %if ($ - %%insn_00403f3f) > 1
        %error "LONG_00403F3F"
    %endif
    times 1 - ($ - %%insn_00403f3f) db 0
    %%insn_00403f40:
    mov ecx,0x7 ; 00403F40 B907000000
    %if ($ - %%insn_00403f40) > 5
        %error "LONG_00403F40"
    %endif
    times 5 - ($ - %%insn_00403f40) db 0
    %%insn_00403f45:
    idiv ecx ; 00403F45 F7F9
    %if ($ - %%insn_00403f45) > 2
        %error "LONG_00403F45"
    %endif
    times 2 - ($ - %%insn_00403f45) db 0
    %%insn_00403f47:
    mov edx,[0x41f2b8] ; 00403F47 8B15B8F24100
    %if ($ - %%insn_00403f47) > 6
        %error "LONG_00403F47"
    %endif
    times 6 - ($ - %%insn_00403f47) db 0
    %%insn_00403f4d:
    mov [edx],al ; 00403F4D 8802
    %if ($ - %%insn_00403f4d) > 2
        %error "LONG_00403F4D"
    %endif
    times 2 - ($ - %%insn_00403f4d) db 0
    %%insn_00403f4f:
    jmp short 0x403f59 ; 00403F4F EB08
    %if ($ - %%insn_00403f4f) > 2
        %error "LONG_00403F4F"
    %endif
    times 2 - ($ - %%insn_00403f4f) db 0
    %%insn_00403f51:
    mov eax,[0x41f2b8] ; 00403F51 A1B8F24100
    %if ($ - %%insn_00403f51) > 5
        %error "LONG_00403F51"
    %endif
    times 5 - ($ - %%insn_00403f51) db 0
    %%insn_00403f56:
    mov byte [eax],0x0 ; 00403F56 C60000
    %if ($ - %%insn_00403f56) > 3
        %error "LONG_00403F56"
    %endif
    times 3 - ($ - %%insn_00403f56) db 0
    %%insn_00403f59:
    mov eax,[0x41f464] ; 00403F59 A164F44100
    %if ($ - %%insn_00403f59) > 5
        %error "LONG_00403F59"
    %endif
    times 5 - ($ - %%insn_00403f59) db 0
    %%insn_00403f5e:
    cdq ; 00403F5E 99
    %if ($ - %%insn_00403f5e) > 1
        %error "LONG_00403F5E"
    %endif
    times 1 - ($ - %%insn_00403f5e) db 0
    %%insn_00403f5f:
    mov ecx,0x7 ; 00403F5F B907000000
    %if ($ - %%insn_00403f5f) > 5
        %error "LONG_00403F5F"
    %endif
    times 5 - ($ - %%insn_00403f5f) db 0
    %%insn_00403f64:
    idiv ecx ; 00403F64 F7F9
    %if ($ - %%insn_00403f64) > 2
        %error "LONG_00403F64"
    %endif
    times 2 - ($ - %%insn_00403f64) db 0
    %%insn_00403f66:
    mov eax,[0x41f2b8] ; 00403F66 A1B8F24100
    %if ($ - %%insn_00403f66) > 5
        %error "LONG_00403F66"
    %endif
    times 5 - ($ - %%insn_00403f66) db 0
    %%insn_00403f6b:
    mov [eax+0x1],dl ; 00403F6B 885001
    %if ($ - %%insn_00403f6b) > 3
        %error "LONG_00403F6B"
    %endif
    times 3 - ($ - %%insn_00403f6b) db 0
    %%insn_00403f6e:
    cmp dword [0x41f468],0x0 ; 00403F6E 833D68F4410000
    %if ($ - %%insn_00403f6e) > 7
        %error "LONG_00403F6E"
    %endif
    times 7 - ($ - %%insn_00403f6e) db 0
    %%insn_00403f75:
    jz short 0x403f8f ; 00403F75 7418
    %if ($ - %%insn_00403f75) > 2
        %error "LONG_00403F75"
    %endif
    times 2 - ($ - %%insn_00403f75) db 0
    %%insn_00403f77:
    mov eax,[0x41f468] ; 00403F77 A168F44100
    %if ($ - %%insn_00403f77) > 5
        %error "LONG_00403F77"
    %endif
    times 5 - ($ - %%insn_00403f77) db 0
    %%insn_00403f7c:
    cdq ; 00403F7C 99
    %if ($ - %%insn_00403f7c) > 1
        %error "LONG_00403F7C"
    %endif
    times 1 - ($ - %%insn_00403f7c) db 0
    %%insn_00403f7d:
    mov ecx,0x7 ; 00403F7D B907000000
    %if ($ - %%insn_00403f7d) > 5
        %error "LONG_00403F7D"
    %endif
    times 5 - ($ - %%insn_00403f7d) db 0
    %%insn_00403f82:
    idiv ecx ; 00403F82 F7F9
    %if ($ - %%insn_00403f82) > 2
        %error "LONG_00403F82"
    %endif
    times 2 - ($ - %%insn_00403f82) db 0
    %%insn_00403f84:
    mov edx,[0x41f2b8] ; 00403F84 8B15B8F24100
    %if ($ - %%insn_00403f84) > 6
        %error "LONG_00403F84"
    %endif
    times 6 - ($ - %%insn_00403f84) db 0
    %%insn_00403f8a:
    mov [edx+0x2],al ; 00403F8A 884202
    %if ($ - %%insn_00403f8a) > 3
        %error "LONG_00403F8A"
    %endif
    times 3 - ($ - %%insn_00403f8a) db 0
    %%insn_00403f8d:
    jmp short 0x403f98 ; 00403F8D EB09
    %if ($ - %%insn_00403f8d) > 2
        %error "LONG_00403F8D"
    %endif
    times 2 - ($ - %%insn_00403f8d) db 0
    %%insn_00403f8f:
    mov eax,[0x41f2b8] ; 00403F8F A1B8F24100
    %if ($ - %%insn_00403f8f) > 5
        %error "LONG_00403F8F"
    %endif
    times 5 - ($ - %%insn_00403f8f) db 0
    %%insn_00403f94:
    mov byte [eax+0x2],0x0 ; 00403F94 C6400200
    %if ($ - %%insn_00403f94) > 4
        %error "LONG_00403F94"
    %endif
    times 4 - ($ - %%insn_00403f94) db 0
    %%insn_00403f98:
    mov eax,[0x41f468] ; 00403F98 A168F44100
    %if ($ - %%insn_00403f98) > 5
        %error "LONG_00403F98"
    %endif
    times 5 - ($ - %%insn_00403f98) db 0
    %%insn_00403f9d:
    cdq ; 00403F9D 99
    %if ($ - %%insn_00403f9d) > 1
        %error "LONG_00403F9D"
    %endif
    times 1 - ($ - %%insn_00403f9d) db 0
    %%insn_00403f9e:
    mov ecx,0x7 ; 00403F9E B907000000
    %if ($ - %%insn_00403f9e) > 5
        %error "LONG_00403F9E"
    %endif
    times 5 - ($ - %%insn_00403f9e) db 0
    %%insn_00403fa3:
    idiv ecx ; 00403FA3 F7F9
    %if ($ - %%insn_00403fa3) > 2
        %error "LONG_00403FA3"
    %endif
    times 2 - ($ - %%insn_00403fa3) db 0
    %%insn_00403fa5:
    mov eax,[0x41f2b8] ; 00403FA5 A1B8F24100
    %if ($ - %%insn_00403fa5) > 5
        %error "LONG_00403FA5"
    %endif
    times 5 - ($ - %%insn_00403fa5) db 0
    %%insn_00403faa:
    mov [eax+0x3],dl ; 00403FAA 885003
    %if ($ - %%insn_00403faa) > 3
        %error "LONG_00403FAA"
    %endif
    times 3 - ($ - %%insn_00403faa) db 0
    %%insn_00403fad:
    jmp 0x4041db ; 00403FAD E929020000
    %if ($ - %%insn_00403fad) > 5
        %error "LONG_00403FAD"
    %endif
    times 5 - ($ - %%insn_00403fad) db 0
    %%insn_00403fb2:
    call 0x401473 ; 00403FB2 E8BCD4FFFF
    %if ($ - %%insn_00403fb2) > 5
        %error "LONG_00403FB2"
    %endif
    times 5 - ($ - %%insn_00403fb2) db 0
    %%insn_00403fb7:
    and eax,0xffff ; 00403FB7 25FFFF0000
    %if ($ - %%insn_00403fb7) > 5
        %error "LONG_00403FB7"
    %endif
    times 5 - ($ - %%insn_00403fb7) db 0
    %%insn_00403fbc:
    mov [0x41f2a0],eax ; 00403FBC A3A0F24100
    %if ($ - %%insn_00403fbc) > 5
        %error "LONG_00403FBC"
    %endif
    times 5 - ($ - %%insn_00403fbc) db 0
    %%insn_00403fc1:
    jmp 0x4041db ; 00403FC1 E915020000
    %if ($ - %%insn_00403fc1) > 5
        %error "LONG_00403FC1"
    %endif
    times 5 - ($ - %%insn_00403fc1) db 0
    %%insn_00403fc6:
    call 0x401473 ; 00403FC6 E8A8D4FFFF
    %if ($ - %%insn_00403fc6) > 5
        %error "LONG_00403FC6"
    %endif
    times 5 - ($ - %%insn_00403fc6) db 0
    %%insn_00403fcb:
    and eax,0xffff ; 00403FCB 25FFFF0000
    %if ($ - %%insn_00403fcb) > 5
        %error "LONG_00403FCB"
    %endif
    times 5 - ($ - %%insn_00403fcb) db 0
    %%insn_00403fd0:
    mov [0x41f2cc],eax ; 00403FD0 A3CCF24100
    %if ($ - %%insn_00403fd0) > 5
        %error "LONG_00403FD0"
    %endif
    times 5 - ($ - %%insn_00403fd0) db 0
    %%insn_00403fd5:
    jmp 0x4041db ; 00403FD5 E901020000
    %if ($ - %%insn_00403fd5) > 5
        %error "LONG_00403FD5"
    %endif
    times 5 - ($ - %%insn_00403fd5) db 0
    %%insn_00403fda:
    call 0x401473 ; 00403FDA E894D4FFFF
    %if ($ - %%insn_00403fda) > 5
        %error "LONG_00403FDA"
    %endif
    times 5 - ($ - %%insn_00403fda) db 0
    %%insn_00403fdf:
    mov [ebp-0x18],ax ; 00403FDF 668945E8
    %if ($ - %%insn_00403fdf) > 4
        %error "LONG_00403FDF"
    %endif
    times 4 - ($ - %%insn_00403fdf) db 0
    %%insn_00403fe3:
    jmp 0x4041db ; 00403FE3 E9F3010000
    %if ($ - %%insn_00403fe3) > 5
        %error "LONG_00403FE3"
    %endif
    times 5 - ($ - %%insn_00403fe3) db 0
    %%insn_00403fe8:
    call 0x401473 ; 00403FE8 E886D4FFFF
    %if ($ - %%insn_00403fe8) > 5
        %error "LONG_00403FE8"
    %endif
    times 5 - ($ - %%insn_00403fe8) db 0
    %%insn_00403fed:
    mov [ebp-0x18],ax ; 00403FED 668945E8
    %if ($ - %%insn_00403fed) > 4
        %error "LONG_00403FED"
    %endif
    times 4 - ($ - %%insn_00403fed) db 0
    %%insn_00403ff1:
    jmp 0x4041db ; 00403FF1 E9E5010000
    %if ($ - %%insn_00403ff1) > 5
        %error "LONG_00403FF1"
    %endif
    times 5 - ($ - %%insn_00403ff1) db 0
    %%insn_00403ff6:
    call 0x401473 ; 00403FF6 E878D4FFFF
    %if ($ - %%insn_00403ff6) > 5
        %error "LONG_00403FF6"
    %endif
    times 5 - ($ - %%insn_00403ff6) db 0
    %%insn_00403ffb:
    mov [ebp-0x18],ax ; 00403FFB 668945E8
    %if ($ - %%insn_00403ffb) > 4
        %error "LONG_00403FFB"
    %endif
    times 4 - ($ - %%insn_00403ffb) db 0
    %%insn_00403fff:
    jmp 0x4041db ; 00403FFF E9D7010000
    %if ($ - %%insn_00403fff) > 5
        %error "LONG_00403FFF"
    %endif
    times 5 - ($ - %%insn_00403fff) db 0
    %%insn_00404004:
    call 0x4014cb ; 00404004 E8C2D4FFFF
    %if ($ - %%insn_00404004) > 5
        %error "LONG_00404004"
    %endif
    times 5 - ($ - %%insn_00404004) db 0
    %%insn_00404009:
    mov [ebp-0x11c],eax ; 00404009 8985E4FEFFFF
    %if ($ - %%insn_00404009) > 6
        %error "LONG_00404009"
    %endif
    times 6 - ($ - %%insn_00404009) db 0
    %%insn_0040400f:
    call 0x401449 ; 0040400F E835D4FFFF
    %if ($ - %%insn_0040400f) > 5
        %error "LONG_0040400F"
    %endif
    times 5 - ($ - %%insn_0040400f) db 0
    %%insn_00404014:
    mov [ebp-0x140],al ; 00404014 8885C0FEFFFF
    %if ($ - %%insn_00404014) > 6
        %error "LONG_00404014"
    %endif
    times 6 - ($ - %%insn_00404014) db 0
    %%insn_0040401a:
    call 0x401449 ; 0040401A E82AD4FFFF
    %if ($ - %%insn_0040401a) > 5
        %error "LONG_0040401A"
    %endif
    times 5 - ($ - %%insn_0040401a) db 0
    %%insn_0040401f:
    and eax,0xff ; 0040401F 25FF000000
    %if ($ - %%insn_0040401f) > 5
        %error "LONG_0040401F"
    %endif
    times 5 - ($ - %%insn_0040401f) db 0
    %%insn_00404024:
    mov [ebp-0xc],eax ; 00404024 8945F4
    %if ($ - %%insn_00404024) > 3
        %error "LONG_00404024"
    %endif
    times 3 - ($ - %%insn_00404024) db 0
    %%insn_00404027:
    jmp 0x4041db ; 00404027 E9AF010000
    %if ($ - %%insn_00404027) > 5
        %error "LONG_00404027"
    %endif
    times 5 - ($ - %%insn_00404027) db 0
    %%insn_0040402c:
    mov cx,[0x41f2ac] ; 0040402C 668B0DACF24100
    %if ($ - %%insn_0040402c) > 7
        %error "LONG_0040402C"
    %endif
    times 7 - ($ - %%insn_0040402c) db 0
    %%insn_00404033:
    or cl,0x10 ; 00404033 80C910
    %if ($ - %%insn_00404033) > 3
        %error "LONG_00404033"
    %endif
    times 3 - ($ - %%insn_00404033) db 0
    %%insn_00404036:
    mov [0x41f2ac],cx ; 00404036 66890DACF24100
    %if ($ - %%insn_00404036) > 7
        %error "LONG_00404036"
    %endif
    times 7 - ($ - %%insn_00404036) db 0
    %%insn_0040403d:
    call 0x404ca2 ; 0040403D E8600C0000
    %if ($ - %%insn_0040403d) > 5
        %error "LONG_0040403D"
    %endif
    times 5 - ($ - %%insn_0040403d) db 0
    %%insn_00404042:
    call 0x4014cb ; 00404042 E884D4FFFF
    %if ($ - %%insn_00404042) > 5
        %error "LONG_00404042"
    %endif
    times 5 - ($ - %%insn_00404042) db 0
    %%insn_00404047:
    mov [ebp-0x11c],eax ; 00404047 8985E4FEFFFF
    %if ($ - %%insn_00404047) > 6
        %error "LONG_00404047"
    %endif
    times 6 - ($ - %%insn_00404047) db 0
    %%insn_0040404d:
    mov edx,[ebp-0x11c] ; 0040404D 8B95E4FEFFFF
    %if ($ - %%insn_0040404d) > 6
        %error "LONG_0040404D"
    %endif
    times 6 - ($ - %%insn_0040404d) db 0
    %%insn_00404053:
    push edx ; 00404053 52
    %if ($ - %%insn_00404053) > 1
        %error "LONG_00404053"
    %endif
    times 1 - ($ - %%insn_00404053) db 0
    %%insn_00404054:
    call 0x401d3a ; 00404054 E8E1DCFFFF
    %if ($ - %%insn_00404054) > 5
        %error "LONG_00404054"
    %endif
    times 5 - ($ - %%insn_00404054) db 0
    %%insn_00404059:
    add esp,0x4 ; 00404059 83C404
    %if ($ - %%insn_00404059) > 3
        %error "LONG_00404059"
    %endif
    times 3 - ($ - %%insn_00404059) db 0
    %%insn_0040405c:
    jmp 0x4041db ; 0040405C E97A010000
    %if ($ - %%insn_0040405c) > 5
        %error "LONG_0040405C"
    %endif
    times 5 - ($ - %%insn_0040405c) db 0
    %%insn_00404061:
    mov ax,[0x41f2ac] ; 00404061 66A1ACF24100
    %if ($ - %%insn_00404061) > 6
        %error "LONG_00404061"
    %endif
    times 6 - ($ - %%insn_00404061) db 0
    %%insn_00404067:
    or al,0x10 ; 00404067 0C10
    %if ($ - %%insn_00404067) > 2
        %error "LONG_00404067"
    %endif
    times 2 - ($ - %%insn_00404067) db 0
    %%insn_00404069:
    mov [0x41f2ac],ax ; 00404069 66A3ACF24100
    %if ($ - %%insn_00404069) > 6
        %error "LONG_00404069"
    %endif
    times 6 - ($ - %%insn_00404069) db 0
    %%insn_0040406f:
    call 0x404ca2 ; 0040406F E82E0C0000
    %if ($ - %%insn_0040406f) > 5
        %error "LONG_0040406F"
    %endif
    times 5 - ($ - %%insn_0040406f) db 0
    %%insn_00404074:
    call 0x401833 ; 00404074 E8BAD7FFFF
    %if ($ - %%insn_00404074) > 5
        %error "LONG_00404074"
    %endif
    times 5 - ($ - %%insn_00404074) db 0
    %%insn_00404079:
    mov [ebp-0x11c],eax ; 00404079 8985E4FEFFFF
    %if ($ - %%insn_00404079) > 6
        %error "LONG_00404079"
    %endif
    times 6 - ($ - %%insn_00404079) db 0
    %%insn_0040407f:
    cmp dword [ebp-0x11c],0x0 ; 0040407F 83BDE4FEFFFF00
    %if ($ - %%insn_0040407f) > 7
        %error "LONG_0040407F"
    %endif
    times 7 - ($ - %%insn_0040407f) db 0
    %%insn_00404086:
    jl short 0x404097 ; 00404086 7C0F
    %if ($ - %%insn_00404086) > 2
        %error "LONG_00404086"
    %endif
    times 2 - ($ - %%insn_00404086) db 0
    %%insn_00404088:
    mov ecx,[ebp-0x11c] ; 00404088 8B8DE4FEFFFF
    %if ($ - %%insn_00404088) > 6
        %error "LONG_00404088"
    %endif
    times 6 - ($ - %%insn_00404088) db 0
    %%insn_0040408e:
    push ecx ; 0040408E 51
    %if ($ - %%insn_0040408e) > 1
        %error "LONG_0040408E"
    %endif
    times 1 - ($ - %%insn_0040408e) db 0
    %%insn_0040408f:
    call 0x401d3a ; 0040408F E8A6DCFFFF
    %if ($ - %%insn_0040408f) > 5
        %error "LONG_0040408F"
    %endif
    times 5 - ($ - %%insn_0040408f) db 0
    %%insn_00404094:
    add esp,0x4 ; 00404094 83C404
    %if ($ - %%insn_00404094) > 3
        %error "LONG_00404094"
    %endif
    times 3 - ($ - %%insn_00404094) db 0
    %%insn_00404097:
    jmp 0x4041db ; 00404097 E93F010000
    %if ($ - %%insn_00404097) > 5
        %error "LONG_00404097"
    %endif
    times 5 - ($ - %%insn_00404097) db 0
    %%insn_0040409c:
    mov dx,[ebp-0x124] ; 0040409C 668B95DCFEFFFF
    %if ($ - %%insn_0040409c) > 7
        %error "LONG_0040409C"
    %endif
    times 7 - ($ - %%insn_0040409c) db 0
    %%insn_004040a3:
    push edx ; 004040A3 52
    %if ($ - %%insn_004040a3) > 1
        %error "LONG_004040A3"
    %endif
    times 1 - ($ - %%insn_004040a3) db 0
    %%insn_004040a4:
    call 0x4017ee ; 004040A4 E845D7FFFF
    %if ($ - %%insn_004040a4) > 5
        %error "LONG_004040A4"
    %endif
    times 5 - ($ - %%insn_004040a4) db 0
    %%insn_004040a9:
    add esp,0x4 ; 004040A9 83C404
    %if ($ - %%insn_004040a9) > 3
        %error "LONG_004040A9"
    %endif
    times 3 - ($ - %%insn_004040a9) db 0
    %%insn_004040ac:
    mov [ebp-0x12c],ax ; 004040AC 668985D4FEFFFF
    %if ($ - %%insn_004040ac) > 7
        %error "LONG_004040AC"
    %endif
    times 7 - ($ - %%insn_004040ac) db 0
    %%insn_004040b3:
    call 0x401449 ; 004040B3 E891D3FFFF
    %if ($ - %%insn_004040b3) > 5
        %error "LONG_004040B3"
    %endif
    times 5 - ($ - %%insn_004040b3) db 0
    %%insn_004040b8:
    and eax,0xff ; 004040B8 25FF000000
    %if ($ - %%insn_004040b8) > 5
        %error "LONG_004040B8"
    %endif
    times 5 - ($ - %%insn_004040b8) db 0
    %%insn_004040bd:
    mov [ebp-0xc],eax ; 004040BD 8945F4
    %if ($ - %%insn_004040bd) > 3
        %error "LONG_004040BD"
    %endif
    times 3 - ($ - %%insn_004040bd) db 0
    %%insn_004040c0:
    jmp 0x4041db ; 004040C0 E916010000
    %if ($ - %%insn_004040c0) > 5
        %error "LONG_004040C0"
    %endif
    times 5 - ($ - %%insn_004040c0) db 0
    %%insn_004040c5:
    call detect_t7g_archive_set ; 004040C5 E8A8E0FFFF | GRV GETCD -> v[106]
    %if ($ - %%insn_004040c5) > 5
        %error "LONG_004040C5"
    %endif
    times 5 - ($ - %%insn_004040c5) db 0
    %%insn_004040ca:
    mov ecx,[0x41f2b8] ; 004040CA 8B0DB8F24100
    %if ($ - %%insn_004040ca) > 6
        %error "LONG_004040CA"
    %endif
    times 6 - ($ - %%insn_004040ca) db 0
    %%insn_004040d0:
    mov [ecx+0x106],al ; 004040D0 888106010000
    %if ($ - %%insn_004040d0) > 6
        %error "LONG_004040D0"
    %endif
    times 6 - ($ - %%insn_004040d0) db 0
    %%insn_004040d6:
    jmp 0x4041db ; 004040D6 E900010000
    %if ($ - %%insn_004040d6) > 5
        %error "LONG_004040D6"
    %endif
    times 5 - ($ - %%insn_004040d6) db 0
    %%insn_004040db:
    call 0x401473 ; 004040DB E893D3FFFF
    %if ($ - %%insn_004040db) > 5
        %error "LONG_004040DB"
    %endif
    times 5 - ($ - %%insn_004040db) db 0
    %%insn_004040e0:
    mov [ebp-0x18],ax ; 004040E0 668945E8
    %if ($ - %%insn_004040e0) > 4
        %error "LONG_004040E0"
    %endif
    times 4 - ($ - %%insn_004040e0) db 0
    %%insn_004040e4:
    jmp 0x4041db ; 004040E4 E9F2000000
    %if ($ - %%insn_004040e4) > 5
        %error "LONG_004040E4"
    %endif
    times 5 - ($ - %%insn_004040e4) db 0
    %%insn_004040e9:
    jmp 0x4041db ; 004040E9 E9ED000000
    %if ($ - %%insn_004040e9) > 5
        %error "LONG_004040E9"
    %endif
    times 5 - ($ - %%insn_004040e9) db 0
    %%insn_004040ee:
    jmp 0x4041db ; 004040EE E9E8000000
    %if ($ - %%insn_004040ee) > 5
        %error "LONG_004040EE"
    %endif
    times 5 - ($ - %%insn_004040ee) db 0
    %%insn_004040f3:
    call 0x401449 ; 004040F3 E851D3FFFF
    %if ($ - %%insn_004040f3) > 5
        %error "LONG_004040F3"
    %endif
    times 5 - ($ - %%insn_004040f3) db 0
    %%insn_004040f8:
    and eax,0xff ; 004040F8 25FF000000
    %if ($ - %%insn_004040f8) > 5
        %error "LONG_004040F8"
    %endif
    times 5 - ($ - %%insn_004040f8) db 0
    %%insn_004040fd:
    mov [ebp-0xc],eax ; 004040FD 8945F4
    %if ($ - %%insn_004040fd) > 3
        %error "LONG_004040FD"
    %endif
    times 3 - ($ - %%insn_004040fd) db 0
    %%insn_00404100:
    cmp dword [ebp-0xc],0x2 ; 00404100 837DF402
    %if ($ - %%insn_00404100) > 4
        %error "LONG_00404100"
    %endif
    times 4 - ($ - %%insn_00404100) db 0
    %%insn_00404104:
    jnz short 0x404175 ; 00404104 756F
    %if ($ - %%insn_00404104) > 2
        %error "LONG_00404104"
    %endif
    times 2 - ($ - %%insn_00404104) db 0
    %%insn_00404106:
    movsx edx,word [0x41f320] ; 00404106 0FBF1520F34100
    %if ($ - %%insn_00404106) > 7
        %error "LONG_00404106"
    %endif
    times 7 - ($ - %%insn_00404106) db 0
    %%insn_0040410d:
    test edx,edx ; 0040410D 85D2
    %if ($ - %%insn_0040410d) > 2
        %error "LONG_0040410D"
    %endif
    times 2 - ($ - %%insn_0040410d) db 0
    %%insn_0040410f:
    jnz short 0x404159 ; 0040410F 7548
    %if ($ - %%insn_0040410f) > 2
        %error "LONG_0040410F"
    %endif
    times 2 - ($ - %%insn_0040410f) db 0
    %%insn_00404111:
    call play_optional_vielogo_video ; 00404111 E83FDBFFFF | PLAYCD 02 one-shot loose-video prelude
    %if ($ - %%insn_00404111) > 5
        %error "LONG_00404111"
    %endif
    times 5 - ($ - %%insn_00404111) db 0
    %%insn_00404116:
    mov [0x41f318],ax ; 00404116 66A318F34100
    %if ($ - %%insn_00404116) > 6
        %error "LONG_00404116"
    %endif
    times 6 - ($ - %%insn_00404116) db 0
    %%insn_0040411c:
    movsx eax,word [0x41f318] ; 0040411C 0FBF0518F34100
    %if ($ - %%insn_0040411c) > 7
        %error "LONG_0040411C"
    %endif
    times 7 - ($ - %%insn_0040411c) db 0
    %%insn_00404123:
    test eax,eax ; 00404123 85C0
    %if ($ - %%insn_00404123) > 2
        %error "LONG_00404123"
    %endif
    times 2 - ($ - %%insn_00404123) db 0
    %%insn_00404125:
    jz short 0x404157 ; 00404125 7430
    %if ($ - %%insn_00404125) > 2
        %error "LONG_00404125"
    %endif
    times 2 - ($ - %%insn_00404125) db 0
    %%insn_00404127:
    mov word [0x41f308],0x2 ; 00404127 66C70508F341000200
    %if ($ - %%insn_00404127) > 9
        %error "LONG_00404127"
    %endif
    times 9 - ($ - %%insn_00404127) db 0
    %%insn_00404130:
    mov dword [0x41bd70],0x0 ; 00404130 C70570BD410000000000
    %if ($ - %%insn_00404130) > 10
        %error "LONG_00404130"
    %endif
    times 10 - ($ - %%insn_00404130) db 0
    %%insn_0040413a:
    mov word [0x41f320],0x1 ; 0040413A 66C70520F341000100
    %if ($ - %%insn_0040413a) > 9
        %error "LONG_0040413A"
    %endif
    times 9 - ($ - %%insn_0040413a) db 0
    %%insn_00404143:
    mov ecx,[0x41f300] ; 00404143 8B0D00F34100
    %if ($ - %%insn_00404143) > 6
        %error "LONG_00404143"
    %endif
    times 6 - ($ - %%insn_00404143) db 0
    %%insn_00404149:
    sub ecx,0x2 ; 00404149 83E902
    %if ($ - %%insn_00404149) > 3
        %error "LONG_00404149"
    %endif
    times 3 - ($ - %%insn_00404149) db 0
    %%insn_0040414c:
    mov [0x41f300],ecx ; 0040414C 890D00F34100
    %if ($ - %%insn_0040414c) > 6
        %error "LONG_0040414C"
    %endif
    times 6 - ($ - %%insn_0040414c) db 0
    %%insn_00404152:
    jmp 0x4041db ; 00404152 E984000000
    %if ($ - %%insn_00404152) > 5
        %error "LONG_00404152"
    %endif
    times 5 - ($ - %%insn_00404152) db 0
    %%insn_00404157:
    jmp short 0x404175 ; 00404157 EB1C
    %if ($ - %%insn_00404157) > 2
        %error "LONG_00404157"
    %endif
    times 2 - ($ - %%insn_00404157) db 0
    %%insn_00404159:
    mov word [0x41f308],0x0 ; 00404159 66C70508F341000000
    %if ($ - %%insn_00404159) > 9
        %error "LONG_00404159"
    %endif
    times 9 - ($ - %%insn_00404159) db 0
    %%insn_00404162:
    mov dword [0x41bd70],0x50 ; 00404162 C70570BD410050000000
    %if ($ - %%insn_00404162) > 10
        %error "LONG_00404162"
    %endif
    times 10 - ($ - %%insn_00404162) db 0
    %%insn_0040416c:
    mov word [0x41f320],0x0 ; 0040416C 66C70520F341000000
    %if ($ - %%insn_0040416c) > 9
        %error "LONG_0040416C"
    %endif
    times 9 - ($ - %%insn_0040416c) db 0
    %%insn_00404175:
    call end_active_midi_sequence ; 00404175 E8B22F0000
    %if ($ - %%insn_00404175) > 5
        %error "LONG_00404175"
    %endif
    times 5 - ($ - %%insn_00404175) db 0
    %%insn_0040417a:
    mov edx,[ebp-0xc] ; 0040417A 8B55F4
    %if ($ - %%insn_0040417a) > 3
        %error "LONG_0040417A"
    %endif
    times 3 - ($ - %%insn_0040417a) db 0
    %%insn_0040417d:
    push edx ; 0040417D 52
    %if ($ - %%insn_0040417d) > 1
        %error "LONG_0040417D"
    %endif
    times 1 - ($ - %%insn_0040417d) db 0
    %%insn_0040417e:
    call play_redbook_selection ; 0040417E E86F300000
    %if ($ - %%insn_0040417e) > 5
        %error "LONG_0040417E"
    %endif
    times 5 - ($ - %%insn_0040417e) db 0
    %%insn_00404183:
    add esp,0x4 ; 00404183 83C404
    %if ($ - %%insn_00404183) > 3
        %error "LONG_00404183"
    %endif
    times 3 - ($ - %%insn_00404183) db 0
    %%insn_00404186:
    jmp short 0x4041db ; 00404186 EB53
    %if ($ - %%insn_00404186) > 2
        %error "LONG_00404186"
    %endif
    times 2 - ($ - %%insn_00404186) db 0
    %%insn_00404188:
    call 0x401449 ; 00404188 E8BCD2FFFF
    %if ($ - %%insn_00404188) > 5
        %error "LONG_00404188"
    %endif
    times 5 - ($ - %%insn_00404188) db 0
    %%insn_0040418d:
    and eax,0xff ; 0040418D 25FF000000
    %if ($ - %%insn_0040418d) > 5
        %error "LONG_0040418D"
    %endif
    times 5 - ($ - %%insn_0040418d) db 0
    %%insn_00404192:
    mov [ebp-0xc],eax ; 00404192 8945F4
    %if ($ - %%insn_00404192) > 3
        %error "LONG_00404192"
    %endif
    times 3 - ($ - %%insn_00404192) db 0
    %%insn_00404195:
    jmp short 0x4041db ; 00404195 EB44
    %if ($ - %%insn_00404195) > 2
        %error "LONG_00404195"
    %endif
    times 2 - ($ - %%insn_00404195) db 0
    %%insn_00404197:
    call 0x401449 ; 00404197 E8ADD2FFFF
    %if ($ - %%insn_00404197) > 5
        %error "LONG_00404197"
    %endif
    times 5 - ($ - %%insn_00404197) db 0
    %%insn_0040419c:
    and eax,0xff ; 0040419C 25FF000000
    %if ($ - %%insn_0040419c) > 5
        %error "LONG_0040419C"
    %endif
    times 5 - ($ - %%insn_0040419c) db 0
    %%insn_004041a1:
    mov [ebp-0xc],eax ; 004041A1 8945F4
    %if ($ - %%insn_004041a1) > 3
        %error "LONG_004041A1"
    %endif
    times 3 - ($ - %%insn_004041a1) db 0
    %%insn_004041a4:
    jmp short 0x4041db ; 004041A4 EB35
    %if ($ - %%insn_004041a4) > 2
        %error "LONG_004041A4"
    %endif
    times 2 - ($ - %%insn_004041a4) db 0
    %%insn_004041a6:
    jmp short 0x4041db ; 004041A6 EB33
    %if ($ - %%insn_004041a6) > 2
        %error "LONG_004041A6"
    %endif
    times 2 - ($ - %%insn_004041a6) db 0
    %%insn_004041a8:
    call 0x401449 ; 004041A8 E89CD2FFFF
    %if ($ - %%insn_004041a8) > 5
        %error "LONG_004041A8"
    %endif
    times 5 - ($ - %%insn_004041a8) db 0
    %%insn_004041ad:
    and eax,0xff ; 004041AD 25FF000000
    %if ($ - %%insn_004041ad) > 5
        %error "LONG_004041AD"
    %endif
    times 5 - ($ - %%insn_004041ad) db 0
    %%insn_004041b2:
    mov [ebp-0xc],eax ; 004041B2 8945F4
    %if ($ - %%insn_004041b2) > 3
        %error "LONG_004041B2"
    %endif
    times 3 - ($ - %%insn_004041b2) db 0
    %%insn_004041b5:
    jmp short 0x4041db ; 004041B5 EB24
    %if ($ - %%insn_004041b5) > 2
        %error "LONG_004041B5"
    %endif
    times 2 - ($ - %%insn_004041b5) db 0
    %%insn_004041b7:
    call 0x401473 ; 004041B7 E8B7D2FFFF
    %if ($ - %%insn_004041b7) > 5
        %error "LONG_004041B7"
    %endif
    times 5 - ($ - %%insn_004041b7) db 0
    %%insn_004041bc:
    mov [ebp-0x18],ax ; 004041BC 668945E8
    %if ($ - %%insn_004041bc) > 4
        %error "LONG_004041BC"
    %endif
    times 4 - ($ - %%insn_004041bc) db 0
    %%insn_004041c0:
    jmp short 0x4041db ; 004041C0 EB19
    %if ($ - %%insn_004041c0) > 2
        %error "LONG_004041C0"
    %endif
    times 2 - ($ - %%insn_004041c0) db 0
    %%insn_004041c2:
    mov eax,[0x41f284] ; 004041C2 A184F24100
    %if ($ - %%insn_004041c2) > 5
        %error "LONG_004041C2"
    %endif
    times 5 - ($ - %%insn_004041c2) db 0
    %%insn_004041c7:
    add eax,[0x41f300] ; 004041C7 030500F34100
    %if ($ - %%insn_004041c7) > 6
        %error "LONG_004041C7"
    %endif
    times 6 - ($ - %%insn_004041c7) db 0
    db 0x33, 0xC9 ; 004041CD 33C9 | xor ecx,ecx | encoding preserved
    %%insn_004041cf:
    mov cl,[eax-0x1] ; 004041CF 8A48FF
    %if ($ - %%insn_004041cf) > 3
        %error "LONG_004041CF"
    %endif
    times 3 - ($ - %%insn_004041cf) db 0
    %%insn_004041d2:
    and ecx,0x7f ; 004041D2 83E17F
    %if ($ - %%insn_004041d2) > 3
        %error "LONG_004041D2"
    %endif
    times 3 - ($ - %%insn_004041d2) db 0
    %%insn_004041d5:
    mov [ebp-0x140],cl ; 004041D5 888DC0FEFFFF
    %if ($ - %%insn_004041d5) > 6
        %error "LONG_004041D5"
    %endif
    times 6 - ($ - %%insn_004041d5) db 0
    %%insn_004041db:
    pop esi ; 004041DB 5E
    %if ($ - %%insn_004041db) > 1
        %error "LONG_004041DB"
    %endif
    times 1 - ($ - %%insn_004041db) db 0
    db 0x8B, 0xE5 ; 004041DC 8BE5 | mov esp,ebp | encoding preserved
    %%insn_004041de:
    pop ebp ; 004041DE 5D
    %if ($ - %%insn_004041de) > 1
        %error "LONG_004041DE"
    %endif
    times 1 - ($ - %%insn_004041de) db 0
    %%insn_004041df:
    ret ; 004041DF C3
    %if ($ - %%insn_004041df) > 1
        %error "LONG_004041DF"
    %endif
    times 1 - ($ - %%insn_004041df) db 0
    %if ($ - %%fragment_start) != 8207
        %error "function fragment size drift: 004021D1"
    %endif
%endmacro
