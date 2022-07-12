Rails.application.routes.draw do
  resources :clients
  root to: "clients#new"
  get '/accepted/:id', to: "clients#accepted"
end
