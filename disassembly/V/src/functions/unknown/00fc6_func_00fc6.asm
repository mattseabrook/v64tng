; Linear entry 00FC6 (1000:0fc6)
; Ghidra working symbol: FUN_1000_0fc6
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_00fc6_part_00 0
    %%fragment_start:
func_00fc6:
    %%insn_00fc6:
    pusha ; 00FC6 60
    %if ($ - %%insn_00fc6) > 1
        %error "LONG_00FC6"
    %endif
    times 1 - ($ - %%insn_00fc6) db 0
    %%insn_00fc7:
    push ds ; 00FC7 1E
    %if ($ - %%insn_00fc7) > 1
        %error "LONG_00FC7"
    %endif
    times 1 - ($ - %%insn_00fc7) db 0
    %%insn_00fc8:
    mov ds,word [bp-0x2aae] ; 00FC8 8E9E52D5
    %if ($ - %%insn_00fc8) > 4
        %error "LONG_00FC8"
    %endif
    times 4 - ($ - %%insn_00fc8) db 0
    %%insn_00fcc:
    mov word [bp-0x30b2],0x100 ; 00FCC C7864ECF0001
    %if ($ - %%insn_00fcc) > 6
        %error "LONG_00FCC"
    %endif
    times 6 - ($ - %%insn_00fcc) db 0
    %%insn_00fd2:
    mov word [bp-0x30b0],0x100 ; 00FD2 C78650CF0001
    %if ($ - %%insn_00fd2) > 6
        %error "LONG_00FD2"
    %endif
    times 6 - ($ - %%insn_00fd2) db 0
    %%insn_00fd8:
    mov word [bp-0x30ae],0x100 ; 00FD8 C78652CF0001
    %if ($ - %%insn_00fd8) > 6
        %error "LONG_00FD8"
    %endif
    times 6 - ($ - %%insn_00fd8) db 0
    %%insn_00fde:
    mov cx,0x100 ; 00FDE B90001
    %if ($ - %%insn_00fde) > 3
        %error "LONG_00FDE"
    %endif
    times 3 - ($ - %%insn_00fde) db 0
    %%insn_00fe1:
    mov si,0xcf8c ; 00FE1 BE8CCF
    %if ($ - %%insn_00fe1) > 3
        %error "LONG_00FE1"
    %endif
    times 3 - ($ - %%insn_00fe1) db 0
    %%insn_00fe4:
    mov di,0xcb20 ; 00FE4 BF20CB
    %if ($ - %%insn_00fe4) > 3
        %error "LONG_00FE4"
    %endif
    times 3 - ($ - %%insn_00fe4) db 0
    %%insn_00fe7:
    lodsb ; 00FE7 AC
    %if ($ - %%insn_00fe7) > 1
        %error "LONG_00FE7"
    %endif
    times 1 - ($ - %%insn_00fe7) db 0
    db 0x32, 0xE4 ; 00FE8 32E4 | xor ah,ah | encoding preserved
    %%insn_00fea:
    mul word [0xcf4e] ; 00FEA F7264ECF
    %if ($ - %%insn_00fea) > 4
        %error "LONG_00FEA"
    %endif
    times 4 - ($ - %%insn_00fea) db 0
    %%insn_00fee:
    mov [di],ah ; 00FEE 8825
    %if ($ - %%insn_00fee) > 2
        %error "LONG_00FEE"
    %endif
    times 2 - ($ - %%insn_00fee) db 0
    %%insn_00ff0:
    inc di ; 00FF0 47
    %if ($ - %%insn_00ff0) > 1
        %error "LONG_00FF0"
    %endif
    times 1 - ($ - %%insn_00ff0) db 0
    %%insn_00ff1:
    lodsb ; 00FF1 AC
    %if ($ - %%insn_00ff1) > 1
        %error "LONG_00FF1"
    %endif
    times 1 - ($ - %%insn_00ff1) db 0
    db 0x32, 0xE4 ; 00FF2 32E4 | xor ah,ah | encoding preserved
    %%insn_00ff4:
    mul word [0xcf50] ; 00FF4 F72650CF
    %if ($ - %%insn_00ff4) > 4
        %error "LONG_00FF4"
    %endif
    times 4 - ($ - %%insn_00ff4) db 0
    %%insn_00ff8:
    mov [di],ah ; 00FF8 8825
    %if ($ - %%insn_00ff8) > 2
        %error "LONG_00FF8"
    %endif
    times 2 - ($ - %%insn_00ff8) db 0
    %%insn_00ffa:
    inc di ; 00FFA 47
    %if ($ - %%insn_00ffa) > 1
        %error "LONG_00FFA"
    %endif
    times 1 - ($ - %%insn_00ffa) db 0
    %%insn_00ffb:
    lodsb ; 00FFB AC
    %if ($ - %%insn_00ffb) > 1
        %error "LONG_00FFB"
    %endif
    times 1 - ($ - %%insn_00ffb) db 0
    db 0x32, 0xE4 ; 00FFC 32E4 | xor ah,ah | encoding preserved
    %%insn_00ffe:
    mul word [0xcf52] ; 00FFE F72652CF
    %if ($ - %%insn_00ffe) > 4
        %error "LONG_00FFE"
    %endif
    times 4 - ($ - %%insn_00ffe) db 0
    %%insn_01002:
    mov [di],ah ; 01002 8825
    %if ($ - %%insn_01002) > 2
        %error "LONG_01002"
    %endif
    times 2 - ($ - %%insn_01002) db 0
    %%insn_01004:
    inc di ; 01004 47
    %if ($ - %%insn_01004) > 1
        %error "LONG_01004"
    %endif
    times 1 - ($ - %%insn_01004) db 0
    %%insn_01005:
    dec cx ; 01005 49
    %if ($ - %%insn_01005) > 1
        %error "LONG_01005"
    %endif
    times 1 - ($ - %%insn_01005) db 0
    %%insn_01006:
    jnz short 0xfe7 ; 01006 75DF
    %if ($ - %%insn_01006) > 2
        %error "LONG_01006"
    %endif
    times 2 - ($ - %%insn_01006) db 0
    %%insn_01008:
    push dx ; 01008 52
    %if ($ - %%insn_01008) > 1
        %error "LONG_01008"
    %endif
    times 1 - ($ - %%insn_01008) db 0
    %%insn_01009:
    mov dx,0x3da ; 01009 BADA03
    %if ($ - %%insn_01009) > 3
        %error "LONG_01009"
    %endif
    times 3 - ($ - %%insn_01009) db 0
    %%insn_0100c:
    in al,dx ; 0100C EC
    %if ($ - %%insn_0100c) > 1
        %error "LONG_0100C"
    %endif
    times 1 - ($ - %%insn_0100c) db 0
    %%insn_0100d:
    and al,0x8 ; 0100D 2408
    %if ($ - %%insn_0100d) > 2
        %error "LONG_0100D"
    %endif
    times 2 - ($ - %%insn_0100d) db 0
    %%insn_0100f:
    jmp short 0x1011 ; 0100F EB00
    %if ($ - %%insn_0100f) > 2
        %error "LONG_0100F"
    %endif
    times 2 - ($ - %%insn_0100f) db 0
    %%insn_01011:
    jnz short 0x100c ; 01011 75F9
    %if ($ - %%insn_01011) > 2
        %error "LONG_01011"
    %endif
    times 2 - ($ - %%insn_01011) db 0
    %%insn_01013:
    in al,dx ; 01013 EC
    %if ($ - %%insn_01013) > 1
        %error "LONG_01013"
    %endif
    times 1 - ($ - %%insn_01013) db 0
    %%insn_01014:
    and al,0x8 ; 01014 2408
    %if ($ - %%insn_01014) > 2
        %error "LONG_01014"
    %endif
    times 2 - ($ - %%insn_01014) db 0
    %%insn_01016:
    jmp short 0x1018 ; 01016 EB00
    %if ($ - %%insn_01016) > 2
        %error "LONG_01016"
    %endif
    times 2 - ($ - %%insn_01016) db 0
    %%insn_01018:
    jz short 0x1013 ; 01018 74F9
    %if ($ - %%insn_01018) > 2
        %error "LONG_01018"
    %endif
    times 2 - ($ - %%insn_01018) db 0
    %%insn_0101a:
    pop dx ; 0101A 5A
    %if ($ - %%insn_0101a) > 1
        %error "LONG_0101A"
    %endif
    times 1 - ($ - %%insn_0101a) db 0
    %%insn_0101b:
    mov dx,0x3c8 ; 0101B BAC803
    %if ($ - %%insn_0101b) > 3
        %error "LONG_0101B"
    %endif
    times 3 - ($ - %%insn_0101b) db 0
    db 0x32, 0xC0 ; 0101E 32C0 | xor al,al | encoding preserved
    %%insn_01020:
    out dx,al ; 01020 EE
    %if ($ - %%insn_01020) > 1
        %error "LONG_01020"
    %endif
    times 1 - ($ - %%insn_01020) db 0
    %%insn_01021:
    inc dx ; 01021 42
    %if ($ - %%insn_01021) > 1
        %error "LONG_01021"
    %endif
    times 1 - ($ - %%insn_01021) db 0
    %%insn_01022:
    mov cx,0x300 ; 01022 B90003
    %if ($ - %%insn_01022) > 3
        %error "LONG_01022"
    %endif
    times 3 - ($ - %%insn_01022) db 0
    %%insn_01025:
    mov si,0xcb20 ; 01025 BE20CB
    %if ($ - %%insn_01025) > 3
        %error "LONG_01025"
    %endif
    times 3 - ($ - %%insn_01025) db 0
    %%insn_01028:
    lodsb ; 01028 AC
    %if ($ - %%insn_01028) > 1
        %error "LONG_01028"
    %endif
    times 1 - ($ - %%insn_01028) db 0
    %%insn_01029:
    out dx,al ; 01029 EE
    %if ($ - %%insn_01029) > 1
        %error "LONG_01029"
    %endif
    times 1 - ($ - %%insn_01029) db 0
    %%insn_0102a:
    dec cx ; 0102A 49
    %if ($ - %%insn_0102a) > 1
        %error "LONG_0102A"
    %endif
    times 1 - ($ - %%insn_0102a) db 0
    %%insn_0102b:
    jnz short 0x1028 ; 0102B 75FB
    %if ($ - %%insn_0102b) > 2
        %error "LONG_0102B"
    %endif
    times 2 - ($ - %%insn_0102b) db 0
    %%insn_0102d:
    cmp word [0xcf50],0x0 ; 0102D 833E50CF00
    %if ($ - %%insn_0102d) > 5
        %error "LONG_0102D"
    %endif
    times 5 - ($ - %%insn_0102d) db 0
    %%insn_01032:
    jz short 0x103e ; 01032 740A
    %if ($ - %%insn_01032) > 2
        %error "LONG_01032"
    %endif
    times 2 - ($ - %%insn_01032) db 0
    %%insn_01034:
    sub word [0xcf50],0x4 ; 01034 832E50CF04
    %if ($ - %%insn_01034) > 5
        %error "LONG_01034"
    %endif
    times 5 - ($ - %%insn_01034) db 0
    %%insn_01039:
    sub word [0xcf52],0x4 ; 01039 832E52CF04
    %if ($ - %%insn_01039) > 5
        %error "LONG_01039"
    %endif
    times 5 - ($ - %%insn_01039) db 0
    %%insn_0103e:
    cmp word [0xcf4e],0x0 ; 0103E 833E4ECF00
    %if ($ - %%insn_0103e) > 5
        %error "LONG_0103E"
    %endif
    times 5 - ($ - %%insn_0103e) db 0
    %%insn_01043:
    jz short 0x1054 ; 01043 740F
    %if ($ - %%insn_01043) > 2
        %error "LONG_01043"
    %endif
    times 2 - ($ - %%insn_01043) db 0
    %%insn_01045:
    sub word [0xcf4e],0x2 ; 01045 832E4ECF02
    %if ($ - %%insn_01045) > 5
        %error "LONG_01045"
    %endif
    times 5 - ($ - %%insn_01045) db 0
    %%insn_0104a:
    jnc short 0x1052 ; 0104A 7306
    %if ($ - %%insn_0104a) > 2
        %error "LONG_0104A"
    %endif
    times 2 - ($ - %%insn_0104a) db 0
    %%insn_0104c:
    mov word [0xcf4e],0x0 ; 0104C C7064ECF0000
    %if ($ - %%insn_0104c) > 6
        %error "LONG_0104C"
    %endif
    times 6 - ($ - %%insn_0104c) db 0
    %%insn_01052:
    jmp short 0xfde ; 01052 EB8A
    %if ($ - %%insn_01052) > 2
        %error "LONG_01052"
    %endif
    times 2 - ($ - %%insn_01052) db 0
    %%insn_01054:
    call 0x285d ; 01054 E80618
    %if ($ - %%insn_01054) > 3
        %error "LONG_01054"
    %endif
    times 3 - ($ - %%insn_01054) db 0
    %%insn_01057:
    pop ds ; 01057 1F
    %if ($ - %%insn_01057) > 1
        %error "LONG_01057"
    %endif
    times 1 - ($ - %%insn_01057) db 0
    %%insn_01058:
    popa ; 01058 61
    %if ($ - %%insn_01058) > 1
        %error "LONG_01058"
    %endif
    times 1 - ($ - %%insn_01058) db 0
    %%insn_01059:
    ret ; 01059 C3
    %if ($ - %%insn_01059) > 1
        %error "LONG_01059"
    %endif
    times 1 - ($ - %%insn_01059) db 0
    %if ($ - %%fragment_start) != 148
        %error "SIZE_00FC6"
    %endif
%endmacro
