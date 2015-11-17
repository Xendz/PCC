class TargetsController < ApplicationController

    before_action :authorize_admin
    


    def index
        @targets = Target.all
    end

    def show
  @target = Target.find(params[:id])
    end
    
    def new
        @target = Target.new
    end
    
    def create
        @target = Target.new(target_params)
        @target.user_id = current_user.id if current_user
        flash[:notice] = "Added Target!"
        @target.save
        redirect_to @target
    end
    
    def update
    @target = Target.find(params[:id])
 
    if @target.update(target_params)
      redirect_to @target
    else
      render 'edit'
    end
    end
    
    def edit
    @target= Target.find(params[:id])
    end
  
    def destroy
    @target = Target.find(params[:id])
    @target.destroy
 
    redirect_to targets_path
    end
    
    private
    def target_params
        params.require(:target).permit(:ipaddress, :domain, :port, :dirb, :backdoors, :status, :latitude, :longitude)
    end
    
    
end
