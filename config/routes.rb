# inside config/routes.rb  
Rails.application.routes.draw do  
  get '/guests', to: "guests#index"
  get "/guests/:id", to: "guests#list"
  get "/home/index"  
  root to: "home#index"  
  resources :guests
end  