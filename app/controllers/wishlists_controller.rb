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

    if @product.geocoded?
      @markers = [
                    lat: @product.latitude,
                    lng: @product.longitude,
                    infoWindow: { content: render_to_string(partial: "/shared/map_info_window", locals: { product: @product }) }
                  ]
    end
  end

  def new
  end

  def edit
  end
end
