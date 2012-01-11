module ApplicationHelper

	def app
    "P2PPRO"
  end
  
  def logo
    image_tag("squawk_60_40.gif", :alt => app)
  end
  
  # Return a title on a per-page basis.
  def title
    base_title = app
    if @subtitle.nil?
      base_title
    else
      "#{base_title} | #{@subtitle}"
    end
  end

  def link_to_remove_fields(name, f)
    f.hidden_field(:_destroy) + link_to_function(name, "remove_fields(this)")
  end
  
  def link_to_add_fields(name, f, association)
    new_object = f.object.class.reflect_on_association(association).klass.new
    fields = f.fields_for(association, new_object, :child_index => "new_#{association}") do |builder|
      render(association.to_s.singularize + "_fields", :f => builder)
    end
    link_to_function(name, h("add_fields(this, '#{association}', '#{escape_javascript(fields)}')".html_safe))
  end

  
end
