; Mutable INT 15h vectors at load offsets 02BE8..02BEF.
; Written at 02B39..02B48; CS:2BE8 chains unrelated interrupts,
; CS:2BEC is restored to the IVT by shutdown at 05DEF..05DFD.
%macro emit_bios_pcm_interrupt_vectors 0
dos_bios_pcm_chain_vector: dw 0, 0
dos_bios_pcm_saved_vector: dw 0, 0
%endmacro
