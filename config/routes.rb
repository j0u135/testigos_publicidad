Rails.application.routes.draw do

  resources :orders do
    resources :creatives
  end
  
  resources :agencies
  resources :formats
  resources :lines
  resources :pages
  resources :sites

end
