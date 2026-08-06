; PE virtual entry 0040CF10
; Ghidra working symbol: FUN_0040cf10
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040cf10_part_00 0
    %%fragment_start:
func_0040cf10:
    %%insn_0040cf10:
    push esi ; 0040CF10 56
    %if ($ - %%insn_0040cf10) > 1
        %error "LONG_0040CF10"
    %endif
    times 1 - ($ - %%insn_0040cf10) db 0
    %%insn_0040cf11:
    mov esi,[esp+0x8] ; 0040CF11 8B742408
    %if ($ - %%insn_0040cf11) > 4
        %error "LONG_0040CF11"
    %endif
    times 4 - ($ - %%insn_0040cf11) db 0
    %%insn_0040cf15:
    push edi ; 0040CF15 57
    %if ($ - %%insn_0040cf15) > 1
        %error "LONG_0040CF15"
    %endif
    times 1 - ($ - %%insn_0040cf15) db 0
    %%insn_0040cf16:
    or edi,0xffffffffffffffff ; 0040CF16 83CFFF
    %if ($ - %%insn_0040cf16) > 3
        %error "LONG_0040CF16"
    %endif
    times 3 - ($ - %%insn_0040cf16) db 0
    %%insn_0040cf19:
    test byte [esi+0xc],0x83 ; 0040CF19 F6460C83
    %if ($ - %%insn_0040cf19) > 4
        %error "LONG_0040CF19"
    %endif
    times 4 - ($ - %%insn_0040cf19) db 0
    %%insn_0040cf1d:
    jz short 0x40cf69 ; 0040CF1D 744A
    %if ($ - %%insn_0040cf1d) > 2
        %error "LONG_0040CF1D"
    %endif
    times 2 - ($ - %%insn_0040cf1d) db 0
    %%insn_0040cf1f:
    push esi ; 0040CF1F 56
    %if ($ - %%insn_0040cf1f) > 1
        %error "LONG_0040CF1F"
    %endif
    times 1 - ($ - %%insn_0040cf1f) db 0
    %%insn_0040cf20:
    call 0x40f8a0 ; 0040CF20 E87B290000
    %if ($ - %%insn_0040cf20) > 5
        %error "LONG_0040CF20"
    %endif
    times 5 - ($ - %%insn_0040cf20) db 0
    %%insn_0040cf25:
    add esp,0x4 ; 0040CF25 83C404
    %if ($ - %%insn_0040cf25) > 3
        %error "LONG_0040CF25"
    %endif
    times 3 - ($ - %%insn_0040cf25) db 0
    db 0x8B, 0xF8 ; 0040CF28 8BF8 | mov edi,eax | encoding preserved
    %%insn_0040cf2a:
    push esi ; 0040CF2A 56
    %if ($ - %%insn_0040cf2a) > 1
        %error "LONG_0040CF2A"
    %endif
    times 1 - ($ - %%insn_0040cf2a) db 0
    %%insn_0040cf2b:
    call 0x40f7e0 ; 0040CF2B E8B0280000
    %if ($ - %%insn_0040cf2b) > 5
        %error "LONG_0040CF2B"
    %endif
    times 5 - ($ - %%insn_0040cf2b) db 0
    %%insn_0040cf30:
    mov eax,[esi+0x10] ; 0040CF30 8B4610
    %if ($ - %%insn_0040cf30) > 3
        %error "LONG_0040CF30"
    %endif
    times 3 - ($ - %%insn_0040cf30) db 0
    %%insn_0040cf33:
    add esp,0x4 ; 0040CF33 83C404
    %if ($ - %%insn_0040cf33) > 3
        %error "LONG_0040CF33"
    %endif
    times 3 - ($ - %%insn_0040cf33) db 0
    %%insn_0040cf36:
    push eax ; 0040CF36 50
    %if ($ - %%insn_0040cf36) > 1
        %error "LONG_0040CF36"
    %endif
    times 1 - ($ - %%insn_0040cf36) db 0
    %%insn_0040cf37:
    call 0x40f6e0 ; 0040CF37 E8A4270000
    %if ($ - %%insn_0040cf37) > 5
        %error "LONG_0040CF37"
    %endif
    times 5 - ($ - %%insn_0040cf37) db 0
    %%insn_0040cf3c:
    add esp,0x4 ; 0040CF3C 83C404
    %if ($ - %%insn_0040cf3c) > 3
        %error "LONG_0040CF3C"
    %endif
    times 3 - ($ - %%insn_0040cf3c) db 0
    %%insn_0040cf3f:
    test eax,eax ; 0040CF3F 85C0
    %if ($ - %%insn_0040cf3f) > 2
        %error "LONG_0040CF3F"
    %endif
    times 2 - ($ - %%insn_0040cf3f) db 0
    %%insn_0040cf41:
    jnl short 0x40cf52 ; 0040CF41 7D0F
    %if ($ - %%insn_0040cf41) > 2
        %error "LONG_0040CF41"
    %endif
    times 2 - ($ - %%insn_0040cf41) db 0
    %%insn_0040cf43:
    or edi,0xffffffffffffffff ; 0040CF43 83CFFF
    %if ($ - %%insn_0040cf43) > 3
        %error "LONG_0040CF43"
    %endif
    times 3 - ($ - %%insn_0040cf43) db 0
    %%insn_0040cf46:
    mov dword [esi+0xc],0x0 ; 0040CF46 C7460C00000000
    %if ($ - %%insn_0040cf46) > 7
        %error "LONG_0040CF46"
    %endif
    times 7 - ($ - %%insn_0040cf46) db 0
    db 0x8B, 0xC7 ; 0040CF4D 8BC7 | mov eax,edi | encoding preserved
    %%insn_0040cf4f:
    pop edi ; 0040CF4F 5F
    %if ($ - %%insn_0040cf4f) > 1
        %error "LONG_0040CF4F"
    %endif
    times 1 - ($ - %%insn_0040cf4f) db 0
    %%insn_0040cf50:
    pop esi ; 0040CF50 5E
    %if ($ - %%insn_0040cf50) > 1
        %error "LONG_0040CF50"
    %endif
    times 1 - ($ - %%insn_0040cf50) db 0
    %%insn_0040cf51:
    ret ; 0040CF51 C3
    %if ($ - %%insn_0040cf51) > 1
        %error "LONG_0040CF51"
    %endif
    times 1 - ($ - %%insn_0040cf51) db 0
    %%insn_0040cf52:
    mov eax,[esi+0x1c] ; 0040CF52 8B461C
    %if ($ - %%insn_0040cf52) > 3
        %error "LONG_0040CF52"
    %endif
    times 3 - ($ - %%insn_0040cf52) db 0
    %%insn_0040cf55:
    test eax,eax ; 0040CF55 85C0
    %if ($ - %%insn_0040cf55) > 2
        %error "LONG_0040CF55"
    %endif
    times 2 - ($ - %%insn_0040cf55) db 0
    %%insn_0040cf57:
    jz short 0x40cf69 ; 0040CF57 7410
    %if ($ - %%insn_0040cf57) > 2
        %error "LONG_0040CF57"
    %endif
    times 2 - ($ - %%insn_0040cf57) db 0
    %%insn_0040cf59:
    push eax ; 0040CF59 50
    %if ($ - %%insn_0040cf59) > 1
        %error "LONG_0040CF59"
    %endif
    times 1 - ($ - %%insn_0040cf59) db 0
    %%insn_0040cf5a:
    call 0x40c9a0 ; 0040CF5A E841FAFFFF
    %if ($ - %%insn_0040cf5a) > 5
        %error "LONG_0040CF5A"
    %endif
    times 5 - ($ - %%insn_0040cf5a) db 0
    %%insn_0040cf5f:
    add esp,0x4 ; 0040CF5F 83C404
    %if ($ - %%insn_0040cf5f) > 3
        %error "LONG_0040CF5F"
    %endif
    times 3 - ($ - %%insn_0040cf5f) db 0
    %%insn_0040cf62:
    mov dword [esi+0x1c],0x0 ; 0040CF62 C7461C00000000
    %if ($ - %%insn_0040cf62) > 7
        %error "LONG_0040CF62"
    %endif
    times 7 - ($ - %%insn_0040cf62) db 0
    db 0x8B, 0xC7 ; 0040CF69 8BC7 | mov eax,edi | encoding preserved
    %%insn_0040cf6b:
    mov dword [esi+0xc],0x0 ; 0040CF6B C7460C00000000
    %if ($ - %%insn_0040cf6b) > 7
        %error "LONG_0040CF6B"
    %endif
    times 7 - ($ - %%insn_0040cf6b) db 0
    %%insn_0040cf72:
    pop edi ; 0040CF72 5F
    %if ($ - %%insn_0040cf72) > 1
        %error "LONG_0040CF72"
    %endif
    times 1 - ($ - %%insn_0040cf72) db 0
    %%insn_0040cf73:
    pop esi ; 0040CF73 5E
    %if ($ - %%insn_0040cf73) > 1
        %error "LONG_0040CF73"
    %endif
    times 1 - ($ - %%insn_0040cf73) db 0
    %%insn_0040cf74:
    ret ; 0040CF74 C3
    %if ($ - %%insn_0040cf74) > 1
        %error "LONG_0040CF74"
    %endif
    times 1 - ($ - %%insn_0040cf74) db 0
    %if ($ - %%fragment_start) != 101
        %error "function fragment size drift: 0040CF10"
    %endif
%endmacro
