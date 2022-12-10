Rails.application.routes.draw do
  devise_for :users
  root to: "augurys#index"
  resources :augurys, only: [:index, :new]
end
