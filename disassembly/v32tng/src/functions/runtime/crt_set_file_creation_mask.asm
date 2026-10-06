; Semantic role: crt_set_file_creation_mask
; Contract: Replace the file creation permission mask with the supplied value masked by 180h and return its previous value.
; Evidence: static instructions and connected callers; original symbol unknown.
; Analyzer boundaries retained; no runtime validation claimed.
; PE virtual entry 0040D930
; Ghidra working symbol: FUN_0040d930
; Verified static semantic role; analyzer boundary remains provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_crt_set_file_creation_mask_part_00 0
    %%fragment_start:
crt_set_file_creation_mask:
    %%insn_0040d930:
    mov ecx,[esp+0x4] ; 0040D930 8B4C2404
    %if ($ - %%insn_0040d930) > 4
        %error "LONG_0040D930"
    %endif
    times 4 - ($ - %%insn_0040d930) db 0
    %%insn_0040d934:
    mov eax,[0x420e54] ; 0040D934 A1540E4200
    %if ($ - %%insn_0040d934) > 5
        %error "LONG_0040D934"
    %endif
    times 5 - ($ - %%insn_0040d934) db 0
    %%insn_0040d939:
    and ecx,0x180 ; 0040D939 81E180010000
    %if ($ - %%insn_0040d939) > 6
        %error "LONG_0040D939"
    %endif
    times 6 - ($ - %%insn_0040d939) db 0
    %%insn_0040d93f:
    mov [0x420e54],ecx ; 0040D93F 890D540E4200
    %if ($ - %%insn_0040d93f) > 6
        %error "LONG_0040D93F"
    %endif
    times 6 - ($ - %%insn_0040d93f) db 0
    %%insn_0040d945:
    ret ; 0040D945 C3
    %if ($ - %%insn_0040d945) > 1
        %error "LONG_0040D945"
    %endif
    times 1 - ($ - %%insn_0040d945) db 0
    %if ($ - %%fragment_start) != 22
        %error "function fragment size drift: 0040D930"
    %endif
%endmacro
