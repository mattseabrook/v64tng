; PE virtual entry 0040C261
; Ghidra working symbol: FUN_0040c261
; Verified blocking VDX chunk decode/playback loop: still/delta composition and interleaved sound are consumed as one stream before GRV resumes.
; Generated losslessly; preserve byte identity after edits.

%macro emit_decode_vdx_stream_part_00 0
    %%fragment_start:
decode_vdx_stream:
    %%insn_0040c261:
    push ebp ; 0040C261 55
    %if ($ - %%insn_0040c261) > 1
        %error "LONG_0040C261"
    %endif
    times 1 - ($ - %%insn_0040c261) db 0
    db 0x8B, 0xEC ; 0040C262 8BEC | mov ebp,esp | encoding preserved
    %%insn_0040c264:
    sub esp,0x18 ; 0040C264 83EC18
    %if ($ - %%insn_0040c264) > 3
        %error "LONG_0040C264"
    %endif
    times 3 - ($ - %%insn_0040c264) db 0
    %%insn_0040c267:
    mov eax,[ebp+0x8] ; 0040C267 8B4508
    %if ($ - %%insn_0040c267) > 3
        %error "LONG_0040C267"
    %endif
    times 3 - ($ - %%insn_0040c267) db 0
    %%insn_0040c26a:
    cmp dword [eax+0x12],0x13880 ; 0040C26A 81781280380100
    %if ($ - %%insn_0040c26a) > 7
        %error "LONG_0040C26A"
    %endif
    times 7 - ($ - %%insn_0040c26a) db 0
    %%insn_0040c271:
    ja short 0x40c295 ; 0040C271 7722
    %if ($ - %%insn_0040c271) > 2
        %error "LONG_0040C271"
    %endif
    times 2 - ($ - %%insn_0040c271) db 0
    %%insn_0040c273:
    mov ecx,[ebp+0x8] ; 0040C273 8B4D08
    %if ($ - %%insn_0040c273) > 3
        %error "LONG_0040C273"
    %endif
    times 3 - ($ - %%insn_0040c273) db 0
    db 0x33, 0xD2 ; 0040C276 33D2 | xor edx,edx | encoding preserved
    %%insn_0040c278:
    mov dx,[ecx+0x10] ; 0040C278 668B5110
    %if ($ - %%insn_0040c278) > 4
        %error "LONG_0040C278"
    %endif
    times 4 - ($ - %%insn_0040c278) db 0
    %%insn_0040c27c:
    sar edx,byte 0x8 ; 0040C27C C1FA08
    %if ($ - %%insn_0040c27c) > 3
        %error "LONG_0040C27C"
    %endif
    times 3 - ($ - %%insn_0040c27c) db 0
    %%insn_0040c27f:
    cmp edx,0x67 ; 0040C27F 83FA67
    %if ($ - %%insn_0040c27f) > 3
        %error "LONG_0040C27F"
    %endif
    times 3 - ($ - %%insn_0040c27f) db 0
    %%insn_0040c282:
    jz short 0x40c2a6 ; 0040C282 7422
    %if ($ - %%insn_0040c282) > 2
        %error "LONG_0040C282"
    %endif
    times 2 - ($ - %%insn_0040c282) db 0
    %%insn_0040c284:
    mov eax,[ebp+0x8] ; 0040C284 8B4508
    %if ($ - %%insn_0040c284) > 3
        %error "LONG_0040C284"
    %endif
    times 3 - ($ - %%insn_0040c284) db 0
    db 0x33, 0xC9 ; 0040C287 33C9 | xor ecx,ecx | encoding preserved
    %%insn_0040c289:
    mov cx,[eax+0x10] ; 0040C289 668B4810
    %if ($ - %%insn_0040c289) > 4
        %error "LONG_0040C289"
    %endif
    times 4 - ($ - %%insn_0040c289) db 0
    %%insn_0040c28d:
    sar ecx,byte 0x8 ; 0040C28D C1F908
    %if ($ - %%insn_0040c28d) > 3
        %error "LONG_0040C28D"
    %endif
    times 3 - ($ - %%insn_0040c28d) db 0
    %%insn_0040c290:
    cmp ecx,0x77 ; 0040C290 83F977
    %if ($ - %%insn_0040c290) > 3
        %error "LONG_0040C290"
    %endif
    times 3 - ($ - %%insn_0040c290) db 0
    %%insn_0040c293:
    jz short 0x40c2a6 ; 0040C293 7411
    %if ($ - %%insn_0040c293) > 2
        %error "LONG_0040C293"
    %endif
    times 2 - ($ - %%insn_0040c293) db 0
    %%insn_0040c295:
    mov edx,[ebp+0x8] ; 0040C295 8B5508
    %if ($ - %%insn_0040c295) > 3
        %error "LONG_0040C295"
    %endif
    times 3 - ($ - %%insn_0040c295) db 0
    %%insn_0040c298:
    push edx ; 0040C298 52
    %if ($ - %%insn_0040c298) > 1
        %error "LONG_0040C298"
    %endif
    times 1 - ($ - %%insn_0040c298) db 0
    %%insn_0040c299:
    call 0x40c6a5 ; 0040C299 E807040000
    %if ($ - %%insn_0040c299) > 5
        %error "LONG_0040C299"
    %endif
    times 5 - ($ - %%insn_0040c299) db 0
    %%insn_0040c29e:
    add esp,0x4 ; 0040C29E 83C404
    %if ($ - %%insn_0040c29e) > 3
        %error "LONG_0040C29E"
    %endif
    times 3 - ($ - %%insn_0040c29e) db 0
    %%insn_0040c2a1:
    jmp 0x40c60c ; 0040C2A1 E966030000
    %if ($ - %%insn_0040c2a1) > 5
        %error "LONG_0040C2A1"
    %endif
    times 5 - ($ - %%insn_0040c2a1) db 0
    %%insn_0040c2a6:
    mov eax,[ebp+0x8] ; 0040C2A6 8B4508
    %if ($ - %%insn_0040c2a6) > 3
        %error "LONG_0040C2A6"
    %endif
    times 3 - ($ - %%insn_0040c2a6) db 0
    %%insn_0040c2a9:
    mov ecx,[eax+0x12] ; 0040C2A9 8B4812
    %if ($ - %%insn_0040c2a9) > 3
        %error "LONG_0040C2A9"
    %endif
    times 3 - ($ - %%insn_0040c2a9) db 0
    %%insn_0040c2ac:
    cmp ecx,[0x420a10] ; 0040C2AC 3B0D100A4200
    %if ($ - %%insn_0040c2ac) > 6
        %error "LONG_0040C2AC"
    %endif
    times 6 - ($ - %%insn_0040c2ac) db 0
    %%insn_0040c2b2:
    jna short 0x40c2b9 ; 0040C2B2 7605
    %if ($ - %%insn_0040c2b2) > 2
        %error "LONG_0040C2B2"
    %endif
    times 2 - ($ - %%insn_0040c2b2) db 0
    %%insn_0040c2b4:
    call 0x409d1e ; 0040C2B4 E865DAFFFF
    %if ($ - %%insn_0040c2b4) > 5
        %error "LONG_0040C2B4"
    %endif
    times 5 - ($ - %%insn_0040c2b4) db 0
    %%insn_0040c2b9:
    call 0x409d64 ; 0040C2B9 E8A6DAFFFF
    %if ($ - %%insn_0040c2b9) > 5
        %error "LONG_0040C2B9"
    %endif
    times 5 - ($ - %%insn_0040c2b9) db 0
    %%insn_0040c2be:
    mov edx,[ebp+0x8] ; 0040C2BE 8B5508
    %if ($ - %%insn_0040c2be) > 3
        %error "LONG_0040C2BE"
    %endif
    times 3 - ($ - %%insn_0040c2be) db 0
    %%insn_0040c2c1:
    mov eax,[edx+0x12] ; 0040C2C1 8B4212
    %if ($ - %%insn_0040c2c1) > 3
        %error "LONG_0040C2C1"
    %endif
    times 3 - ($ - %%insn_0040c2c1) db 0
    %%insn_0040c2c4:
    add eax,0x8 ; 0040C2C4 83C008
    %if ($ - %%insn_0040c2c4) > 3
        %error "LONG_0040C2C4"
    %endif
    times 3 - ($ - %%insn_0040c2c4) db 0
    %%insn_0040c2c7:
    cmp eax,[0x420a10] ; 0040C2C7 3B05100A4200
    %if ($ - %%insn_0040c2c7) > 6
        %error "LONG_0040C2C7"
    %endif
    times 6 - ($ - %%insn_0040c2c7) db 0
    %%insn_0040c2cd:
    jna short 0x40c2d4 ; 0040C2CD 7605
    %if ($ - %%insn_0040c2cd) > 2
        %error "LONG_0040C2CD"
    %endif
    times 2 - ($ - %%insn_0040c2cd) db 0
    %%insn_0040c2cf:
    jmp 0x40c60c ; 0040C2CF E938030000
    %if ($ - %%insn_0040c2cf) > 5
        %error "LONG_0040C2CF"
    %endif
    times 5 - ($ - %%insn_0040c2cf) db 0
    %%insn_0040c2d4:
    mov ecx,[ebp+0x8] ; 0040C2D4 8B4D08
    %if ($ - %%insn_0040c2d4) > 3
        %error "LONG_0040C2D4"
    %endif
    times 3 - ($ - %%insn_0040c2d4) db 0
    %%insn_0040c2d7:
    mov edx,[ecx+0x12] ; 0040C2D7 8B5112
    %if ($ - %%insn_0040c2d7) > 3
        %error "LONG_0040C2D7"
    %endif
    times 3 - ($ - %%insn_0040c2d7) db 0
    %%insn_0040c2da:
    add edx,0x8 ; 0040C2DA 83C208
    %if ($ - %%insn_0040c2da) > 3
        %error "LONG_0040C2DA"
    %endif
    times 3 - ($ - %%insn_0040c2da) db 0
    %%insn_0040c2dd:
    push edx ; 0040C2DD 52
    %if ($ - %%insn_0040c2dd) > 1
        %error "LONG_0040C2DD"
    %endif
    times 1 - ($ - %%insn_0040c2dd) db 0
    %%insn_0040c2de:
    call 0x409e85 ; 0040C2DE E8A2DBFFFF
    %if ($ - %%insn_0040c2de) > 5
        %error "LONG_0040C2DE"
    %endif
    times 5 - ($ - %%insn_0040c2de) db 0
    %%insn_0040c2e3:
    add esp,0x4 ; 0040C2E3 83C404
    %if ($ - %%insn_0040c2e3) > 3
        %error "LONG_0040C2E3"
    %endif
    times 3 - ($ - %%insn_0040c2e3) db 0
    %%insn_0040c2e6:
    mov ecx,[ebp+0x8] ; 0040C2E6 8B4D08
    %if ($ - %%insn_0040c2e6) > 3
        %error "LONG_0040C2E6"
    %endif
    times 3 - ($ - %%insn_0040c2e6) db 0
    %%insn_0040c2e9:
    mov [ecx+0x18],eax ; 0040C2E9 894118
    %if ($ - %%insn_0040c2e9) > 3
        %error "LONG_0040C2E9"
    %endif
    times 3 - ($ - %%insn_0040c2e9) db 0
    %%insn_0040c2ec:
    push dword 0x8 ; 0040C2EC 6A08
    %if ($ - %%insn_0040c2ec) > 2
        %error "LONG_0040C2EC"
    %endif
    times 2 - ($ - %%insn_0040c2ec) db 0
    %%insn_0040c2ee:
    mov edx,[ebp+0x8] ; 0040C2EE 8B5508
    %if ($ - %%insn_0040c2ee) > 3
        %error "LONG_0040C2EE"
    %endif
    times 3 - ($ - %%insn_0040c2ee) db 0
    %%insn_0040c2f1:
    mov eax,[edx+0x18] ; 0040C2F1 8B4218
    %if ($ - %%insn_0040c2f1) > 3
        %error "LONG_0040C2F1"
    %endif
    times 3 - ($ - %%insn_0040c2f1) db 0
    %%insn_0040c2f4:
    mov ecx,[ebp+0x8] ; 0040C2F4 8B4D08
    %if ($ - %%insn_0040c2f4) > 3
        %error "LONG_0040C2F4"
    %endif
    times 3 - ($ - %%insn_0040c2f4) db 0
    %%insn_0040c2f7:
    add eax,[ecx+0x12] ; 0040C2F7 034112
    %if ($ - %%insn_0040c2f7) > 3
        %error "LONG_0040C2F7"
    %endif
    times 3 - ($ - %%insn_0040c2f7) db 0
    %%insn_0040c2fa:
    push eax ; 0040C2FA 50
    %if ($ - %%insn_0040c2fa) > 1
        %error "LONG_0040C2FA"
    %endif
    times 1 - ($ - %%insn_0040c2fa) db 0
    %%insn_0040c2fb:
    lea edx,[ebp-0xc] ; 0040C2FB 8D55F4
    %if ($ - %%insn_0040c2fb) > 3
        %error "LONG_0040C2FB"
    %endif
    times 3 - ($ - %%insn_0040c2fb) db 0
    %%insn_0040c2fe:
    push edx ; 0040C2FE 52
    %if ($ - %%insn_0040c2fe) > 1
        %error "LONG_0040C2FE"
    %endif
    times 1 - ($ - %%insn_0040c2fe) db 0
    %%insn_0040c2ff:
    call 0x40ca10 ; 0040C2FF E80C070000
    %if ($ - %%insn_0040c2ff) > 5
        %error "LONG_0040C2FF"
    %endif
    times 5 - ($ - %%insn_0040c2ff) db 0
    %%insn_0040c304:
    add esp,0xc ; 0040C304 83C40C
    %if ($ - %%insn_0040c304) > 3
        %error "LONG_0040C304"
    %endif
    times 3 - ($ - %%insn_0040c304) db 0
    %%insn_0040c307:
    mov eax,[ebp+0x8] ; 0040C307 8B4508
    %if ($ - %%insn_0040c307) > 3
        %error "LONG_0040C307"
    %endif
    times 3 - ($ - %%insn_0040c307) db 0
    db 0x33, 0xC9 ; 0040C30A 33C9 | xor ecx,ecx | encoding preserved
    %%insn_0040c30c:
    mov cx,[eax+0x10] ; 0040C30C 668B4810
    %if ($ - %%insn_0040c30c) > 4
        %error "LONG_0040C30C"
    %endif
    times 4 - ($ - %%insn_0040c30c) db 0
    %%insn_0040c310:
    cmp ecx,0x7700 ; 0040C310 81F900770000
    %if ($ - %%insn_0040c310) > 6
        %error "LONG_0040C310"
    %endif
    times 6 - ($ - %%insn_0040c310) db 0
    %%insn_0040c316:
    jng short 0x40c381 ; 0040C316 7E69
    %if ($ - %%insn_0040c316) > 2
        %error "LONG_0040C316"
    %endif
    times 2 - ($ - %%insn_0040c316) db 0
    %%insn_0040c318:
    mov edx,[ebp+0x8] ; 0040C318 8B5508
    %if ($ - %%insn_0040c318) > 3
        %error "LONG_0040C318"
    %endif
    times 3 - ($ - %%insn_0040c318) db 0
    %%insn_0040c31b:
    cmp dword [edx+0x12],0xffff ; 0040C31B 817A12FFFF0000
    %if ($ - %%insn_0040c31b) > 7
        %error "LONG_0040C31B"
    %endif
    times 7 - ($ - %%insn_0040c31b) db 0
    %%insn_0040c322:
    jz short 0x40c381 ; 0040C322 745D
    %if ($ - %%insn_0040c322) > 2
        %error "LONG_0040C322"
    %endif
    times 2 - ($ - %%insn_0040c322) db 0
    %%insn_0040c324:
    mov eax,[ebp+0x8] ; 0040C324 8B4508
    %if ($ - %%insn_0040c324) > 3
        %error "LONG_0040C324"
    %endif
    times 3 - ($ - %%insn_0040c324) db 0
    db 0x33, 0xC9 ; 0040C327 33C9 | xor ecx,ecx | encoding preserved
    %%insn_0040c329:
    mov cx,[eax+0x16] ; 0040C329 668B4816
    %if ($ - %%insn_0040c329) > 4
        %error "LONG_0040C329"
    %endif
    times 4 - ($ - %%insn_0040c329) db 0
    %%insn_0040c32d:
    and ecx,0xff ; 0040C32D 81E1FF000000
    %if ($ - %%insn_0040c32d) > 6
        %error "LONG_0040C32D"
    %endif
    times 6 - ($ - %%insn_0040c32d) db 0
    %%insn_0040c333:
    mov [ebp-0x14],cl ; 0040C333 884DEC
    %if ($ - %%insn_0040c333) > 3
        %error "LONG_0040C333"
    %endif
    times 3 - ($ - %%insn_0040c333) db 0
    %%insn_0040c336:
    mov edx,[ebp+0x8] ; 0040C336 8B5508
    %if ($ - %%insn_0040c336) > 3
        %error "LONG_0040C336"
    %endif
    times 3 - ($ - %%insn_0040c336) db 0
    db 0x33, 0xC0 ; 0040C339 33C0 | xor eax,eax | encoding preserved
    %%insn_0040c33b:
    mov ax,[edx+0x16] ; 0040C33B 668B4216
    %if ($ - %%insn_0040c33b) > 4
        %error "LONG_0040C33B"
    %endif
    times 4 - ($ - %%insn_0040c33b) db 0
    %%insn_0040c33f:
    sar eax,byte 0x8 ; 0040C33F C1F808
    %if ($ - %%insn_0040c33f) > 3
        %error "LONG_0040C33F"
    %endif
    times 3 - ($ - %%insn_0040c33f) db 0
    %%insn_0040c342:
    mov [ebp-0x10],al ; 0040C342 8845F0
    %if ($ - %%insn_0040c342) > 3
        %error "LONG_0040C342"
    %endif
    times 3 - ($ - %%insn_0040c342) db 0
    %%insn_0040c345:
    mov ecx,[ebp+0x8] ; 0040C345 8B4D08
    %if ($ - %%insn_0040c345) > 3
        %error "LONG_0040C345"
    %endif
    times 3 - ($ - %%insn_0040c345) db 0
    %%insn_0040c348:
    add ecx,0x12 ; 0040C348 83C112
    %if ($ - %%insn_0040c348) > 3
        %error "LONG_0040C348"
    %endif
    times 3 - ($ - %%insn_0040c348) db 0
    %%insn_0040c34b:
    push ecx ; 0040C34B 51
    %if ($ - %%insn_0040c34b) > 1
        %error "LONG_0040C34B"
    %endif
    times 1 - ($ - %%insn_0040c34b) db 0
    %%insn_0040c34c:
    movzx dx,byte [ebp-0x10] ; 0040C34C 660FB655F0
    %if ($ - %%insn_0040c34c) > 5
        %error "LONG_0040C34C"
    %endif
    times 5 - ($ - %%insn_0040c34c) db 0
    %%insn_0040c351:
    push edx ; 0040C351 52
    %if ($ - %%insn_0040c351) > 1
        %error "LONG_0040C351"
    %endif
    times 1 - ($ - %%insn_0040c351) db 0
    %%insn_0040c352:
    movzx ax,byte [ebp-0x14] ; 0040C352 660FB645EC
    %if ($ - %%insn_0040c352) > 5
        %error "LONG_0040C352"
    %endif
    times 5 - ($ - %%insn_0040c352) db 0
    %%insn_0040c357:
    push eax ; 0040C357 50
    %if ($ - %%insn_0040c357) > 1
        %error "LONG_0040C357"
    %endif
    times 1 - ($ - %%insn_0040c357) db 0
    %%insn_0040c358:
    mov ecx,[ebp+0x8] ; 0040C358 8B4D08
    %if ($ - %%insn_0040c358) > 3
        %error "LONG_0040C358"
    %endif
    times 3 - ($ - %%insn_0040c358) db 0
    %%insn_0040c35b:
    mov edx,[ecx+0x18] ; 0040C35B 8B5118
    %if ($ - %%insn_0040c35b) > 3
        %error "LONG_0040C35B"
    %endif
    times 3 - ($ - %%insn_0040c35b) db 0
    %%insn_0040c35e:
    push edx ; 0040C35E 52
    %if ($ - %%insn_0040c35e) > 1
        %error "LONG_0040C35E"
    %endif
    times 1 - ($ - %%insn_0040c35e) db 0
    %%insn_0040c35f:
    call 0x40c0bb ; 0040C35F E857FDFFFF
    %if ($ - %%insn_0040c35f) > 5
        %error "LONG_0040C35F"
    %endif
    times 5 - ($ - %%insn_0040c35f) db 0
    %%insn_0040c364:
    add esp,0x10 ; 0040C364 83C410
    %if ($ - %%insn_0040c364) > 3
        %error "LONG_0040C364"
    %endif
    times 3 - ($ - %%insn_0040c364) db 0
    %%insn_0040c367:
    mov ecx,[ebp+0x8] ; 0040C367 8B4D08
    %if ($ - %%insn_0040c367) > 3
        %error "LONG_0040C367"
    %endif
    times 3 - ($ - %%insn_0040c367) db 0
    %%insn_0040c36a:
    mov [ecx+0x1c],eax ; 0040C36A 89411C
    %if ($ - %%insn_0040c36a) > 3
        %error "LONG_0040C36A"
    %endif
    times 3 - ($ - %%insn_0040c36a) db 0
    %%insn_0040c36d:
    mov edx,[ebp+0x8] ; 0040C36D 8B5508
    %if ($ - %%insn_0040c36d) > 3
        %error "LONG_0040C36D"
    %endif
    times 3 - ($ - %%insn_0040c36d) db 0
    %%insn_0040c370:
    mov ax,[edx+0x10] ; 0040C370 668B4210
    %if ($ - %%insn_0040c370) > 4
        %error "LONG_0040C370"
    %endif
    times 4 - ($ - %%insn_0040c370) db 0
    %%insn_0040c374:
    sub ax,0x1000 ; 0040C374 662D0010
    %if ($ - %%insn_0040c374) > 4
        %error "LONG_0040C374"
    %endif
    times 4 - ($ - %%insn_0040c374) db 0
    %%insn_0040c378:
    mov ecx,[ebp+0x8] ; 0040C378 8B4D08
    %if ($ - %%insn_0040c378) > 3
        %error "LONG_0040C378"
    %endif
    times 3 - ($ - %%insn_0040c378) db 0
    %%insn_0040c37b:
    mov [ecx+0x10],ax ; 0040C37B 66894110
    %if ($ - %%insn_0040c37b) > 4
        %error "LONG_0040C37B"
    %endif
    times 4 - ($ - %%insn_0040c37b) db 0
    %%insn_0040c37f:
    jmp short 0x40c38d ; 0040C37F EB0C
    %if ($ - %%insn_0040c37f) > 2
        %error "LONG_0040C37F"
    %endif
    times 2 - ($ - %%insn_0040c37f) db 0
    %%insn_0040c381:
    mov edx,[ebp+0x8] ; 0040C381 8B5508
    %if ($ - %%insn_0040c381) > 3
        %error "LONG_0040C381"
    %endif
    times 3 - ($ - %%insn_0040c381) db 0
    %%insn_0040c384:
    mov eax,[ebp+0x8] ; 0040C384 8B4508
    %if ($ - %%insn_0040c384) > 3
        %error "LONG_0040C384"
    %endif
    times 3 - ($ - %%insn_0040c384) db 0
    %%insn_0040c387:
    mov ecx,[eax+0x18] ; 0040C387 8B4818
    %if ($ - %%insn_0040c387) > 3
        %error "LONG_0040C387"
    %endif
    times 3 - ($ - %%insn_0040c387) db 0
    %%insn_0040c38a:
    mov [edx+0x1c],ecx ; 0040C38A 894A1C
    %if ($ - %%insn_0040c38a) > 3
        %error "LONG_0040C38A"
    %endif
    times 3 - ($ - %%insn_0040c38a) db 0
    %%insn_0040c38d:
    mov edx,[ebp+0x8] ; 0040C38D 8B5508
    %if ($ - %%insn_0040c38d) > 3
        %error "LONG_0040C38D"
    %endif
    times 3 - ($ - %%insn_0040c38d) db 0
    db 0x33, 0xC0 ; 0040C390 33C0 | xor eax,eax | encoding preserved
    %%insn_0040c392:
    mov ax,[edx+0x10] ; 0040C392 668B4210
    %if ($ - %%insn_0040c392) > 4
        %error "LONG_0040C392"
    %endif
    times 4 - ($ - %%insn_0040c392) db 0
    %%insn_0040c396:
    mov [ebp-0x18],eax ; 0040C396 8945E8
    %if ($ - %%insn_0040c396) > 3
        %error "LONG_0040C396"
    %endif
    times 3 - ($ - %%insn_0040c396) db 0
    %%insn_0040c399:
    mov ecx,[ebp-0x18] ; 0040C399 8B4DE8
    %if ($ - %%insn_0040c399) > 3
        %error "LONG_0040C399"
    %endif
    times 3 - ($ - %%insn_0040c399) db 0
; Per-chunk VDX type dispatch after raw or 77h-LZSS payload preparation.
vdx_chunk_dispatch:
    %%insn_0040c39c:
    sub ecx,0x6700 ; 0040C39C 81E900670000
    %if ($ - %%insn_0040c39c) > 6
        %error "LONG_0040C39C"
    %endif
    times 6 - ($ - %%insn_0040c39c) db 0
    %%insn_0040c3a2:
    mov [ebp-0x18],ecx ; 0040C3A2 894DE8
    %if ($ - %%insn_0040c3a2) > 3
        %error "LONG_0040C3A2"
    %endif
    times 3 - ($ - %%insn_0040c3a2) db 0
    %%insn_0040c3a5:
    cmp dword [ebp-0x18],0x80 ; 0040C3A5 817DE880000000
    %if ($ - %%insn_0040c3a5) > 7
        %error "LONG_0040C3A5"
    %endif
    times 7 - ($ - %%insn_0040c3a5) db 0
    %%insn_0040c3ac:
    ja 0x40c5ab ; 0040C3AC 0F87F9010000
    %if ($ - %%insn_0040c3ac) > 6
        %error "LONG_0040C3AC"
    %endif
    times 6 - ($ - %%insn_0040c3ac) db 0
    %%insn_0040c3b2:
    mov eax,[ebp-0x18] ; 0040C3B2 8B45E8
    %if ($ - %%insn_0040c3b2) > 3
        %error "LONG_0040C3B2"
    %endif
    times 3 - ($ - %%insn_0040c3b2) db 0
    db 0x33, 0xD2 ; 0040C3B5 33D2 | xor edx,edx | encoding preserved
    %%insn_0040c3b7:
    mov dl,[eax+0x40c624] ; 0040C3B7 8A9024C64000
    %if ($ - %%insn_0040c3b7) > 6
        %error "LONG_0040C3B7"
    %endif
    times 6 - ($ - %%insn_0040c3b7) db 0
    %%insn_0040c3bd:
    jmp dword near [edx*4+0x40c610] ; 0040C3BD FF249510C64000
    %if ($ - %%insn_0040c3bd) > 7
        %error "LONG_0040C3BD"
    %endif
    times 7 - ($ - %%insn_0040c3bd) db 0
    %%insn_0040c3c4:
    mov ecx,[ebp+0x8] ; 0040C3C4 8B4D08
    %if ($ - %%insn_0040c3c4) > 3
        %error "LONG_0040C3C4"
    %endif
    times 3 - ($ - %%insn_0040c3c4) db 0
    db 0x33, 0xD2 ; 0040C3C7 33D2 | xor edx,edx | encoding preserved
    %%insn_0040c3c9:
    mov dx,[ecx+0x62] ; 0040C3C9 668B5162
    %if ($ - %%insn_0040c3c9) > 4
        %error "LONG_0040C3C9"
    %endif
    times 4 - ($ - %%insn_0040c3c9) db 0
    %%insn_0040c3cd:
    and edx,0x2 ; 0040C3CD 83E202
    %if ($ - %%insn_0040c3cd) > 3
        %error "LONG_0040C3CD"
    %endif
    times 3 - ($ - %%insn_0040c3cd) db 0
    %%insn_0040c3d0:
    test edx,edx ; 0040C3D0 85D2
    %if ($ - %%insn_0040c3d0) > 2
        %error "LONG_0040C3D0"
    %endif
    times 2 - ($ - %%insn_0040c3d0) db 0
    %%insn_0040c3d2:
    jz short 0x40c42e ; 0040C3D2 745A
    %if ($ - %%insn_0040c3d2) > 2
        %error "LONG_0040C3D2"
    %endif
    times 2 - ($ - %%insn_0040c3d2) db 0
    %%insn_0040c3d4:
    movsx eax,word [0x41f310] ; 0040C3D4 0FBF0510F34100
    %if ($ - %%insn_0040c3d4) > 7
        %error "LONG_0040C3D4"
    %endif
    times 7 - ($ - %%insn_0040c3d4) db 0
    %%insn_0040c3db:
    test eax,eax ; 0040C3DB 85C0
    %if ($ - %%insn_0040c3db) > 2
        %error "LONG_0040C3DB"
    %endif
    times 2 - ($ - %%insn_0040c3db) db 0
    %%insn_0040c3dd:
    jz short 0x40c3f2 ; 0040C3DD 7413
    %if ($ - %%insn_0040c3dd) > 2
        %error "LONG_0040C3DD"
    %endif
    times 2 - ($ - %%insn_0040c3dd) db 0
    %%insn_0040c3df:
    cmp dword [0x420e50],0x1 ; 0040C3DF 833D500E420001
    %if ($ - %%insn_0040c3df) > 7
        %error "LONG_0040C3DF"
    %endif
    times 7 - ($ - %%insn_0040c3df) db 0
    %%insn_0040c3e6:
    jnz short 0x40c3f2 ; 0040C3E6 750A
    %if ($ - %%insn_0040c3e6) > 2
        %error "LONG_0040C3E6"
    %endif
    times 2 - ($ - %%insn_0040c3e6) db 0
    %%insn_0040c3e8:
    mov dword [0x420e50],0x0 ; 0040C3E8 C705500E420000000000
    %if ($ - %%insn_0040c3e8) > 10
        %error "LONG_0040C3E8"
    %endif
    times 10 - ($ - %%insn_0040c3e8) db 0
    %%insn_0040c3f2:
    mov ecx,[0x4212d0] ; 0040C3F2 8B0DD0124200
    %if ($ - %%insn_0040c3f2) > 6
        %error "LONG_0040C3F2"
    %endif
    times 6 - ($ - %%insn_0040c3f2) db 0
    %%insn_0040c3f8:
    mov [ebp-0x4],ecx ; 0040C3F8 894DFC
    %if ($ - %%insn_0040c3f8) > 3
        %error "LONG_0040C3F8"
    %endif
    times 3 - ($ - %%insn_0040c3f8) db 0
    %%insn_0040c3fb:
    mov edx,[ebp+0x8] ; 0040C3FB 8B5508
    %if ($ - %%insn_0040c3fb) > 3
        %error "LONG_0040C3FB"
    %endif
    times 3 - ($ - %%insn_0040c3fb) db 0
    db 0x33, 0xC0 ; 0040C3FE 33C0 | xor eax,eax | encoding preserved
    %%insn_0040c400:
    mov ax,[edx+0x62] ; 0040C400 668B4262
    %if ($ - %%insn_0040c400) > 4
        %error "LONG_0040C400"
    %endif
    times 4 - ($ - %%insn_0040c400) db 0
    %%insn_0040c404:
    and eax,0x4 ; 0040C404 83E004
    %if ($ - %%insn_0040c404) > 3
        %error "LONG_0040C404"
    %endif
    times 3 - ($ - %%insn_0040c404) db 0
    %%insn_0040c407:
    test eax,eax ; 0040C407 85C0
    %if ($ - %%insn_0040c407) > 2
        %error "LONG_0040C407"
    %endif
    times 2 - ($ - %%insn_0040c407) db 0
    %%insn_0040c409:
    jnz short 0x40c414 ; 0040C409 7509
    %if ($ - %%insn_0040c409) > 2
        %error "LONG_0040C409"
    %endif
    times 2 - ($ - %%insn_0040c409) db 0
    %%insn_0040c40b:
    mov byte [0x4212cc],0x0 ; 0040C40B C605CC12420000
    %if ($ - %%insn_0040c40b) > 7
        %error "LONG_0040C40B"
    %endif
    times 7 - ($ - %%insn_0040c40b) db 0
    %%insn_0040c412:
    jmp short 0x40c41b ; 0040C412 EB07
    %if ($ - %%insn_0040c412) > 2
        %error "LONG_0040C412"
    %endif
    times 2 - ($ - %%insn_0040c412) db 0
    %%insn_0040c414:
    mov byte [0x4212cc],0xff ; 0040C414 C605CC124200FF
    %if ($ - %%insn_0040c414) > 7
        %error "LONG_0040C414"
    %endif
    times 7 - ($ - %%insn_0040c414) db 0
    %%insn_0040c41b:
    mov ecx,[ebp+0x8] ; 0040C41B 8B4D08
    %if ($ - %%insn_0040c41b) > 3
        %error "LONG_0040C41B"
    %endif
    times 3 - ($ - %%insn_0040c41b) db 0
    %%insn_0040c41e:
    mov dx,[ecx+0x62] ; 0040C41E 668B5162
    %if ($ - %%insn_0040c41e) > 4
        %error "LONG_0040C41E"
    %endif
    times 4 - ($ - %%insn_0040c41e) db 0
    %%insn_0040c422:
    or dh,0x1 ; 0040C422 80CE01
    %if ($ - %%insn_0040c422) > 3
        %error "LONG_0040C422"
    %endif
    times 3 - ($ - %%insn_0040c422) db 0
    %%insn_0040c425:
    mov eax,[ebp+0x8] ; 0040C425 8B4508
    %if ($ - %%insn_0040c425) > 3
        %error "LONG_0040C425"
    %endif
    times 3 - ($ - %%insn_0040c425) db 0
    %%insn_0040c428:
    mov [eax+0x62],dx ; 0040C428 66895062
    %if ($ - %%insn_0040c428) > 4
        %error "LONG_0040C428"
    %endif
    times 4 - ($ - %%insn_0040c428) db 0
    %%insn_0040c42c:
    jmp short 0x40c44f ; 0040C42C EB21
    %if ($ - %%insn_0040c42c) > 2
        %error "LONG_0040C42C"
    %endif
    times 2 - ($ - %%insn_0040c42c) db 0
    %%insn_0040c42e:
    mov ecx,[0x41bd70] ; 0040C42E 8B0D70BD4100
    %if ($ - %%insn_0040c42e) > 6
        %error "LONG_0040C42E"
    %endif
    times 6 - ($ - %%insn_0040c42e) db 0
    %%insn_0040c434:
    imul ecx,ecx,0x280 ; 0040C434 69C980020000
    %if ($ - %%insn_0040c434) > 6
        %error "LONG_0040C434"
    %endif
    times 6 - ($ - %%insn_0040c434) db 0
    %%insn_0040c43a:
    mov edx,[0x42133c] ; 0040C43A 8B153C134200
    %if ($ - %%insn_0040c43a) > 6
        %error "LONG_0040C43A"
    %endif
    times 6 - ($ - %%insn_0040c43a) db 0
    db 0x03, 0xD1 ; 0040C440 03D1 | add edx,ecx | encoding preserved
    %%insn_0040c442:
    mov [ebp-0x4],edx ; 0040C442 8955FC
    %if ($ - %%insn_0040c442) > 3
        %error "LONG_0040C442"
    %endif
    times 3 - ($ - %%insn_0040c442) db 0
    %%insn_0040c445:
    mov eax,[ebp+0x8] ; 0040C445 8B4508
    %if ($ - %%insn_0040c445) > 3
        %error "LONG_0040C445"
    %endif
    times 3 - ($ - %%insn_0040c445) db 0
    %%insn_0040c448:
    mov dword [eax+0x4c],0x280 ; 0040C448 C7404C80020000
    %if ($ - %%insn_0040c448) > 7
        %error "LONG_0040C448"
    %endif
    times 7 - ($ - %%insn_0040c448) db 0
    %%insn_0040c44f:
    mov ecx,[ebp+0x8] ; 0040C44F 8B4D08
    %if ($ - %%insn_0040c44f) > 3
        %error "LONG_0040C44F"
    %endif
    times 3 - ($ - %%insn_0040c44f) db 0
    db 0x33, 0xD2 ; 0040C452 33D2 | xor edx,edx | encoding preserved
    %%insn_0040c454:
    mov dx,[ecx+0x62] ; 0040C454 668B5162
    %if ($ - %%insn_0040c454) > 4
        %error "LONG_0040C454"
    %endif
    times 4 - ($ - %%insn_0040c454) db 0
    %%insn_0040c458:
    and edx,0x2 ; 0040C458 83E202
    %if ($ - %%insn_0040c458) > 3
        %error "LONG_0040C458"
    %endif
    times 3 - ($ - %%insn_0040c458) db 0
    %%insn_0040c45b:
    test edx,edx ; 0040C45B 85D2
    %if ($ - %%insn_0040c45b) > 2
        %error "LONG_0040C45B"
    %endif
    times 2 - ($ - %%insn_0040c45b) db 0
    %%insn_0040c45d:
    jnz short 0x40c491 ; 0040C45D 7532
    %if ($ - %%insn_0040c45d) > 2
        %error "LONG_0040C45D"
    %endif
    times 2 - ($ - %%insn_0040c45d) db 0
    %%insn_0040c45f:
    mov dword [0x41f590],0x1 ; 0040C45F C70590F5410001000000
    %if ($ - %%insn_0040c45f) > 10
        %error "LONG_0040C45F"
    %endif
    times 10 - ($ - %%insn_0040c45f) db 0
    %%insn_0040c469:
    mov dword [0x421354],0x0 ; 0040C469 C7055413420000000000
    %if ($ - %%insn_0040c469) > 10
        %error "LONG_0040C469"
    %endif
    times 10 - ($ - %%insn_0040c469) db 0
    %%insn_0040c473:
    mov dword [0x421358],0x280 ; 0040C473 C7055813420080020000
    %if ($ - %%insn_0040c473) > 10
        %error "LONG_0040C473"
    %endif
    times 10 - ($ - %%insn_0040c473) db 0
    %%insn_0040c47d:
    mov dword [0x42135c],0x0 ; 0040C47D C7055C13420000000000
    %if ($ - %%insn_0040c47d) > 10
        %error "LONG_0040C47D"
    %endif
    times 10 - ($ - %%insn_0040c47d) db 0
    %%insn_0040c487:
    mov dword [0x421360],0x1e0 ; 0040C487 C70560134200E0010000
    %if ($ - %%insn_0040c487) > 10
        %error "LONG_0040C487"
    %endif
    times 10 - ($ - %%insn_0040c487) db 0
    %%insn_0040c491:
    mov eax,[ebp+0x8] ; 0040C491 8B4508
    %if ($ - %%insn_0040c491) > 3
        %error "LONG_0040C491"
    %endif
    times 3 - ($ - %%insn_0040c491) db 0
    %%insn_0040c494:
    mov ecx,[eax+0x54] ; 0040C494 8B4854
    %if ($ - %%insn_0040c494) > 3
        %error "LONG_0040C494"
    %endif
    times 3 - ($ - %%insn_0040c494) db 0
    %%insn_0040c497:
    push ecx ; 0040C497 51
    %if ($ - %%insn_0040c497) > 1
        %error "LONG_0040C497"
    %endif
    times 1 - ($ - %%insn_0040c497) db 0
    %%insn_0040c498:
    mov edx,[ebp+0x8] ; 0040C498 8B5508
    %if ($ - %%insn_0040c498) > 3
        %error "LONG_0040C498"
    %endif
    times 3 - ($ - %%insn_0040c498) db 0
    %%insn_0040c49b:
    mov eax,[edx+0x50] ; 0040C49B 8B4250
    %if ($ - %%insn_0040c49b) > 3
        %error "LONG_0040C49B"
    %endif
    times 3 - ($ - %%insn_0040c49b) db 0
    %%insn_0040c49e:
    push eax ; 0040C49E 50
    %if ($ - %%insn_0040c49e) > 1
        %error "LONG_0040C49E"
    %endif
    times 1 - ($ - %%insn_0040c49e) db 0
    %%insn_0040c49f:
    mov ecx,[ebp+0x8] ; 0040C49F 8B4D08
    %if ($ - %%insn_0040c49f) > 3
        %error "LONG_0040C49F"
    %endif
    times 3 - ($ - %%insn_0040c49f) db 0
    %%insn_0040c4a2:
    mov edx,[ecx+0x4c] ; 0040C4A2 8B514C
    %if ($ - %%insn_0040c4a2) > 3
        %error "LONG_0040C4A2"
    %endif
    times 3 - ($ - %%insn_0040c4a2) db 0
    %%insn_0040c4a5:
    push edx ; 0040C4A5 52
    %if ($ - %%insn_0040c4a5) > 1
        %error "LONG_0040C4A5"
    %endif
    times 1 - ($ - %%insn_0040c4a5) db 0
    %%insn_0040c4a6:
    mov eax,[ebp-0x4] ; 0040C4A6 8B45FC
    %if ($ - %%insn_0040c4a6) > 3
        %error "LONG_0040C4A6"
    %endif
    times 3 - ($ - %%insn_0040c4a6) db 0
    %%insn_0040c4a9:
    push eax ; 0040C4A9 50
    %if ($ - %%insn_0040c4a9) > 1
        %error "LONG_0040C4A9"
    %endif
    times 1 - ($ - %%insn_0040c4a9) db 0
    %%insn_0040c4aa:
    mov ecx,[ebp+0x8] ; 0040C4AA 8B4D08
    %if ($ - %%insn_0040c4aa) > 3
        %error "LONG_0040C4AA"
    %endif
    times 3 - ($ - %%insn_0040c4aa) db 0
    %%insn_0040c4ad:
    mov edx,[ecx+0x1c] ; 0040C4AD 8B511C
    %if ($ - %%insn_0040c4ad) > 3
        %error "LONG_0040C4AD"
    %endif
    times 3 - ($ - %%insn_0040c4ad) db 0
    %%insn_0040c4b0:
    push edx ; 0040C4B0 52
    %if ($ - %%insn_0040c4b0) > 1
        %error "LONG_0040C4B0"
    %endif
    times 1 - ($ - %%insn_0040c4b0) db 0
    %%insn_0040c4b1:
    call 0x40ab84 ; 0040C4B1 E8CEE6FFFF
    %if ($ - %%insn_0040c4b1) > 5
        %error "LONG_0040C4B1"
    %endif
    times 5 - ($ - %%insn_0040c4b1) db 0
    %%insn_0040c4b6:
    add esp,0x14 ; 0040C4B6 83C414
    %if ($ - %%insn_0040c4b6) > 3
        %error "LONG_0040C4B6"
    %endif
    times 3 - ($ - %%insn_0040c4b6) db 0
    %%insn_0040c4b9:
    cmp dword [0x41f590],0x0 ; 0040C4B9 833D90F5410000
    %if ($ - %%insn_0040c4b9) > 7
        %error "LONG_0040C4B9"
    %endif
    times 7 - ($ - %%insn_0040c4b9) db 0
    %%insn_0040c4c0:
    jz short 0x40c4d7 ; 0040C4C0 7415
    %if ($ - %%insn_0040c4c0) > 2
        %error "LONG_0040C4C0"
    %endif
    times 2 - ($ - %%insn_0040c4c0) db 0
    %%insn_0040c4c2:
    mov ecx,0x421300 ; 0040C4C2 B900134200
    %if ($ - %%insn_0040c4c2) > 5
        %error "LONG_0040C4C2"
    %endif
    times 5 - ($ - %%insn_0040c4c2) db 0
    %%insn_0040c4c7:
    call dword near [0x4213b4] ; 0040C4C7 FF15B4134200
    %if ($ - %%insn_0040c4c7) > 6
        %error "LONG_0040C4C7"
    %endif
    times 6 - ($ - %%insn_0040c4c7) db 0
    %%insn_0040c4cd:
    mov dword [0x41f590],0x0 ; 0040C4CD C70590F5410000000000
    %if ($ - %%insn_0040c4cd) > 10
        %error "LONG_0040C4CD"
    %endif
    times 10 - ($ - %%insn_0040c4cd) db 0
    %%insn_0040c4d7:
    mov eax,[ebp+0x8] ; 0040C4D7 8B4508
    %if ($ - %%insn_0040c4d7) > 3
        %error "LONG_0040C4D7"
    %endif
    times 3 - ($ - %%insn_0040c4d7) db 0
    db 0x33, 0xC9 ; 0040C4DA 33C9 | xor ecx,ecx | encoding preserved
    %%insn_0040c4dc:
    mov cx,[eax+0x62] ; 0040C4DC 668B4862
    %if ($ - %%insn_0040c4dc) > 4
        %error "LONG_0040C4DC"
    %endif
    times 4 - ($ - %%insn_0040c4dc) db 0
    %%insn_0040c4e0:
    and ecx,0x100 ; 0040C4E0 81E100010000
    %if ($ - %%insn_0040c4e0) > 6
        %error "LONG_0040C4E0"
    %endif
    times 6 - ($ - %%insn_0040c4e0) db 0
    %%insn_0040c4e6:
    test ecx,ecx ; 0040C4E6 85C9
    %if ($ - %%insn_0040c4e6) > 2
        %error "LONG_0040C4E6"
    %endif
    times 2 - ($ - %%insn_0040c4e6) db 0
    %%insn_0040c4e8:
    jz short 0x40c4f8 ; 0040C4E8 740E
    %if ($ - %%insn_0040c4e8) > 2
        %error "LONG_0040C4E8"
    %endif
    times 2 - ($ - %%insn_0040c4e8) db 0
    %%insn_0040c4ea:
    mov edx,[ebp+0x8] ; 0040C4EA 8B5508
    %if ($ - %%insn_0040c4ea) > 3
        %error "LONG_0040C4EA"
    %endif
    times 3 - ($ - %%insn_0040c4ea) db 0
    %%insn_0040c4ed:
    push edx ; 0040C4ED 52
    %if ($ - %%insn_0040c4ed) > 1
        %error "LONG_0040C4ED"
    %endif
    times 1 - ($ - %%insn_0040c4ed) db 0
    %%insn_0040c4ee:
    call 0x40c6a5 ; 0040C4EE E8B2010000
    %if ($ - %%insn_0040c4ee) > 5
        %error "LONG_0040C4EE"
    %endif
    times 5 - ($ - %%insn_0040c4ee) db 0
    %%insn_0040c4f3:
    add esp,0x4 ; 0040C4F3 83C404
    %if ($ - %%insn_0040c4f3) > 3
        %error "LONG_0040C4F3"
    %endif
    times 3 - ($ - %%insn_0040c4f3) db 0
    %%insn_0040c4f6:
    jmp short 0x40c504 ; 0040C4F6 EB0C
    %if ($ - %%insn_0040c4f6) > 2
        %error "LONG_0040C4F6"
    %endif
    times 2 - ($ - %%insn_0040c4f6) db 0
    %%insn_0040c4f8:
    mov eax,[ebp+0x8] ; 0040C4F8 8B4508
    %if ($ - %%insn_0040c4f8) > 3
        %error "LONG_0040C4F8"
    %endif
    times 3 - ($ - %%insn_0040c4f8) db 0
    %%insn_0040c4fb:
    push eax ; 0040C4FB 50
    %if ($ - %%insn_0040c4fb) > 1
        %error "LONG_0040C4FB"
    %endif
    times 1 - ($ - %%insn_0040c4fb) db 0
    %%insn_0040c4fc:
    call initialize_vdx_pacing_deadline ; 0040C4FC E83FA8FFFF
    %if ($ - %%insn_0040c4fc) > 5
        %error "LONG_0040C4FC"
    %endif
    times 5 - ($ - %%insn_0040c4fc) db 0
    %%insn_0040c501:
    add esp,0x4 ; 0040C501 83C404
    %if ($ - %%insn_0040c501) > 3
        %error "LONG_0040C501"
    %endif
    times 3 - ($ - %%insn_0040c501) db 0
    %%insn_0040c504:
    jmp 0x40c5b7 ; 0040C504 E9AE000000
    %if ($ - %%insn_0040c504) > 5
        %error "LONG_0040C504"
    %endif
    times 5 - ($ - %%insn_0040c504) db 0
    %%insn_0040c509:
    mov ecx,[ebp+0x8] ; 0040C509 8B4D08
    %if ($ - %%insn_0040c509) > 3
        %error "LONG_0040C509"
    %endif
    times 3 - ($ - %%insn_0040c509) db 0
    %%insn_0040c50c:
    mov edx,[0x42133c] ; 0040C50C 8B153C134200
    %if ($ - %%insn_0040c50c) > 6
        %error "LONG_0040C50C"
    %endif
    times 6 - ($ - %%insn_0040c50c) db 0
    %%insn_0040c512:
    mov [ecx+0x48],edx ; 0040C512 895148
    %if ($ - %%insn_0040c512) > 3
        %error "LONG_0040C512"
    %endif
    times 3 - ($ - %%insn_0040c512) db 0
    %%insn_0040c515:
    mov eax,[ebp+0x8] ; 0040C515 8B4508
    %if ($ - %%insn_0040c515) > 3
        %error "LONG_0040C515"
    %endif
    times 3 - ($ - %%insn_0040c515) db 0
    %%insn_0040c518:
    mov dword [eax+0x4c],0x280 ; 0040C518 C7404C80020000
    %if ($ - %%insn_0040c518) > 7
        %error "LONG_0040C518"
    %endif
    times 7 - ($ - %%insn_0040c518) db 0
    %%insn_0040c51f:
    mov ecx,[ebp+0x8] ; 0040C51F 8B4D08
    %if ($ - %%insn_0040c51f) > 3
        %error "LONG_0040C51F"
    %endif
    times 3 - ($ - %%insn_0040c51f) db 0
    %%insn_0040c522:
    mov edx,[ecx+0x54] ; 0040C522 8B5154
    %if ($ - %%insn_0040c522) > 3
        %error "LONG_0040C522"
    %endif
    times 3 - ($ - %%insn_0040c522) db 0
    %%insn_0040c525:
    push edx ; 0040C525 52
    %if ($ - %%insn_0040c525) > 1
        %error "LONG_0040C525"
    %endif
    times 1 - ($ - %%insn_0040c525) db 0
    %%insn_0040c526:
    mov eax,[ebp+0x8] ; 0040C526 8B4508
    %if ($ - %%insn_0040c526) > 3
        %error "LONG_0040C526"
    %endif
    times 3 - ($ - %%insn_0040c526) db 0
    %%insn_0040c529:
    mov ecx,[eax+0x50] ; 0040C529 8B4850
    %if ($ - %%insn_0040c529) > 3
        %error "LONG_0040C529"
    %endif
    times 3 - ($ - %%insn_0040c529) db 0
    %%insn_0040c52c:
    push ecx ; 0040C52C 51
    %if ($ - %%insn_0040c52c) > 1
        %error "LONG_0040C52C"
    %endif
    times 1 - ($ - %%insn_0040c52c) db 0
    %%insn_0040c52d:
    mov edx,[ebp+0x8] ; 0040C52D 8B5508
    %if ($ - %%insn_0040c52d) > 3
        %error "LONG_0040C52D"
    %endif
    times 3 - ($ - %%insn_0040c52d) db 0
    %%insn_0040c530:
    mov eax,[edx+0x4c] ; 0040C530 8B424C
    %if ($ - %%insn_0040c530) > 3
        %error "LONG_0040C530"
    %endif
    times 3 - ($ - %%insn_0040c530) db 0
    %%insn_0040c533:
    push eax ; 0040C533 50
    %if ($ - %%insn_0040c533) > 1
        %error "LONG_0040C533"
    %endif
    times 1 - ($ - %%insn_0040c533) db 0
    %%insn_0040c534:
    mov ecx,[ebp+0x8] ; 0040C534 8B4D08
    %if ($ - %%insn_0040c534) > 3
        %error "LONG_0040C534"
    %endif
    times 3 - ($ - %%insn_0040c534) db 0
    %%insn_0040c537:
    mov edx,[0x41bd70] ; 0040C537 8B1570BD4100
    %if ($ - %%insn_0040c537) > 6
        %error "LONG_0040C537"
    %endif
    times 6 - ($ - %%insn_0040c537) db 0
    %%insn_0040c53d:
    imul edx,[ecx+0x4c] ; 0040C53D 0FAF514C
    %if ($ - %%insn_0040c53d) > 4
        %error "LONG_0040C53D"
    %endif
    times 4 - ($ - %%insn_0040c53d) db 0
    %%insn_0040c541:
    mov eax,[ebp+0x8] ; 0040C541 8B4508
    %if ($ - %%insn_0040c541) > 3
        %error "LONG_0040C541"
    %endif
    times 3 - ($ - %%insn_0040c541) db 0
    %%insn_0040c544:
    mov ecx,[eax+0x48] ; 0040C544 8B4848
    %if ($ - %%insn_0040c544) > 3
        %error "LONG_0040C544"
    %endif
    times 3 - ($ - %%insn_0040c544) db 0
    db 0x03, 0xCA ; 0040C547 03CA | add ecx,edx | encoding preserved
    %%insn_0040c549:
    push ecx ; 0040C549 51
    %if ($ - %%insn_0040c549) > 1
        %error "LONG_0040C549"
    %endif
    times 1 - ($ - %%insn_0040c549) db 0
    %%insn_0040c54a:
    mov edx,[ebp+0x8] ; 0040C54A 8B5508
    %if ($ - %%insn_0040c54a) > 3
        %error "LONG_0040C54A"
    %endif
    times 3 - ($ - %%insn_0040c54a) db 0
    %%insn_0040c54d:
    mov eax,[edx+0x1c] ; 0040C54D 8B421C
    %if ($ - %%insn_0040c54d) > 3
        %error "LONG_0040C54D"
    %endif
    times 3 - ($ - %%insn_0040c54d) db 0
    %%insn_0040c550:
    push eax ; 0040C550 50
    %if ($ - %%insn_0040c550) > 1
        %error "LONG_0040C550"
    %endif
    times 1 - ($ - %%insn_0040c550) db 0
    %%insn_0040c551:
    call 0x40b198 ; 0040C551 E842ECFFFF
    %if ($ - %%insn_0040c551) > 5
        %error "LONG_0040C551"
    %endif
    times 5 - ($ - %%insn_0040c551) db 0
    %%insn_0040c556:
    add esp,0x14 ; 0040C556 83C414
    %if ($ - %%insn_0040c556) > 3
        %error "LONG_0040C556"
    %endif
    times 3 - ($ - %%insn_0040c556) db 0
    %%insn_0040c559:
    cmp dword [0x41f590],0x0 ; 0040C559 833D90F5410000
    %if ($ - %%insn_0040c559) > 7
        %error "LONG_0040C559"
    %endif
    times 7 - ($ - %%insn_0040c559) db 0
    %%insn_0040c560:
    jz short 0x40c577 ; 0040C560 7415
    %if ($ - %%insn_0040c560) > 2
        %error "LONG_0040C560"
    %endif
    times 2 - ($ - %%insn_0040c560) db 0
    %%insn_0040c562:
    mov ecx,0x421300 ; 0040C562 B900134200
    %if ($ - %%insn_0040c562) > 5
        %error "LONG_0040C562"
    %endif
    times 5 - ($ - %%insn_0040c562) db 0
    %%insn_0040c567:
    call dword near [0x4213b4] ; 0040C567 FF15B4134200
    %if ($ - %%insn_0040c567) > 6
        %error "LONG_0040C567"
    %endif
    times 6 - ($ - %%insn_0040c567) db 0
    %%insn_0040c56d:
    mov dword [0x41f590],0x0 ; 0040C56D C70590F5410000000000
    %if ($ - %%insn_0040c56d) > 10
        %error "LONG_0040C56D"
    %endif
    times 10 - ($ - %%insn_0040c56d) db 0
    %%insn_0040c577:
    mov ecx,[ebp+0x8] ; 0040C577 8B4D08
    %if ($ - %%insn_0040c577) > 3
        %error "LONG_0040C577"
    %endif
    times 3 - ($ - %%insn_0040c577) db 0
    %%insn_0040c57a:
    push ecx ; 0040C57A 51
    %if ($ - %%insn_0040c57a) > 1
        %error "LONG_0040C57A"
    %endif
    times 1 - ($ - %%insn_0040c57a) db 0
    %%insn_0040c57b:
    call service_vdx_audio_and_wait_for_pacing ; 0040C57B E8A8A8FFFF
    %if ($ - %%insn_0040c57b) > 5
        %error "LONG_0040C57B"
    %endif
    times 5 - ($ - %%insn_0040c57b) db 0
    %%insn_0040c580:
    add esp,0x4 ; 0040C580 83C404
    %if ($ - %%insn_0040c580) > 3
        %error "LONG_0040C580"
    %endif
    times 3 - ($ - %%insn_0040c580) db 0
    %%insn_0040c583:
    jmp short 0x40c5b7 ; 0040C583 EB32
    %if ($ - %%insn_0040c583) > 2
        %error "LONG_0040C583"
    %endif
    times 2 - ($ - %%insn_0040c583) db 0
    %%insn_0040c585:
    mov edx,[ebp+0x8] ; 0040C585 8B5508
    %if ($ - %%insn_0040c585) > 3
        %error "LONG_0040C585"
    %endif
    times 3 - ($ - %%insn_0040c585) db 0
    %%insn_0040c588:
    mov eax,[edx+0x12] ; 0040C588 8B4212
    %if ($ - %%insn_0040c588) > 3
        %error "LONG_0040C588"
    %endif
    times 3 - ($ - %%insn_0040c588) db 0
    %%insn_0040c58b:
    push eax ; 0040C58B 50
    %if ($ - %%insn_0040c58b) > 1
        %error "LONG_0040C58B"
    %endif
    times 1 - ($ - %%insn_0040c58b) db 0
    %%insn_0040c58c:
    mov ecx,[ebp+0x8] ; 0040C58C 8B4D08
    %if ($ - %%insn_0040c58c) > 3
        %error "LONG_0040C58C"
    %endif
    times 3 - ($ - %%insn_0040c58c) db 0
    %%insn_0040c58f:
    mov edx,[ecx+0x1c] ; 0040C58F 8B511C
    %if ($ - %%insn_0040c58f) > 3
        %error "LONG_0040C58F"
    %endif
    times 3 - ($ - %%insn_0040c58f) db 0
    %%insn_0040c592:
    push edx ; 0040C592 52
    %if ($ - %%insn_0040c592) > 1
        %error "LONG_0040C592"
    %endif
    times 1 - ($ - %%insn_0040c592) db 0
    %%insn_0040c593:
    call 0x406d8e ; 0040C593 E8F6A7FFFF
    %if ($ - %%insn_0040c593) > 5
        %error "LONG_0040C593"
    %endif
    times 5 - ($ - %%insn_0040c593) db 0
    %%insn_0040c598:
    add esp,0x8 ; 0040C598 83C408
    %if ($ - %%insn_0040c598) > 3
        %error "LONG_0040C598"
    %endif
    times 3 - ($ - %%insn_0040c598) db 0
    %%insn_0040c59b:
    jmp short 0x40c5b7 ; 0040C59B EB1A
    %if ($ - %%insn_0040c59b) > 2
        %error "LONG_0040C59B"
    %endif
    times 2 - ($ - %%insn_0040c59b) db 0
    %%insn_0040c59d:
    mov eax,[ebp+0x8] ; 0040C59D 8B4508
    %if ($ - %%insn_0040c59d) > 3
        %error "LONG_0040C59D"
    %endif
    times 3 - ($ - %%insn_0040c59d) db 0
    %%insn_0040c5a0:
    push eax ; 0040C5A0 50
    %if ($ - %%insn_0040c5a0) > 1
        %error "LONG_0040C5A0"
    %endif
    times 1 - ($ - %%insn_0040c5a0) db 0
    %%insn_0040c5a1:
    call service_vdx_audio_and_wait_for_pacing ; 0040C5A1 E882A8FFFF
    %if ($ - %%insn_0040c5a1) > 5
        %error "LONG_0040C5A1"
    %endif
    times 5 - ($ - %%insn_0040c5a1) db 0
    %%insn_0040c5a6:
    add esp,0x4 ; 0040C5A6 83C404
    %if ($ - %%insn_0040c5a6) > 3
        %error "LONG_0040C5A6"
    %endif
    times 3 - ($ - %%insn_0040c5a6) db 0
    %%insn_0040c5a9:
    jmp short 0x40c5b7 ; 0040C5A9 EB0C
    %if ($ - %%insn_0040c5a9) > 2
        %error "LONG_0040C5A9"
    %endif
    times 2 - ($ - %%insn_0040c5a9) db 0
    %%insn_0040c5ab:
    mov ecx,[ebp+0x8] ; 0040C5AB 8B4D08
    %if ($ - %%insn_0040c5ab) > 3
        %error "LONG_0040C5AB"
    %endif
    times 3 - ($ - %%insn_0040c5ab) db 0
    %%insn_0040c5ae:
    push ecx ; 0040C5AE 51
    %if ($ - %%insn_0040c5ae) > 1
        %error "LONG_0040C5AE"
    %endif
    times 1 - ($ - %%insn_0040c5ae) db 0
    %%insn_0040c5af:
    call 0x40c6a5 ; 0040C5AF E8F1000000
    %if ($ - %%insn_0040c5af) > 5
        %error "LONG_0040C5AF"
    %endif
    times 5 - ($ - %%insn_0040c5af) db 0
    %%insn_0040c5b4:
    add esp,0x4 ; 0040C5B4 83C404
    %if ($ - %%insn_0040c5b4) > 3
        %error "LONG_0040C5B4"
    %endif
    times 3 - ($ - %%insn_0040c5b4) db 0
    %%insn_0040c5b7:
    movsx edx,word [0x41f308] ; 0040C5B7 0FBF1508F34100
    %if ($ - %%insn_0040c5b7) > 7
        %error "LONG_0040C5B7"
    %endif
    times 7 - ($ - %%insn_0040c5b7) db 0
    %%insn_0040c5be:
    test edx,edx ; 0040C5BE 85D2
    %if ($ - %%insn_0040c5be) > 2
        %error "LONG_0040C5BE"
    %endif
    times 2 - ($ - %%insn_0040c5be) db 0
    %%insn_0040c5c0:
    jz short 0x40c5f1 ; 0040C5C0 742F
    %if ($ - %%insn_0040c5c0) > 2
        %error "LONG_0040C5C0"
    %endif
    times 2 - ($ - %%insn_0040c5c0) db 0
    %%insn_0040c5c2:
    call 0x40c79c ; 0040C5C2 E8D5010000
    %if ($ - %%insn_0040c5c2) > 5
        %error "LONG_0040C5C2"
    %endif
    times 5 - ($ - %%insn_0040c5c2) db 0
    %%insn_0040c5c7:
    test eax,eax ; 0040C5C7 85C0
    %if ($ - %%insn_0040c5c7) > 2
        %error "LONG_0040C5C7"
    %endif
    times 2 - ($ - %%insn_0040c5c7) db 0
    %%insn_0040c5c9:
    jz short 0x40c5f1 ; 0040C5C9 7426
    %if ($ - %%insn_0040c5c9) > 2
        %error "LONG_0040C5C9"
    %endif
    times 2 - ($ - %%insn_0040c5c9) db 0
    %%insn_0040c5cb:
    mov eax,[ebp+0x8] ; 0040C5CB 8B4508
    %if ($ - %%insn_0040c5cb) > 3
        %error "LONG_0040C5CB"
    %endif
    times 3 - ($ - %%insn_0040c5cb) db 0
    %%insn_0040c5ce:
    cmp dword [eax+0x4],0x0 ; 0040C5CE 83780400
    %if ($ - %%insn_0040c5ce) > 4
        %error "LONG_0040C5CE"
    %endif
    times 4 - ($ - %%insn_0040c5ce) db 0
    %%insn_0040c5d2:
    jz short 0x40c5f1 ; 0040C5D2 741D
    %if ($ - %%insn_0040c5d2) > 2
        %error "LONG_0040C5D2"
    %endif
    times 2 - ($ - %%insn_0040c5d2) db 0
    %%insn_0040c5d4:
    mov ecx,[ebp+0x8] ; 0040C5D4 8B4D08
    %if ($ - %%insn_0040c5d4) > 3
        %error "LONG_0040C5D4"
    %endif
    times 3 - ($ - %%insn_0040c5d4) db 0
    %%insn_0040c5d7:
    push ecx ; 0040C5D7 51
    %if ($ - %%insn_0040c5d7) > 1
        %error "LONG_0040C5D7"
    %endif
    times 1 - ($ - %%insn_0040c5d7) db 0
    %%insn_0040c5d8:
    call 0x40c6a5 ; 0040C5D8 E8C8000000
    %if ($ - %%insn_0040c5d8) > 5
        %error "LONG_0040C5D8"
    %endif
    times 5 - ($ - %%insn_0040c5d8) db 0
    %%insn_0040c5dd:
    add esp,0x4 ; 0040C5DD 83C404
    %if ($ - %%insn_0040c5dd) > 3
        %error "LONG_0040C5DD"
    %endif
    times 3 - ($ - %%insn_0040c5dd) db 0
    %%insn_0040c5e0:
    mov dx,[0x41f308] ; 0040C5E0 668B1508F34100
    %if ($ - %%insn_0040c5e0) > 7
        %error "LONG_0040C5E0"
    %endif
    times 7 - ($ - %%insn_0040c5e0) db 0
    %%insn_0040c5e7:
    or dl,0x80 ; 0040C5E7 80CA80
    %if ($ - %%insn_0040c5e7) > 3
        %error "LONG_0040C5E7"
    %endif
    times 3 - ($ - %%insn_0040c5e7) db 0
    %%insn_0040c5ea:
    mov [0x41f308],dx ; 0040C5EA 66891508F34100
    %if ($ - %%insn_0040c5ea) > 7
        %error "LONG_0040C5EA"
    %endif
    times 7 - ($ - %%insn_0040c5ea) db 0
    %%insn_0040c5f1:
    push dword 0x8 ; 0040C5F1 6A08
    %if ($ - %%insn_0040c5f1) > 2
        %error "LONG_0040C5F1"
    %endif
    times 2 - ($ - %%insn_0040c5f1) db 0
    %%insn_0040c5f3:
    lea eax,[ebp-0xc] ; 0040C5F3 8D45F4
    %if ($ - %%insn_0040c5f3) > 3
        %error "LONG_0040C5F3"
    %endif
    times 3 - ($ - %%insn_0040c5f3) db 0
    %%insn_0040c5f6:
    push eax ; 0040C5F6 50
    %if ($ - %%insn_0040c5f6) > 1
        %error "LONG_0040C5F6"
    %endif
    times 1 - ($ - %%insn_0040c5f6) db 0
    %%insn_0040c5f7:
    mov ecx,[ebp+0x8] ; 0040C5F7 8B4D08
    %if ($ - %%insn_0040c5f7) > 3
        %error "LONG_0040C5F7"
    %endif
    times 3 - ($ - %%insn_0040c5f7) db 0
    %%insn_0040c5fa:
    add ecx,0x10 ; 0040C5FA 83C110
    %if ($ - %%insn_0040c5fa) > 3
        %error "LONG_0040C5FA"
    %endif
    times 3 - ($ - %%insn_0040c5fa) db 0
    %%insn_0040c5fd:
    push ecx ; 0040C5FD 51
    %if ($ - %%insn_0040c5fd) > 1
        %error "LONG_0040C5FD"
    %endif
    times 1 - ($ - %%insn_0040c5fd) db 0
    %%insn_0040c5fe:
    call 0x40ca10 ; 0040C5FE E80D040000
    %if ($ - %%insn_0040c5fe) > 5
        %error "LONG_0040C5FE"
    %endif
    times 5 - ($ - %%insn_0040c5fe) db 0
    %%insn_0040c603:
    add esp,0xc ; 0040C603 83C40C
    %if ($ - %%insn_0040c603) > 3
        %error "LONG_0040C603"
    %endif
    times 3 - ($ - %%insn_0040c603) db 0
    %%insn_0040c606:
    call dword near [0x42461c] ; 0040C606 FF151C464200
    %if ($ - %%insn_0040c606) > 6
        %error "LONG_0040C606"
    %endif
    times 6 - ($ - %%insn_0040c606) db 0
    db 0x8B, 0xE5 ; 0040C60C 8BE5 | mov esp,ebp | encoding preserved
    %%insn_0040c60e:
    pop ebp ; 0040C60E 5D
    %if ($ - %%insn_0040c60e) > 1
        %error "LONG_0040C60E"
    %endif
    times 1 - ($ - %%insn_0040c60e) db 0
    %%insn_0040c60f:
    ret ; 0040C60F C3
    %if ($ - %%insn_0040c60f) > 1
        %error "LONG_0040C60F"
    %endif
    times 1 - ($ - %%insn_0040c60f) db 0
    %if ($ - %%fragment_start) != 943
        %error "function fragment size drift: 0040C261"
    %endif
%endmacro
