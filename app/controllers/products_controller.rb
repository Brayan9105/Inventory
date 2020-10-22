class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  before_action :set_category, only: [:new, :edit]
  before_action :set_supplier, only: [:new, :edit]
  
  def index
    @products = Product.all  
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.js
      else
        format.js {render :new}
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @product.update(product_params)
        format.js
      else
        format.js {render :edit}
      end
    end
  end

  def destroy
    @product.destroy

    respond_to do |format|
      format.js
    end
  end

  private
    def set_product
      @product = Product.find(params[:id])
    end

    def set_category
      @categories = Category.all
    end

    def set_supplier
      @suppliers = Supplier.all
    end

    def product_params
      params.require(:product).permit(:image, :name, :description, :stock, :price, :category_id, :supplier_id)
    end
end