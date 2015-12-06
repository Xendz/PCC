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

def user_check
  unless current_user.id == Target.find(params[:id]).user_id
redirect_to :root, :alert => "Access denied."
return
  end
end
 
def shodan_method(ipparam)

@ipaddr = ipparam
@APIKEY = "sHXhSewFy26XllFbsxvRuWyzWqRR7BaW"
response = Net::HTTP.get_response(URI.parse("https://api.shodan.io/shodan/host/#{@ipparam}?key=#{@APIKEY}"))
@r= JSON.parse(response.body)
#@target.update(:latitude, @r)
end

def nmap_method
  @xml = Nokogiri::XML(File.open("public/uploads/resume/attachment/3/scanbc.xml"))

@hostaddr = @xml.xpath("//host/address/@addr")
@protocol = @xml.xpath("//ports/port/@protocol")
@ports = @xml.xpath("//ports/port/@portid")
@status = @xml.xpath("//ports/port/state/@state")
@service = @xml.xpath("//ports/port/service/@name")
end

end

