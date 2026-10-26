; Zero-initialized microscope state, load 1724C..17C2D; DS:E91C..F2FD.
; Field boundaries follow the original accesses, not an inferred C structure.
%macro emit_cell_search_workspace 0
    %%range_start:
cell_search_dispatch_count: dw 0       ; E91C: 06DF1 increments, 06E29 divides by 3
unresolved_cell_score_byte_e91e: db 0  ; E91E: index-zero slot, no named use asserted
cell_candidate_piece_counts:          ; E91F..E922: original codes 1 through 4
    times 4 db 0                      ; copied/adjusted by 062EA..063B6
unresolved_cell_recursive_workspace:   ; E923..F232: snapshot/ranked workspace
    ; Search uses E923 + E903 and copies 57 bytes per snapshot. Exact internal
    ; partition/capacity of this entire intervening range is not yet established.
    times 0x910 db 0
cell_best_move_sources:               ; F233..F295, parallel source/destination lists
    times 99 db 0
cell_best_move_destinations:          ; F296..F2F8
    times 99 db 0
cell_best_move_count: dw 0            ; F2F9: reset/append/choose helpers 0641A..0655F
cell_best_move_random_index: dw 0     ; F2FB: remainder stored at 064DB
unresolved_cell_workspace_byte_f2fd: db 0
    %if ($ - %%range_start) != 0x9E2
        %error "cell search workspace size drift"
    %endif
%endmacro
