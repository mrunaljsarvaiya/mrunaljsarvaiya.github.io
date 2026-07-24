---
layout: page
title: Prompt2Fly
description: Using LLMs and VLMs for Autonomous Aerial Transportation
img: assets/img/prompt2fly/drone_pickup.gif
importance: -2
category: publications
related_publications: false
---
Aerial robots carrying cable-suspended payloads provide a lightweight and mechanically simple solution for time-critical delivery in unstructured and difficult-to-access environments. However, their underactuated and coupled dynamics make autonomous payload pickup and transportation using only onboard sensing particularly challenging. To address this gap, we present Prompt2Fly, a hierarchical framework that combines large language models (LLMs) and vision-language models (VLMs) to translate natural-language commands into executable aerial payload-transportation missions. Prompt2Fly uses an LLM to generate reactive behavior trees whose nodes are grounded in validated robot capabilities. Each behavior tree decomposes the commanded task into a sequence of interpretable behaviors and supplies task-specific language context to downstream VLM-based perception and planning modules. This architecture combines the semantic reasoning and generalization capabilities of pretrained models with the reliability, interpretability, and modularity of established planning and control algorithms. We validate Prompt2Fly through extensive simulation and real-world experiments using multiple onboard cameras and a magnetic pickup mechanism. The system autonomously identifies, picks up, transports, and delivers payloads across diverse environments and task specifications. To the best of our knowledge, Prompt2Fly is the first system to demonstrate onboard vision-based autonomous pickup and transportation using a cable-suspended aerial robot in both simulation and real-world experiments.

<div class="row justify-content-sm-center">
    <div class="col-sm-12 mt-3 mt-md-0">
        {% include figure.liquid loading="eager" path="assets/img/prompt2fly/drone_pickup.gif" title="Prompt2Fly autonomous payload pickup" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
