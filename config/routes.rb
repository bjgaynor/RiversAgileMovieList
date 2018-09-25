Rails.application.routes.draw do
  root to: redirect('/welcome')

  get "/welcome" => "home#landing"
end
