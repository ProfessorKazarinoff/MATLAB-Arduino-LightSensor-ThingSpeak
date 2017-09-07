
int photocellPin = 0;     // the cell and 10K pulldown are connected to a0
int photocellReading;     // the analog reading from the sensor voltage divider
int LEDpin = 11;          // connect Green LED to pin 11 (PWM pin)
int LEDpin2 = 9;          // connect Red LED to pin 9 (PWM pin)
int LEDbrightness;        // Initialize variable for brightness of green light 
int LEDdarkness;          // Initialize variable for brightness of red light


void setup(void) {
  // We'll send debugging information via the Serial monitor
  Serial.begin(9600);  
    while (!Serial) {
    ; // wait for serial port to connect. Needed for native USB port only
    } 

}
 
void loop(void) { //Start loop for reading data

  photocellReading = analogRead(photocellPin); //assign a value to the data that is read 
  Serial.print("");
  Serial.println(photocellReading);     // the raw analog reading
 
  for (int i=0; i<=150; i++)
  {
  photocellReading = analogRead(photocellPin); //assign a value to the data that is read 

 

 if (photocellReading<600) // If the light sensor is reading less than 600
 {
  LEDbrightness=0;         // set brightness for green LED to 0
  LEDdarkness=255;         // set brightness for red LED to 255
 }
 else  // Otherwise
 {
  LEDbrightness=255;       // set brightness for green LED to 255
  LEDdarkness=0;           // set brightness for red LED to zero
 }

 
  analogWrite(LEDpin, LEDbrightness); // adjusts brightness for the green LED
  analogWrite(LEDpin2, LEDdarkness);  // adjusts brightness for the red LED

  delay(100);
  }
  
 
 
//delay(15000); // Delay for 15 seconds before repeatings loop
}


