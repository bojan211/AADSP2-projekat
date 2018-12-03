typedef enum {
	FULL_WAVE_RECTIFIER, HALF_WAVE_RECTIFIER
} clipping_type_t;

typedef struct {
	int numChannels;
	int numSamples;
	int sampleRate;
	clipping_type_t type;
	float gain;
} distortion_state_t;

void processSingleChannel(double* input, double* output, distortion_state_t state);
