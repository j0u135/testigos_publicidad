class Order < ActiveRecord::Base
    has_many :creatives
    
    validates :order_number, presence: true, numericality: { only_integer: true }, length: { is: 6 }
    validates :campaign, presence: true
    validates :agency_id, presence: true, numericality: { only_integer: true }
    validates :start_date, presence: true
    validates :end_date, presence: true
    validates :site_id, presence: true, numericality: { only_integer: true }
end