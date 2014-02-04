AngularRailsExample::Application.routes.draw do
  resources :posts

  root "posts#index"
end
