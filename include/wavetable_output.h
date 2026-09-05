#pragma once

#include <cstddef>
#include "schellingb/tsf.h"

// Keep the synth at unity: tsf_set_volume only changes future note-ons.
// Apply the live mix after rendering so sustained and releasing voices respond
// to ducking, scene changes and the volume slider on the next audio buffer.
inline void renderWavetableOutput(tsf *synth, float *output, int frames, float gain)
{
	tsf_render_float(synth, output, frames, 0);
	for (std::size_t sample = 0; sample < static_cast<std::size_t>(frames) * 2u; ++sample)
		output[sample] *= gain;
}
