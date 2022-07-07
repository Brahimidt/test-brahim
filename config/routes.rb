Rails.application.routes.draw do
  resources :clients
  root to: "home#index"

end
