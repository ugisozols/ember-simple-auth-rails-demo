SimpleAuthDemo::Application.routes.draw do
  root :to => "static#index"

  post :token, :to => "session#create"
end
