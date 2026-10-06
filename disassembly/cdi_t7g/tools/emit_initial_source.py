#!/usr/bin/env python3
from pathlib import Path
import struct,hashlib,subprocess,csv,re,collections
import argparse
parser=argparse.ArgumentParser(description='Emit the initial lossless OS-9/68K source and CSV maps.')
parser.add_argument('--decoder', required=True, help='Path to compiled tools/decode68k.c')
args=parser.parse_args()
p=Path(__file__).resolve().parents[1]
expected={'cdi_t7g':'8a022ab62b21009fcd5846306186ac0b461686bcbd5d55b808f31d8160a397bb','cdi_loader':'77c036ab71f58ed5ca13c46411badcb66b60f09a48ef0a3e875cf7d80fb0e66a','cdi_nodv':'0954566c3c89cf1473e1248ef7dc638fa546769094961532b233ab8030744dfd'}
for name,digest in expected.items():
 if hashlib.sha256((p/name).read_bytes()).hexdigest()!=digest:raise SystemExit(f'Original input hash mismatch: {name}')
for d in ['src/data','src/functions/unknown','src/functions/resource_io','resources/extracted','tools']:(p/d).mkdir(parents=True,exist_ok=True)
modules=[];files=[];functions=[];strings=[];calls=[];decoded=0

def emit(name,b,start,end,title,notes=None,label=None):
 notes=notes or {};lines=[f'; {title}',f'; File offsets {start:06X}–{end-1:06X}, inclusive.']
 if label:lines.append(label+':')
 at=start
 while at<end:
  if at in notes and at+notes[at][0]<=end:n,mn=notes[at];comment=f' ; {at:06X}: provisional 68k {mn}'
  else:
   n=min(16,end-at)
   for k in range(1,n):
    if at+k in notes:n=k;break
   comment=f' ; file {at:06X}'
  lines.append('db '+', '.join(f'0x{x:02X}' for x in b[at:at+n])+comment);at+=n
 (p/name).write_text('\n'.join(lines)+'\n')
for filename in ['cdi_t7g','cdi_loader','cdi_nodv']:
 b=(p/filename).read_bytes();files.append((filename,len(b),hashlib.sha256(b).hexdigest()));o=0;segments=[]
 while o+72<=len(b) and b[o:o+2]==b'J\xfc':
  size=struct.unpack_from('>I',b,o+4)[0];nameoff=struct.unpack_from('>I',b,o+12)[0];end=o+size;name=b[o+nameoff:end].split(b'\0')[0].decode('ascii');entry,exc,mem,stack,idata,irefs=struct.unpack_from('>6I',b,o+48);code_start=o+entry;code_end=o+(0x5c if name=='cdi_data' else idata)
  dst,count=struct.unpack_from('>II',b,o+idata)
  modules.append([filename,name,f'0x{o:06X}',size,f'0x{entry:06X}',mem,stack,f'0x{idata:06X}',dst,count,f'0x{irefs:06X}',b[end-3:end].hex(),hashlib.sha256(b[o:end]).hexdigest()])
  (p/'resources/extracted'/f'{name}.module').write_bytes(b[o:end])
  raw=subprocess.check_output([args.decoder,str(p/filename),str(code_start),str(code_end)],text=True);notes={}
  for line in raw.splitlines():
   a,n,mn=line.split('\t',2);notes[int(a)]=(int(n),mn);decoded+=1
  candidates={code_start:['header-entry']}
  for a,(n,mn) in notes.items():
   if a&1:continue
   word=int.from_bytes(b[a:a+2],'big');target=None
   if word>>8==0x61:
    disp=word&255
    if disp==0 and n>=4:disp=int.from_bytes(b[a+2:a+4],'big',signed=True)
    elif disp==255:continue
    else:disp=disp if disp<128 else disp-256
    target=a+2+disp
   elif word==0x4eba and n>=4:target=a+2+int.from_bytes(b[a+2:a+4],'big',signed=True)
   if target is not None and code_start<=target<code_end and target%2==0:
    candidates.setdefault(target,[]).append(f'call@{a-o:06X}');calls.append([filename,name,f'0x{a-o:06X}',f'0x{target-o:06X}',mn])
  positions=sorted(candidates);header=f'src/data/{name}_module_header_and_name.asm';segments.append((o,code_start,header));emit(header,b,o,code_start,'OS-9 header and name; metadata preserved verbatim')
  for k,a in enumerate(positions):
   z=positions[k+1] if k+1<len(positions) else code_end;role=name=='cdi_data' and a==code_start;path='src/functions/resource_io/return_embedded_data_pointers.asm' if role else f'src/functions/unknown/{name}_{a-o:06x}_unknown.asm'
   emit(path,b,a,z,'Return A0=module+0x111A, A1=module+0x005C; exact 10-byte pointer accessor.' if role else 'Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.',notes,f'{name}_entry_{a-o:06x}');segments.append((a,z,path));functions.append([filename,name,f'0x{a-o:06X}',f'0x{a:06X}',f'0x{z-o:06X}','verified-role' if role else 'provisional-entry','return_embedded_data_pointers' if role else 'unknown',';'.join(candidates[a]),path])
  if code_end<o+idata:
   for a,z,tag in [(code_end,o+0x111a,'unknown_encoded_payload'),(o+0x111a,o+idata,'unknown_64k_table')]:
    path=f'src/data/{name}_{tag}.asm';emit(path,b,a,z,'Pointer-addressed embedded data; internal format and semantics unknown');segments.append((a,z,path))
  for a,z,tag,title in [(o+idata,o+irefs,'initialized_data','OS-9 initialized-data record (destination offset, length, bytes)'),(o+irefs,end-3,'initialized_references','OS-9 data/code pointer reference lists; exact bytes'),(end-3,end,'crc','Original 24-bit OS-9 module CRC; preserved, not recomputed')]:
   path=f'src/data/{name}_{tag}.asm';emit(path,b,a,z,title);segments.append((a,z,path))
  for m in re.finditer(rb'[ -~]{6,}',b[o:end]):
   if any(65<=x<=90 or 97<=x<=122 for x in m[0]):strings.append([filename,name,f'0x{m.start():06X}',m[0].decode('ascii')])
  o=end
 if o<len(b):
  path=f'src/data/{filename}_file_padding.asm';emit(path,b,o,len(b),'Trailing file padding outside declared OS-9 modules');segments.append((o,len(b),path))
 root=['; Exact original file reconstruction. NASM emits bytes, not 68k mnemonics.','BITS 16','ORG 0']
 for a,z,path in segments:root.extend([f'%if ($-$$) != 0x{a:X}',f'%error "Incorrect placement: {path}"','%endif',f'%include "{path}"'])
 root.extend([f'%if ($-$$) != {len(b)}','%error "Incorrect file size"','%endif']);(p/'src'/('main.asm' if filename=='cdi_t7g' else filename+'.asm')).write_text('\n'.join(root)+'\n')
for name,cols,rows in [('files.csv',['file','bytes','sha256'],files),('modules.csv',['file','module','file_offset','bytes','entry_module_offset','static_memory_bytes','stack_bytes','idata_module_offset','initialized_destination','initialized_bytes','irefs_module_offset','crc_hex','sha256'],modules),('native_entries.csv',['file','module','entry_module_offset','entry_file_offset','slice_end_module_offset_exclusive','status','working_name','evidence','source'],functions),('direct_calls.csv',['file','module','call_module_offset','target_module_offset','provisional_instruction'],calls),('strings.csv',['file','module','module_offset','ascii_string'],strings)]:
 with (p/'resources'/name).open('w',newline='') as f:w=csv.writer(f);w.writerow(cols);w.writerows(rows)
(p/'.gitignore').write_text('/build/\n')
print('files',files,'modules',len(modules),'entries',len(functions),'instructions',decoded,'strings',len(strings));print(collections.Counter(x[1] for x in functions))
