Rails.application.routes.draw do
  devise_for :users, module: :users
  root 'pages#index'

end
