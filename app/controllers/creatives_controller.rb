class CreativesController < ApplicationController
    
    def index
    end
    
    def new
    end
    
    def edit
    end
    
    def create
    end
    
    def show
    end
    
    def update
    end
    
    private
        def creative_params
            params.require(:creative).permit(:creative_name, :order_id)
        end
end