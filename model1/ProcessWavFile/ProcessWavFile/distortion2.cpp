#include <math.h>
#include "distortion2.h"

//-----------------------------------------------------------------------------

void distortionInit(distortion_state_t* state, int numSamples, clipping_type_t type, float gain)
{
	state->numSamples = numSamples;
	state->type = type;
	state->gain = gain;
}

// P R O C E S S   B L O C K
void processSingleChannel(double* input, double* output)//, distortion_state_t state)
{
	// Apply gain
	for (int i = 0; i < my_state.numSamples; i++) {
		output[i] = input[i] * my_state.gain;
	}

	// Apply distortion (sample per sample)
	switch (my_state.type) {

	case FULL_WAVE_RECTIFIER:
	{
		for (int sample = 0; sample < my_state.numSamples; ++sample)

		{
			output[sample] = fabs(output[sample]);
		}

		break;
	}

	case HALF_WAVE_RECTIFIER:
	{
		for (int sample = 0; sample < my_state.numSamples; ++sample)
		{
			output[sample] = 0.5f * (fabs(output[sample]) + output[sample]);
		}
		break;
	}
	default:
		break;

	}

}
