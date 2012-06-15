require 'digest/sha1'
class User < ActiveRecord::Base
  validates :first_name, :last_name, :title_gender,
            :presence => true

  has_and_belongs_to_many :qualifications

  attr_protected :hashed_password, :salt

  def self.make_salt(username="")
    Digest::SHA1.hexdigest("Use #{username} with #{Time.now} to make salt")
  end

  def self.hash_with_salt(password="", salt="")
    Digest::SHA1.hexdigest("put #{salt} on the #{password}")
  end

end
