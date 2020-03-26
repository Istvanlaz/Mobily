class ShopingcartsController < ApplicationController
  def index
    # @shoppingcarts = shoppingcart.all
    @shoppingcarts = policy_scope(shoppingcart)
  end

  def show
    @shoppingcart = shoppingcart.find(params[:id])
  end

  def new
    authorize @shoppingcart = shoppingcart.new
  end

  def create
    authorize @shoppingcart = shoppingcart.new(shoppingcart_params)
    @shoppingcart.user = current_user
    if @shoppingcart.save!
      redirect_to shoppingcarts_path(@shoppingcart), notice: "shoppingcart was saved"
    else
      render :new
    end
  end

  def edit
    authorize @shoppingcart = shoppingcart.new
  end

  def update
    authorize @shoppingcart = shoppingcart.find(params[:id])
    if @shoppingcart.update(shoppingcart_params)
      redirect_to shoppingcarts_path, notice: "shoppingcart was updated"
    else
      # @shoppingcart.errors
      render :new
    end
  end

  def destroy
    authorize @shoppingcart = shoppingcart.find(params[:id])
    @shoppingcart.destroy
    redirect_to shoppingcarts_path, notice: "shoppingcart was destroyed"
  end

  private

  def shoppingcart_params
    params.require(:shoppingcart).permit(:name, :price, :description, :category)
  end
end
