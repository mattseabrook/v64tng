; PE virtual entry 004069E5
; Ghidra working symbol: FUN_004069e5
; Verified 64-byte circular keyboard-buffer dequeue; returns FFh when empty.
; Generated losslessly; preserve byte identity after edits.

%macro emit_dequeue_key_input_part_00 0
    %%fragment_start:
dequeue_key_input:
    %%insn_004069e5:
    push ebp ; 004069E5 55
    %if ($ - %%insn_004069e5) > 1
        %error "LONG_004069E5"
    %endif
    times 1 - ($ - %%insn_004069e5) db 0
    db 0x8B, 0xEC ; 004069E6 8BEC | mov ebp,esp | encoding preserved
    %%insn_004069e8:
    sub esp,0x8 ; 004069E8 83EC08
    %if ($ - %%insn_004069e8) > 3
        %error "LONG_004069E8"
    %endif
    times 3 - ($ - %%insn_004069e8) db 0
    db 0x33, 0xC0 ; 004069EB 33C0 | xor eax,eax | encoding preserved
    %%insn_004069ed:
    mov al,[0x41f4bc] ; 004069ED A0BCF44100
    %if ($ - %%insn_004069ed) > 5
        %error "LONG_004069ED"
    %endif
    times 5 - ($ - %%insn_004069ed) db 0
    db 0x33, 0xC9 ; 004069F2 33C9 | xor ecx,ecx | encoding preserved
    %%insn_004069f4:
    mov cl,[0x41f4b8] ; 004069F4 8A0DB8F44100
    %if ($ - %%insn_004069f4) > 6
        %error "LONG_004069F4"
    %endif
    times 6 - ($ - %%insn_004069f4) db 0
    db 0x3B, 0xC1 ; 004069FA 3BC1 | cmp eax,ecx | encoding preserved
    %%insn_004069fc:
    jnz short 0x406a04 ; 004069FC 7506
    %if ($ - %%insn_004069fc) > 2
        %error "LONG_004069FC"
    %endif
    times 2 - ($ - %%insn_004069fc) db 0
    %%insn_004069fe:
    mov byte [ebp-0x4],0xff ; 004069FE C645FCFF
    %if ($ - %%insn_004069fe) > 4
        %error "LONG_004069FE"
    %endif
    times 4 - ($ - %%insn_004069fe) db 0
    %%insn_00406a02:
    jmp short 0x406a41 ; 00406A02 EB3D
    %if ($ - %%insn_00406a02) > 2
        %error "LONG_00406A02"
    %endif
    times 2 - ($ - %%insn_00406a02) db 0
    db 0x33, 0xD2 ; 00406A04 33D2 | xor edx,edx | encoding preserved
    %%insn_00406a06:
    mov dl,[0x41f4b8] ; 00406A06 8A15B8F44100
    %if ($ - %%insn_00406a06) > 6
        %error "LONG_00406A06"
    %endif
    times 6 - ($ - %%insn_00406a06) db 0
    %%insn_00406a0c:
    mov al,[edx+0x41f478] ; 00406A0C 8A8278F44100
    %if ($ - %%insn_00406a0c) > 6
        %error "LONG_00406A0C"
    %endif
    times 6 - ($ - %%insn_00406a0c) db 0
    %%insn_00406a12:
    mov [ebp-0x4],al ; 00406A12 8845FC
    %if ($ - %%insn_00406a12) > 3
        %error "LONG_00406A12"
    %endif
    times 3 - ($ - %%insn_00406a12) db 0
    db 0x33, 0xC9 ; 00406A15 33C9 | xor ecx,ecx | encoding preserved
    %%insn_00406a17:
    mov cl,[0x41f4b8] ; 00406A17 8A0DB8F44100
    %if ($ - %%insn_00406a17) > 6
        %error "LONG_00406A17"
    %endif
    times 6 - ($ - %%insn_00406a17) db 0
    %%insn_00406a1d:
    cmp ecx,0x3f ; 00406A1D 83F93F
    %if ($ - %%insn_00406a1d) > 3
        %error "LONG_00406A1D"
    %endif
    times 3 - ($ - %%insn_00406a1d) db 0
    %%insn_00406a20:
    jnz short 0x406a2b ; 00406A20 7509
    %if ($ - %%insn_00406a20) > 2
        %error "LONG_00406A20"
    %endif
    times 2 - ($ - %%insn_00406a20) db 0
    %%insn_00406a22:
    mov dword [ebp-0x8],0x0 ; 00406A22 C745F800000000
    %if ($ - %%insn_00406a22) > 7
        %error "LONG_00406A22"
    %endif
    times 7 - ($ - %%insn_00406a22) db 0
    %%insn_00406a29:
    jmp short 0x406a39 ; 00406A29 EB0E
    %if ($ - %%insn_00406a29) > 2
        %error "LONG_00406A29"
    %endif
    times 2 - ($ - %%insn_00406a29) db 0
    db 0x33, 0xD2 ; 00406A2B 33D2 | xor edx,edx | encoding preserved
    %%insn_00406a2d:
    mov dl,[0x41f4b8] ; 00406A2D 8A15B8F44100
    %if ($ - %%insn_00406a2d) > 6
        %error "LONG_00406A2D"
    %endif
    times 6 - ($ - %%insn_00406a2d) db 0
    %%insn_00406a33:
    add edx,0x1 ; 00406A33 83C201
    %if ($ - %%insn_00406a33) > 3
        %error "LONG_00406A33"
    %endif
    times 3 - ($ - %%insn_00406a33) db 0
    %%insn_00406a36:
    mov [ebp-0x8],edx ; 00406A36 8955F8
    %if ($ - %%insn_00406a36) > 3
        %error "LONG_00406A36"
    %endif
    times 3 - ($ - %%insn_00406a36) db 0
    %%insn_00406a39:
    mov al,[ebp-0x8] ; 00406A39 8A45F8
    %if ($ - %%insn_00406a39) > 3
        %error "LONG_00406A39"
    %endif
    times 3 - ($ - %%insn_00406a39) db 0
    %%insn_00406a3c:
    mov [0x41f4b8],al ; 00406A3C A2B8F44100
    %if ($ - %%insn_00406a3c) > 5
        %error "LONG_00406A3C"
    %endif
    times 5 - ($ - %%insn_00406a3c) db 0
    %%insn_00406a41:
    mov al,[ebp-0x4] ; 00406A41 8A45FC
    %if ($ - %%insn_00406a41) > 3
        %error "LONG_00406A41"
    %endif
    times 3 - ($ - %%insn_00406a41) db 0
    db 0x8B, 0xE5 ; 00406A44 8BE5 | mov esp,ebp | encoding preserved
    %%insn_00406a46:
    pop ebp ; 00406A46 5D
    %if ($ - %%insn_00406a46) > 1
        %error "LONG_00406A46"
    %endif
    times 1 - ($ - %%insn_00406a46) db 0
    %%insn_00406a47:
    ret ; 00406A47 C3
    %if ($ - %%insn_00406a47) > 1
        %error "LONG_00406A47"
    %endif
    times 1 - ($ - %%insn_00406a47) db 0
    %if ($ - %%fragment_start) != 99
        %error "function fragment size drift: 004069E5"
    %endif
%endmacro
