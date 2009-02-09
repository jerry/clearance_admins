class User < ActiveRecord::Base
  include Clearance::App::Models::User
  
  def admin?
    self.admin
  end
  
end

