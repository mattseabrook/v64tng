; Load 169F5..169F7; DS:E0C5..E0C7.
; configure_midi_driver clears E0C5, then sets it for AdlibGold at 0529C;
; TandySensation sets E0C6 at 052A9. PCM paths branch on E0C6 to Miles.
%macro emit_configured_audio_backend_flags 0
configured_adlib_gold_flag: db 0 ; E0C5
use_miles_pcm_backend: db 0      ; E0C6
unresolved_audio_byte_e0c7: db 2  ; E0C7: preserved, no individual meaning asserted
%endmacro
