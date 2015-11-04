class LocationsController < ApplicationController

    

def index
  if params[:search].present?
    @locations = Location.near(params[:search], 50, :order => :distance)
  else
    @locations = Location.all
  end
end

def show
end

def create
render plain: params[:target].inspect
end

end
