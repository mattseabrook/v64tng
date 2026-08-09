; File-backed initial values for the core GRV runtime globals.
; PE virtual range 0041F280..0041F33F, raw range 01DC80..01DD3F.
; Roles below are statically verified by the GRV loader/interpreter and are
; also the direct-global sources used by research/debug/profiles.json.
%macro emit_grv_runtime_globals 0
    %%range_start:
v32_grv_runtime_globals_start:
    dd 0 ; 0041F280: related GRV allocation/state (role not yet pinned)
v32_grv_script_base:
    dd 0 ; 0041F284: allocated buffer containing the active GRV script
    times 8 dd 0 ; 0041F288..0041F2A7: GRV state (individual roles not yet pinned)
v32_grv_call_depth:
    dd 0 ; 0041F2A8: GRV return-stack depth
v32_grv_video_flags:
    dw 0 ; 0041F2AC: staged VIDEOREF playback flags
    dw 0 ; 0041F2AE: adjacent state, role not yet pinned
    times 2 dd 0 ; 0041F2B0..0041F2B7
v32_grv_variable_base:
    dd 0 ; 0041F2B8: allocated 0x400-byte GRV variable bank
    times 17 dd 0 ; 0041F2BC..0041F2FF
v32_grv_script_pc:
    dd 0 ; 0041F300: byte offset within the active GRV script
v32_grv_call_stack_buffer:
    dd 0 ; 0041F304: allocated 0x40-byte return-stack buffer
    times 14 dd 0 ; 0041F308..0041F33F
    %if ($ - %%range_start) != 0xC0
        %error "Win32 GRV runtime-global block size drift"
    %endif
%endmacro
