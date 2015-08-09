class LinesController < ApplicationController
   
   def index
   end
   
   def show
   end
   
   def new
      @order = Order.find(params[:order_id])
      @creative = @order.creatives.find(params[:creative_id])
      @lines = @creative.lines
      @line = @creative.lines.new
   end
   
   def create
      @order = Order.find(params[:order_id])
      @creative = @order.creatives.find(params[:creative_id])
      @line = @creative.lines.new(line_params)
      begin
         if @line.save
            redirect_to new_order_creative_line_path(@order.id, @creative.id)
         else
            render :new
         end
      rescue => e
         logger.error "letter_controller::create => exception #{ e }"
      end
      
   end
   
   def edit
   end
   
   def update
   end
   
   private
      def line_params
         params.require(:line).permit(:line_number, :format_id, :start_date, :end_date )
      end
    
end