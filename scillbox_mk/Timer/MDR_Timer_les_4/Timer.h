#ifndef __TIMER_H__
#define __TIMER_H__

#include "MDR32FxQI_timer.h"            // Milandr::Drivers:TIMER
#include "MDR32FxQI_rst_clk.h"          // Milandr::Drivers:RST_CLK
#include "port.h"

// Определяем параметры ШИМ
#define PWM_FREQ_HZ     10000    // Желаемая частота ШИМ, Гц
//#define PWM_DUTY_CYCLE  25      // Желаемая скважность, %

// Рассчитываем значение перезагрузки (период) исходя из тактовой частоты таймера.
// Тактовая частота ядра (HCLK) = 8 МГц, а предделитель таймера = 1.
#define TIMER_CLK_HZ    (8000000UL) // 80 МГц
#define PWM_PERIOD      ( (TIMER_CLK_HZ / PWM_FREQ_HZ) - 1 )

extern volatile uint32_t PWM_DUTY_CYCLE;
extern volatile uint32_t ccr_value;

void User_timer_PWM (void);
void User_timer (void);
void Timer2_IRQHandler (void);
void pwm_rate (void);

#endif
