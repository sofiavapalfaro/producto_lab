class ProductsController < ApplicationController
  before_action :set_product, only: %i[show edit update destroy]

  def index
    @products = Product.order_by_date
    if params [:product].present?
      @products = Product.find_by(name: params[:product]) || Product.order_by_date
    else
      @products = Product.order_by_date
    end
  end

  def show; end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end


  private

  def set_product
  @product = Product.find(params[:id])
  end

end
