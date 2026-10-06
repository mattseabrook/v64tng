#include "grv.h"
#include <iostream>
int main(int argc,char**argv){auto names=loadGrvResourceNames(argv[1]);for(auto const&e:std::filesystem::directory_iterator(argv[1])){auto ext=e.path().extension().string();if(ext!=".GRV"&&ext!=".grv")continue;try{auto p=decodeGrv(e.path(),names);auto out=e.path();out+=".asm";saveGrvAssembly(p,out);std::cout<<e.path().filename().string()<<" "<<p.instructions.size()<<" instructions\n";}catch(const std::exception&x){std::cout<<e.path().filename().string()<<" unresolved: "<<x.what()<<"\n";}}}
