; PE virtual entry 00402172
; Ghidra working symbol: FUN_00402172
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00402172_part_00 0
    %%fragment_start:
func_00402172:
    %%insn_00402172:
    push ebp ; 00402172 55
    %if ($ - %%insn_00402172) > 1
        %error "LONG_00402172"
    %endif
    times 1 - ($ - %%insn_00402172) db 0
    db 0x8B, 0xEC ; 00402173 8BEC | mov ebp,esp | encoding preserved
    %%insn_00402175:
    sub esp,0x8 ; 00402175 83EC08
    %if ($ - %%insn_00402175) > 3
        %error "LONG_00402175"
    %endif
    times 3 - ($ - %%insn_00402175) db 0
    %%insn_00402178:
    mov byte [ebp-0x4],0xff ; 00402178 C645FCFF
    %if ($ - %%insn_00402178) > 4
        %error "LONG_00402178"
    %endif
    times 4 - ($ - %%insn_00402178) db 0
    %%insn_0040217c:
    push dword 0x41b184 ; 0040217C 6884B14100
    %if ($ - %%insn_0040217c) > 5
        %error "LONG_0040217C"
    %endif
    times 5 - ($ - %%insn_0040217c) db 0
    %%insn_00402181:
    call 0x401bb3 ; 00402181 E82DFAFFFF
    %if ($ - %%insn_00402181) > 5
        %error "LONG_00402181"
    %endif
    times 5 - ($ - %%insn_00402181) db 0
    %%insn_00402186:
    add esp,0x4 ; 00402186 83C404
    %if ($ - %%insn_00402186) > 3
        %error "LONG_00402186"
    %endif
    times 3 - ($ - %%insn_00402186) db 0
    %%insn_00402189:
    mov [ebp-0x8],eax ; 00402189 8945F8
    %if ($ - %%insn_00402189) > 3
        %error "LONG_00402189"
    %endif
    times 3 - ($ - %%insn_00402189) db 0
    %%insn_0040218c:
    cmp dword [ebp-0x8],0x0 ; 0040218C 837DF800
    %if ($ - %%insn_0040218c) > 4
        %error "LONG_0040218C"
    %endif
    times 4 - ($ - %%insn_0040218c) db 0
    %%insn_00402190:
    jz short 0x4021a4 ; 00402190 7412
    %if ($ - %%insn_00402190) > 2
        %error "LONG_00402190"
    %endif
    times 2 - ($ - %%insn_00402190) db 0
    %%insn_00402192:
    mov byte [ebp-0x4],0x1 ; 00402192 C645FC01
    %if ($ - %%insn_00402192) > 4
        %error "LONG_00402192"
    %endif
    times 4 - ($ - %%insn_00402192) db 0
    %%insn_00402196:
    push dword 0x0 ; 00402196 6A00
    %if ($ - %%insn_00402196) > 2
        %error "LONG_00402196"
    %endif
    times 2 - ($ - %%insn_00402196) db 0
    %%insn_00402198:
    mov eax,[ebp-0x8] ; 00402198 8B45F8
    %if ($ - %%insn_00402198) > 3
        %error "LONG_00402198"
    %endif
    times 3 - ($ - %%insn_00402198) db 0
    %%insn_0040219b:
    push eax ; 0040219B 50
    %if ($ - %%insn_0040219b) > 1
        %error "LONG_0040219B"
    %endif
    times 1 - ($ - %%insn_0040219b) db 0
    %%insn_0040219c:
    call dword near [0x424590] ; 0040219C FF1590454200
    %if ($ - %%insn_0040219c) > 6
        %error "LONG_0040219C"
    %endif
    times 6 - ($ - %%insn_0040219c) db 0
    %%insn_004021a2:
    jmp short 0x4021ca ; 004021A2 EB26
    %if ($ - %%insn_004021a2) > 2
        %error "LONG_004021A2"
    %endif
    times 2 - ($ - %%insn_004021a2) db 0
    %%insn_004021a4:
    push dword 0x41b194 ; 004021A4 6894B14100
    %if ($ - %%insn_004021a4) > 5
        %error "LONG_004021A4"
    %endif
    times 5 - ($ - %%insn_004021a4) db 0
    %%insn_004021a9:
    call 0x401bb3 ; 004021A9 E805FAFFFF
    %if ($ - %%insn_004021a9) > 5
        %error "LONG_004021A9"
    %endif
    times 5 - ($ - %%insn_004021a9) db 0
    %%insn_004021ae:
    add esp,0x4 ; 004021AE 83C404
    %if ($ - %%insn_004021ae) > 3
        %error "LONG_004021AE"
    %endif
    times 3 - ($ - %%insn_004021ae) db 0
    %%insn_004021b1:
    mov [ebp-0x8],eax ; 004021B1 8945F8
    %if ($ - %%insn_004021b1) > 3
        %error "LONG_004021B1"
    %endif
    times 3 - ($ - %%insn_004021b1) db 0
    %%insn_004021b4:
    cmp dword [ebp-0x8],0x0 ; 004021B4 837DF800
    %if ($ - %%insn_004021b4) > 4
        %error "LONG_004021B4"
    %endif
    times 4 - ($ - %%insn_004021b4) db 0
    %%insn_004021b8:
    jz short 0x4021ca ; 004021B8 7410
    %if ($ - %%insn_004021b8) > 2
        %error "LONG_004021B8"
    %endif
    times 2 - ($ - %%insn_004021b8) db 0
    %%insn_004021ba:
    mov byte [ebp-0x4],0x2 ; 004021BA C645FC02
    %if ($ - %%insn_004021ba) > 4
        %error "LONG_004021BA"
    %endif
    times 4 - ($ - %%insn_004021ba) db 0
    %%insn_004021be:
    push dword 0x0 ; 004021BE 6A00
    %if ($ - %%insn_004021be) > 2
        %error "LONG_004021BE"
    %endif
    times 2 - ($ - %%insn_004021be) db 0
    %%insn_004021c0:
    mov ecx,[ebp-0x8] ; 004021C0 8B4DF8
    %if ($ - %%insn_004021c0) > 3
        %error "LONG_004021C0"
    %endif
    times 3 - ($ - %%insn_004021c0) db 0
    %%insn_004021c3:
    push ecx ; 004021C3 51
    %if ($ - %%insn_004021c3) > 1
        %error "LONG_004021C3"
    %endif
    times 1 - ($ - %%insn_004021c3) db 0
    %%insn_004021c4:
    call dword near [0x424590] ; 004021C4 FF1590454200
    %if ($ - %%insn_004021c4) > 6
        %error "LONG_004021C4"
    %endif
    times 6 - ($ - %%insn_004021c4) db 0
    %%insn_004021ca:
    mov al,[ebp-0x4] ; 004021CA 8A45FC
    %if ($ - %%insn_004021ca) > 3
        %error "LONG_004021CA"
    %endif
    times 3 - ($ - %%insn_004021ca) db 0
    db 0x8B, 0xE5 ; 004021CD 8BE5 | mov esp,ebp | encoding preserved
    %%insn_004021cf:
    pop ebp ; 004021CF 5D
    %if ($ - %%insn_004021cf) > 1
        %error "LONG_004021CF"
    %endif
    times 1 - ($ - %%insn_004021cf) db 0
    %%insn_004021d0:
    ret ; 004021D0 C3
    %if ($ - %%insn_004021d0) > 1
        %error "LONG_004021D0"
    %endif
    times 1 - ($ - %%insn_004021d0) db 0
    %if ($ - %%fragment_start) != 95
        %error "function fragment size drift: 00402172"
    %endif
%endmacro
