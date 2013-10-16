SimpleAuthDemo::Application.routes.draw do
  root :to => "static#index"

  post :session, :to => "session#create"
  delete :session, :to => "session#destroy"
end
