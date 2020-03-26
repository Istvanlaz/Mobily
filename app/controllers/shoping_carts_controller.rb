class ShopingCartsController < ApplicationController
  def index
    # @shopping_carts = shopping_cart.all
    @shopping_carts = policy_scope(shopping_cart)
  end

  def show
    @shopping_cart = shopping_cart.find(params[:id])
  end

  def new
    authorize @shopping_cart = shopping_cart.new
  end

  def create
    authorize @shopping_cart = shopping_cart.new(shopping_cart_params)
    @shopping_cart.user = current_user
    if @shopping_cart.save!
      redirect_to shopping_carts_path(@shopping_cart), notice: "shopping_cart was saved"
    else
      render :new
    end
  end

  def edit
    authorize @shopping_cart = shopping_cart.new
  end

  def update
    authorize @shoppin_gcart = shoppin_gcart.find(params[:id])
    if @shopping_cart.update(shopping_cart_params)
      redirect_to shopping_carts_path, notice: "shopping_cart was updated"
    else
      # @shopping_cart.errors
      render :new
    end
  end

  def destroy
    authorize @shopping_cart = shopping_cart.find(params[:id])
    @shopping_cart.destroy
    redirect_to shopping_carts_path, notice: "shopping_cart was destroyed"
  end

  private

  def shopping_cart_params
    params.require(:shopping_cart).permit(:name, :price, :description, :category)
  end
end
