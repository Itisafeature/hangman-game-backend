Rails.application.routes.draw do
  # resources :games
  post '/login', to: 'sessions#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/get-song/:q', to: 'songs#get_song'
end
