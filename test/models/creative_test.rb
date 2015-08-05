require 'test_helper'

class CreativeTest < ActiveSupport::TestCase
   
   def setup
      @order = Order.new
      @order.order_number = 234567
      @order.campaign = "Campaña de Prueba"
      @order.agency_id = 1
      @order.start_date = "2015-01-01"
      @order.end_date = "2015-02-01"
      @order.site_id = 1
      @creative = @order.creatives.build()
      @creative.creative_name = "Algo"
   end
   
   test 'Creative debe ser válido' do
      assert @creative.valid?
   end
   
   test 'creative_name debe estar presente' do
      @creative.creative_name = ""
      assert_not @creative.valid?
   end
   
   test 'creative_name debe ser mayor o igual a dos caracteres' do
      @creative.creative_name = "q"
      assert_not @creative.valid?
   end
   
   test 'creative_name debe ser menor o igual de 50 caracteres' do
      @creative.creative_name = 'a'*55
      assert_not @creative.valid?
   end
    
end
