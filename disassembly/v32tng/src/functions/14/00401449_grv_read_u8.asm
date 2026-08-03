; PE virtual entry 00401449
; Ghidra working symbol: FUN_00401449
; Verified GRV byte reader; advances the script PC by one.
; Generated losslessly; preserve byte identity after edits.

%macro emit_grv_read_u8_part_00 0
    %%fragment_start:
grv_read_u8:
    %%insn_00401449:
    push ebp ; 00401449 55
    %if ($ - %%insn_00401449) > 1
        %error "LONG_00401449"
    %endif
    times 1 - ($ - %%insn_00401449) db 0
    db 0x8B, 0xEC ; 0040144A 8BEC | mov ebp,esp | encoding preserved
    %%insn_0040144c:
    push ecx ; 0040144C 51
    %if ($ - %%insn_0040144c) > 1
        %error "LONG_0040144C"
    %endif
    times 1 - ($ - %%insn_0040144c) db 0
    %%insn_0040144d:
    mov eax,[0x41f284] ; 0040144D A184F24100
    %if ($ - %%insn_0040144d) > 5
        %error "LONG_0040144D"
    %endif
    times 5 - ($ - %%insn_0040144d) db 0
    %%insn_00401452:
    add eax,[0x41f300] ; 00401452 030500F34100
    %if ($ - %%insn_00401452) > 6
        %error "LONG_00401452"
    %endif
    times 6 - ($ - %%insn_00401452) db 0
    %%insn_00401458:
    mov cl,[eax] ; 00401458 8A08
    %if ($ - %%insn_00401458) > 2
        %error "LONG_00401458"
    %endif
    times 2 - ($ - %%insn_00401458) db 0
    %%insn_0040145a:
    mov [ebp-0x4],cl ; 0040145A 884DFC
    %if ($ - %%insn_0040145a) > 3
        %error "LONG_0040145A"
    %endif
    times 3 - ($ - %%insn_0040145a) db 0
    %%insn_0040145d:
    mov edx,[0x41f300] ; 0040145D 8B1500F34100
    %if ($ - %%insn_0040145d) > 6
        %error "LONG_0040145D"
    %endif
    times 6 - ($ - %%insn_0040145d) db 0
    %%insn_00401463:
    add edx,0x1 ; 00401463 83C201
    %if ($ - %%insn_00401463) > 3
        %error "LONG_00401463"
    %endif
    times 3 - ($ - %%insn_00401463) db 0
    %%insn_00401466:
    mov [0x41f300],edx ; 00401466 891500F34100
    %if ($ - %%insn_00401466) > 6
        %error "LONG_00401466"
    %endif
    times 6 - ($ - %%insn_00401466) db 0
    %%insn_0040146c:
    mov al,[ebp-0x4] ; 0040146C 8A45FC
    %if ($ - %%insn_0040146c) > 3
        %error "LONG_0040146C"
    %endif
    times 3 - ($ - %%insn_0040146c) db 0
    db 0x8B, 0xE5 ; 0040146F 8BE5 | mov esp,ebp | encoding preserved
    %%insn_00401471:
    pop ebp ; 00401471 5D
    %if ($ - %%insn_00401471) > 1
        %error "LONG_00401471"
    %endif
    times 1 - ($ - %%insn_00401471) db 0
    %%insn_00401472:
    ret ; 00401472 C3
    %if ($ - %%insn_00401472) > 1
        %error "LONG_00401472"
    %endif
    times 1 - ($ - %%insn_00401472) db 0
    %if ($ - %%fragment_start) != 42
        %error "function fragment size drift: 00401449"
    %endif
%endmacro
