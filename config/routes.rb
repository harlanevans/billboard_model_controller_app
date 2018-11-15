Rails.application.routes.draw do
  
  root "billboards#index"

  resources :billboards do 
  resources :artist
  end
end
