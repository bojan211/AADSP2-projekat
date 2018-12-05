#include <math.h>
#include "distortion2.h"

//-----------------------------------------------------------------------------

void distortionInit(distortion_state_t* state, clipping_type_t type, DSPfract gain)
{
	state->numSamples = BLOCK_SIZE;
	state->type = type;
	state->gain = gain;
}

DSPfract fabs_foo(DSPfract a)
{
	if(a < FRACT_NUM(0.0)) 
	{
		return -a;
	}
	return a;
}

// P R O C E S S   B L O C K
void processSingleChannel(DSPfract* input, DSPfract* output)
{
	// Apply gain
	DSPaccum temp_val;
	for (DSPint i = 0; i < my_state.numSamples; i++) {
		*output = (*input) * my_state.gain;
		*output <<= 1;
		output++;
		input++;
	}

	output -= my_state.numSamples;

	// Apply distortion (sample per sample)
	switch (my_state.type) {

	case FULL_WAVE_RECTIFIER:
	{
		for (DSPint sample = 0; sample < my_state.numSamples; ++sample)

		{
			*output = fabs_foo(*output);
			output++;
		}

		break;
	}

	case HALF_WAVE_RECTIFIER:
	{
		for (DSPint sample = 0; sample < my_state.numSamples; ++sample)
		{
			*output = (DSPfract)0.5 * (fabs_foo(*output) + *output);
			output++;
		}
		break;
	}
	default:
		break;

	}

}
