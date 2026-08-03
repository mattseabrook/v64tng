; PE virtual entry 004058AF
; Ghidra working symbol: FUN_004058af
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_004058af_part_00 0
    %%fragment_start:
func_004058af:
    %%insn_004058af:
    push ebp ; 004058AF 55
    %if ($ - %%insn_004058af) > 1
        %error "LONG_004058AF"
    %endif
    times 1 - ($ - %%insn_004058af) db 0
    db 0x8B, 0xEC ; 004058B0 8BEC | mov ebp,esp | encoding preserved
    %%insn_004058b2:
    sub esp,0x10 ; 004058B2 83EC10
    %if ($ - %%insn_004058b2) > 3
        %error "LONG_004058B2"
    %endif
    times 3 - ($ - %%insn_004058b2) db 0
    %%insn_004058b5:
    mov word [ebp-0xc],0x0 ; 004058B5 66C745F40000
    %if ($ - %%insn_004058b5) > 6
        %error "LONG_004058B5"
    %endif
    times 6 - ($ - %%insn_004058b5) db 0
    %%insn_004058bb:
    mov word [ebp-0x4],0x0 ; 004058BB 66C745FC0000
    %if ($ - %%insn_004058bb) > 6
        %error "LONG_004058BB"
    %endif
    times 6 - ($ - %%insn_004058bb) db 0
    %%insn_004058c1:
    jmp short 0x4058cf ; 004058C1 EB0C
    %if ($ - %%insn_004058c1) > 2
        %error "LONG_004058C1"
    %endif
    times 2 - ($ - %%insn_004058c1) db 0
    %%insn_004058c3:
    mov ax,[ebp-0x4] ; 004058C3 668B45FC
    %if ($ - %%insn_004058c3) > 4
        %error "LONG_004058C3"
    %endif
    times 4 - ($ - %%insn_004058c3) db 0
    db 0x66, 0x05, 0x01, 0x00 ; 004058C7 66050100 | add ax,0x1 | encoding preserved
    %%insn_004058cb:
    mov [ebp-0x4],ax ; 004058CB 668945FC
    %if ($ - %%insn_004058cb) > 4
        %error "LONG_004058CB"
    %endif
    times 4 - ($ - %%insn_004058cb) db 0
    %%insn_004058cf:
    movsx ecx,word [ebp-0x4] ; 004058CF 0FBF4DFC
    %if ($ - %%insn_004058cf) > 4
        %error "LONG_004058CF"
    %endif
    times 4 - ($ - %%insn_004058cf) db 0
    %%insn_004058d3:
    cmp ecx,0x31 ; 004058D3 83F931
    %if ($ - %%insn_004058d3) > 3
        %error "LONG_004058D3"
    %endif
    times 3 - ($ - %%insn_004058d3) db 0
    %%insn_004058d6:
    jnl short 0x4058e5 ; 004058D6 7D0D
    %if ($ - %%insn_004058d6) > 2
        %error "LONG_004058D6"
    %endif
    times 2 - ($ - %%insn_004058d6) db 0
    %%insn_004058d8:
    movsx edx,word [ebp-0x4] ; 004058D8 0FBF55FC
    %if ($ - %%insn_004058d8) > 4
        %error "LONG_004058D8"
    %endif
    times 4 - ($ - %%insn_004058d8) db 0
    %%insn_004058dc:
    mov byte [edx+0x4218e0],0x0 ; 004058DC C682E018420000
    %if ($ - %%insn_004058dc) > 7
        %error "LONG_004058DC"
    %endif
    times 7 - ($ - %%insn_004058dc) db 0
    %%insn_004058e3:
    jmp short 0x4058c3 ; 004058E3 EBDE
    %if ($ - %%insn_004058e3) > 2
        %error "LONG_004058E3"
    %endif
    times 2 - ($ - %%insn_004058e3) db 0
    %%insn_004058e5:
    mov word [ebp-0x4],0x0 ; 004058E5 66C745FC0000
    %if ($ - %%insn_004058e5) > 6
        %error "LONG_004058E5"
    %endif
    times 6 - ($ - %%insn_004058e5) db 0
    %%insn_004058eb:
    jmp short 0x4058f9 ; 004058EB EB0C
    %if ($ - %%insn_004058eb) > 2
        %error "LONG_004058EB"
    %endif
    times 2 - ($ - %%insn_004058eb) db 0
    %%insn_004058ed:
    mov ax,[ebp-0x4] ; 004058ED 668B45FC
    %if ($ - %%insn_004058ed) > 4
        %error "LONG_004058ED"
    %endif
    times 4 - ($ - %%insn_004058ed) db 0
    db 0x66, 0x05, 0x01, 0x00 ; 004058F1 66050100 | add ax,0x1 | encoding preserved
    %%insn_004058f5:
    mov [ebp-0x4],ax ; 004058F5 668945FC
    %if ($ - %%insn_004058f5) > 4
        %error "LONG_004058F5"
    %endif
    times 4 - ($ - %%insn_004058f5) db 0
    %%insn_004058f9:
    movsx ecx,word [ebp-0x4] ; 004058F9 0FBF4DFC
    %if ($ - %%insn_004058f9) > 4
        %error "LONG_004058F9"
    %endif
    times 4 - ($ - %%insn_004058f9) db 0
    %%insn_004058fd:
    cmp ecx,0x31 ; 004058FD 83F931
    %if ($ - %%insn_004058fd) > 3
        %error "LONG_004058FD"
    %endif
    times 3 - ($ - %%insn_004058fd) db 0
    %%insn_00405900:
    jnl short 0x405969 ; 00405900 7D67
    %if ($ - %%insn_00405900) > 2
        %error "LONG_00405900"
    %endif
    times 2 - ($ - %%insn_00405900) db 0
    %%insn_00405902:
    movsx edx,word [ebp-0x4] ; 00405902 0FBF55FC
    %if ($ - %%insn_00405902) > 4
        %error "LONG_00405902"
    %endif
    times 4 - ($ - %%insn_00405902) db 0
    %%insn_00405906:
    movsx eax,byte [edx+0x421bc0] ; 00405906 0FBE82C01B4200
    %if ($ - %%insn_00405906) > 7
        %error "LONG_00405906"
    %endif
    times 7 - ($ - %%insn_00405906) db 0
    %%insn_0040590d:
    movsx ecx,byte [ebp+0x8] ; 0040590D 0FBE4D08
    %if ($ - %%insn_0040590d) > 4
        %error "LONG_0040590D"
    %endif
    times 4 - ($ - %%insn_0040590d) db 0
    db 0x3B, 0xC1 ; 00405911 3BC1 | cmp eax,ecx | encoding preserved
    %%insn_00405913:
    jnz short 0x405967 ; 00405913 7552
    %if ($ - %%insn_00405913) > 2
        %error "LONG_00405913"
    %endif
    times 2 - ($ - %%insn_00405913) db 0
    %%insn_00405915:
    movsx edx,word [ebp-0x4] ; 00405915 0FBF55FC
    %if ($ - %%insn_00405915) > 4
        %error "LONG_00405915"
    %endif
    times 4 - ($ - %%insn_00405915) db 0
    %%insn_00405919:
    mov eax,[edx*4+0x41b770] ; 00405919 8B049570B74100
    %if ($ - %%insn_00405919) > 7
        %error "LONG_00405919"
    %endif
    times 7 - ($ - %%insn_00405919) db 0
    %%insn_00405920:
    mov [ebp-0x10],eax ; 00405920 8945F0
    %if ($ - %%insn_00405920) > 3
        %error "LONG_00405920"
    %endif
    times 3 - ($ - %%insn_00405920) db 0
    %%insn_00405923:
    mov ecx,[ebp-0x10] ; 00405923 8B4DF0
    %if ($ - %%insn_00405923) > 3
        %error "LONG_00405923"
    %endif
    times 3 - ($ - %%insn_00405923) db 0
    %%insn_00405926:
    movsx dx,byte [ecx] ; 00405926 660FBE11
    %if ($ - %%insn_00405926) > 4
        %error "LONG_00405926"
    %endif
    times 4 - ($ - %%insn_00405926) db 0
    %%insn_0040592a:
    mov [ebp-0x8],dx ; 0040592A 668955F8
    %if ($ - %%insn_0040592a) > 4
        %error "LONG_0040592A"
    %endif
    times 4 - ($ - %%insn_0040592a) db 0
    %%insn_0040592e:
    movsx eax,word [ebp-0x8] ; 0040592E 0FBF45F8
    %if ($ - %%insn_0040592e) > 4
        %error "LONG_0040592E"
    %endif
    times 4 - ($ - %%insn_0040592e) db 0
    %%insn_00405932:
    mov ecx,[ebp-0x10] ; 00405932 8B4DF0
    %if ($ - %%insn_00405932) > 3
        %error "LONG_00405932"
    %endif
    times 3 - ($ - %%insn_00405932) db 0
    %%insn_00405935:
    add ecx,0x1 ; 00405935 83C101
    %if ($ - %%insn_00405935) > 3
        %error "LONG_00405935"
    %endif
    times 3 - ($ - %%insn_00405935) db 0
    %%insn_00405938:
    mov [ebp-0x10],ecx ; 00405938 894DF0
    %if ($ - %%insn_00405938) > 3
        %error "LONG_00405938"
    %endif
    times 3 - ($ - %%insn_00405938) db 0
    %%insn_0040593b:
    test eax,eax ; 0040593B 85C0
    %if ($ - %%insn_0040593b) > 2
        %error "LONG_0040593B"
    %endif
    times 2 - ($ - %%insn_0040593b) db 0
    %%insn_0040593d:
    jl short 0x405967 ; 0040593D 7C28
    %if ($ - %%insn_0040593d) > 2
        %error "LONG_0040593D"
    %endif
    times 2 - ($ - %%insn_0040593d) db 0
    %%insn_0040593f:
    movsx edx,word [ebp-0x8] ; 0040593F 0FBF55F8
    %if ($ - %%insn_0040593f) > 4
        %error "LONG_0040593F"
    %endif
    times 4 - ($ - %%insn_0040593f) db 0
    %%insn_00405943:
    movsx eax,byte [edx+0x421bc0] ; 00405943 0FBE82C01B4200
    %if ($ - %%insn_00405943) > 7
        %error "LONG_00405943"
    %endif
    times 7 - ($ - %%insn_00405943) db 0
    %%insn_0040594a:
    test eax,eax ; 0040594A 85C0
    %if ($ - %%insn_0040594a) > 2
        %error "LONG_0040594A"
    %endif
    times 2 - ($ - %%insn_0040594a) db 0
    %%insn_0040594c:
    jnz short 0x405965 ; 0040594C 7517
    %if ($ - %%insn_0040594c) > 2
        %error "LONG_0040594C"
    %endif
    times 2 - ($ - %%insn_0040594c) db 0
    %%insn_0040594e:
    movsx ecx,word [ebp-0x8] ; 0040594E 0FBF4DF8
    %if ($ - %%insn_0040594e) > 4
        %error "LONG_0040594E"
    %endif
    times 4 - ($ - %%insn_0040594e) db 0
    %%insn_00405952:
    mov dl,[ecx+0x4218e0] ; 00405952 8A91E0184200
    %if ($ - %%insn_00405952) > 6
        %error "LONG_00405952"
    %endif
    times 6 - ($ - %%insn_00405952) db 0
    %%insn_00405958:
    add dl,0x1 ; 00405958 80C201
    %if ($ - %%insn_00405958) > 3
        %error "LONG_00405958"
    %endif
    times 3 - ($ - %%insn_00405958) db 0
    %%insn_0040595b:
    movsx eax,word [ebp-0x8] ; 0040595B 0FBF45F8
    %if ($ - %%insn_0040595b) > 4
        %error "LONG_0040595B"
    %endif
    times 4 - ($ - %%insn_0040595b) db 0
    %%insn_0040595f:
    mov [eax+0x4218e0],dl ; 0040595F 8890E0184200
    %if ($ - %%insn_0040595f) > 6
        %error "LONG_0040595F"
    %endif
    times 6 - ($ - %%insn_0040595f) db 0
    %%insn_00405965:
    jmp short 0x405923 ; 00405965 EBBC
    %if ($ - %%insn_00405965) > 2
        %error "LONG_00405965"
    %endif
    times 2 - ($ - %%insn_00405965) db 0
    %%insn_00405967:
    jmp short 0x4058ed ; 00405967 EB84
    %if ($ - %%insn_00405967) > 2
        %error "LONG_00405967"
    %endif
    times 2 - ($ - %%insn_00405967) db 0
    %%insn_00405969:
    mov word [ebp-0x4],0x0 ; 00405969 66C745FC0000
    %if ($ - %%insn_00405969) > 6
        %error "LONG_00405969"
    %endif
    times 6 - ($ - %%insn_00405969) db 0
    %%insn_0040596f:
    jmp short 0x40597d ; 0040596F EB0C
    %if ($ - %%insn_0040596f) > 2
        %error "LONG_0040596F"
    %endif
    times 2 - ($ - %%insn_0040596f) db 0
    %%insn_00405971:
    mov cx,[ebp-0x4] ; 00405971 668B4DFC
    %if ($ - %%insn_00405971) > 4
        %error "LONG_00405971"
    %endif
    times 4 - ($ - %%insn_00405971) db 0
    %%insn_00405975:
    add cx,0x1 ; 00405975 6683C101
    %if ($ - %%insn_00405975) > 4
        %error "LONG_00405975"
    %endif
    times 4 - ($ - %%insn_00405975) db 0
    %%insn_00405979:
    mov [ebp-0x4],cx ; 00405979 66894DFC
    %if ($ - %%insn_00405979) > 4
        %error "LONG_00405979"
    %endif
    times 4 - ($ - %%insn_00405979) db 0
    %%insn_0040597d:
    movsx edx,word [ebp-0x4] ; 0040597D 0FBF55FC
    %if ($ - %%insn_0040597d) > 4
        %error "LONG_0040597D"
    %endif
    times 4 - ($ - %%insn_0040597d) db 0
    %%insn_00405981:
    cmp edx,0x31 ; 00405981 83FA31
    %if ($ - %%insn_00405981) > 3
        %error "LONG_00405981"
    %endif
    times 3 - ($ - %%insn_00405981) db 0
    %%insn_00405984:
    jnl short 0x40599f ; 00405984 7D19
    %if ($ - %%insn_00405984) > 2
        %error "LONG_00405984"
    %endif
    times 2 - ($ - %%insn_00405984) db 0
    %%insn_00405986:
    movsx eax,word [ebp-0x4] ; 00405986 0FBF45FC
    %if ($ - %%insn_00405986) > 4
        %error "LONG_00405986"
    %endif
    times 4 - ($ - %%insn_00405986) db 0
    %%insn_0040598a:
    movsx cx,byte [eax+0x4218e0] ; 0040598A 660FBE88E0184200
    %if ($ - %%insn_0040598a) > 8
        %error "LONG_0040598A"
    %endif
    times 8 - ($ - %%insn_0040598a) db 0
    %%insn_00405992:
    mov dx,[ebp-0xc] ; 00405992 668B55F4
    %if ($ - %%insn_00405992) > 4
        %error "LONG_00405992"
    %endif
    times 4 - ($ - %%insn_00405992) db 0
    db 0x66, 0x03, 0xD1 ; 00405996 6603D1 | add dx,cx | encoding preserved
    %%insn_00405999:
    mov [ebp-0xc],dx ; 00405999 668955F4
    %if ($ - %%insn_00405999) > 4
        %error "LONG_00405999"
    %endif
    times 4 - ($ - %%insn_00405999) db 0
    %%insn_0040599d:
    jmp short 0x405971 ; 0040599D EBD2
    %if ($ - %%insn_0040599d) > 2
        %error "LONG_0040599D"
    %endif
    times 2 - ($ - %%insn_0040599d) db 0
    %%insn_0040599f:
    mov ax,[ebp-0xc] ; 0040599F 668B45F4
    %if ($ - %%insn_0040599f) > 4
        %error "LONG_0040599F"
    %endif
    times 4 - ($ - %%insn_0040599f) db 0
    db 0x8B, 0xE5 ; 004059A3 8BE5 | mov esp,ebp | encoding preserved
    %%insn_004059a5:
    pop ebp ; 004059A5 5D
    %if ($ - %%insn_004059a5) > 1
        %error "LONG_004059A5"
    %endif
    times 1 - ($ - %%insn_004059a5) db 0
    %%insn_004059a6:
    ret ; 004059A6 C3
    %if ($ - %%insn_004059a6) > 1
        %error "LONG_004059A6"
    %endif
    times 1 - ($ - %%insn_004059a6) db 0
    %if ($ - %%fragment_start) != 248
        %error "function fragment size drift: 004058AF"
    %endif
%endmacro
