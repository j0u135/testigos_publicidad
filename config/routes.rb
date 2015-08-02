Rails.application.routes.draw do

  resources :orders
  resources :creatives
  resources :agencies
  resources :formats
  resources :lines
  resources :pages
  resources :sites

end
