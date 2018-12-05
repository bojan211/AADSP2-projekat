#ifndef COMMON_H
#define COMMON_H
#include "stdfix_emu.h"
/* Basic constants */
/* TO DO: Move defined constants here */
/////////////////////////////////////////////////////////////////////////////////
// Constant definitions
/////////////////////////////////////////////////////////////////////////////////
#define BLOCK_SIZE 16
#define MAX_NUM_CHANNEL 8

#define GAIN_MINUS_1DB FRACT_NUM(0.891251)
#define GAIN_MINUS_2DB FRACT_NUM(0.794328)
#define GAIN_MINUS_3DB FRACT_NUM(0.707946)
#define GAIN_MINUS_4DB FRACT_NUM(0.630957)
#define GAIN_MINUS_6DB FRACT_NUM(0.501187)
/////////////////////////////////////////////////////////////////////////////////

/* DSP type definitions */

typedef short DSPshort;					/* DSP integer */
typedef unsigned short DSPushort;		/* DSP unsigned integer */
typedef int DSPint;						/* native integer */
typedef fract DSPfract;					/* DSP fixed-point fractional */
typedef long_accum DSPaccum;			/* DSP fixed-point fractional */


#endif
