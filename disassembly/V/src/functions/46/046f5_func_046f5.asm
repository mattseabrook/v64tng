; Linear entry 046F5 (1000:46f5)
; Ghidra working symbol: FUN_1000_46f5
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_046f5_part_00 0
    %%fragment_start:
func_046f5:
    %%insn_046f5:
    push ds ; 046F5 1E
    %if ($ - %%insn_046f5) > 1
        %error "LONG_046F5"
    %endif
    times 1 - ($ - %%insn_046f5) db 0
    %%insn_046f6:
    pusha ; 046F6 60
    %if ($ - %%insn_046f6) > 1
        %error "LONG_046F6"
    %endif
    times 1 - ($ - %%insn_046f6) db 0
    %%insn_046f7:
    mov ax,0x893 ; 046F7 B89308
    %if ($ - %%insn_046f7) > 3
        %error "LONG_046F7"
    %endif
    times 3 - ($ - %%insn_046f7) db 0
    %%insn_046fa:
    mov ds,ax ; 046FA 8ED8
    %if ($ - %%insn_046fa) > 2
        %error "LONG_046FA"
    %endif
    times 2 - ($ - %%insn_046fa) db 0
    %%insn_046fc:
    mov ax,[bp-0x1fd7] ; 046FC 8B8629E0
    %if ($ - %%insn_046fc) > 4
        %error "LONG_046FC"
    %endif
    times 4 - ($ - %%insn_046fc) db 0
    %%insn_04700:
    dec ax ; 04700 48
    %if ($ - %%insn_04700) > 1
        %error "LONG_04700"
    %endif
    times 1 - ($ - %%insn_04700) db 0
    %%insn_04701:
    mov word [bp-0x30d2],0x1 ; 04701 C7862ECF0100
    %if ($ - %%insn_04701) > 6
        %error "LONG_04701"
    %endif
    times 6 - ($ - %%insn_04701) db 0
    %%insn_04707:
    call 0x3941 ; 04707 E837F2
    %if ($ - %%insn_04707) > 3
        %error "LONG_04707"
    %endif
    times 3 - ($ - %%insn_04707) db 0
    %%insn_0470a:
    call 0x5bd1 ; 0470A E8C414
    %if ($ - %%insn_0470a) > 3
        %error "LONG_0470A"
    %endif
    times 3 - ($ - %%insn_0470a) db 0
    %%insn_0470d:
    popa ; 0470D 61
    %if ($ - %%insn_0470d) > 1
        %error "LONG_0470D"
    %endif
    times 1 - ($ - %%insn_0470d) db 0
    %%insn_0470e:
    pop ds ; 0470E 1F
    %if ($ - %%insn_0470e) > 1
        %error "LONG_0470E"
    %endif
    times 1 - ($ - %%insn_0470e) db 0
    %%insn_0470f:
    ret ; 0470F C3
    %if ($ - %%insn_0470f) > 1
        %error "LONG_0470F"
    %endif
    times 1 - ($ - %%insn_0470f) db 0
    %if ($ - %%fragment_start) != 27
        %error "SIZE_046F5"
    %endif
%endmacro
