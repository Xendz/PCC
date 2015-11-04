class TargetController < ApplicationController

def new
  @target = Target.new
end
 
def create
 # render plain: params[:target].inspect
  @target = Target.new(target_params)
  if @target.save
    redirect_to @target
  else
    render 'new'
  end
end
 
private
  def target_params
    params.require(:target).permit(:target, :ip, :port)
  end
def show
  @target = Target.find(1)
end
  def index
   authorize_admin
  end
end

#  @target = Target.new(target_params)
 
 # if @target.save
  #  redirect_to @target
  #else
  #  render 'new'
  #end