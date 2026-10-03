// Run with the retail asset root and a writable temporary directory.
// Compile with src/grv_runtime.cpp and the existing headless console stub.
#include <cassert>
#include <fstream>
#include <iostream>
#include "grv_runtime.h"

int main(int argc, char **argv)
{
    assert(argc==3);
    const auto parent=std::filesystem::path(argv[2])/"capture_parent.grv";
    // A real LOADSCRIPT/RETURNSCRIPT pair around the unmodified retail MAZE.
    const unsigned char script[]={0x3f,'m','a','z','e','.','g','r','v',0,0x0b,0x13};
    std::ofstream file(parent,std::ios::binary);
    file.write(reinterpret_cast<const char *>(script),sizeof(script)); file.close();
    auto runtime=GrvRuntime::load(parent,argv[1]);
    assert(runtime);
    auto boot=runtime->boot();
    assert(boot && runtime->inChildScript());
    assert(runtime->activeLoop()==0x0044);
    const auto failure=runtime->follow(0x04cc);
    assert(failure && !failure->ended);
    assert(!runtime->inChildScript());
    assert(runtime->activeLoop()==10);
    assert(failure->commands.size()==3);
    const auto &movie=std::get<GrvVideoCommand>(failure->commands[0]);
    const auto &taunt=std::get<GrvVideoCommand>(failure->commands[1]);
    const auto &music=std::get<GrvSetBackgroundSongCommand>(failure->commands[2]);
    assert(movie.ref==0x3c53 && movie.flags==0);
    assert(taunt.ref==0x503b && (taunt.flags&(1u<<7)));
    assert(music.ref==0x4c35);
    assert(runtime->variables()[0x08c]==0 && runtime->variables()[0x08d]==6);
    assert(runtime->variables()[0x102]==0);
    assert(runtime->resolve(movie.ref)->stem()=="my");
    assert(runtime->resolve(taunt.ref)->stem()=="8_s_15");
    std::cout << "Retail MAZE capture: my, Stauf taunt, gu56, location 06 and native parent return verified\n";
}
