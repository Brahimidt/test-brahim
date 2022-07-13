Rails.application.routes.draw do
  resources :clients
  root to: "clients#new"
  get '/accept/:id', to: "clients#accept"
end
