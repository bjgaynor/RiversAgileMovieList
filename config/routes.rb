Rails.application.routes.draw do
  root to: redirect('/my_lists')

  get "/my_lists" => "movie_lists#index"

  resources :users
  resources :movie_lists
  resources :movies
end
