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
  
def shodan_method 
  
  @target = Target.find(params[:id])
  @test = @target.each do |f|
  @APIKEY = "sHXhSewFy26XllFbsxvRuWyzWqRR7BaW"
 
response = Net::HTTP.get_response(URI.parse("https://api.shodan.io/shodan/host/#{f}?key=#{@APIKEY}"))
 @r= JSON.parse(response.body)
end
end
end
