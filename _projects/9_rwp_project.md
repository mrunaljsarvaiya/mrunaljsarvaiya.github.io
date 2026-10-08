---
layout: page
title: Reaction Wheel Pendulum
description: Course Project
img: assets/img/rwp/logo.png
importance: 9
category: work & fun
---
<div class="row d-flex justify-content-center">
    <div class="col-sm-4 mt-6 mt-md-0 d-flex justify-content-center">
        {% include figure.liquid loading="eager" path="assets/img/rwp/rwp_gif.gif" title="example image" class="img-fluid rounded z-depth-1 uniform-image-height" %}
    </div>
    <div class="col-sm-8 mt-6 mt-md-0 d-flex justify-content-center">
        {% include figure.liquid loading="eager" path="assets/img/rwp/logo.png" title="example image" class="img-fluid rounded z-depth-1 uniform-image-height" %}
    </div>
</div>

The final project for the Control Systems course was to implement a controller to balance a Reaction Wheel Pendulum at its vertical position. Various controllers were implemented: 3-state, 4-state, and 4-state using an observer. The states that were controlled were pendulum angle, pendulum velocity, rotor angle and rotor velocity. The controller was designed in Simulink. The electronics provided allowed the user to read the pendulum and rotor position and send an input to the motor.

- First, the system's equations of motion were derived using a Lagrangian approach. These equations related the above 4 states via 2 equations.
- Before implementing a controller, the DC Motor's friction model, torque constant, natural frequency, and other miscellaneous constants were identified by system identification techniques.
- The friction model was determined by implementing a PI controller where the steady-state control effort was equal to the friction of the system. These values were recorded over multiple positive and negative rotations to generate a linear curve for the friction model whose slope and y-intercept were the viscous and Coulomb friction, respectively. 
- The torque constants were determined by running the motor at different velocities and measuring the values of different states. Using the motor equations that were developed, these constants could be calculated by direct substitution.
- The RWP is inherently a nonlinear system. To develop a controller for the vertical position, the system was linearized using a first-order Taylor approximation. The resulting equations could be represented in the standard state space form of dx/dt = Ax + Bu and y = Cx + Du. 
- All the controllers implemented were closed loop controllers of the form u=-K.x. K was determined using pole placement techniques for a state space system. Since this was a second order system, the response characteristics could be modeled through a standard second order system with a given damping factor and natural frequency. The damping factor and natural frequency were manually tuned until the RWP achieved limit cycle behavior. 
- The 3-state controller controlled the pendulum angle, velocity and rotor velocity. The 4-state controller controlled all the states. Naturally, the 4-state controller was more sensitive to disturbances and an initial velocity because it had to control an additional state. 
- In the real world, it is common to not have access to all of the system's states. In such a case, a dynamic observer controller is used. For this RWP, it was assumed that the velocity states were not measurable. An observer was developed through observer design techniques for state space systems where the poles of the observer were placed 8 times further than those of the system. The observer input was the system's input, pendulum angle and rotor angle. As expected, the observer design was even more sensitive to disturbance. This was merely an exercise to demonstrate the idea of building an observer.
- For the final demo shown in the video below, swing-up control was implemented that added energy to the RWP until it reached close to its vertical position, after which the controller took over.

Check out the controller in action [here!](https://www.youtube.com/watch?v=eC5cZf1PCzo)