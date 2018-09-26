Rails.application.routes.draw do
  root to: redirect('/my_lists')

  get "/my_lists" => "movie_lists#index"

  resources :users
  resources :movie_lists
  resources :movies
end

# Prefix Verb   URI Pattern                                                                              Controller#Action
#                      root GET    /                                                                                        redirect(301, /my_lists)
#                  my_lists GET    /my_lists(.:format)                                                                      movie_lists#index
#                     users GET    /users(.:format)                                                                         users#index
#                           POST   /users(.:format)                                                                         users#create
#                  new_user GET    /users/new(.:format)                                                                     users#new
#                 edit_user GET    /users/:id/edit(.:format)                                                                users#edit
#                      user GET    /users/:id(.:format)                                                                     users#show
#                           PATCH  /users/:id(.:format)                                                                     users#update
#                           PUT    /users/:id(.:format)                                                                     users#update
#                           DELETE /users/:id(.:format)                                                                     users#destroy
#               movie_lists GET    /movie_lists(.:format)                                                                   movie_lists#index
#                           POST   /movie_lists(.:format)                                                                   movie_lists#create
#            new_movie_list GET    /movie_lists/new(.:format)                                                               movie_lists#new
#           edit_movie_list GET    /movie_lists/:id/edit(.:format)                                                          movie_lists#edit
#                movie_list GET    /movie_lists/:id(.:format)                                                               movie_lists#show
#                           PATCH  /movie_lists/:id(.:format)                                                               movie_lists#update
#                           PUT    /movie_lists/:id(.:format)                                                               movie_lists#update
#                           DELETE /movie_lists/:id(.:format)                                                               movie_lists#destroy
#                    movies GET    /movies(.:format)                                                                        movies#index
#                           POST   /movies(.:format)                                                                        movies#create
#                 new_movie GET    /movies/new(.:format)                                                                    movies#new
#                edit_movie GET    /movies/:id/edit(.:format)                                                               movies#edit
#                     movie GET    /movies/:id(.:format)                                                                    movies#show
#                           PATCH  /movies/:id(.:format)                                                                    movies#update
#                           PUT    /movies/:id(.:format)                                                                    movies#update
#                           DELETE /movies/:id(.:format)                                                                    movies#destroy
#                      page GET    /pages/*id                                                                               high_voltage/pages#show
#        rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
# rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#        rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
# update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#      rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create
