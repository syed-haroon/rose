class Area < ActiveRecord::Base

  validates :name,
            :presence => true,
            :uniqueness => {:scope => :city_id}

  belongs_to :city

end
