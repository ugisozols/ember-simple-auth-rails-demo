Ember.SimpleAuth and Rails 4 demo
==================================

This is a demo on how to use Ember.js with [Ember.SimpleAuth](https://github.com/simplabs/ember-simple-auth) plugin and Rails 4 for the backend stuff + assets management.

### Versions used

* Ember.js - 1.5.0
* Ember.SimpleAuth - 0.2.0
* Rails - 4.0.4

### Getting stuff to work

Only a couple of steps:

```
git clone git@github.com:ugisozols/ember-simple-auth-rails-demo.git
bundle install
rake db:migrate
rake db:seed
```

And that's it. Now launch `rails server` and open http://127.0.0.1:3000. You can
login with the following credentials:

```
login: ember
password: password
```

#### Test

The example includes a sample integration test (see `test/javascripts/integration/login_test.js`). Start the server
and open http://127.0.0.1:3000/qunit to run the test.
