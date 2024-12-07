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
	DDRD = 0xFF;				// Все выводы порта D на выход
	PORTD = 0b11110000;			// На выводах установлены значения 0b11110000
	
	DDRB = IN;					// Все выводы порта В на вход
	PORTB = 0b11110000;			// К 4 старшим разрядам подключены подтягивающие резисторы
	
	DDR_LEDS  = OUT;			// Все выводы порта светодиодов на выход
	PORT_LEDS = SIGNAL_1;		// На выводах сигнал 1
	PORT_LEDS = SIGNAL_3;		// На выводах сигнал 3
	PORT_LEDS = SIGNAL_2;		// На выводах сигнал 2
	
}								// Выход из функции main