
//***********************************************************************************************************************************
//**************************************************** A2D INITIOLIZING  ****************************************************************** 


void atod_init()
{
	ADCON0	= 0b01000000;	// adon= 1 ,Fosc /8 , go = 0 chanel selected to RA0 & RA1
	ADCON1	= 0b10000100;	// selected RIGHT justify,AN0,AN1,AN3 analogue others are digital
}








