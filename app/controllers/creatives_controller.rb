class CreativesController < ApplicationController
    
    def index
        @order = Order.find(params[:order_id])
        @creatives = @order.creatives
    end
    
    def new
        @order = Order.find(params[:order_id])
        @creatives = @order.creatives
        @creative = @order.creatives.new
    end
    
    def create
        @order = Order.find(params[:order_id])
        @creative = @order.creatives.new(creative_params)
        begin
            if @creative.save
                flash[:success] = "Se ha agregado correctamente el nuevo creativo."
                redirect_to order_creatives_path(@order.id)
            else
                render :new
            end
        rescue => e
            logger.error "letter_controller::create => exception"
            flash[:error] = "Hubo un problema UPS."
            render :new
        end
    end
    
    def edit
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