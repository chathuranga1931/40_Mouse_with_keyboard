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
	FNCALL	_main,_rs232_init
	FNCALL	_main,_init_sys
	FNCALL	_main,_atod_init
	FNCALL	_main,_lcd_init
	FNCALL	_main,_a2d_read
	FNCALL	_main,___lwdiv
	FNCALL	_a2d_read,_read_a2d_value
	FNCALL	_lcd_init,_lcd_add
	FNROOT	_main
	FNCALL	_isr,___lwmod
	FNCALL	_isr,_eeprom_temp
	FNCALL	_isr,_nop
	FNCALL	_eeprom_temp,_eeprom_write
	FNCALL	intlevel1,_isr
	global	intlevel1
	FNROOT	intlevel1
	global	_bed_nu
	global	_i
	global	_value
psect	idataCOMMON,class=CODE,space=0,delta=2
global __pidataCOMMON
__pidataCOMMON:
	file	"F:\ELECTRONIC\2015\Projects\New folder\test.c"
	line	39

;initializer for _bed_nu
	retlw	01h
	line	40

;initializer for _i
	retlw	01h
psect	idataBANK1,class=CODE,space=0,delta=2
global __pidataBANK1
__pidataBANK1:
	line	44

;initializer for _value
	retlw	01h
	global	_dpowers
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\lib\doprnt.c"
	line	350
_dpowers:
	retlw	01h
	retlw	0

	retlw	0Ah
	retlw	0

	retlw	064h
	retlw	0

	retlw	0E8h
	retlw	03h

	retlw	010h
	retlw	027h

	global	_dpowers
	global	_arrTestVal
	global	_rc
	global	_temperature
	global	_temperature1
	global	_temperature2
	global	_hour
	global	_minute
	global	_msecond
	global	_second
	global	_status
	global	_temperature_1
	global	_temperature_2
	global	_vblDiffX
	global	_vblDiffXpast
	global	_vblDiffY
	global	_vblDiffYpast
	global	_vblSampleX1
	global	_vblSampleX2
	global	_vblSampleY1
	global	_vblSampleY2
	global	_address
	global	_address_se
	global	_j
	global	_read_address
	global	_v
	global	_w
	global	_x
	global	_y
	global	_z
	global	_vblAccX
	global	_vblAccY
	global	_ADCON0
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_PORTA
_PORTA	set	5
	global	_PORTB
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_PORTE
_PORTE	set	9
	global	_RCREG
_RCREG	set	26
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
	global	_PEIE
_PEIE	set	94
	global	_RB4
_RB4	set	52
	global	_RB5
_RB5	set	53
	global	_RC2
_RC2	set	58
	global	_RCIF
_RCIF	set	101
	global	_RD2
_RD2	set	66
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
	global	_T1CKPS0
_T1CKPS0	set	132
	global	_T1CKPS1
_T1CKPS1	set	133
	global	_T1OSCEN
_T1OSCEN	set	131
	global	_TMR0IE
_TMR0IE	set	93
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
	global	_BRGH
_BRGH	set	1218
	global	_RCIE
_RCIE	set	1125
	global	_SYNC
_SYNC	set	1220
	global	_TMR1IE
_TMR1IE	set	1120
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
	global	_lcd_data
psect	nvBANK1,class=BANK1,space=1
global __pnvBANK1
__pnvBANK1:
_lcd_data:
       ds      1

	global	_lcd_data_high
_lcd_data_high:
       ds      1

	global	_lcd_data_low
_lcd_data_low:
       ds      1

psect	strings
	
STR_6:	
	retlw	32	;' '
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	84	;'T'
	retlw	101	;'e'
	retlw	109	;'m'
	retlw	112	;'p'
	retlw	32	;' '
	retlw	58	;':'
	retlw	32	;' '
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	70	;'F'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_1:	
	retlw	32	;' '
	retlw	83	;'S'
	retlw	101	;'e'
	retlw	116	;'t'
	retlw	32	;' '
	retlw	98	;'b'
	retlw	101	;'e'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	78	;'N'
	retlw	111	;'o'
	retlw	58	;':'
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_2:	
	retlw	32	;' '
	retlw	83	;'S'
	retlw	101	;'e'
	retlw	116	;'t'
	retlw	32	;' '
	retlw	98	;'b'
	retlw	101	;'e'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	78	;'N'
	retlw	117	;'u'
	retlw	58	;':'
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_4:	
	retlw	32	;' '
	retlw	66	;'B'
	retlw	101	;'e'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	110	;'n'
	retlw	117	;'u'
	retlw	32	;' '
	retlw	99	;'c'
	retlw	104	;'h'
	retlw	97	;'a'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	101	;'e'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	0
psect	strings
STR_3	equ	STR_1+0
STR_5	equ	STR_1+0
STR_7	equ	STR_6+0
	file	"tst.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	dataCOMMON,class=COMMON,space=1
global __pdataCOMMON
__pdataCOMMON:
	file	"F:\ELECTRONIC\2015\Projects\New folder\test.c"
	line	39
_bed_nu:
       ds      1

psect	dataCOMMON
	file	"F:\ELECTRONIC\2015\Projects\New folder\test.c"
	line	40
_i:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_vblAccX:
       ds      2

_vblAccY:
       ds      2

psect	bssBANK1,class=BANK1,space=1
global __pbssBANK1
__pbssBANK1:
_arrTestVal:
       ds      10

_rc:
       ds      9

_temperature:
       ds      3

_temperature1:
       ds      3

_temperature2:
       ds      3

_hour:
       ds      2

_minute:
       ds      2

_msecond:
       ds      2

_second:
       ds      2

_status:
       ds      2

_temperature_1:
       ds      2

_temperature_2:
       ds      2

_vblDiffX:
       ds      2

_vblDiffXpast:
       ds      2

_vblDiffY:
       ds      2

_vblDiffYpast:
       ds      2

_vblSampleX1:
       ds      2

_vblSampleX2:
       ds      2

_vblSampleY1:
       ds      2

_vblSampleY2:
       ds      2

_address:
       ds      1

_address_se:
       ds      1

_j:
       ds      1

_read_address:
       ds      1

_v:
       ds      1

_w:
       ds      1

_x:
       ds      1

_y:
       ds      1

_z:
       ds      1

psect	dataBANK1,class=BANK1,space=1
global __pdataBANK1
__pdataBANK1:
	file	"F:\ELECTRONIC\2015\Projects\New folder\test.c"
	line	44
_value:
       ds      1

psect clrtext,class=CODE,delta=2
global clear_ram
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram:
	clrwdt			;clear the watchdog before getting into this loop
clrloop:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop		;do the next byte

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+043h)
	fcall	clear_ram
; Initialize objects allocated to BANK1
	global __pidataBANK1
psect cinit,class=CODE,delta=2
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	fcall	__pidataBANK1+0		;fetch initializer
	movwf	__pdataBANK1+0&07fh		
; Initialize objects allocated to COMMON
	global __pidataCOMMON
psect cinit,class=CODE,delta=2
	fcall	__pidataCOMMON+0		;fetch initializer
	movwf	__pdataCOMMON+0&07fh		
	fcall	__pidataCOMMON+1		;fetch initializer
	movwf	__pdataCOMMON+1&07fh		
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_lcd_add
?_lcd_add:	; 0 bytes @ 0x0
	global	?_a2d_read
?_a2d_read:	; 0 bytes @ 0x0
	global	?_eeprom_temp
?_eeprom_temp:	; 0 bytes @ 0x0
	global	?_lcd_init
?_lcd_init:	; 0 bytes @ 0x0
	global	?_init_sys
?_init_sys:	; 0 bytes @ 0x0
	global	?_atod_init
?_atod_init:	; 0 bytes @ 0x0
	global	?_rs232_init
?_rs232_init:	; 0 bytes @ 0x0
	global	?_nop
?_nop:	; 0 bytes @ 0x0
	global	??_nop
??_nop:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_isr
?_isr:	; 0 bytes @ 0x0
	global	?_eeprom_write
?_eeprom_write:	; 1 bytes @ 0x0
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x0
	global	eeprom_write@value
eeprom_write@value:	; 1 bytes @ 0x0
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x0
	ds	1
	global	??_eeprom_write
??_eeprom_write:	; 0 bytes @ 0x1
	ds	1
	global	eeprom_write@addr
eeprom_write@addr:	; 1 bytes @ 0x2
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x2
	ds	1
	global	??_eeprom_temp
??_eeprom_temp:	; 0 bytes @ 0x3
	ds	1
	global	??___lwmod
??___lwmod:	; 0 bytes @ 0x4
	ds	1
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x5
	ds	1
	global	??_isr
??_isr:	; 0 bytes @ 0x6
	ds	5
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_lcd_add
??_lcd_add:	; 0 bytes @ 0x0
	global	??_init_sys
??_init_sys:	; 0 bytes @ 0x0
	global	??_atod_init
??_atod_init:	; 0 bytes @ 0x0
	global	??_rs232_init
??_rs232_init:	; 0 bytes @ 0x0
	global	?_read_a2d_value
?_read_a2d_value:	; 2 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	ds	2
	global	??_read_a2d_value
??_read_a2d_value:	; 0 bytes @ 0x2
	global	??_lcd_init
??_lcd_init:	; 0 bytes @ 0x2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	ds	2
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0x4
	global	read_a2d_value@channel
read_a2d_value@channel:	; 1 bytes @ 0x4
	ds	1
	global	read_a2d_value@a2d_value
read_a2d_value@a2d_value:	; 2 bytes @ 0x5
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x5
	ds	2
	global	??_a2d_read
??_a2d_read:	; 0 bytes @ 0x7
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x7
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x8
	ds	6
	global	main@i
main@i:	; 2 bytes @ 0xE
	ds	2
	global	main@du
main@du:	; 2 bytes @ 0x10
	ds	2
	global	main@du_1327
main@du_1327:	; 2 bytes @ 0x12
	ds	2
	global	main@du_1328
main@du_1328:	; 2 bytes @ 0x14
	ds	2
	global	main@du_1329
main@du_1329:	; 2 bytes @ 0x16
	ds	2
	global	main@i_1330
main@i_1330:	; 2 bytes @ 0x18
	ds	2
	global	main@du_1331
main@du_1331:	; 2 bytes @ 0x1A
	ds	2
	global	main@du_1332
main@du_1332:	; 2 bytes @ 0x1C
	ds	2
	global	main@du_1333
main@du_1333:	; 2 bytes @ 0x1E
	ds	2
	global	main@du_1334
main@du_1334:	; 2 bytes @ 0x20
	ds	2
	global	main@du_1335
main@du_1335:	; 2 bytes @ 0x22
	ds	2
	global	main@du_1336
main@du_1336:	; 2 bytes @ 0x24
	ds	2
	global	main@du_1337
main@du_1337:	; 2 bytes @ 0x26
	ds	2
	global	main@du_1338
main@du_1338:	; 2 bytes @ 0x28
	ds	2
	global	main@du_1339
main@du_1339:	; 2 bytes @ 0x2A
	ds	2
	global	main@du_1340
main@du_1340:	; 2 bytes @ 0x2C
	ds	2
	global	main@du_1341
main@du_1341:	; 2 bytes @ 0x2E
	ds	2
	global	main@du_1342
main@du_1342:	; 2 bytes @ 0x30
	ds	2
	global	main@du_1343
main@du_1343:	; 2 bytes @ 0x32
	ds	2
	global	main@du_1344
main@du_1344:	; 2 bytes @ 0x34
	ds	2
	global	main@du_1345
main@du_1345:	; 2 bytes @ 0x36
	ds	2
	global	main@du_1346
main@du_1346:	; 2 bytes @ 0x38
	ds	2
	global	main@du_1347
main@du_1347:	; 2 bytes @ 0x3A
	ds	2
	global	main@du_1348
main@du_1348:	; 2 bytes @ 0x3C
	ds	2
	global	main@du_1349
main@du_1349:	; 2 bytes @ 0x3E
	ds	2
	global	main@du_1350
main@du_1350:	; 2 bytes @ 0x40
	ds	2
	global	main@du_1351
main@du_1351:	; 2 bytes @ 0x42
	ds	2
	global	main@du_1352
main@du_1352:	; 2 bytes @ 0x44
	ds	2
	global	main@du_1353
main@du_1353:	; 2 bytes @ 0x46
	ds	2
	global	main@du_1354
main@du_1354:	; 2 bytes @ 0x48
	ds	2
	global	main@angle
main@angle:	; 2 bytes @ 0x4A
	ds	2
;;Data sizes: Strings 73, constant 10, data 3, bss 71, persistent 3 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          13     11      13
;; BANK0           80     76      80
;; BANK1           80      0      71
;; BANK3           85      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___lwmod	unsigned int  size(1) Largest target is 0
;;
;; ?_read_a2d_value	unsigned int  size(1) Largest target is 0
;;
;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; S1407$_cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   None.
;;
;; Critical Paths under _isr in COMMON
;;
;;   _isr->___lwmod
;;   _eeprom_temp->_eeprom_write
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->___lwdiv
;;   _a2d_read->_read_a2d_value
;;   _lcd_init->_lcd_add
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
;;Main: autosize = 0, tempsize = 6, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                68    68      0    1042
;;                                              8 BANK0     68    68      0
;;                         _rs232_init
;;                           _init_sys
;;                          _atod_init
;;                           _lcd_init
;;                           _a2d_read
;;                            ___lwdiv
;; ---------------------------------------------------------------------------------
;; (1) _a2d_read                                             0     0      0     114
;;                     _read_a2d_value
;; ---------------------------------------------------------------------------------
;; (2) _read_a2d_value                                       7     5      2     114
;;                                              0 BANK0      7     5      2
;; ---------------------------------------------------------------------------------
;; (1) _lcd_init                                             2     2      0       0
;;                                              2 BANK0      2     2      0
;;                            _lcd_add
;; ---------------------------------------------------------------------------------
;; (1) ___lwdiv                                              8     4      4     162
;;                                              0 BANK0      8     4      4
;; ---------------------------------------------------------------------------------
;; (1) _rs232_init                                           0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _atod_init                                            0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _init_sys                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _lcd_add                                              2     2      0       0
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (3) _isr                                                  5     5      0     209
;;                                              6 COMMON     5     5      0
;;                            ___lwmod
;;                        _eeprom_temp
;;                                _nop
;; ---------------------------------------------------------------------------------
;; (4) _eeprom_temp                                          1     1      0      50
;;                                              3 COMMON     1     1      0
;;                       _eeprom_write
;; ---------------------------------------------------------------------------------
;; (4) ___lwmod                                              6     2      4     159
;;                                              0 COMMON     6     2      4
;; ---------------------------------------------------------------------------------
;; (5) _eeprom_write                                         3     2      1      50
;;                                              0 COMMON     3     2      1
;; ---------------------------------------------------------------------------------
;; (4) _nop                                                  0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 5
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _rs232_init
;;   _init_sys
;;   _atod_init
;;   _lcd_init
;;     _lcd_add
;;   _a2d_read
;;     _read_a2d_value
;;   ___lwdiv
;;
;; _isr (ROOT)
;;   ___lwmod
;;   _eeprom_temp
;;     _eeprom_write
;;   _nop
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BANK3               55      0       0       9        0.0%
;;BITBANK3            55      0       0       8        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;BANK2               60      0       0      11        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;BANK1               50      0      47       7       88.8%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      AC      12        0.0%
;;ABS                  0      0      A4       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       8       2        0.0%
;;BANK0               50     4C      50       5      100.0%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               D      B       D       1      100.0%
;;BITCOMMON            D      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 91 in file "F:\ELECTRONIC\2015\Projects\New folder\test.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  du              2   28[BANK0 ] int 
;;  du              2   26[BANK0 ] int 
;;  du              2   18[BANK0 ] int 
;;  du              2   16[BANK0 ] int 
;;  du              2   32[BANK0 ] int 
;;  du              2   30[BANK0 ] int 
;;  i               2   24[BANK0 ] int 
;;  du              2   22[BANK0 ] int 
;;  du              2   20[BANK0 ] int 
;;  i               2   14[BANK0 ] int 
;;  du              2   72[BANK0 ] int 
;;  du              2   70[BANK0 ] int 
;;  du              2   68[BANK0 ] int 
;;  du              2   66[BANK0 ] int 
;;  du              2   64[BANK0 ] int 
;;  du              2   62[BANK0 ] int 
;;  du              2   60[BANK0 ] int 
;;  du              2   58[BANK0 ] int 
;;  du              2   56[BANK0 ] int 
;;  du              2   54[BANK0 ] int 
;;  du              2   52[BANK0 ] int 
;;  du              2   50[BANK0 ] int 
;;  du              2   48[BANK0 ] int 
;;  du              2   46[BANK0 ] int 
;;  du              2   44[BANK0 ] int 
;;  du              2   42[BANK0 ] int 
;;  du              2   40[BANK0 ] int 
;;  du              2   38[BANK0 ] int 
;;  du              2   36[BANK0 ] int 
;;  du              2   34[BANK0 ] int 
;;  angle           2   74[BANK0 ] unsigned int 
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
;;      Locals:         0      62       0       0       0
;;      Temps:          0       6       0       0       0
;;      Totals:         0      68       0       0       0
;;Total ram usage:       68 bytes
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_rs232_init
;;		_init_sys
;;		_atod_init
;;		_lcd_init
;;		_a2d_read
;;		___lwdiv
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"F:\ELECTRONIC\2015\Projects\New folder\test.c"
	line	91
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 3
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	93
	
l6169:	
;test.c: 93: rs232_init();
	fcall	_rs232_init
	line	94
;test.c: 94: init_sys();
	fcall	_init_sys
	line	96
	
l6171:	
;test.c: 96: TRISD = 0b00000000;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	97
	
l6173:	
;test.c: 97: PORTD = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	99
	
l6175:	
;test.c: 99: TRISE = 0b00000000;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(137)^080h	;volatile
	line	100
	
l6177:	
;test.c: 100: PORTE = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(9)	;volatile
	line	103
;test.c: 103: atod_init();
	fcall	_atod_init
	line	104
;test.c: 104: lcd_init();
	fcall	_lcd_init
	line	110
;test.c: 110: a2d_read();
	fcall	_a2d_read
	line	114
;test.c: 112: unsigned int angle;
;test.c: 114: while(1)
	
l820:	
	line	115
;test.c: 115: { a2d_read();
	fcall	_a2d_read
	line	118
;test.c: 118: while( vblAccX < 312 && vblAccY > 356 )
	goto	l6261
	
l822:	
	line	121
	
l6179:	
;test.c: 119: {
;test.c: 121: if( vblAccY-356 > 312-vblAccX)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_vblAccY),w
	addlw	low(0FE9Ch)
	movwf	(??_main+0)+0
	movf	(_vblAccY+1),w
	skipnc
	addlw	1
	addlw	high(0FE9Ch)
	movwf	1+(??_main+0)+0
	comf	(_vblAccX),w
	movwf	(??_main+2)+0
	comf	(_vblAccX+1),w
	movwf	((??_main+2)+0+1)
	incf	(??_main+2)+0,f
	skipnz
	incf	((??_main+2)+0+1),f
	movf	0+(??_main+2)+0,w
	addlw	low(0138h)
	movwf	(??_main+4)+0
	movf	1+(??_main+2)+0,w
	skipnc
	addlw	1
	addlw	high(0138h)
	movwf	1+(??_main+4)+0
	movf	1+(??_main+0)+0,w
	subwf	1+(??_main+4)+0,w
	skipz
	goto	u4985
	movf	0+(??_main+0)+0,w
	subwf	0+(??_main+4)+0,w
u4985:
	skipnc
	goto	u4981
	goto	u4980
u4981:
	goto	l6223
u4980:
	line	123
	
l6181:	
;test.c: 122: {
;test.c: 123: angle = (vblAccY-356)/(312-vblAccX);
	comf	(_vblAccX),w
	movwf	(??_main+0)+0
	comf	(_vblAccX+1),w
	movwf	((??_main+0)+0+1)
	incf	(??_main+0)+0,f
	skipnz
	incf	((??_main+0)+0+1),f
	movf	0+(??_main+0)+0,w
	addlw	low(0138h)
	movwf	(?___lwdiv)
	movf	1+(??_main+0)+0,w
	skipnc
	addlw	1
	addlw	high(0138h)
	movwf	1+(?___lwdiv)
	movf	(_vblAccY),w
	addlw	low(0FE9Ch)
	movwf	0+(?___lwdiv)+02h
	movf	(_vblAccY+1),w
	skipnc
	addlw	1
	addlw	high(0FE9Ch)
	movwf	1+0+(?___lwdiv)+02h
	fcall	___lwdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___lwdiv)),w
	clrf	(main@angle+1)
	addwf	(main@angle+1)
	movf	(0+(?___lwdiv)),w
	clrf	(main@angle)
	addwf	(main@angle)

	line	125
	
l6183:	
;test.c: 125: for(int i=0; i<angle; i++)
	clrf	(main@i)
	clrf	(main@i+1)
	goto	l6205
	line	126
	
l825:	
	line	128
;test.c: 126: {
;test.c: 128: RD7=1;
	bsf	(71/8),(71)&7
	line	129
	
l6185:	
;test.c: 129: for(int du=1; du<=51-(vblAccY-356); du++) _delay((unsigned long)((400)*(4000000/4000000.0)));
	movlw	low(01h)
	movwf	(main@du)
	movlw	high(01h)
	movwf	((main@du))+1
	goto	l6189
	
l827:	
	
l6187:	
	opt asmopt_off
movlw	133
movwf	(??_main+0)+0,f
u5497:
decfsz	(??_main+0)+0,f
	goto	u5497
opt asmopt_on

	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@du),f
	skipnc
	incf	(main@du+1),f
	movlw	high(01h)
	addwf	(main@du+1),f
	goto	l6189
	
l826:	
	
l6189:	
	movf	(_vblAccY),w
	addlw	low(0FE9Ch)
	movwf	(??_main+0)+0
	movf	(_vblAccY+1),w
	skipnc
	addlw	1
	addlw	high(0FE9Ch)
	movwf	1+(??_main+0)+0
	comf	(??_main+0)+0,f
	comf	(??_main+0)+1,f
	incf	(??_main+0)+0,f
	skipnz
	incf	(??_main+0)+1,f
	movf	0+(??_main+0)+0,w
	addlw	low(033h)
	movwf	(??_main+2)+0
	movf	1+(??_main+0)+0,w
	skipnc
	addlw	1
	addlw	high(033h)
	movwf	1+(??_main+2)+0
	movf	(main@du+1),w
	subwf	1+(??_main+2)+0,w
	skipz
	goto	u4995
	movf	(main@du),w
	subwf	0+(??_main+2)+0,w
u4995:
	skipnc
	goto	u4991
	goto	u4990
u4991:
	goto	l6187
u4990:
	
l828:	
	line	130
;test.c: 130: RD6=1;
	bsf	(70/8),(70)&7
	line	131
	
l6191:	
;test.c: 131: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
movwf	(??_main+0)+0,f
u5507:
decfsz	(??_main+0)+0,f
	goto	u5507
	clrwdt
opt asmopt_on

	line	132
	
l6193:	
;test.c: 132: RD7=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(71/8),(71)&7
	line	133
;test.c: 133: for(int du=1; du<=51-(vblAccY-356); du++) _delay((unsigned long)((400)*(4000000/4000000.0)));
	movlw	low(01h)
	movwf	(main@du_1327)
	movlw	high(01h)
	movwf	((main@du_1327))+1
	goto	l6197
	
l830:	
	
l6195:	
	opt asmopt_off
movlw	133
movwf	(??_main+0)+0,f
u5517:
decfsz	(??_main+0)+0,f
	goto	u5517
opt asmopt_on

	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@du_1327),f
	skipnc
	incf	(main@du_1327+1),f
	movlw	high(01h)
	addwf	(main@du_1327+1),f
	goto	l6197
	
l829:	
	
l6197:	
	movf	(_vblAccY),w
	addlw	low(0FE9Ch)
	movwf	(??_main+0)+0
	movf	(_vblAccY+1),w
	skipnc
	addlw	1
	addlw	high(0FE9Ch)
	movwf	1+(??_main+0)+0
	comf	(??_main+0)+0,f
	comf	(??_main+0)+1,f
	incf	(??_main+0)+0,f
	skipnz
	incf	(??_main+0)+1,f
	movf	0+(??_main+0)+0,w
	addlw	low(033h)
	movwf	(??_main+2)+0
	movf	1+(??_main+0)+0,w
	skipnc
	addlw	1
	addlw	high(033h)
	movwf	1+(??_main+2)+0
	movf	(main@du_1327+1),w
	subwf	1+(??_main+2)+0,w
	skipz
	goto	u5005
	movf	(main@du_1327),w
	subwf	0+(??_main+2)+0,w
u5005:
	skipnc
	goto	u5001
	goto	u5000
u5001:
	goto	l6195
u5000:
	
l831:	
	line	134
;test.c: 134: RD6=0;
	bcf	(70/8),(70)&7
	line	135
	
l6199:	
;test.c: 135: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
movwf	(??_main+0)+0,f
u5527:
decfsz	(??_main+0)+0,f
	goto	u5527
	clrwdt
opt asmopt_on

	line	136
	
l6201:	
;test.c: 136: a2d_read();
	fcall	_a2d_read
	line	125
	
l6203:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	goto	l6205
	
l824:	
	
l6205:	
	movf	(main@angle+1),w
	subwf	(main@i+1),w
	skipz
	goto	u5015
	movf	(main@angle),w
	subwf	(main@i),w
u5015:
	skipc
	goto	u5011
	goto	u5010
u5011:
	goto	l825
u5010:
	
l832:	
	line	140
;test.c: 137: }
;test.c: 140: RD4=1;
	bsf	(68/8),(68)&7
	line	141
	
l6207:	
;test.c: 141: for(int du=1; du<=51-(312-vblAccX); du++) _delay((unsigned long)((400)*(4000000/4000000.0)));
	movlw	low(01h)
	movwf	(main@du_1328)
	movlw	high(01h)
	movwf	((main@du_1328))+1
	goto	l6211
	
l834:	
	
l6209:	
	opt asmopt_off
movlw	133
movwf	(??_main+0)+0,f
u5537:
decfsz	(??_main+0)+0,f
	goto	u5537
opt asmopt_on

	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@du_1328),f
	skipnc
	incf	(main@du_1328+1),f
	movlw	high(01h)
	addwf	(main@du_1328+1),f
	goto	l6211
	
l833:	
	
l6211:	
	comf	(_vblAccX),w
	movwf	(??_main+0)+0
	comf	(_vblAccX+1),w
	movwf	((??_main+0)+0+1)
	incf	(??_main+0)+0,f
	skipnz
	incf	((??_main+0)+0+1),f
	movf	0+(??_main+0)+0,w
	addlw	low(0138h)
	movwf	(??_main+2)+0
	movf	1+(??_main+0)+0,w
	skipnc
	addlw	1
	addlw	high(0138h)
	movwf	1+(??_main+2)+0
	comf	(??_main+2)+0,f
	comf	(??_main+2)+1,f
	incf	(??_main+2)+0,f
	skipnz
	incf	(??_main+2)+1,f
	movf	0+(??_main+2)+0,w
	addlw	low(033h)
	movwf	(??_main+4)+0
	movf	1+(??_main+2)+0,w
	skipnc
	addlw	1
	addlw	high(033h)
	movwf	1+(??_main+4)+0
	movf	(main@du_1328+1),w
	subwf	1+(??_main+4)+0,w
	skipz
	goto	u5025
	movf	(main@du_1328),w
	subwf	0+(??_main+4)+0,w
u5025:
	skipnc
	goto	u5021
	goto	u5020
u5021:
	goto	l6209
u5020:
	
l835:	
	line	142
;test.c: 142: RD5=1;
	bsf	(69/8),(69)&7
	line	143
	
l6213:	
;test.c: 143: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
movwf	(??_main+0)+0,f
u5547:
decfsz	(??_main+0)+0,f
	goto	u5547
	clrwdt
opt asmopt_on

	line	144
	
l6215:	
;test.c: 144: RD4=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(68/8),(68)&7
	line	145
;test.c: 145: for(int du=1; du<=51-(312-vblAccX); du++) _delay((unsigned long)((400)*(4000000/4000000.0)));
	movlw	low(01h)
	movwf	(main@du_1329)
	movlw	high(01h)
	movwf	((main@du_1329))+1
	goto	l6219
	
l837:	
	
l6217:	
	opt asmopt_off
movlw	133
movwf	(??_main+0)+0,f
u5557:
decfsz	(??_main+0)+0,f
	goto	u5557
opt asmopt_on

	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@du_1329),f
	skipnc
	incf	(main@du_1329+1),f
	movlw	high(01h)
	addwf	(main@du_1329+1),f
	goto	l6219
	
l836:	
	
l6219:	
	comf	(_vblAccX),w
	movwf	(??_main+0)+0
	comf	(_vblAccX+1),w
	movwf	((??_main+0)+0+1)
	incf	(??_main+0)+0,f
	skipnz
	incf	((??_main+0)+0+1),f
	movf	0+(??_main+0)+0,w
	addlw	low(0138h)
	movwf	(??_main+2)+0
	movf	1+(??_main+0)+0,w
	skipnc
	addlw	1
	addlw	high(0138h)
	movwf	1+(??_main+2)+0
	comf	(??_main+2)+0,f
	comf	(??_main+2)+1,f
	incf	(??_main+2)+0,f
	skipnz
	incf	(??_main+2)+1,f
	movf	0+(??_main+2)+0,w
	addlw	low(033h)
	movwf	(??_main+4)+0
	movf	1+(??_main+2)+0,w
	skipnc
	addlw	1
	addlw	high(033h)
	movwf	1+(??_main+4)+0
	movf	(main@du_1329+1),w
	subwf	1+(??_main+4)+0,w
	skipz
	goto	u5035
	movf	(main@du_1329),w
	subwf	0+(??_main+4)+0,w
u5035:
	skipnc
	goto	u5031
	goto	u5030
u5031:
	goto	l6217
u5030:
	
l838:	
	line	146
;test.c: 146: RD5=0;
	bcf	(69/8),(69)&7
	line	147
	
l6221:	
;test.c: 147: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
movwf	(??_main+0)+0,f
u5567:
decfsz	(??_main+0)+0,f
	goto	u5567
	clrwdt
opt asmopt_on

	line	148
;test.c: 148: }
	goto	l6261
	line	149
	
l823:	
	line	151
	
l6223:	
;test.c: 149: else
;test.c: 150: {
;test.c: 151: angle = (312-vblAccX)/(vblAccY-356);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_vblAccY),w
	addlw	low(0FE9Ch)
	movwf	(?___lwdiv)
	movf	(_vblAccY+1),w
	skipnc
	addlw	1
	addlw	high(0FE9Ch)
	movwf	1+(?___lwdiv)
	comf	(_vblAccX),w
	movwf	(??_main+0)+0
	comf	(_vblAccX+1),w
	movwf	((??_main+0)+0+1)
	incf	(??_main+0)+0,f
	skipnz
	incf	((??_main+0)+0+1),f
	movf	0+(??_main+0)+0,w
	addlw	low(0138h)
	movwf	0+(?___lwdiv)+02h
	movf	1+(??_main+0)+0,w
	skipnc
	addlw	1
	addlw	high(0138h)
	movwf	1+0+(?___lwdiv)+02h
	fcall	___lwdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___lwdiv)),w
	clrf	(main@angle+1)
	addwf	(main@angle+1)
	movf	(0+(?___lwdiv)),w
	clrf	(main@angle)
	addwf	(main@angle)

	line	152
	
l6225:	
;test.c: 152: for(int i=0; i<angle; i++)
	clrf	(main@i_1330)
	clrf	(main@i_1330+1)
	goto	l840
	line	153
	
l841:	
	line	155
;test.c: 153: {
;test.c: 155: RD4=1;
	bsf	(68/8),(68)&7
	line	156
	
l6227:	
;test.c: 156: for(int du=1; du<=51-(312-vblAccX); du++) _delay((unsigned long)((400)*(4000000/4000000.0)));
	movlw	low(01h)
	movwf	(main@du_1331)
	movlw	high(01h)
	movwf	((main@du_1331))+1
	goto	l6231
	
l843:	
	
l6229:	
	opt asmopt_off
movlw	133
movwf	(??_main+0)+0,f
u5577:
decfsz	(??_main+0)+0,f
	goto	u5577
opt asmopt_on

	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@du_1331),f
	skipnc
	incf	(main@du_1331+1),f
	movlw	high(01h)
	addwf	(main@du_1331+1),f
	goto	l6231
	
l842:	
	
l6231:	
	comf	(_vblAccX),w
	movwf	(??_main+0)+0
	comf	(_vblAccX+1),w
	movwf	((??_main+0)+0+1)
	incf	(??_main+0)+0,f
	skipnz
	incf	((??_main+0)+0+1),f
	movf	0+(??_main+0)+0,w
	addlw	low(0138h)
	movwf	(??_main+2)+0
	movf	1+(??_main+0)+0,w
	skipnc
	addlw	1
	addlw	high(0138h)
	movwf	1+(??_main+2)+0
	comf	(??_main+2)+0,f
	comf	(??_main+2)+1,f
	incf	(??_main+2)+0,f
	skipnz
	incf	(??_main+2)+1,f
	movf	0+(??_main+2)+0,w
	addlw	low(033h)
	movwf	(??_main+4)+0
	movf	1+(??_main+2)+0,w
	skipnc
	addlw	1
	addlw	high(033h)
	movwf	1+(??_main+4)+0
	movf	(main@du_1331+1),w
	subwf	1+(??_main+4)+0,w
	skipz
	goto	u5045
	movf	(main@du_1331),w
	subwf	0+(??_main+4)+0,w
u5045:
	skipnc
	goto	u5041
	goto	u5040
u5041:
	goto	l6229
u5040:
	
l844:	
	line	157
;test.c: 157: RD5=1;
	bsf	(69/8),(69)&7
	line	158
	
l6233:	
;test.c: 158: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
movwf	(??_main+0)+0,f
u5587:
decfsz	(??_main+0)+0,f
	goto	u5587
	clrwdt
opt asmopt_on

	line	159
	
l6235:	
;test.c: 159: RD4=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(68/8),(68)&7
	line	160
;test.c: 160: for(int du=1; du<=51-(312-vblAccX); du++) _delay((unsigned long)((400)*(4000000/4000000.0)));
	movlw	low(01h)
	movwf	(main@du_1332)
	movlw	high(01h)
	movwf	((main@du_1332))+1
	goto	l6239
	
l846:	
	
l6237:	
	opt asmopt_off
movlw	133
movwf	(??_main+0)+0,f
u5597:
decfsz	(??_main+0)+0,f
	goto	u5597
opt asmopt_on

	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@du_1332),f
	skipnc
	incf	(main@du_1332+1),f
	movlw	high(01h)
	addwf	(main@du_1332+1),f
	goto	l6239
	
l845:	
	
l6239:	
	comf	(_vblAccX),w
	movwf	(??_main+0)+0
	comf	(_vblAccX+1),w
	movwf	((??_main+0)+0+1)
	incf	(??_main+0)+0,f
	skipnz
	incf	((??_main+0)+0+1),f
	movf	0+(??_main+0)+0,w
	addlw	low(0138h)
	movwf	(??_main+2)+0
	movf	1+(??_main+0)+0,w
	skipnc
	addlw	1
	addlw	high(0138h)
	movwf	1+(??_main+2)+0
	comf	(??_main+2)+0,f
	comf	(??_main+2)+1,f
	incf	(??_main+2)+0,f
	skipnz
	incf	(??_main+2)+1,f
	movf	0+(??_main+2)+0,w
	addlw	low(033h)
	movwf	(??_main+4)+0
	movf	1+(??_main+2)+0,w
	skipnc
	addlw	1
	addlw	high(033h)
	movwf	1+(??_main+4)+0
	movf	(main@du_1332+1),w
	subwf	1+(??_main+4)+0,w
	skipz
	goto	u5055
	movf	(main@du_1332),w
	subwf	0+(??_main+4)+0,w
u5055:
	skipnc
	goto	u5051
	goto	u5050
u5051:
	goto	l6237
u5050:
	
l847:	
	line	161
;test.c: 161: RD5=0;
	bcf	(69/8),(69)&7
	line	162
	
l6241:	
;test.c: 162: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
movwf	(??_main+0)+0,f
u5607:
decfsz	(??_main+0)+0,f
	goto	u5607
	clrwdt
opt asmopt_on

	line	152
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@i_1330),f
	skipnc
	incf	(main@i_1330+1),f
	movlw	high(01h)
	addwf	(main@i_1330+1),f
	
l840:	
	movf	(main@angle+1),w
	subwf	(main@i_1330+1),w
	skipz
	goto	u5065
	movf	(main@angle),w
	subwf	(main@i_1330),w
u5065:
	skipc
	goto	u5061
	goto	u5060
u5061:
	goto	l841
u5060:
	
l848:	
	line	165
;test.c: 163: }
;test.c: 165: RD7=1;
	bsf	(71/8),(71)&7
	line	166
	
l6243:	
;test.c: 166: for(int du=1; du<=51-(vblAccY-356); du++) _delay((unsigned long)((400)*(4000000/4000000.0)));
	movlw	low(01h)
	movwf	(main@du_1333)
	movlw	high(01h)
	movwf	((main@du_1333))+1
	goto	l6247
	
l850:	
	
l6245:	
	opt asmopt_off
movlw	133
movwf	(??_main+0)+0,f
u5617:
decfsz	(??_main+0)+0,f
	goto	u5617
opt asmopt_on

	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@du_1333),f
	skipnc
	incf	(main@du_1333+1),f
	movlw	high(01h)
	addwf	(main@du_1333+1),f
	goto	l6247
	
l849:	
	
l6247:	
	movf	(_vblAccY),w
	addlw	low(0FE9Ch)
	movwf	(??_main+0)+0
	movf	(_vblAccY+1),w
	skipnc
	addlw	1
	addlw	high(0FE9Ch)
	movwf	1+(??_main+0)+0
	comf	(??_main+0)+0,f
	comf	(??_main+0)+1,f
	incf	(??_main+0)+0,f
	skipnz
	incf	(??_main+0)+1,f
	movf	0+(??_main+0)+0,w
	addlw	low(033h)
	movwf	(??_main+2)+0
	movf	1+(??_main+0)+0,w
	skipnc
	addlw	1
	addlw	high(033h)
	movwf	1+(??_main+2)+0
	movf	(main@du_1333+1),w
	subwf	1+(??_main+2)+0,w
	skipz
	goto	u5075
	movf	(main@du_1333),w
	subwf	0+(??_main+2)+0,w
u5075:
	skipnc
	goto	u5071
	goto	u5070
u5071:
	goto	l6245
u5070:
	
l851:	
	line	167
;test.c: 167: RD6=1;
	bsf	(70/8),(70)&7
	line	168
	
l6249:	
;test.c: 168: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
movwf	(??_main+0)+0,f
u5627:
decfsz	(??_main+0)+0,f
	goto	u5627
	clrwdt
opt asmopt_on

	line	169
	
l6251:	
;test.c: 169: RD7=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(71/8),(71)&7
	line	170
;test.c: 170: for(int du=1; du<=51-(vblAccY-356); du++) _delay((unsigned long)((400)*(4000000/4000000.0)));
	movlw	low(01h)
	movwf	(main@du_1334)
	movlw	high(01h)
	movwf	((main@du_1334))+1
	goto	l6255
	
l853:	
	
l6253:	
	opt asmopt_off
movlw	133
movwf	(??_main+0)+0,f
u5637:
decfsz	(??_main+0)+0,f
	goto	u5637
opt asmopt_on

	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@du_1334),f
	skipnc
	incf	(main@du_1334+1),f
	movlw	high(01h)
	addwf	(main@du_1334+1),f
	goto	l6255
	
l852:	
	
l6255:	
	movf	(_vblAccY),w
	addlw	low(0FE9Ch)
	movwf	(??_main+0)+0
	movf	(_vblAccY+1),w
	skipnc
	addlw	1
	addlw	high(0FE9Ch)
	movwf	1+(??_main+0)+0
	comf	(??_main+0)+0,f
	comf	(??_main+0)+1,f
	incf	(??_main+0)+0,f
	skipnz
	incf	(??_main+0)+1,f
	movf	0+(??_main+0)+0,w
	addlw	low(033h)
	movwf	(??_main+2)+0
	movf	1+(??_main+0)+0,w
	skipnc
	addlw	1
	addlw	high(033h)
	movwf	1+(??_main+2)+0
	movf	(main@du_1334+1),w
	subwf	1+(??_main+2)+0,w
	skipz
	goto	u5085
	movf	(main@du_1334),w
	subwf	0+(??_main+2)+0,w
u5085:
	skipnc
	goto	u5081
	goto	u5080
u5081:
	goto	l6253
u5080:
	
l854:	
	line	171
;test.c: 171: RD6=0;
	bcf	(70/8),(70)&7
	line	172
	
l6257:	
;test.c: 172: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
movwf	(??_main+0)+0,f
u5647:
decfsz	(??_main+0)+0,f
	goto	u5647
	clrwdt
opt asmopt_on

	line	173
	
l6259:	
;test.c: 173: a2d_read();
	fcall	_a2d_read
	goto	l6261
	line	175
	
l839:	
	goto	l6261
	line	176
	
l821:	
	line	118
	
l6261:	
	movlw	high(0138h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_vblAccX+1),w
	movlw	low(0138h)
	skipnz
	subwf	(_vblAccX),w
	skipnc
	goto	u5091
	goto	u5090
u5091:
	goto	l6299
u5090:
	
l6263:	
	movlw	high(0165h)
	subwf	(_vblAccY+1),w
	movlw	low(0165h)
	skipnz
	subwf	(_vblAccY),w
	skipnc
	goto	u5101
	goto	u5100
u5101:
	goto	l6179
u5100:
	goto	l6299
	
l856:	
	goto	l6299
	
l857:	
	line	178
;test.c: 175: }
;test.c: 176: }
;test.c: 178: while( vblAccX > 352 && vblAccY > 356 )
	goto	l6299
	
l859:	
	line	182
;test.c: 179: {
;test.c: 182: RD5=1;
	bsf	(69/8),(69)&7
	line	183
	
l6265:	
;test.c: 183: for(int du=1; du<=51-(vblAccX-352); du++) _delay((unsigned long)((400)*(4000000/4000000.0)));
	movlw	low(01h)
	movwf	(main@du_1335)
	movlw	high(01h)
	movwf	((main@du_1335))+1
	goto	l6269
	
l861:	
	
l6267:	
	opt asmopt_off
movlw	133
movwf	(??_main+0)+0,f
u5657:
decfsz	(??_main+0)+0,f
	goto	u5657
opt asmopt_on

	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@du_1335),f
	skipnc
	incf	(main@du_1335+1),f
	movlw	high(01h)
	addwf	(main@du_1335+1),f
	goto	l6269
	
l860:	
	
l6269:	
	movf	(_vblAccX),w
	addlw	low(0FEA0h)
	movwf	(??_main+0)+0
	movf	(_vblAccX+1),w
	skipnc
	addlw	1
	addlw	high(0FEA0h)
	movwf	1+(??_main+0)+0
	comf	(??_main+0)+0,f
	comf	(??_main+0)+1,f
	incf	(??_main+0)+0,f
	skipnz
	incf	(??_main+0)+1,f
	movf	0+(??_main+0)+0,w
	addlw	low(033h)
	movwf	(??_main+2)+0
	movf	1+(??_main+0)+0,w
	skipnc
	addlw	1
	addlw	high(033h)
	movwf	1+(??_main+2)+0
	movf	(main@du_1335+1),w
	subwf	1+(??_main+2)+0,w
	skipz
	goto	u5115
	movf	(main@du_1335),w
	subwf	0+(??_main+2)+0,w
u5115:
	skipnc
	goto	u5111
	goto	u5110
u5111:
	goto	l6267
u5110:
	
l862:	
	line	184
;test.c: 184: RD4=1;
	bsf	(68/8),(68)&7
	line	185
	
l6271:	
;test.c: 185: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
movwf	(??_main+0)+0,f
u5667:
decfsz	(??_main+0)+0,f
	goto	u5667
	clrwdt
opt asmopt_on

	line	186
	
l6273:	
;test.c: 186: RD5=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(69/8),(69)&7
	line	187
;test.c: 187: for(int du=1; du<=51-(vblAccX-352); du++) _delay((unsigned long)((400)*(4000000/4000000.0)));
	movlw	low(01h)
	movwf	(main@du_1336)
	movlw	high(01h)
	movwf	((main@du_1336))+1
	goto	l6277
	
l864:	
	
l6275:	
	opt asmopt_off
movlw	133
movwf	(??_main+0)+0,f
u5677:
decfsz	(??_main+0)+0,f
	goto	u5677
opt asmopt_on

	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@du_1336),f
	skipnc
	incf	(main@du_1336+1),f
	movlw	high(01h)
	addwf	(main@du_1336+1),f
	goto	l6277
	
l863:	
	
l6277:	
	movf	(_vblAccX),w
	addlw	low(0FEA0h)
	movwf	(??_main+0)+0
	movf	(_vblAccX+1),w
	skipnc
	addlw	1
	addlw	high(0FEA0h)
	movwf	1+(??_main+0)+0
	comf	(??_main+0)+0,f
	comf	(??_main+0)+1,f
	incf	(??_main+0)+0,f
	skipnz
	incf	(??_main+0)+1,f
	movf	0+(??_main+0)+0,w
	addlw	low(033h)
	movwf	(??_main+2)+0
	movf	1+(??_main+0)+0,w
	skipnc
	addlw	1
	addlw	high(033h)
	movwf	1+(??_main+2)+0
	movf	(main@du_1336+1),w
	subwf	1+(??_main+2)+0,w
	skipz
	goto	u5125
	movf	(main@du_1336),w
	subwf	0+(??_main+2)+0,w
u5125:
	skipnc
	goto	u5121
	goto	u5120
u5121:
	goto	l6275
u5120:
	
l865:	
	line	188
;test.c: 188: RD4=0;
	bcf	(68/8),(68)&7
	line	189
	
l6279:	
;test.c: 189: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
movwf	(??_main+0)+0,f
u5687:
decfsz	(??_main+0)+0,f
	goto	u5687
	clrwdt
opt asmopt_on

	line	193
	
l6281:	
;test.c: 193: RD7=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(71/8),(71)&7
	line	194
;test.c: 194: for(int du=1; du<=51-(vblAccY-356); du++) _delay((unsigned long)((400)*(4000000/4000000.0)));
	movlw	low(01h)
	movwf	(main@du_1337)
	movlw	high(01h)
	movwf	((main@du_1337))+1
	goto	l6285
	
l867:	
	
l6283:	
	opt asmopt_off
movlw	133
movwf	(??_main+0)+0,f
u5697:
decfsz	(??_main+0)+0,f
	goto	u5697
opt asmopt_on

	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@du_1337),f
	skipnc
	incf	(main@du_1337+1),f
	movlw	high(01h)
	addwf	(main@du_1337+1),f
	goto	l6285
	
l866:	
	
l6285:	
	movf	(_vblAccY),w
	addlw	low(0FE9Ch)
	movwf	(??_main+0)+0
	movf	(_vblAccY+1),w
	skipnc
	addlw	1
	addlw	high(0FE9Ch)
	movwf	1+(??_main+0)+0
	comf	(??_main+0)+0,f
	comf	(??_main+0)+1,f
	incf	(??_main+0)+0,f
	skipnz
	incf	(??_main+0)+1,f
	movf	0+(??_main+0)+0,w
	addlw	low(033h)
	movwf	(??_main+2)+0
	movf	1+(??_main+0)+0,w
	skipnc
	addlw	1
	addlw	high(033h)
	movwf	1+(??_main+2)+0
	movf	(main@du_1337+1),w
	subwf	1+(??_main+2)+0,w
	skipz
	goto	u5135
	movf	(main@du_1337),w
	subwf	0+(??_main+2)+0,w
u5135:
	skipnc
	goto	u5131
	goto	u5130
u5131:
	goto	l6283
u5130:
	
l868:	
	line	195
;test.c: 195: RD6=1;
	bsf	(70/8),(70)&7
	line	196
	
l6287:	
;test.c: 196: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
movwf	(??_main+0)+0,f
u5707:
decfsz	(??_main+0)+0,f
	goto	u5707
	clrwdt
opt asmopt_on

	line	197
	
l6289:	
;test.c: 197: RD7=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(71/8),(71)&7
	line	198
;test.c: 198: for(int du=1; du<=51-(vblAccY-356); du++) _delay((unsigned long)((400)*(4000000/4000000.0)));
	movlw	low(01h)
	movwf	(main@du_1338)
	movlw	high(01h)
	movwf	((main@du_1338))+1
	goto	l6293
	
l870:	
	
l6291:	
	opt asmopt_off
movlw	133
movwf	(??_main+0)+0,f
u5717:
decfsz	(??_main+0)+0,f
	goto	u5717
opt asmopt_on

	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@du_1338),f
	skipnc
	incf	(main@du_1338+1),f
	movlw	high(01h)
	addwf	(main@du_1338+1),f
	goto	l6293
	
l869:	
	
l6293:	
	movf	(_vblAccY),w
	addlw	low(0FE9Ch)
	movwf	(??_main+0)+0
	movf	(_vblAccY+1),w
	skipnc
	addlw	1
	addlw	high(0FE9Ch)
	movwf	1+(??_main+0)+0
	comf	(??_main+0)+0,f
	comf	(??_main+0)+1,f
	incf	(??_main+0)+0,f
	skipnz
	incf	(??_main+0)+1,f
	movf	0+(??_main+0)+0,w
	addlw	low(033h)
	movwf	(??_main+2)+0
	movf	1+(??_main+0)+0,w
	skipnc
	addlw	1
	addlw	high(033h)
	movwf	1+(??_main+2)+0
	movf	(main@du_1338+1),w
	subwf	1+(??_main+2)+0,w
	skipz
	goto	u5145
	movf	(main@du_1338),w
	subwf	0+(??_main+2)+0,w
u5145:
	skipnc
	goto	u5141
	goto	u5140
u5141:
	goto	l6291
u5140:
	
l871:	
	line	199
;test.c: 199: RD6=0;
	bcf	(70/8),(70)&7
	line	200
	
l6295:	
;test.c: 200: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
movwf	(??_main+0)+0,f
u5727:
decfsz	(??_main+0)+0,f
	goto	u5727
	clrwdt
opt asmopt_on

	line	201
	
l6297:	
;test.c: 201: a2d_read();
	fcall	_a2d_read
	goto	l6299
	line	203
	
l858:	
	line	178
	
l6299:	
	movlw	high(0161h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_vblAccX+1),w
	movlw	low(0161h)
	skipnz
	subwf	(_vblAccX),w
	skipc
	goto	u5151
	goto	u5150
u5151:
	goto	l6337
u5150:
	
l6301:	
	movlw	high(0165h)
	subwf	(_vblAccY+1),w
	movlw	low(0165h)
	skipnz
	subwf	(_vblAccY),w
	skipnc
	goto	u5161
	goto	u5160
u5161:
	goto	l859
u5160:
	goto	l6337
	
l873:	
	goto	l6337
	
l874:	
	line	205
;test.c: 203: }
;test.c: 205: while( vblAccX < 312 && vblAccY < 316 )
	goto	l6337
	
l876:	
	line	209
;test.c: 206: {
;test.c: 209: RD4=1;
	bsf	(68/8),(68)&7
	line	210
	
l6303:	
;test.c: 210: for(int du=1; du<=51-(312-vblAccX); du++) _delay((unsigned long)((400)*(4000000/4000000.0)));
	movlw	low(01h)
	movwf	(main@du_1339)
	movlw	high(01h)
	movwf	((main@du_1339))+1
	goto	l6307
	
l878:	
	
l6305:	
	opt asmopt_off
movlw	133
movwf	(??_main+0)+0,f
u5737:
decfsz	(??_main+0)+0,f
	goto	u5737
opt asmopt_on

	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@du_1339),f
	skipnc
	incf	(main@du_1339+1),f
	movlw	high(01h)
	addwf	(main@du_1339+1),f
	goto	l6307
	
l877:	
	
l6307:	
	comf	(_vblAccX),w
	movwf	(??_main+0)+0
	comf	(_vblAccX+1),w
	movwf	((??_main+0)+0+1)
	incf	(??_main+0)+0,f
	skipnz
	incf	((??_main+0)+0+1),f
	movf	0+(??_main+0)+0,w
	addlw	low(0138h)
	movwf	(??_main+2)+0
	movf	1+(??_main+0)+0,w
	skipnc
	addlw	1
	addlw	high(0138h)
	movwf	1+(??_main+2)+0
	comf	(??_main+2)+0,f
	comf	(??_main+2)+1,f
	incf	(??_main+2)+0,f
	skipnz
	incf	(??_main+2)+1,f
	movf	0+(??_main+2)+0,w
	addlw	low(033h)
	movwf	(??_main+4)+0
	movf	1+(??_main+2)+0,w
	skipnc
	addlw	1
	addlw	high(033h)
	movwf	1+(??_main+4)+0
	movf	(main@du_1339+1),w
	subwf	1+(??_main+4)+0,w
	skipz
	goto	u5175
	movf	(main@du_1339),w
	subwf	0+(??_main+4)+0,w
u5175:
	skipnc
	goto	u5171
	goto	u5170
u5171:
	goto	l6305
u5170:
	
l879:	
	line	211
;test.c: 211: RD5=1;
	bsf	(69/8),(69)&7
	line	212
	
l6309:	
;test.c: 212: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
movwf	(??_main+0)+0,f
u5747:
decfsz	(??_main+0)+0,f
	goto	u5747
	clrwdt
opt asmopt_on

	line	213
	
l6311:	
;test.c: 213: RD4=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(68/8),(68)&7
	line	214
;test.c: 214: for(int du=1; du<=51-(312-vblAccX); du++) _delay((unsigned long)((400)*(4000000/4000000.0)));
	movlw	low(01h)
	movwf	(main@du_1340)
	movlw	high(01h)
	movwf	((main@du_1340))+1
	goto	l6315
	
l881:	
	
l6313:	
	opt asmopt_off
movlw	133
movwf	(??_main+0)+0,f
u5757:
decfsz	(??_main+0)+0,f
	goto	u5757
opt asmopt_on

	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@du_1340),f
	skipnc
	incf	(main@du_1340+1),f
	movlw	high(01h)
	addwf	(main@du_1340+1),f
	goto	l6315
	
l880:	
	
l6315:	
	comf	(_vblAccX),w
	movwf	(??_main+0)+0
	comf	(_vblAccX+1),w
	movwf	((??_main+0)+0+1)
	incf	(??_main+0)+0,f
	skipnz
	incf	((??_main+0)+0+1),f
	movf	0+(??_main+0)+0,w
	addlw	low(0138h)
	movwf	(??_main+2)+0
	movf	1+(??_main+0)+0,w
	skipnc
	addlw	1
	addlw	high(0138h)
	movwf	1+(??_main+2)+0
	comf	(??_main+2)+0,f
	comf	(??_main+2)+1,f
	incf	(??_main+2)+0,f
	skipnz
	incf	(??_main+2)+1,f
	movf	0+(??_main+2)+0,w
	addlw	low(033h)
	movwf	(??_main+4)+0
	movf	1+(??_main+2)+0,w
	skipnc
	addlw	1
	addlw	high(033h)
	movwf	1+(??_main+4)+0
	movf	(main@du_1340+1),w
	subwf	1+(??_main+4)+0,w
	skipz
	goto	u5185
	movf	(main@du_1340),w
	subwf	0+(??_main+4)+0,w
u5185:
	skipnc
	goto	u5181
	goto	u5180
u5181:
	goto	l6313
u5180:
	
l882:	
	line	215
;test.c: 215: RD5=0;
	bcf	(69/8),(69)&7
	line	216
	
l6317:	
;test.c: 216: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
movwf	(??_main+0)+0,f
u5767:
decfsz	(??_main+0)+0,f
	goto	u5767
	clrwdt
opt asmopt_on

	line	219
	
l6319:	
;test.c: 219: RD6=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(70/8),(70)&7
	line	220
;test.c: 220: for(int du=1; du<=51-(316-vblAccY); du++) _delay((unsigned long)((400)*(4000000/4000000.0)));
	movlw	low(01h)
	movwf	(main@du_1341)
	movlw	high(01h)
	movwf	((main@du_1341))+1
	goto	l6323
	
l884:	
	
l6321:	
	opt asmopt_off
movlw	133
movwf	(??_main+0)+0,f
u5777:
decfsz	(??_main+0)+0,f
	goto	u5777
opt asmopt_on

	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@du_1341),f
	skipnc
	incf	(main@du_1341+1),f
	movlw	high(01h)
	addwf	(main@du_1341+1),f
	goto	l6323
	
l883:	
	
l6323:	
	comf	(_vblAccY),w
	movwf	(??_main+0)+0
	comf	(_vblAccY+1),w
	movwf	((??_main+0)+0+1)
	incf	(??_main+0)+0,f
	skipnz
	incf	((??_main+0)+0+1),f
	movf	0+(??_main+0)+0,w
	addlw	low(013Ch)
	movwf	(??_main+2)+0
	movf	1+(??_main+0)+0,w
	skipnc
	addlw	1
	addlw	high(013Ch)
	movwf	1+(??_main+2)+0
	comf	(??_main+2)+0,f
	comf	(??_main+2)+1,f
	incf	(??_main+2)+0,f
	skipnz
	incf	(??_main+2)+1,f
	movf	0+(??_main+2)+0,w
	addlw	low(033h)
	movwf	(??_main+4)+0
	movf	1+(??_main+2)+0,w
	skipnc
	addlw	1
	addlw	high(033h)
	movwf	1+(??_main+4)+0
	movf	(main@du_1341+1),w
	subwf	1+(??_main+4)+0,w
	skipz
	goto	u5195
	movf	(main@du_1341),w
	subwf	0+(??_main+4)+0,w
u5195:
	skipnc
	goto	u5191
	goto	u5190
u5191:
	goto	l6321
u5190:
	
l885:	
	line	221
;test.c: 221: RD7=1;
	bsf	(71/8),(71)&7
	line	222
	
l6325:	
;test.c: 222: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
movwf	(??_main+0)+0,f
u5787:
decfsz	(??_main+0)+0,f
	goto	u5787
	clrwdt
opt asmopt_on

	line	223
	
l6327:	
;test.c: 223: RD6=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(70/8),(70)&7
	line	224
;test.c: 224: for(int du=1; du<=51-(316-vblAccY); du++) _delay((unsigned long)((400)*(4000000/4000000.0)));
	movlw	low(01h)
	movwf	(main@du_1342)
	movlw	high(01h)
	movwf	((main@du_1342))+1
	goto	l6331
	
l887:	
	
l6329:	
	opt asmopt_off
movlw	133
movwf	(??_main+0)+0,f
u5797:
decfsz	(??_main+0)+0,f
	goto	u5797
opt asmopt_on

	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@du_1342),f
	skipnc
	incf	(main@du_1342+1),f
	movlw	high(01h)
	addwf	(main@du_1342+1),f
	goto	l6331
	
l886:	
	
l6331:	
	comf	(_vblAccY),w
	movwf	(??_main+0)+0
	comf	(_vblAccY+1),w
	movwf	((??_main+0)+0+1)
	incf	(??_main+0)+0,f
	skipnz
	incf	((??_main+0)+0+1),f
	movf	0+(??_main+0)+0,w
	addlw	low(013Ch)
	movwf	(??_main+2)+0
	movf	1+(??_main+0)+0,w
	skipnc
	addlw	1
	addlw	high(013Ch)
	movwf	1+(??_main+2)+0
	comf	(??_main+2)+0,f
	comf	(??_main+2)+1,f
	incf	(??_main+2)+0,f
	skipnz
	incf	(??_main+2)+1,f
	movf	0+(??_main+2)+0,w
	addlw	low(033h)
	movwf	(??_main+4)+0
	movf	1+(??_main+2)+0,w
	skipnc
	addlw	1
	addlw	high(033h)
	movwf	1+(??_main+4)+0
	movf	(main@du_1342+1),w
	subwf	1+(??_main+4)+0,w
	skipz
	goto	u5205
	movf	(main@du_1342),w
	subwf	0+(??_main+4)+0,w
u5205:
	skipnc
	goto	u5201
	goto	u5200
u5201:
	goto	l6329
u5200:
	
l888:	
	line	225
;test.c: 225: RD7=0;
	bcf	(71/8),(71)&7
	line	226
	
l6333:	
;test.c: 226: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
movwf	(??_main+0)+0,f
u5807:
decfsz	(??_main+0)+0,f
	goto	u5807
	clrwdt
opt asmopt_on

	line	227
	
l6335:	
;test.c: 227: a2d_read();
	fcall	_a2d_read
	goto	l6337
	line	228
	
l875:	
	line	205
	
l6337:	
	movlw	high(0138h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_vblAccX+1),w
	movlw	low(0138h)
	skipnz
	subwf	(_vblAccX),w
	skipnc
	goto	u5211
	goto	u5210
u5211:
	goto	l6375
u5210:
	
l6339:	
	movlw	high(013Ch)
	subwf	(_vblAccY+1),w
	movlw	low(013Ch)
	skipnz
	subwf	(_vblAccY),w
	skipc
	goto	u5221
	goto	u5220
u5221:
	goto	l876
u5220:
	goto	l6375
	
l890:	
	goto	l6375
	
l891:	
	line	230
;test.c: 228: }
;test.c: 230: while( vblAccX > 352 && vblAccY < 316 )
	goto	l6375
	
l893:	
	line	234
;test.c: 231: {
;test.c: 234: RD5=1;
	bsf	(69/8),(69)&7
	line	235
	
l6341:	
;test.c: 235: for(int du=1; du<=51-(vblAccX-352); du++) _delay((unsigned long)((400)*(4000000/4000000.0)));
	movlw	low(01h)
	movwf	(main@du_1343)
	movlw	high(01h)
	movwf	((main@du_1343))+1
	goto	l6345
	
l895:	
	
l6343:	
	opt asmopt_off
movlw	133
movwf	(??_main+0)+0,f
u5817:
decfsz	(??_main+0)+0,f
	goto	u5817
opt asmopt_on

	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@du_1343),f
	skipnc
	incf	(main@du_1343+1),f
	movlw	high(01h)
	addwf	(main@du_1343+1),f
	goto	l6345
	
l894:	
	
l6345:	
	movf	(_vblAccX),w
	addlw	low(0FEA0h)
	movwf	(??_main+0)+0
	movf	(_vblAccX+1),w
	skipnc
	addlw	1
	addlw	high(0FEA0h)
	movwf	1+(??_main+0)+0
	comf	(??_main+0)+0,f
	comf	(??_main+0)+1,f
	incf	(??_main+0)+0,f
	skipnz
	incf	(??_main+0)+1,f
	movf	0+(??_main+0)+0,w
	addlw	low(033h)
	movwf	(??_main+2)+0
	movf	1+(??_main+0)+0,w
	skipnc
	addlw	1
	addlw	high(033h)
	movwf	1+(??_main+2)+0
	movf	(main@du_1343+1),w
	subwf	1+(??_main+2)+0,w
	skipz
	goto	u5235
	movf	(main@du_1343),w
	subwf	0+(??_main+2)+0,w
u5235:
	skipnc
	goto	u5231
	goto	u5230
u5231:
	goto	l6343
u5230:
	
l896:	
	line	236
;test.c: 236: RD4=1;
	bsf	(68/8),(68)&7
	line	237
	
l6347:	
;test.c: 237: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
movwf	(??_main+0)+0,f
u5827:
decfsz	(??_main+0)+0,f
	goto	u5827
	clrwdt
opt asmopt_on

	line	238
	
l6349:	
;test.c: 238: RD5=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(69/8),(69)&7
	line	239
;test.c: 239: for(int du=1; du<=51-(vblAccX-352); du++) _delay((unsigned long)((400)*(4000000/4000000.0)));
	movlw	low(01h)
	movwf	(main@du_1344)
	movlw	high(01h)
	movwf	((main@du_1344))+1
	goto	l6353
	
l898:	
	
l6351:	
	opt asmopt_off
movlw	133
movwf	(??_main+0)+0,f
u5837:
decfsz	(??_main+0)+0,f
	goto	u5837
opt asmopt_on

	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@du_1344),f
	skipnc
	incf	(main@du_1344+1),f
	movlw	high(01h)
	addwf	(main@du_1344+1),f
	goto	l6353
	
l897:	
	
l6353:	
	movf	(_vblAccX),w
	addlw	low(0FEA0h)
	movwf	(??_main+0)+0
	movf	(_vblAccX+1),w
	skipnc
	addlw	1
	addlw	high(0FEA0h)
	movwf	1+(??_main+0)+0
	comf	(??_main+0)+0,f
	comf	(??_main+0)+1,f
	incf	(??_main+0)+0,f
	skipnz
	incf	(??_main+0)+1,f
	movf	0+(??_main+0)+0,w
	addlw	low(033h)
	movwf	(??_main+2)+0
	movf	1+(??_main+0)+0,w
	skipnc
	addlw	1
	addlw	high(033h)
	movwf	1+(??_main+2)+0
	movf	(main@du_1344+1),w
	subwf	1+(??_main+2)+0,w
	skipz
	goto	u5245
	movf	(main@du_1344),w
	subwf	0+(??_main+2)+0,w
u5245:
	skipnc
	goto	u5241
	goto	u5240
u5241:
	goto	l6351
u5240:
	
l899:	
	line	240
;test.c: 240: RD4=0;
	bcf	(68/8),(68)&7
	line	241
	
l6355:	
;test.c: 241: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
movwf	(??_main+0)+0,f
u5847:
decfsz	(??_main+0)+0,f
	goto	u5847
	clrwdt
opt asmopt_on

	line	245
	
l6357:	
;test.c: 245: RD6=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(70/8),(70)&7
	line	246
;test.c: 246: for(int du=1; du<=51-(316-vblAccY); du++) _delay((unsigned long)((400)*(4000000/4000000.0)));
	movlw	low(01h)
	movwf	(main@du_1345)
	movlw	high(01h)
	movwf	((main@du_1345))+1
	goto	l6361
	
l901:	
	
l6359:	
	opt asmopt_off
movlw	133
movwf	(??_main+0)+0,f
u5857:
decfsz	(??_main+0)+0,f
	goto	u5857
opt asmopt_on

	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@du_1345),f
	skipnc
	incf	(main@du_1345+1),f
	movlw	high(01h)
	addwf	(main@du_1345+1),f
	goto	l6361
	
l900:	
	
l6361:	
	comf	(_vblAccY),w
	movwf	(??_main+0)+0
	comf	(_vblAccY+1),w
	movwf	((??_main+0)+0+1)
	incf	(??_main+0)+0,f
	skipnz
	incf	((??_main+0)+0+1),f
	movf	0+(??_main+0)+0,w
	addlw	low(013Ch)
	movwf	(??_main+2)+0
	movf	1+(??_main+0)+0,w
	skipnc
	addlw	1
	addlw	high(013Ch)
	movwf	1+(??_main+2)+0
	comf	(??_main+2)+0,f
	comf	(??_main+2)+1,f
	incf	(??_main+2)+0,f
	skipnz
	incf	(??_main+2)+1,f
	movf	0+(??_main+2)+0,w
	addlw	low(033h)
	movwf	(??_main+4)+0
	movf	1+(??_main+2)+0,w
	skipnc
	addlw	1
	addlw	high(033h)
	movwf	1+(??_main+4)+0
	movf	(main@du_1345+1),w
	subwf	1+(??_main+4)+0,w
	skipz
	goto	u5255
	movf	(main@du_1345),w
	subwf	0+(??_main+4)+0,w
u5255:
	skipnc
	goto	u5251
	goto	u5250
u5251:
	goto	l6359
u5250:
	
l902:	
	line	247
;test.c: 247: RD7=1;
	bsf	(71/8),(71)&7
	line	248
	
l6363:	
;test.c: 248: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
movwf	(??_main+0)+0,f
u5867:
decfsz	(??_main+0)+0,f
	goto	u5867
	clrwdt
opt asmopt_on

	line	249
	
l6365:	
;test.c: 249: RD6=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(70/8),(70)&7
	line	250
;test.c: 250: for(int du=1; du<=51-(316-vblAccY); du++) _delay((unsigned long)((400)*(4000000/4000000.0)));
	movlw	low(01h)
	movwf	(main@du_1346)
	movlw	high(01h)
	movwf	((main@du_1346))+1
	goto	l6369
	
l904:	
	
l6367:	
	opt asmopt_off
movlw	133
movwf	(??_main+0)+0,f
u5877:
decfsz	(??_main+0)+0,f
	goto	u5877
opt asmopt_on

	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@du_1346),f
	skipnc
	incf	(main@du_1346+1),f
	movlw	high(01h)
	addwf	(main@du_1346+1),f
	goto	l6369
	
l903:	
	
l6369:	
	comf	(_vblAccY),w
	movwf	(??_main+0)+0
	comf	(_vblAccY+1),w
	movwf	((??_main+0)+0+1)
	incf	(??_main+0)+0,f
	skipnz
	incf	((??_main+0)+0+1),f
	movf	0+(??_main+0)+0,w
	addlw	low(013Ch)
	movwf	(??_main+2)+0
	movf	1+(??_main+0)+0,w
	skipnc
	addlw	1
	addlw	high(013Ch)
	movwf	1+(??_main+2)+0
	comf	(??_main+2)+0,f
	comf	(??_main+2)+1,f
	incf	(??_main+2)+0,f
	skipnz
	incf	(??_main+2)+1,f
	movf	0+(??_main+2)+0,w
	addlw	low(033h)
	movwf	(??_main+4)+0
	movf	1+(??_main+2)+0,w
	skipnc
	addlw	1
	addlw	high(033h)
	movwf	1+(??_main+4)+0
	movf	(main@du_1346+1),w
	subwf	1+(??_main+4)+0,w
	skipz
	goto	u5265
	movf	(main@du_1346),w
	subwf	0+(??_main+4)+0,w
u5265:
	skipnc
	goto	u5261
	goto	u5260
u5261:
	goto	l6367
u5260:
	
l905:	
	line	251
;test.c: 251: RD7=0;
	bcf	(71/8),(71)&7
	line	252
	
l6371:	
;test.c: 252: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
movwf	(??_main+0)+0,f
u5887:
decfsz	(??_main+0)+0,f
	goto	u5887
	clrwdt
opt asmopt_on

	line	253
	
l6373:	
;test.c: 253: a2d_read();
	fcall	_a2d_read
	goto	l6375
	line	254
	
l892:	
	line	230
	
l6375:	
	movlw	high(0161h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_vblAccX+1),w
	movlw	low(0161h)
	skipnz
	subwf	(_vblAccX),w
	skipc
	goto	u5271
	goto	u5270
u5271:
	goto	l6397
u5270:
	
l6377:	
	movlw	high(013Ch)
	subwf	(_vblAccY+1),w
	movlw	low(013Ch)
	skipnz
	subwf	(_vblAccY),w
	skipc
	goto	u5281
	goto	u5280
u5281:
	goto	l893
u5280:
	goto	l6397
	
l907:	
	goto	l6397
	
l908:	
	line	256
;test.c: 254: }
;test.c: 256: while( vblAccX > 312 && vblAccX < 352 && vblAccY > 356 )
	goto	l6397
	
l910:	
	line	260
;test.c: 257: {
;test.c: 260: RD7=1;
	bsf	(71/8),(71)&7
	line	261
	
l6379:	
;test.c: 261: for(int du=1; du<=51-(vblAccY-356); du++) _delay((unsigned long)((400)*(4000000/4000000.0)));
	movlw	low(01h)
	movwf	(main@du_1347)
	movlw	high(01h)
	movwf	((main@du_1347))+1
	goto	l6383
	
l912:	
	
l6381:	
	opt asmopt_off
movlw	133
movwf	(??_main+0)+0,f
u5897:
decfsz	(??_main+0)+0,f
	goto	u5897
opt asmopt_on

	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@du_1347),f
	skipnc
	incf	(main@du_1347+1),f
	movlw	high(01h)
	addwf	(main@du_1347+1),f
	goto	l6383
	
l911:	
	
l6383:	
	movf	(_vblAccY),w
	addlw	low(0FE9Ch)
	movwf	(??_main+0)+0
	movf	(_vblAccY+1),w
	skipnc
	addlw	1
	addlw	high(0FE9Ch)
	movwf	1+(??_main+0)+0
	comf	(??_main+0)+0,f
	comf	(??_main+0)+1,f
	incf	(??_main+0)+0,f
	skipnz
	incf	(??_main+0)+1,f
	movf	0+(??_main+0)+0,w
	addlw	low(033h)
	movwf	(??_main+2)+0
	movf	1+(??_main+0)+0,w
	skipnc
	addlw	1
	addlw	high(033h)
	movwf	1+(??_main+2)+0
	movf	(main@du_1347+1),w
	subwf	1+(??_main+2)+0,w
	skipz
	goto	u5295
	movf	(main@du_1347),w
	subwf	0+(??_main+2)+0,w
u5295:
	skipnc
	goto	u5291
	goto	u5290
u5291:
	goto	l6381
u5290:
	
l913:	
	line	262
;test.c: 262: RD6=1;
	bsf	(70/8),(70)&7
	line	263
	
l6385:	
;test.c: 263: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
movwf	(??_main+0)+0,f
u5907:
decfsz	(??_main+0)+0,f
	goto	u5907
	clrwdt
opt asmopt_on

	line	264
	
l6387:	
;test.c: 264: RD7=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(71/8),(71)&7
	line	265
;test.c: 265: for(int du=1; du<=51-(vblAccY-356); du++) _delay((unsigned long)((400)*(4000000/4000000.0)));
	movlw	low(01h)
	movwf	(main@du_1348)
	movlw	high(01h)
	movwf	((main@du_1348))+1
	goto	l6391
	
l915:	
	
l6389:	
	opt asmopt_off
movlw	133
movwf	(??_main+0)+0,f
u5917:
decfsz	(??_main+0)+0,f
	goto	u5917
opt asmopt_on

	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@du_1348),f
	skipnc
	incf	(main@du_1348+1),f
	movlw	high(01h)
	addwf	(main@du_1348+1),f
	goto	l6391
	
l914:	
	
l6391:	
	movf	(_vblAccY),w
	addlw	low(0FE9Ch)
	movwf	(??_main+0)+0
	movf	(_vblAccY+1),w
	skipnc
	addlw	1
	addlw	high(0FE9Ch)
	movwf	1+(??_main+0)+0
	comf	(??_main+0)+0,f
	comf	(??_main+0)+1,f
	incf	(??_main+0)+0,f
	skipnz
	incf	(??_main+0)+1,f
	movf	0+(??_main+0)+0,w
	addlw	low(033h)
	movwf	(??_main+2)+0
	movf	1+(??_main+0)+0,w
	skipnc
	addlw	1
	addlw	high(033h)
	movwf	1+(??_main+2)+0
	movf	(main@du_1348+1),w
	subwf	1+(??_main+2)+0,w
	skipz
	goto	u5305
	movf	(main@du_1348),w
	subwf	0+(??_main+2)+0,w
u5305:
	skipnc
	goto	u5301
	goto	u5300
u5301:
	goto	l6389
u5300:
	
l916:	
	line	266
;test.c: 266: RD6=0;
	bcf	(70/8),(70)&7
	line	267
	
l6393:	
;test.c: 267: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
movwf	(??_main+0)+0,f
u5927:
decfsz	(??_main+0)+0,f
	goto	u5927
	clrwdt
opt asmopt_on

	line	268
	
l6395:	
;test.c: 268: a2d_read();
	fcall	_a2d_read
	goto	l6397
	line	269
	
l909:	
	line	256
	
l6397:	
	movlw	high(0139h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_vblAccX+1),w
	movlw	low(0139h)
	skipnz
	subwf	(_vblAccX),w
	skipc
	goto	u5311
	goto	u5310
u5311:
	goto	l6421
u5310:
	
l6399:	
	movlw	high(0160h)
	subwf	(_vblAccX+1),w
	movlw	low(0160h)
	skipnz
	subwf	(_vblAccX),w
	skipnc
	goto	u5321
	goto	u5320
u5321:
	goto	l6421
u5320:
	
l6401:	
	movlw	high(0165h)
	subwf	(_vblAccY+1),w
	movlw	low(0165h)
	skipnz
	subwf	(_vblAccY),w
	skipnc
	goto	u5331
	goto	u5330
u5331:
	goto	l910
u5330:
	goto	l6421
	
l918:	
	goto	l6421
	
l919:	
	line	271
;test.c: 269: }
;test.c: 271: while( vblAccX > 312 && vblAccX < 352 && vblAccY < 316 )
	goto	l6421
	
l921:	
	line	275
;test.c: 272: {
;test.c: 275: RD6=1;
	bsf	(70/8),(70)&7
	line	276
	
l6403:	
;test.c: 276: for(int du=1; du<=51-(316-vblAccY); du++) _delay((unsigned long)((400)*(4000000/4000000.0)));
	movlw	low(01h)
	movwf	(main@du_1349)
	movlw	high(01h)
	movwf	((main@du_1349))+1
	goto	l6407
	
l923:	
	
l6405:	
	opt asmopt_off
movlw	133
movwf	(??_main+0)+0,f
u5937:
decfsz	(??_main+0)+0,f
	goto	u5937
opt asmopt_on

	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@du_1349),f
	skipnc
	incf	(main@du_1349+1),f
	movlw	high(01h)
	addwf	(main@du_1349+1),f
	goto	l6407
	
l922:	
	
l6407:	
	comf	(_vblAccY),w
	movwf	(??_main+0)+0
	comf	(_vblAccY+1),w
	movwf	((??_main+0)+0+1)
	incf	(??_main+0)+0,f
	skipnz
	incf	((??_main+0)+0+1),f
	movf	0+(??_main+0)+0,w
	addlw	low(013Ch)
	movwf	(??_main+2)+0
	movf	1+(??_main+0)+0,w
	skipnc
	addlw	1
	addlw	high(013Ch)
	movwf	1+(??_main+2)+0
	comf	(??_main+2)+0,f
	comf	(??_main+2)+1,f
	incf	(??_main+2)+0,f
	skipnz
	incf	(??_main+2)+1,f
	movf	0+(??_main+2)+0,w
	addlw	low(033h)
	movwf	(??_main+4)+0
	movf	1+(??_main+2)+0,w
	skipnc
	addlw	1
	addlw	high(033h)
	movwf	1+(??_main+4)+0
	movf	(main@du_1349+1),w
	subwf	1+(??_main+4)+0,w
	skipz
	goto	u5345
	movf	(main@du_1349),w
	subwf	0+(??_main+4)+0,w
u5345:
	skipnc
	goto	u5341
	goto	u5340
u5341:
	goto	l6405
u5340:
	
l924:	
	line	277
;test.c: 277: RD7=1;
	bsf	(71/8),(71)&7
	line	278
	
l6409:	
;test.c: 278: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
movwf	(??_main+0)+0,f
u5947:
decfsz	(??_main+0)+0,f
	goto	u5947
	clrwdt
opt asmopt_on

	line	279
	
l6411:	
;test.c: 279: RD6=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(70/8),(70)&7
	line	280
;test.c: 280: for(int du=1; du<=51-(316-vblAccY); du++) _delay((unsigned long)((400)*(4000000/4000000.0)));
	movlw	low(01h)
	movwf	(main@du_1350)
	movlw	high(01h)
	movwf	((main@du_1350))+1
	goto	l6415
	
l926:	
	
l6413:	
	opt asmopt_off
movlw	133
movwf	(??_main+0)+0,f
u5957:
decfsz	(??_main+0)+0,f
	goto	u5957
opt asmopt_on

	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@du_1350),f
	skipnc
	incf	(main@du_1350+1),f
	movlw	high(01h)
	addwf	(main@du_1350+1),f
	goto	l6415
	
l925:	
	
l6415:	
	comf	(_vblAccY),w
	movwf	(??_main+0)+0
	comf	(_vblAccY+1),w
	movwf	((??_main+0)+0+1)
	incf	(??_main+0)+0,f
	skipnz
	incf	((??_main+0)+0+1),f
	movf	0+(??_main+0)+0,w
	addlw	low(013Ch)
	movwf	(??_main+2)+0
	movf	1+(??_main+0)+0,w
	skipnc
	addlw	1
	addlw	high(013Ch)
	movwf	1+(??_main+2)+0
	comf	(??_main+2)+0,f
	comf	(??_main+2)+1,f
	incf	(??_main+2)+0,f
	skipnz
	incf	(??_main+2)+1,f
	movf	0+(??_main+2)+0,w
	addlw	low(033h)
	movwf	(??_main+4)+0
	movf	1+(??_main+2)+0,w
	skipnc
	addlw	1
	addlw	high(033h)
	movwf	1+(??_main+4)+0
	movf	(main@du_1350+1),w
	subwf	1+(??_main+4)+0,w
	skipz
	goto	u5355
	movf	(main@du_1350),w
	subwf	0+(??_main+4)+0,w
u5355:
	skipnc
	goto	u5351
	goto	u5350
u5351:
	goto	l6413
u5350:
	
l927:	
	line	281
;test.c: 281: RD7=0;
	bcf	(71/8),(71)&7
	line	282
	
l6417:	
;test.c: 282: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
movwf	(??_main+0)+0,f
u5967:
decfsz	(??_main+0)+0,f
	goto	u5967
	clrwdt
opt asmopt_on

	line	283
	
l6419:	
;test.c: 283: a2d_read();
	fcall	_a2d_read
	goto	l6421
	line	284
	
l920:	
	line	271
	
l6421:	
	movlw	high(0139h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_vblAccX+1),w
	movlw	low(0139h)
	skipnz
	subwf	(_vblAccX),w
	skipc
	goto	u5361
	goto	u5360
u5361:
	goto	l6445
u5360:
	
l6423:	
	movlw	high(0160h)
	subwf	(_vblAccX+1),w
	movlw	low(0160h)
	skipnz
	subwf	(_vblAccX),w
	skipnc
	goto	u5371
	goto	u5370
u5371:
	goto	l6445
u5370:
	
l6425:	
	movlw	high(013Ch)
	subwf	(_vblAccY+1),w
	movlw	low(013Ch)
	skipnz
	subwf	(_vblAccY),w
	skipc
	goto	u5381
	goto	u5380
u5381:
	goto	l921
u5380:
	goto	l6445
	
l929:	
	goto	l6445
	
l930:	
	line	286
;test.c: 284: }
;test.c: 286: while( vblAccY > 316 && vblAccY < 356 && vblAccX > 352 )
	goto	l6445
	
l932:	
	line	289
;test.c: 287: {
;test.c: 289: RD5=1;
	bsf	(69/8),(69)&7
	line	290
	
l6427:	
;test.c: 290: for(int du=1; du<=51-(vblAccX-352); du++) _delay((unsigned long)((400)*(4000000/4000000.0)));
	movlw	low(01h)
	movwf	(main@du_1351)
	movlw	high(01h)
	movwf	((main@du_1351))+1
	goto	l6431
	
l934:	
	
l6429:	
	opt asmopt_off
movlw	133
movwf	(??_main+0)+0,f
u5977:
decfsz	(??_main+0)+0,f
	goto	u5977
opt asmopt_on

	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@du_1351),f
	skipnc
	incf	(main@du_1351+1),f
	movlw	high(01h)
	addwf	(main@du_1351+1),f
	goto	l6431
	
l933:	
	
l6431:	
	movf	(_vblAccX),w
	addlw	low(0FEA0h)
	movwf	(??_main+0)+0
	movf	(_vblAccX+1),w
	skipnc
	addlw	1
	addlw	high(0FEA0h)
	movwf	1+(??_main+0)+0
	comf	(??_main+0)+0,f
	comf	(??_main+0)+1,f
	incf	(??_main+0)+0,f
	skipnz
	incf	(??_main+0)+1,f
	movf	0+(??_main+0)+0,w
	addlw	low(033h)
	movwf	(??_main+2)+0
	movf	1+(??_main+0)+0,w
	skipnc
	addlw	1
	addlw	high(033h)
	movwf	1+(??_main+2)+0
	movf	(main@du_1351+1),w
	subwf	1+(??_main+2)+0,w
	skipz
	goto	u5395
	movf	(main@du_1351),w
	subwf	0+(??_main+2)+0,w
u5395:
	skipnc
	goto	u5391
	goto	u5390
u5391:
	goto	l6429
u5390:
	
l935:	
	line	291
;test.c: 291: RD4=1;
	bsf	(68/8),(68)&7
	line	292
	
l6433:	
;test.c: 292: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
movwf	(??_main+0)+0,f
u5987:
decfsz	(??_main+0)+0,f
	goto	u5987
	clrwdt
opt asmopt_on

	line	293
	
l6435:	
;test.c: 293: RD5=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(69/8),(69)&7
	line	294
;test.c: 294: for(int du=1; du<=51-(vblAccX-352); du++) _delay((unsigned long)((400)*(4000000/4000000.0)));
	movlw	low(01h)
	movwf	(main@du_1352)
	movlw	high(01h)
	movwf	((main@du_1352))+1
	goto	l6439
	
l937:	
	
l6437:	
	opt asmopt_off
movlw	133
movwf	(??_main+0)+0,f
u5997:
decfsz	(??_main+0)+0,f
	goto	u5997
opt asmopt_on

	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@du_1352),f
	skipnc
	incf	(main@du_1352+1),f
	movlw	high(01h)
	addwf	(main@du_1352+1),f
	goto	l6439
	
l936:	
	
l6439:	
	movf	(_vblAccX),w
	addlw	low(0FEA0h)
	movwf	(??_main+0)+0
	movf	(_vblAccX+1),w
	skipnc
	addlw	1
	addlw	high(0FEA0h)
	movwf	1+(??_main+0)+0
	comf	(??_main+0)+0,f
	comf	(??_main+0)+1,f
	incf	(??_main+0)+0,f
	skipnz
	incf	(??_main+0)+1,f
	movf	0+(??_main+0)+0,w
	addlw	low(033h)
	movwf	(??_main+2)+0
	movf	1+(??_main+0)+0,w
	skipnc
	addlw	1
	addlw	high(033h)
	movwf	1+(??_main+2)+0
	movf	(main@du_1352+1),w
	subwf	1+(??_main+2)+0,w
	skipz
	goto	u5405
	movf	(main@du_1352),w
	subwf	0+(??_main+2)+0,w
u5405:
	skipnc
	goto	u5401
	goto	u5400
u5401:
	goto	l6437
u5400:
	
l938:	
	line	295
;test.c: 295: RD4=0;
	bcf	(68/8),(68)&7
	line	296
	
l6441:	
;test.c: 296: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
movwf	(??_main+0)+0,f
u6007:
decfsz	(??_main+0)+0,f
	goto	u6007
	clrwdt
opt asmopt_on

	line	297
	
l6443:	
;test.c: 297: a2d_read();
	fcall	_a2d_read
	goto	l6445
	line	298
	
l931:	
	line	286
	
l6445:	
	movlw	high(013Dh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_vblAccY+1),w
	movlw	low(013Dh)
	skipnz
	subwf	(_vblAccY),w
	skipc
	goto	u5411
	goto	u5410
u5411:
	goto	l6469
u5410:
	
l6447:	
	movlw	high(0164h)
	subwf	(_vblAccY+1),w
	movlw	low(0164h)
	skipnz
	subwf	(_vblAccY),w
	skipnc
	goto	u5421
	goto	u5420
u5421:
	goto	l6469
u5420:
	
l6449:	
	movlw	high(0161h)
	subwf	(_vblAccX+1),w
	movlw	low(0161h)
	skipnz
	subwf	(_vblAccX),w
	skipnc
	goto	u5431
	goto	u5430
u5431:
	goto	l932
u5430:
	goto	l6469
	
l940:	
	goto	l6469
	
l941:	
	line	300
;test.c: 298: }
;test.c: 300: while( vblAccY > 316 && vblAccY < 356 && vblAccX < 312 )
	goto	l6469
	
l943:	
	line	303
;test.c: 301: {
;test.c: 303: RD4=1;
	bsf	(68/8),(68)&7
	line	304
	
l6451:	
;test.c: 304: for(int du=1; du<=51-(312-vblAccX); du++) _delay((unsigned long)((400)*(4000000/4000000.0)));
	movlw	low(01h)
	movwf	(main@du_1353)
	movlw	high(01h)
	movwf	((main@du_1353))+1
	goto	l6455
	
l945:	
	
l6453:	
	opt asmopt_off
movlw	133
movwf	(??_main+0)+0,f
u6017:
decfsz	(??_main+0)+0,f
	goto	u6017
opt asmopt_on

	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@du_1353),f
	skipnc
	incf	(main@du_1353+1),f
	movlw	high(01h)
	addwf	(main@du_1353+1),f
	goto	l6455
	
l944:	
	
l6455:	
	comf	(_vblAccX),w
	movwf	(??_main+0)+0
	comf	(_vblAccX+1),w
	movwf	((??_main+0)+0+1)
	incf	(??_main+0)+0,f
	skipnz
	incf	((??_main+0)+0+1),f
	movf	0+(??_main+0)+0,w
	addlw	low(0138h)
	movwf	(??_main+2)+0
	movf	1+(??_main+0)+0,w
	skipnc
	addlw	1
	addlw	high(0138h)
	movwf	1+(??_main+2)+0
	comf	(??_main+2)+0,f
	comf	(??_main+2)+1,f
	incf	(??_main+2)+0,f
	skipnz
	incf	(??_main+2)+1,f
	movf	0+(??_main+2)+0,w
	addlw	low(033h)
	movwf	(??_main+4)+0
	movf	1+(??_main+2)+0,w
	skipnc
	addlw	1
	addlw	high(033h)
	movwf	1+(??_main+4)+0
	movf	(main@du_1353+1),w
	subwf	1+(??_main+4)+0,w
	skipz
	goto	u5445
	movf	(main@du_1353),w
	subwf	0+(??_main+4)+0,w
u5445:
	skipnc
	goto	u5441
	goto	u5440
u5441:
	goto	l6453
u5440:
	
l946:	
	line	305
;test.c: 305: RD5=1;
	bsf	(69/8),(69)&7
	line	306
	
l6457:	
;test.c: 306: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
movwf	(??_main+0)+0,f
u6027:
decfsz	(??_main+0)+0,f
	goto	u6027
	clrwdt
opt asmopt_on

	line	307
	
l6459:	
;test.c: 307: RD4=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(68/8),(68)&7
	line	308
;test.c: 308: for(int du=1; du<=51-(312-vblAccX); du++) _delay((unsigned long)((400)*(4000000/4000000.0)));
	movlw	low(01h)
	movwf	(main@du_1354)
	movlw	high(01h)
	movwf	((main@du_1354))+1
	goto	l6463
	
l948:	
	
l6461:	
	opt asmopt_off
movlw	133
movwf	(??_main+0)+0,f
u6037:
decfsz	(??_main+0)+0,f
	goto	u6037
opt asmopt_on

	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@du_1354),f
	skipnc
	incf	(main@du_1354+1),f
	movlw	high(01h)
	addwf	(main@du_1354+1),f
	goto	l6463
	
l947:	
	
l6463:	
	comf	(_vblAccX),w
	movwf	(??_main+0)+0
	comf	(_vblAccX+1),w
	movwf	((??_main+0)+0+1)
	incf	(??_main+0)+0,f
	skipnz
	incf	((??_main+0)+0+1),f
	movf	0+(??_main+0)+0,w
	addlw	low(0138h)
	movwf	(??_main+2)+0
	movf	1+(??_main+0)+0,w
	skipnc
	addlw	1
	addlw	high(0138h)
	movwf	1+(??_main+2)+0
	comf	(??_main+2)+0,f
	comf	(??_main+2)+1,f
	incf	(??_main+2)+0,f
	skipnz
	incf	(??_main+2)+1,f
	movf	0+(??_main+2)+0,w
	addlw	low(033h)
	movwf	(??_main+4)+0
	movf	1+(??_main+2)+0,w
	skipnc
	addlw	1
	addlw	high(033h)
	movwf	1+(??_main+4)+0
	movf	(main@du_1354+1),w
	subwf	1+(??_main+4)+0,w
	skipz
	goto	u5455
	movf	(main@du_1354),w
	subwf	0+(??_main+4)+0,w
u5455:
	skipnc
	goto	u5451
	goto	u5450
u5451:
	goto	l6461
u5450:
	
l949:	
	line	309
;test.c: 309: RD5=0;
	bcf	(69/8),(69)&7
	line	310
	
l6465:	
;test.c: 310: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
movwf	(??_main+0)+0,f
u6047:
decfsz	(??_main+0)+0,f
	goto	u6047
	clrwdt
opt asmopt_on

	line	311
	
l6467:	
;test.c: 311: a2d_read();
	fcall	_a2d_read
	goto	l6469
	line	312
	
l942:	
	line	300
	
l6469:	
	movlw	high(013Dh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_vblAccY+1),w
	movlw	low(013Dh)
	skipnz
	subwf	(_vblAccY),w
	skipc
	goto	u5461
	goto	u5460
u5461:
	goto	l820
u5460:
	
l6471:	
	movlw	high(0164h)
	subwf	(_vblAccY+1),w
	movlw	low(0164h)
	skipnz
	subwf	(_vblAccY),w
	skipnc
	goto	u5471
	goto	u5470
u5471:
	goto	l820
u5470:
	
l6473:	
	movlw	high(0138h)
	subwf	(_vblAccX+1),w
	movlw	low(0138h)
	skipnz
	subwf	(_vblAccX),w
	skipc
	goto	u5481
	goto	u5480
u5481:
	goto	l943
u5480:
	goto	l820
	
l951:	
	goto	l820
	
l952:	
	goto	l820
	line	313
	
l953:	
	line	114
	goto	l820
	
l954:	
	line	314
	
l955:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_a2d_read
psect	text396,local,class=CODE,delta=2
global __ptext396
__ptext396:

;; *************** function _a2d_read *****************
;; Defined at:
;;		line 319 in file "F:\ELECTRONIC\2015\Projects\New folder\test.c"
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_read_a2d_value
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text396
	file	"F:\ELECTRONIC\2015\Projects\New folder\test.c"
	line	319
	global	__size_of_a2d_read
	__size_of_a2d_read	equ	__end_of_a2d_read-_a2d_read
	
_a2d_read:	
	opt	stack 3
; Regs used in _a2d_read: [wreg+status,2+status,0+pclath+cstack]
	line	321
	
l6153:	
;test.c: 321: read_a2d_value(0);
	movlw	(0)
	fcall	_read_a2d_value
	line	322
;test.c: 322: vblAccX = read_a2d_value(0);
	movlw	(0)
	fcall	_read_a2d_value
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_read_a2d_value)),w
	clrf	(_vblAccX+1)
	addwf	(_vblAccX+1)
	movf	(0+(?_read_a2d_value)),w
	clrf	(_vblAccX)
	addwf	(_vblAccX)

	line	323
;test.c: 323: read_a2d_value(1);
	movlw	(01h)
	fcall	_read_a2d_value
	line	324
;test.c: 324: vblAccY = read_a2d_value(1);
	movlw	(01h)
	fcall	_read_a2d_value
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_read_a2d_value)),w
	clrf	(_vblAccY+1)
	addwf	(_vblAccY+1)
	movf	(0+(?_read_a2d_value)),w
	clrf	(_vblAccY)
	addwf	(_vblAccY)

	line	326
	
l6155:	
;test.c: 326: if(vblAccX > 402) vblAccX = 402;
	movlw	high(0193h)
	subwf	(_vblAccX+1),w
	movlw	low(0193h)
	skipnz
	subwf	(_vblAccX),w
	skipc
	goto	u4941
	goto	u4940
u4941:
	goto	l6159
u4940:
	
l6157:	
	movlw	low(0192h)
	movwf	(_vblAccX)
	movlw	high(0192h)
	movwf	((_vblAccX))+1
	goto	l959
	line	327
	
l958:	
	
l6159:	
;test.c: 327: else if ( vblAccX < 262) vblAccX = 262;
	movlw	high(0106h)
	subwf	(_vblAccX+1),w
	movlw	low(0106h)
	skipnz
	subwf	(_vblAccX),w
	skipnc
	goto	u4951
	goto	u4950
u4951:
	goto	l959
u4950:
	
l6161:	
	movlw	low(0106h)
	movwf	(_vblAccX)
	movlw	high(0106h)
	movwf	((_vblAccX))+1
	goto	l959
	
l960:	
	line	328
	
l959:	
;test.c: 328: if(vblAccY > 406) vblAccY = 406;
	movlw	high(0197h)
	subwf	(_vblAccY+1),w
	movlw	low(0197h)
	skipnz
	subwf	(_vblAccY),w
	skipc
	goto	u4961
	goto	u4960
u4961:
	goto	l6165
u4960:
	
l6163:	
	movlw	low(0196h)
	movwf	(_vblAccY)
	movlw	high(0196h)
	movwf	((_vblAccY))+1
	goto	l964
	line	329
	
l961:	
	
l6165:	
;test.c: 329: else if ( vblAccY < 266) vblAccY = 266;
	movlw	high(010Ah)
	subwf	(_vblAccY+1),w
	movlw	low(010Ah)
	skipnz
	subwf	(_vblAccY),w
	skipnc
	goto	u4971
	goto	u4970
u4971:
	goto	l964
u4970:
	
l6167:	
	movlw	low(010Ah)
	movwf	(_vblAccY)
	movlw	high(010Ah)
	movwf	((_vblAccY))+1
	goto	l964
	
l963:	
	goto	l964
	line	331
	
l962:	
	
l964:	
	return
	opt stack 0
GLOBAL	__end_of_a2d_read
	__end_of_a2d_read:
;; =============== function _a2d_read ends ============

	signat	_a2d_read,88
	global	_read_a2d_value
psect	text397,local,class=CODE,delta=2
global __ptext397
__ptext397:

;; *************** function _read_a2d_value *****************
;; Defined at:
;;		line 336 in file "F:\ELECTRONIC\2015\Projects\New folder\test.c"
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_a2d_read
;; This function uses a non-reentrant model
;;
psect	text397
	file	"F:\ELECTRONIC\2015\Projects\New folder\test.c"
	line	336
	global	__size_of_read_a2d_value
	__size_of_read_a2d_value	equ	__end_of_read_a2d_value-_read_a2d_value
	
_read_a2d_value:	
	opt	stack 3
; Regs used in _read_a2d_value: [wreg+status,2+status,0]
;read_a2d_value@channel stored from wreg
	line	339
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(read_a2d_value@channel)
	
l6135:	
;test.c: 338: unsigned int a2d_value;
;test.c: 339: channel = channel << 3;
	movf	(read_a2d_value@channel),w
	movwf	(??_read_a2d_value+0)+0
	movlw	(03h)-1
u4925:
	clrc
	rlf	(??_read_a2d_value+0)+0,f
	addlw	-1
	skipz
	goto	u4925
	clrc
	rlf	(??_read_a2d_value+0)+0,w
	movwf	(??_read_a2d_value+1)+0
	movf	(??_read_a2d_value+1)+0,w
	movwf	(read_a2d_value@channel)
	line	340
	
l6137:	
;test.c: 340: ADCON0 = ADCON0 & 0b11000111;
	movf	(31),w
	andlw	0C7h
	movwf	(31)	;volatile
	line	341
	
l6139:	
;test.c: 341: ADCON0 = ADCON0 | channel;
	movf	(31),w	;volatile
	iorwf	(read_a2d_value@channel),w
	movwf	(31)	;volatile
	line	342
	
l6141:	
;test.c: 342: ADON = 1;
	bsf	(248/8),(248)&7
	line	343
	
l6143:	
;test.c: 343: _delay(50);
	opt asmopt_off
movlw	16
movwf	(??_read_a2d_value+0)+0,f
u6057:
decfsz	(??_read_a2d_value+0)+0,f
	goto	u6057
	clrwdt
opt asmopt_on

	line	344
	
l6145:	
;test.c: 344: GO = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(250/8),(250)&7
	line	345
;test.c: 345: while( GO == 1 );
	goto	l967
	
l968:	
	
l967:	
	btfsc	(250/8),(250)&7
	goto	u4931
	goto	u4930
u4931:
	goto	l967
u4930:
	goto	l6147
	
l969:	
	line	349
	
l6147:	
;test.c: 346: {
;test.c: 348: }
;test.c: 349: a2d_value = ADRESH;
	movf	(30),w	;volatile
	movwf	(??_read_a2d_value+0)+0
	clrf	(??_read_a2d_value+0)+0+1
	movf	0+(??_read_a2d_value+0)+0,w
	movwf	(read_a2d_value@a2d_value)
	movf	1+(??_read_a2d_value+0)+0,w
	movwf	(read_a2d_value@a2d_value+1)
	line	350
;test.c: 350: a2d_value = a2d_value << 8;
	movf	(read_a2d_value@a2d_value),w
	movwf	(??_read_a2d_value+0)+0+1
	clrf	(??_read_a2d_value+0)+0
	movf	0+(??_read_a2d_value+0)+0,w
	movwf	(read_a2d_value@a2d_value)
	movf	1+(??_read_a2d_value+0)+0,w
	movwf	(read_a2d_value@a2d_value+1)
	line	351
;test.c: 351: a2d_value = a2d_value + ADRESL;
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
	line	352
	
l6149:	
;test.c: 352: return a2d_value;
	movf	(read_a2d_value@a2d_value+1),w
	clrf	(?_read_a2d_value+1)
	addwf	(?_read_a2d_value+1)
	movf	(read_a2d_value@a2d_value),w
	clrf	(?_read_a2d_value)
	addwf	(?_read_a2d_value)

	goto	l970
	
l6151:	
	line	354
	
l970:	
	return
	opt stack 0
GLOBAL	__end_of_read_a2d_value
	__end_of_read_a2d_value:
;; =============== function _read_a2d_value ends ============

	signat	_read_a2d_value,4218
	global	_lcd_init
psect	text398,local,class=CODE,delta=2
global __ptext398
__ptext398:

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 51 in file "F:\ELECTRONIC\2015\Projects\New folder\lcd.h"
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
;;      Temps:          0       2       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_lcd_add
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text398
	file	"F:\ELECTRONIC\2015\Projects\New folder\lcd.h"
	line	51
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 3
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	53
	
l6097:	
;lcd.h: 53: RB4 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(52/8),(52)&7
	line	54
	
l6099:	
;lcd.h: 54: lcd_data = 0b00101000;
	movlw	(028h)
	movwf	(??_lcd_init+0)+0
	movf	(??_lcd_init+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_lcd_data)^080h
	line	55
	
l6101:	
;lcd.h: 55: lcd_add();
	fcall	_lcd_add
	line	56
	
l6103:	
;lcd.h: 56: _delay(40000);
	opt asmopt_off
movlw	52
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_lcd_init+0)+0+1),f
	movlw	241
movwf	((??_lcd_init+0)+0),f
u6067:
	decfsz	((??_lcd_init+0)+0),f
	goto	u6067
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u6067
	nop2
opt asmopt_on

	line	57
	
l6105:	
;lcd.h: 57: lcd_data = 0b00101000;
	movlw	(028h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_lcd_init+0)+0
	movf	(??_lcd_init+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_lcd_data)^080h
	line	58
	
l6107:	
;lcd.h: 58: lcd_add();
	fcall	_lcd_add
	line	59
;lcd.h: 59: _delay(40000);
	opt asmopt_off
movlw	52
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_lcd_init+0)+0+1),f
	movlw	241
movwf	((??_lcd_init+0)+0),f
u6077:
	decfsz	((??_lcd_init+0)+0),f
	goto	u6077
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u6077
	nop2
opt asmopt_on

	line	60
;lcd.h: 60: lcd_data = 0b00000110;
	movlw	(06h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_lcd_init+0)+0
	movf	(??_lcd_init+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_lcd_data)^080h
	line	61
	
l6109:	
;lcd.h: 61: lcd_add();
	fcall	_lcd_add
	line	62
	
l6111:	
;lcd.h: 62: _delay(40000);
	opt asmopt_off
movlw	52
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_lcd_init+0)+0+1),f
	movlw	241
movwf	((??_lcd_init+0)+0),f
u6087:
	decfsz	((??_lcd_init+0)+0),f
	goto	u6087
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u6087
	nop2
opt asmopt_on

	line	63
	
l6113:	
;lcd.h: 63: lcd_data = 0b00000110;
	movlw	(06h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_lcd_init+0)+0
	movf	(??_lcd_init+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_lcd_data)^080h
	line	64
	
l6115:	
;lcd.h: 64: lcd_add();
	fcall	_lcd_add
	line	65
;lcd.h: 65: _delay(40000);
	opt asmopt_off
movlw	52
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_lcd_init+0)+0+1),f
	movlw	241
movwf	((??_lcd_init+0)+0),f
u6097:
	decfsz	((??_lcd_init+0)+0),f
	goto	u6097
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u6097
	nop2
opt asmopt_on

	line	66
;lcd.h: 66: lcd_data = 0b00001101;
	movlw	(0Dh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_lcd_init+0)+0
	movf	(??_lcd_init+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_lcd_data)^080h
	line	67
	
l6117:	
;lcd.h: 67: lcd_add();
	fcall	_lcd_add
	line	68
	
l6119:	
;lcd.h: 68: _delay(40000);
	opt asmopt_off
movlw	52
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_lcd_init+0)+0+1),f
	movlw	241
movwf	((??_lcd_init+0)+0),f
u6107:
	decfsz	((??_lcd_init+0)+0),f
	goto	u6107
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u6107
	nop2
opt asmopt_on

	line	69
	
l6121:	
;lcd.h: 69: lcd_data = 0b00001101;
	movlw	(0Dh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_lcd_init+0)+0
	movf	(??_lcd_init+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_lcd_data)^080h
	line	70
	
l6123:	
;lcd.h: 70: lcd_add();
	fcall	_lcd_add
	line	71
;lcd.h: 71: _delay(40000);
	opt asmopt_off
movlw	52
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_lcd_init+0)+0+1),f
	movlw	241
movwf	((??_lcd_init+0)+0),f
u6117:
	decfsz	((??_lcd_init+0)+0),f
	goto	u6117
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u6117
	nop2
opt asmopt_on

	line	72
;lcd.h: 72: lcd_data = 0b00011000;
	movlw	(018h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_lcd_init+0)+0
	movf	(??_lcd_init+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_lcd_data)^080h
	line	73
	
l6125:	
;lcd.h: 73: lcd_add();
	fcall	_lcd_add
	line	74
	
l6127:	
;lcd.h: 74: _delay(40000);
	opt asmopt_off
movlw	52
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_lcd_init+0)+0+1),f
	movlw	241
movwf	((??_lcd_init+0)+0),f
u6127:
	decfsz	((??_lcd_init+0)+0),f
	goto	u6127
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u6127
	nop2
opt asmopt_on

	line	75
	
l6129:	
;lcd.h: 75: lcd_data = 0b00000001;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_lcd_data)^080h
	bsf	status,0
	rlf	(_lcd_data)^080h,f
	line	76
	
l6131:	
;lcd.h: 76: lcd_add();
	fcall	_lcd_add
	line	77
	
l6133:	
;lcd.h: 77: _delay(40000);
	opt asmopt_off
movlw	52
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_lcd_init+0)+0+1),f
	movlw	241
movwf	((??_lcd_init+0)+0),f
u6137:
	decfsz	((??_lcd_init+0)+0),f
	goto	u6137
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u6137
	nop2
opt asmopt_on

	line	79
	
l777:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	___lwdiv
psect	text399,local,class=CODE,delta=2
global __ptext399
__ptext399:

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] unsigned int 
;;  dividend        2    2[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    5[BANK0 ] unsigned int 
;;  counter         1    7[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text399
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 4
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l5917:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l5919:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u4421
	goto	u4420
u4421:
	goto	l5939
u4420:
	line	11
	
l5921:	
	clrf	(___lwdiv@counter)
	bsf	status,0
	rlf	(___lwdiv@counter),f
	line	12
	goto	l5927
	
l3055:	
	line	13
	
l5923:	
	movlw	01h
	
u4435:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u4435
	line	14
	
l5925:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l5927
	line	15
	
l3054:	
	line	12
	
l5927:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u4441
	goto	u4440
u4441:
	goto	l5923
u4440:
	goto	l5929
	
l3056:	
	goto	l5929
	line	16
	
l3057:	
	line	17
	
l5929:	
	movlw	01h
	
u4455:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u4455
	line	18
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u4465
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u4465:
	skipc
	goto	u4461
	goto	u4460
u4461:
	goto	l5935
u4460:
	line	19
	
l5931:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l5933:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l5935
	line	21
	
l3058:	
	line	22
	
l5935:	
	movlw	01h
	
u4475:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u4475
	line	23
	
l5937:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u4481
	goto	u4480
u4481:
	goto	l5929
u4480:
	goto	l5939
	
l3059:	
	goto	l5939
	line	24
	
l3053:	
	line	25
	
l5939:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l3060
	
l5941:	
	line	26
	
l3060:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	_rs232_init
psect	text400,local,class=CODE,delta=2
global __ptext400
__ptext400:

;; *************** function _rs232_init *****************
;; Defined at:
;;		line 74 in file "F:\ELECTRONIC\2015\Projects\New folder\init_sys.h"
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text400
	file	"F:\ELECTRONIC\2015\Projects\New folder\init_sys.h"
	line	74
	global	__size_of_rs232_init
	__size_of_rs232_init	equ	__end_of_rs232_init-_rs232_init
	
_rs232_init:	
	opt	stack 4
; Regs used in _rs232_init: [wreg]
	line	78
	
l5573:	
;init_sys.h: 78: TRISC=0x80;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	80
;init_sys.h: 80: SPBRG=25;
	movlw	(019h)
	movwf	(153)^080h	;volatile
	line	81
	
l5575:	
;init_sys.h: 81: SPEN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(199/8),(199)&7
	line	82
	
l5577:	
;init_sys.h: 82: RX9 = 0;
	bcf	(198/8),(198)&7
	line	83
	
l5579:	
;init_sys.h: 83: CREN = 1;
	bsf	(196/8),(196)&7
	line	84
	
l5581:	
;init_sys.h: 84: TX9 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1222/8)^080h,(1222)&7
	line	85
	
l5583:	
;init_sys.h: 85: TXEN = 1;
	bsf	(1221/8)^080h,(1221)&7
	line	86
	
l5585:	
;init_sys.h: 86: SYNC = 0;
	bcf	(1220/8)^080h,(1220)&7
	line	87
	
l5587:	
;init_sys.h: 87: BRGH = 1;
	bsf	(1218/8)^080h,(1218)&7
	line	88
;init_sys.h: 88: SPBRG = 25;
	movlw	(019h)
	movwf	(153)^080h	;volatile
	line	89
	
l5589:	
;init_sys.h: 89: RCIE = 1;
	bsf	(1125/8)^080h,(1125)&7
	line	90
	
l5591:	
;init_sys.h: 90: TXIE = 0;
	bcf	(1124/8)^080h,(1124)&7
	line	93
	
l814:	
	return
	opt stack 0
GLOBAL	__end_of_rs232_init
	__end_of_rs232_init:
;; =============== function _rs232_init ends ============

	signat	_rs232_init,88
	global	_atod_init
psect	text401,local,class=CODE,delta=2
global __ptext401
__ptext401:

;; *************** function _atod_init *****************
;; Defined at:
;;		line 29 in file "F:\ELECTRONIC\2015\Projects\New folder\init_sys.h"
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text401
	file	"F:\ELECTRONIC\2015\Projects\New folder\init_sys.h"
	line	29
	global	__size_of_atod_init
	__size_of_atod_init	equ	__end_of_atod_init-_atod_init
	
_atod_init:	
	opt	stack 4
; Regs used in _atod_init: [wreg]
	line	30
	
l5571:	
;init_sys.h: 30: ADCON0 = 0b01000000;
	movlw	(040h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	31
;init_sys.h: 31: ADCON1 = 0b10000100;
	movlw	(084h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	32
	
l802:	
	return
	opt stack 0
GLOBAL	__end_of_atod_init
	__end_of_atod_init:
;; =============== function _atod_init ends ============

	signat	_atod_init,88
	global	_init_sys
psect	text402,local,class=CODE,delta=2
global __ptext402
__ptext402:

;; *************** function _init_sys *****************
;; Defined at:
;;		line 12 in file "F:\ELECTRONIC\2015\Projects\New folder\init_sys.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text402
	file	"F:\ELECTRONIC\2015\Projects\New folder\init_sys.h"
	line	12
	global	__size_of_init_sys
	__size_of_init_sys	equ	__end_of_init_sys-_init_sys
	
_init_sys:	
	opt	stack 4
; Regs used in _init_sys: [wreg+status,2]
	line	13
	
l5561:	
;init_sys.h: 13: TRISA = 0b11111111;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	14
	
l5563:	
;init_sys.h: 14: PORTA = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	16
	
l5565:	
;init_sys.h: 16: TRISB = 0b00000000;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	17
	
l5567:	
;init_sys.h: 17: PORTB = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	19
	
l5569:	
;init_sys.h: 19: TRISC = 0b10000000;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	20
;init_sys.h: 20: PORTC = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	21
	
l799:	
	return
	opt stack 0
GLOBAL	__end_of_init_sys
	__end_of_init_sys:
;; =============== function _init_sys ends ============

	signat	_init_sys,88
	global	_lcd_add
psect	text403,local,class=CODE,delta=2
global __ptext403
__ptext403:

;; *************** function _lcd_add *****************
;; Defined at:
;;		line 93 in file "F:\ELECTRONIC\2015\Projects\New folder\lcd.h"
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
;;      Temps:          0       2       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_lcd_init
;;		_putch
;;		_clr_display
;;		_curser
;;		_position
;; This function uses a non-reentrant model
;;
psect	text403
	file	"F:\ELECTRONIC\2015\Projects\New folder\lcd.h"
	line	93
	global	__size_of_lcd_add
	__size_of_lcd_add	equ	__end_of_lcd_add-_lcd_add
	
_lcd_add:	
	opt	stack 3
; Regs used in _lcd_add: [wreg+status,2+status,0]
	line	95
	
l5493:	
;lcd.h: 95: lcd_data_high = lcd_data >> 4;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_lcd_data)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_lcd_add+0)+0
	movlw	04h
u3625:
	clrc
	rrf	(??_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u3625
	movf	0+(??_lcd_add+0)+0,w
	movwf	(??_lcd_add+1)+0
	movf	(??_lcd_add+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_lcd_data_high)^080h
	line	96
;lcd.h: 96: lcd_data_low = lcd_data << 4;
	movf	(_lcd_data)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_lcd_add+0)+0
	movlw	(04h)-1
u3635:
	clrc
	rlf	(??_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u3635
	clrc
	rlf	(??_lcd_add+0)+0,w
	movwf	(??_lcd_add+1)+0
	movf	(??_lcd_add+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_lcd_data_low)^080h
	line	97
;lcd.h: 97: lcd_data_low = lcd_data_low >> 4;
	movf	(_lcd_data_low)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_lcd_add+0)+0
	movlw	04h
u3645:
	clrc
	rrf	(??_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u3645
	movf	0+(??_lcd_add+0)+0,w
	movwf	(??_lcd_add+1)+0
	movf	(??_lcd_add+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_lcd_data_low)^080h
	line	98
	
l5495:	
;lcd.h: 98: PORTB = PORTB & 0b11110000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(6),w
	andlw	0F0h
	movwf	(6)	;volatile
	line	99
	
l5497:	
;lcd.h: 99: PORTB = lcd_data_high | PORTB;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_lcd_data_high)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	iorwf	(6),w	;volatile
	movwf	(6)	;volatile
	line	100
	
l5499:	
;lcd.h: 100: RB5 = 1;
	bsf	(53/8),(53)&7
	line	101
	
l5501:	
;lcd.h: 101: RB5 = 0;
	bcf	(53/8),(53)&7
	line	102
;lcd.h: 102: PORTB = PORTB & 0b11110000;
	movf	(6),w
	andlw	0F0h
	movwf	(6)	;volatile
	line	103
	
l5503:	
;lcd.h: 103: PORTB = lcd_data_low | PORTB;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_lcd_data_low)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	iorwf	(6),w	;volatile
	movwf	(6)	;volatile
	line	104
	
l5505:	
;lcd.h: 104: RB5 = 1;
	bsf	(53/8),(53)&7
	line	105
	
l5507:	
;lcd.h: 105: RB5 = 0;
	bcf	(53/8),(53)&7
	line	107
	
l783:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_add
	__end_of_lcd_add:
;; =============== function _lcd_add ends ============

	signat	_lcd_add,88
	global	_isr
psect	text404,local,class=CODE,delta=2
global __ptext404
__ptext404:

;; *************** function _isr *****************
;; Defined at:
;;		line 388 in file "F:\ELECTRONIC\2015\Projects\New folder\test.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, btemp+1, pclath, cstack
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___lwmod
;;		_eeprom_temp
;;		_nop
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text404
	file	"F:\ELECTRONIC\2015\Projects\New folder\test.c"
	line	388
	global	__size_of_isr
	__size_of_isr	equ	__end_of_isr-_isr
	
_isr:	
	opt	stack 3
; Regs used in _isr: [allreg]
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
psect	text404
	line	390
	
i1l5597:	
;test.c: 390: if(TMR1IF==1)
	btfss	(96/8),(96)&7
	goto	u372_21
	goto	u372_20
u372_21:
	goto	i1l5629
u372_20:
	line	392
	
i1l5599:	
;test.c: 391: {
;test.c: 392: msecond ++;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(_msecond)^080h,f
	skipnc
	incf	(_msecond+1)^080h,f
	movlw	high(01h)
	addwf	(_msecond+1)^080h,f
	line	393
;test.c: 393: if(msecond == 10)
	movlw	0Ah
	xorwf	(_msecond)^080h,w
	iorwf	(_msecond+1)^080h,w
	skipz
	goto	u373_21
	goto	u373_20
u373_21:
	goto	i1l977
u373_20:
	line	395
	
i1l5601:	
;test.c: 394: {
;test.c: 395: second ++;
	movlw	low(01h)
	addwf	(_second)^080h,f
	skipnc
	incf	(_second+1)^080h,f
	movlw	high(01h)
	addwf	(_second+1)^080h,f
	line	396
	
i1l5603:	
;test.c: 396: msecond = 0;
	clrf	(_msecond)^080h
	clrf	(_msecond+1)^080h
	line	397
	
i1l5605:	
;test.c: 397: if( second == 60)
	movlw	03Ch
	xorwf	(_second)^080h,w
	iorwf	(_second+1)^080h,w
	skipz
	goto	u374_21
	goto	u374_20
u374_21:
	goto	i1l977
u374_20:
	line	399
	
i1l5607:	
;test.c: 398: {
;test.c: 399: minute ++;
	movlw	low(01h)
	addwf	(_minute)^080h,f
	skipnc
	incf	(_minute+1)^080h,f
	movlw	high(01h)
	addwf	(_minute+1)^080h,f
	line	401
	
i1l5609:	
;test.c: 401: second = 0;
	clrf	(_second)^080h
	clrf	(_second+1)^080h
	line	406
	
i1l5611:	
;test.c: 406: x = minute%30 ;
	movlw	low(01Eh)
	movwf	(?___lwmod)
	movlw	high(01Eh)
	movwf	((?___lwmod))+1
	movf	(_minute+1)^080h,w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(_minute)^080h,w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	movf	(0+(?___lwmod)),w
	movwf	(??_isr+0)+0
	movf	(??_isr+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_x)^080h
	line	407
	
i1l5613:	
;test.c: 407: if ( x == 0)
	movf	(_x)^080h,f
	skipz
	goto	u375_21
	goto	u375_20
u375_21:
	goto	i1l5619
u375_20:
	line	409
	
i1l5615:	
;test.c: 408: {
;test.c: 409: eeprom_temp();
	fcall	_eeprom_temp
	line	410
	
i1l5617:	
;test.c: 410: nop();
	fcall	_nop
	goto	i1l5619
	line	411
	
i1l979:	
	line	415
	
i1l5619:	
;test.c: 411: }
;test.c: 415: if( minute == 60)
	movlw	03Ch
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	xorwf	(_minute)^080h,w
	iorwf	(_minute+1)^080h,w
	skipz
	goto	u376_21
	goto	u376_20
u376_21:
	goto	i1l977
u376_20:
	line	417
	
i1l5621:	
;test.c: 416: {
;test.c: 417: minute = 0;
	clrf	(_minute)^080h
	clrf	(_minute+1)^080h
	line	418
	
i1l5623:	
;test.c: 418: hour ++;
	movlw	low(01h)
	addwf	(_hour)^080h,f
	skipnc
	incf	(_hour+1)^080h,f
	movlw	high(01h)
	addwf	(_hour+1)^080h,f
	goto	i1l977
	line	419
	
i1l5625:	
	goto	i1l977
	
i1l981:	
	goto	i1l977
	line	420
	
i1l980:	
	goto	i1l977
	line	421
	
i1l978:	
	line	422
	
i1l977:	
	line	426
;test.c: 420: }
;test.c: 421: }
;test.c: 422: }
;test.c: 426: TMR1IF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(96/8),(96)&7
	line	427
	
i1l5627:	
;test.c: 427: TMR1L = 0xB0;
	movlw	(0B0h)
	movwf	(14)	;volatile
	line	428
;test.c: 428: TMR1H = 0x3C;
	movlw	(03Ch)
	movwf	(15)	;volatile
	goto	i1l5629
	line	432
	
i1l976:	
	line	434
	
i1l5629:	
;test.c: 432: }
;test.c: 434: if( RCIF == 1)
	btfss	(101/8),(101)&7
	goto	u377_21
	goto	u377_20
u377_21:
	goto	i1l987
u377_20:
	line	436
	
i1l5631:	
;test.c: 435: {
;test.c: 436: RCIF = 0;
	bcf	(101/8),(101)&7
	line	437
	
i1l5633:	
;test.c: 437: if( RCREG=='*' || j>8 )
	movf	(26),w	;volatile
	xorlw	02Ah
	skipnz
	goto	u378_21
	goto	u378_20
u378_21:
	goto	i1l985
u378_20:
	
i1l5635:	
	movlw	(09h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(_j)^080h,w
	skipc
	goto	u379_21
	goto	u379_20
u379_21:
	goto	i1l5637
u379_20:
	
i1l985:	
	line	439
;test.c: 438: {
;test.c: 439: j=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_j)^080h
	goto	i1l5637
	line	440
	
i1l983:	
	line	441
	
i1l5637:	
;test.c: 440: }
;test.c: 441: rc[j] = RCREG;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(26),w	;volatile
	movwf	(??_isr+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_j)^080h,w
	addlw	_rc&0ffh
	movwf	fsr0
	movf	(??_isr+0)+0,w
	bcf	status, 7	;select IRP bank1
	movwf	indf
	line	442
	
i1l5639:	
;test.c: 442: j ++;
	movlw	(01h)
	movwf	(??_isr+0)+0
	movf	(??_isr+0)+0,w
	addwf	(_j)^080h,f
	line	444
	
i1l5641:	
;test.c: 444: if( RCREG=='#' )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(26),w	;volatile
	xorlw	023h
	skipz
	goto	u380_21
	goto	u380_20
u380_21:
	goto	i1l5645
u380_20:
	line	446
	
i1l5643:	
;test.c: 445: {
;test.c: 446: j=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_j)^080h
	goto	i1l5645
	line	447
	
i1l986:	
	line	449
	
i1l5645:	
;test.c: 447: }
;test.c: 449: nop();
	fcall	_nop
	goto	i1l987
	line	451
	
i1l982:	
	line	453
	
i1l987:	
	movf	(??_isr+4),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	global	_eeprom_temp
psect	text405,local,class=CODE,delta=2
global __ptext405
__ptext405:

;; *************** function _eeprom_temp *****************
;; Defined at:
;;		line 459 in file "F:\ELECTRONIC\2015\Projects\New folder\test.c"
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
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_eeprom_write
;; This function is called by:
;;		_isr
;; This function uses a non-reentrant model
;;
psect	text405
	file	"F:\ELECTRONIC\2015\Projects\New folder\test.c"
	line	459
	global	__size_of_eeprom_temp
	__size_of_eeprom_temp	equ	__end_of_eeprom_temp-_eeprom_temp
	
_eeprom_temp:	
	opt	stack 3
; Regs used in _eeprom_temp: [wreg+status,2+status,0+pclath+cstack]
	line	461
	
i1l5647:	
;test.c: 461: value = temperature ;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_temperature)^080h,w
	movwf	(??_eeprom_temp+0)+0
	movf	(??_eeprom_temp+0)+0,w
	movwf	(_value)^080h
	line	462
	
i1l5649:	
;test.c: 462: eeprom_write(address, value );
	movf	(_value)^080h,w
	movwf	(??_eeprom_temp+0)+0
	movf	(??_eeprom_temp+0)+0,w
	movwf	(?_eeprom_write)
	movf	(_address)^080h,w
	fcall	_eeprom_write
	line	463
	
i1l5651:	
;test.c: 463: eeprom_write(255, address );
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_address)^080h,w
	movwf	(??_eeprom_temp+0)+0
	movf	(??_eeprom_temp+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(0FFh)
	fcall	_eeprom_write
	line	464
	
i1l5653:	
;test.c: 464: address ++ ;
	movlw	(01h)
	movwf	(??_eeprom_temp+0)+0
	movf	(??_eeprom_temp+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(_address)^080h,f
	line	465
	
i1l5655:	
;test.c: 465: if(address == 255) address = 0;
	movf	(_address)^080h,w
	xorlw	0FFh
	skipz
	goto	u381_21
	goto	u381_20
u381_21:
	goto	i1l991
u381_20:
	
i1l5657:	
	clrf	(_address)^080h
	goto	i1l991
	
i1l990:	
	line	467
	
i1l991:	
	return
	opt stack 0
GLOBAL	__end_of_eeprom_temp
	__end_of_eeprom_temp:
;; =============== function _eeprom_temp ends ============

	signat	_eeprom_temp,88
	global	___lwmod
psect	text406,local,class=CODE,delta=2
global __ptext406
__ptext406:

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] unsigned int 
;;  dividend        2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_isr
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text406
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 4
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
i1l5943:	
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u449_21
	goto	u449_20
u449_21:
	goto	i1l5961
u449_20:
	line	9
	
i1l5945:	
	clrf	(___lwmod@counter)
	bsf	status,0
	rlf	(___lwmod@counter),f
	line	10
	goto	i1l5951
	
i1l3065:	
	line	11
	
i1l5947:	
	movlw	01h
	
u450_25:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u450_25
	line	12
	
i1l5949:	
	movlw	(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	goto	i1l5951
	line	13
	
i1l3064:	
	line	10
	
i1l5951:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u451_21
	goto	u451_20
u451_21:
	goto	i1l5947
u451_20:
	goto	i1l5953
	
i1l3066:	
	goto	i1l5953
	line	14
	
i1l3067:	
	line	15
	
i1l5953:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u452_25
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u452_25:
	skipc
	goto	u452_21
	goto	u452_20
u452_21:
	goto	i1l5957
u452_20:
	line	16
	
i1l5955:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	goto	i1l5957
	
i1l3068:	
	line	17
	
i1l5957:	
	movlw	01h
	
u453_25:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u453_25
	line	18
	
i1l5959:	
	movlw	low(01h)
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u454_21
	goto	u454_20
u454_21:
	goto	i1l5953
u454_20:
	goto	i1l5961
	
i1l3069:	
	goto	i1l5961
	line	19
	
i1l3063:	
	line	20
	
i1l5961:	
	movf	(___lwmod@dividend+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	goto	i1l3070
	
i1l5963:	
	line	21
	
i1l3070:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
;; =============== function ___lwmod ends ============

	signat	___lwmod,8314
	global	_eeprom_write
psect	text407,local,class=CODE,delta=2
global __ptext407
__ptext407:

;; *************** function _eeprom_write *****************
;; Defined at:
;;		line 7 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\eewrite.c"
;; Parameters:    Size  Location     Type
;;  addr            1    wreg     unsigned char 
;;  value           1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  addr            1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_eeprom_temp
;; This function uses a non-reentrant model
;;
psect	text407
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\eewrite.c"
	line	7
	global	__size_of_eeprom_write
	__size_of_eeprom_write	equ	__end_of_eeprom_write-_eeprom_write
	
_eeprom_write:	
	opt	stack 3
; Regs used in _eeprom_write: [wreg+status,2+status,0]
;eeprom_write@addr stored from wreg
	movwf	(eeprom_write@addr)
	line	8
	
i1l2357:	
	goto	i1l2358
	
i1l2359:	
	
i1l2358:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	btfsc	(3169/8)^0180h,(3169)&7
	goto	u382_21
	goto	u382_20
u382_21:
	goto	i1l2358
u382_20:
	goto	i1l5659
	
i1l2360:	
	
i1l5659:	
	movf	(eeprom_write@addr),w
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(269)^0100h	;volatile
	movf	(eeprom_write@value),w
	movwf	(268)^0100h	;volatile
	
i1l5661:	
	movlw	(03Fh)
	movwf	(??_eeprom_write+0)+0
	movf	(??_eeprom_write+0)+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	andwf	(396)^0180h,f	;volatile
	
i1l5663:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(24/8),(24)&7
	
i1l5665:	
	btfss	(95/8),(95)&7
	goto	u383_21
	goto	u383_20
u383_21:
	goto	i1l2361
u383_20:
	
i1l5667:	
	bsf	(24/8),(24)&7
	
i1l2361:	
	bcf	(95/8),(95)&7
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bsf	(3170/8)^0180h,(3170)&7
	
i1l5669:	
	movlw	(055h)
	movwf	(397)^0180h	;volatile
	movlw	(0AAh)
	movwf	(397)^0180h	;volatile
	
i1l5671:	
	bsf	(3169/8)^0180h,(3169)&7
	
i1l5673:	
	bcf	(3170/8)^0180h,(3170)&7
	
i1l5675:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(24/8),(24)&7
	goto	u384_21
	goto	u384_20
u384_21:
	goto	i1l2364
u384_20:
	
i1l5677:	
	bsf	(95/8),(95)&7
	goto	i1l2364
	
i1l2362:	
	goto	i1l2364
	
i1l2363:	
	line	10
;	Return value of _eeprom_write is never used
	
i1l2364:	
	return
	opt stack 0
GLOBAL	__end_of_eeprom_write
	__end_of_eeprom_write:
;; =============== function _eeprom_write ends ============

	signat	_eeprom_write,8313
	global	_nop
psect	text408,local,class=CODE,delta=2
global __ptext408
__ptext408:

;; *************** function _nop *****************
;; Defined at:
;;		line 96 in file "F:\ELECTRONIC\2015\Projects\New folder\init_sys.h"
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_isr
;;		_calculate
;; This function uses a non-reentrant model
;;
psect	text408
	file	"F:\ELECTRONIC\2015\Projects\New folder\init_sys.h"
	line	96
	global	__size_of_nop
	__size_of_nop	equ	__end_of_nop-_nop
	
_nop:	
	opt	stack 4
; Regs used in _nop: []
	line	97
	
i1l817:	
	return
	opt stack 0
GLOBAL	__end_of_nop
	__end_of_nop:
;; =============== function _nop ends ============

	signat	_nop,88
psect	text409,local,class=CODE,delta=2
global __ptext409
__ptext409:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
