class BestDealsController < ApplicationController
  skip_after_action :verify_authorized, except: :index, unless: :skip_pundit?
  skip_after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  def index
    @products = policy_scope(Product)
    @categories = policy_scope(Category)
  end

  def show
    authorize @category = Category.find(params[:id])

    @categories = policy_scope(Category)
    @products = policy_scope(@category.products)
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
    @products = policy_scope(Product)
    # @categories = policy_scope(Category)
    authorize @product = Product.find(params[:id])
    authorize @category = Category.find(params[:category_id])
    authorize @sub_category = SubCategory.find(params[:id])
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
