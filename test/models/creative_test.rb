require 'test_helper'

class CreativeTest < ActiveSupport::TestCase
   
   def setup
      @order = setup_order
      @creative = setup_creative(@order)
      
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
