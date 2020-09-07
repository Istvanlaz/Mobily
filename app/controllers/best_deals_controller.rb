class BestDealsController < ApplicationController
  skip_after_action :verify_authorized, except: :index, unless: :skip_pundit?
  skip_after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

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


      # @markers = @product.geocoded.map do |product|
      #   {
      #     lat: product.latitude,
      #     lng: product.longitude
      #   }
      # end
    end
  end

  def deal_show
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

  def product_deal
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

  def deal_sub_category
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

  def deal_sub_category_show
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

  private

  def product_params
    params.require(:product).permit(:name, :price, :description, :category_id, :sub_category_id, :user, :id)
  end

  def category_params
    params.require(:category).permit(:name, :id)
  end
end
