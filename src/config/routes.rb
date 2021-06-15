Rails.application.routes.draw do
  devise_for :members
  root to: "companies#index"
  resources :companies, :users
  resources :transactions, only: [:create]
  get "checkout/success", to: "transactions#success"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
