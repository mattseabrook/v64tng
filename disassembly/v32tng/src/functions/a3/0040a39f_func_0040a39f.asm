; PE virtual entry 0040A39F
; Ghidra working symbol: FUN_0040a39f
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040a39f_part_00 0
    %%fragment_start:
func_0040a39f:
    %%insn_0040a39f:
    push ebp ; 0040A39F 55
    %if ($ - %%insn_0040a39f) > 1
        %error "LONG_0040A39F"
    %endif
    times 1 - ($ - %%insn_0040a39f) db 0
    db 0x8B, 0xEC ; 0040A3A0 8BEC | mov ebp,esp | encoding preserved
    %%insn_0040a3a2:
    mov eax,[0x420a04] ; 0040A3A2 A1040A4200
    %if ($ - %%insn_0040a3a2) > 5
        %error "LONG_0040A3A2"
    %endif
    times 5 - ($ - %%insn_0040a3a2) db 0
    %%insn_0040a3a7:
    add eax,0x1 ; 0040A3A7 83C001
    %if ($ - %%insn_0040a3a7) > 3
        %error "LONG_0040A3A7"
    %endif
    times 3 - ($ - %%insn_0040a3a7) db 0
    %%insn_0040a3aa:
    cmp [ebp+0x8],eax ; 0040A3AA 394508
    %if ($ - %%insn_0040a3aa) > 3
        %error "LONG_0040A3AA"
    %endif
    times 3 - ($ - %%insn_0040a3aa) db 0
    %%insn_0040a3ad:
    jng short 0x40a3bc ; 0040A3AD 7E0D
    %if ($ - %%insn_0040a3ad) > 2
        %error "LONG_0040A3AD"
    %endif
    times 2 - ($ - %%insn_0040a3ad) db 0
    %%insn_0040a3af:
    push dword 0x41bd08 ; 0040A3AF 6808BD4100
    %if ($ - %%insn_0040a3af) > 5
        %error "LONG_0040A3AF"
    %endif
    times 5 - ($ - %%insn_0040a3af) db 0
    %%insn_0040a3b4:
    call 0x409760 ; 0040A3B4 E8A7F3FFFF
    %if ($ - %%insn_0040a3b4) > 5
        %error "LONG_0040A3B4"
    %endif
    times 5 - ($ - %%insn_0040a3b4) db 0
    %%insn_0040a3b9:
    add esp,0x4 ; 0040A3B9 83C404
    %if ($ - %%insn_0040a3b9) > 3
        %error "LONG_0040A3B9"
    %endif
    times 3 - ($ - %%insn_0040a3b9) db 0
    %%insn_0040a3bc:
    mov ecx,[ebp+0x8] ; 0040A3BC 8B4D08
    %if ($ - %%insn_0040a3bc) > 3
        %error "LONG_0040A3BC"
    %endif
    times 3 - ($ - %%insn_0040a3bc) db 0
    %%insn_0040a3bf:
    sub ecx,0x1 ; 0040A3BF 83E901
    %if ($ - %%insn_0040a3bf) > 3
        %error "LONG_0040A3BF"
    %endif
    times 3 - ($ - %%insn_0040a3bf) db 0
    %%insn_0040a3c2:
    imul ecx,ecx,0x14 ; 0040A3C2 6BC914
    %if ($ - %%insn_0040a3c2) > 3
        %error "LONG_0040A3C2"
    %endif
    times 3 - ($ - %%insn_0040a3c2) db 0
    %%insn_0040a3c5:
    mov edx,[ecx+0x41f5fc] ; 0040A3C5 8B91FCF54100
    %if ($ - %%insn_0040a3c5) > 6
        %error "LONG_0040A3C5"
    %endif
    times 6 - ($ - %%insn_0040a3c5) db 0
    %%insn_0040a3cb:
    add edx,0x1 ; 0040A3CB 83C201
    %if ($ - %%insn_0040a3cb) > 3
        %error "LONG_0040A3CB"
    %endif
    times 3 - ($ - %%insn_0040a3cb) db 0
    %%insn_0040a3ce:
    mov eax,[ebp+0x8] ; 0040A3CE 8B4508
    %if ($ - %%insn_0040a3ce) > 3
        %error "LONG_0040A3CE"
    %endif
    times 3 - ($ - %%insn_0040a3ce) db 0
    %%insn_0040a3d1:
    sub eax,0x1 ; 0040A3D1 83E801
    %if ($ - %%insn_0040a3d1) > 3
        %error "LONG_0040A3D1"
    %endif
    times 3 - ($ - %%insn_0040a3d1) db 0
    %%insn_0040a3d4:
    imul eax,eax,0x14 ; 0040A3D4 6BC014
    %if ($ - %%insn_0040a3d4) > 3
        %error "LONG_0040A3D4"
    %endif
    times 3 - ($ - %%insn_0040a3d4) db 0
    %%insn_0040a3d7:
    mov [eax+0x41f5fc],edx ; 0040A3D7 8990FCF54100
    %if ($ - %%insn_0040a3d7) > 6
        %error "LONG_0040A3D7"
    %endif
    times 6 - ($ - %%insn_0040a3d7) db 0
    %%insn_0040a3dd:
    mov ecx,[ebp+0x8] ; 0040A3DD 8B4D08
    %if ($ - %%insn_0040a3dd) > 3
        %error "LONG_0040A3DD"
    %endif
    times 3 - ($ - %%insn_0040a3dd) db 0
    %%insn_0040a3e0:
    sub ecx,0x1 ; 0040A3E0 83E901
    %if ($ - %%insn_0040a3e0) > 3
        %error "LONG_0040A3E0"
    %endif
    times 3 - ($ - %%insn_0040a3e0) db 0
    %%insn_0040a3e3:
    imul ecx,ecx,0x14 ; 0040A3E3 6BC914
    %if ($ - %%insn_0040a3e3) > 3
        %error "LONG_0040A3E3"
    %endif
    times 3 - ($ - %%insn_0040a3e3) db 0
    %%insn_0040a3e6:
    mov eax,[ecx+0x41f5f8] ; 0040A3E6 8B81F8F54100
    %if ($ - %%insn_0040a3e6) > 6
        %error "LONG_0040A3E6"
    %endif
    times 6 - ($ - %%insn_0040a3e6) db 0
    %%insn_0040a3ec:
    pop ebp ; 0040A3EC 5D
    %if ($ - %%insn_0040a3ec) > 1
        %error "LONG_0040A3EC"
    %endif
    times 1 - ($ - %%insn_0040a3ec) db 0
    %%insn_0040a3ed:
    ret ; 0040A3ED C3
    %if ($ - %%insn_0040a3ed) > 1
        %error "LONG_0040A3ED"
    %endif
    times 1 - ($ - %%insn_0040a3ed) db 0
    %if ($ - %%fragment_start) != 79
        %error "function fragment size drift: 0040A39F"
    %endif
%endmacro
