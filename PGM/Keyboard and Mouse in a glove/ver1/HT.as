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
	global	_RD3
_RD3	set	67
	global	_RD4
_RD4	set	68
	global	_RD5
_RD5	set	69
	global	_RD6
_RD6	set	70
	global	_RD7
_RD7	set	71
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
;;		line 40 in file "F:\ELECTRONIC\2015\Projects\40. Mouse with keyboard\PGM\Keyboard and Mouse in a glove\ver1\keyboard_and_mouse_in_a_glove.c"
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
	file	"F:\ELECTRONIC\2015\Projects\40. Mouse with keyboard\PGM\Keyboard and Mouse in a glove\ver1\keyboard_and_mouse_in_a_glove.c"
	line	40
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	42
	
l4662:	
;keyboard_and_mouse_in_a_glove.c: 42: TRISA = 0b11111111;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	45
;keyboard_and_mouse_in_a_glove.c: 45: TRISB = 0b11111111;
	movlw	(0FFh)
	movwf	(134)^080h	;volatile
	line	48
;keyboard_and_mouse_in_a_glove.c: 48: TRISC = 0b10111111;
	movlw	(0BFh)
	movwf	(135)^080h	;volatile
	line	49
;keyboard_and_mouse_in_a_glove.c: 49: PORTC = 0b00000010;
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	51
;keyboard_and_mouse_in_a_glove.c: 51: TRISD = 0b11111111;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	line	53
	
l4664:	
;keyboard_and_mouse_in_a_glove.c: 53: TRISE = 0b00000000;
	clrf	(137)^080h	;volatile
	line	55
	
l4666:	
;keyboard_and_mouse_in_a_glove.c: 55: ADCON0 = 0b01000000;
	movlw	(040h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	56
	
l4668:	
;keyboard_and_mouse_in_a_glove.c: 56: ADCON1 = 0b10000100;
	movlw	(084h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	59
	
l4670:	
;keyboard_and_mouse_in_a_glove.c: 59: SPBRG = 25;
	movlw	(019h)
	movwf	(153)^080h	;volatile
	line	60
	
l4672:	
;keyboard_and_mouse_in_a_glove.c: 60: SPEN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(199/8),(199)&7
	line	61
	
l4674:	
;keyboard_and_mouse_in_a_glove.c: 61: RX9 = 0;
	bcf	(198/8),(198)&7
	line	62
	
l4676:	
;keyboard_and_mouse_in_a_glove.c: 62: CREN = 1;
	bsf	(196/8),(196)&7
	line	63
	
l4678:	
;keyboard_and_mouse_in_a_glove.c: 63: TX9 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1222/8)^080h,(1222)&7
	line	64
	
l4680:	
;keyboard_and_mouse_in_a_glove.c: 64: TXEN = 1;
	bsf	(1221/8)^080h,(1221)&7
	line	65
	
l4682:	
;keyboard_and_mouse_in_a_glove.c: 65: SYNC = 0;
	bcf	(1220/8)^080h,(1220)&7
	line	66
	
l4684:	
;keyboard_and_mouse_in_a_glove.c: 66: BRGH = 1;
	bsf	(1218/8)^080h,(1218)&7
	line	67
	
l4686:	
;keyboard_and_mouse_in_a_glove.c: 67: SPBRG = 25;
	movlw	(019h)
	movwf	(153)^080h	;volatile
	line	68
	
l4688:	
;keyboard_and_mouse_in_a_glove.c: 68: RCIE = 1;
	bsf	(1125/8)^080h,(1125)&7
	line	69
	
l4690:	
;keyboard_and_mouse_in_a_glove.c: 69: TXIE = 0;
	bcf	(1124/8)^080h,(1124)&7
	line	70
	
l4692:	
;keyboard_and_mouse_in_a_glove.c: 70: _delay((unsigned long)((500)*(4000000/4000.0)));
	opt asmopt_off
movlw  3
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	138
movwf	((??_main+0)+0+1),f
	movlw	86
movwf	((??_main+0)+0),f
u6637:
	decfsz	((??_main+0)+0),f
	goto	u6637
	decfsz	((??_main+0)+0+1),f
	goto	u6637
	decfsz	((??_main+0)+0+2),f
	goto	u6637
	nop2
opt asmopt_on

	line	73
	
l4694:	
;keyboard_and_mouse_in_a_glove.c: 73: T1CKPS1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(133/8),(133)&7
	line	74
	
l4696:	
;keyboard_and_mouse_in_a_glove.c: 74: T1CKPS0 = 1;
	bsf	(132/8),(132)&7
	line	75
	
l4698:	
;keyboard_and_mouse_in_a_glove.c: 75: TMR1CS = 0;
	bcf	(129/8),(129)&7
	line	76
	
l4700:	
;keyboard_and_mouse_in_a_glove.c: 76: TMR1ON = 1;
	bsf	(128/8),(128)&7
	line	77
	
l4702:	
;keyboard_and_mouse_in_a_glove.c: 77: T1OSCEN = 0;
	bcf	(131/8),(131)&7
	line	78
	
l4704:	
;keyboard_and_mouse_in_a_glove.c: 78: TMR1L = 0xB0;
	movlw	(0B0h)
	movwf	(14)	;volatile
	line	79
	
l4706:	
;keyboard_and_mouse_in_a_glove.c: 79: TMR1H = 60;
	movlw	(03Ch)
	movwf	(15)	;volatile
	line	80
	
l4708:	
;keyboard_and_mouse_in_a_glove.c: 80: TMR1IE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1120/8)^080h,(1120)&7
	line	83
	
l4710:	
;keyboard_and_mouse_in_a_glove.c: 83: OPTION_REG =0b01111111 & OPTION_REG;
	movf	(129)^080h,w
	andlw	07Fh
	movwf	(129)^080h	;volatile
	line	86
	
l4712:	
;keyboard_and_mouse_in_a_glove.c: 86: InterruptEn();
	fcall	_InterruptEn
	line	89
	
l4714:	
;keyboard_and_mouse_in_a_glove.c: 89: MOUSE_SELECT = 0;
	bcf	(_MOUSE_SELECT/8),(_MOUSE_SELECT)&7
	goto	l4716
	line	91
;keyboard_and_mouse_in_a_glove.c: 91: while(1){
	
l715:	
	line	92
	
l4716:	
;keyboard_and_mouse_in_a_glove.c: 92: nop=1;
	bsf	(_nop/8),(_nop)&7
	line	93
	
l4718:	
;keyboard_and_mouse_in_a_glove.c: 93: if (MOUSE_SELECT == 1){
	btfss	(_MOUSE_SELECT/8),(_MOUSE_SELECT)&7
	goto	u5461
	goto	u5460
u5461:
	goto	l716
u5460:
	line	95
	
l4720:	
;keyboard_and_mouse_in_a_glove.c: 95: a2d_read();
	fcall	_a2d_read
	line	97
;keyboard_and_mouse_in_a_glove.c: 97: while(!TXIF);
	goto	l717
	
l718:	
	
l717:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7
	goto	u5471
	goto	u5470
u5471:
	goto	l717
u5470:
	goto	l4722
	
l719:	
	line	98
	
l4722:	
;keyboard_and_mouse_in_a_glove.c: 98: TXREG = '%';
	movlw	(025h)
	movwf	(25)	;volatile
	line	99
;keyboard_and_mouse_in_a_glove.c: 99: while(!TXIF);
	goto	l720
	
l721:	
	
l720:	
	btfss	(100/8),(100)&7
	goto	u5481
	goto	u5480
u5481:
	goto	l720
u5480:
	goto	l4724
	
l722:	
	line	100
	
l4724:	
;keyboard_and_mouse_in_a_glove.c: 100: TXREG = 'X';
	movlw	(058h)
	movwf	(25)	;volatile
	line	101
;keyboard_and_mouse_in_a_glove.c: 101: while(!TXIF);
	goto	l723
	
l724:	
	
l723:	
	btfss	(100/8),(100)&7
	goto	u5491
	goto	u5490
u5491:
	goto	l723
u5490:
	goto	l4726
	
l725:	
	line	102
	
l4726:	
;keyboard_and_mouse_in_a_glove.c: 102: TXREG = vblAccX/100 + 48;
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
	line	103
;keyboard_and_mouse_in_a_glove.c: 103: while(!TXIF);
	goto	l726
	
l727:	
	
l726:	
	btfss	(100/8),(100)&7
	goto	u5501
	goto	u5500
u5501:
	goto	l726
u5500:
	goto	l4728
	
l728:	
	line	104
	
l4728:	
;keyboard_and_mouse_in_a_glove.c: 104: TXREG = vblAccX%100/10 + 48;
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
	line	105
;keyboard_and_mouse_in_a_glove.c: 105: while(!TXIF);
	goto	l729
	
l730:	
	
l729:	
	btfss	(100/8),(100)&7
	goto	u5511
	goto	u5510
u5511:
	goto	l729
u5510:
	goto	l4730
	
l731:	
	line	106
	
l4730:	
;keyboard_and_mouse_in_a_glove.c: 106: TXREG = vblAccX%100%10 + 48;
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
;keyboard_and_mouse_in_a_glove.c: 106: TXREG = vblAccX%100%10 + 48;
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
	line	107
;keyboard_and_mouse_in_a_glove.c: 107: while(!TXIF);
	goto	l732
	
l733:	
	
l732:	
	btfss	(100/8),(100)&7
	goto	u5521
	goto	u5520
u5521:
	goto	l732
u5520:
	goto	l4732
	
l734:	
	line	108
	
l4732:	
;keyboard_and_mouse_in_a_glove.c: 108: TXREG = '?';
	movlw	(03Fh)
	movwf	(25)	;volatile
	line	110
;keyboard_and_mouse_in_a_glove.c: 110: while(!TXIF);
	goto	l735
	
l736:	
	
l735:	
	btfss	(100/8),(100)&7
	goto	u5531
	goto	u5530
u5531:
	goto	l735
u5530:
	goto	l4734
	
l737:	
	line	111
	
l4734:	
;keyboard_and_mouse_in_a_glove.c: 111: TXREG = '%';
	movlw	(025h)
	movwf	(25)	;volatile
	line	112
;keyboard_and_mouse_in_a_glove.c: 112: while(!TXIF);
	goto	l738
	
l739:	
	
l738:	
	btfss	(100/8),(100)&7
	goto	u5541
	goto	u5540
u5541:
	goto	l738
u5540:
	goto	l4736
	
l740:	
	line	113
	
l4736:	
;keyboard_and_mouse_in_a_glove.c: 113: TXREG = 'Y';
	movlw	(059h)
	movwf	(25)	;volatile
	line	114
;keyboard_and_mouse_in_a_glove.c: 114: while(!TXIF);
	goto	l741
	
l742:	
	
l741:	
	btfss	(100/8),(100)&7
	goto	u5551
	goto	u5550
u5551:
	goto	l741
u5550:
	goto	l4738
	
l743:	
	line	115
	
l4738:	
;keyboard_and_mouse_in_a_glove.c: 115: TXREG = vblAccY/100 + 48;
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
	line	116
;keyboard_and_mouse_in_a_glove.c: 116: while(!TXIF);
	goto	l744
	
l745:	
	
l744:	
	btfss	(100/8),(100)&7
	goto	u5561
	goto	u5560
u5561:
	goto	l744
u5560:
	goto	l4740
	
l746:	
	line	117
	
l4740:	
;keyboard_and_mouse_in_a_glove.c: 117: TXREG = vblAccY%100/10 + 48;
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
	line	118
;keyboard_and_mouse_in_a_glove.c: 118: while(!TXIF);
	goto	l747
	
l748:	
	
l747:	
	btfss	(100/8),(100)&7
	goto	u5571
	goto	u5570
u5571:
	goto	l747
u5570:
	goto	l4742
	
l749:	
	line	119
	
l4742:	
;keyboard_and_mouse_in_a_glove.c: 119: TXREG = vblAccY%100%10 + 48;
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
;keyboard_and_mouse_in_a_glove.c: 119: TXREG = vblAccY%100%10 + 48;
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
	line	120
;keyboard_and_mouse_in_a_glove.c: 120: while(!TXIF);
	goto	l750
	
l751:	
	
l750:	
	btfss	(100/8),(100)&7
	goto	u5581
	goto	u5580
u5581:
	goto	l750
u5580:
	goto	l4744
	
l752:	
	line	121
	
l4744:	
;keyboard_and_mouse_in_a_glove.c: 121: TXREG = '?';
	movlw	(03Fh)
	movwf	(25)	;volatile
	line	123
;keyboard_and_mouse_in_a_glove.c: 123: _delay((unsigned long)((30)*(4000000/4000.0)));
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u6647:
	decfsz	((??_main+0)+0),f
	goto	u6647
	decfsz	((??_main+0)+0+1),f
	goto	u6647
opt asmopt_on

	line	125
	
l4746:	
;keyboard_and_mouse_in_a_glove.c: 125: if( RB5!=0 ){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(53/8),(53)&7
	goto	u5591
	goto	u5590
u5591:
	goto	l766
u5590:
	line	128
	
l4748:	
;keyboard_and_mouse_in_a_glove.c: 128: _delay((unsigned long)((50)*(4000000/4000.0))); while(RD7!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RD7!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RD7!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RD7!=0)
	opt asmopt_off
movlw	65
movwf	((??_main+0)+0+1),f
	movlw	238
movwf	((??_main+0)+0),f
u6657:
	decfsz	((??_main+0)+0),f
	goto	u6657
	decfsz	((??_main+0)+0+1),f
	goto	u6657
	clrwdt
opt asmopt_on

	goto	l754
	
l755:	
	
l754:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u5601
	goto	u5600
u5601:
	goto	l754
u5600:
	goto	l4750
	
l756:	
	
l4750:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u6667:
	decfsz	((??_main+0)+0),f
	goto	u6667
	decfsz	((??_main+0)+0+1),f
	goto	u6667
opt asmopt_on

	goto	l757
	
l758:	
	
l757:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u5611
	goto	u5610
u5611:
	goto	l757
u5610:
	goto	l4752
	
l759:	
	
l4752:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u6677:
	decfsz	((??_main+0)+0),f
	goto	u6677
	decfsz	((??_main+0)+0+1),f
	goto	u6677
opt asmopt_on

	goto	l760
	
l761:	
	
l760:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u5621
	goto	u5620
u5621:
	goto	l760
u5620:
	goto	l4754
	
l762:	
	
l4754:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u6687:
	decfsz	((??_main+0)+0),f
	goto	u6687
	decfsz	((??_main+0)+0+1),f
	goto	u6687
opt asmopt_on

	goto	l763
	
l764:	
	
l763:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u5631
	goto	u5630
u5631:
	goto	l763
u5630:
	
l765:	
	line	130
;keyboard_and_mouse_in_a_glove.c: 130: MOUSE_SELECT = 1;
	bsf	(_MOUSE_SELECT/8),(_MOUSE_SELECT)&7
	goto	l766
	line	131
	
l753:	
	line	132
;keyboard_and_mouse_in_a_glove.c: 131: }
;keyboard_and_mouse_in_a_glove.c: 132: }
	goto	l766
	line	133
	
l716:	
	line	135
;keyboard_and_mouse_in_a_glove.c: 133: else
;keyboard_and_mouse_in_a_glove.c: 134: {
;keyboard_and_mouse_in_a_glove.c: 135: if( RD7!=0 ){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(71/8),(71)&7
	goto	u5641
	goto	u5640
u5641:
	goto	l767
u5640:
	line	136
	
l4756:	
;keyboard_and_mouse_in_a_glove.c: 136: nop=1;
	bsf	(_nop/8),(_nop)&7
	line	139
	
l4758:	
;keyboard_and_mouse_in_a_glove.c: 139: _delay((unsigned long)((50)*(4000000/4000.0))); while(RD7!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RD7!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RD7!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RD7!=0)
	opt asmopt_off
movlw	65
movwf	((??_main+0)+0+1),f
	movlw	238
movwf	((??_main+0)+0),f
u6697:
	decfsz	((??_main+0)+0),f
	goto	u6697
	decfsz	((??_main+0)+0+1),f
	goto	u6697
	clrwdt
opt asmopt_on

	goto	l768
	
l769:	
	
l768:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u5651
	goto	u5650
u5651:
	goto	l768
u5650:
	goto	l4760
	
l770:	
	
l4760:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u6707:
	decfsz	((??_main+0)+0),f
	goto	u6707
	decfsz	((??_main+0)+0+1),f
	goto	u6707
opt asmopt_on

	goto	l771
	
l772:	
	
l771:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u5661
	goto	u5660
u5661:
	goto	l771
u5660:
	goto	l4762
	
l773:	
	
l4762:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u6717:
	decfsz	((??_main+0)+0),f
	goto	u6717
	decfsz	((??_main+0)+0+1),f
	goto	u6717
opt asmopt_on

	goto	l774
	
l775:	
	
l774:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u5671
	goto	u5670
u5671:
	goto	l774
u5670:
	goto	l4764
	
l776:	
	
l4764:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u6727:
	decfsz	((??_main+0)+0),f
	goto	u6727
	decfsz	((??_main+0)+0+1),f
	goto	u6727
opt asmopt_on

	goto	l777
	
l778:	
	
l777:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u5681
	goto	u5680
u5681:
	goto	l777
u5680:
	goto	l4766
	
l779:	
	line	142
	
l4766:	
;keyboard_and_mouse_in_a_glove.c: 142: if ( counter==0 ){ KeySend('1'); prevChar='1'; counter = 10; }
	movf	((_counter+1)),w
	iorwf	((_counter)),w
	skipz
	goto	u5691
	goto	u5690
u5691:
	goto	l766
u5690:
	
l4768:	
	movlw	(031h)
	fcall	_KeySend
	
l4770:	
	movlw	(031h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l4772:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l766
	
l780:	
	line	144
;keyboard_and_mouse_in_a_glove.c: 144: }
	goto	l766
	line	145
	
l767:	
;keyboard_and_mouse_in_a_glove.c: 145: else if( RD3!=0 ){
	btfss	(67/8),(67)&7
	goto	u5701
	goto	u5700
u5701:
	goto	l782
u5700:
	line	146
	
l4774:	
;keyboard_and_mouse_in_a_glove.c: 146: nop=1;
	bsf	(_nop/8),(_nop)&7
	line	149
	
l4776:	
;keyboard_and_mouse_in_a_glove.c: 149: _delay((unsigned long)((50)*(4000000/4000.0))); while(RD7!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RD7!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RD7!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RD7!=0)
	opt asmopt_off
movlw	65
movwf	((??_main+0)+0+1),f
	movlw	238
movwf	((??_main+0)+0),f
u6737:
	decfsz	((??_main+0)+0),f
	goto	u6737
	decfsz	((??_main+0)+0+1),f
	goto	u6737
	clrwdt
opt asmopt_on

	goto	l783
	
l784:	
	
l783:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u5711
	goto	u5710
u5711:
	goto	l783
u5710:
	goto	l4778
	
l785:	
	
l4778:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u6747:
	decfsz	((??_main+0)+0),f
	goto	u6747
	decfsz	((??_main+0)+0+1),f
	goto	u6747
opt asmopt_on

	goto	l786
	
l787:	
	
l786:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u5721
	goto	u5720
u5721:
	goto	l786
u5720:
	goto	l4780
	
l788:	
	
l4780:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u6757:
	decfsz	((??_main+0)+0),f
	goto	u6757
	decfsz	((??_main+0)+0+1),f
	goto	u6757
opt asmopt_on

	goto	l789
	
l790:	
	
l789:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u5731
	goto	u5730
u5731:
	goto	l789
u5730:
	goto	l4782
	
l791:	
	
l4782:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u6767:
	decfsz	((??_main+0)+0),f
	goto	u6767
	decfsz	((??_main+0)+0+1),f
	goto	u6767
opt asmopt_on

	goto	l792
	
l793:	
	
l792:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u5741
	goto	u5740
u5741:
	goto	l792
u5740:
	goto	l4784
	
l794:	
	line	152
	
l4784:	
;keyboard_and_mouse_in_a_glove.c: 152: if ( counter==0 ){ KeySend('A'); prevChar='A'; counter = 10; }
	movf	((_counter+1)),w
	iorwf	((_counter)),w
	skipz
	goto	u5751
	goto	u5750
u5751:
	goto	l4792
u5750:
	
l4786:	
	movlw	(041h)
	fcall	_KeySend
	
l4788:	
	movlw	(041h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l4790:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l766
	line	153
	
l795:	
	
l4792:	
;keyboard_and_mouse_in_a_glove.c: 153: else if( prevChar=='A' ){ KeySend('^'); KeySend('B'); prevChar='B'; counter = 10; }
	movf	(_prevChar),w
	xorlw	041h
	skipz
	goto	u5761
	goto	u5760
u5761:
	goto	l4800
u5760:
	
l4794:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(042h)
	fcall	_KeySend
	
l4796:	
	movlw	(042h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l4798:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l766
	line	154
	
l797:	
	
l4800:	
;keyboard_and_mouse_in_a_glove.c: 154: else if( prevChar=='B' ){ KeySend('^'); KeySend('C'); prevChar='C'; counter = 10; }
	movf	(_prevChar),w
	xorlw	042h
	skipz
	goto	u5771
	goto	u5770
u5771:
	goto	l4808
u5770:
	
l4802:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(043h)
	fcall	_KeySend
	
l4804:	
	movlw	(043h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l4806:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l766
	line	155
	
l799:	
	
l4808:	
;keyboard_and_mouse_in_a_glove.c: 155: else if( prevChar=='C' ){ KeySend('^'); KeySend('2'); prevChar='2'; counter = 10; }
	movf	(_prevChar),w
	xorlw	043h
	skipz
	goto	u5781
	goto	u5780
u5781:
	goto	l4816
u5780:
	
l4810:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(032h)
	fcall	_KeySend
	
l4812:	
	movlw	(032h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l4814:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l766
	line	156
	
l801:	
	
l4816:	
;keyboard_and_mouse_in_a_glove.c: 156: else if( prevChar=='2' ){ KeySend('^'); KeySend('A'); prevChar='A'; counter = 10; }
	movf	(_prevChar),w
	xorlw	032h
	skipz
	goto	u5791
	goto	u5790
u5791:
	goto	l766
u5790:
	
l4818:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(041h)
	fcall	_KeySend
	
l4820:	
	movlw	(041h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l4822:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l766
	
l803:	
	goto	l766
	line	157
	
l802:	
	goto	l766
	
l800:	
	goto	l766
	
l798:	
	goto	l766
	
l796:	
;keyboard_and_mouse_in_a_glove.c: 157: }
	goto	l766
	line	159
	
l782:	
;keyboard_and_mouse_in_a_glove.c: 159: else if( RB4!=0 ){
	btfss	(52/8),(52)&7
	goto	u5801
	goto	u5800
u5801:
	goto	l805
u5800:
	line	160
	
l4824:	
;keyboard_and_mouse_in_a_glove.c: 160: nop=1;
	bsf	(_nop/8),(_nop)&7
	line	163
	
l4826:	
;keyboard_and_mouse_in_a_glove.c: 163: _delay((unsigned long)((50)*(4000000/4000.0))); while(RD7!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RD7!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RD7!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RD7!=0)
	opt asmopt_off
movlw	65
movwf	((??_main+0)+0+1),f
	movlw	238
movwf	((??_main+0)+0),f
u6777:
	decfsz	((??_main+0)+0),f
	goto	u6777
	decfsz	((??_main+0)+0+1),f
	goto	u6777
	clrwdt
opt asmopt_on

	goto	l806
	
l807:	
	
l806:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u5811
	goto	u5810
u5811:
	goto	l806
u5810:
	goto	l4828
	
l808:	
	
l4828:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u6787:
	decfsz	((??_main+0)+0),f
	goto	u6787
	decfsz	((??_main+0)+0+1),f
	goto	u6787
opt asmopt_on

	goto	l809
	
l810:	
	
l809:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u5821
	goto	u5820
u5821:
	goto	l809
u5820:
	goto	l4830
	
l811:	
	
l4830:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u6797:
	decfsz	((??_main+0)+0),f
	goto	u6797
	decfsz	((??_main+0)+0+1),f
	goto	u6797
opt asmopt_on

	goto	l812
	
l813:	
	
l812:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u5831
	goto	u5830
u5831:
	goto	l812
u5830:
	goto	l4832
	
l814:	
	
l4832:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u6807:
	decfsz	((??_main+0)+0),f
	goto	u6807
	decfsz	((??_main+0)+0+1),f
	goto	u6807
opt asmopt_on

	goto	l815
	
l816:	
	
l815:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u5841
	goto	u5840
u5841:
	goto	l815
u5840:
	goto	l4834
	
l817:	
	line	166
	
l4834:	
;keyboard_and_mouse_in_a_glove.c: 166: if ( counter==0 ){ KeySend('D'); prevChar='D'; counter = 10; }
	movf	((_counter+1)),w
	iorwf	((_counter)),w
	skipz
	goto	u5851
	goto	u5850
u5851:
	goto	l4842
u5850:
	
l4836:	
	movlw	(044h)
	fcall	_KeySend
	
l4838:	
	movlw	(044h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l4840:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l766
	line	167
	
l818:	
	
l4842:	
;keyboard_and_mouse_in_a_glove.c: 167: else if( prevChar=='D' ){ KeySend('^'); KeySend('E'); prevChar='E'; counter = 10; }
	movf	(_prevChar),w
	xorlw	044h
	skipz
	goto	u5861
	goto	u5860
u5861:
	goto	l4850
u5860:
	
l4844:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(045h)
	fcall	_KeySend
	
l4846:	
	movlw	(045h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l4848:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l766
	line	168
	
l820:	
	
l4850:	
;keyboard_and_mouse_in_a_glove.c: 168: else if( prevChar=='E' ){ KeySend('^'); KeySend('F'); prevChar='F'; counter = 10; }
	movf	(_prevChar),w
	xorlw	045h
	skipz
	goto	u5871
	goto	u5870
u5871:
	goto	l4858
u5870:
	
l4852:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(046h)
	fcall	_KeySend
	
l4854:	
	movlw	(046h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l4856:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l766
	line	169
	
l822:	
	
l4858:	
;keyboard_and_mouse_in_a_glove.c: 169: else if( prevChar=='F' ){ KeySend('^'); KeySend('3'); prevChar='3'; counter = 10; }
	movf	(_prevChar),w
	xorlw	046h
	skipz
	goto	u5881
	goto	u5880
u5881:
	goto	l4866
u5880:
	
l4860:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(033h)
	fcall	_KeySend
	
l4862:	
	movlw	(033h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l4864:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l766
	line	170
	
l824:	
	
l4866:	
;keyboard_and_mouse_in_a_glove.c: 170: else if( prevChar=='3' ){ KeySend('^'); KeySend('D'); prevChar='D'; counter = 10; }
	movf	(_prevChar),w
	xorlw	033h
	skipz
	goto	u5891
	goto	u5890
u5891:
	goto	l766
u5890:
	
l4868:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(044h)
	fcall	_KeySend
	
l4870:	
	movlw	(044h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l4872:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l766
	
l826:	
	goto	l766
	line	171
	
l825:	
	goto	l766
	
l823:	
	goto	l766
	
l821:	
	goto	l766
	
l819:	
;keyboard_and_mouse_in_a_glove.c: 171: }
	goto	l766
	line	173
	
l805:	
;keyboard_and_mouse_in_a_glove.c: 173: else if( RB0!=0 ){
	btfss	(48/8),(48)&7
	goto	u5901
	goto	u5900
u5901:
	goto	l828
u5900:
	line	174
	
l4874:	
;keyboard_and_mouse_in_a_glove.c: 174: nop=1;
	bsf	(_nop/8),(_nop)&7
	line	177
	
l4876:	
;keyboard_and_mouse_in_a_glove.c: 177: _delay((unsigned long)((50)*(4000000/4000.0))); while(RD7!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RD7!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RD7!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RD7!=0)
	opt asmopt_off
movlw	65
movwf	((??_main+0)+0+1),f
	movlw	238
movwf	((??_main+0)+0),f
u6817:
	decfsz	((??_main+0)+0),f
	goto	u6817
	decfsz	((??_main+0)+0+1),f
	goto	u6817
	clrwdt
opt asmopt_on

	goto	l829
	
l830:	
	
l829:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u5911
	goto	u5910
u5911:
	goto	l829
u5910:
	goto	l4878
	
l831:	
	
l4878:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u6827:
	decfsz	((??_main+0)+0),f
	goto	u6827
	decfsz	((??_main+0)+0+1),f
	goto	u6827
opt asmopt_on

	goto	l832
	
l833:	
	
l832:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u5921
	goto	u5920
u5921:
	goto	l832
u5920:
	goto	l4880
	
l834:	
	
l4880:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u6837:
	decfsz	((??_main+0)+0),f
	goto	u6837
	decfsz	((??_main+0)+0+1),f
	goto	u6837
opt asmopt_on

	goto	l835
	
l836:	
	
l835:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u5931
	goto	u5930
u5931:
	goto	l835
u5930:
	goto	l4882
	
l837:	
	
l4882:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u6847:
	decfsz	((??_main+0)+0),f
	goto	u6847
	decfsz	((??_main+0)+0+1),f
	goto	u6847
opt asmopt_on

	goto	l838
	
l839:	
	
l838:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u5941
	goto	u5940
u5941:
	goto	l838
u5940:
	goto	l4884
	
l840:	
	line	180
	
l4884:	
;keyboard_and_mouse_in_a_glove.c: 180: if ( counter==0 ){ KeySend('G'); prevChar='G'; counter = 10; }
	movf	((_counter+1)),w
	iorwf	((_counter)),w
	skipz
	goto	u5951
	goto	u5950
u5951:
	goto	l4892
u5950:
	
l4886:	
	movlw	(047h)
	fcall	_KeySend
	
l4888:	
	movlw	(047h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l4890:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l766
	line	181
	
l841:	
	
l4892:	
;keyboard_and_mouse_in_a_glove.c: 181: else if( prevChar=='G' ){ KeySend('^'); KeySend('H'); prevChar='H'; counter = 10; }
	movf	(_prevChar),w
	xorlw	047h
	skipz
	goto	u5961
	goto	u5960
u5961:
	goto	l4900
u5960:
	
l4894:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(048h)
	fcall	_KeySend
	
l4896:	
	movlw	(048h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l4898:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l766
	line	182
	
l843:	
	
l4900:	
;keyboard_and_mouse_in_a_glove.c: 182: else if( prevChar=='H' ){ KeySend('^'); KeySend('I'); prevChar='I'; counter = 10; }
	movf	(_prevChar),w
	xorlw	048h
	skipz
	goto	u5971
	goto	u5970
u5971:
	goto	l4908
u5970:
	
l4902:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(049h)
	fcall	_KeySend
	
l4904:	
	movlw	(049h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l4906:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l766
	line	183
	
l845:	
	
l4908:	
;keyboard_and_mouse_in_a_glove.c: 183: else if( prevChar=='I' ){ KeySend('^'); KeySend('4'); prevChar='4'; counter = 10; }
	movf	(_prevChar),w
	xorlw	049h
	skipz
	goto	u5981
	goto	u5980
u5981:
	goto	l4916
u5980:
	
l4910:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(034h)
	fcall	_KeySend
	
l4912:	
	movlw	(034h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l4914:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l766
	line	184
	
l847:	
	
l4916:	
;keyboard_and_mouse_in_a_glove.c: 184: else if( prevChar=='4' ){ KeySend('^'); KeySend('G'); prevChar='G'; counter = 10; }
	movf	(_prevChar),w
	xorlw	034h
	skipz
	goto	u5991
	goto	u5990
u5991:
	goto	l766
u5990:
	
l4918:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(047h)
	fcall	_KeySend
	
l4920:	
	movlw	(047h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l4922:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l766
	
l849:	
	goto	l766
	line	185
	
l848:	
	goto	l766
	
l846:	
	goto	l766
	
l844:	
	goto	l766
	
l842:	
;keyboard_and_mouse_in_a_glove.c: 185: }
	goto	l766
	line	187
	
l828:	
;keyboard_and_mouse_in_a_glove.c: 187: else if( RD4!=0){
	btfss	(68/8),(68)&7
	goto	u6001
	goto	u6000
u6001:
	goto	l851
u6000:
	line	188
	
l4924:	
;keyboard_and_mouse_in_a_glove.c: 188: nop=1;
	bsf	(_nop/8),(_nop)&7
	line	191
	
l4926:	
;keyboard_and_mouse_in_a_glove.c: 191: _delay((unsigned long)((50)*(4000000/4000.0))); while(RD7!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RD7!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RD7!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RD7!=0)
	opt asmopt_off
movlw	65
movwf	((??_main+0)+0+1),f
	movlw	238
movwf	((??_main+0)+0),f
u6857:
	decfsz	((??_main+0)+0),f
	goto	u6857
	decfsz	((??_main+0)+0+1),f
	goto	u6857
	clrwdt
opt asmopt_on

	goto	l852
	
l853:	
	
l852:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u6011
	goto	u6010
u6011:
	goto	l852
u6010:
	goto	l4928
	
l854:	
	
l4928:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u6867:
	decfsz	((??_main+0)+0),f
	goto	u6867
	decfsz	((??_main+0)+0+1),f
	goto	u6867
opt asmopt_on

	goto	l855
	
l856:	
	
l855:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u6021
	goto	u6020
u6021:
	goto	l855
u6020:
	goto	l4930
	
l857:	
	
l4930:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u6877:
	decfsz	((??_main+0)+0),f
	goto	u6877
	decfsz	((??_main+0)+0+1),f
	goto	u6877
opt asmopt_on

	goto	l858
	
l859:	
	
l858:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u6031
	goto	u6030
u6031:
	goto	l858
u6030:
	goto	l4932
	
l860:	
	
l4932:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u6887:
	decfsz	((??_main+0)+0),f
	goto	u6887
	decfsz	((??_main+0)+0+1),f
	goto	u6887
opt asmopt_on

	goto	l861
	
l862:	
	
l861:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u6041
	goto	u6040
u6041:
	goto	l861
u6040:
	goto	l4934
	
l863:	
	line	194
	
l4934:	
;keyboard_and_mouse_in_a_glove.c: 194: if ( counter==0 ){ KeySend('J'); prevChar='J'; counter = 10; }
	movf	((_counter+1)),w
	iorwf	((_counter)),w
	skipz
	goto	u6051
	goto	u6050
u6051:
	goto	l4942
u6050:
	
l4936:	
	movlw	(04Ah)
	fcall	_KeySend
	
l4938:	
	movlw	(04Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l4940:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l766
	line	195
	
l864:	
	
l4942:	
;keyboard_and_mouse_in_a_glove.c: 195: else if( prevChar=='J' ){ KeySend('^'); KeySend('K'); prevChar='K'; counter = 10; }
	movf	(_prevChar),w
	xorlw	04Ah
	skipz
	goto	u6061
	goto	u6060
u6061:
	goto	l4950
u6060:
	
l4944:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(04Bh)
	fcall	_KeySend
	
l4946:	
	movlw	(04Bh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l4948:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l766
	line	196
	
l866:	
	
l4950:	
;keyboard_and_mouse_in_a_glove.c: 196: else if( prevChar=='K' ){ KeySend('^'); KeySend('L'); prevChar='L'; counter = 10; }
	movf	(_prevChar),w
	xorlw	04Bh
	skipz
	goto	u6071
	goto	u6070
u6071:
	goto	l4958
u6070:
	
l4952:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(04Ch)
	fcall	_KeySend
	
l4954:	
	movlw	(04Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l4956:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l766
	line	197
	
l868:	
	
l4958:	
;keyboard_and_mouse_in_a_glove.c: 197: else if( prevChar=='L' ){ KeySend('^'); KeySend('5'); prevChar='5'; counter = 10; }
	movf	(_prevChar),w
	xorlw	04Ch
	skipz
	goto	u6081
	goto	u6080
u6081:
	goto	l4966
u6080:
	
l4960:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(035h)
	fcall	_KeySend
	
l4962:	
	movlw	(035h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l4964:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l766
	line	198
	
l870:	
	
l4966:	
;keyboard_and_mouse_in_a_glove.c: 198: else if( prevChar=='5' ){ KeySend('^'); KeySend('J'); prevChar='J'; counter = 10; }
	movf	(_prevChar),w
	xorlw	035h
	skipz
	goto	u6091
	goto	u6090
u6091:
	goto	l766
u6090:
	
l4968:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(04Ah)
	fcall	_KeySend
	
l4970:	
	movlw	(04Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l4972:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l766
	
l872:	
	goto	l766
	line	199
	
l871:	
	goto	l766
	
l869:	
	goto	l766
	
l867:	
	goto	l766
	
l865:	
;keyboard_and_mouse_in_a_glove.c: 199: }
	goto	l766
	line	202
	
l851:	
;keyboard_and_mouse_in_a_glove.c: 202: else if( RB2!=0){
	btfss	(50/8),(50)&7
	goto	u6101
	goto	u6100
u6101:
	goto	l874
u6100:
	line	203
	
l4974:	
;keyboard_and_mouse_in_a_glove.c: 203: nop=1;
	bsf	(_nop/8),(_nop)&7
	line	206
	
l4976:	
;keyboard_and_mouse_in_a_glove.c: 206: _delay((unsigned long)((50)*(4000000/4000.0))); while(RD7!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RD7!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RD7!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RD7!=0)
	opt asmopt_off
movlw	65
movwf	((??_main+0)+0+1),f
	movlw	238
movwf	((??_main+0)+0),f
u6897:
	decfsz	((??_main+0)+0),f
	goto	u6897
	decfsz	((??_main+0)+0+1),f
	goto	u6897
	clrwdt
opt asmopt_on

	goto	l875
	
l876:	
	
l875:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u6111
	goto	u6110
u6111:
	goto	l875
u6110:
	goto	l4978
	
l877:	
	
l4978:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u6907:
	decfsz	((??_main+0)+0),f
	goto	u6907
	decfsz	((??_main+0)+0+1),f
	goto	u6907
opt asmopt_on

	goto	l878
	
l879:	
	
l878:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u6121
	goto	u6120
u6121:
	goto	l878
u6120:
	goto	l4980
	
l880:	
	
l4980:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u6917:
	decfsz	((??_main+0)+0),f
	goto	u6917
	decfsz	((??_main+0)+0+1),f
	goto	u6917
opt asmopt_on

	goto	l881
	
l882:	
	
l881:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u6131
	goto	u6130
u6131:
	goto	l881
u6130:
	goto	l4982
	
l883:	
	
l4982:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u6927:
	decfsz	((??_main+0)+0),f
	goto	u6927
	decfsz	((??_main+0)+0+1),f
	goto	u6927
opt asmopt_on

	goto	l884
	
l885:	
	
l884:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u6141
	goto	u6140
u6141:
	goto	l884
u6140:
	goto	l4984
	
l886:	
	line	209
	
l4984:	
;keyboard_and_mouse_in_a_glove.c: 209: if ( counter==0 ){ KeySend('M'); prevChar='M'; counter = 10; }
	movf	((_counter+1)),w
	iorwf	((_counter)),w
	skipz
	goto	u6151
	goto	u6150
u6151:
	goto	l4992
u6150:
	
l4986:	
	movlw	(04Dh)
	fcall	_KeySend
	
l4988:	
	movlw	(04Dh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l4990:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l766
	line	210
	
l887:	
	
l4992:	
;keyboard_and_mouse_in_a_glove.c: 210: else if( prevChar=='M' ){ KeySend('^'); KeySend('N'); prevChar='N'; counter = 10; }
	movf	(_prevChar),w
	xorlw	04Dh
	skipz
	goto	u6161
	goto	u6160
u6161:
	goto	l5000
u6160:
	
l4994:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(04Eh)
	fcall	_KeySend
	
l4996:	
	movlw	(04Eh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l4998:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l766
	line	211
	
l889:	
	
l5000:	
;keyboard_and_mouse_in_a_glove.c: 211: else if( prevChar=='N' ){ KeySend('^'); KeySend('O'); prevChar='O'; counter = 10; }
	movf	(_prevChar),w
	xorlw	04Eh
	skipz
	goto	u6171
	goto	u6170
u6171:
	goto	l5008
u6170:
	
l5002:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(04Fh)
	fcall	_KeySend
	
l5004:	
	movlw	(04Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l5006:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l766
	line	212
	
l891:	
	
l5008:	
;keyboard_and_mouse_in_a_glove.c: 212: else if( prevChar=='O' ){ KeySend('^'); KeySend('6'); prevChar='6'; counter = 10; }
	movf	(_prevChar),w
	xorlw	04Fh
	skipz
	goto	u6181
	goto	u6180
u6181:
	goto	l5016
u6180:
	
l5010:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(036h)
	fcall	_KeySend
	
l5012:	
	movlw	(036h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l5014:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l766
	line	213
	
l893:	
	
l5016:	
;keyboard_and_mouse_in_a_glove.c: 213: else if( prevChar=='6' ){ KeySend('^'); KeySend('M'); prevChar='M'; counter = 10; }
	movf	(_prevChar),w
	xorlw	036h
	skipz
	goto	u6191
	goto	u6190
u6191:
	goto	l766
u6190:
	
l5018:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(04Dh)
	fcall	_KeySend
	
l5020:	
	movlw	(04Dh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l5022:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l766
	
l895:	
	goto	l766
	line	214
	
l894:	
	goto	l766
	
l892:	
	goto	l766
	
l890:	
	goto	l766
	
l888:	
;keyboard_and_mouse_in_a_glove.c: 214: }
	goto	l766
	line	216
	
l874:	
;keyboard_and_mouse_in_a_glove.c: 216: else if( RB3!=0){
	btfss	(51/8),(51)&7
	goto	u6201
	goto	u6200
u6201:
	goto	l897
u6200:
	line	217
	
l5024:	
;keyboard_and_mouse_in_a_glove.c: 217: nop=1;
	bsf	(_nop/8),(_nop)&7
	line	220
	
l5026:	
;keyboard_and_mouse_in_a_glove.c: 220: _delay((unsigned long)((50)*(4000000/4000.0))); while(RD7!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RD7!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RD7!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RD7!=0)
	opt asmopt_off
movlw	65
movwf	((??_main+0)+0+1),f
	movlw	238
movwf	((??_main+0)+0),f
u6937:
	decfsz	((??_main+0)+0),f
	goto	u6937
	decfsz	((??_main+0)+0+1),f
	goto	u6937
	clrwdt
opt asmopt_on

	goto	l898
	
l899:	
	
l898:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u6211
	goto	u6210
u6211:
	goto	l898
u6210:
	goto	l5028
	
l900:	
	
l5028:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u6947:
	decfsz	((??_main+0)+0),f
	goto	u6947
	decfsz	((??_main+0)+0+1),f
	goto	u6947
opt asmopt_on

	goto	l901
	
l902:	
	
l901:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u6221
	goto	u6220
u6221:
	goto	l901
u6220:
	goto	l5030
	
l903:	
	
l5030:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u6957:
	decfsz	((??_main+0)+0),f
	goto	u6957
	decfsz	((??_main+0)+0+1),f
	goto	u6957
opt asmopt_on

	goto	l904
	
l905:	
	
l904:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u6231
	goto	u6230
u6231:
	goto	l904
u6230:
	goto	l5032
	
l906:	
	
l5032:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u6967:
	decfsz	((??_main+0)+0),f
	goto	u6967
	decfsz	((??_main+0)+0+1),f
	goto	u6967
opt asmopt_on

	goto	l907
	
l908:	
	
l907:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u6241
	goto	u6240
u6241:
	goto	l907
u6240:
	goto	l5034
	
l909:	
	line	223
	
l5034:	
;keyboard_and_mouse_in_a_glove.c: 223: if ( counter==0 ){ KeySend('P'); prevChar='P'; counter = 10; }
	movf	((_counter+1)),w
	iorwf	((_counter)),w
	skipz
	goto	u6251
	goto	u6250
u6251:
	goto	l5042
u6250:
	
l5036:	
	movlw	(050h)
	fcall	_KeySend
	
l5038:	
	movlw	(050h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l5040:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l766
	line	224
	
l910:	
	
l5042:	
;keyboard_and_mouse_in_a_glove.c: 224: else if( prevChar=='P' ){ KeySend('^'); KeySend('Q'); prevChar='Q'; counter = 10; }
	movf	(_prevChar),w
	xorlw	050h
	skipz
	goto	u6261
	goto	u6260
u6261:
	goto	l5050
u6260:
	
l5044:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(051h)
	fcall	_KeySend
	
l5046:	
	movlw	(051h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l5048:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l766
	line	225
	
l912:	
	
l5050:	
;keyboard_and_mouse_in_a_glove.c: 225: else if( prevChar=='Q' ){ KeySend('^'); KeySend('R'); prevChar='R'; counter = 10; }
	movf	(_prevChar),w
	xorlw	051h
	skipz
	goto	u6271
	goto	u6270
u6271:
	goto	l5058
u6270:
	
l5052:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(052h)
	fcall	_KeySend
	
l5054:	
	movlw	(052h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l5056:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l766
	line	226
	
l914:	
	
l5058:	
;keyboard_and_mouse_in_a_glove.c: 226: else if( prevChar=='R' ){ KeySend('^'); KeySend('S'); prevChar='S'; counter = 10; }
	movf	(_prevChar),w
	xorlw	052h
	skipz
	goto	u6281
	goto	u6280
u6281:
	goto	l5066
u6280:
	
l5060:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(053h)
	fcall	_KeySend
	
l5062:	
	movlw	(053h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l5064:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l766
	line	227
	
l916:	
	
l5066:	
;keyboard_and_mouse_in_a_glove.c: 227: else if( prevChar=='S' ){ KeySend('^'); KeySend('7'); prevChar='7'; counter = 10; }
	movf	(_prevChar),w
	xorlw	053h
	skipz
	goto	u6291
	goto	u6290
u6291:
	goto	l5074
u6290:
	
l5068:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(037h)
	fcall	_KeySend
	
l5070:	
	movlw	(037h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l5072:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l766
	line	228
	
l918:	
	
l5074:	
;keyboard_and_mouse_in_a_glove.c: 228: else if( prevChar=='7' ){ KeySend('^'); KeySend('P'); prevChar='P'; counter = 10; }
	movf	(_prevChar),w
	xorlw	037h
	skipz
	goto	u6301
	goto	u6300
u6301:
	goto	l766
u6300:
	
l5076:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(050h)
	fcall	_KeySend
	
l5078:	
	movlw	(050h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l5080:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l766
	
l920:	
	goto	l766
	line	229
	
l919:	
	goto	l766
	
l917:	
	goto	l766
	
l915:	
	goto	l766
	
l913:	
	goto	l766
	
l911:	
;keyboard_and_mouse_in_a_glove.c: 229: }
	goto	l766
	line	231
	
l897:	
;keyboard_and_mouse_in_a_glove.c: 231: else if( RD5!=0){
	btfss	(69/8),(69)&7
	goto	u6311
	goto	u6310
u6311:
	goto	l922
u6310:
	line	232
	
l5082:	
;keyboard_and_mouse_in_a_glove.c: 232: nop=1;
	bsf	(_nop/8),(_nop)&7
	line	235
	
l5084:	
;keyboard_and_mouse_in_a_glove.c: 235: _delay((unsigned long)((50)*(4000000/4000.0))); while(RD7!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RD7!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RD7!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RD7!=0)
	opt asmopt_off
movlw	65
movwf	((??_main+0)+0+1),f
	movlw	238
movwf	((??_main+0)+0),f
u6977:
	decfsz	((??_main+0)+0),f
	goto	u6977
	decfsz	((??_main+0)+0+1),f
	goto	u6977
	clrwdt
opt asmopt_on

	goto	l923
	
l924:	
	
l923:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u6321
	goto	u6320
u6321:
	goto	l923
u6320:
	goto	l5086
	
l925:	
	
l5086:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u6987:
	decfsz	((??_main+0)+0),f
	goto	u6987
	decfsz	((??_main+0)+0+1),f
	goto	u6987
opt asmopt_on

	goto	l926
	
l927:	
	
l926:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u6331
	goto	u6330
u6331:
	goto	l926
u6330:
	goto	l5088
	
l928:	
	
l5088:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u6997:
	decfsz	((??_main+0)+0),f
	goto	u6997
	decfsz	((??_main+0)+0+1),f
	goto	u6997
opt asmopt_on

	goto	l929
	
l930:	
	
l929:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u6341
	goto	u6340
u6341:
	goto	l929
u6340:
	goto	l5090
	
l931:	
	
l5090:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u7007:
	decfsz	((??_main+0)+0),f
	goto	u7007
	decfsz	((??_main+0)+0+1),f
	goto	u7007
opt asmopt_on

	goto	l932
	
l933:	
	
l932:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u6351
	goto	u6350
u6351:
	goto	l932
u6350:
	goto	l5092
	
l934:	
	line	238
	
l5092:	
;keyboard_and_mouse_in_a_glove.c: 238: if ( counter==0 ){ KeySend('T'); prevChar='T'; counter = 10; }
	movf	((_counter+1)),w
	iorwf	((_counter)),w
	skipz
	goto	u6361
	goto	u6360
u6361:
	goto	l5100
u6360:
	
l5094:	
	movlw	(054h)
	fcall	_KeySend
	
l5096:	
	movlw	(054h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l5098:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l766
	line	239
	
l935:	
	
l5100:	
;keyboard_and_mouse_in_a_glove.c: 239: else if( prevChar=='T' ){ KeySend('^'); KeySend('U'); prevChar='U'; counter = 10; }
	movf	(_prevChar),w
	xorlw	054h
	skipz
	goto	u6371
	goto	u6370
u6371:
	goto	l5108
u6370:
	
l5102:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(055h)
	fcall	_KeySend
	
l5104:	
	movlw	(055h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l5106:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l766
	line	240
	
l937:	
	
l5108:	
;keyboard_and_mouse_in_a_glove.c: 240: else if( prevChar=='U' ){ KeySend('^'); KeySend('V'); prevChar='V'; counter = 10; }
	movf	(_prevChar),w
	xorlw	055h
	skipz
	goto	u6381
	goto	u6380
u6381:
	goto	l5116
u6380:
	
l5110:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(056h)
	fcall	_KeySend
	
l5112:	
	movlw	(056h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l5114:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l766
	line	241
	
l939:	
	
l5116:	
;keyboard_and_mouse_in_a_glove.c: 241: else if( prevChar=='V' ){ KeySend('^'); KeySend('8'); prevChar='8'; counter = 10; }
	movf	(_prevChar),w
	xorlw	056h
	skipz
	goto	u6391
	goto	u6390
u6391:
	goto	l5124
u6390:
	
l5118:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(038h)
	fcall	_KeySend
	
l5120:	
	movlw	(038h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l5122:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l766
	line	242
	
l941:	
	
l5124:	
;keyboard_and_mouse_in_a_glove.c: 242: else if( prevChar=='8' ){ KeySend('^'); KeySend('T'); prevChar='T'; counter = 10; }
	movf	(_prevChar),w
	xorlw	038h
	skipz
	goto	u6401
	goto	u6400
u6401:
	goto	l766
u6400:
	
l5126:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(054h)
	fcall	_KeySend
	
l5128:	
	movlw	(054h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l5130:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l766
	
l943:	
	goto	l766
	line	243
	
l942:	
	goto	l766
	
l940:	
	goto	l766
	
l938:	
	goto	l766
	
l936:	
;keyboard_and_mouse_in_a_glove.c: 243: }
	goto	l766
	line	245
	
l922:	
;keyboard_and_mouse_in_a_glove.c: 245: else if( RB1!=0 ){
	btfss	(49/8),(49)&7
	goto	u6411
	goto	u6410
u6411:
	goto	l945
u6410:
	line	246
	
l5132:	
;keyboard_and_mouse_in_a_glove.c: 246: nop=1;
	bsf	(_nop/8),(_nop)&7
	line	249
	
l5134:	
;keyboard_and_mouse_in_a_glove.c: 249: _delay((unsigned long)((50)*(4000000/4000.0))); while(RD7!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RD7!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RD7!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RD7!=0)
	opt asmopt_off
movlw	65
movwf	((??_main+0)+0+1),f
	movlw	238
movwf	((??_main+0)+0),f
u7017:
	decfsz	((??_main+0)+0),f
	goto	u7017
	decfsz	((??_main+0)+0+1),f
	goto	u7017
	clrwdt
opt asmopt_on

	goto	l946
	
l947:	
	
l946:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u6421
	goto	u6420
u6421:
	goto	l946
u6420:
	goto	l5136
	
l948:	
	
l5136:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u7027:
	decfsz	((??_main+0)+0),f
	goto	u7027
	decfsz	((??_main+0)+0+1),f
	goto	u7027
opt asmopt_on

	goto	l949
	
l950:	
	
l949:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u6431
	goto	u6430
u6431:
	goto	l949
u6430:
	goto	l5138
	
l951:	
	
l5138:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u7037:
	decfsz	((??_main+0)+0),f
	goto	u7037
	decfsz	((??_main+0)+0+1),f
	goto	u7037
opt asmopt_on

	goto	l952
	
l953:	
	
l952:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u6441
	goto	u6440
u6441:
	goto	l952
u6440:
	goto	l5140
	
l954:	
	
l5140:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u7047:
	decfsz	((??_main+0)+0),f
	goto	u7047
	decfsz	((??_main+0)+0+1),f
	goto	u7047
opt asmopt_on

	goto	l955
	
l956:	
	
l955:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u6451
	goto	u6450
u6451:
	goto	l955
u6450:
	goto	l5142
	
l957:	
	line	252
	
l5142:	
;keyboard_and_mouse_in_a_glove.c: 252: if ( counter==0 ){ KeySend('W'); prevChar='W'; counter = 10; }
	movf	((_counter+1)),w
	iorwf	((_counter)),w
	skipz
	goto	u6461
	goto	u6460
u6461:
	goto	l5150
u6460:
	
l5144:	
	movlw	(057h)
	fcall	_KeySend
	
l5146:	
	movlw	(057h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l5148:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l766
	line	253
	
l958:	
	
l5150:	
;keyboard_and_mouse_in_a_glove.c: 253: else if( prevChar=='W' ){ KeySend('^'); KeySend('X'); prevChar='X'; counter = 10; }
	movf	(_prevChar),w
	xorlw	057h
	skipz
	goto	u6471
	goto	u6470
u6471:
	goto	l5158
u6470:
	
l5152:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(058h)
	fcall	_KeySend
	
l5154:	
	movlw	(058h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l5156:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l766
	line	254
	
l960:	
	
l5158:	
;keyboard_and_mouse_in_a_glove.c: 254: else if( prevChar=='X' ){ KeySend('^'); KeySend('Y'); prevChar='Y'; counter = 10; }
	movf	(_prevChar),w
	xorlw	058h
	skipz
	goto	u6481
	goto	u6480
u6481:
	goto	l5166
u6480:
	
l5160:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(059h)
	fcall	_KeySend
	
l5162:	
	movlw	(059h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l5164:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l766
	line	255
	
l962:	
	
l5166:	
;keyboard_and_mouse_in_a_glove.c: 255: else if( prevChar=='Y' ){ KeySend('^'); KeySend('Z'); prevChar='Z'; counter = 10; }
	movf	(_prevChar),w
	xorlw	059h
	skipz
	goto	u6491
	goto	u6490
u6491:
	goto	l5174
u6490:
	
l5168:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(05Ah)
	fcall	_KeySend
	
l5170:	
	movlw	(05Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l5172:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l766
	line	256
	
l964:	
	
l5174:	
;keyboard_and_mouse_in_a_glove.c: 256: else if( prevChar=='Z' ){ KeySend('^'); KeySend('9'); prevChar='9'; counter = 10; }
	movf	(_prevChar),w
	xorlw	05Ah
	skipz
	goto	u6501
	goto	u6500
u6501:
	goto	l5182
u6500:
	
l5176:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(039h)
	fcall	_KeySend
	
l5178:	
	movlw	(039h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l5180:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l766
	line	257
	
l966:	
	
l5182:	
;keyboard_and_mouse_in_a_glove.c: 257: else if( prevChar=='9' ){ KeySend('^'); KeySend('W'); prevChar='W'; counter = 10; }
	movf	(_prevChar),w
	xorlw	039h
	skipz
	goto	u6511
	goto	u6510
u6511:
	goto	l766
u6510:
	
l5184:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(057h)
	fcall	_KeySend
	
l5186:	
	movlw	(057h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l5188:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l766
	
l968:	
	goto	l766
	line	258
	
l967:	
	goto	l766
	
l965:	
	goto	l766
	
l963:	
	goto	l766
	
l961:	
	goto	l766
	
l959:	
;keyboard_and_mouse_in_a_glove.c: 258: }
	goto	l766
	line	259
	
l945:	
;keyboard_and_mouse_in_a_glove.c: 259: else if( RB5!=0 ){
	btfss	(53/8),(53)&7
	goto	u6521
	goto	u6520
u6521:
	goto	l970
u6520:
	line	262
	
l5190:	
;keyboard_and_mouse_in_a_glove.c: 262: _delay((unsigned long)((50)*(4000000/4000.0))); while(RD7!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RD7!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RD7!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RD7!=0)
	opt asmopt_off
movlw	65
movwf	((??_main+0)+0+1),f
	movlw	238
movwf	((??_main+0)+0),f
u7057:
	decfsz	((??_main+0)+0),f
	goto	u7057
	decfsz	((??_main+0)+0+1),f
	goto	u7057
	clrwdt
opt asmopt_on

	goto	l971
	
l972:	
	
l971:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u6531
	goto	u6530
u6531:
	goto	l971
u6530:
	goto	l5192
	
l973:	
	
l5192:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u7067:
	decfsz	((??_main+0)+0),f
	goto	u7067
	decfsz	((??_main+0)+0+1),f
	goto	u7067
opt asmopt_on

	goto	l974
	
l975:	
	
l974:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u6541
	goto	u6540
u6541:
	goto	l974
u6540:
	goto	l5194
	
l976:	
	
l5194:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u7077:
	decfsz	((??_main+0)+0),f
	goto	u7077
	decfsz	((??_main+0)+0+1),f
	goto	u7077
opt asmopt_on

	goto	l977
	
l978:	
	
l977:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u6551
	goto	u6550
u6551:
	goto	l977
u6550:
	goto	l5196
	
l979:	
	
l5196:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u7087:
	decfsz	((??_main+0)+0),f
	goto	u7087
	decfsz	((??_main+0)+0+1),f
	goto	u7087
opt asmopt_on

	goto	l980
	
l981:	
	
l980:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u6561
	goto	u6560
u6561:
	goto	l980
u6560:
	
l982:	
	line	264
;keyboard_and_mouse_in_a_glove.c: 264: MOUSE_SELECT = 1;
	bsf	(_MOUSE_SELECT/8),(_MOUSE_SELECT)&7
	line	266
;keyboard_and_mouse_in_a_glove.c: 266: }
	goto	l766
	line	267
	
l970:	
;keyboard_and_mouse_in_a_glove.c: 267: else if( RD6!=0 ){
	btfss	(70/8),(70)&7
	goto	u6571
	goto	u6570
u6571:
	goto	l984
u6570:
	line	268
	
l5198:	
;keyboard_and_mouse_in_a_glove.c: 268: nop=1;
	bsf	(_nop/8),(_nop)&7
	line	271
	
l5200:	
;keyboard_and_mouse_in_a_glove.c: 271: _delay((unsigned long)((50)*(4000000/4000.0))); while(RD7!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RD7!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RD7!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RD7!=0)
	opt asmopt_off
movlw	65
movwf	((??_main+0)+0+1),f
	movlw	238
movwf	((??_main+0)+0),f
u7097:
	decfsz	((??_main+0)+0),f
	goto	u7097
	decfsz	((??_main+0)+0+1),f
	goto	u7097
	clrwdt
opt asmopt_on

	goto	l985
	
l986:	
	
l985:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u6581
	goto	u6580
u6581:
	goto	l985
u6580:
	goto	l5202
	
l987:	
	
l5202:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u7107:
	decfsz	((??_main+0)+0),f
	goto	u7107
	decfsz	((??_main+0)+0+1),f
	goto	u7107
opt asmopt_on

	goto	l988
	
l989:	
	
l988:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u6591
	goto	u6590
u6591:
	goto	l988
u6590:
	goto	l5204
	
l990:	
	
l5204:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u7117:
	decfsz	((??_main+0)+0),f
	goto	u7117
	decfsz	((??_main+0)+0+1),f
	goto	u7117
opt asmopt_on

	goto	l991
	
l992:	
	
l991:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u6601
	goto	u6600
u6601:
	goto	l991
u6600:
	goto	l5206
	
l993:	
	
l5206:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u7127:
	decfsz	((??_main+0)+0),f
	goto	u7127
	decfsz	((??_main+0)+0+1),f
	goto	u7127
opt asmopt_on

	goto	l994
	
l995:	
	
l994:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u6611
	goto	u6610
u6611:
	goto	l994
u6610:
	goto	l5208
	
l996:	
	line	274
	
l5208:	
;keyboard_and_mouse_in_a_glove.c: 274: if ( counter==0 ){ KeySend('0'); prevChar='0'; counter = 10; }
	movf	((_counter+1)),w
	iorwf	((_counter)),w
	skipz
	goto	u6621
	goto	u6620
u6621:
	goto	l766
u6620:
	
l5210:	
	movlw	(030h)
	fcall	_KeySend
	
l5212:	
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l5214:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l766
	
l997:	
	line	275
;keyboard_and_mouse_in_a_glove.c: 275: }
	goto	l766
	line	276
	
l984:	
;keyboard_and_mouse_in_a_glove.c: 276: else if( RB5!=0 ){
	goto	l766
	line	278
	
l999:	
	goto	l766
	line	279
	
l998:	
	goto	l766
	
l983:	
	goto	l766
	
l969:	
	goto	l766
	
l944:	
	goto	l766
	
l921:	
	goto	l766
	
l896:	
	goto	l766
	
l873:	
	goto	l766
	
l850:	
	goto	l766
	
l827:	
	goto	l766
	
l804:	
	goto	l766
	
l781:	
	
l766:	
	line	280
;keyboard_and_mouse_in_a_glove.c: 278: }
;keyboard_and_mouse_in_a_glove.c: 279: }
;keyboard_and_mouse_in_a_glove.c: 280: nop=1;
	bsf	(_nop/8),(_nop)&7
	goto	l4716
	line	281
	
l1000:	
	line	91
	goto	l4716
	
l1001:	
	line	282
	
l1002:	
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
;;		line 405 in file "F:\ELECTRONIC\2015\Projects\40. Mouse with keyboard\PGM\Keyboard and Mouse in a glove\ver1\keyboard_and_mouse_in_a_glove.c"
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
	file	"F:\ELECTRONIC\2015\Projects\40. Mouse with keyboard\PGM\Keyboard and Mouse in a glove\ver1\keyboard_and_mouse_in_a_glove.c"
	line	405
	global	__size_of_a2d_read
	__size_of_a2d_read	equ	__end_of_a2d_read-_a2d_read
	
_a2d_read:	
	opt	stack 5
; Regs used in _a2d_read: [wreg+status,2+status,0+pclath+cstack]
	line	406
	
l4646:	
;keyboard_and_mouse_in_a_glove.c: 406: read_a2d_value(0);
	movlw	(0)
	fcall	_read_a2d_value
	line	407
;keyboard_and_mouse_in_a_glove.c: 407: vblAccX = read_a2d_value(0);
	movlw	(0)
	fcall	_read_a2d_value
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_read_a2d_value)),w
	movwf	(_vblAccX)
	movf	(1+(?_read_a2d_value)),w
	movwf	(_vblAccX+1)
	clrf	(_vblAccX+2)
	line	408
;keyboard_and_mouse_in_a_glove.c: 408: read_a2d_value(1);
	movlw	(01h)
	fcall	_read_a2d_value
	line	409
;keyboard_and_mouse_in_a_glove.c: 409: vblAccY = read_a2d_value(1);
	movlw	(01h)
	fcall	_read_a2d_value
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_read_a2d_value)),w
	movwf	(_vblAccY)
	movf	(1+(?_read_a2d_value)),w
	movwf	(_vblAccY+1)
	clrf	(_vblAccY+2)
	line	411
	
l4648:	
;keyboard_and_mouse_in_a_glove.c: 411: if(vblAccX > 402) vblAccX = 402;
	movlw	0
	subwf	(_vblAccX+2),w
	skipz
	goto	u5425
	movlw	01h
	subwf	(_vblAccX+1),w
	skipz
	goto	u5425
	movlw	093h
	subwf	(_vblAccX),w
u5425:
	skipc
	goto	u5421
	goto	u5420
u5421:
	goto	l4652
u5420:
	
l4650:	
	movlw	092h
	movwf	(_vblAccX)
	movlw	01h
	movwf	(_vblAccX+1)
	movlw	0
	movwf	(_vblAccX+2)
	goto	l1102
	line	412
	
l1101:	
	
l4652:	
;keyboard_and_mouse_in_a_glove.c: 412: else if ( vblAccX < 262) vblAccX = 262;
	movlw	0
	subwf	(_vblAccX+2),w
	skipz
	goto	u5435
	movlw	01h
	subwf	(_vblAccX+1),w
	skipz
	goto	u5435
	movlw	06h
	subwf	(_vblAccX),w
u5435:
	skipnc
	goto	u5431
	goto	u5430
u5431:
	goto	l1102
u5430:
	
l4654:	
	movlw	06h
	movwf	(_vblAccX)
	movlw	01h
	movwf	(_vblAccX+1)
	movlw	0
	movwf	(_vblAccX+2)
	goto	l1102
	
l1103:	
	line	413
	
l1102:	
;keyboard_and_mouse_in_a_glove.c: 413: if(vblAccY > 406) vblAccY = 406;
	movlw	0
	subwf	(_vblAccY+2),w
	skipz
	goto	u5445
	movlw	01h
	subwf	(_vblAccY+1),w
	skipz
	goto	u5445
	movlw	097h
	subwf	(_vblAccY),w
u5445:
	skipc
	goto	u5441
	goto	u5440
u5441:
	goto	l4658
u5440:
	
l4656:	
	movlw	096h
	movwf	(_vblAccY)
	movlw	01h
	movwf	(_vblAccY+1)
	movlw	0
	movwf	(_vblAccY+2)
	goto	l1107
	line	414
	
l1104:	
	
l4658:	
;keyboard_and_mouse_in_a_glove.c: 414: else if ( vblAccY < 266) vblAccY = 266;
	movlw	0
	subwf	(_vblAccY+2),w
	skipz
	goto	u5455
	movlw	01h
	subwf	(_vblAccY+1),w
	skipz
	goto	u5455
	movlw	0Ah
	subwf	(_vblAccY),w
u5455:
	skipnc
	goto	u5451
	goto	u5450
u5451:
	goto	l1107
u5450:
	
l4660:	
	movlw	0Ah
	movwf	(_vblAccY)
	movlw	01h
	movwf	(_vblAccY+1)
	movlw	0
	movwf	(_vblAccY+2)
	goto	l1107
	
l1106:	
	goto	l1107
	line	415
	
l1105:	
	
l1107:	
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
;;		line 419 in file "F:\ELECTRONIC\2015\Projects\40. Mouse with keyboard\PGM\Keyboard and Mouse in a glove\ver1\keyboard_and_mouse_in_a_glove.c"
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
	file	"F:\ELECTRONIC\2015\Projects\40. Mouse with keyboard\PGM\Keyboard and Mouse in a glove\ver1\keyboard_and_mouse_in_a_glove.c"
	line	419
	global	__size_of_read_a2d_value
	__size_of_read_a2d_value	equ	__end_of_read_a2d_value-_read_a2d_value
	
_read_a2d_value:	
	opt	stack 5
; Regs used in _read_a2d_value: [wreg+status,2+status,0]
;read_a2d_value@channel stored from wreg
	line	421
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(read_a2d_value@channel)
	
l4628:	
;keyboard_and_mouse_in_a_glove.c: 420: unsigned int a2d_value;
;keyboard_and_mouse_in_a_glove.c: 421: channel = channel << 3;
	movf	(read_a2d_value@channel),w
	movwf	(??_read_a2d_value+0)+0
	movlw	(03h)-1
u5405:
	clrc
	rlf	(??_read_a2d_value+0)+0,f
	addlw	-1
	skipz
	goto	u5405
	clrc
	rlf	(??_read_a2d_value+0)+0,w
	movwf	(??_read_a2d_value+1)+0
	movf	(??_read_a2d_value+1)+0,w
	movwf	(read_a2d_value@channel)
	line	422
	
l4630:	
;keyboard_and_mouse_in_a_glove.c: 422: ADCON0 = ADCON0 & 0b11000111;
	movf	(31),w
	andlw	0C7h
	movwf	(31)	;volatile
	line	423
	
l4632:	
;keyboard_and_mouse_in_a_glove.c: 423: ADCON0 = ADCON0 | channel;
	movf	(31),w	;volatile
	iorwf	(read_a2d_value@channel),w
	movwf	(31)	;volatile
	line	424
	
l4634:	
;keyboard_and_mouse_in_a_glove.c: 424: ADON = 1;
	bsf	(248/8),(248)&7
	line	425
	
l4636:	
;keyboard_and_mouse_in_a_glove.c: 425: _delay(50);
	opt asmopt_off
movlw	16
movwf	(??_read_a2d_value+0)+0,f
u7137:
decfsz	(??_read_a2d_value+0)+0,f
	goto	u7137
	clrwdt
opt asmopt_on

	line	426
	
l4638:	
;keyboard_and_mouse_in_a_glove.c: 426: GO = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(250/8),(250)&7
	line	427
;keyboard_and_mouse_in_a_glove.c: 427: while( GO == 1 );
	goto	l1110
	
l1111:	
	
l1110:	
	btfsc	(250/8),(250)&7
	goto	u5411
	goto	u5410
u5411:
	goto	l1110
u5410:
	goto	l4640
	
l1112:	
	line	431
	
l4640:	
;keyboard_and_mouse_in_a_glove.c: 428: {
;keyboard_and_mouse_in_a_glove.c: 430: }
;keyboard_and_mouse_in_a_glove.c: 431: a2d_value = ADRESH;
	movf	(30),w	;volatile
	movwf	(??_read_a2d_value+0)+0
	clrf	(??_read_a2d_value+0)+0+1
	movf	0+(??_read_a2d_value+0)+0,w
	movwf	(read_a2d_value@a2d_value)
	movf	1+(??_read_a2d_value+0)+0,w
	movwf	(read_a2d_value@a2d_value+1)
	line	432
;keyboard_and_mouse_in_a_glove.c: 432: a2d_value = a2d_value << 8;
	movf	(read_a2d_value@a2d_value),w
	movwf	(??_read_a2d_value+0)+0+1
	clrf	(??_read_a2d_value+0)+0
	movf	0+(??_read_a2d_value+0)+0,w
	movwf	(read_a2d_value@a2d_value)
	movf	1+(??_read_a2d_value+0)+0,w
	movwf	(read_a2d_value@a2d_value+1)
	line	433
;keyboard_and_mouse_in_a_glove.c: 433: a2d_value = a2d_value + ADRESL;
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
	line	434
	
l4642:	
;keyboard_and_mouse_in_a_glove.c: 434: return a2d_value;
	movf	(read_a2d_value@a2d_value+1),w
	clrf	(?_read_a2d_value+1)
	addwf	(?_read_a2d_value+1)
	movf	(read_a2d_value@a2d_value),w
	clrf	(?_read_a2d_value)
	addwf	(?_read_a2d_value)

	goto	l1113
	
l4644:	
	line	435
	
l1113:	
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
	
l4608:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ltmod@divisor+2),w
	iorwf	(___ltmod@divisor+1),w
	iorwf	(___ltmod@divisor),w
	skipnz
	goto	u5341
	goto	u5340
u5341:
	goto	l4624
u5340:
	line	9
	
l4610:	
	clrf	(___ltmod@counter)
	bsf	status,0
	rlf	(___ltmod@counter),f
	line	10
	goto	l4614
	
l2114:	
	line	11
	
l4612:	
	movlw	01h
u5355:
	clrc
	rlf	(___ltmod@divisor),f
	rlf	(___ltmod@divisor+1),f
	rlf	(___ltmod@divisor+2),f
	addlw	-1
	skipz
	goto	u5355
	line	12
	movlw	(01h)
	movwf	(??___ltmod+0)+0
	movf	(??___ltmod+0)+0,w
	addwf	(___ltmod@counter),f
	goto	l4614
	line	13
	
l2113:	
	line	10
	
l4614:	
	btfss	(___ltmod@divisor+2),(23)&7
	goto	u5361
	goto	u5360
u5361:
	goto	l4612
u5360:
	goto	l4616
	
l2115:	
	goto	l4616
	line	14
	
l2116:	
	line	15
	
l4616:	
	movf	(___ltmod@divisor+2),w
	subwf	(___ltmod@dividend+2),w
	skipz
	goto	u5375
	movf	(___ltmod@divisor+1),w
	subwf	(___ltmod@dividend+1),w
	skipz
	goto	u5375
	movf	(___ltmod@divisor),w
	subwf	(___ltmod@dividend),w
u5375:
	skipc
	goto	u5371
	goto	u5370
u5371:
	goto	l4620
u5370:
	line	16
	
l4618:	
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
	goto	l4620
	
l2117:	
	line	17
	
l4620:	
	movlw	01h
u5385:
	clrc
	rrf	(___ltmod@divisor+2),f
	rrf	(___ltmod@divisor+1),f
	rrf	(___ltmod@divisor),f
	addlw	-1
	skipz
	goto	u5385

	line	18
	
l4622:	
	movlw	low(01h)
	subwf	(___ltmod@counter),f
	btfss	status,2
	goto	u5391
	goto	u5390
u5391:
	goto	l4616
u5390:
	goto	l4624
	
l2118:	
	goto	l4624
	line	19
	
l2112:	
	line	20
	
l4624:	
	movf	(___ltmod@dividend),w
	movwf	(?___ltmod)
	movf	(___ltmod@dividend+1),w
	movwf	(?___ltmod+1)
	movf	(___ltmod@dividend+2),w
	movwf	(?___ltmod+2)
	goto	l2119
	
l4626:	
	line	21
	
l2119:	
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
	
l4584:	
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
	goto	u5271
	goto	u5270
u5271:
	goto	l4604
u5270:
	line	11
	
l4586:	
	clrf	(___ltdiv@counter)
	bsf	status,0
	rlf	(___ltdiv@counter),f
	line	12
	goto	l4590
	
l2104:	
	line	13
	
l4588:	
	movlw	01h
u5285:
	clrc
	rlf	(___ltdiv@divisor),f
	rlf	(___ltdiv@divisor+1),f
	rlf	(___ltdiv@divisor+2),f
	addlw	-1
	skipz
	goto	u5285
	line	14
	movlw	(01h)
	movwf	(??___ltdiv+0)+0
	movf	(??___ltdiv+0)+0,w
	addwf	(___ltdiv@counter),f
	goto	l4590
	line	15
	
l2103:	
	line	12
	
l4590:	
	btfss	(___ltdiv@divisor+2),(23)&7
	goto	u5291
	goto	u5290
u5291:
	goto	l4588
u5290:
	goto	l4592
	
l2105:	
	goto	l4592
	line	16
	
l2106:	
	line	17
	
l4592:	
	movlw	01h
u5305:
	clrc
	rlf	(___ltdiv@quotient),f
	rlf	(___ltdiv@quotient+1),f
	rlf	(___ltdiv@quotient+2),f
	addlw	-1
	skipz
	goto	u5305
	line	18
	
l4594:	
	movf	(___ltdiv@divisor+2),w
	subwf	(___ltdiv@dividend+2),w
	skipz
	goto	u5315
	movf	(___ltdiv@divisor+1),w
	subwf	(___ltdiv@dividend+1),w
	skipz
	goto	u5315
	movf	(___ltdiv@divisor),w
	subwf	(___ltdiv@dividend),w
u5315:
	skipc
	goto	u5311
	goto	u5310
u5311:
	goto	l4600
u5310:
	line	19
	
l4596:	
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
	
l4598:	
	bsf	(___ltdiv@quotient)+(0/8),(0)&7
	goto	l4600
	line	21
	
l2107:	
	line	22
	
l4600:	
	movlw	01h
u5325:
	clrc
	rrf	(___ltdiv@divisor+2),f
	rrf	(___ltdiv@divisor+1),f
	rrf	(___ltdiv@divisor),f
	addlw	-1
	skipz
	goto	u5325

	line	23
	
l4602:	
	movlw	low(01h)
	subwf	(___ltdiv@counter),f
	btfss	status,2
	goto	u5331
	goto	u5330
u5331:
	goto	l4592
u5330:
	goto	l4604
	
l2108:	
	goto	l4604
	line	24
	
l2102:	
	line	25
	
l4604:	
	movf	(___ltdiv@quotient),w
	movwf	(?___ltdiv)
	movf	(___ltdiv@quotient+1),w
	movwf	(?___ltdiv+1)
	movf	(___ltdiv@quotient+2),w
	movwf	(?___ltdiv+2)
	goto	l2109
	
l4606:	
	line	26
	
l2109:	
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
;;		line 390 in file "F:\ELECTRONIC\2015\Projects\40. Mouse with keyboard\PGM\Keyboard and Mouse in a glove\ver1\keyboard_and_mouse_in_a_glove.c"
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
	file	"F:\ELECTRONIC\2015\Projects\40. Mouse with keyboard\PGM\Keyboard and Mouse in a glove\ver1\keyboard_and_mouse_in_a_glove.c"
	line	390
	global	__size_of_KeySend
	__size_of_KeySend	equ	__end_of_KeySend-_KeySend
	
_KeySend:	
	opt	stack 6
; Regs used in _KeySend: [wreg]
;KeySend@key stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(KeySend@key)
	line	391
	
l4570:	
;keyboard_and_mouse_in_a_glove.c: 391: while(!TXIF);
	goto	l1080
	
l1081:	
	
l1080:	
	btfss	(100/8),(100)&7
	goto	u5211
	goto	u5210
u5211:
	goto	l1080
u5210:
	goto	l4572
	
l1082:	
	line	392
	
l4572:	
;keyboard_and_mouse_in_a_glove.c: 392: TXREG = '%';
	movlw	(025h)
	movwf	(25)	;volatile
	line	393
;keyboard_and_mouse_in_a_glove.c: 393: while(!TXIF);
	goto	l1083
	
l1084:	
	
l1083:	
	btfss	(100/8),(100)&7
	goto	u5221
	goto	u5220
u5221:
	goto	l1083
u5220:
	goto	l4574
	
l1085:	
	line	394
	
l4574:	
;keyboard_and_mouse_in_a_glove.c: 394: TXREG = 'K';
	movlw	(04Bh)
	movwf	(25)	;volatile
	line	395
;keyboard_and_mouse_in_a_glove.c: 395: while(!TXIF);
	goto	l1086
	
l1087:	
	
l1086:	
	btfss	(100/8),(100)&7
	goto	u5231
	goto	u5230
u5231:
	goto	l1086
u5230:
	goto	l4576
	
l1088:	
	line	396
	
l4576:	
;keyboard_and_mouse_in_a_glove.c: 396: TXREG = key;
	movf	(KeySend@key),w
	movwf	(25)	;volatile
	line	397
;keyboard_and_mouse_in_a_glove.c: 397: while(!TXIF);
	goto	l1089
	
l1090:	
	
l1089:	
	btfss	(100/8),(100)&7
	goto	u5241
	goto	u5240
u5241:
	goto	l1089
u5240:
	goto	l4578
	
l1091:	
	line	398
	
l4578:	
;keyboard_and_mouse_in_a_glove.c: 398: TXREG = ' ';
	movlw	(020h)
	movwf	(25)	;volatile
	line	399
;keyboard_and_mouse_in_a_glove.c: 399: while(!TXIF);
	goto	l1092
	
l1093:	
	
l1092:	
	btfss	(100/8),(100)&7
	goto	u5251
	goto	u5250
u5251:
	goto	l1092
u5250:
	goto	l4580
	
l1094:	
	line	400
	
l4580:	
;keyboard_and_mouse_in_a_glove.c: 400: TXREG = ' ';
	movlw	(020h)
	movwf	(25)	;volatile
	line	401
;keyboard_and_mouse_in_a_glove.c: 401: while(!TXIF);
	goto	l1095
	
l1096:	
	
l1095:	
	btfss	(100/8),(100)&7
	goto	u5261
	goto	u5260
u5261:
	goto	l1095
u5260:
	goto	l4582
	
l1097:	
	line	402
	
l4582:	
;keyboard_and_mouse_in_a_glove.c: 402: TXREG = '?';
	movlw	(03Fh)
	movwf	(25)	;volatile
	line	403
	
l1098:	
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
;;		line 317 in file "F:\ELECTRONIC\2015\Projects\40. Mouse with keyboard\PGM\Keyboard and Mouse in a glove\ver1\keyboard_and_mouse_in_a_glove.c"
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
	file	"F:\ELECTRONIC\2015\Projects\40. Mouse with keyboard\PGM\Keyboard and Mouse in a glove\ver1\keyboard_and_mouse_in_a_glove.c"
	line	317
	global	__size_of_InterruptEn
	__size_of_InterruptEn	equ	__end_of_InterruptEn-_InterruptEn
	
_InterruptEn:	
	opt	stack 6
; Regs used in _InterruptEn: []
	line	319
	
l4568:	
;keyboard_and_mouse_in_a_glove.c: 319: RBIE = 0;
	bcf	(91/8),(91)&7
	line	320
;keyboard_and_mouse_in_a_glove.c: 320: INTE = 0;
	bcf	(92/8),(92)&7
	line	322
;keyboard_and_mouse_in_a_glove.c: 322: PSPIE = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1127/8)^080h,(1127)&7
	line	323
;keyboard_and_mouse_in_a_glove.c: 323: ADIE = 0;
	bcf	(1126/8)^080h,(1126)&7
	line	325
;keyboard_and_mouse_in_a_glove.c: 325: TXIE = 0;
	bcf	(1124/8)^080h,(1124)&7
	line	326
;keyboard_and_mouse_in_a_glove.c: 326: RCIE = 0;
	bcf	(1125/8)^080h,(1125)&7
	line	328
;keyboard_and_mouse_in_a_glove.c: 328: SSPIE = 0;
	bcf	(1123/8)^080h,(1123)&7
	line	329
;keyboard_and_mouse_in_a_glove.c: 329: CCP1IE = 0;
	bcf	(1122/8)^080h,(1122)&7
	line	331
;keyboard_and_mouse_in_a_glove.c: 331: TMR1IE = 1;
	bsf	(1120/8)^080h,(1120)&7
	line	332
;keyboard_and_mouse_in_a_glove.c: 332: TMR2IE = 0;
	bcf	(1121/8)^080h,(1121)&7
	line	333
;keyboard_and_mouse_in_a_glove.c: 333: T0IE = 0;
	bcf	(93/8),(93)&7
	line	335
;keyboard_and_mouse_in_a_glove.c: 335: EEIE = 0;
	bcf	(1132/8)^080h,(1132)&7
	line	336
;keyboard_and_mouse_in_a_glove.c: 336: BCLIE = 0;
	bcf	(1131/8)^080h,(1131)&7
	line	337
;keyboard_and_mouse_in_a_glove.c: 337: CCP2IE = 0;
	bcf	(1128/8)^080h,(1128)&7
	line	340
;keyboard_and_mouse_in_a_glove.c: 340: GIE = 1;
	bsf	(95/8),(95)&7
	line	341
;keyboard_and_mouse_in_a_glove.c: 341: PEIE = 1;
	bsf	(94/8),(94)&7
	line	343
	
l1014:	
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
;;		line 285 in file "F:\ELECTRONIC\2015\Projects\40. Mouse with keyboard\PGM\Keyboard and Mouse in a glove\ver1\keyboard_and_mouse_in_a_glove.c"
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
	file	"F:\ELECTRONIC\2015\Projects\40. Mouse with keyboard\PGM\Keyboard and Mouse in a glove\ver1\keyboard_and_mouse_in_a_glove.c"
	line	285
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
	line	287
	
i1l3882:	
;keyboard_and_mouse_in_a_glove.c: 287: if(TMR1IF==1){
	btfss	(96/8),(96)&7
	goto	u380_21
	goto	u380_20
u380_21:
	goto	i1l1011
u380_20:
	line	292
	
i1l3884:	
;keyboard_and_mouse_in_a_glove.c: 292: if( counter>0 ) counter--;
	movf	(_counter+1),w
	iorwf	(_counter),w
	skipnz
	goto	u381_21
	goto	u381_20
u381_21:
	goto	i1l3888
u381_20:
	
i1l3886:	
	movlw	low(01h)
	subwf	(_counter),f
	movlw	high(01h)
	skipc
	decf	(_counter+1),f
	subwf	(_counter+1),f
	goto	i1l3888
	
i1l1006:	
	line	293
	
i1l3888:	
;keyboard_and_mouse_in_a_glove.c: 293: msecond ++;
	movlw	(01h)
	movwf	(??_isr+0)+0
	movf	(??_isr+0)+0,w
	addwf	(_msecond),f
	line	294
	
i1l3890:	
;keyboard_and_mouse_in_a_glove.c: 294: if(msecond == 10)
	movf	(_msecond),w
	xorlw	0Ah
	skipz
	goto	u382_21
	goto	u382_20
u382_21:
	goto	i1l3912
u382_20:
	line	296
	
i1l3892:	
;keyboard_and_mouse_in_a_glove.c: 295: {
;keyboard_and_mouse_in_a_glove.c: 296: second ++;
	movlw	(01h)
	movwf	(??_isr+0)+0
	movf	(??_isr+0)+0,w
	addwf	(_second),f
	line	297
	
i1l3894:	
;keyboard_and_mouse_in_a_glove.c: 297: msecond = 0;
	clrf	(_msecond)
	line	298
	
i1l3896:	
;keyboard_and_mouse_in_a_glove.c: 298: RC0 = !RC0;
	movlw	1<<((56)&7)
	xorwf	((56)/8),f
	line	299
	
i1l3898:	
;keyboard_and_mouse_in_a_glove.c: 299: if( second == 60)
	movf	(_second),w
	xorlw	03Ch
	skipz
	goto	u383_21
	goto	u383_20
u383_21:
	goto	i1l3912
u383_20:
	line	301
	
i1l3900:	
;keyboard_and_mouse_in_a_glove.c: 300: {
;keyboard_and_mouse_in_a_glove.c: 301: minute ++;
	movlw	(01h)
	movwf	(??_isr+0)+0
	movf	(??_isr+0)+0,w
	addwf	(_minute),f
	line	302
	
i1l3902:	
;keyboard_and_mouse_in_a_glove.c: 302: second = 0;
	clrf	(_second)
	line	303
	
i1l3904:	
;keyboard_and_mouse_in_a_glove.c: 303: if( minute == 60)
	movf	(_minute),w
	xorlw	03Ch
	skipz
	goto	u384_21
	goto	u384_20
u384_21:
	goto	i1l3912
u384_20:
	line	305
	
i1l3906:	
;keyboard_and_mouse_in_a_glove.c: 304: {
;keyboard_and_mouse_in_a_glove.c: 305: minute = 0;
	clrf	(_minute)
	line	306
	
i1l3908:	
;keyboard_and_mouse_in_a_glove.c: 306: hour ++;
	movlw	(01h)
	movwf	(??_isr+0)+0
	movf	(??_isr+0)+0,w
	addwf	(_hour),f
	goto	i1l3912
	line	307
	
i1l3910:	
	goto	i1l3912
	
i1l1010:	
	goto	i1l3912
	line	308
	
i1l1009:	
	goto	i1l3912
	line	309
	
i1l1008:	
	goto	i1l3912
	line	310
	
i1l1007:	
	line	311
	
i1l3912:	
;keyboard_and_mouse_in_a_glove.c: 308: }
;keyboard_and_mouse_in_a_glove.c: 309: }
;keyboard_and_mouse_in_a_glove.c: 310: }
;keyboard_and_mouse_in_a_glove.c: 311: TMR1L = 176;
	movlw	(0B0h)
	movwf	(14)	;volatile
	line	312
;keyboard_and_mouse_in_a_glove.c: 312: TMR1H = 60;
	movlw	(03Ch)
	movwf	(15)	;volatile
	line	313
	
i1l3914:	
;keyboard_and_mouse_in_a_glove.c: 313: TMR1IF = 0;
	bcf	(96/8),(96)&7
	goto	i1l1011
	line	314
	
i1l1005:	
	line	315
	
i1l1011:	
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
