Rails.application.routes.draw do
  devise_for :users
  
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  root to: "augurys#index"
  resources :augurys, only: [:index, :new, :create, :show] do
    resources :results, only: [:index]
  end
end
