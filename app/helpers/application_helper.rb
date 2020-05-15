module ApplicationHelper
  def active_banner(link_path)
    current_page?(link_path) ? "link-active" : ""
  end

  def active_sub_cat(link_path)
    current_page?(link_path) ? "sub-cat-active" : ""
  end

  def active_cat(link_path)
    current_page?(link_path) ? "cat-active" : ""
  end
end
