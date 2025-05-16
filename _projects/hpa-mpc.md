---
layout: page
title: HPA-MPC
description: Hybrid Perception-Aware Nonlinear Model Predictive Control for Quadrotors with Suspended Loads (RA-L 2024)
img: assets/img/hpa-mpc/logo_gif.gif
importance: 0
category: publications
redirect: https://mrunaljsarvaiya.github.io/hpa-mpc.github.io/
related_publications: false
---

**Abstract**

Quadrotors equipped with cable-suspended loads represent a versatile, low-cost, and energy efficient solution for aerial transportation, construction, and manipulation tasks.
However, their real-world deployment is hindered by several challenges. The system is difficult to control because it is nonlinear, underactuated, involves hybrid dynamics due to slack-taut cable modes, and evolves on complex configuration spaces. Additionally, it is crucial to estimate the full state and the cable's mode transitions in real-time using on-board sensors and computation. To address these challenges, we present a novel Hybrid Perception-Aware Nonlinear Model Predictive Control (HPA-MPC) control approach for quadrotors with suspended loads. Our method considers the complete hybrid system dynamics and includes a perception-aware cost to ensure the payload remains visible in the robot's camera during navigation. Furthermore, the full state and hybrid dynamics' transitions are estimated using onboard sensors.
Experimental results demonstrate that our approach enables stable load tracking control, even during slack-taut transitions, and operates entirely onboard. The experiments also show that the perception-aware term effectively keeps the payload in the robot's camera field of view when a human operator interacts with the load.

<!-- <div class="row">
    <div class="col-24 mt-3 mt-md-0">
        {% include video.liquid path="https://www.youtube.com/embed/tmWblAmQvG0?si=xUt0qHrfKKmf55qz" class="img-fluid rounded z-depth-1" %}
    </div>
</div> -->

<div class="row" style="width: 100%; margin: 0;">
    <div class="col-12 p-0">
        <iframe src="https://www.youtube.com/embed/tmWblAmQvG0?si=xUt0qHrfKKmf55qz" class="img-fluid" style="width: 100%; height: 600px; border: none;" allowfullscreen></iframe>
    </div>
</div>

The primary contributions of our work are 
- We propose a novel Nonlinear Model Predictive Control (NMPC) method with dynamically updated cost functions to address the hybrid dynamics of a quadrotor with a cable-suspended payload. This solution is complemented by a novel state estimation approach based on an Extended Kalman Filter (EKF) technique, which detects the cable's hybrid mode and accurately estimates the payload's states, while relying solely on onboard sensors.
- We tackle the problem of payload visibility by introducing a perception-awareness cost function within the MPC framework. This promotes continuous tracking of the payload to keep it within the quadrotor's FoV, facilitating uninterrupted control once the cable becomes taut following an unexpected hybrid mode transition.
- We implement these methods on a quadrotor platform with Size, Weight, and Power (SWAP) limitations, achieving a navigation loop performance of $150$ Hz using purely onboard sensors and computing resources. We validate our proposed methods through extensive real-world experiments, including payload transportation, and human interactions tasks.
