#include "port.h"
//PORT_A_Pin_3  - светодиод, лучше для ШИМ
//PORT_A_PIN_0 - кнопка
//PORT A_Pin_1 - светодиод

volatile unsigned int buttonFlag = 0;


void User_Led (void)
{
RST_CLK_PCLKcmd (RST_CLK_PCLK_PORTA, ENABLE);

PORT_InitTypeDef Led;
Led.PORT_FUNC = PORT_FUNC_PORT;
Led.PORT_GFEN = PORT_GFEN_OFF;
Led.PORT_MODE = PORT_MODE_DIGITAL;
Led.PORT_OE = PORT_OE_OUT;
Led.PORT_PD_SHM = PORT_PD_SHM_OFF;
Led.PORT_Pin = PORT_Pin_1;
Led.PORT_SPEED = PORT_SPEED_FAST;

PORT_Init (MDR_PORTA, &Led);
}

void User_Led_PWM (void)
{
RST_CLK_PCLKcmd (RST_CLK_PCLK_PORTA, ENABLE);

PORT_InitTypeDef Led;
Led.PORT_FUNC = PORT_FUNC_ALTER;
Led.PORT_GFEN = PORT_GFEN_OFF;
Led.PORT_MODE = PORT_MODE_DIGITAL;
Led.PORT_OE = PORT_OE_OUT;
Led.PORT_PD_SHM = PORT_PD_SHM_OFF;
Led.PORT_Pin = PORT_Pin_3;
Led.PORT_SPEED = PORT_SPEED_MAXFAST;

PORT_Init (MDR_PORTA, &Led);
}

void User_Button (void)
{
RST_CLK_PCLKcmd (RST_CLK_PCLK_PORTA, ENABLE);

PORT_InitTypeDef Button;
Button.PORT_FUNC = PORT_FUNC_PORT;
Button.PORT_GFEN = PORT_GFEN_ON;
Button.PORT_MODE = PORT_MODE_DIGITAL;
Button.PORT_OE = PORT_OE_OUT;
Button.PORT_PD_SHM = PORT_PD_SHM_ON;
Button.PORT_Pin = PORT_Pin_0;
Button.PORT_SPEED = PORT_SPEED_FAST;

PORT_Init (MDR_PORTA, &Button);

}
