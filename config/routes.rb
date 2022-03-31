Rails.application.routes.draw do
  get 'posts/new', to: 'posts#new'

  resources :users, only: [:index, :show] do
    resources :posts, on: :show, only: [:index, :show]
  end

  root "users#index"
end
