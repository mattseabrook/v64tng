#pragma once

#include <algorithm>
#include <cmath>
#include <stdexcept>
#include "vdx.h"

struct GhostTexture
{
    int width = 0, height = 0;
    std::vector<uint8_t> rgba;
};

// The movie retreats into its room plate. Track the actor independently so
// that filmed perspective does not fight the apparition's world movement.
inline std::vector<GhostTexture> prepareGhostFrames(const VDXFile &vdx)
{
    const int width=vdx.width, height=vdx.height;
    if (width<=0 || height<=0 || vdx.frameIndices.empty() ||
        vdx.frameIndices.size()!=vdx.frameData.size())
        throw std::runtime_error("Invalid ghost bitmap frames");
    const size_t pixels=size_t(width)*height;
    const auto &plate=*vdx.frameIndices.front();
    if (plate.size()!=pixels) throw std::runtime_error("Invalid ghost room plate");

    struct Track
    {
        int left=0, top=0, right=-1, bottom=-1;
        std::vector<size_t> support;
    };
    std::vector<Track> tracks(vdx.frameData.size());
    std::vector<uint8_t> visited(pixels);
    std::vector<size_t> component;
    for (size_t frame=0; frame<tracks.size(); ++frame)
    {
        const auto &indices=*vdx.frameIndices[frame];
        if (indices.size()!=pixels || vdx.frameData[frame]->size()!=pixels*3)
            throw std::runtime_error("Invalid ghost frame size");
        std::fill(visited.begin(),visited.end(),0);
        auto &track=tracks[frame];
        for (size_t p=0; p<pixels; ++p)
        {
            if (visited[p] || indices[p]==plate[p]) continue;
            component.clear(); component.push_back(p); visited[p]=1;
            for (size_t i=0; i<component.size(); ++i)
            {
                const int x=int(component[i]%width), y=int(component[i]/width);
                for (int ny=(std::max)(0,y-1); ny<=(std::min)(height-1,y+1); ++ny)
                for (int nx=(std::max)(0,x-1); nx<=(std::min)(width-1,x+1); ++nx)
                {
                    const size_t q=size_t(ny)*width+nx;
                    if (!visited[q] && indices[q]!=plate[q])
                    {
                        visited[q]=1;
                        component.push_back(q);
                    }
                }
            }
            if (component.size()>track.support.size()) track.support=component;
        }
        // After the actor leaves, the codec retains scattered plate residue.
        if (track.support.size()<128) { track.support.clear(); continue; }
        track.left=width; track.top=height;
        for (size_t p : track.support)
        {
            const int x=int(p%width), y=int(p/width);
            track.left=(std::min)(track.left,x); track.right=(std::max)(track.right,x);
            track.top=(std::min)(track.top,y); track.bottom=(std::max)(track.bottom,y);
        }
    }

    std::vector<GhostTexture> frames(tracks.size());
    for (size_t frame=0; frame<tracks.size(); ++frame)
    {
        const auto &track=tracks[frame];
        if (track.support.empty()) continue;
        // A short centered window removes bounding-box jitter while preserving
        // gestures. Every frame shares a canvas and a floor anchor.
        float center=0, bottom=0, actorHeight=0, count=0;
        const size_t first=frame>3 ? frame-3 : 0;
        const size_t last=(std::min)(tracks.size()-1,frame+3);
        for (size_t i=first; i<=last; ++i)
        {
            const auto &sample=tracks[i];
            if (sample.support.empty()) continue;
            center+=(sample.left+sample.right+1)*0.5f;
            bottom+=sample.bottom+1.0f;
            actorHeight+=sample.bottom-sample.top+1.0f;
            count+=1.0f;
        }
        center/=count; bottom/=count; actorHeight/=count;
        std::fill(visited.begin(),visited.end(),0);
        for (size_t p : track.support) visited[p]=1;
        auto &texture=frames[frame];
        texture.width=256; texture.height=256;
        texture.rgba.resize(256*256*4);
        const auto &rgb=*vdx.frameData[frame];
        const float scale=224.0f/actorHeight;
        for (int y=0; y<256; ++y)
        for (int x=0; x<256; ++x)
        {
            const float sourceX=center+(x+0.5f-128.0f)/scale-0.5f;
            const float sourceY=bottom+(y+0.5f-248.0f)/scale-0.5f;
            const int sx=int(std::floor(sourceX)), sy=int(std::floor(sourceY));
            const float tx=sourceX-sx, ty=sourceY-sy;
            float coverage=0, color[3]={};
            // Filter in premultiplied space to soften the silhouette without
            // bleeding the discarded room plate into its transparent edge.
            for (int oy=0; oy<2; ++oy)
            for (int ox=0; ox<2; ++ox)
            {
                const int px=sx+ox, py=sy+oy;
                if (px<0 || py<0 || px>=width || py>=height) continue;
                const size_t p=size_t(py)*width+px;
                if (!visited[p]) continue;
                const float weight=(ox ? tx : 1.0f-tx)*(oy ? ty : 1.0f-ty);
                coverage+=weight;
                for (int c=0; c<3; ++c) color[c]+=rgb[p*3+c]*weight;
            }
            if (coverage<=0.0f) continue;
            const size_t q=(size_t(y)*256+x)*4;
            for (int c=0; c<3; ++c)
                texture.rgba[q+c]=uint8_t(std::clamp(std::lround(color[c]/coverage),0l,255l));
            texture.rgba[q+3]=uint8_t(std::clamp(std::lround(coverage*255.0f),0l,255l));
        }
    }
    return frames;
}

inline float ghostAppearance(double elapsed, double firstVisible, double lastVisible)
{
    const auto ease=[](double value)
    {
        const float t=float(std::clamp(value,0.0,1.0));
        return t*t*(3.0f-2.0f*t);
    };
    return ease((elapsed-firstVisible)/0.35)*ease((lastVisible-elapsed)/0.45);
}

struct GhostFrameBlend { size_t first=0, second=0; float weight=0; };

inline GhostFrameBlend ghostChaseFrame(double elapsed, double fps, size_t firstVisible, size_t lastVisible)
{
    // Play the arrival once, then reflect a bright section of the animation.
    // The native retreat/fade must not make a pursuing ghost disappear.
    const size_t low=(std::min)(lastVisible-1,firstVisible+16);
    const size_t high=(std::min)(lastVisible-1,firstVisible+64);
    double frame=(std::max)(0.0,elapsed*fps);
    if (frame>high)
    {
        const double span=double(high-low);
        if (span>0)
        {
            const double phase=std::fmod(frame-high,span*2);
            frame=high-(phase<=span ? phase : span*2-phase);
        }
        else frame=high;
    }
    const size_t first=size_t(frame);
    return {first,(std::min)(first+1,lastVisible-1),float(frame-first)};
}

inline float ghostArrival(double elapsed, double firstVisible)
{
    const float t=float(std::clamp((elapsed-firstVisible)/0.35,0.0,1.0));
    return t*t*(3.0f-2.0f*t);
}
