class Creative < ActiveRecord::Base
    belongs_to :order
    has_many :pages
    has_many :lines, through: :pages
    
    validates :creative_name, presence: true, length: { minimum: 2, maximum: 50 }
end