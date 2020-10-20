class SuppliersController < ApplicationController
  before_action :set_supplier, only: [:edit, :update, :destroy]

  def index
    @suppliers = Supplier.all
  end

  def new
    @supplier = Supplier.new

    respond_to do |format|
      format.js
    end
  end

  def create
    @supplier = Supplier.new(supplier_params)
    
    respond_to do |format|
      if @supplier.save
        format.js
      else
        format.js {render :new}
      end
    end
  end

  def edit
    respond_to do |format|
      format.js
    end
  end

  def update
    respond_to do |format|
      if @supplier.update(supplier_params)
        format.js
      else
        format.js {render :edit}
      end
    end
  end

  def destroy
    @supplier.destroy

    respond_to do |format|
      format.js
    end
  end

  private

    def set_supplier
      @supplier = Supplier.find(params[:id])
    end

    def supplier_params
      params.require(:supplier).permit(:name, :address, :phone)
    end
end