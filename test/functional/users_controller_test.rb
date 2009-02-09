require File.dirname(__FILE__) + '/../test_helper'

class UsersControllerTest < ActionController::TestCase
  include Clearance::Test::Functional::UsersControllerTest
  
  signed_in_admin_context do
    
    context "on :get to :index" do
      setup { get :index }
      should_respond_with :success
      should_render_template :index
      should_not_set_the_flash
    end
    
  end
  
  public_context do
    
    context "on :get to :index" do
      setup { get :index }
      should_deny_access(:flash => /Please Login as an administrator/i)
    end
         
  end
end