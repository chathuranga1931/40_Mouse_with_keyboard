
#define _XTAL_FREQ	4000000
#include<pic.h>
unsigned char a;

void main()
{ 
	
	TRISB	= 0b00000000; // all are outputs
	PORTB	= 0b00000000; // clear all
	
	while(1)
	{			  //00abcdgg
				  //00ggdcba
		for(a= 0; a<=15; a++ )
		{ 
			PORTB	= a; // clear all
			__delay_ms(400);	// 10 to 400 OK
			PORTB	= 0b00110000; // clear all
			__delay_ms(500);
		}
		__delay_ms(1000);	
		/*
		PORTB	= 0b00100000; // clear all
		_delay(100);
		PORTB	= 0b00000011; // clear all
		_delay(100);
		PORTB	= 0b00010000; // clear all
		_delay(100);
		PORTB	= 0b00000011; // clear all
		_delay(100);
		PORTB	= 0b00110000; // clear all
		_delay(100);
		PORTB	= 0b00000011; // clear all
		_delay(100);
		*/
	}
}	