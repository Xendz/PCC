
class NmapController < ApplicationController


def index

@xml = Nokogiri::XML(File.open("public/uploads/resume/attachment/3/scanbc.xml"))

@hostaddr = @xml.xpath("//host/address/@addr")
@protocol = @xml.xpath("//ports/port/@protocol")
@ports = @xml.xpath("//ports/port/@portid")
@status = @xml.xpath("//ports/port/state/@state")
@service = @xml.xpath("//ports/port/service/@name")
end


def show
end




end

