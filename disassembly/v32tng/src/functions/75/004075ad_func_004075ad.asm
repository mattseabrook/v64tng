; PE virtual entry 004075AD
; Ghidra working symbol: FUN_004075ad
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_004075ad_part_00 0
    %%fragment_start:
func_004075ad:
    %%insn_004075ad:
    push ebp ; 004075AD 55
    %if ($ - %%insn_004075ad) > 1
        %error "LONG_004075AD"
    %endif
    times 1 - ($ - %%insn_004075ad) db 0
    db 0x8B, 0xEC ; 004075AE 8BEC | mov ebp,esp | encoding preserved
    %%insn_004075b0:
    call 0x407638 ; 004075B0 E883000000
    %if ($ - %%insn_004075b0) > 5
        %error "LONG_004075B0"
    %endif
    times 5 - ($ - %%insn_004075b0) db 0
    %%insn_004075b5:
    cmp dword [0x421444],0x0 ; 004075B5 833D4414420000
    %if ($ - %%insn_004075b5) > 7
        %error "LONG_004075B5"
    %endif
    times 7 - ($ - %%insn_004075b5) db 0
    %%insn_004075bc:
    jz short 0x4075e1 ; 004075BC 7423
    %if ($ - %%insn_004075bc) > 2
        %error "LONG_004075BC"
    %endif
    times 2 - ($ - %%insn_004075bc) db 0
    %%insn_004075be:
    mov eax,[0x421444] ; 004075BE A144144200
    %if ($ - %%insn_004075be) > 5
        %error "LONG_004075BE"
    %endif
    times 5 - ($ - %%insn_004075be) db 0
    %%insn_004075c3:
    push eax ; 004075C3 50
    %if ($ - %%insn_004075c3) > 1
        %error "LONG_004075C3"
    %endif
    times 1 - ($ - %%insn_004075c3) db 0
    %%insn_004075c4:
    call dword near [0x4245cc] ; 004075C4 FF15CC454200
    %if ($ - %%insn_004075c4) > 6
        %error "LONG_004075C4"
    %endif
    times 6 - ($ - %%insn_004075c4) db 0
    %%insn_004075ca:
    mov ecx,[0x421444] ; 004075CA 8B0D44144200
    %if ($ - %%insn_004075ca) > 6
        %error "LONG_004075CA"
    %endif
    times 6 - ($ - %%insn_004075ca) db 0
    %%insn_004075d0:
    push ecx ; 004075D0 51
    %if ($ - %%insn_004075d0) > 1
        %error "LONG_004075D0"
    %endif
    times 1 - ($ - %%insn_004075d0) db 0
    %%insn_004075d1:
    call dword near [0x424614] ; 004075D1 FF1514464200
    %if ($ - %%insn_004075d1) > 6
        %error "LONG_004075D1"
    %endif
    times 6 - ($ - %%insn_004075d1) db 0
    %%insn_004075d7:
    mov dword [0x421444],0x0 ; 004075D7 C7054414420000000000
    %if ($ - %%insn_004075d7) > 10
        %error "LONG_004075D7"
    %endif
    times 10 - ($ - %%insn_004075d7) db 0
    %%insn_004075e1:
    cmp dword [0x41f500],0x0 ; 004075E1 833D00F5410000
    %if ($ - %%insn_004075e1) > 7
        %error "LONG_004075E1"
    %endif
    times 7 - ($ - %%insn_004075e1) db 0
    %%insn_004075e8:
    jz short 0x407624 ; 004075E8 743A
    %if ($ - %%insn_004075e8) > 2
        %error "LONG_004075E8"
    %endif
    times 2 - ($ - %%insn_004075e8) db 0
    %%insn_004075ea:
    mov edx,[0x41f4fc] ; 004075EA 8B15FCF44100
    %if ($ - %%insn_004075ea) > 6
        %error "LONG_004075EA"
    %endif
    times 6 - ($ - %%insn_004075ea) db 0
    %%insn_004075f0:
    push edx ; 004075F0 52
    %if ($ - %%insn_004075f0) > 1
        %error "LONG_004075F0"
    %endif
    times 1 - ($ - %%insn_004075f0) db 0
    %%insn_004075f1:
    call dword near [0x4245a8] ; 004075F1 FF15A8454200
    %if ($ - %%insn_004075f1) > 6
        %error "LONG_004075F1"
    %endif
    times 6 - ($ - %%insn_004075f1) db 0
    %%insn_004075f7:
    push dword 0x42 ; 004075F7 6A42
    %if ($ - %%insn_004075f7) > 2
        %error "LONG_004075F7"
    %endif
    times 2 - ($ - %%insn_004075f7) db 0
    %%insn_004075f9:
    call dword near [0x4245a4] ; 004075F9 FF15A4454200
    %if ($ - %%insn_004075f9) > 6
        %error "LONG_004075F9"
    %endif
    times 6 - ($ - %%insn_004075f9) db 0
    %%insn_004075ff:
    push dword 0x1 ; 004075FF 6A01
    %if ($ - %%insn_004075ff) > 2
        %error "LONG_004075FF"
    %endif
    times 2 - ($ - %%insn_004075ff) db 0
    %%insn_00407601:
    push dword 0x421440 ; 00407601 6840144200
    %if ($ - %%insn_00407601) > 5
        %error "LONG_00407601"
    %endif
    times 5 - ($ - %%insn_00407601) db 0
    %%insn_00407606:
    call dword near [0x4243b0] ; 00407606 FF15B0434200
    %if ($ - %%insn_00407606) > 6
        %error "LONG_00407606"
    %endif
    times 6 - ($ - %%insn_00407606) db 0
    %%insn_0040760c:
    test eax,eax ; 0040760C 85C0
    %if ($ - %%insn_0040760c) > 2
        %error "LONG_0040760C"
    %endif
    times 2 - ($ - %%insn_0040760c) db 0
    %%insn_0040760e:
    jz short 0x40761a ; 0040760E 740A
    %if ($ - %%insn_0040760e) > 2
        %error "LONG_0040760E"
    %endif
    times 2 - ($ - %%insn_0040760e) db 0
    %%insn_00407610:
    push dword 0x64 ; 00407610 6A64
    %if ($ - %%insn_00407610) > 2
        %error "LONG_00407610"
    %endif
    times 2 - ($ - %%insn_00407610) db 0
    %%insn_00407612:
    call dword near [0x4244cc] ; 00407612 FF15CC444200
    %if ($ - %%insn_00407612) > 6
        %error "LONG_00407612"
    %endif
    times 6 - ($ - %%insn_00407612) db 0
    %%insn_00407618:
    jmp short 0x4075ff ; 00407618 EBE5
    %if ($ - %%insn_00407618) > 2
        %error "LONG_00407618"
    %endif
    times 2 - ($ - %%insn_00407618) db 0
    %%insn_0040761a:
    mov dword [0x41f500],0x0 ; 0040761A C70500F5410000000000
    %if ($ - %%insn_0040761a) > 10
        %error "LONG_0040761A"
    %endif
    times 10 - ($ - %%insn_0040761a) db 0
    %%insn_00407624:
    call dword near [0x424610] ; 00407624 FF1510464200
    %if ($ - %%insn_00407624) > 6
        %error "LONG_00407624"
    %endif
    times 6 - ($ - %%insn_00407624) db 0
    %%insn_0040762a:
    mov eax,[0x42143c] ; 0040762A A13C144200
    %if ($ - %%insn_0040762a) > 5
        %error "LONG_0040762A"
    %endif
    times 5 - ($ - %%insn_0040762a) db 0
    %%insn_0040762f:
    push eax ; 0040762F 50
    %if ($ - %%insn_0040762f) > 1
        %error "LONG_0040762F"
    %endif
    times 1 - ($ - %%insn_0040762f) db 0
    %%insn_00407630:
    call dword near [0x42460c] ; 00407630 FF150C464200
    %if ($ - %%insn_00407630) > 6
        %error "LONG_00407630"
    %endif
    times 6 - ($ - %%insn_00407630) db 0
    %%insn_00407636:
    pop ebp ; 00407636 5D
    %if ($ - %%insn_00407636) > 1
        %error "LONG_00407636"
    %endif
    times 1 - ($ - %%insn_00407636) db 0
    %%insn_00407637:
    ret ; 00407637 C3
    %if ($ - %%insn_00407637) > 1
        %error "LONG_00407637"
    %endif
    times 1 - ($ - %%insn_00407637) db 0
    %if ($ - %%fragment_start) != 139
        %error "function fragment size drift: 004075AD"
    %endif
%endmacro
