class OrdersController < ApplicationController
    
    def index
        @orders = Order.all
    end
    
    def new
        @order = Order.new
    end
    
    def create
        @order = Order.new(order_params)
        if @order.save
            redirect_to orders_path
        else
            render :new
        end
    end
    
    def edit
    end
    
    def update
    end
    
    def show
    end
    
    private
        def order_params
            params.require(:order).permit(:order_number, :agency_id, :campaign, :start_date, :end_date, :site_id)
        end
    
end