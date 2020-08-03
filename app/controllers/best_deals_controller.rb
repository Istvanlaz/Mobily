class BestDealsController < ApplicationController
  skip_after_action :verify_authorized, except: :index, unless: :skip_pundit?
  skip_after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  def index
    @categories = policy_scope(Category)

    if params[:query].present?
      sql_query = "name @@ :query OR description @@ :query"
      @products = Product.where(sql_query, query: "%#{params[:query]}%")
    else
      @products = policy_scope(Product)
    end
  end

  def show
    authorize @category = Category.find(params[:id])

    @categories = policy_scope(Category)
    @sub_categories = policy_scope(SubCategory)
    if params[:query].present?
      sql_query = "name @@ :query OR description @@ :query"
      @products = Product.where(sql_query, query: "%#{params[:query]}%")
    else
      @products = policy_scope(@category.products)
    end
  end

  def deal_show
    @categories = policy_scope(Category)
    authorize @product = Product.find(params[:id])
  end

  def product_deal
    @categories = policy_scope(Category)
    authorize @product = Product.find(params[:id])
    authorize @category = Category.find(params[:category_id])
  end

  def deal_sub_category
    @categories = policy_scope(Category)

    if params[:query].present?
      sql_query = "name @@ :query OR description @@ :query"
      @products = Product.where(sql_query, query: "%#{params[:query]}%")
    else
      @products = policy_scope(Product)
      authorize @product = Product.find(params[:id])
      authorize @category = Category.find(params[:category_id])
      authorize @sub_category = SubCategory.find(params[:id])
    end
  end

  def deal_sub_category_show
    @categories = policy_scope(Category)
    authorize @product = Product.find(params[:id])
    authorize @category = Category.find(params[:category_id])
    authorize @sub_category = SubCategory.find(params[:sub_category_id])
  end

  private

  def product_params
    params.require(:product).permit(:name, :price, :description, :category_id, :sub_category_id, :user, :id)
  end

  def category_params
    params.require(:category).permit(:name, :id)
  end
end
