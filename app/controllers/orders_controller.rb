class OrdersController < ApplicationController
    
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
        def order_params
            params.require(:order).permit(:order_number, :campaign, :start_date, :end_date, :site_id)
        end
    
end