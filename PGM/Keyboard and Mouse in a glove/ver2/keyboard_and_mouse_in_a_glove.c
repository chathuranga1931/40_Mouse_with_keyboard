
#include<pic.h>

#define _XTAL_FREQ 4000000

#define POS_1 RD7
#define POS_2 RD3
#define POS_3 RB4
#define POS_4 RB0
#define POS_5 RD4
#define POS_6 RB2
#define POS_7 RB3
#define POS_8 RD5
#define POS_9 RB1
#define POS_10 RC5
#define POS_11 RD6
#define POS_12 RB5

bit nop;

//**** A2D converter ****//
void a2d_read();
unsigned int read_a2d_value( char channel );
unsigned short long vblAccX;
unsigned short long vblAccY;

//**** Timer1 ****//
char msecond=0,second=0,minute=0,hour=0;

void InterruptEn();

//**** ProperVariables ****//	//Declarations with this scope is specialy for this Code
unsigned int counter;
char prevChar;
bit MOUSE_SELECT 	= 0;

//**** Proper Functions ****//
void KeySend(char key);
void MouseSendLC();
void MouseSendRC();

void main(){
	
	TRISA	= 0b11111111; // all pins are input	
	//PORTA 	= 0b00000000; // clear all
	
	TRISB 	= 0b11111111;	// set all as inputs
	//PORTB 	= 0b00000000; // clear all
	
	TRISC	= 0b10111110; // set all as the inputs and RC6 as output for rs232 transmition and RC0 as output _blinking led
	PORTC 	= 0b00000010; // clear all	
	
	TRISD 	= 0b11111111; // set all bits as inputs
	
	TRISE	= 0b00000000; //set portd as input output bits
	
	ADCON0	= 0b01000000;	// adon= 1 ,Fosc /8 , go = 0 chanel selected to RA0 & RA1
	ADCON1	= 0b10000100;	// selected RIGHT justify,AN0,AN1,AN3 analogue others are digital	
	
	//**** RS232 initailizyng ****//
	SPBRG	= 25;				// 9600 bpS		
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
	__delay_ms(500);	
		
	//**** timer 1 initialyzing ****//
	T1CKPS1	= 0;
	T1CKPS0	= 1;  // prescaler chage to 2:1
	TMR1CS	= 0; // timer 1 clock sorce selected to internal
	TMR1ON	= 1; // timer 1 on
	T1OSCEN	= 0; // timer 1 oscillator enable enabled //disabled
	TMR1L	= 0xB0;
	TMR1H	= 60; // timer 1 selected to "0"   to 15536( to make 50000 counts for 1 over flow)	
	TMR1IE	= 1;
	
	//**** OPTION_REG REGISTER *****//
	OPTION_REG =0b01111111 & OPTION_REG;	//RBPU = 0;	// set as pullups	// external interrupt controlling bit
		
	// turn on timer interrupt and uart receive interrupt
	InterruptEn();
	
	//for testing purposes
	MOUSE_SELECT = 0;	
	
	while(1){
		nop=1;	
		if (MOUSE_SELECT == 1){	// this is indicate that mouse is selected
			
			a2d_read();
			
			while(!TXIF);//wait, buffer empty?
			TXREG = '%';	
			while(!TXIF);//wait, buffer empty?
			TXREG = 'X';	
			while(!TXIF);//wait, buffer empty?
			TXREG = vblAccX/100 + 48;	
			while(!TXIF);//wait, buffer empty?
			TXREG = vblAccX%100/10 + 48;	
			while(!TXIF);//wait, buffer empty?
			TXREG = vblAccX%100%10 + 48;	
			while(!TXIF);//wait, buffer empty?
			TXREG = '?';
			
			while(!TXIF);//wait, buffer empty?
			TXREG = '%';	
			while(!TXIF);//wait, buffer empty?
			TXREG = 'Y';
			while(!TXIF);//wait, buffer empty?
			TXREG = vblAccY/100 + 48;	
			while(!TXIF);//wait, buffer empty?
			TXREG = vblAccY%100/10 + 48;	
			while(!TXIF);//wait, buffer empty?
			TXREG = vblAccY%100%10 + 48;
			while(!TXIF);//wait, buffer empty?
			TXREG = '?';
			
			__delay_ms(30);
			
			if( POS_10!=0 ){
				//to get the input of mouse select
				// this delay for remove the debouncing
				__delay_ms(50);	while(POS_1!=0); __delay_ms(30);	while(POS_1!=0);	__delay_ms(30);	while(POS_1!=0);	__delay_ms(30);	while(POS_1!=0);
				KeySend(' ');
				KeySend(' ');
				MOUSE_SELECT = 0;					
			}
			else if( POS_2!=0 ){					
				nop=1;	
				
				// this delay for remove the debouncing
				__delay_ms(50);	while(POS_1!=0); __delay_ms(30);	while(POS_1!=0);	__delay_ms(30);	while(POS_1!=0);	__delay_ms(30);	while(POS_1!=0);
				MouseSendLC();
			}
			else if( POS_3!=0 ){					
				nop=1;	
				
				// this delay for remove the debouncing
				__delay_ms(50);	while(POS_1!=0); __delay_ms(30);	while(POS_1!=0);	__delay_ms(30);	while(POS_1!=0);	__delay_ms(30);	while(POS_1!=0);
				MouseSendRC();
			}				
		}
		else	//keyboard selected
		{	
			if( POS_1!=0 ){
				nop=1;	
				
				// this delay for remove the debouncing
				__delay_ms(50);	while(POS_1!=0); __delay_ms(30);	while(POS_1!=0);	__delay_ms(30);	while(POS_1!=0);	__delay_ms(30);	while(POS_1!=0);
					
				// this key is not pressed before
				if ( counter==0 ){	KeySend('1');	prevChar='1';	counter = 10;	}
				
			}		
			else if( POS_2!=0 ){					
				nop=1;	
				
				// this delay for remove the debouncing
				__delay_ms(50);	while(POS_1!=0); __delay_ms(30);	while(POS_1!=0);	__delay_ms(30);	while(POS_1!=0);	__delay_ms(30);	while(POS_1!=0);
					
				// this key is not pressed before
				if ( counter==0 ){	KeySend('A');	prevChar='A';	counter = 10;	}
				else if( prevChar=='A' ){	KeySend('^');	KeySend('B');	prevChar='B';	counter = 10;	}		
				else if( prevChar=='B' ){	KeySend('^');	KeySend('C');	prevChar='C';	counter = 10;	}			
				else if( prevChar=='C' ){	KeySend('^');	KeySend('2');	prevChar='2';	counter = 10;	}			
				else if( prevChar=='2' ){	KeySend('^');	KeySend('A');	prevChar='A';	counter = 10;	}
				else {	KeySend('A');	prevChar='A';	counter = 10;	}
			}	
			//**** DEF ****//
			else if( POS_3!=0 ){	
				nop=1;	
				
				// this delay for remove the debouncing
				__delay_ms(50);	while(POS_1!=0); __delay_ms(30);	while(POS_1!=0);	__delay_ms(30);	while(POS_1!=0);	__delay_ms(30);	while(POS_1!=0);
					
				// this key is not pressed before
				if ( counter==0 ){	KeySend('D');	prevChar='D';	counter = 10;	}
				else if( prevChar=='D' ){	KeySend('^');	KeySend('E');	prevChar='E';	counter = 10;	}		
				else if( prevChar=='E' ){	KeySend('^');	KeySend('F');	prevChar='F';	counter = 10;	}			
				else if( prevChar=='F' ){	KeySend('^');	KeySend('3');	prevChar='3';	counter = 10;	}			
				else if( prevChar=='3' ){	KeySend('^');	KeySend('D');	prevChar='D';	counter = 10;	}
				else {	KeySend('D');	prevChar='D';	counter = 10;	}
			}
			//**** GHI ****//	
			else if( POS_4!=0 ){	
				nop=1;	
				
				// this delay for remove the debouncing
				__delay_ms(50);	while(POS_1!=0); __delay_ms(30);	while(POS_1!=0);	__delay_ms(30);	while(POS_1!=0);	__delay_ms(30);	while(POS_1!=0);
					
				// this key is not pressed before
				if ( counter==0 ){	KeySend('G');	prevChar='G';	counter = 10;	}
				else if( prevChar=='G' ){	KeySend('^');	KeySend('H');	prevChar='H';	counter = 10;	}		
				else if( prevChar=='H' ){	KeySend('^');	KeySend('I');	prevChar='I';	counter = 10;	}			
				else if( prevChar=='I' ){	KeySend('^');	KeySend('4');	prevChar='4';	counter = 10;	}			
				else if( prevChar=='4' ){	KeySend('^');	KeySend('G');	prevChar='G';	counter = 10;	}
				else {	KeySend('G');	prevChar='G';	counter = 10;	}
			}
			//**** JKL ****//	
			else if( POS_5!=0){	
				nop=1;	
				
				// this delay for remove the debouncing
				__delay_ms(50);	while(POS_1!=0); __delay_ms(30);	while(POS_1!=0);	__delay_ms(30);	while(POS_1!=0);	__delay_ms(30);	while(POS_1!=0);
					
				// this key is not pressed before
				if ( counter==0 ){	KeySend('J');	prevChar='J';	counter = 10;	}
				else if( prevChar=='J' ){	KeySend('^');	KeySend('K');	prevChar='K';	counter = 10;	}		
				else if( prevChar=='K' ){	KeySend('^');	KeySend('L');	prevChar='L';	counter = 10;	}			
				else if( prevChar=='L' ){	KeySend('^');	KeySend('5');	prevChar='5';	counter = 10;	}			
				else if( prevChar=='5' ){	KeySend('^');	KeySend('J');	prevChar='J';	counter = 10;	}
				else {	KeySend('J');	prevChar='J';	counter = 10;	}
			}
			
			//**** MNO ****//	
			else if( POS_6!=0){	
				nop=1;	
				
				// this delay for remove the debouncing
				__delay_ms(50);	while(POS_1!=0); __delay_ms(30);	while(POS_1!=0);	__delay_ms(30);	while(POS_1!=0);	__delay_ms(30);	while(POS_1!=0);
					
				// this key is not pressed before
				if ( counter==0 ){	KeySend('M');	prevChar='M';	counter = 10;	}
				else if( prevChar=='M' ){	KeySend('^');	KeySend('N');	prevChar='N';	counter = 10;	}		
				else if( prevChar=='N' ){	KeySend('^');	KeySend('O');	prevChar='O';	counter = 10;	}			
				else if( prevChar=='O' ){	KeySend('^');	KeySend('6');	prevChar='6';	counter = 10;	}			
				else if( prevChar=='6' ){	KeySend('^');	KeySend('M');	prevChar='M';	counter = 10;	}
				else {	KeySend('M');	prevChar='M';	counter = 10;	}
			}
			//**** PQRS ****//	
			else if( POS_7!=0){	
				nop=1;	
				
				// this delay for remove the debouncing
				__delay_ms(50);	while(POS_1!=0); __delay_ms(30);	while(POS_1!=0);	__delay_ms(30);	while(POS_1!=0);	__delay_ms(30);	while(POS_1!=0);
					
				// this key is not pressed before
				if ( counter==0 ){	KeySend('P');	prevChar='P';	counter = 10;	}
				else if( prevChar=='P' ){	KeySend('^');	KeySend('Q');	prevChar='Q';	counter = 10;	}		
				else if( prevChar=='Q' ){	KeySend('^');	KeySend('R');	prevChar='R';	counter = 10;	}			
				else if( prevChar=='R' ){	KeySend('^');	KeySend('S');	prevChar='S';	counter = 10;	}			
				else if( prevChar=='S' ){	KeySend('^');	KeySend('7');	prevChar='7';	counter = 10;	}			
				else if( prevChar=='7' ){	KeySend('^');	KeySend('P');	prevChar='P';	counter = 10;	}
				else {	KeySend('P');	prevChar='P';	counter = 10;	}
			}	
			//**** TUV ****//	
			else if( POS_8!=0){	
				nop=1;	
				
				// this delay for remove the debouncing
				__delay_ms(50);	while(POS_1!=0); __delay_ms(30);	while(POS_1!=0);	__delay_ms(30);	while(POS_1!=0);	__delay_ms(30);	while(POS_1!=0);
					
				// this key is not pressed before
				if ( counter==0 ){	KeySend('T');	prevChar='T';	counter = 10;	}
				else if( prevChar=='T' ){	KeySend('^');	KeySend('U');	prevChar='U';	counter = 10;	}		
				else if( prevChar=='U' ){	KeySend('^');	KeySend('V');	prevChar='V';	counter = 10;	}			
				else if( prevChar=='V' ){	KeySend('^');	KeySend('8');	prevChar='8';	counter = 10;	}			
				else if( prevChar=='8' ){	KeySend('^');	KeySend('T');	prevChar='T';	counter = 10;	}
				else {	KeySend('T');	prevChar='T';	counter = 10;	}
			}	
			//**** WXYZ ****//	
			else if( POS_9!=0 ){	
				nop=1;	
				
				// this delay for remove the debouncing
				__delay_ms(50);	while(POS_1!=0); __delay_ms(30);	while(POS_1!=0);	__delay_ms(30);	while(POS_1!=0);	__delay_ms(30);	while(POS_1!=0);
					
				// this key is not pressed before
				if ( counter==0 ){	KeySend('W');	prevChar='W';	counter = 10;	}
				else if( prevChar=='W' ){	KeySend('^');	KeySend('X');	prevChar='X';	counter = 10;	}		
				else if( prevChar=='X' ){	KeySend('^');	KeySend('Y');	prevChar='Y';	counter = 10;	}			
				else if( prevChar=='Y' ){	KeySend('^');	KeySend('Z');	prevChar='Z';	counter = 10;	}			
				else if( prevChar=='Z' ){	KeySend('^');	KeySend('9');	prevChar='9';	counter = 10;	}			
				else if( prevChar=='9' ){	KeySend('^');	KeySend('W');	prevChar='W';	counter = 10;	}
				else {	KeySend('W');	prevChar='W';	counter = 10;	}
			}
			else if( POS_10!=0 ){
				//to get the input of mouse select
				// this delay for remove the debouncing
				__delay_ms(50);	while(POS_1!=0); __delay_ms(30);	while(POS_1!=0);	__delay_ms(30);	while(POS_1!=0);	__delay_ms(30);	while(POS_1!=0);
			
				MOUSE_SELECT = 1;	
				
			}	
			else if( POS_11!=0 ){	
				nop=1;	
				
				// this delay for remove the debouncing
				__delay_ms(50);	while(POS_1!=0); __delay_ms(30);	while(POS_1!=0);	__delay_ms(30);	while(POS_1!=0);	__delay_ms(30);	while(POS_1!=0);
					
				// this key is not pressed before
				if ( counter==0 ){	KeySend('0');	prevChar='0';	counter = 10;	}
			}	
			else if( POS_12!=0 ){
				// this delay for remove the debouncing
				__delay_ms(50);	while(POS_1!=0); __delay_ms(30);	while(POS_1!=0);	__delay_ms(30);	while(POS_1!=0);	__delay_ms(30);	while(POS_1!=0);
					
				// this key is not pressed before
				if ( counter==0 ){	KeySend('^');	prevChar='^';	counter = 10;	}
			}	
		}					
		nop=1;			
	}	
}

void interrupt isr()
{	
	//InterruptEn();
	if(TMR1IF==1){	
		//this is for error correcting system of rs232 receiving 	
		//if (OERR){ CREN = 0; __delay_ms(1); CREN = 1; }
		
		//interrupt genarates for 100ms
		if( counter>0 ) counter--;
		msecond ++;
		if(msecond == 10)
		{
			second ++;
			msecond = 0;
			RC0 = !RC0;	
			if( second == 60)
			{			
				minute ++;			
				second = 0;					
				if( minute == 60)
				{
					minute = 0;
					hour ++;
					if( hour == 24)	hour == 0;
				}
			}
		}	
		TMR1L	= 176;
		TMR1H	= 60;
		TMR1IF	= 0;
	}	
}

void InterruptEn(){	
	
	RBIE	= 0;	//portb external interrupt enable pin
	INTE	= 0;	//turn of external interrupts for PORTB
	
	PSPIE	= 0;	//parallel slave port interrupt enable bit
	ADIE	= 0;
	
	TXIE	= 0;	//tx interrupt enable		
	RCIE	= 0;	//Disable Rx interrupt enable (PIE1)
	
	SSPIE	= 0;	//synchronus serial port
	CCP1IE	= 0; 	//capture compare interrupt enable
		
	TMR1IE	= 1;	//Timer1 interrupt enable
	TMR2IE 	= 0;	//timer 2 interrupt enable	
	T0IE	= 0; 	//Timet 0 interrupt enable
	
	EEIE	= 0;	//eeprom write interrupt
	BCLIE	= 0;	//bus collision interrupt enable
	CCP2IE	= 0;	//capture comprare interrupt enable
	
	//Set enable globle interrupt enable and pheripheral interrupt enable
	GIE		= 1;
	PEIE	= 1;
	
}	

void MouseSendLC(){		
	while(!TXIF);//wait, buffer empty?
	TXREG = '%';	
	while(!TXIF);//wait, buffer empty?
	TXREG = 'L';	
	while(!TXIF);//wait, buffer empty?
	TXREG = ' ';	
	while(!TXIF);//wait, buffer empty?
	TXREG = ' ';	
	while(!TXIF);//wait, buffer empty?
	TXREG = ' ';	
	while(!TXIF);//wait, buffer empty?
	TXREG = '?';
}

void MouseSendRC(){		
	while(!TXIF);//wait, buffer empty?
	TXREG = '%';	
	while(!TXIF);//wait, buffer empty?
	TXREG = 'R';	
	while(!TXIF);//wait, buffer empty?
	TXREG = ' ';	
	while(!TXIF);//wait, buffer empty?
	TXREG = ' ';	
	while(!TXIF);//wait, buffer empty?
	TXREG = ' ';	
	while(!TXIF);//wait, buffer empty?
	TXREG = '?';
}

void MouseSend(char dir,char pos){		
	while(!TXIF);//wait, buffer empty?
	TXREG = '%';	
	while(!TXIF);//wait, buffer empty?
	TXREG = 'M';	
	while(!TXIF);//wait, buffer empty?
	TXREG = dir;		// direction can be L,R,U,D	
	while(!TXIF);//wait, buffer empty?
	TXREG = 'T';	
	while(!TXIF);//wait, buffer empty?
	TXREG = pos;	
	while(!TXIF);//wait, buffer empty?
	TXREG = '?';
}

void KeySend(char key){
	while(!TXIF);//wait, buffer empty?
	TXREG = '%';	
	while(!TXIF);//wait, buffer empty?
	TXREG = 'K';	
	while(!TXIF);//wait, buffer empty?
	TXREG = key;	
	while(!TXIF);//wait, buffer empty?
	TXREG = ' ';	
	while(!TXIF);//wait, buffer empty?
	TXREG = ' ';	
	while(!TXIF);//wait, buffer empty?
	TXREG = '?';
}		

void a2d_read(){
	read_a2d_value(0);
	vblAccX 	= read_a2d_value(0);	// read RA0 a2d value
	read_a2d_value(1);
	vblAccY 	= read_a2d_value(1);	// read RA1 a2d value
	
 	if(vblAccX > 402) vblAccX = 402;
	else if ( vblAccX < 262) vblAccX = 262;	
	if(vblAccY > 406) vblAccY = 406;
	else if ( vblAccY < 266) vblAccY = 266;		
}	


unsigned int read_a2d_value( char channel )
{
	unsigned int a2d_value;			
	channel = channel << 3;
	ADCON0	= ADCON0 & 0b11000111;
	ADCON0	= ADCON0 | channel;
	ADON	= 1;
	_delay(50);
	GO	= 1;
	while( GO == 1 );
	{
	
	}
	a2d_value	= ADRESH;
	a2d_value	= a2d_value << 8;
	a2d_value	= a2d_value + ADRESL;	// set a2d value to 1023
	return	a2d_value;	
}
