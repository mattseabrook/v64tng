; Load 1722B..1724B; runtime DS:E8FB..E91B.
; 06DEC resets abort; search helpers use E8FD..E905. At 06E33 the
; strategy lookup is [E901 + 3 * mode + (search_count % 3)], mode 2..8.
%macro emit_cell_search_state_and_strategies 0
    %%range_start:
cell_search_abort: db 0                ; E8FB
unresolved_cell_search_byte_e8fc: db 0  ; E8FC: no field role asserted
cell_search_mode: dw 0                 ; E8FD
cell_search_selected_source: dw 0      ; E8FF
cell_search_selected_destination: dw 0 ; E901
cell_search_snapshot_pointer: dw 0     ; E903
cell_search_candidate_count: dw 0      ; E905
cell_search_strategies:                ; E907..E91B: modes 2..8, three phases
    db 1, 1, 1
    db 2, 1, 1
    db 2, 2, 1
    db 2, 2, 2
    db 3, 2, 2
    db 3, 3, 2
    db 3, 3, 3
    %if ($ - %%range_start) != 0x21
        %error "cell search state and strategy size drift"
    %endif
%endmacro
