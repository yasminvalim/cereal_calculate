Rails.application.routes.draw do
  resources :carts, only: [:show] 
end

