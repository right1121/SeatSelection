Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, module: :users
  root 'pages#index'

  resources :movies, only: %i[index show] do
    member do
      patch :select_seat, controller: :reserved_seats
    end
    resources :reserved_seats, only: %i[create]
  end
end
