; PE virtual entry 00411050
; Ghidra working symbol: FUN_00411050
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00411050_part_00 0
    %%fragment_start:
func_00411050:
    %%insn_00411050:
    mov ecx,[esp+0x4] ; 00411050 8B4C2404
    %if ($ - %%insn_00411050) > 4
        %error "LONG_00411050"
    %endif
    times 4 - ($ - %%insn_00411050) db 0
    %%insn_00411054:
    mov eax,[0x423580] ; 00411054 A180354200
    %if ($ - %%insn_00411054) > 5
        %error "LONG_00411054"
    %endif
    times 5 - ($ - %%insn_00411054) db 0
    %%insn_00411059:
    push ebx ; 00411059 53
    %if ($ - %%insn_00411059) > 1
        %error "LONG_00411059"
    %endif
    times 1 - ($ - %%insn_00411059) db 0
    %%insn_0041105a:
    push esi ; 0041105A 56
    %if ($ - %%insn_0041105a) > 1
        %error "LONG_0041105A"
    %endif
    times 1 - ($ - %%insn_0041105a) db 0
    db 0x3B, 0xC8 ; 0041105B 3BC8 | cmp ecx,eax | encoding preserved
    %%insn_0041105d:
    push edi ; 0041105D 57
    %if ($ - %%insn_0041105d) > 1
        %error "LONG_0041105D"
    %endif
    times 1 - ($ - %%insn_0041105d) db 0
    %%insn_0041105e:
    jnc short 0x4110c6 ; 0041105E 7366
    %if ($ - %%insn_0041105e) > 2
        %error "LONG_0041105E"
    %endif
    times 2 - ($ - %%insn_0041105e) db 0
    db 0x8B, 0xC1 ; 00411060 8BC1 | mov eax,ecx | encoding preserved
    %%insn_00411062:
    sar eax,byte 0x5 ; 00411062 C1F805
    %if ($ - %%insn_00411062) > 3
        %error "LONG_00411062"
    %endif
    times 3 - ($ - %%insn_00411062) db 0
    %%insn_00411065:
    lea edi,[eax*4+0x423480] ; 00411065 8D3C8580344200
    %if ($ - %%insn_00411065) > 7
        %error "LONG_00411065"
    %endif
    times 7 - ($ - %%insn_00411065) db 0
    db 0x8B, 0xC1 ; 0041106C 8BC1 | mov eax,ecx | encoding preserved
    %%insn_0041106e:
    and eax,0x1f ; 0041106E 83E01F
    %if ($ - %%insn_0041106e) > 3
        %error "LONG_0041106E"
    %endif
    times 3 - ($ - %%insn_0041106e) db 0
    %%insn_00411071:
    mov edx,[edi] ; 00411071 8B17
    %if ($ - %%insn_00411071) > 2
        %error "LONG_00411071"
    %endif
    times 2 - ($ - %%insn_00411071) db 0
    %%insn_00411073:
    lea esi,[eax+eax*8] ; 00411073 8D34C0
    %if ($ - %%insn_00411073) > 3
        %error "LONG_00411073"
    %endif
    times 3 - ($ - %%insn_00411073) db 0
    %%insn_00411076:
    shl esi,byte 0x2 ; 00411076 C1E602
    %if ($ - %%insn_00411076) > 3
        %error "LONG_00411076"
    %endif
    times 3 - ($ - %%insn_00411076) db 0
    %%insn_00411079:
    mov bl,[edx+esi+0x4] ; 00411079 8A5C3204
    %if ($ - %%insn_00411079) > 4
        %error "LONG_00411079"
    %endif
    times 4 - ($ - %%insn_00411079) db 0
    %%insn_0041107d:
    lea eax,[edx+esi] ; 0041107D 8D0432
    %if ($ - %%insn_0041107d) > 3
        %error "LONG_0041107D"
    %endif
    times 3 - ($ - %%insn_0041107d) db 0
    %%insn_00411080:
    mov edx,0x1 ; 00411080 BA01000000
    %if ($ - %%insn_00411080) > 5
        %error "LONG_00411080"
    %endif
    times 5 - ($ - %%insn_00411080) db 0
    %%insn_00411085:
    test dl,bl ; 00411085 84DA
    %if ($ - %%insn_00411085) > 2
        %error "LONG_00411085"
    %endif
    times 2 - ($ - %%insn_00411085) db 0
    %%insn_00411087:
    jz short 0x4110c6 ; 00411087 743D
    %if ($ - %%insn_00411087) > 2
        %error "LONG_00411087"
    %endif
    times 2 - ($ - %%insn_00411087) db 0
    %%insn_00411089:
    cmp dword [eax],0xffffffffffffffff ; 00411089 8338FF
    %if ($ - %%insn_00411089) > 3
        %error "LONG_00411089"
    %endif
    times 3 - ($ - %%insn_00411089) db 0
    %%insn_0041108c:
    jz short 0x4110c6 ; 0041108C 7438
    %if ($ - %%insn_0041108c) > 2
        %error "LONG_0041108C"
    %endif
    times 2 - ($ - %%insn_0041108c) db 0
    %%insn_0041108e:
    cmp [0x41bd94],edx ; 0041108E 391594BD4100
    %if ($ - %%insn_0041108e) > 6
        %error "LONG_0041108E"
    %endif
    times 6 - ($ - %%insn_0041108e) db 0
    %%insn_00411094:
    jnz short 0x4110b7 ; 00411094 7521
    %if ($ - %%insn_00411094) > 2
        %error "LONG_00411094"
    %endif
    times 2 - ($ - %%insn_00411094) db 0
    %%insn_00411096:
    sub ecx,0x0 ; 00411096 83E900
    %if ($ - %%insn_00411096) > 3
        %error "LONG_00411096"
    %endif
    times 3 - ($ - %%insn_00411096) db 0
    %%insn_00411099:
    jz short 0x4110ad ; 00411099 7412
    %if ($ - %%insn_00411099) > 2
        %error "LONG_00411099"
    %endif
    times 2 - ($ - %%insn_00411099) db 0
    %%insn_0041109b:
    dec ecx ; 0041109B 49
    %if ($ - %%insn_0041109b) > 1
        %error "LONG_0041109B"
    %endif
    times 1 - ($ - %%insn_0041109b) db 0
    %%insn_0041109c:
    jz short 0x4110a7 ; 0041109C 7409
    %if ($ - %%insn_0041109c) > 2
        %error "LONG_0041109C"
    %endif
    times 2 - ($ - %%insn_0041109c) db 0
    %%insn_0041109e:
    dec ecx ; 0041109E 49
    %if ($ - %%insn_0041109e) > 1
        %error "LONG_0041109E"
    %endif
    times 1 - ($ - %%insn_0041109e) db 0
    %%insn_0041109f:
    jnz short 0x4110b7 ; 0041109F 7516
    %if ($ - %%insn_0041109f) > 2
        %error "LONG_0041109F"
    %endif
    times 2 - ($ - %%insn_0041109f) db 0
    %%insn_004110a1:
    push dword 0x0 ; 004110A1 6A00
    %if ($ - %%insn_004110a1) > 2
        %error "LONG_004110A1"
    %endif
    times 2 - ($ - %%insn_004110a1) db 0
    %%insn_004110a3:
    push dword 0xfffffffffffffff4 ; 004110A3 6AF4
    %if ($ - %%insn_004110a3) > 2
        %error "LONG_004110A3"
    %endif
    times 2 - ($ - %%insn_004110a3) db 0
    %%insn_004110a5:
    jmp short 0x4110b1 ; 004110A5 EB0A
    %if ($ - %%insn_004110a5) > 2
        %error "LONG_004110A5"
    %endif
    times 2 - ($ - %%insn_004110a5) db 0
    %%insn_004110a7:
    push dword 0x0 ; 004110A7 6A00
    %if ($ - %%insn_004110a7) > 2
        %error "LONG_004110A7"
    %endif
    times 2 - ($ - %%insn_004110a7) db 0
    %%insn_004110a9:
    push dword 0xfffffffffffffff5 ; 004110A9 6AF5
    %if ($ - %%insn_004110a9) > 2
        %error "LONG_004110A9"
    %endif
    times 2 - ($ - %%insn_004110a9) db 0
    %%insn_004110ab:
    jmp short 0x4110b1 ; 004110AB EB04
    %if ($ - %%insn_004110ab) > 2
        %error "LONG_004110AB"
    %endif
    times 2 - ($ - %%insn_004110ab) db 0
    %%insn_004110ad:
    push dword 0x0 ; 004110AD 6A00
    %if ($ - %%insn_004110ad) > 2
        %error "LONG_004110AD"
    %endif
    times 2 - ($ - %%insn_004110ad) db 0
    %%insn_004110af:
    push dword 0xfffffffffffffff6 ; 004110AF 6AF6
    %if ($ - %%insn_004110af) > 2
        %error "LONG_004110AF"
    %endif
    times 2 - ($ - %%insn_004110af) db 0
    %%insn_004110b1:
    call dword near [0x424448] ; 004110B1 FF1548444200
    %if ($ - %%insn_004110b1) > 6
        %error "LONG_004110B1"
    %endif
    times 6 - ($ - %%insn_004110b1) db 0
    %%insn_004110b7:
    mov eax,[edi] ; 004110B7 8B07
    %if ($ - %%insn_004110b7) > 2
        %error "LONG_004110B7"
    %endif
    times 2 - ($ - %%insn_004110b7) db 0
    %%insn_004110b9:
    mov dword [eax+esi],0xffffffff ; 004110B9 C70430FFFFFFFF
    %if ($ - %%insn_004110b9) > 7
        %error "LONG_004110B9"
    %endif
    times 7 - ($ - %%insn_004110b9) db 0
    db 0x33, 0xC0 ; 004110C0 33C0 | xor eax,eax | encoding preserved
    %%insn_004110c2:
    pop edi ; 004110C2 5F
    %if ($ - %%insn_004110c2) > 1
        %error "LONG_004110C2"
    %endif
    times 1 - ($ - %%insn_004110c2) db 0
    %%insn_004110c3:
    pop esi ; 004110C3 5E
    %if ($ - %%insn_004110c3) > 1
        %error "LONG_004110C3"
    %endif
    times 1 - ($ - %%insn_004110c3) db 0
    %%insn_004110c4:
    pop ebx ; 004110C4 5B
    %if ($ - %%insn_004110c4) > 1
        %error "LONG_004110C4"
    %endif
    times 1 - ($ - %%insn_004110c4) db 0
    %%insn_004110c5:
    ret ; 004110C5 C3
    %if ($ - %%insn_004110c5) > 1
        %error "LONG_004110C5"
    %endif
    times 1 - ($ - %%insn_004110c5) db 0
    %%insn_004110c6:
    call 0x410e10 ; 004110C6 E845FDFFFF
    %if ($ - %%insn_004110c6) > 5
        %error "LONG_004110C6"
    %endif
    times 5 - ($ - %%insn_004110c6) db 0
    %%insn_004110cb:
    mov dword [eax],0x9 ; 004110CB C70009000000
    %if ($ - %%insn_004110cb) > 6
        %error "LONG_004110CB"
    %endif
    times 6 - ($ - %%insn_004110cb) db 0
    %%insn_004110d1:
    call 0x410e20 ; 004110D1 E84AFDFFFF
    %if ($ - %%insn_004110d1) > 5
        %error "LONG_004110D1"
    %endif
    times 5 - ($ - %%insn_004110d1) db 0
    %%insn_004110d6:
    pop edi ; 004110D6 5F
    %if ($ - %%insn_004110d6) > 1
        %error "LONG_004110D6"
    %endif
    times 1 - ($ - %%insn_004110d6) db 0
    %%insn_004110d7:
    mov dword [eax],0x0 ; 004110D7 C70000000000
    %if ($ - %%insn_004110d7) > 6
        %error "LONG_004110D7"
    %endif
    times 6 - ($ - %%insn_004110d7) db 0
    %%insn_004110dd:
    pop esi ; 004110DD 5E
    %if ($ - %%insn_004110dd) > 1
        %error "LONG_004110DD"
    %endif
    times 1 - ($ - %%insn_004110dd) db 0
    %%insn_004110de:
    or eax,0xffffffffffffffff ; 004110DE 83C8FF
    %if ($ - %%insn_004110de) > 3
        %error "LONG_004110DE"
    %endif
    times 3 - ($ - %%insn_004110de) db 0
    %%insn_004110e1:
    pop ebx ; 004110E1 5B
    %if ($ - %%insn_004110e1) > 1
        %error "LONG_004110E1"
    %endif
    times 1 - ($ - %%insn_004110e1) db 0
    %%insn_004110e2:
    ret ; 004110E2 C3
    %if ($ - %%insn_004110e2) > 1
        %error "LONG_004110E2"
    %endif
    times 1 - ($ - %%insn_004110e2) db 0
    %if ($ - %%fragment_start) != 147
        %error "function fragment size drift: 00411050"
    %endif
%endmacro
