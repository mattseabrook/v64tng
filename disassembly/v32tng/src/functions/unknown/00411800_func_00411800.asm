; PE virtual entry 00411800
; Ghidra working symbol: FUN_00411800
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00411800_part_00 0
    %%fragment_start:
func_00411800:
    %%insn_00411800:
    mov edx,[esp+0x10] ; 00411800 8B542410
    %if ($ - %%insn_00411800) > 4
        %error "LONG_00411800"
    %endif
    times 4 - ($ - %%insn_00411800) db 0
    %%insn_00411804:
    push esi ; 00411804 56
    %if ($ - %%insn_00411804) > 1
        %error "LONG_00411804"
    %endif
    times 1 - ($ - %%insn_00411804) db 0
    %%insn_00411805:
    mov esi,[esp+0xc] ; 00411805 8B74240C
    %if ($ - %%insn_00411805) > 4
        %error "LONG_00411805"
    %endif
    times 4 - ($ - %%insn_00411805) db 0
    %%insn_00411809:
    lea eax,[esp+0x14] ; 00411809 8D442414
    %if ($ - %%insn_00411809) > 4
        %error "LONG_00411809"
    %endif
    times 4 - ($ - %%insn_00411809) db 0
    %%insn_0041180d:
    push esi ; 0041180D 56
    %if ($ - %%insn_0041180d) > 1
        %error "LONG_0041180D"
    %endif
    times 1 - ($ - %%insn_0041180d) db 0
    %%insn_0041180e:
    lea ecx,[esp+0x10] ; 0041180E 8D4C2410
    %if ($ - %%insn_0041180e) > 4
        %error "LONG_0041180E"
    %endif
    times 4 - ($ - %%insn_0041180e) db 0
    %%insn_00411812:
    push eax ; 00411812 50
    %if ($ - %%insn_00411812) > 1
        %error "LONG_00411812"
    %endif
    times 1 - ($ - %%insn_00411812) db 0
    %%insn_00411813:
    mov eax,[esp+0x18] ; 00411813 8B442418
    %if ($ - %%insn_00411813) > 4
        %error "LONG_00411813"
    %endif
    times 4 - ($ - %%insn_00411813) db 0
    %%insn_00411817:
    push ecx ; 00411817 51
    %if ($ - %%insn_00411817) > 1
        %error "LONG_00411817"
    %endif
    times 1 - ($ - %%insn_00411817) db 0
    %%insn_00411818:
    push edx ; 00411818 52
    %if ($ - %%insn_00411818) > 1
        %error "LONG_00411818"
    %endif
    times 1 - ($ - %%insn_00411818) db 0
    %%insn_00411819:
    push eax ; 00411819 50
    %if ($ - %%insn_00411819) > 1
        %error "LONG_00411819"
    %endif
    times 1 - ($ - %%insn_00411819) db 0
    %%insn_0041181a:
    call 0x415280 ; 0041181A E8613A0000
    %if ($ - %%insn_0041181a) > 5
        %error "LONG_0041181A"
    %endif
    times 5 - ($ - %%insn_0041181a) db 0
    %%insn_0041181f:
    add esp,0x14 ; 0041181F 83C414
    %if ($ - %%insn_0041181f) > 3
        %error "LONG_0041181F"
    %endif
    times 3 - ($ - %%insn_0041181f) db 0
    %%insn_00411822:
    cmp eax,0xffffffffffffffff ; 00411822 83F8FF
    %if ($ - %%insn_00411822) > 3
        %error "LONG_00411822"
    %endif
    times 3 - ($ - %%insn_00411822) db 0
    %%insn_00411825:
    jnz short 0x41182b ; 00411825 7504
    %if ($ - %%insn_00411825) > 2
        %error "LONG_00411825"
    %endif
    times 2 - ($ - %%insn_00411825) db 0
    db 0x0B, 0xC0 ; 00411827 0BC0 | or eax,eax | encoding preserved
    %%insn_00411829:
    pop esi ; 00411829 5E
    %if ($ - %%insn_00411829) > 1
        %error "LONG_00411829"
    %endif
    times 1 - ($ - %%insn_00411829) db 0
    %%insn_0041182a:
    ret ; 0041182A C3
    %if ($ - %%insn_0041182a) > 1
        %error "LONG_0041182A"
    %endif
    times 1 - ($ - %%insn_0041182a) db 0
    %%insn_0041182b:
    mov ecx,[esp+0x14] ; 0041182B 8B4C2414
    %if ($ - %%insn_0041182b) > 4
        %error "LONG_0041182B"
    %endif
    times 4 - ($ - %%insn_0041182b) db 0
    %%insn_0041182f:
    mov edx,[esp+0xc] ; 0041182F 8B54240C
    %if ($ - %%insn_0041182f) > 4
        %error "LONG_0041182F"
    %endif
    times 4 - ($ - %%insn_0041182f) db 0
    %%insn_00411833:
    mov eax,[esp+0x8] ; 00411833 8B442408
    %if ($ - %%insn_00411833) > 4
        %error "LONG_00411833"
    %endif
    times 4 - ($ - %%insn_00411833) db 0
    %%insn_00411837:
    push ecx ; 00411837 51
    %if ($ - %%insn_00411837) > 1
        %error "LONG_00411837"
    %endif
    times 1 - ($ - %%insn_00411837) db 0
    %%insn_00411838:
    push edx ; 00411838 52
    %if ($ - %%insn_00411838) > 1
        %error "LONG_00411838"
    %endif
    times 1 - ($ - %%insn_00411838) db 0
    %%insn_00411839:
    push esi ; 00411839 56
    %if ($ - %%insn_00411839) > 1
        %error "LONG_00411839"
    %endif
    times 1 - ($ - %%insn_00411839) db 0
    %%insn_0041183a:
    push eax ; 0041183A 50
    %if ($ - %%insn_0041183a) > 1
        %error "LONG_0041183A"
    %endif
    times 1 - ($ - %%insn_0041183a) db 0
    %%insn_0041183b:
    call 0x414ff0 ; 0041183B E8B0370000
    %if ($ - %%insn_0041183b) > 5
        %error "LONG_0041183B"
    %endif
    times 5 - ($ - %%insn_0041183b) db 0
    %%insn_00411840:
    mov ecx,[esp+0x1c] ; 00411840 8B4C241C
    %if ($ - %%insn_00411840) > 4
        %error "LONG_00411840"
    %endif
    times 4 - ($ - %%insn_00411840) db 0
    %%insn_00411844:
    add esp,0x10 ; 00411844 83C410
    %if ($ - %%insn_00411844) > 3
        %error "LONG_00411844"
    %endif
    times 3 - ($ - %%insn_00411844) db 0
    db 0x8B, 0xF0 ; 00411847 8BF0 | mov esi,eax | encoding preserved
    %%insn_00411849:
    push ecx ; 00411849 51
    %if ($ - %%insn_00411849) > 1
        %error "LONG_00411849"
    %endif
    times 1 - ($ - %%insn_00411849) db 0
    %%insn_0041184a:
    call 0x40c9a0 ; 0041184A E851B1FFFF
    %if ($ - %%insn_0041184a) > 5
        %error "LONG_0041184A"
    %endif
    times 5 - ($ - %%insn_0041184a) db 0
    %%insn_0041184f:
    mov edx,[esp+0x18] ; 0041184F 8B542418
    %if ($ - %%insn_0041184f) > 4
        %error "LONG_0041184F"
    %endif
    times 4 - ($ - %%insn_0041184f) db 0
    %%insn_00411853:
    add esp,0x4 ; 00411853 83C404
    %if ($ - %%insn_00411853) > 3
        %error "LONG_00411853"
    %endif
    times 3 - ($ - %%insn_00411853) db 0
    %%insn_00411856:
    push edx ; 00411856 52
    %if ($ - %%insn_00411856) > 1
        %error "LONG_00411856"
    %endif
    times 1 - ($ - %%insn_00411856) db 0
    %%insn_00411857:
    call 0x40c9a0 ; 00411857 E844B1FFFF
    %if ($ - %%insn_00411857) > 5
        %error "LONG_00411857"
    %endif
    times 5 - ($ - %%insn_00411857) db 0
    %%insn_0041185c:
    add esp,0x4 ; 0041185C 83C404
    %if ($ - %%insn_0041185c) > 3
        %error "LONG_0041185C"
    %endif
    times 3 - ($ - %%insn_0041185c) db 0
    db 0x8B, 0xC6 ; 0041185F 8BC6 | mov eax,esi | encoding preserved
    %%insn_00411861:
    pop esi ; 00411861 5E
    %if ($ - %%insn_00411861) > 1
        %error "LONG_00411861"
    %endif
    times 1 - ($ - %%insn_00411861) db 0
    %%insn_00411862:
    ret ; 00411862 C3
    %if ($ - %%insn_00411862) > 1
        %error "LONG_00411862"
    %endif
    times 1 - ($ - %%insn_00411862) db 0
    %if ($ - %%fragment_start) != 99
        %error "function fragment size drift: 00411800"
    %endif
%endmacro
