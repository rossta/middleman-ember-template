middleman-ember-template: with Ember.js
=======================================

**Template Layout**

	source/
		index.html
		stylesheets/
		images/
		javascripts/
			main.js
			routes.js
			controllers/  foo_controller.js
			models/       foo.js
			routes/  			foo_route.js
			views/        foo_view.js
			templates/    foo.handlebars
	vendor/
		javascripts/
		stylesheets/

You may also want to checkout the [Ember.js with Middleman example](https://github.com/GutenYe/example-ember-with-middleman).

Usage
-----

1. Download or clone into ~/.middleman/ember

```
$ git clone git://github.com/rossta/middleman-ember-template.git ~/.middleman/ember
```

2. Initialize a new middleman project

```
$ middleman init my_project --template=ember
```

You can read more about project templates on the [Middleman site](http://middlemanapp.com/getting-started/welcome/).