class WishlistsController < ApplicationController
  def index
    @categories = policy_scope(Category)

    list = policy_scope(Wishlist)
    @wishlist = list.nil? ? Wishlist.create(user: current_user) : list
    @products = @wishlist.products
  end

  def show
    @categories = policy_scope(Category)

    authorize @product = Product.find(params[:id])
  end

  def new
  end

  def edit
  end
end
