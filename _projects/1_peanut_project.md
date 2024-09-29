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


During my 4 years at Peanut, I built and integrated a number of core features for our autonomy stack including but not limited to

- Developed the motion planning software architecture for a custom mobile manipulator
- Selected, integrated and tuned a trajectory tracking controller and time optimal trajectory generator (TOPPRA)
- Designed and implemented a custom navigation planner for hotel hallways that generates human-like and aesthetically pleasing motions
- Trained a neural network model to estimate manipulator currents used to add trajectory generator torque constraints for enhanced reliability
- Engineered tools to optimize robot paths by smoothing trajectories and reducing
overall joint-space distance by tweaking input configurations using an optimization program
- Communication architecture between controllers and the main on-board computer 
- Error recovery and safety features for the mobile base motors
- State machines for executing missions during deployment
- RViz-based tool to record, modify and playback cartesian paths 
- Collision checking tools (through MoveIt) used by other planners in the stack 

