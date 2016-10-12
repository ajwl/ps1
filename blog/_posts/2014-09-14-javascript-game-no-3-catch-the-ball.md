---
layout: post
title: 'Javascript Game No.3: catch the ball'
date: 2014-09-14 19:55:56.000000000 +01:00
type: post
published: true
status: publish
categories: []
tags: []
meta:
  _edit_last: '1'
  _css_code: "\t\t\t.container1 {\r\n\t\t\t\tbackground-color: #FFFFFF;\r\n\t\t\t\theight:
    400px;\r\n\t\t\t\twidth: 600px;\r\n\t\t\t\tposition:relative;\r\n\t\t\t}\r\n\t\t\t\r\n\t\t\t#ball
    {\r\n\t\t\t\tposition:relative;\r\n\t\t\t}\r\n\t\t\t\r\n\r\n\r\n"
  other_media: ''
  other_media_effect: ''
  video_link: ''
  main_video: ''
  meta_title: ''
  meta_keywords: ''
  meta_description: ''
  image: ''
  quote-author: Unknown
  quote-url: http://
  quote-copy: Unknown
  audio: http://
  link-url: http://
  _googl_shortlink: http://goo.gl/47Lbu9
author:


   annaleach


---
<p>Sure - I haven't thought of a way this could be used to clarify or illustrate a news story yet - but, in the meantime...</p>
<div class="container1">
<h1>Can you catch the disco ball?<br />
			</h1>
<div id="ball">
				<img src="{{ site.baseurl }}/assets/disco_ball_3.gif" />
			</div>
<p id="result">
</p></div>
<p>		<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js" type="text/javascript"></script><br />
		<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.1/jquery-ui.min.js" type="text/javascript"></script><br />
                <script src="http://annaleach.net/wp-content/uploads/2014/09/ball-for-annaleach2.js"><br />
		</script></p>
<p>This is a bit tidier than some of my other efforts. </p>
<p>I copied a lot of the bounce-off-the-edges code from <a href="http://jsfiddle.net/2TUFF/">this great jfiddle document</a>. </p>
<p>Bugs include the fact that the results text sometimes gets stuck part way down the page, and that the reload button reloads the whole page - not just a part of the script. Which is all it needs. Something for next time...  </p>
---layout: posttitle: 'Javascript Game No.3: catch the ball'date: 2014-09-14 19:55:56.000000000 +01:00type: postpublished: truestatus: publishcategories: []tags: []meta:  _edit_last: '1'  _css_code: "\t\t\t.container1 {\r\n\t\t\t\tbackground-color: #FFFFFF;\r\n\t\t\t\theight:    400px;\r\n\t\t\t\twidth: 600px;\r\n\t\t\t\tposition:relative;\r\n\t\t\t}\r\n\t\t\t\r\n\t\t\t#ball    {\r\n\t\t\t\tposition:relative;\r\n\t\t\t}\r\n\t\t\t\r\n\r\n\r\n"  other_media: ''  other_media_effect: ''  video_link: ''  main_video: ''  meta_title: ''  meta_keywords: ''  meta_description: ''  image: ''  quote-author: Unknown  quote-url: http://  quote-copy: Unknown  audio: http://  link-url: http://  _googl_shortlink: http://goo.gl/47Lbu9author:   annaleach---
Sure - I haven't thought of a way this could be used to clarify or illustrate a news story yet - but, in the meantime...
<div class="container1"># Can you catch the disco ball?<br />
<div id="ball">![]({{ site.baseurl }}/assets/disco_ball_3.gif)</div>

</div>
                <br />

This is a bit tidier than some of my other efforts. 

I copied a lot of the bounce-off-the-edges code from [this great jfiddle document](http://jsfiddle.net/2TUFF/). 

Bugs include the fact that the results text sometimes gets stuck part way down the page, and that the reload button reloads the whole page - not just a part of the script. Which is all it needs. Something for next time...  
