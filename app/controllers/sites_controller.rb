class SitesController > ApplicationController
    
    def index
    end
    
    def new
    end
    
    def create
    end
    
    def edit
    end
    
    def show
    end
    
    private
        def site_params
            params.require(:site).permit(:site_name)
        end 
    
end