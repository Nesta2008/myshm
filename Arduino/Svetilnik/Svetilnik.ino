int ledPin = 6; //6-пин зарезервировали для ШИМ
int led = 5; //5-pin зарезервировали для простого включения

void setup() {
  pinMode (led,OUTPUT);     // 5-пин настроили на выход
  pinMode (ledPin,OUTPUT);  // 6-пин настроили на выход
}               

void loop() {
 analogWrite (ledPin,100);

}
