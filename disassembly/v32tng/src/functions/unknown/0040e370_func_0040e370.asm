; PE virtual entry 0040E370
; Ghidra working symbol: FUN_0040e370
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040e370_part_00 0
    %%fragment_start:
func_0040e370:
    %%insn_0040e370:
    mov ecx,[esp+0x4] ; 0040E370 8B4C2404
    %if ($ - %%insn_0040e370) > 4
        %error "LONG_0040E370"
    %endif
    times 4 - ($ - %%insn_0040e370) db 0
    %%insn_0040e374:
    mov eax,0x41be60 ; 0040E374 B860BE4100
    %if ($ - %%insn_0040e374) > 5
        %error "LONG_0040E374"
    %endif
    times 5 - ($ - %%insn_0040e374) db 0
    %%insn_0040e379:
    cmp ecx,[eax+0x10] ; 0040E379 3B4810
    %if ($ - %%insn_0040e379) > 3
        %error "LONG_0040E379"
    %endif
    times 3 - ($ - %%insn_0040e379) db 0
    %%insn_0040e37c:
    jna short 0x40e383 ; 0040E37C 7605
    %if ($ - %%insn_0040e37c) > 2
        %error "LONG_0040E37C"
    %endif
    times 2 - ($ - %%insn_0040e37c) db 0
    %%insn_0040e37e:
    cmp ecx,[eax+0x14] ; 0040E37E 3B4814
    %if ($ - %%insn_0040e37e) > 3
        %error "LONG_0040E37E"
    %endif
    times 3 - ($ - %%insn_0040e37e) db 0
    %%insn_0040e381:
    jc short 0x40e38e ; 0040E381 720B
    %if ($ - %%insn_0040e381) > 2
        %error "LONG_0040E381"
    %endif
    times 2 - ($ - %%insn_0040e381) db 0
    %%insn_0040e383:
    mov eax,[eax] ; 0040E383 8B00
    %if ($ - %%insn_0040e383) > 2
        %error "LONG_0040E383"
    %endif
    times 2 - ($ - %%insn_0040e383) db 0
    %%insn_0040e385:
    cmp eax,0x41be60 ; 0040E385 3D60BE4100
    %if ($ - %%insn_0040e385) > 5
        %error "LONG_0040E385"
    %endif
    times 5 - ($ - %%insn_0040e385) db 0
    %%insn_0040e38a:
    jz short 0x40e3c6 ; 0040E38A 743A
    %if ($ - %%insn_0040e38a) > 2
        %error "LONG_0040E38A"
    %endif
    times 2 - ($ - %%insn_0040e38a) db 0
    %%insn_0040e38c:
    jmp short 0x40e379 ; 0040E38C EBEB
    %if ($ - %%insn_0040e38c) > 2
        %error "LONG_0040E38C"
    %endif
    times 2 - ($ - %%insn_0040e38c) db 0
    %%insn_0040e38e:
    test cl,0xf ; 0040E38E F6C10F
    %if ($ - %%insn_0040e38e) > 3
        %error "LONG_0040E38E"
    %endif
    times 3 - ($ - %%insn_0040e38e) db 0
    %%insn_0040e391:
    jnz short 0x40e3c6 ; 0040E391 7533
    %if ($ - %%insn_0040e391) > 2
        %error "LONG_0040E391"
    %endif
    times 2 - ($ - %%insn_0040e391) db 0
    db 0x8B, 0xD1 ; 0040E393 8BD1 | mov edx,ecx | encoding preserved
    %%insn_0040e395:
    and edx,0xfff ; 0040E395 81E2FF0F0000
    %if ($ - %%insn_0040e395) > 6
        %error "LONG_0040E395"
    %endif
    times 6 - ($ - %%insn_0040e395) db 0
    %%insn_0040e39b:
    cmp edx,0x100 ; 0040E39B 81FA00010000
    %if ($ - %%insn_0040e39b) > 6
        %error "LONG_0040E39B"
    %endif
    times 6 - ($ - %%insn_0040e39b) db 0
    %%insn_0040e3a1:
    jc short 0x40e3c6 ; 0040E3A1 7223
    %if ($ - %%insn_0040e3a1) > 2
        %error "LONG_0040E3A1"
    %endif
    times 2 - ($ - %%insn_0040e3a1) db 0
    %%insn_0040e3a3:
    mov edx,[esp+0x8] ; 0040E3A3 8B542408
    %if ($ - %%insn_0040e3a3) > 4
        %error "LONG_0040E3A3"
    %endif
    times 4 - ($ - %%insn_0040e3a3) db 0
    %%insn_0040e3a7:
    mov [edx],eax ; 0040E3A7 8902
    %if ($ - %%insn_0040e3a7) > 2
        %error "LONG_0040E3A7"
    %endif
    times 2 - ($ - %%insn_0040e3a7) db 0
    %%insn_0040e3a9:
    mov edx,[esp+0xc] ; 0040E3A9 8B54240C
    %if ($ - %%insn_0040e3a9) > 4
        %error "LONG_0040E3A9"
    %endif
    times 4 - ($ - %%insn_0040e3a9) db 0
    db 0x8B, 0xC1 ; 0040E3AD 8BC1 | mov eax,ecx | encoding preserved
    %%insn_0040e3af:
    and eax,0xfffff000 ; 0040E3AF 2500F0FFFF
    %if ($ - %%insn_0040e3af) > 5
        %error "LONG_0040E3AF"
    %endif
    times 5 - ($ - %%insn_0040e3af) db 0
    db 0x2B, 0xC8 ; 0040E3B4 2BC8 | sub ecx,eax | encoding preserved
    %%insn_0040e3b6:
    mov [edx],eax ; 0040E3B6 8902
    %if ($ - %%insn_0040e3b6) > 2
        %error "LONG_0040E3B6"
    %endif
    times 2 - ($ - %%insn_0040e3b6) db 0
    %%insn_0040e3b8:
    sub ecx,0x100 ; 0040E3B8 81E900010000
    %if ($ - %%insn_0040e3b8) > 6
        %error "LONG_0040E3B8"
    %endif
    times 6 - ($ - %%insn_0040e3b8) db 0
    %%insn_0040e3be:
    sar ecx,byte 0x4 ; 0040E3BE C1F904
    %if ($ - %%insn_0040e3be) > 3
        %error "LONG_0040E3BE"
    %endif
    times 3 - ($ - %%insn_0040e3be) db 0
    %%insn_0040e3c1:
    lea eax,[ecx+eax+0x8] ; 0040E3C1 8D440108
    %if ($ - %%insn_0040e3c1) > 4
        %error "LONG_0040E3C1"
    %endif
    times 4 - ($ - %%insn_0040e3c1) db 0
    %%insn_0040e3c5:
    ret ; 0040E3C5 C3
    %if ($ - %%insn_0040e3c5) > 1
        %error "LONG_0040E3C5"
    %endif
    times 1 - ($ - %%insn_0040e3c5) db 0
    db 0x33, 0xC0 ; 0040E3C6 33C0 | xor eax,eax | encoding preserved
    %%insn_0040e3c8:
    ret ; 0040E3C8 C3
    %if ($ - %%insn_0040e3c8) > 1
        %error "LONG_0040E3C8"
    %endif
    times 1 - ($ - %%insn_0040e3c8) db 0
    %if ($ - %%fragment_start) != 89
        %error "function fragment size drift: 0040E370"
    %endif
%endmacro
