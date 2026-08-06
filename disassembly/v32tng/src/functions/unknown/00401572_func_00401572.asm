; PE virtual entry 00401572
; Ghidra working symbol: FUN_00401572
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00401572_part_00 0
    %%fragment_start:
func_00401572:
    %%insn_00401572:
    push ebp ; 00401572 55
    %if ($ - %%insn_00401572) > 1
        %error "LONG_00401572"
    %endif
    times 1 - ($ - %%insn_00401572) db 0
    db 0x8B, 0xEC ; 00401573 8BEC | mov ebp,esp | encoding preserved
    %%insn_00401575:
    push ecx ; 00401575 51
    %if ($ - %%insn_00401575) > 1
        %error "LONG_00401575"
    %endif
    times 1 - ($ - %%insn_00401575) db 0
    %%insn_00401576:
    call 0x406b14 ; 00401576 E899550000
    %if ($ - %%insn_00401576) > 5
        %error "LONG_00401576"
    %endif
    times 5 - ($ - %%insn_00401576) db 0
    %%insn_0040157b:
    mov [ebp-0x4],ax ; 0040157B 668945FC
    %if ($ - %%insn_0040157b) > 4
        %error "LONG_0040157B"
    %endif
    times 4 - ($ - %%insn_0040157b) db 0
    %%insn_0040157f:
    cmp dword [ebp+0x8],0x1 ; 0040157F 837D0801
    %if ($ - %%insn_0040157f) > 4
        %error "LONG_0040157F"
    %endif
    times 4 - ($ - %%insn_0040157f) db 0
    %%insn_00401583:
    jnz short 0x401593 ; 00401583 750E
    %if ($ - %%insn_00401583) > 2
        %error "LONG_00401583"
    %endif
    times 2 - ($ - %%insn_00401583) db 0
    %%insn_00401585:
    mov ax,[ebp-0x4] ; 00401585 668B45FC
    %if ($ - %%insn_00401585) > 4
        %error "LONG_00401585"
    %endif
    times 4 - ($ - %%insn_00401585) db 0
    db 0x66, 0x25, 0x01, 0x00 ; 00401589 66250100 | and ax,0x1 | encoding preserved
    %%insn_0040158d:
    mov [ebp-0x4],ax ; 0040158D 668945FC
    %if ($ - %%insn_0040158d) > 4
        %error "LONG_0040158D"
    %endif
    times 4 - ($ - %%insn_0040158d) db 0
    %%insn_00401591:
    jmp short 0x4015b7 ; 00401591 EB24
    %if ($ - %%insn_00401591) > 2
        %error "LONG_00401591"
    %endif
    times 2 - ($ - %%insn_00401591) db 0
    %%insn_00401593:
    mov cx,[ebp-0x4] ; 00401593 668B4DFC
    %if ($ - %%insn_00401593) > 4
        %error "LONG_00401593"
    %endif
    times 4 - ($ - %%insn_00401593) db 0
    %%insn_00401597:
    and cx,0xff ; 00401597 6681E1FF00
    %if ($ - %%insn_00401597) > 5
        %error "LONG_00401597"
    %endif
    times 5 - ($ - %%insn_00401597) db 0
    %%insn_0040159c:
    mov [ebp-0x4],cx ; 0040159C 66894DFC
    %if ($ - %%insn_0040159c) > 4
        %error "LONG_0040159C"
    %endif
    times 4 - ($ - %%insn_0040159c) db 0
    %%insn_004015a0:
    movsx edx,word [ebp-0x4] ; 004015A0 0FBF55FC
    %if ($ - %%insn_004015a0) > 4
        %error "LONG_004015A0"
    %endif
    times 4 - ($ - %%insn_004015a0) db 0
    %%insn_004015a4:
    cmp edx,[ebp+0x8] ; 004015A4 3B5508
    %if ($ - %%insn_004015a4) > 3
        %error "LONG_004015A4"
    %endif
    times 3 - ($ - %%insn_004015a4) db 0
    %%insn_004015a7:
    jl short 0x4015b7 ; 004015A7 7C0E
    %if ($ - %%insn_004015a7) > 2
        %error "LONG_004015A7"
    %endif
    times 2 - ($ - %%insn_004015a7) db 0
    %%insn_004015a9:
    mov ax,[ebp-0x4] ; 004015A9 668B45FC
    %if ($ - %%insn_004015a9) > 4
        %error "LONG_004015A9"
    %endif
    times 4 - ($ - %%insn_004015a9) db 0
    %%insn_004015ad:
    sub ax,[ebp+0x8] ; 004015AD 662B4508
    %if ($ - %%insn_004015ad) > 4
        %error "LONG_004015AD"
    %endif
    times 4 - ($ - %%insn_004015ad) db 0
    %%insn_004015b1:
    mov [ebp-0x4],ax ; 004015B1 668945FC
    %if ($ - %%insn_004015b1) > 4
        %error "LONG_004015B1"
    %endif
    times 4 - ($ - %%insn_004015b1) db 0
    %%insn_004015b5:
    jmp short 0x4015a0 ; 004015B5 EBE9
    %if ($ - %%insn_004015b5) > 2
        %error "LONG_004015B5"
    %endif
    times 2 - ($ - %%insn_004015b5) db 0
    %%insn_004015b7:
    movsx eax,word [ebp-0x4] ; 004015B7 0FBF45FC
    %if ($ - %%insn_004015b7) > 4
        %error "LONG_004015B7"
    %endif
    times 4 - ($ - %%insn_004015b7) db 0
    db 0x8B, 0xE5 ; 004015BB 8BE5 | mov esp,ebp | encoding preserved
    %%insn_004015bd:
    pop ebp ; 004015BD 5D
    %if ($ - %%insn_004015bd) > 1
        %error "LONG_004015BD"
    %endif
    times 1 - ($ - %%insn_004015bd) db 0
    %%insn_004015be:
    ret ; 004015BE C3
    %if ($ - %%insn_004015be) > 1
        %error "LONG_004015BE"
    %endif
    times 1 - ($ - %%insn_004015be) db 0
    %if ($ - %%fragment_start) != 77
        %error "function fragment size drift: 00401572"
    %endif
%endmacro
