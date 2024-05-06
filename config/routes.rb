Rails.application.routes.draw do
  root  "numbers#index"
  get "up" => "rails/health#show", as: :rails_health_check

  resources :numbers, only: %i[index]
end
