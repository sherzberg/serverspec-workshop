---
layout: default
title: Dockerfile testing
order: 5
---

Let's say we want to test our `Dockerfiles`. Given a Dockerfile, ensure that ports are exposed and
we have a specific CMD.

Installation
------------

This is going to be more of an `rspec` style test and we also need another dependency:

_NOTE: you may need to use `sudo` for installation of gems_

{% highlight bash %}
{% include dockerfile_testing/install.sh %}
{% endhighlight %}

Setup
-----

First create a `Dockerfile`:

{% highlight bash %}
{% include dockerfile_testing/Dockerfile %}
{% endhighlight %}

Now create our test file `docker_spec.rb`:

{% highlight ruby %}
{% include dockerfile_testing/spec/docker_spec.rb %}
{% endhighlight %}

Finally run the spec:

{% highlight bash %}
{% include dockerfile_testing/run.sh %}
{% endhighlight %}

Exercises
---------

* How can we ensure there is _no_ ENTRYPOINT? (Hint: `["Config"]["Entrypoint"]`)
* Change the `Dockerfile` to run `python -m SimpleHTTPServer 8000` and write a test that starts the container up before tests run binding to port `8000`. Make sure to kill the container after the test.