SimpleAuthDemo.Router.map(function() {
  this.route('login');
  // ptotectected route that's inacessible without authentication
  this.route('protected');
});
