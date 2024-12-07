/*
MK:	ATtiny2313
�������� �������:	1 MHz
*/

.include "tn2313def.inc"    //���� ��������

.def	ON	=R16		// �������� R16 ��������� ��� temp
.def	temp	=R17
.def	OFF	=R20
.def	tempstack	=R21
.def	temptm	=R22
.def	Delay = R18			// ��������
.def	loop = R19			// ����� ��������
.equ	allON	=0xFF		//��������� ����� �������

.equ	DelayMax = 0xFF		//������������ �����

.org	0x00
		
		
		rjmp	init	
		reti			;(0;01) ??????? ?????????? 0
		reti			;(0;02) ??????? ?????????? 1
		reti			;(0;03) ?????? ???????/???????? ?1
		reti		    ;(0;04) ?????????? ? ???????/???????? ?1
		reti			;(0;05) ???????????? ???????/???????? ?1
		rjmp	T0_Ovr	;(0;06) ???????????? ???????/???????? ?0
		reti			;(0;07) USART, ????? ????????
		reti			;(0;08) ??????? ?????? USART ????
		reti			;(0;09) USART, ???????? ?????????
		reti			;(0;0A) ?????????? ?? ???????????
		reti			;(0;0B) ?????????? ?? ????????? ?? ????? ????????
		reti			;(0;0C) ?????????? ? ???????/???????? ?1
		reti			;(0;0D) ?????????? ? ???????/???????? ?0
		reti			;(0;0E) ?????????? ? ???????/???????? ?0
		reti			;(0;0F) USI ????????? ??????????
		reti			;(0;10) USI ????????????
		reti			;(0;11) EEPROM ??????????
		reti			;(0;12) ???????????? ??????????? ??????

init:	

 		ldi	tempstack, low (RAMEND)		//������������� �����
		out	SPL, tempstack

	
		ldi	ON,allON	//� ������� R16 ��������� ��������� 
		ldi OFF,0x20
		out	DDRB,ON		//���� � �� �����
		out	DDRD,ON		
		clr	temp			//�������� �������
		/*
		������� TIMSK ���������/��������� ��������� ���������� ��� �������� �0 � �1 
		�������� �������� TIMSK �� 227 ��������
		���� ������� �������� � ����, �� ��������������� ���� �������� ����������, ���������

		��� ������� �0:
		TOIE0 	���������� �� ������������ ������� �0 
				������������ - ����� ������� ������� ������� ��������� � 255 �� 0

		OCIE0A	���������� �� ���������� �������� �������� TCNT0 ������� �0	� ��������� ���������� OCR0A

		OCIE0B	���������� �� ���������� �������� �������� TCNT0 ������� �0	� ��������� ���������� OCR0B
		*/
		
		ldi tempstack, (1<<TOIE0)		;���������� �� ������������
		out TIMSK, tempstack


		ldi		tempstack,(1<CS02|0<<CS01|1<CS00) ;������� 1
		out		TCCR0B,tempstack
		

		sei		;���������� ���������� ����������
main:
		out	PORTB, ON		;�������� VD
		out PORTD, ON
		rcall	Pause		//����� ��������
		rcall	Pause		//����� ��������
		nop
	/*_______________________________________________________________________*/
		
		out PORTB, temp
		out PORTD, OFF		//��������� VD	
		rcall	Pause		//����� ��������
		rcall	Pause		//����� ��������
		nop
	
	
	/*_______________________________________________________________________*/
	//	��������� � ���������� ���������� �����
	/*
		out PORTD, temp 
		rcall	Pause
		rcall	Pause		//����� ��������
	
		out PORTD, OFF		//��������� VD
		rcall	Pause
		rcall	Pause		//����� ��������
		
	*/	
		

	
;���� ������ ���������� �������� sei ��� I, �� ���������� ����������� �� �����




		/*_______________________________________________________________________*/
		rjmp main


T0_Ovr:
		
		cbi PORTD, 5
		rcall	Pause
		sbi PORTD, 5		//��������� VD
		
		rcall	Pause		//����� ��������
		
		reti				;��������� ����������

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


		