; PE virtual entry 00406809
; Ghidra working symbol: FUN_00406809
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00406809_part_00 0
    %%fragment_start:
func_00406809:
    %%insn_00406809:
    push ebp ; 00406809 55
    %if ($ - %%insn_00406809) > 1
        %error "LONG_00406809"
    %endif
    times 1 - ($ - %%insn_00406809) db 0
    db 0x8B, 0xEC ; 0040680A 8BEC | mov ebp,esp | encoding preserved
    %%insn_0040680c:
    push ecx ; 0040680C 51
    %if ($ - %%insn_0040680c) > 1
        %error "LONG_0040680C"
    %endif
    times 1 - ($ - %%insn_0040680c) db 0
    %%insn_0040680d:
    mov word [ebp-0x4],0x0 ; 0040680D 66C745FC0000
    %if ($ - %%insn_0040680d) > 6
        %error "LONG_0040680D"
    %endif
    times 6 - ($ - %%insn_0040680d) db 0
    %%insn_00406813:
    jmp short 0x406821 ; 00406813 EB0C
    %if ($ - %%insn_00406813) > 2
        %error "LONG_00406813"
    %endif
    times 2 - ($ - %%insn_00406813) db 0
    %%insn_00406815:
    mov ax,[ebp-0x4] ; 00406815 668B45FC
    %if ($ - %%insn_00406815) > 4
        %error "LONG_00406815"
    %endif
    times 4 - ($ - %%insn_00406815) db 0
    db 0x66, 0x05, 0x01, 0x00 ; 00406819 66050100 | add ax,0x1 | encoding preserved
    %%insn_0040681d:
    mov [ebp-0x4],ax ; 0040681D 668945FC
    %if ($ - %%insn_0040681d) > 4
        %error "LONG_0040681D"
    %endif
    times 4 - ($ - %%insn_0040681d) db 0
    %%insn_00406821:
    movsx ecx,word [ebp-0x4] ; 00406821 0FBF4DFC
    %if ($ - %%insn_00406821) > 4
        %error "LONG_00406821"
    %endif
    times 4 - ($ - %%insn_00406821) db 0
    %%insn_00406825:
    cmp ecx,0x31 ; 00406825 83F931
    %if ($ - %%insn_00406825) > 3
        %error "LONG_00406825"
    %endif
    times 3 - ($ - %%insn_00406825) db 0
    %%insn_00406828:
    jnl short 0x40686e ; 00406828 7D44
    %if ($ - %%insn_00406828) > 2
        %error "LONG_00406828"
    %endif
    times 2 - ($ - %%insn_00406828) db 0
    %%insn_0040682a:
    movsx edx,word [ebp-0x4] ; 0040682A 0FBF55FC
    %if ($ - %%insn_0040682a) > 4
        %error "LONG_0040682A"
    %endif
    times 4 - ($ - %%insn_0040682a) db 0
    %%insn_0040682e:
    mov byte [edx+0x421580],0x0 ; 0040682E C6828015420000
    %if ($ - %%insn_0040682e) > 7
        %error "LONG_0040682E"
    %endif
    times 7 - ($ - %%insn_0040682e) db 0
    %%insn_00406835:
    mov eax,[ebp+0x10] ; 00406835 8B4510
    %if ($ - %%insn_00406835) > 3
        %error "LONG_00406835"
    %endif
    times 3 - ($ - %%insn_00406835) db 0
    db 0x33, 0xC9 ; 00406838 33C9 | xor ecx,ecx | encoding preserved
    %%insn_0040683a:
    mov cl,[eax] ; 0040683A 8A08
    %if ($ - %%insn_0040683a) > 2
        %error "LONG_0040683A"
    %endif
    times 2 - ($ - %%insn_0040683a) db 0
    %%insn_0040683c:
    cmp ecx,0x32 ; 0040683C 83F932
    %if ($ - %%insn_0040683c) > 3
        %error "LONG_0040683C"
    %endif
    times 3 - ($ - %%insn_0040683c) db 0
    %%insn_0040683f:
    jnz short 0x40684c ; 0040683F 750B
    %if ($ - %%insn_0040683f) > 2
        %error "LONG_0040683F"
    %endif
    times 2 - ($ - %%insn_0040683f) db 0
    %%insn_00406841:
    movsx edx,word [ebp-0x4] ; 00406841 0FBF55FC
    %if ($ - %%insn_00406841) > 4
        %error "LONG_00406841"
    %endif
    times 4 - ($ - %%insn_00406841) db 0
    %%insn_00406845:
    mov byte [edx+0x421580],0x1 ; 00406845 C6828015420001
    %if ($ - %%insn_00406845) > 7
        %error "LONG_00406845"
    %endif
    times 7 - ($ - %%insn_00406845) db 0
    %%insn_0040684c:
    mov eax,[ebp+0x10] ; 0040684C 8B4510
    %if ($ - %%insn_0040684c) > 3
        %error "LONG_0040684C"
    %endif
    times 3 - ($ - %%insn_0040684c) db 0
    db 0x33, 0xC9 ; 0040684F 33C9 | xor ecx,ecx | encoding preserved
    %%insn_00406851:
    mov cl,[eax] ; 00406851 8A08
    %if ($ - %%insn_00406851) > 2
        %error "LONG_00406851"
    %endif
    times 2 - ($ - %%insn_00406851) db 0
    %%insn_00406853:
    cmp ecx,0x42 ; 00406853 83F942
    %if ($ - %%insn_00406853) > 3
        %error "LONG_00406853"
    %endif
    times 3 - ($ - %%insn_00406853) db 0
    %%insn_00406856:
    jnz short 0x406863 ; 00406856 750B
    %if ($ - %%insn_00406856) > 2
        %error "LONG_00406856"
    %endif
    times 2 - ($ - %%insn_00406856) db 0
    %%insn_00406858:
    movsx edx,word [ebp-0x4] ; 00406858 0FBF55FC
    %if ($ - %%insn_00406858) > 4
        %error "LONG_00406858"
    %endif
    times 4 - ($ - %%insn_00406858) db 0
    %%insn_0040685c:
    mov byte [edx+0x421580],0x2 ; 0040685C C6828015420002
    %if ($ - %%insn_0040685c) > 7
        %error "LONG_0040685C"
    %endif
    times 7 - ($ - %%insn_0040685c) db 0
    %%insn_00406863:
    mov eax,[ebp+0x10] ; 00406863 8B4510
    %if ($ - %%insn_00406863) > 3
        %error "LONG_00406863"
    %endif
    times 3 - ($ - %%insn_00406863) db 0
    %%insn_00406866:
    add eax,0x1 ; 00406866 83C001
    %if ($ - %%insn_00406866) > 3
        %error "LONG_00406866"
    %endif
    times 3 - ($ - %%insn_00406866) db 0
    %%insn_00406869:
    mov [ebp+0x10],eax ; 00406869 894510
    %if ($ - %%insn_00406869) > 3
        %error "LONG_00406869"
    %endif
    times 3 - ($ - %%insn_00406869) db 0
    %%insn_0040686c:
    jmp short 0x406815 ; 0040686C EBA7
    %if ($ - %%insn_0040686c) > 2
        %error "LONG_0040686C"
    %endif
    times 2 - ($ - %%insn_0040686c) db 0
    %%insn_0040686e:
    mov word [ebp-0x4],0x31 ; 0040686E 66C745FC3100
    %if ($ - %%insn_0040686e) > 6
        %error "LONG_0040686E"
    %endif
    times 6 - ($ - %%insn_0040686e) db 0
    %%insn_00406874:
    jmp short 0x406882 ; 00406874 EB0C
    %if ($ - %%insn_00406874) > 2
        %error "LONG_00406874"
    %endif
    times 2 - ($ - %%insn_00406874) db 0
    %%insn_00406876:
    mov cx,[ebp-0x4] ; 00406876 668B4DFC
    %if ($ - %%insn_00406876) > 4
        %error "LONG_00406876"
    %endif
    times 4 - ($ - %%insn_00406876) db 0
    %%insn_0040687a:
    add cx,0x1 ; 0040687A 6683C101
    %if ($ - %%insn_0040687a) > 4
        %error "LONG_0040687A"
    %endif
    times 4 - ($ - %%insn_0040687a) db 0
    %%insn_0040687e:
    mov [ebp-0x4],cx ; 0040687E 66894DFC
    %if ($ - %%insn_0040687e) > 4
        %error "LONG_0040687E"
    %endif
    times 4 - ($ - %%insn_0040687e) db 0
    %%insn_00406882:
    movsx edx,word [ebp-0x4] ; 00406882 0FBF55FC
    %if ($ - %%insn_00406882) > 4
        %error "LONG_00406882"
    %endif
    times 4 - ($ - %%insn_00406882) db 0
    %%insn_00406886:
    cmp edx,0x39 ; 00406886 83FA39
    %if ($ - %%insn_00406886) > 3
        %error "LONG_00406886"
    %endif
    times 3 - ($ - %%insn_00406886) db 0
    %%insn_00406889:
    jnl short 0x406898 ; 00406889 7D0D
    %if ($ - %%insn_00406889) > 2
        %error "LONG_00406889"
    %endif
    times 2 - ($ - %%insn_00406889) db 0
    %%insn_0040688b:
    movsx eax,word [ebp-0x4] ; 0040688B 0FBF45FC
    %if ($ - %%insn_0040688b) > 4
        %error "LONG_0040688B"
    %endif
    times 4 - ($ - %%insn_0040688b) db 0
    %%insn_0040688f:
    mov byte [eax+0x421580],0x0 ; 0040688F C6808015420000
    %if ($ - %%insn_0040688f) > 7
        %error "LONG_0040688F"
    %endif
    times 7 - ($ - %%insn_0040688f) db 0
    %%insn_00406896:
    jmp short 0x406876 ; 00406896 EBDE
    %if ($ - %%insn_00406896) > 2
        %error "LONG_00406896"
    %endif
    times 2 - ($ - %%insn_00406896) db 0
    %%insn_00406898:
    mov cx,[ebp+0xc] ; 00406898 668B4D0C
    %if ($ - %%insn_00406898) > 4
        %error "LONG_00406898"
    %endif
    times 4 - ($ - %%insn_00406898) db 0
    %%insn_0040689c:
    push ecx ; 0040689C 51
    %if ($ - %%insn_0040689c) > 1
        %error "LONG_0040689C"
    %endif
    times 1 - ($ - %%insn_0040689c) db 0
    %%insn_0040689d:
    mov dl,[ebp+0x8] ; 0040689D 8A5508
    %if ($ - %%insn_0040689d) > 3
        %error "LONG_0040689D"
    %endif
    times 3 - ($ - %%insn_0040689d) db 0
    %%insn_004068a0:
    push edx ; 004068A0 52
    %if ($ - %%insn_004068a0) > 1
        %error "LONG_004068A0"
    %endif
    times 1 - ($ - %%insn_004068a0) db 0
    %%insn_004068a1:
    call 0x4068b0 ; 004068A1 E80A000000
    %if ($ - %%insn_004068a1) > 5
        %error "LONG_004068A1"
    %endif
    times 5 - ($ - %%insn_004068a1) db 0
    %%insn_004068a6:
    add esp,0x8 ; 004068A6 83C408
    %if ($ - %%insn_004068a6) > 3
        %error "LONG_004068A6"
    %endif
    times 3 - ($ - %%insn_004068a6) db 0
    db 0x0F, 0xBF, 0xC0 ; 004068A9 0FBFC0 | movsx eax,ax | encoding preserved
    db 0x8B, 0xE5 ; 004068AC 8BE5 | mov esp,ebp | encoding preserved
    %%insn_004068ae:
    pop ebp ; 004068AE 5D
    %if ($ - %%insn_004068ae) > 1
        %error "LONG_004068AE"
    %endif
    times 1 - ($ - %%insn_004068ae) db 0
    %%insn_004068af:
    ret ; 004068AF C3
    %if ($ - %%insn_004068af) > 1
        %error "LONG_004068AF"
    %endif
    times 1 - ($ - %%insn_004068af) db 0
    %if ($ - %%fragment_start) != 167
        %error "function fragment size drift: 00406809"
    %endif
%endmacro
