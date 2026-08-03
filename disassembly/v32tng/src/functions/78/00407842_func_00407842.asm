; PE virtual entry 00407842
; Ghidra working symbol: FUN_00407842
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00407842_part_00 0
    %%fragment_start:
func_00407842:
    %%insn_00407842:
    push ebp ; 00407842 55
    %if ($ - %%insn_00407842) > 1
        %error "LONG_00407842"
    %endif
    times 1 - ($ - %%insn_00407842) db 0
    db 0x8B, 0xEC ; 00407843 8BEC | mov ebp,esp | encoding preserved
    %%insn_00407845:
    sub esp,0x8 ; 00407845 83EC08
    %if ($ - %%insn_00407845) > 3
        %error "LONG_00407845"
    %endif
    times 3 - ($ - %%insn_00407845) db 0
    %%insn_00407848:
    mov [ebp-0x8],ecx ; 00407848 894DF8
    %if ($ - %%insn_00407848) > 3
        %error "LONG_00407848"
    %endif
    times 3 - ($ - %%insn_00407848) db 0
    %%insn_0040784b:
    mov eax,[ebp-0x8] ; 0040784B 8B45F8
    %if ($ - %%insn_0040784b) > 3
        %error "LONG_0040784B"
    %endif
    times 3 - ($ - %%insn_0040784b) db 0
    %%insn_0040784e:
    mov ecx,[eax+0x54] ; 0040784E 8B4854
    %if ($ - %%insn_0040784e) > 3
        %error "LONG_0040784E"
    %endif
    times 3 - ($ - %%insn_0040784e) db 0
    %%insn_00407851:
    mov [0x41f53c],ecx ; 00407851 890D3CF54100
    %if ($ - %%insn_00407851) > 6
        %error "LONG_00407851"
    %endif
    times 6 - ($ - %%insn_00407851) db 0
    %%insn_00407857:
    mov edx,[ebp-0x8] ; 00407857 8B55F8
    %if ($ - %%insn_00407857) > 3
        %error "LONG_00407857"
    %endif
    times 3 - ($ - %%insn_00407857) db 0
    %%insn_0040785a:
    mov eax,[edx+0x58] ; 0040785A 8B4258
    %if ($ - %%insn_0040785a) > 3
        %error "LONG_0040785A"
    %endif
    times 3 - ($ - %%insn_0040785a) db 0
    %%insn_0040785d:
    mov [0x41f52c],eax ; 0040785D A32CF54100
    %if ($ - %%insn_0040785d) > 5
        %error "LONG_0040785D"
    %endif
    times 5 - ($ - %%insn_0040785d) db 0
    %%insn_00407862:
    mov ecx,[ebp-0x8] ; 00407862 8B4DF8
    %if ($ - %%insn_00407862) > 3
        %error "LONG_00407862"
    %endif
    times 3 - ($ - %%insn_00407862) db 0
    %%insn_00407865:
    mov edx,[ecx+0x5c] ; 00407865 8B515C
    %if ($ - %%insn_00407865) > 3
        %error "LONG_00407865"
    %endif
    times 3 - ($ - %%insn_00407865) db 0
    %%insn_00407868:
    mov [0x41f538],edx ; 00407868 891538F54100
    %if ($ - %%insn_00407868) > 6
        %error "LONG_00407868"
    %endif
    times 6 - ($ - %%insn_00407868) db 0
    %%insn_0040786e:
    mov eax,[ebp-0x8] ; 0040786E 8B45F8
    %if ($ - %%insn_0040786e) > 3
        %error "LONG_0040786E"
    %endif
    times 3 - ($ - %%insn_0040786e) db 0
    %%insn_00407871:
    mov ecx,[eax+0x60] ; 00407871 8B4860
    %if ($ - %%insn_00407871) > 3
        %error "LONG_00407871"
    %endif
    times 3 - ($ - %%insn_00407871) db 0
    %%insn_00407874:
    mov [0x41f534],ecx ; 00407874 890D34F54100
    %if ($ - %%insn_00407874) > 6
        %error "LONG_00407874"
    %endif
    times 6 - ($ - %%insn_00407874) db 0
    %%insn_0040787a:
    mov edx,[ebp-0x8] ; 0040787A 8B55F8
    %if ($ - %%insn_0040787a) > 3
        %error "LONG_0040787A"
    %endif
    times 3 - ($ - %%insn_0040787a) db 0
    %%insn_0040787d:
    cmp dword [edx+0x78],0x8 ; 0040787D 837A7808
    %if ($ - %%insn_0040787d) > 4
        %error "LONG_0040787D"
    %endif
    times 4 - ($ - %%insn_0040787d) db 0
    %%insn_00407881:
    jnz short 0x407899 ; 00407881 7516
    %if ($ - %%insn_00407881) > 2
        %error "LONG_00407881"
    %endif
    times 2 - ($ - %%insn_00407881) db 0
    %%insn_00407883:
    mov eax,[ebp-0x8] ; 00407883 8B45F8
    %if ($ - %%insn_00407883) > 3
        %error "LONG_00407883"
    %endif
    times 3 - ($ - %%insn_00407883) db 0
    %%insn_00407886:
    cmp dword [eax+0x44],0x0 ; 00407886 83784400
    %if ($ - %%insn_00407886) > 4
        %error "LONG_00407886"
    %endif
    times 4 - ($ - %%insn_00407886) db 0
    %%insn_0040788a:
    jz short 0x407899 ; 0040788A 740D
    %if ($ - %%insn_0040788a) > 2
        %error "LONG_0040788A"
    %endif
    times 2 - ($ - %%insn_0040788a) db 0
    %%insn_0040788c:
    mov ecx,[ebp-0x8] ; 0040788C 8B4DF8
    %if ($ - %%insn_0040788c) > 3
        %error "LONG_0040788C"
    %endif
    times 3 - ($ - %%insn_0040788c) db 0
    %%insn_0040788f:
    call 0x407f2d ; 0040788F E899060000
    %if ($ - %%insn_0040788f) > 5
        %error "LONG_0040788F"
    %endif
    times 5 - ($ - %%insn_0040788f) db 0
    %%insn_00407894:
    mov [ebp-0x4],eax ; 00407894 8945FC
    %if ($ - %%insn_00407894) > 3
        %error "LONG_00407894"
    %endif
    times 3 - ($ - %%insn_00407894) db 0
    %%insn_00407897:
    jmp short 0x4078a0 ; 00407897 EB07
    %if ($ - %%insn_00407897) > 2
        %error "LONG_00407897"
    %endif
    times 2 - ($ - %%insn_00407897) db 0
    %%insn_00407899:
    mov dword [ebp-0x4],0x0 ; 00407899 C745FC00000000
    %if ($ - %%insn_00407899) > 7
        %error "LONG_00407899"
    %endif
    times 7 - ($ - %%insn_00407899) db 0
    %%insn_004078a0:
    cmp dword [ebp-0x4],0x0 ; 004078A0 837DFC00
    %if ($ - %%insn_004078a0) > 4
        %error "LONG_004078A0"
    %endif
    times 4 - ($ - %%insn_004078a0) db 0
    %%insn_004078a4:
    jz short 0x4078ad ; 004078A4 7407
    %if ($ - %%insn_004078a4) > 2
        %error "LONG_004078A4"
    %endif
    times 2 - ($ - %%insn_004078a4) db 0
    %%insn_004078a6:
    mov eax,0x700 ; 004078A6 B800070000
    %if ($ - %%insn_004078a6) > 5
        %error "LONG_004078A6"
    %endif
    times 5 - ($ - %%insn_004078a6) db 0
    %%insn_004078ab:
    jmp short 0x4078af ; 004078AB EB02
    %if ($ - %%insn_004078ab) > 2
        %error "LONG_004078AB"
    %endif
    times 2 - ($ - %%insn_004078ab) db 0
    db 0x33, 0xC0 ; 004078AD 33C0 | xor eax,eax | encoding preserved
    db 0x8B, 0xE5 ; 004078AF 8BE5 | mov esp,ebp | encoding preserved
    %%insn_004078b1:
    pop ebp ; 004078B1 5D
    %if ($ - %%insn_004078b1) > 1
        %error "LONG_004078B1"
    %endif
    times 1 - ($ - %%insn_004078b1) db 0
    %%insn_004078b2:
    ret ; 004078B2 C3
    %if ($ - %%insn_004078b2) > 1
        %error "LONG_004078B2"
    %endif
    times 1 - ($ - %%insn_004078b2) db 0
    %if ($ - %%fragment_start) != 113
        %error "function fragment size drift: 00407842"
    %endif
%endmacro
