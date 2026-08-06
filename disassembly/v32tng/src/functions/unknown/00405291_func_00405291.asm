; PE virtual entry 00405291
; Ghidra working symbol: FUN_00405291
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00405291_part_00 0
    %%fragment_start:
func_00405291:
    %%insn_00405291:
    push ebp ; 00405291 55
    %if ($ - %%insn_00405291) > 1
        %error "LONG_00405291"
    %endif
    times 1 - ($ - %%insn_00405291) db 0
    db 0x8B, 0xEC ; 00405292 8BEC | mov ebp,esp | encoding preserved
    %%insn_00405294:
    sub esp,0xc ; 00405294 83EC0C
    %if ($ - %%insn_00405294) > 3
        %error "LONG_00405294"
    %endif
    times 3 - ($ - %%insn_00405294) db 0
    %%insn_00405297:
    movsx eax,byte [0x4215b7] ; 00405297 0FBE05B7154200
    %if ($ - %%insn_00405297) > 7
        %error "LONG_00405297"
    %endif
    times 7 - ($ - %%insn_00405297) db 0
    %%insn_0040529e:
    cmp eax,0x1 ; 0040529E 83F801
    %if ($ - %%insn_0040529e) > 3
        %error "LONG_0040529E"
    %endif
    times 3 - ($ - %%insn_0040529e) db 0
    %%insn_004052a1:
    jnz 0x4053c6 ; 004052A1 0F851F010000
    %if ($ - %%insn_004052a1) > 6
        %error "LONG_004052A1"
    %endif
    times 6 - ($ - %%insn_004052a1) db 0
    %%insn_004052a7:
    movsx ecx,byte [0x4215b5] ; 004052A7 0FBE0DB5154200
    %if ($ - %%insn_004052a7) > 7
        %error "LONG_004052A7"
    %endif
    times 7 - ($ - %%insn_004052a7) db 0
    %%insn_004052ae:
    movsx edx,byte [ecx+0x421d00] ; 004052AE 0FBE91001D4200
    %if ($ - %%insn_004052ae) > 7
        %error "LONG_004052AE"
    %endif
    times 7 - ($ - %%insn_004052ae) db 0
    %%insn_004052b5:
    movsx eax,byte [ebp+0x8] ; 004052B5 0FBE4508
    %if ($ - %%insn_004052b5) > 4
        %error "LONG_004052B5"
    %endif
    times 4 - ($ - %%insn_004052b5) db 0
    db 0x3B, 0xD0 ; 004052B9 3BD0 | cmp edx,eax | encoding preserved
    %%insn_004052bb:
    jnz 0x40535c ; 004052BB 0F859B000000
    %if ($ - %%insn_004052bb) > 6
        %error "LONG_004052BB"
    %endif
    times 6 - ($ - %%insn_004052bb) db 0
    %%insn_004052c1:
    movsx ecx,byte [0x4215b5] ; 004052C1 0FBE0DB5154200
    %if ($ - %%insn_004052c1) > 7
        %error "LONG_004052C1"
    %endif
    times 7 - ($ - %%insn_004052c1) db 0
    %%insn_004052c8:
    movsx edx,byte [0x4215b8] ; 004052C8 0FBE15B8154200
    %if ($ - %%insn_004052c8) > 7
        %error "LONG_004052C8"
    %endif
    times 7 - ($ - %%insn_004052c8) db 0
    %%insn_004052cf:
    mov eax,[ecx*4+0x41b770] ; 004052CF 8B048D70B74100
    %if ($ - %%insn_004052cf) > 7
        %error "LONG_004052CF"
    %endif
    times 7 - ($ - %%insn_004052cf) db 0
    db 0x03, 0xC2 ; 004052D6 03C2 | add eax,edx | encoding preserved
    %%insn_004052d8:
    mov [ebp-0x4],eax ; 004052D8 8945FC
    %if ($ - %%insn_004052d8) > 3
        %error "LONG_004052D8"
    %endif
    times 3 - ($ - %%insn_004052d8) db 0
    %%insn_004052db:
    jmp short 0x4052ec ; 004052DB EB0F
    %if ($ - %%insn_004052db) > 2
        %error "LONG_004052DB"
    %endif
    times 2 - ($ - %%insn_004052db) db 0
    %%insn_004052dd:
    mov cl,[0x4215b8] ; 004052DD 8A0DB8154200
    %if ($ - %%insn_004052dd) > 6
        %error "LONG_004052DD"
    %endif
    times 6 - ($ - %%insn_004052dd) db 0
    %%insn_004052e3:
    add cl,0x1 ; 004052E3 80C101
    %if ($ - %%insn_004052e3) > 3
        %error "LONG_004052E3"
    %endif
    times 3 - ($ - %%insn_004052e3) db 0
    %%insn_004052e6:
    mov [0x4215b8],cl ; 004052E6 880DB8154200
    %if ($ - %%insn_004052e6) > 6
        %error "LONG_004052E6"
    %endif
    times 6 - ($ - %%insn_004052e6) db 0
    %%insn_004052ec:
    movsx edx,byte [0x4215b8] ; 004052EC 0FBE15B8154200
    %if ($ - %%insn_004052ec) > 7
        %error "LONG_004052EC"
    %endif
    times 7 - ($ - %%insn_004052ec) db 0
    %%insn_004052f3:
    cmp edx,0x8 ; 004052F3 83FA08
    %if ($ - %%insn_004052f3) > 3
        %error "LONG_004052F3"
    %endif
    times 3 - ($ - %%insn_004052f3) db 0
    %%insn_004052f6:
    jnl short 0x405355 ; 004052F6 7D5D
    %if ($ - %%insn_004052f6) > 2
        %error "LONG_004052F6"
    %endif
    times 2 - ($ - %%insn_004052f6) db 0
    %%insn_004052f8:
    mov eax,[ebp-0x4] ; 004052F8 8B45FC
    %if ($ - %%insn_004052f8) > 3
        %error "LONG_004052F8"
    %endif
    times 3 - ($ - %%insn_004052f8) db 0
    %%insn_004052fb:
    mov cl,[eax] ; 004052FB 8A08
    %if ($ - %%insn_004052fb) > 2
        %error "LONG_004052FB"
    %endif
    times 2 - ($ - %%insn_004052fb) db 0
    %%insn_004052fd:
    mov [0x4215b6],cl ; 004052FD 880DB6154200
    %if ($ - %%insn_004052fd) > 6
        %error "LONG_004052FD"
    %endif
    times 6 - ($ - %%insn_004052fd) db 0
    %%insn_00405303:
    movsx edx,byte [0x4215b6] ; 00405303 0FBE15B6154200
    %if ($ - %%insn_00405303) > 7
        %error "LONG_00405303"
    %endif
    times 7 - ($ - %%insn_00405303) db 0
    %%insn_0040530a:
    mov eax,[ebp-0x4] ; 0040530A 8B45FC
    %if ($ - %%insn_0040530a) > 3
        %error "LONG_0040530A"
    %endif
    times 3 - ($ - %%insn_0040530a) db 0
    %%insn_0040530d:
    add eax,0x1 ; 0040530D 83C001
    %if ($ - %%insn_0040530d) > 3
        %error "LONG_0040530D"
    %endif
    times 3 - ($ - %%insn_0040530d) db 0
    %%insn_00405310:
    mov [ebp-0x4],eax ; 00405310 8945FC
    %if ($ - %%insn_00405310) > 3
        %error "LONG_00405310"
    %endif
    times 3 - ($ - %%insn_00405310) db 0
    %%insn_00405313:
    test edx,edx ; 00405313 85D2
    %if ($ - %%insn_00405313) > 2
        %error "LONG_00405313"
    %endif
    times 2 - ($ - %%insn_00405313) db 0
    %%insn_00405315:
    jl short 0x405351 ; 00405315 7C3A
    %if ($ - %%insn_00405315) > 2
        %error "LONG_00405315"
    %endif
    times 2 - ($ - %%insn_00405315) db 0
    %%insn_00405317:
    movsx ecx,byte [0x4215b6] ; 00405317 0FBE0DB6154200
    %if ($ - %%insn_00405317) > 7
        %error "LONG_00405317"
    %endif
    times 7 - ($ - %%insn_00405317) db 0
    %%insn_0040531e:
    movsx edx,byte [ecx+0x421d00] ; 0040531E 0FBE91001D4200
    %if ($ - %%insn_0040531e) > 7
        %error "LONG_0040531E"
    %endif
    times 7 - ($ - %%insn_0040531e) db 0
    %%insn_00405325:
    test edx,edx ; 00405325 85D2
    %if ($ - %%insn_00405325) > 2
        %error "LONG_00405325"
    %endif
    times 2 - ($ - %%insn_00405325) db 0
    %%insn_00405327:
    jnz short 0x40534f ; 00405327 7526
    %if ($ - %%insn_00405327) > 2
        %error "LONG_00405327"
    %endif
    times 2 - ($ - %%insn_00405327) db 0
    %%insn_00405329:
    movsx eax,byte [0x4215b6] ; 00405329 0FBE05B6154200
    %if ($ - %%insn_00405329) > 7
        %error "LONG_00405329"
    %endif
    times 7 - ($ - %%insn_00405329) db 0
    %%insn_00405330:
    mov byte [eax+0x421d00],0xff ; 00405330 C680001D4200FF
    %if ($ - %%insn_00405330) > 7
        %error "LONG_00405330"
    %endif
    times 7 - ($ - %%insn_00405330) db 0
    %%insn_00405337:
    mov cl,[0x4215b8] ; 00405337 8A0DB8154200
    %if ($ - %%insn_00405337) > 6
        %error "LONG_00405337"
    %endif
    times 6 - ($ - %%insn_00405337) db 0
    %%insn_0040533d:
    add cl,0x1 ; 0040533D 80C101
    %if ($ - %%insn_0040533d) > 3
        %error "LONG_0040533D"
    %endif
    times 3 - ($ - %%insn_0040533d) db 0
    %%insn_00405340:
    mov [0x4215b8],cl ; 00405340 880DB8154200
    %if ($ - %%insn_00405340) > 6
        %error "LONG_00405340"
    %endif
    times 6 - ($ - %%insn_00405340) db 0
    %%insn_00405346:
    mov ax,0x1 ; 00405346 66B80100
    %if ($ - %%insn_00405346) > 4
        %error "LONG_00405346"
    %endif
    times 4 - ($ - %%insn_00405346) db 0
    %%insn_0040534a:
    jmp 0x4054b0 ; 0040534A E961010000
    %if ($ - %%insn_0040534a) > 5
        %error "LONG_0040534A"
    %endif
    times 5 - ($ - %%insn_0040534a) db 0
    %%insn_0040534f:
    jmp short 0x405353 ; 0040534F EB02
    %if ($ - %%insn_0040534f) > 2
        %error "LONG_0040534F"
    %endif
    times 2 - ($ - %%insn_0040534f) db 0
    %%insn_00405351:
    jmp short 0x405355 ; 00405351 EB02
    %if ($ - %%insn_00405351) > 2
        %error "LONG_00405351"
    %endif
    times 2 - ($ - %%insn_00405351) db 0
    %%insn_00405353:
    jmp short 0x4052dd ; 00405353 EB88
    %if ($ - %%insn_00405353) > 2
        %error "LONG_00405353"
    %endif
    times 2 - ($ - %%insn_00405353) db 0
    %%insn_00405355:
    mov byte [0x4215b8],0x0 ; 00405355 C605B815420000
    %if ($ - %%insn_00405355) > 7
        %error "LONG_00405355"
    %endif
    times 7 - ($ - %%insn_00405355) db 0
    %%insn_0040535c:
    mov dl,[0x4215b5] ; 0040535C 8A15B5154200
    %if ($ - %%insn_0040535c) > 6
        %error "LONG_0040535C"
    %endif
    times 6 - ($ - %%insn_0040535c) db 0
    %%insn_00405362:
    add dl,0x1 ; 00405362 80C201
    %if ($ - %%insn_00405362) > 3
        %error "LONG_00405362"
    %endif
    times 3 - ($ - %%insn_00405362) db 0
    %%insn_00405365:
    mov [0x4215b5],dl ; 00405365 8815B5154200
    %if ($ - %%insn_00405365) > 6
        %error "LONG_00405365"
    %endif
    times 6 - ($ - %%insn_00405365) db 0
    %%insn_0040536b:
    movsx eax,byte [0x4215b5] ; 0040536B 0FBE05B5154200
    %if ($ - %%insn_0040536b) > 7
        %error "LONG_0040536B"
    %endif
    times 7 - ($ - %%insn_0040536b) db 0
    %%insn_00405372:
    cmp eax,0x31 ; 00405372 83F831
    %if ($ - %%insn_00405372) > 3
        %error "LONG_00405372"
    %endif
    times 3 - ($ - %%insn_00405372) db 0
    %%insn_00405375:
    jl short 0x4053c1 ; 00405375 7C4A
    %if ($ - %%insn_00405375) > 2
        %error "LONG_00405375"
    %endif
    times 2 - ($ - %%insn_00405375) db 0
    %%insn_00405377:
    mov byte [0x4215b5],0x0 ; 00405377 C605B515420000
    %if ($ - %%insn_00405377) > 7
        %error "LONG_00405377"
    %endif
    times 7 - ($ - %%insn_00405377) db 0
    %%insn_0040537e:
    mov byte [0x4215b7],0x2 ; 0040537E C605B715420002
    %if ($ - %%insn_0040537e) > 7
        %error "LONG_0040537E"
    %endif
    times 7 - ($ - %%insn_0040537e) db 0
    %%insn_00405385:
    mov byte [0x4215b8],0x0 ; 00405385 C605B815420000
    %if ($ - %%insn_00405385) > 7
        %error "LONG_00405385"
    %endif
    times 7 - ($ - %%insn_00405385) db 0
    %%insn_0040538c:
    mov word [ebp-0x8],0x0 ; 0040538C 66C745F80000
    %if ($ - %%insn_0040538c) > 6
        %error "LONG_0040538C"
    %endif
    times 6 - ($ - %%insn_0040538c) db 0
    %%insn_00405392:
    jmp short 0x4053a0 ; 00405392 EB0C
    %if ($ - %%insn_00405392) > 2
        %error "LONG_00405392"
    %endif
    times 2 - ($ - %%insn_00405392) db 0
    %%insn_00405394:
    mov cx,[ebp-0x8] ; 00405394 668B4DF8
    %if ($ - %%insn_00405394) > 4
        %error "LONG_00405394"
    %endif
    times 4 - ($ - %%insn_00405394) db 0
    %%insn_00405398:
    add cx,0x1 ; 00405398 6683C101
    %if ($ - %%insn_00405398) > 4
        %error "LONG_00405398"
    %endif
    times 4 - ($ - %%insn_00405398) db 0
    %%insn_0040539c:
    mov [ebp-0x8],cx ; 0040539C 66894DF8
    %if ($ - %%insn_0040539c) > 4
        %error "LONG_0040539C"
    %endif
    times 4 - ($ - %%insn_0040539c) db 0
    %%insn_004053a0:
    movsx edx,word [ebp-0x8] ; 004053A0 0FBF55F8
    %if ($ - %%insn_004053a0) > 4
        %error "LONG_004053A0"
    %endif
    times 4 - ($ - %%insn_004053a0) db 0
    %%insn_004053a4:
    cmp edx,0x31 ; 004053A4 83FA31
    %if ($ - %%insn_004053a4) > 3
        %error "LONG_004053A4"
    %endif
    times 3 - ($ - %%insn_004053a4) db 0
    %%insn_004053a7:
    jnl short 0x4053bf ; 004053A7 7D16
    %if ($ - %%insn_004053a7) > 2
        %error "LONG_004053A7"
    %endif
    times 2 - ($ - %%insn_004053a7) db 0
    %%insn_004053a9:
    movsx eax,word [ebp-0x8] ; 004053A9 0FBF45F8
    %if ($ - %%insn_004053a9) > 4
        %error "LONG_004053A9"
    %endif
    times 4 - ($ - %%insn_004053a9) db 0
    %%insn_004053ad:
    movsx ecx,word [ebp-0x8] ; 004053AD 0FBF4DF8
    %if ($ - %%insn_004053ad) > 4
        %error "LONG_004053AD"
    %endif
    times 4 - ($ - %%insn_004053ad) db 0
    %%insn_004053b1:
    mov dl,[eax+0x421580] ; 004053B1 8A9080154200
    %if ($ - %%insn_004053b1) > 6
        %error "LONG_004053B1"
    %endif
    times 6 - ($ - %%insn_004053b1) db 0
    %%insn_004053b7:
    mov [ecx+0x421d00],dl ; 004053B7 8891001D4200
    %if ($ - %%insn_004053b7) > 6
        %error "LONG_004053B7"
    %endif
    times 6 - ($ - %%insn_004053b7) db 0
    %%insn_004053bd:
    jmp short 0x405394 ; 004053BD EBD5
    %if ($ - %%insn_004053bd) > 2
        %error "LONG_004053BD"
    %endif
    times 2 - ($ - %%insn_004053bd) db 0
    %%insn_004053bf:
    jmp short 0x4053c6 ; 004053BF EB05
    %if ($ - %%insn_004053bf) > 2
        %error "LONG_004053BF"
    %endif
    times 2 - ($ - %%insn_004053bf) db 0
    %%insn_004053c1:
    jmp 0x4052a7 ; 004053C1 E9E1FEFFFF
    %if ($ - %%insn_004053c1) > 5
        %error "LONG_004053C1"
    %endif
    times 5 - ($ - %%insn_004053c1) db 0
    %%insn_004053c6:
    movsx eax,byte [0x4215b7] ; 004053C6 0FBE05B7154200
    %if ($ - %%insn_004053c6) > 7
        %error "LONG_004053C6"
    %endif
    times 7 - ($ - %%insn_004053c6) db 0
    %%insn_004053cd:
    cmp eax,0x2 ; 004053CD 83F802
    %if ($ - %%insn_004053cd) > 3
        %error "LONG_004053CD"
    %endif
    times 3 - ($ - %%insn_004053cd) db 0
    %%insn_004053d0:
    jnz 0x4054ad ; 004053D0 0F85D7000000
    %if ($ - %%insn_004053d0) > 6
        %error "LONG_004053D0"
    %endif
    times 6 - ($ - %%insn_004053d0) db 0
    %%insn_004053d6:
    movsx ecx,byte [0x4215b5] ; 004053D6 0FBE0DB5154200
    %if ($ - %%insn_004053d6) > 7
        %error "LONG_004053D6"
    %endif
    times 7 - ($ - %%insn_004053d6) db 0
    %%insn_004053dd:
    movsx edx,byte [ecx+0x421d00] ; 004053DD 0FBE91001D4200
    %if ($ - %%insn_004053dd) > 7
        %error "LONG_004053DD"
    %endif
    times 7 - ($ - %%insn_004053dd) db 0
    %%insn_004053e4:
    movsx eax,byte [ebp+0x8] ; 004053E4 0FBE4508
    %if ($ - %%insn_004053e4) > 4
        %error "LONG_004053E4"
    %endif
    times 4 - ($ - %%insn_004053e4) db 0
    db 0x3B, 0xD0 ; 004053E8 3BD0 | cmp edx,eax | encoding preserved
    %%insn_004053ea:
    jnz 0x405488 ; 004053EA 0F8598000000
    %if ($ - %%insn_004053ea) > 6
        %error "LONG_004053EA"
    %endif
    times 6 - ($ - %%insn_004053ea) db 0
    %%insn_004053f0:
    movsx ecx,byte [0x4215b5] ; 004053F0 0FBE0DB5154200
    %if ($ - %%insn_004053f0) > 7
        %error "LONG_004053F0"
    %endif
    times 7 - ($ - %%insn_004053f0) db 0
    %%insn_004053f7:
    movsx edx,byte [0x4215b8] ; 004053F7 0FBE15B8154200
    %if ($ - %%insn_004053f7) > 7
        %error "LONG_004053F7"
    %endif
    times 7 - ($ - %%insn_004053f7) db 0
    %%insn_004053fe:
    mov eax,[ecx*4+0x41b838] ; 004053FE 8B048D38B84100
    %if ($ - %%insn_004053fe) > 7
        %error "LONG_004053FE"
    %endif
    times 7 - ($ - %%insn_004053fe) db 0
    db 0x03, 0xC2 ; 00405405 03C2 | add eax,edx | encoding preserved
    %%insn_00405407:
    mov [ebp-0xc],eax ; 00405407 8945F4
    %if ($ - %%insn_00405407) > 3
        %error "LONG_00405407"
    %endif
    times 3 - ($ - %%insn_00405407) db 0
    %%insn_0040540a:
    jmp short 0x40541b ; 0040540A EB0F
    %if ($ - %%insn_0040540a) > 2
        %error "LONG_0040540A"
    %endif
    times 2 - ($ - %%insn_0040540a) db 0
    %%insn_0040540c:
    mov cl,[0x4215b8] ; 0040540C 8A0DB8154200
    %if ($ - %%insn_0040540c) > 6
        %error "LONG_0040540C"
    %endif
    times 6 - ($ - %%insn_0040540c) db 0
    %%insn_00405412:
    add cl,0x1 ; 00405412 80C101
    %if ($ - %%insn_00405412) > 3
        %error "LONG_00405412"
    %endif
    times 3 - ($ - %%insn_00405412) db 0
    %%insn_00405415:
    mov [0x4215b8],cl ; 00405415 880DB8154200
    %if ($ - %%insn_00405415) > 6
        %error "LONG_00405415"
    %endif
    times 6 - ($ - %%insn_00405415) db 0
    %%insn_0040541b:
    movsx edx,byte [0x4215b8] ; 0040541B 0FBE15B8154200
    %if ($ - %%insn_0040541b) > 7
        %error "LONG_0040541B"
    %endif
    times 7 - ($ - %%insn_0040541b) db 0
    %%insn_00405422:
    cmp edx,0x10 ; 00405422 83FA10
    %if ($ - %%insn_00405422) > 3
        %error "LONG_00405422"
    %endif
    times 3 - ($ - %%insn_00405422) db 0
    %%insn_00405425:
    jnl short 0x405481 ; 00405425 7D5A
    %if ($ - %%insn_00405425) > 2
        %error "LONG_00405425"
    %endif
    times 2 - ($ - %%insn_00405425) db 0
    %%insn_00405427:
    mov eax,[ebp-0xc] ; 00405427 8B45F4
    %if ($ - %%insn_00405427) > 3
        %error "LONG_00405427"
    %endif
    times 3 - ($ - %%insn_00405427) db 0
    %%insn_0040542a:
    mov cl,[eax] ; 0040542A 8A08
    %if ($ - %%insn_0040542a) > 2
        %error "LONG_0040542A"
    %endif
    times 2 - ($ - %%insn_0040542a) db 0
    %%insn_0040542c:
    mov [0x4215b6],cl ; 0040542C 880DB6154200
    %if ($ - %%insn_0040542c) > 6
        %error "LONG_0040542C"
    %endif
    times 6 - ($ - %%insn_0040542c) db 0
    %%insn_00405432:
    movsx edx,byte [0x4215b6] ; 00405432 0FBE15B6154200
    %if ($ - %%insn_00405432) > 7
        %error "LONG_00405432"
    %endif
    times 7 - ($ - %%insn_00405432) db 0
    %%insn_00405439:
    mov eax,[ebp-0xc] ; 00405439 8B45F4
    %if ($ - %%insn_00405439) > 3
        %error "LONG_00405439"
    %endif
    times 3 - ($ - %%insn_00405439) db 0
    %%insn_0040543c:
    add eax,0x1 ; 0040543C 83C001
    %if ($ - %%insn_0040543c) > 3
        %error "LONG_0040543C"
    %endif
    times 3 - ($ - %%insn_0040543c) db 0
    %%insn_0040543f:
    mov [ebp-0xc],eax ; 0040543F 8945F4
    %if ($ - %%insn_0040543f) > 3
        %error "LONG_0040543F"
    %endif
    times 3 - ($ - %%insn_0040543f) db 0
    %%insn_00405442:
    test edx,edx ; 00405442 85D2
    %if ($ - %%insn_00405442) > 2
        %error "LONG_00405442"
    %endif
    times 2 - ($ - %%insn_00405442) db 0
    %%insn_00405444:
    jl short 0x40547d ; 00405444 7C37
    %if ($ - %%insn_00405444) > 2
        %error "LONG_00405444"
    %endif
    times 2 - ($ - %%insn_00405444) db 0
    %%insn_00405446:
    movsx ecx,byte [0x4215b6] ; 00405446 0FBE0DB6154200
    %if ($ - %%insn_00405446) > 7
        %error "LONG_00405446"
    %endif
    times 7 - ($ - %%insn_00405446) db 0
    %%insn_0040544d:
    movsx edx,byte [ecx+0x421d00] ; 0040544D 0FBE91001D4200
    %if ($ - %%insn_0040544d) > 7
        %error "LONG_0040544D"
    %endif
    times 7 - ($ - %%insn_0040544d) db 0
    %%insn_00405454:
    test edx,edx ; 00405454 85D2
    %if ($ - %%insn_00405454) > 2
        %error "LONG_00405454"
    %endif
    times 2 - ($ - %%insn_00405454) db 0
    %%insn_00405456:
    jnz short 0x40547b ; 00405456 7523
    %if ($ - %%insn_00405456) > 2
        %error "LONG_00405456"
    %endif
    times 2 - ($ - %%insn_00405456) db 0
    %%insn_00405458:
    movsx eax,byte [0x4215b6] ; 00405458 0FBE05B6154200
    %if ($ - %%insn_00405458) > 7
        %error "LONG_00405458"
    %endif
    times 7 - ($ - %%insn_00405458) db 0
    %%insn_0040545f:
    mov byte [eax+0x421d00],0xff ; 0040545F C680001D4200FF
    %if ($ - %%insn_0040545f) > 7
        %error "LONG_0040545F"
    %endif
    times 7 - ($ - %%insn_0040545f) db 0
    %%insn_00405466:
    mov cl,[0x4215b8] ; 00405466 8A0DB8154200
    %if ($ - %%insn_00405466) > 6
        %error "LONG_00405466"
    %endif
    times 6 - ($ - %%insn_00405466) db 0
    %%insn_0040546c:
    add cl,0x1 ; 0040546C 80C101
    %if ($ - %%insn_0040546c) > 3
        %error "LONG_0040546C"
    %endif
    times 3 - ($ - %%insn_0040546c) db 0
    %%insn_0040546f:
    mov [0x4215b8],cl ; 0040546F 880DB8154200
    %if ($ - %%insn_0040546f) > 6
        %error "LONG_0040546F"
    %endif
    times 6 - ($ - %%insn_0040546f) db 0
    %%insn_00405475:
    mov ax,0x1 ; 00405475 66B80100
    %if ($ - %%insn_00405475) > 4
        %error "LONG_00405475"
    %endif
    times 4 - ($ - %%insn_00405475) db 0
    %%insn_00405479:
    jmp short 0x4054b0 ; 00405479 EB35
    %if ($ - %%insn_00405479) > 2
        %error "LONG_00405479"
    %endif
    times 2 - ($ - %%insn_00405479) db 0
    %%insn_0040547b:
    jmp short 0x40547f ; 0040547B EB02
    %if ($ - %%insn_0040547b) > 2
        %error "LONG_0040547B"
    %endif
    times 2 - ($ - %%insn_0040547b) db 0
    %%insn_0040547d:
    jmp short 0x405481 ; 0040547D EB02
    %if ($ - %%insn_0040547d) > 2
        %error "LONG_0040547D"
    %endif
    times 2 - ($ - %%insn_0040547d) db 0
    %%insn_0040547f:
    jmp short 0x40540c ; 0040547F EB8B
    %if ($ - %%insn_0040547f) > 2
        %error "LONG_0040547F"
    %endif
    times 2 - ($ - %%insn_0040547f) db 0
    %%insn_00405481:
    mov byte [0x4215b8],0x0 ; 00405481 C605B815420000
    %if ($ - %%insn_00405481) > 7
        %error "LONG_00405481"
    %endif
    times 7 - ($ - %%insn_00405481) db 0
    %%insn_00405488:
    mov dl,[0x4215b5] ; 00405488 8A15B5154200
    %if ($ - %%insn_00405488) > 6
        %error "LONG_00405488"
    %endif
    times 6 - ($ - %%insn_00405488) db 0
    %%insn_0040548e:
    add dl,0x1 ; 0040548E 80C201
    %if ($ - %%insn_0040548e) > 3
        %error "LONG_0040548E"
    %endif
    times 3 - ($ - %%insn_0040548e) db 0
    %%insn_00405491:
    mov [0x4215b5],dl ; 00405491 8815B5154200
    %if ($ - %%insn_00405491) > 6
        %error "LONG_00405491"
    %endif
    times 6 - ($ - %%insn_00405491) db 0
    %%insn_00405497:
    movsx eax,byte [0x4215b5] ; 00405497 0FBE05B5154200
    %if ($ - %%insn_00405497) > 7
        %error "LONG_00405497"
    %endif
    times 7 - ($ - %%insn_00405497) db 0
    %%insn_0040549e:
    cmp eax,0x31 ; 0040549E 83F831
    %if ($ - %%insn_0040549e) > 3
        %error "LONG_0040549E"
    %endif
    times 3 - ($ - %%insn_0040549e) db 0
    %%insn_004054a1:
    jl short 0x4054a8 ; 004054A1 7C05
    %if ($ - %%insn_004054a1) > 2
        %error "LONG_004054A1"
    %endif
    times 2 - ($ - %%insn_004054a1) db 0
    db 0x66, 0x33, 0xC0 ; 004054A3 6633C0 | xor ax,ax | encoding preserved
    %%insn_004054a6:
    jmp short 0x4054b0 ; 004054A6 EB08
    %if ($ - %%insn_004054a6) > 2
        %error "LONG_004054A6"
    %endif
    times 2 - ($ - %%insn_004054a6) db 0
    %%insn_004054a8:
    jmp 0x4053d6 ; 004054A8 E929FFFFFF
    %if ($ - %%insn_004054a8) > 5
        %error "LONG_004054A8"
    %endif
    times 5 - ($ - %%insn_004054a8) db 0
    db 0x66, 0x33, 0xC0 ; 004054AD 6633C0 | xor ax,ax | encoding preserved
    db 0x8B, 0xE5 ; 004054B0 8BE5 | mov esp,ebp | encoding preserved
    %%insn_004054b2:
    pop ebp ; 004054B2 5D
    %if ($ - %%insn_004054b2) > 1
        %error "LONG_004054B2"
    %endif
    times 1 - ($ - %%insn_004054b2) db 0
    %%insn_004054b3:
    ret ; 004054B3 C3
    %if ($ - %%insn_004054b3) > 1
        %error "LONG_004054B3"
    %endif
    times 1 - ($ - %%insn_004054b3) db 0
    %if ($ - %%fragment_start) != 547
        %error "function fragment size drift: 00405291"
    %endif
%endmacro
