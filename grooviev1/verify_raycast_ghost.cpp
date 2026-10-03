// Headless regression: clang++ -std=c++23 -Iinclude
// grooviev1/verify_raycast_ghost.cpp -o /tmp/verify_raycast_ghost
#include <cassert>
#include <iostream>
#include "raycast_ghost.h"

int main()
{
    VDXFile movie;
    movie.width=128; movie.height=128;
    const auto addFrame=[&](int left, int top, int width, int height)
    {
        auto indices=std::make_shared<std::vector<uint8_t>>(128*128,0);
        auto rgb=std::make_shared<std::vector<uint8_t>>(128*128*3,0);
        for (int y=top; y<top+height; ++y)
        for (int x=left; x<left+width; ++x)
        {
            const size_t p=size_t(y)*128+x;
            (*indices)[p]=1;
            (*rgb)[p*3]=200;
        }
        movie.frameIndices.push_back(indices);
        movie.frameData.push_back(rgb);
    };
    addFrame(0,0,0,0);
    // A retreating actor changes size and position in the source movie.
    for (int i=0; i<12; ++i) addFrame(40+i,30+i,30-i,64-i*2);
    // Isolated codec residue must neither change the crop nor survive the exit.
    for (size_t i=1; i<movie.frameIndices.size(); ++i)
        (*movie.frameIndices[i])[127]=1;
    addFrame(0,0,0,0);
    (*movie.frameIndices.back())[127]=1;
    auto frames=prepareGhostFrames(movie);
    assert(frames.size()==movie.frameData.size());
    assert(frames.front().rgba.empty() && frames.back().rgba.empty());
    for (size_t i=1; i+1<frames.size(); ++i)
    {
        const auto &frame=frames[i];
        assert(frame.width==256 && frame.height==256);
        int left=256, right=-1, top=256, bottom=-1;
        bool softEdge=false;
        for (int y=0; y<256; ++y)
        for (int x=0; x<256; ++x)
        {
            const size_t p=(size_t(y)*256+x)*4;
            if (!frame.rgba[p+3]) continue;
            assert(frame.rgba[p]==200);
            if (frame.rgba[p+3]<255) softEdge=true;
            if (frame.rgba[p+3]<128) continue;
            left=std::min(left,x); right=std::max(right,x);
            top=std::min(top,y); bottom=std::max(bottom,y);
        }
        assert(bottom>=239 && bottom<=254);
        assert(softEdge);
        assert(bottom-top+1>=208 && bottom-top+1<=240);
        assert(std::abs((left+right)*0.5f-128.0f)<5.0f);
        // Rectangular test actor keeps its proportions through normalization.
        const float ratio=float(right-left+1)/(bottom-top+1);
        const float expected=float(31-int(i))/float(66-int(i)*2);
        assert(std::abs(ratio-expected)<0.015f);
    }
    // Real transparency holes inside the actor remain transparent.
    for (int y=60; y<66; ++y)
    for (int x=52; x<58; ++x)
        (*movie.frameIndices[1])[y*128+x]=0;
    frames=prepareGhostFrames(movie);
    assert(frames[1].rgba[(size_t(133)*256+126)*4+3]==0);

    assert(ghostAppearance(0,1,8)==0);
    assert(ghostAppearance(1,1,8)==0);
    assert(ghostAppearance(1.175,1,8)>0.49f && ghostAppearance(1.175,1,8)<0.51f);
    assert(ghostAppearance(2,1,8)==1);
    assert(ghostAppearance(7.775,1,8)>0.49f && ghostAppearance(7.775,1,8)<0.51f);
    assert(ghostAppearance(8,1,8)==0);
    assert(ghostAppearance(9,1,8)==0);
    movie.frameData.pop_back();
    bool rejected=false;
    try { prepareGhostFrames(movie); }
    catch (const std::runtime_error &) { rejected=true; }
    assert(rejected);
    std::cout << "Ghost tracking, aspect, transparency, residue and fades verified\n";
}
