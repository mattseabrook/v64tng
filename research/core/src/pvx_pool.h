#pragma once
#include <vector>
#include <memory>
#include <mutex>
#include <cstdint>

using FramePtr = std::shared_ptr<std::vector<uint8_t>>;

class FramePool : public std::enable_shared_from_this<FramePool> {
public:
    static std::shared_ptr<FramePool> create() {
        return std::shared_ptr<FramePool>(new FramePool());
    }

    FramePtr get(size_t size) {
        std::unique_ptr<std::vector<uint8_t>> raw;
        {
            std::lock_guard<std::mutex> lock(mutex_);
            if (!pool_.empty()) {
                raw = std::move(pool_.back());
                pool_.pop_back();
            }
        }
        if (!raw) {
            raw = std::make_unique<std::vector<uint8_t>>();
        }
        if (raw->size() != size) raw->resize(size);

        std::weak_ptr<FramePool> weak = weak_from_this();
        return FramePtr(raw.release(), [weak](std::vector<uint8_t>* p) {
            if (auto self = weak.lock()) {
                std::lock_guard<std::mutex> lk(self->mutex_);
                self->pool_.emplace_back(p);
            } else {
                delete p;
            }
        });
    }
private:
    FramePool() = default;
    std::mutex mutex_;
    std::vector<std::unique_ptr<std::vector<uint8_t>>> pool_;
};
