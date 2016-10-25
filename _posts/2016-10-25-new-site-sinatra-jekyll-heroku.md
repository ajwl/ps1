---
layout: post
title: 'New site: Loading Jekyll on Sinatra and deploying on Heroku'
date: 2016-10-25 21:30:15.000000000 +01:00
type: post
published: false
status: draft
categories: []
tags:
- web development
meta:
  _edit_last: '1'
author: annaleach
---

I've pulled the content off wordpress and built a custom website in the ruby framework Sinatra, using the 

<!--excerpt-->

I've had a blog in wordpress since 2012. There weren't loads of posts but I wanted to preserve them and all
the metadata, but to render everything more cleanly in a custom 

### Converting the content out of Wordpress

[This blog](http://vitobotta.com/how-to-migrate-from-wordpress-to-jekyll/) was the most helpful. 

### Getting Sinatra and Jekyll to work together 

This was more frustrating to the extent that I wished I hadn't used Jekyll. 

1) Directory structure 

After faffing around with the Jekyll and Sinatra parts in separate folders and then having  

2) Build a Sinatra route to pick up the rendered html display it as a webpage. 

This post by [Derek Eder](http://derekeder.com/blog/hello-world-setting-up-a-jekyll-blog-in-sinatra)
was particularly helpful. 

3) Images and assets 

4) Exclude all the Sinatra crap that gets tangled up in Jekyll.

Use the excludes: setting in Jekyll's 

5) Create a dev and environments with Jk

See [all the code](https://github.com/ajwl/ps1) 


### Deploying the lot to Heroku 

Heroku is nice to use. However a few quirks of how I set up the site made this harder 
than I expected to deploy. Despite seeing advice to use the PHP engine and to install various buildpacks 
I ended up just using the Ruby build engine. 

Critically, setting a Procfile. 

If you're getting strange errors from the jekyll build command, one command that helped me was adding the 
following to the excludes array 



