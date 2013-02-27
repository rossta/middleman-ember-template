middleman-ember-template: with Ember.js
=======================================

**Template Layout**

	source/
		index.html
		images/
		stylesheets/
		javascripts/
			application.js
			main.js
			controllers/  foo_controller.js
			models/       foo.js
			routes/  			foo_route.js
			views/        foo_view.js
			templates/    foo.handlebars
	vendor/
		stylesheets/
		javascripts/
			ember-data.js
			ember.js
			handlebars.js
			jquery.js

You may also want to checkout the [Ember.js with Middleman example](https://github.com/GutenYe/example-ember-with-middleman).

Usage
-----

Download or clone into ~/.middleman/ember

```
$ git clone git://github.com/rossta/middleman-ember-template.git ~/.middleman/ember
```

Initialize a new middleman project

```
$ middleman init my_project --template=ember
```

You can read more about project templates on the [Middleman site](http://middlemanapp.com/getting-started/welcome/).
