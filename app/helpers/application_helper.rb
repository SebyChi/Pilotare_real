module ApplicationHelper
  def return_to_main
    link = link_to "Meniu", main_path(), class: "nav_links"
    link.html_safe
  end

  def physics_page?
    if request.path.include?("/physics")
      return_to_main
    else
      link = link_to "Fizică", physics_path(), class: "nav_links"
      link.html_safe
    end
  end

  def chemistry_page?
    if request.path.include?("/chemistry")
      return_to_main
    else
      link = link_to "Chimie", chemistry_path(), class: "nav_links"
      link.html_safe
    end
  end

  def biology_page?
    if request.path.include?("/biology")
      return_to_main
    else
      link = link_to "Biologie", biology_path(), class: "nav_links"
      link.html_safe
    end
  end

  def summary_page?
    if request.path.include?("/summary")
      return_to_main
    else
      link = link_to "Concluzii", summary_path(), class: "nav_links"
      link.html_safe
    end
  end
end
