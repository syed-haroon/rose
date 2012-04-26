class State < ActiveRecord::Base

  validates :name,
            :presence => true,
            :uniqueness => true

 # belongs_to :user # for "Zone" use

  has_many :cities, :dependent => :destroy
  accepts_nested_attributes_for :cities, :reject_if => :all_blank, :allow_destroy => 'true'
end
