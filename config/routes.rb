Rails.application.routes.draw do
  root "cars#index"
  resources :cars, only: [:index, :new, :create] do
    collection do
      get "search"
    end
  end
end
