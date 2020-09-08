require "open-uri"

class ProductsController < ApplicationController
  ## TODO: instantiate a new update session for each product,
  ## so that there is no clash in sessions between each product on update

  skip_after_action :verify_authorized, except: :index, unless: :skip_pundit?
  skip_after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?
  before_action :set_category, only: [:index, :show]
  impressionist actions: [:show]

  def index
    @categories = policy_scope(Category)
    impressionist @post
    if params[:query].present?
      sql_query = "name @@ :query OR description @@ :query"
      @products = Product.where(sql_query, query: "%#{params[:query]}%")
    else
      @products = policy_scope(@category.products).order(created_at: :desc)
      @sub_categories = policy_scope(@category.sub_categories).order(created_at: :asc)
    end
  end

  def show
    @categories = policy_scope(Category)
    if params[:query].present?
      sql_query = "name @@ :query OR description @@ :query"
      @products = Product.where(sql_query, query: "%#{params[:query]}%")
    else
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

    session[:product_params].deep_merge!(product_params) if product_params
    authorize @product = Product.new(session[:product_params])
    @product.current_step = session[:product_step]
    if params[:back_button]
      @product.previous_step
    elsif @product.valid?
      if @product.last_step?
        @product.user = current_user

        file = URI.open(session[:image_url])
        content = session[:image_content]
        file_name = session[:image_info]
        @product.image.attach(io: file, filename: file_name, content_type: content)
        if @product.all_valid?
          @product.save!
        end
      else
        hash_data = session[:product_params]
        @image_url = hash_data["image"]
        file = URI.open(@image_url)

        @product.image.attach(io: file, filename: @image_url.original_filename, content_type: @image_url.content_type)
        session[:image_url] = Cloudinary::Utils.cloudinary_url @product.image.key
        session[:image_info] = @image_url.original_filename
        session[:image_content] = @image_url.content_type
        session[:product_params]["image"] = nil
        @product.next_step
      end
    end
    session[:product_step] = @product.current_step

    if @product.new_record?
      return render :new
    else
      session[:product_step] = session[:product_params] = session[:image_url] = session[:image_info] = session[:image_content] = nil
      flash[:notice] = "#{@product.name} was successfully added to the Marketplace"
      redirect_to product_show_path(@product.category.id, @product)
    end
  end

  def edit
    @categories = policy_scope(Category)
    session[:params_product] ||= {}
    authorize @product = Product.find(params[:id])
    @product.current_step = session[:step_product]
    @product.user = current_user
  end

  def update
    @categories = policy_scope(Category)

    authorize @product = Product.find(params[:id])
    session[:params_product].deep_merge!(product_params) if product_params
    @product.current_step = session[:step_product]
    if params[:back_button]
      @product.previous_step
      session[:step_product] = @product.current_step
      redirect_to update_product_path(@product)
    elsif @product.valid?
      if @product.last_step?
        if session[:url_image].nil?
          if @product.all_valid?
            @product.update(session[:params_product])
            session[:step_product] = session[:params_product] = session[:url_image] = session[:info_image] = session[:content_image] = nil
            flash[:notice] = "#{@product.name} was successfully updated within our Database"
            redirect_to product_show_path(@product.category.id, @product)
          end
        else
          edit_file = URI.open(session[:url_image])
          edit_content = session[:content_image]
          edit_file_name = session[:info_image]
          session[:params_product].deep_merge!(product_params) if product_params
          @product.image.attach(io: edit_file, filename: edit_file_name, content_type: edit_content)
          if @product.all_valid?
            @product.update(product_params)
            session[:step_product] = session[:params_product] = session[:url_image] = session[:info_image] = session[:content_image] = nil
            flash[:notice] = "#{@product.name} was successfully updated within our Database"
            redirect_to product_show_path(@product.category.id, @product)
          end
        end
      else
        data_hash = session[:params_product]
        @url_image = data_hash["image"]
        unless data_hash["image"].nil?
          edit_file = URI.open(@url_image)
          @product.image.attach(io: edit_file, filename: @url_image.original_filename, content_type: @url_image.content_type)
          session[:url_image] = Cloudinary::Utils.cloudinary_url @product.image.key
          session[:info_image] = @url_image.original_filename
          session[:content_image] = @url_image.content_type
          session[:params_product]["image"] = nil
        end
        @product.next_step
        session[:step_product] = @product.current_step
        redirect_to update_product_path(@product)
      end
    end
  end

  def destroy
    authorize @product = Product.find(params[:id])
    @product.destroy
    redirect_to newest_products_path, notice: "#{@product.name} was successfully removed from the marketplace."
  end

  private

  def set_category
    authorize @category = Category.find(params[:category_id])
  end

  def product_params
    params.require(:product).permit(:name, :price, :description, :address, :image, :category, :category_id,
                                    :sub_category, :sub_category_id, :user, :user_id, :id)
  end

  def add_to_wishlist
    @product.wishlist = true
  end
end
