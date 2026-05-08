module ApplicationHelper
  def return_to_main
    link = link_to "Main", main_path
    link.html_safe
  end

  def physics_page?
    if request.path.include?("/physics")
      return_to_main
    else
      link = link_to "Physics", physics_path()
      link.html_safe
    end
  end

  def chemistry_page?
    if request.path.include?("/chemisrty")
      return_to_main
    else
      link = link_to "Chemistry", chemistry_path()
      link.html_safe
    end
  end

  def biology_page?
    if request.path.include?("/biology")
      return_to_main
    else
      link = link_to "Biology", biology_path()
      link.html_safe
    end
  end
end
