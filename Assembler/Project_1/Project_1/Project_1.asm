.include "tn2313def.inc"

metka:		ldi R17, 255	//������� ldi �������� ������ �� �������� ����������. ��� � � ���� ������� ������� R17 � ��������� ��� �������� 255
			out DDRB, R17		//���������� ������ ����� � � ����� ������
			out DDRD, R17		//���������� ������ ����� D � ����� ������
			ldi R16, 2
			ldi R17, 0xF		//��������� � ������� �������� 00001111
			out PORTB, R16		// ���������� � ���� � �������� �������� R17
			out PORTD, R17	// ���������� � ���� D �������� �������� R17
			
			rjmp metka 
 