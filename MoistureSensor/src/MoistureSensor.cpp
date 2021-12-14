/******************************************************/
//       THIS IS A GENERATED FILE - DO NOT EDIT       //
/******************************************************/

#include "Particle.h"
#line 1 "c:/Users/Mjdut/OneDrive/Documents/EE_1301/Partice_Photon_Code/moisture_sensor_project/MoistureSensor/src/MoistureSensor.ino"
/*
 * Project MoistureSensor
 * Description: Reads and publishes data from an external moisture sensor as well as actuating a pump motor.
 * Author:
 * Date:
 */


void setup();
void loop();
int water(String input);
#line 9 "c:/Users/Mjdut/OneDrive/Documents/EE_1301/Partice_Photon_Code/moisture_sensor_project/MoistureSensor/src/MoistureSensor.ino"
#define moistureSensor A0
#define pump D3

#include <string>
#include <stdlib.h>

int moistureData, moisture;


void setup() {
  pinMode(moistureSensor, INPUT); //pin setup for moisture sensor
  pinMode(pump, OUTPUT); //pin setup for the motor wired with a transistor


  Particle.variable("Moisture", moisture); //cloud variable that reads moisture data
  Particle.function("Water", water); // cloud function to water the plant
}


void loop() {
  moistureData = analogRead(moistureSensor);

  moisture = moistureData;
  
  delay(5000); //Only read data every 5s; moisture levels won't cahnge rapidly
}

//Function for watering the plant
int water(String input){
  if(input == "Water"){
    digitalWrite(pump, HIGH);
    delay(3000);
    digitalWrite(pump, LOW);
  }
  else{
    digitalWrite(pump, LOW);
  }
  return 0;
}