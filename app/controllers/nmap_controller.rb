
class NmapController < ApplicationController


def index

@xml = Nokogiri::XML(File.open("public/uploads/resume/attachment/3/scanbc.xml"))

@hostaddr = @xml.xpath("//host/address/@addr")
@protocol = @xml.xpath("//ports/port/@protocol")
@ports = @xml.xpath("//ports/port/@portid")

render :display
end
end


def show
end

def display
@test = @protocol.zip(@ports).each do |proto, port| 

puts proto
puts port
end


end

