class SubCategoriesController < ApplicationController
  skip_after_action :verify_authorized, except: :index, unless: :skip_pundit?
  skip_after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?
  before_action :set_category

  def index
    @sub_categories = policy_scope(@category.sub_categories).order(created_at: :desc)
  end

  def show
    @categories = policy_scope(Category)

    if params[:query].present?
      sql_query = "name @@ :query OR description @@ :query"
      @products = Product.where(sql_query, query: "%#{params[:query]}%")
    else
      authorize @sub_category = SubCategory.find(params[:id])
      @sub_categories = policy_scope(@category.sub_categories)
      @products = policy_scope(@sub_category.products).order(created_at: :desc)
    end
  end

  private

  def set_category
    authorize @category = Category.find(params[:category_id])
  end

  def sub_category_params
    params.require(:sub_category).permit(:name, :category_id, :product_id)
  end
end
