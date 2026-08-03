#include "grv.h"

#include "rl.h"

#include <algorithm>
#include <array>
#include <cctype>
#include <fstream>
#include <format>
#include <iomanip>
#include <queue>
#include <set>
#include <sstream>
#include <stdexcept>

namespace {

constexpr std::array<const char*, 91> kMnemonics{{
    "NOP", "RESERVED_01", "PLAYSONG", "FADEIN_NEXT_VIDEO", "PALFADEOUT",
    "FIRSTFRAME_NEXT_VIDEO", "VIDEOFLAG6_ON", "VIDEOFLAG7_ON", "SETBACKGROUNDSONG",
    "VIDEOREF", "VIDEOFLAG5_ON", "INPUTLOOPSTART", "KEYACTION", "HOTSPOT_RECT",
    "HOTSPOT_LEFT", "HOTSPOT_RIGHT", "HOTSPOT_CENTER", "HOTSPOT_CENTER_2",
    "HOTSPOT_CURRENT", "INPUTLOOPEND", "RANDOM", "JMP", "LOADSTRING", "RET",
    "CALL", "SLEEP", "STRCMP_NE_JMP", "XOR_OBFUSCATE", "VIDEO_TRANSITION_REF",
    "SWAP", "RESERVED_1E", "INC", "DEC", "STRCMP_NE_JMP_INDIRECT",
    "COPY_BG_TO_FG", "STRCMP_EQ_JMP", "MOV", "ADD", "VIDEO_NAME",
    "VIDEO_TRANSITION_NAME", "RESERVED_28", "STOP_OR_WAIT_MIDI", "ENDSCRIPT",
    "NOP_2B", "SET_HOTSPOT_TOP", "SET_HOTSPOT_BOTTOM", "LOADGAME", "SAVEGAME",
    "HOTSPOT_BOTTOM_4", "MIDI_CONTROL", "JNE_INDIRECT", "LOADSTRING_INDIRECT",
    "CHAR_GREATER_JMP", "VIDEOFLAG7_OFF", "CHAR_LESS_JMP", "COPY_RECT_TO_BG",
    "RESTORESTACK", "GRID_SWAP", "PRINTSTRING", "HOTSPOT_SAVE_SLOT",
    "CHECK_VALID_SAVES", "RESETVARS", "MOD", "LOADSCRIPT", "SET_VIDEO_ORIGIN",
    "SUB", "GAMELOGIC", "RETURNSCRIPT", "SET_HOTSPOT_RIGHT", "SET_HOTSPOT_LEFT",
    "RESOURCE_CONTEXT_SAVE", "RESOURCE_CONTEXT_RESTORE", "SET_VDX_RATE_OVERRIDE",
    "PALETTE_MERGE_ONCE", "MIDI_DRIVER_PARAM", "SET_VIDEO_MODE", "GETCD", "PLAYCD",
    "MUSICDELAY", "RESERVED_4F", "RESERVED_50", "SET_VIDEO_SKIP_CANDIDATE",
    "COMMIT_OVERLAY", "HOTSPOT_OUTSIDE_RECT", "NOP_54", "SET_SCRIPT_END_CANDIDATE",
    "RESERVED_SOUND_SHAPE", "MASK_VIDEO_REF32", "MASK_VIDEO_NAME",
    "CHECK_SOUND_OVERLAY_SHAPE", "UNSUPPORTED_T7G"
}};

constexpr std::array<const char*, 21> kArchives{{
    "AT", "B", "CH", "D", "DR", "FH", "GA", "HDISK", "HTBD", "INTRO", "JHEK",
    "K", "LA", "LI", "MB", "MC", "MU", "N", "P", "XMI", "GAMWAV"
}};

class Reader
{
public:
    Reader(std::span<const uint8_t> data, size_t offset) : data_(data), pos_(offset) {}
    uint8_t u8() { require(1); return data_[pos_++]; }
    uint16_t u16() { const uint16_t a=u8(), b=u8(); return static_cast<uint16_t>(a | b << 8); }
    uint32_t u32() { const uint32_t a=u16(), b=u16(); return a | b << 16; }
    int16_t s16() { return static_cast<int16_t>(u16()); }
    size_t position() const { return pos_; }
private:
    void require(size_t count) {
        if (pos_ + count > data_.size())
            throw std::runtime_error(std::format("truncated operand at 0x{:04X}", pos_));
    }
    std::span<const uint8_t> data_;
    size_t pos_;
};

std::string trimName(const std::string& name)
{
    return name.substr(0, name.find('\0'));
}

std::string resourceName(uint16_t ref, const GrvResourceNames& names)
{
    if (const auto found = names.find(ref); found != names.end())
        return std::format("0x{:04X} ({})", ref, found->second);
    const size_t archive = ref >> 10;
    return std::format("0x{:04X} ({}[{}]=?)", ref,
        archive < kArchives.size() ? kArchives[archive] : "UNKNOWN", ref & 0x3ff);
}

std::string readChar(Reader& reader, bool allowGrid, uint8_t* last = nullptr)
{
    const uint8_t first = reader.u8();
    const uint8_t token = first & 0x7f;
    if (last) *last = first;
    if (allowGrid && token == 0x7c) {
        const auto row = readChar(reader, false);
        uint8_t final = 0;
        const auto col = readChar(reader, false, &final);
        if (last) *last = final;
        return std::format("grid[{},{}]", row, col);
    }
    if (token == 0x23) {
        const uint8_t selector = reader.u8();
        if (last) *last = selector;
        return std::format("v[0x{:03X}]", (selector & 0x7f) - 0x61);
    }
    return std::to_string(static_cast<uint8_t>((token - 0x30) & 0xff));
}

std::string readSequence(Reader& reader)
{
    std::string result = "[";
    bool first = true;
    while (true) {
        uint8_t last = 0;
        const std::string value = readChar(reader, true, &last);
        if (!first) result += ", ";
        result += value;
        first = false;
        if (last & 0x80) break;
    }
    return result + "]";
}

std::string readString(Reader& reader, bool interpolated)
{
    std::string result;
    while (true) {
        const uint8_t ch = reader.u8();
        if (!ch) break;
        if (interpolated && ch == 0x23) {
            const uint8_t selector = reader.u8();
            result += std::format("{{v{:03X}}}", (selector & 0x7f) - 0x61);
        } else if (interpolated && ch == 0x7c) {
            result += "{grid:" + readChar(reader, false) + "," + readChar(reader, false) + "}";
        } else if (ch >= 0x20 && ch < 0x7f) {
            result.push_back(static_cast<char>(ch));
        } else {
            result += std::format("\\x{:02x}", ch);
        }
    }
    return result;
}

GrvHotspot makeHotspot(uint16_t offset, std::string kind, uint16_t l, uint16_t t,
                       uint16_t r, uint16_t b, uint16_t target, uint8_t cursor)
{
    return {l,t,r,b,target,cursor,offset,std::move(kind)};
}

} // namespace

GrvResourceNames loadGrvResourceNames(const std::filesystem::path& root)
{
    GrvResourceNames result;
    for (size_t archive = 0; archive < kArchives.size(); ++archive) {
        auto path = root / (std::string(kArchives[archive]) + ".RL");
        if (!std::filesystem::exists(path)) {
            path.replace_extension(".rl");
            if (!std::filesystem::exists(path)) continue;
        }
        const auto entries = parseRLFile(path.string());
        if (!entries) continue;
        for (size_t index = 0; index < entries->size() && index < 1024; ++index)
            result[static_cast<uint16_t>((archive << 10) | index)] =
                std::format("{}[{}]={}", kArchives[archive], index, trimName((*entries)[index].filename));
    }
    return result;
}

GrvProgram decodeGrv(const std::filesystem::path& path, const GrvResourceNames& names)
{
    GrvProgram program;
    program.sourcePath = path;
    std::ifstream file(path, std::ios::binary);
    if (!file) throw std::runtime_error("Cannot open " + path.string());
    program.bytes.assign(std::istreambuf_iterator<char>(file), {});

    std::optional<uint16_t> nearestRef;
    std::string nearestName;
    std::vector<GrvInputLoop> activeLoops;
    std::optional<GrvHotspot> persistentTop, persistentBottom, persistentLeft, persistentRight;

    size_t offset = 0;
    while (offset < program.bytes.size()) {
        Reader reader(program.bytes, offset);
        GrvInstruction inst;
        inst.offset = static_cast<uint16_t>(offset);
        inst.rawOpcode = reader.u8();
        inst.opcode = inst.rawOpcode & 0x7f;
        if (inst.opcode >= kMnemonics.size())
            throw std::runtime_error(std::format("Unknown opcode 0x{:02X} at 0x{:04X}", inst.opcode, offset));
        inst.mnemonic = kMnemonics[inst.opcode];
        const bool shortVar = (inst.rawOpcode & 0x80) != 0;
        std::vector<std::string> operands;
        auto add = [&](std::string value) { operands.push_back(std::move(value)); };
        auto u8 = [&](const char* label) { const auto v=reader.u8(); add(std::format("{}=0x{:02X}",label,v)); return v; };
        auto u16 = [&](const char* label) { const auto v=reader.u16(); add(std::format("{}=0x{:04X}",label,v)); return v; };
        auto var = [&](const char* label) { const auto v=shortVar?reader.u8():reader.u16(); add(std::format("{}=v[0x{:03X}]",label,v)); return v; };
        auto ref16 = [&] { const auto v=reader.u16(); add("ref=" + resourceName(v,names)); return v; };
        auto targetOnly = [&] { const auto v=u16("target"); inst.branchTargets.push_back(v); return v; };

        const uint8_t op = inst.opcode;
        if (op==0x02 || op==0x08 || op==0x09 || op==0x1c) {
            const auto ref=ref16();
            if(op==0x09 || op==0x1c) inst.videoRef=ref;
        }
        else if (op==0x0c) { u8("key"); targetOnly(); }
        else if (op==0x0d) {
            const auto l=u16("left"),t=u16("top"),r=u16("right"),b=u16("bottom"),a=targetOnly(); const auto c=u8("cursor");
            inst.hotspot=makeHotspot(inst.offset,inst.mnemonic,l,t,r,b,a,c);
        } else if (op>=0x0e && op<=0x12) {
            const auto a=targetOnly();
            if(op==0x0e) inst.hotspot=makeHotspot(inst.offset,inst.mnemonic,0,80,100,400,a,1);
            if(op==0x0f) inst.hotspot=makeHotspot(inst.offset,inst.mnemonic,540,80,640,400,a,2);
            if(op==0x10||op==0x11) inst.hotspot=makeHotspot(inst.offset,inst.mnemonic,200,80,440,400,a,0);
            if(op==0x12) inst.hotspot=makeHotspot(inst.offset,inst.mnemonic,0,0,640,480,a,0);
        } else if (op==0x15 || op==0x18 || op==0x44 || op==0x45) {
            const auto a=targetOnly();
            if(op==0x44) { inst.hotspot=makeHotspot(inst.offset,inst.mnemonic,560,0,640,480,a,2); persistentRight=inst.hotspot; }
            if(op==0x45) { inst.hotspot=makeHotspot(inst.offset,inst.mnemonic,0,0,80,480,a,1); persistentLeft=inst.hotspot; }
        } else if (op==0x14) { var("dst"); u8("max"); }
        else if (op==0x16 || op==0x33) { var("dst"); add("values="+readSequence(reader)); }
        else if (op==0x17 || op==0x42 || op==0x43 || op==0x48 || op==0x4b || op==0x4d || op==0x52) u8("value");
        else if (op==0x19) u16("ticks");
        else if (op==0x1a || op==0x21 || op==0x23 || op==0x34 || op==0x36) { var("start"); add("values="+readSequence(reader)); targetOnly(); }
        else if (op==0x1b) { var("start"); std::string x="xor=["; bool first=true; while(true){auto v=reader.u8();if(!first)x+=", ";x+=std::format("0x{:02X}",v&0x4f);first=false;if(v&0x80)break;} add(x+"]"); }
        else if (op==0x1d || op==0x24 || op==0x25 || op==0x41) { var("dst"); u16("src"); }
        else if (op==0x1e) u8("reserved"); // retail corpus/Win dialect
        else if (op==0x1f || op==0x20 || op==0x2e || op==0x2f) var("var");
        else if (op==0x26 || op==0x27 || op==0x58) { inst.videoName=readString(reader,true); add("name=\""+inst.videoName+"\""); }
        else if (op==0x28 || op==0x4a || op==0x4e || op==0x4f || op==0x50 || op==0x51 || op==0x55) u16("value");
        else if (op==0x2c || op==0x2d) {
            const auto a=targetOnly(); const auto c=u8("cursor");
            inst.hotspot = op==0x2c ? makeHotspot(inst.offset,inst.mnemonic,0,0,640,80,a,c)
                                   : makeHotspot(inst.offset,inst.mnemonic,0,400,640,480,a,c);
            if(op==0x2c) persistentTop=inst.hotspot; else persistentBottom=inst.hotspot;
        } else if (op==0x30) { const auto a=targetOnly(); inst.hotspot=makeHotspot(inst.offset,inst.mnemonic,0,400,640,480,a,4); }
        else if (op==0x31) { u16("value"); u16("time"); }
        else if (op==0x32) { var("selector"); u16("rhs"); targetOnly(); }
        else if (op==0x37) { u16("left");u16("top");u16("right");u16("bottom"); }
        else if (op==0x39) { add("row1="+readChar(reader,false));add("col1="+readChar(reader,false));add("row2="+readChar(reader,false));add("col2="+readChar(reader,false)); }
        else if (op==0x3a) add("values="+readSequence(reader));
        else if (op==0x3b) {
            u8("slot");const auto l=u16("left"),t=u16("top"),r=u16("right"),b=u16("bottom"),a=targetOnly();const auto c=u8("cursor");
            inst.hotspot=makeHotspot(inst.offset,inst.mnemonic,l,t,r,b,a,c);
        } else if (op==0x3e) { var("dst");u8("divisor"); }
        else if (op==0x3f) { auto s=readString(reader,false);add("filename=\""+s+"\""); }
        else if (op==0x40) { add(std::format("x={}",reader.s16()));add(std::format("y={}",reader.s16())); }
        else if (op==0x53) { const auto l=u16("left"),t=u16("top"),r=u16("right"),b=u16("bottom"),a=targetOnly();inst.hotspot=makeHotspot(inst.offset,inst.mnemonic,l,t,r,b,a,0); }
        else if (op==0x56) { add(std::format("ref=0x{:08X}",reader.u32()));u8("loops");u8("mode"); }
        else if (op==0x57) add(std::format("ref=0x{:08X}",reader.u32()));
        else if (op==0x59) { var("dst");u8("mode"); }
        // Remaining opcodes have no operands.

        if(op==0x15 || op==0x17 || op==0x2a || op==0x43)
            inst.fallsThrough=false;

        const size_t end=reader.position();
        inst.bytes.assign(program.bytes.begin()+static_cast<ptrdiff_t>(offset),program.bytes.begin()+static_cast<ptrdiff_t>(end));
        for(size_t i=0;i<operands.size();++i){if(i)inst.operands+=", ";inst.operands+=operands[i];}

        if (inst.videoRef || !inst.videoName.empty()) { nearestRef=inst.videoRef; nearestName=inst.videoName; }
        if (op==0x0b) {
            GrvInputLoop loop{inst.offset,inst.offset,nearestRef,nearestName,{},{}};
            if(persistentTop)loop.hotspots.push_back(*persistentTop);
            if(persistentBottom)loop.hotspots.push_back(*persistentBottom);
            if(persistentLeft)loop.hotspots.push_back(*persistentLeft);
            if(persistentRight)loop.hotspots.push_back(*persistentRight);
            activeLoops.push_back(std::move(loop));
        } else if(!activeLoops.empty() && inst.hotspot && op!=0x2c && op!=0x2d && op!=0x44 && op!=0x45) {
            activeLoops.back().hotspots.push_back(*inst.hotspot);
        }
        if(!activeLoops.empty() && op==0x13){
            activeLoops.back().end=inst.offset;
            program.inputLoops.push_back(std::move(activeLoops.back()));
            activeLoops.pop_back();
        }
        program.instructions.push_back(std::move(inst));
        offset=end;
    }
    std::ranges::sort(program.inputLoops, {}, &GrvInputLoop::start);

    // Forward data-flow over the script CFG: track the set of most recently
    // staged videos which can reach each instruction. Hotspot targets are real
    // conditional branches. Calls include both their target and continuation;
    // RET is left terminal because context-insensitive all-return-site edges
    // create unusable cross-function false positives. This deliberately yields
    // candidates rather than claiming a loop has one unique scene.
    std::unordered_map<uint16_t,size_t> instructionByOffset;
    for(size_t i=0;i<program.instructions.size();++i)
        instructionByOffset[program.instructions[i].offset]=i;
    std::unordered_map<uint16_t,uint16_t> loopStartByEnd;
    for(const auto& loop:program.inputLoops)
        loopStartByEnd[loop.end]=loop.start;
    std::vector<std::vector<size_t>> successors(program.instructions.size());
    for(size_t i=0;i<program.instructions.size();++i){
        const auto& inst=program.instructions[i];
        auto addSuccessor=[&](uint16_t target){
            if(const auto found=instructionByOffset.find(target);found!=instructionByOffset.end())
                successors[i].push_back(found->second);
        };
        if(inst.fallsThrough && i+1<program.instructions.size())
            successors[i].push_back(i+1);
        for(uint16_t target:inst.branchTargets)
            addSuccessor(target);
        if(inst.opcode==0x13)
            if(const auto found=loopStartByEnd.find(inst.offset);found!=loopStartByEnd.end())
                addSuccessor(found->second);
        std::ranges::sort(successors[i]);
        successors[i].erase(std::unique(successors[i].begin(),successors[i].end()),successors[i].end());
    }

    std::vector<std::set<size_t>> incoming(program.instructions.size());
    std::queue<size_t> work;
    std::vector<bool> queued(program.instructions.size(),false);
    std::vector<bool> reached(program.instructions.size(),false);
    if(!program.instructions.empty()){work.push(0);queued[0]=true;reached[0]=true;}
    while(!work.empty()){
        const size_t index=work.front();work.pop();queued[index]=false;
        std::set<size_t> outgoing=incoming[index];
        const auto& inst=program.instructions[index];
        if(inst.videoRef || !inst.videoName.empty()){
            outgoing.clear();
            outgoing.insert(index);
        }
        for(size_t successor:successors[index]){
            const size_t oldSize=incoming[successor].size();
            incoming[successor].insert(outgoing.begin(),outgoing.end());
            const bool changed=incoming[successor].size()!=oldSize;
            const bool firstReach=!reached[successor];
            reached[successor]=true;
            if((changed||firstReach) && !queued[successor]){
                work.push(successor);queued[successor]=true;
            }
        }
    }
    for(auto& loop:program.inputLoops){
        const auto found=instructionByOffset.find(loop.start);
        if(found==instructionByOffset.end())continue;
        for(size_t candidateIndex:incoming[found->second]){
            const auto& candidate=program.instructions[candidateIndex];
            loop.videoCandidates.push_back({
                candidate.offset,candidate.videoRef,candidate.videoName,candidate.mnemonic});
        }
    }
    return program;
}

std::string decompileGrv(const GrvProgram& program)
{
    std::ostringstream out;
    out << "; " << program.sourcePath.filename().string() << "\r\n";
    out << "; size=" << program.bytes.size() << " instructions=" << program.instructions.size()
        << " input_loops=" << program.inputLoops.size() << "\r\n\r\n";
    for(const auto& inst:program.instructions){
        std::ostringstream raw;
        for(size_t i=0;i<inst.bytes.size();++i){if(i)raw<<' ';raw<<std::uppercase<<std::hex<<std::setw(2)<<std::setfill('0')<<static_cast<int>(inst.bytes[i]);}
        out<<std::right<<std::uppercase<<std::hex<<std::setw(4)<<std::setfill('0')<<inst.offset<<"  "
           <<std::left<<std::setw(38)<<std::setfill(' ')<<raw.str()<<" "
           <<std::setw(29)<<inst.mnemonic<<" "<<inst.operands<<"\r\n";
    }
    return out.str();
}

std::vector<uint8_t> rebuildGrvAssembly(std::string_view assembly)
{
    std::vector<uint8_t> output;
    std::istringstream lines{std::string(assembly)};
    std::string line;
    while(std::getline(lines,line)){
        if(line.empty()||line[0]==';'||std::isspace(static_cast<unsigned char>(line[0])))continue;
        std::istringstream fields(line);
        std::string offsetText;
        fields>>offsetText;
        size_t listed=0;
        try{listed=std::stoul(offsetText,nullptr,16);}catch(...){throw std::runtime_error("Invalid assembly offset: "+offsetText);}
        if(listed!=output.size())throw std::runtime_error(std::format("Assembly offset 0x{:04X} does not match output 0x{:04X}",listed,output.size()));
        std::string token;
        while(fields>>token){
            if(token.size()!=2||!std::isxdigit(static_cast<unsigned char>(token[0]))||!std::isxdigit(static_cast<unsigned char>(token[1])))break;
            output.push_back(static_cast<uint8_t>(std::stoul(token,nullptr,16)));
        }
    }
    return output;
}

void saveGrvAssembly(const GrvProgram& program, const std::filesystem::path& output)
{
    std::ofstream file(output,std::ios::binary);
    if(!file)throw std::runtime_error("Cannot create "+output.string());
    const auto text=decompileGrv(program);
    file.write(text.data(),static_cast<std::streamsize>(text.size()));
}
