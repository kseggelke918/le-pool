Rails.application.routes.draw do
  
  devise_for :devise_users
  scope path: ApplicationResource.endpoint_namespace, defaults: { format: :jsonapi } do
    mount VandalUi::Engine, at: '/vandal'

    resources :games
    resources :players
    resources :scores
    resources :devise_users do 
      resources :games do 
        resources :players
      end
    end 
  
    # your routes go here
    root 'application#home'
  end  
  # resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
