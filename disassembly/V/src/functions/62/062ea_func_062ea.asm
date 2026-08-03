; Linear entry 062EA (1000:62ea)
; Ghidra working symbol: FUN_1000_62ea
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_062ea_part_00 0
    %%fragment_start:
func_062ea:
    %%insn_062ea:
    push bp ; 062EA 55
    %if ($ - %%insn_062ea) > 1
        %error "LONG_062EA"
    %endif
    times 1 - ($ - %%insn_062ea) db 0
    db 0x8B, 0xEC ; 062EB 8BEC | mov bp,sp | encoding preserved
    %%insn_062ed:
    push dx ; 062ED 52
    %if ($ - %%insn_062ed) > 1
        %error "LONG_062ED"
    %endif
    times 1 - ($ - %%insn_062ed) db 0
    %%insn_062ee:
    push ax ; 062EE 50
    %if ($ - %%insn_062ee) > 1
        %error "LONG_062EE"
    %endif
    times 1 - ($ - %%insn_062ee) db 0
    %%insn_062ef:
    push di ; 062EF 57
    %if ($ - %%insn_062ef) > 1
        %error "LONG_062EF"
    %endif
    times 1 - ($ - %%insn_062ef) db 0
    %%insn_062f0:
    push si ; 062F0 56
    %if ($ - %%insn_062f0) > 1
        %error "LONG_062F0"
    %endif
    times 1 - ($ - %%insn_062f0) db 0
    %%insn_062f1:
    mov al,[0xe4ba] ; 062F1 A0BAE4
    %if ($ - %%insn_062f1) > 3
        %error "LONG_062F1"
    %endif
    times 3 - ($ - %%insn_062f1) db 0
    %%insn_062f4:
    cbw ; 062F4 98
    %if ($ - %%insn_062f4) > 1
        %error "LONG_062F4"
    %endif
    times 1 - ($ - %%insn_062f4) db 0
    db 0x8B, 0xD8 ; 062F5 8BD8 | mov bx,ax | encoding preserved
    %%insn_062f7:
    shl bx,1 ; 062F7 D1E3
    %if ($ - %%insn_062f7) > 2
        %error "LONG_062F7"
    %endif
    times 2 - ($ - %%insn_062f7) db 0
    %%insn_062f9:
    mov di,[bx-0x17c9] ; 062F9 8BBF37E8
    %if ($ - %%insn_062f9) > 4
        %error "LONG_062F9"
    %endif
    times 4 - ($ - %%insn_062f9) db 0
    %%insn_062fd:
    mov al,[0xe4b5] ; 062FD A0B5E4
    %if ($ - %%insn_062fd) > 3
        %error "LONG_062FD"
    %endif
    times 3 - ($ - %%insn_062fd) db 0
    %%insn_06300:
    mov [0xe91f],al ; 06300 A21FE9
    %if ($ - %%insn_06300) > 3
        %error "LONG_06300"
    %endif
    times 3 - ($ - %%insn_06300) db 0
    %%insn_06303:
    mov al,[0xe4b6] ; 06303 A0B6E4
    %if ($ - %%insn_06303) > 3
        %error "LONG_06303"
    %endif
    times 3 - ($ - %%insn_06303) db 0
    %%insn_06306:
    mov [0xe920],al ; 06306 A220E9
    %if ($ - %%insn_06306) > 3
        %error "LONG_06306"
    %endif
    times 3 - ($ - %%insn_06306) db 0
    %%insn_06309:
    mov al,[0xe4b7] ; 06309 A0B7E4
    %if ($ - %%insn_06309) > 3
        %error "LONG_06309"
    %endif
    times 3 - ($ - %%insn_06309) db 0
    %%insn_0630c:
    mov [0xe921],al ; 0630C A221E9
    %if ($ - %%insn_0630c) > 3
        %error "LONG_0630C"
    %endif
    times 3 - ($ - %%insn_0630c) db 0
    %%insn_0630f:
    mov al,[0xe4b8] ; 0630F A0B8E4
    %if ($ - %%insn_0630f) > 3
        %error "LONG_0630F"
    %endif
    times 3 - ($ - %%insn_0630f) db 0
    %%insn_06312:
    mov [0xe922],al ; 06312 A222E9
    %if ($ - %%insn_06312) > 3
        %error "LONG_06312"
    %endif
    times 3 - ($ - %%insn_06312) db 0
    %%insn_06315:
    cmp byte [0xe4bb],0x2 ; 06315 803EBBE402
    %if ($ - %%insn_06315) > 5
        %error "LONG_06315"
    %endif
    times 5 - ($ - %%insn_06315) db 0
    %%insn_0631a:
    jz short 0x6325 ; 0631A 7409
    %if ($ - %%insn_0631a) > 2
        %error "LONG_0631A"
    %endif
    times 2 - ($ - %%insn_0631a) db 0
    db 0x8A, 0xC2 ; 0631C 8AC2 | mov al,dl | encoding preserved
    %%insn_0631e:
    cbw ; 0631E 98
    %if ($ - %%insn_0631e) > 1
        %error "LONG_0631E"
    %endif
    times 1 - ($ - %%insn_0631e) db 0
    db 0x8B, 0xD8 ; 0631F 8BD8 | mov bx,ax | encoding preserved
    %%insn_06321:
    inc byte [bx-0x16e2] ; 06321 FE871EE9
    %if ($ - %%insn_06321) > 4
        %error "LONG_06321"
    %endif
    times 4 - ($ - %%insn_06321) db 0
    %%insn_06325:
    mov al,[di] ; 06325 8A05
    %if ($ - %%insn_06325) > 2
        %error "LONG_06325"
    %endif
    times 2 - ($ - %%insn_06325) db 0
    %%insn_06327:
    inc di ; 06327 47
    %if ($ - %%insn_06327) > 1
        %error "LONG_06327"
    %endif
    times 1 - ($ - %%insn_06327) db 0
    %%insn_06328:
    cbw ; 06328 98
    %if ($ - %%insn_06328) > 1
        %error "LONG_06328"
    %endif
    times 1 - ($ - %%insn_06328) db 0
    db 0x8B, 0xF0 ; 06329 8BF0 | mov si,ax | encoding preserved
    %%insn_0632b:
    mov al,[si-0x1b7c] ; 0632B 8A8484E4
    %if ($ - %%insn_0632b) > 4
        %error "LONG_0632B"
    %endif
    times 4 - ($ - %%insn_0632b) db 0
    %%insn_0632f:
    cbw ; 0632F 98
    %if ($ - %%insn_0632f) > 1
        %error "LONG_0632F"
    %endif
    times 1 - ($ - %%insn_0632f) db 0
    db 0x8B, 0xF0 ; 06330 8BF0 | mov si,ax | encoding preserved
    db 0x0B, 0xF6 ; 06332 0BF6 | or si,si | encoding preserved
    %%insn_06334:
    jng short 0x6344 ; 06334 7E0E
    %if ($ - %%insn_06334) > 2
        %error "LONG_06334"
    %endif
    times 2 - ($ - %%insn_06334) db 0
    %%insn_06336:
    dec byte [si-0x16e2] ; 06336 FE8C1EE9
    %if ($ - %%insn_06336) > 4
        %error "LONG_06336"
    %endif
    times 4 - ($ - %%insn_06336) db 0
    %%insn_0633a:
    mov al,[bp-0x2] ; 0633A 8A46FE
    %if ($ - %%insn_0633a) > 3
        %error "LONG_0633A"
    %endif
    times 3 - ($ - %%insn_0633a) db 0
    %%insn_0633d:
    cbw ; 0633D 98
    %if ($ - %%insn_0633d) > 1
        %error "LONG_0633D"
    %endif
    times 1 - ($ - %%insn_0633d) db 0
    db 0x8B, 0xD8 ; 0633E 8BD8 | mov bx,ax | encoding preserved
    %%insn_06340:
    inc byte [bx-0x16e2] ; 06340 FE871EE9
    %if ($ - %%insn_06340) > 4
        %error "LONG_06340"
    %endif
    times 4 - ($ - %%insn_06340) db 0
    %%insn_06344:
    mov al,[di] ; 06344 8A05
    %if ($ - %%insn_06344) > 2
        %error "LONG_06344"
    %endif
    times 2 - ($ - %%insn_06344) db 0
    %%insn_06346:
    inc di ; 06346 47
    %if ($ - %%insn_06346) > 1
        %error "LONG_06346"
    %endif
    times 1 - ($ - %%insn_06346) db 0
    %%insn_06347:
    cbw ; 06347 98
    %if ($ - %%insn_06347) > 1
        %error "LONG_06347"
    %endif
    times 1 - ($ - %%insn_06347) db 0
    db 0x8B, 0xF0 ; 06348 8BF0 | mov si,ax | encoding preserved
    %%insn_0634a:
    mov al,[si-0x1b7c] ; 0634A 8A8484E4
    %if ($ - %%insn_0634a) > 4
        %error "LONG_0634A"
    %endif
    times 4 - ($ - %%insn_0634a) db 0
    %%insn_0634e:
    cbw ; 0634E 98
    %if ($ - %%insn_0634e) > 1
        %error "LONG_0634E"
    %endif
    times 1 - ($ - %%insn_0634e) db 0
    db 0x8B, 0xF0 ; 0634F 8BF0 | mov si,ax | encoding preserved
    db 0x0B, 0xF6 ; 06351 0BF6 | or si,si | encoding preserved
    %%insn_06353:
    jng short 0x6363 ; 06353 7E0E
    %if ($ - %%insn_06353) > 2
        %error "LONG_06353"
    %endif
    times 2 - ($ - %%insn_06353) db 0
    %%insn_06355:
    dec byte [si-0x16e2] ; 06355 FE8C1EE9
    %if ($ - %%insn_06355) > 4
        %error "LONG_06355"
    %endif
    times 4 - ($ - %%insn_06355) db 0
    %%insn_06359:
    mov al,[bp-0x2] ; 06359 8A46FE
    %if ($ - %%insn_06359) > 3
        %error "LONG_06359"
    %endif
    times 3 - ($ - %%insn_06359) db 0
    %%insn_0635c:
    cbw ; 0635C 98
    %if ($ - %%insn_0635c) > 1
        %error "LONG_0635C"
    %endif
    times 1 - ($ - %%insn_0635c) db 0
    db 0x8B, 0xD8 ; 0635D 8BD8 | mov bx,ax | encoding preserved
    %%insn_0635f:
    inc byte [bx-0x16e2] ; 0635F FE871EE9
    %if ($ - %%insn_0635f) > 4
        %error "LONG_0635F"
    %endif
    times 4 - ($ - %%insn_0635f) db 0
    %%insn_06363:
    mov al,[di] ; 06363 8A05
    %if ($ - %%insn_06363) > 2
        %error "LONG_06363"
    %endif
    times 2 - ($ - %%insn_06363) db 0
    %%insn_06365:
    inc di ; 06365 47
    %if ($ - %%insn_06365) > 1
        %error "LONG_06365"
    %endif
    times 1 - ($ - %%insn_06365) db 0
    %%insn_06366:
    cbw ; 06366 98
    %if ($ - %%insn_06366) > 1
        %error "LONG_06366"
    %endif
    times 1 - ($ - %%insn_06366) db 0
    db 0x8B, 0xF0 ; 06367 8BF0 | mov si,ax | encoding preserved
    %%insn_06369:
    mov al,[si-0x1b7c] ; 06369 8A8484E4
    %if ($ - %%insn_06369) > 4
        %error "LONG_06369"
    %endif
    times 4 - ($ - %%insn_06369) db 0
    %%insn_0636d:
    cbw ; 0636D 98
    %if ($ - %%insn_0636d) > 1
        %error "LONG_0636D"
    %endif
    times 1 - ($ - %%insn_0636d) db 0
    db 0x8B, 0xF0 ; 0636E 8BF0 | mov si,ax | encoding preserved
    db 0x0B, 0xF6 ; 06370 0BF6 | or si,si | encoding preserved
    %%insn_06372:
    jng short 0x6382 ; 06372 7E0E
    %if ($ - %%insn_06372) > 2
        %error "LONG_06372"
    %endif
    times 2 - ($ - %%insn_06372) db 0
    %%insn_06374:
    dec byte [si-0x16e2] ; 06374 FE8C1EE9
    %if ($ - %%insn_06374) > 4
        %error "LONG_06374"
    %endif
    times 4 - ($ - %%insn_06374) db 0
    %%insn_06378:
    mov al,[bp-0x2] ; 06378 8A46FE
    %if ($ - %%insn_06378) > 3
        %error "LONG_06378"
    %endif
    times 3 - ($ - %%insn_06378) db 0
    %%insn_0637b:
    cbw ; 0637B 98
    %if ($ - %%insn_0637b) > 1
        %error "LONG_0637B"
    %endif
    times 1 - ($ - %%insn_0637b) db 0
    db 0x8B, 0xD8 ; 0637C 8BD8 | mov bx,ax | encoding preserved
    %%insn_0637e:
    inc byte [bx-0x16e2] ; 0637E FE871EE9
    %if ($ - %%insn_0637e) > 4
        %error "LONG_0637E"
    %endif
    times 4 - ($ - %%insn_0637e) db 0
    %%insn_06382:
    mov al,[di] ; 06382 8A05
    %if ($ - %%insn_06382) > 2
        %error "LONG_06382"
    %endif
    times 2 - ($ - %%insn_06382) db 0
    %%insn_06384:
    inc di ; 06384 47
    %if ($ - %%insn_06384) > 1
        %error "LONG_06384"
    %endif
    times 1 - ($ - %%insn_06384) db 0
    %%insn_06385:
    cbw ; 06385 98
    %if ($ - %%insn_06385) > 1
        %error "LONG_06385"
    %endif
    times 1 - ($ - %%insn_06385) db 0
    db 0x8B, 0xF0 ; 06386 8BF0 | mov si,ax | encoding preserved
    db 0x0B, 0xF6 ; 06388 0BF6 | or si,si | encoding preserved
    %%insn_0638a:
    jnl short 0x6369 ; 0638A 7DDD
    %if ($ - %%insn_0638a) > 2
        %error "LONG_0638A"
    %endif
    times 2 - ($ - %%insn_0638a) db 0
    %%insn_0638c:
    mov al,[bp-0x4] ; 0638C 8A46FC
    %if ($ - %%insn_0638c) > 3
        %error "LONG_0638C"
    %endif
    times 3 - ($ - %%insn_0638c) db 0
    %%insn_0638f:
    cbw ; 0638F 98
    %if ($ - %%insn_0638f) > 1
        %error "LONG_0638F"
    %endif
    times 1 - ($ - %%insn_0638f) db 0
    db 0x8B, 0xD8 ; 06390 8BD8 | mov bx,ax | encoding preserved
    %%insn_06392:
    mov al,[bx-0x16e2] ; 06392 8A871EE9
    %if ($ - %%insn_06392) > 4
        %error "LONG_06392"
    %endif
    times 4 - ($ - %%insn_06392) db 0
    %%insn_06396:
    shl al,1 ; 06396 D0E0
    %if ($ - %%insn_06396) > 2
        %error "LONG_06396"
    %endif
    times 2 - ($ - %%insn_06396) db 0
    %%insn_06398:
    sub al,[0xe920] ; 06398 2A0620E9
    %if ($ - %%insn_06398) > 4
        %error "LONG_06398"
    %endif
    times 4 - ($ - %%insn_06398) db 0
    %%insn_0639c:
    sub al,[0xe921] ; 0639C 2A0621E9
    %if ($ - %%insn_0639c) > 4
        %error "LONG_0639C"
    %endif
    times 4 - ($ - %%insn_0639c) db 0
    %%insn_063a0:
    sub al,[0xe922] ; 063A0 2A0622E9
    %if ($ - %%insn_063a0) > 4
        %error "LONG_063A0"
    %endif
    times 4 - ($ - %%insn_063a0) db 0
    %%insn_063a4:
    sub al,[0xe91f] ; 063A4 2A061FE9
    %if ($ - %%insn_063a4) > 4
        %error "LONG_063A4"
    %endif
    times 4 - ($ - %%insn_063a4) db 0
    %%insn_063a8:
    shl al,1 ; 063A8 D0E0
    %if ($ - %%insn_063a8) > 2
        %error "LONG_063A8"
    %endif
    times 2 - ($ - %%insn_063a8) db 0
    %%insn_063aa:
    add al,[0xe8fc] ; 063AA 0206FCE8
    %if ($ - %%insn_063aa) > 4
        %error "LONG_063AA"
    %endif
    times 4 - ($ - %%insn_063aa) db 0
    %%insn_063ae:
    pop si ; 063AE 5E
    %if ($ - %%insn_063ae) > 1
        %error "LONG_063AE"
    %endif
    times 1 - ($ - %%insn_063ae) db 0
    %%insn_063af:
    pop di ; 063AF 5F
    %if ($ - %%insn_063af) > 1
        %error "LONG_063AF"
    %endif
    times 1 - ($ - %%insn_063af) db 0
    db 0x8B, 0xE5 ; 063B0 8BE5 | mov sp,bp | encoding preserved
    %%insn_063b2:
    pop bp ; 063B2 5D
    %if ($ - %%insn_063b2) > 1
        %error "LONG_063B2"
    %endif
    times 1 - ($ - %%insn_063b2) db 0
    %%insn_063b3:
    ret ; 063B3 C3
    %if ($ - %%insn_063b3) > 1
        %error "LONG_063B3"
    %endif
    times 1 - ($ - %%insn_063b3) db 0
    %if ($ - %%fragment_start) != 202
        %error "SIZE_062EA"
    %endif
%endmacro
