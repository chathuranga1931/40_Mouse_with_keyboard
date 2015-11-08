
//                  4BIT MODE


#define EN			RB5
#define RS			RB4 
#define lcd_bus		PORTB	 // 0-3 bits are used in this 4-bit function

#define command		RB4 = 0
#define data		RB4 = 1

#define	clear_display	 0b00000001
#define	curser_home		 0b00000010

#define no_display_shift			0b00000100
#define display_shift				0b00000101
#define decrement_curser_posision 	0b00000100
#define encrement_curser_posision 	0b00000110

#define display_off			0b00001000
#define display_on			0b00001100
#define curser_on			0b00001010
#define	curser_off			0b00001000
#define curser_blink_on		0b00001001
#define curser_blink_off	0b00001000

#define move_curser		0b00010000
#define shift_display 	0b00011100	// shift dislay right
#define shift_left		0b00010000
#define shift_right		0b00010100

#define four_bit			0b00100000
#define eight_bit			0b00110000
#define duty_1_line			0b00100000
#define duty_2_line 		0b00101000
#define thirty_five_dots	0b00100000
#define fifty_dots			0b00100100

unsigned char lcd_data;	
unsigned char lcd_data_high;
unsigned char lcd_data_low;

void lcd_init();
void lcd_add();
void position( char row, char collum);
void clr_display();
void curser( char on );
void row2();

void lcd_init()
{
	
	RS = 0;	
	lcd_data	=  0b00101000; //four_bit | duty_2_line  ;
	lcd_add();
	_delay(40000);
	lcd_data 	= 0b00101000; // encrement_curser_posision ;
	lcd_add();
	_delay(40000);
	lcd_data	= 0b00000110; // clear_display;
	lcd_add();
	_delay(40000);
	lcd_data	= 0b00000110; // clear_display;
	lcd_add();
	_delay(40000);
	lcd_data	= 0b00001101; //shift_display |shift_right;
	lcd_add();
	_delay(40000);
	lcd_data	= 0b00001101; //shift_display |shift_right;
	lcd_add();
	_delay(40000);
	lcd_data	= 0b00011000; // clear display
	lcd_add();
	_delay(40000);
	lcd_data	= 0b00000001; 
	lcd_add();
	_delay(40000);

}
// 0b00101000 0b00101000 0b00000110 0b00001101 0b00000001
void putch( char print_value ) 
{
	
	
		RS = 1;
		lcd_data	= print_value;
		lcd_add();
		__delay_ms(10);
	
}

void lcd_add()
{

	lcd_data_high	= lcd_data >> 4;
	lcd_data_low	= lcd_data << 4;
	lcd_data_low	= lcd_data_low >> 4;
	lcd_bus = lcd_bus & 0b11110000;
	lcd_bus	= lcd_data_high | lcd_bus;
	EN	= 1;
	EN	= 0;
	lcd_bus = lcd_bus & 0b11110000;
	lcd_bus	= lcd_data_low | lcd_bus;
	EN	= 1;
	EN	= 0;
	
}

void clr_display()
{
	RS = 0;
	lcd_data	= clear_display;
	lcd_add();
	_delay(40000);
}
void curser( char on )
{
	if (on == 0)
	{
		lcd_data	= 0b00001000; 
		lcd_add();
		_delay(40000);
	}
	if (on == 1)
	{
		lcd_data	= 0b00001010; 
		lcd_add();
		_delay(40000);
	}
}

void position( char row, char collum)
{
	char post ;
	if( row == 1 ) row = 128;
	if( row == 2 ) row = 192;
	post = 	row + collum - 1;
	command;
	lcd_data	= post ;
	lcd_add();
	_delay(4000);
	row		= 0;
	collum 	= 0;
	
}