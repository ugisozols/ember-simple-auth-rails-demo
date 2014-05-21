SimpleAuthDemo.LoginController = Ember.Controller.extend(Ember.SimpleAuth.LoginControllerMixin, {
  authenticatorFactory: 'ember-simple-auth-authenticator:oauth2-password-grant'
});
