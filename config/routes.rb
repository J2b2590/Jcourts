Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users 

  resources :games, only: [:new, :create]

  resources :player_games, only: [:show]
end
