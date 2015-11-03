class UsersController < ApplicationController
  before_action :authenticate_user!
helper_method :check_auth

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    unless @user == current_user
      redirect_to :back, :alert => "Access denied."
    end
  end

def check_auth
  if !current_user.admin
    redirect_to :root, :alert => "Access denied."
  end
  
end
end