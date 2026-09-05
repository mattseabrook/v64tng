// Run from the repository root:
// c++ -std=c++17 -Iinclude research/debug/test_wavetable_output.cpp -o /tmp/test_wavetable_output
// /tmp/test_wavetable_output sc55.sf2
#include <cassert>
#include <cmath>
#include <cstdio>
#include <initializer_list>
#define TSF_IMPLEMENTATION
#include "wavetable_output.h"

int main(int argc, char **argv)
{
	assert(argc == 2);
	tsf *reference = tsf_load_filename(argv[1]);
	assert(reference);
	tsf *mixed = tsf_copy(reference);
	assert(mixed);
	for (tsf *synth : {reference, mixed})
	{
		tsf_set_output(synth, TSF_STEREO_INTERLEAVED, 44100, 0.0f);
		tsf_note_on(synth, 0, 60, 1.0f);
	}
	float dry[1024], wet[1024];
	// The same held note must respond to duck, mute and restore without a
	// new note-on. Also start a note while muted and ensure it recovers.
	for (float gain : {0.80f, 0.55f, 0.0f, 0.55f, 0.80f})
	{
		if (gain == 0.0f)
		{
			tsf_note_on(reference, 0, 67, 1.0f);
			tsf_note_on(mixed, 0, 67, 1.0f);
		}
		tsf_render_float(reference, dry, 512, 0);
		renderWavetableOutput(mixed, wet, 512, gain);
		double energy = 0;
		for (int i = 0; i < 1024; ++i)
		{
			assert(std::isfinite(wet[i]));
			assert(std::abs(wet[i] - dry[i] * gain) < 1e-6f);
			energy += dry[i] * dry[i];
		}
		assert(energy > 1e-6);
	}
	tsf_close(mixed);
	tsf_close(reference);
	std::puts("PASS: sustained voices duck to 55%, mute, and restore; notes started muted recover");
}
