# Urban Land Cover - Multi-Class Regerssion Problem
## Joshua Chen and Jonas Wallstein
### Final Project for Statistical Modeling and Inference 23
 
This course covered expansive topics in regression and supervised/unsupervised learning. This project 
was Jonas' and my attempt at applying the methdologies that we learned in class towards this multi-
classification problem. 

### Introduction

The way in which the surface of a city is distributed has a huge impact on human life in the city.
Cities with a large share of impervious surfaces have higher risk of floods as water cannot sink
into the soil (Feng et al. 2021), and temperatures are more extreme (Kalnay and Cai, 2003). An
important aspect for public policy is therefore knowing how the area in a city is distributed. This
is especially important in light of the climate crisis which will increase the frequency and severity
of extreme weather events such as floods and high temperature. The distribution of surfaces is
referred to as the land cover and is defined as “the composition and characteristics of land surface
elements” (Cihlar, 2000). The land cover in an urban area typically includes objects such as asphalt
cars and trees. Classification of these objects is vital to assess the share of impervious surfaces in a
city and is typically determined by analyzing aerial images. Thus, our outcome variable is the class
of an object, which can be one of nine types of urban land cover, for example trees or buildings.
The input variables are measures from an aerial image such as the brightness, color or shape of
an object. The input data is preprocessed from the pixel level to di↵erent “segments”, which are
explained in the data section.

The goal of this thesis is to classify the urban land cover objects in a setting with a high dimensional
feature space. Thus, we use logistic and multinomial regressions with LASSO and Bayesian model
selection. Further, we assess the performance of different clustering methods in differentiating the
actual number of clusters that correspond to our nine types of land cover. This thesis proceeds with
a summary of related work and the data used. Then we use regression and unsupervised learning
and finally discuss our methodology and findings.
