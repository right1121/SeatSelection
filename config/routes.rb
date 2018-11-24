Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'reserved_seats/index'

  devise_for :users, module: :users
  root 'pages#index'

  resources :movies do
    resources :reserved_seats
  end
end
