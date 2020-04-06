class CategoriesController < ApplicationController
  skip_after_action :verify_authorized, except: :index, unless: :skip_pundit?
  skip_after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  def index
    # @categories = category.all
    @categories = policy_scope(Category)
  end

  def show
    authorize @category = Category.find(params[:id])
    # authorize @category
  end

  def new
    # authorize @category = Category.new
    # @category.user = current_user
  end

  def create
    # authorize @category = Category.new(category_params)
    # @category.user = current_user
    # if @category.save!
    #   redirect_to categories_path(@category), notice: "category was saved"
    # else
    #   render :new
    # end
  end

  def edit
    # authorize @category = Category.find(params[:id])
  end

  def update
    # authorize @category = Category.find(params[:id])
    # if @category.update(category_params)
    #   redirect_to categories_path, notice: "category was updated"
    # else
    #   #@category.errors
    #   render :edit
    # end
  end

  def destroy
    # authorize @category = Category.find(params[:id])
    # @category.destroy
    # redirect_to categories_path, notice: "category was destroyed"
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end
end
