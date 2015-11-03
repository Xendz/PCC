class TargetController < ApplicationController

  def index
    authorize_admin
    
  end
end
