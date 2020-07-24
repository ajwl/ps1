---
layout: post
title: '[broken] Javascript Game No.1 - the coffee calculator'
date: 2014-08-12 14:48:16.000000000 +01:00
type: post
published: true
status: publish
categories: []
tags: []
author: annaleach


---
_This javascript game is out of date_

I've been learning Javascript and Jquery over the last six months - from Codeacademy, from two books and from a course
at City university. All recommended. Though, the books are hardest.
I made this calculator using vanilla javascript which went onto be the guts of an interactive we did on Ampp3d. In fact
the first interactive we've done. (I guess though you could count our live counters eg.
<a href="http://ampp3d.mirror.co.uk/2014/02/21/wayne-rooney-earnings/">the Wayne Rooney salary counter</a> as taking the "input" of user time spent on page.) </p>
The end result was the ampp3d coffee machine story.

<style>
			.active{ }<br />
			.hidden {display: none;}<br />
			.red {background-color:red;}</p>
</style>

<h1> How much does your coffee cost you?</h1>
<h2> What coffee do you buy each day? </h2>
<div id = "wrapper"; style="float: left; width: 400px; height: 150px">
<div class="button" id="cappuccino"><button>Cappuccino</button></div>
<div class="button" id="latte"><button>Latte</button></div>
<div class="button" id="americano"><button>Americano</button></div>
<div class="button" id="expresso"><button>Expresso</button></div>
<div class="button" id="flatwhite"><button>Flatwhite</button></div>
<div id = "day-wrapper"; style="float: right; width: 400px; height: 150px">
<h2 id="cupsTotal"> You drink <span id="youDrink"> </span> cups a day</h2>
<h2 id="dayCostResult">You spend £<span id="youSpend"> </span></h2>
<div class="button" id="calculate"><button>Calculate how much you spend on coffee in your LIFE</button></div>
<div id="results-wrapper">
<h3 id="yearCostResult" class="red">You will spend £<span id="youSpendYear"> </span> on coffee a year</h3>
<h3 id="lifeCostResult" class="red">You will spend £ <span id="youSpendLife"> </span> on coffee in your 47-year caffeine-addled working life </h3>
</p></div>
<p>		<script src="http://annaleach.net/wp-content/uploads/2014/08/coffee-machine-final.js"></script></p>
<p>Our designer Dave drew it to make it look good, added some internet game tricks he'd learnt from UsVsTh3m and our developer added the CSS so it all fitted behind the design. So it ended up looking like this. </p>
<p><a href="http://annaleach.net/wp-content/uploads/2014/08/Screen-Shot-2014-08-12-at-12.52.25.png"><img src="{{ site.baseurl }}/assets/Screen-Shot-2014-08-12-at-12.52.25.png" alt="Ampp3d coffee machine " title="Screen Shot 2014-08-12 at 12.52.25" width="470" height="521" class="aligncenter size-full wp-image-270" /></a></p>
<p>To see it work properly - check <a href="http://ampp3d.mirror.co.uk/2014/07/22/how-much-will-you-spend-on-coffee-in-your-lifetime-waaay-too-much/">it out on the Ampp3d site here</a>. </p>
