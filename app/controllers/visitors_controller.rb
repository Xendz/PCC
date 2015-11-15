class VisitorsController < ApplicationController
    
    def index
   @targets = Target.all
    end
    
    def show
    end
end
