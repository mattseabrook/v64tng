; Linear entry 03590 (1000:3590)
; Ghidra working symbol: FUN_1000_3590
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_03590_part_00 0
    %%fragment_start:
func_03590:
    %%insn_03590:
    push ds ; 03590 1E
    %if ($ - %%insn_03590) > 1
        %error "LONG_03590"
    %endif
    times 1 - ($ - %%insn_03590) db 0
    %%insn_03591:
    mov ax,0x1815 ; 03591 B81518
    %if ($ - %%insn_03591) > 3
        %error "LONG_03591"
    %endif
    times 3 - ($ - %%insn_03591) db 0
    %%insn_03594:
    mov ds,ax ; 03594 8ED8
    %if ($ - %%insn_03594) > 2
        %error "LONG_03594"
    %endif
    times 2 - ($ - %%insn_03594) db 0
    %%insn_03596:
    mov dx,0x130 ; 03596 BA3001
    %if ($ - %%insn_03596) > 3
        %error "LONG_03596"
    %endif
    times 3 - ($ - %%insn_03596) db 0
    %%insn_03599:
    mov ax,0x900 ; 03599 B80009
    %if ($ - %%insn_03599) > 3
        %error "LONG_03599"
    %endif
    times 3 - ($ - %%insn_03599) db 0
    %%insn_0359c:
    int byte 0x21 ; 0359C CD21
    %if ($ - %%insn_0359c) > 2
        %error "LONG_0359C"
    %endif
    times 2 - ($ - %%insn_0359c) db 0
    %%insn_0359e:
    mov ax,[bp-0x299e] ; 0359E 8B8662D6
    %if ($ - %%insn_0359e) > 4
        %error "LONG_0359E"
    %endif
    times 4 - ($ - %%insn_0359e) db 0
    db 0x8B, 0xD0 ; 035A2 8BD0 | mov dx,ax | encoding preserved
    %%insn_035a4:
    mov ax,0x900 ; 035A4 B80009
    %if ($ - %%insn_035a4) > 3
        %error "LONG_035A4"
    %endif
    times 3 - ($ - %%insn_035a4) db 0
    %%insn_035a7:
    int byte 0x21 ; 035A7 CD21
    %if ($ - %%insn_035a7) > 2
        %error "LONG_035A7"
    %endif
    times 2 - ($ - %%insn_035a7) db 0
    %%insn_035a9:
    cmp word [bp-0x298c],0x0 ; 035A9 83BE74D600
    %if ($ - %%insn_035a9) > 5
        %error "LONG_035A9"
    %endif
    times 5 - ($ - %%insn_035a9) db 0
    %%insn_035ae:
    jnz short 0x35b5 ; 035AE 7505
    %if ($ - %%insn_035ae) > 2
        %error "LONG_035AE"
    %endif
    times 2 - ($ - %%insn_035ae) db 0
    %%insn_035b0:
    mov dx,0x179 ; 035B0 BA7901
    %if ($ - %%insn_035b0) > 3
        %error "LONG_035B0"
    %endif
    times 3 - ($ - %%insn_035b0) db 0
    %%insn_035b3:
    jmp short 0x35b8 ; 035B3 EB03
    %if ($ - %%insn_035b3) > 2
        %error "LONG_035B3"
    %endif
    times 2 - ($ - %%insn_035b3) db 0
    %%insn_035b5:
    mov dx,0x198 ; 035B5 BA9801
    %if ($ - %%insn_035b5) > 3
        %error "LONG_035B5"
    %endif
    times 3 - ($ - %%insn_035b5) db 0
    %%insn_035b8:
    mov ax,0x900 ; 035B8 B80009
    %if ($ - %%insn_035b8) > 3
        %error "LONG_035B8"
    %endif
    times 3 - ($ - %%insn_035b8) db 0
    %%insn_035bb:
    int byte 0x21 ; 035BB CD21
    %if ($ - %%insn_035bb) > 2
        %error "LONG_035BB"
    %endif
    times 2 - ($ - %%insn_035bb) db 0
    %%insn_035bd:
    mov ax,[bp-0x30d6] ; 035BD 8B862ACF
    %if ($ - %%insn_035bd) > 4
        %error "LONG_035BD"
    %endif
    times 4 - ($ - %%insn_035bd) db 0
    %%insn_035c1:
    and ax,0xf0f ; 035C1 250F0F
    %if ($ - %%insn_035c1) > 3
        %error "LONG_035C1"
    %endif
    times 3 - ($ - %%insn_035c1) db 0
    %%insn_035c4:
    mov dx,0x1b5 ; 035C4 BAB501
    %if ($ - %%insn_035c4) > 3
        %error "LONG_035C4"
    %endif
    times 3 - ($ - %%insn_035c4) db 0
    db 0x3D, 0x04, 0x00 ; 035C7 3D0400 | cmp ax,0x4 | encoding preserved
    %%insn_035ca:
    jnz short 0x35d1 ; 035CA 7505
    %if ($ - %%insn_035ca) > 2
        %error "LONG_035CA"
    %endif
    times 2 - ($ - %%insn_035ca) db 0
    %%insn_035cc:
    mov dx,0x1dd ; 035CC BADD01
    %if ($ - %%insn_035cc) > 3
        %error "LONG_035CC"
    %endif
    times 3 - ($ - %%insn_035cc) db 0
    %%insn_035cf:
    jmp short 0x3601 ; 035CF EB30
    %if ($ - %%insn_035cf) > 2
        %error "LONG_035CF"
    %endif
    times 2 - ($ - %%insn_035cf) db 0
    %%insn_035d1:
    cmp ax,0x404 ; 035D1 3D0404
    %if ($ - %%insn_035d1) > 3
        %error "LONG_035D1"
    %endif
    times 3 - ($ - %%insn_035d1) db 0
    %%insn_035d4:
    jnz short 0x35db ; 035D4 7505
    %if ($ - %%insn_035d4) > 2
        %error "LONG_035D4"
    %endif
    times 2 - ($ - %%insn_035d4) db 0
    %%insn_035d6:
    mov dx,0x1f9 ; 035D6 BAF901
    %if ($ - %%insn_035d6) > 3
        %error "LONG_035D6"
    %endif
    times 3 - ($ - %%insn_035d6) db 0
    %%insn_035d9:
    jmp short 0x3601 ; 035D9 EB26
    %if ($ - %%insn_035d9) > 2
        %error "LONG_035D9"
    %endif
    times 2 - ($ - %%insn_035d9) db 0
    db 0x3D, 0x06, 0x00 ; 035DB 3D0600 | cmp ax,0x6 | encoding preserved
    %%insn_035de:
    jnz short 0x35e5 ; 035DE 7505
    %if ($ - %%insn_035de) > 2
        %error "LONG_035DE"
    %endif
    times 2 - ($ - %%insn_035de) db 0
    %%insn_035e0:
    mov dx,0x22e ; 035E0 BA2E02
    %if ($ - %%insn_035e0) > 3
        %error "LONG_035E0"
    %endif
    times 3 - ($ - %%insn_035e0) db 0
    %%insn_035e3:
    jmp short 0x3601 ; 035E3 EB1C
    %if ($ - %%insn_035e3) > 2
        %error "LONG_035E3"
    %endif
    times 2 - ($ - %%insn_035e3) db 0
    %%insn_035e5:
    cmp ax,0x406 ; 035E5 3D0604
    %if ($ - %%insn_035e5) > 3
        %error "LONG_035E5"
    %endif
    times 3 - ($ - %%insn_035e5) db 0
    %%insn_035e8:
    jnz short 0x35ef ; 035E8 7505
    %if ($ - %%insn_035e8) > 2
        %error "LONG_035E8"
    %endif
    times 2 - ($ - %%insn_035e8) db 0
    %%insn_035ea:
    mov dx,0x24a ; 035EA BA4A02
    %if ($ - %%insn_035ea) > 3
        %error "LONG_035EA"
    %endif
    times 3 - ($ - %%insn_035ea) db 0
    %%insn_035ed:
    jmp short 0x3601 ; 035ED EB12
    %if ($ - %%insn_035ed) > 2
        %error "LONG_035ED"
    %endif
    times 2 - ($ - %%insn_035ed) db 0
    db 0x3D, 0x08, 0x00 ; 035EF 3D0800 | cmp ax,0x8 | encoding preserved
    %%insn_035f2:
    jnz short 0x35f9 ; 035F2 7505
    %if ($ - %%insn_035f2) > 2
        %error "LONG_035F2"
    %endif
    times 2 - ($ - %%insn_035f2) db 0
    %%insn_035f4:
    mov dx,0x27f ; 035F4 BA7F02
    %if ($ - %%insn_035f4) > 3
        %error "LONG_035F4"
    %endif
    times 3 - ($ - %%insn_035f4) db 0
    %%insn_035f7:
    jmp short 0x3601 ; 035F7 EB08
    %if ($ - %%insn_035f7) > 2
        %error "LONG_035F7"
    %endif
    times 2 - ($ - %%insn_035f7) db 0
    %%insn_035f9:
    cmp ax,0x808 ; 035F9 3D0808
    %if ($ - %%insn_035f9) > 3
        %error "LONG_035F9"
    %endif
    times 3 - ($ - %%insn_035f9) db 0
    %%insn_035fc:
    jnz short 0x3601 ; 035FC 7503
    %if ($ - %%insn_035fc) > 2
        %error "LONG_035FC"
    %endif
    times 2 - ($ - %%insn_035fc) db 0
    %%insn_035fe:
    mov dx,0x29b ; 035FE BA9B02
    %if ($ - %%insn_035fe) > 3
        %error "LONG_035FE"
    %endif
    times 3 - ($ - %%insn_035fe) db 0
    %%insn_03601:
    mov ax,0x900 ; 03601 B80009
    %if ($ - %%insn_03601) > 3
        %error "LONG_03601"
    %endif
    times 3 - ($ - %%insn_03601) db 0
    %%insn_03604:
    int byte 0x21 ; 03604 CD21
    %if ($ - %%insn_03604) > 2
        %error "LONG_03604"
    %endif
    times 2 - ($ - %%insn_03604) db 0
    %%insn_03606:
    mov ax,[bp-0x30d6] ; 03606 8B862ACF
    %if ($ - %%insn_03606) > 4
        %error "LONG_03606"
    %endif
    times 4 - ($ - %%insn_03606) db 0
    %%insn_0360a:
    test ax,0x8000 ; 0360A A90080
    %if ($ - %%insn_0360a) > 3
        %error "LONG_0360A"
    %endif
    times 3 - ($ - %%insn_0360a) db 0
    %%insn_0360d:
    jz short 0x3617 ; 0360D 7408
    %if ($ - %%insn_0360d) > 2
        %error "LONG_0360D"
    %endif
    times 2 - ($ - %%insn_0360d) db 0
    %%insn_0360f:
    mov dx,0x2b7 ; 0360F BAB702
    %if ($ - %%insn_0360f) > 3
        %error "LONG_0360F"
    %endif
    times 3 - ($ - %%insn_0360f) db 0
    %%insn_03612:
    mov ax,0x900 ; 03612 B80009
    %if ($ - %%insn_03612) > 3
        %error "LONG_03612"
    %endif
    times 3 - ($ - %%insn_03612) db 0
    %%insn_03615:
    int byte 0x21 ; 03615 CD21
    %if ($ - %%insn_03615) > 2
        %error "LONG_03615"
    %endif
    times 2 - ($ - %%insn_03615) db 0
    %%insn_03617:
    cmp word [bp-0x2992],0x0 ; 03617 83BE6ED600
    %if ($ - %%insn_03617) > 5
        %error "LONG_03617"
    %endif
    times 5 - ($ - %%insn_03617) db 0
    %%insn_0361c:
    jz short 0x364b ; 0361C 742D
    %if ($ - %%insn_0361c) > 2
        %error "LONG_0361C"
    %endif
    times 2 - ($ - %%insn_0361c) db 0
    %%insn_0361e:
    mov ax,[bp-0x2990] ; 0361E 8B8670D6
    %if ($ - %%insn_0361e) > 4
        %error "LONG_0361E"
    %endif
    times 4 - ($ - %%insn_0361e) db 0
    %%insn_03622:
    add ah,0x30 ; 03622 80C430
    %if ($ - %%insn_03622) > 3
        %error "LONG_03622"
    %endif
    times 3 - ($ - %%insn_03622) db 0
    %%insn_03625:
    mov di,0x314 ; 03625 BF1403
    %if ($ - %%insn_03625) > 3
        %error "LONG_03625"
    %endif
    times 3 - ($ - %%insn_03625) db 0
    %%insn_03628:
    mov [di],ah ; 03628 8825
    %if ($ - %%insn_03628) > 2
        %error "LONG_03628"
    %endif
    times 2 - ($ - %%insn_03628) db 0
    %%insn_0362a:
    add di,0x2 ; 0362A 83C702
    %if ($ - %%insn_0362a) > 3
        %error "LONG_0362A"
    %endif
    times 3 - ($ - %%insn_0362a) db 0
    %%insn_0362d:
    add al,0x30 ; 0362D 0430
    %if ($ - %%insn_0362d) > 2
        %error "LONG_0362D"
    %endif
    times 2 - ($ - %%insn_0362d) db 0
    %%insn_0362f:
    mov [di],al ; 0362F 8805
    %if ($ - %%insn_0362f) > 2
        %error "LONG_0362F"
    %endif
    times 2 - ($ - %%insn_0362f) db 0
    %%insn_03631:
    mov dx,0x2ff ; 03631 BAFF02
    %if ($ - %%insn_03631) > 3
        %error "LONG_03631"
    %endif
    times 3 - ($ - %%insn_03631) db 0
    %%insn_03634:
    mov ax,0x900 ; 03634 B80009
    %if ($ - %%insn_03634) > 3
        %error "LONG_03634"
    %endif
    times 3 - ($ - %%insn_03634) db 0
    %%insn_03637:
    int byte 0x21 ; 03637 CD21
    %if ($ - %%insn_03637) > 2
        %error "LONG_03637"
    %endif
    times 2 - ($ - %%insn_03637) db 0
    %%insn_03639:
    mov ax,[bp-0x298e] ; 03639 8B8672D6
    %if ($ - %%insn_03639) > 4
        %error "LONG_03639"
    %endif
    times 4 - ($ - %%insn_03639) db 0
    %%insn_0363d:
    mov bx,0x327 ; 0363D BB2703
    %if ($ - %%insn_0363d) > 3
        %error "LONG_0363D"
    %endif
    times 3 - ($ - %%insn_0363d) db 0
    %%insn_03640:
    call 0x36d2 ; 03640 E88F00
    %if ($ - %%insn_03640) > 3
        %error "LONG_03640"
    %endif
    times 3 - ($ - %%insn_03640) db 0
    %%insn_03643:
    mov dx,0x324 ; 03643 BA2403
    %if ($ - %%insn_03643) > 3
        %error "LONG_03643"
    %endif
    times 3 - ($ - %%insn_03643) db 0
    %%insn_03646:
    mov ax,0x900 ; 03646 B80009
    %if ($ - %%insn_03646) > 3
        %error "LONG_03646"
    %endif
    times 3 - ($ - %%insn_03646) db 0
    %%insn_03649:
    int byte 0x21 ; 03649 CD21
    %if ($ - %%insn_03649) > 2
        %error "LONG_03649"
    %endif
    times 2 - ($ - %%insn_03649) db 0
    %%insn_0364b:
    mov ax,[bp-0x2658] ; 0364B 8B86A8D9
    %if ($ - %%insn_0364b) > 4
        %error "LONG_0364B"
    %endif
    times 4 - ($ - %%insn_0364b) db 0
    %%insn_0364f:
    mov bx,0x350 ; 0364F BB5003
    %if ($ - %%insn_0364f) > 3
        %error "LONG_0364F"
    %endif
    times 3 - ($ - %%insn_0364f) db 0
    %%insn_03652:
    call 0x36d2 ; 03652 E87D00
    %if ($ - %%insn_03652) > 3
        %error "LONG_03652"
    %endif
    times 3 - ($ - %%insn_03652) db 0
    %%insn_03655:
    mov dx,0x350 ; 03655 BA5003
    %if ($ - %%insn_03655) > 3
        %error "LONG_03655"
    %endif
    times 3 - ($ - %%insn_03655) db 0
    %%insn_03658:
    mov ax,0x900 ; 03658 B80009
    %if ($ - %%insn_03658) > 3
        %error "LONG_03658"
    %endif
    times 3 - ($ - %%insn_03658) db 0
    %%insn_0365b:
    int byte 0x21 ; 0365B CD21
    %if ($ - %%insn_0365b) > 2
        %error "LONG_0365B"
    %endif
    times 2 - ($ - %%insn_0365b) db 0
    %%insn_0365d:
    mov ax,[bp-0x2656] ; 0365D 8B86AAD9
    %if ($ - %%insn_0365d) > 4
        %error "LONG_0365D"
    %endif
    times 4 - ($ - %%insn_0365d) db 0
    %%insn_03661:
    mov bx,0x370 ; 03661 BB7003
    %if ($ - %%insn_03661) > 3
        %error "LONG_03661"
    %endif
    times 3 - ($ - %%insn_03661) db 0
    %%insn_03664:
    call 0x36d2 ; 03664 E86B00
    %if ($ - %%insn_03664) > 3
        %error "LONG_03664"
    %endif
    times 3 - ($ - %%insn_03664) db 0
    %%insn_03667:
    mov dx,0x370 ; 03667 BA7003
    %if ($ - %%insn_03667) > 3
        %error "LONG_03667"
    %endif
    times 3 - ($ - %%insn_03667) db 0
    %%insn_0366a:
    mov ax,0x900 ; 0366A B80009
    %if ($ - %%insn_0366a) > 3
        %error "LONG_0366A"
    %endif
    times 3 - ($ - %%insn_0366a) db 0
    %%insn_0366d:
    int byte 0x21 ; 0366D CD21
    %if ($ - %%insn_0366d) > 2
        %error "LONG_0366D"
    %endif
    times 2 - ($ - %%insn_0366d) db 0
    %%insn_0366f:
    pop ds ; 0366F 1F
    %if ($ - %%insn_0366f) > 1
        %error "LONG_0366F"
    %endif
    times 1 - ($ - %%insn_0366f) db 0
    %%insn_03670:
    ret ; 03670 C3
    %if ($ - %%insn_03670) > 1
        %error "LONG_03670"
    %endif
    times 1 - ($ - %%insn_03670) db 0
    %if ($ - %%fragment_start) != 225
        %error "SIZE_03590"
    %endif
%endmacro
