; DOS stub, PE/COFF headers, optional header, data directories, and section
; table. Native reconstruction is deferred until section relocation edits need
; it; the exact 1,024-byte header is retained as an explicit opaque unit.
incbin REFERENCE_FILE, 0x00000, 0x00400
