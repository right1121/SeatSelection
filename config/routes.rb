Rails.application.routes.draw do
  get 'reserved_seats/index'

  devise_for :users, module: :users
  root 'pages#index'

  resources :movies do
    resources :reserved_seats
  end
end
