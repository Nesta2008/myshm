.include "tn2313def.inc"		// Файл описания

/*
.def	tempb	=R16			//Создали имя регистру
.def	tempd	=R17
.equ	constb	=0xFF			// Константа - все на выход
.equ	constd 	=0xBF			// Константа - все на выход, кроме PIN6

		ldi tempb,constb		// Загрузили в регистр константу
		ldi	tempd,constd		// Загрузили в регистр константу
		
		out DDRB,tempb			// Запрограмировали направление порта В
		out DDRD,tempd			// Запрограмировали направление порта D
		
main:
		out PORTB,constb			// Запрограмировали потенциал портов В
		//ldi tempd,0b0011111		// Загрузили в регистр требуемые значения потеницалов
		out PORTD,constd			// Запрограмировали потенциал портов D
		in tempd,PIND

		rjmp main

*/
ldi R16, 0b11111111
ldi R17, 0b00111111
//ldi R18, 0b11100000

out DDRB, R16	
out DDRD, R17
out PORTB, R16
out PORTD, R16
main:
		
		
		nop
		nop
		in R18, PIND
		lsr R18
		out PORTD,R18
		nop
		nop
		nop
		nop
		rjmp main
