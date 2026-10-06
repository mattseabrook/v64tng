#!/usr/bin/env python3
"""Extract named T7GM resources and document the embedded RL/media relationship.
Read-only with respect to originals; writes extraction and CSV artifacts only.
"""
from pathlib import Path
import csv, hashlib, struct, collections
ROOT = Path(__file__).resolve().parents[1]
APP_HASH = 'c272ee50cf7a6f040160c8a005459c18ef766c1a306a295af1679a29ad3f8907'
DATA_HASH = 'a7d8e73e9311fe2ea8a6ed21a27d45f6f2e3c6a1a83451719572b1afbbb99bba'
def sha(b): return hashlib.sha256(b).hexdigest()
def write_csv(name, columns, rows):
    with (ROOT/'resources'/name).open('w', newline='') as f:
        w=csv.writer(f); w.writerow(columns); w.writerows(rows)
def main():
    app=(ROOT/'T7GMac.bin').read_bytes(); data=(ROOT/'T7GData').read_bytes()
    if sha(app)!=APP_HASH or sha(data)!=DATA_HASH: raise SystemExit('Input hash mismatch')
    inventory=list(csv.DictReader((ROOT/'resources/inventory.csv').open()))
    out=ROOT/'resources/extracted'; out.mkdir(exist_ok=True)
    media=out/'T7GData'; media.mkdir(exist_ok=True)
    assets=[]; indexes=[]; entries=[]; chunks=[]; videos=[]; hdisk=None
    for r in inventory:
        if r['type']!='T7GM': continue
        a=int(r['file_length_offset'],16)+4; n=int(r['payload_size']); b=app[a:a+n]
        name=r['name']; filename=name if name and '/' not in name and '\\' not in name else f'T7GM_{r["id"]}.bin'
        (out/filename).write_bytes(b)
        dos=ROOT.parents[1]/'T7G'/name.upper()
        equality='identical' if dos.is_file() and dos.read_bytes()==b else 'different' if dos.is_file() else 'not supplied'
        assets.append([r['id'],name,f'0x{a:06X}',n,sha(b),equality,'resources/extracted/'+filename])
        if not name.lower().endswith('.rl'): continue
        rows=[]
        for i in range(n//20):
            q=i*20; asset=b[q:q+12].split(b'\0')[0].decode('ascii'); off,size=struct.unpack_from('<II',b,q+12)
            rows.append((asset,off,size)); entries.append([name,i,asset,off,size])
        indexes.append([name,r['id'],n,len(rows),equality])
        if name.lower()=='hdisk.rl': hdisk=rows
    for name,off,n in hdisk:
        payload=data[off:off+n]; (media/name).write_bytes(payload)
        if payload[:2]!=b'\x67\x92': raise ValueError(f'{name}: missing VDX magic')
        at=8; counts=collections.Counter(); chunk_count=0
        while at+8<=len(payload):
            typ,coding,size,mask,bits=struct.unpack_from('<BBIBB',payload,at)
            if at+8+size>len(payload): raise ValueError(f'{name}: out-of-bounds chunk')
            chunks.append([name,chunk_count,off+at,at,f'0x{typ:02X}',f'0x{coding:02X}',size,mask,bits])
            counts[typ]+=1; chunk_count+=1; at+=8+size
        videos.append([name,f'0x{off:06X}',n,struct.unpack_from('<H',payload,6)[0],chunk_count,counts[0x20],counts[0x25],counts[0x80],counts[0],len(payload)-at,data[off+n:off+n+1].hex(),sha(payload)])
    write_csv('embedded_assets.csv',['resource_id','name','payload_file_offset','bytes','sha256','comparison_to_supplied_DOS','extracted_path'],assets)
    write_csv('rl_inventory.csv',['name','resource_id','bytes','entries','comparison_to_supplied_DOS'],indexes)
    write_csv('rl_entries.csv',['index_resource','entry','filename','archive_offset','bytes'],entries)
    write_csv('t7gdata_inventory.csv',['filename','data_fork_offset','bytes','header_rate','chunks','still_chunks','delta_chunks','audio_chunks','zero_type_chunks','unparsed_payload_bytes','separator_hex','sha256'],videos)
    write_csv('t7gdata_chunks.csv',['filename','chunk','data_fork_offset','vdx_offset','type','coding','payload_bytes','length_mask','length_bits'],chunks)
    c0=next(r for r in inventory if r['type']=='CODE' and r['id']=='0'); a=int(c0['file_length_offset'],16)+4; b=app[a:a+int(c0['payload_size'])]
    jump=[]
    for i,q in enumerate(range(16,len(b),8)):
        off,push,seg,trap=struct.unpack_from('>HHHH',b,q)
        if push!=0x3f3c or trap!=0xa9f0: raise ValueError('Unknown jump-table encoding')
        s=next(r for r in inventory if r['type']=='CODE' and int(r['id'])==seg)
        # Nonzero segments start with a 4-byte jump-table metadata header.
        target=4+off; address=int(s['file_length_offset'],16)+4+target
        jump.append([i,f'0x{32+i*8:04X}',seg,f'0x{off:04X}',f'0x{target:04X}',f'0x{address:06X}',app[address:address+8].hex()])
    write_csv('jump_table.csv',['entry','a5_relative_offset','code_resource','segment_code_offset','payload_offset','macbinary_file_offset','first_8_bytes'],jump)
    print(f'Extracted {len(assets)} named resources, {len(indexes)} RL indexes, {len(entries)} index entries; mapped {len(videos)} VDX files/{len(chunks)} chunks and {len(jump)} native jump-table entries.')
if __name__=='__main__': main()
