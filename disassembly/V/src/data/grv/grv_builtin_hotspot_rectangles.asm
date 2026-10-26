; Built-in GRV hotspot rectangles, load-image offsets 16987..169F4.
; DS=0893h. Each mutable record: five words (left, top, right, bottom, target),
; then one cursor byte. The shared hit test uses inclusive bounds after
; adding 16 to both stored mouse coordinates. See docs/DOS_HOTSPOT_IO_RECOVERY.md.
%macro emit_grv_builtin_hotspot_rectangles 0
    %%range_start:
dos_hotspot_persistent_right: ; DS:E057, load 16987
    dw 576, 80, 639, 399, 0
    db 1 ; cursor
dos_hotspot_persistent_left: ; DS:E062, load 16992
    dw 0, 80, 63, 399, 0
    db 2 ; cursor
dos_hotspot_right: ; DS:E06D, load 1699D
    dw 576, 80, 639, 399, 0
    db 1 ; cursor
dos_hotspot_left: ; DS:E078, load 169A8
    dw 0, 80, 63, 399, 0
    db 2 ; cursor
dos_hotspot_center_cursor_zero: ; DS:E083, load 169B3
    dw 156, 80, 483, 399, 0
    db 0 ; cursor
dos_hotspot_full_width: ; DS:E08E, load 169BE
    dw 0, 80, 639, 399, 0
    db 0 ; cursor
dos_hotspot_center_cursor_three: ; DS:E099, load 169C9
    dw 156, 80, 483, 399, 0
    db 3 ; cursor
dos_hotspot_persistent_top_bar: ; DS:E0A4, load 169D4
    dw 0, 0, 639, 79, 0
    db 0 ; cursor
dos_hotspot_persistent_bottom_bar: ; DS:E0AF, load 169DF
    dw 0, 400, 639, 479, 0
    db 0 ; cursor
dos_hotspot_bottom_bar: ; DS:E0BA, load 169EA
    dw 0, 400, 639, 479, 0
    db 4 ; cursor
    %if ($ - %%range_start) != 110
        %error "DOS built-in hotspot table size drift"
    %endif
%endmacro
