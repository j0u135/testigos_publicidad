class Line < ActiveRecord::Base
    
    has_many :pages
    has_many :creatives, through: :pages
    
    validates :line_number, presence: true, numericality: { only_integer: true }, length: { is: 8 }
    validates :format_id, presence: true, numericality: { only_integer: true }
    validates :start_date, presence: true
    validates :end_date, presence: true
    
end