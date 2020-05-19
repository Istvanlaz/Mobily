module ApplicationHelper
  # def active_banner(link_path)
  #   current_page?(link_path) ? "link-active" : ""
  # end

  # def active_banner(link_path, control)
  #   if current_page?(link_path)
  #     "link-active"
  #   elsif controller.include?(params[control])
  #     "link-active"
  #   else
  #     ""
  #   end
  # end

  def active_banner(controller_name)
    request.controller_class == controller_name ? "link-active" : ""
  end

  # def active_category_search(link_path)
  #   current_page?(link_path) ? "link-active" : ""
  # end

  def active_category_search(cat_id)
    full_path = request.fullpath
    shortened_path = full_path.split("/")
    shortened_path[2].to_i == cat_id && shortened_path[1] == "categories" ? "link-active" : ""
  end

  def active_cat(controller, cat_id)
    # current_page?(link_path) ? "cat-active" : ""
    full_path = request.fullpath
    shortened_path = full_path.split("/")
    shortened_path[2].to_i == cat_id && shortened_path[1] == controller ? "cat-active" : ""
  end

  def active_sub_cat(link_path)
    current_page?(link_path) ? "sub-cat-active" : ""
  end
end
