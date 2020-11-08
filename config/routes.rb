Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users 

  resources :games

  resources :player_games

  resources :courts

  resources :user_reviews

  resources :skills

  resources :player_skills
 
  resources :welcome, :only => [:new, :create]


  get '/login' => 'sessions#new'
  get '/logout' => 'sessions#destroy'
  post '/sessions' => 'sessions#create'

  root 'player_games#show'

  
end

