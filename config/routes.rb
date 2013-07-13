Whatsfordinner::Application.routes.draw do

  resources :users do
    resources :reservations
  end

  resources :restaurants

  #resources :categories, only: [:get] Not sure if we need a Get request here....

  root to: 'restaurants#index'

end
