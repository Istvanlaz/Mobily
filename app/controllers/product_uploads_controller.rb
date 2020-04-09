class ProductUploadsController < ApplicationController
  def new
    # @categories = policy_scope(Category)
    authorize @product = Product.new
    @product.user = current_user
  end

  def create
    authorize @product = Product.new(product_params)
    @product.user = current_user
    if @product.save!
      redirect_to category_product_path(@category, @product), notice: "Product has been successfully added to our database"
    else
      render :new
    end
  end

  private

   def product_params
    params.require(:product).permit(:name, :price, :description, :category_id, :sub_category_id, :user, :id)
  end
end
