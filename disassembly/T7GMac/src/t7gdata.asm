; Companion T7GData MacBinary II, exact bytes.
BITS 16
ORG 0
%if ($-$$) != 0x0
%error "Incorrect placement: src/data/t7gdata_macbinary_header.asm"
%endif
%include "src/data/t7gdata_macbinary_header.asm"
%if ($-$$) != 0x80
%error "Incorrect placement: src/data/t7gdata_pid1_vdx.asm"
%endif
%include "src/data/t7gdata_pid1_vdx.asm"
%if ($-$$) != 0x36E1D
%error "Incorrect placement: src/data/t7gdata_pid1_separator.asm"
%endif
%include "src/data/t7gdata_pid1_separator.asm"
%if ($-$$) != 0x36E1E
%error "Incorrect placement: src/data/t7gdata_pid2_vdx.asm"
%endif
%include "src/data/t7gdata_pid2_vdx.asm"
%if ($-$$) != 0x6FE8F
%error "Incorrect placement: src/data/t7gdata_pid2_separator.asm"
%endif
%include "src/data/t7gdata_pid2_separator.asm"
%if ($-$$) != 0x6FE90
%error "Incorrect placement: src/data/t7gdata_title_vdx.asm"
%endif
%include "src/data/t7gdata_title_vdx.asm"
%if ($-$$) != 0x20B75D
%error "Incorrect placement: src/data/t7gdata_title_separator.asm"
%endif
%include "src/data/t7gdata_title_separator.asm"
%if ($-$$) != 0x20B75E
%error "Incorrect placement: src/data/t7gdata_tripro_vdx.asm"
%endif
%include "src/data/t7gdata_tripro_vdx.asm"
%if ($-$$) != 0x2B040E
%error "Incorrect placement: src/data/t7gdata_tripro_separator.asm"
%endif
%include "src/data/t7gdata_tripro_separator.asm"
%if ($-$$) != 0x2B040F
%error "Incorrect placement: src/data/t7gdata_vlogo_vdx.asm"
%endif
%include "src/data/t7gdata_vlogo_vdx.asm"
%if ($-$$) != 0x3203DA
%error "Incorrect placement: src/data/t7gdata_vlogo_separator.asm"
%endif
%include "src/data/t7gdata_vlogo_separator.asm"
%if ($-$$) != 0x3203DB
%error "Incorrect placement: src/data/t7gdata_credits_vdx.asm"
%endif
%include "src/data/t7gdata_credits_vdx.asm"
%if ($-$$) != 0x3DED4A
%error "Incorrect placement: src/data/t7gdata_credits_separator.asm"
%endif
%include "src/data/t7gdata_credits_separator.asm"
%if ($-$$) != 0x3DED4B
%error "Incorrect placement: src/data/t7gdata_wo_s_vdx.asm"
%endif
%include "src/data/t7gdata_wo_s_vdx.asm"
%if ($-$$) != 0x3E3B08
%error "Incorrect placement: src/data/t7gdata_wo_s_separator.asm"
%endif
%include "src/data/t7gdata_wo_s_separator.asm"
%if ($-$$) != 0x3E3B09
%error "Incorrect placement: src/data/t7gdata_ws_o_vdx.asm"
%endif
%include "src/data/t7gdata_ws_o_vdx.asm"
%if ($-$$) != 0x3E8984
%error "Incorrect placement: src/data/t7gdata_ws_o_separator.asm"
%endif
%include "src/data/t7gdata_ws_o_separator.asm"
%if ($-$$) != 0x3E8985
%error "Incorrect placement: src/data/t7gdata_todd_vdx.asm"
%endif
%include "src/data/t7gdata_todd_vdx.asm"
%if ($-$$) != 0x3F549B
%error "Incorrect placement: src/data/t7gdata_todd_separator.asm"
%endif
%include "src/data/t7gdata_todd_separator.asm"
%if ($-$$) != 0x3F549C
%error "Incorrect placement: src/data/t7gdata_hayes_vdx.asm"
%endif
%include "src/data/t7gdata_hayes_vdx.asm"
%if ($-$$) != 0x401FB2
%error "Incorrect placement: src/data/t7gdata_hayes_separator.asm"
%endif
%include "src/data/t7gdata_hayes_separator.asm"
%if ($-$$) != 0x401FB3
%error "Incorrect placement: src/data/t7gdata_fork_alignment.asm"
%endif
%include "src/data/t7gdata_fork_alignment.asm"
%if ($-$$) != 0x402000
%error "Incorrect placement: src/data/t7gdata_icon_resource_fork.asm"
%endif
%include "src/data/t7gdata_icon_resource_fork.asm"
%if ($-$$) != 0x4026A6
%error "Incorrect placement: src/data/t7gdata_final_padding.asm"
%endif
%include "src/data/t7gdata_final_padding.asm"
%if ($-$$) != 4204288
%error "Incorrect companion container size"
%endif
