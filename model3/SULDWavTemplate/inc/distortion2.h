#include "common.h"

typedef enum {
	FULL_WAVE_RECTIFIER, HALF_WAVE_RECTIFIER
} clipping_type_t;

typedef struct {
	clipping_type_t type;
	DSPfract gain;
} distortion_state_t;

extern __memX distortion_state_t my_state;

void distortionInit(__memX distortion_state_t* state, clipping_type_t type, DSPfract gain);
DSPfract fabs_foo(DSPfract a);
void processSingleChannel(__memY DSPfract* input, __memY DSPfract* output);
