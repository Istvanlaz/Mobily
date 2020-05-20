module ApplicationHelper
  def active_banner(controller_name)
    request.controller_class == controller_name ? "link-active" : ""
  end

  def active_category_banner(cat_id)
    full_path = request.fullpath
    shortened_path = full_path.split("/")
    shortened_path[2].to_i == cat_id && shortened_path[1] == "categories" ? "link-active" : ""
  end

  def active_on_page_category(controller, cat_id)
    # current_page?(link_path) ? "cat-active" : ""
    full_path = request.fullpath
    shortened_path = full_path.split("/")
    shortened_path[2].to_i == cat_id && shortened_path[1] == controller ? "cat-active" : ""
  end

  def active_sub_cat(link_path)
    current_page?(link_path) ? "cat-active" : ""
  end
end
