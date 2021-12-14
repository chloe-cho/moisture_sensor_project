/*
 * Project MoistureSensor
 * Description: Reads and publishes data from an external moisture sensor as well as actuating a pump motor.
 * Author:
 * Date:
 */

#define moistureSensor A0
#define pump D3
#define LED D7

#include <string>
#include <stdlib.h>

int moistureData, moisture;
unsigned long int currentTime;
unsigned long int waterTime = 0;

void setup() {
  pinMode(moistureSensor, INPUT); //pin setup for moisture sensor
  pinMode(pump, OUTPUT); //pin setup for the motor wired with a transistor
  pinMode(LED, OUTPUT);

  digitalWrite(pump, LOW);
  Particle.variable("Moisture", moisture); //cloud variable that reads moisture data
  Particle.function("Water", water); // cloud function to water the plant
}


void loop() {
  moistureData = analogRead(moistureSensor);
  currentTime = millis();
  moisture = moistureData;
  digitalWrite(LED, LOW);

  //Waters automatically if the moisture level is too low
  //Will only water at most once every 10 minutes
  if((moistureData < 1500) && (waterTime < currentTime)){
    water("Water0.5");
    waterTime += 600000;
  }
  

  delay(5000); //Only read data every 5s; moisture levels won't change rapidly
}

//Function for watering the plant
int water(String input){
  if(input == "Water0.5"){
    digitalWrite(pump, HIGH);
    digitalWrite(LED, HIGH);
    delay(500);
    digitalWrite(pump, LOW);
  } else if(input == "Water1"){
    digitalWrite(pump, HIGH);
    digitalWrite(LED, HIGH);
    delay(1000);
    digitalWrite(pump, LOW);
  }
  else if(input == "Water2"){
    digitalWrite(pump, HIGH);
    digitalWrite(LED, HIGH);
    delay(2000);
    digitalWrite(pump, LOW);
  }
  else{
    digitalWrite(pump, LOW);
  }
  return 0;
}