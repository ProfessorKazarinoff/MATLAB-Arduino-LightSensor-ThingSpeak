# MATLAB-Arduino-LightSensor-ThingSpeak
A student project completed in ENGR114 at Portland Community College, Summer 2017. Uses a light level sensor connected to an Arduino and MATLAB to publish the light level up to the IoT cloud on ThingSpeak.com

## Problem Statement
The team was required to build the hardware and code to control a Light Sensor to help determine when to turn on the glow light in a fish tank water.

We had to complete the following tasks to achieve our final goal:
1. Build the hardware.
1. Connect the hardware to Arduino.
1. Read the Arduino code in MATLAB.
1. Modify the codes to:
   1. Measure the amount of light in real time, within the time limit set by the user.
   1. Record the data, and produce a plot of light sensor vs. time


## Hardware Setup

### Bill of Materials
|component|vendor|
|---|---|
|Arduino|[SparkFun RedBoard - Programmed with Arduino](https://www.sparkfun.com/products/13975)|
|Photo Sensor|[Mini Photocell](https://www.sparkfun.com/products/9088)|
|330 Ω resistor|[Resistor 330 Ohm 1/6th Watt PTH](https://www.sparkfun.com/products/8377)|
|10 kΩ resistor|[Resistor 10k Ohm 1/6th Watt PTH](https://www.sparkfun.com/products/8374)|
|Assorted LED's|[LED - Assorted (20 pack)](https://www.sparkfun.com/products/12062)|
|Breadboard|[Breadboard - Self-Adhesive (White)](https://www.sparkfun.com/products/12002)|
|Jumper wires|[Jumper Wires Premium 6" M/M Pack of 10](https://www.sparkfun.com/products/8431 )|
|Mini-B USB cable|[SparkFun USB Mini-B Cable - 6 Foot](https://www.sparkfun.com/products/11301)|

### Fritzing Diagram
![Alt Name](/doc/fritzing_light_sensor.png)
### Connected Hardware
![Alt Name](/doc/light_sensor_hardware.png)

## Arduino Code
The [Arduino_code.ino](Arduino_code.ino) sketch was uploaded on the Arduino using the Arduino IDE

## MATLAB Code
The [MATLAB_code.m](MATLAB_code.m) script was run in MATLAB. The serial Port had to be the correct one in order for the MATLAB script to run. This was usually `'COM4'` and must be checked in the Windows Device Manager. This code will collect data formatted as a string over the light level for the course of that time using the connected Arduino Hardware.

## Results
![Alt Name](/doc/LightSensorPlot.jpg)

## Future Work
In the future teams that intend to carry out projects that are like ours can utilize our code, and improve the MATLAB code to plot at the same time when taking a data. They can also work on Arduino code to collect more accurate data which will help to observe and collect a detailed data. 

The following resources are also helpful for them to startup the project:
* https://github.com/ProfessorKazarinoff
* https://www.mathworks.com/discovery/arduino-programming-matlab-simulink.html
* https://learn.sparkfun.com/tutorials/sik-experiment-guide-for-arduino---v33?_ga=2.257738059.1328635895.1502830216-875794133.1502830216
* https://learn.adafruit.com/thermistor

## License
GNU General Public License v3.0
