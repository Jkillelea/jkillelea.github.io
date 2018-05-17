---
layout: post
title:  "Reading Text Data and Plotting in Julia"
date:   2018-05-17 12:25:00 -0700
categories: [post, update]
---

Reading data into and out of Julia has been the number one pain point for me. MATLAB (and by extension,
Octave) makes it very easy. Reading in your text based numeric data is as simple as

{% highlight matlab %}
data = load('filename');
{% endhighlight %}

Most options for reading in data in Julia [were horrifying]\
    (https://en.wikibooks.org/wiki/Introducing_Julia/Working_with_text_files). Fortunately, 
Stack Overflow finally turned up an easy answer. It's:

{% highlight julia %}
data = readdlm("filename")
{% endhighlight %}

Thank god. While I like control in most languages, I was worried that the lack of 'easy' answers here was going
to be a real sticking point.

Plotting in Julia is stil something of a pain:

{% highlight julia %}
using Plots # library
plotly() # select the plot.ly backend
humid = readdlm("bathroom_humidity") # read in data
gui(plot(humid)) # plot, call gui to show the plot since we're in a script
{% endhighlight %}

At the end of the day, we do get a nice plot in the browser:

![plot]({{ "/assets/2018-05-17/humidity.png" }})

This is real data from this morning. I took a shower while running a temperature and humidity sensor
in the room - details on that to come. You can see the spike where I showered and then, as the day warmed up,
the humidity in the room rose further. Humidity is sampled about every other second, so this represents a few 
hours of data.
