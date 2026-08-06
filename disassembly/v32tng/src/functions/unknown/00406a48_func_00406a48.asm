; PE virtual entry 00406A48
; Ghidra working symbol: FUN_00406a48
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00406a48_part_00 0
    %%fragment_start:
func_00406a48:
    %%insn_00406a48:
    push ebp ; 00406A48 55
    %if ($ - %%insn_00406a48) > 1
        %error "LONG_00406A48"
    %endif
    times 1 - ($ - %%insn_00406a48) db 0
    db 0x8B, 0xEC ; 00406A49 8BEC | mov ebp,esp | encoding preserved
    %%insn_00406a4b:
    sub esp,0x8 ; 00406A4B 83EC08
    %if ($ - %%insn_00406a4b) > 3
        %error "LONG_00406A4B"
    %endif
    times 3 - ($ - %%insn_00406a4b) db 0
    db 0x33, 0xC0 ; 00406A4E 33C0 | xor eax,eax | encoding preserved
    %%insn_00406a50:
    mov al,[0x41f4bc] ; 00406A50 A0BCF44100
    %if ($ - %%insn_00406a50) > 5
        %error "LONG_00406A50"
    %endif
    times 5 - ($ - %%insn_00406a50) db 0
    %%insn_00406a55:
    cmp eax,0x3f ; 00406A55 83F83F
    %if ($ - %%insn_00406a55) > 3
        %error "LONG_00406A55"
    %endif
    times 3 - ($ - %%insn_00406a55) db 0
    %%insn_00406a58:
    jnz short 0x406a63 ; 00406A58 7509
    %if ($ - %%insn_00406a58) > 2
        %error "LONG_00406A58"
    %endif
    times 2 - ($ - %%insn_00406a58) db 0
    %%insn_00406a5a:
    mov dword [ebp-0x8],0x0 ; 00406A5A C745F800000000
    %if ($ - %%insn_00406a5a) > 7
        %error "LONG_00406A5A"
    %endif
    times 7 - ($ - %%insn_00406a5a) db 0
    %%insn_00406a61:
    jmp short 0x406a71 ; 00406A61 EB0E
    %if ($ - %%insn_00406a61) > 2
        %error "LONG_00406A61"
    %endif
    times 2 - ($ - %%insn_00406a61) db 0
    db 0x33, 0xC9 ; 00406A63 33C9 | xor ecx,ecx | encoding preserved
    %%insn_00406a65:
    mov cl,[0x41f4bc] ; 00406A65 8A0DBCF44100
    %if ($ - %%insn_00406a65) > 6
        %error "LONG_00406A65"
    %endif
    times 6 - ($ - %%insn_00406a65) db 0
    %%insn_00406a6b:
    add ecx,0x1 ; 00406A6B 83C101
    %if ($ - %%insn_00406a6b) > 3
        %error "LONG_00406A6B"
    %endif
    times 3 - ($ - %%insn_00406a6b) db 0
    %%insn_00406a6e:
    mov [ebp-0x8],ecx ; 00406A6E 894DF8
    %if ($ - %%insn_00406a6e) > 3
        %error "LONG_00406A6E"
    %endif
    times 3 - ($ - %%insn_00406a6e) db 0
    %%insn_00406a71:
    mov dl,[ebp-0x8] ; 00406A71 8A55F8
    %if ($ - %%insn_00406a71) > 3
        %error "LONG_00406A71"
    %endif
    times 3 - ($ - %%insn_00406a71) db 0
    %%insn_00406a74:
    mov [ebp-0x4],dl ; 00406A74 8855FC
    %if ($ - %%insn_00406a74) > 3
        %error "LONG_00406A74"
    %endif
    times 3 - ($ - %%insn_00406a74) db 0
    %%insn_00406a77:
    mov eax,[ebp-0x4] ; 00406A77 8B45FC
    %if ($ - %%insn_00406a77) > 3
        %error "LONG_00406A77"
    %endif
    times 3 - ($ - %%insn_00406a77) db 0
    %%insn_00406a7a:
    and eax,0xff ; 00406A7A 25FF000000
    %if ($ - %%insn_00406a7a) > 5
        %error "LONG_00406A7A"
    %endif
    times 5 - ($ - %%insn_00406a7a) db 0
    db 0x33, 0xC9 ; 00406A7F 33C9 | xor ecx,ecx | encoding preserved
    %%insn_00406a81:
    mov cl,[0x41f4b8] ; 00406A81 8A0DB8F44100
    %if ($ - %%insn_00406a81) > 6
        %error "LONG_00406A81"
    %endif
    times 6 - ($ - %%insn_00406a81) db 0
    db 0x3B, 0xC1 ; 00406A87 3BC1 | cmp eax,ecx | encoding preserved
    %%insn_00406a89:
    jz short 0x406aa9 ; 00406A89 741E
    %if ($ - %%insn_00406a89) > 2
        %error "LONG_00406A89"
    %endif
    times 2 - ($ - %%insn_00406a89) db 0
    db 0x33, 0xD2 ; 00406A8B 33D2 | xor edx,edx | encoding preserved
    %%insn_00406a8d:
    mov dl,[0x41f4bc] ; 00406A8D 8A15BCF44100
    %if ($ - %%insn_00406a8d) > 6
        %error "LONG_00406A8D"
    %endif
    times 6 - ($ - %%insn_00406a8d) db 0
    %%insn_00406a93:
    mov al,[ebp+0x8] ; 00406A93 8A4508
    %if ($ - %%insn_00406a93) > 3
        %error "LONG_00406A93"
    %endif
    times 3 - ($ - %%insn_00406a93) db 0
    %%insn_00406a96:
    mov [edx+0x41f478],al ; 00406A96 888278F44100
    %if ($ - %%insn_00406a96) > 6
        %error "LONG_00406A96"
    %endif
    times 6 - ($ - %%insn_00406a96) db 0
    %%insn_00406a9c:
    mov cl,[ebp-0x4] ; 00406A9C 8A4DFC
    %if ($ - %%insn_00406a9c) > 3
        %error "LONG_00406A9C"
    %endif
    times 3 - ($ - %%insn_00406a9c) db 0
    %%insn_00406a9f:
    mov [0x41f4bc],cl ; 00406A9F 880DBCF44100
    %if ($ - %%insn_00406a9f) > 6
        %error "LONG_00406A9F"
    %endif
    times 6 - ($ - %%insn_00406a9f) db 0
    db 0x32, 0xC0 ; 00406AA5 32C0 | xor al,al | encoding preserved
    %%insn_00406aa7:
    jmp short 0x406aab ; 00406AA7 EB02
    %if ($ - %%insn_00406aa7) > 2
        %error "LONG_00406AA7"
    %endif
    times 2 - ($ - %%insn_00406aa7) db 0
    %%insn_00406aa9:
    or al,0xff ; 00406AA9 0CFF
    %if ($ - %%insn_00406aa9) > 2
        %error "LONG_00406AA9"
    %endif
    times 2 - ($ - %%insn_00406aa9) db 0
    db 0x8B, 0xE5 ; 00406AAB 8BE5 | mov esp,ebp | encoding preserved
    %%insn_00406aad:
    pop ebp ; 00406AAD 5D
    %if ($ - %%insn_00406aad) > 1
        %error "LONG_00406AAD"
    %endif
    times 1 - ($ - %%insn_00406aad) db 0
    %%insn_00406aae:
    ret ; 00406AAE C3
    %if ($ - %%insn_00406aae) > 1
        %error "LONG_00406AAE"
    %endif
    times 1 - ($ - %%insn_00406aae) db 0
    %if ($ - %%fragment_start) != 103
        %error "function fragment size drift: 00406A48"
    %endif
%endmacro
