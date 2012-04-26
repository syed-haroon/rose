class City < ActiveRecord::Base

  validates :name,
            :presence => true,
            :uniqueness => {:scope => :state_id}

  has_many :areas, :dependent => :destroy
  accepts_nested_attributes_for :areas, :reject_if => :all_blank, :allow_destroy => 'true'

  belongs_to :state
end
