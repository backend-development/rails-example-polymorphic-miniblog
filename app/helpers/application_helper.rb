module ApplicationHelper

  def fields_partial_for( o )
    "#{o.class.name.underscore}s/fields"
  end

end
