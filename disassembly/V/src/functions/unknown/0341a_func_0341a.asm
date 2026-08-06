; Linear entry 0341A (1000:341a)
; Ghidra working symbol: FUN_1000_341a
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_0341a_part_00 0
    %%fragment_start:
func_0341a:
    %%insn_0341a:
    push si ; 0341A 56
    %if ($ - %%insn_0341a) > 1
        %error "LONG_0341A"
    %endif
    times 1 - ($ - %%insn_0341a) db 0
    db 0x8B, 0xF3 ; 0341B 8BF3 | mov si,bx | encoding preserved
    db 0x8A, 0xC1 ; 0341D 8AC1 | mov al,cl | encoding preserved
    %%insn_0341f:
    call dx ; 0341F FFD2
    %if ($ - %%insn_0341f) > 2
        %error "LONG_0341F"
    %endif
    times 2 - ($ - %%insn_0341f) db 0
    %%insn_03421:
    xchg bl,[es:di] ; 03421 26861D
    %if ($ - %%insn_03421) > 3
        %error "LONG_03421"
    %endif
    times 3 - ($ - %%insn_03421) db 0
    db 0x8A, 0xC5 ; 03424 8AC5 | mov al,ch | encoding preserved
    %%insn_03426:
    call dx ; 03426 FFD2
    %if ($ - %%insn_03426) > 2
        %error "LONG_03426"
    %endif
    times 2 - ($ - %%insn_03426) db 0
    %%insn_03428:
    xchg bh,[es:di] ; 03428 26863D
    %if ($ - %%insn_03428) > 3
        %error "LONG_03428"
    %endif
    times 3 - ($ - %%insn_03428) db 0
    %%insn_0342b:
    xchg si,bx ; 0342B 87F3
    %if ($ - %%insn_0342b) > 2
        %error "LONG_0342B"
    %endif
    times 2 - ($ - %%insn_0342b) db 0
    db 0x8A, 0xC1 ; 0342D 8AC1 | mov al,cl | encoding preserved
    %%insn_0342f:
    call dx ; 0342F FFD2
    %if ($ - %%insn_0342f) > 2
        %error "LONG_0342F"
    %endif
    times 2 - ($ - %%insn_0342f) db 0
    %%insn_03431:
    xor bl,[es:di] ; 03431 26321D
    %if ($ - %%insn_03431) > 3
        %error "LONG_03431"
    %endif
    times 3 - ($ - %%insn_03431) db 0
    db 0x8A, 0xC5 ; 03434 8AC5 | mov al,ch | encoding preserved
    %%insn_03436:
    call dx ; 03436 FFD2
    %if ($ - %%insn_03436) > 2
        %error "LONG_03436"
    %endif
    times 2 - ($ - %%insn_03436) db 0
    %%insn_03438:
    xor bh,[es:di] ; 03438 26323D
    %if ($ - %%insn_03438) > 3
        %error "LONG_03438"
    %endif
    times 3 - ($ - %%insn_03438) db 0
    %%insn_0343b:
    xchg si,bx ; 0343B 87F3
    %if ($ - %%insn_0343b) > 2
        %error "LONG_0343B"
    %endif
    times 2 - ($ - %%insn_0343b) db 0
    db 0x8A, 0xC5 ; 0343D 8AC5 | mov al,ch | encoding preserved
    %%insn_0343f:
    call dx ; 0343F FFD2
    %if ($ - %%insn_0343f) > 2
        %error "LONG_0343F"
    %endif
    times 2 - ($ - %%insn_0343f) db 0
    %%insn_03441:
    mov [es:di],bh ; 03441 26883D
    %if ($ - %%insn_03441) > 3
        %error "LONG_03441"
    %endif
    times 3 - ($ - %%insn_03441) db 0
    db 0x8A, 0xC1 ; 03444 8AC1 | mov al,cl | encoding preserved
    %%insn_03446:
    call dx ; 03446 FFD2
    %if ($ - %%insn_03446) > 2
        %error "LONG_03446"
    %endif
    times 2 - ($ - %%insn_03446) db 0
    %%insn_03448:
    mov [es:di],bl ; 03448 26881D
    %if ($ - %%insn_03448) > 3
        %error "LONG_03448"
    %endif
    times 3 - ($ - %%insn_03448) db 0
    %%insn_0344b:
    mov al,0x0 ; 0344B B000
    %if ($ - %%insn_0344b) > 2
        %error "LONG_0344B"
    %endif
    times 2 - ($ - %%insn_0344b) db 0
    %%insn_0344d:
    call dx ; 0344D FFD2
    %if ($ - %%insn_0344d) > 2
        %error "LONG_0344D"
    %endif
    times 2 - ($ - %%insn_0344d) db 0
    db 0x0B, 0xF6 ; 0344F 0BF6 | or si,si | encoding preserved
    %%insn_03451:
    pop si ; 03451 5E
    %if ($ - %%insn_03451) > 1
        %error "LONG_03451"
    %endif
    times 1 - ($ - %%insn_03451) db 0
    %%insn_03452:
    ret ; 03452 C3
    %if ($ - %%insn_03452) > 1
        %error "LONG_03452"
    %endif
    times 1 - ($ - %%insn_03452) db 0
    %if ($ - %%fragment_start) != 57
        %error "SIZE_0341A"
    %endif
%endmacro
