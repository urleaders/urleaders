Urleaders::Application.routes.draw do
  ActiveAdmin.routes(self)
  root "pages#home"    
  get "home", to: "pages#home", as: "home"
  get "inside", to: "pages#inside", as: "inside"
  get "maps", to: "pages#maps", as: "maps"
  get "maps/pc", to: "pages#pc", as: "maps_pc"
  
  devise_for :users
  
  namespace :admin do
    # root "base#index"
    resources :users
    resources :states
  end
  
end
