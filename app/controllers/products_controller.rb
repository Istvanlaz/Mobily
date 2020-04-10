class ProductsController < ApplicationController
  skip_after_action :verify_authorized, except: :index, unless: :skip_pundit?
  skip_after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?
  before_action :set_category, only: [:index, :show]

  def index
    # @products = Product.all
    # @products = policy_scope(Product)
    @products = policy_scope(@category.products).order(created_at: :desc)
    @sub_categories = policy_scope(@category.sub_categories).order(created_at: :desc)
  end

  def show
    authorize @product = Product.find(params[:id])
    # authorize @product
  end

  def new
    authorize @product = Product.new
    @product.user = current_user
  end

  def create
    authorize @product = Product.new(product_params)
    @product.user = current_user
    if @product.save!
      redirect_to newest_show_path(@product), notice: "Product has been successfully added to our database"
    else
      render :new
    end
  end

  def edit
    authorize @product = Product.find(params[:id])
  end

  def update
    authorize @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to newest_show_path(@product), notice: "Product has been successfully updated"
    else
      # @product.errors
      render :edit
    end
  end

  def destroy
    authorize @product = Product.find(params[:id])
    # binding.pry
    @product.destroy
    redirect_to categories_path, notice: "#{@product.name} was successfully removed from the marketplace."
  end

  private

  def set_category
    authorize @category = Category.find(params[:category_id])
  end

  def product_params
    params.require(:product).permit(:name, :price, :description, :category_id, :sub_category_id, :user, :id)
  end
end
