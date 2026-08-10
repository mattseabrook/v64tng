; PE virtual entry 00401BB3
; Ghidra working symbol: FUN_00401bb3
; Verified mutable-path probe: rewrite path[0] and try mmioOpenA for C: through Z:.
; Returns the first MMIO handle found, leaving the successful drive letter in path[0], or zero.
; Generated losslessly; preserve byte identity after edits.

%macro emit_open_first_drive_letter_path_part_00 0
    %%fragment_start:
open_first_drive_letter_path:
    %%insn_00401bb3:
    push ebp ; 00401BB3 55
    %if ($ - %%insn_00401bb3) > 1
        %error "LONG_00401BB3"
    %endif
    times 1 - ($ - %%insn_00401bb3) db 0
    db 0x8B, 0xEC ; 00401BB4 8BEC | mov ebp,esp | encoding preserved
    %%insn_00401bb6:
    sub esp,0x8 ; 00401BB6 83EC08
    %if ($ - %%insn_00401bb6) > 3
        %error "LONG_00401BB6"
    %endif
    times 3 - ($ - %%insn_00401bb6) db 0
    %%insn_00401bb9:
    mov byte [ebp-0x8],0x63 ; 00401BB9 C645F863
    %if ($ - %%insn_00401bb9) > 4
        %error "LONG_00401BB9"
    %endif
    times 4 - ($ - %%insn_00401bb9) db 0
    %%insn_00401bbd:
    jmp short 0x401bc7 ; 00401BBD EB08
    %if ($ - %%insn_00401bbd) > 2
        %error "LONG_00401BBD"
    %endif
    times 2 - ($ - %%insn_00401bbd) db 0
    %%insn_00401bbf:
    mov al,[ebp-0x8] ; 00401BBF 8A45F8
    %if ($ - %%insn_00401bbf) > 3
        %error "LONG_00401BBF"
    %endif
    times 3 - ($ - %%insn_00401bbf) db 0
    %%insn_00401bc2:
    add al,0x1 ; 00401BC2 0401
    %if ($ - %%insn_00401bc2) > 2
        %error "LONG_00401BC2"
    %endif
    times 2 - ($ - %%insn_00401bc2) db 0
    %%insn_00401bc4:
    mov [ebp-0x8],al ; 00401BC4 8845F8
    %if ($ - %%insn_00401bc4) > 3
        %error "LONG_00401BC4"
    %endif
    times 3 - ($ - %%insn_00401bc4) db 0
    %%insn_00401bc7:
    movsx ecx,byte [ebp-0x8] ; 00401BC7 0FBE4DF8
    %if ($ - %%insn_00401bc7) > 4
        %error "LONG_00401BC7"
    %endif
    times 4 - ($ - %%insn_00401bc7) db 0
    %%insn_00401bcb:
    cmp ecx,0x7a ; 00401BCB 83F97A
    %if ($ - %%insn_00401bcb) > 3
        %error "LONG_00401BCB"
    %endif
    times 3 - ($ - %%insn_00401bcb) db 0
    %%insn_00401bce:
    jg short 0x401bf6 ; 00401BCE 7F26
    %if ($ - %%insn_00401bce) > 2
        %error "LONG_00401BCE"
    %endif
    times 2 - ($ - %%insn_00401bce) db 0
    %%insn_00401bd0:
    mov edx,[ebp+0x8] ; 00401BD0 8B5508
    %if ($ - %%insn_00401bd0) > 3
        %error "LONG_00401BD0"
    %endif
    times 3 - ($ - %%insn_00401bd0) db 0
    %%insn_00401bd3:
    mov al,[ebp-0x8] ; 00401BD3 8A45F8
    %if ($ - %%insn_00401bd3) > 3
        %error "LONG_00401BD3"
    %endif
    times 3 - ($ - %%insn_00401bd3) db 0
    %%insn_00401bd6:
    mov [edx],al ; 00401BD6 8802
    %if ($ - %%insn_00401bd6) > 2
        %error "LONG_00401BD6"
    %endif
    times 2 - ($ - %%insn_00401bd6) db 0
    %%insn_00401bd8:
    push dword 0x10000 ; 00401BD8 6800000100
    %if ($ - %%insn_00401bd8) > 5
        %error "LONG_00401BD8"
    %endif
    times 5 - ($ - %%insn_00401bd8) db 0
    %%insn_00401bdd:
    push dword 0x0 ; 00401BDD 6A00
    %if ($ - %%insn_00401bdd) > 2
        %error "LONG_00401BDD"
    %endif
    times 2 - ($ - %%insn_00401bdd) db 0
    %%insn_00401bdf:
    mov ecx,[ebp+0x8] ; 00401BDF 8B4D08
    %if ($ - %%insn_00401bdf) > 3
        %error "LONG_00401BDF"
    %endif
    times 3 - ($ - %%insn_00401bdf) db 0
    %%insn_00401be2:
    push ecx ; 00401BE2 51
    %if ($ - %%insn_00401be2) > 1
        %error "LONG_00401BE2"
    %endif
    times 1 - ($ - %%insn_00401be2) db 0
    %%insn_00401be3:
    call dword near [0x424598] ; 00401BE3 FF1598454200 | WINMM mmioOpenA(path, 0, MMIO_READ)
    %if ($ - %%insn_00401be3) > 6
        %error "LONG_00401BE3"
    %endif
    times 6 - ($ - %%insn_00401be3) db 0
    %%insn_00401be9:
    mov [ebp-0x4],eax ; 00401BE9 8945FC
    %if ($ - %%insn_00401be9) > 3
        %error "LONG_00401BE9"
    %endif
    times 3 - ($ - %%insn_00401be9) db 0
    %%insn_00401bec:
    cmp dword [ebp-0x4],0x0 ; 00401BEC 837DFC00
    %if ($ - %%insn_00401bec) > 4
        %error "LONG_00401BEC"
    %endif
    times 4 - ($ - %%insn_00401bec) db 0
    %%insn_00401bf0:
    jz short 0x401bf4 ; 00401BF0 7402
    %if ($ - %%insn_00401bf0) > 2
        %error "LONG_00401BF0"
    %endif
    times 2 - ($ - %%insn_00401bf0) db 0
    %%insn_00401bf2:
    jmp short 0x401bf6 ; 00401BF2 EB02
    %if ($ - %%insn_00401bf2) > 2
        %error "LONG_00401BF2"
    %endif
    times 2 - ($ - %%insn_00401bf2) db 0
    %%insn_00401bf4:
    jmp short 0x401bbf ; 00401BF4 EBC9
    %if ($ - %%insn_00401bf4) > 2
        %error "LONG_00401BF4"
    %endif
    times 2 - ($ - %%insn_00401bf4) db 0
    %%insn_00401bf6:
    mov eax,[ebp-0x4] ; 00401BF6 8B45FC
    %if ($ - %%insn_00401bf6) > 3
        %error "LONG_00401BF6"
    %endif
    times 3 - ($ - %%insn_00401bf6) db 0
    db 0x8B, 0xE5 ; 00401BF9 8BE5 | mov esp,ebp | encoding preserved
    %%insn_00401bfb:
    pop ebp ; 00401BFB 5D
    %if ($ - %%insn_00401bfb) > 1
        %error "LONG_00401BFB"
    %endif
    times 1 - ($ - %%insn_00401bfb) db 0
    %%insn_00401bfc:
    ret ; 00401BFC C3
    %if ($ - %%insn_00401bfc) > 1
        %error "LONG_00401BFC"
    %endif
    times 1 - ($ - %%insn_00401bfc) db 0
    %if ($ - %%fragment_start) != 74
        %error "function fragment size drift: 00401BB3"
    %endif
%endmacro
