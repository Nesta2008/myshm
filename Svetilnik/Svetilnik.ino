

int ledPin = 3; //3-пин зарезервировали для ШИМ
int led = 8; //5-pin зарезервировали для простого включения
double r=0; // переменная с уровнем ШИМа

void setup() {
//TCCR2B = 0b00000001;  // x1
//TCCR2A = 0b00000011;  // fast pwm
  pinMode (led,OUTPUT);     // 5-пин настроили на выход
  pinMode (ledPin,OUTPUT);  // 3-пин настроили на выход
}               

void loop() {
 //analogWrite (ledPin,255);
                                                //analogWrite (led,255);
for (int level = 0 ; level <50; level++){ 
 r = level;
 analogWrite (ledPin,r);
 delay(100);
}
for (int level = 50 ; level <255; level++){ 
 r = level;
 analogWrite (ledPin,r);
 delay(10000);
  
 }
 

 analogWrite (ledPin,255);
}
