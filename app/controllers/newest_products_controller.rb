class NewestProductsController < ApplicationController
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

  def newest_show
    @categories = policy_scope(Category)
    authorize @product = Product.find(params[:id])
  end

  def product_show
    @categories = policy_scope(Category)
    authorize @product = Product.find(params[:id])
    authorize @category = Category.find(params[:category_id])
  end

  def destroy
    authorize @product = Product.find(params[:id])
    authorize @category = Category.find(params[:category_id])
    binding.pry
    @product.destroy
    redirect_to category_products_path, notice: "#{@product.name} was successfully removed from the marketplace."
  end

  # def new
  #   authorize @product = Product.new
  #   # @categories = policy_scope(Category)

  #   # @product = @categories.products.build(params[:product])
  #   @product.user = current_user
  # end

  # def create
  #   authorize @product = Product.new(product_params)
  #   @product.user = current_user
  #   if @product.save!
  #     redirect_to category_product_path(@category, @product), notice: "Product has been successfully added to our database"
  #   else
  #     render :new
  #   end
  # end

  private

  def product_params
    params.require(:product).permit(:name, :price, :description, :category_id, :sub_category_id, :user, :id)
  end

  def category_params
    params.require(:category).permit(:name, :id)
  end
end
