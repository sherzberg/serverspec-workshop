---
layout: default
title: rspec
order: 2
---

Installation
------------

Installing rspec is easy when you have `rubygems` installed:

_NOTE: you may need to use `sudo` for installation of gems_

{% highlight bash %}
{% include rspec/install.sh %}
{% endhighlight %}

Now lets create a file called `math_spec.rb`:

{% highlight ruby %}
{% include rspec/math_spec.rb %}
{% endhighlight %}

And run the spec:

{% highlight bash %}
{% include rspec/rspec_1.sh %}
{% endhighlight %}


Now lets create a file called `example_spec.rb`:

{% highlight ruby %}
{% include rspec/example_spec.rb %}
{% endhighlight %}

To run in:

{% highlight bash %}
$ rspec example_spec.rb
{% endhighlight %}

Check out the other matchers [here](http://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers)

Now lets write some advanced matchers. Create a file called `advanced_spec.rb`:

{% highlight ruby %}
{% include rspec/advanced_spec.rb %}
{% endhighlight %}

{% highlight bash %}
$ rspec advanced_spec.rb
{% endhighlight %}

_NOTE: you may run across the old syntax:_

{% highlight ruby %}
describe "foo" do
  it "should do stuff" do
    "somebody".should match("body")
  end
end
{% endhighlight %}

To run both styles, you may need some configuration [here](https://relishapp.com/rspec/rspec-expectations/docs/syntax-configuration#both-syntaxes-are-available-by-default)

Exercises
---------

* Try catching an exception such as ZeroDivisionError
