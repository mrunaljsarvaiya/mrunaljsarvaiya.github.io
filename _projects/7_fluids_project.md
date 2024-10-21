---
layout: page
title: Ewoldt Research Group
description: Research Assistant
img: assets/img/fluids/logo_gif.gif
importance: 7
category: work & fun
---
**Leidenfrost Effect in Non Newtonian Fluids**
<div class="row d-flex justify-content-center">
    <div class="col-sm-6 mt-6 mt-md-0 d-flex justify-content-center">
        {% include figure.liquid loading="eager" path="assets/img/fluids/1.png" title="example image" class="img-fluid rounded z-depth-1 uniform-image-height-smaller" %}
    </div>
    <div class="col-sm-6 mt-6 mt-md-0 d-flex justify-content-center">
        {% include figure.liquid loading="eager" path="assets/img/fluids/2.png" title="example image" class="img-fluid rounded z-depth-1 uniform-image-height-smaller" %}
    </div>
</div>
<div class="row d-flex justify-content-center">
    <div class="col-sm-10 mt-6 mt-md-0 d-flex justify-content-center">
        {% include figure.liquid loading="eager" path="assets/img/fluids/logo.png" title="example image" class="img-fluid rounded z-depth-1 uniform-image-height-small" %}
    </div>
</div>


The Leidenfrost effect is a physical phenomenon in which a liquid, in near contact with a mass significantly hotter than the liquid's boiling point, produces an insulating vapor layer keeping that liquid from boiling rapidly(Wikipedia.com, 2017). While this is common knowledge, no one has observed the vapor layer characteristics of water and Carbopol as they stick or slide on heated surfaces at different temperatures. My task was to set up an experiment by using interferometry to capture the vapor layer effects and analyze this using Matlab’s image analysis tools to quantify the results.
 

An interferometry set up was made using a high speed Photron Camera and a heated Sapphire plate. First, a convex lens was placed on the plate and the interference pattern was recorded. This image served as a reference image, since each color band corresponded to a specific height from the surface (height values were calculated through a lens’s geometry). Next, different liquids were dropped at different temperatures and their interference patterns were recorded using the high-speed video camera

These images were analyzed in Matlab to observe different characteristic of these fluids. The analysis code I wrote required two images, one being the reference image of the lens and the other being the vapor layer interface pattern. With the correct values of radius of curvature of the lens, the reference image was decomposed into pairs of a color and height value. This set of color was matched to every pixel on the vapor layer image, and the result was a contour plot of the vapor layer thickness across the image.​

It was observed that as the concentration of Carbopol was increased, for droplets impacting heated surfaces, its tendency to slide increased. Which is the opposite of what occurs on non-heated surfaces. These images were a source of qualitative and quantitative proof for understanding the physics behind non-newtonian fluid mechanics.​
 
I worked along a graduate student to make a video explaining how different non newtonian fluids behave on heated surfaces. This video was submitted to the  [APS Division of Fluid Dynamic's Gallery of Fluid Motion](https://gfm.aps.org/meetings/dfd-2016/57d84243b8ac3117910007ce)