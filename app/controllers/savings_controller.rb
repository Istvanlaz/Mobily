class SavingsController < ApplicationController
  def create
    @product = Product.find(params[:id])
    @wishlist = Wishlist.where(user: current_user).first
    authorize @saving = Saving.create(wishlist: @wishlist, product: @product)
    # flash.now[:notice] = "Product was added to your Wishlist"
    redirect_to request.referer, notice: "#{@product.name} was added to your Wishlist"
    # redirect_to newest_products_path, notice: "Product was added to your Wishlist"
  end

  def destroy
    authorize @saving = Saving.find_by(wishlist_id: params[:wishlist_id], product_id: params[:id])
    @saving.destroy
    redirect_to request.referer, notice: "#{@saving.product.name} was deleted from your Wishlist"
  end
end
