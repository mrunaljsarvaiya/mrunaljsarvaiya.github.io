---
layout: page
title: Peanut Robotics
description: Senior Robotics Engineer
img: assets/img/peanut/logo2.jpg
importance: 1
category: work
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


I built and integrated a number of core features for our autonomy stack

- Lower level velocity controllers​
- Higher level positional trajectory controllers (ROS Control)
- Communication architecture between controllers and the main on-board computer 
- Cartesian motion planner and trajectory generator
- Custom mobile base navigation system for hotel hallways that prioritizes human like movements​
- Error recovery and safety features for the mobile base motors
- Exploration algorithms ​
- State machines for executing missions during deployment
- RViz-based tool to record, modify and playback cartesian paths 
- Collision checking (through MoveIt) tools used by other planners in the stack 

