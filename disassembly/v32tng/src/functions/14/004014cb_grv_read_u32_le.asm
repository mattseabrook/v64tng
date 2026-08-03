; PE virtual entry 004014CB
; Ghidra working symbol: FUN_004014cb
; Verified GRV little-endian dword reader; advances the script PC by four.
; Generated losslessly; preserve byte identity after edits.

%macro emit_grv_read_u32_le_part_00 0
    %%fragment_start:
grv_read_u32_le:
    %%insn_004014cb:
    push ebp ; 004014CB 55
    %if ($ - %%insn_004014cb) > 1
        %error "LONG_004014CB"
    %endif
    times 1 - ($ - %%insn_004014cb) db 0
    db 0x8B, 0xEC ; 004014CC 8BEC | mov ebp,esp | encoding preserved
    %%insn_004014ce:
    push ecx ; 004014CE 51
    %if ($ - %%insn_004014ce) > 1
        %error "LONG_004014CE"
    %endif
    times 1 - ($ - %%insn_004014ce) db 0
    %%insn_004014cf:
    mov eax,[0x41f284] ; 004014CF A184F24100
    %if ($ - %%insn_004014cf) > 5
        %error "LONG_004014CF"
    %endif
    times 5 - ($ - %%insn_004014cf) db 0
    %%insn_004014d4:
    add eax,[0x41f300] ; 004014D4 030500F34100
    %if ($ - %%insn_004014d4) > 6
        %error "LONG_004014D4"
    %endif
    times 6 - ($ - %%insn_004014d4) db 0
    db 0x33, 0xC9 ; 004014DA 33C9 | xor ecx,ecx | encoding preserved
    %%insn_004014dc:
    mov cl,[eax] ; 004014DC 8A08
    %if ($ - %%insn_004014dc) > 2
        %error "LONG_004014DC"
    %endif
    times 2 - ($ - %%insn_004014dc) db 0
    %%insn_004014de:
    mov [ebp-0x4],ecx ; 004014DE 894DFC
    %if ($ - %%insn_004014de) > 3
        %error "LONG_004014DE"
    %endif
    times 3 - ($ - %%insn_004014de) db 0
    %%insn_004014e1:
    mov edx,[0x41f300] ; 004014E1 8B1500F34100
    %if ($ - %%insn_004014e1) > 6
        %error "LONG_004014E1"
    %endif
    times 6 - ($ - %%insn_004014e1) db 0
    %%insn_004014e7:
    add edx,0x1 ; 004014E7 83C201
    %if ($ - %%insn_004014e7) > 3
        %error "LONG_004014E7"
    %endif
    times 3 - ($ - %%insn_004014e7) db 0
    %%insn_004014ea:
    mov [0x41f300],edx ; 004014EA 891500F34100
    %if ($ - %%insn_004014ea) > 6
        %error "LONG_004014EA"
    %endif
    times 6 - ($ - %%insn_004014ea) db 0
    %%insn_004014f0:
    mov eax,[0x41f284] ; 004014F0 A184F24100
    %if ($ - %%insn_004014f0) > 5
        %error "LONG_004014F0"
    %endif
    times 5 - ($ - %%insn_004014f0) db 0
    %%insn_004014f5:
    add eax,[0x41f300] ; 004014F5 030500F34100
    %if ($ - %%insn_004014f5) > 6
        %error "LONG_004014F5"
    %endif
    times 6 - ($ - %%insn_004014f5) db 0
    db 0x33, 0xC9 ; 004014FB 33C9 | xor ecx,ecx | encoding preserved
    %%insn_004014fd:
    mov cl,[eax] ; 004014FD 8A08
    %if ($ - %%insn_004014fd) > 2
        %error "LONG_004014FD"
    %endif
    times 2 - ($ - %%insn_004014fd) db 0
    %%insn_004014ff:
    shl ecx,byte 0x8 ; 004014FF C1E108
    %if ($ - %%insn_004014ff) > 3
        %error "LONG_004014FF"
    %endif
    times 3 - ($ - %%insn_004014ff) db 0
    %%insn_00401502:
    mov edx,[ebp-0x4] ; 00401502 8B55FC
    %if ($ - %%insn_00401502) > 3
        %error "LONG_00401502"
    %endif
    times 3 - ($ - %%insn_00401502) db 0
    db 0x03, 0xD1 ; 00401505 03D1 | add edx,ecx | encoding preserved
    %%insn_00401507:
    mov [ebp-0x4],edx ; 00401507 8955FC
    %if ($ - %%insn_00401507) > 3
        %error "LONG_00401507"
    %endif
    times 3 - ($ - %%insn_00401507) db 0
    %%insn_0040150a:
    mov eax,[0x41f300] ; 0040150A A100F34100
    %if ($ - %%insn_0040150a) > 5
        %error "LONG_0040150A"
    %endif
    times 5 - ($ - %%insn_0040150a) db 0
    %%insn_0040150f:
    add eax,0x1 ; 0040150F 83C001
    %if ($ - %%insn_0040150f) > 3
        %error "LONG_0040150F"
    %endif
    times 3 - ($ - %%insn_0040150f) db 0
    %%insn_00401512:
    mov [0x41f300],eax ; 00401512 A300F34100
    %if ($ - %%insn_00401512) > 5
        %error "LONG_00401512"
    %endif
    times 5 - ($ - %%insn_00401512) db 0
    %%insn_00401517:
    mov ecx,[0x41f284] ; 00401517 8B0D84F24100
    %if ($ - %%insn_00401517) > 6
        %error "LONG_00401517"
    %endif
    times 6 - ($ - %%insn_00401517) db 0
    %%insn_0040151d:
    add ecx,[0x41f300] ; 0040151D 030D00F34100
    %if ($ - %%insn_0040151d) > 6
        %error "LONG_0040151D"
    %endif
    times 6 - ($ - %%insn_0040151d) db 0
    db 0x33, 0xD2 ; 00401523 33D2 | xor edx,edx | encoding preserved
    %%insn_00401525:
    mov dl,[ecx] ; 00401525 8A11
    %if ($ - %%insn_00401525) > 2
        %error "LONG_00401525"
    %endif
    times 2 - ($ - %%insn_00401525) db 0
    %%insn_00401527:
    shl edx,byte 0x10 ; 00401527 C1E210
    %if ($ - %%insn_00401527) > 3
        %error "LONG_00401527"
    %endif
    times 3 - ($ - %%insn_00401527) db 0
    %%insn_0040152a:
    mov eax,[ebp-0x4] ; 0040152A 8B45FC
    %if ($ - %%insn_0040152a) > 3
        %error "LONG_0040152A"
    %endif
    times 3 - ($ - %%insn_0040152a) db 0
    db 0x03, 0xC2 ; 0040152D 03C2 | add eax,edx | encoding preserved
    %%insn_0040152f:
    mov [ebp-0x4],eax ; 0040152F 8945FC
    %if ($ - %%insn_0040152f) > 3
        %error "LONG_0040152F"
    %endif
    times 3 - ($ - %%insn_0040152f) db 0
    %%insn_00401532:
    mov ecx,[0x41f300] ; 00401532 8B0D00F34100
    %if ($ - %%insn_00401532) > 6
        %error "LONG_00401532"
    %endif
    times 6 - ($ - %%insn_00401532) db 0
    %%insn_00401538:
    add ecx,0x1 ; 00401538 83C101
    %if ($ - %%insn_00401538) > 3
        %error "LONG_00401538"
    %endif
    times 3 - ($ - %%insn_00401538) db 0
    %%insn_0040153b:
    mov [0x41f300],ecx ; 0040153B 890D00F34100
    %if ($ - %%insn_0040153b) > 6
        %error "LONG_0040153B"
    %endif
    times 6 - ($ - %%insn_0040153b) db 0
    %%insn_00401541:
    mov edx,[0x41f284] ; 00401541 8B1584F24100
    %if ($ - %%insn_00401541) > 6
        %error "LONG_00401541"
    %endif
    times 6 - ($ - %%insn_00401541) db 0
    %%insn_00401547:
    add edx,[0x41f300] ; 00401547 031500F34100
    %if ($ - %%insn_00401547) > 6
        %error "LONG_00401547"
    %endif
    times 6 - ($ - %%insn_00401547) db 0
    db 0x33, 0xC0 ; 0040154D 33C0 | xor eax,eax | encoding preserved
    %%insn_0040154f:
    mov al,[edx] ; 0040154F 8A02
    %if ($ - %%insn_0040154f) > 2
        %error "LONG_0040154F"
    %endif
    times 2 - ($ - %%insn_0040154f) db 0
    %%insn_00401551:
    shl eax,byte 0x18 ; 00401551 C1E018
    %if ($ - %%insn_00401551) > 3
        %error "LONG_00401551"
    %endif
    times 3 - ($ - %%insn_00401551) db 0
    %%insn_00401554:
    mov ecx,[ebp-0x4] ; 00401554 8B4DFC
    %if ($ - %%insn_00401554) > 3
        %error "LONG_00401554"
    %endif
    times 3 - ($ - %%insn_00401554) db 0
    db 0x03, 0xC8 ; 00401557 03C8 | add ecx,eax | encoding preserved
    %%insn_00401559:
    mov [ebp-0x4],ecx ; 00401559 894DFC
    %if ($ - %%insn_00401559) > 3
        %error "LONG_00401559"
    %endif
    times 3 - ($ - %%insn_00401559) db 0
    %%insn_0040155c:
    mov edx,[0x41f300] ; 0040155C 8B1500F34100
    %if ($ - %%insn_0040155c) > 6
        %error "LONG_0040155C"
    %endif
    times 6 - ($ - %%insn_0040155c) db 0
    %%insn_00401562:
    add edx,0x1 ; 00401562 83C201
    %if ($ - %%insn_00401562) > 3
        %error "LONG_00401562"
    %endif
    times 3 - ($ - %%insn_00401562) db 0
    %%insn_00401565:
    mov [0x41f300],edx ; 00401565 891500F34100
    %if ($ - %%insn_00401565) > 6
        %error "LONG_00401565"
    %endif
    times 6 - ($ - %%insn_00401565) db 0
    %%insn_0040156b:
    mov eax,[ebp-0x4] ; 0040156B 8B45FC
    %if ($ - %%insn_0040156b) > 3
        %error "LONG_0040156B"
    %endif
    times 3 - ($ - %%insn_0040156b) db 0
    db 0x8B, 0xE5 ; 0040156E 8BE5 | mov esp,ebp | encoding preserved
    %%insn_00401570:
    pop ebp ; 00401570 5D
    %if ($ - %%insn_00401570) > 1
        %error "LONG_00401570"
    %endif
    times 1 - ($ - %%insn_00401570) db 0
    %%insn_00401571:
    ret ; 00401571 C3
    %if ($ - %%insn_00401571) > 1
        %error "LONG_00401571"
    %endif
    times 1 - ($ - %%insn_00401571) db 0
    %if ($ - %%fragment_start) != 167
        %error "function fragment size drift: 004014CB"
    %endif
%endmacro
