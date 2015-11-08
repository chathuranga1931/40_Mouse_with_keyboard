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
	global	_MOUSE_SELECT
	global	_nop
	global	_ADCON0
psect	text307,local,class=CODE,delta=2
global __ptext307
__ptext307:
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
	global	_RB1
_RB1	set	49
	global	_RBIE
_RBIE	set	91
	global	_RC0
_RC0	set	56
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
	global	_main$1973
_main$1973:	; 3 bytes @ 0x16
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
;;		line 33 in file "F:\ELECTRONIC\2015\Projects\40. Mouse with keyboard\PGM\Hand Test\Hand_test.c"
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
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"F:\ELECTRONIC\2015\Projects\40. Mouse with keyboard\PGM\Hand Test\Hand_test.c"
	line	33
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	35
	
l3552:	
;Hand_test.c: 35: TRISA = 0b11111111;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	38
;Hand_test.c: 38: TRISB = 0b11111111;
	movlw	(0FFh)
	movwf	(134)^080h	;volatile
	line	41
;Hand_test.c: 41: TRISC = 0b10000000;
	movlw	(080h)
	movwf	(135)^080h	;volatile
	line	42
;Hand_test.c: 42: PORTC = 0b00000010;
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	44
;Hand_test.c: 44: ADCON0 = 0b01000000;
	movlw	(040h)
	movwf	(31)	;volatile
	line	45
;Hand_test.c: 45: ADCON1 = 0b10000100;
	movlw	(084h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	48
;Hand_test.c: 48: SPBRG = 25;
	movlw	(019h)
	movwf	(153)^080h	;volatile
	line	49
	
l3554:	
;Hand_test.c: 49: SPEN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(199/8),(199)&7
	line	50
	
l3556:	
;Hand_test.c: 50: RX9 = 0;
	bcf	(198/8),(198)&7
	line	51
	
l3558:	
;Hand_test.c: 51: CREN = 1;
	bsf	(196/8),(196)&7
	line	52
	
l3560:	
;Hand_test.c: 52: TX9 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1222/8)^080h,(1222)&7
	line	53
	
l3562:	
;Hand_test.c: 53: TXEN = 1;
	bsf	(1221/8)^080h,(1221)&7
	line	54
	
l3564:	
;Hand_test.c: 54: SYNC = 0;
	bcf	(1220/8)^080h,(1220)&7
	line	55
	
l3566:	
;Hand_test.c: 55: BRGH = 1;
	bsf	(1218/8)^080h,(1218)&7
	line	56
;Hand_test.c: 56: SPBRG = 25;
	movlw	(019h)
	movwf	(153)^080h	;volatile
	line	57
	
l3568:	
;Hand_test.c: 57: RCIE = 1;
	bsf	(1125/8)^080h,(1125)&7
	line	58
	
l3570:	
;Hand_test.c: 58: TXIE = 0;
	bcf	(1124/8)^080h,(1124)&7
	line	59
;Hand_test.c: 59: _delay((unsigned long)((500)*(4000000/4000.0)));
	opt asmopt_off
movlw  3
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	138
movwf	((??_main+0)+0+1),f
	movlw	86
movwf	((??_main+0)+0),f
u3787:
	decfsz	((??_main+0)+0),f
	goto	u3787
	decfsz	((??_main+0)+0+1),f
	goto	u3787
	decfsz	((??_main+0)+0+2),f
	goto	u3787
	nop2
opt asmopt_on

	line	62
	
l3572:	
;Hand_test.c: 62: T1CKPS1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(133/8),(133)&7
	line	63
	
l3574:	
;Hand_test.c: 63: T1CKPS0 = 1;
	bsf	(132/8),(132)&7
	line	64
	
l3576:	
;Hand_test.c: 64: TMR1CS = 0;
	bcf	(129/8),(129)&7
	line	65
	
l3578:	
;Hand_test.c: 65: TMR1ON = 1;
	bsf	(128/8),(128)&7
	line	66
	
l3580:	
;Hand_test.c: 66: T1OSCEN = 0;
	bcf	(131/8),(131)&7
	line	67
;Hand_test.c: 67: TMR1L = 0xB0;
	movlw	(0B0h)
	movwf	(14)	;volatile
	line	68
;Hand_test.c: 68: TMR1H = 60;
	movlw	(03Ch)
	movwf	(15)	;volatile
	line	69
	
l3582:	
;Hand_test.c: 69: TMR1IE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1120/8)^080h,(1120)&7
	line	72
	
l3584:	
;Hand_test.c: 72: OPTION_REG =0b01111111 & OPTION_REG;
	movf	(129)^080h,w
	andlw	07Fh
	movwf	(129)^080h	;volatile
	line	75
	
l3586:	
;Hand_test.c: 75: InterruptEn();
	fcall	_InterruptEn
	line	78
	
l3588:	
;Hand_test.c: 78: MOUSE_SELECT = 1;
	bsf	(_MOUSE_SELECT/8),(_MOUSE_SELECT)&7
	goto	l3590
	line	80
;Hand_test.c: 80: while(1){
	
l715:	
	line	81
	
l3590:	
;Hand_test.c: 81: nop=1;
	bsf	(_nop/8),(_nop)&7
	line	82
	
l3592:	
;Hand_test.c: 82: if (MOUSE_SELECT == 1){
	btfss	(_MOUSE_SELECT/8),(_MOUSE_SELECT)&7
	goto	u3561
	goto	u3560
u3561:
	goto	l716
u3560:
	line	84
	
l3594:	
;Hand_test.c: 84: a2d_read();
	fcall	_a2d_read
	line	86
;Hand_test.c: 86: while(!TXIF);
	goto	l717
	
l718:	
	
l717:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7
	goto	u3571
	goto	u3570
u3571:
	goto	l717
u3570:
	goto	l3596
	
l719:	
	line	87
	
l3596:	
;Hand_test.c: 87: TXREG = '%';
	movlw	(025h)
	movwf	(25)	;volatile
	line	88
;Hand_test.c: 88: while(!TXIF);
	goto	l720
	
l721:	
	
l720:	
	btfss	(100/8),(100)&7
	goto	u3581
	goto	u3580
u3581:
	goto	l720
u3580:
	goto	l3598
	
l722:	
	line	89
	
l3598:	
;Hand_test.c: 89: TXREG = 'X';
	movlw	(058h)
	movwf	(25)	;volatile
	line	90
;Hand_test.c: 90: while(!TXIF);
	goto	l723
	
l724:	
	
l723:	
	btfss	(100/8),(100)&7
	goto	u3591
	goto	u3590
u3591:
	goto	l723
u3590:
	goto	l3600
	
l725:	
	line	91
	
l3600:	
;Hand_test.c: 91: TXREG = vblAccX/100 + 48;
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
	line	92
;Hand_test.c: 92: while(!TXIF);
	goto	l726
	
l727:	
	
l726:	
	btfss	(100/8),(100)&7
	goto	u3601
	goto	u3600
u3601:
	goto	l726
u3600:
	goto	l3602
	
l728:	
	line	93
	
l3602:	
;Hand_test.c: 93: TXREG = vblAccX%100/10 + 48;
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
	line	94
;Hand_test.c: 94: while(!TXIF);
	goto	l729
	
l730:	
	
l729:	
	btfss	(100/8),(100)&7
	goto	u3611
	goto	u3610
u3611:
	goto	l729
u3610:
	goto	l3604
	
l731:	
	line	95
	
l3604:	
;Hand_test.c: 95: TXREG = vblAccX%100%10 + 48;
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
	movwf	(_main$1973)
	movf	(1+(?___ltmod)),w
	movwf	(_main$1973+1)
	movf	(2+(?___ltmod)),w
	movwf	(_main$1973+2)
;Hand_test.c: 95: TXREG = vblAccX%100%10 + 48;
	movlw	0Ah
	movwf	(?___ltmod)
	movlw	0
	movwf	(?___ltmod+1)
	movlw	0
	movwf	(?___ltmod+2)
	movf	(_main$1973),w
	movwf	0+(?___ltmod)+03h
	movf	(_main$1973+1),w
	movwf	1+(?___ltmod)+03h
	movf	(_main$1973+2),w
	movwf	2+(?___ltmod)+03h
	fcall	___ltmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ltmod)),w
	addlw	030h
	movwf	(25)	;volatile
	line	96
;Hand_test.c: 96: while(!TXIF);
	goto	l732
	
l733:	
	
l732:	
	btfss	(100/8),(100)&7
	goto	u3621
	goto	u3620
u3621:
	goto	l732
u3620:
	goto	l3606
	
l734:	
	line	97
	
l3606:	
;Hand_test.c: 97: TXREG = '?';
	movlw	(03Fh)
	movwf	(25)	;volatile
	line	99
;Hand_test.c: 99: while(!TXIF);
	goto	l735
	
l736:	
	
l735:	
	btfss	(100/8),(100)&7
	goto	u3631
	goto	u3630
u3631:
	goto	l735
u3630:
	goto	l3608
	
l737:	
	line	100
	
l3608:	
;Hand_test.c: 100: TXREG = '%';
	movlw	(025h)
	movwf	(25)	;volatile
	line	101
;Hand_test.c: 101: while(!TXIF);
	goto	l738
	
l739:	
	
l738:	
	btfss	(100/8),(100)&7
	goto	u3641
	goto	u3640
u3641:
	goto	l738
u3640:
	goto	l3610
	
l740:	
	line	102
	
l3610:	
;Hand_test.c: 102: TXREG = 'Y';
	movlw	(059h)
	movwf	(25)	;volatile
	line	103
;Hand_test.c: 103: while(!TXIF);
	goto	l741
	
l742:	
	
l741:	
	btfss	(100/8),(100)&7
	goto	u3651
	goto	u3650
u3651:
	goto	l741
u3650:
	goto	l3612
	
l743:	
	line	104
	
l3612:	
;Hand_test.c: 104: TXREG = vblAccY/100 + 48;
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
	line	105
;Hand_test.c: 105: while(!TXIF);
	goto	l744
	
l745:	
	
l744:	
	btfss	(100/8),(100)&7
	goto	u3661
	goto	u3660
u3661:
	goto	l744
u3660:
	goto	l3614
	
l746:	
	line	106
	
l3614:	
;Hand_test.c: 106: TXREG = vblAccY%100/10 + 48;
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
	line	107
;Hand_test.c: 107: while(!TXIF);
	goto	l747
	
l748:	
	
l747:	
	btfss	(100/8),(100)&7
	goto	u3671
	goto	u3670
u3671:
	goto	l747
u3670:
	goto	l3616
	
l749:	
	line	108
	
l3616:	
;Hand_test.c: 108: TXREG = vblAccY%100%10 + 48;
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
	movwf	(_main$1973)
	movf	(1+(?___ltmod)),w
	movwf	(_main$1973+1)
	movf	(2+(?___ltmod)),w
	movwf	(_main$1973+2)
;Hand_test.c: 108: TXREG = vblAccY%100%10 + 48;
	movlw	0Ah
	movwf	(?___ltmod)
	movlw	0
	movwf	(?___ltmod+1)
	movlw	0
	movwf	(?___ltmod+2)
	movf	(_main$1973),w
	movwf	0+(?___ltmod)+03h
	movf	(_main$1973+1),w
	movwf	1+(?___ltmod)+03h
	movf	(_main$1973+2),w
	movwf	2+(?___ltmod)+03h
	fcall	___ltmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ltmod)),w
	addlw	030h
	movwf	(25)	;volatile
	line	109
;Hand_test.c: 109: while(!TXIF);
	goto	l750
	
l751:	
	
l750:	
	btfss	(100/8),(100)&7
	goto	u3681
	goto	u3680
u3681:
	goto	l750
u3680:
	goto	l3618
	
l752:	
	line	110
	
l3618:	
;Hand_test.c: 110: TXREG = '?';
	movlw	(03Fh)
	movwf	(25)	;volatile
	line	112
;Hand_test.c: 112: _delay((unsigned long)((30)*(4000000/4000.0)));
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u3797:
	decfsz	((??_main+0)+0),f
	goto	u3797
	decfsz	((??_main+0)+0+1),f
	goto	u3797
opt asmopt_on

	line	114
;Hand_test.c: 114: }
	goto	l3662
	line	115
	
l716:	
	line	116
;Hand_test.c: 115: else{
;Hand_test.c: 116: if( RB1!=0){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(49/8),(49)&7
	goto	u3691
	goto	u3690
u3691:
	goto	l3662
u3690:
	line	117
	
l3620:	
;Hand_test.c: 117: nop=1;
	bsf	(_nop/8),(_nop)&7
	line	118
	
l3622:	
;Hand_test.c: 118: _delay((unsigned long)((50)*(4000000/4000.0)));
	opt asmopt_off
movlw	65
movwf	((??_main+0)+0+1),f
	movlw	238
movwf	((??_main+0)+0),f
u3807:
	decfsz	((??_main+0)+0),f
	goto	u3807
	decfsz	((??_main+0)+0+1),f
	goto	u3807
	clrwdt
opt asmopt_on

	line	119
;Hand_test.c: 119: while(RB1!=0);
	goto	l755
	
l756:	
	
l755:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(49/8),(49)&7
	goto	u3701
	goto	u3700
u3701:
	goto	l755
u3700:
	goto	l3624
	
l757:	
	line	120
	
l3624:	
;Hand_test.c: 120: _delay((unsigned long)((30)*(4000000/4000.0)));
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u3817:
	decfsz	((??_main+0)+0),f
	goto	u3817
	decfsz	((??_main+0)+0+1),f
	goto	u3817
opt asmopt_on

	line	121
;Hand_test.c: 121: while(RB1!=0);
	goto	l758
	
l759:	
	
l758:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(49/8),(49)&7
	goto	u3711
	goto	u3710
u3711:
	goto	l758
u3710:
	goto	l3626
	
l760:	
	line	122
	
l3626:	
;Hand_test.c: 122: _delay((unsigned long)((30)*(4000000/4000.0)));
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u3827:
	decfsz	((??_main+0)+0),f
	goto	u3827
	decfsz	((??_main+0)+0+1),f
	goto	u3827
opt asmopt_on

	line	123
;Hand_test.c: 123: while(RB1!=0);
	goto	l761
	
l762:	
	
l761:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(49/8),(49)&7
	goto	u3721
	goto	u3720
u3721:
	goto	l761
u3720:
	goto	l3628
	
l763:	
	line	124
	
l3628:	
;Hand_test.c: 124: _delay((unsigned long)((30)*(4000000/4000.0)));
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u3837:
	decfsz	((??_main+0)+0),f
	goto	u3837
	decfsz	((??_main+0)+0+1),f
	goto	u3837
opt asmopt_on

	line	125
;Hand_test.c: 125: while(RB1!=0);
	goto	l764
	
l765:	
	
l764:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(49/8),(49)&7
	goto	u3731
	goto	u3730
u3731:
	goto	l764
u3730:
	goto	l3630
	
l766:	
	line	127
	
l3630:	
;Hand_test.c: 127: if ( counter==0 ){
	movf	((_counter+1)),w
	iorwf	((_counter)),w
	skipz
	goto	u3741
	goto	u3740
u3741:
	goto	l3638
u3740:
	line	128
	
l3632:	
;Hand_test.c: 128: KeySend('A');
	movlw	(041h)
	fcall	_KeySend
	line	129
	
l3634:	
;Hand_test.c: 129: prevChar='A';
	movlw	(041h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	line	130
	
l3636:	
;Hand_test.c: 130: counter = 10;
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	line	131
;Hand_test.c: 131: }
	goto	l3662
	line	132
	
l767:	
	
l3638:	
;Hand_test.c: 132: else if( prevChar=='A' ){
	movf	(_prevChar),w
	xorlw	041h
	skipz
	goto	u3751
	goto	u3750
u3751:
	goto	l3646
u3750:
	line	133
	
l3640:	
;Hand_test.c: 133: KeySend('^');
	movlw	(05Eh)
	fcall	_KeySend
	line	134
;Hand_test.c: 134: KeySend('B');
	movlw	(042h)
	fcall	_KeySend
	line	135
	
l3642:	
;Hand_test.c: 135: prevChar='B';
	movlw	(042h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	line	136
	
l3644:	
;Hand_test.c: 136: counter = 10;
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	line	137
;Hand_test.c: 137: }
	goto	l3662
	line	138
	
l769:	
	
l3646:	
;Hand_test.c: 138: else if( prevChar=='B' ){
	movf	(_prevChar),w
	xorlw	042h
	skipz
	goto	u3761
	goto	u3760
u3761:
	goto	l3654
u3760:
	line	139
	
l3648:	
;Hand_test.c: 139: KeySend('^');
	movlw	(05Eh)
	fcall	_KeySend
	line	140
;Hand_test.c: 140: KeySend('C');
	movlw	(043h)
	fcall	_KeySend
	line	141
	
l3650:	
;Hand_test.c: 141: prevChar='C';
	movlw	(043h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	line	142
	
l3652:	
;Hand_test.c: 142: counter = 10;
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	line	143
;Hand_test.c: 143: }
	goto	l3662
	line	144
	
l771:	
	
l3654:	
;Hand_test.c: 144: else if( prevChar=='C' ){
	movf	(_prevChar),w
	xorlw	043h
	skipz
	goto	u3771
	goto	u3770
u3771:
	goto	l3662
u3770:
	line	145
	
l3656:	
;Hand_test.c: 145: KeySend('^');
	movlw	(05Eh)
	fcall	_KeySend
	line	146
;Hand_test.c: 146: KeySend('A');
	movlw	(041h)
	fcall	_KeySend
	line	147
	
l3658:	
;Hand_test.c: 147: prevChar='A';
	movlw	(041h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	line	148
	
l3660:	
;Hand_test.c: 148: counter = 10;
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l3662
	line	149
	
l773:	
	goto	l3662
	line	150
	
l772:	
	goto	l3662
	
l770:	
	goto	l3662
	
l768:	
	goto	l3662
	
l754:	
	goto	l3662
	line	151
	
l753:	
	line	152
	
l3662:	
;Hand_test.c: 149: }
;Hand_test.c: 150: }
;Hand_test.c: 151: }
;Hand_test.c: 152: nop=1;
	bsf	(_nop/8),(_nop)&7
	goto	l3590
	line	153
	
l774:	
	line	80
	goto	l3590
	
l775:	
	line	154
	
l776:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_a2d_read
psect	text308,local,class=CODE,delta=2
global __ptext308
__ptext308:

;; *************** function _a2d_read *****************
;; Defined at:
;;		line 277 in file "F:\ELECTRONIC\2015\Projects\40. Mouse with keyboard\PGM\Hand Test\Hand_test.c"
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
psect	text308
	file	"F:\ELECTRONIC\2015\Projects\40. Mouse with keyboard\PGM\Hand Test\Hand_test.c"
	line	277
	global	__size_of_a2d_read
	__size_of_a2d_read	equ	__end_of_a2d_read-_a2d_read
	
_a2d_read:	
	opt	stack 5
; Regs used in _a2d_read: [wreg+status,2+status,0+pclath+cstack]
	line	278
	
l3536:	
;Hand_test.c: 278: read_a2d_value(0);
	movlw	(0)
	fcall	_read_a2d_value
	line	279
;Hand_test.c: 279: vblAccX = read_a2d_value(0);
	movlw	(0)
	fcall	_read_a2d_value
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_read_a2d_value)),w
	movwf	(_vblAccX)
	movf	(1+(?_read_a2d_value)),w
	movwf	(_vblAccX+1)
	clrf	(_vblAccX+2)
	line	280
;Hand_test.c: 280: read_a2d_value(1);
	movlw	(01h)
	fcall	_read_a2d_value
	line	281
;Hand_test.c: 281: vblAccY = read_a2d_value(1);
	movlw	(01h)
	fcall	_read_a2d_value
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_read_a2d_value)),w
	movwf	(_vblAccY)
	movf	(1+(?_read_a2d_value)),w
	movwf	(_vblAccY+1)
	clrf	(_vblAccY+2)
	line	283
	
l3538:	
;Hand_test.c: 283: if(vblAccX > 402) vblAccX = 402;
	movlw	0
	subwf	(_vblAccX+2),w
	skipz
	goto	u3525
	movlw	01h
	subwf	(_vblAccX+1),w
	skipz
	goto	u3525
	movlw	093h
	subwf	(_vblAccX),w
u3525:
	skipc
	goto	u3521
	goto	u3520
u3521:
	goto	l3542
u3520:
	
l3540:	
	movlw	092h
	movwf	(_vblAccX)
	movlw	01h
	movwf	(_vblAccX+1)
	movlw	0
	movwf	(_vblAccX+2)
	goto	l876
	line	284
	
l875:	
	
l3542:	
;Hand_test.c: 284: else if ( vblAccX < 262) vblAccX = 262;
	movlw	0
	subwf	(_vblAccX+2),w
	skipz
	goto	u3535
	movlw	01h
	subwf	(_vblAccX+1),w
	skipz
	goto	u3535
	movlw	06h
	subwf	(_vblAccX),w
u3535:
	skipnc
	goto	u3531
	goto	u3530
u3531:
	goto	l876
u3530:
	
l3544:	
	movlw	06h
	movwf	(_vblAccX)
	movlw	01h
	movwf	(_vblAccX+1)
	movlw	0
	movwf	(_vblAccX+2)
	goto	l876
	
l877:	
	line	285
	
l876:	
;Hand_test.c: 285: if(vblAccY > 406) vblAccY = 406;
	movlw	0
	subwf	(_vblAccY+2),w
	skipz
	goto	u3545
	movlw	01h
	subwf	(_vblAccY+1),w
	skipz
	goto	u3545
	movlw	097h
	subwf	(_vblAccY),w
u3545:
	skipc
	goto	u3541
	goto	u3540
u3541:
	goto	l3548
u3540:
	
l3546:	
	movlw	096h
	movwf	(_vblAccY)
	movlw	01h
	movwf	(_vblAccY+1)
	movlw	0
	movwf	(_vblAccY+2)
	goto	l881
	line	286
	
l878:	
	
l3548:	
;Hand_test.c: 286: else if ( vblAccY < 266) vblAccY = 266;
	movlw	0
	subwf	(_vblAccY+2),w
	skipz
	goto	u3555
	movlw	01h
	subwf	(_vblAccY+1),w
	skipz
	goto	u3555
	movlw	0Ah
	subwf	(_vblAccY),w
u3555:
	skipnc
	goto	u3551
	goto	u3550
u3551:
	goto	l881
u3550:
	
l3550:	
	movlw	0Ah
	movwf	(_vblAccY)
	movlw	01h
	movwf	(_vblAccY+1)
	movlw	0
	movwf	(_vblAccY+2)
	goto	l881
	
l880:	
	goto	l881
	line	287
	
l879:	
	
l881:	
	return
	opt stack 0
GLOBAL	__end_of_a2d_read
	__end_of_a2d_read:
;; =============== function _a2d_read ends ============

	signat	_a2d_read,88
	global	_read_a2d_value
psect	text309,local,class=CODE,delta=2
global __ptext309
__ptext309:

;; *************** function _read_a2d_value *****************
;; Defined at:
;;		line 291 in file "F:\ELECTRONIC\2015\Projects\40. Mouse with keyboard\PGM\Hand Test\Hand_test.c"
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
psect	text309
	file	"F:\ELECTRONIC\2015\Projects\40. Mouse with keyboard\PGM\Hand Test\Hand_test.c"
	line	291
	global	__size_of_read_a2d_value
	__size_of_read_a2d_value	equ	__end_of_read_a2d_value-_read_a2d_value
	
_read_a2d_value:	
	opt	stack 5
; Regs used in _read_a2d_value: [wreg+status,2+status,0]
;read_a2d_value@channel stored from wreg
	line	293
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(read_a2d_value@channel)
	
l3518:	
;Hand_test.c: 292: unsigned int a2d_value;
;Hand_test.c: 293: channel = channel << 3;
	movf	(read_a2d_value@channel),w
	movwf	(??_read_a2d_value+0)+0
	movlw	(03h)-1
u3505:
	clrc
	rlf	(??_read_a2d_value+0)+0,f
	addlw	-1
	skipz
	goto	u3505
	clrc
	rlf	(??_read_a2d_value+0)+0,w
	movwf	(??_read_a2d_value+1)+0
	movf	(??_read_a2d_value+1)+0,w
	movwf	(read_a2d_value@channel)
	line	294
	
l3520:	
;Hand_test.c: 294: ADCON0 = ADCON0 & 0b11000111;
	movf	(31),w
	andlw	0C7h
	movwf	(31)	;volatile
	line	295
	
l3522:	
;Hand_test.c: 295: ADCON0 = ADCON0 | channel;
	movf	(31),w	;volatile
	iorwf	(read_a2d_value@channel),w
	movwf	(31)	;volatile
	line	296
	
l3524:	
;Hand_test.c: 296: ADON = 1;
	bsf	(248/8),(248)&7
	line	297
	
l3526:	
;Hand_test.c: 297: _delay(50);
	opt asmopt_off
movlw	16
movwf	(??_read_a2d_value+0)+0,f
u3847:
decfsz	(??_read_a2d_value+0)+0,f
	goto	u3847
	clrwdt
opt asmopt_on

	line	298
	
l3528:	
;Hand_test.c: 298: GO = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(250/8),(250)&7
	line	299
;Hand_test.c: 299: while( GO == 1 );
	goto	l884
	
l885:	
	
l884:	
	btfsc	(250/8),(250)&7
	goto	u3511
	goto	u3510
u3511:
	goto	l884
u3510:
	goto	l3530
	
l886:	
	line	303
	
l3530:	
;Hand_test.c: 300: {
;Hand_test.c: 302: }
;Hand_test.c: 303: a2d_value = ADRESH;
	movf	(30),w	;volatile
	movwf	(??_read_a2d_value+0)+0
	clrf	(??_read_a2d_value+0)+0+1
	movf	0+(??_read_a2d_value+0)+0,w
	movwf	(read_a2d_value@a2d_value)
	movf	1+(??_read_a2d_value+0)+0,w
	movwf	(read_a2d_value@a2d_value+1)
	line	304
;Hand_test.c: 304: a2d_value = a2d_value << 8;
	movf	(read_a2d_value@a2d_value),w
	movwf	(??_read_a2d_value+0)+0+1
	clrf	(??_read_a2d_value+0)+0
	movf	0+(??_read_a2d_value+0)+0,w
	movwf	(read_a2d_value@a2d_value)
	movf	1+(??_read_a2d_value+0)+0,w
	movwf	(read_a2d_value@a2d_value+1)
	line	305
;Hand_test.c: 305: a2d_value = a2d_value + ADRESL;
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
	line	306
	
l3532:	
;Hand_test.c: 306: return a2d_value;
	movf	(read_a2d_value@a2d_value+1),w
	clrf	(?_read_a2d_value+1)
	addwf	(?_read_a2d_value+1)
	movf	(read_a2d_value@a2d_value),w
	clrf	(?_read_a2d_value)
	addwf	(?_read_a2d_value)

	goto	l887
	
l3534:	
	line	307
	
l887:	
	return
	opt stack 0
GLOBAL	__end_of_read_a2d_value
	__end_of_read_a2d_value:
;; =============== function _read_a2d_value ends ============

	signat	_read_a2d_value,4218
	global	___ltmod
psect	text310,local,class=CODE,delta=2
global __ptext310
__ptext310:

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
psect	text310
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ltmod.c"
	line	5
	global	__size_of___ltmod
	__size_of___ltmod	equ	__end_of___ltmod-___ltmod
	
___ltmod:	
	opt	stack 6
; Regs used in ___ltmod: [wreg+status,2+status,0]
	line	8
	
l3498:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ltmod@divisor+2),w
	iorwf	(___ltmod@divisor+1),w
	iorwf	(___ltmod@divisor),w
	skipnz
	goto	u3441
	goto	u3440
u3441:
	goto	l3514
u3440:
	line	9
	
l3500:	
	clrf	(___ltmod@counter)
	bsf	status,0
	rlf	(___ltmod@counter),f
	line	10
	goto	l3504
	
l1888:	
	line	11
	
l3502:	
	movlw	01h
u3455:
	clrc
	rlf	(___ltmod@divisor),f
	rlf	(___ltmod@divisor+1),f
	rlf	(___ltmod@divisor+2),f
	addlw	-1
	skipz
	goto	u3455
	line	12
	movlw	(01h)
	movwf	(??___ltmod+0)+0
	movf	(??___ltmod+0)+0,w
	addwf	(___ltmod@counter),f
	goto	l3504
	line	13
	
l1887:	
	line	10
	
l3504:	
	btfss	(___ltmod@divisor+2),(23)&7
	goto	u3461
	goto	u3460
u3461:
	goto	l3502
u3460:
	goto	l3506
	
l1889:	
	goto	l3506
	line	14
	
l1890:	
	line	15
	
l3506:	
	movf	(___ltmod@divisor+2),w
	subwf	(___ltmod@dividend+2),w
	skipz
	goto	u3475
	movf	(___ltmod@divisor+1),w
	subwf	(___ltmod@dividend+1),w
	skipz
	goto	u3475
	movf	(___ltmod@divisor),w
	subwf	(___ltmod@dividend),w
u3475:
	skipc
	goto	u3471
	goto	u3470
u3471:
	goto	l3510
u3470:
	line	16
	
l3508:	
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
	goto	l3510
	
l1891:	
	line	17
	
l3510:	
	movlw	01h
u3485:
	clrc
	rrf	(___ltmod@divisor+2),f
	rrf	(___ltmod@divisor+1),f
	rrf	(___ltmod@divisor),f
	addlw	-1
	skipz
	goto	u3485

	line	18
	
l3512:	
	movlw	low(01h)
	subwf	(___ltmod@counter),f
	btfss	status,2
	goto	u3491
	goto	u3490
u3491:
	goto	l3506
u3490:
	goto	l3514
	
l1892:	
	goto	l3514
	line	19
	
l1886:	
	line	20
	
l3514:	
	movf	(___ltmod@dividend),w
	movwf	(?___ltmod)
	movf	(___ltmod@dividend+1),w
	movwf	(?___ltmod+1)
	movf	(___ltmod@dividend+2),w
	movwf	(?___ltmod+2)
	goto	l1893
	
l3516:	
	line	21
	
l1893:	
	return
	opt stack 0
GLOBAL	__end_of___ltmod
	__end_of___ltmod:
;; =============== function ___ltmod ends ============

	signat	___ltmod,8315
	global	___ltdiv
psect	text311,local,class=CODE,delta=2
global __ptext311
__ptext311:

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
psect	text311
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ltdiv.c"
	line	5
	global	__size_of___ltdiv
	__size_of___ltdiv	equ	__end_of___ltdiv-___ltdiv
	
___ltdiv:	
	opt	stack 6
; Regs used in ___ltdiv: [wreg+status,2+status,0]
	line	9
	
l3474:	
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
	goto	u3371
	goto	u3370
u3371:
	goto	l3494
u3370:
	line	11
	
l3476:	
	clrf	(___ltdiv@counter)
	bsf	status,0
	rlf	(___ltdiv@counter),f
	line	12
	goto	l3480
	
l1878:	
	line	13
	
l3478:	
	movlw	01h
u3385:
	clrc
	rlf	(___ltdiv@divisor),f
	rlf	(___ltdiv@divisor+1),f
	rlf	(___ltdiv@divisor+2),f
	addlw	-1
	skipz
	goto	u3385
	line	14
	movlw	(01h)
	movwf	(??___ltdiv+0)+0
	movf	(??___ltdiv+0)+0,w
	addwf	(___ltdiv@counter),f
	goto	l3480
	line	15
	
l1877:	
	line	12
	
l3480:	
	btfss	(___ltdiv@divisor+2),(23)&7
	goto	u3391
	goto	u3390
u3391:
	goto	l3478
u3390:
	goto	l3482
	
l1879:	
	goto	l3482
	line	16
	
l1880:	
	line	17
	
l3482:	
	movlw	01h
u3405:
	clrc
	rlf	(___ltdiv@quotient),f
	rlf	(___ltdiv@quotient+1),f
	rlf	(___ltdiv@quotient+2),f
	addlw	-1
	skipz
	goto	u3405
	line	18
	
l3484:	
	movf	(___ltdiv@divisor+2),w
	subwf	(___ltdiv@dividend+2),w
	skipz
	goto	u3415
	movf	(___ltdiv@divisor+1),w
	subwf	(___ltdiv@dividend+1),w
	skipz
	goto	u3415
	movf	(___ltdiv@divisor),w
	subwf	(___ltdiv@dividend),w
u3415:
	skipc
	goto	u3411
	goto	u3410
u3411:
	goto	l3490
u3410:
	line	19
	
l3486:	
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
	
l3488:	
	bsf	(___ltdiv@quotient)+(0/8),(0)&7
	goto	l3490
	line	21
	
l1881:	
	line	22
	
l3490:	
	movlw	01h
u3425:
	clrc
	rrf	(___ltdiv@divisor+2),f
	rrf	(___ltdiv@divisor+1),f
	rrf	(___ltdiv@divisor),f
	addlw	-1
	skipz
	goto	u3425

	line	23
	
l3492:	
	movlw	low(01h)
	subwf	(___ltdiv@counter),f
	btfss	status,2
	goto	u3431
	goto	u3430
u3431:
	goto	l3482
u3430:
	goto	l3494
	
l1882:	
	goto	l3494
	line	24
	
l1876:	
	line	25
	
l3494:	
	movf	(___ltdiv@quotient),w
	movwf	(?___ltdiv)
	movf	(___ltdiv@quotient+1),w
	movwf	(?___ltdiv+1)
	movf	(___ltdiv@quotient+2),w
	movwf	(?___ltdiv+2)
	goto	l1883
	
l3496:	
	line	26
	
l1883:	
	return
	opt stack 0
GLOBAL	__end_of___ltdiv
	__end_of___ltdiv:
;; =============== function ___ltdiv ends ============

	signat	___ltdiv,8315
	global	_KeySend
psect	text312,local,class=CODE,delta=2
global __ptext312
__ptext312:

;; *************** function _KeySend *****************
;; Defined at:
;;		line 262 in file "F:\ELECTRONIC\2015\Projects\40. Mouse with keyboard\PGM\Hand Test\Hand_test.c"
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
psect	text312
	file	"F:\ELECTRONIC\2015\Projects\40. Mouse with keyboard\PGM\Hand Test\Hand_test.c"
	line	262
	global	__size_of_KeySend
	__size_of_KeySend	equ	__end_of_KeySend-_KeySend
	
_KeySend:	
	opt	stack 6
; Regs used in _KeySend: [wreg]
;KeySend@key stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(KeySend@key)
	line	263
	
l3460:	
;Hand_test.c: 263: while(!TXIF);
	goto	l854
	
l855:	
	
l854:	
	btfss	(100/8),(100)&7
	goto	u3311
	goto	u3310
u3311:
	goto	l854
u3310:
	goto	l3462
	
l856:	
	line	264
	
l3462:	
;Hand_test.c: 264: TXREG = '%';
	movlw	(025h)
	movwf	(25)	;volatile
	line	265
;Hand_test.c: 265: while(!TXIF);
	goto	l857
	
l858:	
	
l857:	
	btfss	(100/8),(100)&7
	goto	u3321
	goto	u3320
u3321:
	goto	l857
u3320:
	goto	l3464
	
l859:	
	line	266
	
l3464:	
;Hand_test.c: 266: TXREG = 'K';
	movlw	(04Bh)
	movwf	(25)	;volatile
	line	267
;Hand_test.c: 267: while(!TXIF);
	goto	l860
	
l861:	
	
l860:	
	btfss	(100/8),(100)&7
	goto	u3331
	goto	u3330
u3331:
	goto	l860
u3330:
	goto	l3466
	
l862:	
	line	268
	
l3466:	
;Hand_test.c: 268: TXREG = key;
	movf	(KeySend@key),w
	movwf	(25)	;volatile
	line	269
;Hand_test.c: 269: while(!TXIF);
	goto	l863
	
l864:	
	
l863:	
	btfss	(100/8),(100)&7
	goto	u3341
	goto	u3340
u3341:
	goto	l863
u3340:
	goto	l3468
	
l865:	
	line	270
	
l3468:	
;Hand_test.c: 270: TXREG = ' ';
	movlw	(020h)
	movwf	(25)	;volatile
	line	271
;Hand_test.c: 271: while(!TXIF);
	goto	l866
	
l867:	
	
l866:	
	btfss	(100/8),(100)&7
	goto	u3351
	goto	u3350
u3351:
	goto	l866
u3350:
	goto	l3470
	
l868:	
	line	272
	
l3470:	
;Hand_test.c: 272: TXREG = ' ';
	movlw	(020h)
	movwf	(25)	;volatile
	line	273
;Hand_test.c: 273: while(!TXIF);
	goto	l869
	
l870:	
	
l869:	
	btfss	(100/8),(100)&7
	goto	u3361
	goto	u3360
u3361:
	goto	l869
u3360:
	goto	l3472
	
l871:	
	line	274
	
l3472:	
;Hand_test.c: 274: TXREG = '?';
	movlw	(03Fh)
	movwf	(25)	;volatile
	line	275
	
l872:	
	return
	opt stack 0
GLOBAL	__end_of_KeySend
	__end_of_KeySend:
;; =============== function _KeySend ends ============

	signat	_KeySend,4216
	global	_InterruptEn
psect	text313,local,class=CODE,delta=2
global __ptext313
__ptext313:

;; *************** function _InterruptEn *****************
;; Defined at:
;;		line 189 in file "F:\ELECTRONIC\2015\Projects\40. Mouse with keyboard\PGM\Hand Test\Hand_test.c"
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
psect	text313
	file	"F:\ELECTRONIC\2015\Projects\40. Mouse with keyboard\PGM\Hand Test\Hand_test.c"
	line	189
	global	__size_of_InterruptEn
	__size_of_InterruptEn	equ	__end_of_InterruptEn-_InterruptEn
	
_InterruptEn:	
	opt	stack 6
; Regs used in _InterruptEn: []
	line	191
	
l3458:	
;Hand_test.c: 191: RBIE = 0;
	bcf	(91/8),(91)&7
	line	192
;Hand_test.c: 192: INTE = 0;
	bcf	(92/8),(92)&7
	line	194
;Hand_test.c: 194: PSPIE = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1127/8)^080h,(1127)&7
	line	195
;Hand_test.c: 195: ADIE = 0;
	bcf	(1126/8)^080h,(1126)&7
	line	197
;Hand_test.c: 197: TXIE = 0;
	bcf	(1124/8)^080h,(1124)&7
	line	198
;Hand_test.c: 198: RCIE = 0;
	bcf	(1125/8)^080h,(1125)&7
	line	200
;Hand_test.c: 200: SSPIE = 0;
	bcf	(1123/8)^080h,(1123)&7
	line	201
;Hand_test.c: 201: CCP1IE = 0;
	bcf	(1122/8)^080h,(1122)&7
	line	203
;Hand_test.c: 203: TMR1IE = 1;
	bsf	(1120/8)^080h,(1120)&7
	line	204
;Hand_test.c: 204: TMR2IE = 0;
	bcf	(1121/8)^080h,(1121)&7
	line	205
;Hand_test.c: 205: T0IE = 0;
	bcf	(93/8),(93)&7
	line	207
;Hand_test.c: 207: EEIE = 0;
	bcf	(1132/8)^080h,(1132)&7
	line	208
;Hand_test.c: 208: BCLIE = 0;
	bcf	(1131/8)^080h,(1131)&7
	line	209
;Hand_test.c: 209: CCP2IE = 0;
	bcf	(1128/8)^080h,(1128)&7
	line	212
;Hand_test.c: 212: GIE = 1;
	bsf	(95/8),(95)&7
	line	213
;Hand_test.c: 213: PEIE = 1;
	bsf	(94/8),(94)&7
	line	215
	
l788:	
	return
	opt stack 0
GLOBAL	__end_of_InterruptEn
	__end_of_InterruptEn:
;; =============== function _InterruptEn ends ============

	signat	_InterruptEn,88
	global	_isr
psect	text314,local,class=CODE,delta=2
global __ptext314
__ptext314:

;; *************** function _isr *****************
;; Defined at:
;;		line 157 in file "F:\ELECTRONIC\2015\Projects\40. Mouse with keyboard\PGM\Hand Test\Hand_test.c"
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
psect	text314
	file	"F:\ELECTRONIC\2015\Projects\40. Mouse with keyboard\PGM\Hand Test\Hand_test.c"
	line	157
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
psect	text314
	line	159
	
i1l3214:	
;Hand_test.c: 159: if(TMR1IF==1){
	btfss	(96/8),(96)&7
	goto	u285_21
	goto	u285_20
u285_21:
	goto	i1l785
u285_20:
	line	164
	
i1l3216:	
;Hand_test.c: 164: if( counter>0 ) counter--;
	movf	(_counter+1),w
	iorwf	(_counter),w
	skipnz
	goto	u286_21
	goto	u286_20
u286_21:
	goto	i1l3220
u286_20:
	
i1l3218:	
	movlw	low(01h)
	subwf	(_counter),f
	movlw	high(01h)
	skipc
	decf	(_counter+1),f
	subwf	(_counter+1),f
	goto	i1l3220
	
i1l780:	
	line	165
	
i1l3220:	
;Hand_test.c: 165: msecond ++;
	movlw	(01h)
	movwf	(??_isr+0)+0
	movf	(??_isr+0)+0,w
	addwf	(_msecond),f
	line	166
	
i1l3222:	
;Hand_test.c: 166: if(msecond == 10)
	movf	(_msecond),w
	xorlw	0Ah
	skipz
	goto	u287_21
	goto	u287_20
u287_21:
	goto	i1l3244
u287_20:
	line	168
	
i1l3224:	
;Hand_test.c: 167: {
;Hand_test.c: 168: second ++;
	movlw	(01h)
	movwf	(??_isr+0)+0
	movf	(??_isr+0)+0,w
	addwf	(_second),f
	line	169
	
i1l3226:	
;Hand_test.c: 169: msecond = 0;
	clrf	(_msecond)
	line	170
	
i1l3228:	
;Hand_test.c: 170: RC0 = !RC0;
	movlw	1<<((56)&7)
	xorwf	((56)/8),f
	line	171
	
i1l3230:	
;Hand_test.c: 171: if( second == 60)
	movf	(_second),w
	xorlw	03Ch
	skipz
	goto	u288_21
	goto	u288_20
u288_21:
	goto	i1l3244
u288_20:
	line	173
	
i1l3232:	
;Hand_test.c: 172: {
;Hand_test.c: 173: minute ++;
	movlw	(01h)
	movwf	(??_isr+0)+0
	movf	(??_isr+0)+0,w
	addwf	(_minute),f
	line	174
	
i1l3234:	
;Hand_test.c: 174: second = 0;
	clrf	(_second)
	line	175
	
i1l3236:	
;Hand_test.c: 175: if( minute == 60)
	movf	(_minute),w
	xorlw	03Ch
	skipz
	goto	u289_21
	goto	u289_20
u289_21:
	goto	i1l3244
u289_20:
	line	177
	
i1l3238:	
;Hand_test.c: 176: {
;Hand_test.c: 177: minute = 0;
	clrf	(_minute)
	line	178
	
i1l3240:	
;Hand_test.c: 178: hour ++;
	movlw	(01h)
	movwf	(??_isr+0)+0
	movf	(??_isr+0)+0,w
	addwf	(_hour),f
	goto	i1l3244
	line	179
	
i1l3242:	
	goto	i1l3244
	
i1l784:	
	goto	i1l3244
	line	180
	
i1l783:	
	goto	i1l3244
	line	181
	
i1l782:	
	goto	i1l3244
	line	182
	
i1l781:	
	line	183
	
i1l3244:	
;Hand_test.c: 180: }
;Hand_test.c: 181: }
;Hand_test.c: 182: }
;Hand_test.c: 183: TMR1L = 176;
	movlw	(0B0h)
	movwf	(14)	;volatile
	line	184
;Hand_test.c: 184: TMR1H = 60;
	movlw	(03Ch)
	movwf	(15)	;volatile
	line	185
	
i1l3246:	
;Hand_test.c: 185: TMR1IF = 0;
	bcf	(96/8),(96)&7
	goto	i1l785
	line	186
	
i1l779:	
	line	187
	
i1l785:	
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
psect	text315,local,class=CODE,delta=2
global __ptext315
__ptext315:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
