class UsersController < ApplicationController
  before_action :authenticate_user!


  def index
    @categories = policy_scope(Category)
    @users = User.all
    authorize @users
    # @users = policy_scope(User)
  end


  def show
    @categories = policy_scope(Category)
    @user = User.find(params[:id])
    authorize @user

    @products = Product.all.where(user_id: @user)
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to newest_products_path, :notice => "User Deleted"
  end

  def update
    @user = User.find(params[:id])
    authorize @user

    if @user.update_attributes(secure_params)
      redirect_to users_path, :success => "User Updated"
    else
      redirect_to users_path, :alert => "Unable to Update User"
    end
  end

  private

  def secure_params
    params.require(:user).permit(:role)
  end
end
