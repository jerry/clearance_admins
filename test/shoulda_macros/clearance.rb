module Clearance 
  module Shoulda
    
    # CONTEXTS
    def signed_in_admin_context(&blk)
      context "A signed in Admin" do
        setup do
          @user = Factory(:admin_user)
          @user.confirm_email!
          sign_in_as @user
        end
        merge_block(&blk)
      end
    end
    
  end
end


class Test::Unit::TestCase
  include Clearance::Shoulda::Helpers
end
Test::Unit::TestCase.extend(Clearance::Shoulda)
