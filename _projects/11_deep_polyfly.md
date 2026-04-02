---
layout: page
title: DeepPolyFly
description: Agile Aerial Navigation Through Imitation Learning

img: assets/img/deep_polyfly/logo.gif
importance: -1
category: publications
# redirect: https://mrunaljsarvaiya.github.io/hpa-mpc.github.io/
related_publications: false
---
My current research focuses on developing vision-based policies for aerial navigation in cluttered environments. I am currently using imitation learning to train policies that map onboard depth observations to feasible robot trajectories. I use Isaac Sim to generate onboard depth observations and have built a full custom training pipeline end to end. This includes:

1. Efficient parallel generation of optimal trajectories using CPU multiprocessing
2. Configuration-based trajectory generators, allowing easy iteration for dataset curation
3. MPC-based tracking to introduce realistic controller error
4. Training scripts that use imitation learning to learn depth-to-action policies
5. A modular pipeline that is easily deployable on HPC systems through Apptainer and Docker containers

I am currently evaluating these policies in simulation. Once performance is strong there, I will move on to deploying them on real robots equipped with onboard GPUs and depth sensors.