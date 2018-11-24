Rails.application.routes.draw do
<<<<<<< HEAD
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
=======
  get 'reserved_seats/index'

>>>>>>> 22_reserveSeats
  devise_for :users, module: :users
  root 'pages#index'

  resources :movies do
    resources :reserved_seats
  end
end
