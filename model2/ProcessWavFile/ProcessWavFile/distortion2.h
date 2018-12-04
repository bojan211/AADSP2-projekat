#include "common.h"

typedef enum {
	FULL_WAVE_RECTIFIER, HALF_WAVE_RECTIFIER
} clipping_type_t;

typedef struct {
	DSPint numSamples;
	clipping_type_t type;
	DSPfract gain;
} distortion_state_t;

extern distortion_state_t my_state;

void distortionInit(distortion_state_t* state, clipping_type_t type, DSPfract gain);
DSPfract fabs_foo(DSPfract a);
void processSingleChannel(DSPfract* input, DSPfract* output);
