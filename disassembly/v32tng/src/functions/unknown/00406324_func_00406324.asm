; PE virtual entry 00406324
; Ghidra working symbol: FUN_00406324
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00406324_part_00 0
    %%fragment_start:
func_00406324:
    %%insn_00406324:
    push ebp ; 00406324 55
    %if ($ - %%insn_00406324) > 1
        %error "LONG_00406324"
    %endif
    times 1 - ($ - %%insn_00406324) db 0
    db 0x8B, 0xEC ; 00406325 8BEC | mov ebp,esp | encoding preserved
    %%insn_00406327:
    sub esp,0x8 ; 00406327 83EC08
    %if ($ - %%insn_00406327) > 3
        %error "LONG_00406327"
    %endif
    times 3 - ($ - %%insn_00406327) db 0
    %%insn_0040632a:
    mov ax,[0x421560] ; 0040632A 66A160154200
    %if ($ - %%insn_0040632a) > 6
        %error "LONG_0040632A"
    %endif
    times 6 - ($ - %%insn_0040632a) db 0
    %%insn_00406330:
    mov [ebp-0x4],ax ; 00406330 668945FC
    %if ($ - %%insn_00406330) > 4
        %error "LONG_00406330"
    %endif
    times 4 - ($ - %%insn_00406330) db 0
    %%insn_00406334:
    mov dword [ebp-0x8],0x421560 ; 00406334 C745F860154200
    %if ($ - %%insn_00406334) > 7
        %error "LONG_00406334"
    %endif
    times 7 - ($ - %%insn_00406334) db 0
    %%insn_0040633b:
    movsx ecx,word [0x42191a] ; 0040633B 0FBF0D1A194200
    %if ($ - %%insn_0040633b) > 7
        %error "LONG_0040633B"
    %endif
    times 7 - ($ - %%insn_0040633b) db 0
    %%insn_00406342:
    mov dl,[0x4215b5] ; 00406342 8A15B5154200
    %if ($ - %%insn_00406342) > 6
        %error "LONG_00406342"
    %endif
    times 6 - ($ - %%insn_00406342) db 0
    %%insn_00406348:
    mov [ecx+0x4219a0],dl ; 00406348 8891A0194200
    %if ($ - %%insn_00406348) > 6
        %error "LONG_00406348"
    %endif
    times 6 - ($ - %%insn_00406348) db 0
    %%insn_0040634e:
    movsx eax,word [0x42191a] ; 0040634E 0FBF051A194200
    %if ($ - %%insn_0040634e) > 7
        %error "LONG_0040634E"
    %endif
    times 7 - ($ - %%insn_0040634e) db 0
    %%insn_00406355:
    mov cl,[0x4215b6] ; 00406355 8A0DB6154200
    %if ($ - %%insn_00406355) > 6
        %error "LONG_00406355"
    %endif
    times 6 - ($ - %%insn_00406355) db 0
    %%insn_0040635b:
    mov [eax+0x421c00],cl ; 0040635B 8888001C4200
    %if ($ - %%insn_0040635b) > 6
        %error "LONG_0040635B"
    %endif
    times 6 - ($ - %%insn_0040635b) db 0
    %%insn_00406361:
    movsx edx,word [0x42191a] ; 00406361 0FBF151A194200
    %if ($ - %%insn_00406361) > 7
        %error "LONG_00406361"
    %endif
    times 7 - ($ - %%insn_00406361) db 0
    %%insn_00406368:
    mov al,[ebp+0x8] ; 00406368 8A4508
    %if ($ - %%insn_00406368) > 3
        %error "LONG_00406368"
    %endif
    times 3 - ($ - %%insn_00406368) db 0
    %%insn_0040636b:
    mov [edx+0x421460],al ; 0040636B 888260144200
    %if ($ - %%insn_0040636b) > 6
        %error "LONG_0040636B"
    %endif
    times 6 - ($ - %%insn_0040636b) db 0
    %%insn_00406371:
    movsx ecx,word [0x42191a] ; 00406371 0FBF0D1A194200
    %if ($ - %%insn_00406371) > 7
        %error "LONG_00406371"
    %endif
    times 7 - ($ - %%insn_00406371) db 0
    %%insn_00406378:
    mov dl,[0x4215b7] ; 00406378 8A15B7154200
    %if ($ - %%insn_00406378) > 6
        %error "LONG_00406378"
    %endif
    times 6 - ($ - %%insn_00406378) db 0
    %%insn_0040637e:
    mov [ecx+0x4215c0],dl ; 0040637E 8891C0154200
    %if ($ - %%insn_0040637e) > 6
        %error "LONG_0040637E"
    %endif
    times 6 - ($ - %%insn_0040637e) db 0
    %%insn_00406384:
    movsx eax,word [ebp-0x4] ; 00406384 0FBF45FC
    %if ($ - %%insn_00406384) > 4
        %error "LONG_00406384"
    %endif
    times 4 - ($ - %%insn_00406384) db 0
    %%insn_00406388:
    cmp eax,0xffffffffffffffff ; 00406388 83F8FF
    %if ($ - %%insn_00406388) > 3
        %error "LONG_00406388"
    %endif
    times 3 - ($ - %%insn_00406388) db 0
    %%insn_0040638b:
    jz short 0x4063f4 ; 0040638B 7467
    %if ($ - %%insn_0040638b) > 2
        %error "LONG_0040638B"
    %endif
    times 2 - ($ - %%insn_0040638b) db 0
    %%insn_0040638d:
    movsx ecx,byte [ebp+0x8] ; 0040638D 0FBE4D08
    %if ($ - %%insn_0040638d) > 4
        %error "LONG_0040638D"
    %endif
    times 4 - ($ - %%insn_0040638d) db 0
    %%insn_00406391:
    movsx edx,word [ebp-0x4] ; 00406391 0FBF55FC
    %if ($ - %%insn_00406391) > 4
        %error "LONG_00406391"
    %endif
    times 4 - ($ - %%insn_00406391) db 0
    %%insn_00406395:
    movsx eax,byte [edx+0x421460] ; 00406395 0FBE8260144200
    %if ($ - %%insn_00406395) > 7
        %error "LONG_00406395"
    %endif
    times 7 - ($ - %%insn_00406395) db 0
    db 0x3B, 0xC8 ; 0040639C 3BC8 | cmp ecx,eax | encoding preserved
    %%insn_0040639e:
    jng short 0x4063d4 ; 0040639E 7E34
    %if ($ - %%insn_0040639e) > 2
        %error "LONG_0040639E"
    %endif
    times 2 - ($ - %%insn_0040639e) db 0
    %%insn_004063a0:
    movsx ecx,word [0x42191a] ; 004063A0 0FBF0D1A194200
    %if ($ - %%insn_004063a0) > 7
        %error "LONG_004063A0"
    %endif
    times 7 - ($ - %%insn_004063a0) db 0
    %%insn_004063a7:
    mov dx,[ebp-0x4] ; 004063A7 668B55FC
    %if ($ - %%insn_004063a7) > 4
        %error "LONG_004063A7"
    %endif
    times 4 - ($ - %%insn_004063a7) db 0
    db 0x66, 0x89, 0x14, 0x4D, 0x40, 0x1D, 0x42, 0x00 ; 004063AB 6689144D401D4200 | mov [ecx*2+0x421d40],dx | encoding preserved
    %%insn_004063b3:
    mov eax,[ebp-0x8] ; 004063B3 8B45F8
    %if ($ - %%insn_004063b3) > 3
        %error "LONG_004063B3"
    %endif
    times 3 - ($ - %%insn_004063b3) db 0
    %%insn_004063b6:
    mov cx,[0x42191a] ; 004063B6 668B0D1A194200
    %if ($ - %%insn_004063b6) > 7
        %error "LONG_004063B6"
    %endif
    times 7 - ($ - %%insn_004063b6) db 0
    %%insn_004063bd:
    mov [eax],cx ; 004063BD 668908
    %if ($ - %%insn_004063bd) > 3
        %error "LONG_004063BD"
    %endif
    times 3 - ($ - %%insn_004063bd) db 0
    %%insn_004063c0:
    mov dx,[0x42191a] ; 004063C0 668B151A194200
    %if ($ - %%insn_004063c0) > 7
        %error "LONG_004063C0"
    %endif
    times 7 - ($ - %%insn_004063c0) db 0
    %%insn_004063c7:
    add dx,0x1 ; 004063C7 6683C201
    %if ($ - %%insn_004063c7) > 4
        %error "LONG_004063C7"
    %endif
    times 4 - ($ - %%insn_004063c7) db 0
    %%insn_004063cb:
    mov [0x42191a],dx ; 004063CB 6689151A194200
    %if ($ - %%insn_004063cb) > 7
        %error "LONG_004063CB"
    %endif
    times 7 - ($ - %%insn_004063cb) db 0
    %%insn_004063d2:
    jmp short 0x406423 ; 004063D2 EB4F
    %if ($ - %%insn_004063d2) > 2
        %error "LONG_004063D2"
    %endif
    times 2 - ($ - %%insn_004063d2) db 0
    %%insn_004063d4:
    movsx eax,word [ebp-0x4] ; 004063D4 0FBF45FC
    %if ($ - %%insn_004063d4) > 4
        %error "LONG_004063D4"
    %endif
    times 4 - ($ - %%insn_004063d4) db 0
    db 0x8D, 0x0C, 0x45, 0x40, 0x1D, 0x42, 0x00 ; 004063D8 8D0C45401D4200 | lea ecx,[eax*2+0x421d40] | encoding preserved
    %%insn_004063df:
    mov [ebp-0x8],ecx ; 004063DF 894DF8
    %if ($ - %%insn_004063df) > 3
        %error "LONG_004063DF"
    %endif
    times 3 - ($ - %%insn_004063df) db 0
    %%insn_004063e2:
    movsx edx,word [ebp-0x4] ; 004063E2 0FBF55FC
    %if ($ - %%insn_004063e2) > 4
        %error "LONG_004063E2"
    %endif
    times 4 - ($ - %%insn_004063e2) db 0
    db 0x66, 0x8B, 0x04, 0x55, 0x40, 0x1D, 0x42, 0x00 ; 004063E6 668B0455401D4200 | mov ax,[edx*2+0x421d40] | encoding preserved
    %%insn_004063ee:
    mov [ebp-0x4],ax ; 004063EE 668945FC
    %if ($ - %%insn_004063ee) > 4
        %error "LONG_004063EE"
    %endif
    times 4 - ($ - %%insn_004063ee) db 0
    %%insn_004063f2:
    jmp short 0x406384 ; 004063F2 EB90
    %if ($ - %%insn_004063f2) > 2
        %error "LONG_004063F2"
    %endif
    times 2 - ($ - %%insn_004063f2) db 0
    %%insn_004063f4:
    movsx ecx,word [0x42191a] ; 004063F4 0FBF0D1A194200
    %if ($ - %%insn_004063f4) > 7
        %error "LONG_004063F4"
    %endif
    times 7 - ($ - %%insn_004063f4) db 0
    db 0x66, 0xC7, 0x04, 0x4D, 0x40, 0x1D, 0x42, 0x00, 0xFF, 0xFF ; 004063FB 66C7044D401D4200FFFF | mov word [ecx*2+0x421d40],0xffff | encoding preserved
    %%insn_00406405:
    mov edx,[ebp-0x8] ; 00406405 8B55F8
    %if ($ - %%insn_00406405) > 3
        %error "LONG_00406405"
    %endif
    times 3 - ($ - %%insn_00406405) db 0
    %%insn_00406408:
    mov ax,[0x42191a] ; 00406408 66A11A194200
    %if ($ - %%insn_00406408) > 6
        %error "LONG_00406408"
    %endif
    times 6 - ($ - %%insn_00406408) db 0
    %%insn_0040640e:
    mov [edx],ax ; 0040640E 668902
    %if ($ - %%insn_0040640e) > 3
        %error "LONG_0040640E"
    %endif
    times 3 - ($ - %%insn_0040640e) db 0
    %%insn_00406411:
    mov cx,[0x42191a] ; 00406411 668B0D1A194200
    %if ($ - %%insn_00406411) > 7
        %error "LONG_00406411"
    %endif
    times 7 - ($ - %%insn_00406411) db 0
    %%insn_00406418:
    add cx,0x1 ; 00406418 6683C101
    %if ($ - %%insn_00406418) > 4
        %error "LONG_00406418"
    %endif
    times 4 - ($ - %%insn_00406418) db 0
    %%insn_0040641c:
    mov [0x42191a],cx ; 0040641C 66890D1A194200
    %if ($ - %%insn_0040641c) > 7
        %error "LONG_0040641C"
    %endif
    times 7 - ($ - %%insn_0040641c) db 0
    db 0x8B, 0xE5 ; 00406423 8BE5 | mov esp,ebp | encoding preserved
    %%insn_00406425:
    pop ebp ; 00406425 5D
    %if ($ - %%insn_00406425) > 1
        %error "LONG_00406425"
    %endif
    times 1 - ($ - %%insn_00406425) db 0
    %%insn_00406426:
    ret ; 00406426 C3
    %if ($ - %%insn_00406426) > 1
        %error "LONG_00406426"
    %endif
    times 1 - ($ - %%insn_00406426) db 0
    %if ($ - %%fragment_start) != 259
        %error "function fragment size drift: 00406324"
    %endif
%endmacro
