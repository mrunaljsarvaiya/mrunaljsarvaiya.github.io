---
layout: page
title: Peanut Robotics
description: Senior Robotics Engineer
img: assets/img/peanut/logo2.jpg
importance: 1
category: work & fun
related_publications: false
---

Peanut Robotics builds mobile manipulators for autonomous cleaning and disinfecting. Check out their robot at [https://www.peanutrobotics.com/](https://www.peanutrobotics.com/)

<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.liquid loading="eager" path="assets/img/peanut/earlydays.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
<div class="caption">
    A photo from my early days at Peanut when we used a Kinova manipulator. The following year we developed a custom robot arm at a fraction of the cost.
</div>


During my 4 years at Peanut, I built and integrated a number of core features for our autonomy stack:

- Developed the motion planning software architecture for a custom-built mobile manipulator.
- Selected, integrated, and fine-tuned a trajectory tracking controller along with a time-optimal trajectory generator (TOPPRA).
- Designed and implemented a custom navigation planner for hotel hallways, generating human-like and aesthetically pleasing motions.
- Trained a neural network model to estimate manipulator currents, adding torque constraints to the trajectory generator for improved system reliability.
- Engineered optimization tools to smooth robot paths, minimize joint-space distances, and adjust input configurations using advanced optimization techniques.
- Developed the communication architecture between controllers and the main onboard computer, ensuring efficient data exchange.
- Implemented error recovery mechanisms and safety features for mobile base motors to enhance operational robustness.
- Created state machines for mission execution during deployment, streamlining task automation.
- Designed an RViz-based tool for recording, modifying, and replaying Cartesian paths, aiding in testing and debugging.
- Integrated collision-checking tools via MoveIt to support other planners in the robotic stack.