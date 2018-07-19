module ApplicationHelper
  def app_title(page_title = '')
    base_title = "Rewardr"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end
end
