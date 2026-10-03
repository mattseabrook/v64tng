// clang++ -std=c++23 -Iinclude grooviev1/verify_raycast_chase.cpp
// src/basement.cpp -o /tmp/verify_raycast_chase
#include <cassert>
#include <iostream>
#include "raycast_chase.h"
#include "raycast_ghost.h"

int main()
{
    GhostPoint player;
    float angle=0;
    for (int y=0; y<MAP_ROWS; ++y)
    for (int x=0; x<MAP_COLS; ++x)
        if (basementMap[y][x]>=0xf0 && basementMap[y][x]<=0xf3)
        {
            player={x+0.5f,y+0.5f};
            const int direction=basementMap[y][x]-0xf0;
            angle=(direction-1)*3.14159265f*0.5f;
        }
    GhostNavigation navigation;
    const auto spawn=navigation.spawnBehind(basementMap,player,angle);
    assert(spawn);
    assert(std::hypot(spawn->x-player.x,spawn->y-player.y)>=6);
    assert((spawn->x-player.x)*-std::cos(angle)+(spawn->y-player.y)*-std::sin(angle)>0);
    auto ghost=*spawn;
    const float separation=std::hypot(ghost.x-player.x,ghost.y-player.y);
    int tick=0;
    for (; tick<600 && !ghostContact(basementMap,ghost,player); ++tick)
    {
        ghost=navigation.advance(basementMap,ghost,player,6.0f/60);
        assert(ghostCircleClear(basementMap,ghost));
    }
    assert(tick>30 && tick<200);
    // Remaining still does not stop time, animation, pursuit or capture.
    assert(ghostContact(basementMap,ghost,player));

    TileMap bend;
    for (auto &row : bend) row.fill(1);
    for (int x=2; x<=12; ++x) bend[2][x]=0;
    for (int y=2; y<=12; ++y) bend[y][12]=0;
    const GhostPoint target{12.5f,12.5f};
    ghost={2.5f,2.5f}; navigation={};
    assert(!ghostSegmentClear(bend,ghost,target));
    for (tick=0; tick<600 && !ghostContact(bend,ghost,target); ++tick)
    {
        ghost=navigation.advance(bend,ghost,target,6.0f/60);
        assert(ghostCircleClear(bend,ghost));
    }
    assert(tick<400 && ghostContact(bend,ghost,target));
    // A neighboring room separated by a wall cannot trigger a capture.
    assert(!ghostContact(bend,{11.8f,3.5f},{12.25f,3.5f}));
    assert(ghostSweptContact(bend,{6.5f,2.5f},{4.5f,2.5f},{8.5f,2.5f}));

    // Walking away is enough to increase the gap at the default player speed.
    ghost={3.5f,2.5f}; player={6.5f,2.5f}; navigation={};
    for (tick=0; tick<20; ++tick)
    {
        player.x+=12.0f/60;
        ghost=navigation.advance(bend,ghost,player,6.0f/60);
    }
    assert(player.x-ghost.x>4.5f);

    for (double time : {0.0,1.1,3.0,8.0,30.0,300.0})
    {
        const auto frame=ghostChaseFrame(time,15,16,119);
        assert(frame.first<119 && frame.second<119);
        if (time>8) assert(frame.first>=32 && frame.second<=80);
    }
    // Every rendered sample in a 60-second demo stays in the visible loop.
    for (int tick=120; tick<=60*60; ++tick)
    {
        const auto frame=ghostChaseFrame(tick/60.0,15,16,119);
        assert(frame.first>=16 && frame.first<119);
        assert(frame.second>=16 && frame.second<119);
        assert(frame.weight>=0 && frame.weight<=1);
        assert(ghostArrival(tick/60.0,16.0/15)==1);
    }
    assert(ghostArrival(0,16.0/15)==0);
    assert(ghostArrival(1.5,16.0/15)==1);
    assert(ghostArrival(300,16.0/15)==1);
    float previous=basementLightFalloff(0,6);
    for (float d=0.1f; d<50; d+=0.1f)
    {
        const float light=basementLightFalloff(d,6);
        assert(light>0 && light<=previous && previous-light<0.015f);
        previous=light;
        assert(ghostVisibility(d)>0);
    }
    assert(basementLightFalloff(6,6)>0.15f);
    assert(basementLightFalloff(12,6)>0.02f);
    std::cout << "Rear spawn " << separation << " units; idle capture, corner pursuit, escape, swept contact, persistent animation and lighting verified\n";
}
