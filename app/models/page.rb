class Page < ActiveRecord::Base
    belongs_to :creatives
    belongs_to :lines
end