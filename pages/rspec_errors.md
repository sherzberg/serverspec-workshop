---
layout: default
title: rspec errors
order: 3
---

Setup
-----

`rspec` is very helpful on any errored specs. Let's check it out.

Create a file called `errors_spec.rb`:

{% highlight bash %}
{% include rspec_errors/errors_spec.rb %}
{% endhighlight %}

Your output should now have some errors similar to:

{% highlight bash %}
{% include rspec_errors/out.txt %}
{% endhighlight %}

As you can see, `rspec` provides pretty nice diffs on what when wrong. 

Exercises
---------

* Fix the other errors
