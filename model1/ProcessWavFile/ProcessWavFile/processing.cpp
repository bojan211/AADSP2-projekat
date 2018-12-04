#include "processing.h"
#include "distortion2.h"

extern double sampleBuffer[MAX_NUM_CHANNEL][BLOCK_SIZE];
double* SB_pok;

void processing() 
{
	int i;
	SB_pok = sampleBuffer[0];
	
	for (i = 0; i < BLOCK_SIZE; i++)
	{
		*SB_pok *= GAIN_MINUS_6DB;										//L * -6db
		*(SB_pok + BLOCK_SIZE) *= GAIN_MINUS_6DB;					    //R * -6db
		
		*(SB_pok + 3 * BLOCK_SIZE) = *SB_pok * GAIN_MINUS_2DB;  //LS CHANELL
		*(SB_pok + 4 * BLOCK_SIZE) = *(SB_pok + BLOCK_SIZE) * GAIN_MINUS_1DB;  //RS CHANELL
		*(SB_pok + 2 * BLOCK_SIZE) = (*SB_pok + *(SB_pok + BLOCK_SIZE)) * GAIN_MINUS_6DB; //C CHANELL
		*SB_pok = *(SB_pok + 2 * BLOCK_SIZE) * GAIN_MINUS_3DB; //L CHANELL
		*(SB_pok + BLOCK_SIZE) = *(SB_pok + 2 * BLOCK_SIZE) * GAIN_MINUS_4DB; //R CHANELL
		processSingleChannel((SB_pok + 2 * BLOCK_SIZE), (SB_pok + 5 * BLOCK_SIZE)); //LFE CHANELL
		SB_pok++;
	}
}