class OrdersController < ApplicationController
    
    def index
        @orders = Order.all
    end
    
    def new
        @order = Order.new
    end
    
    def create
        @order = Order.new(order_params)
        #begin
            if @order.save
                #flash[:success] = "Se ha generado correctamente la órden."
                redirect_to orders_path
            else
                #flash[:error] = "Lo sentimos, ha ocurrrido un error al generar la órden."
                render :new
            end
        #rescue => e
            #flash[:error] = "Lo sentimos, ha ocurrrido un error al generar la órden."
            #logger.error "letter_controller::create => exception"
        #end
    end
    
    def edit
    end
    
    def update
    end
    
    def show
        @order = Order.find(params[:id])
    end
    
    private
        def order_params
            params.require(:order).permit(:order_number, :agency_id, :campaign, :start_date, :end_date, :site_id)
        end
    
end