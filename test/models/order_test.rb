require 'test_helper'

class OrderTest < ActiveSupport::TestCase
   def setup
      @order = Order.new
      @order.order_number = 234567
      @order.campaign = "Campaña de Prueba"
      @order.agency_id = 1
      @order.start_date = "2015-01-01"
      @order.end_date = "2015-02-01"
      @order.site_id = 1
   end

   #### Pruebas para Order   
   test 'Order debe ser válido' do
      assert @order.valid?
   end
   
   test 'order_number debe estar presente' do
      @order.order_number = ''
      assert_not @order.valid?
   end

   test 'order_number debe ser de longitud 6' do
      @order.order_number = 423
      assert_not @order.valid?
   end
   
   test 'order_number numérico' do
      @order.order_number = "qwerty"
      assert_not @order.valid?
   end
   
   ##### Pruebas para campaign
   test 'campaign debe estar presente' do
      @order.campaign = ''
      assert_not @order.valid?
   end
   
   #### Pruebas para agency_id
   test 'agency_id debe estar presente' do
      @order.agency_id = ''
      assert_not @order.valid?
   end
   
   test 'agency_id debe ser numérico' do
      @order.agency_id = 'Algo'
      assert_not @order.valid?
   end
   
   #### Pruebas para start_date
   test 'start_date debe estar presente' do
      @order.start_date = ''
      assert_not @order.valid?
   end
   
   test 'start_date debe tener el formato de fecha' do
      @order.start_date = 'dsdsdd'
      assert_not @order.valid?
   end
   
   #### Pruebas de end_date
   test 'end_date debe estar presente' do
      @order.end_date = ''
      assert_not @order.valid?
   end
   
   test 'end_date debe tener elf ormato de fecha' do
      @order.end_date = 'werr444'
      assert_not @order.valid?
   end
   
   ##### Pruebas para site_id
   test 'site_id debe estar presente' do
      @order.site_id = ''
      assert_not @order.valid?
   end
   
   test 'site_id debe ser numérico' do
      @order.site_id = 'dssd'
      assert_not @order.valid?
   end

    
end