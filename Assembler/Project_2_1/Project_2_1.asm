.include "tn2313def.inc"		// ���� ��������

/*
.def	tempb	=R16			//������� ��� ��������
.def	tempd	=R17
.equ	constb	=0xFF			// ��������� - ��� �� �����
.equ	constd 	=0xBF			// ��������� - ��� �� �����, ����� PIN6

		ldi tempb,constb		// ��������� � ������� ���������
		ldi	tempd,constd		// ��������� � ������� ���������
		
		out DDRB,tempb			// ���������������� ����������� ����� �
		out DDRD,tempd			// ���������������� ����������� ����� D
		
main:
		out PORTB,constb			// ���������������� ��������� ������ �
		//ldi tempd,0b0011111		// ��������� � ������� ��������� �������� �����������
		out PORTD,constd			// ���������������� ��������� ������ D
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
