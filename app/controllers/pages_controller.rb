class PagesController < ApplicationController
    
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
        def page_params
            params.require(:page).permit(:creative_id, :line_id)
        end
    
end