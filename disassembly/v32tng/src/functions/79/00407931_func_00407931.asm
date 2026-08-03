; PE virtual entry 00407931
; Ghidra working symbol: FUN_00407931
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00407931_part_00 0
    %%fragment_start:
func_00407931:
    %%insn_00407931:
    push ebp ; 00407931 55
    %if ($ - %%insn_00407931) > 1
        %error "LONG_00407931"
    %endif
    times 1 - ($ - %%insn_00407931) db 0
    db 0x8B, 0xEC ; 00407932 8BEC | mov ebp,esp | encoding preserved
    %%insn_00407934:
    sub esp,0x18 ; 00407934 83EC18
    %if ($ - %%insn_00407934) > 3
        %error "LONG_00407934"
    %endif
    times 3 - ($ - %%insn_00407934) db 0
    %%insn_00407937:
    mov [ebp-0x18],ecx ; 00407937 894DE8
    %if ($ - %%insn_00407937) > 3
        %error "LONG_00407937"
    %endif
    times 3 - ($ - %%insn_00407937) db 0
    %%insn_0040793a:
    mov eax,[ebp-0x18] ; 0040793A 8B45E8
    %if ($ - %%insn_0040793a) > 3
        %error "LONG_0040793A"
    %endif
    times 3 - ($ - %%insn_0040793a) db 0
    %%insn_0040793d:
    mov ecx,[ebp-0x18] ; 0040793D 8B4DE8
    %if ($ - %%insn_0040793d) > 3
        %error "LONG_0040793D"
    %endif
    times 3 - ($ - %%insn_0040793d) db 0
    %%insn_00407940:
    mov edx,[eax+0x54] ; 00407940 8B5054
    %if ($ - %%insn_00407940) > 3
        %error "LONG_00407940"
    %endif
    times 3 - ($ - %%insn_00407940) db 0
    %%insn_00407943:
    cmp edx,[ecx+0x58] ; 00407943 3B5158
    %if ($ - %%insn_00407943) > 3
        %error "LONG_00407943"
    %endif
    times 3 - ($ - %%insn_00407943) db 0
    %%insn_00407946:
    jl short 0x40794f ; 00407946 7C07
    %if ($ - %%insn_00407946) > 2
        %error "LONG_00407946"
    %endif
    times 2 - ($ - %%insn_00407946) db 0
    db 0x33, 0xC0 ; 00407948 33C0 | xor eax,eax | encoding preserved
    %%insn_0040794a:
    jmp 0x407a72 ; 0040794A E923010000
    %if ($ - %%insn_0040794a) > 5
        %error "LONG_0040794A"
    %endif
    times 5 - ($ - %%insn_0040794a) db 0
    %%insn_0040794f:
    mov eax,[ebp-0x18] ; 0040794F 8B45E8
    %if ($ - %%insn_0040794f) > 3
        %error "LONG_0040794F"
    %endif
    times 3 - ($ - %%insn_0040794f) db 0
    %%insn_00407952:
    mov ecx,[ebp-0x18] ; 00407952 8B4DE8
    %if ($ - %%insn_00407952) > 3
        %error "LONG_00407952"
    %endif
    times 3 - ($ - %%insn_00407952) db 0
    %%insn_00407955:
    mov edx,[eax+0x5c] ; 00407955 8B505C
    %if ($ - %%insn_00407955) > 3
        %error "LONG_00407955"
    %endif
    times 3 - ($ - %%insn_00407955) db 0
    %%insn_00407958:
    cmp edx,[ecx+0x60] ; 00407958 3B5160
    %if ($ - %%insn_00407958) > 3
        %error "LONG_00407958"
    %endif
    times 3 - ($ - %%insn_00407958) db 0
    %%insn_0040795b:
    jl short 0x407964 ; 0040795B 7C07
    %if ($ - %%insn_0040795b) > 2
        %error "LONG_0040795B"
    %endif
    times 2 - ($ - %%insn_0040795b) db 0
    db 0x33, 0xC0 ; 0040795D 33C0 | xor eax,eax | encoding preserved
    %%insn_0040795f:
    jmp 0x407a72 ; 0040795F E90E010000
    %if ($ - %%insn_0040795f) > 5
        %error "LONG_0040795F"
    %endif
    times 5 - ($ - %%insn_0040795f) db 0
    %%insn_00407964:
    mov eax,[ebp-0x18] ; 00407964 8B45E8
    %if ($ - %%insn_00407964) > 3
        %error "LONG_00407964"
    %endif
    times 3 - ($ - %%insn_00407964) db 0
    %%insn_00407967:
    mov ecx,[eax+0x54] ; 00407967 8B4854
    %if ($ - %%insn_00407967) > 3
        %error "LONG_00407967"
    %endif
    times 3 - ($ - %%insn_00407967) db 0
    %%insn_0040796a:
    mov [ebp-0x14],ecx ; 0040796A 894DEC
    %if ($ - %%insn_0040796a) > 3
        %error "LONG_0040796A"
    %endif
    times 3 - ($ - %%insn_0040796a) db 0
    %%insn_0040796d:
    mov edx,[ebp-0x18] ; 0040796D 8B55E8
    %if ($ - %%insn_0040796d) > 3
        %error "LONG_0040796D"
    %endif
    times 3 - ($ - %%insn_0040796d) db 0
    %%insn_00407970:
    mov eax,[edx+0x5c] ; 00407970 8B425C
    %if ($ - %%insn_00407970) > 3
        %error "LONG_00407970"
    %endif
    times 3 - ($ - %%insn_00407970) db 0
    %%insn_00407973:
    mov [ebp-0x10],eax ; 00407973 8945F0
    %if ($ - %%insn_00407973) > 3
        %error "LONG_00407973"
    %endif
    times 3 - ($ - %%insn_00407973) db 0
    %%insn_00407976:
    mov ecx,[ebp-0x18] ; 00407976 8B4DE8
    %if ($ - %%insn_00407976) > 3
        %error "LONG_00407976"
    %endif
    times 3 - ($ - %%insn_00407976) db 0
    %%insn_00407979:
    mov edx,[ecx+0x58] ; 00407979 8B5158
    %if ($ - %%insn_00407979) > 3
        %error "LONG_00407979"
    %endif
    times 3 - ($ - %%insn_00407979) db 0
    %%insn_0040797c:
    mov [ebp-0xc],edx ; 0040797C 8955F4
    %if ($ - %%insn_0040797c) > 3
        %error "LONG_0040797C"
    %endif
    times 3 - ($ - %%insn_0040797c) db 0
    %%insn_0040797f:
    mov eax,[ebp-0x18] ; 0040797F 8B45E8
    %if ($ - %%insn_0040797f) > 3
        %error "LONG_0040797F"
    %endif
    times 3 - ($ - %%insn_0040797f) db 0
    %%insn_00407982:
    mov ecx,[eax+0x60] ; 00407982 8B4860
    %if ($ - %%insn_00407982) > 3
        %error "LONG_00407982"
    %endif
    times 3 - ($ - %%insn_00407982) db 0
    %%insn_00407985:
    mov [ebp-0x8],ecx ; 00407985 894DF8
    %if ($ - %%insn_00407985) > 3
        %error "LONG_00407985"
    %endif
    times 3 - ($ - %%insn_00407985) db 0
    %%insn_00407988:
    mov edx,0x1 ; 00407988 BA01000000
    %if ($ - %%insn_00407988) > 5
        %error "LONG_00407988"
    %endif
    times 5 - ($ - %%insn_00407988) db 0
    %%insn_0040798d:
    test edx,edx ; 0040798D 85D2
    %if ($ - %%insn_0040798d) > 2
        %error "LONG_0040798D"
    %endif
    times 2 - ($ - %%insn_0040798d) db 0
    %%insn_0040798f:
    jz 0x407a48 ; 0040798F 0F84B3000000
    %if ($ - %%insn_0040798f) > 6
        %error "LONG_0040798F"
    %endif
    times 6 - ($ - %%insn_0040798f) db 0
    %%insn_00407995:
    cmp dword [0x421428],0x0 ; 00407995 833D2814420000
    %if ($ - %%insn_00407995) > 7
        %error "LONG_00407995"
    %endif
    times 7 - ($ - %%insn_00407995) db 0
    %%insn_0040799c:
    jnz short 0x4079a7 ; 0040799C 7509
    %if ($ - %%insn_0040799c) > 2
        %error "LONG_0040799C"
    %endif
    times 2 - ($ - %%insn_0040799c) db 0
    %%insn_0040799e:
    mov dword [ebp-0x4],0x887601c2 ; 0040799E C745FCC2017688
    %if ($ - %%insn_0040799e) > 7
        %error "LONG_0040799E"
    %endif
    times 7 - ($ - %%insn_0040799e) db 0
    %%insn_004079a5:
    jmp short 0x4079d1 ; 004079A5 EB2A
    %if ($ - %%insn_004079a5) > 2
        %error "LONG_004079A5"
    %endif
    times 2 - ($ - %%insn_004079a5) db 0
    %%insn_004079a7:
    push dword 0x0 ; 004079A7 6A00
    %if ($ - %%insn_004079a7) > 2
        %error "LONG_004079A7"
    %endif
    times 2 - ($ - %%insn_004079a7) db 0
    %%insn_004079a9:
    push dword 0x200 ; 004079A9 6800020000
    %if ($ - %%insn_004079a9) > 5
        %error "LONG_004079A9"
    %endif
    times 5 - ($ - %%insn_004079a9) db 0
    %%insn_004079ae:
    lea eax,[ebp-0x14] ; 004079AE 8D45EC
    %if ($ - %%insn_004079ae) > 3
        %error "LONG_004079AE"
    %endif
    times 3 - ($ - %%insn_004079ae) db 0
    %%insn_004079b1:
    push eax ; 004079B1 50
    %if ($ - %%insn_004079b1) > 1
        %error "LONG_004079B1"
    %endif
    times 1 - ($ - %%insn_004079b1) db 0
    %%insn_004079b2:
    mov ecx,[0x421438] ; 004079B2 8B0D38144200
    %if ($ - %%insn_004079b2) > 6
        %error "LONG_004079B2"
    %endif
    times 6 - ($ - %%insn_004079b2) db 0
    %%insn_004079b8:
    push ecx ; 004079B8 51
    %if ($ - %%insn_004079b8) > 1
        %error "LONG_004079B8"
    %endif
    times 1 - ($ - %%insn_004079b8) db 0
    %%insn_004079b9:
    lea edx,[ebp-0x14] ; 004079B9 8D55EC
    %if ($ - %%insn_004079b9) > 3
        %error "LONG_004079B9"
    %endif
    times 3 - ($ - %%insn_004079b9) db 0
    %%insn_004079bc:
    push edx ; 004079BC 52
    %if ($ - %%insn_004079bc) > 1
        %error "LONG_004079BC"
    %endif
    times 1 - ($ - %%insn_004079bc) db 0
    %%insn_004079bd:
    mov eax,[0x421428] ; 004079BD A128144200
    %if ($ - %%insn_004079bd) > 5
        %error "LONG_004079BD"
    %endif
    times 5 - ($ - %%insn_004079bd) db 0
    %%insn_004079c2:
    push eax ; 004079C2 50
    %if ($ - %%insn_004079c2) > 1
        %error "LONG_004079C2"
    %endif
    times 1 - ($ - %%insn_004079c2) db 0
    %%insn_004079c3:
    mov ecx,[0x421428] ; 004079C3 8B0D28144200
    %if ($ - %%insn_004079c3) > 6
        %error "LONG_004079C3"
    %endif
    times 6 - ($ - %%insn_004079c3) db 0
    %%insn_004079c9:
    mov edx,[ecx] ; 004079C9 8B11
    %if ($ - %%insn_004079c9) > 2
        %error "LONG_004079C9"
    %endif
    times 2 - ($ - %%insn_004079c9) db 0
    %%insn_004079cb:
    call dword near [edx+0x14] ; 004079CB FF5214
    %if ($ - %%insn_004079cb) > 3
        %error "LONG_004079CB"
    %endif
    times 3 - ($ - %%insn_004079cb) db 0
    %%insn_004079ce:
    mov [ebp-0x4],eax ; 004079CE 8945FC
    %if ($ - %%insn_004079ce) > 3
        %error "LONG_004079CE"
    %endif
    times 3 - ($ - %%insn_004079ce) db 0
    %%insn_004079d1:
    cmp dword [ebp-0x4],0x0 ; 004079D1 837DFC00
    %if ($ - %%insn_004079d1) > 4
        %error "LONG_004079D1"
    %endif
    times 4 - ($ - %%insn_004079d1) db 0
    %%insn_004079d5:
    jnz short 0x4079d9 ; 004079D5 7502
    %if ($ - %%insn_004079d5) > 2
        %error "LONG_004079D5"
    %endif
    times 2 - ($ - %%insn_004079d5) db 0
    %%insn_004079d7:
    jmp short 0x407a48 ; 004079D7 EB6F
    %if ($ - %%insn_004079d7) > 2
        %error "LONG_004079D7"
    %endif
    times 2 - ($ - %%insn_004079d7) db 0
    %%insn_004079d9:
    cmp dword [ebp-0x4],0x887601c2 ; 004079D9 817DFCC2017688
    %if ($ - %%insn_004079d9) > 7
        %error "LONG_004079D9"
    %endif
    times 7 - ($ - %%insn_004079d9) db 0
    %%insn_004079e0:
    jnz short 0x407a25 ; 004079E0 7543
    %if ($ - %%insn_004079e0) > 2
        %error "LONG_004079E0"
    %endif
    times 2 - ($ - %%insn_004079e0) db 0
    %%insn_004079e2:
    mov eax,[0x421428] ; 004079E2 A128144200
    %if ($ - %%insn_004079e2) > 5
        %error "LONG_004079E2"
    %endif
    times 5 - ($ - %%insn_004079e2) db 0
    %%insn_004079e7:
    push eax ; 004079E7 50
    %if ($ - %%insn_004079e7) > 1
        %error "LONG_004079E7"
    %endif
    times 1 - ($ - %%insn_004079e7) db 0
    %%insn_004079e8:
    mov ecx,[0x421428] ; 004079E8 8B0D28144200
    %if ($ - %%insn_004079e8) > 6
        %error "LONG_004079E8"
    %endif
    times 6 - ($ - %%insn_004079e8) db 0
    %%insn_004079ee:
    mov edx,[ecx] ; 004079EE 8B11
    %if ($ - %%insn_004079ee) > 2
        %error "LONG_004079EE"
    %endif
    times 2 - ($ - %%insn_004079ee) db 0
    %%insn_004079f0:
    call dword near [edx+0x6c] ; 004079F0 FF526C
    %if ($ - %%insn_004079f0) > 3
        %error "LONG_004079F0"
    %endif
    times 3 - ($ - %%insn_004079f0) db 0
    %%insn_004079f3:
    mov [ebp-0x4],eax ; 004079F3 8945FC
    %if ($ - %%insn_004079f3) > 3
        %error "LONG_004079F3"
    %endif
    times 3 - ($ - %%insn_004079f3) db 0
    %%insn_004079f6:
    cmp dword [ebp-0x4],0x0 ; 004079F6 837DFC00
    %if ($ - %%insn_004079f6) > 4
        %error "LONG_004079F6"
    %endif
    times 4 - ($ - %%insn_004079f6) db 0
    %%insn_004079fa:
    jz short 0x407a09 ; 004079FA 740D
    %if ($ - %%insn_004079fa) > 2
        %error "LONG_004079FA"
    %endif
    times 2 - ($ - %%insn_004079fa) db 0
    %%insn_004079fc:
    push dword 0x41b938 ; 004079FC 6838B94100
    %if ($ - %%insn_004079fc) > 5
        %error "LONG_004079FC"
    %endif
    times 5 - ($ - %%insn_004079fc) db 0
    %%insn_00407a01:
    call 0x409760 ; 00407A01 E85A1D0000
    %if ($ - %%insn_00407a01) > 5
        %error "LONG_00407A01"
    %endif
    times 5 - ($ - %%insn_00407a01) db 0
    %%insn_00407a06:
    add esp,0x4 ; 00407A06 83C404
    %if ($ - %%insn_00407a06) > 3
        %error "LONG_00407A06"
    %endif
    times 3 - ($ - %%insn_00407a06) db 0
    %%insn_00407a09:
    mov dword [ebp-0x14],0x0 ; 00407A09 C745EC00000000
    %if ($ - %%insn_00407a09) > 7
        %error "LONG_00407A09"
    %endif
    times 7 - ($ - %%insn_00407a09) db 0
    %%insn_00407a10:
    mov dword [ebp-0x10],0x0 ; 00407A10 C745F000000000
    %if ($ - %%insn_00407a10) > 7
        %error "LONG_00407A10"
    %endif
    times 7 - ($ - %%insn_00407a10) db 0
    %%insn_00407a17:
    mov dword [ebp-0xc],0x280 ; 00407A17 C745F480020000
    %if ($ - %%insn_00407a17) > 7
        %error "LONG_00407A17"
    %endif
    times 7 - ($ - %%insn_00407a17) db 0
    %%insn_00407a1e:
    mov dword [ebp-0x8],0x1e0 ; 00407A1E C745F8E0010000
    %if ($ - %%insn_00407a1e) > 7
        %error "LONG_00407A1E"
    %endif
    times 7 - ($ - %%insn_00407a1e) db 0
    %%insn_00407a25:
    cmp dword [ebp-0x4],0x8876021c ; 00407A25 817DFC1C027688
    %if ($ - %%insn_00407a25) > 7
        %error "LONG_00407A25"
    %endif
    times 7 - ($ - %%insn_00407a25) db 0
    %%insn_00407a2c:
    jz short 0x407a35 ; 00407A2C 7407
    %if ($ - %%insn_00407a2c) > 2
        %error "LONG_00407A2C"
    %endif
    times 2 - ($ - %%insn_00407a2c) db 0
    %%insn_00407a2e:
    mov eax,0x7 ; 00407A2E B807000000
    %if ($ - %%insn_00407a2e) > 5
        %error "LONG_00407A2E"
    %endif
    times 5 - ($ - %%insn_00407a2e) db 0
    %%insn_00407a33:
    jmp short 0x407a72 ; 00407A33 EB3D
    %if ($ - %%insn_00407a33) > 2
        %error "LONG_00407A33"
    %endif
    times 2 - ($ - %%insn_00407a33) db 0
    %%insn_00407a35:
    cmp dword [ebp-0x4],0x887601ae ; 00407A35 817DFCAE017688
    %if ($ - %%insn_00407a35) > 7
        %error "LONG_00407A35"
    %endif
    times 7 - ($ - %%insn_00407a35) db 0
    %%insn_00407a3c:
    jnz short 0x407a43 ; 00407A3C 7505
    %if ($ - %%insn_00407a3c) > 2
        %error "LONG_00407A3C"
    %endif
    times 2 - ($ - %%insn_00407a3c) db 0
    %%insn_00407a3e:
    jmp 0x407988 ; 00407A3E E945FFFFFF
    %if ($ - %%insn_00407a3e) > 5
        %error "LONG_00407A3E"
    %endif
    times 5 - ($ - %%insn_00407a3e) db 0
    %%insn_00407a43:
    jmp 0x407988 ; 00407A43 E940FFFFFF
    %if ($ - %%insn_00407a43) > 5
        %error "LONG_00407A43"
    %endif
    times 5 - ($ - %%insn_00407a43) db 0
    %%insn_00407a48:
    mov eax,[ebp-0x18] ; 00407A48 8B45E8
    %if ($ - %%insn_00407a48) > 3
        %error "LONG_00407A48"
    %endif
    times 3 - ($ - %%insn_00407a48) db 0
    %%insn_00407a4b:
    mov dword [eax+0x54],0x280 ; 00407A4B C7405480020000
    %if ($ - %%insn_00407a4b) > 7
        %error "LONG_00407A4B"
    %endif
    times 7 - ($ - %%insn_00407a4b) db 0
    %%insn_00407a52:
    mov ecx,[ebp-0x18] ; 00407A52 8B4DE8
    %if ($ - %%insn_00407a52) > 3
        %error "LONG_00407A52"
    %endif
    times 3 - ($ - %%insn_00407a52) db 0
    %%insn_00407a55:
    mov dword [ecx+0x5c],0x1e0 ; 00407A55 C7415CE0010000
    %if ($ - %%insn_00407a55) > 7
        %error "LONG_00407A55"
    %endif
    times 7 - ($ - %%insn_00407a55) db 0
    %%insn_00407a5c:
    mov edx,[ebp-0x18] ; 00407A5C 8B55E8
    %if ($ - %%insn_00407a5c) > 3
        %error "LONG_00407A5C"
    %endif
    times 3 - ($ - %%insn_00407a5c) db 0
    %%insn_00407a5f:
    mov dword [edx+0x58],0x0 ; 00407A5F C7425800000000
    %if ($ - %%insn_00407a5f) > 7
        %error "LONG_00407A5F"
    %endif
    times 7 - ($ - %%insn_00407a5f) db 0
    %%insn_00407a66:
    mov eax,[ebp-0x18] ; 00407A66 8B45E8
    %if ($ - %%insn_00407a66) > 3
        %error "LONG_00407A66"
    %endif
    times 3 - ($ - %%insn_00407a66) db 0
    %%insn_00407a69:
    mov dword [eax+0x60],0x0 ; 00407A69 C7406000000000
    %if ($ - %%insn_00407a69) > 7
        %error "LONG_00407A69"
    %endif
    times 7 - ($ - %%insn_00407a69) db 0
    db 0x33, 0xC0 ; 00407A70 33C0 | xor eax,eax | encoding preserved
    db 0x8B, 0xE5 ; 00407A72 8BE5 | mov esp,ebp | encoding preserved
    %%insn_00407a74:
    pop ebp ; 00407A74 5D
    %if ($ - %%insn_00407a74) > 1
        %error "LONG_00407A74"
    %endif
    times 1 - ($ - %%insn_00407a74) db 0
    %%insn_00407a75:
    ret ; 00407A75 C3
    %if ($ - %%insn_00407a75) > 1
        %error "LONG_00407A75"
    %endif
    times 1 - ($ - %%insn_00407a75) db 0
    %if ($ - %%fragment_start) != 325
        %error "function fragment size drift: 00407931"
    %endif
%endmacro
