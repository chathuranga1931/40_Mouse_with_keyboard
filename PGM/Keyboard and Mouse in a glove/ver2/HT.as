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
	global	_main$1975
_main$1975:	; 3 bytes @ 0x16
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
;;		line 42 in file "F:\ELECTRONIC\2015\Projects\40. Mouse with keyboard\PGM\Keyboard and Mouse in a glove\ver2\keyboard_and_mouse_in_a_glove.c"
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
	file	"F:\ELECTRONIC\2015\Projects\40. Mouse with keyboard\PGM\Keyboard and Mouse in a glove\ver2\keyboard_and_mouse_in_a_glove.c"
	line	42
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	44
	
l4959:	
;keyboard_and_mouse_in_a_glove.c: 44: TRISA = 0b11111111;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	47
;keyboard_and_mouse_in_a_glove.c: 47: TRISB = 0b11111111;
	movlw	(0FFh)
	movwf	(134)^080h	;volatile
	line	50
;keyboard_and_mouse_in_a_glove.c: 50: TRISC = 0b10111110;
	movlw	(0BEh)
	movwf	(135)^080h	;volatile
	line	51
;keyboard_and_mouse_in_a_glove.c: 51: PORTC = 0b00000010;
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	53
;keyboard_and_mouse_in_a_glove.c: 53: TRISD = 0b11111111;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	line	55
	
l4961:	
;keyboard_and_mouse_in_a_glove.c: 55: TRISE = 0b00000000;
	clrf	(137)^080h	;volatile
	line	57
	
l4963:	
;keyboard_and_mouse_in_a_glove.c: 57: ADCON0 = 0b01000000;
	movlw	(040h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	58
	
l4965:	
;keyboard_and_mouse_in_a_glove.c: 58: ADCON1 = 0b10000100;
	movlw	(084h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	61
	
l4967:	
;keyboard_and_mouse_in_a_glove.c: 61: SPBRG = 25;
	movlw	(019h)
	movwf	(153)^080h	;volatile
	line	62
	
l4969:	
;keyboard_and_mouse_in_a_glove.c: 62: SPEN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(199/8),(199)&7
	line	63
	
l4971:	
;keyboard_and_mouse_in_a_glove.c: 63: RX9 = 0;
	bcf	(198/8),(198)&7
	line	64
	
l4973:	
;keyboard_and_mouse_in_a_glove.c: 64: CREN = 1;
	bsf	(196/8),(196)&7
	line	65
	
l4975:	
;keyboard_and_mouse_in_a_glove.c: 65: TX9 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1222/8)^080h,(1222)&7
	line	66
	
l4977:	
;keyboard_and_mouse_in_a_glove.c: 66: TXEN = 1;
	bsf	(1221/8)^080h,(1221)&7
	line	67
	
l4979:	
;keyboard_and_mouse_in_a_glove.c: 67: SYNC = 0;
	bcf	(1220/8)^080h,(1220)&7
	line	68
	
l4981:	
;keyboard_and_mouse_in_a_glove.c: 68: BRGH = 1;
	bsf	(1218/8)^080h,(1218)&7
	line	69
	
l4983:	
;keyboard_and_mouse_in_a_glove.c: 69: SPBRG = 25;
	movlw	(019h)
	movwf	(153)^080h	;volatile
	line	70
	
l4985:	
;keyboard_and_mouse_in_a_glove.c: 70: RCIE = 1;
	bsf	(1125/8)^080h,(1125)&7
	line	71
	
l4987:	
;keyboard_and_mouse_in_a_glove.c: 71: TXIE = 0;
	bcf	(1124/8)^080h,(1124)&7
	line	72
	
l4989:	
;keyboard_and_mouse_in_a_glove.c: 72: _delay((unsigned long)((500)*(4000000/4000.0)));
	opt asmopt_off
movlw  3
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	138
movwf	((??_main+0)+0+1),f
	movlw	86
movwf	((??_main+0)+0),f
u7357:
	decfsz	((??_main+0)+0),f
	goto	u7357
	decfsz	((??_main+0)+0+1),f
	goto	u7357
	decfsz	((??_main+0)+0+2),f
	goto	u7357
	nop2
opt asmopt_on

	line	75
	
l4991:	
;keyboard_and_mouse_in_a_glove.c: 75: T1CKPS1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(133/8),(133)&7
	line	76
	
l4993:	
;keyboard_and_mouse_in_a_glove.c: 76: T1CKPS0 = 1;
	bsf	(132/8),(132)&7
	line	77
	
l4995:	
;keyboard_and_mouse_in_a_glove.c: 77: TMR1CS = 0;
	bcf	(129/8),(129)&7
	line	78
	
l4997:	
;keyboard_and_mouse_in_a_glove.c: 78: TMR1ON = 1;
	bsf	(128/8),(128)&7
	line	79
	
l4999:	
;keyboard_and_mouse_in_a_glove.c: 79: T1OSCEN = 0;
	bcf	(131/8),(131)&7
	line	80
	
l5001:	
;keyboard_and_mouse_in_a_glove.c: 80: TMR1L = 0xB0;
	movlw	(0B0h)
	movwf	(14)	;volatile
	line	81
	
l5003:	
;keyboard_and_mouse_in_a_glove.c: 81: TMR1H = 60;
	movlw	(03Ch)
	movwf	(15)	;volatile
	line	82
	
l5005:	
;keyboard_and_mouse_in_a_glove.c: 82: TMR1IE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1120/8)^080h,(1120)&7
	line	85
	
l5007:	
;keyboard_and_mouse_in_a_glove.c: 85: OPTION_REG =0b01111111 & OPTION_REG;
	movf	(129)^080h,w
	andlw	07Fh
	movwf	(129)^080h	;volatile
	line	88
	
l5009:	
;keyboard_and_mouse_in_a_glove.c: 88: InterruptEn();
	fcall	_InterruptEn
	line	91
	
l5011:	
;keyboard_and_mouse_in_a_glove.c: 91: MOUSE_SELECT = 0;
	bcf	(_MOUSE_SELECT/8),(_MOUSE_SELECT)&7
	goto	l5013
	line	93
;keyboard_and_mouse_in_a_glove.c: 93: while(1){
	
l719:	
	line	94
	
l5013:	
;keyboard_and_mouse_in_a_glove.c: 94: nop=1;
	bsf	(_nop/8),(_nop)&7
	line	95
	
l5015:	
;keyboard_and_mouse_in_a_glove.c: 95: if (MOUSE_SELECT == 1){
	btfss	(_MOUSE_SELECT/8),(_MOUSE_SELECT)&7
	goto	u6021
	goto	u6020
u6021:
	goto	l720
u6020:
	line	97
	
l5017:	
;keyboard_and_mouse_in_a_glove.c: 97: a2d_read();
	fcall	_a2d_read
	line	99
;keyboard_and_mouse_in_a_glove.c: 99: while(!TXIF);
	goto	l721
	
l722:	
	
l721:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7
	goto	u6031
	goto	u6030
u6031:
	goto	l721
u6030:
	goto	l5019
	
l723:	
	line	100
	
l5019:	
;keyboard_and_mouse_in_a_glove.c: 100: TXREG = '%';
	movlw	(025h)
	movwf	(25)	;volatile
	line	101
;keyboard_and_mouse_in_a_glove.c: 101: while(!TXIF);
	goto	l724
	
l725:	
	
l724:	
	btfss	(100/8),(100)&7
	goto	u6041
	goto	u6040
u6041:
	goto	l724
u6040:
	goto	l5021
	
l726:	
	line	102
	
l5021:	
;keyboard_and_mouse_in_a_glove.c: 102: TXREG = 'X';
	movlw	(058h)
	movwf	(25)	;volatile
	line	103
;keyboard_and_mouse_in_a_glove.c: 103: while(!TXIF);
	goto	l727
	
l728:	
	
l727:	
	btfss	(100/8),(100)&7
	goto	u6051
	goto	u6050
u6051:
	goto	l727
u6050:
	goto	l5023
	
l729:	
	line	104
	
l5023:	
;keyboard_and_mouse_in_a_glove.c: 104: TXREG = vblAccX/100 + 48;
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
	line	105
;keyboard_and_mouse_in_a_glove.c: 105: while(!TXIF);
	goto	l730
	
l731:	
	
l730:	
	btfss	(100/8),(100)&7
	goto	u6061
	goto	u6060
u6061:
	goto	l730
u6060:
	goto	l5025
	
l732:	
	line	106
	
l5025:	
;keyboard_and_mouse_in_a_glove.c: 106: TXREG = vblAccX%100/10 + 48;
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
	line	107
;keyboard_and_mouse_in_a_glove.c: 107: while(!TXIF);
	goto	l733
	
l734:	
	
l733:	
	btfss	(100/8),(100)&7
	goto	u6071
	goto	u6070
u6071:
	goto	l733
u6070:
	goto	l5027
	
l735:	
	line	108
	
l5027:	
;keyboard_and_mouse_in_a_glove.c: 108: TXREG = vblAccX%100%10 + 48;
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
	movwf	(_main$1975)
	movf	(1+(?___ltmod)),w
	movwf	(_main$1975+1)
	movf	(2+(?___ltmod)),w
	movwf	(_main$1975+2)
;keyboard_and_mouse_in_a_glove.c: 108: TXREG = vblAccX%100%10 + 48;
	movlw	0Ah
	movwf	(?___ltmod)
	movlw	0
	movwf	(?___ltmod+1)
	movlw	0
	movwf	(?___ltmod+2)
	movf	(_main$1975),w
	movwf	0+(?___ltmod)+03h
	movf	(_main$1975+1),w
	movwf	1+(?___ltmod)+03h
	movf	(_main$1975+2),w
	movwf	2+(?___ltmod)+03h
	fcall	___ltmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ltmod)),w
	addlw	030h
	movwf	(25)	;volatile
	line	109
;keyboard_and_mouse_in_a_glove.c: 109: while(!TXIF);
	goto	l736
	
l737:	
	
l736:	
	btfss	(100/8),(100)&7
	goto	u6081
	goto	u6080
u6081:
	goto	l736
u6080:
	goto	l5029
	
l738:	
	line	110
	
l5029:	
;keyboard_and_mouse_in_a_glove.c: 110: TXREG = '?';
	movlw	(03Fh)
	movwf	(25)	;volatile
	line	112
;keyboard_and_mouse_in_a_glove.c: 112: while(!TXIF);
	goto	l739
	
l740:	
	
l739:	
	btfss	(100/8),(100)&7
	goto	u6091
	goto	u6090
u6091:
	goto	l739
u6090:
	goto	l5031
	
l741:	
	line	113
	
l5031:	
;keyboard_and_mouse_in_a_glove.c: 113: TXREG = '%';
	movlw	(025h)
	movwf	(25)	;volatile
	line	114
;keyboard_and_mouse_in_a_glove.c: 114: while(!TXIF);
	goto	l742
	
l743:	
	
l742:	
	btfss	(100/8),(100)&7
	goto	u6101
	goto	u6100
u6101:
	goto	l742
u6100:
	goto	l5033
	
l744:	
	line	115
	
l5033:	
;keyboard_and_mouse_in_a_glove.c: 115: TXREG = 'Y';
	movlw	(059h)
	movwf	(25)	;volatile
	line	116
;keyboard_and_mouse_in_a_glove.c: 116: while(!TXIF);
	goto	l745
	
l746:	
	
l745:	
	btfss	(100/8),(100)&7
	goto	u6111
	goto	u6110
u6111:
	goto	l745
u6110:
	goto	l5035
	
l747:	
	line	117
	
l5035:	
;keyboard_and_mouse_in_a_glove.c: 117: TXREG = vblAccY/100 + 48;
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
	line	118
;keyboard_and_mouse_in_a_glove.c: 118: while(!TXIF);
	goto	l748
	
l749:	
	
l748:	
	btfss	(100/8),(100)&7
	goto	u6121
	goto	u6120
u6121:
	goto	l748
u6120:
	goto	l5037
	
l750:	
	line	119
	
l5037:	
;keyboard_and_mouse_in_a_glove.c: 119: TXREG = vblAccY%100/10 + 48;
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
	line	120
;keyboard_and_mouse_in_a_glove.c: 120: while(!TXIF);
	goto	l751
	
l752:	
	
l751:	
	btfss	(100/8),(100)&7
	goto	u6131
	goto	u6130
u6131:
	goto	l751
u6130:
	goto	l5039
	
l753:	
	line	121
	
l5039:	
;keyboard_and_mouse_in_a_glove.c: 121: TXREG = vblAccY%100%10 + 48;
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
	movwf	(_main$1975)
	movf	(1+(?___ltmod)),w
	movwf	(_main$1975+1)
	movf	(2+(?___ltmod)),w
	movwf	(_main$1975+2)
;keyboard_and_mouse_in_a_glove.c: 121: TXREG = vblAccY%100%10 + 48;
	movlw	0Ah
	movwf	(?___ltmod)
	movlw	0
	movwf	(?___ltmod+1)
	movlw	0
	movwf	(?___ltmod+2)
	movf	(_main$1975),w
	movwf	0+(?___ltmod)+03h
	movf	(_main$1975+1),w
	movwf	1+(?___ltmod)+03h
	movf	(_main$1975+2),w
	movwf	2+(?___ltmod)+03h
	fcall	___ltmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ltmod)),w
	addlw	030h
	movwf	(25)	;volatile
	line	122
;keyboard_and_mouse_in_a_glove.c: 122: while(!TXIF);
	goto	l754
	
l755:	
	
l754:	
	btfss	(100/8),(100)&7
	goto	u6141
	goto	u6140
u6141:
	goto	l754
u6140:
	goto	l5041
	
l756:	
	line	123
	
l5041:	
;keyboard_and_mouse_in_a_glove.c: 123: TXREG = '?';
	movlw	(03Fh)
	movwf	(25)	;volatile
	line	125
;keyboard_and_mouse_in_a_glove.c: 125: _delay((unsigned long)((30)*(4000000/4000.0)));
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u7367:
	decfsz	((??_main+0)+0),f
	goto	u7367
	decfsz	((??_main+0)+0+1),f
	goto	u7367
opt asmopt_on

	line	127
	
l5043:	
;keyboard_and_mouse_in_a_glove.c: 127: if( RC5!=0 ){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(61/8),(61)&7
	goto	u6151
	goto	u6150
u6151:
	goto	l757
u6150:
	line	130
	
l5045:	
;keyboard_and_mouse_in_a_glove.c: 130: _delay((unsigned long)((50)*(4000000/4000.0))); while(RD7!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RD7!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RD7!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RD7!=0)
	opt asmopt_off
movlw	65
movwf	((??_main+0)+0+1),f
	movlw	238
movwf	((??_main+0)+0),f
u7377:
	decfsz	((??_main+0)+0),f
	goto	u7377
	decfsz	((??_main+0)+0+1),f
	goto	u7377
	clrwdt
opt asmopt_on

	goto	l758
	
l759:	
	
l758:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u6161
	goto	u6160
u6161:
	goto	l758
u6160:
	goto	l5047
	
l760:	
	
l5047:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u7387:
	decfsz	((??_main+0)+0),f
	goto	u7387
	decfsz	((??_main+0)+0+1),f
	goto	u7387
opt asmopt_on

	goto	l761
	
l762:	
	
l761:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u6171
	goto	u6170
u6171:
	goto	l761
u6170:
	goto	l5049
	
l763:	
	
l5049:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u7397:
	decfsz	((??_main+0)+0),f
	goto	u7397
	decfsz	((??_main+0)+0+1),f
	goto	u7397
opt asmopt_on

	goto	l764
	
l765:	
	
l764:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u6181
	goto	u6180
u6181:
	goto	l764
u6180:
	goto	l5051
	
l766:	
	
l5051:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u7407:
	decfsz	((??_main+0)+0),f
	goto	u7407
	decfsz	((??_main+0)+0+1),f
	goto	u7407
opt asmopt_on

	goto	l767
	
l768:	
	
l767:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u6191
	goto	u6190
u6191:
	goto	l767
u6190:
	goto	l5053
	
l769:	
	line	131
	
l5053:	
;keyboard_and_mouse_in_a_glove.c: 131: KeySend(' ');
	movlw	(020h)
	fcall	_KeySend
	line	132
;keyboard_and_mouse_in_a_glove.c: 132: KeySend(' ');
	movlw	(020h)
	fcall	_KeySend
	line	133
	
l5055:	
;keyboard_and_mouse_in_a_glove.c: 133: MOUSE_SELECT = 0;
	bcf	(_MOUSE_SELECT/8),(_MOUSE_SELECT)&7
	line	134
;keyboard_and_mouse_in_a_glove.c: 134: }
	goto	l5605
	line	135
	
l757:	
;keyboard_and_mouse_in_a_glove.c: 135: else if( RD3!=0 ){
	btfss	(67/8),(67)&7
	goto	u6201
	goto	u6200
u6201:
	goto	l771
u6200:
	line	136
	
l5057:	
;keyboard_and_mouse_in_a_glove.c: 136: nop=1;
	bsf	(_nop/8),(_nop)&7
	line	139
	
l5059:	
;keyboard_and_mouse_in_a_glove.c: 139: _delay((unsigned long)((50)*(4000000/4000.0))); while(RD7!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RD7!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RD7!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RD7!=0)
	opt asmopt_off
movlw	65
movwf	((??_main+0)+0+1),f
	movlw	238
movwf	((??_main+0)+0),f
u7417:
	decfsz	((??_main+0)+0),f
	goto	u7417
	decfsz	((??_main+0)+0+1),f
	goto	u7417
	clrwdt
opt asmopt_on

	goto	l772
	
l773:	
	
l772:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u6211
	goto	u6210
u6211:
	goto	l772
u6210:
	goto	l5061
	
l774:	
	
l5061:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u7427:
	decfsz	((??_main+0)+0),f
	goto	u7427
	decfsz	((??_main+0)+0+1),f
	goto	u7427
opt asmopt_on

	goto	l775
	
l776:	
	
l775:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u6221
	goto	u6220
u6221:
	goto	l775
u6220:
	goto	l5063
	
l777:	
	
l5063:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u7437:
	decfsz	((??_main+0)+0),f
	goto	u7437
	decfsz	((??_main+0)+0+1),f
	goto	u7437
opt asmopt_on

	goto	l778
	
l779:	
	
l778:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u6231
	goto	u6230
u6231:
	goto	l778
u6230:
	goto	l5065
	
l780:	
	
l5065:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u7447:
	decfsz	((??_main+0)+0),f
	goto	u7447
	decfsz	((??_main+0)+0+1),f
	goto	u7447
opt asmopt_on

	goto	l781
	
l782:	
	
l781:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u6241
	goto	u6240
u6241:
	goto	l781
u6240:
	goto	l5067
	
l783:	
	line	140
	
l5067:	
;keyboard_and_mouse_in_a_glove.c: 140: MouseSendLC();
	fcall	_MouseSendLC
	line	141
;keyboard_and_mouse_in_a_glove.c: 141: }
	goto	l5605
	line	142
	
l771:	
;keyboard_and_mouse_in_a_glove.c: 142: else if( RB4!=0 ){
	btfss	(52/8),(52)&7
	goto	u6251
	goto	u6250
u6251:
	goto	l5605
u6250:
	line	143
	
l5069:	
;keyboard_and_mouse_in_a_glove.c: 143: nop=1;
	bsf	(_nop/8),(_nop)&7
	line	146
	
l5071:	
;keyboard_and_mouse_in_a_glove.c: 146: _delay((unsigned long)((50)*(4000000/4000.0))); while(RD7!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RD7!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RD7!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RD7!=0)
	opt asmopt_off
movlw	65
movwf	((??_main+0)+0+1),f
	movlw	238
movwf	((??_main+0)+0),f
u7457:
	decfsz	((??_main+0)+0),f
	goto	u7457
	decfsz	((??_main+0)+0+1),f
	goto	u7457
	clrwdt
opt asmopt_on

	goto	l786
	
l787:	
	
l786:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u6261
	goto	u6260
u6261:
	goto	l786
u6260:
	goto	l5073
	
l788:	
	
l5073:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u7467:
	decfsz	((??_main+0)+0),f
	goto	u7467
	decfsz	((??_main+0)+0+1),f
	goto	u7467
opt asmopt_on

	goto	l789
	
l790:	
	
l789:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u6271
	goto	u6270
u6271:
	goto	l789
u6270:
	goto	l5075
	
l791:	
	
l5075:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u7477:
	decfsz	((??_main+0)+0),f
	goto	u7477
	decfsz	((??_main+0)+0+1),f
	goto	u7477
opt asmopt_on

	goto	l792
	
l793:	
	
l792:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u6281
	goto	u6280
u6281:
	goto	l792
u6280:
	goto	l5077
	
l794:	
	
l5077:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u7487:
	decfsz	((??_main+0)+0),f
	goto	u7487
	decfsz	((??_main+0)+0+1),f
	goto	u7487
opt asmopt_on

	goto	l795
	
l796:	
	
l795:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u6291
	goto	u6290
u6291:
	goto	l795
u6290:
	goto	l5079
	
l797:	
	line	147
	
l5079:	
;keyboard_and_mouse_in_a_glove.c: 147: MouseSendRC();
	fcall	_MouseSendRC
	goto	l5605
	line	148
	
l785:	
	goto	l5605
	line	149
	
l784:	
	goto	l5605
	
l770:	
;keyboard_and_mouse_in_a_glove.c: 148: }
;keyboard_and_mouse_in_a_glove.c: 149: }
	goto	l5605
	line	150
	
l720:	
	line	152
;keyboard_and_mouse_in_a_glove.c: 150: else
;keyboard_and_mouse_in_a_glove.c: 151: {
;keyboard_and_mouse_in_a_glove.c: 152: if( RD7!=0 ){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(71/8),(71)&7
	goto	u6301
	goto	u6300
u6301:
	goto	l799
u6300:
	line	153
	
l5081:	
;keyboard_and_mouse_in_a_glove.c: 153: nop=1;
	bsf	(_nop/8),(_nop)&7
	line	156
	
l5083:	
;keyboard_and_mouse_in_a_glove.c: 156: _delay((unsigned long)((50)*(4000000/4000.0))); while(RD7!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RD7!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RD7!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RD7!=0)
	opt asmopt_off
movlw	65
movwf	((??_main+0)+0+1),f
	movlw	238
movwf	((??_main+0)+0),f
u7497:
	decfsz	((??_main+0)+0),f
	goto	u7497
	decfsz	((??_main+0)+0+1),f
	goto	u7497
	clrwdt
opt asmopt_on

	goto	l800
	
l801:	
	
l800:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u6311
	goto	u6310
u6311:
	goto	l800
u6310:
	goto	l5085
	
l802:	
	
l5085:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u7507:
	decfsz	((??_main+0)+0),f
	goto	u7507
	decfsz	((??_main+0)+0+1),f
	goto	u7507
opt asmopt_on

	goto	l803
	
l804:	
	
l803:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u6321
	goto	u6320
u6321:
	goto	l803
u6320:
	goto	l5087
	
l805:	
	
l5087:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u7517:
	decfsz	((??_main+0)+0),f
	goto	u7517
	decfsz	((??_main+0)+0+1),f
	goto	u7517
opt asmopt_on

	goto	l806
	
l807:	
	
l806:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u6331
	goto	u6330
u6331:
	goto	l806
u6330:
	goto	l5089
	
l808:	
	
l5089:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u7527:
	decfsz	((??_main+0)+0),f
	goto	u7527
	decfsz	((??_main+0)+0+1),f
	goto	u7527
opt asmopt_on

	goto	l809
	
l810:	
	
l809:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u6341
	goto	u6340
u6341:
	goto	l809
u6340:
	goto	l5091
	
l811:	
	line	159
	
l5091:	
;keyboard_and_mouse_in_a_glove.c: 159: if ( counter==0 ){ KeySend('1'); prevChar='1'; counter = 10; }
	movf	((_counter+1)),w
	iorwf	((_counter)),w
	skipz
	goto	u6351
	goto	u6350
u6351:
	goto	l5605
u6350:
	
l5093:	
	movlw	(031h)
	fcall	_KeySend
	
l5095:	
	movlw	(031h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l5097:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l5605
	
l812:	
	line	161
;keyboard_and_mouse_in_a_glove.c: 161: }
	goto	l5605
	line	162
	
l799:	
;keyboard_and_mouse_in_a_glove.c: 162: else if( RD3!=0 ){
	btfss	(67/8),(67)&7
	goto	u6361
	goto	u6360
u6361:
	goto	l814
u6360:
	line	163
	
l5099:	
;keyboard_and_mouse_in_a_glove.c: 163: nop=1;
	bsf	(_nop/8),(_nop)&7
	line	166
	
l5101:	
;keyboard_and_mouse_in_a_glove.c: 166: _delay((unsigned long)((50)*(4000000/4000.0))); while(RD7!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RD7!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RD7!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RD7!=0)
	opt asmopt_off
movlw	65
movwf	((??_main+0)+0+1),f
	movlw	238
movwf	((??_main+0)+0),f
u7537:
	decfsz	((??_main+0)+0),f
	goto	u7537
	decfsz	((??_main+0)+0+1),f
	goto	u7537
	clrwdt
opt asmopt_on

	goto	l815
	
l816:	
	
l815:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u6371
	goto	u6370
u6371:
	goto	l815
u6370:
	goto	l5103
	
l817:	
	
l5103:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u7547:
	decfsz	((??_main+0)+0),f
	goto	u7547
	decfsz	((??_main+0)+0+1),f
	goto	u7547
opt asmopt_on

	goto	l818
	
l819:	
	
l818:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u6381
	goto	u6380
u6381:
	goto	l818
u6380:
	goto	l5105
	
l820:	
	
l5105:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u7557:
	decfsz	((??_main+0)+0),f
	goto	u7557
	decfsz	((??_main+0)+0+1),f
	goto	u7557
opt asmopt_on

	goto	l821
	
l822:	
	
l821:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u6391
	goto	u6390
u6391:
	goto	l821
u6390:
	goto	l5107
	
l823:	
	
l5107:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u7567:
	decfsz	((??_main+0)+0),f
	goto	u7567
	decfsz	((??_main+0)+0+1),f
	goto	u7567
opt asmopt_on

	goto	l824
	
l825:	
	
l824:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u6401
	goto	u6400
u6401:
	goto	l824
u6400:
	goto	l5109
	
l826:	
	line	169
	
l5109:	
;keyboard_and_mouse_in_a_glove.c: 169: if ( counter==0 ){ KeySend('A'); prevChar='A'; counter = 10; }
	movf	((_counter+1)),w
	iorwf	((_counter)),w
	skipz
	goto	u6411
	goto	u6410
u6411:
	goto	l5117
u6410:
	
l5111:	
	movlw	(041h)
	fcall	_KeySend
	
l5113:	
	movlw	(041h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l5115:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l5605
	line	170
	
l827:	
	
l5117:	
;keyboard_and_mouse_in_a_glove.c: 170: else if( prevChar=='A' ){ KeySend('^'); KeySend('B'); prevChar='B'; counter = 10; }
	movf	(_prevChar),w
	xorlw	041h
	skipz
	goto	u6421
	goto	u6420
u6421:
	goto	l5125
u6420:
	
l5119:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(042h)
	fcall	_KeySend
	
l5121:	
	movlw	(042h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l5123:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l5605
	line	171
	
l829:	
	
l5125:	
;keyboard_and_mouse_in_a_glove.c: 171: else if( prevChar=='B' ){ KeySend('^'); KeySend('C'); prevChar='C'; counter = 10; }
	movf	(_prevChar),w
	xorlw	042h
	skipz
	goto	u6431
	goto	u6430
u6431:
	goto	l5133
u6430:
	
l5127:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(043h)
	fcall	_KeySend
	
l5129:	
	movlw	(043h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l5131:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l5605
	line	172
	
l831:	
	
l5133:	
;keyboard_and_mouse_in_a_glove.c: 172: else if( prevChar=='C' ){ KeySend('^'); KeySend('2'); prevChar='2'; counter = 10; }
	movf	(_prevChar),w
	xorlw	043h
	skipz
	goto	u6441
	goto	u6440
u6441:
	goto	l5141
u6440:
	
l5135:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(032h)
	fcall	_KeySend
	
l5137:	
	movlw	(032h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l5139:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l5605
	line	173
	
l833:	
	
l5141:	
;keyboard_and_mouse_in_a_glove.c: 173: else if( prevChar=='2' ){ KeySend('^'); KeySend('A'); prevChar='A'; counter = 10; }
	movf	(_prevChar),w
	xorlw	032h
	skipz
	goto	u6451
	goto	u6450
u6451:
	goto	l5149
u6450:
	
l5143:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(041h)
	fcall	_KeySend
	
l5145:	
	movlw	(041h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l5147:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l5605
	line	174
	
l835:	
	
l5149:	
;keyboard_and_mouse_in_a_glove.c: 174: else { KeySend('A'); prevChar='A'; counter = 10; }
	movlw	(041h)
	fcall	_KeySend
	
l5151:	
	movlw	(041h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l5153:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l5605
	
l836:	
	goto	l5605
	
l834:	
	goto	l5605
	
l832:	
	goto	l5605
	
l830:	
	goto	l5605
	
l828:	
	line	175
;keyboard_and_mouse_in_a_glove.c: 175: }
	goto	l5605
	line	177
	
l814:	
;keyboard_and_mouse_in_a_glove.c: 177: else if( RB4!=0 ){
	btfss	(52/8),(52)&7
	goto	u6461
	goto	u6460
u6461:
	goto	l838
u6460:
	line	178
	
l5155:	
;keyboard_and_mouse_in_a_glove.c: 178: nop=1;
	bsf	(_nop/8),(_nop)&7
	line	181
	
l5157:	
;keyboard_and_mouse_in_a_glove.c: 181: _delay((unsigned long)((50)*(4000000/4000.0))); while(RD7!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RD7!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RD7!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RD7!=0)
	opt asmopt_off
movlw	65
movwf	((??_main+0)+0+1),f
	movlw	238
movwf	((??_main+0)+0),f
u7577:
	decfsz	((??_main+0)+0),f
	goto	u7577
	decfsz	((??_main+0)+0+1),f
	goto	u7577
	clrwdt
opt asmopt_on

	goto	l839
	
l840:	
	
l839:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u6471
	goto	u6470
u6471:
	goto	l839
u6470:
	goto	l5159
	
l841:	
	
l5159:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u7587:
	decfsz	((??_main+0)+0),f
	goto	u7587
	decfsz	((??_main+0)+0+1),f
	goto	u7587
opt asmopt_on

	goto	l842
	
l843:	
	
l842:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u6481
	goto	u6480
u6481:
	goto	l842
u6480:
	goto	l5161
	
l844:	
	
l5161:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u7597:
	decfsz	((??_main+0)+0),f
	goto	u7597
	decfsz	((??_main+0)+0+1),f
	goto	u7597
opt asmopt_on

	goto	l845
	
l846:	
	
l845:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u6491
	goto	u6490
u6491:
	goto	l845
u6490:
	goto	l5163
	
l847:	
	
l5163:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u7607:
	decfsz	((??_main+0)+0),f
	goto	u7607
	decfsz	((??_main+0)+0+1),f
	goto	u7607
opt asmopt_on

	goto	l848
	
l849:	
	
l848:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u6501
	goto	u6500
u6501:
	goto	l848
u6500:
	goto	l5165
	
l850:	
	line	184
	
l5165:	
;keyboard_and_mouse_in_a_glove.c: 184: if ( counter==0 ){ KeySend('D'); prevChar='D'; counter = 10; }
	movf	((_counter+1)),w
	iorwf	((_counter)),w
	skipz
	goto	u6511
	goto	u6510
u6511:
	goto	l5173
u6510:
	
l5167:	
	movlw	(044h)
	fcall	_KeySend
	
l5169:	
	movlw	(044h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l5171:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l5605
	line	185
	
l851:	
	
l5173:	
;keyboard_and_mouse_in_a_glove.c: 185: else if( prevChar=='D' ){ KeySend('^'); KeySend('E'); prevChar='E'; counter = 10; }
	movf	(_prevChar),w
	xorlw	044h
	skipz
	goto	u6521
	goto	u6520
u6521:
	goto	l5181
u6520:
	
l5175:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(045h)
	fcall	_KeySend
	
l5177:	
	movlw	(045h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l5179:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l5605
	line	186
	
l853:	
	
l5181:	
;keyboard_and_mouse_in_a_glove.c: 186: else if( prevChar=='E' ){ KeySend('^'); KeySend('F'); prevChar='F'; counter = 10; }
	movf	(_prevChar),w
	xorlw	045h
	skipz
	goto	u6531
	goto	u6530
u6531:
	goto	l5189
u6530:
	
l5183:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(046h)
	fcall	_KeySend
	
l5185:	
	movlw	(046h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l5187:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l5605
	line	187
	
l855:	
	
l5189:	
;keyboard_and_mouse_in_a_glove.c: 187: else if( prevChar=='F' ){ KeySend('^'); KeySend('3'); prevChar='3'; counter = 10; }
	movf	(_prevChar),w
	xorlw	046h
	skipz
	goto	u6541
	goto	u6540
u6541:
	goto	l5197
u6540:
	
l5191:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(033h)
	fcall	_KeySend
	
l5193:	
	movlw	(033h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l5195:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l5605
	line	188
	
l857:	
	
l5197:	
;keyboard_and_mouse_in_a_glove.c: 188: else if( prevChar=='3' ){ KeySend('^'); KeySend('D'); prevChar='D'; counter = 10; }
	movf	(_prevChar),w
	xorlw	033h
	skipz
	goto	u6551
	goto	u6550
u6551:
	goto	l5205
u6550:
	
l5199:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(044h)
	fcall	_KeySend
	
l5201:	
	movlw	(044h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l5203:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l5605
	line	189
	
l859:	
	
l5205:	
;keyboard_and_mouse_in_a_glove.c: 189: else { KeySend('D'); prevChar='D'; counter = 10; }
	movlw	(044h)
	fcall	_KeySend
	
l5207:	
	movlw	(044h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l5209:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l5605
	
l860:	
	goto	l5605
	
l858:	
	goto	l5605
	
l856:	
	goto	l5605
	
l854:	
	goto	l5605
	
l852:	
	line	190
;keyboard_and_mouse_in_a_glove.c: 190: }
	goto	l5605
	line	192
	
l838:	
;keyboard_and_mouse_in_a_glove.c: 192: else if( RB0!=0 ){
	btfss	(48/8),(48)&7
	goto	u6561
	goto	u6560
u6561:
	goto	l862
u6560:
	line	193
	
l5211:	
;keyboard_and_mouse_in_a_glove.c: 193: nop=1;
	bsf	(_nop/8),(_nop)&7
	line	196
	
l5213:	
;keyboard_and_mouse_in_a_glove.c: 196: _delay((unsigned long)((50)*(4000000/4000.0))); while(RD7!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RD7!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RD7!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RD7!=0)
	opt asmopt_off
movlw	65
movwf	((??_main+0)+0+1),f
	movlw	238
movwf	((??_main+0)+0),f
u7617:
	decfsz	((??_main+0)+0),f
	goto	u7617
	decfsz	((??_main+0)+0+1),f
	goto	u7617
	clrwdt
opt asmopt_on

	goto	l863
	
l864:	
	
l863:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u6571
	goto	u6570
u6571:
	goto	l863
u6570:
	goto	l5215
	
l865:	
	
l5215:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u7627:
	decfsz	((??_main+0)+0),f
	goto	u7627
	decfsz	((??_main+0)+0+1),f
	goto	u7627
opt asmopt_on

	goto	l866
	
l867:	
	
l866:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u6581
	goto	u6580
u6581:
	goto	l866
u6580:
	goto	l5217
	
l868:	
	
l5217:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u7637:
	decfsz	((??_main+0)+0),f
	goto	u7637
	decfsz	((??_main+0)+0+1),f
	goto	u7637
opt asmopt_on

	goto	l869
	
l870:	
	
l869:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u6591
	goto	u6590
u6591:
	goto	l869
u6590:
	goto	l5219
	
l871:	
	
l5219:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u7647:
	decfsz	((??_main+0)+0),f
	goto	u7647
	decfsz	((??_main+0)+0+1),f
	goto	u7647
opt asmopt_on

	goto	l872
	
l873:	
	
l872:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u6601
	goto	u6600
u6601:
	goto	l872
u6600:
	goto	l5221
	
l874:	
	line	199
	
l5221:	
;keyboard_and_mouse_in_a_glove.c: 199: if ( counter==0 ){ KeySend('G'); prevChar='G'; counter = 10; }
	movf	((_counter+1)),w
	iorwf	((_counter)),w
	skipz
	goto	u6611
	goto	u6610
u6611:
	goto	l5229
u6610:
	
l5223:	
	movlw	(047h)
	fcall	_KeySend
	
l5225:	
	movlw	(047h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l5227:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l5605
	line	200
	
l875:	
	
l5229:	
;keyboard_and_mouse_in_a_glove.c: 200: else if( prevChar=='G' ){ KeySend('^'); KeySend('H'); prevChar='H'; counter = 10; }
	movf	(_prevChar),w
	xorlw	047h
	skipz
	goto	u6621
	goto	u6620
u6621:
	goto	l5237
u6620:
	
l5231:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(048h)
	fcall	_KeySend
	
l5233:	
	movlw	(048h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l5235:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l5605
	line	201
	
l877:	
	
l5237:	
;keyboard_and_mouse_in_a_glove.c: 201: else if( prevChar=='H' ){ KeySend('^'); KeySend('I'); prevChar='I'; counter = 10; }
	movf	(_prevChar),w
	xorlw	048h
	skipz
	goto	u6631
	goto	u6630
u6631:
	goto	l5245
u6630:
	
l5239:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(049h)
	fcall	_KeySend
	
l5241:	
	movlw	(049h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l5243:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l5605
	line	202
	
l879:	
	
l5245:	
;keyboard_and_mouse_in_a_glove.c: 202: else if( prevChar=='I' ){ KeySend('^'); KeySend('4'); prevChar='4'; counter = 10; }
	movf	(_prevChar),w
	xorlw	049h
	skipz
	goto	u6641
	goto	u6640
u6641:
	goto	l5253
u6640:
	
l5247:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(034h)
	fcall	_KeySend
	
l5249:	
	movlw	(034h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l5251:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l5605
	line	203
	
l881:	
	
l5253:	
;keyboard_and_mouse_in_a_glove.c: 203: else if( prevChar=='4' ){ KeySend('^'); KeySend('G'); prevChar='G'; counter = 10; }
	movf	(_prevChar),w
	xorlw	034h
	skipz
	goto	u6651
	goto	u6650
u6651:
	goto	l5261
u6650:
	
l5255:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(047h)
	fcall	_KeySend
	
l5257:	
	movlw	(047h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l5259:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l5605
	line	204
	
l883:	
	
l5261:	
;keyboard_and_mouse_in_a_glove.c: 204: else { KeySend('G'); prevChar='G'; counter = 10; }
	movlw	(047h)
	fcall	_KeySend
	
l5263:	
	movlw	(047h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l5265:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l5605
	
l884:	
	goto	l5605
	
l882:	
	goto	l5605
	
l880:	
	goto	l5605
	
l878:	
	goto	l5605
	
l876:	
	line	205
;keyboard_and_mouse_in_a_glove.c: 205: }
	goto	l5605
	line	207
	
l862:	
;keyboard_and_mouse_in_a_glove.c: 207: else if( RD4!=0){
	btfss	(68/8),(68)&7
	goto	u6661
	goto	u6660
u6661:
	goto	l886
u6660:
	line	208
	
l5267:	
;keyboard_and_mouse_in_a_glove.c: 208: nop=1;
	bsf	(_nop/8),(_nop)&7
	line	211
	
l5269:	
;keyboard_and_mouse_in_a_glove.c: 211: _delay((unsigned long)((50)*(4000000/4000.0))); while(RD7!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RD7!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RD7!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RD7!=0)
	opt asmopt_off
movlw	65
movwf	((??_main+0)+0+1),f
	movlw	238
movwf	((??_main+0)+0),f
u7657:
	decfsz	((??_main+0)+0),f
	goto	u7657
	decfsz	((??_main+0)+0+1),f
	goto	u7657
	clrwdt
opt asmopt_on

	goto	l887
	
l888:	
	
l887:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u6671
	goto	u6670
u6671:
	goto	l887
u6670:
	goto	l5271
	
l889:	
	
l5271:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u7667:
	decfsz	((??_main+0)+0),f
	goto	u7667
	decfsz	((??_main+0)+0+1),f
	goto	u7667
opt asmopt_on

	goto	l890
	
l891:	
	
l890:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u6681
	goto	u6680
u6681:
	goto	l890
u6680:
	goto	l5273
	
l892:	
	
l5273:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u7677:
	decfsz	((??_main+0)+0),f
	goto	u7677
	decfsz	((??_main+0)+0+1),f
	goto	u7677
opt asmopt_on

	goto	l893
	
l894:	
	
l893:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u6691
	goto	u6690
u6691:
	goto	l893
u6690:
	goto	l5275
	
l895:	
	
l5275:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u7687:
	decfsz	((??_main+0)+0),f
	goto	u7687
	decfsz	((??_main+0)+0+1),f
	goto	u7687
opt asmopt_on

	goto	l896
	
l897:	
	
l896:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u6701
	goto	u6700
u6701:
	goto	l896
u6700:
	goto	l5277
	
l898:	
	line	214
	
l5277:	
;keyboard_and_mouse_in_a_glove.c: 214: if ( counter==0 ){ KeySend('J'); prevChar='J'; counter = 10; }
	movf	((_counter+1)),w
	iorwf	((_counter)),w
	skipz
	goto	u6711
	goto	u6710
u6711:
	goto	l5285
u6710:
	
l5279:	
	movlw	(04Ah)
	fcall	_KeySend
	
l5281:	
	movlw	(04Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l5283:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l5605
	line	215
	
l899:	
	
l5285:	
;keyboard_and_mouse_in_a_glove.c: 215: else if( prevChar=='J' ){ KeySend('^'); KeySend('K'); prevChar='K'; counter = 10; }
	movf	(_prevChar),w
	xorlw	04Ah
	skipz
	goto	u6721
	goto	u6720
u6721:
	goto	l5293
u6720:
	
l5287:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(04Bh)
	fcall	_KeySend
	
l5289:	
	movlw	(04Bh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l5291:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l5605
	line	216
	
l901:	
	
l5293:	
;keyboard_and_mouse_in_a_glove.c: 216: else if( prevChar=='K' ){ KeySend('^'); KeySend('L'); prevChar='L'; counter = 10; }
	movf	(_prevChar),w
	xorlw	04Bh
	skipz
	goto	u6731
	goto	u6730
u6731:
	goto	l5301
u6730:
	
l5295:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(04Ch)
	fcall	_KeySend
	
l5297:	
	movlw	(04Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l5299:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l5605
	line	217
	
l903:	
	
l5301:	
;keyboard_and_mouse_in_a_glove.c: 217: else if( prevChar=='L' ){ KeySend('^'); KeySend('5'); prevChar='5'; counter = 10; }
	movf	(_prevChar),w
	xorlw	04Ch
	skipz
	goto	u6741
	goto	u6740
u6741:
	goto	l5309
u6740:
	
l5303:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(035h)
	fcall	_KeySend
	
l5305:	
	movlw	(035h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l5307:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l5605
	line	218
	
l905:	
	
l5309:	
;keyboard_and_mouse_in_a_glove.c: 218: else if( prevChar=='5' ){ KeySend('^'); KeySend('J'); prevChar='J'; counter = 10; }
	movf	(_prevChar),w
	xorlw	035h
	skipz
	goto	u6751
	goto	u6750
u6751:
	goto	l5317
u6750:
	
l5311:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(04Ah)
	fcall	_KeySend
	
l5313:	
	movlw	(04Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l5315:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l5605
	line	219
	
l907:	
	
l5317:	
;keyboard_and_mouse_in_a_glove.c: 219: else { KeySend('J'); prevChar='J'; counter = 10; }
	movlw	(04Ah)
	fcall	_KeySend
	
l5319:	
	movlw	(04Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l5321:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l5605
	
l908:	
	goto	l5605
	
l906:	
	goto	l5605
	
l904:	
	goto	l5605
	
l902:	
	goto	l5605
	
l900:	
	line	220
;keyboard_and_mouse_in_a_glove.c: 220: }
	goto	l5605
	line	223
	
l886:	
;keyboard_and_mouse_in_a_glove.c: 223: else if( RB2!=0){
	btfss	(50/8),(50)&7
	goto	u6761
	goto	u6760
u6761:
	goto	l910
u6760:
	line	224
	
l5323:	
;keyboard_and_mouse_in_a_glove.c: 224: nop=1;
	bsf	(_nop/8),(_nop)&7
	line	227
	
l5325:	
;keyboard_and_mouse_in_a_glove.c: 227: _delay((unsigned long)((50)*(4000000/4000.0))); while(RD7!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RD7!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RD7!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RD7!=0)
	opt asmopt_off
movlw	65
movwf	((??_main+0)+0+1),f
	movlw	238
movwf	((??_main+0)+0),f
u7697:
	decfsz	((??_main+0)+0),f
	goto	u7697
	decfsz	((??_main+0)+0+1),f
	goto	u7697
	clrwdt
opt asmopt_on

	goto	l911
	
l912:	
	
l911:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u6771
	goto	u6770
u6771:
	goto	l911
u6770:
	goto	l5327
	
l913:	
	
l5327:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u7707:
	decfsz	((??_main+0)+0),f
	goto	u7707
	decfsz	((??_main+0)+0+1),f
	goto	u7707
opt asmopt_on

	goto	l914
	
l915:	
	
l914:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u6781
	goto	u6780
u6781:
	goto	l914
u6780:
	goto	l5329
	
l916:	
	
l5329:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u7717:
	decfsz	((??_main+0)+0),f
	goto	u7717
	decfsz	((??_main+0)+0+1),f
	goto	u7717
opt asmopt_on

	goto	l917
	
l918:	
	
l917:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u6791
	goto	u6790
u6791:
	goto	l917
u6790:
	goto	l5331
	
l919:	
	
l5331:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u7727:
	decfsz	((??_main+0)+0),f
	goto	u7727
	decfsz	((??_main+0)+0+1),f
	goto	u7727
opt asmopt_on

	goto	l920
	
l921:	
	
l920:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u6801
	goto	u6800
u6801:
	goto	l920
u6800:
	goto	l5333
	
l922:	
	line	230
	
l5333:	
;keyboard_and_mouse_in_a_glove.c: 230: if ( counter==0 ){ KeySend('M'); prevChar='M'; counter = 10; }
	movf	((_counter+1)),w
	iorwf	((_counter)),w
	skipz
	goto	u6811
	goto	u6810
u6811:
	goto	l5341
u6810:
	
l5335:	
	movlw	(04Dh)
	fcall	_KeySend
	
l5337:	
	movlw	(04Dh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l5339:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l5605
	line	231
	
l923:	
	
l5341:	
;keyboard_and_mouse_in_a_glove.c: 231: else if( prevChar=='M' ){ KeySend('^'); KeySend('N'); prevChar='N'; counter = 10; }
	movf	(_prevChar),w
	xorlw	04Dh
	skipz
	goto	u6821
	goto	u6820
u6821:
	goto	l5349
u6820:
	
l5343:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(04Eh)
	fcall	_KeySend
	
l5345:	
	movlw	(04Eh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l5347:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l5605
	line	232
	
l925:	
	
l5349:	
;keyboard_and_mouse_in_a_glove.c: 232: else if( prevChar=='N' ){ KeySend('^'); KeySend('O'); prevChar='O'; counter = 10; }
	movf	(_prevChar),w
	xorlw	04Eh
	skipz
	goto	u6831
	goto	u6830
u6831:
	goto	l5357
u6830:
	
l5351:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(04Fh)
	fcall	_KeySend
	
l5353:	
	movlw	(04Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l5355:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l5605
	line	233
	
l927:	
	
l5357:	
;keyboard_and_mouse_in_a_glove.c: 233: else if( prevChar=='O' ){ KeySend('^'); KeySend('6'); prevChar='6'; counter = 10; }
	movf	(_prevChar),w
	xorlw	04Fh
	skipz
	goto	u6841
	goto	u6840
u6841:
	goto	l5365
u6840:
	
l5359:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(036h)
	fcall	_KeySend
	
l5361:	
	movlw	(036h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l5363:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l5605
	line	234
	
l929:	
	
l5365:	
;keyboard_and_mouse_in_a_glove.c: 234: else if( prevChar=='6' ){ KeySend('^'); KeySend('M'); prevChar='M'; counter = 10; }
	movf	(_prevChar),w
	xorlw	036h
	skipz
	goto	u6851
	goto	u6850
u6851:
	goto	l5373
u6850:
	
l5367:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(04Dh)
	fcall	_KeySend
	
l5369:	
	movlw	(04Dh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l5371:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l5605
	line	235
	
l931:	
	
l5373:	
;keyboard_and_mouse_in_a_glove.c: 235: else { KeySend('M'); prevChar='M'; counter = 10; }
	movlw	(04Dh)
	fcall	_KeySend
	
l5375:	
	movlw	(04Dh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l5377:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l5605
	
l932:	
	goto	l5605
	
l930:	
	goto	l5605
	
l928:	
	goto	l5605
	
l926:	
	goto	l5605
	
l924:	
	line	236
;keyboard_and_mouse_in_a_glove.c: 236: }
	goto	l5605
	line	238
	
l910:	
;keyboard_and_mouse_in_a_glove.c: 238: else if( RB3!=0){
	btfss	(51/8),(51)&7
	goto	u6861
	goto	u6860
u6861:
	goto	l934
u6860:
	line	239
	
l5379:	
;keyboard_and_mouse_in_a_glove.c: 239: nop=1;
	bsf	(_nop/8),(_nop)&7
	line	242
	
l5381:	
;keyboard_and_mouse_in_a_glove.c: 242: _delay((unsigned long)((50)*(4000000/4000.0))); while(RD7!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RD7!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RD7!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RD7!=0)
	opt asmopt_off
movlw	65
movwf	((??_main+0)+0+1),f
	movlw	238
movwf	((??_main+0)+0),f
u7737:
	decfsz	((??_main+0)+0),f
	goto	u7737
	decfsz	((??_main+0)+0+1),f
	goto	u7737
	clrwdt
opt asmopt_on

	goto	l935
	
l936:	
	
l935:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u6871
	goto	u6870
u6871:
	goto	l935
u6870:
	goto	l5383
	
l937:	
	
l5383:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u7747:
	decfsz	((??_main+0)+0),f
	goto	u7747
	decfsz	((??_main+0)+0+1),f
	goto	u7747
opt asmopt_on

	goto	l938
	
l939:	
	
l938:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u6881
	goto	u6880
u6881:
	goto	l938
u6880:
	goto	l5385
	
l940:	
	
l5385:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u7757:
	decfsz	((??_main+0)+0),f
	goto	u7757
	decfsz	((??_main+0)+0+1),f
	goto	u7757
opt asmopt_on

	goto	l941
	
l942:	
	
l941:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u6891
	goto	u6890
u6891:
	goto	l941
u6890:
	goto	l5387
	
l943:	
	
l5387:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u7767:
	decfsz	((??_main+0)+0),f
	goto	u7767
	decfsz	((??_main+0)+0+1),f
	goto	u7767
opt asmopt_on

	goto	l944
	
l945:	
	
l944:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u6901
	goto	u6900
u6901:
	goto	l944
u6900:
	goto	l5389
	
l946:	
	line	245
	
l5389:	
;keyboard_and_mouse_in_a_glove.c: 245: if ( counter==0 ){ KeySend('P'); prevChar='P'; counter = 10; }
	movf	((_counter+1)),w
	iorwf	((_counter)),w
	skipz
	goto	u6911
	goto	u6910
u6911:
	goto	l5397
u6910:
	
l5391:	
	movlw	(050h)
	fcall	_KeySend
	
l5393:	
	movlw	(050h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l5395:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l5605
	line	246
	
l947:	
	
l5397:	
;keyboard_and_mouse_in_a_glove.c: 246: else if( prevChar=='P' ){ KeySend('^'); KeySend('Q'); prevChar='Q'; counter = 10; }
	movf	(_prevChar),w
	xorlw	050h
	skipz
	goto	u6921
	goto	u6920
u6921:
	goto	l5405
u6920:
	
l5399:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(051h)
	fcall	_KeySend
	
l5401:	
	movlw	(051h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l5403:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l5605
	line	247
	
l949:	
	
l5405:	
;keyboard_and_mouse_in_a_glove.c: 247: else if( prevChar=='Q' ){ KeySend('^'); KeySend('R'); prevChar='R'; counter = 10; }
	movf	(_prevChar),w
	xorlw	051h
	skipz
	goto	u6931
	goto	u6930
u6931:
	goto	l5413
u6930:
	
l5407:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(052h)
	fcall	_KeySend
	
l5409:	
	movlw	(052h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l5411:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l5605
	line	248
	
l951:	
	
l5413:	
;keyboard_and_mouse_in_a_glove.c: 248: else if( prevChar=='R' ){ KeySend('^'); KeySend('S'); prevChar='S'; counter = 10; }
	movf	(_prevChar),w
	xorlw	052h
	skipz
	goto	u6941
	goto	u6940
u6941:
	goto	l5421
u6940:
	
l5415:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(053h)
	fcall	_KeySend
	
l5417:	
	movlw	(053h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l5419:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l5605
	line	249
	
l953:	
	
l5421:	
;keyboard_and_mouse_in_a_glove.c: 249: else if( prevChar=='S' ){ KeySend('^'); KeySend('7'); prevChar='7'; counter = 10; }
	movf	(_prevChar),w
	xorlw	053h
	skipz
	goto	u6951
	goto	u6950
u6951:
	goto	l5429
u6950:
	
l5423:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(037h)
	fcall	_KeySend
	
l5425:	
	movlw	(037h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l5427:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l5605
	line	250
	
l955:	
	
l5429:	
;keyboard_and_mouse_in_a_glove.c: 250: else if( prevChar=='7' ){ KeySend('^'); KeySend('P'); prevChar='P'; counter = 10; }
	movf	(_prevChar),w
	xorlw	037h
	skipz
	goto	u6961
	goto	u6960
u6961:
	goto	l5437
u6960:
	
l5431:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(050h)
	fcall	_KeySend
	
l5433:	
	movlw	(050h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l5435:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l5605
	line	251
	
l957:	
	
l5437:	
;keyboard_and_mouse_in_a_glove.c: 251: else { KeySend('P'); prevChar='P'; counter = 10; }
	movlw	(050h)
	fcall	_KeySend
	
l5439:	
	movlw	(050h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l5441:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l5605
	
l958:	
	goto	l5605
	
l956:	
	goto	l5605
	
l954:	
	goto	l5605
	
l952:	
	goto	l5605
	
l950:	
	goto	l5605
	
l948:	
	line	252
;keyboard_and_mouse_in_a_glove.c: 252: }
	goto	l5605
	line	254
	
l934:	
;keyboard_and_mouse_in_a_glove.c: 254: else if( RD5!=0){
	btfss	(69/8),(69)&7
	goto	u6971
	goto	u6970
u6971:
	goto	l960
u6970:
	line	255
	
l5443:	
;keyboard_and_mouse_in_a_glove.c: 255: nop=1;
	bsf	(_nop/8),(_nop)&7
	line	258
	
l5445:	
;keyboard_and_mouse_in_a_glove.c: 258: _delay((unsigned long)((50)*(4000000/4000.0))); while(RD7!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RD7!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RD7!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RD7!=0)
	opt asmopt_off
movlw	65
movwf	((??_main+0)+0+1),f
	movlw	238
movwf	((??_main+0)+0),f
u7777:
	decfsz	((??_main+0)+0),f
	goto	u7777
	decfsz	((??_main+0)+0+1),f
	goto	u7777
	clrwdt
opt asmopt_on

	goto	l961
	
l962:	
	
l961:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u6981
	goto	u6980
u6981:
	goto	l961
u6980:
	goto	l5447
	
l963:	
	
l5447:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u7787:
	decfsz	((??_main+0)+0),f
	goto	u7787
	decfsz	((??_main+0)+0+1),f
	goto	u7787
opt asmopt_on

	goto	l964
	
l965:	
	
l964:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u6991
	goto	u6990
u6991:
	goto	l964
u6990:
	goto	l5449
	
l966:	
	
l5449:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u7797:
	decfsz	((??_main+0)+0),f
	goto	u7797
	decfsz	((??_main+0)+0+1),f
	goto	u7797
opt asmopt_on

	goto	l967
	
l968:	
	
l967:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u7001
	goto	u7000
u7001:
	goto	l967
u7000:
	goto	l5451
	
l969:	
	
l5451:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u7807:
	decfsz	((??_main+0)+0),f
	goto	u7807
	decfsz	((??_main+0)+0+1),f
	goto	u7807
opt asmopt_on

	goto	l970
	
l971:	
	
l970:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u7011
	goto	u7010
u7011:
	goto	l970
u7010:
	goto	l5453
	
l972:	
	line	261
	
l5453:	
;keyboard_and_mouse_in_a_glove.c: 261: if ( counter==0 ){ KeySend('T'); prevChar='T'; counter = 10; }
	movf	((_counter+1)),w
	iorwf	((_counter)),w
	skipz
	goto	u7021
	goto	u7020
u7021:
	goto	l5461
u7020:
	
l5455:	
	movlw	(054h)
	fcall	_KeySend
	
l5457:	
	movlw	(054h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l5459:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l5605
	line	262
	
l973:	
	
l5461:	
;keyboard_and_mouse_in_a_glove.c: 262: else if( prevChar=='T' ){ KeySend('^'); KeySend('U'); prevChar='U'; counter = 10; }
	movf	(_prevChar),w
	xorlw	054h
	skipz
	goto	u7031
	goto	u7030
u7031:
	goto	l5469
u7030:
	
l5463:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(055h)
	fcall	_KeySend
	
l5465:	
	movlw	(055h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l5467:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l5605
	line	263
	
l975:	
	
l5469:	
;keyboard_and_mouse_in_a_glove.c: 263: else if( prevChar=='U' ){ KeySend('^'); KeySend('V'); prevChar='V'; counter = 10; }
	movf	(_prevChar),w
	xorlw	055h
	skipz
	goto	u7041
	goto	u7040
u7041:
	goto	l5477
u7040:
	
l5471:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(056h)
	fcall	_KeySend
	
l5473:	
	movlw	(056h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l5475:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l5605
	line	264
	
l977:	
	
l5477:	
;keyboard_and_mouse_in_a_glove.c: 264: else if( prevChar=='V' ){ KeySend('^'); KeySend('8'); prevChar='8'; counter = 10; }
	movf	(_prevChar),w
	xorlw	056h
	skipz
	goto	u7051
	goto	u7050
u7051:
	goto	l5485
u7050:
	
l5479:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(038h)
	fcall	_KeySend
	
l5481:	
	movlw	(038h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l5483:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l5605
	line	265
	
l979:	
	
l5485:	
;keyboard_and_mouse_in_a_glove.c: 265: else if( prevChar=='8' ){ KeySend('^'); KeySend('T'); prevChar='T'; counter = 10; }
	movf	(_prevChar),w
	xorlw	038h
	skipz
	goto	u7061
	goto	u7060
u7061:
	goto	l5493
u7060:
	
l5487:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(054h)
	fcall	_KeySend
	
l5489:	
	movlw	(054h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l5491:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l5605
	line	266
	
l981:	
	
l5493:	
;keyboard_and_mouse_in_a_glove.c: 266: else { KeySend('T'); prevChar='T'; counter = 10; }
	movlw	(054h)
	fcall	_KeySend
	
l5495:	
	movlw	(054h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l5497:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l5605
	
l982:	
	goto	l5605
	
l980:	
	goto	l5605
	
l978:	
	goto	l5605
	
l976:	
	goto	l5605
	
l974:	
	line	267
;keyboard_and_mouse_in_a_glove.c: 267: }
	goto	l5605
	line	269
	
l960:	
;keyboard_and_mouse_in_a_glove.c: 269: else if( RB1!=0 ){
	btfss	(49/8),(49)&7
	goto	u7071
	goto	u7070
u7071:
	goto	l984
u7070:
	line	270
	
l5499:	
;keyboard_and_mouse_in_a_glove.c: 270: nop=1;
	bsf	(_nop/8),(_nop)&7
	line	273
	
l5501:	
;keyboard_and_mouse_in_a_glove.c: 273: _delay((unsigned long)((50)*(4000000/4000.0))); while(RD7!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RD7!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RD7!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RD7!=0)
	opt asmopt_off
movlw	65
movwf	((??_main+0)+0+1),f
	movlw	238
movwf	((??_main+0)+0),f
u7817:
	decfsz	((??_main+0)+0),f
	goto	u7817
	decfsz	((??_main+0)+0+1),f
	goto	u7817
	clrwdt
opt asmopt_on

	goto	l985
	
l986:	
	
l985:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u7081
	goto	u7080
u7081:
	goto	l985
u7080:
	goto	l5503
	
l987:	
	
l5503:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u7827:
	decfsz	((??_main+0)+0),f
	goto	u7827
	decfsz	((??_main+0)+0+1),f
	goto	u7827
opt asmopt_on

	goto	l988
	
l989:	
	
l988:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u7091
	goto	u7090
u7091:
	goto	l988
u7090:
	goto	l5505
	
l990:	
	
l5505:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u7837:
	decfsz	((??_main+0)+0),f
	goto	u7837
	decfsz	((??_main+0)+0+1),f
	goto	u7837
opt asmopt_on

	goto	l991
	
l992:	
	
l991:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u7101
	goto	u7100
u7101:
	goto	l991
u7100:
	goto	l5507
	
l993:	
	
l5507:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u7847:
	decfsz	((??_main+0)+0),f
	goto	u7847
	decfsz	((??_main+0)+0+1),f
	goto	u7847
opt asmopt_on

	goto	l994
	
l995:	
	
l994:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u7111
	goto	u7110
u7111:
	goto	l994
u7110:
	goto	l5509
	
l996:	
	line	276
	
l5509:	
;keyboard_and_mouse_in_a_glove.c: 276: if ( counter==0 ){ KeySend('W'); prevChar='W'; counter = 10; }
	movf	((_counter+1)),w
	iorwf	((_counter)),w
	skipz
	goto	u7121
	goto	u7120
u7121:
	goto	l5517
u7120:
	
l5511:	
	movlw	(057h)
	fcall	_KeySend
	
l5513:	
	movlw	(057h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l5515:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l5605
	line	277
	
l997:	
	
l5517:	
;keyboard_and_mouse_in_a_glove.c: 277: else if( prevChar=='W' ){ KeySend('^'); KeySend('X'); prevChar='X'; counter = 10; }
	movf	(_prevChar),w
	xorlw	057h
	skipz
	goto	u7131
	goto	u7130
u7131:
	goto	l5525
u7130:
	
l5519:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(058h)
	fcall	_KeySend
	
l5521:	
	movlw	(058h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l5523:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l5605
	line	278
	
l999:	
	
l5525:	
;keyboard_and_mouse_in_a_glove.c: 278: else if( prevChar=='X' ){ KeySend('^'); KeySend('Y'); prevChar='Y'; counter = 10; }
	movf	(_prevChar),w
	xorlw	058h
	skipz
	goto	u7141
	goto	u7140
u7141:
	goto	l5533
u7140:
	
l5527:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(059h)
	fcall	_KeySend
	
l5529:	
	movlw	(059h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l5531:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l5605
	line	279
	
l1001:	
	
l5533:	
;keyboard_and_mouse_in_a_glove.c: 279: else if( prevChar=='Y' ){ KeySend('^'); KeySend('Z'); prevChar='Z'; counter = 10; }
	movf	(_prevChar),w
	xorlw	059h
	skipz
	goto	u7151
	goto	u7150
u7151:
	goto	l5541
u7150:
	
l5535:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(05Ah)
	fcall	_KeySend
	
l5537:	
	movlw	(05Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l5539:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l5605
	line	280
	
l1003:	
	
l5541:	
;keyboard_and_mouse_in_a_glove.c: 280: else if( prevChar=='Z' ){ KeySend('^'); KeySend('9'); prevChar='9'; counter = 10; }
	movf	(_prevChar),w
	xorlw	05Ah
	skipz
	goto	u7161
	goto	u7160
u7161:
	goto	l5549
u7160:
	
l5543:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(039h)
	fcall	_KeySend
	
l5545:	
	movlw	(039h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l5547:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l5605
	line	281
	
l1005:	
	
l5549:	
;keyboard_and_mouse_in_a_glove.c: 281: else if( prevChar=='9' ){ KeySend('^'); KeySend('W'); prevChar='W'; counter = 10; }
	movf	(_prevChar),w
	xorlw	039h
	skipz
	goto	u7171
	goto	u7170
u7171:
	goto	l5557
u7170:
	
l5551:	
	movlw	(05Eh)
	fcall	_KeySend
	movlw	(057h)
	fcall	_KeySend
	
l5553:	
	movlw	(057h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l5555:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l5605
	line	282
	
l1007:	
	
l5557:	
;keyboard_and_mouse_in_a_glove.c: 282: else { KeySend('W'); prevChar='W'; counter = 10; }
	movlw	(057h)
	fcall	_KeySend
	
l5559:	
	movlw	(057h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l5561:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l5605
	
l1008:	
	goto	l5605
	
l1006:	
	goto	l5605
	
l1004:	
	goto	l5605
	
l1002:	
	goto	l5605
	
l1000:	
	goto	l5605
	
l998:	
	line	283
;keyboard_and_mouse_in_a_glove.c: 283: }
	goto	l5605
	line	284
	
l984:	
;keyboard_and_mouse_in_a_glove.c: 284: else if( RC5!=0 ){
	btfss	(61/8),(61)&7
	goto	u7181
	goto	u7180
u7181:
	goto	l1010
u7180:
	line	287
	
l5563:	
;keyboard_and_mouse_in_a_glove.c: 287: _delay((unsigned long)((50)*(4000000/4000.0))); while(RD7!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RD7!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RD7!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RD7!=0)
	opt asmopt_off
movlw	65
movwf	((??_main+0)+0+1),f
	movlw	238
movwf	((??_main+0)+0),f
u7857:
	decfsz	((??_main+0)+0),f
	goto	u7857
	decfsz	((??_main+0)+0+1),f
	goto	u7857
	clrwdt
opt asmopt_on

	goto	l1011
	
l1012:	
	
l1011:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u7191
	goto	u7190
u7191:
	goto	l1011
u7190:
	goto	l5565
	
l1013:	
	
l5565:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u7867:
	decfsz	((??_main+0)+0),f
	goto	u7867
	decfsz	((??_main+0)+0+1),f
	goto	u7867
opt asmopt_on

	goto	l1014
	
l1015:	
	
l1014:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u7201
	goto	u7200
u7201:
	goto	l1014
u7200:
	goto	l5567
	
l1016:	
	
l5567:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u7877:
	decfsz	((??_main+0)+0),f
	goto	u7877
	decfsz	((??_main+0)+0+1),f
	goto	u7877
opt asmopt_on

	goto	l1017
	
l1018:	
	
l1017:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u7211
	goto	u7210
u7211:
	goto	l1017
u7210:
	goto	l5569
	
l1019:	
	
l5569:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u7887:
	decfsz	((??_main+0)+0),f
	goto	u7887
	decfsz	((??_main+0)+0+1),f
	goto	u7887
opt asmopt_on

	goto	l1020
	
l1021:	
	
l1020:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u7221
	goto	u7220
u7221:
	goto	l1020
u7220:
	
l1022:	
	line	289
;keyboard_and_mouse_in_a_glove.c: 289: MOUSE_SELECT = 1;
	bsf	(_MOUSE_SELECT/8),(_MOUSE_SELECT)&7
	line	291
;keyboard_and_mouse_in_a_glove.c: 291: }
	goto	l5605
	line	292
	
l1010:	
;keyboard_and_mouse_in_a_glove.c: 292: else if( RD6!=0 ){
	btfss	(70/8),(70)&7
	goto	u7231
	goto	u7230
u7231:
	goto	l1024
u7230:
	line	293
	
l5571:	
;keyboard_and_mouse_in_a_glove.c: 293: nop=1;
	bsf	(_nop/8),(_nop)&7
	line	296
	
l5573:	
;keyboard_and_mouse_in_a_glove.c: 296: _delay((unsigned long)((50)*(4000000/4000.0))); while(RD7!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RD7!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RD7!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RD7!=0)
	opt asmopt_off
movlw	65
movwf	((??_main+0)+0+1),f
	movlw	238
movwf	((??_main+0)+0),f
u7897:
	decfsz	((??_main+0)+0),f
	goto	u7897
	decfsz	((??_main+0)+0+1),f
	goto	u7897
	clrwdt
opt asmopt_on

	goto	l1025
	
l1026:	
	
l1025:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u7241
	goto	u7240
u7241:
	goto	l1025
u7240:
	goto	l5575
	
l1027:	
	
l5575:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u7907:
	decfsz	((??_main+0)+0),f
	goto	u7907
	decfsz	((??_main+0)+0+1),f
	goto	u7907
opt asmopt_on

	goto	l1028
	
l1029:	
	
l1028:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u7251
	goto	u7250
u7251:
	goto	l1028
u7250:
	goto	l5577
	
l1030:	
	
l5577:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u7917:
	decfsz	((??_main+0)+0),f
	goto	u7917
	decfsz	((??_main+0)+0+1),f
	goto	u7917
opt asmopt_on

	goto	l1031
	
l1032:	
	
l1031:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u7261
	goto	u7260
u7261:
	goto	l1031
u7260:
	goto	l5579
	
l1033:	
	
l5579:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u7927:
	decfsz	((??_main+0)+0),f
	goto	u7927
	decfsz	((??_main+0)+0+1),f
	goto	u7927
opt asmopt_on

	goto	l1034
	
l1035:	
	
l1034:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u7271
	goto	u7270
u7271:
	goto	l1034
u7270:
	goto	l5581
	
l1036:	
	line	299
	
l5581:	
;keyboard_and_mouse_in_a_glove.c: 299: if ( counter==0 ){ KeySend('0'); prevChar='0'; counter = 10; }
	movf	((_counter+1)),w
	iorwf	((_counter)),w
	skipz
	goto	u7281
	goto	u7280
u7281:
	goto	l5605
u7280:
	
l5583:	
	movlw	(030h)
	fcall	_KeySend
	
l5585:	
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l5587:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l5605
	
l1037:	
	line	300
;keyboard_and_mouse_in_a_glove.c: 300: }
	goto	l5605
	line	301
	
l1024:	
;keyboard_and_mouse_in_a_glove.c: 301: else if( RB5!=0 ){
	btfss	(53/8),(53)&7
	goto	u7291
	goto	u7290
u7291:
	goto	l5605
u7290:
	line	303
	
l5589:	
;keyboard_and_mouse_in_a_glove.c: 303: _delay((unsigned long)((50)*(4000000/4000.0))); while(RD7!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RD7!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RD7!=0); _delay((unsigned long)((30)*(4000000/4000.0))); while(RD7!=0)
	opt asmopt_off
movlw	65
movwf	((??_main+0)+0+1),f
	movlw	238
movwf	((??_main+0)+0),f
u7937:
	decfsz	((??_main+0)+0),f
	goto	u7937
	decfsz	((??_main+0)+0+1),f
	goto	u7937
	clrwdt
opt asmopt_on

	goto	l1040
	
l1041:	
	
l1040:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u7301
	goto	u7300
u7301:
	goto	l1040
u7300:
	goto	l5591
	
l1042:	
	
l5591:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u7947:
	decfsz	((??_main+0)+0),f
	goto	u7947
	decfsz	((??_main+0)+0+1),f
	goto	u7947
opt asmopt_on

	goto	l1043
	
l1044:	
	
l1043:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u7311
	goto	u7310
u7311:
	goto	l1043
u7310:
	goto	l5593
	
l1045:	
	
l5593:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u7957:
	decfsz	((??_main+0)+0),f
	goto	u7957
	decfsz	((??_main+0)+0+1),f
	goto	u7957
opt asmopt_on

	goto	l1046
	
l1047:	
	
l1046:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u7321
	goto	u7320
u7321:
	goto	l1046
u7320:
	goto	l5595
	
l1048:	
	
l5595:	
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u7967:
	decfsz	((??_main+0)+0),f
	goto	u7967
	decfsz	((??_main+0)+0+1),f
	goto	u7967
opt asmopt_on

	goto	l1049
	
l1050:	
	
l1049:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u7331
	goto	u7330
u7331:
	goto	l1049
u7330:
	goto	l5597
	
l1051:	
	line	306
	
l5597:	
;keyboard_and_mouse_in_a_glove.c: 306: if ( counter==0 ){ KeySend('^'); prevChar='^'; counter = 10; }
	movf	((_counter+1)),w
	iorwf	((_counter)),w
	skipz
	goto	u7341
	goto	u7340
u7341:
	goto	l5605
u7340:
	
l5599:	
	movlw	(05Eh)
	fcall	_KeySend
	
l5601:	
	movlw	(05Eh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_prevChar)
	
l5603:	
	movlw	low(0Ah)
	movwf	(_counter)
	movlw	high(0Ah)
	movwf	((_counter))+1
	goto	l5605
	
l1052:	
	goto	l5605
	line	307
	
l1039:	
	goto	l5605
	line	308
	
l1038:	
	goto	l5605
	
l1023:	
	goto	l5605
	
l1009:	
	goto	l5605
	
l983:	
	goto	l5605
	
l959:	
	goto	l5605
	
l933:	
	goto	l5605
	
l909:	
	goto	l5605
	
l885:	
	goto	l5605
	
l861:	
	goto	l5605
	
l837:	
	goto	l5605
	
l813:	
	goto	l5605
	
l798:	
	line	309
	
l5605:	
;keyboard_and_mouse_in_a_glove.c: 307: }
;keyboard_and_mouse_in_a_glove.c: 308: }
;keyboard_and_mouse_in_a_glove.c: 309: nop=1;
	bsf	(_nop/8),(_nop)&7
	goto	l5013
	line	310
	
l1053:	
	line	93
	goto	l5013
	
l1054:	
	line	311
	
l1055:	
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
;;		line 434 in file "F:\ELECTRONIC\2015\Projects\40. Mouse with keyboard\PGM\Keyboard and Mouse in a glove\ver2\keyboard_and_mouse_in_a_glove.c"
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
	file	"F:\ELECTRONIC\2015\Projects\40. Mouse with keyboard\PGM\Keyboard and Mouse in a glove\ver2\keyboard_and_mouse_in_a_glove.c"
	line	434
	global	__size_of_a2d_read
	__size_of_a2d_read	equ	__end_of_a2d_read-_a2d_read
	
_a2d_read:	
	opt	stack 5
; Regs used in _a2d_read: [wreg+status,2+status,0+pclath+cstack]
	line	435
	
l4943:	
;keyboard_and_mouse_in_a_glove.c: 435: read_a2d_value(0);
	movlw	(0)
	fcall	_read_a2d_value
	line	436
;keyboard_and_mouse_in_a_glove.c: 436: vblAccX = read_a2d_value(0);
	movlw	(0)
	fcall	_read_a2d_value
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_read_a2d_value)),w
	movwf	(_vblAccX)
	movf	(1+(?_read_a2d_value)),w
	movwf	(_vblAccX+1)
	clrf	(_vblAccX+2)
	line	437
;keyboard_and_mouse_in_a_glove.c: 437: read_a2d_value(1);
	movlw	(01h)
	fcall	_read_a2d_value
	line	438
;keyboard_and_mouse_in_a_glove.c: 438: vblAccY = read_a2d_value(1);
	movlw	(01h)
	fcall	_read_a2d_value
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_read_a2d_value)),w
	movwf	(_vblAccY)
	movf	(1+(?_read_a2d_value)),w
	movwf	(_vblAccY+1)
	clrf	(_vblAccY+2)
	line	440
	
l4945:	
;keyboard_and_mouse_in_a_glove.c: 440: if(vblAccX > 402) vblAccX = 402;
	movlw	0
	subwf	(_vblAccX+2),w
	skipz
	goto	u5985
	movlw	01h
	subwf	(_vblAccX+1),w
	skipz
	goto	u5985
	movlw	093h
	subwf	(_vblAccX),w
u5985:
	skipc
	goto	u5981
	goto	u5980
u5981:
	goto	l4949
u5980:
	
l4947:	
	movlw	092h
	movwf	(_vblAccX)
	movlw	01h
	movwf	(_vblAccX+1)
	movlw	0
	movwf	(_vblAccX+2)
	goto	l1155
	line	441
	
l1154:	
	
l4949:	
;keyboard_and_mouse_in_a_glove.c: 441: else if ( vblAccX < 262) vblAccX = 262;
	movlw	0
	subwf	(_vblAccX+2),w
	skipz
	goto	u5995
	movlw	01h
	subwf	(_vblAccX+1),w
	skipz
	goto	u5995
	movlw	06h
	subwf	(_vblAccX),w
u5995:
	skipnc
	goto	u5991
	goto	u5990
u5991:
	goto	l1155
u5990:
	
l4951:	
	movlw	06h
	movwf	(_vblAccX)
	movlw	01h
	movwf	(_vblAccX+1)
	movlw	0
	movwf	(_vblAccX+2)
	goto	l1155
	
l1156:	
	line	442
	
l1155:	
;keyboard_and_mouse_in_a_glove.c: 442: if(vblAccY > 406) vblAccY = 406;
	movlw	0
	subwf	(_vblAccY+2),w
	skipz
	goto	u6005
	movlw	01h
	subwf	(_vblAccY+1),w
	skipz
	goto	u6005
	movlw	097h
	subwf	(_vblAccY),w
u6005:
	skipc
	goto	u6001
	goto	u6000
u6001:
	goto	l4955
u6000:
	
l4953:	
	movlw	096h
	movwf	(_vblAccY)
	movlw	01h
	movwf	(_vblAccY+1)
	movlw	0
	movwf	(_vblAccY+2)
	goto	l1160
	line	443
	
l1157:	
	
l4955:	
;keyboard_and_mouse_in_a_glove.c: 443: else if ( vblAccY < 266) vblAccY = 266;
	movlw	0
	subwf	(_vblAccY+2),w
	skipz
	goto	u6015
	movlw	01h
	subwf	(_vblAccY+1),w
	skipz
	goto	u6015
	movlw	0Ah
	subwf	(_vblAccY),w
u6015:
	skipnc
	goto	u6011
	goto	u6010
u6011:
	goto	l1160
u6010:
	
l4957:	
	movlw	0Ah
	movwf	(_vblAccY)
	movlw	01h
	movwf	(_vblAccY+1)
	movlw	0
	movwf	(_vblAccY+2)
	goto	l1160
	
l1159:	
	goto	l1160
	line	444
	
l1158:	
	
l1160:	
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
;;		line 448 in file "F:\ELECTRONIC\2015\Projects\40. Mouse with keyboard\PGM\Keyboard and Mouse in a glove\ver2\keyboard_and_mouse_in_a_glove.c"
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
	file	"F:\ELECTRONIC\2015\Projects\40. Mouse with keyboard\PGM\Keyboard and Mouse in a glove\ver2\keyboard_and_mouse_in_a_glove.c"
	line	448
	global	__size_of_read_a2d_value
	__size_of_read_a2d_value	equ	__end_of_read_a2d_value-_read_a2d_value
	
_read_a2d_value:	
	opt	stack 5
; Regs used in _read_a2d_value: [wreg+status,2+status,0]
;read_a2d_value@channel stored from wreg
	line	450
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(read_a2d_value@channel)
	
l4925:	
;keyboard_and_mouse_in_a_glove.c: 449: unsigned int a2d_value;
;keyboard_and_mouse_in_a_glove.c: 450: channel = channel << 3;
	movf	(read_a2d_value@channel),w
	movwf	(??_read_a2d_value+0)+0
	movlw	(03h)-1
u5965:
	clrc
	rlf	(??_read_a2d_value+0)+0,f
	addlw	-1
	skipz
	goto	u5965
	clrc
	rlf	(??_read_a2d_value+0)+0,w
	movwf	(??_read_a2d_value+1)+0
	movf	(??_read_a2d_value+1)+0,w
	movwf	(read_a2d_value@channel)
	line	451
	
l4927:	
;keyboard_and_mouse_in_a_glove.c: 451: ADCON0 = ADCON0 & 0b11000111;
	movf	(31),w
	andlw	0C7h
	movwf	(31)	;volatile
	line	452
	
l4929:	
;keyboard_and_mouse_in_a_glove.c: 452: ADCON0 = ADCON0 | channel;
	movf	(31),w	;volatile
	iorwf	(read_a2d_value@channel),w
	movwf	(31)	;volatile
	line	453
	
l4931:	
;keyboard_and_mouse_in_a_glove.c: 453: ADON = 1;
	bsf	(248/8),(248)&7
	line	454
	
l4933:	
;keyboard_and_mouse_in_a_glove.c: 454: _delay(50);
	opt asmopt_off
movlw	16
movwf	(??_read_a2d_value+0)+0,f
u7977:
decfsz	(??_read_a2d_value+0)+0,f
	goto	u7977
	clrwdt
opt asmopt_on

	line	455
	
l4935:	
;keyboard_and_mouse_in_a_glove.c: 455: GO = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(250/8),(250)&7
	line	456
;keyboard_and_mouse_in_a_glove.c: 456: while( GO == 1 );
	goto	l1163
	
l1164:	
	
l1163:	
	btfsc	(250/8),(250)&7
	goto	u5971
	goto	u5970
u5971:
	goto	l1163
u5970:
	goto	l4937
	
l1165:	
	line	460
	
l4937:	
;keyboard_and_mouse_in_a_glove.c: 457: {
;keyboard_and_mouse_in_a_glove.c: 459: }
;keyboard_and_mouse_in_a_glove.c: 460: a2d_value = ADRESH;
	movf	(30),w	;volatile
	movwf	(??_read_a2d_value+0)+0
	clrf	(??_read_a2d_value+0)+0+1
	movf	0+(??_read_a2d_value+0)+0,w
	movwf	(read_a2d_value@a2d_value)
	movf	1+(??_read_a2d_value+0)+0,w
	movwf	(read_a2d_value@a2d_value+1)
	line	461
;keyboard_and_mouse_in_a_glove.c: 461: a2d_value = a2d_value << 8;
	movf	(read_a2d_value@a2d_value),w
	movwf	(??_read_a2d_value+0)+0+1
	clrf	(??_read_a2d_value+0)+0
	movf	0+(??_read_a2d_value+0)+0,w
	movwf	(read_a2d_value@a2d_value)
	movf	1+(??_read_a2d_value+0)+0,w
	movwf	(read_a2d_value@a2d_value+1)
	line	462
;keyboard_and_mouse_in_a_glove.c: 462: a2d_value = a2d_value + ADRESL;
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
	line	463
	
l4939:	
;keyboard_and_mouse_in_a_glove.c: 463: return a2d_value;
	movf	(read_a2d_value@a2d_value+1),w
	clrf	(?_read_a2d_value+1)
	addwf	(?_read_a2d_value+1)
	movf	(read_a2d_value@a2d_value),w
	clrf	(?_read_a2d_value)
	addwf	(?_read_a2d_value)

	goto	l1166
	
l4941:	
	line	464
	
l1166:	
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
	
l4905:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ltmod@divisor+2),w
	iorwf	(___ltmod@divisor+1),w
	iorwf	(___ltmod@divisor),w
	skipnz
	goto	u5901
	goto	u5900
u5901:
	goto	l4921
u5900:
	line	9
	
l4907:	
	clrf	(___ltmod@counter)
	bsf	status,0
	rlf	(___ltmod@counter),f
	line	10
	goto	l4911
	
l2167:	
	line	11
	
l4909:	
	movlw	01h
u5915:
	clrc
	rlf	(___ltmod@divisor),f
	rlf	(___ltmod@divisor+1),f
	rlf	(___ltmod@divisor+2),f
	addlw	-1
	skipz
	goto	u5915
	line	12
	movlw	(01h)
	movwf	(??___ltmod+0)+0
	movf	(??___ltmod+0)+0,w
	addwf	(___ltmod@counter),f
	goto	l4911
	line	13
	
l2166:	
	line	10
	
l4911:	
	btfss	(___ltmod@divisor+2),(23)&7
	goto	u5921
	goto	u5920
u5921:
	goto	l4909
u5920:
	goto	l4913
	
l2168:	
	goto	l4913
	line	14
	
l2169:	
	line	15
	
l4913:	
	movf	(___ltmod@divisor+2),w
	subwf	(___ltmod@dividend+2),w
	skipz
	goto	u5935
	movf	(___ltmod@divisor+1),w
	subwf	(___ltmod@dividend+1),w
	skipz
	goto	u5935
	movf	(___ltmod@divisor),w
	subwf	(___ltmod@dividend),w
u5935:
	skipc
	goto	u5931
	goto	u5930
u5931:
	goto	l4917
u5930:
	line	16
	
l4915:	
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
	goto	l4917
	
l2170:	
	line	17
	
l4917:	
	movlw	01h
u5945:
	clrc
	rrf	(___ltmod@divisor+2),f
	rrf	(___ltmod@divisor+1),f
	rrf	(___ltmod@divisor),f
	addlw	-1
	skipz
	goto	u5945

	line	18
	
l4919:	
	movlw	low(01h)
	subwf	(___ltmod@counter),f
	btfss	status,2
	goto	u5951
	goto	u5950
u5951:
	goto	l4913
u5950:
	goto	l4921
	
l2171:	
	goto	l4921
	line	19
	
l2165:	
	line	20
	
l4921:	
	movf	(___ltmod@dividend),w
	movwf	(?___ltmod)
	movf	(___ltmod@dividend+1),w
	movwf	(?___ltmod+1)
	movf	(___ltmod@dividend+2),w
	movwf	(?___ltmod+2)
	goto	l2172
	
l4923:	
	line	21
	
l2172:	
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
	
l4881:	
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
	goto	u5831
	goto	u5830
u5831:
	goto	l4901
u5830:
	line	11
	
l4883:	
	clrf	(___ltdiv@counter)
	bsf	status,0
	rlf	(___ltdiv@counter),f
	line	12
	goto	l4887
	
l2157:	
	line	13
	
l4885:	
	movlw	01h
u5845:
	clrc
	rlf	(___ltdiv@divisor),f
	rlf	(___ltdiv@divisor+1),f
	rlf	(___ltdiv@divisor+2),f
	addlw	-1
	skipz
	goto	u5845
	line	14
	movlw	(01h)
	movwf	(??___ltdiv+0)+0
	movf	(??___ltdiv+0)+0,w
	addwf	(___ltdiv@counter),f
	goto	l4887
	line	15
	
l2156:	
	line	12
	
l4887:	
	btfss	(___ltdiv@divisor+2),(23)&7
	goto	u5851
	goto	u5850
u5851:
	goto	l4885
u5850:
	goto	l4889
	
l2158:	
	goto	l4889
	line	16
	
l2159:	
	line	17
	
l4889:	
	movlw	01h
u5865:
	clrc
	rlf	(___ltdiv@quotient),f
	rlf	(___ltdiv@quotient+1),f
	rlf	(___ltdiv@quotient+2),f
	addlw	-1
	skipz
	goto	u5865
	line	18
	
l4891:	
	movf	(___ltdiv@divisor+2),w
	subwf	(___ltdiv@dividend+2),w
	skipz
	goto	u5875
	movf	(___ltdiv@divisor+1),w
	subwf	(___ltdiv@dividend+1),w
	skipz
	goto	u5875
	movf	(___ltdiv@divisor),w
	subwf	(___ltdiv@dividend),w
u5875:
	skipc
	goto	u5871
	goto	u5870
u5871:
	goto	l4897
u5870:
	line	19
	
l4893:	
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
	
l4895:	
	bsf	(___ltdiv@quotient)+(0/8),(0)&7
	goto	l4897
	line	21
	
l2160:	
	line	22
	
l4897:	
	movlw	01h
u5885:
	clrc
	rrf	(___ltdiv@divisor+2),f
	rrf	(___ltdiv@divisor+1),f
	rrf	(___ltdiv@divisor),f
	addlw	-1
	skipz
	goto	u5885

	line	23
	
l4899:	
	movlw	low(01h)
	subwf	(___ltdiv@counter),f
	btfss	status,2
	goto	u5891
	goto	u5890
u5891:
	goto	l4889
u5890:
	goto	l4901
	
l2161:	
	goto	l4901
	line	24
	
l2155:	
	line	25
	
l4901:	
	movf	(___ltdiv@quotient),w
	movwf	(?___ltdiv)
	movf	(___ltdiv@quotient+1),w
	movwf	(?___ltdiv+1)
	movf	(___ltdiv@quotient+2),w
	movwf	(?___ltdiv+2)
	goto	l2162
	
l4903:	
	line	26
	
l2162:	
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
;;		line 389 in file "F:\ELECTRONIC\2015\Projects\40. Mouse with keyboard\PGM\Keyboard and Mouse in a glove\ver2\keyboard_and_mouse_in_a_glove.c"
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
	file	"F:\ELECTRONIC\2015\Projects\40. Mouse with keyboard\PGM\Keyboard and Mouse in a glove\ver2\keyboard_and_mouse_in_a_glove.c"
	line	389
	global	__size_of_MouseSendRC
	__size_of_MouseSendRC	equ	__end_of_MouseSendRC-_MouseSendRC
	
_MouseSendRC:	
	opt	stack 6
; Regs used in _MouseSendRC: [wreg]
	line	390
	
l4867:	
;keyboard_and_mouse_in_a_glove.c: 390: while(!TXIF);
	goto	l1091
	
l1092:	
	
l1091:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7
	goto	u5771
	goto	u5770
u5771:
	goto	l1091
u5770:
	goto	l4869
	
l1093:	
	line	391
	
l4869:	
;keyboard_and_mouse_in_a_glove.c: 391: TXREG = '%';
	movlw	(025h)
	movwf	(25)	;volatile
	line	392
;keyboard_and_mouse_in_a_glove.c: 392: while(!TXIF);
	goto	l1094
	
l1095:	
	
l1094:	
	btfss	(100/8),(100)&7
	goto	u5781
	goto	u5780
u5781:
	goto	l1094
u5780:
	goto	l4871
	
l1096:	
	line	393
	
l4871:	
;keyboard_and_mouse_in_a_glove.c: 393: TXREG = 'R';
	movlw	(052h)
	movwf	(25)	;volatile
	line	394
;keyboard_and_mouse_in_a_glove.c: 394: while(!TXIF);
	goto	l1097
	
l1098:	
	
l1097:	
	btfss	(100/8),(100)&7
	goto	u5791
	goto	u5790
u5791:
	goto	l1097
u5790:
	goto	l4873
	
l1099:	
	line	395
	
l4873:	
;keyboard_and_mouse_in_a_glove.c: 395: TXREG = ' ';
	movlw	(020h)
	movwf	(25)	;volatile
	line	396
;keyboard_and_mouse_in_a_glove.c: 396: while(!TXIF);
	goto	l1100
	
l1101:	
	
l1100:	
	btfss	(100/8),(100)&7
	goto	u5801
	goto	u5800
u5801:
	goto	l1100
u5800:
	goto	l4875
	
l1102:	
	line	397
	
l4875:	
;keyboard_and_mouse_in_a_glove.c: 397: TXREG = ' ';
	movlw	(020h)
	movwf	(25)	;volatile
	line	398
;keyboard_and_mouse_in_a_glove.c: 398: while(!TXIF);
	goto	l1103
	
l1104:	
	
l1103:	
	btfss	(100/8),(100)&7
	goto	u5811
	goto	u5810
u5811:
	goto	l1103
u5810:
	goto	l4877
	
l1105:	
	line	399
	
l4877:	
;keyboard_and_mouse_in_a_glove.c: 399: TXREG = ' ';
	movlw	(020h)
	movwf	(25)	;volatile
	line	400
;keyboard_and_mouse_in_a_glove.c: 400: while(!TXIF);
	goto	l1106
	
l1107:	
	
l1106:	
	btfss	(100/8),(100)&7
	goto	u5821
	goto	u5820
u5821:
	goto	l1106
u5820:
	goto	l4879
	
l1108:	
	line	401
	
l4879:	
;keyboard_and_mouse_in_a_glove.c: 401: TXREG = '?';
	movlw	(03Fh)
	movwf	(25)	;volatile
	line	402
	
l1109:	
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
;;		line 374 in file "F:\ELECTRONIC\2015\Projects\40. Mouse with keyboard\PGM\Keyboard and Mouse in a glove\ver2\keyboard_and_mouse_in_a_glove.c"
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
	file	"F:\ELECTRONIC\2015\Projects\40. Mouse with keyboard\PGM\Keyboard and Mouse in a glove\ver2\keyboard_and_mouse_in_a_glove.c"
	line	374
	global	__size_of_MouseSendLC
	__size_of_MouseSendLC	equ	__end_of_MouseSendLC-_MouseSendLC
	
_MouseSendLC:	
	opt	stack 6
; Regs used in _MouseSendLC: [wreg]
	line	375
	
l4853:	
;keyboard_and_mouse_in_a_glove.c: 375: while(!TXIF);
	goto	l1070
	
l1071:	
	
l1070:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7
	goto	u5711
	goto	u5710
u5711:
	goto	l1070
u5710:
	goto	l4855
	
l1072:	
	line	376
	
l4855:	
;keyboard_and_mouse_in_a_glove.c: 376: TXREG = '%';
	movlw	(025h)
	movwf	(25)	;volatile
	line	377
;keyboard_and_mouse_in_a_glove.c: 377: while(!TXIF);
	goto	l1073
	
l1074:	
	
l1073:	
	btfss	(100/8),(100)&7
	goto	u5721
	goto	u5720
u5721:
	goto	l1073
u5720:
	goto	l4857
	
l1075:	
	line	378
	
l4857:	
;keyboard_and_mouse_in_a_glove.c: 378: TXREG = 'L';
	movlw	(04Ch)
	movwf	(25)	;volatile
	line	379
;keyboard_and_mouse_in_a_glove.c: 379: while(!TXIF);
	goto	l1076
	
l1077:	
	
l1076:	
	btfss	(100/8),(100)&7
	goto	u5731
	goto	u5730
u5731:
	goto	l1076
u5730:
	goto	l4859
	
l1078:	
	line	380
	
l4859:	
;keyboard_and_mouse_in_a_glove.c: 380: TXREG = ' ';
	movlw	(020h)
	movwf	(25)	;volatile
	line	381
;keyboard_and_mouse_in_a_glove.c: 381: while(!TXIF);
	goto	l1079
	
l1080:	
	
l1079:	
	btfss	(100/8),(100)&7
	goto	u5741
	goto	u5740
u5741:
	goto	l1079
u5740:
	goto	l4861
	
l1081:	
	line	382
	
l4861:	
;keyboard_and_mouse_in_a_glove.c: 382: TXREG = ' ';
	movlw	(020h)
	movwf	(25)	;volatile
	line	383
;keyboard_and_mouse_in_a_glove.c: 383: while(!TXIF);
	goto	l1082
	
l1083:	
	
l1082:	
	btfss	(100/8),(100)&7
	goto	u5751
	goto	u5750
u5751:
	goto	l1082
u5750:
	goto	l4863
	
l1084:	
	line	384
	
l4863:	
;keyboard_and_mouse_in_a_glove.c: 384: TXREG = ' ';
	movlw	(020h)
	movwf	(25)	;volatile
	line	385
;keyboard_and_mouse_in_a_glove.c: 385: while(!TXIF);
	goto	l1085
	
l1086:	
	
l1085:	
	btfss	(100/8),(100)&7
	goto	u5761
	goto	u5760
u5761:
	goto	l1085
u5760:
	goto	l4865
	
l1087:	
	line	386
	
l4865:	
;keyboard_and_mouse_in_a_glove.c: 386: TXREG = '?';
	movlw	(03Fh)
	movwf	(25)	;volatile
	line	387
	
l1088:	
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
;;		line 419 in file "F:\ELECTRONIC\2015\Projects\40. Mouse with keyboard\PGM\Keyboard and Mouse in a glove\ver2\keyboard_and_mouse_in_a_glove.c"
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
	file	"F:\ELECTRONIC\2015\Projects\40. Mouse with keyboard\PGM\Keyboard and Mouse in a glove\ver2\keyboard_and_mouse_in_a_glove.c"
	line	419
	global	__size_of_KeySend
	__size_of_KeySend	equ	__end_of_KeySend-_KeySend
	
_KeySend:	
	opt	stack 6
; Regs used in _KeySend: [wreg]
;KeySend@key stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(KeySend@key)
	line	420
	
l4839:	
;keyboard_and_mouse_in_a_glove.c: 420: while(!TXIF);
	goto	l1133
	
l1134:	
	
l1133:	
	btfss	(100/8),(100)&7
	goto	u5651
	goto	u5650
u5651:
	goto	l1133
u5650:
	goto	l4841
	
l1135:	
	line	421
	
l4841:	
;keyboard_and_mouse_in_a_glove.c: 421: TXREG = '%';
	movlw	(025h)
	movwf	(25)	;volatile
	line	422
;keyboard_and_mouse_in_a_glove.c: 422: while(!TXIF);
	goto	l1136
	
l1137:	
	
l1136:	
	btfss	(100/8),(100)&7
	goto	u5661
	goto	u5660
u5661:
	goto	l1136
u5660:
	goto	l4843
	
l1138:	
	line	423
	
l4843:	
;keyboard_and_mouse_in_a_glove.c: 423: TXREG = 'K';
	movlw	(04Bh)
	movwf	(25)	;volatile
	line	424
;keyboard_and_mouse_in_a_glove.c: 424: while(!TXIF);
	goto	l1139
	
l1140:	
	
l1139:	
	btfss	(100/8),(100)&7
	goto	u5671
	goto	u5670
u5671:
	goto	l1139
u5670:
	goto	l4845
	
l1141:	
	line	425
	
l4845:	
;keyboard_and_mouse_in_a_glove.c: 425: TXREG = key;
	movf	(KeySend@key),w
	movwf	(25)	;volatile
	line	426
;keyboard_and_mouse_in_a_glove.c: 426: while(!TXIF);
	goto	l1142
	
l1143:	
	
l1142:	
	btfss	(100/8),(100)&7
	goto	u5681
	goto	u5680
u5681:
	goto	l1142
u5680:
	goto	l4847
	
l1144:	
	line	427
	
l4847:	
;keyboard_and_mouse_in_a_glove.c: 427: TXREG = ' ';
	movlw	(020h)
	movwf	(25)	;volatile
	line	428
;keyboard_and_mouse_in_a_glove.c: 428: while(!TXIF);
	goto	l1145
	
l1146:	
	
l1145:	
	btfss	(100/8),(100)&7
	goto	u5691
	goto	u5690
u5691:
	goto	l1145
u5690:
	goto	l4849
	
l1147:	
	line	429
	
l4849:	
;keyboard_and_mouse_in_a_glove.c: 429: TXREG = ' ';
	movlw	(020h)
	movwf	(25)	;volatile
	line	430
;keyboard_and_mouse_in_a_glove.c: 430: while(!TXIF);
	goto	l1148
	
l1149:	
	
l1148:	
	btfss	(100/8),(100)&7
	goto	u5701
	goto	u5700
u5701:
	goto	l1148
u5700:
	goto	l4851
	
l1150:	
	line	431
	
l4851:	
;keyboard_and_mouse_in_a_glove.c: 431: TXREG = '?';
	movlw	(03Fh)
	movwf	(25)	;volatile
	line	432
	
l1151:	
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
;;		line 346 in file "F:\ELECTRONIC\2015\Projects\40. Mouse with keyboard\PGM\Keyboard and Mouse in a glove\ver2\keyboard_and_mouse_in_a_glove.c"
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
	file	"F:\ELECTRONIC\2015\Projects\40. Mouse with keyboard\PGM\Keyboard and Mouse in a glove\ver2\keyboard_and_mouse_in_a_glove.c"
	line	346
	global	__size_of_InterruptEn
	__size_of_InterruptEn	equ	__end_of_InterruptEn-_InterruptEn
	
_InterruptEn:	
	opt	stack 6
; Regs used in _InterruptEn: []
	line	348
	
l4837:	
;keyboard_and_mouse_in_a_glove.c: 348: RBIE = 0;
	bcf	(91/8),(91)&7
	line	349
;keyboard_and_mouse_in_a_glove.c: 349: INTE = 0;
	bcf	(92/8),(92)&7
	line	351
;keyboard_and_mouse_in_a_glove.c: 351: PSPIE = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1127/8)^080h,(1127)&7
	line	352
;keyboard_and_mouse_in_a_glove.c: 352: ADIE = 0;
	bcf	(1126/8)^080h,(1126)&7
	line	354
;keyboard_and_mouse_in_a_glove.c: 354: TXIE = 0;
	bcf	(1124/8)^080h,(1124)&7
	line	355
;keyboard_and_mouse_in_a_glove.c: 355: RCIE = 0;
	bcf	(1125/8)^080h,(1125)&7
	line	357
;keyboard_and_mouse_in_a_glove.c: 357: SSPIE = 0;
	bcf	(1123/8)^080h,(1123)&7
	line	358
;keyboard_and_mouse_in_a_glove.c: 358: CCP1IE = 0;
	bcf	(1122/8)^080h,(1122)&7
	line	360
;keyboard_and_mouse_in_a_glove.c: 360: TMR1IE = 1;
	bsf	(1120/8)^080h,(1120)&7
	line	361
;keyboard_and_mouse_in_a_glove.c: 361: TMR2IE = 0;
	bcf	(1121/8)^080h,(1121)&7
	line	362
;keyboard_and_mouse_in_a_glove.c: 362: T0IE = 0;
	bcf	(93/8),(93)&7
	line	364
;keyboard_and_mouse_in_a_glove.c: 364: EEIE = 0;
	bcf	(1132/8)^080h,(1132)&7
	line	365
;keyboard_and_mouse_in_a_glove.c: 365: BCLIE = 0;
	bcf	(1131/8)^080h,(1131)&7
	line	366
;keyboard_and_mouse_in_a_glove.c: 366: CCP2IE = 0;
	bcf	(1128/8)^080h,(1128)&7
	line	369
;keyboard_and_mouse_in_a_glove.c: 369: GIE = 1;
	bsf	(95/8),(95)&7
	line	370
;keyboard_and_mouse_in_a_glove.c: 370: PEIE = 1;
	bsf	(94/8),(94)&7
	line	372
	
l1067:	
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
;;		line 314 in file "F:\ELECTRONIC\2015\Projects\40. Mouse with keyboard\PGM\Keyboard and Mouse in a glove\ver2\keyboard_and_mouse_in_a_glove.c"
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
	file	"F:\ELECTRONIC\2015\Projects\40. Mouse with keyboard\PGM\Keyboard and Mouse in a glove\ver2\keyboard_and_mouse_in_a_glove.c"
	line	314
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
	line	316
	
i1l4057:	
;keyboard_and_mouse_in_a_glove.c: 316: if(TMR1IF==1){
	btfss	(96/8),(96)&7
	goto	u408_21
	goto	u408_20
u408_21:
	goto	i1l1064
u408_20:
	line	321
	
i1l4059:	
;keyboard_and_mouse_in_a_glove.c: 321: if( counter>0 ) counter--;
	movf	(_counter+1),w
	iorwf	(_counter),w
	skipnz
	goto	u409_21
	goto	u409_20
u409_21:
	goto	i1l4063
u409_20:
	
i1l4061:	
	movlw	low(01h)
	subwf	(_counter),f
	movlw	high(01h)
	skipc
	decf	(_counter+1),f
	subwf	(_counter+1),f
	goto	i1l4063
	
i1l1059:	
	line	322
	
i1l4063:	
;keyboard_and_mouse_in_a_glove.c: 322: msecond ++;
	movlw	(01h)
	movwf	(??_isr+0)+0
	movf	(??_isr+0)+0,w
	addwf	(_msecond),f
	line	323
	
i1l4065:	
;keyboard_and_mouse_in_a_glove.c: 323: if(msecond == 10)
	movf	(_msecond),w
	xorlw	0Ah
	skipz
	goto	u410_21
	goto	u410_20
u410_21:
	goto	i1l4087
u410_20:
	line	325
	
i1l4067:	
;keyboard_and_mouse_in_a_glove.c: 324: {
;keyboard_and_mouse_in_a_glove.c: 325: second ++;
	movlw	(01h)
	movwf	(??_isr+0)+0
	movf	(??_isr+0)+0,w
	addwf	(_second),f
	line	326
	
i1l4069:	
;keyboard_and_mouse_in_a_glove.c: 326: msecond = 0;
	clrf	(_msecond)
	line	327
	
i1l4071:	
;keyboard_and_mouse_in_a_glove.c: 327: RC0 = !RC0;
	movlw	1<<((56)&7)
	xorwf	((56)/8),f
	line	328
	
i1l4073:	
;keyboard_and_mouse_in_a_glove.c: 328: if( second == 60)
	movf	(_second),w
	xorlw	03Ch
	skipz
	goto	u411_21
	goto	u411_20
u411_21:
	goto	i1l4087
u411_20:
	line	330
	
i1l4075:	
;keyboard_and_mouse_in_a_glove.c: 329: {
;keyboard_and_mouse_in_a_glove.c: 330: minute ++;
	movlw	(01h)
	movwf	(??_isr+0)+0
	movf	(??_isr+0)+0,w
	addwf	(_minute),f
	line	331
	
i1l4077:	
;keyboard_and_mouse_in_a_glove.c: 331: second = 0;
	clrf	(_second)
	line	332
	
i1l4079:	
;keyboard_and_mouse_in_a_glove.c: 332: if( minute == 60)
	movf	(_minute),w
	xorlw	03Ch
	skipz
	goto	u412_21
	goto	u412_20
u412_21:
	goto	i1l4087
u412_20:
	line	334
	
i1l4081:	
;keyboard_and_mouse_in_a_glove.c: 333: {
;keyboard_and_mouse_in_a_glove.c: 334: minute = 0;
	clrf	(_minute)
	line	335
	
i1l4083:	
;keyboard_and_mouse_in_a_glove.c: 335: hour ++;
	movlw	(01h)
	movwf	(??_isr+0)+0
	movf	(??_isr+0)+0,w
	addwf	(_hour),f
	goto	i1l4087
	line	336
	
i1l4085:	
	goto	i1l4087
	
i1l1063:	
	goto	i1l4087
	line	337
	
i1l1062:	
	goto	i1l4087
	line	338
	
i1l1061:	
	goto	i1l4087
	line	339
	
i1l1060:	
	line	340
	
i1l4087:	
;keyboard_and_mouse_in_a_glove.c: 337: }
;keyboard_and_mouse_in_a_glove.c: 338: }
;keyboard_and_mouse_in_a_glove.c: 339: }
;keyboard_and_mouse_in_a_glove.c: 340: TMR1L = 176;
	movlw	(0B0h)
	movwf	(14)	;volatile
	line	341
;keyboard_and_mouse_in_a_glove.c: 341: TMR1H = 60;
	movlw	(03Ch)
	movwf	(15)	;volatile
	line	342
	
i1l4089:	
;keyboard_and_mouse_in_a_glove.c: 342: TMR1IF = 0;
	bcf	(96/8),(96)&7
	goto	i1l1064
	line	343
	
i1l1058:	
	line	344
	
i1l1064:	
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
