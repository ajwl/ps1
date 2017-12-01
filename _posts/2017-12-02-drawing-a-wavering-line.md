---
layout: post
title: 'Drawing a wavering line'
date: 2017-12-02 17:30:15.000000000 +01:00
type: post
published: true
status: publish
categories: []
tags:
- interactive
- javascript
meta:
  _edit_last: '1'
author: annaleach
---

Drawing straight lines with code is relatively easy. Replicating the kind of wavering,
random lines that a human might draw is harder.

<!--excerpt-->

A Mozfest 2017 workshop I went to last month showed a cool way to do it. It was run by UCL
student Amy Mather, who explained Maths to me that I only partly understand. But was still really
cool. Here's the [github for the workshop](https://github.com/MiniGirlGeek/code_doodling.git)

I stuck two examples in a simple page here:

This is basically how it works:

1.   Create a canvas element in an html file.

2.   Select it in the javascript. And create a drawing context for it, using the `getContext()` method.
We only need 2d.

  ```javascript

    var ctx = document.getElementById("doodleCanvas").getContext("2d");

  ```

3.   Canvas doesn't have an inbuilt drawing method, so Amy just use a simple function that basically draws a point.
It takes starting co-ordinates and moves them both 1pixel. To start drawing in canvas you need `.moveTo(x,y)` which
takes coordinates and sets a starting place. To draw you need `lineTo(x,y)` which sets the finishing place, and
to actually see the line, you need to give it a stroke `.stroke()`. This defaults to black, 1px.

```javascript

  function drawPoint(x, y) {
	   ctx.moveTo(x, y);
	    ctx.lineTo(x + 1, y + 1);
	     ctx.stroke();
     };

```

4. Next we create a function called drawLine, it takes three arguments - the coordinates of a starting point.
Inside I'm setting `i` as a counter and `r` as a unit for variation.

```javascript

  function drawLine(startX, startY){
    var i = 0;
    var r = 0;
  }

```

5.  To get the drawing effect, we need to run `setInterval`
