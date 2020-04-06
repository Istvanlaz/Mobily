class SubCategoriesController < ApplicationController
  skip_after_action :verify_authorized, except: :index, unless: :skip_pundit?
  skip_after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  def index
    # @sub_categories = SubCategory.all
    @sub_categories = policy_scope(SubCategory)
  end

  def show
    authorize @sub_category = SubCategory.find(params[:id])
    # authorize @sub_category
  end

  def new
    # authorize @sub_category = SubCategory.new
    # @sub_category.user = current_user
  end

  def create
    # authorize @sub_category = SubCategory.new(sub_category_params)
    # @sub_category.user = current_user
    # if @sub_category.save!
    #   redirect_to sub_categories_path(@sub_category), notice: "sub_category was saved"
    # else
    #   render :new
    # end
  end

  def edit
    # authorize @sub_category = SubCategory.find(params[:id])
  end

  def update
    # authorize @sub_category = SubCategory.find(params[:id])
    # if @sub_category.update(sub_category_params)
    #   redirect_to sub_categories_path, notice: "sub_category was updated"
    # else
    #   #@sub_category.errors
    #   render :edit
    # end
  end

  def destroy
    # authorize @sub_category = SubCategory.find(params[:id])
    # @sub_category.destroy
    # redirect_to sub_categories_path, notice: "sub_category was destroyed"
  end

  private

  def sub_category_params
    params.require(:sub_category).permit(:name, :category_id)
  end
end
