class ProductsController < ApplicationController
  require "open-uri"

  skip_after_action :verify_authorized, except: :index, unless: :skip_pundit?
  skip_after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?
  before_action :set_category, only: [:index, :show]

  before_action :encode_upload_header

  def encode_upload_header(_params = nil)
    return unless request.content_mime_type&.symbol == :multipart_form

    _params ||= params

    _params.each do |_k, v|
      case v
      when ActionController::Parameters
        encode_upload_header(v)
      when ActionDispatch::Http::UploadedFile
        headers = v.headers

        begin
          headers.encode!(Encoding::UTF_8)
        rescue EncodingError
          headers.force_encoding(Encoding::UTF_8)
        end
      end
    end
  end

  def index
    @categories = policy_scope(Category)
    @products = policy_scope(@category.products).order(created_at: :desc)
    @sub_categories = policy_scope(@category.sub_categories).order(created_at: :asc)
  end

  def show
    @categories = policy_scope(Category)
    authorize @product = Product.find(params[:id])
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
        # @product.image = session[:image_url]
        file = URI.open(session[:image_url])
        content = session[:image_content]
        file_name = session[:image_info]
        # @product.image.attach(io: file, filename: file.original_filename)
        # hash_data = session[:product_params]
        # @image_url = hash_data["image"]
        # file = URI.open(@image_url)
        @product.image.attach(io: file, filename: file_name, content_type: content)
        # @product.image.key = session[:image_url]
        if @product.all_valid?
          @product.save!
        end
      else
        hash_data = session[:product_params]
        @image_url = hash_data["image"]
        # session[:image_url] = url_for(@product.image)
        # session[:image_url] = @image_url
        # @product.image = @image_url
        # file = open(url)
        file = URI.open(@image_url)
        # @product.image.attach(io: file, filename: "temp.#{file.content_type_parse.first.split("/").last}", content_type: file.content_type_parse.first)
        # @product.image.attach(io: file, filename: @product.image.filename, content_type: @product.image.content_type)
        @product.image.attach(io: file, filename: @image_url.original_filename, content_type: @image_url.content_type)
        session[:image_url] = Cloudinary::Utils.cloudinary_url @product.image.key
        session[:image_info] = @image_url.original_filename
        session[:image_content] = @image_url.content_type
        session[:product_params]["image"] = nil
        # session[:product_params]["image"] = @product.image.attach(io: file, filename: @image_url.original_filename, content_type: @image_url.content_type)

        # if @product.image.attached?
        #   @image_key = @product.image.key
        # end
        # @product.image.attach(@image_url)
        # session[:product_step] = @product.current_step
        # file = URI.open(image_url)
        # @product.image.attach(io: file, filename: "temp.#{file.content_type_parse.first.split('/').last}",
        #                       content_type: file.content_type_parse.first)
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
    session[:product_params] ||= {}
    authorize @product = Product.find(params[:id])
    @product.current_step = session[:step_product]
    @product.user = current_user
  end

  def update
    @categories = policy_scope(Category)

    authorize @product = Product.find(params[:id])
    session[:product_params].deep_merge!(product_params) if product_params
    @product.current_step = session[:step_product]
    # @product.update(session[:product_params])
    if params[:back_button]
      @product.previous_step
      redirect_to update_product_path(@product)
    elsif @product.valid?
      if @product.last_step?
        # @product.user = current_user
        if @product.update(session[:product_params])
          # @product.save!
          flash[:notice] = "#{@product.name} was successfully updated within our Database"
          session[:step_product] = session[:product_params] = nil
          redirect_to product_show_path(@product.category.id, @product)
        end
      else
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
    params.require(:product).permit(:name, :price, :description, :image, :category, :category_id,
                                    :sub_category, :sub_category_id, :user, :user_id, :id)
  end
end
