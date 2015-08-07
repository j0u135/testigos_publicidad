Rails.application.routes.draw do

  resources :orders do
    resources :creatives do
      resources :lines
    end
  end
  
  resources :agencies
  resources :formats
  resources :pages
  resources :sites

end
