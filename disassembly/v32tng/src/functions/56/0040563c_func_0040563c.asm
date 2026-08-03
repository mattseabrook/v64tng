; PE virtual entry 0040563C
; Ghidra working symbol: FUN_0040563c
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040563c_part_00 0
    %%fragment_start:
func_0040563c:
    %%insn_0040563c:
    push ebp ; 0040563C 55
    %if ($ - %%insn_0040563c) > 1
        %error "LONG_0040563C"
    %endif
    times 1 - ($ - %%insn_0040563c) db 0
    db 0x8B, 0xEC ; 0040563D 8BEC | mov ebp,esp | encoding preserved
    %%insn_0040563f:
    call 0x404e80 ; 0040563F E83CF8FFFF
    %if ($ - %%insn_0040563f) > 5
        %error "LONG_0040563F"
    %endif
    times 5 - ($ - %%insn_0040563f) db 0
    %%insn_00405644:
    movsx eax,byte [0x4215b6] ; 00405644 0FBE05B6154200
    %if ($ - %%insn_00405644) > 7
        %error "LONG_00405644"
    %endif
    times 7 - ($ - %%insn_00405644) db 0
    %%insn_0040564b:
    mov cl,[ebp+0x8] ; 0040564B 8A4D08
    %if ($ - %%insn_0040564b) > 3
        %error "LONG_0040564B"
    %endif
    times 3 - ($ - %%insn_0040564b) db 0
    %%insn_0040564e:
    mov [eax+0x421bc0],cl ; 0040564E 8888C01B4200
    %if ($ - %%insn_0040564e) > 6
        %error "LONG_0040564E"
    %endif
    times 6 - ($ - %%insn_0040564e) db 0
    %%insn_00405654:
    movsx edx,byte [ebp+0x8] ; 00405654 0FBE5508
    %if ($ - %%insn_00405654) > 4
        %error "LONG_00405654"
    %endif
    times 4 - ($ - %%insn_00405654) db 0
    %%insn_00405658:
    mov al,[edx+0x421bf0] ; 00405658 8A82F01B4200
    %if ($ - %%insn_00405658) > 6
        %error "LONG_00405658"
    %endif
    times 6 - ($ - %%insn_00405658) db 0
    %%insn_0040565e:
    add al,0x1 ; 0040565E 0401
    %if ($ - %%insn_0040565e) > 2
        %error "LONG_0040565E"
    %endif
    times 2 - ($ - %%insn_0040565e) db 0
    %%insn_00405660:
    movsx ecx,byte [ebp+0x8] ; 00405660 0FBE4D08
    %if ($ - %%insn_00405660) > 4
        %error "LONG_00405660"
    %endif
    times 4 - ($ - %%insn_00405660) db 0
    %%insn_00405664:
    mov [ecx+0x421bf0],al ; 00405664 8881F01B4200
    %if ($ - %%insn_00405664) > 6
        %error "LONG_00405664"
    %endif
    times 6 - ($ - %%insn_00405664) db 0
    %%insn_0040566a:
    movsx edx,byte [0x4215b7] ; 0040566A 0FBE15B7154200
    %if ($ - %%insn_0040566a) > 7
        %error "LONG_0040566A"
    %endif
    times 7 - ($ - %%insn_0040566a) db 0
    %%insn_00405671:
    cmp edx,0x2 ; 00405671 83FA02
    %if ($ - %%insn_00405671) > 3
        %error "LONG_00405671"
    %endif
    times 3 - ($ - %%insn_00405671) db 0
    %%insn_00405674:
    jnz short 0x40569b ; 00405674 7525
    %if ($ - %%insn_00405674) > 2
        %error "LONG_00405674"
    %endif
    times 2 - ($ - %%insn_00405674) db 0
    %%insn_00405676:
    movsx eax,byte [0x4215b5] ; 00405676 0FBE05B5154200
    %if ($ - %%insn_00405676) > 7
        %error "LONG_00405676"
    %endif
    times 7 - ($ - %%insn_00405676) db 0
    %%insn_0040567d:
    mov byte [eax+0x421bc0],0x0 ; 0040567D C680C01B420000
    %if ($ - %%insn_0040567d) > 7
        %error "LONG_0040567D"
    %endif
    times 7 - ($ - %%insn_0040567d) db 0
    %%insn_00405684:
    movsx ecx,byte [ebp+0x8] ; 00405684 0FBE4D08
    %if ($ - %%insn_00405684) > 4
        %error "LONG_00405684"
    %endif
    times 4 - ($ - %%insn_00405684) db 0
    %%insn_00405688:
    mov dl,[ecx+0x421bf0] ; 00405688 8A91F01B4200
    %if ($ - %%insn_00405688) > 6
        %error "LONG_00405688"
    %endif
    times 6 - ($ - %%insn_00405688) db 0
    %%insn_0040568e:
    sub dl,0x1 ; 0040568E 80EA01
    %if ($ - %%insn_0040568e) > 3
        %error "LONG_0040568E"
    %endif
    times 3 - ($ - %%insn_0040568e) db 0
    %%insn_00405691:
    movsx eax,byte [ebp+0x8] ; 00405691 0FBE4508
    %if ($ - %%insn_00405691) > 4
        %error "LONG_00405691"
    %endif
    times 4 - ($ - %%insn_00405691) db 0
    %%insn_00405695:
    mov [eax+0x421bf0],dl ; 00405695 8890F01B4200
    %if ($ - %%insn_00405695) > 6
        %error "LONG_00405695"
    %endif
    times 6 - ($ - %%insn_00405695) db 0
    %%insn_0040569b:
    mov cl,[ebp+0x8] ; 0040569B 8A4D08
    %if ($ - %%insn_0040569b) > 3
        %error "LONG_0040569B"
    %endif
    times 3 - ($ - %%insn_0040569b) db 0
    %%insn_0040569e:
    push ecx ; 0040569E 51
    %if ($ - %%insn_0040569e) > 1
        %error "LONG_0040569E"
    %endif
    times 1 - ($ - %%insn_0040569e) db 0
    %%insn_0040569f:
    movsx dx,byte [0x4215b6] ; 0040569F 660FBE15B6154200
    %if ($ - %%insn_0040569f) > 8
        %error "LONG_0040569F"
    %endif
    times 8 - ($ - %%insn_0040569f) db 0
    %%insn_004056a7:
    push edx ; 004056A7 52
    %if ($ - %%insn_004056a7) > 1
        %error "LONG_004056A7"
    %endif
    times 1 - ($ - %%insn_004056a7) db 0
    %%insn_004056a8:
    call 0x404f02 ; 004056A8 E855F8FFFF
    %if ($ - %%insn_004056a8) > 5
        %error "LONG_004056A8"
    %endif
    times 5 - ($ - %%insn_004056a8) db 0
    %%insn_004056ad:
    add esp,0x8 ; 004056AD 83C408
    %if ($ - %%insn_004056ad) > 3
        %error "LONG_004056AD"
    %endif
    times 3 - ($ - %%insn_004056ad) db 0
    %%insn_004056b0:
    pop ebp ; 004056B0 5D
    %if ($ - %%insn_004056b0) > 1
        %error "LONG_004056B0"
    %endif
    times 1 - ($ - %%insn_004056b0) db 0
    %%insn_004056b1:
    ret ; 004056B1 C3
    %if ($ - %%insn_004056b1) > 1
        %error "LONG_004056B1"
    %endif
    times 1 - ($ - %%insn_004056b1) db 0
    %if ($ - %%fragment_start) != 118
        %error "function fragment size drift: 0040563C"
    %endif
%endmacro
