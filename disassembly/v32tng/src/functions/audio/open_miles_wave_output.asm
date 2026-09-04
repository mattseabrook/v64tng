; PE virtual entry 00407507
; Ghidra working symbol: FUN_00407507
; Verified role: builds a PCM WAVEFORMAT structure from the requested format
; and opens a Miles digital driver through AIL_waveOutOpen.
; Generated losslessly; preserve byte identity after edits.

%macro emit_open_miles_wave_output_part_00 0
    %%fragment_start:
open_miles_wave_output:
    %%insn_00407507:
    push ebp ; 00407507 55
    %if ($ - %%insn_00407507) > 1
        %error "LONG_00407507"
    %endif
    times 1 - ($ - %%insn_00407507) db 0
    db 0x8B, 0xEC ; 00407508 8BEC | mov ebp,esp | encoding preserved
    %%insn_0040750a:
    sub esp,0x8 ; 0040750A 83EC08
    %if ($ - %%insn_0040750a) > 3
        %error "LONG_0040750A"
    %endif
    times 3 - ($ - %%insn_0040750a) db 0
    %%insn_0040750d:
    mov word [0x41f4d0],0x1 ; 0040750D 66C705D0F441000100
    %if ($ - %%insn_0040750d) > 9
        %error "LONG_0040750D"
    %endif
    times 9 - ($ - %%insn_0040750d) db 0
    %%insn_00407516:
    mov ax,[ebp+0x10] ; 00407516 668B4510
    %if ($ - %%insn_00407516) > 4
        %error "LONG_00407516"
    %endif
    times 4 - ($ - %%insn_00407516) db 0
    %%insn_0040751a:
    mov [0x41f4d2],ax ; 0040751A 66A3D2F44100
    %if ($ - %%insn_0040751a) > 6
        %error "LONG_0040751A"
    %endif
    times 6 - ($ - %%insn_0040751a) db 0
    %%insn_00407520:
    mov ecx,[ebp+0x8] ; 00407520 8B4D08
    %if ($ - %%insn_00407520) > 3
        %error "LONG_00407520"
    %endif
    times 3 - ($ - %%insn_00407520) db 0
    %%insn_00407523:
    mov [0x41f4d4],ecx ; 00407523 890DD4F44100
    %if ($ - %%insn_00407523) > 6
        %error "LONG_00407523"
    %endif
    times 6 - ($ - %%insn_00407523) db 0
    %%insn_00407529:
    mov eax,[ebp+0xc] ; 00407529 8B450C
    %if ($ - %%insn_00407529) > 3
        %error "LONG_00407529"
    %endif
    times 3 - ($ - %%insn_00407529) db 0
    %%insn_0040752c:
    and eax,0xffff ; 0040752C 25FFFF0000
    %if ($ - %%insn_0040752c) > 5
        %error "LONG_0040752C"
    %endif
    times 5 - ($ - %%insn_0040752c) db 0
    %%insn_00407531:
    cdq ; 00407531 99
    %if ($ - %%insn_00407531) > 1
        %error "LONG_00407531"
    %endif
    times 1 - ($ - %%insn_00407531) db 0
    %%insn_00407532:
    and edx,0x7 ; 00407532 83E207
    %if ($ - %%insn_00407532) > 3
        %error "LONG_00407532"
    %endif
    times 3 - ($ - %%insn_00407532) db 0
    db 0x03, 0xC2 ; 00407535 03C2 | add eax,edx | encoding preserved
    %%insn_00407537:
    sar eax,byte 0x3 ; 00407537 C1F803
    %if ($ - %%insn_00407537) > 3
        %error "LONG_00407537"
    %endif
    times 3 - ($ - %%insn_00407537) db 0
    %%insn_0040753a:
    mov edx,[ebp+0x8] ; 0040753A 8B5508
    %if ($ - %%insn_0040753a) > 3
        %error "LONG_0040753A"
    %endif
    times 3 - ($ - %%insn_0040753a) db 0
    %%insn_0040753d:
    imul edx,eax ; 0040753D 0FAFD0
    %if ($ - %%insn_0040753d) > 3
        %error "LONG_0040753D"
    %endif
    times 3 - ($ - %%insn_0040753d) db 0
    %%insn_00407540:
    mov eax,[ebp+0x10] ; 00407540 8B4510
    %if ($ - %%insn_00407540) > 3
        %error "LONG_00407540"
    %endif
    times 3 - ($ - %%insn_00407540) db 0
    %%insn_00407543:
    and eax,0xffff ; 00407543 25FFFF0000
    %if ($ - %%insn_00407543) > 5
        %error "LONG_00407543"
    %endif
    times 5 - ($ - %%insn_00407543) db 0
    %%insn_00407548:
    imul edx,eax ; 00407548 0FAFD0
    %if ($ - %%insn_00407548) > 3
        %error "LONG_00407548"
    %endif
    times 3 - ($ - %%insn_00407548) db 0
    %%insn_0040754b:
    mov [0x41f4d8],edx ; 0040754B 8915D8F44100
    %if ($ - %%insn_0040754b) > 6
        %error "LONG_0040754B"
    %endif
    times 6 - ($ - %%insn_0040754b) db 0
    %%insn_00407551:
    mov eax,[ebp+0xc] ; 00407551 8B450C
    %if ($ - %%insn_00407551) > 3
        %error "LONG_00407551"
    %endif
    times 3 - ($ - %%insn_00407551) db 0
    %%insn_00407554:
    and eax,0xffff ; 00407554 25FFFF0000
    %if ($ - %%insn_00407554) > 5
        %error "LONG_00407554"
    %endif
    times 5 - ($ - %%insn_00407554) db 0
    %%insn_00407559:
    cdq ; 00407559 99
    %if ($ - %%insn_00407559) > 1
        %error "LONG_00407559"
    %endif
    times 1 - ($ - %%insn_00407559) db 0
    %%insn_0040755a:
    and edx,0x7 ; 0040755A 83E207
    %if ($ - %%insn_0040755a) > 3
        %error "LONG_0040755A"
    %endif
    times 3 - ($ - %%insn_0040755a) db 0
    db 0x03, 0xC2 ; 0040755D 03C2 | add eax,edx | encoding preserved
    %%insn_0040755f:
    sar eax,byte 0x3 ; 0040755F C1F803
    %if ($ - %%insn_0040755f) > 3
        %error "LONG_0040755F"
    %endif
    times 3 - ($ - %%insn_0040755f) db 0
    %%insn_00407562:
    mov ecx,[ebp+0x10] ; 00407562 8B4D10
    %if ($ - %%insn_00407562) > 3
        %error "LONG_00407562"
    %endif
    times 3 - ($ - %%insn_00407562) db 0
    %%insn_00407565:
    and ecx,0xffff ; 00407565 81E1FFFF0000
    %if ($ - %%insn_00407565) > 6
        %error "LONG_00407565"
    %endif
    times 6 - ($ - %%insn_00407565) db 0
    %%insn_0040756b:
    imul eax,ecx ; 0040756B 0FAFC1
    %if ($ - %%insn_0040756b) > 3
        %error "LONG_0040756B"
    %endif
    times 3 - ($ - %%insn_0040756b) db 0
    %%insn_0040756e:
    mov [0x41f4dc],ax ; 0040756E 66A3DCF44100
    %if ($ - %%insn_0040756e) > 6
        %error "LONG_0040756E"
    %endif
    times 6 - ($ - %%insn_0040756e) db 0
    %%insn_00407574:
    mov dx,[ebp+0xc] ; 00407574 668B550C
    %if ($ - %%insn_00407574) > 4
        %error "LONG_00407574"
    %endif
    times 4 - ($ - %%insn_00407574) db 0
    %%insn_00407578:
    mov [0x41f4de],dx ; 00407578 668915DEF44100
    %if ($ - %%insn_00407578) > 7
        %error "LONG_00407578"
    %endif
    times 7 - ($ - %%insn_00407578) db 0
    %%insn_0040757f:
    push dword 0x41f4d0 ; 0040757F 68D0F44100
    %if ($ - %%insn_0040757f) > 5
        %error "LONG_0040757F"
    %endif
    times 5 - ($ - %%insn_0040757f) db 0
    %%insn_00407584:
    push dword 0xffffffffffffffff ; 00407584 6AFF
    %if ($ - %%insn_00407584) > 2
        %error "LONG_00407584"
    %endif
    times 2 - ($ - %%insn_00407584) db 0
    %%insn_00407586:
    push dword 0x0 ; 00407586 6A00
    %if ($ - %%insn_00407586) > 2
        %error "LONG_00407586"
    %endif
    times 2 - ($ - %%insn_00407586) db 0
    %%insn_00407588:
    lea eax,[ebp-0x4] ; 00407588 8D45FC
    %if ($ - %%insn_00407588) > 3
        %error "LONG_00407588"
    %endif
    times 3 - ($ - %%insn_00407588) db 0
    %%insn_0040758b:
    push eax ; 0040758B 50
    %if ($ - %%insn_0040758b) > 1
        %error "LONG_0040758B"
    %endif
    times 1 - ($ - %%insn_0040758b) db 0
    %%insn_0040758c:
    call dword near [0x424608] ; 0040758C FF1508464200
    %if ($ - %%insn_0040758c) > 6
        %error "LONG_0040758C"
    %endif
    times 6 - ($ - %%insn_0040758c) db 0
    %%insn_00407592:
    mov [ebp-0x8],eax ; 00407592 8945F8
    %if ($ - %%insn_00407592) > 3
        %error "LONG_00407592"
    %endif
    times 3 - ($ - %%insn_00407592) db 0
    %%insn_00407595:
    cmp dword [ebp-0x8],0x0 ; 00407595 837DF800
    %if ($ - %%insn_00407595) > 4
        %error "LONG_00407595"
    %endif
    times 4 - ($ - %%insn_00407595) db 0
    %%insn_00407599:
    jz short 0x4075a6 ; 00407599 740B
    %if ($ - %%insn_00407599) > 2
        %error "LONG_00407599"
    %endif
    times 2 - ($ - %%insn_00407599) db 0
    %%insn_0040759b:
    mov dword [ebp-0x4],0x0 ; 0040759B C745FC00000000
    %if ($ - %%insn_0040759b) > 7
        %error "LONG_0040759B"
    %endif
    times 7 - ($ - %%insn_0040759b) db 0
    db 0x33, 0xC0 ; 004075A2 33C0 | xor eax,eax | encoding preserved
    %%insn_004075a4:
    jmp short 0x4075a9 ; 004075A4 EB03
    %if ($ - %%insn_004075a4) > 2
        %error "LONG_004075A4"
    %endif
    times 2 - ($ - %%insn_004075a4) db 0
    %%insn_004075a6:
    mov eax,[ebp-0x4] ; 004075A6 8B45FC
    %if ($ - %%insn_004075a6) > 3
        %error "LONG_004075A6"
    %endif
    times 3 - ($ - %%insn_004075a6) db 0
    db 0x8B, 0xE5 ; 004075A9 8BE5 | mov esp,ebp | encoding preserved
    %%insn_004075ab:
    pop ebp ; 004075AB 5D
    %if ($ - %%insn_004075ab) > 1
        %error "LONG_004075AB"
    %endif
    times 1 - ($ - %%insn_004075ab) db 0
    %%insn_004075ac:
    ret ; 004075AC C3
    %if ($ - %%insn_004075ac) > 1
        %error "LONG_004075AC"
    %endif
    times 1 - ($ - %%insn_004075ac) db 0
    %if ($ - %%fragment_start) != 166
        %error "function fragment size drift: 00407507"
    %endif
%endmacro
