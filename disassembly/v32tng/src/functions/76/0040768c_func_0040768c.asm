; PE virtual entry 0040768C
; Ghidra working symbol: FUN_0040768c
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040768c_part_00 0
    %%fragment_start:
func_0040768c:
    %%insn_0040768c:
    push ebp ; 0040768C 55
    %if ($ - %%insn_0040768c) > 1
        %error "LONG_0040768C"
    %endif
    times 1 - ($ - %%insn_0040768c) db 0
    db 0x8B, 0xEC ; 0040768D 8BEC | mov ebp,esp | encoding preserved
    %%insn_0040768f:
    sub esp,0x108 ; 0040768F 81EC08010000
    %if ($ - %%insn_0040768f) > 6
        %error "LONG_0040768F"
    %endif
    times 6 - ($ - %%insn_0040768f) db 0
    %%insn_00407695:
    lea eax,[ebp+0x14] ; 00407695 8D4514
    %if ($ - %%insn_00407695) > 3
        %error "LONG_00407695"
    %endif
    times 3 - ($ - %%insn_00407695) db 0
    %%insn_00407698:
    mov [ebp-0x108],eax ; 00407698 8985F8FEFFFF
    %if ($ - %%insn_00407698) > 6
        %error "LONG_00407698"
    %endif
    times 6 - ($ - %%insn_00407698) db 0
    %%insn_0040769e:
    mov ecx,[ebp-0x108] ; 0040769E 8B8DF8FEFFFF
    %if ($ - %%insn_0040769e) > 6
        %error "LONG_0040769E"
    %endif
    times 6 - ($ - %%insn_0040769e) db 0
    %%insn_004076a4:
    push ecx ; 004076A4 51
    %if ($ - %%insn_004076a4) > 1
        %error "LONG_004076A4"
    %endif
    times 1 - ($ - %%insn_004076a4) db 0
    %%insn_004076a5:
    mov edx,[ebp+0x10] ; 004076A5 8B5510
    %if ($ - %%insn_004076a5) > 3
        %error "LONG_004076A5"
    %endif
    times 3 - ($ - %%insn_004076a5) db 0
    %%insn_004076a8:
    push edx ; 004076A8 52
    %if ($ - %%insn_004076a8) > 1
        %error "LONG_004076A8"
    %endif
    times 1 - ($ - %%insn_004076a8) db 0
    %%insn_004076a9:
    lea eax,[ebp-0x100] ; 004076A9 8D8500FFFFFF
    %if ($ - %%insn_004076a9) > 6
        %error "LONG_004076A9"
    %endif
    times 6 - ($ - %%insn_004076a9) db 0
    %%insn_004076af:
    push eax ; 004076AF 50
    %if ($ - %%insn_004076af) > 1
        %error "LONG_004076AF"
    %endif
    times 1 - ($ - %%insn_004076af) db 0
    %%insn_004076b0:
    call 0x40d550 ; 004076B0 E89B5E0000
    %if ($ - %%insn_004076b0) > 5
        %error "LONG_004076B0"
    %endif
    times 5 - ($ - %%insn_004076b0) db 0
    %%insn_004076b5:
    add esp,0xc ; 004076B5 83C40C
    %if ($ - %%insn_004076b5) > 3
        %error "LONG_004076B5"
    %endif
    times 3 - ($ - %%insn_004076b5) db 0
    %%insn_004076b8:
    mov dword [ebp-0x108],0x0 ; 004076B8 C785F8FEFFFF00000000
    %if ($ - %%insn_004076b8) > 10
        %error "LONG_004076B8"
    %endif
    times 10 - ($ - %%insn_004076b8) db 0
    %%insn_004076c2:
    lea ecx,[ebp-0x104] ; 004076C2 8D8DFCFEFFFF
    %if ($ - %%insn_004076c2) > 6
        %error "LONG_004076C2"
    %endif
    times 6 - ($ - %%insn_004076c2) db 0
    %%insn_004076c8:
    push ecx ; 004076C8 51
    %if ($ - %%insn_004076c8) > 1
        %error "LONG_004076C8"
    %endif
    times 1 - ($ - %%insn_004076c8) db 0
    %%insn_004076c9:
    mov edx,[0x421430] ; 004076C9 8B1530144200
    %if ($ - %%insn_004076c9) > 6
        %error "LONG_004076C9"
    %endif
    times 6 - ($ - %%insn_004076c9) db 0
    %%insn_004076cf:
    push edx ; 004076CF 52
    %if ($ - %%insn_004076cf) > 1
        %error "LONG_004076CF"
    %endif
    times 1 - ($ - %%insn_004076cf) db 0
    %%insn_004076d0:
    mov eax,[0x421430] ; 004076D0 A130144200
    %if ($ - %%insn_004076d0) > 5
        %error "LONG_004076D0"
    %endif
    times 5 - ($ - %%insn_004076d0) db 0
    %%insn_004076d5:
    mov ecx,[eax] ; 004076D5 8B08
    %if ($ - %%insn_004076d5) > 2
        %error "LONG_004076D5"
    %endif
    times 2 - ($ - %%insn_004076d5) db 0
    %%insn_004076d7:
    call dword near [ecx+0x44] ; 004076D7 FF5144
    %if ($ - %%insn_004076d7) > 3
        %error "LONG_004076D7"
    %endif
    times 3 - ($ - %%insn_004076d7) db 0
    %%insn_004076da:
    test eax,eax ; 004076DA 85C0
    %if ($ - %%insn_004076da) > 2
        %error "LONG_004076DA"
    %endif
    times 2 - ($ - %%insn_004076da) db 0
    %%insn_004076dc:
    jnz short 0x407744 ; 004076DC 7566
    %if ($ - %%insn_004076dc) > 2
        %error "LONG_004076DC"
    %endif
    times 2 - ($ - %%insn_004076dc) db 0
    %%insn_004076de:
    push dword 0x0 ; 004076DE 6A00
    %if ($ - %%insn_004076de) > 2
        %error "LONG_004076DE"
    %endif
    times 2 - ($ - %%insn_004076de) db 0
    %%insn_004076e0:
    mov edx,[ebp-0x104] ; 004076E0 8B95FCFEFFFF
    %if ($ - %%insn_004076e0) > 6
        %error "LONG_004076E0"
    %endif
    times 6 - ($ - %%insn_004076e0) db 0
    %%insn_004076e6:
    push edx ; 004076E6 52
    %if ($ - %%insn_004076e6) > 1
        %error "LONG_004076E6"
    %endif
    times 1 - ($ - %%insn_004076e6) db 0
    %%insn_004076e7:
    call dword near [0x42437c] ; 004076E7 FF157C434200
    %if ($ - %%insn_004076e7) > 6
        %error "LONG_004076E7"
    %endif
    times 6 - ($ - %%insn_004076e7) db 0
    %%insn_004076ed:
    push dword 0xffffff ; 004076ED 68FFFFFF00
    %if ($ - %%insn_004076ed) > 5
        %error "LONG_004076ED"
    %endif
    times 5 - ($ - %%insn_004076ed) db 0
    %%insn_004076f2:
    mov eax,[ebp-0x104] ; 004076F2 8B85FCFEFFFF
    %if ($ - %%insn_004076f2) > 6
        %error "LONG_004076F2"
    %endif
    times 6 - ($ - %%insn_004076f2) db 0
    %%insn_004076f8:
    push eax ; 004076F8 50
    %if ($ - %%insn_004076f8) > 1
        %error "LONG_004076F8"
    %endif
    times 1 - ($ - %%insn_004076f8) db 0
    %%insn_004076f9:
    call dword near [0x424378] ; 004076F9 FF1578434200
    %if ($ - %%insn_004076f9) > 6
        %error "LONG_004076F9"
    %endif
    times 6 - ($ - %%insn_004076f9) db 0
    %%insn_004076ff:
    lea ecx,[ebp-0x100] ; 004076FF 8D8D00FFFFFF
    %if ($ - %%insn_004076ff) > 6
        %error "LONG_004076FF"
    %endif
    times 6 - ($ - %%insn_004076ff) db 0
    %%insn_00407705:
    push ecx ; 00407705 51
    %if ($ - %%insn_00407705) > 1
        %error "LONG_00407705"
    %endif
    times 1 - ($ - %%insn_00407705) db 0
    %%insn_00407706:
    call 0x40d4d0 ; 00407706 E8C55D0000
    %if ($ - %%insn_00407706) > 5
        %error "LONG_00407706"
    %endif
    times 5 - ($ - %%insn_00407706) db 0
    %%insn_0040770b:
    add esp,0x4 ; 0040770B 83C404
    %if ($ - %%insn_0040770b) > 3
        %error "LONG_0040770B"
    %endif
    times 3 - ($ - %%insn_0040770b) db 0
    %%insn_0040770e:
    push eax ; 0040770E 50
    %if ($ - %%insn_0040770e) > 1
        %error "LONG_0040770E"
    %endif
    times 1 - ($ - %%insn_0040770e) db 0
    %%insn_0040770f:
    lea edx,[ebp-0x100] ; 0040770F 8D9500FFFFFF
    %if ($ - %%insn_0040770f) > 6
        %error "LONG_0040770F"
    %endif
    times 6 - ($ - %%insn_0040770f) db 0
    %%insn_00407715:
    push edx ; 00407715 52
    %if ($ - %%insn_00407715) > 1
        %error "LONG_00407715"
    %endif
    times 1 - ($ - %%insn_00407715) db 0
    %%insn_00407716:
    mov eax,[ebp+0xc] ; 00407716 8B450C
    %if ($ - %%insn_00407716) > 3
        %error "LONG_00407716"
    %endif
    times 3 - ($ - %%insn_00407716) db 0
    %%insn_00407719:
    push eax ; 00407719 50
    %if ($ - %%insn_00407719) > 1
        %error "LONG_00407719"
    %endif
    times 1 - ($ - %%insn_00407719) db 0
    %%insn_0040771a:
    mov ecx,[ebp+0x8] ; 0040771A 8B4D08
    %if ($ - %%insn_0040771a) > 3
        %error "LONG_0040771A"
    %endif
    times 3 - ($ - %%insn_0040771a) db 0
    %%insn_0040771d:
    push ecx ; 0040771D 51
    %if ($ - %%insn_0040771d) > 1
        %error "LONG_0040771D"
    %endif
    times 1 - ($ - %%insn_0040771d) db 0
    %%insn_0040771e:
    mov edx,[ebp-0x104] ; 0040771E 8B95FCFEFFFF
    %if ($ - %%insn_0040771e) > 6
        %error "LONG_0040771E"
    %endif
    times 6 - ($ - %%insn_0040771e) db 0
    %%insn_00407724:
    push edx ; 00407724 52
    %if ($ - %%insn_00407724) > 1
        %error "LONG_00407724"
    %endif
    times 1 - ($ - %%insn_00407724) db 0
    %%insn_00407725:
    call dword near [0x424394] ; 00407725 FF1594434200
    %if ($ - %%insn_00407725) > 6
        %error "LONG_00407725"
    %endif
    times 6 - ($ - %%insn_00407725) db 0
    %%insn_0040772b:
    mov eax,[ebp-0x104] ; 0040772B 8B85FCFEFFFF
    %if ($ - %%insn_0040772b) > 6
        %error "LONG_0040772B"
    %endif
    times 6 - ($ - %%insn_0040772b) db 0
    %%insn_00407731:
    push eax ; 00407731 50
    %if ($ - %%insn_00407731) > 1
        %error "LONG_00407731"
    %endif
    times 1 - ($ - %%insn_00407731) db 0
    %%insn_00407732:
    mov ecx,[0x421430] ; 00407732 8B0D30144200
    %if ($ - %%insn_00407732) > 6
        %error "LONG_00407732"
    %endif
    times 6 - ($ - %%insn_00407732) db 0
    %%insn_00407738:
    push ecx ; 00407738 51
    %if ($ - %%insn_00407738) > 1
        %error "LONG_00407738"
    %endif
    times 1 - ($ - %%insn_00407738) db 0
    %%insn_00407739:
    mov edx,[0x421430] ; 00407739 8B1530144200
    %if ($ - %%insn_00407739) > 6
        %error "LONG_00407739"
    %endif
    times 6 - ($ - %%insn_00407739) db 0
    %%insn_0040773f:
    mov eax,[edx] ; 0040773F 8B02
    %if ($ - %%insn_0040773f) > 2
        %error "LONG_0040773F"
    %endif
    times 2 - ($ - %%insn_0040773f) db 0
    %%insn_00407741:
    call dword near [eax+0x68] ; 00407741 FF5068
    %if ($ - %%insn_00407741) > 3
        %error "LONG_00407741"
    %endif
    times 3 - ($ - %%insn_00407741) db 0
    db 0x8B, 0xE5 ; 00407744 8BE5 | mov esp,ebp | encoding preserved
    %%insn_00407746:
    pop ebp ; 00407746 5D
    %if ($ - %%insn_00407746) > 1
        %error "LONG_00407746"
    %endif
    times 1 - ($ - %%insn_00407746) db 0
    %%insn_00407747:
    ret ; 00407747 C3
    %if ($ - %%insn_00407747) > 1
        %error "LONG_00407747"
    %endif
    times 1 - ($ - %%insn_00407747) db 0
    %if ($ - %%fragment_start) != 188
        %error "function fragment size drift: 0040768C"
    %endif
%endmacro
