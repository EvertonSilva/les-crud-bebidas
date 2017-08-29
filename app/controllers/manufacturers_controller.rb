class ManufacturersController < ApplicationController
  before_action :find_manufac, only: [:show, :edit, :update, :destroy]

  def index
  	@manufacs = Manufacturer.all
  end

  def show
  end

  def new
  	@manufac = Manufacturer.new
  end

  def edit
  end

  def create
  	@manufac = Manufacturer.new(manufac_params)
  	if @manufac.save
  		redirect_to @manufac
  	else
  		render :new
  	end
  end

  def update
  	if @manufac.update_attributes(manufac_params)
  		redirect_to @manufac
  	else
  		render :edit
  	end
  end

  def destroy
  	@manufac.destroy
  	redirect_to action: "index"
  end

  private
  def find_manufac
  	@manufac = Manufacturer.find(params[:id])
  end

  def manufac_params
  	params.require(:manufacturer).permit(:name, :cnpj, :phone, :email)
  end
end
