typedef enum {
	FULL_WAVE_RECTIFIER, HALF_WAVE_RECTIFIER
} clipping_type_t;

typedef struct {
	int numSamples;
	clipping_type_t type;
	float gain;
} distortion_state_t;

extern distortion_state_t my_state;

void distortionInit(distortion_state_t* state, int numSamples, clipping_type_t type, float gain);
void processSingleChannel(double* input, double* output);//, distortion_state_t state);
