---
layout: post
title: 'Forget special snowflake theory, Object Oriented programming caused identity politics'
date: 2017-02-02 14:30:15.000000000 +01:00
type: post
published: true
status: publish 
categories: []
tags:
- web development
- politics
- oop
meta:
  _edit_last: '1'
author: annaleach
---

As I learn more about the different models and assumptions behind software engineering, I get more and more interested by their social
and political implications. Especially as 
"[software eats the world](https://www.wsj.com/articles/SB10001424053111903480904576512250915629460)" 
and more and more aspects of our lives are lived and managed 
through different pieces of software.

So this may sound left-field, but hear me out. 
 
<!--excerpt-->

## Identity politics is here

Identity politics and the "millennials" attributed with creating it have got a lot of attention recently and a lot of 
criticism. Criticism from the
 [left](https://www.theguardian.com/uk-news/2017/feb/19/trevor-phillips-i-dont-care-about-offending-people-has-political-correctness-gone-mad-channel-4) and
 [the right](http://www.newyorker.com/podcast/political-scene/mark-bauerlein-talks-to-kelefa-sanneh-about-the-intellectual-case-for-trump). 

I don’t want to get into the rights and wrongs of identity politics here. But it’s clear that identity politics has 
arrived. And that it has been redrawing political boundaries in the UK and other western democracies. Whether it 
manifests as white nationalism in Pennsylvania or the trans rights movement and the backlash against it. It’s here. 

This piece is about its rise. Why identity politics and why now? 

## Why now 

One prevalent theory is "[special snowflake syndrome](https://en.wikipedia.org/wiki/Generation_Snowflake)".  
Millenials we are told, came up with identity politics because they are special snowflakes. Because they are a 
uniquely sensitive generation. Advertising told them to be themselves. They got too much attention from their parents, 
and they got medals for coming last on sports day. Even if people 
don’t articulate this in as extreme a fashion as
 [lead proponents like Clare Fox](https://www.theguardian.com/science/2016/nov/28/snowflake-insult-disdain-young-people), it is an underlying assumption in 
many descriptions of identity politics. 

And worst of all, the criticism runs, because everyone is so sensitive about everything a politically correct culture 
has sprung up that polices this new identity space. 

To me that it’s a crap reason. 

I literally cannot remember any school sports day whatsoever. But I’ll tell you something that has affected almost 
every day of my life for the last 15 years. The internet. 

Of course the rise of a political movement has many roots and reasons. From social changes to the failures and 
successes of political movements past. Active discrimination against people with particular characteristics forces them to 
 politicise in particular ways regardless of whether they want to or not*. Better people than me have spoken about this, but 
 I want to look at just the last decade, and at one factor in particular. 

My pitch is to trace the lineage of identity politics from another great 
feature of our times - the rise of the web.

And I hope to discredit the idea that this is just the creation of a mass delusion of sensitivity.

## Our tools shape us too

Sorry to start this with a lazy historical comparison, but perhaps you’ve come across the notion that the replacement of 
benches by individual stools/chairs 
[contributed to the rise of individualism](https://books.google.co.uk/books?id=v_1YCwAAQBAJ&lpg=PA289&ots=nhuNROgX35&dq=chairs%20or%20benches%20rise%20of%20individualism&pg=PA289#v=onepage&q=chairs%20or%20benches%20rise%20of%20individualism&f=false), as people realised they could be single people
and not a group.

The invention of mirrors is argued to have had a similar contribution to the rise of individualism - viewers 
suddenly saw themselves as separate to other people. 

We have often used our technologies to conceive of who we are. In the 17th century people use clockwork machines as
metaphors to describe their minds. In literature and politics over the years society can be described as a building, 
a farm, a machine, a factory. 

My point is that changes in our tech change how we perceive ourselves. 

Humans are necessarily sensitive to their surroundings. It’s helped us evolve over the millennia. What we see, 
sense and do, reconfigures us and our sense of who we are and what we can do. 

Let’s acknowledge that the incredibly fast rise and adoption of the internet and the more visible part of it, the web, 
has been a significant feature of the last 20 years. 

## Blank templates 

For me, one of the first distinguishing features of the web was the blank template. I came to the web in the 2.0 era
 circa 2004-5, without any knowledge of html or servers or http requests. What I saw were blank input boxes - the 
 search box on google, comment boxes on blogs, empty boxes for the title, text and tagline of blog posts on blogging 
 CMSes like Wordpress. And of course, the empty boxes on sites where you had to make a profile, Facebook, MySpace, 
 Bebo, Twitter, OkCupid - whatever it was. 

There was a box for your name, a box for your date of birth, a box for your political views, a drop-down list for your gender,
 a box for your profile picture. 

Let’s hold up for a minute and think about that blank template. It’s a new thing. 

![facebook template]({{ site.image_base }}/fb-blank-template.jpg) 
_a blank facebook profile circa 2005_

In principle, it’s radically egalitarian. Everyone gets the same six blank boxes and 3 drop downs. 

That kind of blank template just doesn’t exist in meat world. You’re not born a blank template, you’re born somewhere
 to someone, you have a skin colour and a gender and from the toy you play with to the street you grow up on, you’re 
 part of a place, family and culture before you can say your own name. 

But one result of the levelling that these 5 boxes create, is that to be you in those boxes, you fill them with your 
identity.  You want to stand out? You can’t assume people know your family or your neighbourhood. You figure out 
what your identity is and you upload it. 

The profile structure of web 2.0 networks required you to have an identity. 

## The objects behind the templates 
This template format of many websites isn’t an accidental design choice. Templates, or forms really are inherent 
to how the http-based web works. 

If web 1.0 was the server serving you up pages that you read, web 2.0 is you posting back to the server - it’s a 
request and response pattern. 
You posting your credit card details to pay for something. You posting a comment on a blog. You fill in a form 
and you send it back to the server. 

This GETTING and POST is intrinsic to how http works. HTTP GET requests send content to your browser, HTTP POST 
requests send data from you back.

In object oriented programming, the paradigm that has dominated web development for the past 15-20 years, that 
information usually gets filled into an object. And that object is supposed to represent a feature of the real world.

In systems with users, the likelihood is that you, the user, are represented by an object: one of thousands of 
copies (or instances) of a User class. The User class is a kind of perfect ur-User, the template for all other users.
 (I’ve always thought this sounds a bit like Plato’s [Allegory of the 
 Cave](https://en.wikipedia.org/wiki/Theory_of_Forms) right? ) 

As an object you will have predefined properties, that will then get filled in by you. Probably when you fill
 in an online form declaring what attributes you have. 

## The human in the object 

You see what I'm getting at? In software systems, we are often represented as objects. This is what an object looks like 
by the way, in ruby. It will look similar but will have slightly different syntax in other mainstream object-oriented languages: 

```ruby 
    me = User.new
    me.name = 'Anna'
    me.gender = 'Female'
    
    me = {
        name: 'Anna',
        gender: 'Female'
    }
```


That bit in the curly brackets is the object*. 

I was fascinated to read this, right at the start of 
[The Foundations of Computer Science](http://infolab.stanford.edu/~ullman/focs.html) (Aho & Ullman) : 

> "Fundamentally, computer science is a science of abstraction - creating the right model for thinking about a 
problem and devising the appropriate mechanisable techniques to solve it. Every other science deals with the 
universe as it is (.…) Computer scientists on the other hand, must create abstractions of real-world problems that 
can be understood by computer users and, at the same time, that can be represented and manipulated inside a computer." 

The purpose of programming is to provide this representation of the world, according to this. But representation as any English Lit 
student can tell you, doesn’t just go one way. We create something to represent us, but once created, we allow it change 
how we see what was there to start with. 
 
Facebook’s databases and code structures don’t just represent stuff about us and our society. These software engineering structures
 are changing how our society sees itself. And imho identity politics is just one consequence. 

I’m not saying that gender non-conformity didn’t exist before the Facebook drop down menu. But the arrival of the gender 
options on the Facebook dropdown menu accelerates the concept of gender as an interchangeable attribute around which 
people and political movements can coalesce. 


![facebook gender dropdown]({{ site.image_base }}/gender-dropdown.png) 
_options from the facebook personal information section 2017_


That’s my two cents. 
Any thoughts? 


### *NOTE 1
I know I'm really skiting over this part. 


### *NOTE 2 
In software world, the paradigm is already shifting away from forms and Object Oriented programming. The move from HTTP to web sockets, the idea of 
configuring interaction online as streams of data rather than request and response cycles  is one change. The move away from object-oriented
 code towards functional programming is another. This shift also prioritises the idea of relationships between data streams. 

Will there be cultural ramifications from people being represented as streams of events rather than objects with set 
attributes? Quite possibly, I have no idea what they will be. 





