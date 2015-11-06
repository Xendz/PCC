class VisitorsController < ApplicationController
    
    def index
    @test = Target.find(1).ipaddress
    end
end
