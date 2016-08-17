module Admin
  class ProductsController < ApplicationController
    http_basic_authenticate_with name: 'username', password: 'password'
    def index
      @products = Product.order('position')
    end

    def new
      @product = Product.new
    end

    def create
      @product = Product.new(product_params)
      if @product.save
        flash[:notice] = "#{@product.name} successfully created"
        redirect_to product_path(@product)
      else
        render 'new'
      end
    end

    def edit
      @product = Product.find(params[:id])
    end

    def update
      @product = Product.find(params[:id])
      if @product.update_attributes(product_params)
        flash[:notice] = "#{@product.name} successfully updated"
        redirect_to product_path(@product)
      else
        render 'edit'
      end
    end

    def destroy
      @product = Product.find(params[:id])
      @product.destroy
      flash[:notice] = "#{@product.name} successfully deleted"
      redirect_to products_path
    end

    def sort_products
      params[:product].each_with_index do |id, index|
        Product.where(id: id).update_all(position: index + 1)
      end
      render nothing: true
    end

    private

    def product_params
      params.require(:product)
            .permit(:name, :image, :description, :price, :position)
    end
  end
end
