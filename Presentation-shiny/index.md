---
title       : R + Shiny
subtitle    : Applications web avec R
author      : "@ArthurFlam"
job         : Quantmetry
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [bootstrap]   # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft, selfcontained}

--- #me
 
## Qui suis-je ?

- Centrale Paris + UPMC en maths / bio-informatique
- Profil "Data science"
- arthur.flam@gmail.com
- @ArthurFlam
<p> </p>

## Quantmetry

- Conseil en statistiques
- Clients : Bouygues, Octo consulting, IFA (des engrais..!)
- Nous cherchons des stagiaires pour septembre !
- www.quantmetry.com

--- #plan

## Plan

1. Introduction
2. Démonstration
3. Intégration JS/HTML5/CSS
4. Hébergement

<div style="padding-top:200px"> </div>
<div class="alert alert-info"> <p>Cette présentation est disponible sur</p>
<p><a href="https://github.com/arthur-flam/ShinyOverview">https://github.com/arthur-flam/ShinyOverview</a></p></div>

--- bg:lightgrey

## 1. Introduction

--- # story

## Les statistiques c'est raconter une histoire

<iframe width="420" height="315" src="http://www.youtube.com/embed/hVimVzgtD6w" frameborder="0" allowfullscreen></iframe>


--- #shiny

## Shiny : un framework web avec R.

- Rendre R **interactif**
- **Partager** votre travail (aux non spécialistes !)
- Faire du **prototypage** rapide
- Combler vos lacunes en **applications web**

--- bg:lightgrey

## 2. Démonstration

--- #result

### Ce qu'on peut obtenir 
```
install.packages("shiny")
library(shiny)
runGitHub("ShinyOverview", "arthur-flam", subdir="Exemple1")
```
<iframe src="http://temp.quantmetry.com:3838/Exemple1/" width="100%"> Un premier exemple </iframe>

--- &twocol #gears

## Deux fichiers suffisent à définir l'application

*** left

**Côté client : `ui.R`**
- Gère le HTML, CSS, JS...
- Gère les inputs

*** right

**Côté serveur : `server.R`**
- Calculs R
- Gère les outputs

<!---<p> </p>
<em class="muted">Sous le capot c'est du `node.js` avec des Websockets</em>
<em class="muted">Concept de fonctions réactives qui s'adaptent aux inputs</em>
-->

--- #E1-uiR
<img src="../Exemple1/code.png" width=100%>Code (from RStudio's tutorial)</img>

--- bg:lightgrey

## 3. Intégration HTML/JS/CSS...

---
## Avec GoogleVis

<iframe src="http://temp.quantmetry.com:3838/Exemple2" width=100% height=60%>Hotels</iframe>

---
## D'autres librairies sont utilisables

* Le package `rCharts` donne accès aux librairies `d3.js`
* Le CSS de base est `Bootstrap`, mais tout est modifiable
* Tout est possible : autocomplétion, accès à des APIs...

---
## Exemple : NVD3

<iframe src="http://temp.quantmetry.com:3838/Exemple3" width=60% height=100%>nvd3</iframe>


--- bg:lightgrey

## 4. Hébergement

--- #hosting

# Hébergement 

- En local : `runApp("/MyApp")`
- Hébergement chez les créateurs de `RStudio` (simple, encore limité)
- Avec `shiny-server` (https://github.com/rstudio/shiny-server) 
<div style="padding-top:100px"></div>
Il est possible d'intégrer une application shiny dans une `iframe` 

---

## Merci !
* Thanks to the RStudio team for `shiny` and their examples
* Thanks to Ramnath Vaidyanathan for bringing us `rCharts`. I borrowed his examples.
* Thanks to Markus Gesmann, Diego de Castillo, who created R+GoogleVis. I used one of their examples. Note : they _also_ used Hans Rosling's video in their last presentation. 
<div style="padding-top:250px"></div>
<div class="alert alert-success">
Toute la présentation a été réalisée avec le package R <code>slidify</code>
</div>
