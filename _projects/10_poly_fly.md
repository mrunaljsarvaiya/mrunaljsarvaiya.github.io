---
layout: page
title: PolyFly
description: Polytopic Optimal Planning for Collision-Free Cable-Suspended Aerial Payload Transportation (RA-L, In Review)

img: assets/img/polyfly/logo.gif
importance: 0
category: publications
# redirect: https://mrunaljsarvaiya.github.io/hpa-mpc.github.io/
related_publications: false
---

**Abstract**

Aerial transportation robots using suspended cables have emerged as versatile platforms for disaster response and rescue operations. To maximize the capabilities of these systems, robots need to aggressively fly through tightly constrained environments, such as dense forests and structurally unsafe buildings, while minimizing flight time and avoiding obstacles. Existing methods geometrically over-approximate the vehicle and obstacles, leading to conservative maneuvers and increased flight times. We eliminate these restrictions by proposing PolyFly, an optimal global planner which considers a non-conservative representation for aerial transportation by modeling each physical component of the environment, and the robot (quadrotor, cable and payload), as independent polytopes. We further increase the model accuracy by incorporating the attitude of the physical components by constructing orientation-aware polytopes. The resulting optimal control problem is efficiently solved by converting the polytope constraints into smooth differentiable constraints via duality theory. We compare our method against the existing state-of-the-art approach in eight maze-like environments and show that PolyFly produces faster trajectories in each scenario. We also experimentally validate our proposed approach on a real quadrotor with a suspended payload, demonstrating the practical reliability and accuracy of our method.

The primary contributions of our work are 
- A novel non-conservative representation for aerial transportation that models the quadrotor, cable, and payload as separate components. To enhance physical accuracy, we incorporate the attitude of both the robot and the obstacles into the environment representation, constructing orientation-aware polytopes that more accurately capture the system’s spatial footprint.
- An optimal global planning method for a robot composed of independent polytopes that produces collision-free trajectories in maze-like environments by leveraging duality theory to formulate non-linear polytopic collision constraints as smooth differentiable constraints.     
- Experimental validation on hardware by performing real-world experiments using a quadrotor carrying a slung payload. We illustrate the advantages of our representation and planning method by tracking trajectories in tightly constrained environments. We also demonstrate that our approach generates faster trajectories than the existing state-of-the-art method in all ten test environments.

**Arxiv**: [https://arxiv.org/pdf/2510.15226](https://arxiv.org/pdf/2510.15226)