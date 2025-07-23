# ---------------------------
# Cross-build for Windows EXE
# ---------------------------

# Colors for output (ANSI escapes)
COLOR_RESET  := \033[0m
COLOR_CYAN   := \033[36m
COLOR_YELLOW := \033[33m
COLOR_GREEN  := \033[32m
COLOR_RED    := \033[31m

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

# Sources (sorted for consistent order)
SOURCES := $(sort $(shell find src -name '*.cpp'))
NUM_SOURCES := $(words $(SOURCES))
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
                 -pthread \
                 -lzstatic -lpng16 -lvulkan-1 \
                 -lADLMIDI \
                 -luser32 -lgdi32 -lshell32 -lshlwapi -ld2d1 -lole32 -luuid -lwinmm -lwinpthread

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
windows: $(RESOURCE_RES) $(OBJECTS)
	@echo -e "$(COLOR_CYAN)Verifying all object files before linking...$(COLOR_RESET)"
	@missing=0; for obj in $(OBJECTS); do \
	  if [ ! -f $$obj ]; then \
	    echo -e "$(COLOR_RED)  - Missing: $$obj$(COLOR_RESET)"; \
	    missing=1; \
	  fi; \
	done; \
	if [ $$missing -eq 1 ]; then \
	  echo -e "$(COLOR_RED)ERROR: Missing object files! Build failed.$(COLOR_RESET)"; \
	  exit 1; \
	fi
	@echo -e "$(COLOR_GREEN)All object files verified. Proceeding to link...$(COLOR_RESET)"
	@echo -e "$(COLOR_CYAN)[Link] $(EXE)$(COLOR_RESET)"
	@$(CXX) $(OBJECTS) $(RESOURCE_RES) -o $(EXE) $(LDFLAGS)
	@if [ $$? -eq 0 ]; then \
	  echo -e "$(COLOR_GREEN)Build successful! Executable: $(EXE)$(COLOR_RESET)"; \
	else \
	  echo -e "$(COLOR_RED)Build failed!$(COLOR_RESET)"; \
	  exit 1; \
	fi

$(OBJ_DIR)/%.o: src/%.cpp | $(OBJ_DIR)
	@# Calculate index for progress (reliable loop method)
	@sources_list="$(SOURCES)"; index=1; for src in $$sources_list; do if [ "$$src" = "$$<" ]; then break; fi; index=$$((index + 1)); done; \
	total=$(NUM_SOURCES); \
	echo -e "$(COLOR_YELLOW)Processing [$$index/$$total] $$(basename $<)...$(COLOR_RESET)"
	@# Start timing for this file
	@start_time=$$(date +%s)
	@# Check if needs compile (mimic PS logic)
	@needs_compile=0; \
	if [ ! -f $@ ]; then \
	  needs_compile=1; \
	  echo -e "$(COLOR_YELLOW)  Object file does not exist$(COLOR_RESET)"; \
	fi; \
	if [ $$(stat -c %Y $<) -gt $$(stat -c %Y $@ 2>/dev/null || echo 0) ]; then \
	  needs_compile=1; \
	  echo -e "$(COLOR_YELLOW)  Source is newer than object file$(COLOR_RESET)"; \
	fi; \
	dep_file=$(OBJ_DIR)/$$(basename $< .cpp).d; \
	if [ -f $$dep_file ]; then \
	  deps=$$(sed 's/.*://; s/\\//g' $$dep_file | tr ' ' '\n'); \
	  for dep in $$deps; do \
	    if [ -f $$dep ] && [ $$(stat -c %Y $$dep) -gt $$(stat -c %Y $@ 2>/dev/null || echo 0) ]; then \
	      needs_compile=1; \
	      echo -e "$(COLOR_YELLOW)  Dependency $$dep is newer than object file$(COLOR_RESET)"; \
	      break; \
	    fi; \
	  done; \
	fi; \
	if [ -f $@ ] && [ $$(stat -c %s $@) -eq 0 ]; then \
	  needs_compile=1; \
	  echo -e "$(COLOR_RED)  Object file has zero size$(COLOR_RESET)"; \
	fi; \
	if [ $$needs_compile -eq 1 ]; then \
	  echo -e "$(COLOR_CYAN)  Compiling $$(basename $<)...$(COLOR_RESET)"; \
	  $(CXX) $(CXXFLAGS) -MMD -MP -c $< -o $@; \
	  if [ $$? -ne 0 ]; then \
	    echo -e "$(COLOR_RED)  Compilation failed for $$(basename $<)!$(COLOR_RESET)"; \
	    exit 1; \
	  fi; \
	  size=$$(stat -c %s $@); \
	  echo -e "$(COLOR_GREEN)  Compiled $$(basename $<) - Size: $$size bytes$(COLOR_RESET)"; \
	else \
	  size=$$(stat -c %s $@); \
	  echo -e "$(COLOR_GREEN)  Object file is up to date - Size: $$size bytes$(COLOR_RESET)"; \
	fi; \
	end_time=$$(date +%s); \
	duration=$$((end_time - start_time)); \
	echo -e "$(COLOR_GREEN)  Completed in $$duration seconds.$(COLOR_RESET)"

$(RESOURCE_RES): resource.rc | $(BUILD_DIR)
	@echo -e "$(COLOR_CYAN)[RC] $<$(COLOR_RESET)"
	@echo -e "$(COLOR_YELLOW)Compiling/Recompiling resource file...$(COLOR_RESET)"
	@$(RC) --target=pe-x86-64 \
	       --use-temp-file \
	       --preprocessor="$(CROSS)-gcc" \
	       --preprocessor-arg="-E" \
	       --preprocessor-arg="-xc-header" \
	       --preprocessor-arg="-DRC_INVOKED" \
	       --preprocessor-arg="-I/usr/x86_64-w64-mingw32/include" \
	       -i $< -o $@ -O coff
	@if [ $$? -eq 0 ]; then \
	  echo -e "$(COLOR_GREEN)Resource compilation successful.$(COLOR_RESET)"; \
	else \
	  echo -e "$(COLOR_RED)Resource compilation failed!$(COLOR_RESET)"; \
	  exit 1; \
	fi

$(BUILD_DIR) $(OBJ_DIR):
	@mkdir -p $@

clean:
	@echo -e "$(COLOR_YELLOW)Cleaning build artifacts...$(COLOR_RESET)"
	@rm -rf $(BUILD_DIR) v64tng*.exe v64tng*.pdb
	@echo -e "$(COLOR_GREEN)Clean complete.$(COLOR_RESET)"