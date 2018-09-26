Rails.application.routes.draw do
  root to: redirect('/welcome')

  get "/welcome" => "home#landing"

  resources :users
  resources :movie_lists
  resources :movies
end
