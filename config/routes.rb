Rails.application.routes.draw do
  get 'pages/index'

  resources :users, only: [:new, :create]
  delete '/logout', to: 'sessions#destroy', as: :logout
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
