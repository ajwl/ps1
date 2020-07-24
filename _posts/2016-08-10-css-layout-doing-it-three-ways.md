---
layout: post
title: 'CSS Layout: doing it three ways'
date: 2016-08-10 22:22:38.000000000 +01:00
type: post
published: true
status: publish
categories: []
tags:
- css
- web development
author: annaleach
---
When I started doing CSS, and coolly switching background-colors with a word or two, I was horrified to discover that layouts are so difficult.

<!--excerpt-->

After all, I thought, **layouts were the whole damn point of CSS** in the first place.
Well, turns out they’re a lot easier now than they were 10 years ago. But even then, they’re not that easy.

It’s why people use[ bootstrap css](http://getbootstrap.com/css/) all the time.
It just puts shit in the centre of the page and lines it up nicely.
And god knows it’s kind of a faff doing it any other way.

![UL in html]({{ site.image_base }}/Screen-Shot-2016-08-10-at-22.21.27.png)
_That's supposed to become a navigation bar? Turning a UL element into a navigation bar requires more heavy-lifting in CSS than you would hope_

One of the tasks I set myself on github was to create the “holy grail” of web design - a responsive three column layout with a navigation bar at the top. But I decided to do it three times over.


## 1. Once with 'float' and 'block/inline-block' properties

![Float]({{ site.image_base }}/block.png)

[ >> View Float Website](https://htmlpreview.github.io/?https://github.com/ajwl/holy-grail-3-ways/blob/master/float/float.html)

This is the classic way of doing CSS layout right now, it's widely-supported and responsive. Just about.


## 2. A second time with flexbox

![Flexbox]({{ site.image_base }}/flexbox.png)

[ >> View Flexbox Website](https://htmlpreview.github.io/?https://github.com/ajwl/holy-grail-3-ways/blob/master/flexbox/grail.html)


## 3. A third time with grid

![Grid]({{ site.image_base }}/grid.png)

[ >> View Grid Website](https://htmlpreview.github.io/?https://github.com/ajwl/holy-grail-3-ways/blob/master/grid/grail.html)

Grid is an experimental CSS property that, yes produces grids. Nice flexible grids, with hardly any code needed at all. I really like this one.[ Grid is described here on MDN.](https://developer.mozilla.org/en-US/docs/Web/CSS/grid)

To view this site you need to go into Chrome or whichever browser you are using and enable experimental features: Paste `chrome://flags` into the URL bar and scroll down to the option to Enable experimental Web Platform features.

I also delve into some fun CSS transitions and transforms because why the hell not. I really like skew.

See the code: [ The Holy Grail - 3 ways on Github](https://github.com/ajwl/holy-grail-3-ways)
