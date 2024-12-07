.include "tn2313def.inc"    //���� ��������

.def	ON	=R16		// �������� R16 ��������� ��� temp
.def	temp	=R17
.def	OFF	=R20
.def	tempstack	=R21		
.def	Delay = R18			// ��������
.def	loop = R19			// ����� ��������
.equ	allON	=0xFF		//��������� ����� �������

.equ	DelayMax = 0xFF		//������������ �����

.org	0x00
		
		ldi	tempstack, low (RAMEND)		//������������� �����
		out	SPL, tempstack
		
		clr	temp		//�������� �������
		ldi	ON,allON	//� ������� R16 ��������� ��������� 
		ldi OFF,0x20
		out	DDRB,ON		//���� � �� �����
		out	DDRD,ON		
		

main:
		out	PORTB, ON		//�������� VD
		out PORTD, ON
		rcall	Pause		//����� ��������
		rcall	Pause		//����� ��������
		nop
		out PORTB, temp
		out PORTD, OFF		//��������� VD	
		rcall	Pause		//����� ��������
		rcall	Pause		//����� ��������
		nop
		out PORTD, temp
		rcall	Pause
		rcall	Pause		//����� ��������
		out PORTD, OFF		//��������� VD
		rcall	Pause
		rcall	Pause		//����� ��������
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
