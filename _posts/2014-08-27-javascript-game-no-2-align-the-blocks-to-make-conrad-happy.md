---
layout: post
title: '[broken] Javascript Game No.2: align the blocks to make Conrad happy'
date: 2014-08-27 07:26:57.000000000 +01:00
type: post
published: true
status: publish
categories: []
tags: []
meta:
  _css_code: "\t\t.hidden {\r\n\t\t\tdisplay: none;\r\n\t\t}\r\n\t\t\r\n\t\t.active
    {\r\n\t\t\t\r\n\t\t}\r\n\r\n             #bigBox2 {\r\n\t\tbackground-color: blue;\r\n\t\theight:
    60px;\r\n\t\twidth:200px;\r\n  \t\tmargin-left: 65px;\r\n\t\t\t\t\r\n\t\t}\r\n\t\t\r\n\t\t#smallBox
    {\r\n\t\tbackground-color: #FFFF00;\r\n\t\tmargin-left: 49px;\r\n\t\theight: 40px;\r\n\t\twidth:
    40px;\r\n\t\t\r\n\t\t}\r\n\r\n\t\t#bigBox {\r\n\t\tbackground-color: sienna;\r\n\t\tmargin-left:
    20px;\r\n\t\theight: 30px;\r\n\t\twidth: 160px;\r\n\t\t\r\n\t\t}\r\n\t\t\r\n\t\t#box-wrapper
    {\r\n\t\tfloat: left;\r\n\t\t}\r\n\t\t\r\n\t\t#picture-wrapper {\r\n\t\tpadding:
    10px;\r\n\t\tfloat: right;\r\n\t\t}\r\n"
  _googl_shortlink: http://goo.gl/fSCZAU
author: annaleach


---
_These js games are out of date_

<p>It's been great to work with <a href="https://twitter.com/Coneee">Conrad</a> at Ampp3d. And one of the many things I've learned from him is to make sure I align everything that can be aligned on Illustrator. He does not like it when things are not aligned. That is what this game is about. Miss you Conrad.</p>
<h1 id="heading"> Make Conrad happy by aligning the boxes correctly</h1>
<div id="box-wrapper">
<div class="boxes" id="bigBox2">
</div>
<div class="boxes" id="smallBox"></div>
<div class="boxes" id="bigBox2"></div>
<div class="boxes" id="bigBox"></div>
<div class="boxes" id="smallBox"></div>
<div class="boxes" id="bigBox"></div>
<div class="boxes" id="bigBox2"></div>
<div class="boxes" id="bigBox2"></div>
<div class="boxes" id="bigBox"></div>
</p></div>
<div id="picture-wrapper">
<div id="happy" class="hidden"><img src="{{ site.image_base }}/happy-conrad1-e1408519812465.png" /></div>
<div id="sad" class="active"><img src="{{ site.image_base }}/sad-conrad1-e1408519837870.png" /></div>
</p></div>
<p>		<script src="http://ajax.googleapis.com/ajax/libs/<br />
jquery/2.0.2/jquery.min.js"></script></p>
<p><script src="http://annaleach.net/wp-content/uploads/2014/08/animate.js"><br />
		</script></p>
