class Area < ActiveRecord::Base

  validates :name,
            :presence => true,
            :uniqueness => {:scope => :city_id}
            #:nested_attributes_uniqueness => {:field => :name}

  belongs_to :city

end
