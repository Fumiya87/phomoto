module ApplicationHelper
  def page_title
    !@page_title.nil? ? "#{@page_title} | Phomoto" : "Phomoto"
  end

  def logo
    if login?
      link_to 'Phomoto', root_path, id:'logo', class:'none'
    else
      link_to 'Phomoto', root_path, id:'logo'
    end
  end

  def menu_link_to(text, path, options={})
    link_to_unless_current(text, path, options) do
      content_tag(:a,text,class: 'btn current_page')
    end
  end
end
