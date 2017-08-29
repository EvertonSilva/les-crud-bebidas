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
  end

  def destroy
  end

  private
  def find_manufac
  	@manufac = Manufacturer.find(params[:id])
  end

  def manufac_params
  	params.require(:manufacturer).permit(:name, :cnpj)
  end
end
