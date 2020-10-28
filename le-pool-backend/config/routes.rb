Rails.application.routes.draw do
  
  devise_for :devise_users
  scope path: ApplicationResource.endpoint_namespace, defaults: { format: :jsonapi } do
    mount VandalUi::Engine, at: '/vandal'

    resources :games
    resources :players
    resources :scores
    resources :users do 
      resources :games do 
        resources :players
      end
    end 
  
    # your routes go here
  end  
  # resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
