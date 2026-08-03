; PE virtual entry 0040AA45
; Ghidra working symbol: FUN_0040aa45
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040aa45_part_00 0
    %%fragment_start:
func_0040aa45:
    %%insn_0040aa45:
    push ebp ; 0040AA45 55
    %if ($ - %%insn_0040aa45) > 1
        %error "LONG_0040AA45"
    %endif
    times 1 - ($ - %%insn_0040aa45) db 0
    db 0x8B, 0xEC ; 0040AA46 8BEC | mov ebp,esp | encoding preserved
    %%insn_0040aa48:
    sub esp,0x10 ; 0040AA48 83EC10
    %if ($ - %%insn_0040aa48) > 3
        %error "LONG_0040AA48"
    %endif
    times 3 - ($ - %%insn_0040aa48) db 0
    %%insn_0040aa4b:
    mov dword [0x421354],0x0 ; 0040AA4B C7055413420000000000
    %if ($ - %%insn_0040aa4b) > 10
        %error "LONG_0040AA4B"
    %endif
    times 10 - ($ - %%insn_0040aa4b) db 0
    %%insn_0040aa55:
    mov dword [0x42135c],0x50 ; 0040AA55 C7055C13420050000000
    %if ($ - %%insn_0040aa55) > 10
        %error "LONG_0040AA55"
    %endif
    times 10 - ($ - %%insn_0040aa55) db 0
    %%insn_0040aa5f:
    mov dword [0x421358],0x280 ; 0040AA5F C7055813420080020000
    %if ($ - %%insn_0040aa5f) > 10
        %error "LONG_0040AA5F"
    %endif
    times 10 - ($ - %%insn_0040aa5f) db 0
    %%insn_0040aa69:
    mov dword [0x421360],0x190 ; 0040AA69 C7056013420090010000
    %if ($ - %%insn_0040aa69) > 10
        %error "LONG_0040AA69"
    %endif
    times 10 - ($ - %%insn_0040aa69) db 0
    %%insn_0040aa73:
    push dword 0x0 ; 0040AA73 6A00
    %if ($ - %%insn_0040aa73) > 2
        %error "LONG_0040AA73"
    %endif
    times 2 - ($ - %%insn_0040aa73) db 0
    %%insn_0040aa75:
    push dword 0x41f524 ; 0040AA75 6824F54100
    %if ($ - %%insn_0040aa75) > 5
        %error "LONG_0040AA75"
    %endif
    times 5 - ($ - %%insn_0040aa75) db 0
    %%insn_0040aa7a:
    call dword near [0x4243b0] ; 0040AA7A FF15B0434200
    %if ($ - %%insn_0040aa7a) > 6
        %error "LONG_0040AA7A"
    %endif
    times 6 - ($ - %%insn_0040aa7a) db 0
    %%insn_0040aa80:
    mov eax,[0x41f524] ; 0040AA80 A124F54100
    %if ($ - %%insn_0040aa80) > 5
        %error "LONG_0040AA80"
    %endif
    times 5 - ($ - %%insn_0040aa80) db 0
    %%insn_0040aa85:
    shl eax,byte 0x6 ; 0040AA85 C1E006
    %if ($ - %%insn_0040aa85) > 3
        %error "LONG_0040AA85"
    %endif
    times 3 - ($ - %%insn_0040aa85) db 0
    %%insn_0040aa88:
    mov [ebp-0x8],eax ; 0040AA88 8945F8
    %if ($ - %%insn_0040aa88) > 3
        %error "LONG_0040AA88"
    %endif
    times 3 - ($ - %%insn_0040aa88) db 0
    %%insn_0040aa8b:
    cmp dword [ebp-0x8],0x100 ; 0040AA8B 817DF800010000
    %if ($ - %%insn_0040aa8b) > 7
        %error "LONG_0040AA8B"
    %endif
    times 7 - ($ - %%insn_0040aa8b) db 0
    %%insn_0040aa92:
    jng short 0x40aa9b ; 0040AA92 7E07
    %if ($ - %%insn_0040aa92) > 2
        %error "LONG_0040AA92"
    %endif
    times 2 - ($ - %%insn_0040aa92) db 0
    %%insn_0040aa94:
    mov dword [ebp-0x8],0x100 ; 0040AA94 C745F800010000
    %if ($ - %%insn_0040aa94) > 7
        %error "LONG_0040AA94"
    %endif
    times 7 - ($ - %%insn_0040aa94) db 0
    %%insn_0040aa9b:
    mov ecx,[0x41f524] ; 0040AA9B 8B0D24F54100
    %if ($ - %%insn_0040aa9b) > 6
        %error "LONG_0040AA9B"
    %endif
    times 6 - ($ - %%insn_0040aa9b) db 0
    %%insn_0040aaa1:
    shl ecx,byte 0x5 ; 0040AAA1 C1E105
    %if ($ - %%insn_0040aaa1) > 3
        %error "LONG_0040AAA1"
    %endif
    times 3 - ($ - %%insn_0040aaa1) db 0
    %%insn_0040aaa4:
    mov [ebp-0xc],ecx ; 0040AAA4 894DF4
    %if ($ - %%insn_0040aaa4) > 3
        %error "LONG_0040AAA4"
    %endif
    times 3 - ($ - %%insn_0040aaa4) db 0
    %%insn_0040aaa7:
    cmp dword [ebp-0xc],0x100 ; 0040AAA7 817DF400010000
    %if ($ - %%insn_0040aaa7) > 7
        %error "LONG_0040AAA7"
    %endif
    times 7 - ($ - %%insn_0040aaa7) db 0
    %%insn_0040aaae:
    jng short 0x40aab7 ; 0040AAAE 7E07
    %if ($ - %%insn_0040aaae) > 2
        %error "LONG_0040AAAE"
    %endif
    times 2 - ($ - %%insn_0040aaae) db 0
    %%insn_0040aab0:
    mov dword [ebp-0xc],0x100 ; 0040AAB0 C745F400010000
    %if ($ - %%insn_0040aab0) > 7
        %error "LONG_0040AAB0"
    %endif
    times 7 - ($ - %%insn_0040aab0) db 0
    %%insn_0040aab7:
    mov edx,[0x41f524] ; 0040AAB7 8B1524F54100
    %if ($ - %%insn_0040aab7) > 6
        %error "LONG_0040AAB7"
    %endif
    times 6 - ($ - %%insn_0040aab7) db 0
    %%insn_0040aabd:
    shl edx,byte 0x4 ; 0040AABD C1E204
    %if ($ - %%insn_0040aabd) > 3
        %error "LONG_0040AABD"
    %endif
    times 3 - ($ - %%insn_0040aabd) db 0
    %%insn_0040aac0:
    mov [ebp-0x4],edx ; 0040AAC0 8955FC
    %if ($ - %%insn_0040aac0) > 3
        %error "LONG_0040AAC0"
    %endif
    times 3 - ($ - %%insn_0040aac0) db 0
    %%insn_0040aac3:
    cmp dword [ebp-0x4],0x100 ; 0040AAC3 817DFC00010000
    %if ($ - %%insn_0040aac3) > 7
        %error "LONG_0040AAC3"
    %endif
    times 7 - ($ - %%insn_0040aac3) db 0
    %%insn_0040aaca:
    jng short 0x40aad3 ; 0040AACA 7E07
    %if ($ - %%insn_0040aaca) > 2
        %error "LONG_0040AACA"
    %endif
    times 2 - ($ - %%insn_0040aaca) db 0
    %%insn_0040aacc:
    mov dword [ebp-0x4],0x100 ; 0040AACC C745FC00010000
    %if ($ - %%insn_0040aacc) > 7
        %error "LONG_0040AACC"
    %endif
    times 7 - ($ - %%insn_0040aacc) db 0
    %%insn_0040aad3:
    mov dword [ebp-0x10],0x0 ; 0040AAD3 C745F000000000
    %if ($ - %%insn_0040aad3) > 7
        %error "LONG_0040AAD3"
    %endif
    times 7 - ($ - %%insn_0040aad3) db 0
    %%insn_0040aada:
    jmp short 0x40aae5 ; 0040AADA EB09
    %if ($ - %%insn_0040aada) > 2
        %error "LONG_0040AADA"
    %endif
    times 2 - ($ - %%insn_0040aada) db 0
    %%insn_0040aadc:
    mov eax,[ebp-0x10] ; 0040AADC 8B45F0
    %if ($ - %%insn_0040aadc) > 3
        %error "LONG_0040AADC"
    %endif
    times 3 - ($ - %%insn_0040aadc) db 0
    %%insn_0040aadf:
    add eax,0x1 ; 0040AADF 83C001
    %if ($ - %%insn_0040aadf) > 3
        %error "LONG_0040AADF"
    %endif
    times 3 - ($ - %%insn_0040aadf) db 0
    %%insn_0040aae2:
    mov [ebp-0x10],eax ; 0040AAE2 8945F0
    %if ($ - %%insn_0040aae2) > 3
        %error "LONG_0040AAE2"
    %endif
    times 3 - ($ - %%insn_0040aae2) db 0
    %%insn_0040aae5:
    cmp dword [ebp-0x10],0x100 ; 0040AAE5 817DF000010000
    %if ($ - %%insn_0040aae5) > 7
        %error "LONG_0040AAE5"
    %endif
    times 7 - ($ - %%insn_0040aae5) db 0
    %%insn_0040aaec:
    jnl short 0x40ab57 ; 0040AAEC 7D69
    %if ($ - %%insn_0040aaec) > 2
        %error "LONG_0040AAEC"
    %endif
    times 2 - ($ - %%insn_0040aaec) db 0
    %%insn_0040aaee:
    mov ecx,[ebp-0x10] ; 0040AAEE 8B4DF0
    %if ($ - %%insn_0040aaee) > 3
        %error "LONG_0040AAEE"
    %endif
    times 3 - ($ - %%insn_0040aaee) db 0
    db 0x33, 0xD2 ; 0040AAF1 33D2 | xor edx,edx | encoding preserved
    %%insn_0040aaf3:
    mov dl,[ecx*4+0x420a40] ; 0040AAF3 8A148D400A4200
    %if ($ - %%insn_0040aaf3) > 7
        %error "LONG_0040AAF3"
    %endif
    times 7 - ($ - %%insn_0040aaf3) db 0
    %%insn_0040aafa:
    imul edx,[ebp-0x8] ; 0040AAFA 0FAF55F8
    %if ($ - %%insn_0040aafa) > 4
        %error "LONG_0040AAFA"
    %endif
    times 4 - ($ - %%insn_0040aafa) db 0
    %%insn_0040aafe:
    sar edx,byte 0x8 ; 0040AAFE C1FA08
    %if ($ - %%insn_0040aafe) > 3
        %error "LONG_0040AAFE"
    %endif
    times 3 - ($ - %%insn_0040aafe) db 0
    %%insn_0040ab01:
    mov eax,[ebp-0x10] ; 0040AB01 8B45F0
    %if ($ - %%insn_0040ab01) > 3
        %error "LONG_0040AB01"
    %endif
    times 3 - ($ - %%insn_0040ab01) db 0
    %%insn_0040ab04:
    imul eax,eax,0x3 ; 0040AB04 6BC003
    %if ($ - %%insn_0040ab04) > 3
        %error "LONG_0040AB04"
    %endif
    times 3 - ($ - %%insn_0040ab04) db 0
    %%insn_0040ab07:
    mov ecx,[0x421344] ; 0040AB07 8B0D44134200
    %if ($ - %%insn_0040ab07) > 6
        %error "LONG_0040AB07"
    %endif
    times 6 - ($ - %%insn_0040ab07) db 0
    %%insn_0040ab0d:
    mov [ecx+eax],dl ; 0040AB0D 881401
    %if ($ - %%insn_0040ab0d) > 3
        %error "LONG_0040AB0D"
    %endif
    times 3 - ($ - %%insn_0040ab0d) db 0
    %%insn_0040ab10:
    mov edx,[ebp-0x10] ; 0040AB10 8B55F0
    %if ($ - %%insn_0040ab10) > 3
        %error "LONG_0040AB10"
    %endif
    times 3 - ($ - %%insn_0040ab10) db 0
    db 0x33, 0xC0 ; 0040AB13 33C0 | xor eax,eax | encoding preserved
    %%insn_0040ab15:
    mov al,[edx*4+0x420a41] ; 0040AB15 8A0495410A4200
    %if ($ - %%insn_0040ab15) > 7
        %error "LONG_0040AB15"
    %endif
    times 7 - ($ - %%insn_0040ab15) db 0
    %%insn_0040ab1c:
    imul eax,[ebp-0xc] ; 0040AB1C 0FAF45F4
    %if ($ - %%insn_0040ab1c) > 4
        %error "LONG_0040AB1C"
    %endif
    times 4 - ($ - %%insn_0040ab1c) db 0
    %%insn_0040ab20:
    sar eax,byte 0x8 ; 0040AB20 C1F808
    %if ($ - %%insn_0040ab20) > 3
        %error "LONG_0040AB20"
    %endif
    times 3 - ($ - %%insn_0040ab20) db 0
    %%insn_0040ab23:
    mov ecx,[ebp-0x10] ; 0040AB23 8B4DF0
    %if ($ - %%insn_0040ab23) > 3
        %error "LONG_0040AB23"
    %endif
    times 3 - ($ - %%insn_0040ab23) db 0
    %%insn_0040ab26:
    imul ecx,ecx,0x3 ; 0040AB26 6BC903
    %if ($ - %%insn_0040ab26) > 3
        %error "LONG_0040AB26"
    %endif
    times 3 - ($ - %%insn_0040ab26) db 0
    %%insn_0040ab29:
    mov edx,[0x421344] ; 0040AB29 8B1544134200
    %if ($ - %%insn_0040ab29) > 6
        %error "LONG_0040AB29"
    %endif
    times 6 - ($ - %%insn_0040ab29) db 0
    %%insn_0040ab2f:
    mov [edx+ecx+0x1],al ; 0040AB2F 88440A01
    %if ($ - %%insn_0040ab2f) > 4
        %error "LONG_0040AB2F"
    %endif
    times 4 - ($ - %%insn_0040ab2f) db 0
    %%insn_0040ab33:
    mov eax,[ebp-0x10] ; 0040AB33 8B45F0
    %if ($ - %%insn_0040ab33) > 3
        %error "LONG_0040AB33"
    %endif
    times 3 - ($ - %%insn_0040ab33) db 0
    db 0x33, 0xC9 ; 0040AB36 33C9 | xor ecx,ecx | encoding preserved
    %%insn_0040ab38:
    mov cl,[eax*4+0x420a42] ; 0040AB38 8A0C85420A4200
    %if ($ - %%insn_0040ab38) > 7
        %error "LONG_0040AB38"
    %endif
    times 7 - ($ - %%insn_0040ab38) db 0
    %%insn_0040ab3f:
    imul ecx,[ebp-0x4] ; 0040AB3F 0FAF4DFC
    %if ($ - %%insn_0040ab3f) > 4
        %error "LONG_0040AB3F"
    %endif
    times 4 - ($ - %%insn_0040ab3f) db 0
    %%insn_0040ab43:
    sar ecx,byte 0x8 ; 0040AB43 C1F908
    %if ($ - %%insn_0040ab43) > 3
        %error "LONG_0040AB43"
    %endif
    times 3 - ($ - %%insn_0040ab43) db 0
    %%insn_0040ab46:
    mov edx,[ebp-0x10] ; 0040AB46 8B55F0
    %if ($ - %%insn_0040ab46) > 3
        %error "LONG_0040AB46"
    %endif
    times 3 - ($ - %%insn_0040ab46) db 0
    %%insn_0040ab49:
    imul edx,edx,0x3 ; 0040AB49 6BD203
    %if ($ - %%insn_0040ab49) > 3
        %error "LONG_0040AB49"
    %endif
    times 3 - ($ - %%insn_0040ab49) db 0
    %%insn_0040ab4c:
    mov eax,[0x421344] ; 0040AB4C A144134200
    %if ($ - %%insn_0040ab4c) > 5
        %error "LONG_0040AB4C"
    %endif
    times 5 - ($ - %%insn_0040ab4c) db 0
    %%insn_0040ab51:
    mov [eax+edx+0x2],cl ; 0040AB51 884C1002
    %if ($ - %%insn_0040ab51) > 4
        %error "LONG_0040AB51"
    %endif
    times 4 - ($ - %%insn_0040ab51) db 0
    %%insn_0040ab55:
    jmp short 0x40aadc ; 0040AB55 EB85
    %if ($ - %%insn_0040ab55) > 2
        %error "LONG_0040AB55"
    %endif
    times 2 - ($ - %%insn_0040ab55) db 0
    %%insn_0040ab57:
    mov ecx,0x421300 ; 0040AB57 B900134200
    %if ($ - %%insn_0040ab57) > 5
        %error "LONG_0040AB57"
    %endif
    times 5 - ($ - %%insn_0040ab57) db 0
    %%insn_0040ab5c:
    call dword near [0x4213b8] ; 0040AB5C FF15B8134200
    %if ($ - %%insn_0040ab5c) > 6
        %error "LONG_0040AB5C"
    %endif
    times 6 - ($ - %%insn_0040ab5c) db 0
    %%insn_0040ab62:
    mov ecx,0x421300 ; 0040AB62 B900134200
    %if ($ - %%insn_0040ab62) > 5
        %error "LONG_0040AB62"
    %endif
    times 5 - ($ - %%insn_0040ab62) db 0
    %%insn_0040ab67:
    call dword near [0x4213b4] ; 0040AB67 FF15B4134200
    %if ($ - %%insn_0040ab67) > 6
        %error "LONG_0040AB67"
    %endif
    times 6 - ($ - %%insn_0040ab67) db 0
    %%insn_0040ab6d:
    call dword near [0x42461c] ; 0040AB6D FF151C464200
    %if ($ - %%insn_0040ab6d) > 6
        %error "LONG_0040AB6D"
    %endif
    times 6 - ($ - %%insn_0040ab6d) db 0
    %%insn_0040ab73:
    cmp dword [ebp-0x4],0x100 ; 0040AB73 817DFC00010000
    %if ($ - %%insn_0040ab73) > 7
        %error "LONG_0040AB73"
    %endif
    times 7 - ($ - %%insn_0040ab73) db 0
    %%insn_0040ab7a:
    jl 0x40aa80 ; 0040AB7A 0F8C00FFFFFF
    %if ($ - %%insn_0040ab7a) > 6
        %error "LONG_0040AB7A"
    %endif
    times 6 - ($ - %%insn_0040ab7a) db 0
    db 0x8B, 0xE5 ; 0040AB80 8BE5 | mov esp,ebp | encoding preserved
    %%insn_0040ab82:
    pop ebp ; 0040AB82 5D
    %if ($ - %%insn_0040ab82) > 1
        %error "LONG_0040AB82"
    %endif
    times 1 - ($ - %%insn_0040ab82) db 0
    %%insn_0040ab83:
    ret ; 0040AB83 C3
    %if ($ - %%insn_0040ab83) > 1
        %error "LONG_0040AB83"
    %endif
    times 1 - ($ - %%insn_0040ab83) db 0
    %if ($ - %%fragment_start) != 319
        %error "function fragment size drift: 0040AA45"
    %endif
%endmacro
