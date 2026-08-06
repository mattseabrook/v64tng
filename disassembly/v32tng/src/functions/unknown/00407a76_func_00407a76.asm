; PE virtual entry 00407A76
; Ghidra working symbol: FUN_00407a76
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00407a76_part_00 0
    %%fragment_start:
func_00407a76:
    %%insn_00407a76:
    push ebp ; 00407A76 55
    %if ($ - %%insn_00407a76) > 1
        %error "LONG_00407A76"
    %endif
    times 1 - ($ - %%insn_00407a76) db 0
    db 0x8B, 0xEC ; 00407A77 8BEC | mov ebp,esp | encoding preserved
    %%insn_00407a79:
    sub esp,0x8 ; 00407A79 83EC08
    %if ($ - %%insn_00407a79) > 3
        %error "LONG_00407A79"
    %endif
    times 3 - ($ - %%insn_00407a79) db 0
    %%insn_00407a7c:
    mov [ebp-0x8],ecx ; 00407A7C 894DF8
    %if ($ - %%insn_00407a7c) > 3
        %error "LONG_00407A7C"
    %endif
    times 3 - ($ - %%insn_00407a7c) db 0
    %%insn_00407a7f:
    mov eax,0x1 ; 00407A7F B801000000
    %if ($ - %%insn_00407a7f) > 5
        %error "LONG_00407A7F"
    %endif
    times 5 - ($ - %%insn_00407a7f) db 0
    %%insn_00407a84:
    test eax,eax ; 00407A84 85C0
    %if ($ - %%insn_00407a84) > 2
        %error "LONG_00407A84"
    %endif
    times 2 - ($ - %%insn_00407a84) db 0
    %%insn_00407a86:
    jz short 0x407ae1 ; 00407A86 7459
    %if ($ - %%insn_00407a86) > 2
        %error "LONG_00407A86"
    %endif
    times 2 - ($ - %%insn_00407a86) db 0
    %%insn_00407a88:
    push dword 0x0 ; 00407A88 6A00
    %if ($ - %%insn_00407a88) > 2
        %error "LONG_00407A88"
    %endif
    times 2 - ($ - %%insn_00407a88) db 0
    %%insn_00407a8a:
    push dword 0x0 ; 00407A8A 6A00
    %if ($ - %%insn_00407a8a) > 2
        %error "LONG_00407A8A"
    %endif
    times 2 - ($ - %%insn_00407a8a) db 0
    %%insn_00407a8c:
    mov ecx,[0x421428] ; 00407A8C 8B0D28144200
    %if ($ - %%insn_00407a8c) > 6
        %error "LONG_00407A8C"
    %endif
    times 6 - ($ - %%insn_00407a8c) db 0
    %%insn_00407a92:
    push ecx ; 00407A92 51
    %if ($ - %%insn_00407a92) > 1
        %error "LONG_00407A92"
    %endif
    times 1 - ($ - %%insn_00407a92) db 0
    %%insn_00407a93:
    mov edx,[0x421428] ; 00407A93 8B1528144200
    %if ($ - %%insn_00407a93) > 6
        %error "LONG_00407A93"
    %endif
    times 6 - ($ - %%insn_00407a93) db 0
    %%insn_00407a99:
    mov eax,[edx] ; 00407A99 8B02
    %if ($ - %%insn_00407a99) > 2
        %error "LONG_00407A99"
    %endif
    times 2 - ($ - %%insn_00407a99) db 0
    %%insn_00407a9b:
    call dword near [eax+0x2c] ; 00407A9B FF502C
    %if ($ - %%insn_00407a9b) > 3
        %error "LONG_00407A9B"
    %endif
    times 3 - ($ - %%insn_00407a9b) db 0
    %%insn_00407a9e:
    mov [ebp-0x4],eax ; 00407A9E 8945FC
    %if ($ - %%insn_00407a9e) > 3
        %error "LONG_00407A9E"
    %endif
    times 3 - ($ - %%insn_00407a9e) db 0
    %%insn_00407aa1:
    cmp dword [ebp-0x4],0x0 ; 00407AA1 837DFC00
    %if ($ - %%insn_00407aa1) > 4
        %error "LONG_00407AA1"
    %endif
    times 4 - ($ - %%insn_00407aa1) db 0
    %%insn_00407aa5:
    jnz short 0x407aa9 ; 00407AA5 7502
    %if ($ - %%insn_00407aa5) > 2
        %error "LONG_00407AA5"
    %endif
    times 2 - ($ - %%insn_00407aa5) db 0
    %%insn_00407aa7:
    jmp short 0x407ae1 ; 00407AA7 EB38
    %if ($ - %%insn_00407aa7) > 2
        %error "LONG_00407AA7"
    %endif
    times 2 - ($ - %%insn_00407aa7) db 0
    %%insn_00407aa9:
    cmp dword [ebp-0x4],0x887601c2 ; 00407AA9 817DFCC2017688
    %if ($ - %%insn_00407aa9) > 7
        %error "LONG_00407AA9"
    %endif
    times 7 - ($ - %%insn_00407aa9) db 0
    %%insn_00407ab0:
    jnz short 0x407ad4 ; 00407AB0 7522
    %if ($ - %%insn_00407ab0) > 2
        %error "LONG_00407AB0"
    %endif
    times 2 - ($ - %%insn_00407ab0) db 0
    %%insn_00407ab2:
    mov ecx,[0x421428] ; 00407AB2 8B0D28144200
    %if ($ - %%insn_00407ab2) > 6
        %error "LONG_00407AB2"
    %endif
    times 6 - ($ - %%insn_00407ab2) db 0
    %%insn_00407ab8:
    push ecx ; 00407AB8 51
    %if ($ - %%insn_00407ab8) > 1
        %error "LONG_00407AB8"
    %endif
    times 1 - ($ - %%insn_00407ab8) db 0
    %%insn_00407ab9:
    mov edx,[0x421428] ; 00407AB9 8B1528144200
    %if ($ - %%insn_00407ab9) > 6
        %error "LONG_00407AB9"
    %endif
    times 6 - ($ - %%insn_00407ab9) db 0
    %%insn_00407abf:
    mov eax,[edx] ; 00407ABF 8B02
    %if ($ - %%insn_00407abf) > 2
        %error "LONG_00407ABF"
    %endif
    times 2 - ($ - %%insn_00407abf) db 0
    %%insn_00407ac1:
    call dword near [eax+0x6c] ; 00407AC1 FF506C
    %if ($ - %%insn_00407ac1) > 3
        %error "LONG_00407AC1"
    %endif
    times 3 - ($ - %%insn_00407ac1) db 0
    %%insn_00407ac4:
    mov [ebp-0x4],eax ; 00407AC4 8945FC
    %if ($ - %%insn_00407ac4) > 3
        %error "LONG_00407AC4"
    %endif
    times 3 - ($ - %%insn_00407ac4) db 0
    %%insn_00407ac7:
    cmp dword [ebp-0x4],0x0 ; 00407AC7 837DFC00
    %if ($ - %%insn_00407ac7) > 4
        %error "LONG_00407AC7"
    %endif
    times 4 - ($ - %%insn_00407ac7) db 0
    %%insn_00407acb:
    jz short 0x407ad4 ; 00407ACB 7407
    %if ($ - %%insn_00407acb) > 2
        %error "LONG_00407ACB"
    %endif
    times 2 - ($ - %%insn_00407acb) db 0
    %%insn_00407acd:
    mov eax,0x500 ; 00407ACD B800050000
    %if ($ - %%insn_00407acd) > 5
        %error "LONG_00407ACD"
    %endif
    times 5 - ($ - %%insn_00407acd) db 0
    %%insn_00407ad2:
    jmp short 0x407ae3 ; 00407AD2 EB0F
    %if ($ - %%insn_00407ad2) > 2
        %error "LONG_00407AD2"
    %endif
    times 2 - ($ - %%insn_00407ad2) db 0
    %%insn_00407ad4:
    cmp dword [ebp-0x4],0x8876021c ; 00407AD4 817DFC1C027688
    %if ($ - %%insn_00407ad4) > 7
        %error "LONG_00407AD4"
    %endif
    times 7 - ($ - %%insn_00407ad4) db 0
    %%insn_00407adb:
    jz short 0x407adf ; 00407ADB 7402
    %if ($ - %%insn_00407adb) > 2
        %error "LONG_00407ADB"
    %endif
    times 2 - ($ - %%insn_00407adb) db 0
    %%insn_00407add:
    jmp short 0x407ae1 ; 00407ADD EB02
    %if ($ - %%insn_00407add) > 2
        %error "LONG_00407ADD"
    %endif
    times 2 - ($ - %%insn_00407add) db 0
    %%insn_00407adf:
    jmp short 0x407a7f ; 00407ADF EB9E
    %if ($ - %%insn_00407adf) > 2
        %error "LONG_00407ADF"
    %endif
    times 2 - ($ - %%insn_00407adf) db 0
    db 0x33, 0xC0 ; 00407AE1 33C0 | xor eax,eax | encoding preserved
    db 0x8B, 0xE5 ; 00407AE3 8BE5 | mov esp,ebp | encoding preserved
    %%insn_00407ae5:
    pop ebp ; 00407AE5 5D
    %if ($ - %%insn_00407ae5) > 1
        %error "LONG_00407AE5"
    %endif
    times 1 - ($ - %%insn_00407ae5) db 0
    %%insn_00407ae6:
    ret ; 00407AE6 C3
    %if ($ - %%insn_00407ae6) > 1
        %error "LONG_00407AE6"
    %endif
    times 1 - ($ - %%insn_00407ae6) db 0
    %if ($ - %%fragment_start) != 113
        %error "function fragment size drift: 00407A76"
    %endif
%endmacro
