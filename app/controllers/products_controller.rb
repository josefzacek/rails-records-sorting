class ProductsController < ApplicationController
  def index
    @products = Product.order('position')
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = "#{@product.name} successfully created"
      redirect_to action: 'show', id: @product.id
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
      redirect_to action: 'show', id: @product.id
    else
      render 'edit'
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    flash[:notice] = "#{@product.name} successfully deleted"
    redirect_to action: 'index'
  end

  def sort_products
    params[:product].each_with_index do |id, index|
      # Product.update_all({position: index+1}, {id: id})
      Product.where(id: id).update_all({position: index+1})
      #Product.update_all(position: index+1, id: id)
    end

    render nothing: true
  end

  private

  def product_params
    params.require(:product).permit(:name, :image, :description, :price, :position)
  end

end
