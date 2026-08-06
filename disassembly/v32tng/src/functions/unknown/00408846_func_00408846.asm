; PE virtual entry 00408846
; Ghidra working symbol: FUN_00408846
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00408846_part_00 0
    %%fragment_start:
func_00408846:
    %%insn_00408846:
    push ebp ; 00408846 55
    %if ($ - %%insn_00408846) > 1
        %error "LONG_00408846"
    %endif
    times 1 - ($ - %%insn_00408846) db 0
    db 0x8B, 0xEC ; 00408847 8BEC | mov ebp,esp | encoding preserved
    %%insn_00408849:
    sub esp,0x10 ; 00408849 83EC10
    %if ($ - %%insn_00408849) > 3
        %error "LONG_00408849"
    %endif
    times 3 - ($ - %%insn_00408849) db 0
    %%insn_0040884c:
    mov [ebp-0x10],ecx ; 0040884C 894DF0
    %if ($ - %%insn_0040884c) > 3
        %error "LONG_0040884C"
    %endif
    times 3 - ($ - %%insn_0040884c) db 0
    %%insn_0040884f:
    mov eax,[ebp-0x10] ; 0040884F 8B45F0
    %if ($ - %%insn_0040884f) > 3
        %error "LONG_0040884F"
    %endif
    times 3 - ($ - %%insn_0040884f) db 0
    %%insn_00408852:
    mov ecx,[ebp-0x10] ; 00408852 8B4DF0
    %if ($ - %%insn_00408852) > 3
        %error "LONG_00408852"
    %endif
    times 3 - ($ - %%insn_00408852) db 0
    %%insn_00408855:
    mov edx,[eax+0x54] ; 00408855 8B5054
    %if ($ - %%insn_00408855) > 3
        %error "LONG_00408855"
    %endif
    times 3 - ($ - %%insn_00408855) db 0
    %%insn_00408858:
    cmp edx,[ecx+0x58] ; 00408858 3B5158
    %if ($ - %%insn_00408858) > 3
        %error "LONG_00408858"
    %endif
    times 3 - ($ - %%insn_00408858) db 0
    %%insn_0040885b:
    jl short 0x408864 ; 0040885B 7C07
    %if ($ - %%insn_0040885b) > 2
        %error "LONG_0040885B"
    %endif
    times 2 - ($ - %%insn_0040885b) db 0
    db 0x33, 0xC0 ; 0040885D 33C0 | xor eax,eax | encoding preserved
    %%insn_0040885f:
    jmp 0x40891c ; 0040885F E9B8000000
    %if ($ - %%insn_0040885f) > 5
        %error "LONG_0040885F"
    %endif
    times 5 - ($ - %%insn_0040885f) db 0
    %%insn_00408864:
    mov eax,[ebp-0x10] ; 00408864 8B45F0
    %if ($ - %%insn_00408864) > 3
        %error "LONG_00408864"
    %endif
    times 3 - ($ - %%insn_00408864) db 0
    %%insn_00408867:
    mov ecx,[ebp-0x10] ; 00408867 8B4DF0
    %if ($ - %%insn_00408867) > 3
        %error "LONG_00408867"
    %endif
    times 3 - ($ - %%insn_00408867) db 0
    %%insn_0040886a:
    mov edx,[eax+0x5c] ; 0040886A 8B505C
    %if ($ - %%insn_0040886a) > 3
        %error "LONG_0040886A"
    %endif
    times 3 - ($ - %%insn_0040886a) db 0
    %%insn_0040886d:
    cmp edx,[ecx+0x60] ; 0040886D 3B5160
    %if ($ - %%insn_0040886d) > 3
        %error "LONG_0040886D"
    %endif
    times 3 - ($ - %%insn_0040886d) db 0
    %%insn_00408870:
    jl short 0x408879 ; 00408870 7C07
    %if ($ - %%insn_00408870) > 2
        %error "LONG_00408870"
    %endif
    times 2 - ($ - %%insn_00408870) db 0
    db 0x33, 0xC0 ; 00408872 33C0 | xor eax,eax | encoding preserved
    %%insn_00408874:
    jmp 0x40891c ; 00408874 E9A3000000
    %if ($ - %%insn_00408874) > 5
        %error "LONG_00408874"
    %endif
    times 5 - ($ - %%insn_00408874) db 0
    %%insn_00408879:
    mov eax,[0x41f578] ; 00408879 A178F54100
    %if ($ - %%insn_00408879) > 5
        %error "LONG_00408879"
    %endif
    times 5 - ($ - %%insn_00408879) db 0
    %%insn_0040887e:
    push eax ; 0040887E 50
    %if ($ - %%insn_0040887e) > 1
        %error "LONG_0040887E"
    %endif
    times 1 - ($ - %%insn_0040887e) db 0
    %%insn_0040887f:
    call dword near [0x4244ec] ; 0040887F FF15EC444200
    %if ($ - %%insn_0040887f) > 6
        %error "LONG_0040887F"
    %endif
    times 6 - ($ - %%insn_0040887f) db 0
    %%insn_00408885:
    mov [ebp-0xc],eax ; 00408885 8945F4
    %if ($ - %%insn_00408885) > 3
        %error "LONG_00408885"
    %endif
    times 3 - ($ - %%insn_00408885) db 0
    %%insn_00408888:
    mov ecx,[ebp-0xc] ; 00408888 8B4DF4
    %if ($ - %%insn_00408888) > 3
        %error "LONG_00408888"
    %endif
    times 3 - ($ - %%insn_00408888) db 0
    %%insn_0040888b:
    push ecx ; 0040888B 51
    %if ($ - %%insn_0040888b) > 1
        %error "LONG_0040888B"
    %endif
    times 1 - ($ - %%insn_0040888b) db 0
    %%insn_0040888c:
    call dword near [0x424374] ; 0040888C FF1574434200
    %if ($ - %%insn_0040888c) > 6
        %error "LONG_0040888C"
    %endif
    times 6 - ($ - %%insn_0040888c) db 0
    %%insn_00408892:
    mov [ebp-0x8],eax ; 00408892 8945F8
    %if ($ - %%insn_00408892) > 3
        %error "LONG_00408892"
    %endif
    times 3 - ($ - %%insn_00408892) db 0
    %%insn_00408895:
    mov edx,[0x41f58c] ; 00408895 8B158CF54100
    %if ($ - %%insn_00408895) > 6
        %error "LONG_00408895"
    %endif
    times 6 - ($ - %%insn_00408895) db 0
    %%insn_0040889b:
    push edx ; 0040889B 52
    %if ($ - %%insn_0040889b) > 1
        %error "LONG_0040889B"
    %endif
    times 1 - ($ - %%insn_0040889b) db 0
    %%insn_0040889c:
    mov eax,[ebp-0x8] ; 0040889C 8B45F8
    %if ($ - %%insn_0040889c) > 3
        %error "LONG_0040889C"
    %endif
    times 3 - ($ - %%insn_0040889c) db 0
    %%insn_0040889f:
    push eax ; 0040889F 50
    %if ($ - %%insn_0040889f) > 1
        %error "LONG_0040889F"
    %endif
    times 1 - ($ - %%insn_0040889f) db 0
    %%insn_004088a0:
    call dword near [0x424370] ; 004088A0 FF1570434200
    %if ($ - %%insn_004088a0) > 6
        %error "LONG_004088A0"
    %endif
    times 6 - ($ - %%insn_004088a0) db 0
    %%insn_004088a6:
    mov [ebp-0x4],eax ; 004088A6 8945FC
    %if ($ - %%insn_004088a6) > 3
        %error "LONG_004088A6"
    %endif
    times 3 - ($ - %%insn_004088a6) db 0
    %%insn_004088a9:
    push dword 0xcc0020 ; 004088A9 682000CC00
    %if ($ - %%insn_004088a9) > 5
        %error "LONG_004088A9"
    %endif
    times 5 - ($ - %%insn_004088a9) db 0
    %%insn_004088ae:
    mov ecx,[ebp-0x10] ; 004088AE 8B4DF0
    %if ($ - %%insn_004088ae) > 3
        %error "LONG_004088AE"
    %endif
    times 3 - ($ - %%insn_004088ae) db 0
    %%insn_004088b1:
    mov edx,[ecx+0x5c] ; 004088B1 8B515C
    %if ($ - %%insn_004088b1) > 3
        %error "LONG_004088B1"
    %endif
    times 3 - ($ - %%insn_004088b1) db 0
    %%insn_004088b4:
    push edx ; 004088B4 52
    %if ($ - %%insn_004088b4) > 1
        %error "LONG_004088B4"
    %endif
    times 1 - ($ - %%insn_004088b4) db 0
    %%insn_004088b5:
    mov eax,[ebp-0x10] ; 004088B5 8B45F0
    %if ($ - %%insn_004088b5) > 3
        %error "LONG_004088B5"
    %endif
    times 3 - ($ - %%insn_004088b5) db 0
    %%insn_004088b8:
    mov ecx,[eax+0x54] ; 004088B8 8B4854
    %if ($ - %%insn_004088b8) > 3
        %error "LONG_004088B8"
    %endif
    times 3 - ($ - %%insn_004088b8) db 0
    %%insn_004088bb:
    push ecx ; 004088BB 51
    %if ($ - %%insn_004088bb) > 1
        %error "LONG_004088BB"
    %endif
    times 1 - ($ - %%insn_004088bb) db 0
    %%insn_004088bc:
    mov edx,[ebp-0x8] ; 004088BC 8B55F8
    %if ($ - %%insn_004088bc) > 3
        %error "LONG_004088BC"
    %endif
    times 3 - ($ - %%insn_004088bc) db 0
    %%insn_004088bf:
    push edx ; 004088BF 52
    %if ($ - %%insn_004088bf) > 1
        %error "LONG_004088BF"
    %endif
    times 1 - ($ - %%insn_004088bf) db 0
    %%insn_004088c0:
    mov eax,[ebp-0x10] ; 004088C0 8B45F0
    %if ($ - %%insn_004088c0) > 3
        %error "LONG_004088C0"
    %endif
    times 3 - ($ - %%insn_004088c0) db 0
    %%insn_004088c3:
    mov ecx,[ebp-0x10] ; 004088C3 8B4DF0
    %if ($ - %%insn_004088c3) > 3
        %error "LONG_004088C3"
    %endif
    times 3 - ($ - %%insn_004088c3) db 0
    %%insn_004088c6:
    mov edx,[eax+0x60] ; 004088C6 8B5060
    %if ($ - %%insn_004088c6) > 3
        %error "LONG_004088C6"
    %endif
    times 3 - ($ - %%insn_004088c6) db 0
    %%insn_004088c9:
    sub edx,[ecx+0x5c] ; 004088C9 2B515C
    %if ($ - %%insn_004088c9) > 3
        %error "LONG_004088C9"
    %endif
    times 3 - ($ - %%insn_004088c9) db 0
    %%insn_004088cc:
    push edx ; 004088CC 52
    %if ($ - %%insn_004088cc) > 1
        %error "LONG_004088CC"
    %endif
    times 1 - ($ - %%insn_004088cc) db 0
    %%insn_004088cd:
    mov eax,[ebp-0x10] ; 004088CD 8B45F0
    %if ($ - %%insn_004088cd) > 3
        %error "LONG_004088CD"
    %endif
    times 3 - ($ - %%insn_004088cd) db 0
    %%insn_004088d0:
    mov ecx,[ebp-0x10] ; 004088D0 8B4DF0
    %if ($ - %%insn_004088d0) > 3
        %error "LONG_004088D0"
    %endif
    times 3 - ($ - %%insn_004088d0) db 0
    %%insn_004088d3:
    mov edx,[eax+0x58] ; 004088D3 8B5058
    %if ($ - %%insn_004088d3) > 3
        %error "LONG_004088D3"
    %endif
    times 3 - ($ - %%insn_004088d3) db 0
    %%insn_004088d6:
    sub edx,[ecx+0x54] ; 004088D6 2B5154
    %if ($ - %%insn_004088d6) > 3
        %error "LONG_004088D6"
    %endif
    times 3 - ($ - %%insn_004088d6) db 0
    %%insn_004088d9:
    push edx ; 004088D9 52
    %if ($ - %%insn_004088d9) > 1
        %error "LONG_004088D9"
    %endif
    times 1 - ($ - %%insn_004088d9) db 0
    %%insn_004088da:
    mov eax,[ebp-0x10] ; 004088DA 8B45F0
    %if ($ - %%insn_004088da) > 3
        %error "LONG_004088DA"
    %endif
    times 3 - ($ - %%insn_004088da) db 0
    %%insn_004088dd:
    mov ecx,[eax+0x5c] ; 004088DD 8B485C
    %if ($ - %%insn_004088dd) > 3
        %error "LONG_004088DD"
    %endif
    times 3 - ($ - %%insn_004088dd) db 0
    %%insn_004088e0:
    push ecx ; 004088E0 51
    %if ($ - %%insn_004088e0) > 1
        %error "LONG_004088E0"
    %endif
    times 1 - ($ - %%insn_004088e0) db 0
    %%insn_004088e1:
    mov edx,[ebp-0x10] ; 004088E1 8B55F0
    %if ($ - %%insn_004088e1) > 3
        %error "LONG_004088E1"
    %endif
    times 3 - ($ - %%insn_004088e1) db 0
    %%insn_004088e4:
    mov eax,[edx+0x54] ; 004088E4 8B4254
    %if ($ - %%insn_004088e4) > 3
        %error "LONG_004088E4"
    %endif
    times 3 - ($ - %%insn_004088e4) db 0
    %%insn_004088e7:
    push eax ; 004088E7 50
    %if ($ - %%insn_004088e7) > 1
        %error "LONG_004088E7"
    %endif
    times 1 - ($ - %%insn_004088e7) db 0
    %%insn_004088e8:
    mov ecx,[ebp-0xc] ; 004088E8 8B4DF4
    %if ($ - %%insn_004088e8) > 3
        %error "LONG_004088E8"
    %endif
    times 3 - ($ - %%insn_004088e8) db 0
    %%insn_004088eb:
    push ecx ; 004088EB 51
    %if ($ - %%insn_004088eb) > 1
        %error "LONG_004088EB"
    %endif
    times 1 - ($ - %%insn_004088eb) db 0
    %%insn_004088ec:
    call dword near [0x4243a0] ; 004088EC FF15A0434200
    %if ($ - %%insn_004088ec) > 6
        %error "LONG_004088EC"
    %endif
    times 6 - ($ - %%insn_004088ec) db 0
    %%insn_004088f2:
    mov edx,[ebp-0xc] ; 004088F2 8B55F4
    %if ($ - %%insn_004088f2) > 3
        %error "LONG_004088F2"
    %endif
    times 3 - ($ - %%insn_004088f2) db 0
    %%insn_004088f5:
    push edx ; 004088F5 52
    %if ($ - %%insn_004088f5) > 1
        %error "LONG_004088F5"
    %endif
    times 1 - ($ - %%insn_004088f5) db 0
    %%insn_004088f6:
    mov eax,[0x41f578] ; 004088F6 A178F54100
    %if ($ - %%insn_004088f6) > 5
        %error "LONG_004088F6"
    %endif
    times 5 - ($ - %%insn_004088f6) db 0
    %%insn_004088fb:
    push eax ; 004088FB 50
    %if ($ - %%insn_004088fb) > 1
        %error "LONG_004088FB"
    %endif
    times 1 - ($ - %%insn_004088fb) db 0
    %%insn_004088fc:
    call dword near [0x4244f0] ; 004088FC FF15F0444200
    %if ($ - %%insn_004088fc) > 6
        %error "LONG_004088FC"
    %endif
    times 6 - ($ - %%insn_004088fc) db 0
    %%insn_00408902:
    mov ecx,[ebp-0x4] ; 00408902 8B4DFC
    %if ($ - %%insn_00408902) > 3
        %error "LONG_00408902"
    %endif
    times 3 - ($ - %%insn_00408902) db 0
    %%insn_00408905:
    push ecx ; 00408905 51
    %if ($ - %%insn_00408905) > 1
        %error "LONG_00408905"
    %endif
    times 1 - ($ - %%insn_00408905) db 0
    %%insn_00408906:
    mov edx,[ebp-0x8] ; 00408906 8B55F8
    %if ($ - %%insn_00408906) > 3
        %error "LONG_00408906"
    %endif
    times 3 - ($ - %%insn_00408906) db 0
    %%insn_00408909:
    push edx ; 00408909 52
    %if ($ - %%insn_00408909) > 1
        %error "LONG_00408909"
    %endif
    times 1 - ($ - %%insn_00408909) db 0
    %%insn_0040890a:
    call dword near [0x424370] ; 0040890A FF1570434200
    %if ($ - %%insn_0040890a) > 6
        %error "LONG_0040890A"
    %endif
    times 6 - ($ - %%insn_0040890a) db 0
    %%insn_00408910:
    mov eax,[ebp-0x8] ; 00408910 8B45F8
    %if ($ - %%insn_00408910) > 3
        %error "LONG_00408910"
    %endif
    times 3 - ($ - %%insn_00408910) db 0
    %%insn_00408913:
    push eax ; 00408913 50
    %if ($ - %%insn_00408913) > 1
        %error "LONG_00408913"
    %endif
    times 1 - ($ - %%insn_00408913) db 0
    %%insn_00408914:
    call dword near [0x4243a4] ; 00408914 FF15A4434200
    %if ($ - %%insn_00408914) > 6
        %error "LONG_00408914"
    %endif
    times 6 - ($ - %%insn_00408914) db 0
    db 0x33, 0xC0 ; 0040891A 33C0 | xor eax,eax | encoding preserved
    db 0x8B, 0xE5 ; 0040891C 8BE5 | mov esp,ebp | encoding preserved
    %%insn_0040891e:
    pop ebp ; 0040891E 5D
    %if ($ - %%insn_0040891e) > 1
        %error "LONG_0040891E"
    %endif
    times 1 - ($ - %%insn_0040891e) db 0
    %%insn_0040891f:
    ret ; 0040891F C3
    %if ($ - %%insn_0040891f) > 1
        %error "LONG_0040891F"
    %endif
    times 1 - ($ - %%insn_0040891f) db 0
    %if ($ - %%fragment_start) != 218
        %error "function fragment size drift: 00408846"
    %endif
%endmacro
