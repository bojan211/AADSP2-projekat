#include <math.h>
#include "distortion2.h"

//-----------------------------------------------------------------------------

void distortionInit(__memX distortion_state_t* state, clipping_type_t type, DSPfract gain)
{
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
void processSingleChannel(__memY DSPfract* input, __memY DSPfract* output)
{
	// Apply gain
	DSPint i;
	for (i = 0; i < BLOCK_SIZE; i++) {
		*output = (*input) * my_state.gain;
		*output <<= 1;
		output++;
		input++;
	}

	output -= BLOCK_SIZE;

	// Apply distortion (sample per sample)
	switch (my_state.type) {

	case FULL_WAVE_RECTIFIER:
	{
		DSPint sample;
		for (sample = 0; sample < BLOCK_SIZE; ++sample)

		{
			*output = fabs_foo(*output);
			output++;
		}

		break;
	}

	case HALF_WAVE_RECTIFIER:
	{
		DSPint sample;
		for (sample = 0; sample < BLOCK_SIZE; ++sample)
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
