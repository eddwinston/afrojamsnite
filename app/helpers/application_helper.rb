module ApplicationHelper
  
  # Return a title on a per-page basis.
  def title
    base_title = "Afro Jams Nite"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
  
  def current_year
    Date.today.year
  end
  
end
