class TargetsController < ApplicationController

    before_action :authorize_admin
    before_action :nmap_parse


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
        params.require(:target).permit(:ipaddress, :domain, :opsys, :net1, :net2, :net3, :net4, :net5, :port, :dirb, :backdoors, :status, :latitude, :longitude)
    end

    def nmap_parse
@xml = Nokogiri::XML(File.open("public/uploads/resume/attachment/scanbc.xml"))

@hostaddr = @xml.xpath("//host/address/@addr")
@protocol = @xml.xpath("//ports/port/@protocol")
@ports = @xml.xpath("//ports/port/@portid")
@status = @xml.xpath("//ports/port/state/@state")
@service = @xml.xpath("//ports/port/service/@name")

end
    
    
end
