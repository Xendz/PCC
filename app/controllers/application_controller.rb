class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
def authorize_admin
  if current_user.try(:admin?)
    #do nothing
  else 
    redirect_to :root, :alert => "Access denied."
    #redirects to previous page
  end
end
end
