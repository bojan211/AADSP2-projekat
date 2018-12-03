
#include <stdlib.h>
#include <string.h>
#include "WAVheader.h"
#include "distortion2.h"

#define BLOCK_SIZE 16
#define MAX_NUM_CHANNEL 8

#define GAIN_MINUS_1DB 0.891251
#define GAIN_MINUS_2DB 0.794328
#define GAIN_MINUS_3DB 0.707946
#define GAIN_MINUS_4DB 0.630957
#define GAIN_MINUS_6DB 0.501187

double sampleBuffer[MAX_NUM_CHANNEL][BLOCK_SIZE];
distortion_state_t my_state;


void processing() 
{
	int i;
	
	
	for (i = 0; i < BLOCK_SIZE; i++)
	{
		sampleBuffer[0][i] *= GAIN_MINUS_6DB;                      //L * -6db
		sampleBuffer[1][i] *= GAIN_MINUS_6DB;					   //R * -6db
		
		sampleBuffer[3][i] = sampleBuffer[0][i] * GAIN_MINUS_2DB;  //LS CHANELL
		sampleBuffer[4][i] = sampleBuffer[1][i] * GAIN_MINUS_1DB;  //RS CHANELL
		sampleBuffer[2][i] = (sampleBuffer[0][i] + sampleBuffer[1][i]) * GAIN_MINUS_6DB; //C CHANELL
		sampleBuffer[0][i] = sampleBuffer[2][i] * GAIN_MINUS_3DB; //L CHANELL
		sampleBuffer[1][i] = sampleBuffer[2][i] * GAIN_MINUS_4DB; //R CHANELL
		processSingleChannel(sampleBuffer[2], sampleBuffer[5], my_state); //LFE CHANELL
	}
}

int main(int argc, char* argv[])
{
	FILE *wav_in=NULL;
	FILE *wav_out=NULL;
	char WavInputName[256];
	char WavOutputName[256];
	WAV_HEADER inputWAVhdr,outputWAVhdr;	

	// Init channel buffers
	for(int i=0; i<MAX_NUM_CHANNEL; i++)
		memset(&sampleBuffer[i],0,BLOCK_SIZE);

	// Open input and output wav files
	//-------------------------------------------------
	strcpy(WavInputName,argv[1]);
	wav_in = OpenWavFileForRead (WavInputName,"rb");
	strcpy(WavOutputName,argv[2]);
	wav_out = OpenWavFileForRead (WavOutputName,"wb");
	//-------------------------------------------------

	// Read input wav header
	//-------------------------------------------------
	ReadWavHeader(wav_in,inputWAVhdr);
	//-------------------------------------------------
	
	// Set up output WAV header
	//-------------------------------------------------	
	outputWAVhdr = inputWAVhdr;
	//outputWAVhdr.fmt.NumChannels = inputWAVhdr.fmt.NumChannels; // change number of channels
	outputWAVhdr.fmt.NumChannels = 6;

	int oneChannelSubChunk2Size = inputWAVhdr.data.SubChunk2Size/inputWAVhdr.fmt.NumChannels;
	int oneChannelByteRate = inputWAVhdr.fmt.ByteRate/inputWAVhdr.fmt.NumChannels;
	int oneChannelBlockAlign = inputWAVhdr.fmt.BlockAlign/inputWAVhdr.fmt.NumChannels;
	
	outputWAVhdr.data.SubChunk2Size = oneChannelSubChunk2Size*outputWAVhdr.fmt.NumChannels;
	outputWAVhdr.fmt.ByteRate = oneChannelByteRate*outputWAVhdr.fmt.NumChannels;
	outputWAVhdr.fmt.BlockAlign = oneChannelBlockAlign*outputWAVhdr.fmt.NumChannels;


	// Write output WAV header to file
	//-------------------------------------------------
	WriteWavHeader(wav_out,outputWAVhdr);


	// Processing loop
	//-------------------------------------------------	
	{
		int sample;
		int BytesPerSample = inputWAVhdr.fmt.BitsPerSample/8;
		const double SAMPLE_SCALE = -(double)(1 << 31);		//2^31
		int iNumSamples = inputWAVhdr.data.SubChunk2Size/(inputWAVhdr.fmt.NumChannels*inputWAVhdr.fmt.BitsPerSample/8);
		
		// exact file length should be handled correctly...
		for(int i=0; i<iNumSamples/BLOCK_SIZE; i++)
		{	
			for(int j=0; j<BLOCK_SIZE; j++)
			{
				for(int k=0; k<inputWAVhdr.fmt.NumChannels; k++)
				{	
					sample = 0; //debug
					fread(&sample, BytesPerSample, 1, wav_in);
					sample = sample << (32 - inputWAVhdr.fmt.BitsPerSample); // force signextend
					sampleBuffer[k][j] = sample / SAMPLE_SCALE;				// scale sample to 1.0/-1.0 range		
				}
			}

			distortionInit(&my_state, 16, (clipping_type_t)atoi(argv[3]), (float)atof(argv[4]));
			processing();

			for(int j=0; j<BLOCK_SIZE; j++)
			{
				for(int k=0; k<outputWAVhdr.fmt.NumChannels; k++)
				{	
					sample = sampleBuffer[k][j] * SAMPLE_SCALE ;	// crude, non-rounding 			
					sample = sample >> (32 - inputWAVhdr.fmt.BitsPerSample);
					fwrite(&sample, outputWAVhdr.fmt.BitsPerSample/8, 1, wav_out);		
				}
			}		
		}
	}
	
	// Close files
	//-------------------------------------------------	
	fclose(wav_in);
	fclose(wav_out);
	//-------------------------------------------------	

	return 0;
}