; PE virtual entry 00409AB6
; Ghidra working symbol: FUN_00409ab6
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00409ab6_part_00 0
    %%fragment_start:
func_00409ab6:
    %%insn_00409ab6:
    push ebp ; 00409AB6 55
    %if ($ - %%insn_00409ab6) > 1
        %error "LONG_00409AB6"
    %endif
    times 1 - ($ - %%insn_00409ab6) db 0
    db 0x8B, 0xEC ; 00409AB7 8BEC | mov ebp,esp | encoding preserved
    %%insn_00409ab9:
    push ecx ; 00409AB9 51
    %if ($ - %%insn_00409ab9) > 1
        %error "LONG_00409AB9"
    %endif
    times 1 - ($ - %%insn_00409ab9) db 0
    %%insn_00409aba:
    mov dword [ebp-0x4],0x0 ; 00409ABA C745FC00000000
    %if ($ - %%insn_00409aba) > 7
        %error "LONG_00409ABA"
    %endif
    times 7 - ($ - %%insn_00409aba) db 0
    %%insn_00409ac1:
    jmp short 0x409acc ; 00409AC1 EB09
    %if ($ - %%insn_00409ac1) > 2
        %error "LONG_00409AC1"
    %endif
    times 2 - ($ - %%insn_00409ac1) db 0
    %%insn_00409ac3:
    mov eax,[ebp-0x4] ; 00409AC3 8B45FC
    %if ($ - %%insn_00409ac3) > 3
        %error "LONG_00409AC3"
    %endif
    times 3 - ($ - %%insn_00409ac3) db 0
    %%insn_00409ac6:
    add eax,0x1 ; 00409AC6 83C001
    %if ($ - %%insn_00409ac6) > 3
        %error "LONG_00409AC6"
    %endif
    times 3 - ($ - %%insn_00409ac6) db 0
    %%insn_00409ac9:
    mov [ebp-0x4],eax ; 00409AC9 8945FC
    %if ($ - %%insn_00409ac9) > 3
        %error "LONG_00409AC9"
    %endif
    times 3 - ($ - %%insn_00409ac9) db 0
    %%insn_00409acc:
    cmp dword [ebp-0x4],0x100 ; 00409ACC 817DFC00010000
    %if ($ - %%insn_00409acc) > 7
        %error "LONG_00409ACC"
    %endif
    times 7 - ($ - %%insn_00409acc) db 0
    %%insn_00409ad3:
    jnl short 0x409afb ; 00409AD3 7D26
    %if ($ - %%insn_00409ad3) > 2
        %error "LONG_00409AD3"
    %endif
    times 2 - ($ - %%insn_00409ad3) db 0
    %%insn_00409ad5:
    mov ecx,[ebp-0x4] ; 00409AD5 8B4DFC
    %if ($ - %%insn_00409ad5) > 3
        %error "LONG_00409AD5"
    %endif
    times 3 - ($ - %%insn_00409ad5) db 0
    %%insn_00409ad8:
    imul ecx,ecx,0x14 ; 00409AD8 6BC914
    %if ($ - %%insn_00409ad8) > 3
        %error "LONG_00409AD8"
    %endif
    times 3 - ($ - %%insn_00409ad8) db 0
    %%insn_00409adb:
    cmp dword [ecx+0x41f5f8],0x0 ; 00409ADB 83B9F8F5410000
    %if ($ - %%insn_00409adb) > 7
        %error "LONG_00409ADB"
    %endif
    times 7 - ($ - %%insn_00409adb) db 0
    %%insn_00409ae2:
    jz short 0x409af9 ; 00409AE2 7415
    %if ($ - %%insn_00409ae2) > 2
        %error "LONG_00409AE2"
    %endif
    times 2 - ($ - %%insn_00409ae2) db 0
    %%insn_00409ae4:
    mov edx,[ebp-0x4] ; 00409AE4 8B55FC
    %if ($ - %%insn_00409ae4) > 3
        %error "LONG_00409AE4"
    %endif
    times 3 - ($ - %%insn_00409ae4) db 0
    %%insn_00409ae7:
    imul edx,edx,0x14 ; 00409AE7 6BD214
    %if ($ - %%insn_00409ae7) > 3
        %error "LONG_00409AE7"
    %endif
    times 3 - ($ - %%insn_00409ae7) db 0
    %%insn_00409aea:
    mov eax,[edx+0x41f5f8] ; 00409AEA 8B82F8F54100
    %if ($ - %%insn_00409aea) > 6
        %error "LONG_00409AEA"
    %endif
    times 6 - ($ - %%insn_00409aea) db 0
    %%insn_00409af0:
    push eax ; 00409AF0 50
    %if ($ - %%insn_00409af0) > 1
        %error "LONG_00409AF0"
    %endif
    times 1 - ($ - %%insn_00409af0) db 0
    %%insn_00409af1:
    call 0x40c9a0 ; 00409AF1 E8AA2E0000
    %if ($ - %%insn_00409af1) > 5
        %error "LONG_00409AF1"
    %endif
    times 5 - ($ - %%insn_00409af1) db 0
    %%insn_00409af6:
    add esp,0x4 ; 00409AF6 83C404
    %if ($ - %%insn_00409af6) > 3
        %error "LONG_00409AF6"
    %endif
    times 3 - ($ - %%insn_00409af6) db 0
    %%insn_00409af9:
    jmp short 0x409ac3 ; 00409AF9 EBC8
    %if ($ - %%insn_00409af9) > 2
        %error "LONG_00409AF9"
    %endif
    times 2 - ($ - %%insn_00409af9) db 0
    %%insn_00409afb:
    mov ecx,[0x422448] ; 00409AFB 8B0D48244200
    %if ($ - %%insn_00409afb) > 6
        %error "LONG_00409AFB"
    %endif
    times 6 - ($ - %%insn_00409afb) db 0
    %%insn_00409b01:
    push ecx ; 00409B01 51
    %if ($ - %%insn_00409b01) > 1
        %error "LONG_00409B01"
    %endif
    times 1 - ($ - %%insn_00409b01) db 0
    %%insn_00409b02:
    call 0x40c9a0 ; 00409B02 E8992E0000
    %if ($ - %%insn_00409b02) > 5
        %error "LONG_00409B02"
    %endif
    times 5 - ($ - %%insn_00409b02) db 0
    %%insn_00409b07:
    add esp,0x4 ; 00409B07 83C404
    %if ($ - %%insn_00409b07) > 3
        %error "LONG_00409B07"
    %endif
    times 3 - ($ - %%insn_00409b07) db 0
    %%insn_00409b0a:
    mov edx,[0x41f5f4] ; 00409B0A 8B15F4F54100
    %if ($ - %%insn_00409b0a) > 6
        %error "LONG_00409B0A"
    %endif
    times 6 - ($ - %%insn_00409b0a) db 0
    %%insn_00409b10:
    push edx ; 00409B10 52
    %if ($ - %%insn_00409b10) > 1
        %error "LONG_00409B10"
    %endif
    times 1 - ($ - %%insn_00409b10) db 0
    %%insn_00409b11:
    call 0x40c9a0 ; 00409B11 E88A2E0000
    %if ($ - %%insn_00409b11) > 5
        %error "LONG_00409B11"
    %endif
    times 5 - ($ - %%insn_00409b11) db 0
    %%insn_00409b16:
    add esp,0x4 ; 00409B16 83C404
    %if ($ - %%insn_00409b16) > 3
        %error "LONG_00409B16"
    %endif
    times 3 - ($ - %%insn_00409b16) db 0
    db 0x8B, 0xE5 ; 00409B19 8BE5 | mov esp,ebp | encoding preserved
    %%insn_00409b1b:
    pop ebp ; 00409B1B 5D
    %if ($ - %%insn_00409b1b) > 1
        %error "LONG_00409B1B"
    %endif
    times 1 - ($ - %%insn_00409b1b) db 0
    %%insn_00409b1c:
    ret ; 00409B1C C3
    %if ($ - %%insn_00409b1c) > 1
        %error "LONG_00409B1C"
    %endif
    times 1 - ($ - %%insn_00409b1c) db 0
    %if ($ - %%fragment_start) != 103
        %error "function fragment size drift: 00409AB6"
    %endif
%endmacro
