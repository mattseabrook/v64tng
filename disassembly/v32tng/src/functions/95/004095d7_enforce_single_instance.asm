; PE virtual entry 004095D7
; Ghidra working symbol: FUN_004095d7
; Verified named-semaphore check and existing-player window activation.
; Generated losslessly; preserve byte identity after edits.

%macro emit_enforce_single_instance_part_00 0
    %%fragment_start:
enforce_single_instance:
    %%insn_004095d7:
    push ebp ; 004095D7 55
    %if ($ - %%insn_004095d7) > 1
        %error "LONG_004095D7"
    %endif
    times 1 - ($ - %%insn_004095d7) db 0
    db 0x8B, 0xEC ; 004095D8 8BEC | mov ebp,esp | encoding preserved
    %%insn_004095da:
    push ecx ; 004095DA 51
    %if ($ - %%insn_004095da) > 1
        %error "LONG_004095DA"
    %endif
    times 1 - ($ - %%insn_004095da) db 0
    %%insn_004095db:
    mov eax,[ebp+0x8] ; 004095DB 8B4508
    %if ($ - %%insn_004095db) > 3
        %error "LONG_004095DB"
    %endif
    times 3 - ($ - %%insn_004095db) db 0
    %%insn_004095de:
    push eax ; 004095DE 50
    %if ($ - %%insn_004095de) > 1
        %error "LONG_004095DE"
    %endif
    times 1 - ($ - %%insn_004095de) db 0
    %%insn_004095df:
    push dword 0x1 ; 004095DF 6A01
    %if ($ - %%insn_004095df) > 2
        %error "LONG_004095DF"
    %endif
    times 2 - ($ - %%insn_004095df) db 0
    %%insn_004095e1:
    push dword 0x0 ; 004095E1 6A00
    %if ($ - %%insn_004095e1) > 2
        %error "LONG_004095E1"
    %endif
    times 2 - ($ - %%insn_004095e1) db 0
    %%insn_004095e3:
    push dword 0x0 ; 004095E3 6A00
    %if ($ - %%insn_004095e3) > 2
        %error "LONG_004095E3"
    %endif
    times 2 - ($ - %%insn_004095e3) db 0
    %%insn_004095e5:
    call dword near [0x4243c0] ; 004095E5 FF15C0434200
    %if ($ - %%insn_004095e5) > 6
        %error "LONG_004095E5"
    %endif
    times 6 - ($ - %%insn_004095e5) db 0
    %%insn_004095eb:
    mov [0x41f5a8],eax ; 004095EB A3A8F54100
    %if ($ - %%insn_004095eb) > 5
        %error "LONG_004095EB"
    %endif
    times 5 - ($ - %%insn_004095eb) db 0
    %%insn_004095f0:
    cmp dword [0x41f5a8],0x0 ; 004095F0 833DA8F5410000
    %if ($ - %%insn_004095f0) > 7
        %error "LONG_004095F0"
    %endif
    times 7 - ($ - %%insn_004095f0) db 0
    %%insn_004095f7:
    jz short 0x409655 ; 004095F7 745C
    %if ($ - %%insn_004095f7) > 2
        %error "LONG_004095F7"
    %endif
    times 2 - ($ - %%insn_004095f7) db 0
    %%insn_004095f9:
    call dword near [0x4243c4] ; 004095F9 FF15C4434200
    %if ($ - %%insn_004095f9) > 6
        %error "LONG_004095F9"
    %endif
    times 6 - ($ - %%insn_004095f9) db 0
    %%insn_004095ff:
    cmp eax,0xb7 ; 004095FF 3DB7000000
    %if ($ - %%insn_004095ff) > 5
        %error "LONG_004095FF"
    %endif
    times 5 - ($ - %%insn_004095ff) db 0
    %%insn_00409604:
    jnz short 0x409655 ; 00409604 754F
    %if ($ - %%insn_00409604) > 2
        %error "LONG_00409604"
    %endif
    times 2 - ($ - %%insn_00409604) db 0
    %%insn_00409606:
    mov ecx,[0x41f5a8] ; 00409606 8B0DA8F54100
    %if ($ - %%insn_00409606) > 6
        %error "LONG_00409606"
    %endif
    times 6 - ($ - %%insn_00409606) db 0
    %%insn_0040960c:
    push ecx ; 0040960C 51
    %if ($ - %%insn_0040960c) > 1
        %error "LONG_0040960C"
    %endif
    times 1 - ($ - %%insn_0040960c) db 0
    %%insn_0040960d:
    call dword near [0x4243c8] ; 0040960D FF15C8434200
    %if ($ - %%insn_0040960d) > 6
        %error "LONG_0040960D"
    %endif
    times 6 - ($ - %%insn_0040960d) db 0
    %%insn_00409613:
    mov edx,[ebp+0x10] ; 00409613 8B5510
    %if ($ - %%insn_00409613) > 3
        %error "LONG_00409613"
    %endif
    times 3 - ($ - %%insn_00409613) db 0
    %%insn_00409616:
    push edx ; 00409616 52
    %if ($ - %%insn_00409616) > 1
        %error "LONG_00409616"
    %endif
    times 1 - ($ - %%insn_00409616) db 0
    %%insn_00409617:
    mov eax,[ebp+0xc] ; 00409617 8B450C
    %if ($ - %%insn_00409617) > 3
        %error "LONG_00409617"
    %endif
    times 3 - ($ - %%insn_00409617) db 0
    %%insn_0040961a:
    push eax ; 0040961A 50
    %if ($ - %%insn_0040961a) > 1
        %error "LONG_0040961A"
    %endif
    times 1 - ($ - %%insn_0040961a) db 0
    %%insn_0040961b:
    call dword near [0x424574] ; 0040961B FF1574454200
    %if ($ - %%insn_0040961b) > 6
        %error "LONG_0040961B"
    %endif
    times 6 - ($ - %%insn_0040961b) db 0
    %%insn_00409621:
    mov [ebp-0x4],eax ; 00409621 8945FC
    %if ($ - %%insn_00409621) > 3
        %error "LONG_00409621"
    %endif
    times 3 - ($ - %%insn_00409621) db 0
    %%insn_00409624:
    cmp dword [ebp-0x4],0x0 ; 00409624 837DFC00
    %if ($ - %%insn_00409624) > 4
        %error "LONG_00409624"
    %endif
    times 4 - ($ - %%insn_00409624) db 0
    %%insn_00409628:
    jz short 0x40964e ; 00409628 7424
    %if ($ - %%insn_00409628) > 2
        %error "LONG_00409628"
    %endif
    times 2 - ($ - %%insn_00409628) db 0
    %%insn_0040962a:
    mov ecx,[ebp-0x4] ; 0040962A 8B4DFC
    %if ($ - %%insn_0040962a) > 3
        %error "LONG_0040962A"
    %endif
    times 3 - ($ - %%insn_0040962a) db 0
    %%insn_0040962d:
    push ecx ; 0040962D 51
    %if ($ - %%insn_0040962d) > 1
        %error "LONG_0040962D"
    %endif
    times 1 - ($ - %%insn_0040962d) db 0
    %%insn_0040962e:
    call dword near [0x424578] ; 0040962E FF1578454200
    %if ($ - %%insn_0040962e) > 6
        %error "LONG_0040962E"
    %endif
    times 6 - ($ - %%insn_0040962e) db 0
    %%insn_00409634:
    mov edx,[ebp-0x4] ; 00409634 8B55FC
    %if ($ - %%insn_00409634) > 3
        %error "LONG_00409634"
    %endif
    times 3 - ($ - %%insn_00409634) db 0
    %%insn_00409637:
    push edx ; 00409637 52
    %if ($ - %%insn_00409637) > 1
        %error "LONG_00409637"
    %endif
    times 1 - ($ - %%insn_00409637) db 0
    %%insn_00409638:
    call dword near [0x42457c] ; 00409638 FF157C454200
    %if ($ - %%insn_00409638) > 6
        %error "LONG_00409638"
    %endif
    times 6 - ($ - %%insn_00409638) db 0
    %%insn_0040963e:
    test eax,eax ; 0040963E 85C0
    %if ($ - %%insn_0040963e) > 2
        %error "LONG_0040963E"
    %endif
    times 2 - ($ - %%insn_0040963e) db 0
    %%insn_00409640:
    jz short 0x40964e ; 00409640 740C
    %if ($ - %%insn_00409640) > 2
        %error "LONG_00409640"
    %endif
    times 2 - ($ - %%insn_00409640) db 0
    %%insn_00409642:
    push dword 0x9 ; 00409642 6A09
    %if ($ - %%insn_00409642) > 2
        %error "LONG_00409642"
    %endif
    times 2 - ($ - %%insn_00409642) db 0
    %%insn_00409644:
    mov eax,[ebp-0x4] ; 00409644 8B45FC
    %if ($ - %%insn_00409644) > 3
        %error "LONG_00409644"
    %endif
    times 3 - ($ - %%insn_00409644) db 0
    %%insn_00409647:
    push eax ; 00409647 50
    %if ($ - %%insn_00409647) > 1
        %error "LONG_00409647"
    %endif
    times 1 - ($ - %%insn_00409647) db 0
    %%insn_00409648:
    call dword near [0x424580] ; 00409648 FF1580454200
    %if ($ - %%insn_00409648) > 6
        %error "LONG_00409648"
    %endif
    times 6 - ($ - %%insn_00409648) db 0
    %%insn_0040964e:
    mov eax,0x1 ; 0040964E B801000000
    %if ($ - %%insn_0040964e) > 5
        %error "LONG_0040964E"
    %endif
    times 5 - ($ - %%insn_0040964e) db 0
    %%insn_00409653:
    jmp short 0x409657 ; 00409653 EB02
    %if ($ - %%insn_00409653) > 2
        %error "LONG_00409653"
    %endif
    times 2 - ($ - %%insn_00409653) db 0
    db 0x33, 0xC0 ; 00409655 33C0 | xor eax,eax | encoding preserved
    db 0x8B, 0xE5 ; 00409657 8BE5 | mov esp,ebp | encoding preserved
    %%insn_00409659:
    pop ebp ; 00409659 5D
    %if ($ - %%insn_00409659) > 1
        %error "LONG_00409659"
    %endif
    times 1 - ($ - %%insn_00409659) db 0
    %%insn_0040965a:
    ret ; 0040965A C3
    %if ($ - %%insn_0040965a) > 1
        %error "LONG_0040965A"
    %endif
    times 1 - ($ - %%insn_0040965a) db 0
    %if ($ - %%fragment_start) != 132
        %error "function fragment size drift: 004095D7"
    %endif
%endmacro
