Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, module: :users
  root 'pages#index'

  resources :movies, only: %i[index show] do
    member do
      patch :update, controller: "reserved_seats/select_seats", as: :select_seat, path: :select_seat
    end
    resources :reserved_seats, only: %i[create]
  end
end
