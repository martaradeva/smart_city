Rails.application.routes.draw do

  resources :devices, only: [:index, :show]
  resources :readings, only: [:create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root to: "devices#index"
  root to: redirect('/devices')
end
