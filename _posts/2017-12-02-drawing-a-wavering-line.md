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

```javascript

  function drawLine(startX, startY){
  }
  drawLine(0, 20);

```

5.  To get the drawing effect, we need to run the drawPoint function many times.
Using `setInterval`, lets it happen slowly enough so you can see it. This just draws a straight line, slowly.

```javascript

  function drawLine(startX, startY){
    //draws a straight line from left to right, slowly
    setInterval(function(){
        var x = startX++;
        var y = startY;
        drawpoint(x, y);
     }, 100) //speed it up by making the interval smaller
  }

  drawLine(0, 20);

```

6.  Now we have a drawing line, we can add some of the randomness that makes it look human.
We'll add a variable I'll call `f` for fluctuation. It's the
kind of gremlin that causes the direction of the line to be random.
 We will add a line setting the value of `f` to be either 0.5 or -0.5, depending on the outcome of a call to `Math.random()`. Next, we'll add `f` to the x position and the y position so that this randomly generated number affects the position of the next point drawn.

```javascript

  function drawLine(startX, startY){
    var f = 0;
    setInterval(function(){
        f = f + Math.round(Math.random()*1) - 0.5;
        var x = startX++ + f;
        var y = startY + f;
        drawpoint(x, y);
     }, 1)
  }

  drawLine(0, 20);

```

7.  An interesting property we can add in here is smoothness, which gives you more
control over how random the line is.
To achieve this we'll add a variable `i` as a counter, inside the body of setInterval we'll iterate i.
We'll also add a value called `smoothness`. And only change fluctuation `f` when `i`, the number of times the
function has run is divisible by smoothness.

Basically bigger the smoothness value is, the less times fluctuation will change, so the smoother the line is.

```javascript

function drawLine(startX, startY){
	var i = 0;
	var f = 0;
	setInterval(function(){
			i++;			
			const smoothness = 2; //the larger this variable is - the smoother the doodle will be
			if(i % smoothness === 0 ){
				f = f + Math.round(Math.random()*1) - 0.5;
			}
			var x = startX++ + f;
			var y = startY + f;
			drawpoint(x, y);
	 }, 10)
}

drawLine(0, 20);

```

## Extra things

### Stop drawing when you hit the side of the canvas.
  Now we have a line that is wavering across the canvas, but then continuing forever (console.log() something
  in the loop and flip open the console
  and you'll see it is drawing itself far off to the right of the screen.) Using `clearInterval()`, I want to break
  the `setInterval()` loop when it hits the end of the canvas, the right-edge in the case
  of this line. That will be when x > the width of the canvas, 500.

  I'm going to rearrange the code slightly to allow this.

  ```javascript

  function drawLine(startX, startY){
  	var i = 0;
  	var f = 0;

  	var lineTimer = setInterval(function(){
  		i++;
  		const smoothness = 2;
  		if(i % smoothness === 0 ){
  			f = f + Math.round(Math.random()*1) - 0.5;
  		}
  		x = startX++ + f;
  		y = startY + f;
  		drawpoint(x, y);
  		if(x > 500) {
  			clearInterval(lineTimer);
  		}
  	}, 10)
  }
  drawLine(0, 20);

  ```

  ### Set off 25 lines at the same time
  We can call draw line more than once to set off a bunch of lines from left to right. Note the slight
  delay between the start of the first and the start of the last. Each stops when it gets to the end of the
  canvas element.

  ```javascript

  function drawLine(startX, startY){
  	let i = 0;
  	let f = 0;

  	const lineTimer = setInterval(function(){
  		i++;
  		const smoothness = 2;
  		if(i % smoothness === 0 ){
  			f = f + Math.round(Math.random()*1) - 0.5;
  		}
  		x = startX++ + f;
  		y = startY + f;
  		drawpoint(x, y);
  		if(x > 500) {
  			clearInterval(lineTimer);
  		}
  	}, 10)
  }

  // all the lines set off at once
  function startDrawing(){
  	let yPoint = 0;
  	for(let i =0; i < 25; i++){
  		yPoint += 20;
  		drawLine(0, yPoint);
  	}
  }

  startDrawing();

  ```

  ### Set off one line after another
  It would be cool if one line started as the one above stopped. We can achieve that using promises. Roughly: we
  still have the for loop, triggering off one line after another. The difference is that because we are using promises,
  the for loop now waits for each line to be completed before launching the next iteration and next line.

  The startDrawing funciton has to be async because we want to use await inside it, to create the waiting behaviour.  

```javascript

function drawLine(startX, startY){
	let i = 0;
	let f = 0;

	return new Promise((res,rej) => {
		const lineTimer = setInterval(function(){
			i++;
			const smoothness = 2;
			if(i % smoothness === 0 ){
				f = f + Math.round(Math.random()*1) - 0.5;
			}
			x = startX++ + f;
			y = startY + f;
			drawpoint(x, y);
			if(x > 500) {
				clearInterval(lineTimer);
				res();
			}
		}, 2)
	}
)

}

// all the lines set off at once
async function startDrawing(){
	let yPoint = 0;
	for(i=0; i <25; i++){
		yPoint += 20;
		await drawLine(0, yPoint);
	}
}

startDrawing();

```

### Create a grey landscape with colours and lines

This is kind of fun. I thickened the line and added a colour switcher with 3 shades of grey.
I realised I needed `ctx.beginPath()` and `ctx.closePath()` to avoid all lines changing when
one line changed.

```javascript
function drawpoint(x, y, colour) {
	ctx.beginPath();
	ctx.moveTo(x, y);
	ctx.lineTo(x + 1, y + 1);
	ctx.strokeStyle = colour;
	ctx.lineWidth = 20;
	ctx.stroke();
	ctx.closePath();
};

function drawLine(startX, startY, colour){
	let i = 0;
	let f = 0;

	return new Promise((res,rej) => {
		const lineTimer = setInterval(function(){
			i++;

			const smoothness = 2;
			if(i % smoothness === 0 ){
				f = f + Math.round(Math.random()*1) - 0.5;
			}

			x = startX++ + f;
			y = startY + f;

			drawpoint(x, y, colour);

			if(x > 500) {
				clearInterval(lineTimer);
				res();
			}
		}, 2)
	}
)}

function findColour(index){
	if(index % 3 === 0) {
		return '#999999';
	}
	else if(index % 2 === 0){
		return '#555555';
	}
	return '#111111';
}

// all the lines set off at once
async function startDrawing(){
	let yPoint = 0;
	for(i=0; i <25; i++){
		yPoint += 20;
		let colour = findColour(i);
		await drawLine(0, yPoint, colour);
	}
}

startDrawing();

```

It looks like this:


### See all the code [on github]()
