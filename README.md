# MATLAB-Arduino-LightSensor-ThingSpeak
A student project completed in ENGR114 at Portland Community College, Summer 2017. Uses a light level sensor connected to an Arduino and MATLAB to publish the light level up to the IoT cloud on ThingSpeak.com

## Problem Statement
The team was required to build the hardware and code to control a Light Sensor to help determine when to turn on the glow light in a fish tank water.
We had to complete the following tasks to achieve our final goal:
1.	Build the hardware.
2.	Connect the hardware to Arduino.
3.	Read the Arduino code in MATLAB.
4.	Modify the codes to:
i.	Measure the amount of light in real time, within the time limit set by the user.
ii.	Record the data, and produce a plot of light sensor vs. time


## Hardware Setup

### Bill of Materials
|component|vendor|
|---|---|
|Arduino|[SparkFun RedBoard - Programmed with Arduino](https://www.sparkfun.com/products/13975)|
|Photo Sensor|[Mini Photocell](https://www.sparkfun.com/products/9088)|
|330 Ω resistor|[Resistor 330 Ohm 1/6th Watt PTH](https://www.sparkfun.com/products/8377)|
|10 kΩ resistor|[Resistor 10k Ohm 1/6th Watt PTH](https://www.sparkfun.com/products/8374)|
|Red LED|[LED - Basic Red 5mm](https://www.sparkfun.com/products/9590)|
|Breadboard|[Breadboard - Self-Adhesive (White)](https://www.sparkfun.com/products/12002)|
|Jumper wires|[Jumper Wires Premium 6" M/M Pack of 10](https://www.sparkfun.com/products/8431 )|
|Mini-B USB cable|[SparkFun USB Mini-B Cable - 6 Foot](https://www.sparkfun.com/products/11301)|

### Fritzing Diagram
![Alt Name](/doc/fritzing_light_sensor.png)
### Connected Hardware
![Alt Name](/doc/light_sensor_hardware.png)

## Arduino Code
The [light_sensor.ino](light_sensor.ino) sketch was uploaded on the Arduino using the Arduino IDE

## MATLAB Code
The [light_sensor.m](light_sensor.m) script was run in MATLAB. The serial Port had to be the correct one in order for the MATLAB script to run. This was usually `'COM4'` and must be checked in the Windows Device Manager.

## Results
![Alt Name](/doc/light_sensor_results.png)

## Future Work
Other groups can add more LED lights to enhance the accuracy of data
observation and collection.

## License
GNU General Public License v3.0
