class DrinksController < ApplicationController
  before_action :find_drink, only: [:show, :edit, :update, :destroy]

  def index
    @drinks = Drink.all
  end

  def show
  end

  def new
    @drink = Drink.new
  end

  def edit
  end

  def create
    @drink = Drink.new(drink_params)
    if @drink.save
      redirect_to @drink
    else
      render :new
    end
  end

  def update
    if @drink.update_attributes(drink_params)
      redirect_to @drink
    else
      render :edit
    end
  end

  def destroy
    @drink.destroy
    redirect_to drinks_path
  end

  def search
    @drinks = Drink.where(nil)
    @drinks = @drinks.from_category(params[:category]) if params[:category].present?
    @drinks = @drinks.from_supplier(params[:supplier]) if params[:supplier].present?
    @drinks = @drinks.from_price_min(params[:price_min]) if params[:price_min].present? and params[:price_max].present?
    @drinks = @drinks.from_price_max(params[:price_max]) if params[:price_max].present? and params[:price_min].present?
    render :index
  end

  private
  def find_drink
    @drink = Drink.find(params[:id])
  end

  def drink_params
    params.require(:drink).permit(:name, :expiration_date, :manufacture_date,
                              :min_inventory, :max_inventory, :alcoholic_content, :price, 
                              :category_id, :manufacturer_id, :supplier_id)
  end
end
