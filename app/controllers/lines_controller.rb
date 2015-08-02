class LinesController < ApplicationController
   
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
      def line_params
         params.require(:line).permit(:line_number, :format_id, :start_date, :end_date )
      end
    
end