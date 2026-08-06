; PE virtual entry 0040DBCD
; Ghidra working symbol: FUN_0040dbcd
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040dbcd_part_00 0
    %%fragment_start:
func_0040dbcd:
    %%insn_0040dbcd:
    push ebp ; 0040DBCD 55
    %if ($ - %%insn_0040dbcd) > 1
        %error "LONG_0040DBCD"
    %endif
    times 1 - ($ - %%insn_0040dbcd) db 0
    %%insn_0040dbce:
    mov ecx,[esp+0x8] ; 0040DBCE 8B4C2408
    %if ($ - %%insn_0040dbce) > 4
        %error "LONG_0040DBCE"
    %endif
    times 4 - ($ - %%insn_0040dbce) db 0
    %%insn_0040dbd2:
    mov ebp,[ecx] ; 0040DBD2 8B29
    %if ($ - %%insn_0040dbd2) > 2
        %error "LONG_0040DBD2"
    %endif
    times 2 - ($ - %%insn_0040dbd2) db 0
    %%insn_0040dbd4:
    mov eax,[ecx+0x1c] ; 0040DBD4 8B411C
    %if ($ - %%insn_0040dbd4) > 3
        %error "LONG_0040DBD4"
    %endif
    times 3 - ($ - %%insn_0040dbd4) db 0
    %%insn_0040dbd7:
    push eax ; 0040DBD7 50
    %if ($ - %%insn_0040dbd7) > 1
        %error "LONG_0040DBD7"
    %endif
    times 1 - ($ - %%insn_0040dbd7) db 0
    %%insn_0040dbd8:
    mov eax,[ecx+0x18] ; 0040DBD8 8B4118
    %if ($ - %%insn_0040dbd8) > 3
        %error "LONG_0040DBD8"
    %endif
    times 3 - ($ - %%insn_0040dbd8) db 0
    %%insn_0040dbdb:
    push eax ; 0040DBDB 50
    %if ($ - %%insn_0040dbdb) > 1
        %error "LONG_0040DBDB"
    %endif
    times 1 - ($ - %%insn_0040dbdb) db 0
    %%insn_0040dbdc:
    call 0x40da5a ; 0040DBDC E879FEFFFF
    %if ($ - %%insn_0040dbdc) > 5
        %error "LONG_0040DBDC"
    %endif
    times 5 - ($ - %%insn_0040dbdc) db 0
    %%insn_0040dbe1:
    add esp,0x8 ; 0040DBE1 83C408
    %if ($ - %%insn_0040dbe1) > 3
        %error "LONG_0040DBE1"
    %endif
    times 3 - ($ - %%insn_0040dbe1) db 0
    %%insn_0040dbe4:
    pop ebp ; 0040DBE4 5D
    %if ($ - %%insn_0040dbe4) > 1
        %error "LONG_0040DBE4"
    %endif
    times 1 - ($ - %%insn_0040dbe4) db 0
    %%insn_0040dbe5:
    ret word 0x4 ; 0040DBE5 C20400
    %if ($ - %%insn_0040dbe5) > 3
        %error "LONG_0040DBE5"
    %endif
    times 3 - ($ - %%insn_0040dbe5) db 0
    %if ($ - %%fragment_start) != 27
        %error "function fragment size drift: 0040DBCD"
    %endif
%endmacro
