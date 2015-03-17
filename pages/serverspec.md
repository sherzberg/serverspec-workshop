---
layout: default
title: serverspec
order: 4
---

Now that we know a little about `rspec`, lets jump right into `serverspec`.

Installation
------------

Installing serverspec is easy when you have `rubygems` installed:

_NOTE: you may need to use `sudo` for installation of gems_

{% highlight bash %}
{% include serverspec/install.sh %}
{% endhighlight %}

Project Setup
-------------

Serverspec bundles in a nice utility to generate a few files to help run serverspecs.
We should run this to get us started.

```bash
$ serverspec-init
Select OS type:

  1) UN*X
  2) Windows

Select number: 1

Select a backend type:

  1) SSH
  2) Exec (local)

Select number: 2

 + spec/
 + spec/localhost/
 + spec/localhost/sample_spec.rb
 + spec/spec_helper.rb
 + Rakefile
 + .rspec
```

We chose `2) Exec (local)` for the backend type to make running these examples easier.
We will cover this in more detail later.

We are going to write our specs from scratch, so remove `sample_spec.rb`:

```bash
$ rm spec/localhost/sample_spec.rb
```

Let's add some serverspec to a file called `spec/localhost/example_spec.rb`

{% highlight ruby %}
{% include serverspec/spec/localhost/example_spec.rb %}
{% endhighlight %}


For more `resource_types` click [here](http://serverspec.org/resource_types.html)
Exercises
---------

* Check to make sure that `/etc/passwd` is a file.
* Check to make sure that `pwd` is executable.
* Check to make sure that `www.google.com` is reachable on port 80.
