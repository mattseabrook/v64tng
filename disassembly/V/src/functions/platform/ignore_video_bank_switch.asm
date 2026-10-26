; Linear entry 02F83 (load-image offset). Recovered indirect bank handler.
; Semantic role: ignore_video_bank_switch
; Contract: Return immediately for configurations requiring no bank switching.
; Evidence: detect_video_hardware installs SS:D660 at 02F96.
; dispatch_video_bank_switch at 02D54 jumps through SS:D660.
; Static instruction/indirect-pointer evidence; hardware behavior not exercised.

%macro emit_ignore_video_bank_switch_part_00 0
    %%fragment_start:
ignore_video_bank_switch:
    %%insn_02f83:
    ret ; 02F83 C3
    %if ($ - %%insn_02f83) > 1
        %error "LONG_02F83"
    %endif
    times 1 - ($ - %%insn_02f83) db 0
    %if ($ - %%fragment_start) != 1
        %error "SIZE_02F83"
    %endif
%endmacro
