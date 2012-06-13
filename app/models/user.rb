class User < ActiveRecord::Base
  validates :first_name, :last_name, :title_gender,
            :presence => true

  has_and_belongs_to_many :qualifications
end
