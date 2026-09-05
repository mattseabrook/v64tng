"""Run the production playback handlers with a recording Win32/audio shim."""
from pathlib import Path
import subprocess
import tempfile

root = Path(__file__).resolve().parents[2]
source = (root / "src/tools.cpp").read_text()
commands = source[source.index("        case IDC_VDX_PREVIOUS:"):source.index("        case IDC_CURSOR_EXTRACT_BTN:")]
timer = source[source.index("    case WM_TIMER:"):source.index("    case WM_CLOSE:")]
stop = source[source.index("static void StopVDXPlayback(bool resetFrame)\n{"):source.index("static void PrepareVDXPlayback(std::string_view filename, std::span<const uint8_t> bytes)\n{")]
prefix = r"""
#include <algorithm>
#include <vector>
#include <memory>
#include <span>
#include <cstdint>
#include <cassert>
#include <cstdio>
using HWND=int; using UINT=unsigned; using ULONGLONG=unsigned long long;
enum {IDC_VDX_PREVIOUS, IDC_VDX_NEXT, IDC_VDX_PLAY_PAUSE, IDC_VDX_STOP, WM_TIMER};
constexpr int VDX_PLAYBACK_TIMER=1;
struct Video {std::vector<int> frameData=std::vector<int>(5); std::vector<uint8_t> audioData=std::vector<uint8_t>(22050,42);} g_playbackVDX;
struct AudioPlaybackFormat {};
bool g_vdxPlaying=false;
size_t g_playbackFrame=0,g_playbackStartFrame=0,lastShown=0, audioBytes=0;
ULONGLONG g_playbackStartTick=0,now=1000;
int g_toolsWindow=1,g_vdxPlaybackControls[9]{};
bool timerActive=false, audioActive=false, paused=false;
double fps=10;
double vdxPlaybackRate(const Video&){return fps;}
ULONGLONG GetTickCount64(){return now;}
void SetTimer(int,int,unsigned, std::nullptr_t){timerActive=true;}
void KillTimer(int,int){timerActive=false;}
void SetWindowTextW(int,const wchar_t*){}
void wavStop(){audioActive=false;paused=false;}
void wavPause(){paused=true;}
void wavPlay(std::shared_ptr<const std::vector<uint8_t>> data,AudioPlaybackFormat){audioBytes=data->size();audioActive=true;}
void ShowVDXPlaybackFrame(){lastShown=g_playbackFrame;}
"""
main = r"""
int main(){
  command(IDC_VDX_PLAY_PAUSE);
  assert(timerActive && audioActive && audioBytes==22050 && lastShown==0);
  now+=250; tick(); assert(g_playbackFrame==2 && lastShown==2);
  command(IDC_VDX_PLAY_PAUSE); assert(!timerActive && paused && g_playbackFrame==2);
  now+=1000; tick(); assert(g_playbackFrame==2);
  command(IDC_VDX_PLAY_PAUSE); assert(audioBytes==22050-4410);
  now+=100; tick(); assert(g_playbackFrame==3);
  command(IDC_VDX_PREVIOUS); assert(!timerActive && !audioActive && g_playbackFrame==2 && lastShown==2);
  command(IDC_VDX_NEXT); assert(g_playbackFrame==3 && lastShown==3);
  command(IDC_VDX_STOP); assert(g_playbackFrame==0 && lastShown==0 && !audioActive);
  command(IDC_VDX_PREVIOUS); assert(g_playbackFrame==4);
  command(IDC_VDX_NEXT); assert(g_playbackFrame==0);
  fps=25; command(IDC_VDX_PLAY_PAUSE);
  now+=40; tick(); assert(g_playbackFrame==1);
  now+=1000; tick(); assert(g_playbackFrame==4 && lastShown==4 && !timerActive && !audioActive);
  command(IDC_VDX_PLAY_PAUSE); assert(g_playbackFrame==0 && lastShown==0);
  command(IDC_VDX_STOP);
  g_playbackVDX.frameData.clear(); command(IDC_VDX_PLAY_PAUSE); assert(!timerActive);
  puts("PASS: play, pause, audio seek, stepping, stop, native frame rates, delayed timers, final-frame hold, and empty input");
}
"""
program = prefix + stop + "\nvoid command(int id){int hwnd=1;switch(id){\n" + commands + "}}\nint tick(){int wParam=1;switch(WM_TIMER){\n" + timer + "}return 0;}\n" + main
with tempfile.TemporaryDirectory() as directory:
    path = Path(directory)
    (path / "test.cpp").write_text(program)
    subprocess.run(["c++", "-std=c++23", str(path / "test.cpp"), "-o", str(path / "test")], check=True)
    subprocess.run([str(path / "test")], check=True)
