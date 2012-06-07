class City < ActiveRecord::Base

  validates :name,
            :presence => true,
            :uniqueness => {:scope => :state_id, :case_sensitive => false}

  has_many :areas, :dependent => :destroy
  accepts_nested_attributes_for :areas, :reject_if => :all_blank, :allow_destroy => 'true'

  belongs_to :state

  validate :validate_unique_area

  private
  def validate_unique_area
    validate_uniqueness_of_in_memory(areas, [:city_id, :name], 'Area/Areas are duplicated.')
  end

end
