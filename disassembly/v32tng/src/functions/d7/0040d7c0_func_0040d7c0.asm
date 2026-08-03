; PE virtual entry 0040D7C0
; Ghidra working symbol: FUN_0040d7c0
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040d7c0_part_00 0
    %%fragment_start:
func_0040d7c0:
    %%insn_0040d7c0:
    mov ecx,[esp+0x4] ; 0040D7C0 8B4C2404
    %if ($ - %%insn_0040d7c0) > 4
        %error "LONG_0040D7C0"
    %endif
    times 4 - ($ - %%insn_0040d7c0) db 0
    %%insn_0040d7c4:
    push edi ; 0040D7C4 57
    %if ($ - %%insn_0040d7c4) > 1
        %error "LONG_0040D7C4"
    %endif
    times 1 - ($ - %%insn_0040d7c4) db 0
    %%insn_0040d7c5:
    test ecx,0x3 ; 0040D7C5 F7C103000000
    %if ($ - %%insn_0040d7c5) > 6
        %error "LONG_0040D7C5"
    %endif
    times 6 - ($ - %%insn_0040d7c5) db 0
    %%insn_0040d7cb:
    jz short 0x40d7dc ; 0040D7CB 740F
    %if ($ - %%insn_0040d7cb) > 2
        %error "LONG_0040D7CB"
    %endif
    times 2 - ($ - %%insn_0040d7cb) db 0
    %%insn_0040d7cd:
    mov al,[ecx] ; 0040D7CD 8A01
    %if ($ - %%insn_0040d7cd) > 2
        %error "LONG_0040D7CD"
    %endif
    times 2 - ($ - %%insn_0040d7cd) db 0
    %%insn_0040d7cf:
    inc ecx ; 0040D7CF 41
    %if ($ - %%insn_0040d7cf) > 1
        %error "LONG_0040D7CF"
    %endif
    times 1 - ($ - %%insn_0040d7cf) db 0
    %%insn_0040d7d0:
    test al,al ; 0040D7D0 84C0
    %if ($ - %%insn_0040d7d0) > 2
        %error "LONG_0040D7D0"
    %endif
    times 2 - ($ - %%insn_0040d7d0) db 0
    %%insn_0040d7d2:
    jz short 0x40d80f ; 0040D7D2 743B
    %if ($ - %%insn_0040d7d2) > 2
        %error "LONG_0040D7D2"
    %endif
    times 2 - ($ - %%insn_0040d7d2) db 0
    %%insn_0040d7d4:
    test ecx,0x3 ; 0040D7D4 F7C103000000
    %if ($ - %%insn_0040d7d4) > 6
        %error "LONG_0040D7D4"
    %endif
    times 6 - ($ - %%insn_0040d7d4) db 0
    %%insn_0040d7da:
    jnz short 0x40d7cd ; 0040D7DA 75F1
    %if ($ - %%insn_0040d7da) > 2
        %error "LONG_0040D7DA"
    %endif
    times 2 - ($ - %%insn_0040d7da) db 0
    %%insn_0040d7dc:
    mov eax,[ecx] ; 0040D7DC 8B01
    %if ($ - %%insn_0040d7dc) > 2
        %error "LONG_0040D7DC"
    %endif
    times 2 - ($ - %%insn_0040d7dc) db 0
    %%insn_0040d7de:
    mov edx,0x7efefeff ; 0040D7DE BAFFFEFE7E
    %if ($ - %%insn_0040d7de) > 5
        %error "LONG_0040D7DE"
    %endif
    times 5 - ($ - %%insn_0040d7de) db 0
    db 0x03, 0xD0 ; 0040D7E3 03D0 | add edx,eax | encoding preserved
    %%insn_0040d7e5:
    xor eax,0xffffffffffffffff ; 0040D7E5 83F0FF
    %if ($ - %%insn_0040d7e5) > 3
        %error "LONG_0040D7E5"
    %endif
    times 3 - ($ - %%insn_0040d7e5) db 0
    db 0x33, 0xC2 ; 0040D7E8 33C2 | xor eax,edx | encoding preserved
    %%insn_0040d7ea:
    add ecx,0x4 ; 0040D7EA 83C104
    %if ($ - %%insn_0040d7ea) > 3
        %error "LONG_0040D7EA"
    %endif
    times 3 - ($ - %%insn_0040d7ea) db 0
    %%insn_0040d7ed:
    test eax,0x81010100 ; 0040D7ED A900010181
    %if ($ - %%insn_0040d7ed) > 5
        %error "LONG_0040D7ED"
    %endif
    times 5 - ($ - %%insn_0040d7ed) db 0
    %%insn_0040d7f2:
    jz short 0x40d7dc ; 0040D7F2 74E8
    %if ($ - %%insn_0040d7f2) > 2
        %error "LONG_0040D7F2"
    %endif
    times 2 - ($ - %%insn_0040d7f2) db 0
    %%insn_0040d7f4:
    mov eax,[ecx-0x4] ; 0040D7F4 8B41FC
    %if ($ - %%insn_0040d7f4) > 3
        %error "LONG_0040D7F4"
    %endif
    times 3 - ($ - %%insn_0040d7f4) db 0
    %%insn_0040d7f7:
    test al,al ; 0040D7F7 84C0
    %if ($ - %%insn_0040d7f7) > 2
        %error "LONG_0040D7F7"
    %endif
    times 2 - ($ - %%insn_0040d7f7) db 0
    %%insn_0040d7f9:
    jz short 0x40d81e ; 0040D7F9 7423
    %if ($ - %%insn_0040d7f9) > 2
        %error "LONG_0040D7F9"
    %endif
    times 2 - ($ - %%insn_0040d7f9) db 0
    %%insn_0040d7fb:
    test ah,ah ; 0040D7FB 84E4
    %if ($ - %%insn_0040d7fb) > 2
        %error "LONG_0040D7FB"
    %endif
    times 2 - ($ - %%insn_0040d7fb) db 0
    %%insn_0040d7fd:
    jz short 0x40d819 ; 0040D7FD 741A
    %if ($ - %%insn_0040d7fd) > 2
        %error "LONG_0040D7FD"
    %endif
    times 2 - ($ - %%insn_0040d7fd) db 0
    %%insn_0040d7ff:
    test eax,0xff0000 ; 0040D7FF A90000FF00
    %if ($ - %%insn_0040d7ff) > 5
        %error "LONG_0040D7FF"
    %endif
    times 5 - ($ - %%insn_0040d7ff) db 0
    %%insn_0040d804:
    jz short 0x40d814 ; 0040D804 740E
    %if ($ - %%insn_0040d804) > 2
        %error "LONG_0040D804"
    %endif
    times 2 - ($ - %%insn_0040d804) db 0
    %%insn_0040d806:
    test eax,0xff000000 ; 0040D806 A9000000FF
    %if ($ - %%insn_0040d806) > 5
        %error "LONG_0040D806"
    %endif
    times 5 - ($ - %%insn_0040d806) db 0
    %%insn_0040d80b:
    jz short 0x40d80f ; 0040D80B 7402
    %if ($ - %%insn_0040d80b) > 2
        %error "LONG_0040D80B"
    %endif
    times 2 - ($ - %%insn_0040d80b) db 0
    %%insn_0040d80d:
    jmp short 0x40d7dc ; 0040D80D EBCD
    %if ($ - %%insn_0040d80d) > 2
        %error "LONG_0040D80D"
    %endif
    times 2 - ($ - %%insn_0040d80d) db 0
    %%insn_0040d80f:
    lea edi,[ecx-0x1] ; 0040D80F 8D79FF
    %if ($ - %%insn_0040d80f) > 3
        %error "LONG_0040D80F"
    %endif
    times 3 - ($ - %%insn_0040d80f) db 0
    %%insn_0040d812:
    jmp short 0x40d821 ; 0040D812 EB0D
    %if ($ - %%insn_0040d812) > 2
        %error "LONG_0040D812"
    %endif
    times 2 - ($ - %%insn_0040d812) db 0
    %%insn_0040d814:
    lea edi,[ecx-0x2] ; 0040D814 8D79FE
    %if ($ - %%insn_0040d814) > 3
        %error "LONG_0040D814"
    %endif
    times 3 - ($ - %%insn_0040d814) db 0
    %%insn_0040d817:
    jmp short 0x40d821 ; 0040D817 EB08
    %if ($ - %%insn_0040d817) > 2
        %error "LONG_0040D817"
    %endif
    times 2 - ($ - %%insn_0040d817) db 0
    %%insn_0040d819:
    lea edi,[ecx-0x3] ; 0040D819 8D79FD
    %if ($ - %%insn_0040d819) > 3
        %error "LONG_0040D819"
    %endif
    times 3 - ($ - %%insn_0040d819) db 0
    %%insn_0040d81c:
    jmp short 0x40d821 ; 0040D81C EB03
    %if ($ - %%insn_0040d81c) > 2
        %error "LONG_0040D81C"
    %endif
    times 2 - ($ - %%insn_0040d81c) db 0
    %%insn_0040d81e:
    lea edi,[ecx-0x4] ; 0040D81E 8D79FC
    %if ($ - %%insn_0040d81e) > 3
        %error "LONG_0040D81E"
    %endif
    times 3 - ($ - %%insn_0040d81e) db 0
    %%insn_0040d821:
    mov ecx,[esp+0xc] ; 0040D821 8B4C240C
    %if ($ - %%insn_0040d821) > 4
        %error "LONG_0040D821"
    %endif
    times 4 - ($ - %%insn_0040d821) db 0
    %%insn_0040d825:
    test ecx,0x3 ; 0040D825 F7C103000000
    %if ($ - %%insn_0040d825) > 6
        %error "LONG_0040D825"
    %endif
    times 6 - ($ - %%insn_0040d825) db 0
    %%insn_0040d82b:
    jz short 0x40d846 ; 0040D82B 7419
    %if ($ - %%insn_0040d82b) > 2
        %error "LONG_0040D82B"
    %endif
    times 2 - ($ - %%insn_0040d82b) db 0
    %%insn_0040d82d:
    mov dl,[ecx] ; 0040D82D 8A11
    %if ($ - %%insn_0040d82d) > 2
        %error "LONG_0040D82D"
    %endif
    times 2 - ($ - %%insn_0040d82d) db 0
    %%insn_0040d82f:
    inc ecx ; 0040D82F 41
    %if ($ - %%insn_0040d82f) > 1
        %error "LONG_0040D82F"
    %endif
    times 1 - ($ - %%insn_0040d82f) db 0
    %%insn_0040d830:
    test dl,dl ; 0040D830 84D2
    %if ($ - %%insn_0040d830) > 2
        %error "LONG_0040D830"
    %endif
    times 2 - ($ - %%insn_0040d830) db 0
    %%insn_0040d832:
    jz short 0x40d898 ; 0040D832 7464
    %if ($ - %%insn_0040d832) > 2
        %error "LONG_0040D832"
    %endif
    times 2 - ($ - %%insn_0040d832) db 0
    %%insn_0040d834:
    mov [edi],dl ; 0040D834 8817
    %if ($ - %%insn_0040d834) > 2
        %error "LONG_0040D834"
    %endif
    times 2 - ($ - %%insn_0040d834) db 0
    %%insn_0040d836:
    inc edi ; 0040D836 47
    %if ($ - %%insn_0040d836) > 1
        %error "LONG_0040D836"
    %endif
    times 1 - ($ - %%insn_0040d836) db 0
    %%insn_0040d837:
    test ecx,0x3 ; 0040D837 F7C103000000
    %if ($ - %%insn_0040d837) > 6
        %error "LONG_0040D837"
    %endif
    times 6 - ($ - %%insn_0040d837) db 0
    %%insn_0040d83d:
    jnz short 0x40d82d ; 0040D83D 75EE
    %if ($ - %%insn_0040d83d) > 2
        %error "LONG_0040D83D"
    %endif
    times 2 - ($ - %%insn_0040d83d) db 0
    %%insn_0040d83f:
    jmp short 0x40d846 ; 0040D83F EB05
    %if ($ - %%insn_0040d83f) > 2
        %error "LONG_0040D83F"
    %endif
    times 2 - ($ - %%insn_0040d83f) db 0
    %%insn_0040d841:
    mov [edi],edx ; 0040D841 8917
    %if ($ - %%insn_0040d841) > 2
        %error "LONG_0040D841"
    %endif
    times 2 - ($ - %%insn_0040d841) db 0
    %%insn_0040d843:
    add edi,0x4 ; 0040D843 83C704
    %if ($ - %%insn_0040d843) > 3
        %error "LONG_0040D843"
    %endif
    times 3 - ($ - %%insn_0040d843) db 0
    %%insn_0040d846:
    mov edx,0x7efefeff ; 0040D846 BAFFFEFE7E
    %if ($ - %%insn_0040d846) > 5
        %error "LONG_0040D846"
    %endif
    times 5 - ($ - %%insn_0040d846) db 0
    %%insn_0040d84b:
    mov eax,[ecx] ; 0040D84B 8B01
    %if ($ - %%insn_0040d84b) > 2
        %error "LONG_0040D84B"
    %endif
    times 2 - ($ - %%insn_0040d84b) db 0
    db 0x03, 0xD0 ; 0040D84D 03D0 | add edx,eax | encoding preserved
    %%insn_0040d84f:
    xor eax,0xffffffffffffffff ; 0040D84F 83F0FF
    %if ($ - %%insn_0040d84f) > 3
        %error "LONG_0040D84F"
    %endif
    times 3 - ($ - %%insn_0040d84f) db 0
    db 0x33, 0xC2 ; 0040D852 33C2 | xor eax,edx | encoding preserved
    %%insn_0040d854:
    mov edx,[ecx] ; 0040D854 8B11
    %if ($ - %%insn_0040d854) > 2
        %error "LONG_0040D854"
    %endif
    times 2 - ($ - %%insn_0040d854) db 0
    %%insn_0040d856:
    add ecx,0x4 ; 0040D856 83C104
    %if ($ - %%insn_0040d856) > 3
        %error "LONG_0040D856"
    %endif
    times 3 - ($ - %%insn_0040d856) db 0
    %%insn_0040d859:
    test eax,0x81010100 ; 0040D859 A900010181
    %if ($ - %%insn_0040d859) > 5
        %error "LONG_0040D859"
    %endif
    times 5 - ($ - %%insn_0040d859) db 0
    %%insn_0040d85e:
    jz short 0x40d841 ; 0040D85E 74E1
    %if ($ - %%insn_0040d85e) > 2
        %error "LONG_0040D85E"
    %endif
    times 2 - ($ - %%insn_0040d85e) db 0
    %%insn_0040d860:
    test dl,dl ; 0040D860 84D2
    %if ($ - %%insn_0040d860) > 2
        %error "LONG_0040D860"
    %endif
    times 2 - ($ - %%insn_0040d860) db 0
    %%insn_0040d862:
    jz short 0x40d898 ; 0040D862 7434
    %if ($ - %%insn_0040d862) > 2
        %error "LONG_0040D862"
    %endif
    times 2 - ($ - %%insn_0040d862) db 0
    %%insn_0040d864:
    test dh,dh ; 0040D864 84F6
    %if ($ - %%insn_0040d864) > 2
        %error "LONG_0040D864"
    %endif
    times 2 - ($ - %%insn_0040d864) db 0
    %%insn_0040d866:
    jz short 0x40d88f ; 0040D866 7427
    %if ($ - %%insn_0040d866) > 2
        %error "LONG_0040D866"
    %endif
    times 2 - ($ - %%insn_0040d866) db 0
    %%insn_0040d868:
    test edx,0xff0000 ; 0040D868 F7C20000FF00
    %if ($ - %%insn_0040d868) > 6
        %error "LONG_0040D868"
    %endif
    times 6 - ($ - %%insn_0040d868) db 0
    %%insn_0040d86e:
    jz short 0x40d882 ; 0040D86E 7412
    %if ($ - %%insn_0040d86e) > 2
        %error "LONG_0040D86E"
    %endif
    times 2 - ($ - %%insn_0040d86e) db 0
    %%insn_0040d870:
    test edx,0xff000000 ; 0040D870 F7C2000000FF
    %if ($ - %%insn_0040d870) > 6
        %error "LONG_0040D870"
    %endif
    times 6 - ($ - %%insn_0040d870) db 0
    %%insn_0040d876:
    jz short 0x40d87a ; 0040D876 7402
    %if ($ - %%insn_0040d876) > 2
        %error "LONG_0040D876"
    %endif
    times 2 - ($ - %%insn_0040d876) db 0
    %%insn_0040d878:
    jmp short 0x40d841 ; 0040D878 EBC7
    %if ($ - %%insn_0040d878) > 2
        %error "LONG_0040D878"
    %endif
    times 2 - ($ - %%insn_0040d878) db 0
    %%insn_0040d87a:
    mov [edi],edx ; 0040D87A 8917
    %if ($ - %%insn_0040d87a) > 2
        %error "LONG_0040D87A"
    %endif
    times 2 - ($ - %%insn_0040d87a) db 0
    %%insn_0040d87c:
    mov eax,[esp+0x8] ; 0040D87C 8B442408
    %if ($ - %%insn_0040d87c) > 4
        %error "LONG_0040D87C"
    %endif
    times 4 - ($ - %%insn_0040d87c) db 0
    %%insn_0040d880:
    pop edi ; 0040D880 5F
    %if ($ - %%insn_0040d880) > 1
        %error "LONG_0040D880"
    %endif
    times 1 - ($ - %%insn_0040d880) db 0
    %%insn_0040d881:
    ret ; 0040D881 C3
    %if ($ - %%insn_0040d881) > 1
        %error "LONG_0040D881"
    %endif
    times 1 - ($ - %%insn_0040d881) db 0
    %%insn_0040d882:
    mov [edi],dx ; 0040D882 668917
    %if ($ - %%insn_0040d882) > 3
        %error "LONG_0040D882"
    %endif
    times 3 - ($ - %%insn_0040d882) db 0
    %%insn_0040d885:
    mov eax,[esp+0x8] ; 0040D885 8B442408
    %if ($ - %%insn_0040d885) > 4
        %error "LONG_0040D885"
    %endif
    times 4 - ($ - %%insn_0040d885) db 0
    %%insn_0040d889:
    mov byte [edi+0x2],0x0 ; 0040D889 C6470200
    %if ($ - %%insn_0040d889) > 4
        %error "LONG_0040D889"
    %endif
    times 4 - ($ - %%insn_0040d889) db 0
    %%insn_0040d88d:
    pop edi ; 0040D88D 5F
    %if ($ - %%insn_0040d88d) > 1
        %error "LONG_0040D88D"
    %endif
    times 1 - ($ - %%insn_0040d88d) db 0
    %%insn_0040d88e:
    ret ; 0040D88E C3
    %if ($ - %%insn_0040d88e) > 1
        %error "LONG_0040D88E"
    %endif
    times 1 - ($ - %%insn_0040d88e) db 0
    %%insn_0040d88f:
    mov [edi],dx ; 0040D88F 668917
    %if ($ - %%insn_0040d88f) > 3
        %error "LONG_0040D88F"
    %endif
    times 3 - ($ - %%insn_0040d88f) db 0
    %%insn_0040d892:
    mov eax,[esp+0x8] ; 0040D892 8B442408
    %if ($ - %%insn_0040d892) > 4
        %error "LONG_0040D892"
    %endif
    times 4 - ($ - %%insn_0040d892) db 0
    %%insn_0040d896:
    pop edi ; 0040D896 5F
    %if ($ - %%insn_0040d896) > 1
        %error "LONG_0040D896"
    %endif
    times 1 - ($ - %%insn_0040d896) db 0
    %%insn_0040d897:
    ret ; 0040D897 C3
    %if ($ - %%insn_0040d897) > 1
        %error "LONG_0040D897"
    %endif
    times 1 - ($ - %%insn_0040d897) db 0
    %%insn_0040d898:
    mov [edi],dl ; 0040D898 8817
    %if ($ - %%insn_0040d898) > 2
        %error "LONG_0040D898"
    %endif
    times 2 - ($ - %%insn_0040d898) db 0
    %%insn_0040d89a:
    mov eax,[esp+0x8] ; 0040D89A 8B442408
    %if ($ - %%insn_0040d89a) > 4
        %error "LONG_0040D89A"
    %endif
    times 4 - ($ - %%insn_0040d89a) db 0
    %%insn_0040d89e:
    pop edi ; 0040D89E 5F
    %if ($ - %%insn_0040d89e) > 1
        %error "LONG_0040D89E"
    %endif
    times 1 - ($ - %%insn_0040d89e) db 0
    %%insn_0040d89f:
    ret ; 0040D89F C3
    %if ($ - %%insn_0040d89f) > 1
        %error "LONG_0040D89F"
    %endif
    times 1 - ($ - %%insn_0040d89f) db 0
    %if ($ - %%fragment_start) != 224
        %error "function fragment size drift: 0040D7C0"
    %endif
%endmacro
