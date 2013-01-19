module ApplicationHelper

  def controller_for( o )
    o.class.name.underscore + "s" 
  end
end
