class ApplicationController < ActionController::Base

  http_basic_authenticate_with name: "brent", password: "gaynor", except: :index
  protect_from_forgery with: :exception

end
