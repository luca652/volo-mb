Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "posts#index"
  resources :posts do
    resources :comments
    resources :pins, only: [:create]
  end
  post to: "pins#destroy"
  get to: "pins#index"
end
