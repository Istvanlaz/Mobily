class NewestProductsController < ApplicationController
  skip_after_action :verify_authorized, except: :index, unless: :skip_pundit?
  skip_after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?
  impressionist actions: [:newest_show]

  def index
    @categories = policy_scope(Category)
    if params[:query].present?
      sql_query = "name @@ :query OR description @@ :query"
      @products = Product.where(sql_query, query: "%#{params[:query]}%")
    else
      @products = policy_scope(Product)
    end
  end

  def show
    authorize @category = Category.find(params[:id])
    @categories = policy_scope(Category)
    @sub_categories = policy_scope(SubCategory)
    if params[:query].present?
      sql_query = "name @@ :query OR description @@ :query"
      @products = Product.where(sql_query, query: "%#{params[:query]}%")
    else
      @products = policy_scope(@category.products)
    end
  end

  def newest_show
    @categories = policy_scope(Category)
    authorize @product = Product.find(params[:id])
    impressionist(@product)
    if @product.geocoded?
      @markers = [
                    lat: @product.latitude,
                    lng: @product.longitude,
                    infoWindow: { content: render_to_string(partial: "/shared/map_info_window", locals: { product: @product }) }
                  ]
    end
  end

  def product_show
    @categories = policy_scope(Category)
    authorize @product = Product.find(params[:id])
    authorize @category = Category.find(params[:category_id])
    if @product.geocoded?
      @markers = [
                    lat: @product.latitude,
                    lng: @product.longitude,
                    infoWindow: { content: render_to_string(partial: "/shared/map_info_window", locals: { product: @product }) }
                  ]
    end
  end

  def newest_sub_category
    @categories = policy_scope(Category)

    if params[:query].present?
      sql_query = "name @@ :query OR description @@ :query"
      @products = Product.where(sql_query, query: "%#{params[:query]}%")
    else
      @products = policy_scope(Product)
      authorize @category = Category.find(params[:category_id])
      authorize @sub_category = SubCategory.find(params[:id])
      # authorize @product = Product.find(params[:id])
    end
  end

  def newest_sub_category_show
    @categories = policy_scope(Category)
    authorize @product = Product.find(params[:id])
    authorize @category = Category.find(params[:category_id])
    authorize @sub_category = SubCategory.find(params[:sub_category_id])
    if @product.geocoded?
      @markers = [
                    lat: @product.latitude,
                    lng: @product.longitude,
                    infoWindow: { content: render_to_string(partial: "/shared/map_info_window", locals: { product: @product }) }
                  ]
    end
  end

  def destroy
    authorize @product = Product.find(params[:id])
    authorize @category = Category.find(params[:category_id])
    @product.destroy
    redirect_to category_products_path, notice: "#{@product.name} was successfully removed from the marketplace."
  end

  def who_bought
      @categories = policy_scope(Category)
      authorize @product = Product.find(params[:id])
      @latest_order = @product.orders.order(:updated_at).last
      if stale?(@latest_order)
        respond_to do |format|
        format.atom
      end
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :price, :description, :category_id, :sub_category_id, :user, :id)
  end

  def category_params
    params.require(:category).permit(:name, :id)
  end
end
