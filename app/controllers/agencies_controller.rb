class AgenciesController < ApplicationController
    
    def index
    end
    
    def new
    end
    
    def create
    end
    
    def edit
    end
    
    def update
    end
    
    def show
    end
    
    private
        def agency_params
            params.require(:agency).permit(:agency_name)
        end
    
end