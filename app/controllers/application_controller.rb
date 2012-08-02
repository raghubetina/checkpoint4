class ApplicationController < ActionController::Base
  protect_from_forgery
  
  helper_method :my_access_token
  def my_access_token
    ''
  end
end
