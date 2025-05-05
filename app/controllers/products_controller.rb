class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[show index]
  before_action :set_product, only: %i[show edit update destroy]

  def index
    if params[:product].present?
      @products = Product.find_by(name: params[:product]) || Product.order_by_date
    else
      @products = Product.order_by_date
    end
  end

  def show; end

  def new
    @product = Product.new
  end

  def create
    # @product = Product.new(product_params)
    @product = current_user.products.build(product_params)
    # @product.user_id = current_user.id
    # @product.user = current_user
    if @product.save
      respond_to do |format|
        format.html { redirect_to product_path(@product) }
        format.turbo_stream
      end
    else
      render :new, status: unprocessable_entity
    end
  end

  def edit
  end

  def update
    @product.update(product_params)
    redirect_to product_path(@product)
  end

  def destroy
    @product.destroy
    redirect_to products_path
  end


  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :price, :stock)
  end
end
