# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  
  def show_admin_content?
    signed_in_as_admin?
  end
  
end
