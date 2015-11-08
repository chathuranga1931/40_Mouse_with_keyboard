
//********************** Init System ********************// 

void init_sys()

/***********************************************************************************************************************
**************************************** PORT cofigeration ************************************************************/ 


#define _XTAL_FREQ		4000000
	
{
	TRISA	= 0b11111111; // all pins are input	
	PORTA 	= 0b00000000; // clear all
	
	TRISB	= 0b00000000; // all are outputs
	PORTB	= 0b00000000; // clear all
	
	TRISC	= 0b10000000; // only RC5 output
	PORTC 	= 0b00000000; // clear all
}


/***********************************************************************************************************************
**************************************** A2D cofigeration **************************************************************/


void atod_init()
{
	ADCON0	= 0b01000000;	// adon= 1 ,Fosc /8 , go = 0 chanel selected to RA0 & RA1
	ADCON1	= 0b10000100;	// selected RIGHT justify,AN0,AN1,AN3 analogue others are digital
}


/***********************************************************************************************************************
**************************************** TIMER 1 Initiolizing *********************************************************/
void timer1_init()
{
	 
	

	T1CKPS1	= 0;
	T1CKPS0	= 1;  // prescaler chage to 2:1

	TMR1CS	= 0; // timer 1 clock sorce selected to internal
	TMR1ON	= 1; // timer 1 on
	T1OSCEN	= 1; // timer 1 oscillator enable enabled //disabled

	TMR1L	= 0xB0;
	TMR1H	= 0x3C; // timer 1 selected to "0"   to 15536( to make 50000 counts for 1 over flow)
	
	// 50000 * 2 = 1000000s are ready
	// T1CON	= 0b00000001;
}

//*********************************************************************************************************************/*

/***********************************************************************************************************************
**************************************** Interrupt_enable *********************************************************/
void interrupt_enable(char module)
{
	 
	if ( module == 0)	TMR0IE	= 1; // timer 0
	if ( module == 1)	TMR1IE	= 1; // timer 1
	if ( module == 2)	RCIE	= 1; // USART receive interrupt
	GIE		= 1;
	PEIE	= 1;

}
//**********************************************************************************************************************


void rs232_init()
{
		
	
	
	TRISC=0x80;	// RC7 input
	
	SPBRG=25;	// 9600 bpS		
	SPEN	= 1;			//Serial Port Enable(RCSTA)
	RX9		= 0;			//8 bit reception		
	CREN	= 1;			//Enable continuous receive
	TX9		= 0;			//8bit transmission (TXSTA)
	TXEN	= 1;			//Tx Enable
	SYNC	= 0;			//Asynchronous mode
	BRGH	= 1;			//high speed	
	SPBRG	= 25;			//9600 BPS(0.16% error with osc 4Mz)
	RCIE	= 1;			//Enable Rx interrupt enable (PIE1)
	TXIE	= 0;			//Dissable Tx interrupt enable
	
   
}

void nop()
{
}