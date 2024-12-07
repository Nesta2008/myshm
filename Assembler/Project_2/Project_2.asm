.include "tn2313def.inc"    //Файл описания

.def	ON	=R16		// Регистру R16 присвоили имя temp
.def	temp	=R17
.def	OFF	=R20
.def	tempstack	=R21		
.def	Delay = R18			// Задержка
.def	loop = R19			// Петля задержки
.equ	allON	=0xFF		//Константа везде единицы

.equ	DelayMax = 0xFF		//Длительность петли

.org	0x00
		
		ldi	tempstack, low (RAMEND)		//Инициализация стека
		out	SPL, tempstack
		
		clr	temp		//Обнулили регистр
		ldi	ON,allON	//В регистр R16 загрузили константу 
		ldi OFF,0x20
		out	DDRB,ON		//ПОРт В на выход
		out	DDRD,ON		
		

main:
		out	PORTB, ON		//Включили VD
		out PORTD, ON
		rcall	Pause		//вызов задержки
		rcall	Pause		//вызов задержки
		nop
		out PORTB, temp
		out PORTD, OFF		//ВЫключили VD	
		rcall	Pause		//вызов задержки
		rcall	Pause		//вызов задержки
		nop
		out PORTD, temp
		rcall	Pause
		rcall	Pause		//вызов задержки
		out PORTD, OFF		//ВЫключили VD
		rcall	Pause
		rcall	Pause		//вызов задержки
		rjmp main




Pause:
	
	ldi loop, DelayMax
P1:	ldi Delay,DelayMax
P2:	dec	Delay	
	nop
	nop
	brne P2
	dec	loop
	brne P1
	ret
