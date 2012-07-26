Homehunter::Application.routes.draw do
  root :to => 'home#index'
  devise_for :users

  resources :hunts, :only => [:new, :create, :show]
end
