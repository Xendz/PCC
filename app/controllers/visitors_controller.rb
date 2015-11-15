class VisitorsController < ApplicationController
    
    def index
   @targets = Target.all
    end
end
