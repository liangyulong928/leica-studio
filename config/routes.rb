Rails.application.routes.draw do
  get 'opus/details'
  get 'index/homepage'
  get 'index/login'
  get 'index/loginCheck'

  root "index#homepage"

  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
