Rails.application.routes.draw do
  resources :users do 
    resources :games do 
      resources :players
    end
  end 

  resources :games
  resources :players
  resources :scores
  
  
  # resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
