#ifndef COMMON_H
#define COMMON_H

/* Basic constants */
/* TO DO: Move defined constants here */
/////////////////////////////////////////////////////////////////////////////////
// Constant definitions
/////////////////////////////////////////////////////////////////////////////////
#define BLOCK_SIZE 16
#define MAX_NUM_CHANNEL 8

#define GAIN_MINUS_1DB 0.891251
#define GAIN_MINUS_2DB 0.794328
#define GAIN_MINUS_3DB 0.707946
#define GAIN_MINUS_4DB 0.630957
#define GAIN_MINUS_6DB 0.501187
/////////////////////////////////////////////////////////////////////////////////

/* DSP type definitions */

typedef short DSPshort;					/* DSP integer */
typedef unsigned short DSPushort;		/* DSP unsigned integer */
typedef int DSPint;						/* native integer */
typedef double DSPfract;				/* DSP fixed-point fractional */
typedef double DSPaccum;				/* DSP fixed-point fractional */


#endif