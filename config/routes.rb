Rails.application.routes.draw do
  get "home/index"
  get "up" => "rails/health#show", as: :rails_health_check

  root "ideas#index"
  resources :ideas
  get "about" => "static_pages#about"
get "random" => "static_pages#random"
end
