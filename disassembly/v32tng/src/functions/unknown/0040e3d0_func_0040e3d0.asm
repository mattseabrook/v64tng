; PE virtual entry 0040E3D0
; Ghidra working symbol: FUN_0040e3d0
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040e3d0_part_00 0
    %%fragment_start:
func_0040e3d0:
    %%insn_0040e3d0:
    mov eax,[esp+0x4] ; 0040E3D0 8B442404
    %if ($ - %%insn_0040e3d0) > 4
        %error "LONG_0040E3D0"
    %endif
    times 4 - ($ - %%insn_0040e3d0) db 0
    %%insn_0040e3d4:
    mov ecx,[esp+0x8] ; 0040E3D4 8B4C2408
    %if ($ - %%insn_0040e3d4) > 4
        %error "LONG_0040E3D4"
    %endif
    times 4 - ($ - %%insn_0040e3d4) db 0
    %%insn_0040e3d8:
    push esi ; 0040E3D8 56
    %if ($ - %%insn_0040e3d8) > 1
        %error "LONG_0040E3D8"
    %endif
    times 1 - ($ - %%insn_0040e3d8) db 0
    db 0x33, 0xD2 ; 0040E3D9 33D2 | xor edx,edx | encoding preserved
    %%insn_0040e3db:
    sub ecx,[eax+0x10] ; 0040E3DB 2B4810
    %if ($ - %%insn_0040e3db) > 3
        %error "LONG_0040E3DB"
    %endif
    times 3 - ($ - %%insn_0040e3db) db 0
    %%insn_0040e3de:
    sar ecx,byte 0xc ; 0040E3DE C1F90C
    %if ($ - %%insn_0040e3de) > 3
        %error "LONG_0040E3DE"
    %endif
    times 3 - ($ - %%insn_0040e3de) db 0
    %%insn_0040e3e1:
    mov esi,[eax+ecx*8+0x18] ; 0040E3E1 8B74C818
    %if ($ - %%insn_0040e3e1) > 4
        %error "LONG_0040E3E1"
    %endif
    times 4 - ($ - %%insn_0040e3e1) db 0
    %%insn_0040e3e5:
    lea eax,[eax+ecx*8+0x18] ; 0040E3E5 8D44C818
    %if ($ - %%insn_0040e3e5) > 4
        %error "LONG_0040E3E5"
    %endif
    times 4 - ($ - %%insn_0040e3e5) db 0
    %%insn_0040e3e9:
    mov ecx,[esp+0x10] ; 0040E3E9 8B4C2410
    %if ($ - %%insn_0040e3e9) > 4
        %error "LONG_0040E3E9"
    %endif
    times 4 - ($ - %%insn_0040e3e9) db 0
    %%insn_0040e3ed:
    mov dl,[ecx] ; 0040E3ED 8A11
    %if ($ - %%insn_0040e3ed) > 2
        %error "LONG_0040E3ED"
    %endif
    times 2 - ($ - %%insn_0040e3ed) db 0
    db 0x03, 0xF2 ; 0040E3EF 03F2 | add esi,edx | encoding preserved
    %%insn_0040e3f1:
    mov [eax],esi ; 0040E3F1 8930
    %if ($ - %%insn_0040e3f1) > 2
        %error "LONG_0040E3F1"
    %endif
    times 2 - ($ - %%insn_0040e3f1) db 0
    %%insn_0040e3f3:
    mov byte [ecx],0x0 ; 0040E3F3 C60100
    %if ($ - %%insn_0040e3f3) > 3
        %error "LONG_0040E3F3"
    %endif
    times 3 - ($ - %%insn_0040e3f3) db 0
    %%insn_0040e3f6:
    mov ecx,[eax] ; 0040E3F6 8B08
    %if ($ - %%insn_0040e3f6) > 2
        %error "LONG_0040E3F6"
    %endif
    times 2 - ($ - %%insn_0040e3f6) db 0
    %%insn_0040e3f8:
    mov dword [eax+0x4],0xf1 ; 0040E3F8 C74004F1000000
    %if ($ - %%insn_0040e3f8) > 7
        %error "LONG_0040E3F8"
    %endif
    times 7 - ($ - %%insn_0040e3f8) db 0
    %%insn_0040e3ff:
    cmp ecx,0xf0 ; 0040E3FF 81F9F0000000
    %if ($ - %%insn_0040e3ff) > 6
        %error "LONG_0040E3FF"
    %endif
    times 6 - ($ - %%insn_0040e3ff) db 0
    %%insn_0040e405:
    jnz short 0x40e421 ; 0040E405 751A
    %if ($ - %%insn_0040e405) > 2
        %error "LONG_0040E405"
    %endif
    times 2 - ($ - %%insn_0040e405) db 0
    %%insn_0040e407:
    mov eax,[0x420f08] ; 0040E407 A1080F4200
    %if ($ - %%insn_0040e407) > 5
        %error "LONG_0040E407"
    %endif
    times 5 - ($ - %%insn_0040e407) db 0
    %%insn_0040e40c:
    inc eax ; 0040E40C 40
    %if ($ - %%insn_0040e40c) > 1
        %error "LONG_0040E40C"
    %endif
    times 1 - ($ - %%insn_0040e40c) db 0
    %%insn_0040e40d:
    cmp eax,0x20 ; 0040E40D 83F820
    %if ($ - %%insn_0040e40d) > 3
        %error "LONG_0040E40D"
    %endif
    times 3 - ($ - %%insn_0040e40d) db 0
    %%insn_0040e410:
    mov [0x420f08],eax ; 0040E410 A3080F4200
    %if ($ - %%insn_0040e410) > 5
        %error "LONG_0040E410"
    %endif
    times 5 - ($ - %%insn_0040e410) db 0
    %%insn_0040e415:
    jnz short 0x40e421 ; 0040E415 750A
    %if ($ - %%insn_0040e415) > 2
        %error "LONG_0040E415"
    %endif
    times 2 - ($ - %%insn_0040e415) db 0
    %%insn_0040e417:
    push dword 0x10 ; 0040E417 6A10
    %if ($ - %%insn_0040e417) > 2
        %error "LONG_0040E417"
    %endif
    times 2 - ($ - %%insn_0040e417) db 0
    %%insn_0040e419:
    call 0x40e2a0 ; 0040E419 E882FEFFFF
    %if ($ - %%insn_0040e419) > 5
        %error "LONG_0040E419"
    %endif
    times 5 - ($ - %%insn_0040e419) db 0
    %%insn_0040e41e:
    add esp,0x4 ; 0040E41E 83C404
    %if ($ - %%insn_0040e41e) > 3
        %error "LONG_0040E41E"
    %endif
    times 3 - ($ - %%insn_0040e41e) db 0
    %%insn_0040e421:
    pop esi ; 0040E421 5E
    %if ($ - %%insn_0040e421) > 1
        %error "LONG_0040E421"
    %endif
    times 1 - ($ - %%insn_0040e421) db 0
    %%insn_0040e422:
    ret ; 0040E422 C3
    %if ($ - %%insn_0040e422) > 1
        %error "LONG_0040E422"
    %endif
    times 1 - ($ - %%insn_0040e422) db 0
    %if ($ - %%fragment_start) != 83
        %error "function fragment size drift: 0040E3D0"
    %endif
%endmacro
