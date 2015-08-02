class FormatsController < ApplicationController
   
    def index
    end

    def show
    end
    
    def new
    end
    
    def create
    end
    
    def edit
    end
    
    def update
    end
    
    private
        def format_params
            params.require(:format).permit(:format_name)
        end
    
end