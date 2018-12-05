#include <stdio.h>
#include <dsplib\wavefile.h>
#include <stdfix.h>
#include <string.h>
#include "distortion2.h"
#include "common.h"
#include "processing.h"


DSPfract sampleBuffer[MAX_NUM_CHANNEL][BLOCK_SIZE];
distortion_state_t my_state;
DSPint CURRENT_CH_NUM = 6;
DSPint distorsion_mode = 0;
//DSPaccum distorsion_gain = 1.8;
 
int main(int argc, char *argv[])
 {
    WAVREAD_HANDLE *wav_in;
    WAVWRITE_HANDLE *wav_out;
	
	char WavInputName[256];
	char WavOutputName[256];
	
    int nChannels;
	int bitsPerSample;
    int sampleRate;
    int iNumSamples;
    int i;
    int j;
    DSPaccum tmp;
    DSPfract distorsion_gain;

	// Init channel buffers
	//for(i=0; i<MAX_NUM_CHANNEL; i++)
	//	memset(&sampleBuffer[i],0,BLOCK_SIZE);

    for(i=0; i<MAX_NUM_CHANNEL; i++)
    		for( j=0; j<BLOCK_SIZE; j++)
    			sampleBuffer[i][j] = FRACT_NUM(0.0);
    
	// Open input wav file
	//-------------------------------------------------
	//strcpy(WavInputName,argv[1]);
	strcpy(WavInputName,"../../TestStreams/Tone_L1k_R3k.wav");
	wav_in = cl_wavread_open(WavInputName);
	 if(wav_in == NULL)
    {
        printf("Error: Could not open wavefile.\n");
        return -1;
    }
	//-------------------------------------------------
	
	// Read input wav header
	//-------------------------------------------------
	nChannels = cl_wavread_getnchannels(wav_in);
    bitsPerSample = cl_wavread_bits_per_sample(wav_in);
    sampleRate = cl_wavread_frame_rate(wav_in);
    iNumSamples =  cl_wavread_number_of_frames(wav_in);
	//-------------------------------------------------
	
	// Open output wav file
	//-------------------------------------------------
	//strcpy(WavOutputName,argv[2]);
    strcpy(WavOutputName,"../../outSpeech/out_model3.wav");
	wav_out = cl_wavwrite_open(WavOutputName, bitsPerSample, CURRENT_CH_NUM, sampleRate);
	if(!wav_out)
    {
        printf("Error: Could not open wavefile.\n");
        return -1;
    }
	//-------------------------------------------------
	
	// Processing loop
	//-------------------------------------------------	
    {
		int i;
		int j;
		int k;
		int sample;
		
		// exact file length should be handled correctly...
		for(i=0; i<iNumSamples/BLOCK_SIZE; i++)
		{	
			for(j=0; j<BLOCK_SIZE; j++)
			{
				for(k=0; k<nChannels; k++)
				{	
					sample = cl_wavread_recvsample(wav_in);
        			sampleBuffer[k][j] = rbits(sample);
				}
			}

			tmp = 1.8;
			tmp >>= 1;
			distorsion_gain = (DSPfract)tmp;
			distortionInit(&my_state, (clipping_type_t)distorsion_mode, distorsion_gain); //Initialize structure for distortion
			processing();

			for(j=0; j<BLOCK_SIZE; j++)
			{
				for(k=0; k<CURRENT_CH_NUM; k++)
				{	
					sample = bitsr(sampleBuffer[k][j]);
					cl_wavwrite_sendsample(wav_out, sample);
				}
			}		
		}
	}
	
	// Close files
	//-------------------------------------------------	
    cl_wavread_close(wav_in);
    cl_wavwrite_close(wav_out);
	//-------------------------------------------------	

    return 0;
 }
