; PE virtual entry 00418800
; Ghidra working symbol: FUN_00418800
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00418800_part_00 0
    %%fragment_start:
func_00418800:
    %%insn_00418800:
    push ebx ; 00418800 53
    %if ($ - %%insn_00418800) > 1
        %error "LONG_00418800"
    %endif
    times 1 - ($ - %%insn_00418800) db 0
    %%insn_00418801:
    mov ebx,[0x420e74] ; 00418801 8B1D740E4200
    %if ($ - %%insn_00418801) > 6
        %error "LONG_00418801"
    %endif
    times 6 - ($ - %%insn_00418801) db 0
    %%insn_00418807:
    push ebp ; 00418807 55
    %if ($ - %%insn_00418807) > 1
        %error "LONG_00418807"
    %endif
    times 1 - ($ - %%insn_00418807) db 0
    %%insn_00418808:
    push esi ; 00418808 56
    %if ($ - %%insn_00418808) > 1
        %error "LONG_00418808"
    %endif
    times 1 - ($ - %%insn_00418808) db 0
    %%insn_00418809:
    test ebx,ebx ; 00418809 85DB
    %if ($ - %%insn_00418809) > 2
        %error "LONG_00418809"
    %endif
    times 2 - ($ - %%insn_00418809) db 0
    %%insn_0041880b:
    push edi ; 0041880B 57
    %if ($ - %%insn_0041880b) > 1
        %error "LONG_0041880B"
    %endif
    times 1 - ($ - %%insn_0041880b) db 0
    %%insn_0041880c:
    jnz short 0x41882a ; 0041880C 751C
    %if ($ - %%insn_0041880c) > 2
        %error "LONG_0041880C"
    %endif
    times 2 - ($ - %%insn_0041880c) db 0
    %%insn_0041880e:
    mov eax,[0x420e7c] ; 0041880E A17C0E4200
    %if ($ - %%insn_0041880e) > 5
        %error "LONG_0041880E"
    %endif
    times 5 - ($ - %%insn_0041880e) db 0
    %%insn_00418813:
    test eax,eax ; 00418813 85C0
    %if ($ - %%insn_00418813) > 2
        %error "LONG_00418813"
    %endif
    times 2 - ($ - %%insn_00418813) db 0
    %%insn_00418815:
    jz short 0x418826 ; 00418815 740F
    %if ($ - %%insn_00418815) > 2
        %error "LONG_00418815"
    %endif
    times 2 - ($ - %%insn_00418815) db 0
    %%insn_00418817:
    call 0x4188d0 ; 00418817 E8B4000000
    %if ($ - %%insn_00418817) > 5
        %error "LONG_00418817"
    %endif
    times 5 - ($ - %%insn_00418817) db 0
    %%insn_0041881c:
    test eax,eax ; 0041881C 85C0
    %if ($ - %%insn_0041881c) > 2
        %error "LONG_0041881C"
    %endif
    times 2 - ($ - %%insn_0041881c) db 0
    %%insn_0041881e:
    jnz short 0x418887 ; 0041881E 7567
    %if ($ - %%insn_0041881e) > 2
        %error "LONG_0041881E"
    %endif
    times 2 - ($ - %%insn_0041881e) db 0
    %%insn_00418820:
    mov ebx,[0x420e74] ; 00418820 8B1D740E4200
    %if ($ - %%insn_00418820) > 6
        %error "LONG_00418820"
    %endif
    times 6 - ($ - %%insn_00418820) db 0
    %%insn_00418826:
    test ebx,ebx ; 00418826 85DB
    %if ($ - %%insn_00418826) > 2
        %error "LONG_00418826"
    %endif
    times 2 - ($ - %%insn_00418826) db 0
    %%insn_00418828:
    jz short 0x418887 ; 00418828 745D
    %if ($ - %%insn_00418828) > 2
        %error "LONG_00418828"
    %endif
    times 2 - ($ - %%insn_00418828) db 0
    %%insn_0041882a:
    mov ebp,[esp+0x14] ; 0041882A 8B6C2414
    %if ($ - %%insn_0041882a) > 4
        %error "LONG_0041882A"
    %endif
    times 4 - ($ - %%insn_0041882a) db 0
    %%insn_0041882e:
    test ebp,ebp ; 0041882E 85ED
    %if ($ - %%insn_0041882e) > 2
        %error "LONG_0041882E"
    %endif
    times 2 - ($ - %%insn_0041882e) db 0
    %%insn_00418830:
    jz short 0x418887 ; 00418830 7455
    %if ($ - %%insn_00418830) > 2
        %error "LONG_00418830"
    %endif
    times 2 - ($ - %%insn_00418830) db 0
    db 0x8B, 0xFD ; 00418832 8BFD | mov edi,ebp | encoding preserved
    %%insn_00418834:
    or ecx,0xffffffffffffffff ; 00418834 83C9FF
    %if ($ - %%insn_00418834) > 3
        %error "LONG_00418834"
    %endif
    times 3 - ($ - %%insn_00418834) db 0
    db 0x33, 0xC0 ; 00418837 33C0 | xor eax,eax | encoding preserved
    %%insn_00418839:
    mov edx,[ebx] ; 00418839 8B13
    %if ($ - %%insn_00418839) > 2
        %error "LONG_00418839"
    %endif
    times 2 - ($ - %%insn_00418839) db 0
    %%insn_0041883b:
    repne scasb ; 0041883B F2AE
    %if ($ - %%insn_0041883b) > 2
        %error "LONG_0041883B"
    %endif
    times 2 - ($ - %%insn_0041883b) db 0
    %%insn_0041883d:
    not ecx ; 0041883D F7D1
    %if ($ - %%insn_0041883d) > 2
        %error "LONG_0041883D"
    %endif
    times 2 - ($ - %%insn_0041883d) db 0
    %%insn_0041883f:
    dec ecx ; 0041883F 49
    %if ($ - %%insn_0041883f) > 1
        %error "LONG_0041883F"
    %endif
    times 1 - ($ - %%insn_0041883f) db 0
    %%insn_00418840:
    test edx,edx ; 00418840 85D2
    %if ($ - %%insn_00418840) > 2
        %error "LONG_00418840"
    %endif
    times 2 - ($ - %%insn_00418840) db 0
    db 0x8B, 0xF1 ; 00418842 8BF1 | mov esi,ecx | encoding preserved
    %%insn_00418844:
    jz short 0x418887 ; 00418844 7441
    %if ($ - %%insn_00418844) > 2
        %error "LONG_00418844"
    %endif
    times 2 - ($ - %%insn_00418844) db 0
    db 0x8B, 0xFA ; 00418846 8BFA | mov edi,edx | encoding preserved
    %%insn_00418848:
    or ecx,0xffffffffffffffff ; 00418848 83C9FF
    %if ($ - %%insn_00418848) > 3
        %error "LONG_00418848"
    %endif
    times 3 - ($ - %%insn_00418848) db 0
    db 0x33, 0xC0 ; 0041884B 33C0 | xor eax,eax | encoding preserved
    %%insn_0041884d:
    repne scasb ; 0041884D F2AE
    %if ($ - %%insn_0041884d) > 2
        %error "LONG_0041884D"
    %endif
    times 2 - ($ - %%insn_0041884d) db 0
    %%insn_0041884f:
    not ecx ; 0041884F F7D1
    %if ($ - %%insn_0041884f) > 2
        %error "LONG_0041884F"
    %endif
    times 2 - ($ - %%insn_0041884f) db 0
    %%insn_00418851:
    dec ecx ; 00418851 49
    %if ($ - %%insn_00418851) > 1
        %error "LONG_00418851"
    %endif
    times 1 - ($ - %%insn_00418851) db 0
    db 0x3B, 0xCE ; 00418852 3BCE | cmp ecx,esi | encoding preserved
    %%insn_00418854:
    jna short 0x41886b ; 00418854 7615
    %if ($ - %%insn_00418854) > 2
        %error "LONG_00418854"
    %endif
    times 2 - ($ - %%insn_00418854) db 0
    %%insn_00418856:
    cmp byte [esi+edx],0x3d ; 00418856 803C163D
    %if ($ - %%insn_00418856) > 4
        %error "LONG_00418856"
    %endif
    times 4 - ($ - %%insn_00418856) db 0
    %%insn_0041885a:
    jnz short 0x41886b ; 0041885A 750F
    %if ($ - %%insn_0041885a) > 2
        %error "LONG_0041885A"
    %endif
    times 2 - ($ - %%insn_0041885a) db 0
    %%insn_0041885c:
    push esi ; 0041885C 56
    %if ($ - %%insn_0041885c) > 1
        %error "LONG_0041885C"
    %endif
    times 1 - ($ - %%insn_0041885c) db 0
    %%insn_0041885d:
    push ebp ; 0041885D 55
    %if ($ - %%insn_0041885d) > 1
        %error "LONG_0041885D"
    %endif
    times 1 - ($ - %%insn_0041885d) db 0
    %%insn_0041885e:
    push edx ; 0041885E 52
    %if ($ - %%insn_0041885e) > 1
        %error "LONG_0041885E"
    %endif
    times 1 - ($ - %%insn_0041885e) db 0
    %%insn_0041885f:
    call 0x418890 ; 0041885F E82C000000
    %if ($ - %%insn_0041885f) > 5
        %error "LONG_0041885F"
    %endif
    times 5 - ($ - %%insn_0041885f) db 0
    %%insn_00418864:
    add esp,0xc ; 00418864 83C40C
    %if ($ - %%insn_00418864) > 3
        %error "LONG_00418864"
    %endif
    times 3 - ($ - %%insn_00418864) db 0
    %%insn_00418867:
    test eax,eax ; 00418867 85C0
    %if ($ - %%insn_00418867) > 2
        %error "LONG_00418867"
    %endif
    times 2 - ($ - %%insn_00418867) db 0
    %%insn_00418869:
    jz short 0x41887c ; 00418869 7411
    %if ($ - %%insn_00418869) > 2
        %error "LONG_00418869"
    %endif
    times 2 - ($ - %%insn_00418869) db 0
    %%insn_0041886b:
    mov edx,[ebx+0x4] ; 0041886B 8B5304
    %if ($ - %%insn_0041886b) > 3
        %error "LONG_0041886B"
    %endif
    times 3 - ($ - %%insn_0041886b) db 0
    %%insn_0041886e:
    add ebx,0x4 ; 0041886E 83C304
    %if ($ - %%insn_0041886e) > 3
        %error "LONG_0041886E"
    %endif
    times 3 - ($ - %%insn_0041886e) db 0
    %%insn_00418871:
    test edx,edx ; 00418871 85D2
    %if ($ - %%insn_00418871) > 2
        %error "LONG_00418871"
    %endif
    times 2 - ($ - %%insn_00418871) db 0
    %%insn_00418873:
    jnz short 0x418846 ; 00418873 75D1
    %if ($ - %%insn_00418873) > 2
        %error "LONG_00418873"
    %endif
    times 2 - ($ - %%insn_00418873) db 0
    db 0x33, 0xC0 ; 00418875 33C0 | xor eax,eax | encoding preserved
    %%insn_00418877:
    pop edi ; 00418877 5F
    %if ($ - %%insn_00418877) > 1
        %error "LONG_00418877"
    %endif
    times 1 - ($ - %%insn_00418877) db 0
    %%insn_00418878:
    pop esi ; 00418878 5E
    %if ($ - %%insn_00418878) > 1
        %error "LONG_00418878"
    %endif
    times 1 - ($ - %%insn_00418878) db 0
    %%insn_00418879:
    pop ebp ; 00418879 5D
    %if ($ - %%insn_00418879) > 1
        %error "LONG_00418879"
    %endif
    times 1 - ($ - %%insn_00418879) db 0
    %%insn_0041887a:
    pop ebx ; 0041887A 5B
    %if ($ - %%insn_0041887a) > 1
        %error "LONG_0041887A"
    %endif
    times 1 - ($ - %%insn_0041887a) db 0
    %%insn_0041887b:
    ret ; 0041887B C3
    %if ($ - %%insn_0041887b) > 1
        %error "LONG_0041887B"
    %endif
    times 1 - ($ - %%insn_0041887b) db 0
    %%insn_0041887c:
    mov eax,[ebx] ; 0041887C 8B03
    %if ($ - %%insn_0041887c) > 2
        %error "LONG_0041887C"
    %endif
    times 2 - ($ - %%insn_0041887c) db 0
    %%insn_0041887e:
    lea eax,[eax+esi+0x1] ; 0041887E 8D443001
    %if ($ - %%insn_0041887e) > 4
        %error "LONG_0041887E"
    %endif
    times 4 - ($ - %%insn_0041887e) db 0
    %%insn_00418882:
    pop edi ; 00418882 5F
    %if ($ - %%insn_00418882) > 1
        %error "LONG_00418882"
    %endif
    times 1 - ($ - %%insn_00418882) db 0
    %%insn_00418883:
    pop esi ; 00418883 5E
    %if ($ - %%insn_00418883) > 1
        %error "LONG_00418883"
    %endif
    times 1 - ($ - %%insn_00418883) db 0
    %%insn_00418884:
    pop ebp ; 00418884 5D
    %if ($ - %%insn_00418884) > 1
        %error "LONG_00418884"
    %endif
    times 1 - ($ - %%insn_00418884) db 0
    %%insn_00418885:
    pop ebx ; 00418885 5B
    %if ($ - %%insn_00418885) > 1
        %error "LONG_00418885"
    %endif
    times 1 - ($ - %%insn_00418885) db 0
    %%insn_00418886:
    ret ; 00418886 C3
    %if ($ - %%insn_00418886) > 1
        %error "LONG_00418886"
    %endif
    times 1 - ($ - %%insn_00418886) db 0
    %%insn_00418887:
    pop edi ; 00418887 5F
    %if ($ - %%insn_00418887) > 1
        %error "LONG_00418887"
    %endif
    times 1 - ($ - %%insn_00418887) db 0
    %%insn_00418888:
    pop esi ; 00418888 5E
    %if ($ - %%insn_00418888) > 1
        %error "LONG_00418888"
    %endif
    times 1 - ($ - %%insn_00418888) db 0
    %%insn_00418889:
    pop ebp ; 00418889 5D
    %if ($ - %%insn_00418889) > 1
        %error "LONG_00418889"
    %endif
    times 1 - ($ - %%insn_00418889) db 0
    db 0x33, 0xC0 ; 0041888A 33C0 | xor eax,eax | encoding preserved
    %%insn_0041888c:
    pop ebx ; 0041888C 5B
    %if ($ - %%insn_0041888c) > 1
        %error "LONG_0041888C"
    %endif
    times 1 - ($ - %%insn_0041888c) db 0
    %%insn_0041888d:
    ret ; 0041888D C3
    %if ($ - %%insn_0041888d) > 1
        %error "LONG_0041888D"
    %endif
    times 1 - ($ - %%insn_0041888d) db 0
    %if ($ - %%fragment_start) != 142
        %error "function fragment size drift: 00418800"
    %endif
%endmacro
