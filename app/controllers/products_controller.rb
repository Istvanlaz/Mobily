class ProductsController < ApplicationController
  skip_after_action :verify_authorized, except: :index, unless: :skip_pundit?
  skip_after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?
  before_action :set_category, only: [:index, :show]

  def index
    # @products = Product.all
    # @products = policy_scope(Product)
    @categories = policy_scope(Category)
    @products = policy_scope(@category.products).order(created_at: :desc)
    @sub_categories = policy_scope(@category.sub_categories).order(created_at: :asc)
  end

  def show
    @categories = policy_scope(Category)
    authorize @product = Product.find(params[:id])
    # authorize @product
  end

  def new
    @categories = policy_scope(Category)
    session[:product_params] ||= {}
    authorize @product = Product.new(session[:product_params])
    @product.current_step = session[:product_step]
    @product.user = current_user
  end

  def create
    @categories = policy_scope(Category)

    # authorize @product = Product.new(params_product)
    # @product.user = current_user
    # if @product.save!
    #   redirect_to newest_show_path(@product), notice: "Product has been successfully added to our database"
    # else
    #   render :new
    # end
        # binding.pry


    # session[:product_params].deep_merge!(params_product) if params_product
    # authorize @product = Product.new(session[:product_params])
    # @product.current_step = session[:product_step]
    # if @product.valid?
    #   if params[:back_button]
    #     @product.previous_step
    #   elsif @product.last_step?
    #     @product.user = current_user
    #     # binding.pry
    #     if @product.all_valid?
    #       @product.save!
    #       flash[:notice] = 'Your product was created successfully'
    #       redirect_to newest_products_path && return
    #     end
    #   else
    #     @product.next_step
    #   end
    # end
    # session[:product_step] = @product.current_step

    # if @product.new_record?
    #   return render :new
    # else
    #   session[:product_step] = session[:product_params] = nil
    # end

    session[:product_params].deep_merge!(params_product) if params_product
    authorize @product = Product.new(session[:product_params])
    @product.current_step = session[:product_step]
    if params[:back_button]
      @product.previous_step
    elsif @product.valid?
      if @product.last_step?
        @product.user = current_user
        # binding.pry
        if @product.all_valid?
          @product.save!
        end
      else
        @product.next_step
      end
    end
    session[:product_step] = @product.current_step

    if @product.new_record?
      return render :new
    else
      session[:product_step] = session[:product_params] = nil
      flash[:notice] = "#{@product.name} was successfully added to the Marketplace"
      redirect_to newest_products_path
    end

    # authorize @category = Category.find(params[:category_id])
  end

  def edit
    @categories = policy_scope(Category)
    authorize @product = Product.find(params[:id])
  end

  def update
    authorize @product = Product.find(params[:id])
    if @product.update(params_product)
      redirect_to newest_show_path(@product), notice: "Product has been successfully updated"
    else
      # @product.errors
      render :edit
    end
  end

  def destroy
    authorize @product = Product.find(params[:id])
    # binding.pry
    @product.destroy
    redirect_to newest_products_path, notice: "#{@product.name} was successfully removed from the marketplace."
  end

  private

  def set_category
    authorize @category = Category.find(params[:category_id])
  end

  def params_product
    params.require(:product).permit(:name, :price, :description, :category, :category_id,
                                    :sub_category, :sub_category_id, :user, :user_id, :id)
  end
end
