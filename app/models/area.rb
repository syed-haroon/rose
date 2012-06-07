class Area < ActiveRecord::Base

  validates :name,
            :presence => true,
            :uniqueness => {:scope => :city_id, :case_sensitive => false}

  belongs_to :city

end