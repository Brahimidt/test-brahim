Rails.application.routes.draw do
  resources :clients
  root to: "clients#new"

end
