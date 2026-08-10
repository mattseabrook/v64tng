; PE virtual entry 00401D3A
; Ghidra working symbol: FUN_00401d3a
; Verified packed GRV video ref resolver: selects archive/RL entry and stages its GJD stream.
; Generated losslessly; preserve byte identity after edits.

%macro emit_select_grv_video_resource_part_00 0
    %%fragment_start:
select_grv_video_resource:
    %%insn_00401d3a:
    push ebp ; 00401D3A 55
    %if ($ - %%insn_00401d3a) > 1
        %error "LONG_00401D3A"
    %endif
    times 1 - ($ - %%insn_00401d3a) db 0
    db 0x8B, 0xEC ; 00401D3B 8BEC | mov ebp,esp | encoding preserved
    %%insn_00401d3d:
    sub esp,0x110 ; 00401D3D 81EC10010000
    %if ($ - %%insn_00401d3d) > 6
        %error "LONG_00401D3D"
    %endif
    times 6 - ($ - %%insn_00401d3d) db 0
    %%insn_00401d43:
    mov eax,[ebp+0x8] ; 00401D43 8B4508
    %if ($ - %%insn_00401d43) > 3
        %error "LONG_00401D43"
    %endif
    times 3 - ($ - %%insn_00401d43) db 0
    %%insn_00401d46:
    sar eax,byte 0xa ; 00401D46 C1F80A
    %if ($ - %%insn_00401d46) > 3
        %error "LONG_00401D46"
    %endif
    times 3 - ($ - %%insn_00401d46) db 0
    %%insn_00401d49:
    mov [ebp-0xc],eax ; 00401D49 8945F4
    %if ($ - %%insn_00401d49) > 3
        %error "LONG_00401D49"
    %endif
    times 3 - ($ - %%insn_00401d49) db 0
    %%insn_00401d4c:
    mov ecx,[ebp+0x8] ; 00401D4C 8B4D08
    %if ($ - %%insn_00401d4c) > 3
        %error "LONG_00401D4C"
    %endif
    times 3 - ($ - %%insn_00401d4c) db 0
    %%insn_00401d4f:
    and ecx,0x3ff ; 00401D4F 81E1FF030000
    %if ($ - %%insn_00401d4f) > 6
        %error "LONG_00401D4F"
    %endif
    times 6 - ($ - %%insn_00401d4f) db 0
    %%insn_00401d55:
    mov [ebp-0x8],ecx ; 00401D55 894DF8
    %if ($ - %%insn_00401d55) > 3
        %error "LONG_00401D55"
    %endif
    times 3 - ($ - %%insn_00401d55) db 0
    %%insn_00401d58:
    mov edx,[ebp-0x8] ; 00401D58 8B55F8
    %if ($ - %%insn_00401d58) > 3
        %error "LONG_00401D58"
    %endif
    times 3 - ($ - %%insn_00401d58) db 0
    %%insn_00401d5b:
    imul edx,edx,0x14 ; 00401D5B 6BD214
    %if ($ - %%insn_00401d5b) > 3
        %error "LONG_00401D5B"
    %endif
    times 3 - ($ - %%insn_00401d5b) db 0
    %%insn_00401d5e:
    mov eax,[ebp-0xc] ; 00401D5E 8B45F4
    %if ($ - %%insn_00401d5e) > 3
        %error "LONG_00401D5E"
    %endif
    times 3 - ($ - %%insn_00401d5e) db 0
    %%insn_00401d61:
    mov ecx,[eax*8+0x4223a4] ; 00401D61 8B0CC5A4234200
    %if ($ - %%insn_00401d61) > 7
        %error "LONG_00401D61"
    %endif
    times 7 - ($ - %%insn_00401d61) db 0
    db 0x03, 0xCA ; 00401D68 03CA | add ecx,edx | encoding preserved
    %%insn_00401d6a:
    mov [ebp-0x4],ecx ; 00401D6A 894DFC
    %if ($ - %%insn_00401d6a) > 3
        %error "LONG_00401D6A"
    %endif
    times 3 - ($ - %%insn_00401d6a) db 0
    %%insn_00401d6d:
    mov edx,[ebp-0xc] ; 00401D6D 8B55F4
    %if ($ - %%insn_00401d6d) > 3
        %error "LONG_00401D6D"
    %endif
    times 3 - ($ - %%insn_00401d6d) db 0
    %%insn_00401d70:
    mov eax,[edx*4+0x41b038] ; 00401D70 8B049538B04100
    %if ($ - %%insn_00401d70) > 7
        %error "LONG_00401D70"
    %endif
    times 7 - ($ - %%insn_00401d70) db 0
    %%insn_00401d77:
    push eax ; 00401D77 50
    %if ($ - %%insn_00401d77) > 1
        %error "LONG_00401D77"
    %endif
    times 1 - ($ - %%insn_00401d77) db 0
    %%insn_00401d78:
    push dword 0x41b13c ; 00401D78 683CB14100
    %if ($ - %%insn_00401d78) > 5
        %error "LONG_00401D78"
    %endif
    times 5 - ($ - %%insn_00401d78) db 0
    %%insn_00401d7d:
    lea ecx,[ebp-0x10c] ; 00401D7D 8D8DF4FEFFFF
    %if ($ - %%insn_00401d7d) > 6
        %error "LONG_00401D7D"
    %endif
    times 6 - ($ - %%insn_00401d7d) db 0
    %%insn_00401d83:
    push ecx ; 00401D83 51
    %if ($ - %%insn_00401d83) > 1
        %error "LONG_00401D83"
    %endif
    times 1 - ($ - %%insn_00401d83) db 0
    %%insn_00401d84:
    call 0x40cd50 ; 00401D84 E8C7AF0000
    %if ($ - %%insn_00401d84) > 5
        %error "LONG_00401D84"
    %endif
    times 5 - ($ - %%insn_00401d84) db 0
    %%insn_00401d89:
    add esp,0xc ; 00401D89 83C40C
    %if ($ - %%insn_00401d89) > 3
        %error "LONG_00401D89"
    %endif
    times 3 - ($ - %%insn_00401d89) db 0
    %%insn_00401d8c:
    cmp dword [ebp-0xc],0x7 ; 00401D8C 837DF407
    %if ($ - %%insn_00401d8c) > 4
        %error "LONG_00401D8C"
    %endif
    times 4 - ($ - %%insn_00401d8c) db 0
    %%insn_00401d90:
    jnz short 0x401da6 ; 00401D90 7514
    %if ($ - %%insn_00401d90) > 2
        %error "LONG_00401D90"
    %endif
    times 2 - ($ - %%insn_00401d90) db 0
    %%insn_00401d92:
    push dword 0x41b14c ; 00401D92 684CB14100
    %if ($ - %%insn_00401d92) > 5
        %error "LONG_00401D92"
    %endif
    times 5 - ($ - %%insn_00401d92) db 0
    %%insn_00401d97:
    lea edx,[ebp-0x10c] ; 00401D97 8D95F4FEFFFF
    %if ($ - %%insn_00401d97) > 6
        %error "LONG_00401D97"
    %endif
    times 6 - ($ - %%insn_00401d97) db 0
    %%insn_00401d9d:
    push edx ; 00401D9D 52
    %if ($ - %%insn_00401d9d) > 1
        %error "LONG_00401D9D"
    %endif
    times 1 - ($ - %%insn_00401d9d) db 0
    %%insn_00401d9e:
    call 0x40cd50 ; 00401D9E E8ADAF0000
    %if ($ - %%insn_00401d9e) > 5
        %error "LONG_00401D9E"
    %endif
    times 5 - ($ - %%insn_00401d9e) db 0
    %%insn_00401da3:
    add esp,0x8 ; 00401DA3 83C408
    %if ($ - %%insn_00401da3) > 3
        %error "LONG_00401DA3"
    %endif
    times 3 - ($ - %%insn_00401da3) db 0
    %%insn_00401da6:
    mov eax,[ebp-0xc] ; 00401DA6 8B45F4
    %if ($ - %%insn_00401da6) > 3
        %error "LONG_00401DA6"
    %endif
    times 3 - ($ - %%insn_00401da6) db 0
    %%insn_00401da9:
    cmp eax,[0x41f2e8] ; 00401DA9 3B05E8F24100
    %if ($ - %%insn_00401da9) > 6
        %error "LONG_00401DA9"
    %endif
    times 6 - ($ - %%insn_00401da9) db 0
    %%insn_00401daf:
    jz short 0x401e24 ; 00401DAF 7473
    %if ($ - %%insn_00401daf) > 2
        %error "LONG_00401DAF"
    %endif
    times 2 - ($ - %%insn_00401daf) db 0
    %%insn_00401db1:
    cmp dword [0x41f2e8],0xffffffffffffffff ; 00401DB1 833DE8F24100FF
    %if ($ - %%insn_00401db1) > 7
        %error "LONG_00401DB1"
    %endif
    times 7 - ($ - %%insn_00401db1) db 0
    %%insn_00401db8:
    jz short 0x401dd3 ; 00401DB8 7419
    %if ($ - %%insn_00401db8) > 2
        %error "LONG_00401DB8"
    %endif
    times 2 - ($ - %%insn_00401db8) db 0
    %%insn_00401dba:
    push dword 0x0 ; 00401DBA 6A00
    %if ($ - %%insn_00401dba) > 2
        %error "LONG_00401DBA"
    %endif
    times 2 - ($ - %%insn_00401dba) db 0
    %%insn_00401dbc:
    mov ecx,[0x41f2f8] ; 00401DBC 8B0DF8F24100
    %if ($ - %%insn_00401dbc) > 6
        %error "LONG_00401DBC"
    %endif
    times 6 - ($ - %%insn_00401dbc) db 0
    %%insn_00401dc2:
    push ecx ; 00401DC2 51
    %if ($ - %%insn_00401dc2) > 1
        %error "LONG_00401DC2"
    %endif
    times 1 - ($ - %%insn_00401dc2) db 0
    %%insn_00401dc3:
    call dword near [0x424590] ; 00401DC3 FF1590454200
    %if ($ - %%insn_00401dc3) > 6
        %error "LONG_00401DC3"
    %endif
    times 6 - ($ - %%insn_00401dc3) db 0
    %%insn_00401dc9:
    mov dword [0x41f2e8],0xffffffff ; 00401DC9 C705E8F24100FFFFFFFF
    %if ($ - %%insn_00401dc9) > 10
        %error "LONG_00401DC9"
    %endif
    times 10 - ($ - %%insn_00401dc9) db 0
    %%insn_00401dd3:
    mov edx,[ebp-0xc] ; 00401DD3 8B55F4
    %if ($ - %%insn_00401dd3) > 3
        %error "LONG_00401DD3"
    %endif
    times 3 - ($ - %%insn_00401dd3) db 0
    %%insn_00401dd6:
    mov [0x41f2e8],edx ; 00401DD6 8915E8F24100
    %if ($ - %%insn_00401dd6) > 6
        %error "LONG_00401DD6"
    %endif
    times 6 - ($ - %%insn_00401dd6) db 0
    %%insn_00401ddc:
    cmp dword [ebp-0xc],0x7 ; 00401DDC 837DF407
    %if ($ - %%insn_00401ddc) > 4
        %error "LONG_00401DDC"
    %endif
    times 4 - ($ - %%insn_00401ddc) db 0
    %%insn_00401de0:
    jnz short 0x401dfb ; 00401DE0 7519
    %if ($ - %%insn_00401de0) > 2
        %error "LONG_00401DE0"
    %endif
    times 2 - ($ - %%insn_00401de0) db 0
    %%insn_00401de2:
    push dword 0x10000 ; 00401DE2 6800000100
    %if ($ - %%insn_00401de2) > 5
        %error "LONG_00401DE2"
    %endif
    times 5 - ($ - %%insn_00401de2) db 0
    %%insn_00401de7:
    push dword 0x0 ; 00401DE7 6A00
    %if ($ - %%insn_00401de7) > 2
        %error "LONG_00401DE7"
    %endif
    times 2 - ($ - %%insn_00401de7) db 0
    %%insn_00401de9:
    push dword 0x41b158 ; 00401DE9 6858B14100
    %if ($ - %%insn_00401de9) > 5
        %error "LONG_00401DE9"
    %endif
    times 5 - ($ - %%insn_00401de9) db 0
    %%insn_00401dee:
    call dword near [0x424598] ; 00401DEE FF1598454200
    %if ($ - %%insn_00401dee) > 6
        %error "LONG_00401DEE"
    %endif
    times 6 - ($ - %%insn_00401dee) db 0
    %%insn_00401df4:
    mov [0x41f2f8],eax ; 00401DF4 A3F8F24100
    %if ($ - %%insn_00401df4) > 5
        %error "LONG_00401DF4"
    %endif
    times 5 - ($ - %%insn_00401df4) db 0
    %%insn_00401df9:
    jmp short 0x401e0f ; 00401DF9 EB14
    %if ($ - %%insn_00401df9) > 2
        %error "LONG_00401DF9"
    %endif
    times 2 - ($ - %%insn_00401df9) db 0
    %%insn_00401dfb:
    lea eax,[ebp-0x10c] ; 00401DFB 8D85F4FEFFFF
    %if ($ - %%insn_00401dfb) > 6
        %error "LONG_00401DFB"
    %endif
    times 6 - ($ - %%insn_00401dfb) db 0
    %%insn_00401e01:
    push eax ; 00401E01 50
    %if ($ - %%insn_00401e01) > 1
        %error "LONG_00401E01"
    %endif
    times 1 - ($ - %%insn_00401e01) db 0
    %%insn_00401e02:
    call open_first_drive_letter_path ; 00401E02 E8ACFDFFFF
    %if ($ - %%insn_00401e02) > 5
        %error "LONG_00401E02"
    %endif
    times 5 - ($ - %%insn_00401e02) db 0
    %%insn_00401e07:
    add esp,0x4 ; 00401E07 83C404
    %if ($ - %%insn_00401e07) > 3
        %error "LONG_00401E07"
    %endif
    times 3 - ($ - %%insn_00401e07) db 0
    %%insn_00401e0a:
    mov [0x41f2f8],eax ; 00401E0A A3F8F24100
    %if ($ - %%insn_00401e0a) > 5
        %error "LONG_00401E0A"
    %endif
    times 5 - ($ - %%insn_00401e0a) db 0
    %%insn_00401e0f:
    cmp dword [0x41f2f8],0x0 ; 00401E0F 833DF8F2410000
    %if ($ - %%insn_00401e0f) > 7
        %error "LONG_00401E0F"
    %endif
    times 7 - ($ - %%insn_00401e0f) db 0
    %%insn_00401e16:
    jnz short 0x401e24 ; 00401E16 750C
    %if ($ - %%insn_00401e16) > 2
        %error "LONG_00401E16"
    %endif
    times 2 - ($ - %%insn_00401e16) db 0
    %%insn_00401e18:
    push dword 0x1 ; 00401E18 6A01
    %if ($ - %%insn_00401e18) > 2
        %error "LONG_00401E18"
    %endif
    times 2 - ($ - %%insn_00401e18) db 0
    %%insn_00401e1a:
    push dword 0x10 ; 00401E1A 6A10
    %if ($ - %%insn_00401e1a) > 2
        %error "LONG_00401E1A"
    %endif
    times 2 - ($ - %%insn_00401e1a) db 0
    %%insn_00401e1c:
    call 0x409691 ; 00401E1C E870780000
    %if ($ - %%insn_00401e1c) > 5
        %error "LONG_00401E1C"
    %endif
    times 5 - ($ - %%insn_00401e1c) db 0
    %%insn_00401e21:
    add esp,0x8 ; 00401E21 83C408
    %if ($ - %%insn_00401e21) > 3
        %error "LONG_00401E21"
    %endif
    times 3 - ($ - %%insn_00401e21) db 0
    %%insn_00401e24:
    mov ecx,[ebp-0x4] ; 00401E24 8B4DFC
    %if ($ - %%insn_00401e24) > 3
        %error "LONG_00401E24"
    %endif
    times 3 - ($ - %%insn_00401e24) db 0
    %%insn_00401e27:
    mov edx,[ecx+0x10] ; 00401E27 8B5110
    %if ($ - %%insn_00401e27) > 3
        %error "LONG_00401E27"
    %endif
    times 3 - ($ - %%insn_00401e27) db 0
    %%insn_00401e2a:
    mov [0x42238c],edx ; 00401E2A 89158C234200
    %if ($ - %%insn_00401e2a) > 6
        %error "LONG_00401E2A"
    %endif
    times 6 - ($ - %%insn_00401e2a) db 0
    %%insn_00401e30:
    mov eax,[0x422448] ; 00401E30 A148244200
    %if ($ - %%insn_00401e30) > 5
        %error "LONG_00401E30"
    %endif
    times 5 - ($ - %%insn_00401e30) db 0
    %%insn_00401e35:
    add eax,[ebp+0x8] ; 00401E35 034508
    %if ($ - %%insn_00401e35) > 3
        %error "LONG_00401E35"
    %endif
    times 3 - ($ - %%insn_00401e35) db 0
    db 0x33, 0xC9 ; 00401E38 33C9 | xor ecx,ecx | encoding preserved
    %%insn_00401e3a:
    mov cl,[eax] ; 00401E3A 8A08
    %if ($ - %%insn_00401e3a) > 2
        %error "LONG_00401E3A"
    %endif
    times 2 - ($ - %%insn_00401e3a) db 0
    %%insn_00401e3c:
    test ecx,ecx ; 00401E3C 85C9
    %if ($ - %%insn_00401e3c) > 2
        %error "LONG_00401E3C"
    %endif
    times 2 - ($ - %%insn_00401e3c) db 0
    %%insn_00401e3e:
    jnz short 0x401ebb ; 00401E3E 757B
    %if ($ - %%insn_00401e3e) > 2
        %error "LONG_00401E3E"
    %endif
    times 2 - ($ - %%insn_00401e3e) db 0
    %%insn_00401e40:
    push dword 0x0 ; 00401E40 6A00
    %if ($ - %%insn_00401e40) > 2
        %error "LONG_00401E40"
    %endif
    times 2 - ($ - %%insn_00401e40) db 0
    %%insn_00401e42:
    mov edx,[ebp-0x4] ; 00401E42 8B55FC
    %if ($ - %%insn_00401e42) > 3
        %error "LONG_00401E42"
    %endif
    times 3 - ($ - %%insn_00401e42) db 0
    %%insn_00401e45:
    mov eax,[edx+0xc] ; 00401E45 8B420C
    %if ($ - %%insn_00401e45) > 3
        %error "LONG_00401E45"
    %endif
    times 3 - ($ - %%insn_00401e45) db 0
    %%insn_00401e48:
    push eax ; 00401E48 50
    %if ($ - %%insn_00401e48) > 1
        %error "LONG_00401E48"
    %endif
    times 1 - ($ - %%insn_00401e48) db 0
    %%insn_00401e49:
    mov ecx,[0x41f2f8] ; 00401E49 8B0DF8F24100
    %if ($ - %%insn_00401e49) > 6
        %error "LONG_00401E49"
    %endif
    times 6 - ($ - %%insn_00401e49) db 0
    %%insn_00401e4f:
    push ecx ; 00401E4F 51
    %if ($ - %%insn_00401e4f) > 1
        %error "LONG_00401E4F"
    %endif
    times 1 - ($ - %%insn_00401e4f) db 0
    %%insn_00401e50:
    call dword near [0x42459c] ; 00401E50 FF159C454200
    %if ($ - %%insn_00401e50) > 6
        %error "LONG_00401E50"
    %endif
    times 6 - ($ - %%insn_00401e50) db 0
    %%insn_00401e56:
    cmp dword [0x42238c],0x10000 ; 00401E56 813D8C23420000000100
    %if ($ - %%insn_00401e56) > 10
        %error "LONG_00401E56"
    %endif
    times 10 - ($ - %%insn_00401e56) db 0
    %%insn_00401e60:
    jc short 0x401e75 ; 00401E60 7213
    %if ($ - %%insn_00401e60) > 2
        %error "LONG_00401E60"
    %endif
    times 2 - ($ - %%insn_00401e60) db 0
    db 0x33, 0xD2 ; 00401E62 33D2 | xor edx,edx | encoding preserved
    %%insn_00401e64:
    mov dx,[0x41f2ac] ; 00401E64 668B15ACF24100
    %if ($ - %%insn_00401e64) > 7
        %error "LONG_00401E64"
    %endif
    times 7 - ($ - %%insn_00401e64) db 0
    %%insn_00401e6b:
    and edx,0x182 ; 00401E6B 81E282010000
    %if ($ - %%insn_00401e6b) > 6
        %error "LONG_00401E6B"
    %endif
    times 6 - ($ - %%insn_00401e6b) db 0
    %%insn_00401e71:
    test edx,edx ; 00401E71 85D2
    %if ($ - %%insn_00401e71) > 2
        %error "LONG_00401E71"
    %endif
    times 2 - ($ - %%insn_00401e71) db 0
    %%insn_00401e73:
    jz short 0x401ebb ; 00401E73 7446
    %if ($ - %%insn_00401e73) > 2
        %error "LONG_00401E73"
    %endif
    times 2 - ($ - %%insn_00401e73) db 0
    %%insn_00401e75:
    mov eax,[ebp-0x4] ; 00401E75 8B45FC
    %if ($ - %%insn_00401e75) > 3
        %error "LONG_00401E75"
    %endif
    times 3 - ($ - %%insn_00401e75) db 0
    %%insn_00401e78:
    mov ecx,[eax+0xc] ; 00401E78 8B480C
    %if ($ - %%insn_00401e78) > 3
        %error "LONG_00401E78"
    %endif
    times 3 - ($ - %%insn_00401e78) db 0
    %%insn_00401e7b:
    push ecx ; 00401E7B 51
    %if ($ - %%insn_00401e7b) > 1
        %error "LONG_00401E7B"
    %endif
    times 1 - ($ - %%insn_00401e7b) db 0
    %%insn_00401e7c:
    mov edx,[ebp+0x8] ; 00401E7C 8B5508
    %if ($ - %%insn_00401e7c) > 3
        %error "LONG_00401E7C"
    %endif
    times 3 - ($ - %%insn_00401e7c) db 0
    %%insn_00401e7f:
    push edx ; 00401E7F 52
    %if ($ - %%insn_00401e7f) > 1
        %error "LONG_00401E7F"
    %endif
    times 1 - ($ - %%insn_00401e7f) db 0
    %%insn_00401e80:
    mov eax,[0x41f2f8] ; 00401E80 A1F8F24100
    %if ($ - %%insn_00401e80) > 5
        %error "LONG_00401E80"
    %endif
    times 5 - ($ - %%insn_00401e80) db 0
    %%insn_00401e85:
    push eax ; 00401E85 50
    %if ($ - %%insn_00401e85) > 1
        %error "LONG_00401E85"
    %endif
    times 1 - ($ - %%insn_00401e85) db 0
    %%insn_00401e86:
    call 0x409f1a ; 00401E86 E88F800000
    %if ($ - %%insn_00401e86) > 5
        %error "LONG_00401E86"
    %endif
    times 5 - ($ - %%insn_00401e86) db 0
    %%insn_00401e8b:
    add esp,0xc ; 00401E8B 83C40C
    %if ($ - %%insn_00401e8b) > 3
        %error "LONG_00401E8B"
    %endif
    times 3 - ($ - %%insn_00401e8b) db 0
    %%insn_00401e8e:
    mov [ebp-0x110],eax ; 00401E8E 8985F0FEFFFF
    %if ($ - %%insn_00401e8e) > 6
        %error "LONG_00401E8E"
    %endif
    times 6 - ($ - %%insn_00401e8e) db 0
    %%insn_00401e94:
    cmp dword [ebp-0x110],0x0 ; 00401E94 83BDF0FEFFFF00
    %if ($ - %%insn_00401e94) > 7
        %error "LONG_00401E94"
    %endif
    times 7 - ($ - %%insn_00401e94) db 0
    %%insn_00401e9b:
    jng short 0x401eb0 ; 00401E9B 7E13
    %if ($ - %%insn_00401e9b) > 2
        %error "LONG_00401E9B"
    %endif
    times 2 - ($ - %%insn_00401e9b) db 0
    %%insn_00401e9d:
    mov ecx,[0x422448] ; 00401E9D 8B0D48244200
    %if ($ - %%insn_00401e9d) > 6
        %error "LONG_00401E9D"
    %endif
    times 6 - ($ - %%insn_00401e9d) db 0
    %%insn_00401ea3:
    add ecx,[ebp+0x8] ; 00401EA3 034D08
    %if ($ - %%insn_00401ea3) > 3
        %error "LONG_00401EA3"
    %endif
    times 3 - ($ - %%insn_00401ea3) db 0
    %%insn_00401ea6:
    mov dl,[ebp-0x110] ; 00401EA6 8A95F0FEFFFF
    %if ($ - %%insn_00401ea6) > 6
        %error "LONG_00401EA6"
    %endif
    times 6 - ($ - %%insn_00401ea6) db 0
    %%insn_00401eac:
    mov [ecx],dl ; 00401EAC 8811
    %if ($ - %%insn_00401eac) > 2
        %error "LONG_00401EAC"
    %endif
    times 2 - ($ - %%insn_00401eac) db 0
    %%insn_00401eae:
    jmp short 0x401ebb ; 00401EAE EB0B
    %if ($ - %%insn_00401eae) > 2
        %error "LONG_00401EAE"
    %endif
    times 2 - ($ - %%insn_00401eae) db 0
    %%insn_00401eb0:
    mov eax,[0x422448] ; 00401EB0 A148244200
    %if ($ - %%insn_00401eb0) > 5
        %error "LONG_00401EB0"
    %endif
    times 5 - ($ - %%insn_00401eb0) db 0
    %%insn_00401eb5:
    add eax,[ebp+0x8] ; 00401EB5 034508
    %if ($ - %%insn_00401eb5) > 3
        %error "LONG_00401EB5"
    %endif
    times 3 - ($ - %%insn_00401eb5) db 0
    %%insn_00401eb8:
    mov byte [eax],0x0 ; 00401EB8 C60000
    %if ($ - %%insn_00401eb8) > 3
        %error "LONG_00401EB8"
    %endif
    times 3 - ($ - %%insn_00401eb8) db 0
    %%insn_00401ebb:
    movsx ecx,word [0x41f338] ; 00401EBB 0FBF0D38F34100
    %if ($ - %%insn_00401ebb) > 7
        %error "LONG_00401EBB"
    %endif
    times 7 - ($ - %%insn_00401ebb) db 0
    %%insn_00401ec2:
    test ecx,ecx ; 00401EC2 85C9
    %if ($ - %%insn_00401ec2) > 2
        %error "LONG_00401EC2"
    %endif
    times 2 - ($ - %%insn_00401ec2) db 0
    %%insn_00401ec4:
    jz short 0x401ee7 ; 00401EC4 7421
    %if ($ - %%insn_00401ec4) > 2
        %error "LONG_00401EC4"
    %endif
    times 2 - ($ - %%insn_00401ec4) db 0
    db 0x33, 0xD2 ; 00401EC6 33D2 | xor edx,edx | encoding preserved
    %%insn_00401ec8:
    mov dx,[0x41f2ac] ; 00401EC8 668B15ACF24100
    %if ($ - %%insn_00401ec8) > 7
        %error "LONG_00401EC8"
    %endif
    times 7 - ($ - %%insn_00401ec8) db 0
    %%insn_00401ecf:
    and edx,0x102 ; 00401ECF 81E202010000
    %if ($ - %%insn_00401ecf) > 6
        %error "LONG_00401ECF"
    %endif
    times 6 - ($ - %%insn_00401ecf) db 0
    %%insn_00401ed5:
    test edx,edx ; 00401ED5 85D2
    %if ($ - %%insn_00401ed5) > 2
        %error "LONG_00401ED5"
    %endif
    times 2 - ($ - %%insn_00401ed5) db 0
    %%insn_00401ed7:
    jnz short 0x401ee7 ; 00401ED7 750E
    %if ($ - %%insn_00401ed7) > 2
        %error "LONG_00401ED7"
    %endif
    times 2 - ($ - %%insn_00401ed7) db 0
    %%insn_00401ed9:
    mov ax,[0x41f2ac] ; 00401ED9 66A1ACF24100
    %if ($ - %%insn_00401ed9) > 6
        %error "LONG_00401ED9"
    %endif
    times 6 - ($ - %%insn_00401ed9) db 0
    %%insn_00401edf:
    or al,0x80 ; 00401EDF 0C80
    %if ($ - %%insn_00401edf) > 2
        %error "LONG_00401EDF"
    %endif
    times 2 - ($ - %%insn_00401edf) db 0
    %%insn_00401ee1:
    mov [0x41f2ac],ax ; 00401EE1 66A3ACF24100
    %if ($ - %%insn_00401ee1) > 6
        %error "LONG_00401EE1"
    %endif
    times 6 - ($ - %%insn_00401ee1) db 0
    %%insn_00401ee7:
    mov ecx,[0x422448] ; 00401EE7 8B0D48244200
    %if ($ - %%insn_00401ee7) > 6
        %error "LONG_00401EE7"
    %endif
    times 6 - ($ - %%insn_00401ee7) db 0
    %%insn_00401eed:
    add ecx,[ebp+0x8] ; 00401EED 034D08
    %if ($ - %%insn_00401eed) > 3
        %error "LONG_00401EED"
    %endif
    times 3 - ($ - %%insn_00401eed) db 0
    %%insn_00401ef0:
    movzx dx,byte [ecx] ; 00401EF0 660FB611
    %if ($ - %%insn_00401ef0) > 4
        %error "LONG_00401EF0"
    %endif
    times 4 - ($ - %%insn_00401ef0) db 0
    %%insn_00401ef4:
    push edx ; 00401EF4 52
    %if ($ - %%insn_00401ef4) > 1
        %error "LONG_00401EF4"
    %endif
    times 1 - ($ - %%insn_00401ef4) db 0
    %%insn_00401ef5:
    mov eax,[0x41f2d0] ; 00401EF5 A1D0F24100
    %if ($ - %%insn_00401ef5) > 5
        %error "LONG_00401EF5"
    %endif
    times 5 - ($ - %%insn_00401ef5) db 0
    %%insn_00401efa:
    push eax ; 00401EFA 50
    %if ($ - %%insn_00401efa) > 1
        %error "LONG_00401EFA"
    %endif
    times 1 - ($ - %%insn_00401efa) db 0
    %%insn_00401efb:
    mov ecx,[0x41f2c8] ; 00401EFB 8B0DC8F24100
    %if ($ - %%insn_00401efb) > 6
        %error "LONG_00401EFB"
    %endif
    times 6 - ($ - %%insn_00401efb) db 0
    %%insn_00401f01:
    push ecx ; 00401F01 51
    %if ($ - %%insn_00401f01) > 1
        %error "LONG_00401F01"
    %endif
    times 1 - ($ - %%insn_00401f01) db 0
    %%insn_00401f02:
    mov dx,[0x41f2ac] ; 00401F02 668B15ACF24100
    %if ($ - %%insn_00401f02) > 7
        %error "LONG_00401F02"
    %endif
    times 7 - ($ - %%insn_00401f02) db 0
    %%insn_00401f09:
    push edx ; 00401F09 52
    %if ($ - %%insn_00401f09) > 1
        %error "LONG_00401F09"
    %endif
    times 1 - ($ - %%insn_00401f09) db 0
    %%insn_00401f0a:
    mov eax,[0x41f2f8] ; 00401F0A A1F8F24100
    %if ($ - %%insn_00401f0a) > 5
        %error "LONG_00401F0A"
    %endif
    times 5 - ($ - %%insn_00401f0a) db 0
    %%insn_00401f0f:
    push eax ; 00401F0F 50
    %if ($ - %%insn_00401f0f) > 1
        %error "LONG_00401F0F"
    %endif
    times 1 - ($ - %%insn_00401f0f) db 0
    %%insn_00401f10:
    call 0x408d24 ; 00401F10 E80F6E0000
    %if ($ - %%insn_00401f10) > 5
        %error "LONG_00401F10"
    %endif
    times 5 - ($ - %%insn_00401f10) db 0
    %%insn_00401f15:
    add esp,0x14 ; 00401F15 83C414
    %if ($ - %%insn_00401f15) > 3
        %error "LONG_00401F15"
    %endif
    times 3 - ($ - %%insn_00401f15) db 0
    db 0x33, 0xC9 ; 00401F18 33C9 | xor ecx,ecx | encoding preserved
    %%insn_00401f1a:
    mov cx,[0x41f2ac] ; 00401F1A 668B0DACF24100
    %if ($ - %%insn_00401f1a) > 7
        %error "LONG_00401F1A"
    %endif
    times 7 - ($ - %%insn_00401f1a) db 0
    %%insn_00401f21:
    and ecx,0x2 ; 00401F21 83E102
    %if ($ - %%insn_00401f21) > 3
        %error "LONG_00401F21"
    %endif
    times 3 - ($ - %%insn_00401f21) db 0
    %%insn_00401f24:
    test ecx,ecx ; 00401F24 85C9
    %if ($ - %%insn_00401f24) > 2
        %error "LONG_00401F24"
    %endif
    times 2 - ($ - %%insn_00401f24) db 0
    %%insn_00401f26:
    jz short 0x401f33 ; 00401F26 740B
    %if ($ - %%insn_00401f26) > 2
        %error "LONG_00401F26"
    %endif
    times 2 - ($ - %%insn_00401f26) db 0
    %%insn_00401f28:
    mov word [0x41f338],0x1 ; 00401F28 66C70538F341000100
    %if ($ - %%insn_00401f28) > 9
        %error "LONG_00401F28"
    %endif
    times 9 - ($ - %%insn_00401f28) db 0
    %%insn_00401f31:
    jmp short 0x401f52 ; 00401F31 EB1F
    %if ($ - %%insn_00401f31) > 2
        %error "LONG_00401F31"
    %endif
    times 2 - ($ - %%insn_00401f31) db 0
    %%insn_00401f33:
    mov word [0x41f338],0x0 ; 00401F33 66C70538F341000000
    %if ($ - %%insn_00401f33) > 9
        %error "LONG_00401F33"
    %endif
    times 9 - ($ - %%insn_00401f33) db 0
    %%insn_00401f3c:
    mov dword [0x41f2d0],0x0 ; 00401F3C C705D0F2410000000000
    %if ($ - %%insn_00401f3c) > 10
        %error "LONG_00401F3C"
    %endif
    times 10 - ($ - %%insn_00401f3c) db 0
    %%insn_00401f46:
    mov edx,[0x41f2d0] ; 00401F46 8B15D0F24100
    %if ($ - %%insn_00401f46) > 6
        %error "LONG_00401F46"
    %endif
    times 6 - ($ - %%insn_00401f46) db 0
    %%insn_00401f4c:
    mov [0x41f2c8],edx ; 00401F4C 8915C8F24100
    %if ($ - %%insn_00401f4c) > 6
        %error "LONG_00401F4C"
    %endif
    times 6 - ($ - %%insn_00401f4c) db 0
    %%insn_00401f52:
    mov word [0x41f2ac],0x0 ; 00401F52 66C705ACF241000000
    %if ($ - %%insn_00401f52) > 9
        %error "LONG_00401F52"
    %endif
    times 9 - ($ - %%insn_00401f52) db 0
    db 0x8B, 0xE5 ; 00401F5B 8BE5 | mov esp,ebp | encoding preserved
    %%insn_00401f5d:
    pop ebp ; 00401F5D 5D
    %if ($ - %%insn_00401f5d) > 1
        %error "LONG_00401F5D"
    %endif
    times 1 - ($ - %%insn_00401f5d) db 0
    %%insn_00401f5e:
    ret ; 00401F5E C3
    %if ($ - %%insn_00401f5e) > 1
        %error "LONG_00401F5E"
    %endif
    times 1 - ($ - %%insn_00401f5e) db 0
    %if ($ - %%fragment_start) != 549
        %error "function fragment size drift: 00401D3A"
    %endif
%endmacro
