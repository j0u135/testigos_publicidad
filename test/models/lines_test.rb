require 'test_helper'

class LinesTest < ActiveSupport::TestCase
   
   def setup
      @order = setup_order
      @creative = setup_creative(@order)
      @line = setup_line(@creative)
   end
   
   test 'line debe ser valido' do
      assert @line.valid?
   end
   
   test 'line_number debe estar presente' do
      @line.line_number = nil
      assert_not @line.valid?
   end
   
   test 'line_number debe ser numerico' do
      @line.line_number = "3ef4443"
      assert_not @line.valid?
   end
   
   test 'line_number debe ser de longitud 8' do
      @line.line_number = 4323
      assert_not @line.valid?
      @line.line_number = 4323343456
      assert_not @line.valid?
   end
   
   test "format_id debe estar presente" do
      @line.format_id = nil
      assert_not @line.valid?
   end
   
   test "format_id debe ser numerico" do
      @line.format_id = "ds"
      assert_not @line.valid?
   end

   test "start_date debe estar presente" do
      @line.start_date = nil
      assert_not @line.valid?
   end
   
   test "end_date debe estar presente" do
      @line.end_date = nil
      assert_not @line.valid?
   end
   
end