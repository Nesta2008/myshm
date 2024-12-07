/*
 * 1_Const.c
 *
 * Created: 21.03.2024 11:31:49
 * Author : m.shaikhullin
 */ 
#include <avr/io.h>

#define OUT			0xFF
#define IN			0x00

#define PORT_LEDS	PORTA
#define DDR_LEDS	DDRA

#define SIGNAL_1	0b10110100		//TODO:: svsvsv
#define SIGNAL_2	0b10011101
#define SIGNAL_3	0b11111111


int main()
{
	DDRD = 0xFF;				// ��� ������ ����� D �� �����
	PORTD = 0b11110000;			// �� ������� ����������� �������� 0b11110000
	
	DDRB = IN;					// ��� ������ ����� � �� ����
	PORTB = 0b11110000;			// � 4 ������� �������� ���������� ������������� ���������
	
	DDR_LEDS  = OUT;			// ��� ������ ����� ����������� �� �����
	PORT_LEDS = SIGNAL_1;		// �� ������� ������ 1
	PORT_LEDS = SIGNAL_3;		// �� ������� ������ 3
	PORT_LEDS = SIGNAL_2;		// �� ������� ������ 2
	
}								// ����� �� ������� main