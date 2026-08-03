; Linear entry 07A47 (1702:0a27)
; Ghidra working symbol: FUN_1702_0a27
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_07a47_part_00 0
    %%fragment_start:
func_07a47:
    %%insn_07a47:
    push bp ; 07A47 55
    %if ($ - %%insn_07a47) > 1
        %error "LONG_07A47"
    %endif
    times 1 - ($ - %%insn_07a47) db 0
    db 0x8B, 0xEC ; 07A48 8BEC | mov bp,sp | encoding preserved
    %%insn_07a4a:
    push ds ; 07A4A 1E
    %if ($ - %%insn_07a4a) > 1
        %error "LONG_07A4A"
    %endif
    times 1 - ($ - %%insn_07a4a) db 0
    %%insn_07a4b:
    push si ; 07A4B 56
    %if ($ - %%insn_07a4b) > 1
        %error "LONG_07A4B"
    %endif
    times 1 - ($ - %%insn_07a4b) db 0
    %%insn_07a4c:
    push di ; 07A4C 57
    %if ($ - %%insn_07a4c) > 1
        %error "LONG_07A4C"
    %endif
    times 1 - ($ - %%insn_07a4c) db 0
    %%insn_07a4d:
    pushf ; 07A4D 9C
    %if ($ - %%insn_07a4d) > 1
        %error "LONG_07A4D"
    %endif
    times 1 - ($ - %%insn_07a4d) db 0
    %%insn_07a4e:
    cli ; 07A4E FA
    %if ($ - %%insn_07a4e) > 1
        %error "LONG_07A4E"
    %endif
    times 1 - ($ - %%insn_07a4e) db 0
    %%insn_07a4f:
    mov word [cs:0x1ae],0x0 ; 07A4F 2EC706AE010000
    %if ($ - %%insn_07a4f) > 7
        %error "LONG_07A4F"
    %endif
    times 7 - ($ - %%insn_07a4f) db 0
    %%insn_07a56:
    mov si,[cs:0x1ae] ; 07A56 2E8B36AE01
    %if ($ - %%insn_07a56) > 5
        %error "LONG_07A56"
    %endif
    times 5 - ($ - %%insn_07a56) db 0
    %%insn_07a5b:
    shl si,1 ; 07A5B D1E6
    %if ($ - %%insn_07a5b) > 2
        %error "LONG_07A5B"
    %endif
    times 2 - ($ - %%insn_07a5b) db 0
    %%insn_07a5d:
    shl si,1 ; 07A5D D1E6
    %if ($ - %%insn_07a5d) > 2
        %error "LONG_07A5D"
    %endif
    times 2 - ($ - %%insn_07a5d) db 0
    %%insn_07a5f:
    mov ax,[cs:si+0x12a] ; 07A5F 2E8B842A01
    %if ($ - %%insn_07a5f) > 5
        %error "LONG_07A5F"
    %endif
    times 5 - ($ - %%insn_07a5f) db 0
    %%insn_07a64:
    or ax,[cs:si+0x12c] ; 07A64 2E0B842C01
    %if ($ - %%insn_07a64) > 5
        %error "LONG_07A64"
    %endif
    times 5 - ($ - %%insn_07a64) db 0
    %%insn_07a69:
    jz short 0x7a7d ; 07A69 7412
    %if ($ - %%insn_07a69) > 2
        %error "LONG_07A69"
    %endif
    times 2 - ($ - %%insn_07a69) db 0
    %%insn_07a6b:
    inc word [cs:0x1ae] ; 07A6B 2EFF06AE01
    %if ($ - %%insn_07a6b) > 5
        %error "LONG_07A6B"
    %endif
    times 5 - ($ - %%insn_07a6b) db 0
    %%insn_07a70:
    cmp word [cs:0x1ae],0x10 ; 07A70 2E833EAE0110
    %if ($ - %%insn_07a70) > 6
        %error "LONG_07A70"
    %endif
    times 6 - ($ - %%insn_07a70) db 0
    %%insn_07a76:
    jnz short 0x7a56 ; 07A76 75DE
    %if ($ - %%insn_07a76) > 2
        %error "LONG_07A76"
    %endif
    times 2 - ($ - %%insn_07a76) db 0
    %%insn_07a78:
    mov ax,0xffff ; 07A78 B8FFFF
    %if ($ - %%insn_07a78) > 3
        %error "LONG_07A78"
    %endif
    times 3 - ($ - %%insn_07a78) db 0
    %%insn_07a7b:
    jmp short 0x7add ; 07A7B EB60
    %if ($ - %%insn_07a7b) > 2
        %error "LONG_07A7B"
    %endif
    times 2 - ($ - %%insn_07a7b) db 0
    %%insn_07a7d:
    les di,word [bp+0x6] ; 07A7D C47E06
    %if ($ - %%insn_07a7d) > 3
        %error "LONG_07A7D"
    %endif
    times 3 - ($ - %%insn_07a7d) db 0
    %%insn_07a80:
    cmp word [es:di+0x3],0x4944 ; 07A80 26817D034449
    %if ($ - %%insn_07a80) > 6
        %error "LONG_07A80"
    %endif
    times 6 - ($ - %%insn_07a80) db 0
    %%insn_07a86:
    jnz short 0x7a98 ; 07A86 7510
    %if ($ - %%insn_07a86) > 2
        %error "LONG_07A86"
    %endif
    times 2 - ($ - %%insn_07a86) db 0
    %%insn_07a88:
    cmp word [es:di+0x5],0x5047 ; 07A88 26817D054750
    %if ($ - %%insn_07a88) > 6
        %error "LONG_07A88"
    %endif
    times 6 - ($ - %%insn_07a88) db 0
    %%insn_07a8e:
    jnz short 0x7a98 ; 07A8E 7508
    %if ($ - %%insn_07a8e) > 2
        %error "LONG_07A8E"
    %endif
    times 2 - ($ - %%insn_07a8e) db 0
    %%insn_07a90:
    cmp word [es:di+0x7],0x4b41 ; 07A90 26817D07414B
    %if ($ - %%insn_07a90) > 6
        %error "LONG_07A90"
    %endif
    times 6 - ($ - %%insn_07a90) db 0
    %%insn_07a96:
    jz short 0x7ae9 ; 07A96 7451
    %if ($ - %%insn_07a96) > 2
        %error "LONG_07A96"
    %endif
    times 2 - ($ - %%insn_07a96) db 0
    %%insn_07a98:
    mov ax,0xffff ; 07A98 B8FFFF
    %if ($ - %%insn_07a98) > 3
        %error "LONG_07A98"
    %endif
    times 3 - ($ - %%insn_07a98) db 0
    %%insn_07a9b:
    cmp word [es:di+0x2],0x6f43 ; 07A9B 26817D02436F
    %if ($ - %%insn_07a9b) > 6
        %error "LONG_07A9B"
    %endif
    times 6 - ($ - %%insn_07a9b) db 0
    %%insn_07aa1:
    jnz short 0x7add ; 07AA1 753A
    %if ($ - %%insn_07aa1) > 2
        %error "LONG_07AA1"
    %endif
    times 2 - ($ - %%insn_07aa1) db 0
    %%insn_07aa3:
    cmp word [es:di+0x4],0x7970 ; 07AA3 26817D047079
    %if ($ - %%insn_07aa3) > 6
        %error "LONG_07AA3"
    %endif
    times 6 - ($ - %%insn_07aa3) db 0
    %%insn_07aa9:
    jnz short 0x7add ; 07AA9 7532
    %if ($ - %%insn_07aa9) > 2
        %error "LONG_07AA9"
    %endif
    times 2 - ($ - %%insn_07aa9) db 0
    %%insn_07aab:
    add di,[es:di] ; 07AAB 26033D
    %if ($ - %%insn_07aab) > 3
        %error "LONG_07AAB"
    %endif
    times 3 - ($ - %%insn_07aab) db 0
    %%insn_07aae:
    mov [cs:si+0x12a],di ; 07AAE 2E89BC2A01
    %if ($ - %%insn_07aae) > 5
        %error "LONG_07AAE"
    %endif
    times 5 - ($ - %%insn_07aae) db 0
    %%insn_07ab3:
    mov word [cs:si+0x12c],es ; 07AB3 2E8C842C01
    %if ($ - %%insn_07ab3) > 5
        %error "LONG_07AB3"
    %endif
    times 5 - ($ - %%insn_07ab3) db 0
    %%insn_07ab8:
    push word [cs:0x1ae] ; 07AB8 2EFF36AE01
    %if ($ - %%insn_07ab8) > 5
        %error "LONG_07AB8"
    %endif
    times 5 - ($ - %%insn_07ab8) db 0
    %%insn_07abd:
    push cs ; 07ABD 0E
    %if ($ - %%insn_07abd) > 1
        %error "LONG_07ABD"
    %endif
    times 1 - ($ - %%insn_07abd) db 0
    %%insn_07abe:
    call 0x7b71 ; 07ABE E8B000
    %if ($ - %%insn_07abe) > 3
        %error "LONG_07ABE"
    %endif
    times 3 - ($ - %%insn_07abe) db 0
    %%insn_07ac1:
    add sp,0x2 ; 07AC1 83C402
    %if ($ - %%insn_07ac1) > 3
        %error "LONG_07AC1"
    %endif
    times 3 - ($ - %%insn_07ac1) db 0
    %%insn_07ac4:
    mov es,dx ; 07AC4 8EC2
    %if ($ - %%insn_07ac4) > 2
        %error "LONG_07AC4"
    %endif
    times 2 - ($ - %%insn_07ac4) db 0
    db 0x8B, 0xF8 ; 07AC6 8BF8 | mov di,ax | encoding preserved
    db 0x0B, 0xD0 ; 07AC8 0BD0 | or dx,ax | encoding preserved
    %%insn_07aca:
    mov ax,0xffff ; 07ACA B8FFFF
    %if ($ - %%insn_07aca) > 3
        %error "LONG_07ACA"
    %endif
    times 3 - ($ - %%insn_07aca) db 0
    %%insn_07acd:
    jz short 0x7add ; 07ACD 740E
    %if ($ - %%insn_07acd) > 2
        %error "LONG_07ACD"
    %endif
    times 2 - ($ - %%insn_07acd) db 0
    %%insn_07acf:
    mov dx,[es:di] ; 07ACF 268B15
    %if ($ - %%insn_07acf) > 3
        %error "LONG_07ACF"
    %endif
    times 3 - ($ - %%insn_07acf) db 0
    %%insn_07ad2:
    cmp dx,[cs:0x3be] ; 07AD2 2E3B16BE03
    %if ($ - %%insn_07ad2) > 5
        %error "LONG_07AD2"
    %endif
    times 5 - ($ - %%insn_07ad2) db 0
    %%insn_07ad7:
    ja short 0x7add ; 07AD7 7704
    %if ($ - %%insn_07ad7) > 2
        %error "LONG_07AD7"
    %endif
    times 2 - ($ - %%insn_07ad7) db 0
    %%insn_07ad9:
    mov ax,[cs:0x1ae] ; 07AD9 2EA1AE01
    %if ($ - %%insn_07ad9) > 4
        %error "LONG_07AD9"
    %endif
    times 4 - ($ - %%insn_07ad9) db 0
    %%insn_07add:
    db 0x80 ; 07ADD 80
    %if ($ - %%insn_07add) > 1
        %error "LONG_07ADD"
    %endif
    times 1 - ($ - %%insn_07add) db 0
    %if ($ - %%fragment_start) != 151
        %error "SIZE_07A47"
    %endif
%endmacro

%macro emit_func_07a47_part_01 0
    %%fragment_start:
    %%insn_07adf:
    add [0xfae8],cl ; 07ADF 000EE8FA
    %if ($ - %%insn_07adf) > 4
        %error "LONG_07ADF"
    %endif
    times 4 - ($ - %%insn_07adf) db 0
    %%insn_07ae3:
    call word far [bx+0x5e] ; 07AE3 FF5F5E
    %if ($ - %%insn_07ae3) > 3
        %error "LONG_07AE3"
    %endif
    times 3 - ($ - %%insn_07ae3) db 0
    %%insn_07ae6:
    pop ds ; 07AE6 1F
    %if ($ - %%insn_07ae6) > 1
        %error "LONG_07AE6"
    %endif
    times 1 - ($ - %%insn_07ae6) db 0
    %%insn_07ae7:
    pop bp ; 07AE7 5D
    %if ($ - %%insn_07ae7) > 1
        %error "LONG_07AE7"
    %endif
    times 1 - ($ - %%insn_07ae7) db 0
    %%insn_07ae8:
    retf ; 07AE8 CB
    %if ($ - %%insn_07ae8) > 1
        %error "LONG_07AE8"
    %endif
    times 1 - ($ - %%insn_07ae8) db 0
    %%insn_07ae9:
    mov ax,0xffff ; 07AE9 B8FFFF
    %if ($ - %%insn_07ae9) > 3
        %error "LONG_07AE9"
    %endif
    times 3 - ($ - %%insn_07ae9) db 0
    %%insn_07aec:
    cmp word [cs:0xe26],0x0 ; 07AEC 2E833E260E00
    %if ($ - %%insn_07aec) > 6
        %error "LONG_07AEC"
    %endif
    times 6 - ($ - %%insn_07aec) db 0
    %%insn_07af2:
    jnz short 0x7add ; 07AF2 75E9
    %if ($ - %%insn_07af2) > 2
        %error "LONG_07AF2"
    %endif
    times 2 - ($ - %%insn_07af2) db 0
    %%insn_07af4:
    mov word [cs:0xe26],0x1 ; 07AF4 2EC706260E0100
    %if ($ - %%insn_07af4) > 7
        %error "LONG_07AF4"
    %endif
    times 7 - ($ - %%insn_07af4) db 0
    %%insn_07afb:
    mov ax,[cs:0x1ae] ; 07AFB 2EA1AE01
    %if ($ - %%insn_07afb) > 4
        %error "LONG_07AFB"
    %endif
    times 4 - ($ - %%insn_07afb) db 0
    %%insn_07aff:
    mov [cs:0xe24],ax ; 07AFF 2EA3240E
    %if ($ - %%insn_07aff) > 4
        %error "LONG_07AFF"
    %endif
    times 4 - ($ - %%insn_07aff) db 0
    %%insn_07b03:
    mov ax,es ; 07B03 8CC0
    %if ($ - %%insn_07b03) > 2
        %error "LONG_07B03"
    %endif
    times 2 - ($ - %%insn_07b03) db 0
    db 0x2D, 0x10, 0x00 ; 07B05 2D1000 | sub ax,0x10 | encoding preserved
    %%insn_07b08:
    add di,0x100 ; 07B08 81C70001
    %if ($ - %%insn_07b08) > 4
        %error "LONG_07B08"
    %endif
    times 4 - ($ - %%insn_07b08) db 0
    %%insn_07b0c:
    mov [cs:0xe2c],ax ; 07B0C 2EA32C0E
    %if ($ - %%insn_07b0c) > 4
        %error "LONG_07B0C"
    %endif
    times 4 - ($ - %%insn_07b0c) db 0
    %%insn_07b10:
    mov [cs:0xe2a],di ; 07B10 2E893E2A0E
    %if ($ - %%insn_07b10) > 5
        %error "LONG_07B10"
    %endif
    times 5 - ($ - %%insn_07b10) db 0
    %%insn_07b15:
    mov word [cs:si+0x12a],0xd82 ; 07B15 2EC7842A01820D
    %if ($ - %%insn_07b15) > 7
        %error "LONG_07B15"
    %endif
    times 7 - ($ - %%insn_07b15) db 0
    %%insn_07b1c:
    mov word [cs:si+0x12c],cs ; 07B1C 2E8C8C2C01
    %if ($ - %%insn_07b1c) > 5
        %error "LONG_07B1C"
    %endif
    times 5 - ($ - %%insn_07b1c) db 0
    %%insn_07b21:
    mov word [cs:0xe28],0x0 ; 07B21 2EC706280E0000
    %if ($ - %%insn_07b21) > 7
        %error "LONG_07B21"
    %endif
    times 7 - ($ - %%insn_07b21) db 0
    %%insn_07b28:
    jmp short 0x7ad9 ; 07B28 EBAF
    %if ($ - %%insn_07b28) > 2
        %error "LONG_07B28"
    %endif
    times 2 - ($ - %%insn_07b28) db 0
    %if ($ - %%fragment_start) != 75
        %error "SIZE_07ADF"
    %endif
%endmacro
