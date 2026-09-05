#pragma once
#include <vector>
#include <memory>
#include <cstdint>

struct PVXFrame {
    std::vector<uint8_t> data;
};

using PVXFramePtr = std::shared_ptr<PVXFrame>;
