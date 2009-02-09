class User < ActiveRecord::Base
  include Clearance::App::Models::User
  has_attached_file :avatar, :styles => { :medium => "256x256", :thumb => "64x64", :mini => "32x32" }, :default_url => "/images/transparent.gif"
  attr_accessible :first_name, :last_name, :bio, :avatar, :location
  named_scope :stars, :conditions => { :star => true }
  has_many :posts
  
  # after_create :add_jabber_user
  # 
  # 
  # def add_jabber_user
  # end
  
  def full_name
    "#{first_name} #{last_name}"
  end
  
  def admin?
    self.admin
  end
  
end

