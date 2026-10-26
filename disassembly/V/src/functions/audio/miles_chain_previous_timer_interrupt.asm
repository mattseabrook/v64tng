; Linear entry 0753D, recovered from former emit_gap_094_0753d.
; Additional verified code entry outside the 261-entry analyzer inventory.
; Contract: Build an interrupt frame for the saved INT 08h handler, call it far, and return far to the timer callback caller.
; Original byte identity is enforced by this project’s build.sh.

%macro emit_miles_chain_previous_timer_interrupt_part_00 0
    %%fragment_start:
miles_chain_previous_timer_interrupt:
    %%insn_0753d:
    pushf ; 0753D 9C
    %if ($ - %%insn_0753d) != 1
        %error "MILES_EXTRA_INSN_0753D"
    %endif
    %%insn_0753e:
    call word far [cs:0x11e] ; 0753E 2EFF1E1E01
    %if ($ - %%insn_0753e) != 5
        %error "MILES_EXTRA_INSN_0753E"
    %endif
    %%insn_07543:
    retf ; 07543 CB
    %if ($ - %%insn_07543) != 1
        %error "MILES_EXTRA_INSN_07543"
    %endif
    %if ($ - %%fragment_start) != 7
        %error "MILES_EXTRA_SIZE_0753D"
    %endif
%endmacro
