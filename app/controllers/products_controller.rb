class ProductsController < ApplicationController
  def index
    @products = Product.order('position')
  end

  def show
    @product = Product.find(params[:id])
  end
end
