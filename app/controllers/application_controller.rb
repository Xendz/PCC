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
  
  
  

  
def shodan_method(ipparam)

@ipaddr = ipparam
@APIKEY = "sHXhSewFy26XllFbsxvRuWyzWqRR7BaW"
response = Net::HTTP.get_response(URI.parse("https://api.shodan.io/shodan/host/#{@ipparam}?key=#{@APIKEY}"))
@r= JSON.parse(response.body)
#@target.update(:latitude, @r)
end

end


#Latitude: <%=  @r["latitude"] %> 

# On save form submit method to check LAT and LONG
  # Store results in DB
  
  # Have loop on visitors page go through and display all lat and longs


#@target = Target.pluck(:ipaddress)
 # @test = @target.each do | grab |