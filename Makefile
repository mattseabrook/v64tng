# ---------------------------
# Cross-build for Windows EXE
# ---------------------------

BUILD_TYPE ?= Release
BUILD_DIR  := build-win
OBJ_DIR    := $(BUILD_DIR)/obj
EXE        := v64tng.exe
SYSROOT    := /usr/x86_64-w64-mingw32
CROSS      := x86_64-w64-mingw32
CXX        := $(CROSS)-clang++
RC         := $(CROSS)-windres

# Where we installed the static libs
CROSS_LIB  := $(HOME)/cross_libs/mingw64

# Sources
SOURCES := $(shell find src -name '*.cpp')
OBJECTS := $(SOURCES:src/%.cpp=$(OBJ_DIR)/%.o)
DEPS    := $(OBJECTS:.o=.d)
RESOURCE_RES := $(BUILD_DIR)/resource.res

# Base flags
CXXFLAGS_BASE := -std=c++23 -DUNICODE -D_UNICODE \
                 -Iinclude \
                 -I$(CROSS_LIB)/include \
                 -I$(SYSROOT)/include

LDFLAGS_BASE  := -fuse-ld=lld \
                 -static -static-libgcc -static-libstdc++ \
                 -L$(CROSS_LIB)/lib -L$(SYSROOT)/lib \
                 -Wl,--subsystem,windows \
                 -lzlibstatic -lpng16_static -lvulkan-1 \
                 -ladlmidi \
                 -luser32 -lgdi32 -lshell32 -lshlwapi -ld2d1 -lole32 -luuid -lwinmm

# Debug vs Release
ifeq ($(BUILD_TYPE),Debug)
  CXXFLAGS := $(CXXFLAGS_BASE) -O0 -g -gcodeview
  LDFLAGS  := $(LDFLAGS_BASE) -Wl,/DEBUG:FULL -Wl,/PDB:v64tng-debug.pdb
  EXE := v64tng-debug.exe
else
  CXXFLAGS := $(CXXFLAGS_BASE) -O3 -march=native -flto=thin -fno-rtti
  LDFLAGS  := $(LDFLAGS_BASE) -Wl,/OPT:REF
endif

# Default target
.PHONY: all clean windows
all: windows

# Main recipe
windows: $(EXE)

$(EXE): $(RESOURCE_RES) $(OBJECTS)
	@echo "[Link] $@"
	@$(CXX) $(OBJECTS) $(RESOURCE_RES) -o $@ $(LDFLAGS)

$(OBJ_DIR)/%.o: src/%.cpp | $(OBJ_DIR)
	@echo "[Compile] $<"
	@mkdir -p $(dir $@)
	@$(CXX) $(CXXFLAGS) -MMD -MP -c $< -o $@

$(RESOURCE_RES): resource.rc | $(BUILD_DIR)
	@echo "[RC] $<"
	@$(RC) $< -O coff -o $@

$(BUILD_DIR) $(OBJ_DIR):
	@mkdir -p $@

clean:
	rm -rf $(BUILD_DIR) v64tng*.exe v64tng*.pdb

-include $(DEPS)
