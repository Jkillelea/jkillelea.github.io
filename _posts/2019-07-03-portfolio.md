---
layout: post
title:  "Portfolio Work"
date:   2019-07-03 17:22:00 -0700
categories: [post, update]
---

## Aircraft Design Reports

As part of a group project, I designed a STOL cargo plane called the Twin Sea Lion (since it was originally an uprated Twin Otter). This was a paper design - unfortunately we didn't get to build the actual plane. Most of the calculations and sizing were done in [Advanced Aircraft Analysis (AAA)](https://www.darcorp.com/advanced-aircraft-analysis-software/).

- [Report 1]({{ "/assets/portfolio/Reports/ac_design1.pdf" }})

- [Report 2]({{ "/assets/portfolio/Reports/ac_design2.pdf" }})

- [Report 3]({{ "/assets/portfolio/Reports/ac_design3.pdf" }})

- [Report 4]({{ "/assets/portfolio/Reports/ac_design4.pdf" }})


## Senior Projects Notebook Supplement

For Senior Projects we were issued paper notebooks, but most of my work was done on computers. I compiled the most relevant digital work into a printout that I turned in along aside my regular notebook. **This is a good summary of my work over the past year**.

- [Notebook Supplement]({{ "/assets/portfolio/Reports/notebook_supplement.pdf" }})

## Senior Projects PCBs

### Thermistor ADC

This board ran up to 40 individual NTC thermistors using ADC128 analog to digital converter chips. In addition, I calculated the resolution and measurement uncertainty for temperature measurements, which is highly nonlinear.

- [Schematic]({{ "/assets/portfolio/Electronics Schematics and Renders/i2c-adc-schematic.pdf" }})

- [Board Render]({{ "/assets/portfolio/Electronics Schematics and Renders/i2c-adc-render.jpg" }})

- [Measurement Uncertainty]({{ "/assets/portfolio/Reports/thermistor_err.pdf" }})

### Heater Driver

This board ran 12 PWM channels to heat power resistors in order to create an arbitrary thermal profile that we could then analyze using thermal cameras. This board uses a PCA9865 PWM controller and a handful of MOSFETs to accomplish this. A large P-MOSFET was used for reverse polarity protection, in case someone tried to plug the power in backwards.

- [Schematic]({{ "/assets/portfolio/Electronics Schematics and Renders/heater_driver_multichannel.pdf" }})

- [Board Render]({{ "/assets/portfolio/Electronics Schematics and Renders/heater_driver_pcb.jpg" }})

### Raspberry Pi Breakout Board

Our Raspberry Pi needed to operate two FLIR Lepton thermal cameras. Each of those needed an SPI and I2C bus, and in addition it needed to keep the cameras warm during thermal chamber testing. This board uses the same PWM controller and MOSFETs, as well as an ADC128 analog to digital converter chip to read thermistors on each camera.

- [Schematic]({{ "/assets/portfolio/Electronics Schematics and Renders/Pi_Breakout_Board.pdf" }})

- [Board Render]({{ "/assets/portfolio/Electronics Schematics and Renders/pi-pcb-render.jpg" }})

- [Assembled]({{ "/assets/portfolio/Electronics Schematics and Renders/pi-pcb-assembled.jpg" }})

## Software

For software, please see my [GitHub](https://github.com/Jkillelea).
