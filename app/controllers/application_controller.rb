class ApplicationController < ActionController::Base
  protect_from_forgery
  
  helper_method :my_access_token
  def my_access_token
    'AAACEdEose0cBALndLfu2JorbdzbOx5xNIaZAfEFqkb4LkZCqGCkuzhBgRYKebW4EkLrd6h8Bsx5uUQlsbzKEMft8GTryfaGzqtnljGswZDZD'
  end
end
