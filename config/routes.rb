Rails.application.routes.draw do
  root "car#index"
  resources :cars, only: [:index, :new, :create]
end
