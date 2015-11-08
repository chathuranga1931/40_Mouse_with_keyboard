opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 10920"

opt pagewidth 120

	opt lm

	processor	16F877A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
	FNCALL	_main,_InterruptEn
	FNCALL	_main,_a2d_read
	FNCALL	_main,___ltdiv
	FNCALL	_main,___ltmod
	FNCALL	_main,_KeySend
	FNCALL	_main,_MouseSendLC
	FNCALL	_main,_MouseSendRC
	FNCALL	_a2d_read,_read_a2d_value
	FNROOT	_main
	FNCALL	intlevel1,_isr
	global	intlevel1
	FNROOT	intlevel1
	global	_vblAccX
	global	_vblAccY
	global	_counter
	global	_prevChar
	global	_hour
	global	_minute
	global	_msecond
	global	_second
	global	_CAPSLOCK
	global	_MOUSE_SELECT
	global	_nop
	global	_ADCON0
psect	text375,local,class=CODE,delta=2
global __ptext375
__ptext375:
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_PORTC
_PORTC	set	7
	global	_TMR1H
_TMR1H	set	15
	global	_TMR1L
_TMR1L	set	14
	global	_TXREG
_TXREG	set	25
	global	_ADON
_ADON	set	248
	global	_CARRY
_CARRY	set	24
	global	_CREN
_CREN	set	196
	global	_GIE
_GIE	set	95
	global	_GO
_GO	set	250
	global	_INTE
_INTE	set	92
	global	_PEIE
_PEIE	set	94
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_RB2
_RB2	set	50
	global	_RB3
_RB3	set	51
	global	_RB4
_RB4	set	52
	global	_RB5
_RB5	set	53
	global	_RBIE
_RBIE	set	91
	global	_RC0
_RC0	set	56
	global	_RC1
_RC1	set	57
	global	_RC2
_RC2	set	58
	global	_RC3
_RC3	set	59
	global	_RC4
_RC4	set	60
	global	_RC5
_RC5	set	61
	global	_RD3
_RD3	set	67
	global	_RD4
_RD4	set	68
	global	_RD5
_RD5	set	69
	global	_RD6
_RD6	set	70
	global	_RX9
_RX9	set	198
	global	_SPEN
_SPEN	set	199
	global	_T0IE
_T0IE	set	93
	global	_T1CKPS0
_T1CKPS0	set	132
	global	_T1CKPS1
_T1CKPS1	set	133
	global	_T1OSCEN
_T1OSCEN	set	131
	global	_TMR1CS
_TMR1CS	set	129
	global	_TMR1IF
_TMR1IF	set	96
	global	_TMR1ON
_TMR1ON	set	128
	global	_TXIF
_TXIF	set	100
	global	_ADCON1
_ADCON1	set	159
	global	_ADRESL
_ADRESL	set	158
	global	_SPBRG
_SPBRG	set	153
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	global	_TRISE
_TRISE	set	137
	global	_ADIE
_ADIE	set	1126
	global	_BCLIE
_BCLIE	set	1131
	global	_BRGH
_BRGH	set	1218
	global	_CCP1IE
_CCP1IE	set	1122
	global	_CCP2IE
_CCP2IE	set	1128
	global	_EEIE
_EEIE	set	1132
	global	_PSPIE
_PSPIE	set	1127
	global	_RCIE
_RCIE	set	1125
	global	_SSPIE
_SSPIE	set	1123
	global	_SYNC
_SYNC	set	1220
	global	_TMR1IE
_TMR1IE	set	1120
	global	_TMR2IE
_TMR2IE	set	1121
	global	_TX9
_TX9	set	1222
	global	_TXEN
_TXEN	set	1221
	global	_TXIE
_TXIE	set	1124
	global	_EEADR
_EEADR	set	269
	global	_EEDATA
_EEDATA	set	268
	global	_EECON1
_EECON1	set	396
	global	_EECON2
_EECON2	set	397
	global	_RD
_RD	set	3168
	global	_WR
_WR	set	3169
	global	_WREN
_WREN	set	3170
	global	_OPTION_REG
_OPTION_REG	set	129
	file	"HT.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bitbssCOMMON,class=COMMON,bit,space=1
global __pbitbssCOMMON
__pbitbssCOMMON:
_CAPSLOCK:
       ds      1

_MOUSE_SELECT:
       ds      1

_nop:
       ds      1

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_hour:
       ds      1

_minute:
       ds      1

_msecond:
       ds      1

_second:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_vblAccX:
       ds      3

_vblAccY:
       ds      3

_counter:
       ds      2

_prevChar:
       ds      1

; Clear objects allocated to BITCOMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbitbssCOMMON/8)+0)&07Fh
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
	clrf	((__pbssBANK0)+5)&07Fh
	clrf	((__pbssBANK0)+6)&07Fh
	clrf	((__pbssBANK0)+7)&07Fh
	clrf	((__pbssBANK0)+8)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_InterruptEn
?_InterruptEn:	; 0 bytes @ 0x0
	global	?_a2d_read
?_a2d_read:	; 0 bytes @ 0x0
	global	?_KeySend
?_KeySend:	; 0 bytes @ 0x0
	global	?_MouseSendLC
?_MouseSendLC:	; 0 bytes @ 0x0
	global	?_MouseSendRC
?_MouseSendRC:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_isr
?_isr:	; 0 bytes @ 0x0
	global	??_isr
??_isr:	; 0 bytes @ 0x0
	ds	5
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_InterruptEn
??_InterruptEn:	; 0 bytes @ 0x0
	global	??_KeySend
??_KeySend:	; 0 bytes @ 0x0
	global	??_MouseSendLC
??_MouseSendLC:	; 0 bytes @ 0x0
	global	??_MouseSendRC
??_MouseSendRC:	; 0 bytes @ 0x0
	global	?_read_a2d_value
?_read_a2d_value:	; 2 bytes @ 0x0
	global	?___ltmod
?___ltmod:	; 3 bytes @ 0x0
	global	KeySend@key
KeySend@key:	; 1 bytes @ 0x0
	global	___ltmod@divisor
___ltmod@divisor:	; 3 bytes @ 0x0
	ds	2
	global	??_read_a2d_value
??_read_a2d_value:	; 0 bytes @ 0x2
	ds	1
	global	___ltmod@dividend
___ltmod@dividend:	; 3 bytes @ 0x3
	ds	1
	global	read_a2d_value@channel
read_a2d_value@channel:	; 1 bytes @ 0x4
	ds	1
	global	read_a2d_value@a2d_value
read_a2d_value@a2d_value:	; 2 bytes @ 0x5
	ds	1
	global	??___ltmod
??___ltmod:	; 0 bytes @ 0x6
	ds	1
	global	??_a2d_read
??_a2d_read:	; 0 bytes @ 0x7
	global	___ltmod@counter
___ltmod@counter:	; 1 bytes @ 0x7
	ds	1
	global	?___ltdiv
?___ltdiv:	; 3 bytes @ 0x8
	global	___ltdiv@divisor
___ltdiv@divisor:	; 3 bytes @ 0x8
	ds	3
	global	___ltdiv@dividend
___ltdiv@dividend:	; 3 bytes @ 0xB
	ds	3
	global	??___ltdiv
??___ltdiv:	; 0 bytes @ 0xE
	ds	1
	global	___ltdiv@quotient
___ltdiv@quotient:	; 3 bytes @ 0xF
	ds	3
	global	___ltdiv@counter
___ltdiv@counter:	; 1 bytes @ 0x12
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x13
	ds	3
	global	_main$1976
_main$1976:	; 3 bytes @ 0x16
	ds	3
;;Data sizes: Strings 0, constant 0, data 0, bss 13, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      5      10
;; BANK0           80     25      34
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?_read_a2d_value	unsigned int  size(1) Largest target is 0
;;
;; ?___ltmod	unsigned um size(1) Largest target is 0
;;
;; ?___ltdiv	unsigned um size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   None.
;;
;; Critical Paths under _isr in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->___ltdiv
;;   _a2d_read->_read_a2d_value
;;   ___ltdiv->___ltmod
;;
;; Critical Paths under _isr in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _isr in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _isr in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.
;;
;; Critical Paths under _isr in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 3, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 9     9      0     807
;;                                             19 BANK0      6     6      0
;;                        _InterruptEn
;;                           _a2d_read
;;                            ___ltdiv
;;                            ___ltmod
;;                            _KeySend
;;                        _MouseSendLC
;;                        _MouseSendRC
;; ---------------------------------------------------------------------------------
;; (1) _a2d_read                                             0     0      0     167
;;                     _read_a2d_value
;; ---------------------------------------------------------------------------------
;; (2) _read_a2d_value                                       7     5      2     167
;;                                              0 BANK0      7     5      2
;; ---------------------------------------------------------------------------------
;; (1) ___ltmod                                              8     2      6     232
;;                                              0 BANK0      8     2      6
;; ---------------------------------------------------------------------------------
;; (1) ___ltdiv                                             11     5      6     241
;;                                              8 BANK0     11     5      6
;;                            ___ltmod (ARG)
;; ---------------------------------------------------------------------------------
;; (1) _MouseSendRC                                          0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _MouseSendLC                                          0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _KeySend                                              1     1      0      31
;;                                              0 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _InterruptEn                                          0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (3) _isr                                                  5     5      0       0
;;                                              0 COMMON     5     5      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _InterruptEn
;;   _a2d_read
;;     _read_a2d_value
;;   ___ltdiv
;;     ___ltmod (ARG)
;;   ___ltmod
;;   _KeySend
;;   _MouseSendLC
;;   _MouseSendRC
;;
;; _isr (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       1       0        7.1%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      5       A       1       71.4%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       2       2        0.0%
;;ABS                  0      0      2C       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     19      22       5       42.5%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      2E      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 47 in file "F:\ELECTRONIC\2015\Projects\40. Mouse with keyboard\PGM\Keyboard and Mouse in a glove\ver3\keyboard_and_mouse_in_a_glove.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_InterruptEn
;;		_a2d_read
;;		___ltdiv
;;		___ltmod
;;		_KeySend
;;		_MouseSendLC
;;		_MouseSendRC
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"F:\ELECTRONIC\2015\Projects\40. Mouse with keyboard\PGM\Keyboard and Mouse in a glove\ver3\keyboard_and_mouse_in_a_glove.c"
	line	47
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	49
	
l6569:	
;keyboard_and_mouse_in_a_glove.c: 49: TRISA = 0b11111111;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	52
;keyboard_and_mouse_in_a_glove.c: 52: TRISB = 0b11111111;
	movlw	(0FFh)
	movwf	(134)^080h	;volatile
	line	55
;keyboard_and_mouse_in_a_glove.c: 55: TRISC = 0b10111000;
	movlw	(0B8h)
	movwf	(135)^080h	;volatile
	line	56
;keyboard_and_mouse_in_a_glove.c: 56: PORTC = 0b00000010;
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	58
;keyboard_and_mouse_in_a_glove.c: 58: TRISD = 0b11111111;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	line	60
	
l6571:	
;keyboard_and_mouse_in_a_glove.c: 60: TRISE = 0b00000000;
	clrf	(137)^080h	;volatile
	line	62
	
l6573:	
;keyboard_and_mouse_in_a_glove.c: 62: ADCON0 = 0b01000000;
	movlw	(040h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	63
	
l6575:	
;keyboard_and_mouse_in_a_glove.c: 63: ADCON1 = 0b10000100;
	movlw	(084h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	66
	
l6577:	
;keyboard_and_mouse_in_a_glove.c: 66: SPBRG = 25;
	movlw	(019h)
	movwf	(153)^080h	;volatile
	line	67
	
l6579:	
;keyboard_and_mouse_in_a_glove.c: 67: SPEN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(199/8),(199)&7
	line	68
	
l6581:	
;keyboard_and_mouse_in_a_glove.c: 68: RX9 = 0;
	bcf	(198/8),(198)&7
	line	69
	
l6583:	
;keyboard_and_mouse_in_a_glove.c: 69: CREN = 1;
	bsf	(196/8),(196)&7
	line	70
	
l6585:	
;keyboard_and_mouse_in_a_glove.c: 70: TX9 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1222/8)^080h,(1222)&7
	line	71
	
l6587:	
;keyboard_and_mouse_in_a_glove.c: 71: TXEN = 1;
	bsf	(1221/8)^080h,(1221)&7
	line	72
	
l6589:	
;keyboard_and_mouse_in_a_glove.c: 72: SYNC = 0;
	bcf	(1220/8)^080h,(1220)&7
	line	73
	
l6591:	
;keyboard_and_mouse_in_a_glove.c: 73: BRGH = 1;
	bsf	(1218/8)^080h,(1218)&7
	line	74
	
l6593:	
;keyboard_and_mouse_in_a_glove.c: 74: SPBRG = 25;
	movlw	(019h)
	movwf	(153)^080h	;volatile
	line	75
	
l6595:	
;keyboard_and_mouse_in_a_glove.c: 75: RCIE = 1;
	bsf	(1125/8)^080h,(1125)&7
	line	76
	
l6597:	
;keyboard_and_mouse_in_a_glove.c: 76: TXIE = 0;
	bcf	(1124/8)^080h,(1124)&7
	line	77
	
l6599:	
;keyboard_and_mouse_in_a_glove.c: 77: _delay((unsigned long)((500)*(4000000/4000.0)));
	opt asmopt_off
movlw  3
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	138
movwf	((??_main+0)+0+1),f
	movlw	86
movwf	((??_main+0)+0),f
u11497:
	decfsz	((??_main+0)+0),f
	goto	u11497
	decfsz	((??_main+0)+0+1),f
	goto	u11497
	decfsz	((??_main+0)+0+2),f
	goto	u11497
	nop2
opt asmopt_on

	line	80
	
l6601:	
;keyboard_and_mouse_in_a_glove.c: 80: T1CKPS1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(133/8),(133)&7
	line	81
	
l6603:	
;keyboard_and_mouse_in_a_glove.c: 81: T1CKPS0 = 1;
	bsf	(132/8),(132)&7
	line	82
	
l6605:	
;keyboard_and_mouse_in_a_glove.c: 82: TMR1CS = 0;
	bcf	(129/8),(129)&7
	line	83
	
l6607:	
;keyboard_and_mouse_in_a_glove.c: 83: TMR1ON = 1;
	bsf	(128/8),(128)&7
	line	84
	
l6609:	
;keyboard_and_mouse_in_a_glove.c: 84: T1OSCEN = 0;
	bcf	(131/8),(131)&7
	line	85
	
l6611:	
;keyboard_and_mouse_in_a_glove.c: 85: TMR1L = 0xB0;
	movlw	(0B0h)
	movwf	(14)	;volatile
	line	86
	
l6613:	
;keyboard_and_mouse_in_a_glove.c: 86: TMR1H = 60;
	movlw	(03Ch)
	movwf	(15)	;volatile
	line	87
	
l6615:	
;keyboard_and_mouse_in_a_glove.c: 87: TMR1IE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1120/8)^080h,(1120)&7
	line	90
	
l6617:	
;keyboard_and_mouse_in_a_glove.c: 90: OPTION_REG =0b01111111 & OPTION_REG;
	movf	(129)^080h,w
	andlw	07Fh
	movwf	(129)^080h	;volatile
	line	93
	
l6619:	
;keyboard_and_mouse_in_a_glove.c: 93: InterruptEn();
	fcall	_InterruptEn
	line	96
	
l6621:	
;keyboard_and_mouse_in_a_glove.c: 96: MOUSE_SELECT = 0;
	bcf	(_MOUSE_SELECT/8),(_MOUSE_SELECT)&7
	goto	l6623
	line	98
;keyboard_and_mouse_in_a_glove.c: 98: while(1){
	
l721:	
	line	99
	
l6623:	
;keyboard_and_mouse_in_a_glove.c: 99: nop=1;
	bsf	(_nop/8),(_nop)&7
	line	100
	
l6625:	
;keyboard_and_mouse_in_a_glove.c: 100: if (MOUSE_SELECT == 1){
	btfss	(_MOUSE_SELECT/8),(_MOUSE_SELECT)&7
	goto	u8781
	goto	u8780
u8781:
	goto	l722
u8780:
	line	102
	
l6627:	
;keyboard_and_mouse_in_a_glove.c: 102: a2d_read();
	fcall	_a2d_read
	line	103
	
l6629:	
;keyboard_and_mouse_in_a_glove.c: 103: RC1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7
	line	104
;keyboard_and_mouse_in_a_glove.c: 104: while(!TXIF);
	goto	l723
	
l724:	
	
l723:	
	btfss	(100/8),(100)&7
	goto	u8791
	goto	u8790
u8791:
	goto	l723
u8790:
	goto	l6631
	
l725:	
	line	105
	
l6631:	
;keyboard_and_mouse_in_a_glove.c: 105: TXREG = '%';
	movlw	(025h)
	movwf	(25)	;volatile
	line	106
;keyboard_and_mouse_in_a_glove.c: 106: while(!TXIF);
	goto	l726
	
l727:	
	
l726:	
	btfss	(100/8),(100)&7
	goto	u8801
	goto	u8800
u8801:
	goto	l726
u8800:
	goto	l6633
	
l728:	
	line	107
	
l6633:	
;keyboard_and_mouse_in_a_glove.c: 107: TXREG = 'X';
	movlw	(058h)
	movwf	(25)	;volatile
	line	108
;keyboard_and_mouse_in_a_glove.c: 108: while(!TXIF);
	goto	l729
	
l730:	
	
l729:	
	btfss	(100/8),(100)&7
	goto	u8811
	goto	u8810
u8811:
	goto	l729
u8810:
	goto	l6635
	
l731:	
	line	109
	
l6635:	
;keyboard_and_mouse_in_a_glove.c: 109: TXREG = vblAccX/100 + 48;
	movlw	064h
	movwf	(?___ltdiv)
	movlw	0
	movwf	(?___ltdiv+1)
	movlw	0
	movwf	(?___ltdiv+2)
	movf	(_vblAccX),w
	movwf	0+(?___ltdiv)+03h
	movf	(_vblAccX+1),w
	movwf	1+(?___ltdiv)+03h
	movf	(_vblAccX+2),w
	movwf	2+(?___ltdiv)+03h
	fcall	___ltdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ltdiv)),w
	addlw	030h
	movwf	(25)	;volatile
	line	110
;keyboard_and_mouse_in_a_glove.c: 110: while(!TXIF);
	goto	l732
	
l733:	
	
l732:	
	btfss	(100/8),(100)&7
	goto	u8821
	goto	u8820
u8821:
	goto	l732
u8820:
	goto	l6637
	
l734:	
	line	111
	
l6637:	
;keyboard_and_mouse_in_a_glove.c: 111: TXREG = vblAccX%100/10 + 48;
	movlw	0Ah
	movwf	(?___ltdiv)
	movlw	0
	movwf	(?___ltdiv+1)
	movlw	0
	movwf	(?___ltdiv+2)
	movf	(_vblAccX),w
	movwf	0+(?___ltmod)+03h
	movf	(_vblAccX+1),w
	movwf	1+(?___ltmod)+03h
	movf	(_vblAccX+2),w
	movwf	2+(?___ltmod)+03h
	movlw	064h
	movwf	(?___ltmod)
	movlw	0
	movwf	(?___ltmod+1)
	movlw	0
	movwf	(?___ltmod+2)
	fcall	___ltmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ltmod)),w
	movwf	0+(?___ltdiv)+03h
	movf	(1+(?___ltmod)),w
	movwf	1+(?___ltdiv)+03h
	movf	(2+(?___ltmod)),w
	movwf	2+(?___ltdiv)+03h
	fcall	___ltdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ltdiv)),w
	addlw	030h
	movwf	(25)	;volatile
	line	112
;keyboard_and_mouse_in_a_glove.c: 112: while(!TXIF);
	goto	l735
	
l736:	
	
l735:	
	btfss	(100/8),(100)&7
	goto	u8831
	goto	u8830
u8831:
	goto	l735
u8830:
	goto	l6639
	
l737:	
	line	113
	
l6639:	
;keyboard_and_mouse_in_a_glove.c: 113: TXREG = vblAccX%100%10 + 48;
	movf	(_vblAccX),w
	movwf	0+(?___ltmod)+03h
	movf	(_vblAccX+1),w
	movwf	1+(?___ltmod)+03h
	movf	(_vblAccX+2),w
	movwf	2+(?___ltmod)+03h
	movlw	064h
	movwf	(?___ltmod)
	movlw	0
	movwf	(?___ltmod+1)
	movlw	0
	movwf	(?___ltmod+2)
	fcall	___ltmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ltmod)),w
	movwf	(_main$1976)
	movf	(1+(?___ltmod)),w
	movwf	(_main$1976+1)
	movf	(2+(?___ltmod)),w
	movwf	(_main$1976+2)
;keyboard_and_mouse_in_a_glove.c: 113: TXREG = vblAccX%100%10 + 48;
	movlw	0Ah
	movwf	(?___ltmod)
	movlw	0
	movwf	(?___ltmod+1)
	movlw	0
	movwf	(?___ltmod+2)
	movf	(_main$1976),w
	movwf	0+(?___ltmod)+03h
	movf	(_main$1976+1),w
	movwf	1+(?___ltmod)+03h
	movf	(_main$1976+2),w
	movwf	2+(?___ltmod)+03h
	fcall	___ltmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ltmod)),w
	addlw	030h
	movwf	(25)	;volatile
	line	114
;keyboard_and_mouse_in_a_glove.c: 114: while(!TXIF);
	goto	l738
	
l739:	
	
l738:	
	btfss	(100/8),(100)&7
	goto	u8841
	goto	u8840
u8841:
	goto	l738
u8840:
	goto	l6641
	
l740:	
	line	115
	
l6641:	
;keyboard_and_mouse_in_a_glove.c: 115: TXREG = '?';
	movlw	(03Fh)
	movwf	(25)	;volatile
	line	117
;keyboard_and_mouse_in_a_glove.c: 117: while(!TXIF);
	goto	l741
	
l742:	
	
l741:	
	btfss	(100/8),(100)&7
	goto	u8851
	goto	u8850
u8851:
	goto	l741
u8850:
	goto	l6643
	
l743:	
	line	118
	
l6643:	
;keyboard_and_mouse_in_a_glove.c: 118: TXREG = '%';
	movlw	(025h)
	movwf	(25)	;volatile
	line	119
;keyboard_and_mouse_in_a_glove.c: 119: while(!TXIF);
	goto	l744
	
l745:	
	
l744:	
	btfss	(100/8),(100)&7
	goto	u8861
	goto	u8860
u8861:
	goto	l744
u8860:
	goto	l6645
	
l746:	
	line	120
	
l6645:	
;keyboard_and_mouse_in_a_glove.c: 120: TXREG = 'Y';
	movlw	(059h)
	movwf	(25)	;volatile
	line	121
;keyboard_and_mouse_in_a_glove.c: 121: while(!TXIF);
	goto	l747
	
l748:	
	
l747:	
	btfss	(100/8),(100)&7
	goto	u8871
	goto	u8870
u8871:
	goto	l747
u8870:
	goto	l6647
	
l749:	
	line	122
	
l6647:	
;keyboard_and_mouse_in_a_glove.c: 122: TXREG = vblAccY/100 + 48;
	movlw	064h
	movwf	(?___ltdiv)
	movlw	0
	movwf	(?___ltdiv+1)
	movlw	0
	movwf	(?___ltdiv+2)
	movf	(_vblAccY),w
	movwf	0+(?___ltdiv)+03h
	movf	(_vblAccY+1),w
	movwf	1+(?___ltdiv)+03h
	movf	(_vblAccY+2),w
	movwf	2+(?___ltdiv)+03h
	fcall	___ltdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ltdiv)),w
	addlw	030h
	movwf	(25)	;volatile
	line	123
;keyboard_and_mouse_in_a_glove.c: 123: while(!TXIF);
	goto	l750
	
l751:	
	
l750:	
	btfss	(100/8),(100)&7
	goto	u8881
	goto	u8880
u8881:
	goto	l750
u8880:
	goto	l6649
	
l752:	
	line	124
	
l6649:	
;keyboard_and_mouse_in_a_glove.c: 124: TXREG = vblAccY%100/10 + 48;
	movlw	0Ah
	movwf	(?___ltdiv)
	movlw	0
	movwf	(?___ltdiv+1)
	movlw	0
	movwf	(?___ltdiv+2)
	movf	(_vblAccY),w
	movwf	0+(?___ltmod)+03h
	movf	(_vblAccY+1),w
	movwf	1+(?___ltmod)+03h
	movf	(_vblAccY+2),w
	movwf	2+(?___ltmod)+03h
	movlw	064h
	movwf	(?___ltmod)
	movlw	0
	movwf	(?___ltmod+1)
	movlw	0
	movwf	(?___ltmod+2)
	fcall	___ltmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ltmod)),w
	movwf	0+(?___ltdiv)+03h
	movf	(1+(?___ltmod)),w
	movwf	1+(?___ltdiv)+03h
	movf	(2+(?___ltmod)),w
	movwf	2+(?___ltdiv)+03h
	fcall	___ltdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ltdiv)),w
	addlw	030h
	movwf	(25)	;volatile
	line	125
;keyboard_and_mouse_in_a_glove.c: 125: while(!TXIF);
	goto	l753
	
l754:	
	
l753:	
	btfss	(100/8),(100)&7
	goto	u8891
	goto	u8890
u8891:
	goto	l753
u8890:
	goto	l6651
	
l755:	
	line	126
	
l6651:	
;keyboard_and_mouse_in_a_glove.c: 126: TXREG = vblAccY%100%10 + 48;
	movf	(_vblAccY),w
	movwf	0+(?___ltmod)+03h
	movf	(_vblAccY+1),w
	movwf	1+(?___ltmod)+03h
	movf	(_vblAccY+2),w
	movwf	2+(?___ltmod)+03h
	movlw	064h
	movwf	(?___ltmod)
	movlw	0
	movwf	(?___ltmod+1)
	movlw	0
	movwf	(?___ltmod+2)
	fcall	___ltmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ltmod)),w
	movwf	(_main$1976)
	movf	(1+(?___ltmod)),w
	movwf	(_main$1976+1)
	movf	(2+(?___ltmod)),w
	movwf	(_main$1976+2)
;keyboard_and_mouse_in_a_glove.c: 126: TXREG = vblAccY%100%10 + 48;
	movlw	0Ah
	movwf	(?___ltmod)
	movlw	0
	movwf	(?___ltmod+1)
	movlw	0
	movwf	(?___ltmod+2)
	movf	(_main$1976),w
	movwf	0+(?___ltmod)+03h
	movf	(_main$1976+1),w
	movwf	1+(?___ltmod)+03h
	movf	(_main$1976+2),w
	movwf	2+(?___ltmod)+03h
	fcall	___ltmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ltmod)),w
	addlw	030h
	movwf	(25)	;volatile
	line	127
;keyboard_and_mouse_in_a_glove.c: 127: while(!TXIF);
	goto	l756
	
l757:	
	
l756:	
	btfss	(100/8),(100)&7
	goto	u8901
	goto	u8900
u8901:
	goto	l756
u8900:
	goto	l6653
	
l758:	
	line	128
	
l6653:	
;keyboard_and_mouse_in_a_glove.c: 128: TXREG = '?';
	movlw	(03Fh)
	movwf	(25)	;volatile
	line	130
;keyboard_and_mouse_in_a_glove.c: 130: _delay((unsigned long)((30)*(4000000/4000.0)));
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u11507:
	decfsz	((??_main+0)+0),f
	goto	u11507
	decfsz	((??_main+0)+0+1),f
	goto	u11507
opt asmopt_on

	line	132
	
l6655:	
;keyboard_and_mouse_in_a_glove.c: 132: if( RC5!=0 ){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(61/8),(61)&7
	goto	u8911
	goto	u8910
u8911:
	goto	l759
u8910:
	line	135
	
l6657:	
;keyboard_and_mouse_in_a_glove.c: 135: _delay((unsigned long)((50)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0)
	opt asmopt_off
movlw	65
movwf	((??_main+0)+0+1),f
	movlw	238
movwf	((??_main+0)+0),f
u11517:
	decfsz	((??_main+0)+0),f
	goto	u11517
	decfsz	((??_main+0)+0+1),f
	goto	u11517
	clrwdt
opt asmopt_on

	goto	l760
	
l761:	
	
l760:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u8921
	goto	u8920
u8921:
	goto	l760
u8920:
	goto	l6659
	
l762:	
	
l6659:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u11527:
	decfsz	((??_main+0)+0),f
	goto	u11527
	decfsz	((??_main+0)+0+1),f
	goto	u11527
opt asmopt_on

	goto	l763
	
l764:	
	
l763:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u8931
	goto	u8930
u8931:
	goto	l763
u8930:
	goto	l6661
	
l765:	
	
l6661:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u11537:
	decfsz	((??_main+0)+0),f
	goto	u11537
	decfsz	((??_main+0)+0+1),f
	goto	u11537
opt asmopt_on

	goto	l766
	
l767:	
	
l766:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u8941
	goto	u8940
u8941:
	goto	l766
u8940:
	goto	l6663
	
l768:	
	
l6663:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u11547:
	decfsz	((??_main+0)+0),f
	goto	u11547
	decfsz	((??_main+0)+0+1),f
	goto	u11547
opt asmopt_on

	goto	l769
	
l770:	
	
l769:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u8951
	goto	u8950
u8951:
	goto	l769
u8950:
	goto	l6665
	
l771:	
	line	136
	
l6665:	
;keyboard_and_mouse_in_a_glove.c: 136: KeySend(' ');
	movlw	(020h)
	fcall	_KeySend
	line	137
;keyboard_and_mouse_in_a_glove.c: 137: KeySend(' ');
	movlw	(020h)
	fcall	_KeySend
	line	138
	
l6667:	
;keyboard_and_mouse_in_a_glove.c: 138: MOUSE_SELECT = 0;
	bcf	(_MOUSE_SELECT/8),(_MOUSE_SELECT)&7
	line	139
	
l6669:	
;keyboard_and_mouse_in_a_glove.c: 139: RC1 = MOUSE_SELECT;
	btfsc	(_MOUSE_SELECT/8),(_MOUSE_SELECT)&7
	goto	u8961
	goto	u8960
	
u8961:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7
	goto	u8974
u8960:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
u8974:
	line	140
;keyboard_and_mouse_in_a_glove.c: 140: }
	goto	l7865
	line	141
	
l759:	
;keyboard_and_mouse_in_a_glove.c: 141: else if( RD3!=0 ){
	btfss	(67/8),(67)&7
	goto	u8981
	goto	u8980
u8981:
	goto	l773
u8980:
	line	142
	
l6671:	
;keyboard_and_mouse_in_a_glove.c: 142: nop=1;
	bsf	(_nop/8),(_nop)&7
	line	145
	
l6673:	
;keyboard_and_mouse_in_a_glove.c: 145: _delay((unsigned long)((50)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0)
	opt asmopt_off
movlw	65
movwf	((??_main+0)+0+1),f
	movlw	238
movwf	((??_main+0)+0),f
u11557:
	decfsz	((??_main+0)+0),f
	goto	u11557
	decfsz	((??_main+0)+0+1),f
	goto	u11557
	clrwdt
opt asmopt_on

	goto	l774
	
l775:	
	
l774:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u8991
	goto	u8990
u8991:
	goto	l774
u8990:
	goto	l6675
	
l776:	
	
l6675:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u11567:
	decfsz	((??_main+0)+0),f
	goto	u11567
	decfsz	((??_main+0)+0+1),f
	goto	u11567
opt asmopt_on

	goto	l777
	
l778:	
	
l777:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u9001
	goto	u9000
u9001:
	goto	l777
u9000:
	goto	l6677
	
l779:	
	
l6677:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u11577:
	decfsz	((??_main+0)+0),f
	goto	u11577
	decfsz	((??_main+0)+0+1),f
	goto	u11577
opt asmopt_on

	goto	l780
	
l781:	
	
l780:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u9011
	goto	u9010
u9011:
	goto	l780
u9010:
	goto	l6679
	
l782:	
	
l6679:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u11587:
	decfsz	((??_main+0)+0),f
	goto	u11587
	decfsz	((??_main+0)+0+1),f
	goto	u11587
opt asmopt_on

	goto	l783
	
l784:	
	
l783:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u9021
	goto	u9020
u9021:
	goto	l783
u9020:
	goto	l6681
	
l785:	
	line	146
	
l6681:	
;keyboard_and_mouse_in_a_glove.c: 146: MouseSendLC();
	fcall	_MouseSendLC
	line	147
;keyboard_and_mouse_in_a_glove.c: 147: }
	goto	l7865
	line	148
	
l773:	
;keyboard_and_mouse_in_a_glove.c: 148: else if( RB4!=0 ){
	btfss	(52/8),(52)&7
	goto	u9031
	goto	u9030
u9031:
	goto	l7865
u9030:
	line	149
	
l6683:	
;keyboard_and_mouse_in_a_glove.c: 149: nop=1;
	bsf	(_nop/8),(_nop)&7
	line	152
	
l6685:	
;keyboard_and_mouse_in_a_glove.c: 152: _delay((unsigned long)((50)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0)
	opt asmopt_off
movlw	65
movwf	((??_main+0)+0+1),f
	movlw	238
movwf	((??_main+0)+0),f
u11597:
	decfsz	((??_main+0)+0),f
	goto	u11597
	decfsz	((??_main+0)+0+1),f
	goto	u11597
	clrwdt
opt asmopt_on

	goto	l788
	
l789:	
	
l788:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u9041
	goto	u9040
u9041:
	goto	l788
u9040:
	goto	l6687
	
l790:	
	
l6687:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u11607:
	decfsz	((??_main+0)+0),f
	goto	u11607
	decfsz	((??_main+0)+0+1),f
	goto	u11607
opt asmopt_on

	goto	l791
	
l792:	
	
l791:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u9051
	goto	u9050
u9051:
	goto	l791
u9050:
	goto	l6689
	
l793:	
	
l6689:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u11617:
	decfsz	((??_main+0)+0),f
	goto	u11617
	decfsz	((??_main+0)+0+1),f
	goto	u11617
opt asmopt_on

	goto	l794
	
l795:	
	
l794:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u9061
	goto	u9060
u9061:
	goto	l794
u9060:
	goto	l6691
	
l796:	
	
l6691:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u11627:
	decfsz	((??_main+0)+0),f
	goto	u11627
	decfsz	((??_main+0)+0+1),f
	goto	u11627
opt asmopt_on

	goto	l797
	
l798:	
	
l797:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u9071
	goto	u9070
u9071:
	goto	l797
u9070:
	goto	l6693
	
l799:	
	line	153
	
l6693:	
;keyboard_and_mouse_in_a_glove.c: 153: MouseSendRC();
	fcall	_MouseSendRC
	goto	l7865
	line	154
	
l787:	
	goto	l7865
	line	155
	
l786:	
	goto	l7865
	
l772:	
;keyboard_and_mouse_in_a_glove.c: 154: }
;keyboard_and_mouse_in_a_glove.c: 155: }
	goto	l7865
	line	156
	
l722:	
	line	158
;keyboard_and_mouse_in_a_glove.c: 156: else
;keyboard_and_mouse_in_a_glove.c: 157: {
;keyboard_and_mouse_in_a_glove.c: 158: RC1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
	line	159
;keyboard_and_mouse_in_a_glove.c: 159: if(CAPSLOCK == 1){
	btfss	(_CAPSLOCK/8),(_CAPSLOCK)&7
	goto	u9081
	goto	u9080
u9081:
	goto	l801
u9080:
	line	160
	
l6695:	
;keyboard_and_mouse_in_a_glove.c: 160: RC2 = 1;
	bsf	(58/8),(58)&7
	line	161
;keyboard_and_mouse_in_a_glove.c: 161: if( RC4!=0 ){
	btfss	(60/8),(60)&7
	goto	u9091
	goto	u9090
u9091:
	goto	l802
u9090:
	line	162
	
l6697:	
;keyboard_and_mouse_in_a_glove.c: 162: nop=1;
	bsf	(_nop/8),(_nop)&7
	line	165
	
l6699:	
;keyboard_and_mouse_in_a_glove.c: 165: _delay((unsigned long)((50)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0)
	opt asmopt_off
movlw	65
movwf	((??_main+0)+0+1),f
	movlw	238
movwf	((??_main+0)+0),f
u11637:
	decfsz	((??_main+0)+0),f
	goto	u11637
	decfsz	((??_main+0)+0+1),f
	goto	u11637
	clrwdt
opt asmopt_on

	goto	l803
	
l804:	
	
l803:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u9101
	goto	u9100
u9101:
	goto	l803
u9100:
	goto	l6701
	
l805:	
	
l6701:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u11647:
	decfsz	((??_main+0)+0),f
	goto	u11647
	decfsz	((??_main+0)+0+1),f
	goto	u11647
opt asmopt_on

	goto	l806
	
l807:	
	
l806:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u9111
	goto	u9110
u9111:
	goto	l806
u9110:
	goto	l6703
	
l808:	
	
l6703:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u11657:
	decfsz	((??_main+0)+0),f
	goto	u11657
	decfsz	((??_main+0)+0+1),f
	goto	u11657
opt asmopt_on

	goto	l809
	
l810:	
	
l809:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u9121
	goto	u9120
u9121:
	goto	l809
u9120:
	goto	l6705
	
l811:	
	
l6705:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u11667:
	decfsz	((??_main+0)+0),f
	goto	u11667
	decfsz	((??_main+0)+0+1),f
	goto	u11667
opt asmopt_on

	goto	l812
	
l813:	
	
l812:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u9131
	goto	u9130
u9131:
	goto	l812
u9130:
	goto	l6707
	
l814:	
	line	168
	
l6707:	
;keyboard_and_mouse_in_a_glove.c: 168: if ( counter==0 ){ KeySend('1'); prevChar='1'; counter = 10; }
	movf	((_counter+1)),w
	iorwf	((_counter)),w
	skipz
	goto	u9141
	goto	u9140
u9141:
	goto	l6715
u9140:
	
l6709:	
	movlw	(031h)
	fcall	_KeySend
	
l6711:	
	movlw	(031h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l6713:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	169
	
l815:	
	
l6715:	
;keyboard_and_mouse_in_a_glove.c: 169: else if( prevChar=='1' ){ KeySend('^'); KeySend('.'); prevChar='.'; counter = 10; }
	movf	(_prevChar),w
	xorlw	031h
	skipz
	goto	u9151
	goto	u9150
u9151:
	goto	l6723
u9150:
	
l6717:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(02Eh)
	fcall	_KeySend
	
l6719:	
	movlw	(02Eh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l6721:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	170
	
l817:	
	
l6723:	
;keyboard_and_mouse_in_a_glove.c: 170: else if( prevChar=='.' ){ KeySend('^'); KeySend(','); prevChar=','; counter = 10; }
	movf	(_prevChar),w
	xorlw	02Eh
	skipz
	goto	u9161
	goto	u9160
u9161:
	goto	l6731
u9160:
	
l6725:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(02Ch)
	fcall	_KeySend
	
l6727:	
	movlw	(02Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l6729:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	171
	
l819:	
	
l6731:	
;keyboard_and_mouse_in_a_glove.c: 171: else if( prevChar==',' ){ KeySend('^'); KeySend('('); prevChar='('; counter = 10; }
	movf	(_prevChar),w
	xorlw	02Ch
	skipz
	goto	u9171
	goto	u9170
u9171:
	goto	l6739
u9170:
	
l6733:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(028h)
	fcall	_KeySend
	
l6735:	
	movlw	(028h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l6737:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	172
	
l821:	
	
l6739:	
;keyboard_and_mouse_in_a_glove.c: 172: else if( prevChar=='(' ){ KeySend('^'); KeySend(')'); prevChar=')'; counter = 10; }
	movf	(_prevChar),w
	xorlw	028h
	skipz
	goto	u9181
	goto	u9180
u9181:
	goto	l6747
u9180:
	
l6741:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(029h)
	fcall	_KeySend
	
l6743:	
	movlw	(029h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l6745:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	173
	
l823:	
	
l6747:	
;keyboard_and_mouse_in_a_glove.c: 173: else if( prevChar==')' ){ KeySend('^'); KeySend('1'); prevChar='1'; counter = 10; }
	movf	(_prevChar),w
	xorlw	029h
	skipz
	goto	u9191
	goto	u9190
u9191:
	goto	l7865
u9190:
	
l6749:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(031h)
	fcall	_KeySend
	
l6751:	
	movlw	(031h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l6753:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	
l825:	
	goto	l7865
	line	175
	
l824:	
	goto	l7865
	
l822:	
	goto	l7865
	
l820:	
	goto	l7865
	
l818:	
	goto	l7865
	
l816:	
;keyboard_and_mouse_in_a_glove.c: 175: }
	goto	l7865
	line	176
	
l802:	
;keyboard_and_mouse_in_a_glove.c: 176: else if( RD3!=0 ){
	btfss	(67/8),(67)&7
	goto	u9201
	goto	u9200
u9201:
	goto	l827
u9200:
	line	177
	
l6755:	
;keyboard_and_mouse_in_a_glove.c: 177: nop=1;
	bsf	(_nop/8),(_nop)&7
	line	180
	
l6757:	
;keyboard_and_mouse_in_a_glove.c: 180: _delay((unsigned long)((50)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0)
	opt asmopt_off
movlw	65
movwf	((??_main+0)+0+1),f
	movlw	238
movwf	((??_main+0)+0),f
u11677:
	decfsz	((??_main+0)+0),f
	goto	u11677
	decfsz	((??_main+0)+0+1),f
	goto	u11677
	clrwdt
opt asmopt_on

	goto	l828
	
l829:	
	
l828:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u9211
	goto	u9210
u9211:
	goto	l828
u9210:
	goto	l6759
	
l830:	
	
l6759:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u11687:
	decfsz	((??_main+0)+0),f
	goto	u11687
	decfsz	((??_main+0)+0+1),f
	goto	u11687
opt asmopt_on

	goto	l831
	
l832:	
	
l831:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u9221
	goto	u9220
u9221:
	goto	l831
u9220:
	goto	l6761
	
l833:	
	
l6761:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u11697:
	decfsz	((??_main+0)+0),f
	goto	u11697
	decfsz	((??_main+0)+0+1),f
	goto	u11697
opt asmopt_on

	goto	l834
	
l835:	
	
l834:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u9231
	goto	u9230
u9231:
	goto	l834
u9230:
	goto	l6763
	
l836:	
	
l6763:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u11707:
	decfsz	((??_main+0)+0),f
	goto	u11707
	decfsz	((??_main+0)+0+1),f
	goto	u11707
opt asmopt_on

	goto	l837
	
l838:	
	
l837:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u9241
	goto	u9240
u9241:
	goto	l837
u9240:
	goto	l6765
	
l839:	
	line	183
	
l6765:	
;keyboard_and_mouse_in_a_glove.c: 183: if ( counter==0 ){ KeySend('A'); prevChar='A'; counter = 10; }
	movf	((_counter+1)),w
	iorwf	((_counter)),w
	skipz
	goto	u9251
	goto	u9250
u9251:
	goto	l6773
u9250:
	
l6767:	
	movlw	(041h)
	fcall	_KeySend
	
l6769:	
	movlw	(041h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l6771:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	184
	
l840:	
	
l6773:	
;keyboard_and_mouse_in_a_glove.c: 184: else if( prevChar=='A' ){ KeySend('^'); KeySend('B'); prevChar='B'; counter = 10; }
	movf	(_prevChar),w
	xorlw	041h
	skipz
	goto	u9261
	goto	u9260
u9261:
	goto	l6781
u9260:
	
l6775:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(042h)
	fcall	_KeySend
	
l6777:	
	movlw	(042h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l6779:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	185
	
l842:	
	
l6781:	
;keyboard_and_mouse_in_a_glove.c: 185: else if( prevChar=='B' ){ KeySend('^'); KeySend('C'); prevChar='C'; counter = 10; }
	movf	(_prevChar),w
	xorlw	042h
	skipz
	goto	u9271
	goto	u9270
u9271:
	goto	l6789
u9270:
	
l6783:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(043h)
	fcall	_KeySend
	
l6785:	
	movlw	(043h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l6787:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	186
	
l844:	
	
l6789:	
;keyboard_and_mouse_in_a_glove.c: 186: else if( prevChar=='C' ){ KeySend('^'); KeySend('2'); prevChar='2'; counter = 10; }
	movf	(_prevChar),w
	xorlw	043h
	skipz
	goto	u9281
	goto	u9280
u9281:
	goto	l6797
u9280:
	
l6791:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(032h)
	fcall	_KeySend
	
l6793:	
	movlw	(032h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l6795:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	187
	
l846:	
	
l6797:	
;keyboard_and_mouse_in_a_glove.c: 187: else if( prevChar=='2' ){ KeySend('^'); KeySend('A'); prevChar='A'; counter = 10; }
	movf	(_prevChar),w
	xorlw	032h
	skipz
	goto	u9291
	goto	u9290
u9291:
	goto	l6805
u9290:
	
l6799:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(041h)
	fcall	_KeySend
	
l6801:	
	movlw	(041h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l6803:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	188
	
l848:	
	
l6805:	
;keyboard_and_mouse_in_a_glove.c: 188: else { KeySend('A'); prevChar='A'; counter = 10; }
	movlw	(041h)
	fcall	_KeySend
	
l6807:	
	movlw	(041h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l6809:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	
l849:	
	goto	l7865
	
l847:	
	goto	l7865
	
l845:	
	goto	l7865
	
l843:	
	goto	l7865
	
l841:	
	line	189
;keyboard_and_mouse_in_a_glove.c: 189: }
	goto	l7865
	line	191
	
l827:	
;keyboard_and_mouse_in_a_glove.c: 191: else if( RB4!=0 ){
	btfss	(52/8),(52)&7
	goto	u9301
	goto	u9300
u9301:
	goto	l851
u9300:
	line	192
	
l6811:	
;keyboard_and_mouse_in_a_glove.c: 192: nop=1;
	bsf	(_nop/8),(_nop)&7
	line	195
	
l6813:	
;keyboard_and_mouse_in_a_glove.c: 195: _delay((unsigned long)((50)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0)
	opt asmopt_off
movlw	65
movwf	((??_main+0)+0+1),f
	movlw	238
movwf	((??_main+0)+0),f
u11717:
	decfsz	((??_main+0)+0),f
	goto	u11717
	decfsz	((??_main+0)+0+1),f
	goto	u11717
	clrwdt
opt asmopt_on

	goto	l852
	
l853:	
	
l852:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u9311
	goto	u9310
u9311:
	goto	l852
u9310:
	goto	l6815
	
l854:	
	
l6815:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u11727:
	decfsz	((??_main+0)+0),f
	goto	u11727
	decfsz	((??_main+0)+0+1),f
	goto	u11727
opt asmopt_on

	goto	l855
	
l856:	
	
l855:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u9321
	goto	u9320
u9321:
	goto	l855
u9320:
	goto	l6817
	
l857:	
	
l6817:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u11737:
	decfsz	((??_main+0)+0),f
	goto	u11737
	decfsz	((??_main+0)+0+1),f
	goto	u11737
opt asmopt_on

	goto	l858
	
l859:	
	
l858:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u9331
	goto	u9330
u9331:
	goto	l858
u9330:
	goto	l6819
	
l860:	
	
l6819:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u11747:
	decfsz	((??_main+0)+0),f
	goto	u11747
	decfsz	((??_main+0)+0+1),f
	goto	u11747
opt asmopt_on

	goto	l861
	
l862:	
	
l861:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u9341
	goto	u9340
u9341:
	goto	l861
u9340:
	goto	l6821
	
l863:	
	line	198
	
l6821:	
;keyboard_and_mouse_in_a_glove.c: 198: if ( counter==0 ){ KeySend('D'); prevChar='D'; counter = 10; }
	movf	((_counter+1)),w
	iorwf	((_counter)),w
	skipz
	goto	u9351
	goto	u9350
u9351:
	goto	l6829
u9350:
	
l6823:	
	movlw	(044h)
	fcall	_KeySend
	
l6825:	
	movlw	(044h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l6827:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	199
	
l864:	
	
l6829:	
;keyboard_and_mouse_in_a_glove.c: 199: else if( prevChar=='D' ){ KeySend('^'); KeySend('E'); prevChar='E'; counter = 10; }
	movf	(_prevChar),w
	xorlw	044h
	skipz
	goto	u9361
	goto	u9360
u9361:
	goto	l6837
u9360:
	
l6831:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(045h)
	fcall	_KeySend
	
l6833:	
	movlw	(045h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l6835:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	200
	
l866:	
	
l6837:	
;keyboard_and_mouse_in_a_glove.c: 200: else if( prevChar=='E' ){ KeySend('^'); KeySend('F'); prevChar='F'; counter = 10; }
	movf	(_prevChar),w
	xorlw	045h
	skipz
	goto	u9371
	goto	u9370
u9371:
	goto	l6845
u9370:
	
l6839:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(046h)
	fcall	_KeySend
	
l6841:	
	movlw	(046h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l6843:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	201
	
l868:	
	
l6845:	
;keyboard_and_mouse_in_a_glove.c: 201: else if( prevChar=='F' ){ KeySend('^'); KeySend('3'); prevChar='3'; counter = 10; }
	movf	(_prevChar),w
	xorlw	046h
	skipz
	goto	u9381
	goto	u9380
u9381:
	goto	l6853
u9380:
	
l6847:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(033h)
	fcall	_KeySend
	
l6849:	
	movlw	(033h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l6851:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	202
	
l870:	
	
l6853:	
;keyboard_and_mouse_in_a_glove.c: 202: else if( prevChar=='3' ){ KeySend('^'); KeySend('D'); prevChar='D'; counter = 10; }
	movf	(_prevChar),w
	xorlw	033h
	skipz
	goto	u9391
	goto	u9390
u9391:
	goto	l6861
u9390:
	
l6855:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(044h)
	fcall	_KeySend
	
l6857:	
	movlw	(044h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l6859:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	203
	
l872:	
	
l6861:	
;keyboard_and_mouse_in_a_glove.c: 203: else { KeySend('D'); prevChar='D'; counter = 10; }
	movlw	(044h)
	fcall	_KeySend
	
l6863:	
	movlw	(044h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l6865:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	
l873:	
	goto	l7865
	
l871:	
	goto	l7865
	
l869:	
	goto	l7865
	
l867:	
	goto	l7865
	
l865:	
	line	204
;keyboard_and_mouse_in_a_glove.c: 204: }
	goto	l7865
	line	206
	
l851:	
;keyboard_and_mouse_in_a_glove.c: 206: else if( RB0!=0 ){
	btfss	(48/8),(48)&7
	goto	u9401
	goto	u9400
u9401:
	goto	l875
u9400:
	line	207
	
l6867:	
;keyboard_and_mouse_in_a_glove.c: 207: nop=1;
	bsf	(_nop/8),(_nop)&7
	line	210
	
l6869:	
;keyboard_and_mouse_in_a_glove.c: 210: _delay((unsigned long)((50)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0)
	opt asmopt_off
movlw	65
movwf	((??_main+0)+0+1),f
	movlw	238
movwf	((??_main+0)+0),f
u11757:
	decfsz	((??_main+0)+0),f
	goto	u11757
	decfsz	((??_main+0)+0+1),f
	goto	u11757
	clrwdt
opt asmopt_on

	goto	l876
	
l877:	
	
l876:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u9411
	goto	u9410
u9411:
	goto	l876
u9410:
	goto	l6871
	
l878:	
	
l6871:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u11767:
	decfsz	((??_main+0)+0),f
	goto	u11767
	decfsz	((??_main+0)+0+1),f
	goto	u11767
opt asmopt_on

	goto	l879
	
l880:	
	
l879:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u9421
	goto	u9420
u9421:
	goto	l879
u9420:
	goto	l6873
	
l881:	
	
l6873:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u11777:
	decfsz	((??_main+0)+0),f
	goto	u11777
	decfsz	((??_main+0)+0+1),f
	goto	u11777
opt asmopt_on

	goto	l882
	
l883:	
	
l882:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u9431
	goto	u9430
u9431:
	goto	l882
u9430:
	goto	l6875
	
l884:	
	
l6875:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u11787:
	decfsz	((??_main+0)+0),f
	goto	u11787
	decfsz	((??_main+0)+0+1),f
	goto	u11787
opt asmopt_on

	goto	l885
	
l886:	
	
l885:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u9441
	goto	u9440
u9441:
	goto	l885
u9440:
	goto	l6877
	
l887:	
	line	213
	
l6877:	
;keyboard_and_mouse_in_a_glove.c: 213: if ( counter==0 ){ KeySend('G'); prevChar='G'; counter = 10; }
	movf	((_counter+1)),w
	iorwf	((_counter)),w
	skipz
	goto	u9451
	goto	u9450
u9451:
	goto	l6885
u9450:
	
l6879:	
	movlw	(047h)
	fcall	_KeySend
	
l6881:	
	movlw	(047h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l6883:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	214
	
l888:	
	
l6885:	
;keyboard_and_mouse_in_a_glove.c: 214: else if( prevChar=='G' ){ KeySend('^'); KeySend('H'); prevChar='H'; counter = 10; }
	movf	(_prevChar),w
	xorlw	047h
	skipz
	goto	u9461
	goto	u9460
u9461:
	goto	l6893
u9460:
	
l6887:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(048h)
	fcall	_KeySend
	
l6889:	
	movlw	(048h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l6891:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	215
	
l890:	
	
l6893:	
;keyboard_and_mouse_in_a_glove.c: 215: else if( prevChar=='H' ){ KeySend('^'); KeySend('I'); prevChar='I'; counter = 10; }
	movf	(_prevChar),w
	xorlw	048h
	skipz
	goto	u9471
	goto	u9470
u9471:
	goto	l6901
u9470:
	
l6895:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(049h)
	fcall	_KeySend
	
l6897:	
	movlw	(049h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l6899:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	216
	
l892:	
	
l6901:	
;keyboard_and_mouse_in_a_glove.c: 216: else if( prevChar=='I' ){ KeySend('^'); KeySend('4'); prevChar='4'; counter = 10; }
	movf	(_prevChar),w
	xorlw	049h
	skipz
	goto	u9481
	goto	u9480
u9481:
	goto	l6909
u9480:
	
l6903:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(034h)
	fcall	_KeySend
	
l6905:	
	movlw	(034h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l6907:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	217
	
l894:	
	
l6909:	
;keyboard_and_mouse_in_a_glove.c: 217: else if( prevChar=='4' ){ KeySend('^'); KeySend('G'); prevChar='G'; counter = 10; }
	movf	(_prevChar),w
	xorlw	034h
	skipz
	goto	u9491
	goto	u9490
u9491:
	goto	l6917
u9490:
	
l6911:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(047h)
	fcall	_KeySend
	
l6913:	
	movlw	(047h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l6915:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	218
	
l896:	
	
l6917:	
;keyboard_and_mouse_in_a_glove.c: 218: else { KeySend('G'); prevChar='G'; counter = 10; }
	movlw	(047h)
	fcall	_KeySend
	
l6919:	
	movlw	(047h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l6921:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	
l897:	
	goto	l7865
	
l895:	
	goto	l7865
	
l893:	
	goto	l7865
	
l891:	
	goto	l7865
	
l889:	
	line	219
;keyboard_and_mouse_in_a_glove.c: 219: }
	goto	l7865
	line	221
	
l875:	
;keyboard_and_mouse_in_a_glove.c: 221: else if( RD4!=0){
	btfss	(68/8),(68)&7
	goto	u9501
	goto	u9500
u9501:
	goto	l899
u9500:
	line	222
	
l6923:	
;keyboard_and_mouse_in_a_glove.c: 222: nop=1;
	bsf	(_nop/8),(_nop)&7
	line	225
	
l6925:	
;keyboard_and_mouse_in_a_glove.c: 225: _delay((unsigned long)((50)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0)
	opt asmopt_off
movlw	65
movwf	((??_main+0)+0+1),f
	movlw	238
movwf	((??_main+0)+0),f
u11797:
	decfsz	((??_main+0)+0),f
	goto	u11797
	decfsz	((??_main+0)+0+1),f
	goto	u11797
	clrwdt
opt asmopt_on

	goto	l900
	
l901:	
	
l900:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u9511
	goto	u9510
u9511:
	goto	l900
u9510:
	goto	l6927
	
l902:	
	
l6927:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u11807:
	decfsz	((??_main+0)+0),f
	goto	u11807
	decfsz	((??_main+0)+0+1),f
	goto	u11807
opt asmopt_on

	goto	l903
	
l904:	
	
l903:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u9521
	goto	u9520
u9521:
	goto	l903
u9520:
	goto	l6929
	
l905:	
	
l6929:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u11817:
	decfsz	((??_main+0)+0),f
	goto	u11817
	decfsz	((??_main+0)+0+1),f
	goto	u11817
opt asmopt_on

	goto	l906
	
l907:	
	
l906:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u9531
	goto	u9530
u9531:
	goto	l906
u9530:
	goto	l6931
	
l908:	
	
l6931:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u11827:
	decfsz	((??_main+0)+0),f
	goto	u11827
	decfsz	((??_main+0)+0+1),f
	goto	u11827
opt asmopt_on

	goto	l909
	
l910:	
	
l909:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u9541
	goto	u9540
u9541:
	goto	l909
u9540:
	goto	l6933
	
l911:	
	line	228
	
l6933:	
;keyboard_and_mouse_in_a_glove.c: 228: if ( counter==0 ){ KeySend('J'); prevChar='J'; counter = 10; }
	movf	((_counter+1)),w
	iorwf	((_counter)),w
	skipz
	goto	u9551
	goto	u9550
u9551:
	goto	l6941
u9550:
	
l6935:	
	movlw	(04Ah)
	fcall	_KeySend
	
l6937:	
	movlw	(04Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l6939:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	229
	
l912:	
	
l6941:	
;keyboard_and_mouse_in_a_glove.c: 229: else if( prevChar=='J' ){ KeySend('^'); KeySend('K'); prevChar='K'; counter = 10; }
	movf	(_prevChar),w
	xorlw	04Ah
	skipz
	goto	u9561
	goto	u9560
u9561:
	goto	l6949
u9560:
	
l6943:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(04Bh)
	fcall	_KeySend
	
l6945:	
	movlw	(04Bh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l6947:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	230
	
l914:	
	
l6949:	
;keyboard_and_mouse_in_a_glove.c: 230: else if( prevChar=='K' ){ KeySend('^'); KeySend('L'); prevChar='L'; counter = 10; }
	movf	(_prevChar),w
	xorlw	04Bh
	skipz
	goto	u9571
	goto	u9570
u9571:
	goto	l6957
u9570:
	
l6951:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(04Ch)
	fcall	_KeySend
	
l6953:	
	movlw	(04Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l6955:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	231
	
l916:	
	
l6957:	
;keyboard_and_mouse_in_a_glove.c: 231: else if( prevChar=='L' ){ KeySend('^'); KeySend('5'); prevChar='5'; counter = 10; }
	movf	(_prevChar),w
	xorlw	04Ch
	skipz
	goto	u9581
	goto	u9580
u9581:
	goto	l6965
u9580:
	
l6959:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(035h)
	fcall	_KeySend
	
l6961:	
	movlw	(035h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l6963:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	232
	
l918:	
	
l6965:	
;keyboard_and_mouse_in_a_glove.c: 232: else if( prevChar=='5' ){ KeySend('^'); KeySend('J'); prevChar='J'; counter = 10; }
	movf	(_prevChar),w
	xorlw	035h
	skipz
	goto	u9591
	goto	u9590
u9591:
	goto	l6973
u9590:
	
l6967:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(04Ah)
	fcall	_KeySend
	
l6969:	
	movlw	(04Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l6971:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	233
	
l920:	
	
l6973:	
;keyboard_and_mouse_in_a_glove.c: 233: else { KeySend('J'); prevChar='J'; counter = 10; }
	movlw	(04Ah)
	fcall	_KeySend
	
l6975:	
	movlw	(04Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l6977:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	
l921:	
	goto	l7865
	
l919:	
	goto	l7865
	
l917:	
	goto	l7865
	
l915:	
	goto	l7865
	
l913:	
	line	234
;keyboard_and_mouse_in_a_glove.c: 234: }
	goto	l7865
	line	237
	
l899:	
;keyboard_and_mouse_in_a_glove.c: 237: else if( RB2!=0){
	btfss	(50/8),(50)&7
	goto	u9601
	goto	u9600
u9601:
	goto	l923
u9600:
	line	238
	
l6979:	
;keyboard_and_mouse_in_a_glove.c: 238: nop=1;
	bsf	(_nop/8),(_nop)&7
	line	241
	
l6981:	
;keyboard_and_mouse_in_a_glove.c: 241: _delay((unsigned long)((50)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0)
	opt asmopt_off
movlw	65
movwf	((??_main+0)+0+1),f
	movlw	238
movwf	((??_main+0)+0),f
u11837:
	decfsz	((??_main+0)+0),f
	goto	u11837
	decfsz	((??_main+0)+0+1),f
	goto	u11837
	clrwdt
opt asmopt_on

	goto	l924
	
l925:	
	
l924:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u9611
	goto	u9610
u9611:
	goto	l924
u9610:
	goto	l6983
	
l926:	
	
l6983:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u11847:
	decfsz	((??_main+0)+0),f
	goto	u11847
	decfsz	((??_main+0)+0+1),f
	goto	u11847
opt asmopt_on

	goto	l927
	
l928:	
	
l927:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u9621
	goto	u9620
u9621:
	goto	l927
u9620:
	goto	l6985
	
l929:	
	
l6985:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u11857:
	decfsz	((??_main+0)+0),f
	goto	u11857
	decfsz	((??_main+0)+0+1),f
	goto	u11857
opt asmopt_on

	goto	l930
	
l931:	
	
l930:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u9631
	goto	u9630
u9631:
	goto	l930
u9630:
	goto	l6987
	
l932:	
	
l6987:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u11867:
	decfsz	((??_main+0)+0),f
	goto	u11867
	decfsz	((??_main+0)+0+1),f
	goto	u11867
opt asmopt_on

	goto	l933
	
l934:	
	
l933:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u9641
	goto	u9640
u9641:
	goto	l933
u9640:
	goto	l6989
	
l935:	
	line	244
	
l6989:	
;keyboard_and_mouse_in_a_glove.c: 244: if ( counter==0 ){ KeySend('M'); prevChar='M'; counter = 10; }
	movf	((_counter+1)),w
	iorwf	((_counter)),w
	skipz
	goto	u9651
	goto	u9650
u9651:
	goto	l6997
u9650:
	
l6991:	
	movlw	(04Dh)
	fcall	_KeySend
	
l6993:	
	movlw	(04Dh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l6995:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	245
	
l936:	
	
l6997:	
;keyboard_and_mouse_in_a_glove.c: 245: else if( prevChar=='M' ){ KeySend('^'); KeySend('N'); prevChar='N'; counter = 10; }
	movf	(_prevChar),w
	xorlw	04Dh
	skipz
	goto	u9661
	goto	u9660
u9661:
	goto	l7005
u9660:
	
l6999:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(04Eh)
	fcall	_KeySend
	
l7001:	
	movlw	(04Eh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7003:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	246
	
l938:	
	
l7005:	
;keyboard_and_mouse_in_a_glove.c: 246: else if( prevChar=='N' ){ KeySend('^'); KeySend('O'); prevChar='O'; counter = 10; }
	movf	(_prevChar),w
	xorlw	04Eh
	skipz
	goto	u9671
	goto	u9670
u9671:
	goto	l7013
u9670:
	
l7007:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(04Fh)
	fcall	_KeySend
	
l7009:	
	movlw	(04Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7011:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	247
	
l940:	
	
l7013:	
;keyboard_and_mouse_in_a_glove.c: 247: else if( prevChar=='O' ){ KeySend('^'); KeySend('6'); prevChar='6'; counter = 10; }
	movf	(_prevChar),w
	xorlw	04Fh
	skipz
	goto	u9681
	goto	u9680
u9681:
	goto	l7021
u9680:
	
l7015:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(036h)
	fcall	_KeySend
	
l7017:	
	movlw	(036h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7019:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	248
	
l942:	
	
l7021:	
;keyboard_and_mouse_in_a_glove.c: 248: else if( prevChar=='6' ){ KeySend('^'); KeySend('M'); prevChar='M'; counter = 10; }
	movf	(_prevChar),w
	xorlw	036h
	skipz
	goto	u9691
	goto	u9690
u9691:
	goto	l7029
u9690:
	
l7023:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(04Dh)
	fcall	_KeySend
	
l7025:	
	movlw	(04Dh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7027:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	249
	
l944:	
	
l7029:	
;keyboard_and_mouse_in_a_glove.c: 249: else { KeySend('M'); prevChar='M'; counter = 10; }
	movlw	(04Dh)
	fcall	_KeySend
	
l7031:	
	movlw	(04Dh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7033:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	
l945:	
	goto	l7865
	
l943:	
	goto	l7865
	
l941:	
	goto	l7865
	
l939:	
	goto	l7865
	
l937:	
	line	250
;keyboard_and_mouse_in_a_glove.c: 250: }
	goto	l7865
	line	252
	
l923:	
;keyboard_and_mouse_in_a_glove.c: 252: else if( RB3!=0){
	btfss	(51/8),(51)&7
	goto	u9701
	goto	u9700
u9701:
	goto	l947
u9700:
	line	253
	
l7035:	
;keyboard_and_mouse_in_a_glove.c: 253: nop=1;
	bsf	(_nop/8),(_nop)&7
	line	256
	
l7037:	
;keyboard_and_mouse_in_a_glove.c: 256: _delay((unsigned long)((50)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0)
	opt asmopt_off
movlw	65
movwf	((??_main+0)+0+1),f
	movlw	238
movwf	((??_main+0)+0),f
u11877:
	decfsz	((??_main+0)+0),f
	goto	u11877
	decfsz	((??_main+0)+0+1),f
	goto	u11877
	clrwdt
opt asmopt_on

	goto	l948
	
l949:	
	
l948:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u9711
	goto	u9710
u9711:
	goto	l948
u9710:
	goto	l7039
	
l950:	
	
l7039:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u11887:
	decfsz	((??_main+0)+0),f
	goto	u11887
	decfsz	((??_main+0)+0+1),f
	goto	u11887
opt asmopt_on

	goto	l951
	
l952:	
	
l951:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u9721
	goto	u9720
u9721:
	goto	l951
u9720:
	goto	l7041
	
l953:	
	
l7041:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u11897:
	decfsz	((??_main+0)+0),f
	goto	u11897
	decfsz	((??_main+0)+0+1),f
	goto	u11897
opt asmopt_on

	goto	l954
	
l955:	
	
l954:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u9731
	goto	u9730
u9731:
	goto	l954
u9730:
	goto	l7043
	
l956:	
	
l7043:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u11907:
	decfsz	((??_main+0)+0),f
	goto	u11907
	decfsz	((??_main+0)+0+1),f
	goto	u11907
opt asmopt_on

	goto	l957
	
l958:	
	
l957:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u9741
	goto	u9740
u9741:
	goto	l957
u9740:
	goto	l7045
	
l959:	
	line	259
	
l7045:	
;keyboard_and_mouse_in_a_glove.c: 259: if ( counter==0 ){ KeySend('P'); prevChar='P'; counter = 10; }
	movf	((_counter+1)),w
	iorwf	((_counter)),w
	skipz
	goto	u9751
	goto	u9750
u9751:
	goto	l7053
u9750:
	
l7047:	
	movlw	(050h)
	fcall	_KeySend
	
l7049:	
	movlw	(050h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7051:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	260
	
l960:	
	
l7053:	
;keyboard_and_mouse_in_a_glove.c: 260: else if( prevChar=='P' ){ KeySend('^'); KeySend('Q'); prevChar='Q'; counter = 10; }
	movf	(_prevChar),w
	xorlw	050h
	skipz
	goto	u9761
	goto	u9760
u9761:
	goto	l7061
u9760:
	
l7055:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(051h)
	fcall	_KeySend
	
l7057:	
	movlw	(051h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7059:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	261
	
l962:	
	
l7061:	
;keyboard_and_mouse_in_a_glove.c: 261: else if( prevChar=='Q' ){ KeySend('^'); KeySend('R'); prevChar='R'; counter = 10; }
	movf	(_prevChar),w
	xorlw	051h
	skipz
	goto	u9771
	goto	u9770
u9771:
	goto	l7069
u9770:
	
l7063:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(052h)
	fcall	_KeySend
	
l7065:	
	movlw	(052h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7067:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	262
	
l964:	
	
l7069:	
;keyboard_and_mouse_in_a_glove.c: 262: else if( prevChar=='R' ){ KeySend('^'); KeySend('S'); prevChar='S'; counter = 10; }
	movf	(_prevChar),w
	xorlw	052h
	skipz
	goto	u9781
	goto	u9780
u9781:
	goto	l7077
u9780:
	
l7071:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(053h)
	fcall	_KeySend
	
l7073:	
	movlw	(053h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7075:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	263
	
l966:	
	
l7077:	
;keyboard_and_mouse_in_a_glove.c: 263: else if( prevChar=='S' ){ KeySend('^'); KeySend('7'); prevChar='7'; counter = 10; }
	movf	(_prevChar),w
	xorlw	053h
	skipz
	goto	u9791
	goto	u9790
u9791:
	goto	l7085
u9790:
	
l7079:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(037h)
	fcall	_KeySend
	
l7081:	
	movlw	(037h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7083:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	264
	
l968:	
	
l7085:	
;keyboard_and_mouse_in_a_glove.c: 264: else if( prevChar=='7' ){ KeySend('^'); KeySend('P'); prevChar='P'; counter = 10; }
	movf	(_prevChar),w
	xorlw	037h
	skipz
	goto	u9801
	goto	u9800
u9801:
	goto	l7093
u9800:
	
l7087:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(050h)
	fcall	_KeySend
	
l7089:	
	movlw	(050h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7091:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	265
	
l970:	
	
l7093:	
;keyboard_and_mouse_in_a_glove.c: 265: else { KeySend('P'); prevChar='P'; counter = 10; }
	movlw	(050h)
	fcall	_KeySend
	
l7095:	
	movlw	(050h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7097:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	
l971:	
	goto	l7865
	
l969:	
	goto	l7865
	
l967:	
	goto	l7865
	
l965:	
	goto	l7865
	
l963:	
	goto	l7865
	
l961:	
	line	266
;keyboard_and_mouse_in_a_glove.c: 266: }
	goto	l7865
	line	268
	
l947:	
;keyboard_and_mouse_in_a_glove.c: 268: else if( RD5!=0){
	btfss	(69/8),(69)&7
	goto	u9811
	goto	u9810
u9811:
	goto	l973
u9810:
	line	269
	
l7099:	
;keyboard_and_mouse_in_a_glove.c: 269: nop=1;
	bsf	(_nop/8),(_nop)&7
	line	272
	
l7101:	
;keyboard_and_mouse_in_a_glove.c: 272: _delay((unsigned long)((50)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0)
	opt asmopt_off
movlw	65
movwf	((??_main+0)+0+1),f
	movlw	238
movwf	((??_main+0)+0),f
u11917:
	decfsz	((??_main+0)+0),f
	goto	u11917
	decfsz	((??_main+0)+0+1),f
	goto	u11917
	clrwdt
opt asmopt_on

	goto	l974
	
l975:	
	
l974:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u9821
	goto	u9820
u9821:
	goto	l974
u9820:
	goto	l7103
	
l976:	
	
l7103:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u11927:
	decfsz	((??_main+0)+0),f
	goto	u11927
	decfsz	((??_main+0)+0+1),f
	goto	u11927
opt asmopt_on

	goto	l977
	
l978:	
	
l977:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u9831
	goto	u9830
u9831:
	goto	l977
u9830:
	goto	l7105
	
l979:	
	
l7105:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u11937:
	decfsz	((??_main+0)+0),f
	goto	u11937
	decfsz	((??_main+0)+0+1),f
	goto	u11937
opt asmopt_on

	goto	l980
	
l981:	
	
l980:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u9841
	goto	u9840
u9841:
	goto	l980
u9840:
	goto	l7107
	
l982:	
	
l7107:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u11947:
	decfsz	((??_main+0)+0),f
	goto	u11947
	decfsz	((??_main+0)+0+1),f
	goto	u11947
opt asmopt_on

	goto	l983
	
l984:	
	
l983:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u9851
	goto	u9850
u9851:
	goto	l983
u9850:
	goto	l7109
	
l985:	
	line	275
	
l7109:	
;keyboard_and_mouse_in_a_glove.c: 275: if ( counter==0 ){ KeySend('T'); prevChar='T'; counter = 10; }
	movf	((_counter+1)),w
	iorwf	((_counter)),w
	skipz
	goto	u9861
	goto	u9860
u9861:
	goto	l7117
u9860:
	
l7111:	
	movlw	(054h)
	fcall	_KeySend
	
l7113:	
	movlw	(054h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7115:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	276
	
l986:	
	
l7117:	
;keyboard_and_mouse_in_a_glove.c: 276: else if( prevChar=='T' ){ KeySend('^'); KeySend('U'); prevChar='U'; counter = 10; }
	movf	(_prevChar),w
	xorlw	054h
	skipz
	goto	u9871
	goto	u9870
u9871:
	goto	l7125
u9870:
	
l7119:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(055h)
	fcall	_KeySend
	
l7121:	
	movlw	(055h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7123:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	277
	
l988:	
	
l7125:	
;keyboard_and_mouse_in_a_glove.c: 277: else if( prevChar=='U' ){ KeySend('^'); KeySend('V'); prevChar='V'; counter = 10; }
	movf	(_prevChar),w
	xorlw	055h
	skipz
	goto	u9881
	goto	u9880
u9881:
	goto	l7133
u9880:
	
l7127:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(056h)
	fcall	_KeySend
	
l7129:	
	movlw	(056h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7131:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	278
	
l990:	
	
l7133:	
;keyboard_and_mouse_in_a_glove.c: 278: else if( prevChar=='V' ){ KeySend('^'); KeySend('8'); prevChar='8'; counter = 10; }
	movf	(_prevChar),w
	xorlw	056h
	skipz
	goto	u9891
	goto	u9890
u9891:
	goto	l7141
u9890:
	
l7135:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(038h)
	fcall	_KeySend
	
l7137:	
	movlw	(038h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7139:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	279
	
l992:	
	
l7141:	
;keyboard_and_mouse_in_a_glove.c: 279: else if( prevChar=='8' ){ KeySend('^'); KeySend('T'); prevChar='T'; counter = 10; }
	movf	(_prevChar),w
	xorlw	038h
	skipz
	goto	u9901
	goto	u9900
u9901:
	goto	l7149
u9900:
	
l7143:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(054h)
	fcall	_KeySend
	
l7145:	
	movlw	(054h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7147:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	280
	
l994:	
	
l7149:	
;keyboard_and_mouse_in_a_glove.c: 280: else { KeySend('T'); prevChar='T'; counter = 10; }
	movlw	(054h)
	fcall	_KeySend
	
l7151:	
	movlw	(054h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7153:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	
l995:	
	goto	l7865
	
l993:	
	goto	l7865
	
l991:	
	goto	l7865
	
l989:	
	goto	l7865
	
l987:	
	line	281
;keyboard_and_mouse_in_a_glove.c: 281: }
	goto	l7865
	line	283
	
l973:	
;keyboard_and_mouse_in_a_glove.c: 283: else if( RB1!=0 ){
	btfss	(49/8),(49)&7
	goto	u9911
	goto	u9910
u9911:
	goto	l997
u9910:
	line	284
	
l7155:	
;keyboard_and_mouse_in_a_glove.c: 284: nop=1;
	bsf	(_nop/8),(_nop)&7
	line	287
	
l7157:	
;keyboard_and_mouse_in_a_glove.c: 287: _delay((unsigned long)((50)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0)
	opt asmopt_off
movlw	65
movwf	((??_main+0)+0+1),f
	movlw	238
movwf	((??_main+0)+0),f
u11957:
	decfsz	((??_main+0)+0),f
	goto	u11957
	decfsz	((??_main+0)+0+1),f
	goto	u11957
	clrwdt
opt asmopt_on

	goto	l998
	
l999:	
	
l998:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u9921
	goto	u9920
u9921:
	goto	l998
u9920:
	goto	l7159
	
l1000:	
	
l7159:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u11967:
	decfsz	((??_main+0)+0),f
	goto	u11967
	decfsz	((??_main+0)+0+1),f
	goto	u11967
opt asmopt_on

	goto	l1001
	
l1002:	
	
l1001:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u9931
	goto	u9930
u9931:
	goto	l1001
u9930:
	goto	l7161
	
l1003:	
	
l7161:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u11977:
	decfsz	((??_main+0)+0),f
	goto	u11977
	decfsz	((??_main+0)+0+1),f
	goto	u11977
opt asmopt_on

	goto	l1004
	
l1005:	
	
l1004:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u9941
	goto	u9940
u9941:
	goto	l1004
u9940:
	goto	l7163
	
l1006:	
	
l7163:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u11987:
	decfsz	((??_main+0)+0),f
	goto	u11987
	decfsz	((??_main+0)+0+1),f
	goto	u11987
opt asmopt_on

	goto	l1007
	
l1008:	
	
l1007:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u9951
	goto	u9950
u9951:
	goto	l1007
u9950:
	goto	l7165
	
l1009:	
	line	290
	
l7165:	
;keyboard_and_mouse_in_a_glove.c: 290: if ( counter==0 ){ KeySend('W'); prevChar='W'; counter = 10; }
	movf	((_counter+1)),w
	iorwf	((_counter)),w
	skipz
	goto	u9961
	goto	u9960
u9961:
	goto	l7173
u9960:
	
l7167:	
	movlw	(057h)
	fcall	_KeySend
	
l7169:	
	movlw	(057h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7171:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	291
	
l1010:	
	
l7173:	
;keyboard_and_mouse_in_a_glove.c: 291: else if( prevChar=='W' ){ KeySend('^'); KeySend('X'); prevChar='X'; counter = 10; }
	movf	(_prevChar),w
	xorlw	057h
	skipz
	goto	u9971
	goto	u9970
u9971:
	goto	l7181
u9970:
	
l7175:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(058h)
	fcall	_KeySend
	
l7177:	
	movlw	(058h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7179:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	292
	
l1012:	
	
l7181:	
;keyboard_and_mouse_in_a_glove.c: 292: else if( prevChar=='X' ){ KeySend('^'); KeySend('Y'); prevChar='Y'; counter = 10; }
	movf	(_prevChar),w
	xorlw	058h
	skipz
	goto	u9981
	goto	u9980
u9981:
	goto	l7189
u9980:
	
l7183:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(059h)
	fcall	_KeySend
	
l7185:	
	movlw	(059h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7187:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	293
	
l1014:	
	
l7189:	
;keyboard_and_mouse_in_a_glove.c: 293: else if( prevChar=='Y' ){ KeySend('^'); KeySend('Z'); prevChar='Z'; counter = 10; }
	movf	(_prevChar),w
	xorlw	059h
	skipz
	goto	u9991
	goto	u9990
u9991:
	goto	l7197
u9990:
	
l7191:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(05Ah)
	fcall	_KeySend
	
l7193:	
	movlw	(05Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7195:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	294
	
l1016:	
	
l7197:	
;keyboard_and_mouse_in_a_glove.c: 294: else if( prevChar=='Z' ){ KeySend('^'); KeySend('9'); prevChar='9'; counter = 10; }
	movf	(_prevChar),w
	xorlw	05Ah
	skipz
	goto	u10001
	goto	u10000
u10001:
	goto	l7205
u10000:
	
l7199:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(039h)
	fcall	_KeySend
	
l7201:	
	movlw	(039h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7203:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	295
	
l1018:	
	
l7205:	
;keyboard_and_mouse_in_a_glove.c: 295: else if( prevChar=='9' ){ KeySend('^'); KeySend('W'); prevChar='W'; counter = 10; }
	movf	(_prevChar),w
	xorlw	039h
	skipz
	goto	u10011
	goto	u10010
u10011:
	goto	l7213
u10010:
	
l7207:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(057h)
	fcall	_KeySend
	
l7209:	
	movlw	(057h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7211:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	296
	
l1020:	
	
l7213:	
;keyboard_and_mouse_in_a_glove.c: 296: else { KeySend('W'); prevChar='W'; counter = 10; }
	movlw	(057h)
	fcall	_KeySend
	
l7215:	
	movlw	(057h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7217:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	
l1021:	
	goto	l7865
	
l1019:	
	goto	l7865
	
l1017:	
	goto	l7865
	
l1015:	
	goto	l7865
	
l1013:	
	goto	l7865
	
l1011:	
	line	297
;keyboard_and_mouse_in_a_glove.c: 297: }
	goto	l7865
	line	298
	
l997:	
;keyboard_and_mouse_in_a_glove.c: 298: else if( RC5!=0 ){
	btfss	(61/8),(61)&7
	goto	u10021
	goto	u10020
u10021:
	goto	l1023
u10020:
	line	301
	
l7219:	
;keyboard_and_mouse_in_a_glove.c: 301: _delay((unsigned long)((50)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0)
	opt asmopt_off
movlw	65
movwf	((??_main+0)+0+1),f
	movlw	238
movwf	((??_main+0)+0),f
u11997:
	decfsz	((??_main+0)+0),f
	goto	u11997
	decfsz	((??_main+0)+0+1),f
	goto	u11997
	clrwdt
opt asmopt_on

	goto	l1024
	
l1025:	
	
l1024:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u10031
	goto	u10030
u10031:
	goto	l1024
u10030:
	goto	l7221
	
l1026:	
	
l7221:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u12007:
	decfsz	((??_main+0)+0),f
	goto	u12007
	decfsz	((??_main+0)+0+1),f
	goto	u12007
opt asmopt_on

	goto	l1027
	
l1028:	
	
l1027:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u10041
	goto	u10040
u10041:
	goto	l1027
u10040:
	goto	l7223
	
l1029:	
	
l7223:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u12017:
	decfsz	((??_main+0)+0),f
	goto	u12017
	decfsz	((??_main+0)+0+1),f
	goto	u12017
opt asmopt_on

	goto	l1030
	
l1031:	
	
l1030:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u10051
	goto	u10050
u10051:
	goto	l1030
u10050:
	goto	l7225
	
l1032:	
	
l7225:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u12027:
	decfsz	((??_main+0)+0),f
	goto	u12027
	decfsz	((??_main+0)+0+1),f
	goto	u12027
opt asmopt_on

	goto	l1033
	
l1034:	
	
l1033:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u10061
	goto	u10060
u10061:
	goto	l1033
u10060:
	
l1035:	
	line	303
;keyboard_and_mouse_in_a_glove.c: 303: MOUSE_SELECT = 1;
	bsf	(_MOUSE_SELECT/8),(_MOUSE_SELECT)&7
	line	304
;keyboard_and_mouse_in_a_glove.c: 304: RC1 = MOUSE_SELECT;
	btfsc	(_MOUSE_SELECT/8),(_MOUSE_SELECT)&7
	goto	u10071
	goto	u10070
	
u10071:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7
	goto	u10084
u10070:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
u10084:
	line	306
;keyboard_and_mouse_in_a_glove.c: 306: }
	goto	l7865
	line	307
	
l1023:	
;keyboard_and_mouse_in_a_glove.c: 307: else if( RD6!=0 ){
	btfss	(70/8),(70)&7
	goto	u10091
	goto	u10090
u10091:
	goto	l1037
u10090:
	line	308
	
l7227:	
;keyboard_and_mouse_in_a_glove.c: 308: nop=1;
	bsf	(_nop/8),(_nop)&7
	line	311
	
l7229:	
;keyboard_and_mouse_in_a_glove.c: 311: _delay((unsigned long)((50)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0)
	opt asmopt_off
movlw	65
movwf	((??_main+0)+0+1),f
	movlw	238
movwf	((??_main+0)+0),f
u12037:
	decfsz	((??_main+0)+0),f
	goto	u12037
	decfsz	((??_main+0)+0+1),f
	goto	u12037
	clrwdt
opt asmopt_on

	goto	l1038
	
l1039:	
	
l1038:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u10101
	goto	u10100
u10101:
	goto	l1038
u10100:
	goto	l7231
	
l1040:	
	
l7231:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u12047:
	decfsz	((??_main+0)+0),f
	goto	u12047
	decfsz	((??_main+0)+0+1),f
	goto	u12047
opt asmopt_on

	goto	l1041
	
l1042:	
	
l1041:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u10111
	goto	u10110
u10111:
	goto	l1041
u10110:
	goto	l7233
	
l1043:	
	
l7233:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u12057:
	decfsz	((??_main+0)+0),f
	goto	u12057
	decfsz	((??_main+0)+0+1),f
	goto	u12057
opt asmopt_on

	goto	l1044
	
l1045:	
	
l1044:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u10121
	goto	u10120
u10121:
	goto	l1044
u10120:
	goto	l7235
	
l1046:	
	
l7235:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u12067:
	decfsz	((??_main+0)+0),f
	goto	u12067
	decfsz	((??_main+0)+0+1),f
	goto	u12067
opt asmopt_on

	goto	l1047
	
l1048:	
	
l1047:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u10131
	goto	u10130
u10131:
	goto	l1047
u10130:
	goto	l7237
	
l1049:	
	line	314
	
l7237:	
;keyboard_and_mouse_in_a_glove.c: 314: if ( counter==0 ){ KeySend('0'); prevChar='0'; counter = 10; }
	movf	((_counter+1)),w
	iorwf	((_counter)),w
	skipz
	goto	u10141
	goto	u10140
u10141:
	goto	l7245
u10140:
	
l7239:	
	movlw	(030h)
	fcall	_KeySend
	
l7241:	
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7243:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	315
	
l1050:	
	
l7245:	
;keyboard_and_mouse_in_a_glove.c: 315: else if( prevChar=='0' ){ KeySend('^'); KeySend(' '); prevChar=' '; counter = 10; }
	movf	(_prevChar),w
	xorlw	030h
	skipz
	goto	u10151
	goto	u10150
u10151:
	goto	l7865
u10150:
	
l7247:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(020h)
	fcall	_KeySend
	
l7249:	
	movlw	(020h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7251:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	
l1052:	
	goto	l7865
	line	316
	
l1051:	
;keyboard_and_mouse_in_a_glove.c: 316: }
	goto	l7865
	line	317
	
l1037:	
;keyboard_and_mouse_in_a_glove.c: 317: else if( RB5!=0 ){
	btfss	(53/8),(53)&7
	goto	u10161
	goto	u10160
u10161:
	goto	l1054
u10160:
	line	319
	
l7253:	
;keyboard_and_mouse_in_a_glove.c: 319: _delay((unsigned long)((50)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0)
	opt asmopt_off
movlw	65
movwf	((??_main+0)+0+1),f
	movlw	238
movwf	((??_main+0)+0),f
u12077:
	decfsz	((??_main+0)+0),f
	goto	u12077
	decfsz	((??_main+0)+0+1),f
	goto	u12077
	clrwdt
opt asmopt_on

	goto	l1055
	
l1056:	
	
l1055:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u10171
	goto	u10170
u10171:
	goto	l1055
u10170:
	goto	l7255
	
l1057:	
	
l7255:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u12087:
	decfsz	((??_main+0)+0),f
	goto	u12087
	decfsz	((??_main+0)+0+1),f
	goto	u12087
opt asmopt_on

	goto	l1058
	
l1059:	
	
l1058:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u10181
	goto	u10180
u10181:
	goto	l1058
u10180:
	goto	l7257
	
l1060:	
	
l7257:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u12097:
	decfsz	((??_main+0)+0),f
	goto	u12097
	decfsz	((??_main+0)+0+1),f
	goto	u12097
opt asmopt_on

	goto	l1061
	
l1062:	
	
l1061:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u10191
	goto	u10190
u10191:
	goto	l1061
u10190:
	goto	l7259
	
l1063:	
	
l7259:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u12107:
	decfsz	((??_main+0)+0),f
	goto	u12107
	decfsz	((??_main+0)+0+1),f
	goto	u12107
opt asmopt_on

	goto	l1064
	
l1065:	
	
l1064:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u10201
	goto	u10200
u10201:
	goto	l1064
u10200:
	goto	l7261
	
l1066:	
	line	322
	
l7261:	
;keyboard_and_mouse_in_a_glove.c: 322: if ( counter==0 ){ KeySend('^'); prevChar='^'; counter = 10; }
	movf	((_counter+1)),w
	iorwf	((_counter)),w
	skipz
	goto	u10211
	goto	u10210
u10211:
	goto	l7865
u10210:
	
l7263:	
	movlw	(05Eh)
	fcall	_KeySend
	
l7265:	
	movlw	(05Eh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7267:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	
l1067:	
	line	323
;keyboard_and_mouse_in_a_glove.c: 323: }
	goto	l7865
	line	324
	
l1054:	
;keyboard_and_mouse_in_a_glove.c: 324: else if( RC3!=0 ){
	btfss	(59/8),(59)&7
	goto	u10221
	goto	u10220
u10221:
	goto	l7865
u10220:
	line	327
	
l7269:	
;keyboard_and_mouse_in_a_glove.c: 327: _delay((unsigned long)((50)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0)
	opt asmopt_off
movlw	65
movwf	((??_main+0)+0+1),f
	movlw	238
movwf	((??_main+0)+0),f
u12117:
	decfsz	((??_main+0)+0),f
	goto	u12117
	decfsz	((??_main+0)+0+1),f
	goto	u12117
	clrwdt
opt asmopt_on

	goto	l1070
	
l1071:	
	
l1070:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u10231
	goto	u10230
u10231:
	goto	l1070
u10230:
	goto	l7271
	
l1072:	
	
l7271:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u12127:
	decfsz	((??_main+0)+0),f
	goto	u12127
	decfsz	((??_main+0)+0+1),f
	goto	u12127
opt asmopt_on

	goto	l1073
	
l1074:	
	
l1073:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u10241
	goto	u10240
u10241:
	goto	l1073
u10240:
	goto	l7273
	
l1075:	
	
l7273:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u12137:
	decfsz	((??_main+0)+0),f
	goto	u12137
	decfsz	((??_main+0)+0+1),f
	goto	u12137
opt asmopt_on

	goto	l1076
	
l1077:	
	
l1076:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u10251
	goto	u10250
u10251:
	goto	l1076
u10250:
	goto	l7275
	
l1078:	
	
l7275:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u12147:
	decfsz	((??_main+0)+0),f
	goto	u12147
	decfsz	((??_main+0)+0+1),f
	goto	u12147
opt asmopt_on

	goto	l1079
	
l1080:	
	
l1079:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u10261
	goto	u10260
u10261:
	goto	l1079
u10260:
	goto	l7277
	
l1081:	
	line	330
	
l7277:	
;keyboard_and_mouse_in_a_glove.c: 330: CAPSLOCK = !CAPSLOCK ;
	movlw	1<<((_CAPSLOCK)&7)
	xorwf	((_CAPSLOCK)/8),f
	line	331
	
l7279:	
;keyboard_and_mouse_in_a_glove.c: 331: RC2 = CAPSLOCK;
	btfsc	(_CAPSLOCK/8),(_CAPSLOCK)&7
	goto	u10271
	goto	u10270
	
u10271:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7
	goto	u10284
u10270:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
u10284:
	goto	l7865
	line	332
	
l1069:	
	goto	l7865
	line	333
	
l1068:	
	goto	l7865
	
l1053:	
	goto	l7865
	
l1036:	
	goto	l7865
	
l1022:	
	goto	l7865
	
l996:	
	goto	l7865
	
l972:	
	goto	l7865
	
l946:	
	goto	l7865
	
l922:	
	goto	l7865
	
l898:	
	goto	l7865
	
l874:	
	goto	l7865
	
l850:	
	goto	l7865
	
l826:	
;keyboard_and_mouse_in_a_glove.c: 332: }
;keyboard_and_mouse_in_a_glove.c: 333: }
	goto	l7865
	line	334
	
l801:	
	line	336
;keyboard_and_mouse_in_a_glove.c: 334: else{
;keyboard_and_mouse_in_a_glove.c: 336: RC2 = 0;
	bcf	(58/8),(58)&7
	line	337
;keyboard_and_mouse_in_a_glove.c: 337: if( RC4!=0 ){
	btfss	(60/8),(60)&7
	goto	u10291
	goto	u10290
u10291:
	goto	l1083
u10290:
	line	338
	
l7281:	
;keyboard_and_mouse_in_a_glove.c: 338: nop=1;
	bsf	(_nop/8),(_nop)&7
	line	341
	
l7283:	
;keyboard_and_mouse_in_a_glove.c: 341: _delay((unsigned long)((50)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0)
	opt asmopt_off
movlw	65
movwf	((??_main+0)+0+1),f
	movlw	238
movwf	((??_main+0)+0),f
u12157:
	decfsz	((??_main+0)+0),f
	goto	u12157
	decfsz	((??_main+0)+0+1),f
	goto	u12157
	clrwdt
opt asmopt_on

	goto	l1084
	
l1085:	
	
l1084:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u10301
	goto	u10300
u10301:
	goto	l1084
u10300:
	goto	l7285
	
l1086:	
	
l7285:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u12167:
	decfsz	((??_main+0)+0),f
	goto	u12167
	decfsz	((??_main+0)+0+1),f
	goto	u12167
opt asmopt_on

	goto	l1087
	
l1088:	
	
l1087:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u10311
	goto	u10310
u10311:
	goto	l1087
u10310:
	goto	l7287
	
l1089:	
	
l7287:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u12177:
	decfsz	((??_main+0)+0),f
	goto	u12177
	decfsz	((??_main+0)+0+1),f
	goto	u12177
opt asmopt_on

	goto	l1090
	
l1091:	
	
l1090:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u10321
	goto	u10320
u10321:
	goto	l1090
u10320:
	goto	l7289
	
l1092:	
	
l7289:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u12187:
	decfsz	((??_main+0)+0),f
	goto	u12187
	decfsz	((??_main+0)+0+1),f
	goto	u12187
opt asmopt_on

	goto	l1093
	
l1094:	
	
l1093:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u10331
	goto	u10330
u10331:
	goto	l1093
u10330:
	goto	l7291
	
l1095:	
	line	344
	
l7291:	
;keyboard_and_mouse_in_a_glove.c: 344: if ( counter==0 ){ KeySend('1'); prevChar='1'; counter = 10; }
	movf	((_counter+1)),w
	iorwf	((_counter)),w
	skipz
	goto	u10341
	goto	u10340
u10341:
	goto	l7299
u10340:
	
l7293:	
	movlw	(031h)
	fcall	_KeySend
	
l7295:	
	movlw	(031h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7297:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	345
	
l1096:	
	
l7299:	
;keyboard_and_mouse_in_a_glove.c: 345: else if( prevChar=='1' ){ KeySend('^'); KeySend('.'); prevChar='.'; counter = 10; }
	movf	(_prevChar),w
	xorlw	031h
	skipz
	goto	u10351
	goto	u10350
u10351:
	goto	l7307
u10350:
	
l7301:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(02Eh)
	fcall	_KeySend
	
l7303:	
	movlw	(02Eh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7305:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	346
	
l1098:	
	
l7307:	
;keyboard_and_mouse_in_a_glove.c: 346: else if( prevChar=='.' ){ KeySend('^'); KeySend(','); prevChar=','; counter = 10; }
	movf	(_prevChar),w
	xorlw	02Eh
	skipz
	goto	u10361
	goto	u10360
u10361:
	goto	l7315
u10360:
	
l7309:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(02Ch)
	fcall	_KeySend
	
l7311:	
	movlw	(02Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7313:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	347
	
l1100:	
	
l7315:	
;keyboard_and_mouse_in_a_glove.c: 347: else if( prevChar==',' ){ KeySend('^'); KeySend('('); prevChar='('; counter = 10; }
	movf	(_prevChar),w
	xorlw	02Ch
	skipz
	goto	u10371
	goto	u10370
u10371:
	goto	l7323
u10370:
	
l7317:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(028h)
	fcall	_KeySend
	
l7319:	
	movlw	(028h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7321:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	348
	
l1102:	
	
l7323:	
;keyboard_and_mouse_in_a_glove.c: 348: else if( prevChar=='(' ){ KeySend('^'); KeySend(')'); prevChar=')'; counter = 10; }
	movf	(_prevChar),w
	xorlw	028h
	skipz
	goto	u10381
	goto	u10380
u10381:
	goto	l7331
u10380:
	
l7325:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(029h)
	fcall	_KeySend
	
l7327:	
	movlw	(029h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7329:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	349
	
l1104:	
	
l7331:	
;keyboard_and_mouse_in_a_glove.c: 349: else if( prevChar==')' ){ KeySend('^'); KeySend('1'); prevChar='1'; counter = 10; }
	movf	(_prevChar),w
	xorlw	029h
	skipz
	goto	u10391
	goto	u10390
u10391:
	goto	l7865
u10390:
	
l7333:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(031h)
	fcall	_KeySend
	
l7335:	
	movlw	(031h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7337:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	
l1106:	
	goto	l7865
	line	351
	
l1105:	
	goto	l7865
	
l1103:	
	goto	l7865
	
l1101:	
	goto	l7865
	
l1099:	
	goto	l7865
	
l1097:	
;keyboard_and_mouse_in_a_glove.c: 351: }
	goto	l7865
	line	352
	
l1083:	
;keyboard_and_mouse_in_a_glove.c: 352: else if( RD3!=0 ){
	btfss	(67/8),(67)&7
	goto	u10401
	goto	u10400
u10401:
	goto	l1108
u10400:
	line	353
	
l7339:	
;keyboard_and_mouse_in_a_glove.c: 353: nop=1;
	bsf	(_nop/8),(_nop)&7
	line	356
	
l7341:	
;keyboard_and_mouse_in_a_glove.c: 356: _delay((unsigned long)((50)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0)
	opt asmopt_off
movlw	65
movwf	((??_main+0)+0+1),f
	movlw	238
movwf	((??_main+0)+0),f
u12197:
	decfsz	((??_main+0)+0),f
	goto	u12197
	decfsz	((??_main+0)+0+1),f
	goto	u12197
	clrwdt
opt asmopt_on

	goto	l1109
	
l1110:	
	
l1109:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u10411
	goto	u10410
u10411:
	goto	l1109
u10410:
	goto	l7343
	
l1111:	
	
l7343:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u12207:
	decfsz	((??_main+0)+0),f
	goto	u12207
	decfsz	((??_main+0)+0+1),f
	goto	u12207
opt asmopt_on

	goto	l1112
	
l1113:	
	
l1112:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u10421
	goto	u10420
u10421:
	goto	l1112
u10420:
	goto	l7345
	
l1114:	
	
l7345:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u12217:
	decfsz	((??_main+0)+0),f
	goto	u12217
	decfsz	((??_main+0)+0+1),f
	goto	u12217
opt asmopt_on

	goto	l1115
	
l1116:	
	
l1115:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u10431
	goto	u10430
u10431:
	goto	l1115
u10430:
	goto	l7347
	
l1117:	
	
l7347:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u12227:
	decfsz	((??_main+0)+0),f
	goto	u12227
	decfsz	((??_main+0)+0+1),f
	goto	u12227
opt asmopt_on

	goto	l1118
	
l1119:	
	
l1118:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u10441
	goto	u10440
u10441:
	goto	l1118
u10440:
	goto	l7349
	
l1120:	
	line	359
	
l7349:	
;keyboard_and_mouse_in_a_glove.c: 359: if ( counter==0 ){ KeySend('a'); prevChar='a'; counter = 10; }
	movf	((_counter+1)),w
	iorwf	((_counter)),w
	skipz
	goto	u10451
	goto	u10450
u10451:
	goto	l7357
u10450:
	
l7351:	
	movlw	(061h)
	fcall	_KeySend
	
l7353:	
	movlw	(061h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7355:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	360
	
l1121:	
	
l7357:	
;keyboard_and_mouse_in_a_glove.c: 360: else if( prevChar=='a' ){ KeySend('^'); KeySend('b'); prevChar='b'; counter = 10; }
	movf	(_prevChar),w
	xorlw	061h
	skipz
	goto	u10461
	goto	u10460
u10461:
	goto	l7365
u10460:
	
l7359:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(062h)
	fcall	_KeySend
	
l7361:	
	movlw	(062h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7363:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	361
	
l1123:	
	
l7365:	
;keyboard_and_mouse_in_a_glove.c: 361: else if( prevChar=='b' ){ KeySend('^'); KeySend('c'); prevChar='c'; counter = 10; }
	movf	(_prevChar),w
	xorlw	062h
	skipz
	goto	u10471
	goto	u10470
u10471:
	goto	l7373
u10470:
	
l7367:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(063h)
	fcall	_KeySend
	
l7369:	
	movlw	(063h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7371:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	362
	
l1125:	
	
l7373:	
;keyboard_and_mouse_in_a_glove.c: 362: else if( prevChar=='c' ){ KeySend('^'); KeySend('2'); prevChar='2'; counter = 10; }
	movf	(_prevChar),w
	xorlw	063h
	skipz
	goto	u10481
	goto	u10480
u10481:
	goto	l7381
u10480:
	
l7375:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(032h)
	fcall	_KeySend
	
l7377:	
	movlw	(032h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7379:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	363
	
l1127:	
	
l7381:	
;keyboard_and_mouse_in_a_glove.c: 363: else if( prevChar=='2' ){ KeySend('^'); KeySend('a'); prevChar='a'; counter = 10; }
	movf	(_prevChar),w
	xorlw	032h
	skipz
	goto	u10491
	goto	u10490
u10491:
	goto	l7389
u10490:
	
l7383:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(061h)
	fcall	_KeySend
	
l7385:	
	movlw	(061h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7387:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	364
	
l1129:	
	
l7389:	
;keyboard_and_mouse_in_a_glove.c: 364: else { KeySend('a'); prevChar='a'; counter = 10; }
	movlw	(061h)
	fcall	_KeySend
	
l7391:	
	movlw	(061h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7393:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	
l1130:	
	goto	l7865
	
l1128:	
	goto	l7865
	
l1126:	
	goto	l7865
	
l1124:	
	goto	l7865
	
l1122:	
	line	365
;keyboard_and_mouse_in_a_glove.c: 365: }
	goto	l7865
	line	367
	
l1108:	
;keyboard_and_mouse_in_a_glove.c: 367: else if( RB4!=0 ){
	btfss	(52/8),(52)&7
	goto	u10501
	goto	u10500
u10501:
	goto	l1132
u10500:
	line	368
	
l7395:	
;keyboard_and_mouse_in_a_glove.c: 368: nop=1;
	bsf	(_nop/8),(_nop)&7
	line	371
	
l7397:	
;keyboard_and_mouse_in_a_glove.c: 371: _delay((unsigned long)((50)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0)
	opt asmopt_off
movlw	65
movwf	((??_main+0)+0+1),f
	movlw	238
movwf	((??_main+0)+0),f
u12237:
	decfsz	((??_main+0)+0),f
	goto	u12237
	decfsz	((??_main+0)+0+1),f
	goto	u12237
	clrwdt
opt asmopt_on

	goto	l1133
	
l1134:	
	
l1133:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u10511
	goto	u10510
u10511:
	goto	l1133
u10510:
	goto	l7399
	
l1135:	
	
l7399:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u12247:
	decfsz	((??_main+0)+0),f
	goto	u12247
	decfsz	((??_main+0)+0+1),f
	goto	u12247
opt asmopt_on

	goto	l1136
	
l1137:	
	
l1136:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u10521
	goto	u10520
u10521:
	goto	l1136
u10520:
	goto	l7401
	
l1138:	
	
l7401:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u12257:
	decfsz	((??_main+0)+0),f
	goto	u12257
	decfsz	((??_main+0)+0+1),f
	goto	u12257
opt asmopt_on

	goto	l1139
	
l1140:	
	
l1139:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u10531
	goto	u10530
u10531:
	goto	l1139
u10530:
	goto	l7403
	
l1141:	
	
l7403:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u12267:
	decfsz	((??_main+0)+0),f
	goto	u12267
	decfsz	((??_main+0)+0+1),f
	goto	u12267
opt asmopt_on

	goto	l1142
	
l1143:	
	
l1142:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u10541
	goto	u10540
u10541:
	goto	l1142
u10540:
	goto	l7405
	
l1144:	
	line	374
	
l7405:	
;keyboard_and_mouse_in_a_glove.c: 374: if ( counter==0 ){ KeySend('d'); prevChar='d'; counter = 10; }
	movf	((_counter+1)),w
	iorwf	((_counter)),w
	skipz
	goto	u10551
	goto	u10550
u10551:
	goto	l7413
u10550:
	
l7407:	
	movlw	(064h)
	fcall	_KeySend
	
l7409:	
	movlw	(064h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7411:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	375
	
l1145:	
	
l7413:	
;keyboard_and_mouse_in_a_glove.c: 375: else if( prevChar=='d' ){ KeySend('^'); KeySend('e'); prevChar='e'; counter = 10; }
	movf	(_prevChar),w
	xorlw	064h
	skipz
	goto	u10561
	goto	u10560
u10561:
	goto	l7421
u10560:
	
l7415:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(065h)
	fcall	_KeySend
	
l7417:	
	movlw	(065h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7419:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	376
	
l1147:	
	
l7421:	
;keyboard_and_mouse_in_a_glove.c: 376: else if( prevChar=='e' ){ KeySend('^'); KeySend('f'); prevChar='f'; counter = 10; }
	movf	(_prevChar),w
	xorlw	065h
	skipz
	goto	u10571
	goto	u10570
u10571:
	goto	l7429
u10570:
	
l7423:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(066h)
	fcall	_KeySend
	
l7425:	
	movlw	(066h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7427:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	377
	
l1149:	
	
l7429:	
;keyboard_and_mouse_in_a_glove.c: 377: else if( prevChar=='f' ){ KeySend('^'); KeySend('3'); prevChar='3'; counter = 10; }
	movf	(_prevChar),w
	xorlw	066h
	skipz
	goto	u10581
	goto	u10580
u10581:
	goto	l7437
u10580:
	
l7431:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(033h)
	fcall	_KeySend
	
l7433:	
	movlw	(033h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7435:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	378
	
l1151:	
	
l7437:	
;keyboard_and_mouse_in_a_glove.c: 378: else if( prevChar=='3' ){ KeySend('^'); KeySend('d'); prevChar='d'; counter = 10; }
	movf	(_prevChar),w
	xorlw	033h
	skipz
	goto	u10591
	goto	u10590
u10591:
	goto	l7445
u10590:
	
l7439:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(064h)
	fcall	_KeySend
	
l7441:	
	movlw	(064h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7443:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	379
	
l1153:	
	
l7445:	
;keyboard_and_mouse_in_a_glove.c: 379: else { KeySend('d'); prevChar='d'; counter = 10; }
	movlw	(064h)
	fcall	_KeySend
	
l7447:	
	movlw	(064h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7449:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	
l1154:	
	goto	l7865
	
l1152:	
	goto	l7865
	
l1150:	
	goto	l7865
	
l1148:	
	goto	l7865
	
l1146:	
	line	380
;keyboard_and_mouse_in_a_glove.c: 380: }
	goto	l7865
	line	382
	
l1132:	
;keyboard_and_mouse_in_a_glove.c: 382: else if( RB0!=0 ){
	btfss	(48/8),(48)&7
	goto	u10601
	goto	u10600
u10601:
	goto	l1156
u10600:
	line	383
	
l7451:	
;keyboard_and_mouse_in_a_glove.c: 383: nop=1;
	bsf	(_nop/8),(_nop)&7
	line	386
	
l7453:	
;keyboard_and_mouse_in_a_glove.c: 386: _delay((unsigned long)((50)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0)
	opt asmopt_off
movlw	65
movwf	((??_main+0)+0+1),f
	movlw	238
movwf	((??_main+0)+0),f
u12277:
	decfsz	((??_main+0)+0),f
	goto	u12277
	decfsz	((??_main+0)+0+1),f
	goto	u12277
	clrwdt
opt asmopt_on

	goto	l1157
	
l1158:	
	
l1157:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u10611
	goto	u10610
u10611:
	goto	l1157
u10610:
	goto	l7455
	
l1159:	
	
l7455:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u12287:
	decfsz	((??_main+0)+0),f
	goto	u12287
	decfsz	((??_main+0)+0+1),f
	goto	u12287
opt asmopt_on

	goto	l1160
	
l1161:	
	
l1160:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u10621
	goto	u10620
u10621:
	goto	l1160
u10620:
	goto	l7457
	
l1162:	
	
l7457:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u12297:
	decfsz	((??_main+0)+0),f
	goto	u12297
	decfsz	((??_main+0)+0+1),f
	goto	u12297
opt asmopt_on

	goto	l1163
	
l1164:	
	
l1163:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u10631
	goto	u10630
u10631:
	goto	l1163
u10630:
	goto	l7459
	
l1165:	
	
l7459:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u12307:
	decfsz	((??_main+0)+0),f
	goto	u12307
	decfsz	((??_main+0)+0+1),f
	goto	u12307
opt asmopt_on

	goto	l1166
	
l1167:	
	
l1166:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u10641
	goto	u10640
u10641:
	goto	l1166
u10640:
	goto	l7461
	
l1168:	
	line	389
	
l7461:	
;keyboard_and_mouse_in_a_glove.c: 389: if ( counter==0 ){ KeySend('g'); prevChar='g'; counter = 10; }
	movf	((_counter+1)),w
	iorwf	((_counter)),w
	skipz
	goto	u10651
	goto	u10650
u10651:
	goto	l7469
u10650:
	
l7463:	
	movlw	(067h)
	fcall	_KeySend
	
l7465:	
	movlw	(067h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7467:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	390
	
l1169:	
	
l7469:	
;keyboard_and_mouse_in_a_glove.c: 390: else if( prevChar=='g' ){ KeySend('^'); KeySend('h'); prevChar='h'; counter = 10; }
	movf	(_prevChar),w
	xorlw	067h
	skipz
	goto	u10661
	goto	u10660
u10661:
	goto	l7477
u10660:
	
l7471:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(068h)
	fcall	_KeySend
	
l7473:	
	movlw	(068h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7475:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	391
	
l1171:	
	
l7477:	
;keyboard_and_mouse_in_a_glove.c: 391: else if( prevChar=='h' ){ KeySend('^'); KeySend('i'); prevChar='i'; counter = 10; }
	movf	(_prevChar),w
	xorlw	068h
	skipz
	goto	u10671
	goto	u10670
u10671:
	goto	l7485
u10670:
	
l7479:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(069h)
	fcall	_KeySend
	
l7481:	
	movlw	(069h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7483:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	392
	
l1173:	
	
l7485:	
;keyboard_and_mouse_in_a_glove.c: 392: else if( prevChar=='i' ){ KeySend('^'); KeySend('4'); prevChar='4'; counter = 10; }
	movf	(_prevChar),w
	xorlw	069h
	skipz
	goto	u10681
	goto	u10680
u10681:
	goto	l7493
u10680:
	
l7487:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(034h)
	fcall	_KeySend
	
l7489:	
	movlw	(034h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7491:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	393
	
l1175:	
	
l7493:	
;keyboard_and_mouse_in_a_glove.c: 393: else if( prevChar=='4' ){ KeySend('^'); KeySend('g'); prevChar='g'; counter = 10; }
	movf	(_prevChar),w
	xorlw	034h
	skipz
	goto	u10691
	goto	u10690
u10691:
	goto	l7501
u10690:
	
l7495:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(067h)
	fcall	_KeySend
	
l7497:	
	movlw	(067h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7499:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	394
	
l1177:	
	
l7501:	
;keyboard_and_mouse_in_a_glove.c: 394: else { KeySend('g'); prevChar='g'; counter = 10; }
	movlw	(067h)
	fcall	_KeySend
	
l7503:	
	movlw	(067h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7505:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	
l1178:	
	goto	l7865
	
l1176:	
	goto	l7865
	
l1174:	
	goto	l7865
	
l1172:	
	goto	l7865
	
l1170:	
	line	395
;keyboard_and_mouse_in_a_glove.c: 395: }
	goto	l7865
	line	397
	
l1156:	
;keyboard_and_mouse_in_a_glove.c: 397: else if( RD4!=0){
	btfss	(68/8),(68)&7
	goto	u10701
	goto	u10700
u10701:
	goto	l1180
u10700:
	line	398
	
l7507:	
;keyboard_and_mouse_in_a_glove.c: 398: nop=1;
	bsf	(_nop/8),(_nop)&7
	line	401
	
l7509:	
;keyboard_and_mouse_in_a_glove.c: 401: _delay((unsigned long)((50)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0)
	opt asmopt_off
movlw	65
movwf	((??_main+0)+0+1),f
	movlw	238
movwf	((??_main+0)+0),f
u12317:
	decfsz	((??_main+0)+0),f
	goto	u12317
	decfsz	((??_main+0)+0+1),f
	goto	u12317
	clrwdt
opt asmopt_on

	goto	l1181
	
l1182:	
	
l1181:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u10711
	goto	u10710
u10711:
	goto	l1181
u10710:
	goto	l7511
	
l1183:	
	
l7511:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u12327:
	decfsz	((??_main+0)+0),f
	goto	u12327
	decfsz	((??_main+0)+0+1),f
	goto	u12327
opt asmopt_on

	goto	l1184
	
l1185:	
	
l1184:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u10721
	goto	u10720
u10721:
	goto	l1184
u10720:
	goto	l7513
	
l1186:	
	
l7513:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u12337:
	decfsz	((??_main+0)+0),f
	goto	u12337
	decfsz	((??_main+0)+0+1),f
	goto	u12337
opt asmopt_on

	goto	l1187
	
l1188:	
	
l1187:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u10731
	goto	u10730
u10731:
	goto	l1187
u10730:
	goto	l7515
	
l1189:	
	
l7515:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u12347:
	decfsz	((??_main+0)+0),f
	goto	u12347
	decfsz	((??_main+0)+0+1),f
	goto	u12347
opt asmopt_on

	goto	l1190
	
l1191:	
	
l1190:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u10741
	goto	u10740
u10741:
	goto	l1190
u10740:
	goto	l7517
	
l1192:	
	line	404
	
l7517:	
;keyboard_and_mouse_in_a_glove.c: 404: if ( counter==0 ){ KeySend('j'); prevChar='j'; counter = 10; }
	movf	((_counter+1)),w
	iorwf	((_counter)),w
	skipz
	goto	u10751
	goto	u10750
u10751:
	goto	l7525
u10750:
	
l7519:	
	movlw	(06Ah)
	fcall	_KeySend
	
l7521:	
	movlw	(06Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7523:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	405
	
l1193:	
	
l7525:	
;keyboard_and_mouse_in_a_glove.c: 405: else if( prevChar=='j' ){ KeySend('^'); KeySend('k'); prevChar='k'; counter = 10; }
	movf	(_prevChar),w
	xorlw	06Ah
	skipz
	goto	u10761
	goto	u10760
u10761:
	goto	l7533
u10760:
	
l7527:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(06Bh)
	fcall	_KeySend
	
l7529:	
	movlw	(06Bh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7531:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	406
	
l1195:	
	
l7533:	
;keyboard_and_mouse_in_a_glove.c: 406: else if( prevChar=='k' ){ KeySend('^'); KeySend('l'); prevChar='l'; counter = 10; }
	movf	(_prevChar),w
	xorlw	06Bh
	skipz
	goto	u10771
	goto	u10770
u10771:
	goto	l7541
u10770:
	
l7535:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(06Ch)
	fcall	_KeySend
	
l7537:	
	movlw	(06Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7539:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	407
	
l1197:	
	
l7541:	
;keyboard_and_mouse_in_a_glove.c: 407: else if( prevChar=='l' ){ KeySend('^'); KeySend('5'); prevChar='5'; counter = 10; }
	movf	(_prevChar),w
	xorlw	06Ch
	skipz
	goto	u10781
	goto	u10780
u10781:
	goto	l7549
u10780:
	
l7543:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(035h)
	fcall	_KeySend
	
l7545:	
	movlw	(035h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7547:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	408
	
l1199:	
	
l7549:	
;keyboard_and_mouse_in_a_glove.c: 408: else if( prevChar=='5' ){ KeySend('^'); KeySend('j'); prevChar='j'; counter = 10; }
	movf	(_prevChar),w
	xorlw	035h
	skipz
	goto	u10791
	goto	u10790
u10791:
	goto	l7557
u10790:
	
l7551:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(06Ah)
	fcall	_KeySend
	
l7553:	
	movlw	(06Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7555:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	409
	
l1201:	
	
l7557:	
;keyboard_and_mouse_in_a_glove.c: 409: else { KeySend('j'); prevChar='j'; counter = 10; }
	movlw	(06Ah)
	fcall	_KeySend
	
l7559:	
	movlw	(06Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7561:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	
l1202:	
	goto	l7865
	
l1200:	
	goto	l7865
	
l1198:	
	goto	l7865
	
l1196:	
	goto	l7865
	
l1194:	
	line	410
;keyboard_and_mouse_in_a_glove.c: 410: }
	goto	l7865
	line	413
	
l1180:	
;keyboard_and_mouse_in_a_glove.c: 413: else if( RB2!=0){
	btfss	(50/8),(50)&7
	goto	u10801
	goto	u10800
u10801:
	goto	l1204
u10800:
	line	414
	
l7563:	
;keyboard_and_mouse_in_a_glove.c: 414: nop=1;
	bsf	(_nop/8),(_nop)&7
	line	417
	
l7565:	
;keyboard_and_mouse_in_a_glove.c: 417: _delay((unsigned long)((50)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0)
	opt asmopt_off
movlw	65
movwf	((??_main+0)+0+1),f
	movlw	238
movwf	((??_main+0)+0),f
u12357:
	decfsz	((??_main+0)+0),f
	goto	u12357
	decfsz	((??_main+0)+0+1),f
	goto	u12357
	clrwdt
opt asmopt_on

	goto	l1205
	
l1206:	
	
l1205:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u10811
	goto	u10810
u10811:
	goto	l1205
u10810:
	goto	l7567
	
l1207:	
	
l7567:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u12367:
	decfsz	((??_main+0)+0),f
	goto	u12367
	decfsz	((??_main+0)+0+1),f
	goto	u12367
opt asmopt_on

	goto	l1208
	
l1209:	
	
l1208:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u10821
	goto	u10820
u10821:
	goto	l1208
u10820:
	goto	l7569
	
l1210:	
	
l7569:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u12377:
	decfsz	((??_main+0)+0),f
	goto	u12377
	decfsz	((??_main+0)+0+1),f
	goto	u12377
opt asmopt_on

	goto	l1211
	
l1212:	
	
l1211:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u10831
	goto	u10830
u10831:
	goto	l1211
u10830:
	goto	l7571
	
l1213:	
	
l7571:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u12387:
	decfsz	((??_main+0)+0),f
	goto	u12387
	decfsz	((??_main+0)+0+1),f
	goto	u12387
opt asmopt_on

	goto	l1214
	
l1215:	
	
l1214:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u10841
	goto	u10840
u10841:
	goto	l1214
u10840:
	goto	l7573
	
l1216:	
	line	420
	
l7573:	
;keyboard_and_mouse_in_a_glove.c: 420: if ( counter==0 ){ KeySend('m'); prevChar='m'; counter = 10; }
	movf	((_counter+1)),w
	iorwf	((_counter)),w
	skipz
	goto	u10851
	goto	u10850
u10851:
	goto	l7581
u10850:
	
l7575:	
	movlw	(06Dh)
	fcall	_KeySend
	
l7577:	
	movlw	(06Dh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7579:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	421
	
l1217:	
	
l7581:	
;keyboard_and_mouse_in_a_glove.c: 421: else if( prevChar=='m' ){ KeySend('^'); KeySend('n'); prevChar='n'; counter = 10; }
	movf	(_prevChar),w
	xorlw	06Dh
	skipz
	goto	u10861
	goto	u10860
u10861:
	goto	l7589
u10860:
	
l7583:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(06Eh)
	fcall	_KeySend
	
l7585:	
	movlw	(06Eh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7587:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	422
	
l1219:	
	
l7589:	
;keyboard_and_mouse_in_a_glove.c: 422: else if( prevChar=='n' ){ KeySend('^'); KeySend('o'); prevChar='o'; counter = 10; }
	movf	(_prevChar),w
	xorlw	06Eh
	skipz
	goto	u10871
	goto	u10870
u10871:
	goto	l7597
u10870:
	
l7591:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(06Fh)
	fcall	_KeySend
	
l7593:	
	movlw	(06Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7595:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	423
	
l1221:	
	
l7597:	
;keyboard_and_mouse_in_a_glove.c: 423: else if( prevChar=='o' ){ KeySend('^'); KeySend('6'); prevChar='6'; counter = 10; }
	movf	(_prevChar),w
	xorlw	06Fh
	skipz
	goto	u10881
	goto	u10880
u10881:
	goto	l7605
u10880:
	
l7599:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(036h)
	fcall	_KeySend
	
l7601:	
	movlw	(036h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7603:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	424
	
l1223:	
	
l7605:	
;keyboard_and_mouse_in_a_glove.c: 424: else if( prevChar=='6' ){ KeySend('^'); KeySend('m'); prevChar='m'; counter = 10; }
	movf	(_prevChar),w
	xorlw	036h
	skipz
	goto	u10891
	goto	u10890
u10891:
	goto	l7613
u10890:
	
l7607:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(06Dh)
	fcall	_KeySend
	
l7609:	
	movlw	(06Dh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7611:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	425
	
l1225:	
	
l7613:	
;keyboard_and_mouse_in_a_glove.c: 425: else { KeySend('m'); prevChar='m'; counter = 10; }
	movlw	(06Dh)
	fcall	_KeySend
	
l7615:	
	movlw	(06Dh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7617:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	
l1226:	
	goto	l7865
	
l1224:	
	goto	l7865
	
l1222:	
	goto	l7865
	
l1220:	
	goto	l7865
	
l1218:	
	line	426
;keyboard_and_mouse_in_a_glove.c: 426: }
	goto	l7865
	line	428
	
l1204:	
;keyboard_and_mouse_in_a_glove.c: 428: else if( RB3!=0){
	btfss	(51/8),(51)&7
	goto	u10901
	goto	u10900
u10901:
	goto	l1228
u10900:
	line	429
	
l7619:	
;keyboard_and_mouse_in_a_glove.c: 429: nop=1;
	bsf	(_nop/8),(_nop)&7
	line	432
	
l7621:	
;keyboard_and_mouse_in_a_glove.c: 432: _delay((unsigned long)((50)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0)
	opt asmopt_off
movlw	65
movwf	((??_main+0)+0+1),f
	movlw	238
movwf	((??_main+0)+0),f
u12397:
	decfsz	((??_main+0)+0),f
	goto	u12397
	decfsz	((??_main+0)+0+1),f
	goto	u12397
	clrwdt
opt asmopt_on

	goto	l1229
	
l1230:	
	
l1229:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u10911
	goto	u10910
u10911:
	goto	l1229
u10910:
	goto	l7623
	
l1231:	
	
l7623:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u12407:
	decfsz	((??_main+0)+0),f
	goto	u12407
	decfsz	((??_main+0)+0+1),f
	goto	u12407
opt asmopt_on

	goto	l1232
	
l1233:	
	
l1232:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u10921
	goto	u10920
u10921:
	goto	l1232
u10920:
	goto	l7625
	
l1234:	
	
l7625:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u12417:
	decfsz	((??_main+0)+0),f
	goto	u12417
	decfsz	((??_main+0)+0+1),f
	goto	u12417
opt asmopt_on

	goto	l1235
	
l1236:	
	
l1235:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u10931
	goto	u10930
u10931:
	goto	l1235
u10930:
	goto	l7627
	
l1237:	
	
l7627:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u12427:
	decfsz	((??_main+0)+0),f
	goto	u12427
	decfsz	((??_main+0)+0+1),f
	goto	u12427
opt asmopt_on

	goto	l1238
	
l1239:	
	
l1238:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u10941
	goto	u10940
u10941:
	goto	l1238
u10940:
	goto	l7629
	
l1240:	
	line	435
	
l7629:	
;keyboard_and_mouse_in_a_glove.c: 435: if ( counter==0 ){ KeySend('p'); prevChar='p'; counter = 10; }
	movf	((_counter+1)),w
	iorwf	((_counter)),w
	skipz
	goto	u10951
	goto	u10950
u10951:
	goto	l7637
u10950:
	
l7631:	
	movlw	(070h)
	fcall	_KeySend
	
l7633:	
	movlw	(070h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7635:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	436
	
l1241:	
	
l7637:	
;keyboard_and_mouse_in_a_glove.c: 436: else if( prevChar=='p' ){ KeySend('^'); KeySend('q'); prevChar='q'; counter = 10; }
	movf	(_prevChar),w
	xorlw	070h
	skipz
	goto	u10961
	goto	u10960
u10961:
	goto	l7645
u10960:
	
l7639:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(071h)
	fcall	_KeySend
	
l7641:	
	movlw	(071h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7643:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	437
	
l1243:	
	
l7645:	
;keyboard_and_mouse_in_a_glove.c: 437: else if( prevChar=='q' ){ KeySend('^'); KeySend('r'); prevChar='r'; counter = 10; }
	movf	(_prevChar),w
	xorlw	071h
	skipz
	goto	u10971
	goto	u10970
u10971:
	goto	l7653
u10970:
	
l7647:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(072h)
	fcall	_KeySend
	
l7649:	
	movlw	(072h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7651:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	438
	
l1245:	
	
l7653:	
;keyboard_and_mouse_in_a_glove.c: 438: else if( prevChar=='r' ){ KeySend('^'); KeySend('s'); prevChar='s'; counter = 10; }
	movf	(_prevChar),w
	xorlw	072h
	skipz
	goto	u10981
	goto	u10980
u10981:
	goto	l7661
u10980:
	
l7655:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(073h)
	fcall	_KeySend
	
l7657:	
	movlw	(073h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7659:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	439
	
l1247:	
	
l7661:	
;keyboard_and_mouse_in_a_glove.c: 439: else if( prevChar=='s' ){ KeySend('^'); KeySend('7'); prevChar='7'; counter = 10; }
	movf	(_prevChar),w
	xorlw	073h
	skipz
	goto	u10991
	goto	u10990
u10991:
	goto	l7669
u10990:
	
l7663:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(037h)
	fcall	_KeySend
	
l7665:	
	movlw	(037h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7667:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	440
	
l1249:	
	
l7669:	
;keyboard_and_mouse_in_a_glove.c: 440: else if( prevChar=='7' ){ KeySend('^'); KeySend('p'); prevChar='p'; counter = 10; }
	movf	(_prevChar),w
	xorlw	037h
	skipz
	goto	u11001
	goto	u11000
u11001:
	goto	l7677
u11000:
	
l7671:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(070h)
	fcall	_KeySend
	
l7673:	
	movlw	(070h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7675:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	441
	
l1251:	
	
l7677:	
;keyboard_and_mouse_in_a_glove.c: 441: else { KeySend('p'); prevChar='p'; counter = 10; }
	movlw	(070h)
	fcall	_KeySend
	
l7679:	
	movlw	(070h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7681:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	
l1252:	
	goto	l7865
	
l1250:	
	goto	l7865
	
l1248:	
	goto	l7865
	
l1246:	
	goto	l7865
	
l1244:	
	goto	l7865
	
l1242:	
	line	442
;keyboard_and_mouse_in_a_glove.c: 442: }
	goto	l7865
	line	444
	
l1228:	
;keyboard_and_mouse_in_a_glove.c: 444: else if( RD5!=0){
	btfss	(69/8),(69)&7
	goto	u11011
	goto	u11010
u11011:
	goto	l1254
u11010:
	line	445
	
l7683:	
;keyboard_and_mouse_in_a_glove.c: 445: nop=1;
	bsf	(_nop/8),(_nop)&7
	line	448
	
l7685:	
;keyboard_and_mouse_in_a_glove.c: 448: _delay((unsigned long)((50)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0)
	opt asmopt_off
movlw	65
movwf	((??_main+0)+0+1),f
	movlw	238
movwf	((??_main+0)+0),f
u12437:
	decfsz	((??_main+0)+0),f
	goto	u12437
	decfsz	((??_main+0)+0+1),f
	goto	u12437
	clrwdt
opt asmopt_on

	goto	l1255
	
l1256:	
	
l1255:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u11021
	goto	u11020
u11021:
	goto	l1255
u11020:
	goto	l7687
	
l1257:	
	
l7687:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u12447:
	decfsz	((??_main+0)+0),f
	goto	u12447
	decfsz	((??_main+0)+0+1),f
	goto	u12447
opt asmopt_on

	goto	l1258
	
l1259:	
	
l1258:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u11031
	goto	u11030
u11031:
	goto	l1258
u11030:
	goto	l7689
	
l1260:	
	
l7689:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u12457:
	decfsz	((??_main+0)+0),f
	goto	u12457
	decfsz	((??_main+0)+0+1),f
	goto	u12457
opt asmopt_on

	goto	l1261
	
l1262:	
	
l1261:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u11041
	goto	u11040
u11041:
	goto	l1261
u11040:
	goto	l7691
	
l1263:	
	
l7691:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u12467:
	decfsz	((??_main+0)+0),f
	goto	u12467
	decfsz	((??_main+0)+0+1),f
	goto	u12467
opt asmopt_on

	goto	l1264
	
l1265:	
	
l1264:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u11051
	goto	u11050
u11051:
	goto	l1264
u11050:
	goto	l7693
	
l1266:	
	line	451
	
l7693:	
;keyboard_and_mouse_in_a_glove.c: 451: if ( counter==0 ){ KeySend('t'); prevChar='t'; counter = 10; }
	movf	((_counter+1)),w
	iorwf	((_counter)),w
	skipz
	goto	u11061
	goto	u11060
u11061:
	goto	l7701
u11060:
	
l7695:	
	movlw	(074h)
	fcall	_KeySend
	
l7697:	
	movlw	(074h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7699:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	452
	
l1267:	
	
l7701:	
;keyboard_and_mouse_in_a_glove.c: 452: else if( prevChar=='t' ){ KeySend('^'); KeySend('u'); prevChar='u'; counter = 10; }
	movf	(_prevChar),w
	xorlw	074h
	skipz
	goto	u11071
	goto	u11070
u11071:
	goto	l7709
u11070:
	
l7703:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(075h)
	fcall	_KeySend
	
l7705:	
	movlw	(075h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7707:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	453
	
l1269:	
	
l7709:	
;keyboard_and_mouse_in_a_glove.c: 453: else if( prevChar=='u' ){ KeySend('^'); KeySend('v'); prevChar='v'; counter = 10; }
	movf	(_prevChar),w
	xorlw	075h
	skipz
	goto	u11081
	goto	u11080
u11081:
	goto	l7717
u11080:
	
l7711:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(076h)
	fcall	_KeySend
	
l7713:	
	movlw	(076h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7715:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	454
	
l1271:	
	
l7717:	
;keyboard_and_mouse_in_a_glove.c: 454: else if( prevChar=='v' ){ KeySend('^'); KeySend('8'); prevChar='8'; counter = 10; }
	movf	(_prevChar),w
	xorlw	076h
	skipz
	goto	u11091
	goto	u11090
u11091:
	goto	l7725
u11090:
	
l7719:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(038h)
	fcall	_KeySend
	
l7721:	
	movlw	(038h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7723:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	455
	
l1273:	
	
l7725:	
;keyboard_and_mouse_in_a_glove.c: 455: else if( prevChar=='8' ){ KeySend('^'); KeySend('t'); prevChar='t'; counter = 10; }
	movf	(_prevChar),w
	xorlw	038h
	skipz
	goto	u11101
	goto	u11100
u11101:
	goto	l7733
u11100:
	
l7727:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(074h)
	fcall	_KeySend
	
l7729:	
	movlw	(074h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7731:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	456
	
l1275:	
	
l7733:	
;keyboard_and_mouse_in_a_glove.c: 456: else { KeySend('t'); prevChar='t'; counter = 10; }
	movlw	(074h)
	fcall	_KeySend
	
l7735:	
	movlw	(074h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7737:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	
l1276:	
	goto	l7865
	
l1274:	
	goto	l7865
	
l1272:	
	goto	l7865
	
l1270:	
	goto	l7865
	
l1268:	
	line	457
;keyboard_and_mouse_in_a_glove.c: 457: }
	goto	l7865
	line	459
	
l1254:	
;keyboard_and_mouse_in_a_glove.c: 459: else if( RB1!=0 ){
	btfss	(49/8),(49)&7
	goto	u11111
	goto	u11110
u11111:
	goto	l1278
u11110:
	line	460
	
l7739:	
;keyboard_and_mouse_in_a_glove.c: 460: nop=1;
	bsf	(_nop/8),(_nop)&7
	line	463
	
l7741:	
;keyboard_and_mouse_in_a_glove.c: 463: _delay((unsigned long)((50)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0)
	opt asmopt_off
movlw	65
movwf	((??_main+0)+0+1),f
	movlw	238
movwf	((??_main+0)+0),f
u12477:
	decfsz	((??_main+0)+0),f
	goto	u12477
	decfsz	((??_main+0)+0+1),f
	goto	u12477
	clrwdt
opt asmopt_on

	goto	l1279
	
l1280:	
	
l1279:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u11121
	goto	u11120
u11121:
	goto	l1279
u11120:
	goto	l7743
	
l1281:	
	
l7743:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u12487:
	decfsz	((??_main+0)+0),f
	goto	u12487
	decfsz	((??_main+0)+0+1),f
	goto	u12487
opt asmopt_on

	goto	l1282
	
l1283:	
	
l1282:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u11131
	goto	u11130
u11131:
	goto	l1282
u11130:
	goto	l7745
	
l1284:	
	
l7745:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u12497:
	decfsz	((??_main+0)+0),f
	goto	u12497
	decfsz	((??_main+0)+0+1),f
	goto	u12497
opt asmopt_on

	goto	l1285
	
l1286:	
	
l1285:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u11141
	goto	u11140
u11141:
	goto	l1285
u11140:
	goto	l7747
	
l1287:	
	
l7747:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u12507:
	decfsz	((??_main+0)+0),f
	goto	u12507
	decfsz	((??_main+0)+0+1),f
	goto	u12507
opt asmopt_on

	goto	l1288
	
l1289:	
	
l1288:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u11151
	goto	u11150
u11151:
	goto	l1288
u11150:
	goto	l7749
	
l1290:	
	line	466
	
l7749:	
;keyboard_and_mouse_in_a_glove.c: 466: if ( counter==0 ){ KeySend('w'); prevChar='w'; counter = 10; }
	movf	((_counter+1)),w
	iorwf	((_counter)),w
	skipz
	goto	u11161
	goto	u11160
u11161:
	goto	l7757
u11160:
	
l7751:	
	movlw	(077h)
	fcall	_KeySend
	
l7753:	
	movlw	(077h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7755:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	467
	
l1291:	
	
l7757:	
;keyboard_and_mouse_in_a_glove.c: 467: else if( prevChar=='w' ){ KeySend('^'); KeySend('x'); prevChar='x'; counter = 10; }
	movf	(_prevChar),w
	xorlw	077h
	skipz
	goto	u11171
	goto	u11170
u11171:
	goto	l7765
u11170:
	
l7759:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(078h)
	fcall	_KeySend
	
l7761:	
	movlw	(078h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7763:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	468
	
l1293:	
	
l7765:	
;keyboard_and_mouse_in_a_glove.c: 468: else if( prevChar=='x' ){ KeySend('^'); KeySend('y'); prevChar='y'; counter = 10; }
	movf	(_prevChar),w
	xorlw	078h
	skipz
	goto	u11181
	goto	u11180
u11181:
	goto	l7773
u11180:
	
l7767:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(079h)
	fcall	_KeySend
	
l7769:	
	movlw	(079h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7771:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	469
	
l1295:	
	
l7773:	
;keyboard_and_mouse_in_a_glove.c: 469: else if( prevChar=='y' ){ KeySend('^'); KeySend('z'); prevChar='z'; counter = 10; }
	movf	(_prevChar),w
	xorlw	079h
	skipz
	goto	u11191
	goto	u11190
u11191:
	goto	l7781
u11190:
	
l7775:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(07Ah)
	fcall	_KeySend
	
l7777:	
	movlw	(07Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7779:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	470
	
l1297:	
	
l7781:	
;keyboard_and_mouse_in_a_glove.c: 470: else if( prevChar=='z' ){ KeySend('^'); KeySend('9'); prevChar='9'; counter = 10; }
	movf	(_prevChar),w
	xorlw	07Ah
	skipz
	goto	u11201
	goto	u11200
u11201:
	goto	l7789
u11200:
	
l7783:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(039h)
	fcall	_KeySend
	
l7785:	
	movlw	(039h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7787:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	471
	
l1299:	
	
l7789:	
;keyboard_and_mouse_in_a_glove.c: 471: else if( prevChar=='9' ){ KeySend('^'); KeySend('w'); prevChar='w'; counter = 10; }
	movf	(_prevChar),w
	xorlw	039h
	skipz
	goto	u11211
	goto	u11210
u11211:
	goto	l7797
u11210:
	
l7791:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(077h)
	fcall	_KeySend
	
l7793:	
	movlw	(077h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7795:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	472
	
l1301:	
	
l7797:	
;keyboard_and_mouse_in_a_glove.c: 472: else { KeySend('w'); prevChar='w'; counter = 10; }
	movlw	(077h)
	fcall	_KeySend
	
l7799:	
	movlw	(077h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7801:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	
l1302:	
	goto	l7865
	
l1300:	
	goto	l7865
	
l1298:	
	goto	l7865
	
l1296:	
	goto	l7865
	
l1294:	
	goto	l7865
	
l1292:	
	line	473
;keyboard_and_mouse_in_a_glove.c: 473: }
	goto	l7865
	line	474
	
l1278:	
;keyboard_and_mouse_in_a_glove.c: 474: else if( RC5!=0 ){
	btfss	(61/8),(61)&7
	goto	u11221
	goto	u11220
u11221:
	goto	l1304
u11220:
	line	477
	
l7803:	
;keyboard_and_mouse_in_a_glove.c: 477: _delay((unsigned long)((50)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0)
	opt asmopt_off
movlw	65
movwf	((??_main+0)+0+1),f
	movlw	238
movwf	((??_main+0)+0),f
u12517:
	decfsz	((??_main+0)+0),f
	goto	u12517
	decfsz	((??_main+0)+0+1),f
	goto	u12517
	clrwdt
opt asmopt_on

	goto	l1305
	
l1306:	
	
l1305:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u11231
	goto	u11230
u11231:
	goto	l1305
u11230:
	goto	l7805
	
l1307:	
	
l7805:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u12527:
	decfsz	((??_main+0)+0),f
	goto	u12527
	decfsz	((??_main+0)+0+1),f
	goto	u12527
opt asmopt_on

	goto	l1308
	
l1309:	
	
l1308:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u11241
	goto	u11240
u11241:
	goto	l1308
u11240:
	goto	l7807
	
l1310:	
	
l7807:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u12537:
	decfsz	((??_main+0)+0),f
	goto	u12537
	decfsz	((??_main+0)+0+1),f
	goto	u12537
opt asmopt_on

	goto	l1311
	
l1312:	
	
l1311:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u11251
	goto	u11250
u11251:
	goto	l1311
u11250:
	goto	l7809
	
l1313:	
	
l7809:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u12547:
	decfsz	((??_main+0)+0),f
	goto	u12547
	decfsz	((??_main+0)+0+1),f
	goto	u12547
opt asmopt_on

	goto	l1314
	
l1315:	
	
l1314:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u11261
	goto	u11260
u11261:
	goto	l1314
u11260:
	
l1316:	
	line	479
;keyboard_and_mouse_in_a_glove.c: 479: MOUSE_SELECT = 1;
	bsf	(_MOUSE_SELECT/8),(_MOUSE_SELECT)&7
	line	480
;keyboard_and_mouse_in_a_glove.c: 480: RC1 = MOUSE_SELECT;
	btfsc	(_MOUSE_SELECT/8),(_MOUSE_SELECT)&7
	goto	u11271
	goto	u11270
	
u11271:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7
	goto	u11284
u11270:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
u11284:
	line	482
;keyboard_and_mouse_in_a_glove.c: 482: }
	goto	l7865
	line	483
	
l1304:	
;keyboard_and_mouse_in_a_glove.c: 483: else if( RD6!=0 ){
	btfss	(70/8),(70)&7
	goto	u11291
	goto	u11290
u11291:
	goto	l1318
u11290:
	line	484
	
l7811:	
;keyboard_and_mouse_in_a_glove.c: 484: nop=1;
	bsf	(_nop/8),(_nop)&7
	line	487
	
l7813:	
;keyboard_and_mouse_in_a_glove.c: 487: _delay((unsigned long)((50)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0)
	opt asmopt_off
movlw	65
movwf	((??_main+0)+0+1),f
	movlw	238
movwf	((??_main+0)+0),f
u12557:
	decfsz	((??_main+0)+0),f
	goto	u12557
	decfsz	((??_main+0)+0+1),f
	goto	u12557
	clrwdt
opt asmopt_on

	goto	l1319
	
l1320:	
	
l1319:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u11301
	goto	u11300
u11301:
	goto	l1319
u11300:
	goto	l7815
	
l1321:	
	
l7815:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u12567:
	decfsz	((??_main+0)+0),f
	goto	u12567
	decfsz	((??_main+0)+0+1),f
	goto	u12567
opt asmopt_on

	goto	l1322
	
l1323:	
	
l1322:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u11311
	goto	u11310
u11311:
	goto	l1322
u11310:
	goto	l7817
	
l1324:	
	
l7817:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u12577:
	decfsz	((??_main+0)+0),f
	goto	u12577
	decfsz	((??_main+0)+0+1),f
	goto	u12577
opt asmopt_on

	goto	l1325
	
l1326:	
	
l1325:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u11321
	goto	u11320
u11321:
	goto	l1325
u11320:
	goto	l7819
	
l1327:	
	
l7819:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u12587:
	decfsz	((??_main+0)+0),f
	goto	u12587
	decfsz	((??_main+0)+0+1),f
	goto	u12587
opt asmopt_on

	goto	l1328
	
l1329:	
	
l1328:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u11331
	goto	u11330
u11331:
	goto	l1328
u11330:
	goto	l7821
	
l1330:	
	line	490
	
l7821:	
;keyboard_and_mouse_in_a_glove.c: 490: if ( counter==0 ){ KeySend('0'); prevChar='0'; counter = 10; }
	movf	((_counter+1)),w
	iorwf	((_counter)),w
	skipz
	goto	u11341
	goto	u11340
u11341:
	goto	l7829
u11340:
	
l7823:	
	movlw	(030h)
	fcall	_KeySend
	
l7825:	
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7827:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	line	491
	
l1331:	
	
l7829:	
;keyboard_and_mouse_in_a_glove.c: 491: else if( prevChar=='0' ){ KeySend('^'); KeySend(' '); prevChar=' '; counter = 10; }
	movf	(_prevChar),w
	xorlw	030h
	skipz
	goto	u11351
	goto	u11350
u11351:
	goto	l7865
u11350:
	
l7831:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(020h)
	fcall	_KeySend
	
l7833:	
	movlw	(020h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7835:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	
l1333:	
	goto	l7865
	line	492
	
l1332:	
;keyboard_and_mouse_in_a_glove.c: 492: }
	goto	l7865
	line	493
	
l1318:	
;keyboard_and_mouse_in_a_glove.c: 493: else if( RB5!=0 ){
	btfss	(53/8),(53)&7
	goto	u11361
	goto	u11360
u11361:
	goto	l1335
u11360:
	line	495
	
l7837:	
;keyboard_and_mouse_in_a_glove.c: 495: _delay((unsigned long)((50)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0)
	opt asmopt_off
movlw	65
movwf	((??_main+0)+0+1),f
	movlw	238
movwf	((??_main+0)+0),f
u12597:
	decfsz	((??_main+0)+0),f
	goto	u12597
	decfsz	((??_main+0)+0+1),f
	goto	u12597
	clrwdt
opt asmopt_on

	goto	l1336
	
l1337:	
	
l1336:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u11371
	goto	u11370
u11371:
	goto	l1336
u11370:
	goto	l7839
	
l1338:	
	
l7839:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u12607:
	decfsz	((??_main+0)+0),f
	goto	u12607
	decfsz	((??_main+0)+0+1),f
	goto	u12607
opt asmopt_on

	goto	l1339
	
l1340:	
	
l1339:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u11381
	goto	u11380
u11381:
	goto	l1339
u11380:
	goto	l7841
	
l1341:	
	
l7841:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u12617:
	decfsz	((??_main+0)+0),f
	goto	u12617
	decfsz	((??_main+0)+0+1),f
	goto	u12617
opt asmopt_on

	goto	l1342
	
l1343:	
	
l1342:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u11391
	goto	u11390
u11391:
	goto	l1342
u11390:
	goto	l7843
	
l1344:	
	
l7843:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u12627:
	decfsz	((??_main+0)+0),f
	goto	u12627
	decfsz	((??_main+0)+0+1),f
	goto	u12627
opt asmopt_on

	goto	l1345
	
l1346:	
	
l1345:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u11401
	goto	u11400
u11401:
	goto	l1345
u11400:
	goto	l7845
	
l1347:	
	line	498
	
l7845:	
;keyboard_and_mouse_in_a_glove.c: 498: if ( counter==0 ){ KeySend('^'); prevChar='^'; counter = 10; }
	movf	((_counter+1)),w
	iorwf	((_counter)),w
	skipz
	goto	u11411
	goto	u11410
u11411:
	goto	l7865
u11410:
	
l7847:	
	movlw	(05Eh)
	fcall	_KeySend
	
l7849:	
	movlw	(05Eh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l7851:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l7865
	
l1348:	
	line	499
;keyboard_and_mouse_in_a_glove.c: 499: }
	goto	l7865
	line	500
	
l1335:	
;keyboard_and_mouse_in_a_glove.c: 500: else if( RC3!=0 ){
	btfss	(59/8),(59)&7
	goto	u11421
	goto	u11420
u11421:
	goto	l7865
u11420:
	line	503
	
l7853:	
;keyboard_and_mouse_in_a_glove.c: 503: _delay((unsigned long)((50)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RC4!=0)
	opt asmopt_off
movlw	65
movwf	((??_main+0)+0+1),f
	movlw	238
movwf	((??_main+0)+0),f
u12637:
	decfsz	((??_main+0)+0),f
	goto	u12637
	decfsz	((??_main+0)+0+1),f
	goto	u12637
	clrwdt
opt asmopt_on

	goto	l1351
	
l1352:	
	
l1351:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u11431
	goto	u11430
u11431:
	goto	l1351
u11430:
	goto	l7855
	
l1353:	
	
l7855:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u12647:
	decfsz	((??_main+0)+0),f
	goto	u12647
	decfsz	((??_main+0)+0+1),f
	goto	u12647
opt asmopt_on

	goto	l1354
	
l1355:	
	
l1354:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u11441
	goto	u11440
u11441:
	goto	l1354
u11440:
	goto	l7857
	
l1356:	
	
l7857:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u12657:
	decfsz	((??_main+0)+0),f
	goto	u12657
	decfsz	((??_main+0)+0+1),f
	goto	u12657
opt asmopt_on

	goto	l1357
	
l1358:	
	
l1357:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u11451
	goto	u11450
u11451:
	goto	l1357
u11450:
	goto	l7859
	
l1359:	
	
l7859:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u12667:
	decfsz	((??_main+0)+0),f
	goto	u12667
	decfsz	((??_main+0)+0+1),f
	goto	u12667
opt asmopt_on

	goto	l1360
	
l1361:	
	
l1360:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u11461
	goto	u11460
u11461:
	goto	l1360
u11460:
	goto	l7861
	
l1362:	
	line	507
	
l7861:	
;keyboard_and_mouse_in_a_glove.c: 507: CAPSLOCK = !CAPSLOCK ;
	movlw	1<<((_CAPSLOCK)&7)
	xorwf	((_CAPSLOCK)/8),f
	line	508
	
l7863:	
;keyboard_and_mouse_in_a_glove.c: 508: RC2 = CAPSLOCK;
	btfsc	(_CAPSLOCK/8),(_CAPSLOCK)&7
	goto	u11471
	goto	u11470
	
u11471:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7
	goto	u11484
u11470:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
u11484:
	goto	l7865
	line	509
	
l1350:	
	goto	l7865
	line	510
	
l1349:	
	goto	l7865
	
l1334:	
	goto	l7865
	
l1317:	
	goto	l7865
	
l1303:	
	goto	l7865
	
l1277:	
	goto	l7865
	
l1253:	
	goto	l7865
	
l1227:	
	goto	l7865
	
l1203:	
	goto	l7865
	
l1179:	
	goto	l7865
	
l1155:	
	goto	l7865
	
l1131:	
	goto	l7865
	
l1107:	
	goto	l7865
	
l1082:	
	goto	l7865
	line	512
	
l800:	
	line	513
	
l7865:	
;keyboard_and_mouse_in_a_glove.c: 509: }
;keyboard_and_mouse_in_a_glove.c: 510: }
;keyboard_and_mouse_in_a_glove.c: 512: }
;keyboard_and_mouse_in_a_glove.c: 513: nop=1;
	bsf	(_nop/8),(_nop)&7
	goto	l6623
	line	514
	
l1363:	
	line	98
	goto	l6623
	
l1364:	
	line	515
	
l1365:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_a2d_read
psect	text376,local,class=CODE,delta=2
global __ptext376
__ptext376:

;; *************** function _a2d_read *****************
;; Defined at:
;;		line 638 in file "F:\ELECTRONIC\2015\Projects\40. Mouse with keyboard\PGM\Keyboard and Mouse in a glove\ver3\keyboard_and_mouse_in_a_glove.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_read_a2d_value
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text376
	file	"F:\ELECTRONIC\2015\Projects\40. Mouse with keyboard\PGM\Keyboard and Mouse in a glove\ver3\keyboard_and_mouse_in_a_glove.c"
	line	638
	global	__size_of_a2d_read
	__size_of_a2d_read	equ	__end_of_a2d_read-_a2d_read
	
_a2d_read:	
	opt	stack 5
; Regs used in _a2d_read: [wreg+status,2+status,0+pclath+cstack]
	line	639
	
l6553:	
;keyboard_and_mouse_in_a_glove.c: 639: read_a2d_value(0);
	movlw	(0)
	fcall	_read_a2d_value
	line	640
;keyboard_and_mouse_in_a_glove.c: 640: vblAccX = read_a2d_value(0);
	movlw	(0)
	fcall	_read_a2d_value
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_read_a2d_value)),w
	movwf	(_vblAccX)
	movf	(1+(?_read_a2d_value)),w
	movwf	(_vblAccX+1)
	clrf	(_vblAccX+2)
	line	641
;keyboard_and_mouse_in_a_glove.c: 641: read_a2d_value(1);
	movlw	(01h)
	fcall	_read_a2d_value
	line	642
;keyboard_and_mouse_in_a_glove.c: 642: vblAccY = read_a2d_value(1);
	movlw	(01h)
	fcall	_read_a2d_value
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_read_a2d_value)),w
	movwf	(_vblAccY)
	movf	(1+(?_read_a2d_value)),w
	movwf	(_vblAccY+1)
	clrf	(_vblAccY+2)
	line	644
	
l6555:	
;keyboard_and_mouse_in_a_glove.c: 644: if(vblAccX > 402) vblAccX = 402;
	movlw	0
	subwf	(_vblAccX+2),w
	skipz
	goto	u8745
	movlw	01h
	subwf	(_vblAccX+1),w
	skipz
	goto	u8745
	movlw	093h
	subwf	(_vblAccX),w
u8745:
	skipc
	goto	u8741
	goto	u8740
u8741:
	goto	l6559
u8740:
	
l6557:	
	movlw	092h
	movwf	(_vblAccX)
	movlw	01h
	movwf	(_vblAccX+1)
	movlw	0
	movwf	(_vblAccX+2)
	goto	l1465
	line	645
	
l1464:	
	
l6559:	
;keyboard_and_mouse_in_a_glove.c: 645: else if ( vblAccX < 262) vblAccX = 262;
	movlw	0
	subwf	(_vblAccX+2),w
	skipz
	goto	u8755
	movlw	01h
	subwf	(_vblAccX+1),w
	skipz
	goto	u8755
	movlw	06h
	subwf	(_vblAccX),w
u8755:
	skipnc
	goto	u8751
	goto	u8750
u8751:
	goto	l1465
u8750:
	
l6561:	
	movlw	06h
	movwf	(_vblAccX)
	movlw	01h
	movwf	(_vblAccX+1)
	movlw	0
	movwf	(_vblAccX+2)
	goto	l1465
	
l1466:	
	line	646
	
l1465:	
;keyboard_and_mouse_in_a_glove.c: 646: if(vblAccY > 406) vblAccY = 406;
	movlw	0
	subwf	(_vblAccY+2),w
	skipz
	goto	u8765
	movlw	01h
	subwf	(_vblAccY+1),w
	skipz
	goto	u8765
	movlw	097h
	subwf	(_vblAccY),w
u8765:
	skipc
	goto	u8761
	goto	u8760
u8761:
	goto	l6565
u8760:
	
l6563:	
	movlw	096h
	movwf	(_vblAccY)
	movlw	01h
	movwf	(_vblAccY+1)
	movlw	0
	movwf	(_vblAccY+2)
	goto	l1470
	line	647
	
l1467:	
	
l6565:	
;keyboard_and_mouse_in_a_glove.c: 647: else if ( vblAccY < 266) vblAccY = 266;
	movlw	0
	subwf	(_vblAccY+2),w
	skipz
	goto	u8775
	movlw	01h
	subwf	(_vblAccY+1),w
	skipz
	goto	u8775
	movlw	0Ah
	subwf	(_vblAccY),w
u8775:
	skipnc
	goto	u8771
	goto	u8770
u8771:
	goto	l1470
u8770:
	
l6567:	
	movlw	0Ah
	movwf	(_vblAccY)
	movlw	01h
	movwf	(_vblAccY+1)
	movlw	0
	movwf	(_vblAccY+2)
	goto	l1470
	
l1469:	
	goto	l1470
	line	648
	
l1468:	
	
l1470:	
	return
	opt stack 0
GLOBAL	__end_of_a2d_read
	__end_of_a2d_read:
;; =============== function _a2d_read ends ============

	signat	_a2d_read,88
	global	_read_a2d_value
psect	text377,local,class=CODE,delta=2
global __ptext377
__ptext377:

;; *************** function _read_a2d_value *****************
;; Defined at:
;;		line 652 in file "F:\ELECTRONIC\2015\Projects\40. Mouse with keyboard\PGM\Keyboard and Mouse in a glove\ver3\keyboard_and_mouse_in_a_glove.c"
;; Parameters:    Size  Location     Type
;;  channel         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  channel         1    4[BANK0 ] unsigned char 
;;  a2d_value       2    5[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       7       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_a2d_read
;; This function uses a non-reentrant model
;;
psect	text377
	file	"F:\ELECTRONIC\2015\Projects\40. Mouse with keyboard\PGM\Keyboard and Mouse in a glove\ver3\keyboard_and_mouse_in_a_glove.c"
	line	652
	global	__size_of_read_a2d_value
	__size_of_read_a2d_value	equ	__end_of_read_a2d_value-_read_a2d_value
	
_read_a2d_value:	
	opt	stack 5
; Regs used in _read_a2d_value: [wreg+status,2+status,0]
;read_a2d_value@channel stored from wreg
	line	654
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(read_a2d_value@channel)
	
l6535:	
;keyboard_and_mouse_in_a_glove.c: 653: unsigned int a2d_value;
;keyboard_and_mouse_in_a_glove.c: 654: channel = channel << 3;
	movf	(read_a2d_value@channel),w
	movwf	(??_read_a2d_value+0)+0
	movlw	(03h)-1
u8725:
	clrc
	rlf	(??_read_a2d_value+0)+0,f
	addlw	-1
	skipz
	goto	u8725
	clrc
	rlf	(??_read_a2d_value+0)+0,w
	movwf	(??_read_a2d_value+1)+0
	movf	(??_read_a2d_value+1)+0,w
	movwf	(read_a2d_value@channel)
	line	655
	
l6537:	
;keyboard_and_mouse_in_a_glove.c: 655: ADCON0 = ADCON0 & 0b11000111;
	movf	(31),w
	andlw	0C7h
	movwf	(31)	;volatile
	line	656
	
l6539:	
;keyboard_and_mouse_in_a_glove.c: 656: ADCON0 = ADCON0 | channel;
	movf	(31),w	;volatile
	iorwf	(read_a2d_value@channel),w
	movwf	(31)	;volatile
	line	657
	
l6541:	
;keyboard_and_mouse_in_a_glove.c: 657: ADON = 1;
	bsf	(248/8),(248)&7
	line	658
	
l6543:	
;keyboard_and_mouse_in_a_glove.c: 658: _delay(50);
	opt asmopt_off
movlw	16
movwf	(??_read_a2d_value+0)+0,f
u12677:
decfsz	(??_read_a2d_value+0)+0,f
	goto	u12677
	clrwdt
opt asmopt_on

	line	659
	
l6545:	
;keyboard_and_mouse_in_a_glove.c: 659: GO = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(250/8),(250)&7
	line	660
;keyboard_and_mouse_in_a_glove.c: 660: while( GO == 1 );
	goto	l1473
	
l1474:	
	
l1473:	
	btfsc	(250/8),(250)&7
	goto	u8731
	goto	u8730
u8731:
	goto	l1473
u8730:
	goto	l6547
	
l1475:	
	line	664
	
l6547:	
;keyboard_and_mouse_in_a_glove.c: 661: {
;keyboard_and_mouse_in_a_glove.c: 663: }
;keyboard_and_mouse_in_a_glove.c: 664: a2d_value = ADRESH;
	movf	(30),w	;volatile
	movwf	(??_read_a2d_value+0)+0
	clrf	(??_read_a2d_value+0)+0+1
	movf	0+(??_read_a2d_value+0)+0,w
	movwf	(read_a2d_value@a2d_value)
	movf	1+(??_read_a2d_value+0)+0,w
	movwf	(read_a2d_value@a2d_value+1)
	line	665
;keyboard_and_mouse_in_a_glove.c: 665: a2d_value = a2d_value << 8;
	movf	(read_a2d_value@a2d_value),w
	movwf	(??_read_a2d_value+0)+0+1
	clrf	(??_read_a2d_value+0)+0
	movf	0+(??_read_a2d_value+0)+0,w
	movwf	(read_a2d_value@a2d_value)
	movf	1+(??_read_a2d_value+0)+0,w
	movwf	(read_a2d_value@a2d_value+1)
	line	666
;keyboard_and_mouse_in_a_glove.c: 666: a2d_value = a2d_value + ADRESL;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(read_a2d_value@a2d_value),w
	movwf	(read_a2d_value@a2d_value)
	movf	(read_a2d_value@a2d_value+1),w
	skipnc
	incf	(read_a2d_value@a2d_value+1),w
	movwf	((read_a2d_value@a2d_value))+1
	line	667
	
l6549:	
;keyboard_and_mouse_in_a_glove.c: 667: return a2d_value;
	movf	(read_a2d_value@a2d_value+1),w
	clrf	(?_read_a2d_value+1)
	addwf	(?_read_a2d_value+1)
	movf	(read_a2d_value@a2d_value),w
	clrf	(?_read_a2d_value)
	addwf	(?_read_a2d_value)

	goto	l1476
	
l6551:	
	line	668
	
l1476:	
	return
	opt stack 0
GLOBAL	__end_of_read_a2d_value
	__end_of_read_a2d_value:
;; =============== function _read_a2d_value ends ============

	signat	_read_a2d_value,4218
	global	___ltmod
psect	text378,local,class=CODE,delta=2
global __ptext378
__ptext378:

;; *************** function ___ltmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ltmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         3    0[BANK0 ] unsigned um
;;  dividend        3    3[BANK0 ] unsigned um
;; Auto vars:     Size  Location     Type
;;  counter         1    7[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    0[BANK0 ] unsigned um
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text378
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ltmod.c"
	line	5
	global	__size_of___ltmod
	__size_of___ltmod	equ	__end_of___ltmod-___ltmod
	
___ltmod:	
	opt	stack 6
; Regs used in ___ltmod: [wreg+status,2+status,0]
	line	8
	
l6515:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ltmod@divisor+2),w
	iorwf	(___ltmod@divisor+1),w
	iorwf	(___ltmod@divisor),w
	skipnz
	goto	u8661
	goto	u8660
u8661:
	goto	l6531
u8660:
	line	9
	
l6517:	
	clrf	(___ltmod@counter)
	bsf	status,0
	rlf	(___ltmod@counter),f
	line	10
	goto	l6521
	
l2477:	
	line	11
	
l6519:	
	movlw	01h
u8675:
	clrc
	rlf	(___ltmod@divisor),f
	rlf	(___ltmod@divisor+1),f
	rlf	(___ltmod@divisor+2),f
	addlw	-1
	skipz
	goto	u8675
	line	12
	movlw	(01h)
	movwf	(??___ltmod+0)+0
	movf	(??___ltmod+0)+0,w
	addwf	(___ltmod@counter),f
	goto	l6521
	line	13
	
l2476:	
	line	10
	
l6521:	
	btfss	(___ltmod@divisor+2),(23)&7
	goto	u8681
	goto	u8680
u8681:
	goto	l6519
u8680:
	goto	l6523
	
l2478:	
	goto	l6523
	line	14
	
l2479:	
	line	15
	
l6523:	
	movf	(___ltmod@divisor+2),w
	subwf	(___ltmod@dividend+2),w
	skipz
	goto	u8695
	movf	(___ltmod@divisor+1),w
	subwf	(___ltmod@dividend+1),w
	skipz
	goto	u8695
	movf	(___ltmod@divisor),w
	subwf	(___ltmod@dividend),w
u8695:
	skipc
	goto	u8691
	goto	u8690
u8691:
	goto	l6527
u8690:
	line	16
	
l6525:	
	movf	(___ltmod@divisor),w
	subwf	(___ltmod@dividend),f
	movf	(___ltmod@divisor+1),w
	skipc
	incfsz	(___ltmod@divisor+1),w
	subwf	(___ltmod@dividend+1),f
	movf	(___ltmod@divisor+2),w
	skipc
	incf	(___ltmod@divisor+2),w
	subwf	(___ltmod@dividend+2),f
	goto	l6527
	
l2480:	
	line	17
	
l6527:	
	movlw	01h
u8705:
	clrc
	rrf	(___ltmod@divisor+2),f
	rrf	(___ltmod@divisor+1),f
	rrf	(___ltmod@divisor),f
	addlw	-1
	skipz
	goto	u8705

	line	18
	
l6529:	
	movlw	low(01h)
	subwf	(___ltmod@counter),f
	btfss	status,2
	goto	u8711
	goto	u8710
u8711:
	goto	l6523
u8710:
	goto	l6531
	
l2481:	
	goto	l6531
	line	19
	
l2475:	
	line	20
	
l6531:	
	movf	(___ltmod@dividend),w
	movwf	(?___ltmod)
	movf	(___ltmod@dividend+1),w
	movwf	(?___ltmod+1)
	movf	(___ltmod@dividend+2),w
	movwf	(?___ltmod+2)
	goto	l2482
	
l6533:	
	line	21
	
l2482:	
	return
	opt stack 0
GLOBAL	__end_of___ltmod
	__end_of___ltmod:
;; =============== function ___ltmod ends ============

	signat	___ltmod,8315
	global	___ltdiv
psect	text379,local,class=CODE,delta=2
global __ptext379
__ptext379:

;; *************** function ___ltdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ltdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         3    8[BANK0 ] unsigned um
;;  dividend        3   11[BANK0 ] unsigned um
;; Auto vars:     Size  Location     Type
;;  quotient        3   15[BANK0 ] unsigned um
;;  counter         1   18[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[BANK0 ] unsigned um
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0      11       0       0       0
;;Total ram usage:       11 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text379
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ltdiv.c"
	line	5
	global	__size_of___ltdiv
	__size_of___ltdiv	equ	__end_of___ltdiv-___ltdiv
	
___ltdiv:	
	opt	stack 6
; Regs used in ___ltdiv: [wreg+status,2+status,0]
	line	9
	
l6491:	
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ltdiv@quotient)
	movlw	0
	movwf	(___ltdiv@quotient+1)
	movlw	0
	movwf	(___ltdiv@quotient+2)
	line	10
	movf	(___ltdiv@divisor+2),w
	iorwf	(___ltdiv@divisor+1),w
	iorwf	(___ltdiv@divisor),w
	skipnz
	goto	u8591
	goto	u8590
u8591:
	goto	l6511
u8590:
	line	11
	
l6493:	
	clrf	(___ltdiv@counter)
	bsf	status,0
	rlf	(___ltdiv@counter),f
	line	12
	goto	l6497
	
l2467:	
	line	13
	
l6495:	
	movlw	01h
u8605:
	clrc
	rlf	(___ltdiv@divisor),f
	rlf	(___ltdiv@divisor+1),f
	rlf	(___ltdiv@divisor+2),f
	addlw	-1
	skipz
	goto	u8605
	line	14
	movlw	(01h)
	movwf	(??___ltdiv+0)+0
	movf	(??___ltdiv+0)+0,w
	addwf	(___ltdiv@counter),f
	goto	l6497
	line	15
	
l2466:	
	line	12
	
l6497:	
	btfss	(___ltdiv@divisor+2),(23)&7
	goto	u8611
	goto	u8610
u8611:
	goto	l6495
u8610:
	goto	l6499
	
l2468:	
	goto	l6499
	line	16
	
l2469:	
	line	17
	
l6499:	
	movlw	01h
u8625:
	clrc
	rlf	(___ltdiv@quotient),f
	rlf	(___ltdiv@quotient+1),f
	rlf	(___ltdiv@quotient+2),f
	addlw	-1
	skipz
	goto	u8625
	line	18
	
l6501:	
	movf	(___ltdiv@divisor+2),w
	subwf	(___ltdiv@dividend+2),w
	skipz
	goto	u8635
	movf	(___ltdiv@divisor+1),w
	subwf	(___ltdiv@dividend+1),w
	skipz
	goto	u8635
	movf	(___ltdiv@divisor),w
	subwf	(___ltdiv@dividend),w
u8635:
	skipc
	goto	u8631
	goto	u8630
u8631:
	goto	l6507
u8630:
	line	19
	
l6503:	
	movf	(___ltdiv@divisor),w
	subwf	(___ltdiv@dividend),f
	movf	(___ltdiv@divisor+1),w
	skipc
	incfsz	(___ltdiv@divisor+1),w
	subwf	(___ltdiv@dividend+1),f
	movf	(___ltdiv@divisor+2),w
	skipc
	incf	(___ltdiv@divisor+2),w
	subwf	(___ltdiv@dividend+2),f
	line	20
	
l6505:	
	bsf	(___ltdiv@quotient)+(0/8),(0)&7
	goto	l6507
	line	21
	
l2470:	
	line	22
	
l6507:	
	movlw	01h
u8645:
	clrc
	rrf	(___ltdiv@divisor+2),f
	rrf	(___ltdiv@divisor+1),f
	rrf	(___ltdiv@divisor),f
	addlw	-1
	skipz
	goto	u8645

	line	23
	
l6509:	
	movlw	low(01h)
	subwf	(___ltdiv@counter),f
	btfss	status,2
	goto	u8651
	goto	u8650
u8651:
	goto	l6499
u8650:
	goto	l6511
	
l2471:	
	goto	l6511
	line	24
	
l2465:	
	line	25
	
l6511:	
	movf	(___ltdiv@quotient),w
	movwf	(?___ltdiv)
	movf	(___ltdiv@quotient+1),w
	movwf	(?___ltdiv+1)
	movf	(___ltdiv@quotient+2),w
	movwf	(?___ltdiv+2)
	goto	l2472
	
l6513:	
	line	26
	
l2472:	
	return
	opt stack 0
GLOBAL	__end_of___ltdiv
	__end_of___ltdiv:
;; =============== function ___ltdiv ends ============

	signat	___ltdiv,8315
	global	_MouseSendRC
psect	text380,local,class=CODE,delta=2
global __ptext380
__ptext380:

;; *************** function _MouseSendRC *****************
;; Defined at:
;;		line 593 in file "F:\ELECTRONIC\2015\Projects\40. Mouse with keyboard\PGM\Keyboard and Mouse in a glove\ver3\keyboard_and_mouse_in_a_glove.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text380
	file	"F:\ELECTRONIC\2015\Projects\40. Mouse with keyboard\PGM\Keyboard and Mouse in a glove\ver3\keyboard_and_mouse_in_a_glove.c"
	line	593
	global	__size_of_MouseSendRC
	__size_of_MouseSendRC	equ	__end_of_MouseSendRC-_MouseSendRC
	
_MouseSendRC:	
	opt	stack 6
; Regs used in _MouseSendRC: [wreg]
	line	594
	
l6477:	
;keyboard_and_mouse_in_a_glove.c: 594: while(!TXIF);
	goto	l1401
	
l1402:	
	
l1401:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7
	goto	u8531
	goto	u8530
u8531:
	goto	l1401
u8530:
	goto	l6479
	
l1403:	
	line	595
	
l6479:	
;keyboard_and_mouse_in_a_glove.c: 595: TXREG = '%';
	movlw	(025h)
	movwf	(25)	;volatile
	line	596
;keyboard_and_mouse_in_a_glove.c: 596: while(!TXIF);
	goto	l1404
	
l1405:	
	
l1404:	
	btfss	(100/8),(100)&7
	goto	u8541
	goto	u8540
u8541:
	goto	l1404
u8540:
	goto	l6481
	
l1406:	
	line	597
	
l6481:	
;keyboard_and_mouse_in_a_glove.c: 597: TXREG = 'R';
	movlw	(052h)
	movwf	(25)	;volatile
	line	598
;keyboard_and_mouse_in_a_glove.c: 598: while(!TXIF);
	goto	l1407
	
l1408:	
	
l1407:	
	btfss	(100/8),(100)&7
	goto	u8551
	goto	u8550
u8551:
	goto	l1407
u8550:
	goto	l6483
	
l1409:	
	line	599
	
l6483:	
;keyboard_and_mouse_in_a_glove.c: 599: TXREG = ' ';
	movlw	(020h)
	movwf	(25)	;volatile
	line	600
;keyboard_and_mouse_in_a_glove.c: 600: while(!TXIF);
	goto	l1410
	
l1411:	
	
l1410:	
	btfss	(100/8),(100)&7
	goto	u8561
	goto	u8560
u8561:
	goto	l1410
u8560:
	goto	l6485
	
l1412:	
	line	601
	
l6485:	
;keyboard_and_mouse_in_a_glove.c: 601: TXREG = ' ';
	movlw	(020h)
	movwf	(25)	;volatile
	line	602
;keyboard_and_mouse_in_a_glove.c: 602: while(!TXIF);
	goto	l1413
	
l1414:	
	
l1413:	
	btfss	(100/8),(100)&7
	goto	u8571
	goto	u8570
u8571:
	goto	l1413
u8570:
	goto	l6487
	
l1415:	
	line	603
	
l6487:	
;keyboard_and_mouse_in_a_glove.c: 603: TXREG = ' ';
	movlw	(020h)
	movwf	(25)	;volatile
	line	604
;keyboard_and_mouse_in_a_glove.c: 604: while(!TXIF);
	goto	l1416
	
l1417:	
	
l1416:	
	btfss	(100/8),(100)&7
	goto	u8581
	goto	u8580
u8581:
	goto	l1416
u8580:
	goto	l6489
	
l1418:	
	line	605
	
l6489:	
;keyboard_and_mouse_in_a_glove.c: 605: TXREG = '?';
	movlw	(03Fh)
	movwf	(25)	;volatile
	line	606
	
l1419:	
	return
	opt stack 0
GLOBAL	__end_of_MouseSendRC
	__end_of_MouseSendRC:
;; =============== function _MouseSendRC ends ============

	signat	_MouseSendRC,88
	global	_MouseSendLC
psect	text381,local,class=CODE,delta=2
global __ptext381
__ptext381:

;; *************** function _MouseSendLC *****************
;; Defined at:
;;		line 578 in file "F:\ELECTRONIC\2015\Projects\40. Mouse with keyboard\PGM\Keyboard and Mouse in a glove\ver3\keyboard_and_mouse_in_a_glove.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text381
	file	"F:\ELECTRONIC\2015\Projects\40. Mouse with keyboard\PGM\Keyboard and Mouse in a glove\ver3\keyboard_and_mouse_in_a_glove.c"
	line	578
	global	__size_of_MouseSendLC
	__size_of_MouseSendLC	equ	__end_of_MouseSendLC-_MouseSendLC
	
_MouseSendLC:	
	opt	stack 6
; Regs used in _MouseSendLC: [wreg]
	line	579
	
l6463:	
;keyboard_and_mouse_in_a_glove.c: 579: while(!TXIF);
	goto	l1380
	
l1381:	
	
l1380:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7
	goto	u8471
	goto	u8470
u8471:
	goto	l1380
u8470:
	goto	l6465
	
l1382:	
	line	580
	
l6465:	
;keyboard_and_mouse_in_a_glove.c: 580: TXREG = '%';
	movlw	(025h)
	movwf	(25)	;volatile
	line	581
;keyboard_and_mouse_in_a_glove.c: 581: while(!TXIF);
	goto	l1383
	
l1384:	
	
l1383:	
	btfss	(100/8),(100)&7
	goto	u8481
	goto	u8480
u8481:
	goto	l1383
u8480:
	goto	l6467
	
l1385:	
	line	582
	
l6467:	
;keyboard_and_mouse_in_a_glove.c: 582: TXREG = 'L';
	movlw	(04Ch)
	movwf	(25)	;volatile
	line	583
;keyboard_and_mouse_in_a_glove.c: 583: while(!TXIF);
	goto	l1386
	
l1387:	
	
l1386:	
	btfss	(100/8),(100)&7
	goto	u8491
	goto	u8490
u8491:
	goto	l1386
u8490:
	goto	l6469
	
l1388:	
	line	584
	
l6469:	
;keyboard_and_mouse_in_a_glove.c: 584: TXREG = ' ';
	movlw	(020h)
	movwf	(25)	;volatile
	line	585
;keyboard_and_mouse_in_a_glove.c: 585: while(!TXIF);
	goto	l1389
	
l1390:	
	
l1389:	
	btfss	(100/8),(100)&7
	goto	u8501
	goto	u8500
u8501:
	goto	l1389
u8500:
	goto	l6471
	
l1391:	
	line	586
	
l6471:	
;keyboard_and_mouse_in_a_glove.c: 586: TXREG = ' ';
	movlw	(020h)
	movwf	(25)	;volatile
	line	587
;keyboard_and_mouse_in_a_glove.c: 587: while(!TXIF);
	goto	l1392
	
l1393:	
	
l1392:	
	btfss	(100/8),(100)&7
	goto	u8511
	goto	u8510
u8511:
	goto	l1392
u8510:
	goto	l6473
	
l1394:	
	line	588
	
l6473:	
;keyboard_and_mouse_in_a_glove.c: 588: TXREG = ' ';
	movlw	(020h)
	movwf	(25)	;volatile
	line	589
;keyboard_and_mouse_in_a_glove.c: 589: while(!TXIF);
	goto	l1395
	
l1396:	
	
l1395:	
	btfss	(100/8),(100)&7
	goto	u8521
	goto	u8520
u8521:
	goto	l1395
u8520:
	goto	l6475
	
l1397:	
	line	590
	
l6475:	
;keyboard_and_mouse_in_a_glove.c: 590: TXREG = '?';
	movlw	(03Fh)
	movwf	(25)	;volatile
	line	591
	
l1398:	
	return
	opt stack 0
GLOBAL	__end_of_MouseSendLC
	__end_of_MouseSendLC:
;; =============== function _MouseSendLC ends ============

	signat	_MouseSendLC,88
	global	_KeySend
psect	text382,local,class=CODE,delta=2
global __ptext382
__ptext382:

;; *************** function _KeySend *****************
;; Defined at:
;;		line 623 in file "F:\ELECTRONIC\2015\Projects\40. Mouse with keyboard\PGM\Keyboard and Mouse in a glove\ver3\keyboard_and_mouse_in_a_glove.c"
;; Parameters:    Size  Location     Type
;;  key             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  key             1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text382
	file	"F:\ELECTRONIC\2015\Projects\40. Mouse with keyboard\PGM\Keyboard and Mouse in a glove\ver3\keyboard_and_mouse_in_a_glove.c"
	line	623
	global	__size_of_KeySend
	__size_of_KeySend	equ	__end_of_KeySend-_KeySend
	
_KeySend:	
	opt	stack 6
; Regs used in _KeySend: [wreg]
;KeySend@key stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(KeySend@key)
	line	624
	
l6449:	
;keyboard_and_mouse_in_a_glove.c: 624: while(!TXIF);
	goto	l1443
	
l1444:	
	
l1443:	
	btfss	(100/8),(100)&7
	goto	u8411
	goto	u8410
u8411:
	goto	l1443
u8410:
	goto	l6451
	
l1445:	
	line	625
	
l6451:	
;keyboard_and_mouse_in_a_glove.c: 625: TXREG = '%';
	movlw	(025h)
	movwf	(25)	;volatile
	line	626
;keyboard_and_mouse_in_a_glove.c: 626: while(!TXIF);
	goto	l1446
	
l1447:	
	
l1446:	
	btfss	(100/8),(100)&7
	goto	u8421
	goto	u8420
u8421:
	goto	l1446
u8420:
	goto	l6453
	
l1448:	
	line	627
	
l6453:	
;keyboard_and_mouse_in_a_glove.c: 627: TXREG = 'K';
	movlw	(04Bh)
	movwf	(25)	;volatile
	line	628
;keyboard_and_mouse_in_a_glove.c: 628: while(!TXIF);
	goto	l1449
	
l1450:	
	
l1449:	
	btfss	(100/8),(100)&7
	goto	u8431
	goto	u8430
u8431:
	goto	l1449
u8430:
	goto	l6455
	
l1451:	
	line	629
	
l6455:	
;keyboard_and_mouse_in_a_glove.c: 629: TXREG = key;
	movf	(KeySend@key),w
	movwf	(25)	;volatile
	line	630
;keyboard_and_mouse_in_a_glove.c: 630: while(!TXIF);
	goto	l1452
	
l1453:	
	
l1452:	
	btfss	(100/8),(100)&7
	goto	u8441
	goto	u8440
u8441:
	goto	l1452
u8440:
	goto	l6457
	
l1454:	
	line	631
	
l6457:	
;keyboard_and_mouse_in_a_glove.c: 631: TXREG = ' ';
	movlw	(020h)
	movwf	(25)	;volatile
	line	632
;keyboard_and_mouse_in_a_glove.c: 632: while(!TXIF);
	goto	l1455
	
l1456:	
	
l1455:	
	btfss	(100/8),(100)&7
	goto	u8451
	goto	u8450
u8451:
	goto	l1455
u8450:
	goto	l6459
	
l1457:	
	line	633
	
l6459:	
;keyboard_and_mouse_in_a_glove.c: 633: TXREG = ' ';
	movlw	(020h)
	movwf	(25)	;volatile
	line	634
;keyboard_and_mouse_in_a_glove.c: 634: while(!TXIF);
	goto	l1458
	
l1459:	
	
l1458:	
	btfss	(100/8),(100)&7
	goto	u8461
	goto	u8460
u8461:
	goto	l1458
u8460:
	goto	l6461
	
l1460:	
	line	635
	
l6461:	
;keyboard_and_mouse_in_a_glove.c: 635: TXREG = '?';
	movlw	(03Fh)
	movwf	(25)	;volatile
	line	636
	
l1461:	
	return
	opt stack 0
GLOBAL	__end_of_KeySend
	__end_of_KeySend:
;; =============== function _KeySend ends ============

	signat	_KeySend,4216
	global	_InterruptEn
psect	text383,local,class=CODE,delta=2
global __ptext383
__ptext383:

;; *************** function _InterruptEn *****************
;; Defined at:
;;		line 550 in file "F:\ELECTRONIC\2015\Projects\40. Mouse with keyboard\PGM\Keyboard and Mouse in a glove\ver3\keyboard_and_mouse_in_a_glove.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text383
	file	"F:\ELECTRONIC\2015\Projects\40. Mouse with keyboard\PGM\Keyboard and Mouse in a glove\ver3\keyboard_and_mouse_in_a_glove.c"
	line	550
	global	__size_of_InterruptEn
	__size_of_InterruptEn	equ	__end_of_InterruptEn-_InterruptEn
	
_InterruptEn:	
	opt	stack 6
; Regs used in _InterruptEn: []
	line	552
	
l6447:	
;keyboard_and_mouse_in_a_glove.c: 552: RBIE = 0;
	bcf	(91/8),(91)&7
	line	553
;keyboard_and_mouse_in_a_glove.c: 553: INTE = 0;
	bcf	(92/8),(92)&7
	line	555
;keyboard_and_mouse_in_a_glove.c: 555: PSPIE = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1127/8)^080h,(1127)&7
	line	556
;keyboard_and_mouse_in_a_glove.c: 556: ADIE = 0;
	bcf	(1126/8)^080h,(1126)&7
	line	558
;keyboard_and_mouse_in_a_glove.c: 558: TXIE = 0;
	bcf	(1124/8)^080h,(1124)&7
	line	559
;keyboard_and_mouse_in_a_glove.c: 559: RCIE = 0;
	bcf	(1125/8)^080h,(1125)&7
	line	561
;keyboard_and_mouse_in_a_glove.c: 561: SSPIE = 0;
	bcf	(1123/8)^080h,(1123)&7
	line	562
;keyboard_and_mouse_in_a_glove.c: 562: CCP1IE = 0;
	bcf	(1122/8)^080h,(1122)&7
	line	564
;keyboard_and_mouse_in_a_glove.c: 564: TMR1IE = 1;
	bsf	(1120/8)^080h,(1120)&7
	line	565
;keyboard_and_mouse_in_a_glove.c: 565: TMR2IE = 0;
	bcf	(1121/8)^080h,(1121)&7
	line	566
;keyboard_and_mouse_in_a_glove.c: 566: T0IE = 0;
	bcf	(93/8),(93)&7
	line	568
;keyboard_and_mouse_in_a_glove.c: 568: EEIE = 0;
	bcf	(1132/8)^080h,(1132)&7
	line	569
;keyboard_and_mouse_in_a_glove.c: 569: BCLIE = 0;
	bcf	(1131/8)^080h,(1131)&7
	line	570
;keyboard_and_mouse_in_a_glove.c: 570: CCP2IE = 0;
	bcf	(1128/8)^080h,(1128)&7
	line	573
;keyboard_and_mouse_in_a_glove.c: 573: GIE = 1;
	bsf	(95/8),(95)&7
	line	574
;keyboard_and_mouse_in_a_glove.c: 574: PEIE = 1;
	bsf	(94/8),(94)&7
	line	576
	
l1377:	
	return
	opt stack 0
GLOBAL	__end_of_InterruptEn
	__end_of_InterruptEn:
;; =============== function _InterruptEn ends ============

	signat	_InterruptEn,88
	global	_isr
psect	text384,local,class=CODE,delta=2
global __ptext384
__ptext384:

;; *************** function _isr *****************
;; Defined at:
;;		line 518 in file "F:\ELECTRONIC\2015\Projects\40. Mouse with keyboard\PGM\Keyboard and Mouse in a glove\ver3\keyboard_and_mouse_in_a_glove.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          5       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text384
	file	"F:\ELECTRONIC\2015\Projects\40. Mouse with keyboard\PGM\Keyboard and Mouse in a glove\ver3\keyboard_and_mouse_in_a_glove.c"
	line	518
	global	__size_of_isr
	__size_of_isr	equ	__end_of_isr-_isr
	
_isr:	
	opt	stack 5
; Regs used in _isr: [wreg+status,2+status,0]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_isr+1)
	movf	fsr0,w
	movwf	(??_isr+2)
	movf	pclath,w
	movwf	(??_isr+3)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_isr+4)
	ljmp	_isr
psect	text384
	line	520
	
i1l5017:	
;keyboard_and_mouse_in_a_glove.c: 520: if(TMR1IF==1){
	btfss	(96/8),(96)&7
	goto	u546_21
	goto	u546_20
u546_21:
	goto	i1l1374
u546_20:
	line	525
	
i1l5019:	
;keyboard_and_mouse_in_a_glove.c: 525: if( counter>0 ) counter--;
	movf	(_counter+1),w
	iorwf	(_counter),w
	skipnz
	goto	u547_21
	goto	u547_20
u547_21:
	goto	i1l5023
u547_20:
	
i1l5021:	
	movlw	low(01h)
	subwf	(_counter),f
	movlw	high(01h)
	skipc
	decf	(_counter+1),f
	subwf	(_counter+1),f
	goto	i1l5023
	
i1l1369:	
	line	526
	
i1l5023:	
;keyboard_and_mouse_in_a_glove.c: 526: msecond ++;
	movlw	(01h)
	movwf	(??_isr+0)+0
	movf	(??_isr+0)+0,w
	addwf	(_msecond),f
	line	527
	
i1l5025:	
;keyboard_and_mouse_in_a_glove.c: 527: if(msecond == 10)
	movf	(_msecond),w
	xorlw	0Ah
	skipz
	goto	u548_21
	goto	u548_20
u548_21:
	goto	i1l5047
u548_20:
	line	529
	
i1l5027:	
;keyboard_and_mouse_in_a_glove.c: 528: {
;keyboard_and_mouse_in_a_glove.c: 529: second ++;
	movlw	(01h)
	movwf	(??_isr+0)+0
	movf	(??_isr+0)+0,w
	addwf	(_second),f
	line	530
	
i1l5029:	
;keyboard_and_mouse_in_a_glove.c: 530: msecond = 0;
	clrf	(_msecond)
	line	531
	
i1l5031:	
;keyboard_and_mouse_in_a_glove.c: 531: RC0 = !RC0;
	movlw	1<<((56)&7)
	xorwf	((56)/8),f
	line	532
	
i1l5033:	
;keyboard_and_mouse_in_a_glove.c: 532: if( second == 60)
	movf	(_second),w
	xorlw	03Ch
	skipz
	goto	u549_21
	goto	u549_20
u549_21:
	goto	i1l5047
u549_20:
	line	534
	
i1l5035:	
;keyboard_and_mouse_in_a_glove.c: 533: {
;keyboard_and_mouse_in_a_glove.c: 534: minute ++;
	movlw	(01h)
	movwf	(??_isr+0)+0
	movf	(??_isr+0)+0,w
	addwf	(_minute),f
	line	535
	
i1l5037:	
;keyboard_and_mouse_in_a_glove.c: 535: second = 0;
	clrf	(_second)
	line	536
	
i1l5039:	
;keyboard_and_mouse_in_a_glove.c: 536: if( minute == 60)
	movf	(_minute),w
	xorlw	03Ch
	skipz
	goto	u550_21
	goto	u550_20
u550_21:
	goto	i1l5047
u550_20:
	line	538
	
i1l5041:	
;keyboard_and_mouse_in_a_glove.c: 537: {
;keyboard_and_mouse_in_a_glove.c: 538: minute = 0;
	clrf	(_minute)
	line	539
	
i1l5043:	
;keyboard_and_mouse_in_a_glove.c: 539: hour ++;
	movlw	(01h)
	movwf	(??_isr+0)+0
	movf	(??_isr+0)+0,w
	addwf	(_hour),f
	goto	i1l5047
	line	540
	
i1l5045:	
	goto	i1l5047
	
i1l1373:	
	goto	i1l5047
	line	541
	
i1l1372:	
	goto	i1l5047
	line	542
	
i1l1371:	
	goto	i1l5047
	line	543
	
i1l1370:	
	line	544
	
i1l5047:	
;keyboard_and_mouse_in_a_glove.c: 541: }
;keyboard_and_mouse_in_a_glove.c: 542: }
;keyboard_and_mouse_in_a_glove.c: 543: }
;keyboard_and_mouse_in_a_glove.c: 544: TMR1L = 176;
	movlw	(0B0h)
	movwf	(14)	;volatile
	line	545
;keyboard_and_mouse_in_a_glove.c: 545: TMR1H = 60;
	movlw	(03Ch)
	movwf	(15)	;volatile
	line	546
	
i1l5049:	
;keyboard_and_mouse_in_a_glove.c: 546: TMR1IF = 0;
	bcf	(96/8),(96)&7
	goto	i1l1374
	line	547
	
i1l1368:	
	line	548
	
i1l1374:	
	movf	(??_isr+4),w
	movwf	btemp+1
	movf	(??_isr+3),w
	movwf	pclath
	movf	(??_isr+2),w
	movwf	fsr0
	swapf	(??_isr+1)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_isr
	__end_of_isr:
;; =============== function _isr ends ============

	signat	_isr,88
psect	text385,local,class=CODE,delta=2
global __ptext385
__ptext385:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
