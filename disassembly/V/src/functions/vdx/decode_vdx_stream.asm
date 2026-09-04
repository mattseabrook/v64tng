; Linear entry 0030E (1000:030e)
; Ghidra working symbol: FUN_1000_030e
; Verified VDX chunk loop and type dispatcher for 00h timed framebuffer holds,
; 20h stills, 25h deltas, and interleaved 80h audio. The 00h path performs no
; pixel mutation and continues through the common per-frame deadline wait.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_decode_vdx_stream_part_00 0
    %%fragment_start:
decode_vdx_stream:
    %%insn_0030e:
    mov word [cs:0x5cde],0x0 ; 0030E 2EC706DE5C0000
    %if ($ - %%insn_0030e) > 7
        %error "LONG_0030E"
    %endif
    times 7 - ($ - %%insn_0030e) db 0
    %%insn_00315:
    cmp word [bp-0x30ca],0x2 ; 00315 83BE36CF02
    %if ($ - %%insn_00315) > 5
        %error "LONG_00315"
    %endif
    times 5 - ($ - %%insn_00315) db 0
    %%insn_0031a:
    jz short 0x336 ; 0031A 741A
    %if ($ - %%insn_0031a) > 2
        %error "LONG_0031A"
    %endif
    times 2 - ($ - %%insn_0031a) db 0
    %%insn_0031c:
    mov ds,word [bp-0x2aaa] ; 0031C 8E9E56D5
    %if ($ - %%insn_0031c) > 4
        %error "LONG_0031C"
    %endif
    times 4 - ($ - %%insn_0031c) db 0
    db 0x33, 0xD2 ; 00320 33D2 | xor dx,dx | encoding preserved
    %%insn_00322:
    mov cx,0x8 ; 00322 B90800
    %if ($ - %%insn_00322) > 3
        %error "LONG_00322"
    %endif
    times 3 - ($ - %%insn_00322) db 0
    %%insn_00325:
    call 0x21b ; 00325 E8F3FE
    %if ($ - %%insn_00325) > 3
        %error "LONG_00325"
    %endif
    times 3 - ($ - %%insn_00325) db 0
    %%insn_00328:
    jnz short 0x334 ; 00328 750A
    %if ($ - %%insn_00328) > 2
        %error "LONG_00328"
    %endif
    times 2 - ($ - %%insn_00328) db 0
    %%insn_0032a:
    call 0x28ad ; 0032A E88025
    %if ($ - %%insn_0032a) > 3
        %error "LONG_0032A"
    %endif
    times 3 - ($ - %%insn_0032a) db 0
    %%insn_0032d:
    mov word [bp-0x30ca],0x0 ; 0032D C78636CF0000
    %if ($ - %%insn_0032d) > 6
        %error "LONG_0032D"
    %endif
    times 6 - ($ - %%insn_0032d) db 0
    %%insn_00333:
    ret ; 00333 C3
    %if ($ - %%insn_00333) > 1
        %error "LONG_00333"
    %endif
    times 1 - ($ - %%insn_00333) db 0
    %%insn_00334:
    jmp short 0x34c ; 00334 EB16
    %if ($ - %%insn_00334) > 2
        %error "LONG_00334"
    %endif
    times 2 - ($ - %%insn_00334) db 0
    %%insn_00336:
    push ds ; 00336 1E
    %if ($ - %%insn_00336) > 1
        %error "LONG_00336"
    %endif
    times 1 - ($ - %%insn_00336) db 0
    %%insn_00337:
    push es ; 00337 06
    %if ($ - %%insn_00337) > 1
        %error "LONG_00337"
    %endif
    times 1 - ($ - %%insn_00337) db 0
    %%insn_00338:
    mov si,0xcf38 ; 00338 BE38CF
    %if ($ - %%insn_00338) > 3
        %error "LONG_00338"
    %endif
    times 3 - ($ - %%insn_00338) db 0
    db 0x33, 0xFF ; 0033B 33FF | xor di,di | encoding preserved
    %%insn_0033d:
    mov cx,0x4 ; 0033D B90400
    %if ($ - %%insn_0033d) > 3
        %error "LONG_0033D"
    %endif
    times 3 - ($ - %%insn_0033d) db 0
    %%insn_00340:
    mov ds,word [bp-0x2aae] ; 00340 8E9E52D5
    %if ($ - %%insn_00340) > 4
        %error "LONG_00340"
    %endif
    times 4 - ($ - %%insn_00340) db 0
    %%insn_00344:
    mov es,word [bp-0x2aaa] ; 00344 8E8656D5
    %if ($ - %%insn_00344) > 4
        %error "LONG_00344"
    %endif
    times 4 - ($ - %%insn_00344) db 0
    %%insn_00348:
    rep movsw ; 00348 F3A5
    %if ($ - %%insn_00348) > 2
        %error "LONG_00348"
    %endif
    times 2 - ($ - %%insn_00348) db 0
    %%insn_0034a:
    pop es ; 0034A 07
    %if ($ - %%insn_0034a) > 1
        %error "LONG_0034A"
    %endif
    times 1 - ($ - %%insn_0034a) db 0
    %%insn_0034b:
    pop ds ; 0034B 1F
    %if ($ - %%insn_0034b) > 1
        %error "LONG_0034B"
    %endif
    times 1 - ($ - %%insn_0034b) db 0
    db 0x33, 0xF6 ; 0034C 33F6 | xor si,si | encoding preserved
    %%insn_0034e:
    mov bx,[si+0x2] ; 0034E 8B5C02
    %if ($ - %%insn_0034e) > 3
        %error "LONG_0034E"
    %endif
    times 3 - ($ - %%insn_0034e) db 0
    db 0x33, 0xD2 ; 00351 33D2 | xor dx,dx | encoding preserved
    db 0x8B, 0xCB ; 00353 8BCB | mov cx,bx | encoding preserved
    %%insn_00355:
    mov ax,[si] ; 00355 8B04
    %if ($ - %%insn_00355) > 2
        %error "LONG_00355"
    %endif
    times 2 - ($ - %%insn_00355) db 0
    %%insn_00357:
    mov word [bp-0x30ca],0x1 ; 00357 C78636CF0100
    %if ($ - %%insn_00357) > 6
        %error "LONG_00357"
    %endif
    times 6 - ($ - %%insn_00357) db 0
    %%insn_0035d:
    cmp al,0x25 ; 0035D 3C25
    %if ($ - %%insn_0035d) > 2
        %error "LONG_0035D"
    %endif
    times 2 - ($ - %%insn_0035d) db 0
    %%insn_0035f:
    jnz short 0x366 ; 0035F 7505
    %if ($ - %%insn_0035f) > 2
        %error "LONG_0035F"
    %endif
    times 2 - ($ - %%insn_0035f) db 0
    %%insn_00361:
    call 0x105a ; 00361 E8F60C
    %if ($ - %%insn_00361) > 3
        %error "LONG_00361"
    %endif
    times 3 - ($ - %%insn_00361) db 0
    %%insn_00364:
    jmp short 0x3a8 ; 00364 EB42
    %if ($ - %%insn_00364) > 2
        %error "LONG_00364"
    %endif
    times 2 - ($ - %%insn_00364) db 0
    %%insn_00366:
    cmp al,0x20 ; 00366 3C20
    %if ($ - %%insn_00366) > 2
        %error "LONG_00366"
    %endif
    times 2 - ($ - %%insn_00366) db 0
    %%insn_00368:
    jnz short 0x385 ; 00368 751B
    %if ($ - %%insn_00368) > 2
        %error "LONG_00368"
    %endif
    times 2 - ($ - %%insn_00368) db 0
    %%insn_0036a:
    call 0x587 ; 0036A E81A02
    %if ($ - %%insn_0036a) > 3
        %error "LONG_0036A"
    %endif
    times 3 - ($ - %%insn_0036a) db 0
    %%insn_0036d:
    cmp word [bp-0x30ce],0x0 ; 0036D 83BE32CF00
    %if ($ - %%insn_0036d) > 5
        %error "LONG_0036D"
    %endif
    times 5 - ($ - %%insn_0036d) db 0
    %%insn_00372:
    jz short 0x381 ; 00372 740D
    %if ($ - %%insn_00372) > 2
        %error "LONG_00372"
    %endif
    times 2 - ($ - %%insn_00372) db 0
    %%insn_00374:
    mov word [bp-0x30ce],0x0 ; 00374 C78632CF0000
    %if ($ - %%insn_00374) > 6
        %error "LONG_00374"
    %endif
    times 6 - ($ - %%insn_00374) db 0
    %%insn_0037a:
    mov word [bp-0x30ca],0x0 ; 0037A C78636CF0000
    %if ($ - %%insn_0037a) > 6
        %error "LONG_0037A"
    %endif
    times 6 - ($ - %%insn_0037a) db 0
    %%insn_00380:
    ret ; 00380 C3
    %if ($ - %%insn_00380) > 1
        %error "LONG_00380"
    %endif
    times 1 - ($ - %%insn_00380) db 0
    %%insn_00381:
    jmp short 0x30e ; 00381 EB8B
    %if ($ - %%insn_00381) > 2
        %error "LONG_00381"
    %endif
    times 2 - ($ - %%insn_00381) db 0
    %if ($ - %%fragment_start) != 117
        %error "SIZE_0030E"
    %endif
%endmacro

%macro emit_decode_vdx_stream_part_01 0
    %%fragment_start:
    %%insn_00385:
    cmp al,0x80 ; 00385 3C80
    %if ($ - %%insn_00385) > 2
        %error "LONG_00385"
    %endif
    times 2 - ($ - %%insn_00385) db 0
    %%insn_00387:
    jnz short 0x390 ; 00387 7507
    %if ($ - %%insn_00387) > 2
        %error "LONG_00387"
    %endif
    times 2 - ($ - %%insn_00387) db 0
    %%insn_00389:
    call 0x2997 ; 00389 E80B26
    %if ($ - %%insn_00389) > 3
        %error "LONG_00389"
    %endif
    times 3 - ($ - %%insn_00389) db 0
    %%insn_0038c:
    jmp short 0x315 ; 0038C EB87
    %if ($ - %%insn_0038c) > 2
        %error "LONG_0038C"
    %endif
    times 2 - ($ - %%insn_0038c) db 0
    %if ($ - %%fragment_start) != 9
        %error "SIZE_00385"
    %endif
%endmacro

%macro emit_decode_vdx_stream_part_02 0
    %%fragment_start:
    %%insn_00390:
    cmp al,0x0 ; 00390 3C00
    %if ($ - %%insn_00390) > 2
        %error "LONG_00390"
    %endif
    times 2 - ($ - %%insn_00390) db 0
    %%insn_00392:
    jnz short 0x39e ; 00392 750A
    %if ($ - %%insn_00392) > 2
        %error "LONG_00392"
    %endif
    times 2 - ($ - %%insn_00392) db 0
    %%insn_00394:
    mov word [bp-0x30ca],0x0 ; 00394 C78636CF0000
    %if ($ - %%insn_00394) > 6
        %error "LONG_00394"
    %endif
    times 6 - ($ - %%insn_00394) db 0
    %%insn_0039a:
    jmp short 0x3a8 ; 0039A EB0C
    %if ($ - %%insn_0039a) > 2
        %error "LONG_0039A"
    %endif
    times 2 - ($ - %%insn_0039a) db 0
    %if ($ - %%fragment_start) != 12
        %error "SIZE_00390"
    %endif
%endmacro

%macro emit_decode_vdx_stream_part_03 0
    %%fragment_start:
    %%insn_0039e:
    call 0x28ad ; 0039E E80C25
    %if ($ - %%insn_0039e) > 3
        %error "LONG_0039E"
    %endif
    times 3 - ($ - %%insn_0039e) db 0
    %%insn_003a1:
    mov word [bp-0x30ca],0x0 ; 003A1 C78636CF0000
    %if ($ - %%insn_003a1) > 6
        %error "LONG_003A1"
    %endif
    times 6 - ($ - %%insn_003a1) db 0
    %%insn_003a7:
    ret ; 003A7 C3
    %if ($ - %%insn_003a7) > 1
        %error "LONG_003A7"
    %endif
    times 1 - ($ - %%insn_003a7) db 0
    %%insn_003a8:
    cmp word [bp-0x30ca],0x2 ; 003A8 83BE36CF02
    %if ($ - %%insn_003a8) > 5
        %error "LONG_003A8"
    %endif
    times 5 - ($ - %%insn_003a8) db 0
    %%insn_003ad:
    jz short 0x3c9 ; 003AD 741A
    %if ($ - %%insn_003ad) > 2
        %error "LONG_003AD"
    %endif
    times 2 - ($ - %%insn_003ad) db 0
    %%insn_003af:
    mov ds,word [bp-0x2aaa] ; 003AF 8E9E56D5
    %if ($ - %%insn_003af) > 4
        %error "LONG_003AF"
    %endif
    times 4 - ($ - %%insn_003af) db 0
    db 0x33, 0xD2 ; 003B3 33D2 | xor dx,dx | encoding preserved
    %%insn_003b5:
    mov cx,0x8 ; 003B5 B90800
    %if ($ - %%insn_003b5) > 3
        %error "LONG_003B5"
    %endif
    times 3 - ($ - %%insn_003b5) db 0
    %%insn_003b8:
    call 0x21b ; 003B8 E860FE
    %if ($ - %%insn_003b8) > 3
        %error "LONG_003B8"
    %endif
    times 3 - ($ - %%insn_003b8) db 0
    %%insn_003bb:
    jnz short 0x3c7 ; 003BB 750A
    %if ($ - %%insn_003bb) > 2
        %error "LONG_003BB"
    %endif
    times 2 - ($ - %%insn_003bb) db 0
    %%insn_003bd:
    call 0x28ad ; 003BD E8ED24
    %if ($ - %%insn_003bd) > 3
        %error "LONG_003BD"
    %endif
    times 3 - ($ - %%insn_003bd) db 0
    %%insn_003c0:
    mov word [bp-0x30ca],0x0 ; 003C0 C78636CF0000
    %if ($ - %%insn_003c0) > 6
        %error "LONG_003C0"
    %endif
    times 6 - ($ - %%insn_003c0) db 0
    %%insn_003c6:
    ret ; 003C6 C3
    %if ($ - %%insn_003c6) > 1
        %error "LONG_003C6"
    %endif
    times 1 - ($ - %%insn_003c6) db 0
    %%insn_003c7:
    jmp short 0x3df ; 003C7 EB16
    %if ($ - %%insn_003c7) > 2
        %error "LONG_003C7"
    %endif
    times 2 - ($ - %%insn_003c7) db 0
    %%insn_003c9:
    push ds ; 003C9 1E
    %if ($ - %%insn_003c9) > 1
        %error "LONG_003C9"
    %endif
    times 1 - ($ - %%insn_003c9) db 0
    %%insn_003ca:
    push es ; 003CA 06
    %if ($ - %%insn_003ca) > 1
        %error "LONG_003CA"
    %endif
    times 1 - ($ - %%insn_003ca) db 0
    %%insn_003cb:
    mov si,0xcf38 ; 003CB BE38CF
    %if ($ - %%insn_003cb) > 3
        %error "LONG_003CB"
    %endif
    times 3 - ($ - %%insn_003cb) db 0
    db 0x33, 0xFF ; 003CE 33FF | xor di,di | encoding preserved
    %%insn_003d0:
    mov cx,0x4 ; 003D0 B90400
    %if ($ - %%insn_003d0) > 3
        %error "LONG_003D0"
    %endif
    times 3 - ($ - %%insn_003d0) db 0
    %%insn_003d3:
    mov ds,word [bp-0x2aae] ; 003D3 8E9E52D5
    %if ($ - %%insn_003d3) > 4
        %error "LONG_003D3"
    %endif
    times 4 - ($ - %%insn_003d3) db 0
    %%insn_003d7:
    mov es,word [bp-0x2aaa] ; 003D7 8E8656D5
    %if ($ - %%insn_003d7) > 4
        %error "LONG_003D7"
    %endif
    times 4 - ($ - %%insn_003d7) db 0
    %%insn_003db:
    rep movsw ; 003DB F3A5
    %if ($ - %%insn_003db) > 2
        %error "LONG_003DB"
    %endif
    times 2 - ($ - %%insn_003db) db 0
    %%insn_003dd:
    pop es ; 003DD 07
    %if ($ - %%insn_003dd) > 1
        %error "LONG_003DD"
    %endif
    times 1 - ($ - %%insn_003dd) db 0
    %%insn_003de:
    pop ds ; 003DE 1F
    %if ($ - %%insn_003de) > 1
        %error "LONG_003DE"
    %endif
    times 1 - ($ - %%insn_003de) db 0
    %%insn_003df:
    mov word [bp-0x30ca],0x0 ; 003DF C78636CF0000
    %if ($ - %%insn_003df) > 6
        %error "LONG_003DF"
    %endif
    times 6 - ($ - %%insn_003df) db 0
    %%insn_003e5:
    cmp word [bp-0x3078],0x0 ; 003E5 83BE88CF00
    %if ($ - %%insn_003e5) > 5
        %error "LONG_003E5"
    %endif
    times 5 - ($ - %%insn_003e5) db 0
    %%insn_003ea:
    jz short 0x3f5 ; 003EA 7409
    %if ($ - %%insn_003ea) > 2
        %error "LONG_003EA"
    %endif
    times 2 - ($ - %%insn_003ea) db 0
    %%insn_003ec:
    dec word [bp-0x3078] ; 003EC FF8E88CF
    %if ($ - %%insn_003ec) > 4
        %error "LONG_003EC"
    %endif
    times 4 - ($ - %%insn_003ec) db 0
    %%insn_003f0:
    jnz short 0x3f5 ; 003F0 7503
    %if ($ - %%insn_003f0) > 2
        %error "LONG_003F0"
    %endif
    times 2 - ($ - %%insn_003f0) db 0
    %%insn_003f2:
    call 0x46f5 ; 003F2 E80043
    %if ($ - %%insn_003f2) > 3
        %error "LONG_003F2"
    %endif
    times 3 - ($ - %%insn_003f2) db 0
    %%insn_003f5:
    call 0x2896 ; 003F5 E89E24
    %if ($ - %%insn_003f5) > 3
        %error "LONG_003F5"
    %endif
    times 3 - ($ - %%insn_003f5) db 0
    %%insn_003f8:
    mov ax,[cs:0x5cde] ; 003F8 2EA1DE5C
    %if ($ - %%insn_003f8) > 4
        %error "LONG_003F8"
    %endif
    times 4 - ($ - %%insn_003f8) db 0
    %%insn_003fc:
    sub ax,[bp-0x30a0] ; 003FC 2B8660CF
    %if ($ - %%insn_003fc) > 4
        %error "LONG_003FC"
    %endif
    times 4 - ($ - %%insn_003fc) db 0
    %%insn_00400:
    jc short 0x3f5 ; 00400 72F3
    %if ($ - %%insn_00400) > 2
        %error "LONG_00400"
    %endif
    times 2 - ($ - %%insn_00400) db 0
    %%insn_00402:
    inc word [bp-0x30a6] ; 00402 FF865ACF
    %if ($ - %%insn_00402) > 4
        %error "LONG_00402"
    %endif
    times 4 - ($ - %%insn_00402) db 0
    %%insn_00406:
    mov [cs:0x5cde],ax ; 00406 2EA3DE5C
    %if ($ - %%insn_00406) > 4
        %error "LONG_00406"
    %endif
    times 4 - ($ - %%insn_00406) db 0
    %%insn_0040a:
    jmp 0x34c ; 0040A E93FFF
    %if ($ - %%insn_0040a) > 3
        %error "LONG_0040A"
    %endif
    times 3 - ($ - %%insn_0040a) db 0
    %if ($ - %%fragment_start) != 111
        %error "SIZE_0039E"
    %endif
%endmacro
