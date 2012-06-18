require 'digest/sha1'
class User < ActiveRecord::Base
  attr_accessor :password

  validates :first_name, :last_name, :title_gender,
            :presence => true
  validates_length_of :password, :within => 8..25, :on => :create

  before_save :create_hashed_password
  after_save :clear_password

  has_and_belongs_to_many :qualifications

  attr_protected :hashed_password, :salt

  def self.authenticate(email="", password="")
    user = User.find_by_email(email)
    if user && user.password_match?(password)
      return user
    else
      return false
    end
  end

  def password_match?(password="")
    hashed_password == User.hash_with_salt(password, salt)
  end

  def self.make_salt(email="")
    Digest::SHA1.hexdigest("Use #{email} with #{Time.now} to make salt")
  end

  def self.hash_with_salt(password="", salt="")
    Digest::SHA1.hexdigest("put #{salt} on the #{password}")
  end

  private

  def create_hashed_password
    unless password.blank?
      self.salt = User.make_salt(email) if salt.blank?
      self.hashed_password = User.hash_with_salt(password, salt)
    end
  end

  def clear_password
    self.password = nil
  end

end
