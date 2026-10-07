; Exact original file reconstruction. NASM emits bytes, not 68k mnemonics.
BITS 16
ORG 0
%if ($-$$) != 0x0
%error "Incorrect placement: src/data/cdi_loader_module_header_and_name.asm"
%endif
%include "src/data/cdi_loader_module_header_and_name.asm"
%if ($-$$) != 0x54
%error "Incorrect placement: src/functions/platform/cdi_loader_select_player_from_csd.asm"
%endif
%include "src/functions/platform/cdi_loader_select_player_from_csd.asm"
%if ($-$$) != 0x1D2
%error "Incorrect placement: src/functions/platform/cdi_loader_write_console_crlf.asm"
%endif
%include "src/functions/platform/cdi_loader_write_console_crlf.asm"
%if ($-$$) != 0x1EC
%error "Incorrect placement: src/functions/platform/cdi_loader_write_console_c_string.asm"
%endif
%include "src/functions/platform/cdi_loader_write_console_c_string.asm"
%if ($-$$) != 0x21A
%error "Incorrect placement: src/functions/platform/cdi_loader_report_error_and_exit.asm"
%endif
%include "src/functions/platform/cdi_loader_report_error_and_exit.asm"
%if ($-$$) != 0x2B2
%error "Incorrect placement: src/functions/platform/cdi_loader_find_csd_record.asm"
%endif
%include "src/functions/platform/cdi_loader_find_csd_record.asm"
%if ($-$$) != 0x34E
%error "Incorrect placement: src/data/cdi_loader_initialized_data.asm"
%endif
%include "src/data/cdi_loader_initialized_data.asm"
%if ($-$$) != 0x358
%error "Incorrect placement: src/data/cdi_loader_initialized_references.asm"
%endif
%include "src/data/cdi_loader_initialized_references.asm"
%if ($-$$) != 0x361
%error "Incorrect placement: src/data/cdi_loader_crc.asm"
%endif
%include "src/data/cdi_loader_crc.asm"
%if ($-$$) != 0x364
%error "Incorrect placement: src/data/cdi_loader_file_padding.asm"
%endif
%include "src/data/cdi_loader_file_padding.asm"
%if ($-$$) != 2048
%error "Incorrect file size"
%endif
