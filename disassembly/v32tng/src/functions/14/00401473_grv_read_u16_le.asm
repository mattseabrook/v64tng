; PE virtual entry 00401473
; Ghidra working symbol: FUN_00401473
; Verified GRV little-endian word reader; advances the script PC by two.
; Generated losslessly; preserve byte identity after edits.

%macro emit_grv_read_u16_le_part_00 0
    %%fragment_start:
grv_read_u16_le:
    %%insn_00401473:
    push ebp ; 00401473 55
    %if ($ - %%insn_00401473) > 1
        %error "LONG_00401473"
    %endif
    times 1 - ($ - %%insn_00401473) db 0
    db 0x8B, 0xEC ; 00401474 8BEC | mov ebp,esp | encoding preserved
    %%insn_00401476:
    push ecx ; 00401476 51
    %if ($ - %%insn_00401476) > 1
        %error "LONG_00401476"
    %endif
    times 1 - ($ - %%insn_00401476) db 0
    %%insn_00401477:
    mov eax,[0x41f284] ; 00401477 A184F24100
    %if ($ - %%insn_00401477) > 5
        %error "LONG_00401477"
    %endif
    times 5 - ($ - %%insn_00401477) db 0
    %%insn_0040147c:
    add eax,[0x41f300] ; 0040147C 030500F34100
    %if ($ - %%insn_0040147c) > 6
        %error "LONG_0040147C"
    %endif
    times 6 - ($ - %%insn_0040147c) db 0
    %%insn_00401482:
    movzx cx,byte [eax] ; 00401482 660FB608
    %if ($ - %%insn_00401482) > 4
        %error "LONG_00401482"
    %endif
    times 4 - ($ - %%insn_00401482) db 0
    %%insn_00401486:
    mov [ebp-0x4],cx ; 00401486 66894DFC
    %if ($ - %%insn_00401486) > 4
        %error "LONG_00401486"
    %endif
    times 4 - ($ - %%insn_00401486) db 0
    %%insn_0040148a:
    mov edx,[0x41f300] ; 0040148A 8B1500F34100
    %if ($ - %%insn_0040148a) > 6
        %error "LONG_0040148A"
    %endif
    times 6 - ($ - %%insn_0040148a) db 0
    %%insn_00401490:
    add edx,0x1 ; 00401490 83C201
    %if ($ - %%insn_00401490) > 3
        %error "LONG_00401490"
    %endif
    times 3 - ($ - %%insn_00401490) db 0
    %%insn_00401493:
    mov [0x41f300],edx ; 00401493 891500F34100
    %if ($ - %%insn_00401493) > 6
        %error "LONG_00401493"
    %endif
    times 6 - ($ - %%insn_00401493) db 0
    %%insn_00401499:
    mov eax,[0x41f284] ; 00401499 A184F24100
    %if ($ - %%insn_00401499) > 5
        %error "LONG_00401499"
    %endif
    times 5 - ($ - %%insn_00401499) db 0
    %%insn_0040149e:
    add eax,[0x41f300] ; 0040149E 030500F34100
    %if ($ - %%insn_0040149e) > 6
        %error "LONG_0040149E"
    %endif
    times 6 - ($ - %%insn_0040149e) db 0
    db 0x33, 0xC9 ; 004014A4 33C9 | xor ecx,ecx | encoding preserved
    %%insn_004014a6:
    mov cl,[eax] ; 004014A6 8A08
    %if ($ - %%insn_004014a6) > 2
        %error "LONG_004014A6"
    %endif
    times 2 - ($ - %%insn_004014a6) db 0
    %%insn_004014a8:
    shl ecx,byte 0x8 ; 004014A8 C1E108
    %if ($ - %%insn_004014a8) > 3
        %error "LONG_004014A8"
    %endif
    times 3 - ($ - %%insn_004014a8) db 0
    %%insn_004014ab:
    mov dx,[ebp-0x4] ; 004014AB 668B55FC
    %if ($ - %%insn_004014ab) > 4
        %error "LONG_004014AB"
    %endif
    times 4 - ($ - %%insn_004014ab) db 0
    db 0x66, 0x03, 0xD1 ; 004014AF 6603D1 | add dx,cx | encoding preserved
    %%insn_004014b2:
    mov [ebp-0x4],dx ; 004014B2 668955FC
    %if ($ - %%insn_004014b2) > 4
        %error "LONG_004014B2"
    %endif
    times 4 - ($ - %%insn_004014b2) db 0
    %%insn_004014b6:
    mov eax,[0x41f300] ; 004014B6 A100F34100
    %if ($ - %%insn_004014b6) > 5
        %error "LONG_004014B6"
    %endif
    times 5 - ($ - %%insn_004014b6) db 0
    %%insn_004014bb:
    add eax,0x1 ; 004014BB 83C001
    %if ($ - %%insn_004014bb) > 3
        %error "LONG_004014BB"
    %endif
    times 3 - ($ - %%insn_004014bb) db 0
    %%insn_004014be:
    mov [0x41f300],eax ; 004014BE A300F34100
    %if ($ - %%insn_004014be) > 5
        %error "LONG_004014BE"
    %endif
    times 5 - ($ - %%insn_004014be) db 0
    %%insn_004014c3:
    mov ax,[ebp-0x4] ; 004014C3 668B45FC
    %if ($ - %%insn_004014c3) > 4
        %error "LONG_004014C3"
    %endif
    times 4 - ($ - %%insn_004014c3) db 0
    db 0x8B, 0xE5 ; 004014C7 8BE5 | mov esp,ebp | encoding preserved
    %%insn_004014c9:
    pop ebp ; 004014C9 5D
    %if ($ - %%insn_004014c9) > 1
        %error "LONG_004014C9"
    %endif
    times 1 - ($ - %%insn_004014c9) db 0
    %%insn_004014ca:
    ret ; 004014CA C3
    %if ($ - %%insn_004014ca) > 1
        %error "LONG_004014CA"
    %endif
    times 1 - ($ - %%insn_004014ca) db 0
    %if ($ - %%fragment_start) != 88
        %error "function fragment size drift: 00401473"
    %endif
%endmacro
