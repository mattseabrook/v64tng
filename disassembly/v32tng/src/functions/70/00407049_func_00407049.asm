; PE virtual entry 00407049
; Ghidra working symbol: FUN_00407049
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00407049_part_00 0
    %%fragment_start:
func_00407049:
    %%insn_00407049:
    push ebp ; 00407049 55
    %if ($ - %%insn_00407049) > 1
        %error "LONG_00407049"
    %endif
    times 1 - ($ - %%insn_00407049) db 0
    db 0x8B, 0xEC ; 0040704A 8BEC | mov ebp,esp | encoding preserved
    %%insn_0040704c:
    call 0x4071d4 ; 0040704C E883010000
    %if ($ - %%insn_0040704c) > 5
        %error "LONG_0040704C"
    %endif
    times 5 - ($ - %%insn_0040704c) db 0
    %%insn_00407051:
    test eax,eax ; 00407051 85C0
    %if ($ - %%insn_00407051) > 2
        %error "LONG_00407051"
    %endif
    times 2 - ($ - %%insn_00407051) db 0
    %%insn_00407053:
    jz short 0x40705f ; 00407053 740A
    %if ($ - %%insn_00407053) > 2
        %error "LONG_00407053"
    %endif
    times 2 - ($ - %%insn_00407053) db 0
    %%insn_00407055:
    push dword 0x1 ; 00407055 6A01
    %if ($ - %%insn_00407055) > 2
        %error "LONG_00407055"
    %endif
    times 2 - ($ - %%insn_00407055) db 0
    %%insn_00407057:
    call dword near [0x4244cc] ; 00407057 FF15CC444200
    %if ($ - %%insn_00407057) > 6
        %error "LONG_00407057"
    %endif
    times 6 - ($ - %%insn_00407057) db 0
    %%insn_0040705d:
    jmp short 0x40704c ; 0040705D EBED
    %if ($ - %%insn_0040705d) > 2
        %error "LONG_0040705D"
    %endif
    times 2 - ($ - %%insn_0040705d) db 0
    %%insn_0040705f:
    cmp dword [0x421448],0x0 ; 0040705F 833D4814420000
    %if ($ - %%insn_0040705f) > 7
        %error "LONG_0040705F"
    %endif
    times 7 - ($ - %%insn_0040705f) db 0
    %%insn_00407066:
    jz short 0x407079 ; 00407066 7411
    %if ($ - %%insn_00407066) > 2
        %error "LONG_00407066"
    %endif
    times 2 - ($ - %%insn_00407066) db 0
    %%insn_00407068:
    call 0x40712c ; 00407068 E8BF000000
    %if ($ - %%insn_00407068) > 5
        %error "LONG_00407068"
    %endif
    times 5 - ($ - %%insn_00407068) db 0
    %%insn_0040706d:
    mov eax,[0x421448] ; 0040706D A148144200
    %if ($ - %%insn_0040706d) > 5
        %error "LONG_0040706D"
    %endif
    times 5 - ($ - %%insn_0040706d) db 0
    %%insn_00407072:
    push eax ; 00407072 50
    %if ($ - %%insn_00407072) > 1
        %error "LONG_00407072"
    %endif
    times 1 - ($ - %%insn_00407072) db 0
    %%insn_00407073:
    call dword near [0x4245f4] ; 00407073 FF15F4454200
    %if ($ - %%insn_00407073) > 6
        %error "LONG_00407073"
    %endif
    times 6 - ($ - %%insn_00407073) db 0
    %%insn_00407079:
    mov ecx,[ebp+0x8] ; 00407079 8B4D08
    %if ($ - %%insn_00407079) > 3
        %error "LONG_00407079"
    %endif
    times 3 - ($ - %%insn_00407079) db 0
    %%insn_0040707c:
    push ecx ; 0040707C 51
    %if ($ - %%insn_0040707c) > 1
        %error "LONG_0040707C"
    %endif
    times 1 - ($ - %%insn_0040707c) db 0
    %%insn_0040707d:
    mov edx,[0x41f4ec] ; 0040707D 8B15ECF44100
    %if ($ - %%insn_0040707d) > 6
        %error "LONG_0040707D"
    %endif
    times 6 - ($ - %%insn_0040707d) db 0
    %%insn_00407083:
    push edx ; 00407083 52
    %if ($ - %%insn_00407083) > 1
        %error "LONG_00407083"
    %endif
    times 1 - ($ - %%insn_00407083) db 0
    %%insn_00407084:
    call 0x40709f ; 00407084 E816000000
    %if ($ - %%insn_00407084) > 5
        %error "LONG_00407084"
    %endif
    times 5 - ($ - %%insn_00407084) db 0
    %%insn_00407089:
    add esp,0x8 ; 00407089 83C408
    %if ($ - %%insn_00407089) > 3
        %error "LONG_00407089"
    %endif
    times 3 - ($ - %%insn_00407089) db 0
    %%insn_0040708c:
    mov [0x421448],eax ; 0040708C A348144200
    %if ($ - %%insn_0040708c) > 5
        %error "LONG_0040708C"
    %endif
    times 5 - ($ - %%insn_0040708c) db 0
    %%insn_00407091:
    mov eax,[0x421448] ; 00407091 A148144200
    %if ($ - %%insn_00407091) > 5
        %error "LONG_00407091"
    %endif
    times 5 - ($ - %%insn_00407091) db 0
    %%insn_00407096:
    push eax ; 00407096 50
    %if ($ - %%insn_00407096) > 1
        %error "LONG_00407096"
    %endif
    times 1 - ($ - %%insn_00407096) db 0
    %%insn_00407097:
    call dword near [0x4245f8] ; 00407097 FF15F8454200
    %if ($ - %%insn_00407097) > 6
        %error "LONG_00407097"
    %endif
    times 6 - ($ - %%insn_00407097) db 0
    %%insn_0040709d:
    pop ebp ; 0040709D 5D
    %if ($ - %%insn_0040709d) > 1
        %error "LONG_0040709D"
    %endif
    times 1 - ($ - %%insn_0040709d) db 0
    %%insn_0040709e:
    ret ; 0040709E C3
    %if ($ - %%insn_0040709e) > 1
        %error "LONG_0040709E"
    %endif
    times 1 - ($ - %%insn_0040709e) db 0
    %if ($ - %%fragment_start) != 86
        %error "function fragment size drift: 00407049"
    %endif
%endmacro
