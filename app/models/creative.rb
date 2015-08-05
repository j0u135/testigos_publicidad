class Creative < ActiveRecord::Base
    belongs_to :order
    
    validates :creative_name, presence: true, length: { minimum: 2, maximum: 50 }
end