"""Round-trip alpha/chroma frames through the production PNG exporter (libpng)."""
from pathlib import Path
import subprocess
import tempfile
from PIL import Image

root = Path(__file__).resolve().parents[2]
extract = (root / "src/extract.cpp").read_text()
writer = extract[extract.index("void savePNG("):extract.index("\n/*", extract.index("void savePNG("))]
tools = (root / "src/tools.cpp").read_text()
save = tools[tools.index("static void SaveVDXFrame("):tools.index("static void ExportVDX(")]
prefix = r"""
#include "vdx_alpha.h"
#include <png.h>
#include <cstdio>
#include <filesystem>
int fopen_s(FILE **fp,const char *name,const char *mode){*fp=fopen(name,mode);return *fp?0:1;}
VDXFile g_playbackVDX{};
std::vector<size_t> g_frameChunks{0,1,2};
bool g_alphaMode=true;
int g_alphaBackground=0;
"""
main = r"""
int main(int argc,char **argv){
    if(argc!=2)return 1;
    auto &v=g_playbackVDX;
    v.width=8;v.height=4;
    for(int i=0;i<3;++i){
        v.frameData.push_back(std::make_shared<std::vector<uint8_t>>(96,42));
        v.framePalettes.emplace_back();
        for(auto &color:v.framePalettes.back())color={42,42,42};
    }
    std::vector<uint8_t> delta{0,0,0x63,0x6c,1};
    VDXChunk still{},change{},duplicate{};
    still.chunkType=0x20;change.chunkType=0x25;change.data=delta;
    v.chunks={still,change,duplicate};
    std::filesystem::path dir=argv[1];
    SaveVDXFrame(dir/"00000.png",0);
    SaveVDXFrame(dir/"00001.png",1);
    SaveVDXFrame(dir/"00002.png",2);
    g_alphaBackground=3;
    SaveVDXFrame(dir/"green.png",1);
    g_alphaMode=false;
    SaveVDXFrame(dir/"normal.png",1);
}
"""
with tempfile.TemporaryDirectory() as directory:
    path = Path(directory)
    (path / "test.cpp").write_text(prefix + writer + save + main)
    flags = subprocess.check_output(["pkg-config", "--cflags", "--libs", "libpng"], text=True).split()
    subprocess.run(["c++", "-std=c++23", "-I" + str(root / "include"), str(path / "test.cpp"),
                    str(root / "src/delta.cpp"), str(root / "src/lzss.cpp"), *flags, "-o", str(path / "test")], check=True)
    subprocess.run([str(path / "test"), directory], check=True)
    for name in ("00000", "00001", "00002", "green", "normal"):
        with Image.open(path / (name + ".png")) as image:
            assert image.mode == "RGBA" and image.size == (8, 4)
            for y in range(4):
                for x in range(8):
                    expected = (42,42,42,255)
                    if name == "00002" or (name == "00001" and x < 4):
                        expected = (0,0,0,0)
                    elif name == "green" and x < 4:
                        expected = (0,255,0,255)
                    assert image.getpixel((x,y)) == expected
print("PASS: production PNG export round-trips full frames, transparent deltas, empty duplicates, and chroma backgrounds")
