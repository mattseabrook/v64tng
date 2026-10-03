#pragma once

#include <algorithm>
#include <cmath>
#include <optional>
#include "basement.h"

struct GhostPoint { float x=0, y=0; };

inline bool ghostWalkable(const TileMap &map, int x, int y)
{
    if (x<0 || y<0 || x>=MAP_COLS || y>=MAP_ROWS) return false;
    const auto tile=map[y][x];
    return tile==0 || (tile>=0xf0 && tile<=0xf3);
}

inline bool ghostCircleClear(const TileMap &map, GhostPoint p, float radius=0.22f)
{
    for (int y=int(std::floor(p.y-radius)); y<=int(std::floor(p.y+radius)); ++y)
    for (int x=int(std::floor(p.x-radius)); x<=int(std::floor(p.x+radius)); ++x)
    {
        if (ghostWalkable(map,x,y)) continue;
        const float dx=p.x-std::clamp(p.x,float(x),float(x+1));
        const float dy=p.y-std::clamp(p.y,float(y),float(y+1));
        if (dx*dx+dy*dy<=radius*radius) return false;
    }
    return true;
}

inline bool ghostSegmentClear(const TileMap &map, GhostPoint a, GhostPoint b, float radius=0.22f)
{
    const int steps=(std::max)(1,int(std::ceil(std::hypot(b.x-a.x,b.y-a.y)/0.12f)));
    for (int i=0; i<=steps; ++i)
    {
        const float t=float(i)/steps;
        if (!ghostCircleClear(map,{std::lerp(a.x,b.x,t),std::lerp(a.y,b.y,t)},radius)) return false;
    }
    return true;
}

// Reuse a shortest-path field until the player enters another cell. Cardinal
// routes keep the ghost inside the maze, including around blind corners.
struct GhostNavigation
{
    std::array<int,MAP_ROWS*MAP_COLS> distance{};
    int targetX=-1, targetY=-1;
    const TileMap *source=nullptr;

    void update(const TileMap &map, GhostPoint player)
    {
        const int x=int(std::floor(player.x)), y=int(std::floor(player.y));
        if (source==&map && targetX==x && targetY==y) return;
        source=&map; targetX=x; targetY=y;
        distance.fill(-1);
        if (!ghostWalkable(map,x,y)) return;
        std::array<int,MAP_ROWS*MAP_COLS> queue{};
        size_t head=0, tail=0;
        const int start=y*MAP_COLS+x;
        distance[start]=0; queue[tail++]=start;
        while (head<tail)
        {
            const int cell=queue[head++], cx=cell%MAP_COLS, cy=cell/MAP_COLS;
            for (auto step : {GhostPoint{-1,0},GhostPoint{1,0},GhostPoint{0,-1},GhostPoint{0,1}})
            {
                const int nx=cx+int(step.x), ny=cy+int(step.y);
                if (!ghostWalkable(map,nx,ny)) continue;
                const int next=ny*MAP_COLS+nx;
                if (distance[next]>=0) continue;
                distance[next]=distance[cell]+1; queue[tail++]=next;
            }
        }
    }

    std::optional<GhostPoint> spawnBehind(const TileMap &map, GhostPoint player, float angle)
    {
        update(map,player);
        const float rearX=-std::cos(angle), rearY=-std::sin(angle);
        float best=1e9f;
        std::optional<GhostPoint> spawn;
        for (int y=0; y<MAP_ROWS; ++y)
        for (int x=0; x<MAP_COLS; ++x)
        {
            const int route=distance[y*MAP_COLS+x];
            if (route<7 || route>14) continue;
            // At the entrance the rear passage ends at the map boundary.
            // Its side corridor still offers space in the rear half-plane.
            const GhostPoint p{x+0.5f+rearX*0.25f,y+0.5f+rearY*0.25f};
            const float dx=p.x-player.x, dy=p.y-player.y;
            const float separation=std::hypot(dx,dy);
            const float rear=dx*rearX+dy*rearY;
            if (rear<0.15f || separation<6.0f || separation>12.0f || !ghostCircleClear(map,p)) continue;
            const float score=std::abs(separation-8.0f)+std::abs(route-8.0f)*0.3f+2.0f*(1.0f-rear/separation);
            if (score<best) { best=score; spawn=p; }
        }
        return spawn;
    }

    GhostPoint advance(const TileMap &map, GhostPoint ghost, GhostPoint player, float travel)
    {
        update(map,player);
        const int steps=(std::max)(1,int(std::ceil(travel/0.12f)));
        float remaining=travel;
        for (int i=0; i<steps && remaining>0.0001f; ++i)
        {
            GhostPoint goal=player;
            if (!ghostSegmentClear(map,ghost,player))
            {
                const int cx=int(std::floor(ghost.x)), cy=int(std::floor(ghost.y));
                if (!ghostWalkable(map,cx,cy)) break;
                int best=distance[cy*MAP_COLS+cx];
                if (best<0) break;
                goal={cx+0.5f,cy+0.5f};
                for (auto step : {GhostPoint{-1,0},GhostPoint{1,0},GhostPoint{0,-1},GhostPoint{0,1}})
                {
                    const int nx=cx+int(step.x), ny=cy+int(step.y);
                    if (!ghostWalkable(map,nx,ny)) continue;
                    const int cost=distance[ny*MAP_COLS+nx];
                    if (cost>=0 && cost<best)
                    {
                        best=cost; goal={nx+0.5f,ny+0.5f};
                    }
                }
                if (!ghostSegmentClear(map,ghost,goal)) goal={cx+0.5f,cy+0.5f};
            }
            const float dx=goal.x-ghost.x, dy=goal.y-ghost.y, length=std::hypot(dx,dy);
            if (length<0.0001f) break;
            const float move=(std::min)({remaining,0.12f,length});
            const GhostPoint next{ghost.x+dx/length*move,ghost.y+dy/length*move};
            if (!ghostCircleClear(map,next)) break;
            ghost=next; remaining-=move;
        }
        return ghost;
    }
};

inline bool ghostContact(const TileMap &map, GhostPoint ghost, GhostPoint player)
{
    return std::hypot(ghost.x-player.x,ghost.y-player.y)<=0.55f &&
        ghostSegmentClear(map,ghost,player,0.02f);
}

inline bool ghostSweptContact(const TileMap &map, GhostPoint ghost, GhostPoint from, GhostPoint to)
{
    const float dx=to.x-from.x, dy=to.y-from.y, length=dx*dx+dy*dy;
    const float t=length>0 ? std::clamp(((ghost.x-from.x)*dx+(ghost.y-from.y)*dy)/length,0.0f,1.0f) : 0.0f;
    return ghostContact(map,ghost,{from.x+dx*t,from.y+dy*t});
}

inline float ghostVisibility(float distance)
{
    // The apparition is visible beyond the torch; avoid a sudden range cutoff.
    return 1.0f/(1.0f+0.002f*distance*distance);
}

inline float basementLightFalloff(float distance, float range)
{
    const float d=(std::max)(0.0f,distance), t=d/((std::max)(range,0.1f)*0.9f);
    return 0.65f/((1.0f+0.035f*d)*(1.0f+t*t*t));
}
