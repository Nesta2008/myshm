#include "clk.h"


void СPU_Reset (void)         // Деинициализация системы тактирования
{
// Сброс настроек системы тактирования
  MDR_RST_CLK->PLL_CONTROL   = 0;
  MDR_RST_CLK->HS_CONTROL    = 0;
  MDR_RST_CLK->CPU_CLOCK     = 0;
  MDR_RST_CLK->USB_CLOCK     = 0;
  MDR_RST_CLK->ADC_MCO_CLOCK = 0;
  MDR_RST_CLK->RTC_CLOCK     = 0;
  MDR_RST_CLK->CAN_CLOCK     = 0;
  MDR_RST_CLK->TIM_CLOCK     = 0;
  MDR_RST_CLK->UART_CLOCK    = 0;
  MDR_RST_CLK->SSP_CLOCK     = 0;
  // Отключение тактирования всех блоков,
  // кроме системы тактирования и батарейного домена
  MDR_RST_CLK->PER_CLOCK |= RST_CLK_PER_CLOCK_PCLK_EN_DMA_Pos | RST_CLK_PER_CLOCK_PCLK_EN_BKP_Pos;

}

void CPU_Init (void)      // Инициализация системы тактирования
{
// Деинициализация системы тактирования
СPU_Reset ();

// Включение генератора HSE
MDR_RST_CLK->HS_CONTROL = (1<<RST_CLK_HS_CONTROL_HSE_ON_Pos);

// Ожидание входа генератора HSE в рабочий режим
while ((MDR_RST_CLK->CLOCK_STATUS & RST_CLK_CLOCK_STATUS_HSE_RDY)== 0)

// Инициализация блока PLL
  MDR_RST_CLK->PLL_CONTROL |= (1 << RST_CLK_PLL_CONTROL_PLL_CPU_ON_Pos)    // Включение блока PLL
                           | (9 << RST_CLK_PLL_CONTROL_PLL_CPU_MUL_Pos);  // Задание коэффициента умножения (9 + 1 = 10)

  // Ожидание входа блока PLL в рабочий режим
  while ((MDR_RST_CLK->CLOCK_STATUS & RST_CLK_CLOCK_STATUS_PLL_CPU_RDY) == 0);

  // Настройка тракта формирования тактовой частоты
  MDR_RST_CLK->CPU_CLOCK |= (3 << RST_CLK_CPU_CLOCK_CPU_C1_SEL_Pos)  //CPU_C1 = HSE/2 (16/2=8)
                         | (1 << RST_CLK_CPU_CLOCK_CPU_C2_SEL_Pos)  // CPU_C2 = PLLCPUo
                         | (0 << RST_CLK_CPU_CLOCK_CPU_C3_SEL_Pos)  // CPU_C3 = CPU_C2
                         | (1 << RST_CLK_CPU_CLOCK_HCLK_SEL_Pos);   // HCLK   = CPU_C3

  
  // Отключение генераторов HSI и LSI
  MDR_BKP->REG_0F &= ~(BKP_REG_0F_LSI_ON | BKP_REG_0F_HSI_ON);
}




void CLK_PORTA (void)
{
  //RST_CLK_PCLKcmd (RST_CLK_PCLK_PORTA, ENABLE);       //Два различных варианта включения тактирования - spl
  MDR_RST_CLK->PER_CLOCK |= (1 << RST_CLK_PER_CLOCK_PCLK_EN_PORTA_Pos);     //CMSIS
}

void CLK_PORTC (void)
{
  RST_CLK_PCLKcmd (RST_CLK_PCLK_PORTC, ENABLE);
  //MDR_RST_CLK->PER_CLOCK |= (1 << RST_CLK_PER_CLOCK_PCLK_EN_PORTC_Pos);
}
