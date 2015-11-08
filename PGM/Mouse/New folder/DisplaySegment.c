

#define _XTAL_FREQ	4000000
#define delay	__delay_us(400)

#include <pic.h>
#include <stdio.h>	// to printf 
#include <htc.h>	// to eeprom

#include "lcd.h"
#include "init_sys.h"

#define time_period		30 // in minutes		

#define unit_id		45
#define UP		RD2			 	 
#define DOWN 	RD3
#define ENTER 	RD4	//RC3

unsigned short long temperature1;
unsigned short long temperature2;
unsigned short long temperature;



unsigned int temperature_1;
unsigned int temperature_2;

unsigned char v,y,z,w;
unsigned char x,bed_nu = 1;
unsigned char i = 1;


//**** EEPROM ****//
void eeprom_temp();
unsigned char value = 1;
unsigned char address = 0;
unsigned char address_se = 0;
unsigned char read_address = 0;

//**** TIMER1 ****//
void timer1_init();
unsigned int msecond;
unsigned int second;
unsigned int minute;	
unsigned int hour;
unsigned char j;

//**** RS232 ****//
void bdnu_unid();
void rs232_init();
unsigned char rc[9];


//**** A2D reading ****//
void a2d_read();
unsigned int read_a2d_value( char channel );

void interrupt_enable(char module);
void calculate();
void check_buttons();
void check_pc();

//   for accelero meter input
//------------------------------
unsigned int arrTestVal[5];
unsigned int vblAccX;
unsigned int vblAccY;
unsigned int vblSampleX1;
unsigned int vblSampleY1;
unsigned int vblSampleX2;
unsigned int vblSampleY2;

unsigned int vblDiffX, vblDiffY;
unsigned int vblDiffXpast, vblDiffYpast;	

unsigned int status=0;
// 1	left 
// 2	right
// 3 	up
// 4	down

void main()
{ 
	//__delay_ms(1000);
	rs232_init();
	init_sys();
	
	TRISD	= 0b00000000; // all are outputs
	PORTD	= 0b00000000; // clear all
	
	TRISE	= 0b00000000; // all are outputs
	PORTE	= 0b00000000; // clear all
	
	
	atod_init();
	lcd_init();
	//timer1_init();
	//interrupt_enable(1);	// timer 1 interrupt enabled
	//interrupt_enable(2);	// eeprom receive interrupt enable bit

	//RCIE	= 1;	
	//temperature1 	= 0;
	//temperature2 	= 0;
	///temperature		= 0;		

	//address = 0;
	
	a2d_read();
	
	//calculate();
	int i =0;
	//for(int du=1; du<=40-(316-vblAccY)/2; du++) __delay_ms(1);

	/*

	while(2)
	{
		for(i=0; i<=100; i++)
		{
			//right
			RD5=1;
			for(int du=1; du<=40-(vblAccX-352)/2; du++) __delay_ms(1);
			RD4=1;
			__delay_us(20);
			RD5=0;
			for(int du=1; du<=40-(vblAccX-352)/2; du++) delay;
			RD4=0;
			__delay_us(20);
			
			
			//left
			RD4=1;
			for(int du=1; du<=40-(312-vblAccX)/2; du++) __delay_ms(1);
			RD5=1;
			__delay_us(20);
			RD4=0;
			for(int du=1; du<=40-(312-vblAccX)/2; du++) __delay_ms(1);
			RD5=0;
			__delay_us(20);
		}
		nop();	
	}	
	for(i=0; i<=1000; i++)
	{
		//up
		RD6=1;
		for(int du=1; du<=40-(vblAccY-356)/2; du++) __delay_ms(1);
		RD7=1;
		__delay_us(20);
		RD6=0;
		for(int du=1; du<=40-(vblAccY-356)/2; du++) __delay_ms(1);
		RD7=0;
		__delay_us(20);
		
		//down
		RD7=1;
		for(int du=1; du<=40-(316-vblAccY)/2; du++) __delay_ms(1);
		RD6=1;
		__delay_us(20);
		RD7=0;
		for(int du=1; du<=40-(316-vblAccY)/2; du++) __delay_ms(1);
		RD6=0;
		__delay_us(20);
	}
	*/
	
				position(1,1);
				printf("Right");
				position(2,1);
				printf("Up   ");
	while(1)
	{	
	
			a2d_read();	
			
			//1
			while( vblAccX < 312 && vblAccY > 356 )
			{
				/*
				position(1,1);
				printf("Left ");
				position(2,1);
				printf("Up   ");
				__delay_ms(100);
				*/
				
				//left
				RD4=1;
				for(int du=1; du<=40-(312-vblAccX)/2; du++) delay;
				RD5=1;
				__delay_us(20);
				RD4=0;
				for(int du=1; du<=40-(312-vblAccX)/2; du++) delay;
				RD5=0;
				__delay_us(20);
				
					//up
				RD6=1;
				for(int du=1; du<=40-(vblAccY-356)/2; du++) delay;
				RD7=1;
				__delay_us(20);
				RD6=0;
				for(int du=1; du<=40-(vblAccY-356)/2; du++) delay;
				RD7=0;
				__delay_us(20);
				a2d_read();
				
			}
			//2
			while( vblAccX > 352 && vblAccY > 356 )
			{
				/*
				position(1,1);
				printf("Right");
				position(2,1);
				printf("Up   ");
				__delay_ms(100);
				*/
				
				//right
				RD5=1;
				for(int du=1; du<=40-(vblAccX-352)/2; du++) delay;
				RD4=1;
				__delay_us(20);
				RD5=0;
				for(int du=1; du<=40-(vblAccX-352)/2; du++) delay;
				RD4=0;
				__delay_us(20);
				
				
					//up
				RD6=1;
				for(int du=1; du<=40-(vblAccY-356)/2; du++) delay;
				RD7=1;
				__delay_us(20);
				RD6=0;
				for(int du=1; du<=40-(vblAccY-356)/2; du++) delay;
				RD7=0;
				__delay_us(20);
				a2d_read();
				
			}
			//3
			while( vblAccX < 312 && vblAccY < 316 )
			{
				/*
				position(1,1);
				printf("left ");
				position(2,1);
				printf("down ");
				__delay_ms(100);	
				*/
				
				//left
				RD4=1;
				for(int du=1; du<=40-(312-vblAccX)/2; du++) delay;
				RD5=1;
				__delay_us(20);
				RD4=0;
				for(int du=1; du<=40-(312-vblAccX)/2; du++) delay;
				RD5=0;
				__delay_us(20);	
				
						//down
				RD7=1;
				for(int du=1; du<=40-(316-vblAccY)/2; du++) delay;
				RD6=1;
				__delay_us(20);
				RD7=0;
				for(int du=1; du<=40-(316-vblAccY)/2; du++) delay;
				RD6=0;
				__delay_us(20);	
				a2d_read();	
			}
			//4
			while( vblAccX > 352  && vblAccY > 356 )
			{
				/*
				position(1,1);
				printf("right");
				position(2,1);
				printf("Up   ");
				__delay_ms(100);
				*/
				
				//right
				RD5=1;
				for(int du=1; du<=40-(vblAccX-352)/2; du++) delay;
				RD4=1;
				__delay_us(20);
				RD5=0;
				for(int du=1; du<=40-(vblAccX-352)/2; du++) delay;
				RD4=0;
				__delay_us(20);		
				
				
						//down
				RD7=1;
				for(int du=1; du<=40-(316-vblAccY)/2; du++) delay;
				RD6=1;
				__delay_us(20);
				RD7=0;
				for(int du=1; du<=40-(316-vblAccY)/2; du++) delay;
				RD6=0;
				__delay_us(20);	
				a2d_read();	
			}	
			//5
			while( vblAccX > 312 && vblAccX < 352  && vblAccY > 356 )
			{
				/*
				position(1,1);
				printf("mid  ");
				position(2,1);
				printf("Up   ");
				__delay_ms(100);
				*/
				
					//up
				RD6=1;
				for(int du=1; du<=40-(vblAccY-356)/2; du++) delay;
				RD7=1;
				__delay_us(20);
				RD6=0;
				for(int du=1; du<=40-(vblAccY-356)/2; du++) delay;
				RD7=0;
				__delay_us(20);	
				a2d_read();			
			}	
			//7
			while( vblAccX > 312 && vblAccX < 352  && vblAccY < 316 )
			{
				/*
				position(1,1);
				printf("mid  ");
				position(2,1);
				printf("Down ");
				__delay_ms(100);	
				*/
				
						//down
				RD7=1;
				for(int du=1; du<=40-(316-vblAccY)/2; du++) delay;
				RD6=1;
				__delay_us(20);
				RD7=0;
				for(int du=1; du<=40-(316-vblAccY)/2; du++) delay;
				RD6=0;
				__delay_us(20);	
				a2d_read();		
			}	
			//6
			while( vblAccY > 316 && vblAccY < 356  && vblAccX > 352 )
			{
				/*
				position(1,1);
				printf("mid  ");
				position(2,1);
				printf("Left ");
				__delay_ms(100);
				*/
				
				//right
				RD5=1;
				for(int du=1; du<=40-(vblAccX-352)/2; du++) delay;
				RD4=1;
				__delay_us(20);
				RD5=0;
				for(int du=1; du<=40-(vblAccX-352)/2; du++) delay;
				RD4=0;
				__delay_us(20);	
				a2d_read();			
			}	
			//8
			while( vblAccY > 316 && vblAccY < 356  && vblAccX < 312 )
			{
				/*
				position(1,1);
				printf("mid  ");
				position(2,1);
				printf("Right");
				__delay_ms(100);	
				*/
				
				//left
				RD4=1;
				for(int du=1; du<=40-(312-vblAccX)/2; du++) delay;
				RD5=1;
				__delay_us(20);
				RD4=0;
				for(int du=1; du<=40-(312-vblAccX)/2; du++) delay;
				RD5=0;
				__delay_us(20);	
				a2d_read();		
			}
			//0
			while( vblAccY > 316 && vblAccY < 356  && vblAccX > 312 && vblAccX < 352 )
			{
				/*
				position(1,1);
				printf("mid  ");
				position(2,1);
				printf("mid  ");
				__delay_ms(100);
				*/	
				a2d_read();			
			}	
			/*
			if(vblDiffXpast - vblAccX > 2)
			{
				RD4=1;
				__delay_us(100);
				RD5=1;
				__delay_us(100);
				RD4=0;
				__delay_us(100);
				RD5=0;
				__delay_us(100);
			}
			else if (vblAccX - vblDiffXpast > 2)
			{
				RD5=1;
				__delay_us(100);
				RD4=1;
				__delay_us(100);
				RD5=0;
				__delay_us(100);
				RD4=0;
				__delay_us(100);
			}	
			if(vblDiffYpast - vblAccY > 2)
			{
				RD6=1;
				__delay_us(100);
				RD7=1;
				__delay_us(100);
				RD6=0;
				__delay_us(100);
				RD7=0;
				__delay_us(100);
			}
			else if (vblAccY - vblDiffYpast > 2)
			{
				RD7=1;
				__delay_us(100);
				RD6=1;
				__delay_us(100);
				RD7=0;
				__delay_us(100);
				RD6=0;
				__delay_us(100);
			}
			vblDiffYpast = vblAccY;
			vblDiffXpast = vblAccX;	
			*/
			
			while(!TXIF);//wait, buffer empty?
			TXREG		= vblAccX/100 + 48;
			__delay_us(100);
			while(!TXIF);//wait, buffer empty?
			TXREG		= vblAccX%100/10 + 48;
			__delay_us(100);
			while(!TXIF);//wait, buffer empty?
			TXREG		= vblAccX%100%10 + 48;
			__delay_us(100);
			
			while(!TXIF);//wait, buffer empty?
			TXREG		= 9;
			__delay_us(100);
			
			while(!TXIF);//wait, buffer empty?
			TXREG		= vblAccY/100 + 48;
			__delay_us(100);
			while(!TXIF);//wait, buffer empty?
			TXREG		= vblAccY%100/10 + 48;
			__delay_us(100);
			while(!TXIF);//wait, buffer empty?
			TXREG		= vblAccY%100%10 + 48;
			__delay_us(100);
			
			while(!TXIF);//wait, buffer empty?
			TXREG		= 13;
			__delay_us(100);			
			
			__delay_ms(100);
			
		
	}
}

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ read a2d ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

void a2d_read()
{

	read_a2d_value(0);
	vblAccX 	= read_a2d_value(0);	// read RA0 a2d value
	read_a2d_value(1);
	vblAccY 	= read_a2d_value(1);	// read RA1 a2d value
	
	if(vblAccX > 402) vblAccX = 402;
	else if ( vblAccX < 262) vblAccX = 262;	
	if(vblAccY > 406) vblAccY = 406;
	else if ( vblAccY < 266) vblAccY = 266;	
	
}

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ reading a2d values ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

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

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ calculate function ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

void calculate()
{

	temperature1	= temperature1*500/1024;
	temperature_1	= temperature1*9/5 + 32; //To Farenhide
	temperature2	= temperature2*500/1024; 
	temperature_2	= temperature2*9/5 + 32; //To Farenhide
	temperature 	= (temperature1 + temperature2)/2;
	/*
	temperature1	= 29 + temperature1*9/10;
	temperature_1	= temperature1;
	temperature2	= 29 + temperature2*9/10;
	temperature_2	= temperature2;
	temperature 	= (temperature_1 + temperature_2)/2;
	*/
	/*	
		0V		=	77F		= 25C
		0.15V	= 	104F	= 40C
	 	10mV per C  and if  25C == a2d value is 0
	 	so the temperature is in between 97F - 104F acording to body temperature
	  	so the voltage is in between oV - 0.15V (0 - 30 temperature value) 
	*/

	nop();

}

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ interrupt function ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

void interrupt isr()
{
	
	if(TMR1IF==1)
	{	
		msecond ++;
		if(msecond == 10)
		{
			second ++;
			msecond = 0;
			if( second == 60)
			{
				minute ++;
				
				second = 0;

				/*~~~~~ write data to eeprom for time period ~~~~~*/
						

				x = minute%time_period ;
				if ( x == 0)	
				{
					eeprom_temp();
					nop(); 
				}
				
				/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
		
				if( minute == 60)
				{
					minute = 0;
					hour ++;
					if( hour == 24)	hour == 0;
				}
			}
		}
	
	
		
		TMR1IF	= 0;
		TMR1L	= 0xB0;
		TMR1H	= 0x3C;
	


	}
 
	if( RCIF == 1)
	{
		RCIF	= 0;
		if( RCREG=='*' || j>8 )
		{
			j=0;
		}
		rc[j] = RCREG;
		j ++;
		
		if( RCREG=='#' )
		{
			j=0;
		}
		
		nop();
		
	}

}

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ write to eeprom ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


void eeprom_temp()
{

	value = temperature ;
	eeprom_write(address, value );
	eeprom_write(255, address ); // write eeprom the address that write last 
	address ++ ;
	if(address == 255) address = 0;	

}

void check_buttons()
{

	unsigned char temp1,temp2 = 255, temp5,temp6;

	if ( ENTER == 0)
	{	 
		 
		
		__delay_ms(1000);
		if( ENTER == 0 )
		{
			bed_nu = i;
			position(1,1);
			printf(" Set bed No:%d   ",bed_nu);
			while (ENTER == 0);
			for(temp1 = 0; temp1 <= temp2; temp1 ++)
			{
				if ( UP == 0)
				{
					if ( i < 100 )i ++;
					temp2 = 255;
					bed_nu = i;
					position(1,1);
					printf(" Set bed Nu:%d   ",bed_nu);
					while ( UP == 0 );
				}	
				if ( DOWN == 0)
				{
					if ( i > 1)	i -- ;
					while ( DOWN == 0 );
					temp2 = 255;
					bed_nu = i;
					position(1,1);
					printf(" Set bed No:%d   ",bed_nu);
				}						
				if ( ENTER == 0 )
				{
					position(2,1);
					printf(" Bed nu changed ");
					temp2 = temp1;
					bed_nu = i;
					position(1,1);
					printf(" Set bed No:%d   ",bed_nu);
					while ( ENTER == 0 );
					clr_display();	
				}
			}	
		}
	}
	if( DOWN == 0 )
	{
		read_address = address;
		unsigned char temp3,temp4 =0;
		__delay_ms(500);
		if( DOWN == 0 )
		{
			for(temp5 = 0;temp5 <= temp6; temp5++ )	
			{
				if( UP == 0 )
				{
					if( temp4 >= 1 )
					{
						temp4 --;
						read_address ++;
						
					}
					temp6 = 255;
					while (UP == 0);		
				}
				if( DOWN == 0 )
				{
					temp6 = 255;
					temp4 ++;
					read_address --;	
					while (DOWN == 0);	
				}
				if( ENTER == 0 )
				{
					temp6 = temp5;
					while (ENTER == 0);	
				}
				temp3 = eeprom_read(read_address);  // read from EEPROM at address 255 to know the addres that updated last
				position(2,1);
				printf(" %d Temp : %dF     ", temp4,temp3);
			}
			temp3 = eeprom_read(read_address);  // read from EEPROM at address 255 to know the address that updated last
			position(2,1);
			printf(" %d Temp : %dF     ", temp4,temp3);
			while (DOWN == 0);				
		}	
	}
}

void check_pc()
{
	v = bed_nu/10;
	y = bed_nu%10;
	z = unit_id/10;
	w = unit_id%10;
				
	
		unsigned char yx,yy,yz;
	
		
		
	
	if( rc[0]=='*' && rc[1]=='r' && rc[2]=='q' && rc[3]=='s' && rc[4]=='t' && rc[5]==(48+v) && rc[6]==(48+y) && rc[7]==13 )
	{
		
		unsigned char saved_temp,yx,yy,yz,xx,xy,xz;
		int ab = 0;//address;

		RC2 = 1;	

		yx	= temperature/100;
		yy	= temperature%100/10;
		yz	= temperature%100%10;
	
		while( rc[7]==13 )
		{
			while(!TXIF);//wait, buffer empty?
			TXREG		= '*';
			__delay_us(100);
			bdnu_unid(); // show bed nu and unit id
			while(!TXIF);//wait, buffer empty?
			TXREG		= yx + 48;
			__delay_us(100);
			while(!TXIF);//wait, buffer empty?
			TXREG		= yy + 48;
			__delay_us(100);
			while(!TXIF);//wait, buffer empty?
			TXREG		= yz + 48;
			__delay_us(100);
			
				
			while( ab <= 255 )
			{
				saved_temp	= eeprom_read(ab);	// address, the adddress that saved data last
				xx	= saved_temp/100;
				xy	= saved_temp%100/10;
				xz	= saved_temp%100%10;
				while(!TXIF);//wait, buffer empty?
				TXREG		= xx + 48;
				__delay_us(100);
				while(!TXIF);//wait, buffer empty?
				TXREG		= xy + 48;
				__delay_us(100);
				while(!TXIF);//wait, buffer empty?
				TXREG		= xz + 48;
				__delay_us(100);
				ab++;
				rc[7]=20;
			}

			while(!TXIF);//wait, buffer empty?
			TXREG		= '#';
			__delay_us(100);
			while(!TXIF);//wait, buffer empty?
			TXREG		= '@';

			RC2 = 0;

		}
	}	
}	

void bdnu_unid()
{
	
	while(!TXIF);//wait, buffer empty?
	TXREG		= (z+48);
	__delay_us(100);
	while(!TXIF);//wait, buffer empty?
	TXREG		= (w+48);
	__delay_us(100);
	while(!TXIF);//wait, buffer empty?
	TXREG		= 13;
	__delay_us(100);
	while(!TXIF);//wait, buffer empty?
	TXREG		= (v+48);
	__delay_us(100);
	while(!TXIF);//wait, buffer empty?
	TXREG		= (y+48);
	__delay_us(100);
	while(!TXIF);//wait, buffer empty?
	TXREG		= 13;
	__delay_us(100);
}