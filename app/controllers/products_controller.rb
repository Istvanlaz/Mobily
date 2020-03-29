class ProductsController < ApplicationController
  skip_after_action :verify_authorized, except: :index, unless: :skip_pundit?
  skip_after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  def index
    # @products = Product.all
    @products = policy_scope(Product)
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
      redirect_to products_path(@product), notice: "Product was saved"
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
      redirect_to products_path, notice: "Product was updated"
    else
      # @product.errors
      render :edit
    end
  end

  def destroy
    authorize @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path, notice: "Product was destroyed"
  end

  private

  def product_params
    params.require(:product).permit(:name, :price, :description, :category, :user, :id)
  end
end
