; Verified Miles runtime state, CS=load segment+0702h.
; Load offsets 07026..071C9, CS:0006..01A9. All initial bytes are zero.
; Field sizes follow indexed accesses and initialization loop counts.
; See docs/DOS_MILES_TIMER_RECOVERY.md for contracts and evidence.
%macro emit_miles_timer_and_driver_state 0
    %%range_start:
dos_miles_timer_registration_count: ; CS:0006, load 07026
    times 2 db 0
dos_miles_timer_interrupt_depth: ; CS:0008, load 07028
    times 2 db 0
dos_miles_timer_callback_far_pointers: ; CS:000A, load 0702A
    times 68 db 0
dos_miles_timer_callback_data_segments: ; CS:004E, load 0706E
    times 34 db 0
dos_miles_timer_states: ; CS:0070, load 07090
    times 34 db 0
dos_miles_timer_elapsed_periods: ; CS:0092, load 070B2
    times 68 db 0
dos_miles_timer_requested_periods: ; CS:00D6, load 070F6
    times 68 db 0
dos_miles_timer_minimum_period: ; CS:011A, load 0713A
    times 4 db 0
dos_miles_previous_timer_interrupt_vector: ; CS:011E, load 0713E
    times 4 db 0
dos_miles_timer_scan_index: ; CS:0122, load 07142
    times 2 db 0
dos_miles_timer_minimum_scan_scratch: ; CS:0124, load 07144
    times 4 db 0
dos_miles_programmed_pit_count: ; CS:0128, load 07148
    times 2 db 0
dos_miles_driver_command_table_far_pointers: ; CS:012A, load 0714A
    times 64 db 0
dos_miles_driver_timer_handles: ; CS:016A, load 0718A
    times 32 db 0
dos_miles_driver_initialized_flags: ; CS:018A, load 071AA
    times 32 db 0
    %if ($ - %%range_start) != 420
        %error "MILES_RUNTIME_TABLE_SIZE"
    %endif
%endmacro

; CS:01B6 guard, CS:01BA..03B9 private IRQ stack, CS:03BA/03BC saved SS/SP.
; Handler 07430 switches SS to its code segment and SP to 03BAh.
%macro emit_miles_timer_interrupt_stack 0
    %%range_start:
dos_miles_timer_stack_guard: db "Test"
dos_miles_timer_interrupt_stack: times 512 db 0
dos_miles_timer_interrupted_ss: dw 0
dos_miles_timer_interrupted_sp: dw 0
    %if ($ - %%range_start) != 520
        %error "MILES_TIMER_IRQ_STACK_SIZE"
    %endif
%endmacro
