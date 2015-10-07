Rails.application.routes.draw do
  resources :home
  post 'search'=> 'home#search'

  root 'home#index'
end
