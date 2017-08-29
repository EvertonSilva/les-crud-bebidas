class SuppliersController < ApplicationController
  before_action :find_supplier, only: [:show, :edit, :update, :destroy]

  def index
    @suppliers = Supplier.all
  end

  def show
  end

  def new
    @supplier = Supplier.new
  end

  def edit
  end

  def create
    @supplier = Supplier.new(supplier_params)
    if @supplier.save
      redirect_to @supplier
    else
      render :new
    end
  end

  def update
    if @supplier.update_attributes(supplier_params)
      redirect_to @supplier
    else
      render :edit
    end
  end

  def destroy
    @supplier.destroy
    redirect_to suppliers_path
  end

  private
  def find_supplier
    @supplier = Supplier.find(params[:id])
  end

  def supplier_params
    params.require(:supplier).permit(:name, :registry, :phone, :email)
  end
end
