// pvx.h

#ifndef PVX_H
#define PVX_H

#include <cstdint>
#include <functional>
#include <vector>
#include <string>

/*
===============================================================================

    Phantom Engine - PVX Streaming Decoder

    Streaming decoding API for the PVX container invented for Phantom Engine.
    Supports keyframes, delta frames with motion compensation, and repeat frames.
    Produces RGB24 frames for playback using on-demand decoding.

===============================================================================
*/

struct PVXFile
{
    std::string filename;               // File name (or logical name)
    int width = 0;                      // Expected 1920
    int height = 0;                     // Expected 1080
    int fps = 24;                       // From header
    std::vector<std::vector<uint8_t>> frameData; // Decoded RGB24 frames (width*height*3)
};

struct PVXInfo
{
    int width = 0;
    int height = 0;
    int fps = 0;
};

// Read the PVX header and return basic stream info without decoding frames.
// Returns false if the file can't be opened or the header is invalid.
bool pvxPeekInfo(const std::string& diskPath, PVXInfo& outInfo);

// ============================================================================
// Legacy API (for view-based animations)
// ============================================================================

// Load and fully decode a PVX file from disk into memory (frames ready to blit)
PVXFile loadPVX(const std::string &diskPath);

// Simple cache helpers keyed by diskPath (or logical name you choose to pass)
PVXFile &getOrLoadPVX(const std::string &diskPath);
void unloadPVX(const std::string &diskPath);

// ============================================================================
// Streaming Playback API - for intro sequences
// ============================================================================

// Blocking playback helper used for intro sequences (updates GameState frame index and renders)
void pvxPlay(const std::string &diskPath);

// Starts optional background startup work only after the first decoded frame
// has been presented, keeping time-to-first-frame independent of project load.
void pvxPlay(const std::string &diskPath,
             const std::function<void()>& onFirstFramePresented);

// Play a PVX file (streamed) and capture the last displayed frame into outLastFrame.
// Returns false if the file couldn't be opened or no frames could be decoded.
bool pvxPlayCaptureLastFrame(const std::string& diskPath, PVXFile& outLastFrame);

// ============================================================================
// Menu Streaming API - for looping background animations
// ============================================================================

// Open a PVX file for streaming menu playback (looping)
bool pvxMenuOpen(const std::string &diskPath);

// Last PVX runtime error message, used for user-facing startup diagnostics.
std::string pvxGetLastError();

// Get next frame for menu (loops automatically, returns nullptr on error)
const std::vector<uint8_t>* pvxMenuNextFrame();
// Get current frame pointer without advancing stream.
const std::vector<uint8_t>* pvxMenuCurrentFrame();

// Close menu stream
void pvxMenuClose();

// Seek menu stream (only frameIndex=0 supported for rewind)
void pvxMenuSeek(size_t frameIndex);

// Get menu stream properties
int pvxMenuGetFPS();
int pvxMenuGetWidth();
int pvxMenuGetHeight();
size_t pvxMenuGetTotalFrames();
bool pvxMenuIsOpen();

// Access the most recent planar YCoCg-R data (post-row-filter, pre-color-transform).
// Returns nullptr if no planar data is available (e.g., delta/repeat frames or GPU path
// is not applicable).  The returned span is valid until the next pvxMenuNextFrame() call.
const uint8_t* pvxMenuGetPlanarData(size_t* outSize);

#endif // PVX_H
