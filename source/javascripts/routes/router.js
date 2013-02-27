App.Router.map(function() {
  this.route('welcome');
});

App.ApplicationRoute = Ember.Route.extend({
  redirect: function() {
    this.transitionTo('welcome');
  }
});
