Rails.application.routes.draw do

  resources :posts
  resources :subs
  resources :users
  resource :session
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
