; PE virtual entry 0040C6A5
; Ghidra working symbol: FUN_0040c6a5
; Verified VDX stream finalizer used for EOF, rejected coding/size, and playback
; teardown. It clears active stream state, closes owned handles, and releases
; audio/player resources; analyzer boundary is retained.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040c6a5_part_00 0
    %%fragment_start:
finalize_vdx_stream_playback:
    %%insn_0040c6a5:
    push ebp ; 0040C6A5 55
    %if ($ - %%insn_0040c6a5) > 1
        %error "LONG_0040C6A5"
    %endif
    times 1 - ($ - %%insn_0040c6a5) db 0
    db 0x8B, 0xEC ; 0040C6A6 8BEC | mov ebp,esp | encoding preserved
    %%insn_0040c6a8:
    mov eax,[ebp+0x8] ; 0040C6A8 8B4508
    %if ($ - %%insn_0040c6a8) > 3
        %error "LONG_0040C6A8"
    %endif
    times 3 - ($ - %%insn_0040c6a8) db 0
    db 0x33, 0xC9 ; 0040C6AB 33C9 | xor ecx,ecx | encoding preserved
    %%insn_0040c6ad:
    mov cx,[eax+0x62] ; 0040C6AD 668B4862
    %if ($ - %%insn_0040c6ad) > 4
        %error "LONG_0040C6AD"
    %endif
    times 4 - ($ - %%insn_0040c6ad) db 0
    %%insn_0040c6b1:
    and ecx,0x2 ; 0040C6B1 83E102
    %if ($ - %%insn_0040c6b1) > 3
        %error "LONG_0040C6B1"
    %endif
    times 3 - ($ - %%insn_0040c6b1) db 0
    %%insn_0040c6b4:
    test ecx,ecx ; 0040C6B4 85C9
    %if ($ - %%insn_0040c6b4) > 2
        %error "LONG_0040C6B4"
    %endif
    times 2 - ($ - %%insn_0040c6b4) db 0
    %%insn_0040c6b6:
    jnz short 0x40c6cf ; 0040C6B6 7517
    %if ($ - %%insn_0040c6b6) > 2
        %error "LONG_0040C6B6"
    %endif
    times 2 - ($ - %%insn_0040c6b6) db 0
    %%insn_0040c6b8:
    movsx edx,word [0x41f310] ; 0040C6B8 0FBF1510F34100
    %if ($ - %%insn_0040c6b8) > 7
        %error "LONG_0040C6B8"
    %endif
    times 7 - ($ - %%insn_0040c6b8) db 0
    %%insn_0040c6bf:
    test edx,edx ; 0040C6BF 85D2
    %if ($ - %%insn_0040c6bf) > 2
        %error "LONG_0040C6BF"
    %endif
    times 2 - ($ - %%insn_0040c6bf) db 0
    %%insn_0040c6c1:
    jnz short 0x40c6c5 ; 0040C6C1 7502
    %if ($ - %%insn_0040c6c1) > 2
        %error "LONG_0040C6C1"
    %endif
    times 2 - ($ - %%insn_0040c6c1) db 0
    %%insn_0040c6c3:
    jmp short 0x40c6cf ; 0040C6C3 EB0A
    %if ($ - %%insn_0040c6c3) > 2
        %error "LONG_0040C6C3"
    %endif
    times 2 - ($ - %%insn_0040c6c3) db 0
    %%insn_0040c6c5:
    mov dword [0x420e50],0x1 ; 0040C6C5 C705500E420001000000
    %if ($ - %%insn_0040c6c5) > 10
        %error "LONG_0040C6C5"
    %endif
    times 10 - ($ - %%insn_0040c6c5) db 0
    %%insn_0040c6cf:
    mov byte [0x4212cc],0x0 ; 0040C6CF C605CC12420000
    %if ($ - %%insn_0040c6cf) > 7
        %error "LONG_0040C6CF"
    %endif
    times 7 - ($ - %%insn_0040c6cf) db 0
    %%insn_0040c6d6:
    mov dword [0x41f590],0x1 ; 0040C6D6 C70590F5410001000000
    %if ($ - %%insn_0040c6d6) > 10
        %error "LONG_0040C6D6"
    %endif
    times 10 - ($ - %%insn_0040c6d6) db 0
    %%insn_0040c6e0:
    mov dword [0x421354],0x0 ; 0040C6E0 C7055413420000000000
    %if ($ - %%insn_0040c6e0) > 10
        %error "LONG_0040C6E0"
    %endif
    times 10 - ($ - %%insn_0040c6e0) db 0
    %%insn_0040c6ea:
    mov dword [0x42135c],0x0 ; 0040C6EA C7055C13420000000000
    %if ($ - %%insn_0040c6ea) > 10
        %error "LONG_0040C6EA"
    %endif
    times 10 - ($ - %%insn_0040c6ea) db 0
    %%insn_0040c6f4:
    mov dword [0x421358],0x280 ; 0040C6F4 C7055813420080020000
    %if ($ - %%insn_0040c6f4) > 10
        %error "LONG_0040C6F4"
    %endif
    times 10 - ($ - %%insn_0040c6f4) db 0
    %%insn_0040c6fe:
    mov dword [0x421360],0x1e0 ; 0040C6FE C70560134200E0010000
    %if ($ - %%insn_0040c6fe) > 10
        %error "LONG_0040C6FE"
    %endif
    times 10 - ($ - %%insn_0040c6fe) db 0
    %%insn_0040c708:
    mov eax,[ebp+0x8] ; 0040C708 8B4508
    %if ($ - %%insn_0040c708) > 3
        %error "LONG_0040C708"
    %endif
    times 3 - ($ - %%insn_0040c708) db 0
    %%insn_0040c70b:
    mov dword [eax+0x4],0x0 ; 0040C70B C7400400000000
    %if ($ - %%insn_0040c70b) > 7
        %error "LONG_0040C70B"
    %endif
    times 7 - ($ - %%insn_0040c70b) db 0
    %%insn_0040c712:
    call 0x408d12 ; 0040C712 E8FBC5FFFF
    %if ($ - %%insn_0040c712) > 5
        %error "LONG_0040C712"
    %endif
    times 5 - ($ - %%insn_0040c712) db 0
    %%insn_0040c717:
    mov ecx,[ebp+0x8] ; 0040C717 8B4D08
    %if ($ - %%insn_0040c717) > 3
        %error "LONG_0040C717"
    %endif
    times 3 - ($ - %%insn_0040c717) db 0
    %%insn_0040c71a:
    mov edx,[ecx+0x44] ; 0040C71A 8B5144
    %if ($ - %%insn_0040c71a) > 3
        %error "LONG_0040C71A"
    %endif
    times 3 - ($ - %%insn_0040c71a) db 0
    %%insn_0040c71d:
    and edx,0x4 ; 0040C71D 83E204
    %if ($ - %%insn_0040c71d) > 3
        %error "LONG_0040C71D"
    %endif
    times 3 - ($ - %%insn_0040c71d) db 0
    %%insn_0040c720:
    test edx,edx ; 0040C720 85D2
    %if ($ - %%insn_0040c720) > 2
        %error "LONG_0040C720"
    %endif
    times 2 - ($ - %%insn_0040c720) db 0
    %%insn_0040c722:
    jz short 0x40c732 ; 0040C722 740E
    %if ($ - %%insn_0040c722) > 2
        %error "LONG_0040C722"
    %endif
    times 2 - ($ - %%insn_0040c722) db 0
    %%insn_0040c724:
    push dword 0x0 ; 0040C724 6A00
    %if ($ - %%insn_0040c724) > 2
        %error "LONG_0040C724"
    %endif
    times 2 - ($ - %%insn_0040c724) db 0
    %%insn_0040c726:
    mov eax,[ebp+0x8] ; 0040C726 8B4508
    %if ($ - %%insn_0040c726) > 3
        %error "LONG_0040C726"
    %endif
    times 3 - ($ - %%insn_0040c726) db 0
    %%insn_0040c729:
    mov ecx,[eax] ; 0040C729 8B08
    %if ($ - %%insn_0040c729) > 2
        %error "LONG_0040C729"
    %endif
    times 2 - ($ - %%insn_0040c729) db 0
    %%insn_0040c72b:
    push ecx ; 0040C72B 51
    %if ($ - %%insn_0040c72b) > 1
        %error "LONG_0040C72B"
    %endif
    times 1 - ($ - %%insn_0040c72b) db 0
    %%insn_0040c72c:
    call dword near [0x424590] ; 0040C72C FF1590454200
    %if ($ - %%insn_0040c72c) > 6
        %error "LONG_0040C72C"
    %endif
    times 6 - ($ - %%insn_0040c72c) db 0
    %%insn_0040c732:
    call 0x406fae ; 0040C732 E877A8FFFF
    %if ($ - %%insn_0040c732) > 5
        %error "LONG_0040C732"
    %endif
    times 5 - ($ - %%insn_0040c732) db 0
    %%insn_0040c737:
    movsx edx,word [0x41f314] ; 0040C737 0FBF1514F34100
    %if ($ - %%insn_0040c737) > 7
        %error "LONG_0040C737"
    %endif
    times 7 - ($ - %%insn_0040c737) db 0
    %%insn_0040c73e:
    cmp edx,0x1 ; 0040C73E 83FA01
    %if ($ - %%insn_0040c73e) > 3
        %error "LONG_0040C73E"
    %endif
    times 3 - ($ - %%insn_0040c73e) db 0
    %%insn_0040c741:
    jnz short 0x40c74c ; 0040C741 7509
    %if ($ - %%insn_0040c741) > 2
        %error "LONG_0040C741"
    %endif
    times 2 - ($ - %%insn_0040c741) db 0
    %%insn_0040c743:
    mov word [0x41f314],0x2 ; 0040C743 66C70514F341000200
    %if ($ - %%insn_0040c743) > 9
        %error "LONG_0040C743"
    %endif
    times 9 - ($ - %%insn_0040c743) db 0
    %%insn_0040c74c:
    cmp dword [0x41f31c],0x0 ; 0040C74C 833D1CF3410000
    %if ($ - %%insn_0040c74c) > 7
        %error "LONG_0040C74C"
    %endif
    times 7 - ($ - %%insn_0040c74c) db 0
    %%insn_0040c753:
    jz short 0x40c76d ; 0040C753 7418
    %if ($ - %%insn_0040c753) > 2
        %error "LONG_0040C753"
    %endif
    times 2 - ($ - %%insn_0040c753) db 0
    %%insn_0040c755:
    push dword 0x0 ; 0040C755 6A00
    %if ($ - %%insn_0040c755) > 2
        %error "LONG_0040C755"
    %endif
    times 2 - ($ - %%insn_0040c755) db 0
    %%insn_0040c757:
    mov eax,[0x41f31c] ; 0040C757 A11CF34100
    %if ($ - %%insn_0040c757) > 5
        %error "LONG_0040C757"
    %endif
    times 5 - ($ - %%insn_0040c757) db 0
    %%insn_0040c75c:
    push eax ; 0040C75C 50
    %if ($ - %%insn_0040c75c) > 1
        %error "LONG_0040C75C"
    %endif
    times 1 - ($ - %%insn_0040c75c) db 0
    %%insn_0040c75d:
    call dword near [0x424590] ; 0040C75D FF1590454200
    %if ($ - %%insn_0040c75d) > 6
        %error "LONG_0040C75D"
    %endif
    times 6 - ($ - %%insn_0040c75d) db 0
    %%insn_0040c763:
    mov dword [0x41f31c],0x0 ; 0040C763 C7051CF3410000000000
    %if ($ - %%insn_0040c763) > 10
        %error "LONG_0040C763"
    %endif
    times 10 - ($ - %%insn_0040c763) db 0
    %%insn_0040c76d:
    call 0x409d55 ; 0040C76D E8E3D5FFFF
    %if ($ - %%insn_0040c76d) > 5
        %error "LONG_0040C76D"
    %endif
    times 5 - ($ - %%insn_0040c76d) db 0
    %%insn_0040c772:
    pop ebp ; 0040C772 5D
    %if ($ - %%insn_0040c772) > 1
        %error "LONG_0040C772"
    %endif
    times 1 - ($ - %%insn_0040c772) db 0
    %%insn_0040c773:
    ret ; 0040C773 C3
    %if ($ - %%insn_0040c773) > 1
        %error "LONG_0040C773"
    %endif
    times 1 - ($ - %%insn_0040c773) db 0
    %if ($ - %%fragment_start) != 207
        %error "function fragment size drift: 0040C6A5"
    %endif
%endmacro
