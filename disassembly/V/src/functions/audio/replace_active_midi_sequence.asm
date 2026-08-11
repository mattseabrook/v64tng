; Linear entry 05C06 (1000:5c06)
; Ghidra working symbol: FUN_1000_5c06
; Verified active-XMI replacement path. Prepares required timbres, captures and
; ends the prior sequence, allocates/initializes the replacement sequence, and
; applies the requested Miles volume ramp before playback.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_replace_active_midi_sequence_part_00 0
    %%fragment_start:
replace_active_midi_sequence:
    %%insn_05c06:
    cmp word [bp-0x1b8a],0x80 ; 05C06 81BE76E48000
    %if ($ - %%insn_05c06) > 6
        %error "LONG_05C06"
    %endif
    times 6 - ($ - %%insn_05c06) db 0
    %%insn_05c0c:
    jz 0x5cdd ; 05C0C 0F84CD00
    %if ($ - %%insn_05c0c) > 4
        %error "LONG_05C0C"
    %endif
    times 4 - ($ - %%insn_05c0c) db 0
    %%insn_05c10:
    cmp ax,[bp-0x1bc0] ; 05C10 3B8640E4
    %if ($ - %%insn_05c10) > 4
        %error "LONG_05C10"
    %endif
    times 4 - ($ - %%insn_05c10) db 0
    %%insn_05c14:
    jz 0x5cdd ; 05C14 0F84C500
    %if ($ - %%insn_05c14) > 4
        %error "LONG_05C14"
    %endif
    times 4 - ($ - %%insn_05c14) db 0
    %%insn_05c18:
    mov [bp-0x1bc0],ax ; 05C18 898640E4
    %if ($ - %%insn_05c18) > 4
        %error "LONG_05C18"
    %endif
    times 4 - ($ - %%insn_05c18) db 0
    %%insn_05c1c:
    call load_xmidi_timbre_patches ; 05C1C E88DFE
    %if ($ - %%insn_05c1c) > 3
        %error "LONG_05C1C"
    %endif
    times 3 - ($ - %%insn_05c1c) db 0
    db 0x3D, 0xFF, 0xFF ; 05C1F 3DFFFF | cmp ax,0xffff | encoding preserved
    %%insn_05c22:
    jz 0x5cdd ; 05C22 0F84B700
    %if ($ - %%insn_05c22) > 4
        %error "LONG_05C22"
    %endif
    times 4 - ($ - %%insn_05c22) db 0
    %%insn_05c26:
    cmp word [bp-0x1bc8],0xf000 ; 05C26 81BE38E400F0
    %if ($ - %%insn_05c26) > 6
        %error "LONG_05C26"
    %endif
    times 6 - ($ - %%insn_05c26) db 0
    %%insn_05c2c:
    jz short 0x5ca3 ; 05C2C 7475
    %if ($ - %%insn_05c2c) > 2
        %error "LONG_05C2C"
    %endif
    times 2 - ($ - %%insn_05c2c) db 0
    %%insn_05c2e:
    push word [bp-0x1bc8] ; 05C2E FFB638E4
    %if ($ - %%insn_05c2e) > 4
        %error "LONG_05C2E"
    %endif
    times 4 - ($ - %%insn_05c2e) db 0
    %%insn_05c32:
    push word [bp-0x1bce] ; 05C32 FFB632E4
    %if ($ - %%insn_05c32) > 4
        %error "LONG_05C32"
    %endif
    times 4 - ($ - %%insn_05c32) db 0
    %%insn_05c36:
    call word 0x702:word 0xd0a ; 05C36 9A0A0D0207
    %if ($ - %%insn_05c36) > 5
        %error "LONG_05C36"
    %endif
    times 5 - ($ - %%insn_05c36) db 0
    %%insn_05c3b:
    add sp,0x4 ; 05C3B 83C404
    %if ($ - %%insn_05c3b) > 3
        %error "LONG_05C3B"
    %endif
    times 3 - ($ - %%insn_05c3b) db 0
    db 0x3D, 0x01, 0x00 ; 05C3E 3D0100 | cmp ax,0x1 | encoding preserved
    %%insn_05c41:
    jnz short 0x5c83 ; 05C41 7540
    %if ($ - %%insn_05c41) > 2
        %error "LONG_05C41"
    %endif
    times 2 - ($ - %%insn_05c41) db 0
    %%insn_05c43:
    push word [bp-0x1bc8] ; 05C43 FFB638E4
    %if ($ - %%insn_05c43) > 4
        %error "LONG_05C43"
    %endif
    times 4 - ($ - %%insn_05c43) db 0
    %%insn_05c47:
    push word [bp-0x1bce] ; 05C47 FFB632E4
    %if ($ - %%insn_05c47) > 4
        %error "LONG_05C47"
    %endif
    times 4 - ($ - %%insn_05c47) db 0
    %%insn_05c4b:
    call word 0x702:word 0xd2e ; 05C4B 9A2E0D0207
    %if ($ - %%insn_05c4b) > 5
        %error "LONG_05C4B"
    %endif
    times 5 - ($ - %%insn_05c4b) db 0
    %%insn_05c50:
    add sp,0x4 ; 05C50 83C404
    %if ($ - %%insn_05c50) > 3
        %error "LONG_05C50"
    %endif
    times 3 - ($ - %%insn_05c50) db 0
    %%insn_05c53:
    mov [bp-0x1bc2],ax ; 05C53 89863EE4
    %if ($ - %%insn_05c53) > 4
        %error "LONG_05C53"
    %endif
    times 4 - ($ - %%insn_05c53) db 0
    %%insn_05c57:
    cmp word [bp-0x1bbc],0x0 ; 05C57 83BE44E400
    %if ($ - %%insn_05c57) > 5
        %error "LONG_05C57"
    %endif
    times 5 - ($ - %%insn_05c57) db 0
    %%insn_05c5c:
    jz short 0x5c78 ; 05C5C 741A
    %if ($ - %%insn_05c5c) > 2
        %error "LONG_05C5C"
    %endif
    times 2 - ($ - %%insn_05c5c) db 0
    %%insn_05c5e:
    push word 0x64 ; 05C5E 6A64
    %if ($ - %%insn_05c5e) > 2
        %error "LONG_05C5E"
    %endif
    times 2 - ($ - %%insn_05c5e) db 0
    %%insn_05c60:
    push word 0x0 ; 05C60 6A00
    %if ($ - %%insn_05c60) > 2
        %error "LONG_05C60"
    %endif
    times 2 - ($ - %%insn_05c60) db 0
    %%insn_05c62:
    push word [bp-0x1bc8] ; 05C62 FFB638E4
    %if ($ - %%insn_05c62) > 4
        %error "LONG_05C62"
    %endif
    times 4 - ($ - %%insn_05c62) db 0
    %%insn_05c66:
    push word [bp-0x1bce] ; 05C66 FFB632E4
    %if ($ - %%insn_05c66) > 4
        %error "LONG_05C66"
    %endif
    times 4 - ($ - %%insn_05c66) db 0
    %%insn_05c6a:
    call word 0x702:word 0xd1c ; 05C6A 9A1C0D0207
    %if ($ - %%insn_05c6a) > 5
        %error "LONG_05C6A"
    %endif
    times 5 - ($ - %%insn_05c6a) db 0
    %%insn_05c6f:
    add sp,0x8 ; 05C6F 83C408
    %if ($ - %%insn_05c6f) > 3
        %error "LONG_05C6F"
    %endif
    times 3 - ($ - %%insn_05c6f) db 0
    %%insn_05c72:
    mov word [bp-0x1bbc],0x0 ; 05C72 C78644E40000
    %if ($ - %%insn_05c72) > 6
        %error "LONG_05C72"
    %endif
    times 6 - ($ - %%insn_05c72) db 0
    %%insn_05c78:
    mov ax,[cs:0x5cde] ; 05C78 2EA1DE5C
    %if ($ - %%insn_05c78) > 4
        %error "LONG_05C78"
    %endif
    times 4 - ($ - %%insn_05c78) db 0
    %%insn_05c7c:
    cmp ax,[cs:0x5cde] ; 05C7C 2E3B06DE5C
    %if ($ - %%insn_05c7c) > 5
        %error "LONG_05C7C"
    %endif
    times 5 - ($ - %%insn_05c7c) db 0
    %%insn_05c81:
    jz short 0x5c7c ; 05C81 74F9
    %if ($ - %%insn_05c81) > 2
        %error "LONG_05C81"
    %endif
    times 2 - ($ - %%insn_05c81) db 0
    %%insn_05c83:
    push word [bp-0x1bc8] ; 05C83 FFB638E4
    %if ($ - %%insn_05c83) > 4
        %error "LONG_05C83"
    %endif
    times 4 - ($ - %%insn_05c83) db 0
    %%insn_05c87:
    push word [bp-0x1bce] ; 05C87 FFB632E4
    %if ($ - %%insn_05c87) > 4
        %error "LONG_05C87"
    %endif
    times 4 - ($ - %%insn_05c87) db 0
    %%insn_05c8b:
    call word 0x702:word 0xcfe ; 05C8B 9AFE0C0207
    %if ($ - %%insn_05c8b) > 5
        %error "LONG_05C8B"
    %endif
    times 5 - ($ - %%insn_05c8b) db 0
    %%insn_05c90:
    add sp,0x4 ; 05C90 83C404
    %if ($ - %%insn_05c90) > 3
        %error "LONG_05C90"
    %endif
    times 3 - ($ - %%insn_05c90) db 0
    %%insn_05c93:
    push word [bp-0x1bc8] ; 05C93 FFB638E4
    %if ($ - %%insn_05c93) > 4
        %error "LONG_05C93"
    %endif
    times 4 - ($ - %%insn_05c93) db 0
    %%insn_05c97:
    push word [bp-0x1bce] ; 05C97 FFB632E4
    %if ($ - %%insn_05c97) > 4
        %error "LONG_05C97"
    %endif
    times 4 - ($ - %%insn_05c97) db 0
    %%insn_05c9b:
    call word 0x702:word 0xcc8 ; 05C9B 9AC80C0207
    %if ($ - %%insn_05c9b) > 5
        %error "LONG_05C9B"
    %endif
    times 5 - ($ - %%insn_05c9b) db 0
    %%insn_05ca0:
    add sp,0x4 ; 05CA0 83C404
    %if ($ - %%insn_05ca0) > 3
        %error "LONG_05CA0"
    %endif
    times 3 - ($ - %%insn_05ca0) db 0
    %%insn_05ca3:
    mov ax,[bp-0x1bc6] ; 05CA3 8B863AE4
    %if ($ - %%insn_05ca3) > 4
        %error "LONG_05CA3"
    %endif
    times 4 - ($ - %%insn_05ca3) db 0
    %%insn_05ca7:
    mov [bp-0x1bc8],ax ; 05CA7 898638E4
    %if ($ - %%insn_05ca7) > 4
        %error "LONG_05CA7"
    %endif
    times 4 - ($ - %%insn_05ca7) db 0
    %%insn_05cab:
    push word [bp-0x1bc8] ; 05CAB FFB638E4
    %if ($ - %%insn_05cab) > 4
        %error "LONG_05CAB"
    %endif
    times 4 - ($ - %%insn_05cab) db 0
    %%insn_05caf:
    push word [bp-0x1bce] ; 05CAF FFB632E4
    %if ($ - %%insn_05caf) > 4
        %error "LONG_05CAF"
    %endif
    times 4 - ($ - %%insn_05caf) db 0
    %%insn_05cb3:
    call word 0x702:word 0xcf8 ; 05CB3 9AF80C0207
    %if ($ - %%insn_05cb3) > 5
        %error "LONG_05CB3"
    %endif
    times 5 - ($ - %%insn_05cb3) db 0
    %%insn_05cb8:
    add sp,0x4 ; 05CB8 83C404
    %if ($ - %%insn_05cb8) > 3
        %error "LONG_05CB8"
    %endif
    times 3 - ($ - %%insn_05cb8) db 0
    %%insn_05cbb:
    cmp word [bp-0x1bbc],0x55 ; 05CBB 83BE44E455
    %if ($ - %%insn_05cbb) > 5
        %error "LONG_05CBB"
    %endif
    times 5 - ($ - %%insn_05cbb) db 0
    %%insn_05cc0:
    jz short 0x5cdd ; 05CC0 741B
    %if ($ - %%insn_05cc0) > 2
        %error "LONG_05CC0"
    %endif
    times 2 - ($ - %%insn_05cc0) db 0
    %%insn_05cc2:
    push word 0x3e8 ; 05CC2 68E803
    %if ($ - %%insn_05cc2) > 3
        %error "LONG_05CC2"
    %endif
    times 3 - ($ - %%insn_05cc2) db 0
    %%insn_05cc5:
    push word 0x55 ; 05CC5 6A55
    %if ($ - %%insn_05cc5) > 2
        %error "LONG_05CC5"
    %endif
    times 2 - ($ - %%insn_05cc5) db 0
    %%insn_05cc7:
    push word [bp-0x1bc8] ; 05CC7 FFB638E4
    %if ($ - %%insn_05cc7) > 4
        %error "LONG_05CC7"
    %endif
    times 4 - ($ - %%insn_05cc7) db 0
    %%insn_05ccb:
    push word [bp-0x1bce] ; 05CCB FFB632E4
    %if ($ - %%insn_05ccb) > 4
        %error "LONG_05CCB"
    %endif
    times 4 - ($ - %%insn_05ccb) db 0
    %%insn_05ccf:
    call word 0x702:word 0xd1c ; 05CCF 9A1C0D0207
    %if ($ - %%insn_05ccf) > 5
        %error "LONG_05CCF"
    %endif
    times 5 - ($ - %%insn_05ccf) db 0
    %%insn_05cd4:
    add sp,0x8 ; 05CD4 83C408
    %if ($ - %%insn_05cd4) > 3
        %error "LONG_05CD4"
    %endif
    times 3 - ($ - %%insn_05cd4) db 0
    %%insn_05cd7:
    mov word [bp-0x1bbc],0x55 ; 05CD7 C78644E45500
    %if ($ - %%insn_05cd7) > 6
        %error "LONG_05CD7"
    %endif
    times 6 - ($ - %%insn_05cd7) db 0
    %%insn_05cdd:
    ret ; 05CDD C3
    %if ($ - %%insn_05cdd) > 1
        %error "LONG_05CDD"
    %endif
    times 1 - ($ - %%insn_05cdd) db 0
    %if ($ - %%fragment_start) != 216
        %error "SIZE_05C06"
    %endif
%endmacro
