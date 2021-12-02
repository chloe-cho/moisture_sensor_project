/*
 * Project MoistureSensor
 * Description:
 * Author:
 * Date:
 */


#define moistureSensor A0
#define solenoid D3
int moistureData;


void setup() {
  pinMode(moistureSensor, INPUT);
  Particle.variable("Moisture", moisture);
  Particle.function("Water", water);
}

// loop() runs over and over again, as quickly as it can execute.
void loop() {
  moistureData = analogRead(moistureSensor);

}

void water(String input){
  


}