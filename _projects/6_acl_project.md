---
layout: page
title: Advanced Controls Laboratory (UIUC)
description: Research Assistant
img: assets/img/acl/acl_logo.jpg
importance: 6
category: work & fun
---

<div class="row d-flex justify-content-center">
    <div class="col-sm-8 mt-3 mt-md-0 d-flex justify-content-center">
        {% include figure.liquid loading="eager" path="assets/img/acl/acl_logo.jpg" title="example image" class="img-fluid rounded z-depth-1 uniform-image-height-small" %}
    </div>
    <div class="col-sm-4 mt-3 mt-md-0 d-flex justify-content-center">
        {% include figure.liquid loading="eager" path="assets/img/acl/acl_1.jpg" title="example image" class="img-fluid rounded z-depth-1 uniform-image-height-small" %}
    </div>
</div>

<div class="row d-flex justify-content-center">
    <div class="col-sm-5 mt-4 mt-md-0 d-flex justify-content-center">
        {% include figure.liquid loading="eager" path="assets/img/acl/acl_2.jpg" title="example image" class="img-fluid rounded z-depth-1 uniform-image-height-small" %}
    </div>
    <div class="col-sm-5 mt-4 mt-md-0 d-flex justify-content-center">
        {% include figure.liquid loading="eager" path="assets/img/acl/acl_3.jpg" title="example image" class="img-fluid rounded z-depth-1 uniform-image-height-small" %}
    </div>
</div>

Servo and DC motors are widely used in industrial as well as robotic applications as precise positional controllers. The accuracy and dynamics of a motor vary widely depending on the type of DC motor, sensors, controller logic and hardware used. The quadcopter in development at this lab will be fitted with 4 arms whose position will be controlled via DC motors. The servo motor previously used was bulky, over-specced and its dynamics were unknown. My project was to first find a DC motor suited to the drone's requirements, fitted with an encoder resolution of higher than 0.4 Degrees/Count and prototype a controller through which the motor's position, velocity and torque can be controlled. Once this is completed, a high fidelity model of the system will be determined such that the system can be simulated in Simulink.

Next, to gauge the dynamics and current, which indirectly measures torque, an observer design in state space will be built. After this system is rigorously tested, a more compact microcontroller will be picked and the circuit will be manufactured on a printed circuit board.
 

After extensive research and careful consideration of the requirements, a Maxon DC Motor was purchased. As for the hardware, an mbed developer board, TI DV883071 motor driver, and TL7071 inverter chip were chosen. Note that this setup will only be used at the development and prototyping stage. The final model will be replaced by a more compact microcontroller and will be manufactured on a printed circuit board.

Next, a mount was built to support the motor to ensure stability. After developing the code to control the motor's position and velocity, a data acquisition program needed to be developed. Utilizing mbed's Matlab connectivity, a program was developed that sent Matlab encoder readings during an interrupt service routine with a specified frequency. Additionally, to aid in manually tuning the microcontroller, a program that allowed the user to control variables on the mbed, namely the PID constants, through Matlab was programmed. 

To capture the system's dynamics, a 3rd order transfer function and state space model of the system were determined through experimental testing and using Simulink's System Identification toolbox. This model was also compared to one derived through the equations of the electrical loops of the DC motor and using the values provided in the motor's data sheet. To increase accuracy, the data used for calculation was sampled at 1 KHz. After verifying these results by comparing the simulations to experimental data for a step response and various PID control modes, a state space observer was built that estimated the current, and hence indirectly measured the torque on the system. This paved the way to allow for torque control without the need of sensors.