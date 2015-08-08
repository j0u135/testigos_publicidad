ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all
  
  def setup_order
    order = Order.new
    order.order_number = 234567
    order.campaign = "Campaña de Prueba"
    order.agency_id = 1
    order.start_date = "2015-01-01"
    order.end_date = "2015-02-01"
    order.site_id = 1
    
    order
  end
  
  def setup_creative(order)
    creative = order.creatives.build()
    creative.creative_name = "Algo"
    
    creative
  end
  
  def setup_line(creative)
    line = creative.lines.new
    line.line_number = 12321112
    line.format_id = 1
    line.start_date = '2015-01-01'
    line.end_date = '2015-01-01'
    
    line
  end

  # Add more helper methods to be used by all tests here...
end
