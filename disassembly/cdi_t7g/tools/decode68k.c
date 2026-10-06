/* Optional first-pass decoder. Build with: cc decode68k.c -lcapstone -o decode68k */
#include <capstone/capstone.h>
#include <stdio.h>
#include <stdlib.h>
int main(int argc,char **argv){
 if(argc!=4)return 2;
 FILE*f=fopen(argv[1],"rb");if(!f)return 1;
 fseek(f,0,SEEK_END);size_t n=ftell(f);rewind(f);
 unsigned char*b=malloc(n);if(!b){fclose(f);return 1;}fread(b,1,n,f);fclose(f);
 size_t p=strtoul(argv[2],0,0),end=strtoul(argv[3],0,0);if(end>n){free(b);return 1;}
 csh h;if(cs_open(CS_ARCH_M68K,CS_MODE_BIG_ENDIAN|CS_MODE_M68K_000,&h)){free(b);return 1;}
 while(p<end){
  if(p+4<=end&&b[p]==0x4e&&b[p+1]==0x40){printf("%zu\t4\ttrap #0 ; OS-9 service word $%02X%02X\n",p,b[p+2],b[p+3]);p+=4;continue;}
  cs_insn*i;size_t c=cs_disasm(h,b+p,end-p,p,1,&i);
  if(c&&i->size&&i->size<=end-p){printf("%zu\t%u\t%s %s\n",p,i->size,i->mnemonic,i->op_str);p+=i->size;cs_free(i,c);}
  else p+=end-p>=2?2:1;
 }
 cs_close(&h);free(b);return 0;
}
