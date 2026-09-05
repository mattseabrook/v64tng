# Exercise the production layout with a small recording Win32 shim.
# Run: python3 research/debug/test_tools_layout.py (requires a C++17 compiler).
from pathlib import Path
import os
import subprocess
import tempfile

root = Path(__file__).resolve().parents[2]
s = (root / 'src/tools.cpp').read_text()
layout=s[s.index('static void LayoutTools(HWND hwnd)\n{'):s.index('static int HitToolSplit')]
prefix=r'''
#include <algorithm>
#include <array>
#include <map>
#include <cassert>
#include <cstdio>
using HWND=int; using HDWP=int; using UINT=unsigned;
struct RECT { int left, top, right, bottom; };
RECT client;
std::map<int, RECT> controls;
constexpr int SWP_NOZORDER=0, SWP_NOACTIVATE=0, FALSE=0;
int g_hTab=1, g_fullscreenButton=2, g_toolsDpi=96;
int g_assetControls[]={3,4,5,6,7,8}, g_archiveControls[]={9,10,11,12};
int g_cursorControls[]={13,14};
int g_vdxControls[]={15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31};
int g_vdxPlaybackControls[]={32,33,34,35,36};
struct ToolSplit { RECT hit{},area{}; bool vertical; float ratio; };
std::array<ToolSplit,4> g_toolSplits{{{{},{},true,.43f},{{},{},false,.24f},{{},{},false,.76f},{{},{},true,.40f}}};
int ToolPx(int v) { return (v*g_toolsDpi+48)/96; }
void GetClientRect(HWND,RECT* r){*r=client;}
int BeginDeferWindowPos(int){return 1;}
int DeferWindowPos(int, int h, std::nullptr_t,int x,int y,int w,int height,int){controls[h]={x,y,x+w,y+height};return 1;}
void SetWindowPos(int h,std::nullptr_t,int x,int y,int w,int height,int){controls[h]={x,y,x+w,y+height};}
void EndDeferWindowPos(int){}
void InvalidateRect(int,std::nullptr_t,int){}
'''
main=r'''
int main(){
  int cases=0;
  for(int dpi:{96,144,192}) for(int w:{744,1050,1920,2560}) for(int h:{521,720,1080,1440})
  for(int active=0;active<4;++active) for(float ratio:{0.f,.1f,.5f,.9f,1.f}) {
    g_toolsDpi=dpi;client={0,0,ToolPx(w),ToolPx(h)};
    float defaults[]={.43f,.24f,.76f,.40f};
    for(int i=0;i<4;++i)g_toolSplits[i].ratio=defaults[i];
    g_toolSplits[active].ratio=ratio; LayoutTools(1);
    for(auto [id,r]:controls){assert(r.left>=0 && r.top>=0 && r.right<=client.right && r.bottom<=client.bottom);}
    for(int a=15;a<=36;++a)for(int b=a+1;b<=36;++b){
      auto x=controls[a],y=controls[b];
      assert(std::min(x.right,y.right)<=std::max(x.left,y.left) || std::min(x.bottom,y.bottom)<=std::max(x.top,y.top));
    }
    ++cases;
  }
  printf("PASS: %d layout combinations, all VDX controls within client and non-overlapping\n",cases);
}
'''
with tempfile.TemporaryDirectory(prefix="tools-layout-") as directory:
    source = Path(directory) / "layout.cpp"
    executable = Path(directory) / "layout-test"
    source.write_text(prefix + layout + main)
    subprocess.run([os.environ.get("CXX", "c++"), "-std=c++17", str(source), "-o", str(executable)], check=True)
    subprocess.run([str(executable)], check=True)
