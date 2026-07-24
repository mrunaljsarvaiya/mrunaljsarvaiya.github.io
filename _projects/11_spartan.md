---
layout: page
title: SPARTAN
description: Scalable Data Generation for Vision-Based Navigation of Aerial Robots with Suspended Payloads
img: assets/img/deep_polyfly/exp.gif
importance: -1
category: publications
# redirect: https://mrunaljsarvaiya.github.io/hpa-mpc.github.io/
related_publications: false
---
Aerial systems with suspended payloads enable time-critical delivery in unstructured and hard-to-access environments.Onboard visual navigation remains challenging due to coupled robot-payload dynamics, limited field of view, and the need for reorientation around large obstacles. Imitation learning can enable fast onboard navigation under partial observations by distilling payload-aware, globally informed planning behaviors. However, its use in aerial transportation has been limited by the lack of scalable tools for generating diverse, dynamically feasible, and long-horizon expert demonstrations. To address this gap, we present SPARTAN, a framework that couples a scalable, perception-aware global expert planner with a domain-randomized tracking controller to generate large-scale, diverse datasets for vision-based policy learning. Our method jointly accounts for obstacle avoidance, complex payload dynamics, and field-of-view alignment while supporting configurable dataset generation across varied experimental settings. Using demonstrations collected across 110,000 environments, we present, to the best of our knowledge, the first large-scale data-generation pipeline for vision-based aerial transportation with suspended payloads, and show that policies trained on its data reliably support navigation in challenging cluttered environments.

<div class="row justify-content-sm-center">
    <div class="col-sm-12 mt-3 mt-md-0">
        {% include figure.liquid loading="eager" path="assets/img/deep_polyfly/exp.png" title="SPARTAN experiments" class="img-fluid rounded z-depth-1" %}
    </div>
</div>