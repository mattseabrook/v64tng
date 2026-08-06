; PE virtual entry 0040A84B
; Ghidra working symbol: FUN_0040a84b
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040a84b_part_00 0
    %%fragment_start:
func_0040a84b:
    %%insn_0040a84b:
    push ebp ; 0040A84B 55
    %if ($ - %%insn_0040a84b) > 1
        %error "LONG_0040A84B"
    %endif
    times 1 - ($ - %%insn_0040a84b) db 0
    db 0x8B, 0xEC ; 0040A84C 8BEC | mov ebp,esp | encoding preserved
    %%insn_0040a84e:
    sub esp,0x10 ; 0040A84E 83EC10
    %if ($ - %%insn_0040a84e) > 3
        %error "LONG_0040A84E"
    %endif
    times 3 - ($ - %%insn_0040a84e) db 0
    %%insn_0040a851:
    mov dword [0x421354],0x0 ; 0040A851 C7055413420000000000
    %if ($ - %%insn_0040a851) > 10
        %error "LONG_0040A851"
    %endif
    times 10 - ($ - %%insn_0040a851) db 0
    %%insn_0040a85b:
    mov dword [0x42135c],0x0 ; 0040A85B C7055C13420000000000
    %if ($ - %%insn_0040a85b) > 10
        %error "LONG_0040A85B"
    %endif
    times 10 - ($ - %%insn_0040a85b) db 0
    %%insn_0040a865:
    mov dword [0x421358],0x280 ; 0040A865 C7055813420080020000
    %if ($ - %%insn_0040a865) > 10
        %error "LONG_0040A865"
    %endif
    times 10 - ($ - %%insn_0040a865) db 0
    %%insn_0040a86f:
    mov dword [0x421360],0x190 ; 0040A86F C7056013420090010000
    %if ($ - %%insn_0040a86f) > 10
        %error "LONG_0040A86F"
    %endif
    times 10 - ($ - %%insn_0040a86f) db 0
    %%insn_0040a879:
    mov dword [ebp-0x10],0x0 ; 0040A879 C745F000000000
    %if ($ - %%insn_0040a879) > 7
        %error "LONG_0040A879"
    %endif
    times 7 - ($ - %%insn_0040a879) db 0
    %%insn_0040a880:
    jmp short 0x40a88b ; 0040A880 EB09
    %if ($ - %%insn_0040a880) > 2
        %error "LONG_0040A880"
    %endif
    times 2 - ($ - %%insn_0040a880) db 0
    %%insn_0040a882:
    mov eax,[ebp-0x10] ; 0040A882 8B45F0
    %if ($ - %%insn_0040a882) > 3
        %error "LONG_0040A882"
    %endif
    times 3 - ($ - %%insn_0040a882) db 0
    %%insn_0040a885:
    add eax,0x1 ; 0040A885 83C001
    %if ($ - %%insn_0040a885) > 3
        %error "LONG_0040A885"
    %endif
    times 3 - ($ - %%insn_0040a885) db 0
    %%insn_0040a888:
    mov [ebp-0x10],eax ; 0040A888 8945F0
    %if ($ - %%insn_0040a888) > 3
        %error "LONG_0040A888"
    %endif
    times 3 - ($ - %%insn_0040a888) db 0
    %%insn_0040a88b:
    cmp dword [ebp-0x10],0x100 ; 0040A88B 817DF000010000
    %if ($ - %%insn_0040a88b) > 7
        %error "LONG_0040A88B"
    %endif
    times 7 - ($ - %%insn_0040a88b) db 0
    %%insn_0040a892:
    jnl short 0x40a8e2 ; 0040A892 7D4E
    %if ($ - %%insn_0040a892) > 2
        %error "LONG_0040A892"
    %endif
    times 2 - ($ - %%insn_0040a892) db 0
    %%insn_0040a894:
    mov ecx,[ebp-0x10] ; 0040A894 8B4DF0
    %if ($ - %%insn_0040a894) > 3
        %error "LONG_0040A894"
    %endif
    times 3 - ($ - %%insn_0040a894) db 0
    %%insn_0040a897:
    imul ecx,ecx,0x3 ; 0040A897 6BC903
    %if ($ - %%insn_0040a897) > 3
        %error "LONG_0040A897"
    %endif
    times 3 - ($ - %%insn_0040a897) db 0
    %%insn_0040a89a:
    mov edx,[ebp-0x10] ; 0040A89A 8B55F0
    %if ($ - %%insn_0040a89a) > 3
        %error "LONG_0040A89A"
    %endif
    times 3 - ($ - %%insn_0040a89a) db 0
    %%insn_0040a89d:
    mov eax,[0x421344] ; 0040A89D A144134200
    %if ($ - %%insn_0040a89d) > 5
        %error "LONG_0040A89D"
    %endif
    times 5 - ($ - %%insn_0040a89d) db 0
    %%insn_0040a8a2:
    mov cl,[eax+ecx] ; 0040A8A2 8A0C08
    %if ($ - %%insn_0040a8a2) > 3
        %error "LONG_0040A8A2"
    %endif
    times 3 - ($ - %%insn_0040a8a2) db 0
    %%insn_0040a8a5:
    mov [edx*4+0x420a40],cl ; 0040A8A5 880C95400A4200
    %if ($ - %%insn_0040a8a5) > 7
        %error "LONG_0040A8A5"
    %endif
    times 7 - ($ - %%insn_0040a8a5) db 0
    %%insn_0040a8ac:
    mov edx,[ebp-0x10] ; 0040A8AC 8B55F0
    %if ($ - %%insn_0040a8ac) > 3
        %error "LONG_0040A8AC"
    %endif
    times 3 - ($ - %%insn_0040a8ac) db 0
    %%insn_0040a8af:
    imul edx,edx,0x3 ; 0040A8AF 6BD203
    %if ($ - %%insn_0040a8af) > 3
        %error "LONG_0040A8AF"
    %endif
    times 3 - ($ - %%insn_0040a8af) db 0
    %%insn_0040a8b2:
    mov eax,[ebp-0x10] ; 0040A8B2 8B45F0
    %if ($ - %%insn_0040a8b2) > 3
        %error "LONG_0040A8B2"
    %endif
    times 3 - ($ - %%insn_0040a8b2) db 0
    %%insn_0040a8b5:
    mov ecx,[0x421344] ; 0040A8B5 8B0D44134200
    %if ($ - %%insn_0040a8b5) > 6
        %error "LONG_0040A8B5"
    %endif
    times 6 - ($ - %%insn_0040a8b5) db 0
    %%insn_0040a8bb:
    mov dl,[ecx+edx+0x1] ; 0040A8BB 8A541101
    %if ($ - %%insn_0040a8bb) > 4
        %error "LONG_0040A8BB"
    %endif
    times 4 - ($ - %%insn_0040a8bb) db 0
    %%insn_0040a8bf:
    mov [eax*4+0x420a41],dl ; 0040A8BF 881485410A4200
    %if ($ - %%insn_0040a8bf) > 7
        %error "LONG_0040A8BF"
    %endif
    times 7 - ($ - %%insn_0040a8bf) db 0
    %%insn_0040a8c6:
    mov eax,[ebp-0x10] ; 0040A8C6 8B45F0
    %if ($ - %%insn_0040a8c6) > 3
        %error "LONG_0040A8C6"
    %endif
    times 3 - ($ - %%insn_0040a8c6) db 0
    %%insn_0040a8c9:
    imul eax,eax,0x3 ; 0040A8C9 6BC003
    %if ($ - %%insn_0040a8c9) > 3
        %error "LONG_0040A8C9"
    %endif
    times 3 - ($ - %%insn_0040a8c9) db 0
    %%insn_0040a8cc:
    mov ecx,[ebp-0x10] ; 0040A8CC 8B4DF0
    %if ($ - %%insn_0040a8cc) > 3
        %error "LONG_0040A8CC"
    %endif
    times 3 - ($ - %%insn_0040a8cc) db 0
    %%insn_0040a8cf:
    mov edx,[0x421344] ; 0040A8CF 8B1544134200
    %if ($ - %%insn_0040a8cf) > 6
        %error "LONG_0040A8CF"
    %endif
    times 6 - ($ - %%insn_0040a8cf) db 0
    %%insn_0040a8d5:
    mov al,[edx+eax+0x2] ; 0040A8D5 8A440202
    %if ($ - %%insn_0040a8d5) > 4
        %error "LONG_0040A8D5"
    %endif
    times 4 - ($ - %%insn_0040a8d5) db 0
    %%insn_0040a8d9:
    mov [ecx*4+0x420a42],al ; 0040A8D9 88048D420A4200
    %if ($ - %%insn_0040a8d9) > 7
        %error "LONG_0040A8D9"
    %endif
    times 7 - ($ - %%insn_0040a8d9) db 0
    %%insn_0040a8e0:
    jmp short 0x40a882 ; 0040A8E0 EBA0
    %if ($ - %%insn_0040a8e0) > 2
        %error "LONG_0040A8E0"
    %endif
    times 2 - ($ - %%insn_0040a8e0) db 0
    %%insn_0040a8e2:
    push dword 0x0 ; 0040A8E2 6A00
    %if ($ - %%insn_0040a8e2) > 2
        %error "LONG_0040A8E2"
    %endif
    times 2 - ($ - %%insn_0040a8e2) db 0
    %%insn_0040a8e4:
    push dword 0x41f524 ; 0040A8E4 6824F54100
    %if ($ - %%insn_0040a8e4) > 5
        %error "LONG_0040A8E4"
    %endif
    times 5 - ($ - %%insn_0040a8e4) db 0
    %%insn_0040a8e9:
    call dword near [0x4243b0] ; 0040A8E9 FF15B0434200
    %if ($ - %%insn_0040a8e9) > 6
        %error "LONG_0040A8E9"
    %endif
    times 6 - ($ - %%insn_0040a8e9) db 0
    %%insn_0040a8ef:
    mov ecx,[0x41f524] ; 0040A8EF 8B0D24F54100
    %if ($ - %%insn_0040a8ef) > 6
        %error "LONG_0040A8EF"
    %endif
    times 6 - ($ - %%insn_0040a8ef) db 0
    %%insn_0040a8f5:
    shl ecx,byte 0x4 ; 0040A8F5 C1E104
    %if ($ - %%insn_0040a8f5) > 3
        %error "LONG_0040A8F5"
    %endif
    times 3 - ($ - %%insn_0040a8f5) db 0
    %%insn_0040a8f8:
    mov edx,0x100 ; 0040A8F8 BA00010000
    %if ($ - %%insn_0040a8f8) > 5
        %error "LONG_0040A8F8"
    %endif
    times 5 - ($ - %%insn_0040a8f8) db 0
    db 0x2B, 0xD1 ; 0040A8FD 2BD1 | sub edx,ecx | encoding preserved
    %%insn_0040a8ff:
    mov [ebp-0x8],edx ; 0040A8FF 8955F8
    %if ($ - %%insn_0040a8ff) > 3
        %error "LONG_0040A8FF"
    %endif
    times 3 - ($ - %%insn_0040a8ff) db 0
    %%insn_0040a902:
    cmp dword [ebp-0x8],0x0 ; 0040A902 837DF800
    %if ($ - %%insn_0040a902) > 4
        %error "LONG_0040A902"
    %endif
    times 4 - ($ - %%insn_0040a902) db 0
    %%insn_0040a906:
    jnl short 0x40a90f ; 0040A906 7D07
    %if ($ - %%insn_0040a906) > 2
        %error "LONG_0040A906"
    %endif
    times 2 - ($ - %%insn_0040a906) db 0
    %%insn_0040a908:
    mov dword [ebp-0x8],0x0 ; 0040A908 C745F800000000
    %if ($ - %%insn_0040a908) > 7
        %error "LONG_0040A908"
    %endif
    times 7 - ($ - %%insn_0040a908) db 0
    %%insn_0040a90f:
    mov eax,[0x41f524] ; 0040A90F A124F54100
    %if ($ - %%insn_0040a90f) > 5
        %error "LONG_0040A90F"
    %endif
    times 5 - ($ - %%insn_0040a90f) db 0
    %%insn_0040a914:
    shl eax,byte 0x5 ; 0040A914 C1E005
    %if ($ - %%insn_0040a914) > 3
        %error "LONG_0040A914"
    %endif
    times 3 - ($ - %%insn_0040a914) db 0
    %%insn_0040a917:
    mov ecx,0x100 ; 0040A917 B900010000
    %if ($ - %%insn_0040a917) > 5
        %error "LONG_0040A917"
    %endif
    times 5 - ($ - %%insn_0040a917) db 0
    db 0x2B, 0xC8 ; 0040A91C 2BC8 | sub ecx,eax | encoding preserved
    %%insn_0040a91e:
    mov [ebp-0xc],ecx ; 0040A91E 894DF4
    %if ($ - %%insn_0040a91e) > 3
        %error "LONG_0040A91E"
    %endif
    times 3 - ($ - %%insn_0040a91e) db 0
    %%insn_0040a921:
    cmp dword [ebp-0xc],0x0 ; 0040A921 837DF400
    %if ($ - %%insn_0040a921) > 4
        %error "LONG_0040A921"
    %endif
    times 4 - ($ - %%insn_0040a921) db 0
    %%insn_0040a925:
    jnl short 0x40a92e ; 0040A925 7D07
    %if ($ - %%insn_0040a925) > 2
        %error "LONG_0040A925"
    %endif
    times 2 - ($ - %%insn_0040a925) db 0
    %%insn_0040a927:
    mov dword [ebp-0xc],0x0 ; 0040A927 C745F400000000
    %if ($ - %%insn_0040a927) > 7
        %error "LONG_0040A927"
    %endif
    times 7 - ($ - %%insn_0040a927) db 0
    %%insn_0040a92e:
    mov edx,[0x41f524] ; 0040A92E 8B1524F54100
    %if ($ - %%insn_0040a92e) > 6
        %error "LONG_0040A92E"
    %endif
    times 6 - ($ - %%insn_0040a92e) db 0
    %%insn_0040a934:
    shl edx,byte 0x5 ; 0040A934 C1E205
    %if ($ - %%insn_0040a934) > 3
        %error "LONG_0040A934"
    %endif
    times 3 - ($ - %%insn_0040a934) db 0
    %%insn_0040a937:
    mov eax,0x100 ; 0040A937 B800010000
    %if ($ - %%insn_0040a937) > 5
        %error "LONG_0040A937"
    %endif
    times 5 - ($ - %%insn_0040a937) db 0
    db 0x2B, 0xC2 ; 0040A93C 2BC2 | sub eax,edx | encoding preserved
    %%insn_0040a93e:
    mov [ebp-0x4],eax ; 0040A93E 8945FC
    %if ($ - %%insn_0040a93e) > 3
        %error "LONG_0040A93E"
    %endif
    times 3 - ($ - %%insn_0040a93e) db 0
    %%insn_0040a941:
    cmp dword [ebp-0x4],0x0 ; 0040A941 837DFC00
    %if ($ - %%insn_0040a941) > 4
        %error "LONG_0040A941"
    %endif
    times 4 - ($ - %%insn_0040a941) db 0
    %%insn_0040a945:
    jnl short 0x40a94e ; 0040A945 7D07
    %if ($ - %%insn_0040a945) > 2
        %error "LONG_0040A945"
    %endif
    times 2 - ($ - %%insn_0040a945) db 0
    %%insn_0040a947:
    mov dword [ebp-0x4],0x0 ; 0040A947 C745FC00000000
    %if ($ - %%insn_0040a947) > 7
        %error "LONG_0040A947"
    %endif
    times 7 - ($ - %%insn_0040a947) db 0
    %%insn_0040a94e:
    mov dword [ebp-0x10],0x0 ; 0040A94E C745F000000000
    %if ($ - %%insn_0040a94e) > 7
        %error "LONG_0040A94E"
    %endif
    times 7 - ($ - %%insn_0040a94e) db 0
    %%insn_0040a955:
    jmp short 0x40a960 ; 0040A955 EB09
    %if ($ - %%insn_0040a955) > 2
        %error "LONG_0040A955"
    %endif
    times 2 - ($ - %%insn_0040a955) db 0
    %%insn_0040a957:
    mov ecx,[ebp-0x10] ; 0040A957 8B4DF0
    %if ($ - %%insn_0040a957) > 3
        %error "LONG_0040A957"
    %endif
    times 3 - ($ - %%insn_0040a957) db 0
    %%insn_0040a95a:
    add ecx,0x1 ; 0040A95A 83C101
    %if ($ - %%insn_0040a95a) > 3
        %error "LONG_0040A95A"
    %endif
    times 3 - ($ - %%insn_0040a95a) db 0
    %%insn_0040a95d:
    mov [ebp-0x10],ecx ; 0040A95D 894DF0
    %if ($ - %%insn_0040a95d) > 3
        %error "LONG_0040A95D"
    %endif
    times 3 - ($ - %%insn_0040a95d) db 0
    %%insn_0040a960:
    cmp dword [ebp-0x10],0x100 ; 0040A960 817DF000010000
    %if ($ - %%insn_0040a960) > 7
        %error "LONG_0040A960"
    %endif
    times 7 - ($ - %%insn_0040a960) db 0
    %%insn_0040a967:
    jnl short 0x40a9d2 ; 0040A967 7D69
    %if ($ - %%insn_0040a967) > 2
        %error "LONG_0040A967"
    %endif
    times 2 - ($ - %%insn_0040a967) db 0
    %%insn_0040a969:
    mov edx,[ebp-0x10] ; 0040A969 8B55F0
    %if ($ - %%insn_0040a969) > 3
        %error "LONG_0040A969"
    %endif
    times 3 - ($ - %%insn_0040a969) db 0
    db 0x33, 0xC0 ; 0040A96C 33C0 | xor eax,eax | encoding preserved
    %%insn_0040a96e:
    mov al,[edx*4+0x420a40] ; 0040A96E 8A0495400A4200
    %if ($ - %%insn_0040a96e) > 7
        %error "LONG_0040A96E"
    %endif
    times 7 - ($ - %%insn_0040a96e) db 0
    %%insn_0040a975:
    imul eax,[ebp-0x8] ; 0040A975 0FAF45F8
    %if ($ - %%insn_0040a975) > 4
        %error "LONG_0040A975"
    %endif
    times 4 - ($ - %%insn_0040a975) db 0
    %%insn_0040a979:
    sar eax,byte 0x8 ; 0040A979 C1F808
    %if ($ - %%insn_0040a979) > 3
        %error "LONG_0040A979"
    %endif
    times 3 - ($ - %%insn_0040a979) db 0
    %%insn_0040a97c:
    mov ecx,[ebp-0x10] ; 0040A97C 8B4DF0
    %if ($ - %%insn_0040a97c) > 3
        %error "LONG_0040A97C"
    %endif
    times 3 - ($ - %%insn_0040a97c) db 0
    %%insn_0040a97f:
    imul ecx,ecx,0x3 ; 0040A97F 6BC903
    %if ($ - %%insn_0040a97f) > 3
        %error "LONG_0040A97F"
    %endif
    times 3 - ($ - %%insn_0040a97f) db 0
    %%insn_0040a982:
    mov edx,[0x421344] ; 0040A982 8B1544134200
    %if ($ - %%insn_0040a982) > 6
        %error "LONG_0040A982"
    %endif
    times 6 - ($ - %%insn_0040a982) db 0
    %%insn_0040a988:
    mov [edx+ecx],al ; 0040A988 88040A
    %if ($ - %%insn_0040a988) > 3
        %error "LONG_0040A988"
    %endif
    times 3 - ($ - %%insn_0040a988) db 0
    %%insn_0040a98b:
    mov eax,[ebp-0x10] ; 0040A98B 8B45F0
    %if ($ - %%insn_0040a98b) > 3
        %error "LONG_0040A98B"
    %endif
    times 3 - ($ - %%insn_0040a98b) db 0
    db 0x33, 0xC9 ; 0040A98E 33C9 | xor ecx,ecx | encoding preserved
    %%insn_0040a990:
    mov cl,[eax*4+0x420a41] ; 0040A990 8A0C85410A4200
    %if ($ - %%insn_0040a990) > 7
        %error "LONG_0040A990"
    %endif
    times 7 - ($ - %%insn_0040a990) db 0
    %%insn_0040a997:
    imul ecx,[ebp-0xc] ; 0040A997 0FAF4DF4
    %if ($ - %%insn_0040a997) > 4
        %error "LONG_0040A997"
    %endif
    times 4 - ($ - %%insn_0040a997) db 0
    %%insn_0040a99b:
    sar ecx,byte 0x8 ; 0040A99B C1F908
    %if ($ - %%insn_0040a99b) > 3
        %error "LONG_0040A99B"
    %endif
    times 3 - ($ - %%insn_0040a99b) db 0
    %%insn_0040a99e:
    mov edx,[ebp-0x10] ; 0040A99E 8B55F0
    %if ($ - %%insn_0040a99e) > 3
        %error "LONG_0040A99E"
    %endif
    times 3 - ($ - %%insn_0040a99e) db 0
    %%insn_0040a9a1:
    imul edx,edx,0x3 ; 0040A9A1 6BD203
    %if ($ - %%insn_0040a9a1) > 3
        %error "LONG_0040A9A1"
    %endif
    times 3 - ($ - %%insn_0040a9a1) db 0
    %%insn_0040a9a4:
    mov eax,[0x421344] ; 0040A9A4 A144134200
    %if ($ - %%insn_0040a9a4) > 5
        %error "LONG_0040A9A4"
    %endif
    times 5 - ($ - %%insn_0040a9a4) db 0
    %%insn_0040a9a9:
    mov [eax+edx+0x1],cl ; 0040A9A9 884C1001
    %if ($ - %%insn_0040a9a9) > 4
        %error "LONG_0040A9A9"
    %endif
    times 4 - ($ - %%insn_0040a9a9) db 0
    %%insn_0040a9ad:
    mov ecx,[ebp-0x10] ; 0040A9AD 8B4DF0
    %if ($ - %%insn_0040a9ad) > 3
        %error "LONG_0040A9AD"
    %endif
    times 3 - ($ - %%insn_0040a9ad) db 0
    db 0x33, 0xD2 ; 0040A9B0 33D2 | xor edx,edx | encoding preserved
    %%insn_0040a9b2:
    mov dl,[ecx*4+0x420a42] ; 0040A9B2 8A148D420A4200
    %if ($ - %%insn_0040a9b2) > 7
        %error "LONG_0040A9B2"
    %endif
    times 7 - ($ - %%insn_0040a9b2) db 0
    %%insn_0040a9b9:
    imul edx,[ebp-0x4] ; 0040A9B9 0FAF55FC
    %if ($ - %%insn_0040a9b9) > 4
        %error "LONG_0040A9B9"
    %endif
    times 4 - ($ - %%insn_0040a9b9) db 0
    %%insn_0040a9bd:
    sar edx,byte 0x8 ; 0040A9BD C1FA08
    %if ($ - %%insn_0040a9bd) > 3
        %error "LONG_0040A9BD"
    %endif
    times 3 - ($ - %%insn_0040a9bd) db 0
    %%insn_0040a9c0:
    mov eax,[ebp-0x10] ; 0040A9C0 8B45F0
    %if ($ - %%insn_0040a9c0) > 3
        %error "LONG_0040A9C0"
    %endif
    times 3 - ($ - %%insn_0040a9c0) db 0
    %%insn_0040a9c3:
    imul eax,eax,0x3 ; 0040A9C3 6BC003
    %if ($ - %%insn_0040a9c3) > 3
        %error "LONG_0040A9C3"
    %endif
    times 3 - ($ - %%insn_0040a9c3) db 0
    %%insn_0040a9c6:
    mov ecx,[0x421344] ; 0040A9C6 8B0D44134200
    %if ($ - %%insn_0040a9c6) > 6
        %error "LONG_0040A9C6"
    %endif
    times 6 - ($ - %%insn_0040a9c6) db 0
    %%insn_0040a9cc:
    mov [ecx+eax+0x2],dl ; 0040A9CC 88540102
    %if ($ - %%insn_0040a9cc) > 4
        %error "LONG_0040A9CC"
    %endif
    times 4 - ($ - %%insn_0040a9cc) db 0
    %%insn_0040a9d0:
    jmp short 0x40a957 ; 0040A9D0 EB85
    %if ($ - %%insn_0040a9d0) > 2
        %error "LONG_0040A9D0"
    %endif
    times 2 - ($ - %%insn_0040a9d0) db 0
    %%insn_0040a9d2:
    mov ecx,0x421300 ; 0040A9D2 B900134200
    %if ($ - %%insn_0040a9d2) > 5
        %error "LONG_0040A9D2"
    %endif
    times 5 - ($ - %%insn_0040a9d2) db 0
    %%insn_0040a9d7:
    call dword near [0x4213b8] ; 0040A9D7 FF15B8134200
    %if ($ - %%insn_0040a9d7) > 6
        %error "LONG_0040A9D7"
    %endif
    times 6 - ($ - %%insn_0040a9d7) db 0
    %%insn_0040a9dd:
    mov ecx,0x421300 ; 0040A9DD B900134200
    %if ($ - %%insn_0040a9dd) > 5
        %error "LONG_0040A9DD"
    %endif
    times 5 - ($ - %%insn_0040a9dd) db 0
    %%insn_0040a9e2:
    call dword near [0x4213b4] ; 0040A9E2 FF15B4134200
    %if ($ - %%insn_0040a9e2) > 6
        %error "LONG_0040A9E2"
    %endif
    times 6 - ($ - %%insn_0040a9e2) db 0
    %%insn_0040a9e8:
    call dword near [0x42461c] ; 0040A9E8 FF151C464200
    %if ($ - %%insn_0040a9e8) > 6
        %error "LONG_0040A9E8"
    %endif
    times 6 - ($ - %%insn_0040a9e8) db 0
    %%insn_0040a9ee:
    cmp dword [ebp-0x8],0x0 ; 0040A9EE 837DF800
    %if ($ - %%insn_0040a9ee) > 4
        %error "LONG_0040A9EE"
    %endif
    times 4 - ($ - %%insn_0040a9ee) db 0
    %%insn_0040a9f2:
    jg 0x40a8ef ; 0040A9F2 0F8FF7FEFFFF
    %if ($ - %%insn_0040a9f2) > 6
        %error "LONG_0040A9F2"
    %endif
    times 6 - ($ - %%insn_0040a9f2) db 0
    %%insn_0040a9f8:
    push dword 0x4b000 ; 0040A9F8 6800B00400
    %if ($ - %%insn_0040a9f8) > 5
        %error "LONG_0040A9F8"
    %endif
    times 5 - ($ - %%insn_0040a9f8) db 0
    %%insn_0040a9fd:
    push dword 0x0 ; 0040A9FD 6A00
    %if ($ - %%insn_0040a9fd) > 2
        %error "LONG_0040A9FD"
    %endif
    times 2 - ($ - %%insn_0040a9fd) db 0
    %%insn_0040a9ff:
    mov edx,[0x42133c] ; 0040A9FF 8B153C134200
    %if ($ - %%insn_0040a9ff) > 6
        %error "LONG_0040A9FF"
    %endif
    times 6 - ($ - %%insn_0040a9ff) db 0
    %%insn_0040aa05:
    push edx ; 0040AA05 52
    %if ($ - %%insn_0040aa05) > 1
        %error "LONG_0040AA05"
    %endif
    times 1 - ($ - %%insn_0040aa05) db 0
    %%insn_0040aa06:
    call 0x40d470 ; 0040AA06 E8652A0000
    %if ($ - %%insn_0040aa06) > 5
        %error "LONG_0040AA06"
    %endif
    times 5 - ($ - %%insn_0040aa06) db 0
    %%insn_0040aa0b:
    add esp,0xc ; 0040AA0B 83C40C
    %if ($ - %%insn_0040aa0b) > 3
        %error "LONG_0040AA0B"
    %endif
    times 3 - ($ - %%insn_0040aa0b) db 0
    %%insn_0040aa0e:
    mov dword [0x421354],0x0 ; 0040AA0E C7055413420000000000
    %if ($ - %%insn_0040aa0e) > 10
        %error "LONG_0040AA0E"
    %endif
    times 10 - ($ - %%insn_0040aa0e) db 0
    %%insn_0040aa18:
    mov dword [0x42135c],0x0 ; 0040AA18 C7055C13420000000000
    %if ($ - %%insn_0040aa18) > 10
        %error "LONG_0040AA18"
    %endif
    times 10 - ($ - %%insn_0040aa18) db 0
    %%insn_0040aa22:
    mov dword [0x421358],0x280 ; 0040AA22 C7055813420080020000
    %if ($ - %%insn_0040aa22) > 10
        %error "LONG_0040AA22"
    %endif
    times 10 - ($ - %%insn_0040aa22) db 0
    %%insn_0040aa2c:
    mov dword [0x421360],0x1e0 ; 0040AA2C C70560134200E0010000
    %if ($ - %%insn_0040aa2c) > 10
        %error "LONG_0040AA2C"
    %endif
    times 10 - ($ - %%insn_0040aa2c) db 0
    %%insn_0040aa36:
    mov ecx,0x421300 ; 0040AA36 B900134200
    %if ($ - %%insn_0040aa36) > 5
        %error "LONG_0040AA36"
    %endif
    times 5 - ($ - %%insn_0040aa36) db 0
    %%insn_0040aa3b:
    call dword near [0x4213b4] ; 0040AA3B FF15B4134200
    %if ($ - %%insn_0040aa3b) > 6
        %error "LONG_0040AA3B"
    %endif
    times 6 - ($ - %%insn_0040aa3b) db 0
    db 0x8B, 0xE5 ; 0040AA41 8BE5 | mov esp,ebp | encoding preserved
    %%insn_0040aa43:
    pop ebp ; 0040AA43 5D
    %if ($ - %%insn_0040aa43) > 1
        %error "LONG_0040AA43"
    %endif
    times 1 - ($ - %%insn_0040aa43) db 0
    %%insn_0040aa44:
    ret ; 0040AA44 C3
    %if ($ - %%insn_0040aa44) > 1
        %error "LONG_0040AA44"
    %endif
    times 1 - ($ - %%insn_0040aa44) db 0
    %if ($ - %%fragment_start) != 506
        %error "function fragment size drift: 0040A84B"
    %endif
%endmacro
